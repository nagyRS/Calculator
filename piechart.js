draw = function (rent, travel, bills, mobile, food, gym, other, saved) {
    
        var chart = new CanvasJS.Chart("chartContainer", {
            theme: "theme1",//theme2
            title: {
                text: "Your Budget Chart"
            },
            animationEnabled: true,
            data: [
            {
                // Change type to "bar", "area", "spline", "pie",etc.
                type: "pie",
                dataPoints: [
                    { label: "Rent", y: parseFloat(rent) },
                    { label: "Travel", y: parseFloat(travel) },
                    { label: "Bills", y: parseFloat(bills) },
                    { label: "Mobile Phone", y: parseFloat(mobile) },
                    { label: "Food", y: parseFloat(food) },
                    { label: "Gym", y: parseFloat(gym) },
                    { label: "Others", y: parseFloat(other) },
                    { label: "Your Saving", y: parseFloat(saved) }

                ]
            }
            ]
        });
        chart.render();
    }

