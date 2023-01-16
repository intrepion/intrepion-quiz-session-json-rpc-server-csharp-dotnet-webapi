using Microsoft.AspNetCore.Mvc;

namespace QuizApp.WebApi.HealthCheck;

[ApiController]
public class HealthCheckController
{
    public string Get()
    {
        return "";
    }
}
