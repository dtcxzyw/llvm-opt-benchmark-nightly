inline.NumInlined: 30
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ff_metasound_lsp8 = hidden local_unnamed_addr constant [504 x float] [float 2.702000e-01, float 5.096000e-01, float 6.437000e-01, float f0x3F446738, float 9.639000e-01, float 1.069600e+00, float 1.262500e+00, float 1.578900e+00, float 1.928500e+00, float 2.238300e+00, float 2.512900e+00, float 2.847000e+00, float 1.740000e-01, float 3.677000e-01, float 6.082000e-01, float f0x3F56B50B, float 1.108400e+00, float 1.372100e+00, float 1.636200e+00, float 1.873300e+00, float 2.064000e+00, float 2.344200e+00, float 2.608700e+00, float 2.854800e+00, float 1.536000e-01, float 3.279000e-01, float 5.143000e-01, float 6.859000e-01, float 9.763000e-01, float 1.274400e+00, float 1.560500e+00, float 1.856600e+00, float 2.100700e+00, float 2.345000e+00, float 2.607500e+00, float 2.885000e+00, float 2.075000e-01, float 4.533000e-01, float 7.709000e-01, float 1.037700e+00, float 1.295300e+00, float 1.513200e+00, float 1.782600e+00, float 2.035100e+00, float 2.259000e+00, float 2.499600e+00, float 2.679500e+00, float 2.874800e+00, float 1.393000e-01, float 2.453000e-01, float 3.754000e-01, float 5.453000e-01, float 8.148000e-01, float 1.128900e+00, float 1.438900e+00, float 1.759200e+00, float 2.035300e+00, float 2.321500e+00, float 2.593400e+00, float 2.858800e+00, float 1.250000e-01, float 3.627000e-01, float 7.613000e-01, float 1.138000e+00, float 1.416300e+00, float 1.556500e+00, float 1.692000e+00, float 1.813000e+00, float 1.867800e+00, float 2.042700e+00, float 2.431800e+00, float 2.854400e+00, float 2.256000e-01, float 4.223000e-01, float 6.452000e-01, float f0x3F5C2268, float 1.067300e+00, float 1.311800e+00, float 1.548600e+00, float 1.836600e+00, float 2.075900e+00, float 2.302600e+00, float 2.528400e+00, float 2.803000e+00, float 2.304000e-01, float 4.404000e-01, float 6.891000e-01, float f0x3F657A78, float 1.151000e+00, float 1.420200e+00, float 1.648300e+00, float 1.858000e+00, float 2.118100e+00, float 2.368600e+00, float 2.607800e+00, float 2.912800e+00, float 2.230000e-01, float 3.816000e-01, float 5.520000e-01, float 6.062000e-01, float 7.909000e-01, float 1.098800e+00, float 1.433000e+00, float 1.784600e+00, float 2.071300e+00, float 2.345700e+00, float 2.604800e+00, float 2.870800e+00, float 2.447000e-01, float 5.800000e-01, float f0x3F532CA5, float f0x3F7D9168, float 1.172100e+00, float 1.399000e+00, float 1.669400e+00, float 1.906400e+00, float 2.130700e+00, float 2.425500e+00, float 2.681500e+00, float 2.911700e+00, float 1.974000e-01, float 3.812000e-01, float 5.802000e-01, float 7.759000e-01, float f0x3F6D9168, float 1.154700e+00, float 1.417000e+00, float 1.636900e+00, float 1.889000e+00, float 2.258700e+00, float 2.562600e+00, float 2.823900e+00, float 1.209000e-01, float 2.510000e-01, float 4.841000e-01, float f0x3F4E075F, float 1.119700e+00, float 1.356300e+00, float 1.607300e+00, float 1.892600e+00, float 2.135000e+00, float 2.366900e+00, float 2.629100e+00, float 2.898500e+00, float 2.352000e-01, float 4.347000e-01, float 6.582000e-01, float f0x3F515B57, float 9.548000e-01, float 1.165400e+00, float 1.494200e+00, float 1.881200e+00, float 2.170300e+00, float 2.377900e+00, float 2.641200e+00, float 2.887100e+00, float 2.091000e-01, float 4.084000e-01, float 6.730000e-01, float f0x3F6A43FE, float 1.125900e+00, float 1.326200e+00, float 1.593700e+00, float 1.812900e+00, float 2.023700e+00, float 2.331700e+00, float 2.577800e+00, float 2.862000e+00, float 1.167000e-01, float 2.406000e-01, float 4.520000e-01, float 7.298000e-01, float f0x3F7C1BDA, float 1.244800e+00, float 1.513700e+00, float 1.787400e+00, float 2.028000e+00, float 2.302000e+00, float 2.591400e+00, float 2.879400e+00, float 3.003000e-01, float 4.966000e-01, float 6.520000e-01, float f0x3F59BA5E, float 1.160000e+00, float 1.398100e+00, float 1.580500e+00, float 1.834600e+00, float 2.075700e+00, float 2.310200e+00, float 2.576000e+00, float 2.849900e+00, float 2.451000e-01, float 4.163000e-01, float 5.960000e-01, float f0x3F47CED9, float f0x3F736113, float 1.243800e+00, float 1.558700e+00, float 1.858100e+00, float 2.073500e+00, float 2.319800e+00, float 2.570400e+00, float 2.822000e+00, float 3.112000e-01, float 5.517000e-01, float 7.032000e-01, float 8.528000e-01, float 1.148900e+00, float 1.425700e+00, float 1.684800e+00, float 1.938800e+00, float 2.157700e+00, float 2.426500e+00, float 2.667800e+00, float 2.905100e+00, float 2.249000e-01, float 3.897000e-01, float 5.559000e-01, float 7.473000e-01, float 1.015800e+00, float 1.358100e+00, float 1.691400e+00, float 1.993000e+00, float 2.184300e+00, float 2.353400e+00, float 2.551200e+00, float 2.806500e+00, float 2.600000e-01, float 4.574000e-01, float f0x3F3C2268, float f0x3F7816F0, float 1.169600e+00, float 1.384800e+00, float 1.633500e+00, float 1.902100e+00, float 2.117400e+00, float 2.348100e+00, float 2.590200e+00, float 2.839000e+00, float 2.246000e-01, float 3.372000e-01, float 4.560000e-01, float 5.249000e-01, float 7.056000e-01, float 1.027300e+00, float 1.381000e+00, float 1.713200e+00, float 1.981900e+00, float 2.257400e+00, float 2.541000e+00, float 2.849100e+00, float 1.419000e-01, float 4.834000e-01, float f0x3F622D0E, float 1.145300e+00, float 1.283900e+00, float 1.422400e+00, float 1.559300e+00, float 1.787700e+00, float 2.128500e+00, float 2.407000e+00, float 2.604300e+00, float 2.851100e+00, float 1.886000e-01, float 3.677000e-01, float 5.617000e-01, float f0x3F4F559B, float 1.127700e+00, float 1.384100e+00, float 1.580400e+00, float 1.813600e+00, float 2.030700e+00, float 2.280500e+00, float 2.539900e+00, float 2.832200e+00, float 2.351000e-01, float 4.151000e-01, float 6.675000e-01, float 8.713000e-01, float 1.046400e+00, float 1.329200e+00, float 1.658600e+00, float 1.928100e+00, float 2.135500e+00, float 2.349500e+00, float 2.622200e+00, float 2.878200e+00, float 2.700000e-01, float 4.489000e-01, float 6.206000e-01, float 7.121000e-01, float 7.737000e-01, float f0x3F7C1BDA, float 1.365800e+00, float 1.743300e+00, float 2.013900e+00, float 2.224300e+00, float 2.480600e+00, float 2.817500e+00, float 2.479000e-01, float 4.425000e-01, float f0x3F2624DD, float f0x3F5FDF3B, float 1.116100e+00, float 1.384900e+00, float 1.677300e+00, float 1.956600e+00, float 2.149100e+00, float 2.362400e+00, float 2.568500e+00, float 2.811400e+00, float 2.035000e-01, float 3.701000e-01, float 5.567000e-01, float 7.953000e-01, float 1.008200e+00, float 1.275800e+00, float 1.537300e+00, float 1.782200e+00, float 2.017500e+00, float 2.260100e+00, float 2.475900e+00, float 2.777100e+00, float 1.856000e-01, float 3.461000e-01, float 5.998000e-01, float 9.041000e-01, float 1.238300e+00, float 1.461200e+00, float 1.666700e+00, float 1.930500e+00, float 2.161700e+00, float 2.410700e+00, float 2.647700e+00, float 2.865600e+00, float 2.107000e-01, float 3.715000e-01, float 5.289000e-01, float 6.651000e-01, float 8.420000e-01, float 1.116800e+00, float 1.440100e+00, float 1.723000e+00, float 1.990100e+00, float 2.268700e+00, float 2.545200e+00, float 2.865500e+00, float 1.218000e-01, float 2.999000e-01, float 6.348000e-01, float f0x3F72BD3C, float 1.274500e+00, float 1.587600e+00, float 1.912900e+00, float 2.234800e+00, float 2.402000e+00, float 2.492200e+00, float 2.635100e+00, float 2.835700e+00, float 1.617000e-01, float 3.483000e-01, float 5.869000e-01, float f0x3F50F909, float 1.036600e+00, float 1.234400e+00, float 1.460900e+00, float 1.702900e+00, float 1.947600e+00, float 2.233700e+00, float 2.525800e+00, float 2.844200e+00, float 2.505000e-01, float 4.894000e-01, float f0x3F404189, float 9.152000e-01, float 1.084500e+00, float 1.365700e+00, float 1.652800e+00, float 1.834600e+00, float 2.016000e+00, float 2.281100e+00, float 2.533800e+00, float 2.813600e+00, float 9.470000e-02, float 1.158000e-01, float 5.780000e-02, float -3.370000e-02, float -6.600000e-03, float 1.040000e-02, float -4.470000e-02, float -5.050000e-02, float f0xBD9F559B, float -2.930000e-02, float 2.510000e-02, float -1.430000e-02, float 3.490000e-02, float -2.270000e-02, float f0xBDBA29C7, float 5.230000e-02, float 3.250000e-02, float -4.100000e-02, float -1.045000e-01, float -8.990000e-02, float f0xBA6BEDFA, float 7.500000e-03, float -5.750000e-02, float -8.550000e-02, float -1.290000e-02, float 5.750000e-02, float 5.970000e-02, float 3.910000e-02, float 3.710000e-02, float -1.840000e-02, float -8.300000e-03, float 2.870000e-02, float 1.430000e-02, float 1.670000e-02, float 1.200000e-02, float -1.680000e-02, float 4.520000e-02, float 2.230000e-02, float -3.520000e-02, float 1.190000e-02, float -4.960000e-02, float -9.650000e-02, float -6.610000e-02, float -7.200000e-03, float 1.099000e-01, float 8.430000e-02, float -8.700000e-03, float -4.780000e-02, float -1.280000e-02, float -1.200000e-02, float -4.000000e-04, float 7.310000e-02, float 1.047000e-01, float 6.300000e-02, float 1.960000e-02, float -1.030000e-02, float -3.990000e-02, float -9.860000e-02, float -9.120000e-02, float -3.900000e-02, float -2.470000e-02, float -6.940000e-02, float -7.490000e-02, float -6.600000e-03, float 2.230000e-02, float 6.340000e-02, float 3.430000e-02, float -1.340000e-02, float 7.270000e-02, float 2.410000e-02, float 6.600000e-03, float 4.370000e-02, float 6.100000e-02, float 3.640000e-02, float 2.480000e-02, float -3.580000e-02, float -6.860000e-02, float -1.040000e-02, float 4.260000e-02, float f0x3C102DE0, float -1.370000e-02, float -1.650000e-02, float 6.710000e-02, float 8.150000e-02, float -8.630000e-02, float -6.440000e-02, float f0xBC102DE0, float 2.300000e-03, float 4.820000e-02, float 1.174000e-01, float 1.270000e-01, float 5.940000e-02, float 1.650000e-02, float 9.490000e-02, float 1.098000e-01, float 1.370000e-02, float 4.951000e-01, float 4.999000e-01, float 4.958000e-01, float 4.907000e-01, float 4.984000e-01, float 4.965000e-01, float 4.958000e-01, float 4.996000e-01, float 4.987000e-01, float 4.958000e-01, float 4.986000e-01, float 4.977000e-01, float 2.841000e-01, float 2.186000e-01, float 1.474000e-01, float 1.687000e-01, float 2.217000e-01, float 2.632000e-01, float 2.706000e-01, float 2.624000e-01, float 2.162000e-01, float 2.453000e-01, float 2.460000e-01, float 2.531000e-01], align 16
@ff_metasound_lsp11 = hidden local_unnamed_addr constant [1312 x float] [float 1.103000e-01, float 3.862000e-01, float f0x3F2FB15B, float f0x3F583E42, float f0x3F6C5048, float 1.026100e+00, float 1.124800e+00, float 1.405700e+00, float 1.662100e+00, float 1.801000e+00, float 1.869200e+00, float 2.070400e+00, float 2.349000e+00, float 2.606000e+00, float 2.753900e+00, float 2.897700e+00, float 1.273000e-01, float 2.407000e-01, float 3.812000e-01, float 6.004000e-01, float 7.767000e-01, float 9.383000e-01, float 1.134400e+00, float 1.335100e+00, float 1.523300e+00, float 1.726200e+00, float 1.946600e+00, float 2.173900e+00, float 2.349500e+00, float 2.516200e+00, float 2.716400e+00, float 2.920200e+00, float 2.010000e-01, float 3.330000e-01, float 4.488000e-01, float 6.465000e-01, float 8.046000e-01, float 9.889000e-01, float 1.147900e+00, float 1.296400e+00, float 1.477000e+00, float 1.660600e+00, float 1.878900e+00, float 2.115500e+00, float 2.328700e+00, float 2.519900e+00, float 2.710100e+00, float 2.911900e+00, float 1.168000e-01, float 2.197000e-01, float 3.279000e-01, float 4.691000e-01, float 6.268000e-01, float 8.251000e-01, float 1.053300e+00, float 1.271400e+00, float 1.471200e+00, float 1.676200e+00, float 1.883100e+00, float 2.111400e+00, float 2.323000e+00, float 2.529700e+00, float 2.736500e+00, float 2.927000e+00, float 1.405000e-01, float 3.109000e-01, float 4.986000e-01, float 6.891000e-01, float f0x3F5D07C8, float 1.058300e+00, float 1.259400e+00, float 1.434900e+00, float 1.623200e+00, float 1.811600e+00, float 1.990500e+00, float 2.193500e+00, float 2.379900e+00, float 2.565600e+00, float 2.766100e+00, float 2.948600e+00, float 1.703000e-01, float 3.057000e-01, float 4.403000e-01, float 5.225000e-01, float 5.969000e-01, float f0x3F4F9DB2, float 1.072900e+00, float 1.321500e+00, float 1.540700e+00, float 1.738100e+00, float 1.947700e+00, float 2.168000e+00, float 2.358600e+00, float 2.561200e+00, float 2.763000e+00, float 2.941000e+00, float 1.128000e-01, float 2.628000e-01, float 4.523000e-01, float 6.495000e-01, float 8.176000e-01, float f0x3F7B4A23, float 1.174600e+00, float 1.371000e+00, float 1.556800e+00, float 1.751800e+00, float 1.949700e+00, float 2.145200e+00, float 2.334600e+00, float 2.538900e+00, float 2.736200e+00, float 2.926400e+00, float 1.809000e-01, float 3.287000e-01, float 5.205000e-01, float 7.264000e-01, float f0x3F6E075F, float 1.121700e+00, float 1.297000e+00, float 1.489400e+00, float 1.687400e+00, float 1.849300e+00, float 2.057600e+00, float 2.238200e+00, float 2.409700e+00, float 2.604100e+00, float 2.779600e+00, float 2.938900e+00, float 2.502000e-01, float 4.709000e-01, float f0x3F306F69, float f0x3F55A858, float f0x3F6BC01A, float 1.045500e+00, float 1.239900e+00, float 1.461600e+00, float 1.646300e+00, float 1.838000e+00, float 2.047500e+00, float 2.239700e+00, float 2.466500e+00, float 2.655000e+00, float 2.770100e+00, float 2.889500e+00, float 1.040000e-01, float 2.340000e-01, float 3.964000e-01, float 5.740000e-01, float 7.764000e-01, float f0x3F7E7D56, float 1.200000e+00, float 1.401400e+00, float 1.602400e+00, float 1.797400e+00, float 1.993900e+00, float 2.195900e+00, float 2.378300e+00, float 2.566300e+00, float 2.761300e+00, float 2.948400e+00, float 1.912000e-01, float 3.393000e-01, float 4.743000e-01, float 6.313000e-01, float 8.014000e-01, float 9.879000e-01, float 1.185500e+00, float 1.392200e+00, float 1.567800e+00, float 1.728900e+00, float 1.927100e+00, float 2.116500e+00, float 2.308900e+00, float 2.541400e+00, float 2.744800e+00, float 2.926900e+00, float 9.650000e-02, float 2.025000e-01, float 3.398000e-01, float 4.990000e-01, float 6.934000e-01, float 9.386000e-01, float 1.173000e+00, float 1.376600e+00, float 1.578300e+00, float 1.778300e+00, float 1.979000e+00, float 2.183100e+00, float 2.367000e+00, float 2.557800e+00, float 2.764100e+00, float 2.951600e+00, float 2.126000e-01, float 3.652000e-01, float 5.545000e-01, float 7.170000e-01, float f0x3F5E0DED, float 1.064000e+00, float 1.255800e+00, float 1.406100e+00, float 1.590400e+00, float 1.809500e+00, float 1.976000e+00, float 2.150500e+00, float 2.354900e+00, float 2.557500e+00, float 2.702300e+00, float 2.887700e+00, float 1.827000e-01, float 3.426000e-01, float 4.894000e-01, float 6.488000e-01, float 7.960000e-01, float f0x3F741893, float 1.121700e+00, float 1.279800e+00, float 1.456600e+00, float 1.645300e+00, float 1.804400e+00, float 2.004200e+00, float 2.237900e+00, float 2.461100e+00, float 2.669700e+00, float 2.896600e+00, float 2.034000e-01, float 3.822000e-01, float 5.231000e-01, float 6.960000e-01, float 9.200000e-01, float 1.039400e+00, float 1.161600e+00, float 1.377200e+00, float 1.549300e+00, float 1.733000e+00, float 1.964600e+00, float 2.123300e+00, float 2.333400e+00, float 2.536100e+00, float 2.708700e+00, float 2.947000e+00, float 1.050000e-01, float 2.060000e-01, float 3.705000e-01, float 5.998000e-01, float 8.337000e-01, float 1.057700e+00, float 1.255900e+00, float 1.432700e+00, float 1.633400e+00, float 1.816500e+00, float 1.985300e+00, float 2.205800e+00, float 2.406300e+00, float 2.581800e+00, float 2.762500e+00, float 2.945800e+00, float 1.419000e-01, float 4.053000e-01, float 6.660000e-01, float f0x3F641F21, float 1.040500e+00, float 1.154700e+00, float 1.250600e+00, float 1.392600e+00, float 1.566900e+00, float 1.752700e+00, float 1.969400e+00, float 2.205400e+00, float 2.388900e+00, float 2.574300e+00, float 2.758600e+00, float 2.917400e+00, float 1.514000e-01, float 2.825000e-01, float 4.309000e-01, float 5.772000e-01, float 7.470000e-01, float 9.703000e-01, float 1.146200e+00, float 1.331600e+00, float 1.532100e+00, float 1.725900e+00, float 1.928200e+00, float 2.126600e+00, float 2.310600e+00, float 2.506400e+00, float 2.706700e+00, float 2.909400e+00, float 1.693000e-01, float 3.156000e-01, float 4.878000e-01, float 6.635000e-01, float f0x3F5212D7, float 9.569000e-01, float 1.115400e+00, float 1.306400e+00, float 1.510900e+00, float 1.718400e+00, float 1.917900e+00, float 2.103600e+00, float 2.276300e+00, float 2.482000e+00, float 2.694900e+00, float 2.910500e+00, float 1.432000e-01, float 2.718000e-01, float 4.241000e-01, float 5.564000e-01, float 6.939000e-01, float f0x3F66AE7D, float 1.158200e+00, float 1.394800e+00, float 1.618100e+00, float 1.802400e+00, float 1.981400e+00, float 2.174000e+00, float 2.345900e+00, float 2.545600e+00, float 2.749100e+00, float 2.930700e+00, float 2.294000e-01, float 3.857000e-01, float 5.590000e-01, float 7.434000e-01, float 9.189000e-01, float 1.094100e+00, float 1.274000e+00, float 1.445600e+00, float 1.617800e+00, float 1.799400e+00, float 1.968900e+00, float 2.164400e+00, float 2.352500e+00, float 2.538500e+00, float 2.746800e+00, float 2.940500e+00, float 1.667000e-01, float 3.109000e-01, float 4.612000e-01, float 6.032000e-01, float 7.375000e-01, float 8.866000e-01, float 1.084000e+00, float 1.305300e+00, float 1.498200e+00, float 1.704400e+00, float 1.914600e+00, float 2.111700e+00, float 2.294200e+00, float 2.498300e+00, float 2.708400e+00, float 2.913200e+00, float 1.810000e-01, float 3.205000e-01, float 4.696000e-01, float f0x3F1F837B, float 7.641000e-01, float f0x3F7EF34D, float 1.242700e+00, float 1.436100e+00, float 1.588900e+00, float 1.754400e+00, float 1.908300e+00, float 2.073300e+00, float 2.245700e+00, float 2.446100e+00, float 2.679300e+00, float 2.909800e+00, float 1.164000e-01, float 3.753000e-01, float 6.068000e-01, float f0x3F4013A9, float 1.010000e+00, float 1.213100e+00, float 1.379300e+00, float 1.530200e+00, float 1.630000e+00, float 1.795000e+00, float 1.905700e+00, float 2.103100e+00, float 2.383000e+00, float 2.574500e+00, float 2.694900e+00, float 2.877900e+00, float 1.571000e-01, float 4.378000e-01, float 6.735000e-01, float 8.312000e-01, float 8.944000e-01, float 9.818000e-01, float 1.162200e+00, float 1.409400e+00, float 1.642300e+00, float 1.806600e+00, float 1.925800e+00, float 2.183800e+00, float 2.436300e+00, float 2.627900e+00, float 2.735800e+00, float 2.879000e+00, float 1.398000e-01, float 2.686000e-01, float 4.248000e-01, float 6.156000e-01, float 7.870000e-01, float 1.003500e+00, float 1.201200e+00, float 1.368900e+00, float 1.536300e+00, float 1.739800e+00, float 1.960400e+00, float 2.161900e+00, float 2.334500e+00, float 2.509700e+00, float 2.727100e+00, float 2.936800e+00, float 1.913000e-01, float 3.338000e-01, float 4.987000e-01, float f0x3F250481, float f0x3F4902DE, float 1.016300e+00, float 1.188600e+00, float 1.361000e+00, float 1.537900e+00, float 1.723000e+00, float 1.888000e+00, float 2.086200e+00, float 2.296000e+00, float 2.492800e+00, float 2.712200e+00, float 2.915100e+00, float 9.080000e-02, float 1.752000e-01, float 2.899000e-01, float 5.365000e-01, float f0x3F46AE7D, float 1.010000e+00, float 1.212400e+00, float 1.406000e+00, float 1.601900e+00, float 1.801000e+00, float 1.977400e+00, float 2.190500e+00, float 2.373300e+00, float 2.562300e+00, float 2.766000e+00, float 2.956500e+00, float 1.773000e-01, float 3.179000e-01, float 4.925000e-01, float f0x3F2FB7E9, float 8.452000e-01, float 9.897000e-01, float 1.186000e+00, float 1.372200e+00, float 1.551500e+00, float 1.765800e+00, float 1.980200e+00, float 2.181900e+00, float 2.362000e+00, float 2.544200e+00, float 2.725000e+00, float 2.922000e+00, float 1.286000e-01, float 2.341000e-01, float 3.689000e-01, float 5.364000e-01, float 7.176000e-01, float 9.350000e-01, float 1.108300e+00, float 1.294300e+00, float 1.497400e+00, float 1.705900e+00, float 1.904700e+00, float 2.114500e+00, float 2.324200e+00, float 2.536100e+00, float 2.745300e+00, float 2.932900e+00, float 2.273000e-01, float 3.834000e-01, float 5.565000e-01, float 7.192000e-01, float 8.431000e-01, float 9.962000e-01, float 1.176300e+00, float 1.357100e+00, float 1.577400e+00, float 1.741900e+00, float 1.920200e+00, float 2.113100e+00, float 2.291900e+00, float 2.489800e+00, float 2.689500e+00, float 2.918000e+00, float 1.775000e-01, float 3.058000e-01, float 4.274000e-01, float 6.023000e-01, float 8.151000e-01, float 1.073400e+00, float 1.321100e+00, float 1.517800e+00, float 1.670600e+00, float 1.815400e+00, float 1.968600e+00, float 2.153700e+00, float 2.346100e+00, float 2.527600e+00, float 2.718100e+00, float 2.912100e+00, float 1.653000e-01, float 4.304000e-01, float f0x3F22D773, float 7.824000e-01, float f0x3F6B15B5, float 1.045200e+00, float 1.207100e+00, float 1.407700e+00, float 1.620600e+00, float 1.829900e+00, float 2.008900e+00, float 2.194800e+00, float 2.390000e+00, float 2.598200e+00, float 2.784400e+00, float 2.948700e+00, float 1.492000e-01, float 2.609000e-01, float 3.820000e-01, float 5.485000e-01, float 7.243000e-01, float 9.319000e-01, float 1.153800e+00, float 1.357900e+00, float 1.526600e+00, float 1.700200e+00, float 1.887300e+00, float 2.101600e+00, float 2.317500e+00, float 2.522100e+00, float 2.724100e+00, float 2.924300e+00, float 2.074000e-01, float 3.781000e-01, float 5.209000e-01, float 6.869000e-01, float f0x3F5B923A, float 9.875000e-01, float 1.184900e+00, float 1.356800e+00, float 1.490700e+00, float 1.733500e+00, float 1.890200e+00, float 2.122400e+00, float 2.309900e+00, float 2.491800e+00, float 2.702300e+00, float 2.876500e+00, float 1.359000e-01, float 2.254000e-01, float 3.286000e-01, float 4.432000e-01, float 6.586000e-01, float f0x3F657A78, float 1.112500e+00, float 1.352300e+00, float 1.562600e+00, float 1.757900e+00, float 1.984600e+00, float 2.190500e+00, float 2.354800e+00, float 2.554200e+00, float 2.766300e+00, float 2.934600e+00, float 1.430000e-01, float 2.966000e-01, float 4.685000e-01, float 6.493000e-01, float f0x3F54DD2F, float 1.030400e+00, float 1.222000e+00, float 1.408200e+00, float 1.599500e+00, float 1.788800e+00, float 1.977400e+00, float 2.173700e+00, float 2.360700e+00, float 2.557700e+00, float 2.755800e+00, float 2.940500e+00, float 1.477000e-01, float 2.694000e-01, float 4.056000e-01, float 5.626000e-01, float f0x3F34816F, float 8.647000e-01, float 1.049100e+00, float 1.248800e+00, float 1.481400e+00, float 1.707200e+00, float 1.915000e+00, float 2.114700e+00, float 2.303800e+00, float 2.514400e+00, float 2.718400e+00, float 2.920200e+00, float 1.690000e-01, float 3.033000e-01, float 4.580000e-01, float 6.686000e-01, float 8.536000e-01, float 1.029300e+00, float 1.212400e+00, float 1.399800e+00, float 1.571800e+00, float 1.760700e+00, float 1.958000e+00, float 2.124500e+00, float 2.297100e+00, float 2.476200e+00, float 2.689600e+00, float 2.917700e+00, float 1.092000e-01, float 2.779000e-01, float 4.853000e-01, float 6.880000e-01, float f0x3F66AE7D, float 1.095300e+00, float 1.275200e+00, float 1.461800e+00, float 1.662300e+00, float 1.848400e+00, float 2.026400e+00, float 2.215200e+00, float 2.401700e+00, float 2.583500e+00, float 2.767100e+00, float 2.943600e+00, float 1.497000e-01, float 3.637000e-01, float 6.014000e-01, float 8.032000e-01, float f0x3F7F0D84, float 1.183500e+00, float 1.374100e+00, float 1.569800e+00, float 1.738200e+00, float 1.909400e+00, float 2.071000e+00, float 2.239200e+00, float 2.408200e+00, float 2.592600e+00, float 2.776200e+00, float 2.953600e+00, float 1.434000e-01, float 2.492000e-01, float 3.966000e-01, float 5.934000e-01, float 8.033000e-01, float 1.065700e+00, float 1.279600e+00, float 1.427600e+00, float 1.574500e+00, float 1.783300e+00, float 1.928800e+00, float 2.124700e+00, float 2.354300e+00, float 2.541200e+00, float 2.704900e+00, float 2.887200e+00, float 1.612000e-01, float 2.926000e-01, float 4.574000e-01, float 6.387000e-01, float f0x3F539581, float 1.018000e+00, float 1.180800e+00, float 1.352600e+00, float 1.556400e+00, float 1.753600e+00, float 1.918700e+00, float 2.119200e+00, float 2.314900e+00, float 2.500600e+00, float 2.710100e+00, float 2.921700e+00, float 8.280000e-02, float 1.863000e-01, float 3.235000e-01, float 5.050000e-01, float 7.250000e-01, float f0x3F7C985F, float 1.209300e+00, float 1.394100e+00, float 1.598000e+00, float 1.793200e+00, float 1.980900e+00, float 2.189400e+00, float 2.391800e+00, float 2.577300e+00, float 2.754000e+00, float 2.932900e+00, float 2.001000e-01, float 3.655000e-01, float 5.290000e-01, float 6.761000e-01, float f0x3F4D7DBF, float 9.972000e-01, float 1.209000e+00, float 1.425500e+00, float 1.608500e+00, float 1.782500e+00, float 1.980400e+00, float 2.168100e+00, float 2.345700e+00, float 2.532500e+00, float 2.731900e+00, float 2.919600e+00, float 1.505000e-01, float 2.767000e-01, float 4.254000e-01, float 6.054000e-01, float 7.821000e-01, float 9.567000e-01, float 1.129400e+00, float 1.308000e+00, float 1.498400e+00, float 1.695400e+00, float 1.866600e+00, float 2.073600e+00, float 2.287500e+00, float 2.496900e+00, float 2.707200e+00, float 2.916300e+00, float 1.589000e-01, float 4.151000e-01, float 5.749000e-01, float 6.651000e-01, float 8.061000e-01, float 1.047000e+00, float 1.261600e+00, float 1.369000e+00, float 1.498500e+00, float 1.780800e+00, float 1.982500e+00, float 2.106800e+00, float 2.275100e+00, float 2.544800e+00, float 2.713300e+00, float 2.868900e+00, float 9.160000e-02, float 1.846000e-01, float 3.788000e-01, float 6.329000e-01, float f0x3F609D49, float 1.068700e+00, float 1.265300e+00, float 1.456100e+00, float 1.657300e+00, float 1.844900e+00, float 2.040200e+00, float 2.225400e+00, float 2.396800e+00, float 2.586100e+00, float 2.779200e+00, float 2.950800e+00, float 2.282000e-01, float 4.159000e-01, float 5.834000e-01, float f0x3F309D49, float 8.108000e-01, float 1.032100e+00, float 1.279500e+00, float 1.526200e+00, float 1.693600e+00, float 1.846900e+00, float 2.092200e+00, float 2.260700e+00, float 2.379500e+00, float 2.530100e+00, float 2.738600e+00, float 2.953000e+00, float 1.651000e-01, float 3.004000e-01, float 4.555000e-01, float 6.179000e-01, float f0x3F4A0275, float 9.584000e-01, float 1.137200e+00, float 1.370700e+00, float 1.595100e+00, float 1.788000e+00, float 1.943400e+00, float 2.146500e+00, float 2.331100e+00, float 2.508100e+00, float 2.697700e+00, float 2.897000e+00, float 1.279000e-01, float 3.828000e-01, float 6.330000e-01, float 8.323000e-01, float 9.652000e-01, float 1.117500e+00, float 1.231900e+00, float 1.351100e+00, float 1.511500e+00, float 1.639200e+00, float 1.783500e+00, float 1.955800e+00, float 2.200800e+00, float 2.463500e+00, float 2.691000e+00, float 2.905800e+00, float 1.193000e-01, float 2.185000e-01, float 3.521000e-01, float 5.311000e-01, float 7.378000e-01, float 9.239000e-01, float 1.110500e+00, float 1.321700e+00, float 1.536200e+00, float 1.750400e+00, float 1.953600e+00, float 2.162700e+00, float 2.356000e+00, float 2.550600e+00, float 2.754800e+00, float 2.945300e+00, float 1.806000e-01, float 3.432000e-01, float 4.981000e-01, float 6.948000e-01, float f0x3F648E8A, float 1.052700e+00, float 1.246700e+00, float 1.414000e+00, float 1.632600e+00, float 1.795000e+00, float 1.993500e+00, float 2.196900e+00, float 2.351200e+00, float 2.568200e+00, float 2.744500e+00, float 2.927700e+00, float 1.846000e-01, float 3.112000e-01, float 4.568000e-01, float 5.891000e-01, float 7.317000e-01, float 8.493000e-01, float 1.020400e+00, float 1.202200e+00, float 1.368800e+00, float 1.602000e+00, float 1.842800e+00, float 2.071000e+00, float 2.272500e+00, float 2.487900e+00, float 2.705700e+00, float 2.916000e+00, float f0x3DB43958, float 2.514000e-01, float 5.332000e-01, float f0x3F3A29C7, float 8.906000e-01, float 1.135400e+00, float 1.319900e+00, float 1.494100e+00, float 1.601000e+00, float 1.715100e+00, float 1.871200e+00, float 2.064300e+00, float 2.275500e+00, float 2.537500e+00, float 2.705400e+00, float 2.889100e+00, float 1.382000e-01, float 2.833000e-01, float 4.658000e-01, float 6.897000e-01, float 9.071000e-01, float 1.071600e+00, float 1.246900e+00, float 1.414300e+00, float 1.591000e+00, float 1.794700e+00, float 1.980500e+00, float 2.158100e+00, float 2.333800e+00, float 2.521500e+00, float 2.729200e+00, float 2.921100e+00, float 1.061000e-01, float 3.494000e-01, float 6.327000e-01, float f0x3F5B645A, float f0x3F798C7E, float 1.056000e+00, float 1.152900e+00, float 1.325000e+00, float 1.603200e+00, float 1.834000e+00, float 1.971100e+00, float 2.115700e+00, float 2.301100e+00, float 2.546400e+00, float 2.807800e+00, float 2.980300e+00, float 1.603000e-01, float 2.839000e-01, float 4.307000e-01, float 5.980000e-01, float f0x3F4C49BA, float 1.039900e+00, float 1.197100e+00, float 1.352400e+00, float 1.571500e+00, float 1.783800e+00, float 1.946800e+00, float 2.149800e+00, float 2.362700e+00, float 2.551400e+00, float 2.732700e+00, float 2.914800e+00, float 1.691000e-01, float 3.117000e-01, float 4.796000e-01, float 6.895000e-01, float f0x3F5F8A09, float 1.016400e+00, float 1.191600e+00, float 1.370700e+00, float 1.538400e+00, float 1.720200e+00, float 1.885700e+00, float 2.067200e+00, float 2.248700e+00, float 2.459300e+00, float 2.678900e+00, float 2.894000e+00, float 9.650000e-02, float 1.702000e-01, float 3.191000e-01, float 5.721000e-01, float 8.100000e-01, float 1.024100e+00, float 1.227200e+00, float 1.419600e+00, float 1.609300e+00, float 1.805700e+00, float 1.988400e+00, float 2.203700e+00, float 2.392500e+00, float 2.580500e+00, float 2.757800e+00, float 2.936600e+00, float 1.950000e-01, float 3.519000e-01, float 5.272000e-01, float 6.973000e-01, float f0x3F5F8A09, float 1.065600e+00, float 1.211200e+00, float 1.395900e+00, float 1.611600e+00, float 1.782100e+00, float 1.944500e+00, float 2.159200e+00, float 2.334800e+00, float 2.514200e+00, float 2.744000e+00, float 2.929700e+00, float 1.388000e-01, float 2.557000e-01, float 4.120000e-01, float 5.727000e-01, float 7.354000e-01, float 9.196000e-01, float 1.098500e+00, float 1.280500e+00, float 1.464300e+00, float 1.653500e+00, float 1.834000e+00, float 2.054600e+00, float 2.275800e+00, float 2.477800e+00, float 2.692100e+00, float 2.912200e+00, float 1.823000e-01, float 3.336000e-01, float 4.957000e-01, float 6.771000e-01, float f0x3F5B367A, float 1.013700e+00, float 1.229900e+00, float 1.384900e+00, float 1.571800e+00, float 1.766700e+00, float 1.919300e+00, float 2.132600e+00, float 2.313500e+00, float 2.526800e+00, float 2.713300e+00, float 2.899800e+00, float 7.900000e-02, float 1.901000e-01, float 4.083000e-01, float 6.456000e-01, float 8.463000e-01, float 1.028500e+00, float 1.229700e+00, float 1.418100e+00, float 1.615900e+00, float 1.805600e+00, float 1.997100e+00, float 2.191200e+00, float 2.381600e+00, float 2.574600e+00, float 2.769200e+00, float 2.949700e+00, float 4.900000e-03, float 1.160000e-02, float 4.500000e-03, float 3.900000e-03, float -1.000000e-03, float -1.220000e-02, float -2.050000e-02, float -3.400000e-03, float -1.400000e-02, float -4.100000e-03, float 1.910000e-02, float -3.220000e-02, float 2.000000e-04, float -1.240000e-02, float -2.690000e-02, float 5.900000e-03, float 5.860000e-02, float 3.390000e-02, float -3.890000e-02, float -3.190000e-02, float f0xBC016F00, float -2.050000e-02, float -3.630000e-02, float -2.110000e-02, float 2.410000e-02, float 5.950000e-02, float 4.690000e-02, float 2.830000e-02, float 1.760000e-02, float -1.830000e-02, float -1.730000e-02, float -4.000000e-04, float 2.400000e-03, float 1.450000e-02, float 5.340000e-02, float 1.970000e-02, float -6.500000e-03, float f0xBBDB8BAC, float 1.330000e-02, float 3.580000e-02, float -1.040000e-02, float -3.860000e-02, float -1.090000e-02, float f0xBBFF9724, float 2.750000e-02, float 5.650000e-02, float 2.510000e-02, float -2.700000e-03, float -5.300000e-03, float 1.710000e-02, float f0x3C102DE0, float 4.950000e-02, float 1.410000e-02, float 3.900000e-03, float -4.450000e-02, float -4.260000e-02, float -1.840000e-02, float -2.800000e-02, float -2.230000e-02, float 3.900000e-03, float -1.710000e-02, float -6.060000e-02, float f0xBDA0F909, float -4.300000e-02, float 5.440000e-02, float 5.950000e-02, float 3.200000e-02, float -1.200000e-03, float 1.080000e-02, float 1.850000e-02, float 6.600000e-03, float 4.080000e-02, float 5.520000e-02, float -7.300000e-03, float -2.470000e-02, float -4.800000e-02, float -2.880000e-02, float 1.860000e-02, float 2.120000e-02, float -1.300000e-03, float 4.030000e-02, float 5.980000e-02, float 6.900000e-02, float 5.160000e-02, float -2.980000e-02, float -1.770000e-02, float 2.780000e-02, float 1.680000e-02, float -1.060000e-02, float 2.510000e-02, float 3.860000e-02, float 3.310000e-02, float -5.200000e-03, float 1.330000e-02, float 2.910000e-02, float -1.580000e-02, float -3.290000e-02, float -3.670000e-02, float 2.870000e-02, float 4.620000e-02, float -1.760000e-02, float 4.900000e-03, float 2.420000e-02, float -3.400000e-03, float 1.350000e-02, float 8.600000e-03, float -1.490000e-02, float 2.410000e-02, float 5.040000e-02, float 2.460000e-02, float -2.730000e-02, float -3.690000e-02, float -1.080000e-02, float -4.490000e-02, float -6.250000e-02, float -4.140000e-02, float -2.920000e-02, float -5.710000e-02, float -4.400000e-02, float f0xBC102DE0, float 9.800000e-03, float f0x3A6BEDFA, float -4.000000e-04, float 7.000000e-04, float -3.140000e-02, float -2.080000e-02, float -1.380000e-02, float -2.770000e-02, float -4.400000e-03, float 5.220000e-02, float 3.150000e-02, float -2.700000e-02, float -2.770000e-02, float -2.560000e-02, float -1.030000e-02, float -2.010000e-02, float -2.870000e-02, float -2.790000e-02, float -1.820000e-02, float 4.720000e-02, float 6.130000e-02, float 4.500000e-02, float 4.130000e-02, float 3.330000e-02, float 4.440000e-02, float 2.230000e-02, float 6.100000e-03, float 3.160000e-02, float 3.210000e-02, float 5.010000e-02, float 4.600000e-02, float 2.500000e-02, float 2.270000e-02, float 2.350000e-02, float f0x3C22339C, float 1.850000e-02, float -3.470000e-02, float -6.840000e-02, float -1.890000e-02, float 2.420000e-02, float -1.900000e-02, float -2.730000e-02, float -1.200000e-03, float -2.530000e-02, float 2.930000e-02, float -2.310000e-02, float -2.190000e-02, float -1.000000e-03, float 1.530000e-02, float 1.280000e-02, float -1.660000e-02, float -4.350000e-02, float -4.170000e-02, float -1.210000e-02, float -3.510000e-02, float -3.900000e-02, float 7.700000e-03, float -2.780000e-02, float -3.550000e-02, float 9.200000e-03, float -6.300000e-03, float 5.000000e-04, float 2.160000e-02, float 4.610000e-02, float 5.380000e-02, float 4.510000e-02, float 2.980000e-02, float -1.300000e-02, float 5.800000e-03, float 2.060000e-02, float 4.710000e-02, float 4.990000e-02, float 2.800000e-02, float 8.600000e-03, float -7.000000e-04, float -3.170000e-02, float 2.590000e-02, float 1.760000e-02, float 4.300000e-03, float 2.120000e-02, float 1.380000e-02, float 1.060000e-02, float 2.200000e-02, float -2.500000e-03, float 5.000000e-03, float 1.220000e-02, float -5.100000e-03, float -8.600000e-03, float -4.720000e-02, float -5.000000e-04, float 1.930000e-02, float 3.200000e-03, float 2.460000e-02, float 2.220000e-02, float f0x3C1374BC, float -3.200000e-02, float f0xBD9205BC, float -5.260000e-02, float -1.510000e-02, float -4.400000e-02, float -6.480000e-02, float -4.660000e-02, float -9.200000e-03, float 1.150000e-02, float -1.290000e-02, float 5.300000e-03, float -3.440000e-02, float -3.850000e-02, float 3.920000e-02, float 5.990000e-02, float 4.140000e-02, float 1.650000e-02, float -9.800000e-03, float -3.200000e-02, float -2.610000e-02, float -5.500000e-03, float -1.390000e-02, float -1.100000e-02, float 8.400000e-03, float 1.720000e-02, float -4.920000e-02, float -5.370000e-02, float -3.200000e-02, float -3.600000e-03, float 2.650000e-02, float 3.850000e-02, float 6.400000e-03, float -2.800000e-02, float -2.300000e-02, float 1.340000e-02, float 2.410000e-02, float 1.060000e-02, float 3.870000e-02, float 1.050000e-02, float 6.800000e-03, float 2.600000e-02, float 4.940000e-01, float 4.911000e-01, float 4.849000e-01, float 4.820000e-01, float 4.837000e-01, float 4.839000e-01, float 4.824000e-01, float 4.799000e-01, float 4.812000e-01, float 4.782000e-01, float 4.788000e-01, float 4.711000e-01, float 4.706000e-01, float 4.671000e-01, float 4.601000e-01, float 4.578000e-01, float 2.954000e-01, float 2.121000e-01, float 1.859000e-01, float 1.958000e-01, float 1.474000e-01, float 1.086000e-01, float 1.351000e-01, float 1.362000e-01, float 1.486000e-01, float 1.342000e-01, float 1.215000e-01, float 1.423000e-01, float 1.634000e-01, float 1.588000e-01, float 1.539000e-01, float 1.857000e-01], align 16
@ff_metasound_lsp16 = hidden local_unnamed_addr constant [1408 x float] [float 1.813000e-01, float 3.911000e-01, float 6.301000e-01, float f0x3F4D1B71, float 1.005700e+00, float 1.204100e+00, float 1.427100e+00, float 1.694300e+00, float 1.940200e+00, float 2.173300e+00, float 2.352100e+00, float 2.498900e+00, float 2.583900e+00, float 2.684600e+00, float 2.763400e+00, float 2.895000e+00, float 1.311000e-01, float 3.183000e-01, float 4.659000e-01, float 5.601000e-01, float 6.658000e-01, float 7.828000e-01, float 1.006500e+00, float 1.271700e+00, float 1.518500e+00, float 1.733900e+00, float 1.953000e+00, float 2.218900e+00, float 2.373900e+00, float 2.499100e+00, float 2.698400e+00, float 2.925600e+00, float 1.627000e-01, float 4.519000e-01, float 6.323000e-01, float 7.012000e-01, float f0x3F48E8A7, float f0x3F7AE7D5, float 1.181000e+00, float 1.322200e+00, float 1.541300e+00, float 1.812900e+00, float 1.933800e+00, float 2.080900e+00, float 2.318000e+00, float 2.518900e+00, float 2.706600e+00, float 2.951400e+00, float 1.475000e-01, float 2.447000e-01, float 4.240000e-01, float 5.669000e-01, float f0x3F4985F0, float f0x3F7BDA51, float 1.182300e+00, float 1.381400e+00, float 1.535800e+00, float 1.682000e+00, float 1.879400e+00, float 2.141900e+00, float 2.413200e+00, float 2.611200e+00, float 2.791100e+00, float 2.951100e+00, float 1.224000e-01, float 2.876000e-01, float 5.013000e-01, float f0x3F32D0E5, float 8.902000e-01, float 1.090100e+00, float 1.283500e+00, float 1.476800e+00, float 1.659600e+00, float 1.853800e+00, float 2.046700e+00, float 2.230400e+00, float 2.412400e+00, float 2.594200e+00, float 2.772900e+00, float 2.953100e+00, float 1.741000e-01, float 3.034000e-01, float 4.677000e-01, float 5.879000e-01, float f0x3F39CE07, float 9.648000e-01, float 1.141700e+00, float 1.322000e+00, float 1.508100e+00, float 1.715100e+00, float 1.921200e+00, float 2.128600e+00, float 2.320800e+00, float 2.493800e+00, float 2.676500e+00, float 2.889100e+00, float 1.657000e-01, float 3.174000e-01, float 4.907000e-01, float 6.559000e-01, float 8.295000e-01, float 1.025400e+00, float 1.207100e+00, float 1.388000e+00, float 1.573700e+00, float 1.784500e+00, float 1.902700e+00, float 2.113900e+00, float 2.332300e+00, float 2.515700e+00, float 2.732300e+00, float 2.901500e+00, float 1.592000e-01, float 2.758000e-01, float 4.417000e-01, float 6.315000e-01, float f0x3F536113, float f0x3F7CBFB1, float 1.127700e+00, float 1.283000e+00, float 1.433700e+00, float 1.631500e+00, float 1.889900e+00, float 2.135600e+00, float 2.357200e+00, float 2.563200e+00, float 2.746800e+00, float 2.942000e+00, float 1.524000e-01, float 4.325000e-01, float 5.931000e-01, float f0x3F341F21, float f0x3F450481, float 8.923000e-01, float 1.173900e+00, float 1.477300e+00, float 1.660900e+00, float 1.791100e+00, float 1.966600e+00, float 2.197200e+00, float 2.375400e+00, float 2.504500e+00, float 2.661300e+00, float 2.888200e+00, float 2.130000e-01, float 3.013000e-01, float 3.721000e-01, float 4.257000e-01, float 5.079000e-01, float f0x3F339581, float 9.815000e-01, float 1.255400e+00, float 1.464800e+00, float 1.696600e+00, float 1.913800e+00, float 2.107500e+00, float 2.331800e+00, float 2.529200e+00, float 2.745300e+00, float 2.934700e+00, float 1.142000e-01, float 3.748000e-01, float 6.205000e-01, float 7.642000e-01, float f0x3F4FE5C9, float 9.022000e-01, float 9.843000e-01, float 1.155800e+00, float 1.446700e+00, float 1.742200e+00, float 1.957400e+00, float 2.130200e+00, float 2.381200e+00, float 2.589800e+00, float 2.772000e+00, float 2.958300e+00, float 1.255000e-01, float 2.339000e-01, float 3.570000e-01, float 5.323000e-01, float 7.458000e-01, float 1.000300e+00, float 1.172900e+00, float 1.356700e+00, float 1.521700e+00, float 1.697700e+00, float 1.892400e+00, float 2.094200e+00, float 2.314500e+00, float 2.540800e+00, float 2.755300e+00, float 2.933700e+00, float 1.316000e-01, float 2.289000e-01, float 4.327000e-01, float f0x3F2A92A3, float f0x3F59D495, float 9.994000e-01, float 1.169700e+00, float 1.380400e+00, float 1.560900e+00, float 1.690300e+00, float 1.857200e+00, float 2.101900e+00, float 2.368700e+00, float 2.578900e+00, float 2.771500e+00, float 2.947200e+00, float 1.502000e-01, float 2.546000e-01, float 3.883000e-01, float 5.333000e-01, float 6.976000e-01, float f0x3F6A92A3, float 1.107100e+00, float 1.336400e+00, float 1.542000e+00, float 1.752500e+00, float 1.894800e+00, float 2.083900e+00, float 2.281900e+00, float 2.465100e+00, float 2.687500e+00, float 2.898700e+00, float 1.593000e-01, float 3.014000e-01, float 4.573000e-01, float f0x3F22A993, float f0x3F50D1B7, float f0x3F7B020C, float 1.178300e+00, float 1.374700e+00, float 1.567800e+00, float 1.732600e+00, float 1.928600e+00, float 2.134000e+00, float 2.325300e+00, float 2.528000e+00, float 2.718000e+00, float 2.929800e+00, float 1.811000e-01, float 3.167000e-01, float 4.655000e-01, float 6.507000e-01, float 8.198000e-01, float 1.007500e+00, float 1.189200e+00, float 1.374300e+00, float 1.522700e+00, float 1.709000e+00, float 1.884900e+00, float 2.074300e+00, float 2.275000e+00, float 2.483000e+00, float 2.689600e+00, float 2.895300e+00, float 1.846000e-01, float 3.577000e-01, float 5.315000e-01, float 7.290000e-01, float f0x3F6AE7D5, float 1.101600e+00, float 1.265400e+00, float 1.452500e+00, float 1.631500e+00, float 1.826800e+00, float 2.023800e+00, float 2.193400e+00, float 2.386800e+00, float 2.575300e+00, float 2.768200e+00, float 2.946900e+00, float 8.760000e-02, float 1.439000e-01, float 2.048000e-01, float 3.654000e-01, float f0x3F20CB29, float f0x3F62A305, float 1.090700e+00, float 1.299200e+00, float 1.522700e+00, float 1.737300e+00, float 1.939500e+00, float 2.141900e+00, float 2.348800e+00, float 2.548600e+00, float 2.746600e+00, float 2.934800e+00, float 1.391000e-01, float 4.170000e-01, float f0x3F27F62B, float 7.953000e-01, float 8.734000e-01, float 9.986000e-01, float 1.187000e+00, float 1.452000e+00, float 1.604200e+00, float 1.791000e+00, float 2.013500e+00, float 2.187000e+00, float 2.335800e+00, float 2.506600e+00, float 2.740900e+00, float 2.995500e+00, float f0x3DA4A8C1, float 1.355000e-01, float 2.599000e-01, float 4.998000e-01, float 7.408000e-01, float f0x3F7288CE, float 1.127600e+00, float 1.342800e+00, float 1.555600e+00, float 1.771200e+00, float 1.969900e+00, float 2.153500e+00, float 2.360500e+00, float 2.554800e+00, float 2.748900e+00, float 2.932500e+00, float 1.304000e-01, float 3.087000e-01, float 4.979000e-01, float f0x3F288CE7, float 8.414000e-01, float 1.032900e+00, float 1.224400e+00, float 1.418900e+00, float 1.611800e+00, float 1.820000e+00, float 1.998500e+00, float 2.189300e+00, float 2.391500e+00, float 2.579400e+00, float 2.764700e+00, float 2.934400e+00, float 1.895000e-01, float 2.849000e-01, float 3.705000e-01, float 4.126000e-01, float 6.265000e-01, float 9.207000e-01, float 1.177400e+00, float 1.376200e+00, float 1.575700e+00, float 1.772800e+00, float 1.956800e+00, float 2.166200e+00, float 2.361500e+00, float 2.557500e+00, float 2.756100e+00, float 2.941600e+00, float 1.800000e-01, float 3.078000e-01, float 4.805000e-01, float 6.796000e-01, float 8.503000e-01, float 1.004600e+00, float 1.170300e+00, float 1.326900e+00, float 1.486200e+00, float 1.650200e+00, float 1.845400e+00, float 2.087300e+00, float 2.317500e+00, float 2.535600e+00, float 2.751600e+00, float 2.946900e+00, float 1.950000e-01, float 3.233000e-01, float 4.568000e-01, float 5.940000e-01, float f0x3F424745, float f0x3F7F6FD2, float 1.170100e+00, float 1.338300e+00, float 1.501700e+00, float 1.656500e+00, float 1.824300e+00, float 2.060500e+00, float 2.293800e+00, float 2.514700e+00, float 2.741900e+00, float 2.939600e+00, float 2.531000e-01, float 4.391000e-01, float 5.790000e-01, float 7.170000e-01, float 8.998000e-01, float 1.143000e+00, float 1.357700e+00, float 1.532600e+00, float 1.632800e+00, float 1.762700e+00, float 1.972600e+00, float 2.176200e+00, float 2.356300e+00, float 2.547800e+00, float 2.738500e+00, float 2.906700e+00, float 1.805000e-01, float 2.788000e-01, float 3.591000e-01, float 3.881000e-01, float 5.441000e-01, float f0x3F4E353F, float 1.076600e+00, float 1.316500e+00, float 1.531600e+00, float 1.750800e+00, float 1.947700e+00, float 2.137400e+00, float 2.343800e+00, float 2.548400e+00, float 2.750100e+00, float 2.941000e+00, float 2.044000e-01, float 3.671000e-01, float 5.396000e-01, float 7.042000e-01, float 8.582000e-01, float f0x3F7BAC71, float 1.126100e+00, float 1.319400e+00, float 1.476900e+00, float 1.697900e+00, float 1.871700e+00, float 2.046300e+00, float 2.262000e+00, float 2.473900e+00, float 2.705400e+00, float 2.920800e+00, float 1.048000e-01, float 2.175000e-01, float 4.206000e-01, float 5.923000e-01, float 7.483000e-01, float f0x3F70A3D7, float 1.135600e+00, float 1.379900e+00, float 1.595800e+00, float 1.732000e+00, float 1.898400e+00, float 2.129600e+00, float 2.359400e+00, float 2.549200e+00, float 2.738700e+00, float 2.930500e+00, float 8.420000e-02, float 1.729000e-01, float 3.951000e-01, float f0x3F250B0F, float f0x3F5E69AD, float 1.060500e+00, float 1.247200e+00, float 1.433000e+00, float 1.623200e+00, float 1.814400e+00, float 2.021600e+00, float 2.191500e+00, float 2.387800e+00, float 2.576300e+00, float 2.768500e+00, float 2.946400e+00, float 1.461000e-01, float 2.593000e-01, float 4.105000e-01, float 5.677000e-01, float 7.328000e-01, float 8.919000e-01, float 1.048400e+00, float 1.230200e+00, float 1.438600e+00, float 1.663500e+00, float 1.887300e+00, float 2.102400e+00, float 2.311600e+00, float 2.526800e+00, float 2.727300e+00, float 2.926900e+00, float 1.503000e-01, float 3.108000e-01, float 4.756000e-01, float f0x3F2C5048, float 8.600000e-01, float 1.023300e+00, float 1.211500e+00, float 1.397100e+00, float 1.591500e+00, float 1.789200e+00, float 1.951700e+00, float 2.160300e+00, float 2.348700e+00, float 2.546000e+00, float 2.730800e+00, float 2.899800e+00, float 2.163000e-01, float 3.669000e-01, float 5.125000e-01, float 6.709000e-01, float 8.143000e-01, float f0x3F7E353F, float 1.209500e+00, float 1.420500e+00, float 1.617600e+00, float 1.711200e+00, float 1.839800e+00, float 2.089600e+00, float 2.351300e+00, float 2.529000e+00, float 2.666700e+00, float 2.896000e+00, float 2.133000e-01, float 4.382000e-01, float 6.287000e-01, float f0x3F5EC56D, float 1.108800e+00, float 1.374900e+00, float 1.606200e+00, float 1.744600e+00, float 1.833300e+00, float 1.912200e+00, float 1.961400e+00, float 2.066900e+00, float 2.178900e+00, float 2.344900e+00, float 2.603800e+00, float 2.884900e+00, float 1.598000e-01, float 2.719000e-01, float 3.877000e-01, float 4.815000e-01, float 5.926000e-01, float 7.795000e-01, float 1.044900e+00, float 1.304500e+00, float 1.521000e+00, float 1.739100e+00, float 1.946200e+00, float 2.139700e+00, float 2.355300e+00, float 2.545800e+00, float 2.754000e+00, float 2.939200e+00, float 2.918000e-01, float 5.607000e-01, float 6.801000e-01, float 7.404000e-01, float f0x3F541893, float f0x3F716F00, float 1.157900e+00, float 1.408000e+00, float 1.633200e+00, float 1.847200e+00, float 1.973800e+00, float 2.077100e+00, float 2.289000e+00, float 2.517800e+00, float 2.744500e+00, float 2.983000e+00, float 1.664000e-01, float 2.842000e-01, float 3.965000e-01, float 5.463000e-01, float 8.162000e-01, float 1.034600e+00, float 1.184900e+00, float 1.344600e+00, float 1.512200e+00, float 1.756300e+00, float 1.996000e+00, float 2.200200e+00, float 2.379600e+00, float 2.568900e+00, float 2.771200e+00, float 2.955000e+00, float f0x3DBA92A3, float 2.397000e-01, float 5.052000e-01, float 7.868000e-01, float 1.029900e+00, float 1.131100e+00, float 1.224400e+00, float 1.333300e+00, float 1.439500e+00, float 1.679000e+00, float 1.936900e+00, float 2.171700e+00, float 2.368900e+00, float 2.553800e+00, float 2.734000e+00, float 2.932600e+00, float 1.647000e-01, float 2.931000e-01, float 3.836000e-01, float 4.978000e-01, float 6.255000e-01, float 9.243000e-01, float 1.133900e+00, float 1.300100e+00, float 1.526900e+00, float 1.801000e+00, float 1.971500e+00, float 2.141900e+00, float 2.378400e+00, float 2.550300e+00, float 2.671900e+00, float 2.874500e+00, float 2.440000e-01, float 3.802000e-01, float 4.756000e-01, float 6.613000e-01, float f0x3F5CD9E8, float 1.029200e+00, float 1.229100e+00, float 1.406000e+00, float 1.519800e+00, float 1.735400e+00, float 1.904400e+00, float 2.101000e+00, float 2.314700e+00, float 2.499600e+00, float 2.717100e+00, float 2.904100e+00, float 1.590000e-01, float 2.876000e-01, float 4.572000e-01, float 5.996000e-01, float 7.713000e-01, float 9.490000e-01, float 1.120500e+00, float 1.281500e+00, float 1.451600e+00, float 1.638500e+00, float 1.817900e+00, float 2.045700e+00, float 2.275900e+00, float 2.478500e+00, float 2.686100e+00, float 2.908000e+00, float 2.297000e-01, float 4.309000e-01, float 5.712000e-01, float 6.717000e-01, float f0x3F505532, float 1.046300e+00, float 1.249200e+00, float 1.456000e+00, float 1.679600e+00, float 1.845800e+00, float 1.964200e+00, float 2.145200e+00, float 2.363600e+00, float 2.539500e+00, float 2.745600e+00, float 2.949500e+00, float 2.975000e-01, float 4.678000e-01, float 4.996000e-01, float 5.809000e-01, float 6.279000e-01, float f0x3F303AFB, float f0x3F5C5048, float 1.138600e+00, float 1.441200e+00, float 1.687600e+00, float 1.876000e+00, float 2.093200e+00, float 2.317800e+00, float 2.516600e+00, float 2.734500e+00, float 2.928000e+00, float 1.278000e-01, float 3.737000e-01, float 6.004000e-01, float 7.069000e-01, float 8.147000e-01, float 1.018000e+00, float 1.258100e+00, float 1.381200e+00, float 1.485500e+00, float 1.726800e+00, float 1.997000e+00, float 2.125800e+00, float 2.293600e+00, float 2.570200e+00, float 2.756300e+00, float 2.898300e+00, float 1.314000e-01, float 2.508000e-01, float 3.999000e-01, float 5.680000e-01, float f0x3F3E0DED, float f0x3F6FCB92, float 1.128600e+00, float 1.317500e+00, float 1.533600e+00, float 1.740400e+00, float 1.931700e+00, float 2.140400e+00, float 2.351400e+00, float 2.556200e+00, float 2.751000e+00, float 2.940200e+00, float 1.043000e-01, float 2.367000e-01, float 4.293000e-01, float 6.376000e-01, float 8.160000e-01, float 9.836000e-01, float 1.177900e+00, float 1.385000e+00, float 1.583500e+00, float 1.787500e+00, float 1.976500e+00, float 2.159300e+00, float 2.365400e+00, float 2.557700e+00, float 2.746500e+00, float 2.939800e+00, float 1.529000e-01, float 2.515000e-01, float 3.454000e-01, float 4.374000e-01, float 7.011000e-01, float 9.015000e-01, float 1.074400e+00, float 1.353200e+00, float 1.569900e+00, float 1.754500e+00, float 2.002100e+00, float 2.125900e+00, float 2.227800e+00, float 2.454600e+00, float 2.726400e+00, float 2.942500e+00, float 1.429000e-01, float 2.808000e-01, float 4.395000e-01, float 6.334000e-01, float 8.069000e-01, float f0x3F7872B0, float 1.152000e+00, float 1.325000e+00, float 1.510900e+00, float 1.728500e+00, float 1.935600e+00, float 2.146900e+00, float 2.347900e+00, float 2.555400e+00, float 2.751200e+00, float 2.934800e+00, float 1.625000e-01, float 3.022000e-01, float 4.756000e-01, float 6.315000e-01, float 8.032000e-01, float f0x3F7E0DED, float 1.159600e+00, float 1.320400e+00, float 1.499400e+00, float 1.692900e+00, float 1.895500e+00, float 2.109000e+00, float 2.302500e+00, float 2.501800e+00, float 2.690800e+00, float 2.898000e+00, float 1.692000e-01, float 3.427000e-01, float 5.228000e-01, float 7.756000e-01, float 9.688000e-01, float 1.095000e+00, float 1.305600e+00, float 1.436000e+00, float 1.567500e+00, float 1.804900e+00, float 1.937600e+00, float 2.115100e+00, float 2.340700e+00, float 2.501200e+00, float 2.719200e+00, float 2.925800e+00, float 4.740000e-02, float 1.251000e-01, float 1.939000e-01, float 3.841000e-01, float 6.501000e-01, float f0x3F6C5048, float 1.115300e+00, float 1.324000e+00, float 1.547800e+00, float 1.759900e+00, float 1.965100e+00, float 2.151000e+00, float 2.364500e+00, float 2.555200e+00, float 2.754200e+00, float 2.939300e+00, float 2.196000e-01, float 4.656000e-01, float 7.492000e-01, float 9.922000e-01, float 1.167800e+00, float 1.248900e+00, float 1.311200e+00, float 1.365700e+00, float 1.422300e+00, float 1.530200e+00, float 1.721200e+00, float 1.999600e+00, float 2.252300e+00, float 2.484400e+00, float 2.703600e+00, float 2.914500e+00, float 1.128000e-01, float 2.368000e-01, float 3.704000e-01, float 5.476000e-01, float 7.723000e-01, float 9.968000e-01, float 1.193000e+00, float 1.399200e+00, float 1.601300e+00, float 1.795700e+00, float 1.988800e+00, float 2.185700e+00, float 2.382500e+00, float 2.570500e+00, float 2.761600e+00, float 2.943400e+00, float 1.341000e-01, float 2.768000e-01, float 4.510000e-01, float 6.359000e-01, float f0x3F554C98, float 1.033500e+00, float 1.200400e+00, float 1.395200e+00, float 1.576200e+00, float 1.768100e+00, float 1.981500e+00, float 2.173500e+00, float 2.365700e+00, float 2.555200e+00, float 2.751400e+00, float 2.949800e+00, float 1.247000e-01, float 2.559000e-01, float 3.516000e-01, float 4.726000e-01, float 6.861000e-01, float 9.483000e-01, float 1.185200e+00, float 1.385800e+00, float 1.585100e+00, float 1.781500e+00, float 1.977800e+00, float 2.173700e+00, float 2.372900e+00, float 2.566400e+00, float 2.762000e+00, float 2.942900e+00, float 1.988000e-01, float 3.320000e-01, float 4.777000e-01, float 6.737000e-01, float 8.425000e-01, float 1.026500e+00, float 1.169400e+00, float 1.365500e+00, float 1.546300e+00, float 1.713500e+00, float 1.938500e+00, float 2.165000e+00, float 2.352900e+00, float 2.536700e+00, float 2.754500e+00, float 2.958500e+00, float 1.376000e-01, float 2.620000e-01, float 4.273000e-01, float 6.169000e-01, float f0x3F46872B, float 9.441000e-01, float 1.116900e+00, float 1.315700e+00, float 1.517900e+00, float 1.702000e+00, float 1.893100e+00, float 2.105900e+00, float 2.311200e+00, float 2.513600e+00, float 2.716900e+00, float 2.919800e+00, float 2.112000e-01, float 4.385000e-01, float 6.091000e-01, float f0x3F430553, float f0x3F748E8A, float 1.154300e+00, float 1.344500e+00, float 1.539600e+00, float 1.715300e+00, float 1.919200e+00, float 2.126300e+00, float 2.359300e+00, float 2.595800e+00, float 2.817100e+00, float 2.939400e+00, float 3.040900e+00, float 1.347000e-01, float 2.099000e-01, float 2.646000e-01, float 3.453000e-01, float 5.266000e-01, float f0x3F497247, float 1.051300e+00, float 1.279500e+00, float 1.488000e+00, float 1.718100e+00, float 1.929400e+00, float 2.133200e+00, float 2.336200e+00, float 2.544200e+00, float 2.743300e+00, float 2.936200e+00, float 3.141000e-01, float 5.935000e-01, float f0x3F406F69, float 8.313000e-01, float 8.568000e-01, float 9.570000e-01, float 1.025000e+00, float 1.127500e+00, float 1.342200e+00, float 1.630300e+00, float 1.857700e+00, float 2.070500e+00, float 2.295700e+00, float 2.509500e+00, float 2.724400e+00, float 2.926200e+00, float f0x3DC50481, float 2.116000e-01, float 3.961000e-01, float 5.641000e-01, float f0x3F3652BD, float 8.883000e-01, float 1.102300e+00, float 1.348100e+00, float 1.562300e+00, float 1.755400e+00, float 1.961800e+00, float 2.167500e+00, float 2.370600e+00, float 2.555600e+00, float 2.743000e+00, float 2.933700e+00, float 8.980000e-02, float 1.510000e-01, float 3.060000e-01, float 5.820000e-01, float f0x3F527525, float 1.038800e+00, float 1.226100e+00, float 1.428900e+00, float 1.605400e+00, float 1.810300e+00, float 1.994100e+00, float 2.184400e+00, float 2.374200e+00, float 2.571100e+00, float 2.763200e+00, float 2.947400e+00, float 1.326000e-01, float 2.316000e-01, float 3.761000e-01, float 5.177000e-01, float 6.782000e-01, float 8.761000e-01, float 1.095200e+00, float 1.317500e+00, float 1.507800e+00, float 1.703400e+00, float 1.905100e+00, float 2.124500e+00, float 2.342400e+00, float 2.548400e+00, float 2.744400e+00, float 2.938900e+00, float 1.740000e-01, float 3.293000e-01, float 5.174000e-01, float 6.824000e-01, float f0x3F56E2EB, float 1.037200e+00, float 1.204600e+00, float 1.372300e+00, float 1.565600e+00, float 1.744400e+00, float 1.944200e+00, float 2.138600e+00, float 2.313900e+00, float 2.496000e+00, float 2.707100e+00, float 2.929700e+00, float 2.304000e-01, float 3.775000e-01, float 4.865000e-01, float 6.182000e-01, float 7.842000e-01, float 9.208000e-01, float 1.115100e+00, float 1.284300e+00, float 1.464100e+00, float 1.698800e+00, float 1.920900e+00, float 2.126000e+00, float 2.309900e+00, float 2.522900e+00, float 2.741400e+00, float 2.927600e+00, float 9.400000e-03, float 2.610000e-02, float -3.700000e-03, float 4.100000e-03, float -9.200000e-03, float -4.400000e-03, float -2.320000e-02, float -7.300000e-03, float -4.700000e-03, float -2.100000e-03, float 2.500000e-02, float -5.800000e-02, float -1.400000e-02, float -3.420000e-02, float -5.860000e-02, float 2.000000e-03, float 4.490000e-02, float 1.550000e-02, float -5.230000e-02, float -2.790000e-02, float 2.990000e-02, float -1.830000e-02, float -7.360000e-02, float -6.390000e-02, float -1.700000e-03, float 3.360000e-02, float 2.090000e-02, float 4.600000e-03, float 7.700000e-03, float -1.480000e-02, float -1.140000e-02, float -1.200000e-02, float 1.150000e-02, float -5.000000e-03, float 4.450000e-02, float 4.800000e-03, float 1.880000e-02, float -1.370000e-02, float -8.000000e-03, float 2.390000e-02, float -1.840000e-02, float -5.240000e-02, float -1.950000e-02, float -1.260000e-02, float 2.840000e-02, float f0x3D816F00, float 1.410000e-02, float -9.300000e-03, float -9.600000e-03, float 1.960000e-02, float 2.300000e-02, float 3.790000e-02, float 3.080000e-02, float 2.370000e-02, float -2.240000e-02, float -6.000000e-02, float -7.550000e-02, float -1.074000e-01, float -9.880000e-02, float -6.060000e-02, float -1.038000e-01, float -1.552000e-01, float -1.480000e-01, float -6.720000e-02, float 5.040000e-02, float 6.760000e-02, float 3.360000e-02, float -4.200000e-03, float 7.290000e-02, float 1.013000e-01, float 8.680000e-02, float 8.460000e-02, float f0x3DC36113, float 5.150000e-02, float -6.600000e-03, float -8.510000e-02, float -4.850000e-02, float 2.940000e-02, float 3.950000e-02, float 8.700000e-03, float f0x3BFF9724, float 4.460000e-02, float 8.810000e-02, float 6.720000e-02, float -3.840000e-02, float -2.500000e-03, float 4.150000e-02, float 3.530000e-02, float 8.000000e-03, float 5.200000e-03, float 1.900000e-02, float 1.820000e-02, float 6.900000e-03, float 1.680000e-02, float 3.740000e-02, float 3.700000e-03, float -2.920000e-02, float -4.290000e-02, float 3.020000e-02, float 6.810000e-02, float -2.330000e-02, float -2.380000e-02, float -3.000000e-04, float -4.300000e-03, float 5.400000e-03, float -2.900000e-03, float -1.490000e-02, float 6.420000e-02, float f0x3D7EC56D, float 3.410000e-02, float -2.320000e-02, float -4.610000e-02, float -8.200000e-03, float -4.690000e-02, float -6.180000e-02, float -3.260000e-02, float -4.520000e-02, float -6.490000e-02, float -5.970000e-02, float -3.980000e-02, float -3.180000e-02, float -1.160000e-02, float 1.100000e-03, float f0x3A6BEDFA, float -3.840000e-02, float -3.840000e-02, float -1.560000e-02, float -2.600000e-02, float -7.000000e-04, float 4.730000e-02, float 1.110000e-02, float -3.580000e-02, float -4.840000e-02, float -2.040000e-02, float -2.900000e-03, float f0xBC1374BC, float -2.850000e-02, float -4.950000e-02, float -3.760000e-02, float 9.170000e-02, float 1.192000e-01, float 1.026000e-01, float 7.450000e-02, float 3.970000e-02, float 4.630000e-02, float 2.530000e-02, float 2.500000e-03, float 4.650000e-02, float f0x3C23D70A, float 4.880000e-02, float 4.160000e-02, float 2.230000e-02, float 2.630000e-02, float 7.200000e-03, float -5.300000e-03, float 5.950000e-02, float 6.000000e-03, float -5.180000e-02, float -3.160000e-02, float -4.300000e-03, float -1.330000e-02, float -2.330000e-02, float -7.500000e-03, float -2.510000e-02, float 2.770000e-02, float f0xBBDB8BAC, float -1.360000e-02, float -4.000000e-04, float 2.350000e-02, float 1.120000e-02, float -1.820000e-02, float -3.240000e-02, float -2.100000e-02, float -3.500000e-03, float -3.950000e-02, float -3.840000e-02, float 5.000000e-04, float -1.500000e-02, float -3.560000e-02, float 1.270000e-02, float -3.300000e-03, float -3.400000e-03, float 2.050000e-02, float 7.470000e-02, float 1.138000e-01, float 1.015000e-01, float 9.950000e-02, float -1.610000e-02, float -4.500000e-03, float 1.290000e-02, float 4.720000e-02, float 5.750000e-02, float 2.220000e-02, float 9.100000e-03, float 3.700000e-03, float -4.710000e-02, float 3.710000e-02, float 1.320000e-02, float 2.080000e-02, float 2.470000e-02, float 1.170000e-02, float 1.640000e-02, float 2.250000e-02, float 1.240000e-02, float -2.300000e-03, float f0x3C102DE0, float -4.600000e-03, float 4.700000e-03, float -3.930000e-02, float 1.800000e-03, float 1.480000e-02, float 2.000000e-03, float 4.400000e-03, float 1.650000e-02, float 2.290000e-02, float -2.080000e-02, float -4.770000e-02, float -3.100000e-02, float -1.640000e-02, float -3.900000e-02, float -7.640000e-02, float -5.250000e-02, float -9.400000e-03, float 7.500000e-03, float -1.020000e-02, float -4.500000e-03, float -5.040000e-02, float -7.090000e-02, float f0x3DA85879, float 7.100000e-02, float 4.260000e-02, float 1.400000e-03, float -3.710000e-02, float -4.000000e-02, float -1.570000e-02, float -1.550000e-02, float -1.730000e-02, float -1.380000e-02, float -1.500000e-03, float 1.340000e-02, float -4.180000e-02, float -6.820000e-02, float -2.560000e-02, float 5.000000e-03, float 3.600000e-02, float 3.540000e-02, float 7.400000e-03, float -3.960000e-02, float -2.350000e-02, float 2.840000e-02, float 4.940000e-02, float 1.530000e-02, float 4.480000e-02, float 2.500000e-03, float -6.100000e-03, float 2.520000e-02, float 1.000000e-01, float 2.260000e-01, float 2.158000e-01, float 2.116000e-01, float 2.198000e-01, float 2.055000e-01, float 2.110000e-01, float 1.873000e-01, float 1.907000e-01, float 2.071000e-01, float 2.164000e-01, float 2.009000e-01, float 2.059000e-01, float 2.124000e-01, float 2.141000e-01, float 2.093000e-01, float f0x3DB33333, float f0x3DC8E8A7, float 1.177000e-01, float 1.071000e-01, float 1.033000e-01, float 1.248000e-01, float 1.048000e-01, float 1.238000e-01, float 1.166000e-01, float 1.008000e-01, float 1.062000e-01, float 9.920000e-02, float f0x3DCB923A, float 1.067000e-01, float f0x3DCC985F, float 1.187000e-01, float 7.500000e-02, float 7.940000e-02, float 8.280000e-02, float 8.540000e-02, float 8.590000e-02, float f0x3DA40B78, float 8.910000e-02, float 9.330000e-02, float 9.690000e-02, float 9.200000e-02, float 9.150000e-02, float f0x3DB089A0, float 8.680000e-02, float 8.910000e-02, float 8.420000e-02, float 8.240000e-02, float 6.250000e-02, float 9.300000e-02, float 8.150000e-02, float f0x3DAEB1C4, float 8.980000e-02, float 8.280000e-02, float f0x3DA85879, float f0x3DBA5E35, float 8.730000e-02, float 9.060000e-02, float 8.560000e-02, float f0x3DAC0831, float f0x3D9E83E4, float 7.850000e-02, float 6.840000e-02, float f0x3D919CE0, float 3.319000e-01, float 4.219000e-01, float 4.588000e-01, float 4.090000e-01, float 4.092000e-01, float 4.014000e-01, float 3.548000e-01, float 3.353000e-01, float 3.708000e-01, float 3.352000e-01, float 3.720000e-01, float 3.538000e-01, float 4.084000e-01, float 4.289000e-01, float 4.060000e-01, float 4.210000e-01, float 5.880000e-02, float 2.090000e-02, float -8.200000e-03, float -1.150000e-02, float -3.430000e-02, float -6.210000e-02, float -5.410000e-02, float -3.460000e-02, float -3.460000e-02, float -3.660000e-02, float -2.200000e-02, float -2.650000e-02, float -1.020000e-02, float 3.740000e-02, float 3.060000e-02, float 4.040000e-02, float 3.060000e-02, float f0x3C1374BC, float -5.400000e-03, float 3.330000e-02, float 4.700000e-03, float 2.380000e-02, float 1.410000e-02, float 1.650000e-02, float 3.060000e-02, float 4.200000e-02, float 1.590000e-02, float 1.240000e-02, float 4.140000e-02, float 1.580000e-02, float -2.370000e-02, float 1.410000e-02, float f0x3D9CAC08, float 5.700000e-03, float -2.600000e-02, float -4.260000e-02, float -3.950000e-02, float -1.260000e-02, float -5.790000e-02, float -4.170000e-02, float -4.290000e-02, float -6.150000e-02, float f0xBDB6E2EB, float -6.180000e-02, float -3.840000e-02, float -1.340000e-02, float -2.320000e-02, float -2.380000e-02], align 16
@ff_metasound_lsp22 = hidden local_unnamed_addr constant [1312 x float] [float 6.640000e-02, float 1.875000e-01, float 4.300000e-01, float 6.730000e-01, float f0x3F6119CE, float 1.064000e+00, float 1.256300e+00, float 1.443300e+00, float 1.639400e+00, float 1.817600e+00, float 2.002900e+00, float 2.192100e+00, float 2.379600e+00, float 2.567100e+00, float 2.759500e+00, float 2.953600e+00, float 2.128000e-01, float 4.052000e-01, float 5.311000e-01, float f0x3F23F141, float 7.875000e-01, float f0x3F60A3D7, float 1.097400e+00, float 1.326100e+00, float 1.556300e+00, float 1.679000e+00, float 1.833900e+00, float 2.119500e+00, float 2.322600e+00, float 2.460900e+00, float 2.644000e+00, float 2.894700e+00, float 2.024000e-01, float 3.362000e-01, float 4.834000e-01, float f0x3F2DAB9F, float 9.088000e-01, float 1.085000e+00, float 1.218800e+00, float 1.405400e+00, float 1.610200e+00, float 1.776700e+00, float 1.967900e+00, float 2.143600e+00, float 2.344500e+00, float 2.546700e+00, float 2.742900e+00, float 2.932000e+00, float 1.181000e-01, float 2.279000e-01, float 4.413000e-01, float 6.114000e-01, float 7.710000e-01, float 9.427000e-01, float 1.114200e+00, float 1.270700e+00, float 1.489200e+00, float 1.741600e+00, float 1.952600e+00, float 2.146600e+00, float 2.362900e+00, float 2.544500e+00, float 2.729300e+00, float 2.920500e+00, float 1.155000e-01, float 2.720000e-01, float 4.886000e-01, float 6.812000e-01, float f0x3F5C01A3, float 1.042200e+00, float 1.231500e+00, float 1.411600e+00, float 1.613700e+00, float 1.802000e+00, float 1.975800e+00, float 2.174300e+00, float 2.360200e+00, float 2.556800e+00, float 2.747200e+00, float 2.937400e+00, float 1.110000e-01, float 3.312000e-01, float 4.735000e-01, float 5.612000e-01, float f0x3F36809D, float 8.146000e-01, float 1.023300e+00, float 1.315500e+00, float 1.576500e+00, float 1.774600e+00, float 1.957400e+00, float 2.141600e+00, float 2.322000e+00, float 2.538400e+00, float 2.733400e+00, float 2.931800e+00, float 1.656000e-01, float 3.350000e-01, float 4.215000e-01, float 5.609000e-01, float f0x3F2D07C8, float 8.503000e-01, float 1.140500e+00, float 1.409400e+00, float 1.605700e+00, float 1.686000e+00, float 1.763900e+00, float 2.003100e+00, float 2.268000e+00, float 2.507600e+00, float 2.726300e+00, float 2.936800e+00, float 1.466000e-01, float 3.638000e-01, float 4.587000e-01, float 5.674000e-01, float f0x3F3CF41F, float 8.669000e-01, float f0x3F763F14, float 1.165800e+00, float 1.466700e+00, float 1.744000e+00, float 1.933500e+00, float 2.101800e+00, float 2.302200e+00, float 2.528100e+00, float 2.735900e+00, float 2.926100e+00, float 1.061000e-01, float 2.566000e-01, float 4.739000e-01, float 6.751000e-01, float 8.711000e-01, float 1.070400e+00, float 1.272000e+00, float 1.465500e+00, float 1.660500e+00, float 1.849400e+00, float 2.029000e+00, float 2.219700e+00, float 2.400800e+00, float 2.591200e+00, float 2.777200e+00, float 2.951300e+00, float 1.116000e-01, float 2.364000e-01, float 3.971000e-01, float 6.316000e-01, float 8.583000e-01, float 1.033500e+00, float 1.168600e+00, float 1.330200e+00, float 1.561200e+00, float 1.787700e+00, float 1.982900e+00, float 2.205200e+00, float 2.359600e+00, float 2.546000e+00, float 2.734100e+00, float 2.929000e+00, float 2.661000e-01, float 4.186000e-01, float 5.126000e-01, float 6.477000e-01, float f0x3F61BDA5, float 1.104500e+00, float 1.285200e+00, float 1.412800e+00, float 1.585100e+00, float 1.759300e+00, float 1.939900e+00, float 2.175700e+00, float 2.368400e+00, float 2.513600e+00, float 2.692700e+00, float 2.906400e+00, float 1.495000e-01, float 2.749000e-01, float 4.391000e-01, float 6.304000e-01, float 8.239000e-01, float 1.018100e+00, float 1.199500e+00, float 1.375900e+00, float 1.566900e+00, float 1.772200e+00, float 1.967100e+00, float 2.163500e+00, float 2.358600e+00, float 2.552800e+00, float 2.744500e+00, float 2.931100e+00, float 9.120000e-02, float 1.759000e-01, float 3.066000e-01, float 5.660000e-01, float f0x3F4CED91, float f0x3F74F0D8, float 1.183200e+00, float 1.450400e+00, float 1.625900e+00, float 1.794800e+00, float 2.011300e+00, float 2.200200e+00, float 2.365400e+00, float 2.558300e+00, float 2.792900e+00, float 2.973500e+00, float 1.353000e-01, float 2.747000e-01, float 4.078000e-01, float 5.977000e-01, float f0x3F440B78, float 9.124000e-01, float 1.108100e+00, float 1.363000e+00, float 1.587500e+00, float 1.784700e+00, float 1.932300e+00, float 2.118100e+00, float 2.332100e+00, float 2.504600e+00, float 2.718300e+00, float 2.922500e+00, float 1.938000e-01, float 4.063000e-01, float 4.982000e-01, float 6.002000e-01, float 7.702000e-01, float 9.071000e-01, float 1.163100e+00, float 1.388500e+00, float 1.604300e+00, float 1.811800e+00, float 1.930600e+00, float 2.089300e+00, float 2.272400e+00, float 2.460900e+00, float 2.628300e+00, float 2.880200e+00, float 1.857000e-01, float 3.351000e-01, float 4.381000e-01, float f0x3F1C2F83, float f0x3F418FC5, float 8.555000e-01, float 1.038400e+00, float 1.317100e+00, float 1.566700e+00, float 1.690400e+00, float 1.755200e+00, float 1.968900e+00, float 2.259700e+00, float 2.526000e+00, float 2.727200e+00, float 2.933700e+00, float 1.037000e-01, float 2.159000e-01, float 4.188000e-01, float f0x3F1E0DED, float f0x3F4DB22D, float 1.028500e+00, float 1.225600e+00, float 1.423000e+00, float 1.640000e+00, float 1.832200e+00, float 2.014400e+00, float 2.198800e+00, float 2.381000e+00, float 2.568200e+00, float 2.761300e+00, float 2.943800e+00, float 1.625000e-01, float 2.776000e-01, float 4.225000e-01, float 6.001000e-01, float f0x3F49B3D0, float f0x3F68A090, float 1.080100e+00, float 1.275900e+00, float 1.489900e+00, float 1.744800e+00, float 1.991100e+00, float 2.177000e+00, float 2.372300e+00, float 2.577700e+00, float 2.797100e+00, float 2.944400e+00, float 2.111000e-01, float 3.640000e-01, float 5.839000e-01, float 7.290000e-01, float 8.051000e-01, float 1.002300e+00, float 1.231500e+00, float 1.414300e+00, float 1.587800e+00, float 1.775500e+00, float 1.980400e+00, float 2.149800e+00, float 2.331200e+00, float 2.535000e+00, float 2.761300e+00, float 2.947200e+00, float 1.423000e-01, float 2.646000e-01, float 4.136000e-01, float 6.350000e-01, float f0x3F4E978D, float f0x3F738EF3, float 1.116800e+00, float 1.321300e+00, float 1.577600e+00, float 1.772100e+00, float 1.940400e+00, float 2.154500e+00, float 2.338500e+00, float 2.513700e+00, float 2.739600e+00, float 2.955300e+00, float 1.132000e-01, float 2.386000e-01, float 4.103000e-01, float 5.931000e-01, float f0x3F47E282, float f0x3F7CF41F, float 1.184000e+00, float 1.386000e+00, float 1.602100e+00, float 1.799000e+00, float 1.992200e+00, float 2.188500e+00, float 2.385200e+00, float 2.571700e+00, float 2.764000e+00, float 2.951000e+00, float 1.267000e-01, float 2.602000e-01, float 3.913000e-01, float 5.944000e-01, float 7.598000e-01, float f0x3F6B7803, float 1.078100e+00, float 1.271500e+00, float 1.529900e+00, float 1.757300e+00, float 1.930800e+00, float 2.134600e+00, float 2.326700e+00, float 2.541900e+00, float 2.746600e+00, float 2.932000e+00, float 2.023000e-01, float 3.417000e-01, float 4.392000e-01, float f0x3F1D35A8, float 7.439000e-01, float 8.593000e-01, float 1.109600e+00, float 1.354300e+00, float 1.518500e+00, float 1.655300e+00, float 1.786200e+00, float 2.034100e+00, float 2.271800e+00, float 2.483400e+00, float 2.710300e+00, float 2.946600e+00, float 1.113000e-01, float 2.470000e-01, float 3.677000e-01, float 5.686000e-01, float f0x3F451EB8, float f0x3F6F837B, float 1.080600e+00, float 1.245200e+00, float 1.483000e+00, float 1.734400e+00, float 1.926800e+00, float 2.140400e+00, float 2.337100e+00, float 2.516900e+00, float 2.732900e+00, float 2.901200e+00, float 1.664000e-01, float 3.554000e-01, float 5.573000e-01, float 7.471000e-01, float f0x3F6CAC08, float 1.099800e+00, float 1.278700e+00, float 1.465500e+00, float 1.665400e+00, float 1.834600e+00, float 2.017900e+00, float 2.215900e+00, float 2.409600e+00, float 2.594600e+00, float 2.779000e+00, float 2.953000e+00, float 1.313000e-01, float 2.625000e-01, float 4.731000e-01, float 6.444000e-01, float f0x3F4F9DB2, float 9.878000e-01, float 1.149300e+00, float 1.321200e+00, float 1.571900e+00, float 1.813800e+00, float 1.986100e+00, float 2.194300e+00, float 2.371400e+00, float 2.557800e+00, float 2.734600e+00, float 2.929600e+00, float 1.186000e-01, float 3.035000e-01, float 5.049000e-01, float 6.860000e-01, float f0x3F5DF3B6, float 9.975000e-01, float 1.136400e+00, float 1.347100e+00, float 1.569500e+00, float 1.741200e+00, float 1.934600e+00, float 2.150600e+00, float 2.341300e+00, float 2.553100e+00, float 2.779400e+00, float 2.962700e+00, float 1.108000e-01, float 2.697000e-01, float 4.787000e-01, float 6.344000e-01, float 7.909000e-01, float f0x3F7566CF, float 1.144000e+00, float 1.351100e+00, float 1.568600e+00, float 1.760100e+00, float 1.924600e+00, float 2.124100e+00, float 2.329300e+00, float 2.539000e+00, float 2.731500e+00, float 2.933300e+00, float f0x3DC9BA5E, float 2.302000e-01, float 3.544000e-01, float 5.759000e-01, float 7.620000e-01, float f0x3F7710CB, float 1.149700e+00, float 1.308000e+00, float 1.550000e+00, float 1.784500e+00, float 1.951800e+00, float 2.173400e+00, float 2.356500e+00, float 2.566500e+00, float 2.760500e+00, float 2.910200e+00, float 1.208000e-01, float 2.727000e-01, float 4.381000e-01, float 5.736000e-01, float 7.382000e-01, float 8.390000e-01, float 1.010200e+00, float 1.264800e+00, float 1.510000e+00, float 1.744000e+00, float 1.961900e+00, float 2.143000e+00, float 2.330700e+00, float 2.515900e+00, float 2.726400e+00, float 2.921100e+00, float 1.582000e-01, float 2.777000e-01, float 4.475000e-01, float 6.551000e-01, float f0x3F5BEDFA, float 1.008400e+00, float 1.141400e+00, float 1.329100e+00, float 1.590200e+00, float 1.782600e+00, float 1.954300e+00, float 2.165900e+00, float 2.323300e+00, float 2.504400e+00, float 2.693500e+00, float 2.919900e+00, float 1.360000e-01, float 2.873000e-01, float 4.585000e-01, float f0x3F2126E9, float f0x3F425AEE, float 9.089000e-01, float 1.049200e+00, float 1.273300e+00, float 1.539100e+00, float 1.776800e+00, float 1.937200e+00, float 2.132900e+00, float 2.316800e+00, float 2.501500e+00, float 2.685700e+00, float 2.883700e+00, float 8.860000e-02, float 1.829000e-01, float 3.696000e-01, float 6.126000e-01, float 8.334000e-01, float 1.013500e+00, float 1.230300e+00, float 1.467400e+00, float 1.674300e+00, float 1.856400e+00, float 2.053000e+00, float 2.237000e+00, float 2.396000e+00, float 2.578700e+00, float 2.775600e+00, float 2.937700e+00, float 2.005000e-01, float 3.537000e-01, float 4.700000e-01, float 6.249000e-01, float 7.385000e-01, float f0x3F68E219, float 1.175900e+00, float 1.381100e+00, float 1.531400e+00, float 1.670500e+00, float 1.854600e+00, float 2.122900e+00, float 2.329200e+00, float 2.525100e+00, float 2.795100e+00, float 2.964600e+00, float 1.999000e-01, float 3.112000e-01, float 4.722000e-01, float 7.146000e-01, float f0x3F640B78, float 1.002800e+00, float 1.183100e+00, float 1.390300e+00, float 1.612500e+00, float 1.751400e+00, float 1.908300e+00, float 2.124800e+00, float 2.327100e+00, float 2.533900e+00, float 2.694500e+00, float 2.891800e+00, float 1.243000e-01, float 2.606000e-01, float 4.382000e-01, float 5.850000e-01, float 7.705000e-01, float f0x3F7902DE, float 1.121400e+00, float 1.305900e+00, float 1.521800e+00, float 1.740600e+00, float 1.913700e+00, float 2.135300e+00, float 2.335400e+00, float 2.529900e+00, float 2.728700e+00, float 2.906800e+00, float 1.039000e-01, float 2.426000e-01, float 4.265000e-01, float 6.284000e-01, float f0x3F50B0F2, float f0x3F7E7D56, float 1.200400e+00, float 1.403800e+00, float 1.591200e+00, float 1.776300e+00, float 1.965000e+00, float 2.159800e+00, float 2.347400e+00, float 2.548800e+00, float 2.741900e+00, float 2.932200e+00, float 1.364000e-01, float 2.420000e-01, float 3.886000e-01, float 5.864000e-01, float 7.663000e-01, float 8.844000e-01, float 1.086000e+00, float 1.324200e+00, float 1.551800e+00, float 1.789300e+00, float 2.000400e+00, float 2.156200e+00, float 2.361900e+00, float 2.551600e+00, float 2.768700e+00, float 2.918100e+00, float 1.483000e-01, float 2.851000e-01, float 4.479000e-01, float 6.312000e-01, float 7.924000e-01, float 9.821000e-01, float 1.170500e+00, float 1.338600e+00, float 1.537500e+00, float 1.722600e+00, float 1.905300e+00, float 2.099100e+00, float 2.289800e+00, float 2.495300e+00, float 2.700000e+00, float 2.914600e+00, float 2.332000e-01, float 4.561000e-01, float 5.407000e-01, float 6.212000e-01, float f0x3F409D49, float 8.215000e-01, float f0x3F73C361, float 1.168500e+00, float 1.521600e+00, float 1.713200e+00, float 1.829100e+00, float 2.064700e+00, float 2.281100e+00, float 2.485700e+00, float 2.707100e+00, float 2.928100e+00, float 1.348000e-01, float 3.126000e-01, float 5.179000e-01, float 7.192000e-01, float f0x3F6C3611, float 1.136300e+00, float 1.322300e+00, float 1.475600e+00, float 1.650900e+00, float 1.819100e+00, float 1.999100e+00, float 2.197600e+00, float 2.387700e+00, float 2.576800e+00, float 2.759000e+00, float 2.938600e+00, float 1.093000e-01, float 2.211000e-01, float 4.763000e-01, float 6.703000e-01, float f0x3F5404EA, float f0x3F741F21, float 1.120200e+00, float 1.379600e+00, float 1.604300e+00, float 1.803100e+00, float 1.983200e+00, float 2.160400e+00, float 2.357800e+00, float 2.585600e+00, float 2.765000e+00, float 2.929100e+00, float 1.865000e-01, float 3.027000e-01, float 4.580000e-01, float f0x3F2C01A3, float f0x3F570A3D, float 1.008200e+00, float 1.190100e+00, float 1.378200e+00, float 1.544800e+00, float 1.688500e+00, float 1.947700e+00, float 2.138100e+00, float 2.279700e+00, float 2.511300e+00, float 2.746500e+00, float 2.941400e+00, float 1.575000e-01, float 3.124000e-01, float 4.649000e-01, float 6.262000e-01, float 8.095000e-01, float 9.858000e-01, float 1.167600e+00, float 1.360200e+00, float 1.564600e+00, float 1.758200e+00, float 1.955000e+00, float 2.167100e+00, float 2.362800e+00, float 2.573400e+00, float 2.767000e+00, float 2.951900e+00, float 1.174000e-01, float 2.777000e-01, float 4.663000e-01, float 6.333000e-01, float 8.169000e-01, float 1.009600e+00, float 1.188500e+00, float 1.384700e+00, float 1.580300e+00, float 1.757100e+00, float 1.938000e+00, float 2.139800e+00, float 2.341400e+00, float 2.540700e+00, float 2.736000e+00, float 2.937500e+00, float 1.073000e-01, float 2.264000e-01, float 4.083000e-01, float 5.973000e-01, float f0x3F3F559B, float f0x3F738EF3, float 1.134900e+00, float 1.333700e+00, float 1.543300e+00, float 1.734800e+00, float 1.938000e+00, float 2.143600e+00, float 2.344100e+00, float 2.543800e+00, float 2.745700e+00, float 2.938300e+00, float 1.472000e-01, float 2.880000e-01, float 4.793000e-01, float 6.268000e-01, float 8.015000e-01, float 1.006300e+00, float 1.171500e+00, float 1.364400e+00, float 1.552500e+00, float 1.741000e+00, float 1.925800e+00, float 2.122700e+00, float 2.321400e+00, float 2.514900e+00, float 2.714800e+00, float 2.919600e+00, float 1.414000e-01, float 2.565000e-01, float 4.349000e-01, float 6.111000e-01, float 7.695000e-01, float f0x3F7318FC, float 1.121200e+00, float 1.326500e+00, float 1.521800e+00, float 1.720900e+00, float 1.901500e+00, float 2.088700e+00, float 2.315800e+00, float 2.507700e+00, float 2.723300e+00, float 2.942100e+00, float 1.252000e-01, float 2.667000e-01, float 4.454000e-01, float 6.431000e-01, float 8.371000e-01, float 1.012400e+00, float 1.211000e+00, float 1.416000e+00, float 1.624000e+00, float 1.824200e+00, float 2.004700e+00, float 2.197400e+00, float 2.390200e+00, float 2.577800e+00, float 2.763700e+00, float 2.948100e+00, float 1.321000e-01, float 2.565000e-01, float 3.846000e-01, float 5.847000e-01, float f0x3F41FF2E, float f0x3F6D07C8, float 1.063700e+00, float 1.223900e+00, float 1.469000e+00, float 1.734600e+00, float 1.975000e+00, float 2.188200e+00, float 2.371200e+00, float 2.550900e+00, float 2.728000e+00, float 2.888500e+00, float 1.437000e-01, float 2.930000e-01, float 4.428000e-01, float 6.156000e-01, float f0x3F4DF3B6, float 9.638000e-01, float 1.145000e+00, float 1.313800e+00, float 1.514400e+00, float 1.735500e+00, float 1.946900e+00, float 2.153400e+00, float 2.341400e+00, float 2.545200e+00, float 2.735300e+00, float 2.933400e+00, float 1.692000e-01, float 2.770000e-01, float 3.831000e-01, float 6.100000e-01, float 7.825000e-01, float f0x3F6E2196, float 1.069000e+00, float 1.248100e+00, float 1.461500e+00, float 1.679900e+00, float 1.916500e+00, float 2.173900e+00, float 2.343500e+00, float 2.534900e+00, float 2.752000e+00, float 2.916300e+00, float 1.235000e-01, float 2.489000e-01, float 4.354000e-01, float 6.343000e-01, float f0x3F52D773, float 1.006600e+00, float 1.190800e+00, float 1.347400e+00, float 1.565600e+00, float 1.827500e+00, float 2.062000e+00, float 2.254800e+00, float 2.413500e+00, float 2.591300e+00, float 2.763900e+00, float 2.933400e+00, float 1.090000e-01, float 1.961000e-01, float 3.854000e-01, float 5.701000e-01, float 7.024000e-01, float 8.843000e-01, float 1.139300e+00, float 1.378500e+00, float 1.594000e+00, float 1.779700e+00, float 1.944200e+00, float 2.174000e+00, float 2.385300e+00, float 2.577300e+00, float 2.772700e+00, float 2.940600e+00, float 1.560000e-01, float 3.477000e-01, float 5.011000e-01, float 6.287000e-01, float 7.612000e-01, float 9.896000e-01, float 1.151000e+00, float 1.342000e+00, float 1.543500e+00, float 1.681600e+00, float 1.873100e+00, float 2.065100e+00, float 2.261300e+00, float 2.499900e+00, float 2.702700e+00, float 2.897100e+00, float 1.459000e-01, float 2.416000e-01, float 3.833000e-01, float 5.450000e-01, float 7.916000e-01, float f0x3F6C1BDA, float 1.066200e+00, float 1.195300e+00, float 1.402900e+00, float 1.661600e+00, float 1.932000e+00, float 2.145900e+00, float 2.338600e+00, float 2.508100e+00, float 2.679900e+00, float 2.919500e+00, float 1.546000e-01, float 3.854000e-01, float 6.184000e-01, float 8.460000e-01, float 1.059900e+00, float 1.242800e+00, float 1.390600e+00, float 1.555000e+00, float 1.738800e+00, float 1.894500e+00, float 2.075700e+00, float 2.238600e+00, float 2.401400e+00, float 2.570500e+00, float 2.757400e+00, float 2.940000e+00, float 1.080000e-01, float 2.307000e-01, float 4.112000e-01, float 6.067000e-01, float f0x3F45C28F, float f0x3F725AEE, float 1.128500e+00, float 1.320500e+00, float 1.534800e+00, float 1.760900e+00, float 1.993700e+00, float 2.187800e+00, float 2.358300e+00, float 2.551500e+00, float 2.719900e+00, float 2.904900e+00, float 1.482000e-01, float 3.178000e-01, float 4.983000e-01, float 6.342000e-01, float f0x3F473EAB, float f0x3F7CED91, float 1.201900e+00, float 1.340400e+00, float 1.522300e+00, float 1.729600e+00, float 1.921100e+00, float 2.094300e+00, float 2.292800e+00, float 2.500800e+00, float 2.713600e+00, float 2.922400e+00, float 1.145000e-01, float 2.910000e-01, float 4.891000e-01, float 6.492000e-01, float 8.126000e-01, float 9.530000e-01, float 1.118000e+00, float 1.315500e+00, float 1.505400e+00, float 1.689300e+00, float 1.889900e+00, float 2.118800e+00, float 2.338900e+00, float 2.551200e+00, float 2.731300e+00, float 2.922400e+00, float 9.390000e-02, float 1.689000e-01, float 3.250000e-01, float 5.792000e-01, float 7.698000e-01, float f0x3F6CAC08, float 1.157400e+00, float 1.386500e+00, float 1.595900e+00, float 1.797700e+00, float 1.982100e+00, float 2.152800e+00, float 2.332600e+00, float 2.554000e+00, float 2.755300e+00, float 2.917900e+00, float 1.243000e-01, float 2.474000e-01, float 3.923000e-01, float 6.199000e-01, float f0x3F4A71DE, float 9.379000e-01, float 1.149700e+00, float 1.373400e+00, float 1.558200e+00, float 1.742000e+00, float 1.953900e+00, float 2.138500e+00, float 2.324000e+00, float 2.527700e+00, float 2.731100e+00, float 2.917800e+00, float 1.961000e-01, float 3.748000e-01, float 5.176000e-01, float 6.387000e-01, float 8.169000e-01, float 1.047700e+00, float 1.212400e+00, float 1.386900e+00, float 1.560400e+00, float 1.722500e+00, float 1.877000e+00, float 2.083700e+00, float 2.296000e+00, float 2.510300e+00, float 2.694500e+00, float 2.886200e+00, float 1.295000e-01, float 2.403000e-01, float 4.149000e-01, float 6.189000e-01, float f0x3F4A92A3, float f0x3F69BA5E, float 1.083200e+00, float 1.278700e+00, float 1.486000e+00, float 1.711200e+00, float 1.950200e+00, float 2.134800e+00, float 2.277600e+00, float 2.498200e+00, float 2.743100e+00, float 2.952200e+00, float 1.600000e-02, float 3.620000e-02, float 9.700000e-03, float 5.700000e-03, float -1.400000e-03, float -7.300000e-03, float -4.600000e-03, float -6.400000e-03, float -1.210000e-02, float 1.900000e-03, float 1.490000e-02, float -4.400000e-02, float -4.790000e-02, float -3.820000e-02, float -4.800000e-02, float -1.820000e-02, float 1.700000e-02, float 1.140000e-02, float -2.980000e-02, float -1.750000e-02, float -3.300000e-03, float -3.540000e-02, float -5.100000e-02, float -2.500000e-03, float 3.070000e-02, float 3.510000e-02, float 3.380000e-02, float 4.200000e-02, float 1.380000e-02, float -1.750000e-02, float -1.020000e-02, float 5.300000e-03, float 8.400000e-03, float -3.000000e-04, float 4.120000e-02, float -2.700000e-03, float 1.450000e-02, float -3.900000e-03, float 8.300000e-03, float 4.000000e-02, float f0x38D1B717, float -2.620000e-02, float 5.500000e-03, float -8.200000e-03, float 3.480000e-02, float 4.330000e-02, float 1.370000e-02, float -2.400000e-03, float -5.500000e-03, float 2.620000e-02, float 5.210000e-02, float 3.490000e-02, float 1.850000e-02, float 7.600000e-03, float -3.190000e-02, float -5.610000e-02, float -4.600000e-02, float -2.530000e-02, float -9.700000e-03, float 1.630000e-02, float 1.840000e-02, float -3.700000e-03, float -4.800000e-02, float -3.710000e-02, float 6.280000e-02, float 6.650000e-02, float 2.960000e-02, float -5.700000e-03, float 2.530000e-02, float 2.270000e-02, float 3.500000e-02, float 6.920000e-02, float 5.450000e-02, float 2.180000e-02, float 9.400000e-03, float -4.490000e-02, float -3.720000e-02, float 5.000000e-04, float 2.580000e-02, float 1.180000e-02, float 2.850000e-02, float 7.600000e-02, float f0x3DA85879, float 5.270000e-02, float -2.990000e-02, float -4.900000e-03, float 1.700000e-02, float 1.950000e-02, float 1.360000e-02, float 2.860000e-02, float 2.890000e-02, float 1.390000e-02, float 5.400000e-03, float 1.520000e-02, float 2.440000e-02, float 2.800000e-03, float -5.600000e-03, float -2.600000e-02, float 3.070000e-02, float 5.720000e-02, float -8.700000e-03, float f0x3C102DE0, float 6.200000e-03, float 0.000000e+00, float 1.250000e-02, float 0.000000e+00, float -2.920000e-02, float 8.200000e-02, float 8.720000e-02, float 6.460000e-02, float 3.460000e-02, float 7.600000e-03, float -2.200000e-03, float -2.530000e-02, float -5.670000e-02, float -1.880000e-02, float -3.360000e-02, float -6.730000e-02, float -5.490000e-02, float -1.660000e-02, float -2.590000e-02, float -1.400000e-02, float 4.000000e-03, float -2.900000e-03, float -4.300000e-02, float -5.310000e-02, float -2.530000e-02, float -1.900000e-03, float -7.100000e-03, float 3.930000e-02, float 7.200000e-03, float -3.270000e-02, float -2.360000e-02, float -2.350000e-02, float -1.770000e-02, float -1.860000e-02, float -2.800000e-02, float -2.010000e-02, float -7.700000e-03, float 3.830000e-02, float 4.180000e-02, float 3.210000e-02, float 2.940000e-02, float 1.690000e-02, float 4.680000e-02, float 3.010000e-02, float 1.330000e-02, float 3.630000e-02, float 5.160000e-02, float f0x3DBFE5C9, float 1.240000e-01, float 1.404000e-01, float 1.325000e-01, float 1.178000e-01, float f0x3DCC985F, float 2.510000e-02, float -3.700000e-03, float -4.950000e-02, float -7.030000e-02, float -2.190000e-02, float -2.610000e-02, float -3.040000e-02, float -2.040000e-02, float -3.720000e-02, float 3.550000e-02, float 1.310000e-02, float -9.300000e-03, float f0xBC22339C, float -6.900000e-03, float -3.400000e-03, float -6.500000e-03, float -2.080000e-02, float -2.310000e-02, float -1.170000e-02, float -2.110000e-02, float -2.430000e-02, float 4.600000e-03, float -1.070000e-02, float -7.000000e-03, float 1.230000e-02, float 2.300000e-02, float 1.520000e-02, float 1.640000e-02, float 4.120000e-02, float 6.190000e-02, float f0x3DAFB7E9, float f0x3DB089A0, float -5.600000e-03, float 1.250000e-02, float 1.820000e-02, float 3.470000e-02, float 3.880000e-02, float 4.560000e-02, float 4.070000e-02, float -2.490000e-02, float -4.600000e-02, float 2.060000e-02, float 2.990000e-02, float 2.530000e-02, float 2.070000e-02, float 1.770000e-02, float 2.380000e-02, float 2.530000e-02, float 3.000000e-03, float 4.200000e-03, float 2.000000e-03, float -8.100000e-03, float -1.360000e-02, float -2.900000e-02, float -4.200000e-03, float 1.220000e-02, float 5.100000e-03, float 1.070000e-02, float 2.280000e-02, float 2.110000e-02, float -6.800000e-03, float -4.360000e-02, float -2.990000e-02, float f0xBBFF9724, float f0xBD9F8A09, float -1.157000e-01, float -6.790000e-02, float 1.720000e-02, float 1.500000e-02, float -5.100000e-03, float 8.100000e-03, float -5.120000e-02, float f0xBD7C5048, float 5.760000e-02, float f0x3DA3A29C, float 8.030000e-02, float 3.360000e-02, float f0x38D1B717, float -2.980000e-02, float -7.470000e-02, float -1.150000e-02, float -1.010000e-02, float -1.700000e-02, float -5.000000e-03, float 1.740000e-02, float -2.900000e-02, float -6.010000e-02, float -1.500000e-02, float 1.210000e-02, float 1.650000e-02, float 2.300000e-02, float 2.800000e-03, float -3.170000e-02, float -1.650000e-02, float 3.560000e-02, float 4.510000e-02, float 1.200000e-02, float 3.210000e-02, float 8.400000e-03, float -5.800000e-03, float 1.220000e-02, float 1.935000e-01, float 1.802000e-01, float 2.195000e-01, float 2.410000e-01, float 2.201000e-01, float 1.915000e-01, float 1.840000e-01, float 1.935000e-01, float 2.213000e-01, float 2.079000e-01, float 1.858000e-01, float 1.974000e-01, float 2.239000e-01, float 2.173000e-01, float 1.840000e-01, float 2.120000e-01, float 4.912000e-01, float 4.777000e-01, float 4.607000e-01, float 4.395000e-01, float 4.426000e-01, float 4.388000e-01, float 4.416000e-01, float 4.345000e-01, float 4.239000e-01, float 4.331000e-01, float 4.522000e-01, float 4.423000e-01, float 4.475000e-01, float 4.387000e-01, float 4.525000e-01, float 4.446000e-01], align 16
@ff_metasound_lsp44 = hidden local_unnamed_addr constant [1640 x float] [float f0x3DBDD97F, float 2.291000e-01, float 4.059000e-01, float 5.779000e-01, float f0x3F3A92A3, float f0x3F61D14E, float 1.037700e+00, float 1.191500e+00, float 1.343300e+00, float 1.493100e+00, float 1.647500e+00, float 1.798900e+00, float 1.938100e+00, float 2.085800e+00, float 2.232100e+00, float 2.376500e+00, float 2.518700e+00, float 2.653000e+00, float 2.789500e+00, float 2.935400e+00, float 9.440000e-02, float 1.974000e-01, float 3.046000e-01, float 4.714000e-01, float f0x3F1C91D1, float f0x3F486C22, float 9.027000e-01, float 1.037500e+00, float 1.186900e+00, float 1.348800e+00, float 1.503600e+00, float 1.678100e+00, float 1.827600e+00, float 1.998300e+00, float 2.144900e+00, float 2.308900e+00, float 2.453400e+00, float 2.611300e+00, float 2.755300e+00, float 2.906200e+00, float 1.168000e-01, float 2.843000e-01, float 4.907000e-01, float f0x3F2BAC71, float 8.100000e-01, float f0x3F711340, float 1.075300e+00, float 1.201400e+00, float 1.315100e+00, float 1.449600e+00, float 1.583200e+00, float 1.737900e+00, float 1.864200e+00, float 2.023000e+00, float 2.168100e+00, float 2.325000e+00, float 2.467600e+00, float 2.624200e+00, float 2.760200e+00, float 2.906600e+00, float 1.353000e-01, float 2.335000e-01, float 3.370000e-01, float 4.380000e-01, float 5.819000e-01, float 7.353000e-01, float 8.671000e-01, float 1.016000e+00, float 1.143500e+00, float 1.297700e+00, float 1.486000e+00, float 1.673900e+00, float 1.841200e+00, float 2.002800e+00, float 2.153700e+00, float 2.312400e+00, float 2.474100e+00, float 2.627200e+00, float 2.786200e+00, float 2.953600e+00, float 1.003000e-01, float 2.226000e-01, float 3.584000e-01, float 4.971000e-01, float 6.291000e-01, float 7.710000e-01, float 9.157000e-01, float 1.066900e+00, float 1.214300e+00, float 1.362400e+00, float 1.510400e+00, float 1.668100e+00, float 1.816400e+00, float 1.982300e+00, float 2.139400e+00, float 2.308200e+00, float 2.467700e+00, float 2.630600e+00, float 2.790900e+00, float 2.938200e+00, float 1.056000e-01, float 2.027000e-01, float 2.956000e-01, float 4.005000e-01, float 5.215000e-01, float 6.708000e-01, float f0x3F5AC083, float 1.055700e+00, float 1.234400e+00, float 1.402300e+00, float 1.567600e+00, float 1.727800e+00, float 1.880800e+00, float 2.038100e+00, float 2.184600e+00, float 2.337600e+00, float 2.488700e+00, float 2.637700e+00, float 2.787800e+00, float 2.950400e+00, float 1.015000e-01, float 2.462000e-01, float 4.122000e-01, float 5.783000e-01, float 7.233000e-01, float 8.833000e-01, float 1.037700e+00, float 1.190300e+00, float 1.334100e+00, float 1.472700e+00, float 1.613800e+00, float 1.758200e+00, float 1.891200e+00, float 2.037000e+00, float 2.170100e+00, float 2.312500e+00, float 2.450000e+00, float 2.600600e+00, float 2.750700e+00, float 2.916600e+00, float 1.787000e-01, float 2.418000e-01, float 3.265000e-01, float 5.379000e-01, float f0x3F288CE7, float 7.681000e-01, float 9.545000e-01, float 1.105000e+00, float 1.212500e+00, float 1.352800e+00, float 1.476300e+00, float 1.670500e+00, float 1.813600e+00, float 1.959400e+00, float 2.093600e+00, float 2.272400e+00, float 2.439400e+00, float 2.591900e+00, float 2.703700e+00, float 2.874700e+00, float 8.590000e-02, float 1.600000e-01, float 2.980000e-01, float 4.933000e-01, float 6.696000e-01, float f0x3F541893, float 9.958000e-01, float 1.154500e+00, float 1.310700e+00, float 1.459100e+00, float 1.612700e+00, float 1.765200e+00, float 1.914300e+00, float 2.068000e+00, float 2.217100e+00, float 2.364300e+00, float 2.514100e+00, float 2.661100e+00, float 2.814300e+00, float 2.969100e+00, float f0x3DBA5E35, float 2.110000e-01, float 3.364000e-01, float 4.718000e-01, float 5.856000e-01, float 7.298000e-01, float f0x3F641893, float 1.051400e+00, float 1.198800e+00, float 1.357200e+00, float 1.517800e+00, float 1.686100e+00, float 1.839900e+00, float 2.009900e+00, float 2.163900e+00, float 2.322500e+00, float 2.477400e+00, float 2.632100e+00, float 2.786300e+00, float 2.941200e+00, float 1.904000e-01, float 2.874000e-01, float 3.681000e-01, float 4.981000e-01, float 6.248000e-01, float f0x3F49BA5E, float 9.121000e-01, float 1.075000e+00, float 1.218500e+00, float 1.380900e+00, float 1.529600e+00, float 1.700700e+00, float 1.859200e+00, float 2.047000e+00, float 2.191300e+00, float 2.325000e+00, float 2.451900e+00, float 2.598400e+00, float 2.740800e+00, float 2.902300e+00, float 9.170000e-02, float 2.067000e-01, float 3.246000e-01, float 4.961000e-01, float f0x3F218937, float f0x3F4D6A16, float f0x3F719CE0, float 1.100800e+00, float 1.236200e+00, float 1.389200e+00, float 1.540700e+00, float 1.703300e+00, float 1.842700e+00, float 2.006100e+00, float 2.149800e+00, float 2.311700e+00, float 2.455000e+00, float 2.605300e+00, float 2.746200e+00, float 2.902900e+00, float f0x3DCA8C15, float 2.193000e-01, float 3.756000e-01, float 5.410000e-01, float 6.929000e-01, float f0x3F563886, float f0x3F7AE7D5, float 1.125000e+00, float 1.267700e+00, float 1.418400e+00, float 1.567700e+00, float 1.729200e+00, float 1.877000e+00, float 2.031100e+00, float 2.180300e+00, float 2.330600e+00, float 2.483600e+00, float 2.633900e+00, float 2.794300e+00, float 2.954900e+00, float 8.610000e-02, float 1.943000e-01, float 3.057000e-01, float 4.867000e-01, float 6.194000e-01, float f0x3F425AEE, float f0x3F6B1C43, float 1.105200e+00, float 1.248600e+00, float 1.406400e+00, float 1.560900e+00, float 1.727300e+00, float 1.870300e+00, float 2.029100e+00, float 2.168600e+00, float 2.322500e+00, float 2.462800e+00, float 2.611500e+00, float 2.747100e+00, float 2.900500e+00, float f0x3DBEDFA4, float 2.110000e-01, float 3.737000e-01, float 5.479000e-01, float 7.120000e-01, float f0x3F5B645A, float 9.975000e-01, float 1.136400e+00, float 1.277200e+00, float 1.422000e+00, float 1.561200e+00, float 1.708900e+00, float 1.841000e+00, float 1.982700e+00, float 2.126300e+00, float 2.285900e+00, float 2.445900e+00, float 2.617200e+00, float 2.778800e+00, float 2.939500e+00, float 1.193000e-01, float 2.341000e-01, float 3.523000e-01, float 5.029000e-01, float 6.437000e-01, float 7.803000e-01, float f0x3F6FCB92, float 1.100700e+00, float 1.239200e+00, float 1.386900e+00, float 1.542500e+00, float 1.716800e+00, float 1.870900e+00, float 2.024800e+00, float 2.158400e+00, float 2.294900e+00, float 2.430800e+00, float 2.582300e+00, float 2.723500e+00, float 2.903400e+00, float 8.340000e-02, float 1.988000e-01, float 3.557000e-01, float 5.261000e-01, float 6.767000e-01, float 8.427000e-01, float 1.002900e+00, float 1.168300e+00, float 1.313800e+00, float 1.452700e+00, float 1.604600e+00, float 1.758300e+00, float 1.901100e+00, float 2.051700e+00, float 2.192800e+00, float 2.339700e+00, float 2.483900e+00, float 2.629100e+00, float 2.777100e+00, float 2.932900e+00, float 9.380000e-02, float 1.967000e-01, float 3.213000e-01, float 4.675000e-01, float 6.068000e-01, float f0x3F4432CA, float f0x3F7119CE, float 1.112000e+00, float 1.253500e+00, float 1.393200e+00, float 1.524300e+00, float 1.680100e+00, float 1.834600e+00, float 1.993100e+00, float 2.137600e+00, float 2.303500e+00, float 2.463600e+00, float 2.624400e+00, float 2.782900e+00, float 2.937100e+00, float 1.017000e-01, float 2.552000e-01, float 4.327000e-01, float 6.017000e-01, float f0x3F3F27BB, float 8.797000e-01, float 1.009700e+00, float 1.144200e+00, float 1.262800e+00, float 1.404900e+00, float 1.554100e+00, float 1.709000e+00, float 1.846100e+00, float 1.998200e+00, float 2.148600e+00, float 2.302900e+00, float 2.451300e+00, float 2.607500e+00, float 2.759400e+00, float 2.920900e+00, float 1.031000e-01, float 2.295000e-01, float 3.747000e-01, float 5.122000e-01, float 6.596000e-01, float 7.935000e-01, float 9.345000e-01, float 1.105000e+00, float 1.238400e+00, float 1.354300e+00, float 1.473900e+00, float 1.613600e+00, float 1.744700e+00, float 1.891400e+00, float 2.043400e+00, float 2.191600e+00, float 2.355700e+00, float 2.539600e+00, float 2.741900e+00, float 2.940100e+00, float 1.007000e-01, float 2.374000e-01, float 3.715000e-01, float 5.173000e-01, float 6.465000e-01, float 8.069000e-01, float f0x3F748E8A, float 1.114500e+00, float 1.259400e+00, float 1.414300e+00, float 1.561700e+00, float 1.716600e+00, float 1.845700e+00, float 2.001200e+00, float 2.146200e+00, float 2.286400e+00, float 2.425800e+00, float 2.591000e+00, float 2.737200e+00, float 2.901800e+00, float f0x3DA57A78, float 1.726000e-01, float 2.849000e-01, float 4.592000e-01, float 6.118000e-01, float 7.853000e-01, float 9.588000e-01, float 1.125600e+00, float 1.275100e+00, float 1.439200e+00, float 1.589800e+00, float 1.751400e+00, float 1.897700e+00, float 2.055400e+00, float 2.193700e+00, float 2.343000e+00, float 2.483100e+00, float 2.624900e+00, float 2.760100e+00, float 2.915500e+00, float 1.669000e-01, float 2.574000e-01, float 3.694000e-01, float 5.569000e-01, float f0x3F2D6388, float 8.061000e-01, float 1.016000e+00, float 1.166700e+00, float 1.279100e+00, float 1.404100e+00, float 1.545200e+00, float 1.720700e+00, float 1.852400e+00, float 2.003800e+00, float 2.141400e+00, float 2.333800e+00, float 2.474700e+00, float 2.615700e+00, float 2.730300e+00, float 2.884800e+00, float 1.598000e-01, float 2.521000e-01, float 3.416000e-01, float 5.149000e-01, float 6.703000e-01, float f0x3F4B4A23, float 9.408000e-01, float 1.116400e+00, float 1.201700e+00, float 1.329300e+00, float 1.490800e+00, float 1.678300e+00, float 1.843800e+00, float 1.992700e+00, float 2.114900e+00, float 2.269800e+00, float 2.442000e+00, float 2.619300e+00, float 2.758300e+00, float 2.910300e+00, float f0x3DB8BAC7, float 1.978000e-01, float 3.265000e-01, float 4.578000e-01, float 5.878000e-01, float 7.439000e-01, float 9.110000e-01, float 1.090600e+00, float 1.255600e+00, float 1.412500e+00, float 1.568800e+00, float 1.729500e+00, float 1.882900e+00, float 2.047200e+00, float 2.205800e+00, float 2.353700e+00, float 2.507500e+00, float 2.654800e+00, float 2.805800e+00, float 2.953800e+00, float 8.180000e-02, float 1.695000e-01, float 2.794000e-01, float 4.470000e-01, float 6.069000e-01, float 7.641000e-01, float f0x3F6E69AD, float 1.094600e+00, float 1.241100e+00, float 1.407200e+00, float 1.564000e+00, float 1.718600e+00, float 1.865100e+00, float 2.025400e+00, float 2.172600e+00, float 2.328600e+00, float 2.478400e+00, float 2.628700e+00, float 2.775000e+00, float 2.933900e+00, float 1.980000e-01, float 3.134000e-01, float 4.099000e-01, float 4.975000e-01, float 6.491000e-01, float 8.376000e-01, float 9.441000e-01, float 1.029800e+00, float 1.179500e+00, float 1.386600e+00, float 1.578400e+00, float 1.720900e+00, float 1.813700e+00, float 1.927100e+00, float 2.086300e+00, float 2.293000e+00, float 2.469600e+00, float 2.618400e+00, float 2.758700e+00, float 2.925100e+00, float 1.338000e-01, float 2.341000e-01, float 3.566000e-01, float 4.797000e-01, float 6.129000e-01, float 7.580000e-01, float 9.093000e-01, float 1.049100e+00, float 1.191100e+00, float 1.331300e+00, float 1.484100e+00, float 1.650300e+00, float 1.803500e+00, float 1.968500e+00, float 2.112800e+00, float 2.269400e+00, float 2.409300e+00, float 2.572800e+00, float 2.720600e+00, float 2.899400e+00, float f0x3DBFE5C9, float 2.034000e-01, float 3.447000e-01, float 5.032000e-01, float 6.370000e-01, float 7.993000e-01, float 9.674000e-01, float 1.132300e+00, float 1.283000e+00, float 1.419900e+00, float 1.549200e+00, float 1.701000e+00, float 1.851300e+00, float 2.008700e+00, float 2.155000e+00, float 2.311500e+00, float 2.464300e+00, float 2.623700e+00, float 2.781200e+00, float 2.939200e+00, float 1.085000e-01, float 2.152000e-01, float 3.126000e-01, float 4.569000e-01, float 5.718000e-01, float 7.213000e-01, float 8.837000e-01, float 1.060400e+00, float 1.205300e+00, float 1.375500e+00, float 1.539700e+00, float 1.700100e+00, float 1.840900e+00, float 2.003900e+00, float 2.149800e+00, float 2.308000e+00, float 2.453500e+00, float 2.606300e+00, float 2.750500e+00, float 2.911000e+00, float 5.620000e-02, float 2.066000e-01, float 4.034000e-01, float 5.490000e-01, float 6.682000e-01, float 7.924000e-01, float 9.495000e-01, float 1.080000e+00, float 1.186900e+00, float 1.315600e+00, float 1.483400e+00, float 1.661900e+00, float 1.840400e+00, float 2.019900e+00, float 2.150900e+00, float 2.275500e+00, float 2.407200e+00, float 2.558000e+00, float 2.699300e+00, float 2.891300e+00, float 9.390000e-02, float 2.303000e-01, float 3.742000e-01, float 5.260000e-01, float f0x3F2A8C15, float 8.294000e-01, float f0x3F7A161E, float 1.131500e+00, float 1.279200e+00, float 1.415300e+00, float 1.543600e+00, float 1.670100e+00, float 1.821500e+00, float 1.992000e+00, float 2.131000e+00, float 2.300500e+00, float 2.453400e+00, float 2.578600e+00, float 2.720400e+00, float 2.906800e+00, float 1.005000e-01, float 2.442000e-01, float 3.898000e-01, float 5.398000e-01, float 6.958000e-01, float 8.474000e-01, float 1.000800e+00, float 1.155600e+00, float 1.302000e+00, float 1.445600e+00, float 1.595400e+00, float 1.747000e+00, float 1.892200e+00, float 2.050000e+00, float 2.201900e+00, float 2.349200e+00, float 2.496300e+00, float 2.641200e+00, float 2.789000e+00, float 2.942300e+00, float 1.022000e-01, float 2.031000e-01, float 3.213000e-01, float 4.402000e-01, float 5.637000e-01, float 7.117000e-01, float f0x3F5E075F, float 1.024200e+00, float 1.172700e+00, float 1.320600e+00, float 1.484600e+00, float 1.646500e+00, float 1.801500e+00, float 1.965500e+00, float 2.123300e+00, float 2.287300e+00, float 2.446400e+00, float 2.607400e+00, float 2.768500e+00, float 2.940900e+00, float 1.985000e-01, float 3.497000e-01, float 4.622000e-01, float 5.982000e-01, float f0x3F3FB7E9, float f0x3F600D1B, float 9.925000e-01, float 1.167900e+00, float 1.328800e+00, float 1.460600e+00, float 1.582000e+00, float 1.749200e+00, float 1.892200e+00, float 2.051100e+00, float 2.178000e+00, float 2.337300e+00, float 2.476000e+00, float 2.623300e+00, float 2.746600e+00, float 2.897800e+00, float 1.284000e-01, float 2.433000e-01, float 3.630000e-01, float 4.852000e-01, float f0x3F1C985F, float f0x3F3EF9DB, float f0x3F63F141, float 1.036000e+00, float 1.173800e+00, float 1.314200e+00, float 1.469600e+00, float 1.618500e+00, float 1.771900e+00, float 1.931800e+00, float 2.096100e+00, float 2.269700e+00, float 2.440800e+00, float 2.604600e+00, float 2.768100e+00, float 2.945100e+00, float 1.042000e-01, float 2.286000e-01, float 3.598000e-01, float 5.064000e-01, float 6.438000e-01, float 7.899000e-01, float 9.350000e-01, float 1.089100e+00, float 1.232300e+00, float 1.380700e+00, float 1.522500e+00, float 1.674700e+00, float 1.815300e+00, float 1.966900e+00, float 2.114500e+00, float 2.283200e+00, float 2.443000e+00, float 2.608500e+00, float 2.774800e+00, float 2.934600e+00, float 7.800000e-02, float 1.724000e-01, float 2.440000e-01, float 3.489000e-01, float 5.280000e-01, float 7.426000e-01, float 9.272000e-01, float 1.091400e+00, float 1.256200e+00, float 1.418800e+00, float 1.580400e+00, float 1.737600e+00, float 1.890900e+00, float 2.047300e+00, float 2.194600e+00, float 2.345700e+00, float 2.495000e+00, float 2.642400e+00, float 2.792600e+00, float 2.954900e+00, float 1.103000e-01, float 2.608000e-01, float 4.087000e-01, float 5.538000e-01, float 6.923000e-01, float 8.418000e-01, float 9.940000e-01, float 1.150700e+00, float 1.291900e+00, float 1.440600e+00, float 1.580200e+00, float 1.726200e+00, float 1.863800e+00, float 2.008500e+00, float 2.157200e+00, float 2.297500e+00, float 2.432900e+00, float 2.586600e+00, float 2.738000e+00, float 2.910700e+00, float 1.297000e-01, float 2.532000e-01, float 4.003000e-01, float 5.329000e-01, float 6.733000e-01, float 7.950000e-01, float f0x3F74A8C1, float 1.085900e+00, float 1.223500e+00, float 1.353800e+00, float 1.503700e+00, float 1.638900e+00, float 1.796400e+00, float 1.928500e+00, float 2.089800e+00, float 2.254100e+00, float 2.423100e+00, float 2.571100e+00, float 2.687500e+00, float 2.894700e+00, float f0x3DB2617C, float 1.968000e-01, float 3.425000e-01, float 4.949000e-01, float 6.424000e-01, float f0x3F4BC01A, float 9.534000e-01, float 1.113200e+00, float 1.265600e+00, float 1.422900e+00, float 1.578500e+00, float 1.727100e+00, float 1.872900e+00, float 2.035500e+00, float 2.199800e+00, float 2.356200e+00, float 2.515100e+00, float 2.666300e+00, float 2.814500e+00, float 2.953400e+00, float 1.038000e-01, float 2.204000e-01, float 3.248000e-01, float 4.566000e-01, float 5.947000e-01, float 7.443000e-01, float f0x3F618FC5, float 1.037900e+00, float 1.203100e+00, float 1.377200e+00, float 1.543000e+00, float 1.709200e+00, float 1.862500e+00, float 2.032200e+00, float 2.190400e+00, float 2.341700e+00, float 2.496000e+00, float 2.645800e+00, float 2.797900e+00, float 2.948500e+00, float 1.329000e-01, float 2.763000e-01, float 3.943000e-01, float 5.147000e-01, float f0x3F26B50B, float f0x3F4E9E1B, float f0x3F70E560, float 1.087900e+00, float 1.229800e+00, float 1.385000e+00, float 1.528200e+00, float 1.667400e+00, float 1.813700e+00, float 1.999300e+00, float 2.134400e+00, float 2.274900e+00, float 2.425700e+00, float 2.586300e+00, float 2.741000e+00, float 2.918400e+00, float 1.052000e-01, float 2.142000e-01, float 3.584000e-01, float 5.033000e-01, float 6.387000e-01, float f0x3F47C84B, float f0x3F6E978D, float 1.078000e+00, float 1.217200e+00, float 1.376400e+00, float 1.542100e+00, float 1.688700e+00, float 1.824600e+00, float 1.983300e+00, float 2.124500e+00, float 2.279700e+00, float 2.423700e+00, float 2.577900e+00, float 2.725700e+00, float 2.909700e+00, float 1.092000e-01, float 2.676000e-01, float 4.071000e-01, float 5.355000e-01, float 6.661000e-01, float f0x3F506F69, float 9.621000e-01, float 1.117300e+00, float 1.262800e+00, float 1.418500e+00, float 1.569600e+00, float 1.722000e+00, float 1.859500e+00, float 2.017800e+00, float 2.172000e+00, float 2.322100e+00, float 2.471800e+00, float 2.625900e+00, float 2.777500e+00, float 2.933400e+00, float 9.290000e-02, float 2.017000e-01, float 3.073000e-01, float 4.570000e-01, float 5.775000e-01, float 7.635000e-01, float f0x3F6E0DED, float 1.083200e+00, float 1.233400e+00, float 1.393500e+00, float 1.542000e+00, float 1.711200e+00, float 1.860100e+00, float 2.030900e+00, float 2.173500e+00, float 2.323000e+00, float 2.454300e+00, float 2.603400e+00, float 2.741800e+00, float 2.898800e+00, float 7.750000e-02, float 2.005000e-01, float 3.490000e-01, float 5.200000e-01, float 6.747000e-01, float 8.383000e-01, float f0x3F7D0E56, float 1.173800e+00, float 1.314100e+00, float 1.423600e+00, float 1.589200e+00, float 1.740200e+00, float 1.847400e+00, float 2.021000e+00, float 2.159300e+00, float 2.273000e+00, float 2.423500e+00, float 2.560400e+00, float 2.712800e+00, float 2.900500e+00, float 1.104000e-01, float 2.292000e-01, float 3.353000e-01, float 4.732000e-01, float f0x3F1D7DBF, float f0x3F447AE1, float 9.164000e-01, float 1.090700e+00, float 1.259400e+00, float 1.406400e+00, float 1.521800e+00, float 1.642600e+00, float 1.801800e+00, float 1.993700e+00, float 2.136200e+00, float 2.296100e+00, float 2.452300e+00, float 2.608300e+00, float 2.761300e+00, float 2.920200e+00, float 8.260000e-02, float 2.000000e-01, float 3.384000e-01, float 5.144000e-01, float 6.694000e-01, float 8.377000e-01, float f0x3F7CAC08, float 1.146100e+00, float 1.295000e+00, float 1.449500e+00, float 1.587200e+00, float 1.738700e+00, float 1.879300e+00, float 2.032900e+00, float 2.172300e+00, float 2.311400e+00, float 2.441500e+00, float 2.590800e+00, float 2.735400e+00, float 2.902800e+00, float 1.063000e-01, float 2.268000e-01, float 3.442000e-01, float 4.735000e-01, float f0x3F1C91D1, float 7.507000e-01, float 9.028000e-01, float 1.076800e+00, float 1.242600e+00, float 1.405200e+00, float 1.556600e+00, float 1.701500e+00, float 1.824300e+00, float 1.974200e+00, float 2.127600e+00, float 2.282400e+00, float 2.426200e+00, float 2.595300e+00, float 2.762700e+00, float 2.929000e+00, float 1.150000e-01, float 2.814000e-01, float 4.543000e-01, float f0x3F1C0831, float f0x3F3CBFB1, float 8.592000e-01, float 9.908000e-01, float 1.110800e+00, float 1.233900e+00, float 1.359000e+00, float 1.486400e+00, float 1.616800e+00, float 1.739200e+00, float 1.875200e+00, float 2.021200e+00, float 2.168800e+00, float 2.312800e+00, float 2.486900e+00, float 2.701900e+00, float 2.923900e+00, float 9.480000e-02, float 2.074000e-01, float 3.433000e-01, float 4.943000e-01, float f0x3F227525, float 7.645000e-01, float 8.809000e-01, float 1.061000e+00, float 1.230700e+00, float 1.348700e+00, float 1.465500e+00, float 1.618600e+00, float 1.753400e+00, float 1.885900e+00, float 2.048600e+00, float 2.220000e+00, float 2.383500e+00, float 2.558100e+00, float 2.756500e+00, float 2.950200e+00, float 1.062000e-01, float 2.239000e-01, float 3.683000e-01, float 5.197000e-01, float 6.704000e-01, float 8.184000e-01, float 9.642000e-01, float 1.112700e+00, float 1.255600e+00, float 1.397600e+00, float 1.540500e+00, float 1.694000e+00, float 1.837500e+00, float 1.988800e+00, float 2.137700e+00, float 2.298000e+00, float 2.455500e+00, float 2.618400e+00, float 2.784900e+00, float 2.945200e+00, float 8.880000e-02, float 2.005000e-01, float 2.847000e-01, float 4.322000e-01, float 5.763000e-01, float 7.577000e-01, float f0x3F6D1B71, float 1.109500e+00, float 1.271900e+00, float 1.433100e+00, float 1.584300e+00, float 1.745200e+00, float 1.884500e+00, float 2.038500e+00, float 2.180500e+00, float 2.334500e+00, float 2.475000e+00, float 2.621700e+00, float 2.755500e+00, float 2.901300e+00, float 1.713000e-01, float 2.617000e-01, float 3.868000e-01, float 5.859000e-01, float 7.073000e-01, float 8.535000e-01, float 1.059300e+00, float 1.177800e+00, float 1.310900e+00, float 1.450800e+00, float 1.591000e+00, float 1.746300e+00, float 1.891100e+00, float 2.065100e+00, float 2.203500e+00, float 2.335500e+00, float 2.494700e+00, float 2.644000e+00, float 2.742400e+00, float 2.894300e+00, float 1.346000e-01, float 2.549000e-01, float 4.089000e-01, float 5.488000e-01, float f0x3F31E4F7, float f0x3F56E2EB, float 9.810000e-01, float 1.114500e+00, float 1.252800e+00, float 1.404400e+00, float 1.542300e+00, float 1.687200e+00, float 1.827400e+00, float 1.972600e+00, float 2.140300e+00, float 2.280900e+00, float 2.412800e+00, float 2.556400e+00, float 2.688700e+00, float 2.889500e+00, float 7.760000e-02, float 1.621000e-01, float 2.553000e-01, float 4.191000e-01, float 5.988000e-01, float 7.921000e-01, float f0x3F7710CB, float 1.135000e+00, float 1.293000e+00, float 1.447500e+00, float 1.601100e+00, float 1.758500e+00, float 1.906800e+00, float 2.063800e+00, float 2.210200e+00, float 2.359400e+00, float 2.509600e+00, float 2.658100e+00, float 2.809900e+00, float 2.965400e+00, float 8.640000e-02, float 1.778000e-01, float 2.854000e-01, float 4.235000e-01, float 5.568000e-01, float 7.220000e-01, float 8.963000e-01, float 1.060900e+00, float 1.221700e+00, float 1.383000e+00, float 1.542200e+00, float 1.701800e+00, float 1.855100e+00, float 2.020600e+00, float 2.178300e+00, float 2.332800e+00, float 2.486900e+00, float 2.636600e+00, float 2.792300e+00, float 2.953900e+00, float 1.144000e-01, float 2.576000e-01, float 4.186000e-01, float 5.594000e-01, float 6.875000e-01, float f0x3F527525, float 9.598000e-01, float 1.094400e+00, float 1.227300e+00, float 1.371300e+00, float 1.515200e+00, float 1.662800e+00, float 1.807000e+00, float 1.952500e+00, float 2.096500e+00, float 2.253500e+00, float 2.413200e+00, float 2.572500e+00, float 2.725000e+00, float 2.915000e+00, float 1.079000e-01, float 2.221000e-01, float 3.334000e-01, float 4.845000e-01, float 6.083000e-01, float 7.516000e-01, float f0x3F66DC5D, float 1.059400e+00, float 1.206000e+00, float 1.367300e+00, float 1.521200e+00, float 1.688000e+00, float 1.820800e+00, float 1.983100e+00, float 2.126900e+00, float 2.290900e+00, float 2.436600e+00, float 2.602700e+00, float 2.733900e+00, float 2.892400e+00, float f0x3DCB923A, float 2.233000e-01, float 3.634000e-01, float 5.145000e-01, float f0x3F28240B, float f0x3F502752, float 9.746000e-01, float 1.129600e+00, float 1.266600e+00, float 1.411600e+00, float 1.574800e+00, float 1.726400e+00, float 1.864900e+00, float 2.021700e+00, float 2.171600e+00, float 2.329300e+00, float 2.490000e+00, float 2.645500e+00, float 2.781800e+00, float 2.936200e+00, float 1.120000e-01, float 2.079000e-01, float 3.128000e-01, float 4.124000e-01, float 5.291000e-01, float 6.816000e-01, float 8.478000e-01, float 1.015000e+00, float 1.177200e+00, float 1.345600e+00, float 1.520800e+00, float 1.688200e+00, float 1.845800e+00, float 2.007800e+00, float 2.162700e+00, float 2.319800e+00, float 2.473300e+00, float 2.625100e+00, float 2.779600e+00, float 2.948900e+00, float f0x3DAEB1C4, float 2.030000e-01, float 3.669000e-01, float 5.326000e-01, float 6.678000e-01, float 8.086000e-01, float 9.526000e-01, float 1.114200e+00, float 1.255100e+00, float 1.415800e+00, float 1.569400e+00, float 1.707300e+00, float 1.843100e+00, float 1.968600e+00, float 2.115300e+00, float 2.237600e+00, float 2.368600e+00, float 2.559100e+00, float 2.732000e+00, float 2.910400e+00, float 9.050000e-02, float 2.166000e-01, float 3.539000e-01, float 5.201000e-01, float 6.700000e-01, float f0x3F55A858, float 9.883000e-01, float 1.145700e+00, float 1.271400e+00, float 1.384500e+00, float 1.517200e+00, float 1.668800e+00, float 1.800800e+00, float 1.953500e+00, float 2.101900e+00, float 2.270800e+00, float 2.413500e+00, float 2.597400e+00, float 2.748600e+00, float 2.903300e+00, float 8.400000e-03, float 3.740000e-02, float 1.640000e-02, float -1.530000e-02, float 2.880000e-02, float 1.070000e-02, float -2.550000e-02, float -2.420000e-02, float 0.000000e+00, float -5.500000e-03, float -8.100000e-03, float -7.500000e-03, float -2.200000e-03, float -5.200000e-03, float -6.900000e-03, float -1.700000e-03, float 3.000000e-04, float 9.100000e-03, float 2.800000e-03, float -2.700000e-03, float 8.500000e-03, float 4.300000e-03, float -2.350000e-02, float -4.110000e-02, float 2.020000e-02, float 3.590000e-02, float 3.760000e-02, float 3.210000e-02, float 3.060000e-02, float -3.580000e-02, float -2.760000e-02, float f0xBC1374BC, float 3.200000e-03, float 4.800000e-03, float 3.090000e-02, float 3.320000e-02, float 2.840000e-02, float 2.370000e-02, float 5.100000e-03, float -1.010000e-02, float -2.330000e-02, float -4.280000e-02, float -5.850000e-02, float -3.870000e-02, float 3.900000e-03, float 8.100000e-03, float 2.900000e-03, float -1.700000e-03, float -6.000000e-04, float -6.800000e-03, float 4.400000e-03, float 1.820000e-02, float 3.760000e-02, float 3.870000e-02, float -3.340000e-02, float -2.690000e-02, float -1.820000e-02, float -6.900000e-03, float -2.600000e-03, float 3.500000e-03, float -4.900000e-03, float -2.120000e-02, float -4.080000e-02, float -2.450000e-02, float 1.860000e-02, float 1.890000e-02, float 1.530000e-02, float 1.200000e-02, float 1.570000e-02, float 5.500000e-03, float -4.600000e-03, float 1.790000e-02, float 2.840000e-02, float -3.200000e-03, float -2.610000e-02, float -2.050000e-02, float -3.900000e-03, float 1.740000e-02, float 2.990000e-02, float 2.070000e-02, float 1.200000e-03, float -5.600000e-03, float 1.000000e-03, float 1.410000e-02, float -1.190000e-02, float 1.900000e-02, float 3.150000e-02, float 3.300000e-03, float -1.280000e-02, float 3.000000e-02, float 3.280000e-02, float 3.080000e-02, float 3.530000e-02, float 2.660000e-02, float 6.600000e-03, float -3.280000e-02, float -2.730000e-02, float 5.400000e-03, float 1.450000e-02, float 1.750000e-02, float 1.500000e-03, float -1.710000e-02, float 6.200000e-03, float -1.640000e-02, float 4.500000e-03, float -7.100000e-03, float 2.500000e-03, float 2.780000e-02, float 2.830000e-02, float 1.170000e-02, float -2.600000e-03, float -2.850000e-02, float -4.080000e-02, float -3.660000e-02, float -5.900000e-03, float -2.080000e-02, float -3.540000e-02, float -3.340000e-02, float -2.630000e-02, float -6.400000e-03, float 7.200000e-03, float -6.000000e-04, float -2.350000e-02, float -3.700000e-03, float -3.070000e-02, float -2.940000e-02, float -1.630000e-02, float -1.970000e-02, float -2.350000e-02, float 1.920000e-02, float 1.300000e-03, float -2.190000e-02, float -1.230000e-02, float -4.000000e-04, float -8.100000e-03, float -9.600000e-03, float -1.230000e-02, float -1.010000e-02, float 2.100000e-03, float 1.510000e-02, float 1.060000e-02, float 1.510000e-02, float 2.920000e-02, float 3.300000e-03, float 2.830000e-02, float 1.240000e-02, float 5.800000e-03, float -1.700000e-03, float -3.800000e-03, float 1.520000e-02, float 1.410000e-02, float 1.320000e-02, float 1.780000e-02, float 1.570000e-02, float 7.300000e-03, float 1.760000e-02, float 1.410000e-02, float 9.700000e-03, float -9.200000e-03, float -1.630000e-02, float -2.300000e-02, float -1.340000e-02, float f0xBC22339C, float -1.470000e-02, float 4.000000e-03, float -1.830000e-02, float -1.750000e-02, float -8.000000e-03, float -8.300000e-03, float -2.900000e-02, float -4.170000e-02, float -3.980000e-02, float -2.690000e-02, float -1.990000e-02, float -1.430000e-02, float -5.300000e-03, float f0xBC22339C, float -5.400000e-03, float -1.990000e-02, float -2.190000e-02, float -1.700000e-02, float 1.070000e-02, float 1.940000e-02, float 3.500000e-03, float 4.370000e-02, float 4.060000e-02, float 2.150000e-02, float 1.200000e-02, float 5.300000e-03, float -2.800000e-03, float 2.380000e-02, float 3.370000e-02, float 2.170000e-02, float 1.100000e-03, float 2.270000e-02, float 2.440000e-02, float 3.270000e-02, float 3.780000e-02, float 4.370000e-02, float 3.560000e-02, float -3.300000e-03, float 1.130000e-02, float 4.070000e-02, float 3.340000e-02, float -1.250000e-02, float -3.000000e-04, float -1.410000e-02, float -2.730000e-02, float -1.370000e-02, float f0xBC016F00, float -1.450000e-02, float -7.100000e-03, float 1.140000e-02, float 1.810000e-02, float 1.500000e-02, float 8.500000e-03, float -7.700000e-03, float -3.800000e-03, float -2.190000e-02, float -2.630000e-02, float -1.870000e-02, float -2.330000e-02, float 1.330000e-02, float 2.650000e-02, float -1.560000e-02, float -9.100000e-03, float -1.100000e-02, float -1.600000e-03, float 1.430000e-02, float 1.770000e-02, float 2.400000e-02, float 8.200000e-03, float -1.430000e-02, float -2.570000e-02, float -1.400000e-03, float 2.000000e-04, float 8.200000e-03, float 1.800000e-02, float 3.250000e-02, float 3.400000e-02, float -1.530000e-02, float -3.890000e-02, float -2.400000e-02, float 8.200000e-03, float 1.400000e-02, float 4.600000e-03, float -1.380000e-02, float -3.780000e-02, float -3.660000e-02, float 2.970000e-02, float 2.520000e-02, float f0x3BFF9724, float 6.300000e-03, float 6.000000e-04, float 4.400000e-03, float 7.400000e-03, float 9.400000e-03, float 1.130000e-02, float 1.050000e-02, float 1.370000e-02, float 4.380000e-02, float 2.620000e-02, float f0xBBFF9724, float -1.850000e-02, float -2.150000e-02, float -4.070000e-02, float -4.350000e-02, float -2.080000e-02, float -4.000000e-04, float -1.440000e-02, float -2.050000e-02, float -2.480000e-02, float -1.590000e-02, float -6.900000e-03, float -1.530000e-02, float 1.320000e-02, float 3.550000e-02, float 2.980000e-02, float 1.200000e-02, float 7.200000e-03, float 2.360000e-02, float 5.260000e-02, float 4.790000e-02, float 2.330000e-02, float -1.330000e-02, float -2.830000e-02, float -4.680000e-02, float -5.490000e-02, float -3.700000e-02, float 3.200000e-03, float 5.600000e-03, float 2.300000e-03, float 5.000000e-03, float 2.400000e-03, float 2.790000e-02, float 1.160000e-02, float -4.500000e-03, float -1.200000e-03, float 1.070000e-02, float 1.900000e-02, float 2.530000e-02, float 1.910000e-02, float 4.300000e-03, float 1.930000e-02, float -3.480000e-02, float -2.460000e-02, float 1.230000e-02, float 2.100000e-02, float 1.350000e-02, float -9.600000e-03, float -1.090000e-02, float -7.600000e-03, float -1.560000e-02, float -2.900000e-02, float 1.600000e-02, float 1.940000e-02, float 2.190000e-02, float 2.590000e-02, float 2.500000e-02, float 1.950000e-02, float 4.948000e-01, float 4.961000e-01, float 4.940000e-01, float 4.878000e-01, float 4.849000e-01, float 4.727000e-01, float 4.571000e-01, float 4.551000e-01, float 4.534000e-01, float 4.468000e-01, float 4.412000e-01, float 4.354000e-01, float 4.298000e-01, float 4.272000e-01, float 4.498000e-01, float 4.506000e-01, float 4.560000e-01, float 4.592000e-01, float 4.758000e-01, float 4.941000e-01, float 2.476000e-01, float 1.771000e-01, float 1.974000e-01, float 1.881000e-01, float 1.667000e-01, float 1.826000e-01, float 2.067000e-01, float 2.031000e-01, float 1.734000e-01, float 1.534000e-01, float 1.415000e-01, float 1.761000e-01, float 1.897000e-01, float 1.772000e-01, float 1.651000e-01, float 1.247000e-01, float 1.041000e-01, float 1.231000e-01, float 1.809000e-01, float 2.234000e-01], align 16
@ff_twinvq_wtype_to_ftype_table = hidden local_unnamed_addr constant [9 x i32] [i32 2, i32 2, i32 0, i32 2, i32 1, i32 2, i32 2, i32 1, i32 1], align 16
@.str = private unnamed_addr constant [45 x i8] c"Frame too small (%d bytes). Truncated file?\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Block align is %ld bits, expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Too many frames per packet (%ld)\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Error initializing MDCT\0A\00", align 1
@wtype_to_wsize = internal unnamed_addr constant [9 x i8] c"\00\00\02\02\02\01\00\01\01", align 1
@ff_sine_windows = external local_unnamed_addr constant [0 x ptr], align 8
@ff_log2_tab = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @ff_twinvq_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 7 uses
  %i.b = alloca [4 x i8], align 1                 ; 7 uses
  %i.c = alloca [32 x float], align 16            ; 7 uses
  %i.d = alloca [480 x float], align 16           ; 4 uses
  %i.e = alloca [20 x float], align 16            ; 38 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !17   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 33 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 7 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 34056 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !38
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %i.s = load i16, ptr %i.r, align 8, !tbaa !39
  %i.t = zext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 34100
  %i.v = load i32, ptr %i.u, align 4, !tbaa !42
  %i.w = mul nsw i32 %i.v, %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.w, ptr %i.x, align 8, !tbaa !43
  %i.y = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.052 = phi ptr [ %i.ab, %bb.c ], [ null, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !49
  %i.ae = icmp slt i32 %i.j, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %i.j) #9
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 36744
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef %i.h, i32 noundef %i.j) #9 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 34104 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 34100 ; 2 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !51
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 34024 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 34108 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 34020
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 36752
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 34088 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 36760
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 34064
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 34040
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 34048 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 34032 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.not.i59 = icmp eq ptr %.052, null
  %i.bg = getelementptr inbounds nuw i8, ptr %.052, i64 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %imdct_output.exit
  %storemerge75 = phi i32 [ 0, %.lr.ph ], [ %i.agr, %imdct_output.exit ]
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %i.bi = sext i32 %storemerge75 to i64
  %i.bj = getelementptr inbounds [1316 x i8], ptr %i.ao, i64 %i.bi ; 10 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !53 ; 5 uses
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !32  ; 5 uses
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 356
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !56 ; 3 uses
  %i.bq = zext i32 %i.bl to i64                   ; 3 uses
  %i.br = getelementptr inbounds nuw [64 x i8], ptr %i.bm, i64 %i.bq ; 6 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !57  ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 192 ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 8, !tbaa !39
  %.rhs.trunc.i = zext i8 %i.bs to i16
  %i.bv = udiv i16 %i.bu, %.rhs.trunc.i           ; 2 uses
  %.zext.i = zext i16 %i.bv to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !59
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !60
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !61
  %i.cd = zext i8 %i.cc to i32
  call fastcc void @dequant(ptr noundef nonnull %i.l, ptr noundef nonnull %i.bw, ptr noundef %i.bh, i32 noundef %i.bl, ptr noundef %i.by, ptr noundef %i.ca, i32 noundef %i.cd)
  %i.ce = load ptr, ptr %i.m, align 8, !tbaa !32  ; 2 uses
  %i.cf = load i32, ptr %i.aj, align 8, !tbaa !51 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [1316 x i8], ptr %i.ao, i64 %i.cg ; 3 uses
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !55  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 356
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !56 ; 4 uses
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.ce, i64 %i.bq
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !57  ; 3 uses
  %i.cn = icmp eq i32 %i.bl, 2                    ; 2 uses
  %i.co = icmp sgt i32 %i.ck, 0                   ; 2 uses
  br i1 %i.cn, label %.preheader.i.i, label %.preheader40.i.i

