using Barotrauma;
using System;
using System.Linq;
using MoonSharp.Interpreter;

// Half of this is the clickable in-game chat text by Ydrec, the other half is spliced for Localization from the Analyze Items Mod. Credit where it is due.

namespace NTGuide 
{
    partial class AppendLuaClrConverters : IAssemblyPlugin 
    {
        public void Initialize()
        {
            RegisterHandler<GUITextBlock.ClickableArea.OnClickDelegate>((Closure f) => delegate(GUITextBlock a1, GUITextBlock.ClickableArea a2)
            {
                GameMain.LuaCs.CallLuaFunction(f, a1, a2);
            });
        }

        public void OnLoadCompleted()
        {
        }
 
        public void PreInitPatching()
        {
        }
 
        public void Dispose()
        {
        }

        public static void RegisterHandler<T>(Func<Closure, T> converter)
        {
            Script.GlobalOptions.CustomConverters.SetScriptToClrCustomConversion(DataType.Function, typeof(T), (DynValue v) => converter(v.Function));
        }
    }
    
    class NTGuideLocalize : ACsMod
    {
        public LuaCsSetup.LuaCsModStore.CsModStore ModStore { get; private set; }

        public NTGuideLocalize()
        {
            ModStore = GameMain.LuaCs.ModStore.Register(this);
            ModStore.Mod = this;
            ModStore.Set("Instance", this);
        }

        public override void Stop()
        {
        }

        public string Localize(string tag, params string[][] kvs)
        {
            if (kvs == null) { return TextManager.Get(tag).ToString(); }
            return TextManager.GetWithVariables(tag, (from kv in kvs select (kv[0], kv[1])).ToArray()).ToString();
        }
    }
}
