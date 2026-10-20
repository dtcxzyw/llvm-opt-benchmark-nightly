Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0

$_ZZN6ImPlot11GetTimeStepEiiE4step_2 = comdat any

$_ZZN6ImPlot11GetTimeStepEiiE4step_3 = comdat any

@GImPlot = dso_local local_unnamed_addr global ptr null, align 8
@_ZZN6ImPlot17GetStyleColorNameEiE9col_names = internal unnamed_addr constant [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 16
@.str = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Fill\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"MarkerOutline\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"MarkerFill\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ErrorBar\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"FrameBg\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"PlotBg\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"PlotBorder\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"LegendBg\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"LegendBorder\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"LegendText\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"TitleText\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"InlayText\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"AxisText\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"AxisGrid\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"AxisTick\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"AxisBg\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"AxisBgHovered\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"AxisBgActive\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Crosshairs\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Diamond\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"Cross\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Plus\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Asterisk\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GImGui = external local_unnamed_addr global ptr, align 8
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Deep = private unnamed_addr constant [10 x i32] [i32 -5213620, i32 -11369251, i32 -9918379, i32 -11383100, i32 -5016959, i32 -10454893, i32 -3961894, i32 -7566196, i32 -9127476, i32 -3295900], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Dark = private unnamed_addr constant [9 x i32] [i32 -14935324, i32 -4686281, i32 -11882675, i32 -6074728, i32 -16744449, i32 -13369345, i32 -14133594, i32 -4226569, i32 -6710887], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Pastel = private unnamed_addr constant [9 x i32] [i32 -5327621, i32 -1847885, i32 -3806260, i32 -1782818, i32 -5842434, i32 -3342337, i32 -4335387, i32 -1254659, i32 -855310], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Paired = private unnamed_addr constant [12 x i32] [i32 -1847742, i32 -4949985, i32 -7675982, i32 -13852621, i32 -6710533, i32 -14935325, i32 -9453571, i32 -16744449, i32 -2706742, i32 -6668950, i32 -6684673, i32 -14132815], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Viridis = private unnamed_addr constant [11 x i32] [i32 -11271868, i32 -9100216, i32 -7912383, i32 -7512267, i32 -7440342, i32 -7565023, i32 -8083422, i32 -9388220, i32 -11415174, i32 -14229571, i32 -14292995], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Plasma = private unnamed_addr constant [11 x i32] [i32 -7927795, i32 -6486975, i32 -5767062, i32 -6025841, i32 -7329103, i32 -8894516, i32 -10328863, i32 -11827982, i32 -13195524, i32 -14299396, i32 -14550544], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Hot = private unnamed_addr constant [11 x i32] [i32 -16777152, i32 -16777088, i32 -16777025, i32 -16776961, i32 -16760577, i32 -16744193, i32 -16728065, i32 -16711681, i32 -11141121, i32 -5570561, i32 -1], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Cool = private unnamed_addr constant [11 x i32] [i32 -256, i32 -6630, i32 -13261, i32 -19635, i32 -26266, i32 -32640, i32 -39271, i32 -45645, i32 -52276, i32 -58650, i32 -65281], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Pink = private unnamed_addr constant [11 x i32] [i32 -16777142, i32 -12434821, i32 -10658402, i32 -9276742, i32 -8087610, i32 -7097136, i32 -6172966, i32 -5315356, i32 -3281427, i32 -1575178, i32 -1], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Jet = private unnamed_addr constant [11 x i32] [i32 -5636096, i32 -65536, i32 -43776, i32 -22016, i32 -256, i32 -5570731, i32 -11141206, i32 -16711681, i32 -16733441, i32 -16755201, i32 -16776961], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Twilight = private unnamed_addr constant [11 x i32] [i32 -1910302, i32 -3489882, i32 -4157331, i32 -5220257, i32 -8642989, i32 -13233105, i32 -11855516, i32 -11518817, i32 -10586688, i32 -6376496, i32 -1910302], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.RdBu = private unnamed_addr constant [11 x i32] [i32 -14745497, i32 -13952846, i32 -11706154, i32 -8215052, i32 -3679235, i32 -526345, i32 -989743, i32 -2177646, i32 -3959997, i32 -5478879, i32 -10407931], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.BrBG = private unnamed_addr constant [11 x i32] [i32 -16437164, i32 -16100980, i32 -13794881, i32 -8535329, i32 -3938058, i32 -657931, i32 -1709369, i32 -4076160, i32 -7366859, i32 -10590719, i32 -13616128], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.PiYG = private unnamed_addr constant [11 x i32] [i32 -11402866, i32 -8578107, i32 -5343266, i32 -2443535, i32 -1056515, i32 -526345, i32 -3082778, i32 -7937608, i32 -12469121, i32 -14577075, i32 -15113177], align 16
@__const._ZN6ImPlot10InitializeEP13ImPlotContext.Spectral = private unnamed_addr constant [11 x i32] [i32 -12451426, i32 -11583787, i32 -12358156, i32 -10375427, i32 -7610114, i32 -4194305, i32 -6752794, i32 -5972565, i32 -5914010, i32 -4356046, i32 -6140066], align 16
@.str.33 = private unnamed_addr constant [5 x i8] c"Deep\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Dark\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Pastel\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"Paired\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"Viridis\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Plasma\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"Hot\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"Cool\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"Pink\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"Jet\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Twilight\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"RdBu\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"BrBG\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"PiYG\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"Spectral\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"Greys\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c".%03d %03d\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c":%02d.%03d %03d\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c":%02d.%03d\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c":%02d\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c":%02d:%02d.%03d\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"%02d:%02d:%02d.%03d\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"%02d:00\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"%d:%02d:%02d.%03d%s\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"%d:%02d:%02d%s\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"%d:%02d%s\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"%d%s\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"--%02d-%02d\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"%d-%02d-%02d\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"%d-%02d\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"--%02d\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"%d/%d/%02d\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@_ZN6ImPlotL11MONTH_ABRVSE = internal unnamed_addr constant [12 x ptr] [ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421], align 16
@.str.72 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@_ZN6ImPlotL16TimeFormatLevel0E = internal unnamed_addr constant [8 x %struct.ImPlotDateTimeSpec] [%struct.ImPlotDateTimeSpec <{ i32 0, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 0, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 0, i32 4, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 0, i32 8, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 0, i32 9, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 1, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 4, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 5, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>], align 16
@_ZN6ImPlotL16TimeFormatLevel1E = internal unnamed_addr constant [8 x %struct.ImPlotDateTimeSpec] [%struct.ImPlotDateTimeSpec <{ i32 0, i32 8, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 0, i32 7, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 0, i32 8, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 0, i32 8, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 2, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 2, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 5, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 5, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>], align 16
@_ZN6ImPlotL21TimeFormatLevel1FirstE = internal unnamed_addr constant [8 x %struct.ImPlotDateTimeSpec] [%struct.ImPlotDateTimeSpec <{ i32 2, i32 7, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 2, i32 7, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 2, i32 8, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 2, i32 8, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 2, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 2, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 5, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 5, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>], align 16
@_ZN6ImPlotL21TimeFormatMouseCursorE = internal unnamed_addr constant [8 x %struct.ImPlotDateTimeSpec] [%struct.ImPlotDateTimeSpec <{ i32 0, i32 1, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 0, i32 2, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 0, i32 3, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 0, i32 7, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 0, i32 8, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 1, i32 9, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 2, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>, %struct.ImPlotDateTimeSpec <{ i32 3, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }>], align 16
@.str.76 = private unnamed_addr constant [43 x i8] c"Cannot locate Time ticks on vertical axis!\00", align 1
@_ZN6ImPlotL13TimeUnitSpansE = internal unnamed_addr constant [8 x double] [double f0x3EB0C6F7A0B5ED8D, double 1.000000e-03, double 1.000000e+00, double 6.000000e+01, double 3.600000e+03, double 8.640000e+04, double 2.629800e+06, double 3.155760e+07], align 16
@.str.77 = private unnamed_addr constant [5 x i8] c"%.3g\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"##LockMin\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"Min Time\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"mintime\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"mindate\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"##LockMax\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"Max Time\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"maxtime\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"maxdate\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"Auto-Fit\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"Invert\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"Opposite\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"Label\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"Grid Lines\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"Tick Marks\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"Tick Labels\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"Show\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"Outside\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"NW\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"NE\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"SW\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"SE\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"Linking\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"Link Rows\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"Link Cols\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"Link All X\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"Link All Y\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"Settings\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"Resizable\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"Share Items\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"X-Axis\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"X-Axis %d\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"Y-Axis\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"Y-Axis %d\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"Legend\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"Equal\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"Box Select\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"Mouse Position\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"Subplots\00", align 1
@.str.127 = private unnamed_addr constant [94 x i8] c"Setup needs to be called after BeginPlot and before any setup locking functions (e.g. PlotX)!\00", align 1
@.str.128 = private unnamed_addr constant [57 x i8] c"Axis is not enabled! Did you forget to call SetupAxis()?\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.130 = private unnamed_addr constant [111 x i8] c"Setup needs to be called after BeginPlot or BeginSubplots and before any setup locking functions (e.g. PlotX)!\00", align 1
@.str.131 = private unnamed_addr constant [59 x i8] c"SetNextAxisLimits() needs to be called before BeginPlot()!\00", align 1
@.str.132 = private unnamed_addr constant [58 x i8] c"SetNextAxisLinks() needs to be called before BeginPlot()!\00", align 1
@.str.133 = private unnamed_addr constant [58 x i8] c"SetNextAxisToFit() needs to be called before BeginPlot()!\00", align 1
@.str.134 = private unnamed_addr constant [89 x i8] c"No current context. Did you call ImPlot::CreateContext() or ImPlot::SetCurrentContext()?\00", align 1
@.str.135 = private unnamed_addr constant [34 x i8] c"Mismatched BeginPlot()/EndPlot()!\00", align 1
@.str.136 = private unnamed_addr constant [48 x i8] c"SetupFinish needs to be called after BeginPlot!\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c", (\00", align 1
@.str.138 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"##LegendContext\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"##PlotContext\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"##XContext\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"##YContext\00", align 1
@.str.144 = private unnamed_addr constant [26 x i8] c"Invalid sizing arguments!\00", align 1
@.str.145 = private unnamed_addr constant [42 x i8] c"Mismatched BeginSubplots()/EndSubplots()!\00", align 1
@.str.146 = private unnamed_addr constant [64 x i8] c"SetAxis() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.147 = private unnamed_addr constant [26 x i8] c"Axis index out of bounds!\00", align 1
@.str.148 = private unnamed_addr constant [64 x i8] c"SetAxes() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.149 = private unnamed_addr constant [28 x i8] c"X-Axis index out of bounds!\00", align 1
@.str.150 = private unnamed_addr constant [28 x i8] c"Y-Axis index out of bounds!\00", align 1
@.str.151 = private unnamed_addr constant [69 x i8] c"PixelsToPlot() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.152 = private unnamed_addr constant [69 x i8] c"PlotToPixels() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.153 = private unnamed_addr constant [67 x i8] c"GetPlotPos() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.154 = private unnamed_addr constant [68 x i8] c"GetPlotSize() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.155 = private unnamed_addr constant [72 x i8] c"GetPlotMousePos() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.156 = private unnamed_addr constant [70 x i8] c"GetPlotLimits() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.157 = private unnamed_addr constant [70 x i8] c"IsPlotHovered() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.158 = private unnamed_addr constant [75 x i8] c"IsPlotXAxisHovered() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.159 = private unnamed_addr constant [82 x i8] c"IsSubplotsHovered() needs to be called between BeginSubplots() and EndSubplots()!\00", align 1
@.str.160 = private unnamed_addr constant [71 x i8] c"IsPlotSelected() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.161 = private unnamed_addr constant [73 x i8] c"GetPlotSelection() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.162 = private unnamed_addr constant [76 x i8] c"CancelPlotSelection() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.163 = private unnamed_addr constant [67 x i8] c"Annotation() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"%s, %s\00", align 1
@.str.165 = private unnamed_addr constant [61 x i8] c"TagX() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.166 = private unnamed_addr constant [61 x i8] c"TagY() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.167 = private unnamed_addr constant [19 x i8] c"#IMPLOT_DRAG_POINT\00", align 1
@.str.168 = private unnamed_addr constant [66 x i8] c"DragPoint() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.169 = private unnamed_addr constant [66 x i8] c"DragLineX() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.170 = private unnamed_addr constant [20 x i8] c"#IMPLOT_DRAG_LINE_Y\00", align 1
@.str.171 = private unnamed_addr constant [66 x i8] c"DragLineY() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"#IMPLOT_DRAG_RECT\00", align 1
@.str.173 = private unnamed_addr constant [65 x i8] c"DragRect() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.174 = private unnamed_addr constant [69 x i8] c"IsPlotItemHighlight() needs to be called within an itemized context!\00", align 1
@.str.175 = private unnamed_addr constant [66 x i8] c"BeginLegendPopup() needs to be called within an itemized context!\00", align 1
@.str.176 = private unnamed_addr constant [73 x i8] c"BeginDragDropSourceItem() needs to be called within an itemized context!\00", align 1
@.str.177 = private unnamed_addr constant [50 x i8] c"Mismatched BeginAlignedPlots()/EndAlignedPlots()!\00", align 1
@.str.178 = private unnamed_addr constant [52 x i8] c"You can't pop more modifiers than have been pushed!\00", align 1
@.str.179 = private unnamed_addr constant [42 x i8] c"The colormap size must be greater than 1!\00", align 1
@.str.180 = private unnamed_addr constant [41 x i8] c"The colormap name has already been used!\00", align 1
@.str.181 = private unnamed_addr constant [39 x i8] c"The colormap name has already be used!\00", align 1
@.str.182 = private unnamed_addr constant [31 x i8] c"The colormap index is invalid!\00", align 1
@.str.183 = private unnamed_addr constant [30 x i8] c"The colormap name is invalid!\00", align 1
@.str.184 = private unnamed_addr constant [74 x i8] c"NextColormapColor() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@.str.185 = private unnamed_addr constant [24 x i8] c"Invalid colormap index!\00", align 1
@.str.186 = private unnamed_addr constant [73 x i8] c"PushPlotClipRect() needs to be called between BeginPlot() and EndPlot()!\00", align 1
@_ZZN6ImPlot17ShowStyleSelectorEPKcE9style_idx = internal global i32 -1, align 4
@.str.187 = private unnamed_addr constant [25 x i8] c"Auto\00Classic\00Dark\00Light\00\00", align 1
@_ZZN6ImPlot20ShowInputMapSelectorEPKcE7map_idx = internal global i32 -1, align 4
@.str.188 = private unnamed_addr constant [18 x i8] c"Default\00Reversed\00\00", align 1
@_ZZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE15ref_saved_style = internal global %struct.ImPlotStyle zeroinitializer, align 4
@_ZGVZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE15ref_saved_style = internal global i64 0, align 8
@_ZZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE4init = internal unnamed_addr global i1 false, align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"Colors##Selector\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"Save Ref\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"Revert Ref\00", align 1
@.str.192 = private unnamed_addr constant [132 x i8] c"Save/Revert in local non-persistent storage. Default Colors definition are not affected. Use \22Export\22 below to save them somewhere.\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"##StyleEditor\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"Variables\00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"Item Styling\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"LineWeight\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"%.1f\00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"MarkerSize\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"MarkerWeight\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"FillAlpha\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.202 = private unnamed_addr constant [13 x i8] c"ErrorBarSize\00", align 1
@.str.203 = private unnamed_addr constant [15 x i8] c"ErrorBarWeight\00", align 1
@.str.204 = private unnamed_addr constant [17 x i8] c"DigitalBitHeight\00", align 1
@.str.205 = private unnamed_addr constant [14 x i8] c"DigitalBitGap\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"Plot Styling\00", align 1
@.str.207 = private unnamed_addr constant [15 x i8] c"PlotBorderSize\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"MinorAlpha\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"MajorTickLen\00", align 1
@.str.211 = private unnamed_addr constant [13 x i8] c"MinorTickLen\00", align 1
@.str.212 = private unnamed_addr constant [14 x i8] c"MajorTickSize\00", align 1
@.str.213 = private unnamed_addr constant [14 x i8] c"MinorTickSize\00", align 1
@.str.214 = private unnamed_addr constant [14 x i8] c"MajorGridSize\00", align 1
@.str.215 = private unnamed_addr constant [14 x i8] c"MinorGridSize\00", align 1
@.str.216 = private unnamed_addr constant [16 x i8] c"PlotDefaultSize\00", align 1
@.str.217 = private unnamed_addr constant [12 x i8] c"PlotMinSize\00", align 1
@.str.218 = private unnamed_addr constant [13 x i8] c"Plot Padding\00", align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"PlotPadding\00", align 1
@.str.220 = private unnamed_addr constant [13 x i8] c"LabelPadding\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"LegendPadding\00", align 1
@.str.222 = private unnamed_addr constant [19 x i8] c"LegendInnerPadding\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"LegendSpacing\00", align 1
@.str.224 = private unnamed_addr constant [16 x i8] c"MousePosPadding\00", align 1
@.str.225 = private unnamed_addr constant [18 x i8] c"AnnotationPadding\00", align 1
@.str.226 = private unnamed_addr constant [11 x i8] c"FitPadding\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"Colors\00", align 1
@_ZZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE11output_dest = internal global i32 0, align 4
@_ZZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE20output_only_modified = internal global i8 0, align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"Export\00", align 1
@.str.229 = private unnamed_addr constant [45 x i8] c"ImVec4* colors = ImPlot::GetStyle().Colors;\0A\00", align 1
@.str.230 = private unnamed_addr constant [43 x i8] c"colors[ImPlotCol_%s]%*s= IMPLOT_AUTO_COL;\0A\00", align 1
@.str.231 = private unnamed_addr constant [62 x i8] c"colors[ImPlotCol_%s]%*s= ImVec4(%.2ff, %.2ff, %.2ff, %.2ff);\0A\00", align 1
@.str.232 = private unnamed_addr constant [14 x i8] c"##output_type\00", align 1
@.str.233 = private unnamed_addr constant [21 x i8] c"To Clipboard\00To TTY\00\00", align 1
@.str.234 = private unnamed_addr constant [21 x i8] c"Only Modified Colors\00", align 1
@_ZZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE6filter = internal global %struct.ImGuiTextFilter zeroinitializer, align 8
@_ZGVZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE6filter = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str.235 = private unnamed_addr constant [14 x i8] c"Filter colors\00", align 1
@_ZZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE11alpha_flags = internal unnamed_addr global i32 8192, align 4
@.str.236 = private unnamed_addr constant [7 x i8] c"Opaque\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"Both\00", align 1
@.str.239 = private unnamed_addr constant [109 x i8] c"In the color list:\0ALeft-click on colored square to open color picker,\0ARight-click to open edit options menu.\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"Save\00", align 1
@.str.242 = private unnamed_addr constant [7 x i8] c"Revert\00", align 1
@.str.243 = private unnamed_addr constant [223 x i8] c"Colors that are set to Auto (i.e. IMPLOT_AUTO_COL) will\0Abe automatically deduced from your ImGui style or the\0Acurrent ImPlot Colormap. If you want to style individual\0Aplot items, use Push/PopStyleColor around its function.\00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c"Colormaps\00", align 1
@_ZZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE11output_dest_0 = internal global i32 0, align 4
@.str.245 = private unnamed_addr constant [36 x i8] c"static const ImU32 %s_Data[%d] = {\0A\00", align 1
@.str.246 = private unnamed_addr constant [10 x i8] c"    %u%s\0A\00", align 1
@.str.247 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.248 = private unnamed_addr constant [63 x i8] c"};\0AImPlotColormap %s = ImPlot::AddColormap(\22%s\22, %s_Data, %d);\00", align 1
@_ZZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE4edit = internal global i8 0, align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"Edit Mode\00", align 1
@.str.250 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@_ZZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE6custom = internal global %struct.ImVector.41 zeroinitializer, align 8
@_ZGVZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE6custom = internal global i64 0, align 8
@_ZZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE4name = internal global [16 x i8] c"MyColormap\00\00\00\00\00\00", align 16
@.str.251 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.252 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"##Name\00", align 1
@_ZZN6ImPlot15ShowStyleEditorEP11ImPlotStyleE4qual = internal global i8 1, align 1
@.str.254 = private unnamed_addr constant [12 x i8] c"Qualitative\00", align 1
@.str.255 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.256 = private unnamed_addr constant [7 x i8] c"##Col1\00", align 1
@.str.257 = private unnamed_addr constant [58 x i8] c"Left-click drag within the plot area to pan X and Y axes.\00", align 1
@.str.258 = private unnamed_addr constant [58 x i8] c"Left-click drag on axis labels to pan an individual axis.\00", align 1
@.str.259 = private unnamed_addr constant [51 x i8] c"Scroll in the plot area to zoom both X and Y axes.\00", align 1
@.str.260 = private unnamed_addr constant [50 x i8] c"Scroll on axis labels to zoom an individual axis.\00", align 1
@.str.261 = private unnamed_addr constant [37 x i8] c"Right-click drag to box select data.\00", align 1
@.str.262 = private unnamed_addr constant [47 x i8] c"Hold Alt to expand box selection horizontally.\00", align 1
@.str.263 = private unnamed_addr constant [47 x i8] c"Hold Shift to expand box selection vertically.\00", align 1
@.str.264 = private unnamed_addr constant [56 x i8] c"Left-click while box selecting to cancel the selection.\00", align 1
@.str.265 = private unnamed_addr constant [43 x i8] c"Double left-click to fit all visible data.\00", align 1
@.str.266 = private unnamed_addr constant [58 x i8] c"Double left-click axis labels to fit the individual axis.\00", align 1
@.str.267 = private unnamed_addr constant [45 x i8] c"Right-click open the full plot context menu.\00", align 1
@.str.268 = private unnamed_addr constant [65 x i8] c"Right-click axis labels to open an individual axis context menu.\00", align 1
@.str.269 = private unnamed_addr constant [50 x i8] c"Click legend label icons to show/hide plot items.\00", align 1
@.str.270 = private unnamed_addr constant [9 x i8] c"Size: %d\00", align 1
@.str.271 = private unnamed_addr constant [17 x i8] c"MaxSize: [%f,%f]\00", align 1
@.str.272 = private unnamed_addr constant [10 x i8] c"Label: %s\00", align 1
@.str.273 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1
@.str.274 = private unnamed_addr constant [14 x i8] c"Flags: 0x%08X\00", align 1
@.str.275 = private unnamed_addr constant [15 x i8] c"Range: [%f,%f]\00", align 1
@.str.276 = private unnamed_addr constant [11 x i8] c"Pixels: %f\00", align 1
@.str.277 = private unnamed_addr constant [11 x i8] c"Aspect: %f\00", align 1
@.str.278 = private unnamed_addr constant [17 x i8] c"OrtherAxis: NULL\00", align 1
@.str.279 = private unnamed_addr constant [18 x i8] c"OrthoAxis: 0x%08X\00", align 1
@.str.280 = private unnamed_addr constant [14 x i8] c"LinkedMin: %p\00", align 1
@.str.281 = private unnamed_addr constant [14 x i8] c"LinkedMax: %p\00", align 1
@.str.282 = private unnamed_addr constant [13 x i8] c"HasRange: %s\00", align 1
@.str.283 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.284 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.285 = private unnamed_addr constant [12 x i8] c"Hovered: %s\00", align 1
@.str.286 = private unnamed_addr constant [9 x i8] c"Held: %s\00", align 1
@.str.287 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.288 = private unnamed_addr constant [13 x i8] c"PixelMin: %f\00", align 1
@.str.289 = private unnamed_addr constant [13 x i8] c"PixelMax: %f\00", align 1
@.str.290 = private unnamed_addr constant [17 x i8] c"ScaleToPixel: %f\00", align 1
@.str.291 = private unnamed_addr constant [13 x i8] c"ScaleMax: %f\00", align 1
@.str.292 = private unnamed_addr constant [6 x i8] c"Ticks\00", align 1
@_ZZN6ImPlot17ShowMetricsWindowEPbE15show_plot_rects = internal global i8 0, align 1
@_ZZN6ImPlot17ShowMetricsWindowEPbE15show_axes_rects = internal global i8 0, align 1
@_ZZN6ImPlot17ShowMetricsWindowEPbE15show_axis_rects = internal global i8 0, align 1
@_ZZN6ImPlot17ShowMetricsWindowEPbE17show_canvas_rects = internal global i8 0, align 1
@_ZZN6ImPlot17ShowMetricsWindowEPbE16show_frame_rects = internal global i8 0, align 1
@_ZZN6ImPlot17ShowMetricsWindowEPbE24show_subplot_frame_rects = internal global i8 0, align 1
@_ZZN6ImPlot17ShowMetricsWindowEPbE23show_subplot_grid_rects = internal global i8 0, align 1
@_ZZN6ImPlot17ShowMetricsWindowEPbE17show_legend_rects = internal global i8 0, align 1
@.str.293 = private unnamed_addr constant [15 x i8] c"ImPlot Metrics\00", align 1
@.str.294 = private unnamed_addr constant [12 x i8] c"ImPlot 0.17\00", align 1
@.str.295 = private unnamed_addr constant [45 x i8] c"Application average %.3f ms/frame (%.1f FPS)\00", align 1
@.str.296 = private unnamed_addr constant [28 x i8] c"Mouse Position: [%.0f,%.0f]\00", align 1
@.str.297 = private unnamed_addr constant [6 x i8] c"Tools\00", align 1
@.str.298 = private unnamed_addr constant [16 x i8] c"Bust Plot Cache\00", align 1
@.str.299 = private unnamed_addr constant [16 x i8] c"Bust Item Cache\00", align 1
@.str.300 = private unnamed_addr constant [17 x i8] c"Show Frame Rects\00", align 1
@.str.301 = private unnamed_addr constant [18 x i8] c"Show Canvas Rects\00", align 1
@.str.302 = private unnamed_addr constant [16 x i8] c"Show Plot Rects\00", align 1
@.str.303 = private unnamed_addr constant [16 x i8] c"Show Axes Rects\00", align 1
@.str.304 = private unnamed_addr constant [16 x i8] c"Show Axis Rects\00", align 1
@.str.305 = private unnamed_addr constant [25 x i8] c"Show Subplot Frame Rects\00", align 1
@.str.306 = private unnamed_addr constant [24 x i8] c"Show Subplot Grid Rects\00", align 1
@.str.307 = private unnamed_addr constant [18 x i8] c"Show Legend Rects\00", align 1
@.str.308 = private unnamed_addr constant [6 x i8] c"Plots\00", align 1
@.str.309 = private unnamed_addr constant [11 x i8] c"Plots (%d)\00", align 1
@.str.310 = private unnamed_addr constant [5 x i8] c"Plot\00", align 1
@.str.311 = private unnamed_addr constant [14 x i8] c"Plot [0x%08X]\00", align 1
@.str.312 = private unnamed_addr constant [6 x i8] c"Items\00", align 1
@.str.313 = private unnamed_addr constant [11 x i8] c"Items (%d)\00", align 1
@.str.314 = private unnamed_addr constant [5 x i8] c"Item\00", align 1
@.str.315 = private unnamed_addr constant [14 x i8] c"Item [0x%08X]\00", align 1
@.str.316 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.317 = private unnamed_addr constant [15 x i8] c"NameOffset: %d\00", align 1
@.str.318 = private unnamed_addr constant [9 x i8] c"Name: %s\00", align 1
@.str.319 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.320 = private unnamed_addr constant [19 x i8] c"X-Axis %d [0x%08X]\00", align 1
@.str.321 = private unnamed_addr constant [19 x i8] c"Y-Axis %d [0x%08X]\00", align 1
@.str.322 = private unnamed_addr constant [10 x i8] c"Title: %s\00", align 1
@.str.323 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.324 = private unnamed_addr constant [16 x i8] c"Initialized: %s\00", align 1
@.str.325 = private unnamed_addr constant [14 x i8] c"Selecting: %s\00", align 1
@.str.326 = private unnamed_addr constant [13 x i8] c"Selected: %s\00", align 1
@.str.327 = private unnamed_addr constant [18 x i8] c"LegendHovered: %s\00", align 1
@.str.328 = private unnamed_addr constant [18 x i8] c"ContextLocked: %s\00", align 1
@.str.329 = private unnamed_addr constant [14 x i8] c"Subplots (%d)\00", align 1
@.str.330 = private unnamed_addr constant [8 x i8] c"Subplot\00", align 1
@.str.331 = private unnamed_addr constant [17 x i8] c"Subplot [0x%08X]\00", align 1
@.str.332 = private unnamed_addr constant [17 x i8] c"FrameHovered: %s\00", align 1
@.str.333 = private unnamed_addr constant [15 x i8] c"Colormaps:  %d\00", align 1
@.str.334 = private unnamed_addr constant [17 x i8] c"Memory: %d bytes\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.336 = private unnamed_addr constant [16 x i8] c"Qualitative: %s\00", align 1
@.str.337 = private unnamed_addr constant [14 x i8] c"Key Count: %d\00", align 1
@.str.338 = private unnamed_addr constant [15 x i8] c"Table Size: %d\00", align 1
@_ZZN6ImPlot17ShowMetricsWindowEPbE1t = internal global float 5.000000e-01, align 4
@.str.339 = private unnamed_addr constant [9 x i8] c"##Sample\00", align 1
@.str.340 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.341 = private unnamed_addr constant [8 x i8] c"Sampler\00", align 1
@_ZN6ImPlotL11MONTH_NAMESE = internal unnamed_addr constant [12 x ptr] [ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.414, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431, ptr @.str.432, ptr @.str.433], align 16
@.str.342 = private unnamed_addr constant [5 x i8] c"##Up\00", align 1
@.str.343 = private unnamed_addr constant [7 x i8] c"##Down\00", align 1
@.str.344 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@_ZZN6ImPlot14ShowTimePickerEPKcP10ImPlotTimeE4nums = internal unnamed_addr constant [60 x ptr] [ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404], align 16
@.str.345 = private unnamed_addr constant [3 x i8] c"00\00", align 1
end_hunk_0
begin_hunk_1_@_ZN6ImPlot8DragRectEiPdS0_S0_S0_RK6ImVec4iPbS4_S4_:bb.a
  %i.fv = fcmp oeq float %i.fi, %i.fa
  %i.fw = fcmp oeq float %i.fk, %i.fb
  %or.cond354 = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %or.cond354, label %.thread350, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fx = fcmp oeq float %i.fm, %i.fa
  %i.fy = fcmp oeq float %i.fo, %i.fb
  %i.fz = select i1 %i.fx, i1 %i.fy, i1 false
  %cond.fr348 = freeze i1 %i.fz                   ; 2 uses
  %. = select i1 %cond.fr348, i32 6, i32 5
  %.451 = select i1 %cond.fr348, i32 5, i32 6
  br label %.thread350

.thread350:                                       ; preds = %bb.x, %bb.w
  %.sink = phi i32 [ 6, %bb.w ], [ %., %bb.x ]    ; 2 uses
  %i.ga = phi i32 [ 5, %bb.w ], [ %.451, %bb.x ]  ; 2 uses
  store i32 %.sink, ptr %i.c, align 16, !tbaa !29
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !29
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %.sink, ptr %i.gc, align 8, !tbaa !29
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.ga, ptr %i.gd, align 4, !tbaa !29
  br label %bb.y

bb.y:                                             ; preds = %.thread350, %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit269
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.val = load float, ptr %i.ge, align 4, !tbaa !46
  %i.gf = fcmp oeq float %.val, -1.000000e+00
  br i1 %i.gf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gg = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 0) #32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.gh = phi ptr [ %i.gg, %bb.z ], [ %5, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %i.gh, i64 16, i1 false), !tbaa.struct !314
  %i.gi = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %14) #32 ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !46
  %i.gl = fmul float %i.gk, 2.500000e-01
  store float %i.gl, ptr %i.gj, align 4, !tbaa !46
  %i.gm = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %14) #32
  %i.gn = load ptr, ptr @GImGui, align 8, !tbaa !48
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 5184
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !228 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 206
  store i8 1, ptr %i.gq, align 2, !tbaa !445
  %i.gr = call noundef i32 @_ZN11ImGuiWindow5GetIDEi(ptr noundef nonnull align 8 dereferenceable(1077) %i.gp, i32 noundef %0) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i8 0, ptr %i.d, align 1, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i8 0, ptr %i.e, align 1, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.gs = fadd <4 x float> %i.fq, <float -4.000000e+00, float -4.000000e+00, float 4.000000e+00, float 4.000000e+00>
  store <4 x float> %i.gs, ptr %15, align 16, !tbaa !41
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.gr) #32
  br i1 %.not357, label %bb.ab, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa
  %.pre380 = load i8, ptr %i.e, align 1, !range !263
  br label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.gt = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %15, i32 noundef %i.gr, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0) #32
  %.not210 = icmp eq ptr %7, null
  br i1 %.not210, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gu = zext i1 %i.gt to i8
  store i8 %i.gu, ptr %7, align 1, !tbaa !262
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not211 = icmp eq ptr %8, null
  br i1 %.not211, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gv = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  store i8 %i.gv, ptr %8, align 1, !tbaa !262
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not212 = icmp eq ptr %9, null
  %.pre381 = load i8, ptr %i.e, align 1, !range !263 ; 3 uses
  br i1 %.not212, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %.pre381, ptr %9, align 1, !tbaa !262
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge, %bb.af, %bb.ag
  %i.gw = phi i8 [ %.pre380, %._crit_edge ], [ %.pre381, %bb.af ], [ %.pre381, %bb.ag ] ; 2 uses
  %i.gx = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  %i.gy = trunc nuw i8 %i.gx to i1
  %i.gz = trunc nuw i8 %i.gw to i1
  %or.cond = select i1 %i.gy, i1 true, i1 %i.gz
  %or.cond3 = and i1 %.not358, %or.cond
  br i1 %or.cond3, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 2) #32
  %.pre382 = load i8, ptr %i.e, align 1, !tbaa !262, !range !263
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ha = phi i8 [ %i.gw, %bb.ah ], [ %.pre382, %bb.ai ]
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %bb.ak, label %.loopexit361