.preheader40.i.i:                                 ; preds = %bb.h
  br i1 %i.co, label %.lr.ph44.i.i, label %dec_gain.exit.thread116.i

.lr.ph44.i.i:                                     ; preds = %.preheader40.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 1092
  %.not.i.i = icmp eq i8 %i.cm, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 1094 ; 2 uses
  br i1 %.not.i.i, label %dec_gain.exit.thread116.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph44.i.i
  %i.cr = zext i8 %i.cm to i64                    ; 4 uses
  %wide.trip.count52.i.i = zext nneg i32 %i.ck to i64
  %min.iters.check161 = icmp ult i8 %i.cm, 4
  %n.vec163 = and i64 %i.cr, 252                  ; 3 uses
  %cmp.n169 = icmp eq i64 %n.vec163, %i.cr
  br label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.h
  br i1 %i.co, label %.lr.ph46.i.i, label %dec_gain.exit.thread.i

.lr.ph46.i.i:                                     ; preds = %.preheader.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 1092 ; 2 uses
  %wide.trip.count57.i.i = zext nneg i32 %i.ck to i64 ; 3 uses
  %min.iters.check150 = icmp ult i32 %i.ck, 4
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph46.i.i
  %n.vec152 = and i64 %wide.trip.count57.i.i, 2147483644 ; 3 uses
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next156, %vector.body153 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %index154
  %wide.load155 = load <4 x i8>, ptr %i.ct, align 1, !tbaa !62
  %i.cu = uitofp <4 x i8> %wide.load155 to <4 x float>
  %i.cv = fmul nnan nsz <4 x float> %i.cu, splat (float f0x424BEBEC)
  %i.cw = fadd nsz <4 x float> %i.cv, splat (float f0x41CBEBEC)
  %i.cx = fdiv nsz <4 x float> %i.cw, splat (float 1.300000e+04) ; 2 uses
  %i.cy = fcmp nsz ogt <4 x float> %i.cx, splat (float -1.000000e+00)
  %i.cz = select nsz <4 x i1> %i.cy, <4 x float> %i.cx, <4 x float> splat (float -1.000000e+00) ; 2 uses
  %i.da = fcmp nsz ogt <4 x float> %i.cz, splat (float 1.000000e+00)
  %i.db = select nsz <4 x i1> %i.da, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cz ; 2 uses
  %i.dc = fcmp nsz ogt <4 x float> %i.db, zeroinitializer
  %i.dd = select nsz <4 x i1> %i.dc, <4 x float> splat (float 1.300000e+04), <4 x float> splat (float -1.300000e+04)
  %i.de = fpext nnan ninf nsz <4 x float> %i.dd to <4 x double>
  %i.df = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %i.db)
  %i.dg = fpext <4 x float> %i.df to <4 x double>
  %i.dh = fmul nsz <4 x double> %i.dg, splat (double f0x401275E2271BBA31)
  %i.di = call nsz <4 x double> @llvm.exp.v4f64(<4 x double> %i.dh)
  %i.dj = fadd nsz <4 x double> %i.di, splat (double -1.000000e+00)
  %i.dk = fmul nsz <4 x double> %i.dj, %i.de
  %i.dl = fdiv nsz <4 x double> %i.dk, splat (double 1.000000e+02)
  %i.dm = fptrunc nsz <4 x double> %i.dl to <4 x float>
  %i.dn = fmul nsz <4 x float> %i.dm, splat (float f0x39000000)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index154
  store <4 x float> %i.dn, ptr %i.do, align 16, !tbaa !63
  %index.next156 = add nuw i64 %index154, 4       ; 2 uses
  %i.dp = icmp eq i64 %index.next156, %n.vec152
  br i1 %i.dp, label %middle.block157, label %vector.body153, !llvm.loop !64

