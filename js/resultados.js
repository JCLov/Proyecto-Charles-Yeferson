//Declaracion de variables globales con los resultados
var resultado1=300;
var resultado2=50;
var resultado3=100;

//Uso de charts para estadisticas
Chart.defaults.RoundedDoughnut    = Chart.helpers.clone(Chart.defaults.doughnut);
Chart.controllers.RoundedDoughnut = Chart.controllers.doughnut.extend({
    draw: function(ease) {
        var ctx           = this.chart.ctx;
        var easingDecimal = ease || 1;
        var arcs          = this.getMeta().data;
        Chart.helpers.each(arcs, function(arc, i) {
            arc.transition(easingDecimal).draw();

            var pArc   = arcs[i === 0 ? arcs.length - 1 : i - 1];
            var pColor = pArc._view.backgroundColor;

            var vm         = arc._view;
            var radius     = (vm.outerRadius + vm.innerRadius) / 2;
            var thickness  = (vm.outerRadius - vm.innerRadius) / 2;
            var startAngle = Math.PI - vm.startAngle - Math.PI / 2;
            var angle      = Math.PI - vm.endAngle - Math.PI / 2;

            ctx.save();
            ctx.translate(vm.x, vm.y);

            ctx.fillStyle = i === 0 ? vm.backgroundColor : pColor;
            ctx.beginPath();
            ctx.arc(radius * Math.sin(startAngle), radius * Math.cos(startAngle), thickness, 0, 2 * Math.PI);
            ctx.fill();

            ctx.fillStyle = vm.backgroundColor;
            ctx.beginPath();
            ctx.arc(radius * Math.sin(angle), radius * Math.cos(angle), thickness, 0, 2 * Math.PI);
            ctx.fill();

            ctx.restore();
        });
    }
});

var ctx3 = document.getElementById("pieChart3");
var pieChart3 = new Chart(ctx3, {
    type: 'pie',
    options: {
        legend: {
            position: 'left',
            labels: {
                boxWidth: 10,
                fontStyle: 'italic',
                fontColor: '#aaa',
                usePointStyle: true,
            }
        },
    },
    data: {
        labels: [
            "Resultado 1",
            "Resultado 2",
            "Resultado 3"
        ],
        datasets: [
            {
                //Cargar las variables
                data: [this.resultado1, this.resultado2, this.resultado3],
                borderWidth: 3,
                backgroundColor: [
                    '#46d8d5',
                    "#182390",
                    "#f5e132",
                ],
                hoverBackgroundColor: [
                    '#46d8d5',
                    "#182390",
                    "#f5e132",
                ]
            }]
        }
    });