bb.ak:                                            ; preds = %bb.aj
  %i.hc = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00) #32
  br i1 %i.hc, label %.preheader360.preheader, label %.loopexit361

.preheader360.preheader:                          ; preds = %bb.ak
  %i.hd = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #32 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 196
  %i.hf = load float, ptr %i.he, align 4, !tbaa !172
  %i.hg = fadd float %i.fa, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 200
  %i.hi = load float, ptr %i.hh, align 8, !tbaa !173
  %i.hj = fadd float %i.fb, %i.hi
  %i.hk = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %i.hg, float noundef %i.hj, i32 noundef -1, i32 noundef -1) ; 2 uses
  %i.hl = extractvalue { double, double } %i.hk, 0
  %i.hm = extractvalue { double, double } %i.hk, 1
  store double %i.hm, ptr %2, align 8, !tbaa !266
  store double %i.hl, ptr %1, align 8, !tbaa !266
  %i.hn = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #32 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 196
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !172
  %i.hq = fadd float %i.fr, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 200
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !173
  %i.ht = fadd float %i.fs, %i.hs
  %i.hu = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %i.hq, float noundef %i.ht, i32 noundef -1, i32 noundef -1) ; 2 uses
  %i.hv = extractvalue { double, double } %i.hu, 0
  %i.hw = extractvalue { double, double } %i.hu, 1
  store double %i.hw, ptr %2, align 8, !tbaa !266
  store double %i.hv, ptr %3, align 8, !tbaa !266
  %i.hx = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #32 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 196
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !172
  %i.ia = fadd float %i.fc, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !173
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 200
  %i.ie = load float, ptr %i.id, align 8, !tbaa !173
  %i.if = fadd float %i.ic, %i.ie
  %i.ig = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %i.ia, float noundef %i.if, i32 noundef -1, i32 noundef -1) ; 2 uses
  %i.ih = extractvalue { double, double } %i.ig, 0
  %i.ii = extractvalue { double, double } %i.ig, 1
  store double %i.ii, ptr %4, align 8, !tbaa !266
  store double %i.ih, ptr %3, align 8, !tbaa !266
  %i.ij = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #32 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 196
  %i.il = load float, ptr %i.ik, align 4, !tbaa !172
  %i.im = fadd float %i.ft, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 200
  %i.io = load float, ptr %i.in, align 8, !tbaa !173
  %i.ip = fadd float %i.fu, %i.io
  %i.iq = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %i.im, float noundef %i.ip, i32 noundef -1, i32 noundef -1) ; 2 uses
  %i.ir = extractvalue { double, double } %i.iq, 0
  %i.is = extractvalue { double, double } %i.iq, 1
  store double %i.is, ptr %4, align 8, !tbaa !266
  store double %i.ir, ptr %1, align 8, !tbaa !266
  br label %.loopexit361