middle.block157:                                  ; preds = %vector.body153
  %cmp.n158 = icmp eq i64 %n.vec152, %wide.trip.count57.i.i
  br i1 %cmp.n158, label %dec_gain.exit.thread.i, label %scalar.ph149.preheader

scalar.ph149.preheader:                           ; preds = %.lr.ph46.i.i, %middle.block157
  %indvars.iv54.i.i.ph = phi i64 [ 0, %.lr.ph46.i.i ], [ %n.vec152, %middle.block157 ]
  br label %scalar.ph149

scalar.ph149:                                     ; preds = %scalar.ph149.preheader, %scalar.ph149
  %indvars.iv54.i.i = phi i64 [ %indvars.iv.next55.i.i, %scalar.ph149 ], [ %indvars.iv54.i.i.ph, %scalar.ph149.preheader ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv54.i.i
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !62
  %i.ds = uitofp i8 %i.dr to float
  %i.dt = fmul nnan nsz float %i.ds, f0x424BEBEC
  %i.du = fadd nsz float %i.dt, f0x41CBEBEC
  %i.dv = fdiv nsz float %i.du, 1.300000e+04      ; 2 uses
end_hunk_0
begin_hunk_1_@ff_twinvq_decode_frame:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv49.i.i
  %i.en = load i8, ptr %i.em, align 1, !tbaa !62
  %i.eo = uitofp i8 %i.en to float
  %i.ep = fmul nnan nsz float %i.eo, f0x424BEBEC
  %i.eq = fadd nsz float %i.ep, f0x41CBEBEC
  %i.er = fdiv nsz float %i.eq, 1.300000e+04      ; 2 uses
  %i.es = fcmp nsz ogt float %i.er, -1.000000e+00
  %i.et = select nsz i1 %i.es, float %i.er, float -1.000000e+00 ; 2 uses
  %i.eu = fcmp nsz ogt float %i.et, 1.000000e+00
  %..i.i38.i.i = select nsz i1 %i.eu, float 1.000000e+00, float %i.et ; 2 uses
  %i.ev = fcmp nsz ogt float %..i.i38.i.i, 0.000000e+00
  %i.ew = select nsz i1 %i.ev, float 1.300000e+04, float -1.300000e+04
  %i.ex = fpext nnan ninf nsz float %i.ew to double
  %i.ey = call nsz float @llvm.fabs.f32(float %..i.i38.i.i)
  %i.ez = fpext float %i.ey to double
  %i.fa = fmul nsz double %i.ez, f0x401275E2271BBA31
  %i.fb = call nsz double @llvm.exp.f64(double %i.fa)
  %i.fc = fadd nsz double %i.fb, -1.000000e+00
  %i.fd = fmul nsz double %i.fc, %i.ex
  %i.fe = fdiv nsz double %i.fd, 1.000000e+02
  %i.ff = fptrunc nsz double %i.fe to float
  %i.fg = fmul nsz float %i.ff, f0x34000000       ; 2 uses
  %i.fh = mul nuw nsw i64 %indvars.iv49.i.i, %i.cr ; 2 uses
  br i1 %min.iters.check161, label %scalar.ph160.preheader, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fg, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next167, %vector.body164 ] ; 2 uses
  %i.fi = add nuw nsw i64 %index165, %i.fh        ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.fi
  %wide.load166 = load <4 x i8>, ptr %i.fj, align 1, !tbaa !62
  %i.fk = uitofp <4 x i8> %wide.load166 to <4 x float>
  %i.fl = fmul nnan nsz <4 x float> %i.fk, splat (float f0x4311294A)
  %i.fm = fadd nsz <4 x float> %i.fl, splat (float f0x4291294A)
  %i.fn = fdiv nsz <4 x float> %i.fm, splat (float 4.500000e+03) ; 2 uses
  %i.fo = fcmp nsz ogt <4 x float> %i.fn, splat (float -1.000000e+00)
  %i.fp = select nsz <4 x i1> %i.fo, <4 x float> %i.fn, <4 x float> splat (float -1.000000e+00) ; 2 uses
  %i.fq = fcmp nsz ogt <4 x float> %i.fp, splat (float 1.000000e+00)
  %i.fr = select nsz <4 x i1> %i.fq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fp ; 2 uses
  %i.fs = fcmp nsz ogt <4 x float> %i.fr, zeroinitializer
  %i.ft = select nsz <4 x i1> %i.fs, <4 x float> splat (float 4.500000e+03), <4 x float> splat (float -4.500000e+03)
  %i.fu = fpext nnan ninf nsz <4 x float> %i.ft to <4 x double>
  %i.fv = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fr)
  %i.fw = fpext <4 x float> %i.fv to <4 x double>
  %i.fx = fmul nsz <4 x double> %i.fw, splat (double f0x401275E2271BBA31)
  %i.fy = call nsz <4 x double> @llvm.exp.v4f64(<4 x double> %i.fx)
  %i.fz = fadd nsz <4 x double> %i.fy, splat (double -1.000000e+00)
  %i.ga = fmul nsz <4 x double> %i.fz, %i.fu
  %i.gb = fdiv nsz <4 x double> %i.ga, splat (double 1.000000e+02)
  %i.gc = fptrunc nsz <4 x double> %i.gb to <4 x float>
  %i.gd = fmul nsz <4 x float> %broadcast.splat, %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fi
  store <4 x float> %i.gd, ptr %i.ge, align 4, !tbaa !63
  %index.next167 = add nuw i64 %index165, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next167, %n.vec163
  br i1 %i.gf, label %middle.block168, label %vector.body164, !llvm.loop !69

