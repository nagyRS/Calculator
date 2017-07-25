draw = function (chartType, transportation, accom, meals, act, spending, misc, total) {
    
    if (transportation === "0" && accom === "0" && meals === "0" && act === "0" && spending === "0" && misc === "0") {
        document.getElementById("lblChartType").style.display = "none";
        document.getElementById("DropDownList1").style.display = "none";
        document.getElementById("chartPlaceholder").style.display = "none";
        document.getElementById("noDataPlaceholder").textContent = "Not enough data to draw chart";
    } else {
        var chart = new CanvasJS.Chart("chartContainer", {
            backgroundColor: "rgba(160, 32, 240, 0)",
            title: {
                fontColor: "#fff",
                text: "Total Budget: £" + total,
            },
            animationEnabled: true, //disable here

            data: [
        {
            // Change type to "doughnut", "line", "splineArea", etc.
            type: chartType,
            dataPoints: [
                    { label: "Transportation", y: parseFloat(transportation), indexLabelFontColor: "#fff" },
                    { label: "Accomodation", y: parseFloat(accom), indexLabelFontColor: "#fff" },
                    { label: "Meals", y: parseFloat(meals), indexLabelFontColor: "#fff" },
                    { label: "Activities", y: parseFloat(act), indexLabelFontColor: "#fff" },
                    { label: "Spending Money", y: parseFloat(spending), indexLabelFontColor: "#fff" },
                    { label: "Miscellaneous", y: parseFloat(misc), indexLabelFontColor: "#fff" }
            ]
        }
            ]
        });

        chart.render();
    }
}