using Microsoft.AspNetCore.Mvc;

namespace QuizApp.WebApi.HealthCheck;

[ApiController]
public class HealthCheckController : ControllerBase
{
    public IActionResult Get()
    {
        return Ok("");
    }
}
