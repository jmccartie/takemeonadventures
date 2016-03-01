---
layout: post
title: 2016 Full-Timers Survey
date: 2016-03-01  8:42:39
---

We spent most of January boondocking with a few other full-timers. People from different walks of life, but all sharing the same desire to live on the road and explore America.

<!-- more -->

<script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>

<style>
  .chart {
    min-width: 310px;
    height: 400px;
    max-width: 600px;
    margin: 0 auto;
    margin-bottom: 100px;
  }
</style>

We also witnessed a few interesting events last month: from people stressed about repairing their RV's, to couples worried about their debt, to other couples with seemingly no financial troubles whatsoever. Despite similar lifestyles, everyone was in a different spot financially. I began to wonder what other full-timers spent each month. We're a family of 5 with 3 kids under 7. When the kids were little, we spent about $500/month on groceries. But this past month, we spent $850. Is that a lot? I don't know. (I just peeked in my fridge and I wouldn't describe its contents as "extravagent")

And since talking about finances is "taboo", I created an annonymous survey for full-timers. We had 51 respondents to the survey.

My favorite take-aways:

* Most rigs are new purchases and most people spent $75k or more
* Families and couples spend about the same eating out
* Families spend 75% more than couples on groceries
* Families spend 128% more than couples on "Fun and Entertainment"
* Families spend 43% more than couples on campgrounds
* 30% of respondents were debt free
* 35% spent at least $1,000/month on debt

If you want to analyze the raw data yourself, [here's a CSV with all the responses](/files/2016-full-timers-survey.csv).

<script>
$(function () {
    $('#num-adults').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'How many adults in your rig?'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Number of adults',
            colorByPoint: true,
            data: [{
                name: '1',
                y: 9.8
            }, {
                name: '2',
                y: 88.2,
                sliced: true,
                selected: true
            }, {
                name: '3',
                y: 2
            }]
        }]
    });
});
</script>

<div id="num-adults" class="chart"></div>

<script>
$(function () {
    $('#num-kids').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'How many kids in your rig?'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Number of kids',
            colorByPoint: true,
            data: [{
                name: '1',
                y: 5.9
            }, {
                name: '2',
                y: 21.6
            }, {
                name: 'None',
                y: 60.8,
                sliced: true,
                selected: true
            }, {
              name: '3',
              y: 7.8
            }, {
              name: '4',
              y: 3.9
            }]
        }]
    });
});
</script>

<div id="num-kids" class="chart"></div>

<script>
$(function () {
    $('#income').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'What is your approximate average household income?'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Number of kids',
            colorByPoint: true,
            data: [{
                name: '$0-$24,999',
                y: 7.7
            }, {
                name: '$25,000-$49,999',
                y: 21.6
            }, {
                name: '$50,000-$74,999',
                y: 11.5
            }, {
              name: '$75,000-$99,999',
              y: 23.1,
              sliced: true,
              selected: true
            }, {
              name: '$100,000-$124,999',
              y: 7.7
            }, {
              name: '$125,000-$149,000',
              y: 11.5
            }, {
              name: '$150,000-$174,999',
              y: 9.6

            }]
        }]
    });
});
</script>

<div id="income" class="chart"></div>

<script>
$(function () {
    $('#rig-spend').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'How much did you spend on your rig when you bought it? (including initial upgrades/remodel)'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Cost of rig',
            colorByPoint: true,
            data: [{
                name: '$0-$4,999',
                y: 3.8
            }, {
                name: '$5,000-$9,999',
                y: 7.7
            }, {
                name: '$10,000-$29,999',
                y: 23.1
            }, {
              name: '$30,000-$49,999',
              y: 21.2
            }, {
              name: '$50,000-$74,999',
              y: 13.5
            }, {
              name: '$75,000+',
              y: 30.8,
              sliced: true,
              selected: true
            }]
        }]
    });
});
</script>

<div id="rig-spend" class="chart"></div>

