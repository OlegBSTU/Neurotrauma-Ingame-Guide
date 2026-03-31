using Barotrauma;
using System;
using System.Linq;
using MoonSharp.Interpreter;

// Thanks to Ydrec

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
