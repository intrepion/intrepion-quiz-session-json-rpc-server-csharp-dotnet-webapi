using Microsoft.AspNetCore.Mvc;

namespace QuizApp.WebApi.HealthCheck;

[ApiController]
[Route("[controller]")]
public class HealthCheckController : ControllerBase
{
    public IActionResult Get()
    {
        return Ok("");
    }
}
