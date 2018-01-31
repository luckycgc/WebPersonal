<%@ WebHandler Language="C#" Class="lyr_secondType" %>

using System;
using System.Web;
using System.Collections.Generic;//引用泛型
using System.Runtime.Serialization.Json;//引用json空间

public class lyr_secondType : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");
        
        //调用业务层方法，获取用户装态信息
        List<Model.typeSecondModel> list = BLL.typeSecondBll.GetSecond();
        
        //创建可对json数据进行【序列化/反序列化】操作对象
        DataContractJsonSerializer serialWrite = new DataContractJsonSerializer(typeof(List<Model.typeSecondModel>));
        
        //把搜索到的集合序列化为json格式传送客户端
        serialWrite.WriteObject(context.Response.OutputStream, list);
        
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}