middle.block168:                                  ; preds = %vector.body164
  br i1 %cmp.n169, label %._crit_edge.i.i, label %scalar.ph160.preheader

scalar.ph160.preheader:                           ; preds = %.lr.ph.i.i, %middle.block168
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec163, %middle.block168 ]
  br label %scalar.ph160

scalar.ph160:                                     ; preds = %scalar.ph160.preheader, %scalar.ph160
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph160 ], [ %indvars.iv.i.i.ph, %scalar.ph160.preheader ] ; 2 uses
  %i.gg = add nuw nsw i64 %indvars.iv.i.i, %i.fh  ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !62
  %i.gj = uitofp i8 %i.gi to float
  %i.gk = fmul nnan nsz float %i.gj, f0x4311294A
  %i.gl = fadd nsz float %i.gk, f0x4291294A
  %i.gm = fdiv nsz float %i.gl, 4.500000e+03      ; 2 uses
  %i.gn = fcmp nsz ogt float %i.gm, -1.000000e+00
  %i.go = select nsz i1 %i.gn, float %i.gm, float -1.000000e+00 ; 2 uses
  %i.gp = fcmp nsz ogt float %i.go, 1.000000e+00
  %..i.i39.i.i = select nsz i1 %i.gp, float 1.000000e+00, float %i.go ; 2 uses
  %i.gq = fcmp nsz ogt float %..i.i39.i.i, 0.000000e+00
  %i.gr = select nsz i1 %i.gq, float 4.500000e+03, float -4.500000e+03
  %i.gs = fpext nnan ninf nsz float %i.gr to double
  %i.gt = call nsz float @llvm.fabs.f32(float %..i.i39.i.i)
  %i.gu = fpext float %i.gt to double
  %i.gv = fmul nsz double %i.gu, f0x401275E2271BBA31
  %i.gw = call nsz double @llvm.exp.f64(double %i.gv)
  %i.gx = fadd nsz double %i.gw, -1.000000e+00
  %i.gy = fmul nsz double %i.gx, %i.gs
  %i.gz = fdiv nsz double %i.gy, 1.000000e+02
  %i.ha = fptrunc nsz double %i.gz to float
  %i.hb = fmul nsz float %i.fg, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gg
  store float %i.hb, ptr %i.hc, align 4, !tbaa !63
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.cr
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph160, !llvm.loop !70