.loopexit361:                                     ; preds = %.preheader360.preheader, %bb.ak, %bb.aj
  %.0190 = phi i1 [ false, %bb.aj ], [ false, %bb.ak ], [ true, %.preheader360.preheader ]
  %.not216 = icmp eq ptr %7, null                 ; 3 uses
  %.not217 = icmp eq ptr %8, null                 ; 3 uses
  %.not218 = icmp eq ptr %9, null                 ; 3 uses
  br label %bb.an

bb.al:                                            ; preds = %bb.cq
  %i.it = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0325.0.vec.extract = extractelement <2 x float> %i.it, i64 0 ; 2 uses
  %i.iu = fcmp ult float %.sroa.0325.0.vec.extract, %i.fj
  br i1 %i.iu, label %_ZNK6ImRect8ContainsERK6ImVec2.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.0325.4.vec.extract = extractelement <2 x float> %i.it, i64 1 ; 2 uses
  %i.iv = fcmp oge float %.sroa.0325.4.vec.extract, %i.fl
  %i.iw = fcmp olt float %.sroa.0325.0.vec.extract, %i.fn
  %or.cond.i = select i1 %i.iv, i1 %i.iw, i1 false
  %i.ix = fcmp olt float %.sroa.0325.4.vec.extract, %i.fp
  %spec.select355 = select i1 %or.cond.i, i1 %i.ix, i1 false
  br label %_ZNK6ImRect8ContainsERK6ImVec2.exit