<script>
$(function () {
    $('#rig-age').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'How old is your rig?'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Age of rig',
            colorByPoint: true,
            data: [{
              name: '0-2 years',
              y: 32.7,
              sliced: true,
              selected: true
            }, {
                name: '2-5 years',
                y: 11.5
            }, {
                name: '6-10 years',
                y: 25
            }, {
              name: 'More than 10 years',
              y: 30.8
            }]
        }]
    });
});
</script>

<div id="rig-age" class="chart"></div>


<script>
  $(function () {
      $('#expenditures').highcharts({
          chart: {
              type: 'bar'
          },
          title: {
              text: 'Monthly Expenditures - Average From All Responses'
          },
          xAxis: {
              categories: ['Groceries', 'Eating out', 'Fun & Entertainment', 'Campground fees', 'Trailer maintenance', 'Vehicle maintenance', 'Trailer insurance', 'Vehicle insurance', 'Data plans',  'Gas', 'Debt'],
          },
          yAxis: {
            min: 0,
            labels: {
              formatter: function() {
                return '$' + Highcharts.numberFormat(this.value, 0);
              }
            }
          },
          tooltip: {
              valueSuffix: ' millions'
          },
          plotOptions: {
              bar: {
                  dataLabels: {
                      enabled: true,
                      formatter: function () {
                        return '$' + Highcharts.numberFormat(this.y, 0);
                      }
                  }
              }
          },
          credits: {
              enabled: false
          },
          series: [{
            name: "Categories",
            data: [548, 287, 169, 537, 92, 108, 119, 123, 184, 352, 1040]
          }]
      });
  });
</script>

<div id="expenditures" class="chart"></div>


<script>
  $(function () {
      $('#expenditures-no-kids').highcharts({
          chart: {
              type: 'bar'
          },
          title: {
              text: 'Monthly Expenditures - No Kids'
          },
          xAxis: {
              categories: ['Groceries', 'Eating out', 'Fun & Entertainment', 'Campground fees', 'Trailer maintenance', 'Vehicle maintenance', 'Trailer insurance', 'Vehicle insurance', 'Data plans',  'Gas', 'Debt'],
          },
          yAxis: {
            min: 0,
            labels: {
              formatter: function() {
                return '$' + Highcharts.numberFormat(this.value, 0);
              }
            }
          },
          tooltip: {
              valueSuffix: ' millions'
          },
          plotOptions: {
              bar: {
                  dataLabels: {
                      enabled: true,
                      formatter: function () {
                        return '$' + Highcharts.numberFormat(this.y, 0);
                      }
                  }
              }
          },
          credits: {
              enabled: false
          },
          series: [{
            name: "Categories",
            data: [417, 278, 113, 461, 109, 98,  137, 137, 167, 280, 1006]
          }]
      });
  });
</script>

<div id="expenditures-no-kids" class="chart"></div>

<script>
  $(function () {
      $('#expenditures-with-kids').highcharts({
          chart: {
              type: 'bar'
          },
          title: {
              text: 'Monthly Expenditures - With Kids'
          },
          xAxis: {
              categories: ['Groceries', 'Eating out', 'Fun & Entertainment', 'Campground fees', 'Trailer maintenance', 'Vehicle maintenance', 'Trailer insurance', 'Vehicle insurance', 'Data plans',  'Gas', 'Debt'],
          },
          yAxis: {
            min: 0,
            labels: {
              formatter: function() {
                return '$' + Highcharts.numberFormat(this.value, 0);
              }
            }
          },
          tooltip: {
              valueSuffix: ' millions'
          },
          plotOptions: {
              bar: {
                  dataLabels: {
                      enabled: true,
                      formatter: function () {
                        return '$' + Highcharts.numberFormat(this.y, 0);
                      }
                  }
              }
          },

          credits: {
              enabled: false
          },
          series: [{
            name: "Categories",
            data: [731, 271, 258, 661, 66, 115, 91, 103, 200, 466, 1027]
          }]
      });
  });
</script>

<div id="expenditures-with-kids" class="chart"></div>

There you have it. Just remember: this is not scientific, and it certainly doesn't cover the 1,000,000+ people that claim an RV as their full-time residence. But I hope this information helps give you a small sense of how a few other full-timers spend their money.