._crit_edge.i.i:                                  ; preds = %scalar.ph160, %middle.block168
  %indvars.iv.next50.i.i = add nuw nsw i64 %indvars.iv49.i.i, 1 ; 2 uses
  %exitcond53.not.i.i = icmp eq i64 %indvars.iv.next50.i.i, %wide.trip.count52.i.i
  br i1 %exitcond53.not.i.i, label %dec_gain.exit.thread116.i, label %.lr.ph.i.i, !llvm.loop !71

dec_gain.exit.thread.i:                           ; preds = %scalar.ph149, %middle.block157, %.preheader.i.i
  %i.hd = load i32, ptr %i.ap, align 4, !tbaa !72 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.bm, i64 226
  %i.hf = load i8, ptr %i.he, align 2, !tbaa !73
  %i.hg = zext i8 %i.hf to i32
  %i.hh = mul nsw i32 %i.bp, %i.hg
  %i.hi = add i32 %i.hd, -1
  %i.hj = add i32 %i.hi, %i.hh
  %i.hk = sdiv i32 %i.hj, %i.hd                   ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bj, i64 1032
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bm, i64 216
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !74 ; 2 uses
  %i.ho = shl nsw i32 %i.hk, 6
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.hn, i64 %i.hp
  call fastcc void @dequant(ptr noundef nonnull %i.l, ptr noundef nonnull %i.hl, ptr noundef nonnull %i.d, i32 noundef 3, ptr noundef %i.hn, ptr noundef %i.hq, i32 noundef %i.hk)
  br label %dec_gain.exit.thread116.i