_ZNK6ImRect8ContainsERK6ImVec2.exit:              ; preds = %bb.am, %bb.al
  %i.iy = phi i1 [ false, %bb.al ], [ %spec.select355, %bb.am ] ; 2 uses
  %i.iz = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEib(i32 noundef 0, i1 noundef zeroext false) #32
  %i.ja = call noundef zeroext i1 @_ZN5ImGui11IsMouseDownEi(i32 noundef 0) #32
  %or.cond13 = and i1 %.not357, %i.iy
  br i1 %or.cond13, label %bb.cr, label %bb.cx

bb.an:                                            ; preds = %.loopexit361, %bb.cq
  %indvars.iv = phi i64 [ 0, %.loopexit361 ], [ %indvars.iv.next, %bb.cq ] ; 9 uses
  %.1366 = phi i1 [ %.0190, %.loopexit361 ], [ %.4, %bb.cq ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %indvars.iv
  %i.jc = load <2 x float>, ptr %i.jb, align 8, !tbaa !41
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.je = fadd <4 x float> %i.jd, <float -4.000000e+00, float -4.000000e+00, float 4.000000e+00, float 4.000000e+00>
  store <4 x float> %i.je, ptr %15, align 16, !tbaa !41
  %i.jf = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.jg = add i32 %i.gr, %i.jf                    ; 2 uses
  %i.jh = add i32 %i.jg, 1                        ; 2 uses
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.jh) #32
  br i1 %.not357, label %bb.ao, label %._crit_edge383

