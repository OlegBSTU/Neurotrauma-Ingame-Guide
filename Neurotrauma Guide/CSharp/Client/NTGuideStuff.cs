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
}