dec_gain.exit.thread116.i:                        ; preds = %._crit_edge.i.i, %dec_gain.exit.thread.i, %.lr.ph44.i.i, %.preheader40.i.i
  %i.hr = icmp sgt i32 %i.bp, 0
  br i1 %i.hr, label %.lr.ph127.i, label %read_and_decode_spectrum.exit

.lr.ph127.i:                                      ; preds = %dec_gain.exit.thread116.i
  %.not.i = icmp eq i8 %i.bs, 0
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bj, i64 1126
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bj, i64 1254
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bj, i64 1300
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bj, i64 1308
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bm, i64 226
  %i.hx = getelementptr inbounds nuw i8, ptr %i.bj, i64 1286
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bj, i64 1288
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bj, i64 1296
  %i.ia = zext i16 %i.bv to i64                   ; 2 uses
  %i.ib = zext i8 %i.bs to i64                    ; 2 uses
  %wide.trip.count138.i = zext nneg i32 %i.bp to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge125.i, %.lr.ph127.i
  %indvars.iv135.i = phi i64 [ 0, %.lr.ph127.i ], [ %indvars.iv.next136.i, %._crit_edge125.i ] ; 14 uses
  %i.ic = mul nuw nsw i64 %indvars.iv135.i, 80
  %i.id = getelementptr i8, ptr %i.l, i64 %i.ic
  %scevgep = getelementptr i8, ptr %i.id, i64 76  ; 3 uses
  %i.ie = load i16, ptr %i.bt, align 8, !tbaa !39
  %i.if = zext i16 %i.ie to i64
  %i.ig = mul nuw nsw i64 %indvars.iv135.i, %i.if
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ig ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ii = getelementptr inbounds nuw [64 x i8], ptr %i.hs, i64 %indvars.iv135.i
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %indvars.iv135.i
  %i.ik = mul nuw nsw i64 %indvars.iv135.i, %i.ib
  %invariant.gep153.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ik
  %i.il = trunc nuw nsw i64 %indvars.iv135.i to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 5 uses
  %i.im = load ptr, ptr %i.aq, align 8, !tbaa !75
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv.i
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 %indvars.iv.i
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !62
  %i.iq = zext i8 %i.ip to i32
  %i.ir = load ptr, ptr %i.ar, align 8, !tbaa !76
  %gep154.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep153.i, i64 %indvars.iv.i
  %i.is = load float, ptr %gep154.i, align 4, !tbaa !63
  call void %i.im(ptr noundef nonnull %i.l, ptr noundef nonnull %i.in, i32 noundef %i.iq, i32 noundef %i.il, ptr noundef %i.ir, float noundef %i.is, i32 noundef %i.bl) #9, !inline_history !77
  %i.it = load ptr, ptr %i.as, align 8, !tbaa !78
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !79
  %i.iv = mul nuw nsw i64 %indvars.iv.i, %i.ia
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.iv ; 2 uses
  %i.ix = load ptr, ptr %i.ar, align 8, !tbaa !76
  call void %i.iu(ptr noundef %i.iw, ptr noundef %i.iw, ptr noundef %i.ix, i32 noundef %.zext.i) #9, !inline_history !77
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ib
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.j, !llvm.loop !81