._crit_edge383:                                   ; preds = %bb.an
  %.pre384 = load i8, ptr %i.e, align 1, !range !263
  br label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ji = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %15, i32 noundef %i.jh, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0) #32
  br i1 %.not216, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jj = load i8, ptr %7, align 1, !tbaa !262, !range !263, !noundef !264
  %i.jk = zext i1 %i.ji to i8
  %i.jl = or i8 %i.jj, %i.jk
  store i8 %i.jl, ptr %7, align 1, !tbaa !262
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  br i1 %.not217, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jm = load i8, ptr %8, align 1, !tbaa !262, !range !263, !noundef !264
  %i.jn = trunc nuw i8 %i.jm to i1
  %i.jo = load i8, ptr %i.d, align 1, !range !263
  %i.jp = select i1 %i.jn, i8 1, i8 %i.jo
  store i8 %i.jp, ptr %8, align 1, !tbaa !262
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pre385 = load i8, ptr %i.e, align 1, !range !263 ; 3 uses
  br i1 %.not218, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jq = load i8, ptr %9, align 1, !tbaa !262, !range !263, !noundef !264
  %i.jr = trunc nuw i8 %i.jq to i1
  %i.js = select i1 %i.jr, i8 1, i8 %.pre385
  store i8 %i.js, ptr %9, align 1, !tbaa !262
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge383, %bb.as, %bb.at
  %i.jt = phi i8 [ %.pre384, %._crit_edge383 ], [ %.pre385, %bb.as ], [ %.pre385, %bb.at ] ; 2 uses
  %i.ju = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  %i.jv = trunc nuw i8 %i.ju to i1
  %i.jw = trunc nuw i8 %i.jt to i1
  %or.cond5 = select i1 %i.jv, i1 true, i1 %i.jw
  %or.cond7 = and i1 %.not358, %or.cond5
  br i1 %or.cond7, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !29
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %i.jy) #32
  %.pre386 = load i8, ptr %i.e, align 1, !tbaa !262, !range !263
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.jz = phi i8 [ %i.jt, %bb.au ], [ %.pre386, %bb.av ]
  %i.ka = trunc nuw i8 %i.jz to i1
  br i1 %i.ka, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %bb.aw
  %i.kb = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00) #32
  br i1 %i.kb, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  %i.kc = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 80
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !217 ; 2 uses
  %.not.i = icmp eq ptr %i.ke, null
  br i1 %.not.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.kf = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i275 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i275, i64 80
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !217
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.kg = phi ptr [ %.pre2.i, %bb.az ], [ %i.ke, %bb.ay ] ; 2 uses
  %i.kh = phi ptr [ %.pre.i275, %bb.az ], [ %i.kc, %bb.ay ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 2550
  %i.kj = load i8, ptr %i.ki, align 2, !tbaa !384, !range !263, !noundef !264
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZN6ImPlot15GetPlotMousePosEii.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i = load ptr, ptr %i.kl, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit

_ZN6ImPlot15GetPlotMousePosEii.exit:              ; preds = %bb.ba, %bb.bb
  %i.km = phi ptr [ %.pre.i.i, %bb.bb ], [ %i.kg, %bb.ba ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 2550
  store i8 1, ptr %i.kn, align 2, !tbaa !384
  %i.ko = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.ko, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.ko, i64 1
  %i.kp = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i, float noundef %.sroa.0.4.vec.extract.i, i32 noundef -1, i32 noundef -1)
  %i.kq = extractvalue { double, double } %i.kp, 0
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !379
  store double %i.kq, ptr %i.ks, align 8, !tbaa !266
  %i.kt = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 80
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !217 ; 2 uses
  %.not.i276 = icmp eq ptr %i.kv, null
  br i1 %.not.i276, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN6ImPlot15GetPlotMousePosEii.exit
  %i.kw = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i280 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i281 = getelementptr inbounds nuw i8, ptr %.pre.i280, i64 80
  %.pre2.i282 = load ptr, ptr %.phi.trans.insert.i281, align 8, !tbaa !217
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN6ImPlot15GetPlotMousePosEii.exit
  %i.kx = phi ptr [ %.pre2.i282, %bb.bc ], [ %i.kv, %_ZN6ImPlot15GetPlotMousePosEii.exit ] ; 2 uses
  %i.ky = phi ptr [ %.pre.i280, %bb.bc ], [ %i.kt, %_ZN6ImPlot15GetPlotMousePosEii.exit ]
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 2550
  %i.la = load i8, ptr %i.kz, align 2, !tbaa !384, !range !263, !noundef !264
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %_ZN6ImPlot15GetPlotMousePosEii.exit283, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i277 = load ptr, ptr %i.lc, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit283

_ZN6ImPlot15GetPlotMousePosEii.exit283:           ; preds = %bb.bd, %bb.be
  %i.ld = phi ptr [ %.pre.i.i277, %bb.be ], [ %i.kx, %bb.bd ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2550
  store i8 1, ptr %i.le, align 2, !tbaa !384
  %i.lf = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i278 = extractelement <2 x float> %i.lf, i64 0
  %.sroa.0.4.vec.extract.i279 = extractelement <2 x float> %i.lf, i64 1
  %i.lg = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i278, float noundef %.sroa.0.4.vec.extract.i279, i32 noundef -1, i32 noundef -1)
  %i.lh = extractvalue { double, double } %i.lg, 1
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !379
  store double %i.lh, ptr %i.lj, align 8, !tbaa !266
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN6ImPlot15GetPlotMousePosEii.exit283, %bb.ax, %bb.aw
  %.2 = phi i1 [ true, %_ZN6ImPlot15GetPlotMousePosEii.exit283 ], [ %.1366, %bb.ax ], [ %.1366, %bb.aw ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.lk = and i64 %indvars.iv.next, 3
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %i.lk
  %16 = and i32 %i.jf, 1                          ; 2 uses
  %17 = icmp eq i32 %16, 0                        ; 3 uses
  %i.lm = load <2 x float>, ptr %i.ll, align 8, !tbaa !41
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.lo = fcmp olt <4 x float> %i.jd, %i.ln
  %i.lp = fcmp oge <4 x float> %i.jd, %i.ln
  %i.lq = shufflevector <4 x i1> %i.lo, <4 x i1> %i.lp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.lr = select <4 x i1> %i.lq, <4 x float> %i.jd, <4 x float> %i.ln
  %i.ls = insertelement <4 x i1> poison, i1 %17, i64 0
  %i.lt = shufflevector <4 x i1> %i.ls, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.lu = select <4 x i1> %i.lt, <4 x float> <float 4.000000e+00, float -4.000000e+00, float -4.000000e+00, float 4.000000e+00>, <4 x float> <float -4.000000e+00, float 4.000000e+00, float 4.000000e+00, float -4.000000e+00>
  %i.lv = fadd <4 x float> %i.lr, %i.lu
  store <4 x float> %i.lv, ptr %15, align 16, !tbaa !41
  %i.lw = add i32 %i.jg, 5                        ; 2 uses
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.lw) #32
  br i1 %.not357, label %bb.bg, label %._crit_edge387

._crit_edge387:                                   ; preds = %bb.bf
  %.pre388 = load i8, ptr %i.e, align 1, !range !263
  br label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  %i.lx = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %15, i32 noundef %i.lw, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0) #32
  br i1 %.not216, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ly = load i8, ptr %7, align 1, !tbaa !262, !range !263, !noundef !264
  %i.lz = zext i1 %i.lx to i8
  %i.ma = or i8 %i.ly, %i.lz
  store i8 %i.ma, ptr %7, align 1, !tbaa !262
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  br i1 %.not217, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mb = load i8, ptr %8, align 1, !tbaa !262, !range !263, !noundef !264
  %i.mc = trunc nuw i8 %i.mb to i1
  %i.md = load i8, ptr %i.d, align 1, !range !263
  %i.me = select i1 %i.mc, i8 1, i8 %i.md
  store i8 %i.me, ptr %8, align 1, !tbaa !262
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pre389 = load i8, ptr %i.e, align 1, !range !263 ; 3 uses
  br i1 %.not218, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mf = load i8, ptr %9, align 1, !tbaa !262, !range !263, !noundef !264
  %i.mg = trunc nuw i8 %i.mf to i1
  %i.mh = select i1 %i.mg, i8 1, i8 %.pre389
  store i8 %i.mh, ptr %9, align 1, !tbaa !262
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge387, %bb.bk, %bb.bl
  %i.mi = phi i8 [ %.pre388, %._crit_edge387 ], [ %.pre389, %bb.bk ], [ %.pre389, %bb.bl ]
  %i.mj = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  %i.mk = trunc nuw i8 %i.mj to i1
  %i.ml = trunc nuw i8 %i.mi to i1
  %or.cond9 = select i1 %i.mk, i1 true, i1 %i.ml
  %or.cond11 = and i1 %.not358, %or.cond9
  br i1 %or.cond11, label %.sink.split, label %bb.bn

