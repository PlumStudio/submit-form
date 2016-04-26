<%@ WebHandler Language="C#" Class="handler" %>

using System;
using System.Web;

public class handler : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        var json = "{ \"head\":\"0\",\"msg\":\"没有信息\"}";
        context.Response.Write(json);
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}