._crit_edge.i:                                    ; preds = %bb.j, %bb.i
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i
  %i.iy = load ptr, ptr %i.at, align 8, !tbaa !82
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv135.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !72
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv135.i
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !72
  %i.jd = load i8, ptr %i.hw, align 2, !tbaa !73
  %i.je = zext i8 %i.jd to i64
  %i.jf = mul nuw nsw i64 %indvars.iv135.i, %i.je
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jf
  call void %i.iy(ptr noundef nonnull %i.l, i32 noundef %i.ja, i32 noundef %i.jc, ptr noundef nonnull %i.jg, ptr noundef %i.ih) #9, !inline_history !77
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv135.i
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !62  ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv135.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hz, i64 %indvars.iv135.i
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !62  ; 2 uses
  %i.jm = zext i8 %i.jl to i32
  %i.jn = getelementptr inbounds nuw [80 x i8], ptr %i.au, i64 %indvars.iv135.i ; 4 uses
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !32 ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val.i, i64 200
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !83 ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.val.i, i64 209
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !84
  %i.js = zext nneg i8 %i.jr to i32
  %i.jt = getelementptr inbounds nuw i8, ptr %.val.i, i64 194
  %i.ju = load i8, ptr %i.jt, align 2, !tbaa !85  ; 8 uses
  %i.jv = zext i8 %i.ju to i32                    ; 6 uses
  %i.jw = shl i32 %i.jv, %i.js
  %i.jx = sext i32 %i.jw to i64                   ; 3 uses
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.val.i, i64 210
  %i.ka = load i8, ptr %i.jz, align 2, !tbaa !86
  %i.kb = zext nneg i8 %i.ka to i32
  %i.kc = shl i32 %i.jv, %i.kb
  %i.kd = sext i32 %i.kc to i64                   ; 2 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.kd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 -2, ptr %i.b, align 1, !tbaa !62
  %i.kf = getelementptr inbounds nuw i8, ptr %.val.i, i64 211
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !87  ; 4 uses
  %i.kh = icmp eq i8 %i.kg, 4
  %i.ki = select i1 %i.kh, i8 -2, i8 1            ; 2 uses
  store i8 %i.ki, ptr %i.av, align 1, !tbaa !62
  store i8 %i.ki, ptr %i.aw, align 1, !tbaa !62
  store i8 0, ptr %i.ax, align 1, !tbaa !62
  %i.kj = zext i8 %i.kg to i32
  %.not.i98.i = icmp eq i8 %i.kg, 0
  br i1 %.not.i98.i, label %._crit_edge.i99.i, label %.lr.ph4.i.i

.lr.ph4.i.i:                                      ; preds = %bb.l
  %i.kk = ptrtoaddr ptr %i.jp to i64              ; 2 uses
  %i.kl = zext i8 %i.ji to i32
  %i.km = mul nuw nsw i32 %i.jv, %i.kl
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = zext i8 %i.ju to i64                    ; 2 uses
  %wide.trip.count13.i.i = zext i8 %i.kg to i64
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.jp, i64 %i.kn ; 6 uses
  %4 = shl nuw nsw i64 %i.ko, 2
  %5 = zext i8 %i.ji to i64
  %6 = mul nuw nsw i64 %4, %5
  %7 = add i64 %6, %i.kk
  %invariant.op = sub i64 %i.kk, %i.f
  %i.kp = sub i64 %7, %i.f
  %diff.check133 = icmp ugt i64 %i.kp, -32
  br label %bb.m

.loopexit.i.i:                                    ; preds = %scalar.ph135.prol.loopexit, %scalar.ph135, %middle.block146, %bb.m
  %.162.lcssa.i.i = phi i32 [ %.0612.i.i, %bb.m ], [ %i.kw, %middle.block146 ], [ %i.kw, %scalar.ph135 ], [ %i.kw, %scalar.ph135.prol.loopexit ]
  %exitcond14.not.i.i = icmp eq i64 %indvars.iv.next11.i.i, %wide.trip.count13.i.i
  br i1 %exitcond14.not.i.i, label %._crit_edge.i99.i, label %bb.m, !llvm.loop !88