.sink.split:                                      ; preds = %bb.bm
  %.454 = add nuw nsw i32 %16, 3
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef %.454) #32
  br label %bb.bn

bb.bn:                                            ; preds = %.sink.split, %bb.bm
  %i.mm = load i8, ptr %i.e, align 1, !tbaa !262, !range !263, !noundef !264
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.bo, label %bb.by

bb.bo:                                            ; preds = %bb.bn
  %i.mo = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00) #32
  br i1 %i.mo, label %bb.bp, label %bb.by

bb.bp:                                            ; preds = %bb.bo
  %i.mp = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !217 ; 3 uses
  %.not.i292 = icmp eq ptr %i.mr, null            ; 2 uses
  br i1 %17, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  br i1 %.not.i292, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ms = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i296 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i297 = getelementptr inbounds nuw i8, ptr %.pre.i296, i64 80
  %.pre2.i298 = load ptr, ptr %.phi.trans.insert.i297, align 8, !tbaa !217
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.mt = phi ptr [ %.pre2.i298, %bb.br ], [ %i.mr, %bb.bq ] ; 2 uses
  %i.mu = phi ptr [ %.pre.i296, %bb.br ], [ %i.mp, %bb.bq ]
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 2550
  %i.mw = load i8, ptr %i.mv, align 2, !tbaa !384, !range !263, !noundef !264
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %_ZN6ImPlot15GetPlotMousePosEii.exit299, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i293 = load ptr, ptr %i.my, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit299

