

using ExploringActions;
using ExploringActions.Controllers;
using Microsoft.Extensions.Logging;
using Moq;
using Xunit;

namespace Testexploringactions
{
    public class WeatherForecastControllerTest
    {
        [Fact]
        public void Test_WeatherForecastController()
        {
            // Arrange
            var logger = new Mock<ILogger<WeatherForecastController>>();
            var controller = new WeatherForecastController(logger.Object);

            // Act
            var result = controller.Get();

            // Assert
            Assert.NotNull(result);
            var forecasts = Assert.IsType<WeatherForecast[]>(result); // CORRECCIÓN CLAVE
            Assert.NotEmpty(forecasts);
            Assert.InRange(forecasts.Length, 1, 5); // Verifica cantidad razonable de resultados
        }
    }
}

      