bb.m:                                             ; preds = %.loopexit.i.i, %.lr.ph4.i.i
  %indvars.iv10.i.i = phi i64 [ 0, %.lr.ph4.i.i ], [ %indvars.iv.next11.i.i, %.loopexit.i.i ] ; 3 uses
  %.0612.i.i = phi i32 [ 0, %.lr.ph4.i.i ], [ %.162.lcssa.i.i, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.next11.i.i = add nuw nsw i64 %indvars.iv10.i.i, 1 ; 3 uses
  %i.kq = mul nuw nsw i64 %indvars.iv.next11.i.i, %i.ko
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv10.i.i
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !62
  %i.kt = sext i8 %i.ks to i32
  %i.ku = trunc nuw nsw i64 %i.kq to i32
  %i.kv = add nsw i32 %i.ku, %i.kt
  %i.kw = sdiv i32 %i.kv, %i.kj                   ; 5 uses
  %i.kx = icmp slt i32 %.0612.i.i, %i.kw
  br i1 %i.kx, label %.lr.ph.i100.i, label %.loopexit.i.i

.lr.ph.i100.i:                                    ; preds = %bb.m
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv10.i.i
  %i.kz = sext i32 %.0612.i.i to i64              ; 5 uses
  %wide.trip.count.i.i = sext i32 %i.kw to i64    ; 4 uses
  %i.la = load i8, ptr %i.ky, align 1, !tbaa !62
  %i.lb = zext i8 %i.la to i32
  %i.lc = mul nuw nsw i32 %i.lb, %i.jv
  %i.ld = zext nneg i32 %i.lc to i64              ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.jy, i64 %i.ld ; 6 uses
  %i.le = sub nsw i64 %wide.trip.count.i.i, %i.kz ; 3 uses
  %min.iters.check136 = icmp ult i64 %i.le, 8
  br i1 %min.iters.check136, label %scalar.ph135.preheader, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph.i100.i
  %i.lf = add nsw i64 %i.jx, %i.ld
  %i.lg = shl nsw i64 %i.lf, 2
  %.reass = add i64 %i.lg, %invariant.op
  %diff.check = icmp ugt i64 %.reass, -32
  %conflict.rdx134 = or i1 %diff.check, %diff.check133
  br i1 %conflict.rdx134, label %scalar.ph135.preheader, label %vector.ph137

vector.ph137:                                     ; preds = %vector.memcheck132
  %n.vec138 = and i64 %i.le, -8                   ; 3 uses
  %i.lh = add nsw i64 %n.vec138, %i.kz
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph137
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.li = add i64 %index140, %i.kz                ; 3 uses
  %i.lj = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.li ; 2 uses
  %i.lk = getelementptr i8, ptr %i.lj, i64 16
  %wide.load141 = load <4 x float>, ptr %i.lj, align 4, !tbaa !63
  %wide.load142 = load <4 x float>, ptr %i.lk, align 4, !tbaa !63
  %i.ll = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.li ; 2 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 16
  %wide.load143 = load <4 x float>, ptr %i.ll, align 4, !tbaa !63
  %wide.load144 = load <4 x float>, ptr %i.lm, align 4, !tbaa !63
  %i.ln = fadd nsz <4 x float> %wide.load141, %wide.load143
  %i.lo = fadd nsz <4 x float> %wide.load142, %wide.load144
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.li ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store <4 x float> %i.ln, ptr %i.lp, align 4, !tbaa !63
  store <4 x float> %i.lo, ptr %i.lq, align 4, !tbaa !63
  %index.next145 = add nuw i64 %index140, 8       ; 2 uses
  %i.lr = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.lr, label %middle.block146, label %vector.body139, !llvm.loop !89

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.le, %n.vec138
  br i1 %cmp.n147, label %.loopexit.i.i, label %scalar.ph135.preheader

scalar.ph135.preheader:                           ; preds = %vector.memcheck132, %.lr.ph.i100.i, %middle.block146
  %indvars.iv.i101.i.ph = phi i64 [ %i.kz, %vector.memcheck132 ], [ %i.kz, %.lr.ph.i100.i ], [ %i.lh, %middle.block146 ] ; 4 uses
  %i.ls = sub nsw i64 %wide.trip.count.i.i, %indvars.iv.i101.i.ph
  %xtraiter = and i64 %i.ls, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph135.prol.loopexit, label %scalar.ph135.prol

scalar.ph135.prol:                                ; preds = %scalar.ph135.preheader, %scalar.ph135.prol
  %indvars.iv.i101.i.prol = phi i64 [ %indvars.iv.next.i102.i.prol, %scalar.ph135.prol ], [ %indvars.iv.i101.i.ph, %scalar.ph135.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph135.prol ], [ 0, %scalar.ph135.preheader ]
  %gep.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i101.i.prol
  %i.lt = load float, ptr %gep.i.i.prol, align 4, !tbaa !63
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i101.i.prol
  %i.lu = load float, ptr %gep.i.prol, align 4, !tbaa !63
  %i.lv = fadd nsz float %i.lt, %i.lu
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i101.i.prol
  store float %i.lv, ptr %i.lw, align 4, !tbaa !63
  %indvars.iv.next.i102.i.prol = add nsw i64 %indvars.iv.i101.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph135.prol.loopexit, label %scalar.ph135.prol, !llvm.loop !90

scalar.ph135.prol.loopexit:                       ; preds = %scalar.ph135.prol, %scalar.ph135.preheader
  %indvars.iv.i101.i.unr = phi i64 [ %indvars.iv.i101.i.ph, %scalar.ph135.preheader ], [ %indvars.iv.next.i102.i.prol, %scalar.ph135.prol ]
  %i.lx = sub nsw i64 %indvars.iv.i101.i.ph, %wide.trip.count.i.i
  %i.ly = icmp ugt i64 %i.lx, -4
  br i1 %i.ly, label %.loopexit.i.i, label %scalar.ph135

scalar.ph135:                                     ; preds = %scalar.ph135.prol.loopexit, %scalar.ph135
  %indvars.iv.i101.i = phi i64 [ %indvars.iv.next.i102.i.3, %scalar.ph135 ], [ %indvars.iv.i101.i.unr, %scalar.ph135.prol.loopexit ] ; 7 uses
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i101.i
  %i.lz = load float, ptr %gep.i.i, align 4, !tbaa !63
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i101.i
  %i.ma = load float, ptr %gep.i, align 4, !tbaa !63
  %i.mb = fadd nsz float %i.lz, %i.ma
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.i101.i
  store float %i.mb, ptr %i.mc, align 4, !tbaa !63
  %indvars.iv.next.i102.i = add nsw i64 %indvars.iv.i101.i, 1 ; 3 uses
  %gep.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i102.i
  %i.md = load float, ptr %gep.i.i.1, align 4, !tbaa !63
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i102.i
  %i.me = load float, ptr %gep.i.1, align 4, !tbaa !63
  %i.mf = fadd nsz float %i.md, %i.me
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next.i102.i
  store float %i.mf, ptr %i.mg, align 4, !tbaa !63
  %indvars.iv.next.i102.i.1 = add nsw i64 %indvars.iv.i101.i, 2 ; 3 uses
  %gep.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i102.i.1
  %i.mh = load float, ptr %gep.i.i.2, align 4, !tbaa !63
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i102.i.1
  %i.mi = load float, ptr %gep.i.2, align 4, !tbaa !63
  %i.mj = fadd nsz float %i.mh, %i.mi
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next.i102.i.1
  store float %i.mj, ptr %i.mk, align 4, !tbaa !63
  %indvars.iv.next.i102.i.2 = add nsw i64 %indvars.iv.i101.i, 3 ; 3 uses
  %gep.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.next.i102.i.2
  %i.ml = load float, ptr %gep.i.i.3, align 4, !tbaa !63
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i102.i.2
  %i.mm = load float, ptr %gep.i.3, align 4, !tbaa !63
  %i.mn = fadd nsz float %i.ml, %i.mm
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next.i102.i.2
  store float %i.mn, ptr %i.mo, align 4, !tbaa !63
  %indvars.iv.next.i102.i.3 = add nsw i64 %indvars.iv.i101.i, 4 ; 2 uses
  %exitcond.not.i103.i.3 = icmp eq i64 %indvars.iv.next.i102.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i103.i.3, label %.loopexit.i.i, label %scalar.ph135, !llvm.loop !92

._crit_edge.i99.i:                                ; preds = %.loopexit.i.i, %bb.l
  %i.mp = icmp ugt i8 %i.ju, 1                    ; 2 uses
  br i1 %i.mp, label %.lr.ph.preheader.i.i.i, label %rearrange_lsp.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge.i99.i
  %wide.trip.count.i.i.i = zext i8 %i.ju to i64
  %i.mq = add nsw i64 %wide.trip.count.i.i.i, -1  ; 3 uses
  %xtraiter177 = and i64 %i.mq, 1
  %i.mr = icmp eq i8 %i.ju, 2
  br i1 %i.mr, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.mq, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.preheader.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i.i ; 2 uses
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !63 ; 2 uses
  %i.mu = getelementptr i8, ptr %i.ms, i64 -4     ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !63 ; 2 uses
  %i.mw = fsub nsz float %i.mt, %i.mv
  %i.mx = fcmp nsz olt float %i.mw, f0x38D1B717
  br i1 %i.mx, label %bb.n, label %.lr.ph.i.i.i.1

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.my = fadd nsz float %i.mt, %i.mv
  %i.mz = fmul nsz float %i.my, 5.000000e-01
  %i.na = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.nb = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nc = fadd nsz <2 x float> %i.nb, <float -5.000000e-05, float 5.000000e-05>
  store <2 x float> %i.nc, ptr %i.mu, align 4, !tbaa !63
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.n, %.lr.ph.i.i.i
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i.i ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !63 ; 2 uses
  %i.ng = load float, ptr %i.nd, align 4, !tbaa !63 ; 2 uses
  %i.nh = fsub nsz float %i.nf, %i.ng
  %i.ni = fcmp nsz olt float %i.nh, f0x38D1B717
  br i1 %i.ni, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i.i.1
  %i.nj = fadd nsz float %i.nf, %i.ng
  %i.nk = fmul nsz float %i.nj, 5.000000e-01
  %i.nl = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.nm = shufflevector <2 x float> %i.nl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nn = fadd nsz <2 x float> %i.nm, <float -5.000000e-05, float 5.000000e-05>
  store <2 x float> %i.nn, ptr %i.nd, align 4, !tbaa !63
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i.i.1
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %rearrange_lsp.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !93

rearrange_lsp.exit.i.i.loopexit.unr-lcssa:        ; preds = %bb.p
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %rearrange_lsp.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %rearrange_lsp.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %rearrange_lsp.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod179 = trunc i64 %i.mq to i1
  call void @llvm.assume(i1 %lcmp.mod179)
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i.i.epil.init ; 2 uses
  %i.np = load float, ptr %i.no, align 4, !tbaa !63 ; 2 uses
  %i.nq = getelementptr i8, ptr %i.no, i64 -4     ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !63 ; 2 uses
  %i.ns = fsub nsz float %i.np, %i.nr
  %i.nt = fcmp nsz olt float %i.ns, f0x38D1B717
  br i1 %i.nt, label %bb.q, label %rearrange_lsp.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.nu = fadd nsz float %i.np, %i.nr
  %i.nv = fmul nsz float %i.nu, 5.000000e-01
  %i.nw = insertelement <2 x float> poison, float %i.nv, i64 0
  %i.nx = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ny = fadd nsz <2 x float> %i.nx, <float -5.000000e-05, float 5.000000e-05>
  store <2 x float> %i.ny, ptr %i.nq, align 4, !tbaa !63
  br label %rearrange_lsp.exit.i.i

rearrange_lsp.exit.i.i:                           ; preds = %rearrange_lsp.exit.i.i.loopexit.unr-lcssa, %bb.q, %.lr.ph.i.i.i.epil.preheader, %._crit_edge.i99.i
  %.not8.i.i = icmp eq i8 %i.ju, 0
  br i1 %.not8.i.i, label %decode_lsp.exit.i, label %.lr.ph6.i.i

.lr.ph6.i.i:                                      ; preds = %rearrange_lsp.exit.i.i
  %i.nz = mul nuw nsw i32 %i.jv, %i.jm
  %i.oa = zext nneg i32 %i.nz to i64
  %wide.trip.count18.i.i = zext i8 %i.ju to i64   ; 9 uses
  %invariant.gep21.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.oa ; 6 uses
  %min.iters.check120 = icmp ult i8 %i.ju, 8
  br i1 %min.iters.check120, label %scalar.ph119.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph6.i.i
  %i.ob = shl nuw nsw i64 %wide.trip.count18.i.i, 2 ; 2 uses
  %scevgep109 = getelementptr i8, ptr %scevgep, i64 %i.ob ; 2 uses
  %scevgep110 = getelementptr i8, ptr %i.e, i64 %i.ob ; 2 uses
  %8 = zext i8 %i.jl to i64
  %9 = shl nuw nsw i64 %8, 2
  %i.oc = add nuw nsw i64 %9, 4
  %10 = mul nuw nsw i64 %i.oc, %wide.trip.count18.i.i
  %i.od = add nsw i64 %i.kd, %i.jx
  %i.oe = shl nsw i64 %i.od, 2
  %11 = getelementptr i8, ptr %i.jp, i64 %i.oe
  %scevgep111 = getelementptr i8, ptr %11, i64 %10 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep110
  %bound1 = icmp ult ptr %i.e, %scevgep109
  %found.conflict = and i1 %bound0, %bound1
  %bound0112 = icmp ult ptr %scevgep, %scevgep111
  %bound1113 = icmp ult ptr %invariant.gep21.i.i, %scevgep109
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx = or i1 %found.conflict, %found.conflict114
  %bound0115 = icmp ult ptr %i.e, %scevgep111
  %bound1116 = icmp ult ptr %invariant.gep21.i.i, %scevgep110
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx, %found.conflict117
  br i1 %conflict.rdx118, label %scalar.ph119.preheader, label %vector.ph121

vector.ph121:                                     ; preds = %vector.memcheck
  %n.vec122 = and i64 %wide.trip.count18.i.i, 252 ; 3 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next128, %vector.body123 ] ; 4 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep21.i.i, i64 %index124
  %wide.load125 = load <4 x float>, ptr %i.of, align 4, !tbaa !63, !alias.scope !94 ; 2 uses
  %i.og = fsub nsz <4 x float> splat (float 1.000000e+00), %wide.load125
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %index124 ; 2 uses
  %wide.load126 = load <4 x float>, ptr %i.oh, align 4, !tbaa !63, !alias.scope !97, !noalias !99
  %i.oi = fmul nsz <4 x float> %wide.load125, %wide.load126
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index124 ; 2 uses
  %wide.load127 = load <4 x float>, ptr %i.oj, align 16, !tbaa !63, !alias.scope !101, !noalias !94 ; 2 uses
  store <4 x float> %wide.load127, ptr %i.oh, align 4, !tbaa !63, !alias.scope !97, !noalias !99
  %i.ok = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load127, <4 x float> %i.og, <4 x float> %i.oi)
  store <4 x float> %i.ok, ptr %i.oj, align 16, !tbaa !63, !alias.scope !101, !noalias !94
  %index.next128 = add nuw i64 %index124, 4       ; 2 uses
  %i.ol = icmp eq i64 %index.next128, %n.vec122
  br i1 %i.ol, label %middle.block129, label %vector.body123, !llvm.loop !102

middle.block129:                                  ; preds = %vector.body123
  %cmp.n130 = icmp eq i64 %n.vec122, %wide.trip.count18.i.i
  br i1 %cmp.n130, label %._crit_edge7.i.i, label %scalar.ph119.preheader

scalar.ph119.preheader:                           ; preds = %vector.memcheck, %.lr.ph6.i.i, %middle.block129
  %indvars.iv15.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph6.i.i ], [ %n.vec122, %middle.block129 ] ; 6 uses
  %xtraiter180 = and i64 %wide.trip.count18.i.i, 1
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %scalar.ph119.prol.loopexit, label %scalar.ph119.prol

scalar.ph119.prol:                                ; preds = %scalar.ph119.preheader
  %gep22.i.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep21.i.i, i64 %indvars.iv15.i.i.ph
  %i.om = load float, ptr %gep22.i.i.prol, align 4, !tbaa !63 ; 2 uses
  %i.on = fsub nsz float 1.000000e+00, %i.om
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv15.i.i.ph ; 2 uses
  %i.op = load float, ptr %i.oo, align 4, !tbaa !63
  %i.oq = fmul nsz float %i.om, %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv15.i.i.ph ; 2 uses
  %i.os = load float, ptr %i.or, align 16, !tbaa !63 ; 2 uses
  store float %i.os, ptr %i.oo, align 4, !tbaa !63
  %i.ot = call nsz float @llvm.fmuladd.f32(float %i.os, float %i.on, float %i.oq)
  store float %i.ot, ptr %i.or, align 16, !tbaa !63
  %indvars.iv.next16.i.i.prol = or disjoint i64 %indvars.iv15.i.i.ph, 1
  br label %scalar.ph119.prol.loopexit

scalar.ph119.prol.loopexit:                       ; preds = %scalar.ph119.prol, %scalar.ph119.preheader
  %indvars.iv15.i.i.unr = phi i64 [ %indvars.iv15.i.i.ph, %scalar.ph119.preheader ], [ %indvars.iv.next16.i.i.prol, %scalar.ph119.prol ]
  %i.ou = add nsw i64 %wide.trip.count18.i.i, -1
  %i.ov = icmp eq i64 %indvars.iv15.i.i.ph, %i.ou
  br i1 %i.ov, label %._crit_edge7.i.i, label %scalar.ph119

scalar.ph119:                                     ; preds = %scalar.ph119.prol.loopexit, %scalar.ph119
  %indvars.iv15.i.i = phi i64 [ %indvars.iv.next16.i.i.1, %scalar.ph119 ], [ %indvars.iv15.i.i.unr, %scalar.ph119.prol.loopexit ] ; 5 uses
  %gep22.i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep21.i.i, i64 %indvars.iv15.i.i
  %i.ow = load float, ptr %gep22.i.i, align 4, !tbaa !63 ; 2 uses
  %i.ox = fsub nsz float 1.000000e+00, %i.ow
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv15.i.i ; 2 uses
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !63
  %i.pa = fmul nsz float %i.ow, %i.oz
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv15.i.i ; 2 uses
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !63 ; 2 uses
  store float %i.pc, ptr %i.oy, align 4, !tbaa !63
  %i.pd = call nsz float @llvm.fmuladd.f32(float %i.pc, float %i.ox, float %i.pa)
  store float %i.pd, ptr %i.pb, align 4, !tbaa !63
  %indvars.iv.next16.i.i = add nuw nsw i64 %indvars.iv15.i.i, 1 ; 3 uses
  %gep22.i.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep21.i.i, i64 %indvars.iv.next16.i.i
  %i.pe = load float, ptr %gep22.i.i.1, align 4, !tbaa !63 ; 2 uses
  %i.pf = fsub nsz float 1.000000e+00, %i.pe
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next16.i.i ; 2 uses
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !63
  %i.pi = fmul nsz float %i.pe, %i.ph
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next16.i.i ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !63 ; 2 uses
  store float %i.pk, ptr %i.pg, align 4, !tbaa !63
  %i.pl = call nsz float @llvm.fmuladd.f32(float %i.pk, float %i.pf, float %i.pi)
  store float %i.pl, ptr %i.pj, align 4, !tbaa !63
  %indvars.iv.next16.i.i.1 = add nuw nsw i64 %indvars.iv15.i.i, 2 ; 2 uses
  %exitcond19.not.i.i.1 = icmp eq i64 %indvars.iv.next16.i.i.1, %wide.trip.count18.i.i
  br i1 %exitcond19.not.i.i.1, label %._crit_edge7.i.i, label %scalar.ph119, !llvm.loop !103

._crit_edge7.i.i:                                 ; preds = %scalar.ph119.prol.loopexit, %scalar.ph119, %middle.block129
  br i1 %i.mp, label %.lr.ph.i68.i.i.preheader, label %decode_lsp.exit.i

.lr.ph.i68.i.i.preheader:                         ; preds = %._crit_edge7.i.i
  %i.pm = add nsw i64 %wide.trip.count18.i.i, -1  ; 6 uses
  %i.pn = add nsw i64 %wide.trip.count18.i.i, -2  ; 2 uses
  %xtraiter183 = and i64 %i.pm, 1
  %i.po = icmp eq i64 %i.pn, 0
  br i1 %i.po, label %.lr.ph.i68.i.i.epil.preheader, label %.lr.ph.i68.i.i.preheader.new

.lr.ph.i68.i.i.preheader.new:                     ; preds = %.lr.ph.i68.i.i.preheader
  %unroll_iter186 = and i64 %i.pm, -2
  br label %.lr.ph.i68.i.i

.lr.ph.i68.i.i:                                   ; preds = %bb.t, %.lr.ph.i68.i.i.preheader.new
  %indvars.iv.i69.i.i = phi i64 [ 1, %.lr.ph.i68.i.i.preheader.new ], [ %indvars.iv.next.i70.i.i.1, %bb.t ] ; 3 uses
  %niter187 = phi i64 [ 0, %.lr.ph.i68.i.i.preheader.new ], [ %niter187.next.1, %bb.t ]
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i69.i.i ; 2 uses
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !63 ; 2 uses
  %i.pr = getelementptr i8, ptr %i.pp, i64 -4     ; 2 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !63 ; 2 uses
  %i.pt = fsub nsz float %i.pq, %i.ps
  %i.pu = fcmp nsz olt float %i.pt, f0x38D1B717
  br i1 %i.pu, label %bb.r, label %.lr.ph.i68.i.i.1

bb.r:                                             ; preds = %.lr.ph.i68.i.i
  %i.pv = fadd nsz float %i.pq, %i.ps
  %i.pw = fmul nsz float %i.pv, 5.000000e-01
  %i.px = insertelement <2 x float> poison, float %i.pw, i64 0
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pz = fadd nsz <2 x float> %i.py, <float -5.000000e-05, float 5.000000e-05>
  store <2 x float> %i.pz, ptr %i.pr, align 4, !tbaa !63
  br label %.lr.ph.i68.i.i.1

.lr.ph.i68.i.i.1:                                 ; preds = %bb.r, %.lr.ph.i68.i.i
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i69.i.i ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !63 ; 2 uses
  %i.qd = load float, ptr %i.qa, align 4, !tbaa !63 ; 2 uses
  %i.qe = fsub nsz float %i.qc, %i.qd
  %i.qf = fcmp nsz olt float %i.qe, f0x38D1B717
  br i1 %i.qf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i68.i.i.1
  %i.qg = fadd nsz float %i.qc, %i.qd
  %i.qh = fmul nsz float %i.qg, 5.000000e-01
  %i.qi = insertelement <2 x float> poison, float %i.qh, i64 0
  %i.qj = shufflevector <2 x float> %i.qi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qk = fadd nsz <2 x float> %i.qj, <float -5.000000e-05, float 5.000000e-05>
  store <2 x float> %i.qk, ptr %i.qa, align 4, !tbaa !63
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i68.i.i.1
  %indvars.iv.next.i70.i.i.1 = add nuw nsw i64 %indvars.iv.i69.i.i, 2 ; 2 uses
  %niter187.next.1 = add i64 %niter187, 2         ; 2 uses
  %niter187.ncmp.1 = icmp eq i64 %niter187.next.1, %unroll_iter186
  br i1 %niter187.ncmp.1, label %.lr.ph.i75.i.i.preheader.unr-lcssa, label %.lr.ph.i68.i.i, !llvm.loop !93

.lr.ph.i75.i.i.preheader.unr-lcssa:               ; preds = %bb.t
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i75.i.i.preheader, label %.lr.ph.i68.i.i.epil.preheader

.lr.ph.i68.i.i.epil.preheader:                    ; preds = %.lr.ph.i75.i.i.preheader.unr-lcssa, %.lr.ph.i68.i.i.preheader
  %indvars.iv.i69.i.i.epil.init = phi i64 [ 1, %.lr.ph.i68.i.i.preheader ], [ %indvars.iv.next.i70.i.i.1, %.lr.ph.i75.i.i.preheader.unr-lcssa ]
  %lcmp.mod185 = trunc i64 %i.pm to i1
  call void @llvm.assume(i1 %lcmp.mod185)
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i69.i.i.epil.init ; 2 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !63 ; 2 uses
  %i.qn = getelementptr i8, ptr %i.ql, i64 -4     ; 2 uses
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !63 ; 2 uses
  %i.qp = fsub nsz float %i.qm, %i.qo
  %i.qq = fcmp nsz olt float %i.qp, f0x38D1B717
  br i1 %i.qq, label %bb.u, label %.lr.ph.i75.i.i.preheader

bb.u:                                             ; preds = %.lr.ph.i68.i.i.epil.preheader
  %i.qr = fadd nsz float %i.qm, %i.qo
  %i.qs = fmul nsz float %i.qr, 5.000000e-01
  %i.qt = insertelement <2 x float> poison, float %i.qs, i64 0
  %i.qu = shufflevector <2 x float> %i.qt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qv = fadd nsz <2 x float> %i.qu, <float -5.000000e-05, float 5.000000e-05>
  store <2 x float> %i.qv, ptr %i.qn, align 4, !tbaa !63
  br label %.lr.ph.i75.i.i.preheader

.lr.ph.i75.i.i.preheader:                         ; preds = %.lr.ph.i68.i.i.epil.preheader, %bb.u, %.lr.ph.i75.i.i.preheader.unr-lcssa
  %xtraiter188 = and i64 %i.pm, 1
  %i.qw = icmp eq i64 %i.pn, 0
  br i1 %i.qw, label %.lr.ph.i75.i.i.epil.preheader, label %.lr.ph.i75.i.i.preheader.new

.lr.ph.i75.i.i.preheader.new:                     ; preds = %.lr.ph.i75.i.i.preheader
  %unroll_iter191 = and i64 %i.pm, -2
  br label %.lr.ph.i75.i.i

.lr.ph.i75.i.i:                                   ; preds = %bb.x, %.lr.ph.i75.i.i.preheader.new
  %indvars.iv.i76.i.i = phi i64 [ 1, %.lr.ph.i75.i.i.preheader.new ], [ %indvars.iv.next.i77.i.i.1, %bb.x ] ; 3 uses
  %niter192 = phi i64 [ 0, %.lr.ph.i75.i.i.preheader.new ], [ %niter192.next.1, %bb.x ]
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i76.i.i ; 2 uses
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !63 ; 2 uses
  %i.qz = getelementptr i8, ptr %i.qx, i64 -4     ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !63 ; 2 uses
  %i.rb = fsub nsz float %i.qy, %i.ra
  %i.rc = fcmp nsz olt float %i.rb, 9.500000e-05
  br i1 %i.rc, label %bb.v, label %.lr.ph.i75.i.i.1

bb.v:                                             ; preds = %.lr.ph.i75.i.i
  %i.rd = fadd nsz float %i.qy, %i.ra
  %i.re = fmul nsz float %i.rd, 5.000000e-01
end_hunk_1