_ZN6ImPlot15GetPlotMousePosEii.exit299:           ; preds = %bb.bs, %bb.bt
  %i.mz = phi ptr [ %.pre.i.i293, %bb.bt ], [ %i.mt, %bb.bs ]
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 2550
  store i8 1, ptr %i.na, align 2, !tbaa !384
  %i.nb = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i294 = extractelement <2 x float> %i.nb, i64 0
  %.sroa.0.4.vec.extract.i295 = extractelement <2 x float> %i.nb, i64 1
  %i.nc = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i294, float noundef %.sroa.0.4.vec.extract.i295, i32 noundef -1, i32 noundef -1)
  %i.nd = extractvalue { double, double } %i.nc, 1
  br label %.sink.split446

bb.bu:                                            ; preds = %bb.bp
  br i1 %.not.i292, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ne = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i304 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i305 = getelementptr inbounds nuw i8, ptr %.pre.i304, i64 80
  %.pre2.i306 = load ptr, ptr %.phi.trans.insert.i305, align 8, !tbaa !217
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.nf = phi ptr [ %.pre2.i306, %bb.bv ], [ %i.mr, %bb.bu ] ; 2 uses
  %i.ng = phi ptr [ %.pre.i304, %bb.bv ], [ %i.mp, %bb.bu ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 2550
  %i.ni = load i8, ptr %i.nh, align 2, !tbaa !384, !range !263, !noundef !264
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %_ZN6ImPlot15GetPlotMousePosEii.exit307, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i301 = load ptr, ptr %i.nk, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit307

_ZN6ImPlot15GetPlotMousePosEii.exit307:           ; preds = %bb.bw, %bb.bx
  %i.nl = phi ptr [ %.pre.i.i301, %bb.bx ], [ %i.nf, %bb.bw ]
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 2550
  store i8 1, ptr %i.nm, align 2, !tbaa !384
  %i.nn = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i302 = extractelement <2 x float> %i.nn, i64 0
  %.sroa.0.4.vec.extract.i303 = extractelement <2 x float> %i.nn, i64 1
  %i.no = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i302, float noundef %.sroa.0.4.vec.extract.i303, i32 noundef -1, i32 noundef -1)
  %i.np = extractvalue { double, double } %i.no, 0
  br label %.sink.split446

.sink.split446:                                   ; preds = %_ZN6ImPlot15GetPlotMousePosEii.exit307, %_ZN6ImPlot15GetPlotMousePosEii.exit299
  %.sink450 = phi ptr [ %i.b, %_ZN6ImPlot15GetPlotMousePosEii.exit299 ], [ %i.a, %_ZN6ImPlot15GetPlotMousePosEii.exit307 ]
  %.sink447 = phi double [ %i.nd, %_ZN6ImPlot15GetPlotMousePosEii.exit299 ], [ %i.np, %_ZN6ImPlot15GetPlotMousePosEii.exit307 ]
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %.sink450, i64 %indvars.iv
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !379
  store double %.sink447, ptr %i.nr, align 8, !tbaa !266
  br label %bb.by

bb.by:                                            ; preds = %.sink.split446, %bb.bo, %bb.bn
  %.3 = phi i1 [ %.2, %bb.bn ], [ %.2, %bb.bo ], [ true, %.sink.split446 ] ; 2 uses
  %i.ns = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %bb.bz, label %bb.cq

bb.bz:                                            ; preds = %bb.by
  %i.nu = call noundef zeroext i1 @_ZN5ImGui20IsMouseDoubleClickedEi(i32 noundef 0) #32
  br i1 %i.nu, label %bb.ca, label %bb.cq

bb.ca:                                            ; preds = %bb.bz
  %i.nv = load ptr, ptr @GImPlot, align 8, !tbaa !35, !noalias !707 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 80 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !217, !noalias !707 ; 2 uses
  %.not.i308 = icmp eq ptr %i.nx, null
  br i1 %.not.i308, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ny = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.156) #32, !noalias !707 ; 0 uses
  %.pre390 = load ptr, ptr @GImPlot, align 8, !tbaa !35, !noalias !707 ; 2 uses
  %.phi.trans.insert391 = getelementptr inbounds nuw i8, ptr %.pre390, i64 80
  %.pre392 = load ptr, ptr %.phi.trans.insert391, align 8, !tbaa !217, !noalias !707
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.nz = phi ptr [ %.pre392, %bb.cb ], [ %i.nx, %bb.ca ] ; 2 uses
  %i.oa = phi ptr [ %.pre390, %bb.cb ], [ %i.nv, %bb.ca ]
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 2550
  %i.oc = load i8, ptr %i.ob, align 2, !tbaa !384, !range !263, !noalias !707, !noundef !264
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %_ZN6ImPlot13GetPlotLimitsEii.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 80
  call void @_ZN6ImPlot11SetupFinishEv(), !noalias !707
  %.pre.i.i309 = load ptr, ptr %i.oe, align 8, !tbaa !217, !noalias !707
  br label %_ZN6ImPlot13GetPlotLimitsEii.exit

_ZN6ImPlot13GetPlotLimitsEii.exit:                ; preds = %bb.cc, %bb.cd
  %i.of = phi ptr [ %.pre.i.i309, %bb.cd ], [ %i.nz, %bb.cc ]
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 2550
  store i8 1, ptr %i.og, align 2, !tbaa !384, !noalias !707
  %i.oh = load ptr, ptr %i.nw, align 8, !tbaa !217, !noalias !707 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 2448
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !418, !noalias !707
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 2452
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !419, !noalias !707
  %i.om = sext i32 %i.oj to i64
  %i.on = getelementptr [376 x i8], ptr %i.oh, i64 %i.om ; 2 uses
  %i.oo = sext i32 %i.ol to i64
  %i.op = getelementptr [376 x i8], ptr %i.oh, i64 %i.oo ; 2 uses
  %i.oq = getelementptr i8, ptr %i.on, i64 40
  %.sroa.0326.0.copyload = load double, ptr %i.oq, align 8, !tbaa !266 ; 2 uses
  %.sroa.4327.0..sroa_idx = getelementptr i8, ptr %i.on, i64 48
  %.sroa.4327.0.copyload = load double, ptr %.sroa.4327.0..sroa_idx, align 8, !tbaa !266
  %i.or = getelementptr i8, ptr %i.op, i64 40
  %.sroa.5.16.copyload = load double, ptr %i.or, align 8, !tbaa !266 ; 2 uses
  %.sroa.7.16..sroa_idx = getelementptr i8, ptr %i.op, i64 48
  %.sroa.7.16.copyload = load double, ptr %.sroa.7.16..sroa_idx, align 8, !tbaa !266
  br i1 %17, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %_ZN6ImPlot13GetPlotLimitsEii.exit
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !379 ; 3 uses
  %i.ou = icmp eq ptr %i.ot, %2
  br i1 %i.ou, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ov = load double, ptr %2, align 8, !tbaa !266
  %i.ow = load double, ptr %4, align 8, !tbaa !266
  %i.ox = fcmp olt double %i.ov, %i.ow
  br i1 %i.ox, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.oy = icmp eq ptr %i.ot, %4
  br i1 %i.oy, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.oz = load double, ptr %4, align 8, !tbaa !266
  %i.pa = load double, ptr %2, align 8, !tbaa !266
  %i.pb = fcmp olt double %i.oz, %i.pa
  br i1 %i.pb, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cf, %bb.ch, %bb.ci
  %i.pc = phi double [ %.sroa.7.16.copyload, %bb.ci ], [ %.sroa.5.16.copyload, %bb.ch ], [ %.sroa.5.16.copyload, %bb.cf ]
  store double %i.pc, ptr %i.ot, align 8, !tbaa !266
  br label %bb.cq

bb.ck:                                            ; preds = %_ZN6ImPlot13GetPlotLimitsEii.exit
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !379 ; 3 uses
  %i.pf = icmp eq ptr %i.pe, %1
  br i1 %i.pf, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.pg = load double, ptr %1, align 8, !tbaa !266
  %i.ph = load double, ptr %3, align 8, !tbaa !266
  %i.pi = fcmp olt double %i.pg, %i.ph
  br i1 %i.pi, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.pj = icmp eq ptr %i.pe, %3
  br i1 %i.pj, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.pk = load double, ptr %3, align 8, !tbaa !266
  %i.pl = load double, ptr %1, align 8, !tbaa !266
  %i.pm = fcmp olt double %i.pk, %i.pl
  br i1 %i.pm, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cl, %bb.cn, %bb.co
  %i.pn = phi double [ %.sroa.4327.0.copyload, %bb.co ], [ %.sroa.0326.0.copyload, %bb.cn ], [ %.sroa.0326.0.copyload, %bb.cl ]
  store double %i.pn, ptr %i.pe, align 8, !tbaa !266
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cj, %bb.cp, %bb.bz, %bb.by
  %.4 = phi i1 [ %.3, %bb.by ], [ %.3, %bb.bz ], [ true, %bb.cp ], [ true, %bb.cj ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.al, label %bb.an, !llvm.loop !706

bb.cr:                                            ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit
  br i1 %.not216, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.po = load i8, ptr %7, align 1, !tbaa !262, !range !263, !noundef !264
  %i.pp = zext i1 %i.iz to i8
  %i.pq = or i8 %i.po, %i.pp
  store i8 %i.pq, ptr %7, align 1, !tbaa !262
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br i1 %.not217, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i8 1, ptr %8, align 1, !tbaa !262
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br i1 %.not218, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.pr = load i8, ptr %9, align 1, !tbaa !262, !range !263, !noundef !264
  %i.ps = zext i1 %i.ja to i8
  %i.pt = or i8 %i.pr, %i.ps
  store i8 %i.pt, ptr %9, align 1, !tbaa !262
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw, %_ZNK6ImRect8ContainsERK6ImVec2.exit
  %i.pu = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 80 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !217 ; 2 uses
  %.not.i310 = icmp eq ptr %i.pw, null
  br i1 %.not.i310, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.px = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.186) #32 ; 0 uses
  %.pre.i312 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i313 = getelementptr inbounds nuw i8, ptr %.pre.i312, i64 80
  %.pre3.i = load ptr, ptr %.phi.trans.insert.i313, align 8, !tbaa !217
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.py = phi ptr [ %.pre3.i, %bb.cy ], [ %i.pw, %bb.cx ] ; 2 uses
  %i.pz = phi ptr [ %.pre.i312, %bb.cy ], [ %i.pu, %bb.cx ]
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 2550
  %i.qb = load i8, ptr %i.qa, align 2, !tbaa !384, !range !263, !noundef !264
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %_ZN6ImPlot16PushPlotClipRectEf.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i311 = load ptr, ptr %i.qd, align 8, !tbaa !217
  br label %_ZN6ImPlot16PushPlotClipRectEf.exit

_ZN6ImPlot16PushPlotClipRectEf.exit:              ; preds = %bb.cz, %bb.da
  %i.qe = phi ptr [ %.pre.i.i311, %bb.da ], [ %i.py, %bb.cz ]
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 2550
  store i8 1, ptr %i.qf, align 2, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.qg = load ptr, ptr %i.pv, align 8, !tbaa !217
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 2488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.qh, i64 16, i1 false), !tbaa.struct !314
  %i.qi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.qj = load <2 x float>, ptr %i.qi, align 4, !tbaa !41
  %i.qk = fadd <2 x float> %i.qj, zeroinitializer
  store <2 x float> %i.qk, ptr %i.qi, align 4, !tbaa !41
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %i.qi, i1 noundef zeroext true) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.ql = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #32 ; 7 uses
  %or.cond15 = and i1 %.not359, %.4
  br i1 %or.cond15, label %.preheader.preheader, label %bb.db

.preheader.preheader:                             ; preds = %_ZN6ImPlot16PushPlotClipRectEf.exit
  %i.qm = load double, ptr %1, align 8, !tbaa !266
  %i.qn = load double, ptr %2, align 8, !tbaa !266
  %i.qo = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.qm, double noundef %i.qn, i32 noundef -1, i32 noundef -1) ; 5 uses
  store <2 x float> %i.qo, ptr %11, align 16, !tbaa !41
  %i.qp = load double, ptr %3, align 8, !tbaa !266
  %i.qq = load double, ptr %2, align 8, !tbaa !266
  %i.qr = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.qp, double noundef %i.qq, i32 noundef -1, i32 noundef -1)
  store <2 x float> %i.qr, ptr %i.ef, align 8, !tbaa !41
  %i.qs = load double, ptr %3, align 8, !tbaa !266
  %i.qt = load double, ptr %4, align 8, !tbaa !266
  %i.qu = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.qs, double noundef %i.qt, i32 noundef -1, i32 noundef -1) ; 5 uses
  store <2 x float> %i.qu, ptr %i.ej, align 16, !tbaa !41
  %i.qv = load double, ptr %1, align 8, !tbaa !266
  %i.qw = load double, ptr %4, align 8, !tbaa !266
  %i.qx = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.qv, double noundef %i.qw, i32 noundef -1, i32 noundef -1)
  store <2 x float> %i.qx, ptr %i.en, align 8, !tbaa !41
  %i.qy = load double, ptr %1, align 8, !tbaa !266
  %i.qz = load double, ptr %3, align 8, !tbaa !266
  %i.ra = fadd double %i.qy, %i.qz
  %i.rb = fmul double %i.ra, 5.000000e-01
  %i.rc = load double, ptr %2, align 8, !tbaa !266
  %i.rd = load double, ptr %4, align 8, !tbaa !266
  %i.re = fadd double %i.rc, %i.rd
  %i.rf = fmul double %i.re, 5.000000e-01
  %i.rg = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.rb, double noundef %i.rf, i32 noundef -1, i32 noundef -1)
  store <2 x float> %i.rg, ptr %12, align 8, !tbaa !41
  %i.rh = fcmp olt <2 x float> %i.qo, %i.qu
  %i.ri = select <2 x i1> %i.rh, <2 x float> %i.qo, <2 x float> %i.qu
  %i.rj = fcmp oge <2 x float> %i.qo, %i.qu
  %i.rk = select <2 x i1> %i.rj, <2 x float> %i.qo, <2 x float> %i.qu
  store <2 x float> %i.ri, ptr %13, align 8, !tbaa !41
  store <2 x float> %i.rk, ptr %i.fh, align 8, !tbaa !41
  br label %bb.db

bb.db:                                            ; preds = %.preheader.preheader, %_ZN6ImPlot16PushPlotClipRectEf.exit
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ql, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %i.fh, i32 noundef %i.gm, float noundef 0.000000e+00, i32 noundef 0) #32
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.ql, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %i.fh, i32 noundef %i.gi, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #32
  %or.cond17 = or i1 %.4, %i.iy
  %or.cond223 = and i1 %.not357, %or.cond17
  br i1 %or.cond223, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.db
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ql, ptr noundef nonnull align 4 dereferenceable(8) %12, float noundef 4.000000e+00, i32 noundef %i.gi, i32 noundef 0) #32
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ql, ptr noundef nonnull align 4 dereferenceable(8) %11, float noundef 4.000000e+00, i32 noundef %i.gi, i32 noundef 0) #32
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ql, ptr noundef nonnull align 4 dereferenceable(8) %i.ef, float noundef 4.000000e+00, i32 noundef %i.gi, i32 noundef 0) #32
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ql, ptr noundef nonnull align 4 dereferenceable(8) %i.ej, float noundef 4.000000e+00, i32 noundef %i.gi, i32 noundef 0) #32
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ql, ptr noundef nonnull align 4 dereferenceable(8) %i.en, float noundef 4.000000e+00, i32 noundef %i.gi, i32 noundef 0) #32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.db
  %i.rl = load ptr, ptr @GImPlot, align 8, !tbaa !35
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 80 ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !217 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 2550
  %i.rp = load i8, ptr %i.ro, align 2, !tbaa !384, !range !263, !noundef !264
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %_ZN6ImPlot15PopPlotClipRectEv.exit, label %bb.dc

bb.dc:                                            ; preds = %.loopexit
  call void @_ZN6ImPlot11SetupFinishEv()
end_hunk_1
