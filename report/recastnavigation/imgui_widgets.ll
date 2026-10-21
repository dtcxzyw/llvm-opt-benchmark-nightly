Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui_widgets?download=true
inline.NumInlined: 1793
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0

$_ZN5ImGui20ScaleValueFromRatioTIxxdEET_ifS1_S1_bff = comdat any

$_ZN5ImGui22RoundScalarWithFormatTIxEET_PKciS1_ = comdat any

$_ZN5ImGui22RoundScalarWithFormatTIyEET_PKciS1_ = comdat any

$_ZN5ImGui20ScaleRatioFromValueTIfffEEfiT_S1_S1_bff = comdat any

$_ZN5ImGui20ScaleValueFromRatioTIfffEET_ifS1_S1_bff = comdat any

$_ZN5ImGui22RoundScalarWithFormatTIfEET_PKciS1_ = comdat any

$_ZN5ImGui20ScaleRatioFromValueTIdddEEfiT_S1_S1_bff = comdat any

$_ZN5ImGui20ScaleValueFromRatioTIdddEET_ifS1_S1_bff = comdat any

$_ZN5ImGui22RoundScalarWithFormatTIdEET_PKciS1_ = comdat any

@GImGui = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"#SCROLLX\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"#SCROLLY\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"[~]\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"[x]\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"[ ]\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"(x)\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"( )\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%.0f%%\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c" |\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"--------------------------------\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"##ComboPopup\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"##Combo_%02d\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"*Unknown item*\00", align 1
@_ZL13GDataTypeInfo = internal constant [12 x %struct.ImGuiDataTypeInfo] [%struct.ImGuiDataTypeInfo { i64 1, ptr @.str.133, ptr @.str.26, ptr @.str.26 }, %struct.ImGuiDataTypeInfo { i64 1, ptr @.str.134, ptr @.str.135, ptr @.str.135 }, %struct.ImGuiDataTypeInfo { i64 2, ptr @.str.136, ptr @.str.26, ptr @.str.26 }, %struct.ImGuiDataTypeInfo { i64 2, ptr @.str.137, ptr @.str.135, ptr @.str.135 }, %struct.ImGuiDataTypeInfo { i64 4, ptr @.str.138, ptr @.str.26, ptr @.str.26 }, %struct.ImGuiDataTypeInfo { i64 4, ptr @.str.139, ptr @.str.135, ptr @.str.135 }, %struct.ImGuiDataTypeInfo { i64 8, ptr @.str.140, ptr @.str.141, ptr @.str.141 }, %struct.ImGuiDataTypeInfo { i64 8, ptr @.str.142, ptr @.str.143, ptr @.str.143 }, %struct.ImGuiDataTypeInfo { i64 4, ptr @.str.144, ptr @.str.145, ptr @.str.146 }, %struct.ImGuiDataTypeInfo { i64 8, ptr @.str.147, ptr @.str.146, ptr @.str.148 }, %struct.ImGuiDataTypeInfo { i64 1, ptr @.str.149, ptr @.str.26, ptr @.str.26 }, %struct.ImGuiDataTypeInfo { i64 0, ptr @.str.150, ptr @.str.151, ptr @.str.151 }], align 16
@.str.20 = private unnamed_addr constant [6 x i8] c"##min\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"##max\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"%.0f deg\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"ID: 0x%08X, ActiveID: 0x%08X\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"CurLenA: %d, Cursor: %d, Selection: %d..%d\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"BufCapacity: %d\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"(Internal Buffer: TextA Size: %d, Capacity: %d)\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"has_preferred_x: %d (%.2f)\00", align 1
@.str.32 = private unnamed_addr constant [73 x i8] c"undo_point: %d, redo_point: %d, undo_char_point: %d, redo_char_point: %d\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"undopoints\00", align 1
@.str.34 = private unnamed_addr constant [73 x i8] c"%c [%02d] where %03d, insert %03d, delete %03d, char_storage %03d \22%.*s\22\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"M:0.000\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"M:000\00", align 1
@_ZZN5ImGui10ColorEdit4EPKcPfiE3ids = internal unnamed_addr constant [4 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], align 16
@.str.37 = private unnamed_addr constant [4 x i8] c"##X\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"##Y\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"##Z\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"##W\00", align 1
@_ZZN5ImGui10ColorEdit4EPKcPfiE13fmt_table_int = internal unnamed_addr constant [3 x [4 x ptr]] [[4 x ptr] [ptr @.str.41, ptr @.str.41, ptr @.str.41, ptr @.str.41], [4 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [4 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.45]], align 16
@.str.41 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"R:%3d\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"G:%3d\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"B:%3d\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"A:%3d\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"H:%3d\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"S:%3d\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"V:%3d\00", align 1
@_ZZN5ImGui10ColorEdit4EPKcPfiE15fmt_table_float = internal unnamed_addr constant [3 x [4 x ptr]] [[4 x ptr] [ptr @.str.49, ptr @.str.49, ptr @.str.49, ptr @.str.49], [4 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [4 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.53]], align 16
@.str.49 = private unnamed_addr constant [6 x i8] c"%0.3f\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"R:%0.3f\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"G:%0.3f\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"B:%0.3f\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"A:%0.3f\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"H:%0.3f\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"S:%0.3f\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"V:%0.3f\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"#%02X%02X%02X%02X\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"#%02X%02X%02X\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"##Text\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"%02X%02X%02X%02X\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"%02X%02X%02X\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"##ColorButton\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"picker\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"##picker\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"_COL3F\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"_COL4F\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"hsv\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"Current\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"##current\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"Original\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"##original\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"##rgb\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"##hsv\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"##hex\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"##preview\00", align 1
@.str.81 = private unnamed_addr constant [53 x i8] c"#%02X%02X%02X\0AR: %d, G: %d, B: %d\0A(%.3f, %.3f, %.3f)\00", align 1
@.str.82 = private unnamed_addr constant [66 x i8] c"#%02X%02X%02X%02X\0AR:%d, G:%d, B:%d, A:%d\0A(%.3f, %.3f, %.3f, %.3f)\00", align 1
@.str.83 = private unnamed_addr constant [26 x i8] c"H: %.3f, S: %.3f, V: %.3f\00", align 1
@.str.84 = private unnamed_addr constant [35 x i8] c"H: %.3f, S: %.3f, V: %.3f, A: %.3f\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"HSV\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"Hex\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"0..255\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"0.00..1.00\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"Copy as..\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.92 = private unnamed_addr constant [29 x i8] c"(%.3ff, %.3ff, %.3ff, %.3ff)\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"(%d,%d,%d,%d)\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"##selectable\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"##previewing_picker\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"Alpha Bar\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"###\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"#CLOSE\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"SearchBuffer = \22%s\22\00", align 1
@.str.101 = private unnamed_addr constant [42 x i8] c"SingleCharMode = %d, Size = %d, Lock = %d\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"LastRequest = time: %.2f, frame: %d\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"##BoxSelect\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"BeginMultiSelect\00", align 1
@.str.105 = private unnamed_addr constant [38 x i8] c"EndMultiSelect() FocusScope mismatch!\00", align 1
@.str.106 = private unnamed_addr constant [49 x i8] c"[selection] EndMultiSelect: Reset RangeSrcItem.\0A\00", align 1
@.str.107 = private unnamed_addr constant [46 x i8] c"[selection] EndMultiSelect: Reset NavIdItem.\0A\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"EndMultiSelect\00", align 1
@.str.109 = private unnamed_addr constant [29 x i8] c"MultiSelect 0x%08X in '%s'%s\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c" *Inactive*\00", align 1
@.str.112 = private unnamed_addr constant [49 x i8] c"RangeSrcItem = %lld (0x%llX), RangeSelected = %d\00", align 1
@.str.113 = private unnamed_addr constant [46 x i8] c"NavIdItem = %lld (0x%llX), NavIdSelected = %d\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"LastSelectionSize = %d\00", align 1
@.str.115 = private unnamed_addr constant [20 x i8] c"%d: %8.4g\0A%d: %8.4g\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"%d: %8.4g\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"%s: %d\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"%%s: %s\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"%s: %.3f\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"##MenuBar\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"##MainMenuBar\00", align 1
@.str.125 = private unnamed_addr constant [46 x i8] c"Calling EndMainMenuBar() not from a menu-bar!\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"Mismatched BeginTabBar()/EndTabBar()!\00", align 1
@.str.129 = private unnamed_addr constant [58 x i8] c"Needs to be called between BeginTabBar() and EndTabBar()!\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.132 = private unnamed_addr constant [15 x i8] c"*Missing Text*\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"S8\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"U8\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"S16\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"U16\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"S32\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"U32\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"S64\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"U64\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"char*\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.152 = private unnamed_addr constant [47 x i8] c"[selection] BeginBoxSelect() 0X%08X: Activate\0A\00", align 1
@.str.153 = private unnamed_addr constant [49 x i8] c"[selection] BeginBoxSelect() 0X%08X: Deactivate\0A\00", align 1
@.str.154 = private unnamed_addr constant [43 x i8] c"[selection] %s: Request: SetAll %d (= %s)\0A\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"SelectAll\00", align 1
@.str.156 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.157 = private unnamed_addr constant [77 x i8] c"[selection] %s: Request: SetRange %lld..%lld (0x%llX..0x%llX) = %d (dir %d)\0A\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"##v\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"##<\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"##>\00", align 1
@_ZZL32GetMinimumStepAtDecimalPrecisioniE9min_steps = internal unnamed_addr constant [10 x float] [float 1.000000e+00, float 1.000000e-01, float f0x3C23D70A, float 1.000000e-03, float f0x38D1B717, float f0x3727C5AC, float f0x358637BD, float 1.000000e-07, float f0x322BCC77, float f0x3089705F], align 16

@_ZN19ImGuiInputTextStateC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN19ImGuiInputTextStateC2Ev
@_ZN19ImGuiInputTextStateD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN19ImGuiInputTextStateD2Ev
@_ZN26ImGuiInputTextCallbackDataC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN26ImGuiInputTextCallbackDataC2Ev
@_ZN26ImGuiSelectionBasicStorageC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN26ImGuiSelectionBasicStorageC2Ev
@_ZN29ImGuiSelectionExternalStorageC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN29ImGuiSelectionExternalStorageC2Ev
@_ZN11ImGuiTabBarC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ImGuiTabBarC2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 5 uses
  %4 = alloca %struct.ImRect, align 8             ; 8 uses
  %5 = alloca %struct.ImVec2, align 8             ; 11 uses
  %6 = alloca %struct.ImRect, align 16            ; 6 uses
  %7 = alloca %struct.ImRect, align 4             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !186, !range !187, !noundef !188
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %0, %1                       ; 2 uses
  %spec.select = select i1 %i.h, ptr @.str, ptr %1 ; 2 uses
  %spec.select101 = select i1 %i.h, ptr @.str, ptr %0 ; 11 uses
  %i.i = icmp eq ptr %spec.select, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select101) #35
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select101, i64 %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.k, %bb.c ], [ %spec.select, %bb.b ] ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !189 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.o = load float, ptr %i.n, align 4, !tbaa !190
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.q = load float, ptr %i.p, align 8, !tbaa !191
  %i.r = fadd float %i.o, %i.q                    ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 492
  %i.t = load float, ptr %i.s, align 4, !tbaa !192 ; 2 uses
  %i.u = fcmp oge float %i.t, 0.000000e+00        ; 2 uses
  %i.v = ptrtoint ptr %.1 to i64                  ; 6 uses
  %i.w = ptrtoint ptr %spec.select101 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp slt i64 %i.x, 2001
  %or.cond = select i1 %i.y, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef float @_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %i.l, float noundef %i.t) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = phi float [ %i.z, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ab = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %spec.select101, ptr noundef nonnull %.1, i1 noundef zeroext false, float noundef %i.aa) #36 ; 2 uses
  store <2 x float> %i.ab, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.ac = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.r, i64 1
  %i.ae = fadd <2 x float> %i.ad, %i.ab
  store float %i.m, ptr %4, align 8, !tbaa !193
  %.sroa_idx133 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.r, ptr %.sroa_idx133, align 4, !tbaa !193
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.ae, ptr %i.af, align 8, !tbaa !193
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef 0.000000e+00) #36
  %i.ag = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 0, ptr noundef null, i32 noundef 0) #36
  br i1 %i.ag, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.sroa.042.0.copyload = load <2 x float>, ptr %4, align 8, !tbaa !193
  call void @_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f(<2 x float> %.sroa.042.0.copyload, ptr noundef %spec.select101, ptr noundef nonnull %.1, float noundef %i.aa) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  %i.ah = tail call noundef float @_ZN5ImGui17GetTextLineHeightEv() #36 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !193
  %i.aj = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.r, i64 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 10008
  %i.am = load i8, ptr %i.al, align 8, !tbaa !194, !range !187, !noundef !188
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 612
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !195
  %i.aq = fsub float %i.ap, %i.r
  %i.ar = fdiv float %i.aq, %i.ah
  %i.as = fptosi float %i.ar to i32               ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.j
  %i.au = icmp ult ptr %spec.select101, %.1
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.av = and i32 %2, 1
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.089148.us = phi i32 [ %i.bf, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.090147.us = phi ptr [ %i.be, %.lr.ph.split.us ], [ %spec.select101, %.lr.ph ] ; 3 uses
  %i.ax = phi float [ %i.bd, %.lr.ph.split.us ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %i.ay = ptrtoint ptr %.090147.us to i64
  %i.az = sub i64 %i.v, %i.ay
  %i.ba = tail call noundef ptr @memchr(ptr noundef %.090147.us, i32 noundef 10, i64 noundef %i.az) #35 ; 2 uses
  %.not.us = icmp eq ptr %i.ba, null
  %spec.select102.us = select i1 %.not.us, ptr %.1, ptr %i.ba ; 2 uses
  %i.bb = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.090147.us, ptr noundef nonnull %spec.select102.us, i1 noundef zeroext false, float noundef -1.000000e+00) #36
  %.sroa.012.0.vec.extract.us = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.bc = fcmp oge float %i.ax, %.sroa.012.0.vec.extract.us
  %i.bd = select i1 %i.bc, float %i.ax, float %.sroa.012.0.vec.extract.us ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %spec.select102.us, i64 1 ; 3 uses
  %i.bf = add nuw nsw i32 %.089148.us, 1          ; 3 uses
  %i.bg = icmp ult ptr %i.be, %.1
  %i.bh = icmp slt i32 %i.bf, %i.as
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !601

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.089148 = phi i32 [ %i.bn, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.090147 = phi ptr [ %i.bm, %.lr.ph.split ], [ %spec.select101, %.lr.ph ] ; 2 uses
  %i.bj = ptrtoint ptr %.090147 to i64
  %i.bk = sub i64 %i.v, %i.bj
  %i.bl = tail call noundef ptr @memchr(ptr noundef %.090147, i32 noundef 10, i64 noundef %i.bk) #35 ; 2 uses
  %.not = icmp eq ptr %i.bl, null
  %spec.select102 = select i1 %.not, ptr %.1, ptr %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %spec.select102, i64 1 ; 3 uses
  %i.bn = add nuw nsw i32 %.089148, 1             ; 3 uses
  %i.bo = icmp ult ptr %i.bm, %.1
  %i.bp = icmp slt i32 %i.bn, %i.as
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.lr.ph.split, label %._crit_edge, !llvm.loop !601

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.preheader
  %.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.bd, %.lr.ph.split.us ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.090.lcssa = phi ptr [ %spec.select101, %.preheader ], [ %i.be, %.lr.ph.split.us ], [ %i.bm, %.lr.ph.split ]
  %.089.lcssa = phi i32 [ 0, %.preheader ], [ %i.bf, %.lr.ph.split.us ], [ %i.bn, %.lr.ph.split ]
  store float %.lcssa, ptr %5, align 8
  %i.br = uitofp nneg i32 %.089.lcssa to float
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.ah, float %i.r)
  %.sroa.0113.4.vec.insert = insertelement <2 x float> %i.ak, float %i.bs, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge, %bb.i
  %i.bt = phi float [ 0.000000e+00, %bb.i ], [ %.lcssa, %._crit_edge ], [ 0.000000e+00, %bb.j ]
  %.sroa.0113.0 = phi <2 x float> [ %i.ak, %bb.i ], [ %.sroa.0113.4.vec.insert, %._crit_edge ], [ %i.ak, %bb.j ] ; 4 uses
  %.2 = phi ptr [ %spec.select101, %bb.i ], [ %.090.lcssa, %._crit_edge ], [ %spec.select101, %bb.j ] ; 2 uses
  %i.bu = icmp ult ptr %.2, %.1
  br i1 %i.bu, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.bv = insertelement <2 x float> <float f0x7F7FFFFF, float poison>, float %i.ah, i64 1
  %i.bw = fadd <2 x float> %i.bv, %.sroa.0113.0
  %8 = shufflevector <2 x float> %.sroa.0113.0, <2 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %6, align 16, !tbaa !193
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.n
  %.3154 = phi ptr [ %.2, %bb.l ], [ %i.ch, %bb.n ] ; 5 uses
  %.sroa.0113.1153 = phi <2 x float> [ %.sroa.0113.0, %bb.l ], [ %.sroa.0113.4.vec.insert121, %bb.n ] ; 4 uses
  %i.bz = call noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 0) #36
  br i1 %i.bz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = ptrtoint ptr %.3154 to i64
  %i.cb = sub i64 %i.v, %i.ca
  %i.cc = call noundef ptr @memchr(ptr noundef %.3154, i32 noundef 10, i64 noundef %i.cb) #35 ; 2 uses
  %.not99 = icmp eq ptr %i.cc, null
  %spec.select103 = select i1 %.not99, ptr %.1, ptr %i.cc ; 3 uses
  %i.cd = load float, ptr %5, align 8, !tbaa !197 ; 2 uses
  %i.ce = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.3154, ptr noundef nonnull %spec.select103, i1 noundef zeroext false, float noundef -1.000000e+00) #36
  %.sroa.07.0.vec.extract = extractelement <2 x float> %i.ce, i64 0 ; 2 uses
  %i.cf = fcmp oge float %i.cd, %.sroa.07.0.vec.extract
  %i.cg = select i1 %i.cf, float %i.cd, float %.sroa.07.0.vec.extract
  store float %i.cg, ptr %5, align 8, !tbaa !197
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0113.1153, ptr noundef %.3154, ptr noundef nonnull %spec.select103, i1 noundef zeroext false) #36
  %i.ch = getelementptr inbounds nuw i8, ptr %spec.select103, i64 1 ; 3 uses
  %i.ci = load float, ptr %i.bx, align 4, !tbaa !198
  %i.cj = fadd float %i.ah, %i.ci
  store float %i.cj, ptr %i.bx, align 4, !tbaa !198
  %i.ck = load float, ptr %i.by, align 4, !tbaa !199
  %i.cl = fadd float %i.ah, %i.ck
  store float %i.cl, ptr %i.by, align 4, !tbaa !199
  %.sroa.0113.4.vec.extract123 = extractelement <2 x float> %.sroa.0113.1153, i64 1
  %i.cm = fadd float %i.ah, %.sroa.0113.4.vec.extract123
  %.sroa.0113.4.vec.insert121 = insertelement <2 x float> %.sroa.0113.1153, float %i.cm, i64 1 ; 2 uses
  %i.cn = icmp ult ptr %i.ch, %.1
  br i1 %i.cn, label %bb.m, label %bb.o, !llvm.loop !602

bb.o:                                             ; preds = %bb.m, %bb.n
  %.sroa.0113.1.lcssa = phi <2 x float> [ %.sroa.0113.1153, %bb.m ], [ %.sroa.0113.4.vec.insert121, %bb.n ] ; 2 uses
  %.3.lcssa = phi ptr [ %.3154, %bb.m ], [ %i.ch, %bb.n ] ; 3 uses
  %i.co = icmp ult ptr %.3.lcssa, %.1
  br i1 %i.co, label %.lr.ph158, label %._crit_edge159

.lr.ph158:                                        ; preds = %bb.o
  %i.cp = and i32 %2, 1
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph158.split.us.preheader, label %.lr.ph158.split

.lr.ph158.split.us.preheader:                     ; preds = %.lr.ph158
  %.pre = load float, ptr %5, align 8, !tbaa !197
  br label %.lr.ph158.split.us

.lr.ph158.split.us:                               ; preds = %.lr.ph158.split.us.preheader, %.lr.ph158.split.us
  %i.cr = phi float [ %i.cx, %.lr.ph158.split.us ], [ %.pre, %.lr.ph158.split.us.preheader ] ; 2 uses
  %.085156.us = phi i32 [ %i.cz, %.lr.ph158.split.us ], [ 0, %.lr.ph158.split.us.preheader ]
  %.4155.us = phi ptr [ %i.cy, %.lr.ph158.split.us ], [ %.3.lcssa, %.lr.ph158.split.us.preheader ] ; 3 uses
  %i.cs = ptrtoint ptr %.4155.us to i64
  %i.ct = sub i64 %i.v, %i.cs
  %i.cu = call noundef ptr @memchr(ptr noundef %.4155.us, i32 noundef 10, i64 noundef %i.ct) #35 ; 2 uses
  %.not100.us = icmp eq ptr %i.cu, null
  %spec.select104.us = select i1 %.not100.us, ptr %.1, ptr %i.cu ; 2 uses
  %i.cv = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.4155.us, ptr noundef nonnull %spec.select104.us, i1 noundef zeroext false, float noundef -1.000000e+00) #36
  %.sroa.02.0.vec.extract.us = extractelement <2 x float> %i.cv, i64 0 ; 2 uses
  %i.cw = fcmp oge float %i.cr, %.sroa.02.0.vec.extract.us
  %i.cx = select i1 %i.cw, float %i.cr, float %.sroa.02.0.vec.extract.us ; 2 uses
  store float %i.cx, ptr %5, align 8, !tbaa !197
  %i.cy = getelementptr inbounds nuw i8, ptr %spec.select104.us, i64 1 ; 2 uses
  %i.cz = add nuw nsw i32 %.085156.us, 1          ; 2 uses
  %i.da = icmp ult ptr %i.cy, %.1
  br i1 %i.da, label %.lr.ph158.split.us, label %._crit_edge159, !llvm.loop !603

.lr.ph158.split:                                  ; preds = %.lr.ph158, %.lr.ph158.split
  %.085156 = phi i32 [ %i.df, %.lr.ph158.split ], [ 0, %.lr.ph158 ]
  %.4155 = phi ptr [ %i.de, %.lr.ph158.split ], [ %.3.lcssa, %.lr.ph158 ] ; 2 uses
  %i.db = ptrtoint ptr %.4155 to i64
  %i.dc = sub i64 %i.v, %i.db
  %i.dd = call noundef ptr @memchr(ptr noundef %.4155, i32 noundef 10, i64 noundef %i.dc) #35 ; 2 uses
  %.not100 = icmp eq ptr %i.dd, null
  %spec.select104 = select i1 %.not100, ptr %.1, ptr %i.dd
  %i.de = getelementptr inbounds nuw i8, ptr %spec.select104, i64 1 ; 2 uses
  %i.df = add nuw nsw i32 %.085156, 1             ; 2 uses
  %i.dg = icmp ult ptr %i.de, %.1
  br i1 %i.dg, label %.lr.ph158.split, label %._crit_edge159, !llvm.loop !603

._crit_edge159:                                   ; preds = %.lr.ph158.split, %.lr.ph158.split.us, %bb.o
  %.085.lcssa = phi i32 [ 0, %bb.o ], [ %i.cz, %.lr.ph158.split.us ], [ %i.df, %.lr.ph158.split ]
  %i.dh = uitofp nneg i32 %.085.lcssa to float
  %.sroa.0113.4.vec.extract127 = extractelement <2 x float> %.sroa.0113.1.lcssa, i64 1
  %i.di = call float @llvm.fmuladd.f32(float %i.dh, float %i.ah, float %.sroa.0113.4.vec.extract127)
  %.sroa.0113.4.vec.insert125 = insertelement <2 x float> %.sroa.0113.1.lcssa, float %i.di, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.pre171 = load float, ptr %5, align 8, !tbaa !197
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge159, %bb.k
  %i.dj = phi float [ %.pre171, %._crit_edge159 ], [ %i.bt, %bb.k ]
  %.sroa.0113.2 = phi <2 x float> [ %.sroa.0113.4.vec.insert125, %._crit_edge159 ], [ %.sroa.0113.0, %bb.k ]
  %.sroa.0113.4.vec.extract131 = extractelement <2 x float> %.sroa.0113.2, i64 1
  %i.dk = fsub float %.sroa.0113.4.vec.extract131, %i.r ; 2 uses
  store float %i.dk, ptr %i.ai, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.dl = fadd float %i.m, %i.dj
  %i.dm = fadd float %i.r, %i.dk
  %.sroa.0.0.vec.insert.i109 = insertelement <2 x float> poison, float %i.dl, i64 0
  %.sroa.0.4.vec.insert.i110 = insertelement <2 x float> %.sroa.0.0.vec.insert.i109, float %i.dm, i64 1
  store float %i.m, ptr %7, align 4, !tbaa !193
  %.sroa_idx135 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.r, ptr %.sroa_idx135, align 4, !tbaa !193
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.0.4.vec.insert.i110, ptr %i.dn, align 4, !tbaa !193
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef 0.000000e+00) #36
  %i.do = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 0, ptr noundef null, i32 noundef 0) #36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.q

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p, %bb.h, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare noundef float @_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8), float noundef) local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef, ptr noundef, i1 noundef zeroext, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8), float noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f(<2 x float>, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef float @_ZN5ImGui17GetTextLineHeightEv() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float>, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui4TextEPKcz(ptr noundef %0, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !186, !range !187, !noundef !188
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui5TextVEPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %0, ptr noundef nonnull %1) #36
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !201
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !201
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %i.j, ptr noundef %i.k, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5ImGui5TextVEPKcP13__va_list_tag.exit

_ZN5ImGui5TextVEPKcP13__va_list_tag.exit:         ; preds = %bb.a, %bb.b
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN5ImGui11CloseButtonEjRK6ImVec2:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %.sroa.0.4.vec.insert.i44 = insertelement <2 x float> %.sroa.0.0.vec.insert.i39, float %i.bl, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i44, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %.sroa.0.4.vec.insert.i46 = insertelement <2 x float> %.sroa.0.0.vec.insert.i41, float %i.bj, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i46, ptr %7, align 8
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.bm, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef %i.as, float noundef 1.000000e+00) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret i1 %i.aj
}

declare void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui14CollapseButtonEjRK6ImVec2(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImRect, align 8             ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4400
  %i.g = load float, ptr %i.f, align 8, !tbaa !208
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !193 ; 2 uses
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fadd <2 x float> %i.j, %i.h
  store <2 x float> %i.h, ptr %2, align 8, !tbaa !193
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store <2 x float> %i.k, ptr %i.l, align 8, !tbaa !193
  %i.m = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %0, ptr noundef null, i32 noundef 0) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.n = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.b, align 1, !tbaa !233, !range !187, !noundef !188 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = load i8, ptr %i.a, align 1, !range !187  ; 2 uses
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.p, i32 23, i32 22
  %i.t = select i1 %i.r, i32 %i.s, i32 21
  %i.u = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.t, float noundef 1.000000e+00) #36
  %i.v = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00) #36
  %i.w = or i8 %i.q, %i.o
  %or.cond3.not = icmp eq i8 %i.w, 0
  br i1 %or.cond3.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !205
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.y, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.l, i32 noundef %i.u, float noundef 0.000000e+00, i32 noundef 0) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %0, i32 noundef 2) #36
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !205
  %.sroa.0.0.copyload = load <2 x float>, ptr %2, align 8, !tbaa !193
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 207
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !613, !range !187, !noundef !188
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ad, i32 1, i32 3
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.aa, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.v, i32 noundef %i.ae, float noundef 1.000000e+00) #36
  %i.af = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() #36
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ag = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00) #36
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow(ptr noundef nonnull %i.e) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret i1 %i.n
}

declare noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN5ImGui20GetWindowScrollbarIDEP11ImGuiWindow9ImGuiAxis(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %.str.4..str.5 = select i1 %i.a, ptr @.str.4, ptr @.str.5
  %i.b = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %0, ptr noundef nonnull %.str.4..str.5, ptr noundef null) #36
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN5ImGui22GetWindowScrollbarRectEP11ImGuiWindow9ImGuiAxis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load float, ptr %i.a, align 8, !tbaa !241 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load float, ptr %i.c, align 4, !tbaa !242 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load float, ptr %i.e, align 8, !tbaa !243
  %i.g = fadd float %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load float, ptr %i.h, align 4, !tbaa !244
  %i.j = fadd float %i.d, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 544
  %.sroa.0.0.copyload = load float, ptr %i.k, align 8, !tbaa !193
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 548
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !193
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !193
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 556
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !193
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = xor i32 %1, 1
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !193 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.r = load float, ptr %i.q, align 4, !tbaa !245
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 5.000000e-01, float 5.000000e-01)
  %i.t = fptosi float %i.s to i32
  %i.u = sitofp i32 %i.t to float                 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !246
  %i.x = and i32 %i.w, 1024
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3224
  %i.aa = load float, ptr %i.z, align 8, !tbaa !247
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float 5.000000e-01, float 5.000000e-01)
  %i.ac = fptosi float %i.ab to i32
  %i.ad = sitofp i32 %i.ac to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ae = phi float [ %i.ad, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.af = icmp eq i32 %1, 0
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = fadd float %.sroa.0.0.copyload, %i.u
  %i.ah = fadd float %i.d, %i.u                   ; 2 uses
  %i.ai = fsub float %i.j, %i.u                   ; 2 uses
  %i.aj = fsub float %i.ai, %i.p                  ; 2 uses
  %i.ak = fcmp oge float %i.ah, %i.aj
  %i.al = select i1 %i.ak, float %i.ah, float %i.aj
  %i.am = fsub float %.sroa.5.0.copyload, %i.u
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.an = fsub float %i.g, %i.u                   ; 2 uses
  %i.ao = fsub float %i.an, %i.p                  ; 2 uses
  %i.ap = fcmp oge float %i.b, %i.ao
  %i.aq = select i1 %i.ap, float %i.b, float %i.ao
  %i.ar = fadd float %.sroa.4.0.copyload, %i.ae
  %i.as = fsub float %.sroa.6.0.copyload, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink36 = phi float [ %i.aq, %bb.e ], [ %i.ag, %bb.d ]
  %.sink35 = phi float [ %i.ar, %bb.e ], [ %i.al, %bb.d ]
  %.sink34 = phi float [ %i.an, %bb.e ], [ %i.am, %bb.d ]
  %.sink = phi float [ %i.as, %bb.e ], [ %i.ai, %bb.d ]
  %.sroa.0.0.vec.insert26 = insertelement <2 x float> poison, float %.sink36, i64 0
  %.sroa.0.4.vec.insert28 = insertelement <2 x float> %.sroa.0.0.vec.insert26, float %.sink35, i64 1
  %.sroa.5.8.vec.insert31 = insertelement <2 x float> poison, float %.sink34, i64 0
  %.sroa.5.12.vec.insert33 = insertelement <2 x float> %.sroa.5.8.vec.insert31, float %.sink, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert28, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.5.12.vec.insert33, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImRect, align 16            ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161  ; 17 uses
  %i.e = icmp eq i32 %0, 0                        ; 2 uses
  %.str.4..str.5.i = select i1 %i.e, ptr @.str.4, ptr @.str.5
  %i.f = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.d, ptr noundef nonnull %.str.4..str.5.i, ptr noundef null) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load float, ptr %i.g, align 8, !tbaa !241 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.j = load float, ptr %i.i, align 4, !tbaa !242 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.l = load float, ptr %i.k, align 8, !tbaa !243
  %i.m = fadd float %i.h, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.o = load float, ptr %i.n, align 4, !tbaa !244
  %i.p = fadd float %i.j, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 544 ; 2 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.q, align 8, !tbaa !193
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 548
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !193
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 552 ; 2 uses
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !193
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 556
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !193
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.s = xor i32 %0, 1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !193 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.x = load float, ptr %i.w, align 4, !tbaa !245
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float 5.000000e-01, float 5.000000e-01)
  %i.z = fptosi float %i.y to i32
  %i.aa = sitofp i32 %i.z to float                ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !246 ; 2 uses
  %i.ad = and i32 %i.ac, 1024
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3224
  %i.ag = load float, ptr %i.af, align 8, !tbaa !247
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float 5.000000e-01, float 5.000000e-01)
  %i.ai = fptosi float %i.ah to i32
  %i.aj = sitofp i32 %i.ai to float
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ak = phi float [ %i.aj, %bb.b ], [ 0.000000e+00, %bb.a ]
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = fadd float %.sroa.0.0.copyload.i, %i.aa
  %i.am = fadd float %i.j, %i.aa                  ; 2 uses
  %i.an = fsub float %i.p, %i.aa                  ; 2 uses
  %i.ao = fsub float %i.an, %i.v                  ; 2 uses
  %i.ap = fcmp oge float %i.am, %i.ao
  %i.aq = select i1 %i.ap, float %i.am, float %i.ao
  %i.ar = fsub float %.sroa.5.0.copyload.i, %i.aa
  %.sroa.0.0.vec.insert26.i36 = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.0.4.vec.insert28.i37 = insertelement <2 x float> %.sroa.0.0.vec.insert26.i36, float %i.aq, i64 1
  %.sroa.5.8.vec.insert31.i38 = insertelement <2 x float> poison, float %i.ar, i64 0
  %.sroa.5.12.vec.insert33.i39 = insertelement <2 x float> %.sroa.5.8.vec.insert31.i38, float %i.an, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 201
  %i.at = load i8, ptr %i.as, align 1, !tbaa !614, !range !187, !noundef !188
  %i.au = trunc nuw i8 %i.at to i1
  %spec.select = select i1 %i.au, i32 320, i32 448
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.av = fsub float %i.m, %i.aa                  ; 2 uses
  %i.aw = fsub float %i.av, %i.v                  ; 2 uses
  %i.ax = fcmp oge float %i.h, %i.aw
  %i.ay = select i1 %i.ax, float %i.h, float %i.aw
  %i.az = fadd float %.sroa.4.0.copyload.i, %i.ak
  %i.ba = fsub float %.sroa.6.0.copyload.i, %i.aa
  %.sroa.0.0.vec.insert26.i = insertelement <2 x float> poison, float %i.ay, i64 0
  %.sroa.0.4.vec.insert28.i = insertelement <2 x float> %.sroa.0.0.vec.insert26.i, float %i.az, i64 1
  %.sroa.5.8.vec.insert31.i = insertelement <2 x float> poison, float %i.av, i64 0
  %.sroa.5.12.vec.insert33.i = insertelement <2 x float> %.sroa.5.8.vec.insert31.i, float %i.ba, i64 1
  %i.bb = and i32 %i.ac, 1025
  %or.cond = icmp eq i32 %i.bb, 1
  %.0 = select i1 %or.cond, i32 288, i32 256      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !615, !range !187, !noundef !188
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = or disjoint i32 %.0, 128
  %spec.select31 = select i1 %i.be, i32 %.0, i32 %i.bf
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.4.vec.insert28.i.sink = phi <2 x float> [ %.sroa.0.4.vec.insert28.i37, %bb.d ], [ %.sroa.0.4.vec.insert28.i, %bb.e ]
  %.sroa.5.12.vec.insert33.i.sink = phi <2 x float> [ %.sroa.5.12.vec.insert33.i39, %bb.d ], [ %.sroa.5.12.vec.insert33.i, %bb.e ]
  %.1 = phi i32 [ %spec.select, %bb.d ], [ %spec.select31, %bb.e ]
  %2 = shufflevector <2 x float> %.sroa.0.4.vec.insert28.i.sink, <2 x float> %.sroa.5.12.vec.insert33.i.sink, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %2, ptr %1, align 16
  %i.bg = sext i32 %0 to i64                      ; 5 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0..sroa_idx.i, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !193
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bg
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !193
  %i.bl = fsub float %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bg
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !193
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bg
  %i.br = load float, ptr %i.bq, align 4, !tbaa !193
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float 2.000000e+00, float %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bg ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !193
  %i.bw = fptosi float %i.bv to i64
  store i64 %i.bw, ptr %i.a, align 8, !tbaa !248
  %i.bx = fptosi float %i.bl to i64
  %i.by = fptosi float %i.bs to i64
  %i.bz = call noundef zeroext i1 @_ZN5ImGui11ScrollbarExERK6ImRectj9ImGuiAxisPxxxi(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %i.f, i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.bx, i64 noundef %i.by, i32 noundef %.1) ; 0 uses
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !248
  %i.cb = sitofp i64 %i.ca to float
  store float %i.cb, ptr %i.bu, align 4, !tbaa !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui11ScrollbarExERK6ImRectj9ImGuiAxisPxxxi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.ImRect, align 16            ; 11 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %9 = alloca %struct.ImRect, align 4             ; 7 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.g = load i8, ptr %i.f, align 1, !tbaa !186, !range !187, !noundef !188
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.thread129, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !193
  %i.k = load <2 x float>, ptr %0, align 4, !tbaa !193
  %i.l = fsub <2 x float> %i.j, %i.k              ; 3 uses
  %i.m = extractelement <2 x float> %i.l, i64 0   ; 3 uses
  %i.n = fcmp ole float %i.m, 0.000000e+00
  %i.o = extractelement <2 x float> %i.l, i64 1   ; 3 uses
  %i.p = fcmp ole float %i.o, 0.000000e+00
  %or.cond = or i1 %i.n, %i.p
  br i1 %or.cond, label %.thread129, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq i32 %2, 1
  %i.r = fcmp olt float %i.o, %i.m
  %or.cond118 = and i1 %i.q, %i.r
  br i1 %or.cond118, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = fmul float %i.m, 2.000000e+00            ; 2 uses
  %i.t = fcmp oge float %i.s, 1.000000e+00
  %i.u = select i1 %i.t, float %i.s, float 1.000000e+00
  %i.v = fdiv float %i.o, %i.u                    ; 2 uses
  %i.w = fcmp ogt float %i.v, 1.000000e+00
  %i.x = select i1 %i.w, float 1.000000e+00, float %i.v ; 2 uses
  %i.y = fcmp ugt float %i.x, 0.000000e+00
  br i1 %i.y, label %.thread, label %.thread129

.thread:                                          ; preds = %bb.d, %bb.c
  %.0111128 = phi float [ %i.x, %bb.d ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %i.z = fcmp oge float %.0111128, 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !238
  %i.aa = fadd <2 x float> %i.l, splat (float -2.000000e+00)
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ae = fmul <2 x float> %i.aa, splat (float 5.000000e-01)
  %i.af = fptosi <2 x float> %i.ae to <2 x i32>   ; 3 uses
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>
  %i.ah = icmp slt <2 x i32> %i.af, zeroinitializer
  %i.ai = icmp sgt <2 x i32> %i.af, splat (i32 3)
  %i.aj = fneg <2 x float> %i.ag
  %i.ak = select <2 x i1> %i.ai, <2 x float> splat (float -3.000000e+00), <2 x float> %i.aj
  %i.al = select <2 x i1> %i.ah, <2 x float> splat (float -0.000000e+00), <2 x float> %i.ak
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.an = load <4 x float>, ptr %7, align 16, !tbaa !193 ; 2 uses
  %i.ao = fsub <4 x float> %i.an, %i.am           ; 2 uses
  %i.ap = fadd <4 x float> %i.an, %i.am           ; 2 uses
  %i.aq = shufflevector <4 x float> %i.ao, <4 x float> %i.ap, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.aq, ptr %7, align 16, !tbaa !193
  %i.ar = icmp eq i32 %2, 0                       ; 2 uses
  %i.as = shufflevector <4 x float> %i.ap, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.at = shufflevector <4 x float> %i.ao, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.au = fsub <2 x float> %i.as, %i.at           ; 3 uses
  %i.av = extractelement <2 x float> %i.au, i64 0
  %i.aw = extractelement <2 x float> %i.au, i64 1
  %i.ax = select i1 %i.ar, float %i.av, float %i.aw ; 8 uses
  %i.ay = tail call noundef i64 @llvm.smax.i64(i64 %5, i64 %4)
  %i.az = tail call noundef i64 @llvm.smax.i64(i64 %i.ay, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store <2 x float> %i.au, ptr %8, align 8
  %i.ba = sext i32 %2 to i64                      ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !193 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 3276
  %i.be = load float, ptr %i.bd, align 4, !tbaa !249 ; 2 uses
  %i.bf = fcmp olt float %i.bc, %i.be
  %i.bg = select i1 %i.bf, float %i.bc, float %i.be ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.bh = sitofp i64 %4 to float                  ; 3 uses
  %i.bi = uitofp nneg i64 %i.az to float
  %i.bj = fdiv float %i.bh, %i.bi
  %i.bk = fmul float %i.bj, %i.ax                 ; 3 uses
  %i.bl = fcmp olt float %i.bk, %i.bg
  %i.bm = fcmp ogt float %i.bk, %i.ax
  %i.bn = select i1 %i.bm, float %i.ax, float %i.bk
  %i.bo = select i1 %i.bl, float %i.bg, float %i.bn ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i8 0, ptr %i.a, align 1, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  store i8 0, ptr %i.b, align 1, !tbaa !233
  %i.bp = tail call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr noundef null, i32 noundef 2) #36 ; 0 uses
  %i.bq = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 262144) ; 0 uses
  %i.br = sub nsw i64 %5, %4
  %i.bs = call noundef i64 @llvm.smax.i64(i64 %i.br, i64 1) ; 2 uses
  %i.bt = load i64, ptr %3, align 8, !tbaa !248
  %i.bu = sitofp i64 %i.bt to float
  %i.bv = uitofp nneg i64 %i.bs to float          ; 3 uses
  %i.bw = fsub float %i.ax, %i.bo                 ; 2 uses
  %i.bx = load i8, ptr %i.a, align 1, !tbaa !233, !range !187, !noundef !188
  %i.by = trunc nuw i8 %i.bx to i1                ; 3 uses
  %i.bz = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.bu, i64 1
  %i.cb = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.bv, i64 1
  %i.cd = fdiv <2 x float> %i.ca, %i.cc           ; 3 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0 ; 4 uses
  %i.cf = extractelement <2 x float> %i.cd, i64 1 ; 2 uses
  %i.cg = fcmp ogt float %i.cf, 1.000000e+00
  %i.ch = select i1 %i.cg, float 1.000000e+00, float %i.cf
  %i.ci = fcmp olt <2 x float> %i.cd, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cj = extractelement <2 x i1> %i.ci, i64 1
  %i.ck = select i1 %i.cj, float 0.000000e+00, float %i.ch
  %i.cl = fmul float %i.bw, %i.ck
  %i.cm = fdiv float %i.cl, %i.ax                 ; 4 uses
  %i.cn = extractelement <2 x i1> %i.ci, i64 0
  %i.co = and i1 %i.z, %i.cn
  %or.cond5 = and i1 %i.co, %i.by
  br i1 %or.cond5, label %bb.e, label %bb.r

bb.e:                                             ; preds = %.thread
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ba
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !193
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ba
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !193
  %i.cu = fsub float %i.ct, %i.cq
  %i.cv = fdiv float %i.cu, %i.ax                 ; 3 uses
  %i.cw = fcmp olt float %i.cv, 0.000000e+00
  %i.cx = fcmp ogt float %i.cv, 1.000000e+00
  %i.cy = select i1 %i.cx, float 1.000000e+00, float %i.cv
  %i.cz = select i1 %i.cw, float 0.000000e+00, float %i.cy ; 4 uses
  %i.da = fcmp olt float %i.cz, %i.cm
  %i.db = fadd float %i.ce, %i.cm
  %i.dc = fcmp ogt float %i.cz, %i.db
  %i.dd = zext i1 %i.dc to i32
  %i.de = select i1 %i.da, i32 -1, i32 %i.dd      ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !232, !range !187, !noundef !188
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 9594
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !616
  br label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 97
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !617, !range !187, !noundef !188
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 253
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !218, !range !187, !noundef !188
  %i.dn = trunc nuw i8 %i.dm to i1
  %i.do = trunc nsw i32 %i.de to i16
  %spec.select = select i1 %i.dn, i16 0, i16 %i.do
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dp = phi i16 [ %spec.select, %bb.g ], [ 0, %bb.f ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5ImGui10BeginComboEPKcS1_i:bb.a
  %i.av = fsub <2 x float> %i.as, %i.ah
  store <2 x float> %i.av, ptr %3, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef %i.af) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.aw = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.l, ptr noundef nonnull %4, i32 noundef 0) #36
  br i1 %i.aw, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.ax = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.ay = call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.15, i64 noundef 0, i32 noundef %i.l) #36 ; 3 uses
  %i.az = call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %i.ay, i32 noundef 0) #36 ; 2 uses
  %.not = xor i1 %i.ax, true
  %or.cond3 = or i1 %i.az, %.not
  br i1 %or.cond3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5ImGui11OpenPopupExEji(i32 noundef %i.ay, i32 noundef 0) #36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.084 = phi i1 [ %i.az, %bb.m ], [ true, %bb.n ] ; 2 uses
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !233, !range !187, !noundef !188
  %i.bb = trunc nuw i8 %i.ba to i1                ; 2 uses
  %i.bc = select i1 %i.bb, i32 8, i32 7
  %i.bd = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bc, float noundef 1.000000e+00) #36
  %i.be = load float, ptr %4, align 8, !tbaa !239 ; 2 uses
  %i.bf = load float, ptr %i.al, align 8, !tbaa !240
  %i.bg = fsub float %i.bf, %i.p                  ; 2 uses
  %i.bh = fcmp oge float %i.be, %i.bg
  %i.bi = select i1 %i.bh, float %i.be, float %i.bg ; 6 uses
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.l, i32 noundef 0) #36
  br i1 %.not87, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.bl = load float, ptr %i.at, align 4, !tbaa !199
  store float %i.bi, ptr %6, align 4, !tbaa !197
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.bl, ptr %i.bm, align 4, !tbaa !200
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 3220
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !235
  %i.bp = select i1 %.not86, i32 80, i32 240
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bk, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.bd, float noundef %i.bo, i32 noundef %i.bp) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not86, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bq = or i1 %.084, %i.bb
  %i.br = select i1 %i.bq, i32 22, i32 21
  %i.bs = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.br, float noundef 1.000000e+00) #36
  %i.bt = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00) #36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !198
  store float %i.bi, ptr %7, align 4, !tbaa !197
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.bx, ptr %i.by, align 4, !tbaa !200
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 3220
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !235
  %i.cb = fcmp ole float %i.ab, %i.p
  %i.cc = select i1 %i.cb, i32 240, i32 160
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bv, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %i.al, i32 noundef %i.bs, float noundef %i.ca, i32 noundef %i.cc) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %i.cd = fadd float %i.p, %i.bi
  %i.ce = load float, ptr %i.ad, align 4, !tbaa !209
  %i.cf = fsub float %i.cd, %i.ce
  %i.cg = load float, ptr %i.al, align 8, !tbaa !240
  %i.ch = fcmp ugt float %i.cf, %i.cg
  br i1 %i.ch, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr %i.bu, align 8, !tbaa !205
  %i.cj = load float, ptr %i.ae, align 8, !tbaa !206 ; 2 uses
  %i.ck = fadd float %i.bi, %i.cj
  %i.cl = load float, ptr %i.bw, align 4, !tbaa !198
  %i.cm = fadd float %i.cj, %i.cl
  %.sroa.096.0.vec.insert = insertelement <2 x float> poison, float %i.ck, i64 0
  %.sroa.096.4.vec.insert = insertelement <2 x float> %.sroa.096.0.vec.insert, float %i.cm, i64 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.ci, <2 x float> %.sroa.096.4.vec.insert, i32 noundef %i.bt, i32 noundef 3, float noundef 1.000000e+00) #36
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.sroa.04.0.copyload = load <2 x float>, ptr %4, align 8, !tbaa !193
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.al, align 8, !tbaa !193
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 3220
  %i.co = load float, ptr %i.cn, align 4, !tbaa !235
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.04.0.copyload, <2 x float> %.sroa.0.0.copyload, float noundef %i.co) #36
  %i.cp = and i32 %2, 1048576
  %.not88 = icmp eq i32 %i.cp, 0
  br i1 %.not88, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.t
  %i.cq = load float, ptr %i.at, align 4, !tbaa !199
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 9528
  %i.cs = load <2 x float>, ptr %4, align 8, !tbaa !193
  store <2 x float> %i.cs, ptr %i.cr, align 8, !tbaa !193
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9536
  store float %i.bi, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !193
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9540
  store float %i.cq, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !193
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %brmerge.not = and i1 %.not87, %i.s
  br i1 %brmerge.not, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 10008
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !194, !range !187, !noundef !188
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #36
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.cw = load <2 x float>, ptr %4, align 8, !tbaa !193
  %i.cx = load <2 x float>, ptr %i.ad, align 4, !tbaa !193
  %i.cy = fadd <2 x float> %i.cw, %i.cx
  store <2 x float> %i.cy, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.cz = load float, ptr %i.at, align 4, !tbaa !199
  store float %i.bi, ptr %9, align 4, !tbaa !197
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.cz, ptr %i.da, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !193
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef null) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.y

bb.y:                                             ; preds = %.thread, %bb.u, %bb.x
  br i1 %i.am, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 3236
  %i.dc = load float, ptr %i.db, align 4, !tbaa !207
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.de = load float, ptr %i.ae, align 8, !tbaa !206
  %i.df = load <2 x float>, ptr %i.dd, align 4, !tbaa !193
  %i.dg = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.dc, i64 1
  %i.di = fadd <2 x float> %i.df, %i.dh
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.dj, ptr noundef %0, ptr noundef null, i1 noundef zeroext true) #36
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.084, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.h, ptr %i.g, align 8, !tbaa !307
  %i.dk = call noundef zeroext i1 @_ZN5ImGui15BeginComboPopupEjRK6ImRecti(i32 noundef %i.ay, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %2)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.0 = phi i1 [ %i.dk, %bb.ab ], [ false, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.ad

bb.ad:                                            ; preds = %bb.l, %bb.ac
  %.1 = phi i1 [ %.0, %bb.ac ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  %.2 = phi i1 [ %.1, %bb.ad ], [ false, %bb.a ]
  ret i1 %.2
}

declare noundef i32 @_Z9ImHashStrPKcmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui11OpenPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float>, <2 x float>, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui15BeginComboPopupEjRK6ImRecti(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 6 uses
  %4 = alloca %struct.ImVec2, align 8             ; 5 uses
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImRect, align 16            ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 7 uses
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %0, i32 noundef 0) #36
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 7784
  store i32 0, ptr %i.d, align 8, !tbaa !308
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !240
  %i.g = load float, ptr %1, align 4, !tbaa !239
  %i.h = fsub float %i.f, %i.g                    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 7784
  %i.j = load i32, ptr %i.i, align 8, !tbaa !307  ; 2 uses
  %i.k = and i32 %i.j, 16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 7852 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !637 ; 2 uses
  %i.n = fcmp oge float %i.m, %i.h
  %i.o = select i1 %i.n, float %i.m, float %i.h
  store float %i.o, ptr %i.l, align 4, !tbaa !637
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.p = and i32 %2, 30
  %i.q = icmp eq i32 %i.p, 0
  %i.r = or disjoint i32 %2, 4
  %spec.select = select i1 %i.q, i32 %i.r, i32 %2 ; 4 uses
  %i.s = and i32 %spec.select, 4
  %.not36 = icmp eq i32 %i.s, 0
  br i1 %.not36, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = and i32 %spec.select, 2
  %.not37 = icmp eq i32 %i.t, 0
  br i1 %.not37, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %spec.select, 8
  %.not38 = icmp eq i32 %i.u, 0
  %spec.select41 = select i1 %.not38, i32 -1, i32 20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ %spec.select41, %bb.g ], [ 8, %bb.e ], [ 4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <2 x float> splat (float f0x7F7FFFFF), ptr %4, align 8, !tbaa !193
  %i.w = and i32 %i.j, 2
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.thread43, label %bb.i

.thread43:                                        ; preds = %bb.h
  store float %i.h, ptr %3, align 8, !tbaa !197
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 7816
  %i.z = load float, ptr %i.y, align 8, !tbaa !638
  %i.aa = fcmp ugt float %i.z, 0.000000e+00
  br i1 %i.aa, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float %i.h, ptr %3, align 8, !tbaa !197
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 7820
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !639
  %i.ad = fcmp ugt float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread43, %.thread
  %i.ae = icmp slt i32 %.0, 1
  br i1 %i.ae, label %_ZL31CalcMaxPopupHeightFromItemCounti.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4400
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !208
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 3232
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !309 ; 2 uses
  %i.ak = fadd float %i.ah, %i.aj
  %i.al = uitofp nneg i32 %.0 to float
  %i.am = fneg float %i.aj
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.al, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 3160
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !310
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 2.000000e+00, float %i.an)
  br label %_ZL31CalcMaxPopupHeightFromItemCounti.exit

_ZL31CalcMaxPopupHeightFromItemCounti.exit:       ; preds = %bb.k, %bb.l
  %.0.i = phi float [ %i.aq, %bb.l ], [ f0x7F7FFFFF, %bb.k ]
  store float %.0.i, ptr %i.v, align 4, !tbaa !200
  br label %bb.m

bb.m:                                             ; preds = %_ZL31CalcMaxPopupHeightFromItemCounti.exit, %.thread
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef null, ptr noundef null) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.1 = phi i32 [ %2, %bb.d ], [ %spec.select, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 9484 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !311
  %i.at = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.as) #36 ; 0 uses
  %i.au = call noundef ptr @_ZN5ImGui16FindWindowByNameEPKc(ptr noundef nonnull %i.a) #36 ; 5 uses
  %.not39 = icmp eq ptr %i.au, null
  br i1 %.not39, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 205
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !640, !range !187, !noundef !188
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.ay = call <2 x float> @_ZN5ImGui25CalcWindowNextAutoFitSizeEP11ImGuiWindow(ptr noundef nonnull %i.au) #36
  store <2 x float> %i.ay, ptr %5, align 8
  %i.az = and i32 %.1, 1
  %.not40 = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not40, i32 3, i32 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 232 ; 2 uses
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !641
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.bc = call { <2 x float>, <2 x float> } @_ZN5ImGui25GetPopupAllowedExtentRectEP11ImGuiWindow(ptr noundef nonnull %i.au) #36 ; 2 uses
  %i.bd = extractvalue { <2 x float>, <2 x float> } %i.bc, 0
  %10 = extractvalue { <2 x float>, <2 x float> } %i.bc, 1
  %11 = shufflevector <2 x float> %i.bd, <2 x float> %10, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %11, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.be = load <4 x float>, ptr %1, align 4
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.be, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %8, align 8
  %i.bf = call <2 x float> @_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 1) #36
  store <2 x float> %i.bf, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !193
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 3212
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !312
  call void @_ZN5ImGui13PushStyleVarXEif(i32 noundef 2, float noundef %i.bh) #36
  %i.bi = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 67109191) #36 ; 2 uses
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1) #36
  br i1 %i.bi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5ImGui8EndPopupEv() #36
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.ar, align 4, !tbaa !311
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ar, align 4, !tbaa !311
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  %.134 = phi i1 [ %i.bi, %bb.t ], [ false, %bb.b ]
  ret i1 %.134
}

declare void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN5ImGui16FindWindowByNameEPKc(ptr noundef) local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui25CalcWindowNextAutoFitSizeEP11ImGuiWindow(ptr noundef) local_unnamed_addr #3

declare { <2 x float>, <2 x float> } @_ZN5ImGui25GetPopupAllowedExtentRectEP11ImGuiWindow(ptr noundef) local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN5ImGui13PushStyleVarXEif(i32 noundef, float noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui8EndComboEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34
  tail call void @_ZN5ImGui8EndPopupEv() #36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9484 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !311
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !311
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui17BeginComboPreviewEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9528 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !186, !range !187, !noundef !188
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZNK6ImRect8OverlapsERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7712
  %i.i = load i32, ptr %i.h, align 8, !tbaa !273
  %i.j = and i32 %i.i, 256
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZNK6ImRect8OverlapsERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 9532
  %i.m = load float, ptr %i.l, align 4, !tbaa !198 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.p = load float, ptr %i.o, align 4, !tbaa !199
  %i.q = fcmp olt float %i.m, %i.p
  br i1 %i.q, label %bb.d, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 9536 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9540
  %i.t = load float, ptr %i.s, align 4, !tbaa !199
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 612
  %i.v = load float, ptr %i.u, align 4, !tbaa !198
  %i.w = fcmp ogt float %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = load float, ptr %i.d, align 8, !tbaa !239 ; 2 uses
  %i.y = load float, ptr %i.n, align 4, !tbaa !240
  %i.z = fcmp olt float %i.x, %i.y
  br i1 %i.z, label %_ZNK6ImRect8OverlapsERKS_.exit, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit:                   ; preds = %bb.e
  %i.aa = load float, ptr %i.r, align 8, !tbaa !240
  %i.ab = load float, ptr %i.k, align 4, !tbaa !239
  %i.ac = fcmp ogt float %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.f:                                             ; preds = %_ZNK6ImRect8OverlapsERKS_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 9544
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !193
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !193
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 9552
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !193
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !193
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 9560
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !193
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !193
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 340
  %i.an = load float, ptr %i.am, align 4, !tbaa !313
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 9568
  store float %i.an, ptr %i.ao, align 8, !tbaa !314
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 468 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !297
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 9572
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !315
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 3212
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !193
  %i.au = insertelement <2 x float> poison, float %i.x, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.m, i64 1
  %i.aw = fadd <2 x float> %i.av, %i.at           ; 2 uses
  store <2 x float> %i.aw, ptr %i.ad, align 8, !tbaa !193
  store <2 x float> %i.aw, ptr %i.ag, align 8, !tbaa !193
  store i32 0, ptr %i.ap, align 4, !tbaa !297
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.ax, align 8, !tbaa !298
  tail call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %i.r, i1 noundef zeroext true) #36
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.c, %bb.d, %bb.e, %_ZNK6ImRect8OverlapsERKS_.exit, %bb.a, %bb.b, %bb.f
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.f ], [ false, %bb.b ], [ false, %_ZNK6ImRect8OverlapsERKS_.exit ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

declare void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui15EndComboPreviewEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !205  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 3 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !203
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 9536
  %i.i = load float, ptr %i.h, align 8, !tbaa !642
  %i.j = fcmp olt float %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  %i.l = load float, ptr %i.k, align 4, !tbaa !643
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 9540
  %i.n = load float, ptr %i.m, align 4, !tbaa !644
  %i.o = fcmp olt float %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.e, align 8, !tbaa !645  ; 2 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !646
  %i.t = zext nneg i32 %i.p to i64
  %i.u = getelementptr [72 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -144     ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !238
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 96
end_hunk_2
begin_hunk_3_@_ZN5ImGui15EndComboPreviewEv:bb.a
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !193
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 9568
  %i.al = load float, ptr %i.ak, align 8, !tbaa !314
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 340
  store float %i.al, ptr %i.am, align 4, !tbaa !313
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 9572
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !315
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !297
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.aq, align 8, !tbaa !298
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN10ImDrawList17_TryMergeDrawCmdsEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #3

declare void @_ZN5ImGui11PopClipRectEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiPFS1_PviES3_ii(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImGuiListClipper, align 8   ; 10 uses
  %9 = alloca %struct.ImVec2, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !211    ; 3 uses
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = icmp slt i32 %i.b, %4
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr %2(ptr noundef %3, i32 noundef %i.b) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.not = icmp eq i32 %5, -1
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7784
  %i.g = load i32, ptr %i.f, align 8, !tbaa !307
  %i.h = and i32 %i.g, 16
  %.not37 = icmp eq i32 %i.h, 0
  br i1 %.not37, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.i = icmp slt i32 %5, 1
  br i1 %i.i, label %_ZL31CalcMaxPopupHeightFromItemCounti.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4400
  %i.l = load float, ptr %i.k, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 3232
  %i.n = load float, ptr %i.m, align 8, !tbaa !309 ; 2 uses
  %i.o = fadd float %i.l, %i.n
  %i.p = uitofp nneg i32 %5 to float
  %i.q = fneg float %i.n
  %i.r = tail call float @llvm.fmuladd.f32(float %i.o, float %i.p, float %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 3160
  %i.t = load float, ptr %i.s, align 8, !tbaa !310
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float 2.000000e+00, float %i.r)
  br label %_ZL31CalcMaxPopupHeightFromItemCounti.exit

_ZL31CalcMaxPopupHeightFromItemCounti.exit:       ; preds = %bb.e, %bb.f
  %.0.i = phi float [ %i.u, %bb.f ], [ f0x7F7FFFFF, %bb.e ]
  store float f0x7F7FFFFF, ptr %7, align 4, !tbaa !197
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %.0.i, ptr %i.v, align 4, !tbaa !200
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef null, ptr noundef null) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.g

bb.g:                                             ; preds = %_ZL31CalcMaxPopupHeightFromItemCounti.exit, %bb.d, %bb.c
  %i.w = call noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef %0, ptr noundef %.033, i32 noundef 0)
  br i1 %i.w, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #36
  call void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef %4, float noundef -1.000000e+00) #36
  %i.x = load i32, ptr %1, align 4, !tbaa !211    ; 2 uses
  %i.y = add nsw i32 %i.x, 1
  call void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef %i.x, i32 noundef %i.y) #36
  %i.z = call noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #36
  br i1 %i.z, label %.lr.ph42, label %._crit_edge

.lr.ph42:                                         ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  br label %bb.i

.loopexit:                                        ; preds = %bb.n, %bb.i
  %.1.lcssa = phi i1 [ %.03241, %bb.i ], [ %.2, %bb.n ] ; 2 uses
  %i.ac = call noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #36
  br i1 %i.ac, label %bb.i, label %._crit_edge, !llvm.loop !0

bb.i:                                             ; preds = %.lr.ph42, %.loopexit
  %.03241 = phi i1 [ false, %.lr.ph42 ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !317 ; 2 uses
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !318
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.i, %bb.n
  %.040 = phi i32 [ %i.am, %bb.n ], [ %i.ad, %bb.i ] ; 6 uses
  %.139 = phi i1 [ %.2, %bb.n ], [ %.03241, %bb.i ] ; 2 uses
  %i.ag = call noundef ptr %2(ptr noundef %3, i32 noundef %.040) #36 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  %spec.store.select = select i1 %i.ah, ptr @.str.19, ptr %i.ag
  call void @_ZN5ImGui6PushIDEi(i32 noundef %.040) #36
  %i.ai = load i32, ptr %1, align 4, !tbaa !211
  %i.aj = icmp eq i32 %.040, %i.ai                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !193
  %i.ak = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %spec.store.select, i1 noundef zeroext %i.aj, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9)
  br i1 %i.ak, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  %i.al = load i32, ptr %1, align 4, !tbaa !211
  %.not38 = icmp eq i32 %i.al, %.040
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %.040, ptr %1, align 4, !tbaa !211
  br label %bb.l

.critedge:                                        ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k, %bb.j
  %.2 = phi i1 [ true, %bb.k ], [ %.139, %bb.j ], [ %.139, %.critedge ] ; 2 uses
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN5ImGui19SetItemDefaultFocusEv() #36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @_ZN5ImGui5PopIDEv() #36
  %i.am = add nsw i32 %.040, 1                    ; 2 uses
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !318
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph, label %.loopexit, !llvm.loop !1

._crit_edge:                                      ; preds = %.loopexit, %bb.h
  %.032.lcssa = phi i1 [ false, %bb.h ], [ %.1.lcssa, %.loopexit ] ; 2 uses
  %i.ap = load ptr, ptr @GImGui, align 8, !tbaa !34
  call void @_ZN5ImGui8EndPopupEv() #36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 9484 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !311
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !311
  br i1 %.032.lcssa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 7704
  %i.au = load i32, ptr %i.at, align 8, !tbaa !210
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.au) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.q

bb.q:                                             ; preds = %bb.g, %bb.p
  %.034 = phi i1 [ %.032.lcssa, %bb.p ], [ false, %bb.g ]
  ret i1 %.034
}

declare void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, float noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN5ImGui6PushIDEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 8 uses
  %6 = alloca %struct.ImVec2, align 8             ; 6 uses
  %7 = alloca %struct.ImRect, align 8             ; 16 uses
  %i.b = alloca i8, align 1                       ; 7 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %8 = alloca %struct.ImRect, align 16            ; 4 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.e = zext i1 %1 to i8                         ; 3 uses
  store i8 %i.e, ptr %i.a, align 1, !tbaa !233
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 27 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 5184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !161  ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 206
  store i8 1, ptr %i.i, align 2, !tbaa !185
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 209
  %i.k = load i8, ptr %i.j, align 1, !tbaa !186, !range !187, !noundef !188
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.bu, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.h, ptr noundef %0, ptr noundef null) #36 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.n = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) #36 ; 3 uses
  store <2 x float> %i.n, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.p = load <2 x float>, ptr %3, align 4, !tbaa !193 ; 2 uses
  %i.q = fcmp une <2 x float> %i.p, zeroinitializer
  %i.r = select <2 x i1> %i.q, <2 x float> %i.p, <2 x float> %i.n
  store <2 x float> %i.r, ptr %5, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.t = load i64, ptr %i.s, align 8, !tbaa !193  ; 3 uses
  store i64 %i.t, ptr %6, align 8, !tbaa !193
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.v = load float, ptr %i.u, align 8, !tbaa !191
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.x = lshr i64 %i.t, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = bitcast i32 %i.y to float
  %i.aa = fadd float %i.v, %i.z                   ; 5 uses
  store float %i.aa, ptr %i.w, align 4, !tbaa !200
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef 0.000000e+00) #36
  %i.ab = and i32 %2, 2
  %.not140 = icmp eq i32 %i.ab, 0                 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 592 ; 2 uses
  %.in = select i1 %.not140, ptr %6, ptr %i.ac
  %i.ad = load float, ptr %.in, align 4, !tbaa !197 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 600 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 584 ; 2 uses
  %i.ag = load float, ptr %3, align 4, !tbaa !197
  %i.ah = fcmp une float %i.ag, 0.000000e+00
  %i.ai = and i32 %2, 16777216
  %.not142 = icmp eq i32 %i.ai, 0
  %or.cond162 = and i1 %.not142, %i.ah
  %i.aj = trunc i64 %i.t to i32
  %i.ak = bitcast i32 %i.aj to float
  br i1 %or.cond162, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load float, ptr %5, align 8, !tbaa !197
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = extractelement <2 x float> %i.n, i64 0  ; 2 uses
  %.in141 = select i1 %.not140, ptr %i.af, ptr %i.ae
  %i.am = load float, ptr %.in141, align 8, !tbaa !193
  %i.an = fsub float %i.am, %i.ad                 ; 2 uses
  %i.ao = fcmp oge float %i.al, %i.an
  %i.ap = select i1 %i.ao, float %i.al, float %i.an ; 2 uses
  store float %i.ap, ptr %5, align 8, !tbaa !197
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.aq = phi float [ %.pre, %._crit_edge ], [ %i.ap, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.ar = fadd float %i.ad, %i.aq                 ; 2 uses
  %i.as = load float, ptr %i.o, align 4, !tbaa !200
  %i.at = fadd float %i.aa, %i.as                 ; 2 uses
  store float %i.ad, ptr %7, align 8, !tbaa !197
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  store float %i.aa, ptr %i.au, align 4, !tbaa !200
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store float %i.ar, ptr %i.av, align 8, !tbaa !197
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store float %i.at, ptr %i.aw, align 4, !tbaa !200
  %i.ax = and i32 %2, 67108864
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %.not140, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 3228
  %i.ba = load float, ptr %i.az, align 4, !tbaa !290
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bb = phi float [ %i.ba, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 3232
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !301 ; 2 uses
  %i.be = fmul float %i.bb, 5.000000e-01
  %i.bf = fptosi float %i.be to i32
  %i.bg = sitofp i32 %i.bf to float               ; 2 uses
  %i.bh = fmul float %i.bd, 5.000000e-01
  %i.bi = fptosi float %i.bh to i32
  %i.bj = sitofp i32 %i.bi to float               ; 2 uses
  %i.bk = fsub float %i.ad, %i.bg
  store float %i.bk, ptr %7, align 8, !tbaa !239
  %i.bl = fsub float %i.aa, %i.bj
  store float %i.bl, ptr %i.au, align 4, !tbaa !198
  %i.bm = fsub float %i.bb, %i.bg
  %i.bn = fadd float %i.ar, %i.bm
  store float %i.bn, ptr %i.av, align 8, !tbaa !240
  %i.bo = fsub float %i.bd, %i.bj
  %i.bp = fadd float %i.at, %i.bo
  store float %i.bp, ptr %i.aw, align 4, !tbaa !199
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.bq = and i32 %2, 8                           ; 2 uses
  %.not143 = icmp eq i32 %i.bq, 0
  %i.br = shl nuw nsw i32 %i.bq, 7                ; 2 uses
  br i1 %.not140, label %bb.i, label %.split

.split:                                           ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 608 ; 3 uses
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !319
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 616 ; 3 uses
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !320
  %i.bw = load float, ptr %i.ac, align 8, !tbaa !321
  store float %i.bw, ptr %i.bs, align 8, !tbaa !319
  %i.bx = load float, ptr %i.ae, align 8, !tbaa !322
  store float %i.bx, ptr %i.bu, align 8, !tbaa !320
  %i.by = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.m, ptr noundef null, i32 noundef %i.br) #36
  store float %i.bt, ptr %i.bs, align 8, !tbaa !319
  store float %i.bv, ptr %i.bu, align 8, !tbaa !320
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 7708 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !253
  %i.cb = and i32 %i.ca, 4194304
  %.not144176 = icmp eq i32 %i.cb, 0              ; 2 uses
  br i1 %i.by, label %bb.o, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cc = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.m, ptr noundef null, i32 noundef %i.br) #36
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 7708 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !253
  %i.cf = and i32 %i.ce, 4194304
  %.not144 = icmp eq i32 %i.cf, 0                 ; 2 uses
  br i1 %i.cc, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.split, %bb.i
  %.not144179 = phi i1 [ %.not144176, %.split ], [ %.not144, %bb.i ]
  %i.cg = phi ptr [ %i.bz, %.split ], [ %i.cd, %bb.i ]
  br i1 %.not144179, label %_ZNK6ImRect8OverlapsERKS_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 9048
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !254, !range !187, !noundef !188
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.l, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 9052
  %i.cl = load float, ptr %i.au, align 4, !tbaa !198
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 9060
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 9064
  %i.co = load float, ptr %i.cn, align 8, !tbaa !199
  %i.cp = fcmp olt float %i.cl, %i.co
  br i1 %i.cp, label %bb.m, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cq = load float, ptr %i.aw, align 4, !tbaa !199
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 9056
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !198
  %i.ct = fcmp ogt float %i.cq, %i.cs
  br i1 %i.ct, label %bb.n, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cu = load float, ptr %7, align 8, !tbaa !239
  %i.cv = load float, ptr %i.cm, align 4, !tbaa !240
  %i.cw = fcmp olt float %i.cu, %i.cv
  br i1 %i.cw, label %_ZNK6ImRect8OverlapsERKS_.exit, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit:                   ; preds = %bb.n
  %i.cx = load float, ptr %i.av, align 8, !tbaa !240
  %i.cy = load float, ptr %i.ck, align 4, !tbaa !239
  %i.cz = fcmp ogt float %i.cx, %i.cy
  br i1 %i.cz, label %bb.o, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.o:                                             ; preds = %.split, %_ZNK6ImRect8OverlapsERKS_.exit, %bb.i
  %.not144180 = phi i1 [ %.not144176, %.split ], [ false, %_ZNK6ImRect8OverlapsERKS_.exit ], [ %.not144, %bb.i ] ; 2 uses
  %i.da = phi ptr [ %i.bz, %.split ], [ %i.cg, %_ZNK6ImRect8OverlapsERKS_.exit ], [ %i.cd, %bb.i ] ; 2 uses
  %.0133.in178 = phi i1 [ true, %.split ], [ false, %_ZNK6ImRect8OverlapsERKS_.exit ], [ true, %bb.i ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 7640
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !323
  %i.dd = and i32 %i.dc, 1024
  %i.de = icmp ne i32 %i.dd, 0
  %or.cond = select i1 %.not143, i1 true, i1 %i.de ; 2 uses
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true) #36
  br label %bb.q

end_hunk_3
begin_hunk_4_@_ZN5ImGui10SelectableEPKcbiRK6ImVec2:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.eb = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 9104
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !255 ; 9 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 90
  %i.ef = load i8, ptr %i.ee, align 2, !tbaa !260, !range !187, !noundef !188
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !261 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 7664
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !262 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  %i.em = load i8, ptr %i.el, align 8, !tbaa !263 ; 2 uses
  %.not.i = icmp eq i8 %i.em, -1
  %i.en = icmp eq i8 %i.em, 1
  %i.eo = zext i1 %i.en to i8
  %.042.i = select i1 %.not.i, i8 %i.e, i8 %i.eo  ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 91
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !264, !range !187, !noundef !188
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.ac, label %.split189

bb.ac:                                            ; preds = %bb.ab
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 94 ; 2 uses
  %i.et = load i8, ptr %i.es, align 2, !tbaa !265, !range !187, !noundef !188 ; 2 uses
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eb, i64 8524
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !266
  %i.ex = icmp eq i32 %i.ew, %i.m
  br i1 %i.ex, label %bb.ae, label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.es, align 2, !tbaa !265
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !268
  %i.fa = icmp eq i64 %i.ez, -1
  br i1 %i.fa, label %bb.af, label %.critedge.thread.i

bb.af:                                            ; preds = %bb.ae
  store i64 %i.ek, ptr %i.ey, align 8, !tbaa !268
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  store i8 %.042.i, ptr %i.fb, align 4, !tbaa !269
  br label %.critedge.thread.i

.critedge.i:                                      ; preds = %bb.ad, %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !268
  %i.fe = icmp eq i64 %i.fd, %i.ek
  br i1 %i.fe, label %.critedge.thread.i, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 93
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !270, !range !187, !noundef !188
  %.not45.i = icmp eq i8 %i.fg, %i.et
  br i1 %.not45.i, label %bb.ah, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.ag, %.critedge.i, %bb.af, %bb.ae
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ei, i64 20
  %i.fi = load i8, ptr %i.fh, align 4, !tbaa !269
  %i.fj = icmp ne i8 %i.fi, 0
  %i.fk = zext i1 %i.fj to i8
  br label %.split189

bb.ah:                                            ; preds = %bb.ag
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ed, i64 84
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !271
  %i.fn = and i32 %i.fm, 4096
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.ai, label %.split189

bb.ai:                                            ; preds = %bb.ah
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ed, i64 52
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !272
  %i.fr = and i32 %i.fq, 16
  %i.fs = icmp eq i32 %i.fr, 0
  %spec.select.i = select i1 %i.fs, i8 0, i8 %.042.i
  br label %.split189

.split189:                                        ; preds = %bb.ai, %bb.ah, %.critedge.thread.i, %bb.ab
  %.2.i = phi i8 [ %.042.i, %bb.ab ], [ %i.fk, %.critedge.thread.i ], [ %.042.i, %bb.ah ], [ %spec.select.i, %bb.ai ] ; 2 uses
  store i8 %.2.i, ptr %i.a, align 1, !tbaa !233
  %i.ft = trunc nuw i8 %.2.i to i1
  br i1 %i.ft, label %bb.ak, label %bb.am

bb.aj:                                            ; preds = %bb.aa
  br i1 %1, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.split189, %bb.aj
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eb, i64 5300
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !220
  %i.fw = icmp eq i32 %i.fv, %i.m
  br i1 %i.fw, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eb, i64 5315
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !234, !range !187, !noundef !188
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %.split189, %bb.al, %bb.aj
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ed, i64 52
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !272
  %i.gc = and i32 %i.gb, 16384
  %.not47.i = icmp eq i32 %i.gc, 0
  br i1 %.not47.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gd = and i32 %.4, -524337
  %i.ge = or disjoint i32 %i.gd, 524304
  br label %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.gf = or i32 %.4, 524320
  br label %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit

_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit:      ; preds = %bb.an, %bb.ao
  %.0.i = phi i32 [ %i.gf, %bb.ao ], [ %i.ge, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.gg = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %.0.i)
  %i.gh = zext i1 %i.gg to i8
  store i8 %i.gh, ptr %i.d, align 1, !tbaa !233
  call void @_ZN5ImGui21MultiSelectItemFooterEjPbS0_(i32 noundef %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  %.pre182 = load i8, ptr %i.d, align 1, !tbaa !233, !range !187
  %i.gi = trunc nuw i8 %.pre182 to i1
  br i1 %i.gi, label %bb.at, label %bb.as

.critedge:                                        ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.gj = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %.4)
  %i.gk = and i32 %2, 2097152
  %.not153 = icmp eq i32 %i.gk, 0
  br i1 %.not153, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.critedge
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 8524
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !266 ; 2 uses
  %.not154 = icmp eq i32 %i.gm, 0
  br i1 %.not154, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 8528
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !325
  %i.gp = getelementptr inbounds nuw i8, ptr %i.f, i64 7636
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !326
  %i.gr = icmp eq i32 %i.go, %i.gq
  %i.gs = icmp eq i32 %i.gm, %i.m
  %or.cond163 = and i1 %i.gs, %i.gr
  br i1 %or.cond163, label %.thread190, label %bb.ar

.thread190:                                       ; preds = %bb.aq
  store i8 1, ptr %i.a, align 1, !tbaa !233
  br label %bb.at

bb.ar:                                            ; preds = %.critedge, %bb.ap, %bb.aq
  br i1 %i.gj, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit, %bb.ar
  %i.gt = load i8, ptr %i.b, align 1, !tbaa !233, !range !187, !noundef !188
  %i.gu = trunc nuw i8 %i.gt to i1
  %i.gv = and i32 %2, 33554432
  %.not155 = icmp ne i32 %i.gv, 0
  %or.cond165.not = and i1 %.not155, %i.gu
  br i1 %or.cond165.not, label %bb.at, label %.thread

bb.at:                                            ; preds = %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit, %.thread190, %bb.as, %bb.ar
  %i.gw = phi i1 [ true, %.thread190 ], [ false, %bb.as ], [ true, %bb.ar ], [ true, %_ZN5ImGui21MultiSelectItemHeaderEjPbPi.exit ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 8073
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !225, !range !187, !noundef !188
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 8080
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !327
  %i.hc = icmp eq ptr %i.hb, %i.h
  br i1 %i.hc, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 8092
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !328 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !329
  %i.hh = icmp eq i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 7636
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.hk = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  %i.hl = load <2 x float>, ptr %i.hk, align 8, !tbaa !193
  %i.hm = load <2 x float>, ptr %7, align 8, !tbaa !193
  %i.hn = load <2 x float>, ptr %i.av, align 8, !tbaa !193
  %10 = shufflevector <2 x float> %i.hm, <2 x float> %i.hn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <2 x float> %i.hl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %12 = fsub <4 x float> %10, %11
  store <4 x float> %12, ptr %8, align 16
  call void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef %i.m, i32 noundef %i.he, i32 noundef %i.hj, ptr noundef nonnull align 4 dereferenceable(16) %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.ho = getelementptr inbounds nuw i8, ptr %i.f, i64 86
  %i.hp = load i8, ptr %i.ho, align 2, !tbaa !222, !range !187, !noundef !188
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 8072
  store i8 0, ptr %i.hr, align 8, !tbaa !223
  br label %bb.ay

bb.ay:                                            ; preds = %bb.at, %bb.au, %bb.av, %bb.ax, %bb.aw
  br i1 %i.gw, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.m) #36
  br label %.thread

.thread:                                          ; preds = %bb.as, %bb.az, %bb.ay
  %i.hs = phi i1 [ false, %bb.as ], [ true, %bb.az ], [ false, %bb.ay ] ; 2 uses
  %i.ht = load i8, ptr %i.a, align 1, !tbaa !233, !range !187, !noundef !188 ; 2 uses
  %.not156 = icmp eq i8 %i.ht, %i.e
  br i1 %.not156, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.thread
  %i.hu = getelementptr inbounds nuw i8, ptr %i.f, i64 7712 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !273
  %i.hw = or i32 %i.hv, 8
  store i32 %i.hw, ptr %i.hu, align 8, !tbaa !273
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread
  br i1 %.0133.in178, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.hx = load i8, ptr %i.b, align 1, !tbaa !233, !range !187, !noundef !188
  %i.hy = trunc nuw i8 %i.hx to i1
  %i.hz = and i32 %2, 32
  %i.ia = icmp ne i32 %i.hz, 0
  %i.ib = or i1 %i.ia, %i.hy                      ; 2 uses
  %i.ic = trunc nuw i8 %i.ht to i1
  %or.cond3 = or i1 %i.ib, %i.ic
  br i1 %or.cond3, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.id = load i8, ptr %i.c, align 1, !tbaa !233, !range !187, !noundef !188
  %i.ie = trunc nuw i8 %i.id to i1
  %i.if = select i1 %i.ie, i32 26, i32 25
  %i.ig = select i1 %i.ib, i32 %i.if, i32 24
  %i.ih = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.ig, float noundef 1.000000e+00) #36
  %.sroa.010.0.copyload = load <2 x float>, ptr %7, align 8, !tbaa !193
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.av, align 8, !tbaa !193
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.010.0.copyload, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.ih, i1 noundef zeroext false, float noundef 0.000000e+00) #36
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.ii = getelementptr inbounds nuw i8, ptr %i.f, i64 8076
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !224
  %i.ik = icmp eq i32 %i.ij, %i.m
  br i1 %i.ik, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %spec.select166 = select i1 %.not144180, i32 10, i32 14
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.m, i32 noundef %spec.select166) #36
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bb
  br i1 %.not140, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.il = getelementptr inbounds nuw i8, ptr %i.f, i64 8816
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !324
  %.not157 = icmp eq ptr %i.im, null
  br i1 %.not157, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN5ImGui25TablePopBackgroundChannelEv() #36
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.in = getelementptr inbounds nuw i8, ptr %i.h, i64 456
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !300
  %.not158 = icmp eq ptr %i.io, null
  br i1 %.not158, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN5ImGui20PopColumnsBackgroundEv() #36
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bi, %bb.bk, %bb.bj, %bb.bg
  br i1 %.0133.in178, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.ip = load float, ptr %5, align 8, !tbaa !197
  %i.iq = fadd float %i.ip, %i.ak                 ; 2 uses
  %i.ir = load float, ptr %i.af, align 8, !tbaa !299 ; 2 uses
  %i.is = fcmp olt float %i.iq, %i.ir
  %i.it = select i1 %i.is, float %i.iq, float %i.ir
  %i.iu = load float, ptr %i.o, align 4, !tbaa !200
  %i.iv = fadd float %i.aa, %i.iu
  store float %i.it, ptr %9, align 4, !tbaa !197
  %i.iw = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.iv, ptr %i.iw, align 4, !tbaa !200
  %i.ix = getelementptr inbounds nuw i8, ptr %i.f, i64 3352
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef %0, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(8) %i.ix, ptr noundef nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  br i1 %i.hs, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.iy = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !246
  %i.ja = and i32 %i.iz, 67108864
  %.not159 = icmp ne i32 %i.ja, 0
  %i.jb = and i32 %2, 1
  %.not160 = icmp eq i32 %i.jb, 0
  %or.cond167 = and i1 %.not160, %.not159
  br i1 %or.cond167, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.jc = load i32, ptr %i.da, align 4, !tbaa !253
  %i.jd = and i32 %i.jc, 16
  %.not161 = icmp eq i32 %i.jd, 0
  br i1 %.not161, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN5ImGui17CloseCurrentPopupEv() #36
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn
  br i1 %or.cond, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZN5ImGui11EndDisabledEv() #36
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.l, %bb.m, %bb.n, %bb.j, %bb.k, %_ZNK6ImRect8OverlapsERKS_.exit, %bb.bt
  %.0132 = phi i1 [ %i.hs, %bb.bt ], [ false, %_ZNK6ImRect8OverlapsERKS_.exit ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.bu

bb.bu:                                            ; preds = %bb.a, %_ZNK6ImRect8OverlapsERKS_.exit.thread
  %.1 = phi i1 [ %.0132, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ false, %bb.a ]
  ret i1 %.1
}

declare void @_ZN5ImGui19SetItemDefaultFocusEv() local_unnamed_addr #3

declare void @_ZN5ImGui5PopIDEv() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiPKS1_ii(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImGuiListClipper, align 8   ; 10 uses
  %8 = alloca %struct.ImVec2, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 5 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !211    ; 3 uses
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = icmp slt i32 %i.b, %3
  %or.cond.i = and i1 %i.c, %i.d
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.b to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033.i = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %.not.i = icmp eq i32 %4, -1
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7784
  %i.i = load i32, ptr %i.h, align 8, !tbaa !307
  %i.j = and i32 %i.i, 16
  %.not37.i = icmp eq i32 %i.j, 0
  br i1 %.not37.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
end_hunk_4
begin_hunk_5_@_Z32ImParseFormatSanitizeForPrintingPKcPcm:bb.a
  switch i8 %i.aj, label %bb.l [
    i8 95, label %bb.m
    i8 39, label %bb.m
    i8 36, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph.3
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.2, i64 1
  store i8 %i.aj, ptr %.1.2, align 1, !tbaa !330
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.3, %.lr.ph.3, %.lr.ph.3
  %.1.3 = phi ptr [ %i.ak, %bb.l ], [ %.1.2, %.lr.ph.3 ], [ %.1.2, %.lr.ph.3 ], [ %.1.2, %.lr.ph.3 ] ; 2 uses
  %exitcond.not.3 = icmp eq ptr %i.ai, %.2.i
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.m, %bb.a, %_Z20ImParseFormatFindEndPKc.exit
  %.014.lcssa = phi ptr [ %1, %_Z20ImParseFormatFindEndPKc.exit ], [ %1, %bb.a ], [ %.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1.3, %bb.m ]
  store i8 0, ptr %.014.lcssa, align 1, !tbaa !330
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z22ImParseFormatPrecisionPKci(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !330     ; 2 uses
  %.not24.i = icmp eq i8 %i.a, 0
  br i1 %.not24.i, label %_Z22ImParseFormatFindStartPKc.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.pr = phi i8 [ %i.f, %bb.c ], [ %i.a, %bb.a ]
  %.01025.i = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ] ; 3 uses
  %i.b = icmp eq i8 %.pr, 37                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.01025.i, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !330
  %.not15.i = icmp eq i8 %i.d, 37
  br i1 %.not15.i, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %spec.select.idx.i = zext i1 %i.b to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.01025.i, i64 %spec.select.idx.i
  %i.e = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !330   ; 2 uses
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %_Z22ImParseFormatFindStartPKc.exit.thread, label %.lr.ph.i

.preheader:                                       ; preds = %bb.b, %.preheader
  %.pn = phi ptr [ %.018, %.preheader ], [ %.01025.i, %bb.b ] ; 2 uses
  %.018 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.g = load i8, ptr %.018, align 1, !tbaa !330  ; 3 uses
  %i.h = add i8 %i.g, -48
  %or.cond23 = icmp ult i8 %i.h, 10
  br i1 %or.cond23, label %.preheader, label %.critedge, !llvm.loop !6

.critedge:                                        ; preds = %.preheader
  %i.i = icmp eq i8 %i.g, 46
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !330
  %.not.i24 = icmp eq i8 %i.k, 45                 ; 2 uses
  %spec.select.idx.i25 = zext i1 %.not.i24 to i64
  %spec.select.i26 = getelementptr inbounds nuw i8, ptr %i.j, i64 %spec.select.idx.i25 ; 2 uses
  %i.l = load i8, ptr %spec.select.i26, align 1, !tbaa !330
  %i.m = icmp eq i8 %i.l, 43
  %.1.idx.i = zext i1 %i.m to i64
  %.1.i = getelementptr inbounds nuw i8, ptr %spec.select.i26, i64 %.1.idx.i ; 2 uses
  %i.n = load i8, ptr %.1.i, align 1, !tbaa !330  ; 3 uses
  %i.o = add i8 %i.n, -48
  %or.cond15.i = icmp ult i8 %i.o, 10
  br i1 %or.cond15.i, label %.lr.ph.i27, label %_ZL6ImAtoiIiEPKcS1_PT_.exit

.lr.ph.i27:                                       ; preds = %bb.d, %.lr.ph.i27
  %i.p = phi i8 [ %i.u, %.lr.ph.i27 ], [ %i.n, %bb.d ]
  %.017.i = phi i32 [ %i.t, %.lr.ph.i27 ], [ 0, %bb.d ]
  %.216.i = phi ptr [ %i.r, %.lr.ph.i27 ], [ %.1.i, %bb.d ]
  %i.q = mul nsw i32 %.017.i, 10
  %i.r = getelementptr inbounds nuw i8, ptr %.216.i, i64 1 ; 2 uses
  %narrow.i = add nsw i8 %i.p, -48
  %i.s = zext nneg i8 %narrow.i to i32
  %i.t = add nsw i32 %i.q, %i.s                   ; 2 uses
  %i.u = load i8, ptr %i.r, align 1, !tbaa !330   ; 3 uses
  %i.v = add i8 %i.u, -48
  %or.cond.i = icmp ult i8 %i.v, 10
  br i1 %or.cond.i, label %.lr.ph.i27, label %_ZL6ImAtoiIiEPKcS1_PT_.exit, !llvm.loop !7

_ZL6ImAtoiIiEPKcS1_PT_.exit:                      ; preds = %.lr.ph.i27, %bb.d
  %i.w = phi i8 [ %i.n, %bb.d ], [ %i.u, %.lr.ph.i27 ]
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.t, %.lr.ph.i27 ] ; 2 uses
  %i.x = sub nsw i32 0, %.0.lcssa.i
  %i.y = select i1 %.not.i24, i32 %i.x, i32 %.0.lcssa.i ; 2 uses
  %or.cond = icmp ugt i32 %i.y, 99
  %spec.select = select i1 %or.cond, i32 %1, i32 %i.y
  %i.z = freeze i32 %spec.select
  br label %bb.e

bb.e:                                             ; preds = %_ZL6ImAtoiIiEPKcS1_PT_.exit, %.critedge
  %i.aa = phi i8 [ %i.g, %.critedge ], [ %i.w, %_ZL6ImAtoiIiEPKcS1_PT_.exit ] ; 2 uses
  %.031 = phi i32 [ 2147483647, %.critedge ], [ %i.z, %_ZL6ImAtoiIiEPKcS1_PT_.exit ] ; 4 uses
  switch i8 %i.aa, label %bb.f [
    i8 101, label %_Z22ImParseFormatFindStartPKc.exit.thread
    i8 69, label %_Z22ImParseFormatFindStartPKc.exit.thread
    i8 103, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp eq i8 %i.aa, 71
  %i.ac = icmp eq i32 %.031, 2147483647           ; 2 uses
  %or.cond3 = and i1 %i.ac, %i.ab
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %.old2 = icmp eq i32 %.031, 2147483647
  br i1 %.old2, label %bb.h, label %_Z22ImParseFormatFindStartPKc.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.g
  br label %_Z22ImParseFormatFindStartPKc.exit.thread

bb.i:                                             ; preds = %bb.f
  %spec.select43 = select i1 %i.ac, i32 %1, i32 %.031
  br label %_Z22ImParseFormatFindStartPKc.exit.thread

_Z22ImParseFormatFindStartPKc.exit.thread:        ; preds = %bb.c, %bb.i, %bb.e, %bb.e, %bb.g, %bb.h, %bb.a
  %.0 = phi i32 [ -1, %bb.e ], [ %.031, %bb.g ], [ -1, %bb.e ], [ %spec.select43, %bb.i ], [ %1, %bb.a ], [ -1, %bb.h ], [ %1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui13TempInputTextERK6ImRectjPKcPcii(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9468 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !340
  %.not = icmp eq i32 %i.c, %1                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui13ClearActiveIDEv() #36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.g = load i64, ptr %0, align 4, !tbaa !193
  store i64 %i.g, ptr %i.f, align 8, !tbaa !193
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7708 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !253
  %i.j = or i32 %i.i, 32
  store i32 %i.j, ptr %i.h, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !193
  %i.m = load <2 x float>, ptr %0, align 4, !tbaa !193
  %i.n = fsub <2 x float> %i.l, %i.m
  store <2 x float> %i.n, ptr %6, align 8
  %i.o = or i32 %5, 134217728
  %i.p = call noundef zeroext i1 @_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.o, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.r = load i32, ptr %i.q, align 4, !tbaa !220
  store i32 %i.r, ptr %i.b, align 4, !tbaa !340
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i1 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImRect, align 8            ; 13 uses
  %12 = alloca %struct.ImRect, align 8            ; 6 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %15 = alloca %struct.ImVector.37, align 8       ; 13 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [5 x i8], align 1                 ; 5 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %16 = alloca %struct.ImGuiInputTextCallbackData, align 8 ; 16 uses
  %17 = alloca %struct.ImGuiInputTextCallbackData, align 8 ; 11 uses
  %18 = alloca %struct.ImVec4, align 16           ; 10 uses
  %19 = alloca %struct.ImVec2, align 8            ; 13 uses
  %20 = alloca %struct.ImRect, align 16           ; 5 uses
  %21 = alloca %struct.ImVec2, align 8            ; 4 uses
  %22 = alloca %struct.ImRect, align 16           ; 5 uses
  %23 = alloca %struct.ImVec2, align 8            ; 4 uses
  %24 = alloca %struct.ImVec2, align 8            ; 4 uses
  %25 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.j = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 104 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 5184 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !161  ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 206
  store i8 1, ptr %i.m, align 2, !tbaa !185
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 209
  %i.o = load i8, ptr %i.n, align 1, !tbaa !186, !range !187, !noundef !188
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.ny, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = and i32 %5, 67108864
  %i.s = icmp ne i32 %i.r, 0                      ; 33 uses
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui10BeginGroupEv() #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.l, ptr noundef %0, ptr noundef null) #36 ; 59 uses
  %i.u = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) #36 ; 2 uses
  %.sroa.0691.0.copyload = load <2 x float>, ptr %4, align 4, !tbaa !193
  %i.v = tail call noundef float @_ZN5ImGui13CalcItemWidthEv() #36
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 4400
  %i.x = load float, ptr %i.w, align 8, !tbaa !208
  %i.y = fmul float %i.x, 8.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.0692.4.vec.extract = extractelement <2 x float> %i.u, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = phi float [ %i.y, %bb.e ], [ %.sroa.0692.4.vec.extract, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 3212 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 3216 ; 7 uses
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !206
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float 2.000000e+00, float %i.z)
  %i.ae = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.0691.0.copyload, float noundef %i.v, float noundef %i.ad) #36 ; 6 uses
  %.sroa.01400.0.vec.extract1402 = extractelement <2 x float> %i.ae, i64 0 ; 4 uses
  %.sroa.0692.0.vec.extract = extractelement <2 x float> %i.u, i64 0 ; 2 uses
  %i.af = fcmp ogt float %.sroa.0692.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 3236
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !207
  %i.ai = fadd float %.sroa.0692.0.vec.extract, %i.ah
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aj = phi float [ %i.ai, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ak = fadd float %.sroa.01400.0.vec.extract1402, %i.aj
  %.sroa.01400.4.vec.extract1408 = extractelement <2 x float> %i.ae, i64 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 280 ; 2 uses
  %i.am = load <2 x float>, ptr %i.al, align 4, !tbaa !193 ; 6 uses
  %i.an = fadd <2 x float> %i.ae, %i.am
  store <2 x float> %i.am, ptr %11, align 8, !tbaa !193
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store <2 x float> %i.an, ptr %i.ao, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 4
  store <2 x float> %i.am, ptr %12, align 8, !tbaa !193
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = load float, ptr %i.ab, align 8, !tbaa !206 ; 2 uses
  %i.as = insertelement <2 x float> %i.ae, float %i.ak, i64 0
  %i.at = fadd <2 x float> %i.as, %i.am           ; 2 uses
  store <2 x float> %i.at, ptr %i.aq, align 8, !tbaa !193
  %i.au = fsub <2 x float> %i.at, %i.am           ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  store <2 x float> %i.au, ptr %10, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef %i.ar) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %i.av = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.t, ptr noundef nonnull %11, i32 noundef 1048576) #36
  br i1 %i.av, label %bb.k, label %.critedge1177

.critedge1177:                                    ; preds = %bb.j
  call void @_ZN5ImGui8EndGroupEv() #36
  br label %bb.nx

bb.k:                                             ; preds = %bb.j
  %.sroa.41391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 7708
  %.sroa.41391.0.copyload = load i32, ptr %.sroa.41391.0..sroa_idx, align 4, !tbaa !211
  %.sroa.51392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 7712
  %.sroa.51392.0.copyload = load i32, ptr %.sroa.51392.0..sroa_idx, align 8, !tbaa !211
  store <2 x float> %i.am, ptr %i.al, align 8, !tbaa !193
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8096 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !226 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, %i.t
  br i1 %i.ay, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 8108
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !231
  %i.bb = and i32 %i.ba, 8
  %.not1126 = icmp eq i32 %i.bb, 0
  %i.bc = and i32 %5, 32
  %.not1127 = icmp eq i32 %i.bc, 0
  %or.cond1175 = or i1 %.not1127, %.not1126
  br i1 %or.cond1175, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.aw, align 8, !tbaa !226
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.bd = phi i32 [ 0, %bb.m ], [ %i.t, %bb.l ], [ %i.ax, %bb.k ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 5300
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !220
  %i.bg = icmp eq i32 %i.bf, %i.t
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.aw, align 8, !tbaa !226
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 3524
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(16) %i.bh) #36
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 3220
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !235
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 7, float noundef %i.bj) #36
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 3224
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !289
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 8, float noundef %i.bl) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store <2 x float> zeroinitializer, ptr %13, align 8, !tbaa !193
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %13) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.bm = load <2 x float>, ptr %i.ao, align 8, !tbaa !193
  %i.bn = load <2 x float>, ptr %11, align 8, !tbaa !193
  %i.bo = fsub <2 x float> %i.bm, %i.bn
  store <2 x float> %i.bo, ptr %14, align 8
  %i.bp = call noundef zeroext i1 @_ZN5ImGui12BeginChildExEPKcjRK6ImVec2ii(ptr noundef %0, i32 noundef %i.t, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef 1, i32 noundef 4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  store i32 %i.bd, ptr %i.aw, align 8, !tbaa !226
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 3) #36
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1) #36
  br i1 %i.bp, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.p
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !161 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 280 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 368
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !329
  %i.bu = shl nuw i32 1, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 374 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !666
  %i.bx = trunc i32 %i.bu to i16
  %i.by = or i16 %i.bw, %i.bx
  store i16 %i.by, ptr %i.bv, align 2, !tbaa !666
  %i.bz = load <2 x float>, ptr %i.aa, align 4, !tbaa !193
  %i.ca = load <2 x float>, ptr %i.br, align 8, !tbaa !193
  %i.cb = fadd <2 x float> %i.bz, %i.ca
  store <2 x float> %i.cb, ptr %i.br, align 8, !tbaa !193
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 192
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !667
  %i.ce = fsub float %.sroa.01400.0.vec.extract1402, %i.cd ; 2 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @_ZN5ImGui8EndChildEv() #36
  call void @_ZN5ImGui8EndGroupEv() #36
  br label %bb.nx

bb.r:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store <2 x float> %i.au, ptr %9, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %9, float noundef %i.ar) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.cf = and i32 %5, 134217728
  %.not1125 = icmp eq i32 %i.cf, 0
  br i1 %.not1125, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.t, ptr noundef nonnull %11, i32 noundef 1048576) #36
  br i1 %i.cg, label %bb.t, label %bb.nx

bb.t:                                             ; preds = %.thread, %bb.r, %bb.s
  %.sroa.01383.0 = phi float [ %i.ce, %.thread ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.r ] ; 2 uses
  %.sroa.51392.0 = phi i32 [ %.sroa.51392.0.copyload, %.thread ], [ 0, %bb.s ], [ 0, %bb.r ]
  %.sroa.41391.0 = phi i32 [ %.sroa.41391.0.copyload, %.thread ], [ 0, %bb.s ], [ 0, %bb.r ]
  %.21101 = phi ptr [ %i.bq, %.thread ], [ %i.l, %bb.s ], [ %i.l, %bb.r ] ; 16 uses
  %.sroa.0660.2 = phi float [ %i.ce, %.thread ], [ %.sroa.01400.0.vec.extract1402, %bb.s ], [ %.sroa.01400.0.vec.extract1402, %bb.r ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 7704 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  store i8 1, ptr %i.akc, align 8, !tbaa !392
  br label %bb.jk

bb.jk:                                            ; preds = %_ZN8ImVectorIcE6resizeEi.exit1258, %bb.jj
  %i.akd = load i32, ptr %i.ajs, align 8, !tbaa !405 ; 4 uses
  %i.ake = icmp ne i32 %i.akd, %i.ajr
  %or.cond123 = or i1 %i.ake, %i.ajy
  br i1 %or.cond123, label %bb.jl, label %bb.jo

bb.jl:                                            ; preds = %bb.jk
  %i.akf = icmp eq i32 %i.akd, %i.ajz
  %.pre1536 = load ptr, ptr %i.ajm, align 8, !tbaa !350 ; 2 uses
  br i1 %i.akf, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.akg = load i32, ptr %.pre1536, align 4, !tbaa !364
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jl, %bb.jm
  %i.akh = phi i32 [ %i.akg, %bb.jm ], [ %i.akd, %bb.jl ]
  %i.aki = getelementptr inbounds nuw i8, ptr %.pre1536, i64 4
  store i32 %i.akh, ptr %i.aki, align 4, !tbaa !365
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jk, %bb.jn
  %i.akj = load i32, ptr %i.ajv, align 4, !tbaa !406 ; 3 uses
  %i.akk = icmp ne i32 %i.akj, %i.aju
  %or.cond126 = or i1 %i.akk, %i.ajy
  br i1 %or.cond126, label %bb.jp, label %.thread1444

bb.jp:                                            ; preds = %bb.jo
  %i.akl = icmp eq i32 %i.akj, %i.akd
  %.pre1537 = load ptr, ptr %i.ajm, align 8, !tbaa !350 ; 2 uses
  br i1 %i.akl, label %bb.jq, label %bb.jr

bb.jq:                                            ; preds = %bb.jp
  %i.akm = getelementptr inbounds nuw i8, ptr %.pre1537, i64 4
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !365
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.ako = phi i32 [ %i.akn, %bb.jq ], [ %i.akj, %bb.jp ]
  %i.akp = getelementptr inbounds nuw i8, ptr %.pre1537, i64 8
  store i32 %i.ako, ptr %i.akp, align 4, !tbaa !366
  br i1 %i.ajy, label %bb.js, label %.thread1444

bb.js:                                            ; preds = %bb.jr
  %i.akq = load ptr, ptr %i.ajc, align 8, !tbaa !696
  %i.akr = load i32, ptr %i.aik, align 8, !tbaa !698
  %i.aks = add nsw i32 %i.akr, -1
  %i.akt = load ptr, ptr %i.ajf, align 8, !tbaa !400
  %i.aku = load i32, ptr %i.ajh, align 8, !tbaa !401
  call fastcc void @_ZL27InputTextReconcileUndoStateP19ImGuiInputTextStatePKciS2_i(ptr noundef nonnull %.010971611, ptr noundef %i.akq, i32 noundef %i.aks, ptr noundef %i.akt, i32 noundef %i.aku)
  %i.akv = load i32, ptr %i.ajh, align 8, !tbaa !401
  store i32 %i.akv, ptr %i.ail, align 8, !tbaa !355
  %i.akw = getelementptr inbounds nuw i8, ptr %.010971611, i64 100
  store float -3.000000e-01, ptr %i.akw, align 4, !tbaa !367
  br label %.thread1444

.thread1444:                                      ; preds = %bb.jo, %bb.js, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.jt

bb.jt:                                            ; preds = %bb.jc, %.thread1444, %.thread1653
  br i1 %i.cz, label %.thread1646, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.akx = getelementptr inbounds nuw i8, ptr %.010971611, i64 32
  %i.aky = load ptr, ptr %i.akx, align 8, !tbaa !373 ; 2 uses
  %i.akz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aky, ptr noundef nonnull dereferenceable(1) %2) #35
  %.not1162 = icmp eq i32 %i.akz, 0
  br i1 %.not1162, label %.thread1646, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.ala = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.alb = load i32, ptr %i.ala, align 8, !tbaa !355
  br label %.thread1646

.thread1646:                                      ; preds = %bb.eu, %bb.jt, %bb.ju, %bb.jv, %bb.io
  %.210741643 = phi i1 [ %.11073, %bb.io ], [ %.2107416441660, %bb.jt ], [ %.2107416441660, %bb.jv ], [ %.2107416441660, %bb.ju ], [ false, %bb.eu ]
  %.110811641 = phi i1 [ %i.afy, %bb.io ], [ %.1108116421661, %bb.jt ], [ %.1108116421661, %bb.jv ], [ %.1108116421661, %bb.ju ], [ %i.og, %bb.eu ] ; 5 uses
  %.110831639 = phi i1 [ %.01082.shrunk, %bb.io ], [ %.1108316401662, %bb.jt ], [ %.1108316401662, %bb.jv ], [ %.1108316401662, %bb.ju ], [ %i.ny, %bb.eu ] ; 7 uses
  %.110871637 = phi float [ %.01086, %bb.io ], [ %.1108716381663, %bb.jt ], [ %.1108716381663, %bb.jv ], [ %.1108716381663, %bb.ju ], [ %i.ek, %bb.eu ] ; 3 uses
  %.310961635 = phi i8 [ %.21095, %bb.io ], [ %.3109616361664, %bb.jt ], [ %.3109616361664, %bb.jv ], [ %.3109616361664, %bb.ju ], [ %.01093, %bb.eu ]
  %.21077 = phi i1 [ false, %bb.io ], [ %.01075, %bb.jt ], [ true, %bb.jv ], [ %.01075, %bb.ju ], [ false, %bb.eu ] ; 4 uses
  %.21064 = phi ptr [ null, %bb.io ], [ %.01062, %bb.jt ], [ %i.aky, %bb.jv ], [ %.01062, %bb.ju ], [ null, %bb.eu ] ; 4 uses
  %.21059 = phi i32 [ 0, %bb.io ], [ %.01057, %bb.jt ], [ %i.alb, %bb.jv ], [ %.01057, %bb.ju ], [ 0, %bb.eu ] ; 4 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.j, i64 9336 ; 2 uses
  %i.ald = load i32, ptr %i.alc, align 8, !tbaa !407
  %i.ale = icmp eq i32 %i.ald, %i.t
  br i1 %i.ale, label %bb.jw, label %bb.kb

bb.jw:                                            ; preds = %.thread1646
  %i.alf = load i32, ptr %i.df, align 4, !tbaa !220
  %.not1163 = icmp eq i32 %i.alf, %i.t
  br i1 %.not1163, label %bb.ka, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.alg = call noundef zeroext i1 @_ZN5ImGui26IsItemDeactivatedAfterEditEv() #36
  %.not127 = xor i1 %i.alg, true
  %or.cond130 = or i1 %i.cz, %.not127
  br i1 %or.cond130, label %bb.ka, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.alh = getelementptr inbounds nuw i8, ptr %i.j, i64 9352
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !408 ; 2 uses
  %i.alj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ali, ptr noundef nonnull dereferenceable(1) %2) #35
  %.not1164 = icmp eq i32 %i.alj, 0
  br i1 %.not1164, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.alk = getelementptr inbounds nuw i8, ptr %i.j, i64 9344
  %i.all = load i32, ptr %i.alk, align 8, !tbaa !699
  %i.alm = add nsw i32 %i.all, -1
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy, %bb.jx, %bb.jw
  %.31078 = phi i1 [ %.21077, %bb.jx ], [ true, %bb.jz ], [ %.21077, %bb.jy ], [ %.21077, %bb.jw ]
  %.31065 = phi ptr [ %.21064, %bb.jx ], [ %i.ali, %bb.jz ], [ %.21064, %bb.jy ], [ %.21064, %bb.jw ]
  %.31060 = phi i32 [ %.21059, %bb.jx ], [ %i.alm, %bb.jz ], [ %.21059, %bb.jy ], [ %.21059, %bb.jw ]
  store i32 0, ptr %i.alc, align 8, !tbaa !407
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %.thread1646
  %.41079 = phi i1 [ %.31078, %bb.ka ], [ %.21077, %.thread1646 ] ; 2 uses
  %.41066 = phi ptr [ %.31065, %bb.ka ], [ %.21064, %.thread1646 ] ; 2 uses
  %.41061 = phi i32 [ %.31060, %bb.ka ], [ %.21059, %.thread1646 ] ; 3 uses
  %.not1165 = icmp eq ptr %.41066, null
  br i1 %.not1165, label %bb.kf, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  br i1 %.not1129, label %bb.ke, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  %i.aln = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aln, i8 0, i64 40, i1 false)
  store ptr %i.j, ptr %17, align 8, !tbaa !396
  %i.alo = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 4194304, ptr %i.alo, align 8, !tbaa !397
  %i.alp = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %spec.select1180, ptr %i.alp, align 4, !tbaa !398
  %i.alq = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store ptr %2, ptr %i.alq, align 8, !tbaa !400
  %i.alr = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  store i32 %.41061, ptr %i.alr, align 8, !tbaa !401
  %i.als = add nsw i32 %.41061, 1
  %i.alt = call noundef i32 @llvm.smax.i32(i32 %3, i32 %i.als)
  %i.alu = getelementptr inbounds nuw i8, ptr %17, i64 44 ; 2 uses
  store i32 %i.alt, ptr %i.alu, align 4, !tbaa !402
  %i.alv = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %7, ptr %i.alv, align 8, !tbaa !399
  %i.alw = call noundef i32 %6(ptr noundef nonnull %17) #36 ; 0 uses
  %i.alx = load ptr, ptr %i.alq, align 8, !tbaa !400
  %i.aly = load i32, ptr %i.alu, align 4, !tbaa !402 ; 2 uses
  %i.alz = load i32, ptr %i.alr, align 8, !tbaa !401
  %i.ama = add nsw i32 %i.aly, -1
  %i.amb = call noundef i32 @llvm.smin.i32(i32 %i.alz, i32 %i.ama)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %.5 = phi i32 [ %i.amb, %bb.kd ], [ %.41061, %bb.kc ]
  %.01039 = phi i32 [ %i.aly, %bb.kd ], [ %3, %bb.kc ]
  %.01037 = phi ptr [ %i.alx, %bb.kd ], [ %2, %bb.kc ] ; 2 uses
  %i.amc = add nsw i32 %.5, 1
  %i.amd = call noundef i32 @llvm.smin.i32(i32 %i.amc, i32 %.01039)
  %i.ame = sext i32 %i.amd to i64
  call void @_Z9ImStrncpyPcPKcm(ptr noundef %.01037, ptr noundef nonnull %.41066, i64 noundef %i.ame) #36
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kb
  %.11038 = phi ptr [ %.01037, %bb.ke ], [ %2, %bb.kb ] ; 2 uses
  %i.amf = load i32, ptr %i.df, align 4, !tbaa !220
  %i.amg = icmp eq i32 %i.amf, %i.t
  %i.amh = trunc nuw i8 %.310961635 to i1
  %or.cond133 = select i1 %i.amg, i1 %i.amh, i1 false
  br i1 %or.cond133, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  call void @_ZN5ImGui13ClearActiveIDEv() #36
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf
  br i1 %i.s, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.t, i32 noundef 0) #36
  %.sroa.0240.0.copyload = load <2 x float>, ptr %11, align 8, !tbaa !193
  %.sroa.0239.0.copyload = load <2 x float>, ptr %i.ao, align 8, !tbaa !193
  %i.ami = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 7, float noundef 1.000000e+00) #36
  %i.amj = getelementptr inbounds nuw i8, ptr %i.j, i64 3220
  %i.amk = load float, ptr %i.amj, align 4, !tbaa !235
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.0240.0.copyload, <2 x float> %.sroa.0239.0.copyload, i32 noundef %i.ami, i1 noundef zeroext true, float noundef %i.amk) #36
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  %i.aml = load <2 x float>, ptr %11, align 8, !tbaa !193 ; 3 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.amo = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.amp = insertelement <2 x float> %i.ae, float %.sroa.0660.2, i64 0
  %i.amq = fadd <2 x float> %i.amp, %i.aml
  %26 = shufflevector <2 x float> %i.aml, <2 x float> %i.amq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %26, ptr %18, align 16, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  br i1 %i.s, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.amr = getelementptr inbounds nuw i8, ptr %.21101, i64 280
  %i.ams = load i64, ptr %i.amr, align 8, !tbaa !193
  br label %bb.km

bb.kl:                                            ; preds = %bb.kj
  %i.amt = load <2 x float>, ptr %i.aa, align 4, !tbaa !193
  %i.amu = fadd <2 x float> %i.aml, %i.amt
  %i.amv = bitcast <2 x float> %i.amu to i64
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %storemerge = phi i64 [ %i.ams, %bb.kk ], [ %i.amv, %bb.kl ] ; 3 uses
  store i64 %storemerge, ptr %19, align 8
  %i.amw = trunc i64 %storemerge to i32
  %i.amx = bitcast i32 %i.amw to float            ; 3 uses
  %i.amy = lshr i64 %storemerge, 32
  %i.amz = trunc nuw i64 %i.amy to i32
  %i.ana = bitcast i32 %i.amz to float
  br i1 %i.oh, label %bb.kn, label %.thread1445

bb.kn:                                            ; preds = %bb.km
  %i.anb = getelementptr inbounds nuw i8, ptr %.010971611, i64 48
  %i.anc = load ptr, ptr %i.anb, align 8, !tbaa !354 ; 2 uses
  br i1 %.not1141, label %.thr_comm1447, label %.thread1446

.thread1445:                                      ; preds = %bb.km
  br i1 %.not1141, label %.thr_comm1447, label %.thread1446

.thr_comm1447:                                    ; preds = %.thread1445, %bb.kn
  %.ph1448 = phi ptr [ %.11038, %.thread1445 ], [ %i.anc, %bb.kn ] ; 2 uses
  br i1 %i.on, label %bb.ko, label %.thread1665

.thread1446:                                      ; preds = %bb.kn, %.thread1445
  %i.and = phi ptr [ %.11038, %.thread1445 ], [ %i.anc, %bb.kn ] ; 3 uses
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !330
  %i.anf = icmp eq i8 %i.ane, 0                   ; 2 uses
  %i.ang = xor i1 %i.on, %i.anf
  br i1 %i.ang, label %bb.ko, label %bb.kr

bb.ko:                                            ; preds = %.thr_comm1447, %.thread1446
  %i.anh = phi i1 [ false, %.thr_comm1447 ], [ %i.anf, %.thread1446 ] ; 2 uses
  %i.ani = phi ptr [ %.ph1448, %.thr_comm1447 ], [ %i.and, %.thread1446 ] ; 2 uses
  br i1 %or.cond38, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.anj = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 9 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 9360 ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anj, i64 9464
  %i.anm = load i32, ptr %i.anl, align 8, !tbaa !379
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anj, i64 4384
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !374
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 16
  store i32 %i.anm, ptr %i.anp, align 8, !tbaa !378
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anj, i64 9424
  %i.anr = load i32, ptr %i.anq, align 8, !tbaa !380
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anj, i64 4392
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !295 ; 7 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 64
  store i32 %i.anr, ptr %i.anu, align 8, !tbaa !380
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anj, i64 9376
  %i.anw = load float, ptr %i.anv, align 8, !tbaa !381
  %i.anx = getelementptr inbounds nuw i8, ptr %i.ant, i64 16
  store float %i.anw, ptr %i.anx, align 8, !tbaa !381
  %i.any = getelementptr inbounds nuw i8, ptr %i.ant, i64 32 ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anj, i64 9392 ; 2 uses
  %i.aoa = load <2 x i32>, ptr %i.anz, align 8, !tbaa !211
  %i.aob = load <2 x i32>, ptr %i.any, align 8, !tbaa !211
  store <2 x i32> %i.aob, ptr %i.anz, align 8, !tbaa !211
  store <2 x i32> %i.aoa, ptr %i.any, align 8, !tbaa !211
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anj, i64 9400 ; 2 uses
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !382
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.ant, i64 40 ; 2 uses
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !382
  store ptr %i.aof, ptr %i.aoc, align 8, !tbaa !382
  store ptr %i.aod, ptr %i.aoe, align 8, !tbaa !382
  %i.aog = load <2 x i32>, ptr %i.ank, align 8, !tbaa !211
  %i.aoh = load <2 x i32>, ptr %i.ant, align 8, !tbaa !211
  store <2 x i32> %i.aoh, ptr %i.ank, align 8, !tbaa !211
  store <2 x i32> %i.aog, ptr %i.ant, align 8, !tbaa !211
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.anj, i64 9368 ; 2 uses
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !383
  %i.aok = getelementptr inbounds nuw i8, ptr %i.ant, i64 8 ; 2 uses
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !383
  store ptr %i.aol, ptr %i.aoi, align 8, !tbaa !383
  store ptr %i.aoj, ptr %i.aok, align 8, !tbaa !383
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %or.cond141 = or i1 %i.db, %i.anh
  br i1 %or.cond141, label %bb.kr, label %.split

.split:                                           ; preds = %bb.kq
  %i.aom = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 9 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 9360 ; 2 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aom, i64 4392 ; 2 uses
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !295
  %i.aoq = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %i.aop, i16 noundef zeroext 42) #36 ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aom, i64 4384
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !374
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 16 ; 2 uses
  %i.aou = load i32, ptr %i.aot, align 8, !tbaa !378 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aom, i64 9464
  store i32 %i.aou, ptr %i.aov, align 8, !tbaa !379
  %i.aow = load ptr, ptr %i.aoo, align 8, !tbaa !295 ; 8 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 64 ; 2 uses
  %i.aoy = load i32, ptr %i.aox, align 8, !tbaa !380
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aom, i64 9424
  store i32 %i.aoy, ptr %i.aoz, align 8, !tbaa !380
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aow, i64 16 ; 2 uses
  %i.apb = load float, ptr %i.apa, align 8, !tbaa !381
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aom, i64 9376
  store float %i.apb, ptr %i.apc, align 8, !tbaa !381
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aom, i64 9392 ; 2 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aow, i64 32 ; 2 uses
  %i.apf = load <2 x i32>, ptr %i.ape, align 8, !tbaa !211
  %i.apg = load <2 x i32>, ptr %i.apd, align 8, !tbaa !211
  store <2 x i32> %i.apg, ptr %i.ape, align 8, !tbaa !211
  store <2 x i32> %i.apf, ptr %i.apd, align 8, !tbaa !211
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aow, i64 40 ; 2 uses
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !382
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aom, i64 9400 ; 2 uses
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !382
  store ptr %i.apk, ptr %i.aph, align 8, !tbaa !382
  store ptr %i.api, ptr %i.apj, align 8, !tbaa !382
  %i.apl = load <2 x i32>, ptr %i.aow, align 8, !tbaa !211
  %i.apm = load <2 x i32>, ptr %i.aon, align 8, !tbaa !211
  store <2 x i32> %i.apm, ptr %i.aow, align 8, !tbaa !211
  store <2 x i32> %i.apl, ptr %i.aon, align 8, !tbaa !211
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aow, i64 8 ; 2 uses
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !383
  %i.app = getelementptr inbounds nuw i8, ptr %i.aom, i64 9368 ; 2 uses
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !383
  store ptr %i.apq, ptr %i.apn, align 8, !tbaa !383
  store ptr %i.apo, ptr %i.app, align 8, !tbaa !383
  %i.apr = or i32 %i.aou, 4
  store i32 %i.apr, ptr %i.aot, align 8, !tbaa !378
  %i.aps = getelementptr inbounds nuw i8, ptr %i.aow, i64 56
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !384
  %i.apu = ptrtoint ptr %i.aoq to i64
  %i.apv = ptrtoint ptr %i.apt to i64
  %i.apw = sub i64 %i.apu, %i.apv
  %i.apx = sdiv exact i64 %i.apw, 44
  %i.apy = trunc i64 %i.apx to i32
  store i32 %i.apy, ptr %i.aox, align 8, !tbaa !380
  %i.apz = getelementptr inbounds nuw i8, ptr %i.aoq, i64 4
  %i.aqa = load float, ptr %i.apz, align 4, !tbaa !386
  store float %i.aqa, ptr %i.apa, align 8, !tbaa !381
  br label %.thread1665

bb.kr:                                            ; preds = %bb.kq, %.thread1446
  %i.aqb = phi ptr [ %i.ani, %bb.kq ], [ %i.and, %.thread1446 ]
  %.01071.in = phi i1 [ %i.anh, %bb.kq ], [ %i.on, %.thread1446 ]
  br i1 %.01071.in, label %.thread1668, label %.thread1665

.thread1665:                                      ; preds = %.thr_comm1447, %.split, %bb.kr
  %.01054 = phi ptr [ %i.ani, %.split ], [ %i.aqb, %bb.kr ], [ %.ph1448, %.thr_comm1447 ] ; 8 uses
  %or.cond144 = select i1 %.110831639, i1 true, i1 %.110811641
  br i1 %or.cond144, label %bb.ks, label %.thread1696

.thread1668:                                      ; preds = %bb.kr
  %i.aqc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %i.aqd = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqc ; 2 uses
  %or.cond1441673 = select i1 %.110831639, i1 true, i1 %.110811641
  br i1 %or.cond1441673, label %._crit_edge1540, label %bb.mz

._crit_edge1540:                                  ; preds = %.thread1668
  %.phi.trans.insert1541 = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %.pre1542 = load i32, ptr %.phi.trans.insert1541, align 8, !tbaa !355
  %.pre1550 = sext i32 %.pre1542 to i64
  br label %bb.kt

bb.ks:                                            ; preds = %.thread1665
  %i.aqe = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.aqf = load i32, ptr %i.aqe, align 8, !tbaa !355
  %i.aqg = sext i32 %i.aqf to i64                 ; 2 uses
  %i.aqh = getelementptr inbounds i8, ptr %.01054, i64 %i.aqg
  br label %bb.kt

bb.kt:                                            ; preds = %._crit_edge1540, %bb.ks
  %.01071.in145016771692 = phi i1 [ true, %._crit_edge1540 ], [ false, %bb.ks ] ; 3 uses
  %.0105416811689 = phi ptr [ %1, %._crit_edge1540 ], [ %.01054, %bb.ks ] ; 12 uses
  %.pre-phi = phi i64 [ %.pre1550, %._crit_edge1540 ], [ %i.aqg, %bb.ks ] ; 2 uses
  %.1 = phi ptr [ %i.aqd, %._crit_edge1540 ], [ %i.aqh, %bb.ks ] ; 4 uses
  %i.aqi = getelementptr inbounds i8, ptr %.0105416811689, i64 %.pre-phi
  %i.aqj = select i1 %.110831639, i32 -1, i32 -1000 ; 3 uses
  %i.aqk = select i1 %.110811641, i32 -1, i32 -1000 ; 3 uses
  br i1 %.110831639, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.aql = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !350
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !364
  %i.aqo = sext i32 %i.aqn to i64
  %i.aqp = getelementptr inbounds i8, ptr %.0105416811689, i64 %i.aqo
  br label %bb.kv

end_hunk_6
begin_hunk_7_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  store i32 %i.asu, ptr %i.b, align 4, !tbaa !211
  %i.asv = icmp sgt i8 %i.ast, -1
  br i1 %i.asv, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %.lr.ph.split.i1276
  %i.asw = getelementptr inbounds nuw i8, ptr %.03224.i1277, i64 1
  br label %bb.lh

bb.lg:                                            ; preds = %.lr.ph.split.i1276
  %i.asx = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.b, ptr noundef nonnull %.03224.i1277, ptr noundef nonnull %i.ara) #36
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr inbounds i8, ptr %.03224.i1277, i64 %i.asy
  %.pr.i1280 = load i32, ptr %i.b, align 4, !tbaa !211
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %i.ata = phi i32 [ %.pr.i1280, %bb.lg ], [ %i.asu, %bb.lf ] ; 2 uses
  %.1.i1281 = phi ptr [ %i.asz, %bb.lg ], [ %i.asw, %bb.lf ] ; 2 uses
  switch i32 %i.ata, label %bb.lj [
    i32 10, label %bb.li
    i32 13, label %bb.lk
  ], !llvm.loop !12

bb.li:                                            ; preds = %bb.lh
  %.sroa.0.0.vec.extract.i1284 = extractelement <2 x float> %.sroa.0.022.i1279, i64 0 ; 2 uses
  %i.atb = fcmp oge float %.sroa.0.0.vec.extract.i1284, %.03323.i1278
  %i.atc = select i1 %i.atb, float %.sroa.0.0.vec.extract.i1284, float %.03323.i1278
  %.sroa.0.0.vec.insert.i1285 = insertelement <2 x float> poison, float %i.atc, i64 0
  %.sroa.0.4.vec.extract.i1286 = extractelement <2 x float> %.sroa.0.022.i1279, i64 1
  %i.atd = fadd float %.val1229, %.sroa.0.4.vec.extract.i1286
  %.sroa.0.4.vec.insert.i1287 = insertelement <2 x float> %.sroa.0.0.vec.insert.i1285, float %i.atd, i64 1
  br label %bb.lk

bb.lj:                                            ; preds = %bb.lh
  %i.ate = trunc i32 %i.ata to i16
  %i.atf = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %.val1228, i16 noundef zeroext %i.ate) #36
  %i.atg = call float @llvm.fmuladd.f32(float %i.atf, float %i.asr, float %.03323.i1278)
  br label %bb.lk

bb.lk:                                            ; preds = %bb.lj, %bb.li, %bb.lh
  %.sroa.0.1.i1282 = phi <2 x float> [ %.sroa.0.022.i1279, %bb.lj ], [ %.sroa.0.4.vec.insert.i1287, %bb.li ], [ %.sroa.0.022.i1279, %bb.lh ] ; 2 uses
  %.134.i1283 = phi float [ %i.atg, %bb.lj ], [ 0.000000e+00, %bb.li ], [ %.03323.i1278, %bb.lh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.ath = icmp ult ptr %.1.i1281, %i.ara
  br i1 %i.ath, label %.lr.ph.split.i1276, label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit

_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit: ; preds = %bb.lk
  %.pre1544 = load float, ptr %i.arp, align 8, !tbaa !208
  br label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288

_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288: ; preds = %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit, %bb.le
  %i.ati = phi float [ %.val1229, %bb.le ], [ %.pre1544, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit ] ; 2 uses
  %.sroa.0.2.i1265 = phi <2 x float> [ zeroinitializer, %bb.le ], [ %.sroa.0.1.i1282, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit ]
  %.235.i1266 = phi float [ 0.000000e+00, %bb.le ], [ %.134.i1283, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288.loopexit ] ; 2 uses
  %.sroa.0.0.vec.extract4.i1268 = extractelement <2 x float> %.sroa.0.2.i1265, i64 0 ; 2 uses
  %i.atj = fcmp olt float %.sroa.0.0.vec.extract4.i1268, %.235.i1266
  %.sroa.0190.0.vec.extract = select i1 %i.atj, float %.235.i1266, float %.sroa.0.0.vec.extract4.i1268
  %i.atk = uitofp nneg i32 %.31049 to float
  %i.atl = fmul float %i.ati, %i.atk
  %i.atm = insertelement <2 x float> poison, float %.sroa.0190.0.vec.extract, i64 0
  %i.atn = insertelement <2 x float> %i.atm, float %i.atl, i64 1
  br label %bb.ll

bb.ll:                                            ; preds = %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit
  %i.ato = phi float [ %i.ati, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288 ], [ %i.asj, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit ] ; 2 uses
  %i.atp = phi <2 x float> [ %i.atn, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1288 ], [ zeroinitializer, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit ]
  %i.atq = uitofp nneg i32 %.11045 to float
  %i.atr = fmul float %i.ato, %i.atq
  %.sroa.61384.0 = select i1 %i.s, float %i.atr, float 0.000000e+00 ; 3 uses
  br i1 %.110831639, label %bb.lm, label %bb.ma

bb.lm:                                            ; preds = %bb.ll
  %i.ats = getelementptr inbounds nuw i8, ptr %.010971611, i64 104 ; 2 uses
  %i.att = load i8, ptr %i.ats, align 8, !tbaa !392, !range !187, !noundef !188
  %i.atu = trunc nuw i8 %i.att to i1
  br i1 %i.atu, label %bb.ln, label %bb.ma

bb.ln:                                            ; preds = %bb.lm
  %i.atv = and i32 %5, 32768
  %.not1169 = icmp eq i32 %i.atv, 0
  br i1 %.not1169, label %bb.lo, label %bb.ls

bb.lo:                                            ; preds = %bb.ln
  %i.atw = fmul float %.sroa.0660.2, 2.500000e-01 ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %.010971611, i64 92 ; 3 uses
  %i.aty = load float, ptr %i.atx, align 4, !tbaa !672 ; 2 uses
  %i.atz = fcmp olt float %.sroa.0191.0.vec.extract, %i.aty
  br i1 %i.atz, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.aua = fsub float %.sroa.0191.0.vec.extract, %i.atw ; 2 uses
  %i.aub = fcmp ole float %i.aua, 0.000000e+00
  %i.auc = select i1 %i.aub, float 0.000000e+00, float %i.aua
  %i.aud = fptosi float %i.auc to i32
  %i.aue = sitofp i32 %i.aud to float
  store float %i.aue, ptr %i.atx, align 4, !tbaa !672
  br label %bb.lt

bb.lq:                                            ; preds = %bb.lo
  %i.auf = load float, ptr %i.aa, align 4, !tbaa !209
  %i.aug = fsub float %.sroa.0660.2, %i.auf
  %i.auh = fsub float %.sroa.0191.0.vec.extract, %i.aug ; 2 uses
  %i.aui = fcmp ult float %i.auh, %i.aty
  br i1 %i.aui, label %bb.lt, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.auj = fadd float %i.atw, %i.auh
  %i.auk = fptosi float %i.auj to i32
  %i.aul = sitofp i32 %i.auk to float
  store float %i.aul, ptr %i.atx, align 4, !tbaa !672
  br label %bb.lt

bb.ls:                                            ; preds = %bb.ln
  %i.aum = getelementptr inbounds nuw i8, ptr %.010971611, i64 96
  store float 0.000000e+00, ptr %i.aum, align 8, !tbaa !681
  br label %bb.lt

bb.lt:                                            ; preds = %bb.lp, %bb.lr, %bb.lq, %bb.ls
  br i1 %i.s, label %bb.lu, label %bb.lz

bb.lu:                                            ; preds = %bb.lt
  %i.aun = fsub float %i.asm, %i.ato              ; 3 uses
  %i.auo = fcmp olt float %i.aun, %.110871637
  br i1 %i.auo, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.aup = fcmp ole float %i.aun, 0.000000e+00
  %i.auq = select i1 %i.aup, float 0.000000e+00, float %i.aun
  %.pre1545 = load float, ptr %i.ab, align 8, !tbaa !206
  br label %bb.ly

bb.lw:                                            ; preds = %bb.lu
  %i.aur = load float, ptr %i.ab, align 8, !tbaa !206 ; 4 uses
  %i.aus = fneg float %i.aur
  %i.aut = call float @llvm.fmuladd.f32(float %i.aus, float 2.000000e+00, float %.sroa.01400.4.vec.extract1408)
  %i.auu = fsub float %i.asm, %i.aut
  %i.auv = fcmp ult float %i.auu, %.110871637
  br i1 %i.auv, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.auw = fsub float %i.asm, %.sroa.01400.4.vec.extract1408
  %i.aux = call float @llvm.fmuladd.f32(float %i.aur, float 2.000000e+00, float %i.auw)
  br label %bb.ly

bb.ly:                                            ; preds = %bb.lw, %bb.lx, %bb.lv
  %i.auy = phi float [ %.pre1545, %bb.lv ], [ %i.aur, %bb.lx ], [ %i.aur, %bb.lw ]
  %.21088 = phi float [ %i.auq, %bb.lv ], [ %i.aux, %bb.lx ], [ %.110871637, %bb.lw ] ; 3 uses
  %i.auz = call float @llvm.fmuladd.f32(float %i.auy, float 2.000000e+00, float %.sroa.61384.0)
  %i.ava = fsub float %i.auz, %.sroa.01400.4.vec.extract1408 ; 2 uses
  %i.avb = fcmp oge float %i.ava, 0.000000e+00
  %i.avc = select i1 %i.avb, float %i.ava, float 0.000000e+00 ; 2 uses
  %i.avd = fcmp olt float %.21088, 0.000000e+00
  %i.ave = fcmp ogt float %.21088, %i.avc
  %i.avf = select i1 %i.ave, float %i.avc, float %.21088
  %i.avg = select i1 %i.avd, float 0.000000e+00, float %i.avf ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %.21101, i64 156 ; 2 uses
  %i.avi = load float, ptr %i.avh, align 4, !tbaa !670
  %i.avj = fsub float %i.avi, %i.avg
  %i.avk = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.avl = load float, ptr %i.avk, align 4, !tbaa !200
  %i.avm = fadd float %i.avl, %i.avj
  store float %i.avm, ptr %i.avk, align 4, !tbaa !200
  store float %i.avg, ptr %i.avh, align 4, !tbaa !670
  br label %bb.lz

bb.lz:                                            ; preds = %bb.ly, %bb.lt
  store i8 0, ptr %i.ats, align 8, !tbaa !392
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.lm, %bb.ll
  %i.avn = getelementptr inbounds nuw i8, ptr %.010971611, i64 92
  %i.avo = load float, ptr %i.avn, align 4, !tbaa !672 ; 4 uses
  br i1 %.110811641, label %bb.mb, label %.loopexit

bb.mb:                                            ; preds = %bb.ma
  %i.avp = getelementptr inbounds nuw i8, ptr %.010971611, i64 8
  %i.avq = load ptr, ptr %i.avp, align 8, !tbaa !350 ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 4
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !365 ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avq, i64 8
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !366 ; 2 uses
  %i.avv = call noundef i32 @llvm.smin.i32(i32 %i.avs, i32 %i.avu) ; 2 uses
  %i.avw = call noundef i32 @llvm.smax.i32(i32 %i.avs, i32 %i.avu) ; 2 uses
  %i.avx = sext i32 %i.avw to i64
  %i.avy = getelementptr inbounds i8, ptr %.0105416811689, i64 %i.avx ; 5 uses
  %i.avz = select i1 %.110831639, float 1.000000e+00, float 6.000000e-01
  %i.awa = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 51, float noundef %i.avz) #36
  %i.awb = select i1 %i.s, float 0.000000e+00, float -1.000000e+00
  %i.awc = icmp slt i32 %i.avv, %i.avw
  br i1 %i.awc, label %.lr.ph1511, label %.loopexit

.lr.ph1511:                                       ; preds = %bb.mb
  %i.awd = select i1 %i.s, float 0.000000e+00, float 2.000000e+00
  %i.awe = sext i32 %i.avv to i64
  %i.awf = getelementptr inbounds i8, ptr %.0105416811689, i64 %i.awe
  %i.awg = load <2 x float>, ptr %19, align 8, !tbaa !193
  %i.awh = fadd <2 x float> %i.atp, %i.awg        ; 2 uses
  %i.awi = extractelement <2 x float> %i.awh, i64 0
  %i.awj = fsub float %i.awi, %i.avo
  %i.awk = insertelement <2 x float> %i.awh, float %i.awj, i64 0
  %i.awl = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.awm = getelementptr inbounds nuw i8, ptr %.21101, i64 712
  %i.awn = ptrtoint ptr %i.avy to i64
  %.pre1546 = load float, ptr %i.arp, align 8, !tbaa !208
  %i.awo = insertelement <2 x float> poison, float %i.awd, i64 1
  br label %bb.mc

bb.mc:                                            ; preds = %.lr.ph1511, %bb.mn
  %i.awp = phi float [ %.pre1546, %.lr.ph1511 ], [ %i.ayx, %bb.mn ] ; 4 uses
  %.014121509 = phi ptr [ %i.awf, %.lr.ph1511 ], [ %.11413, %bb.mn ] ; 3 uses
  %.sroa.01351.01508 = phi <2 x float> [ %i.awk, %.lr.ph1511 ], [ %.sroa.01351.4.vec.insert, %bb.mn ] ; 6 uses
  %.sroa.01351.4.vec.extract1357 = extractelement <2 x float> %.sroa.01351.01508, i64 1 ; 4 uses
  %i.awq = load float, ptr %i.amo, align 4, !tbaa !252
  %i.awr = fadd float %i.awq, %i.awp
  %i.aws = fcmp ogt float %.sroa.01351.4.vec.extract1357, %i.awr
  br i1 %i.aws, label %.loopexit, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.awt = load float, ptr %i.amm, align 4, !tbaa !293
  %i.awu = fcmp olt float %.sroa.01351.4.vec.extract1357, %i.awt
  br i1 %i.awu, label %bb.me, label %.lr.ph.i1304

bb.me:                                            ; preds = %bb.md
  %i.awv = ptrtoint ptr %.014121509 to i64
  %i.aww = sub i64 %i.awn, %i.awv
  %i.awx = call noundef ptr @memchr(ptr noundef %.014121509, i32 noundef 10, i64 noundef %i.aww) #35 ; 2 uses
  %.not1170 = icmp eq ptr %i.awx, null
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 1
  %i.awz = select i1 %.not1170, ptr %i.avy, ptr %i.awy
  br label %bb.mn

.lr.ph.i1304:                                     ; preds = %bb.md
  %.val1226 = load ptr, ptr %i.aro, align 8, !tbaa !295 ; 2 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %.val1226, i64 20
  %i.axb = load float, ptr %i.axa, align 4, !tbaa !409
  %i.axc = fdiv float %i.awp, %i.axb
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.mj, %.lr.ph.i1304
  %.03224.us.i = phi ptr [ %.1.us.i, %bb.mj ], [ %.014121509, %.lr.ph.i1304 ] ; 4 uses
  %.03323.us.i = phi float [ %.134.us.i, %bb.mj ], [ 0.000000e+00, %.lr.ph.i1304 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.axd = load i8, ptr %.03224.us.i, align 1, !tbaa !330 ; 2 uses
  %i.axe = sext i8 %i.axd to i32                  ; 2 uses
  store i32 %i.axe, ptr %i.a, align 4, !tbaa !211
  %i.axf = icmp sgt i8 %i.axd, -1
  br i1 %i.axf, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %.lr.ph.split.us.i
  %i.axg = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %.03224.us.i, ptr noundef nonnull %i.avy) #36
  %i.axh = sext i32 %i.axg to i64
  %i.axi = getelementptr inbounds i8, ptr %.03224.us.i, i64 %i.axh
  %.pr.us.i = load i32, ptr %i.a, align 4, !tbaa !211
  br label %bb.mh

bb.mg:                                            ; preds = %.lr.ph.split.us.i
  %i.axj = getelementptr inbounds nuw i8, ptr %.03224.us.i, i64 1
  br label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.axk = phi i32 [ %.pr.us.i, %bb.mf ], [ %i.axe, %bb.mg ] ; 2 uses
  %.1.us.i = phi ptr [ %i.axi, %bb.mf ], [ %i.axj, %bb.mg ] ; 3 uses
  switch i32 %i.axk, label %bb.mi [
    i32 10, label %.thread.split.us.i
    i32 13, label %bb.mj
  ], !llvm.loop !12

.thread.split.us.i:                               ; preds = %bb.mh
  %i.axl = fcmp ole float %.03323.us.i, 0.000000e+00
  %i.axm = select i1 %i.axl, float 0.000000e+00, float %.03323.us.i
  %.sroa.0.0.vec.insert.us.i = insertelement <2 x float> poison, float %i.axm, i64 0
  %i.axn = fadd float %i.awp, 0.000000e+00
  %.sroa.0.4.vec.insert.us.i = insertelement <2 x float> %.sroa.0.0.vec.insert.us.i, float %i.axn, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305

bb.mi:                                            ; preds = %bb.mh
  %i.axo = trunc i32 %i.axk to i16
  %i.axp = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %.val1226, i16 noundef zeroext %i.axo) #36
  %i.axq = call float @llvm.fmuladd.f32(float %i.axp, float %i.axc, float %.03323.us.i)
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %bb.mh
  %.134.us.i = phi float [ %i.axq, %bb.mi ], [ %.03323.us.i, %bb.mh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.axr = icmp ult ptr %.1.us.i, %i.avy
  br i1 %i.axr, label %.lr.ph.split.us.i, label %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305

_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305: ; preds = %bb.mj, %.thread.split.us.i
  %.sroa.0.2.i1293 = phi <2 x float> [ %.sroa.0.4.vec.insert.us.i, %.thread.split.us.i ], [ zeroinitializer, %bb.mj ] ; 2 uses
  %.235.i1294 = phi float [ 0.000000e+00, %.thread.split.us.i ], [ %.134.us.i, %bb.mj ] ; 2 uses
  %.sroa.0.0.vec.extract4.i1297 = extractelement <2 x float> %.sroa.0.2.i1293, i64 0
  %i.axs = fcmp olt float %.sroa.0.0.vec.extract4.i1297, %.235.i1294
  %i.axt = extractelement <2 x float> %.sroa.0.2.i1293, i64 0
  %.sroa.0173.0.vec.extract = select i1 %i.axs, float %.235.i1294, float %i.axt ; 2 uses
  %i.axu = fcmp ugt float %.sroa.0173.0.vec.extract, 0.000000e+00
  br i1 %i.axu, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305
  %i.axv = load ptr, ptr %i.aro, align 8, !tbaa !295
  %i.axw = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %i.axv, i16 noundef zeroext 32) #36
  %i.axx = fmul float %i.axw, 5.000000e-01
  %i.axy = fptosi float %i.axx to i32
  %i.axz = sitofp i32 %i.axy to float
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305
  %.sroa.0173.0.vec.extract176.pre-phi = phi float [ %i.axz, %bb.mk ], [ %.sroa.0173.0.vec.extract, %_ZL21InputTextCalcTextSizeP12ImGuiContextPKcS2_PS2_P6ImVec2b.exit1305 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.aya = load float, ptr %i.arp, align 8, !tbaa !208 ; 2 uses
  %i.ayb = fsub float %i.awb, %i.aya
  %.sroa.01351.0.vec.extract = extractelement <2 x float> %.sroa.01351.01508, i64 0 ; 2 uses
  %i.ayc = fadd float %.sroa.01351.0.vec.extract, 0.000000e+00
  %i.ayd = fadd float %.sroa.01351.4.vec.extract1357, %i.ayb ; 2 uses
  %i.aye = load float, ptr %18, align 16, !tbaa !292 ; 3 uses
  %i.ayf = load float, ptr %i.amm, align 4, !tbaa !293 ; 3 uses
  %.inv.i.i = fcmp oge float %.sroa.01351.0.vec.extract, %i.aye
  %..i.i = select i1 %.inv.i.i, float %i.ayc, float %i.aye ; 2 uses
  %.inv6.i.i = fcmp oge float %i.ayd, %i.ayf
  %i.ayg = select i1 %.inv6.i.i, float %i.ayd, float %i.ayf ; 2 uses
  %.sroa.0.0.vec.insert.i.i1310 = insertelement <2 x float> poison, float %..i.i, i64 0
  %.sroa.0.4.vec.insert.i.i1311 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i1310, float %i.ayg, i64 1
  %i.ayh = insertelement <2 x float> %i.awo, float %.sroa.0173.0.vec.extract176.pre-phi, i64 0
  %i.ayi = fadd <2 x float> %.sroa.01351.01508, %i.ayh ; 2 uses
  %i.ayj = load <2 x float>, ptr %i.amn, align 8, !tbaa !193 ; 4 uses
  %i.ayk = fcmp olt <2 x float> %i.ayi, %i.ayj
  %i.ayl = select <2 x i1> %i.ayk, <2 x float> %i.ayi, <2 x float> %i.ayj ; 3 uses
  %27 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i.i1311, <2 x float> %i.ayl, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %27, ptr %20, align 16, !tbaa !193
  %i.aym = extractelement <2 x float> %i.ayl, i64 1
  %i.ayn = fcmp olt float %i.ayf, %i.aym
  %i.ayo = extractelement <2 x float> %i.ayj, i64 1
  %i.ayp = fcmp ogt float %i.ayo, %i.ayg
  %or.cond1464 = select i1 %i.ayn, i1 %i.ayp, i1 false
  %i.ayq = extractelement <2 x float> %i.ayl, i64 0
  %i.ayr = fcmp olt float %i.aye, %i.ayq
  %or.cond1466 = select i1 %or.cond1464, i1 %i.ayr, i1 false
  %i.ays = extractelement <2 x float> %i.ayj, i64 0
  %i.ayt = fcmp ogt float %i.ays, %..i.i
  %or.cond1468 = select i1 %or.cond1466, i1 %i.ayt, i1 false
  br i1 %or.cond1468, label %bb.mm, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.mm:                                            ; preds = %bb.ml
  %i.ayu = load ptr, ptr %i.awm, align 8, !tbaa !205
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ayu, ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(8) %i.awl, i32 noundef %i.awa, float noundef 0.000000e+00, i32 noundef 0) #36
  %.pre1547.pre = load float, ptr %i.arp, align 8, !tbaa !208
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.ml, %bb.mm
  %.pre1547 = phi float [ %i.aya, %bb.ml ], [ %.pre1547.pre, %bb.mm ]
  %i.ayv = load float, ptr %19, align 8, !tbaa !197
  %i.ayw = fsub float %i.ayv, %i.avo
  %.sroa.01351.0.vec.insert = insertelement <2 x float> %.sroa.01351.01508, float %i.ayw, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %.pre1551 = extractelement <2 x float> %.sroa.01351.01508, i64 1
  br label %bb.mn

bb.mn:                                            ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread, %bb.me
  %.sroa.01351.4.vec.extract.pre-phi = phi float [ %.pre1551, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %.sroa.01351.4.vec.extract1357, %bb.me ]
  %i.ayx = phi float [ %.pre1547, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %i.awp, %bb.me ] ; 2 uses
  %.sroa.01351.1 = phi <2 x float> [ %.sroa.01351.0.vec.insert, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %.sroa.01351.01508, %bb.me ]
  %.11413 = phi ptr [ %.1.us.i, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ %i.awz, %bb.me ] ; 2 uses
  %i.ayy = fadd float %.sroa.01351.4.vec.extract.pre-phi, %i.ayx
  %.sroa.01351.4.vec.insert = insertelement <2 x float> %.sroa.01351.1, float %i.ayy, i64 1
  %i.ayz = icmp ult ptr %.11413, %i.avy
  br i1 %i.ayz, label %bb.mc, label %.loopexit, !llvm.loop !665

.loopexit:                                        ; preds = %bb.mc, %bb.mn, %bb.mb, %bb.ma
  br i1 %i.s, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %.loopexit
  %i.aza = ptrtoint ptr %.1 to i64
  %i.azb = ptrtoint ptr %.0105416811689 to i64
  %i.azc = sub i64 %i.aza, %i.azb
  %i.azd = icmp slt i64 %i.azc, 2097152
  br i1 %i.azd, label %bb.mp, label %bb.mq

bb.mp:                                            ; preds = %bb.mo, %.loopexit
  %. = phi ptr [ %18, %bb.mo ], [ null, %.loopexit ]
  %i.aze = zext i1 %.01071.in145016771692 to i32
  %i.azf = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.aze, float noundef 1.000000e+00) #36
  %i.azg = getelementptr inbounds nuw i8, ptr %.21101, i64 712
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !205
  %i.azi = getelementptr inbounds nuw i8, ptr %i.j, i64 4384
  %i.azj = load ptr, ptr %i.azi, align 8, !tbaa !374
  %i.azk = load float, ptr %i.arp, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  %i.azl = load float, ptr %19, align 8, !tbaa !197
  %i.azm = fsub float %i.azl, %i.avo
  %i.azn = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.azo = load float, ptr %i.azn, align 4, !tbaa !200
  %.sroa.0.0.vec.insert.i1312 = insertelement <2 x float> poison, float %i.azm, i64 0
  %.sroa.0.4.vec.insert.i1313 = insertelement <2 x float> %.sroa.0.0.vec.insert.i1312, float %i.azo, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i1313, ptr %21, align 8
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %i.azh, ptr noundef %i.azj, float noundef %i.azk, ptr noundef nonnull align 4 dereferenceable(8) %21, i32 noundef %i.azf, ptr noundef %.0105416811689, ptr noundef %.1, float noundef 0.000000e+00, ptr noundef %.) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mp, %bb.mo
  br i1 %.110831639, label %bb.mr, label %bb.nh

bb.mr:                                            ; preds = %bb.mq
  %i.azp = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.azq = load float, ptr %i.azp, align 8, !tbaa !700
  %i.azr = getelementptr inbounds nuw i8, ptr %.010971611, i64 100 ; 2 uses
  %i.azs = load float, ptr %i.azr, align 4, !tbaa !367
  %i.azt = fadd float %i.azq, %i.azs              ; 3 uses
  store float %i.azt, ptr %i.azr, align 4, !tbaa !367
  %i.azu = getelementptr inbounds nuw i8, ptr %i.j, i64 91
  %i.azv = load i8, ptr %i.azu, align 1, !tbaa !701, !range !187, !noundef !188
  %i.azw = trunc nuw i8 %i.azv to i1
  %i.azx = fcmp ugt float %i.azt, 0.000000e+00
  %or.cond1220 = select i1 %i.azw, i1 %i.azx, i1 false
  br i1 %or.cond1220, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.azy = call float @fmodf(float noundef %i.azt, float noundef 1.200000e+00) #36
  %i.azz = fcmp ole float %i.azy, 8.000000e-01
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mr
  %i.baa = phi i1 [ %i.azz, %bb.ms ], [ true, %bb.mr ]
  %i.bab = load float, ptr %19, align 8, !tbaa !197
  %i.bac = fadd float %.sroa.0191.0.vec.extract, %i.bab
  %i.bad = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.bae = load float, ptr %i.bad, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36
  %i.baf = load float, ptr %i.arp, align 8, !tbaa !208
  %i.bag = insertelement <2 x float> poison, float %i.bac, i64 0
  %i.bah = insertelement <2 x float> %i.bag, float %i.asm, i64 1 ; 2 uses
  %i.bai = insertelement <2 x float> poison, float %i.avo, i64 0
  %i.baj = insertelement <2 x float> %i.bai, float %i.bae, i64 1 ; 2 uses
  %i.bak = fsub <2 x float> %i.bah, %i.baj
  %i.bal = fadd <2 x float> %i.bah, %i.baj
  %i.bam = shufflevector <2 x float> %i.bak, <2 x float> %i.bal, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.ban = fptosi <4 x float> %i.bam to <4 x i32>
  %i.bao = sitofp <4 x i32> %i.ban to <4 x float> ; 4 uses
  %i.bap = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.baf, i64 1
  %i.baq = fsub <4 x float> %i.bao, %i.bap
  %i.bar = fadd <4 x float> %i.baq, <float -0.000000e+00, float 5.000000e-01, float 1.000000e+00, float -1.500000e+00> ; 2 uses
  store <4 x float> %i.bar, ptr %22, align 16, !tbaa !193
  br i1 %i.baa, label %bb.mu, label %.critedge

bb.mu:                                            ; preds = %bb.mt
  %i.bas = load <4 x float>, ptr %18, align 16, !tbaa !193 ; 2 uses
  %i.bat = shufflevector <4 x float> %i.bar, <4 x float> %i.bao, <4 x i32> <i32 2, i32 3, i32 4, i32 1> ; 2 uses
  %i.bau = fcmp ogt <4 x float> %i.bas, %i.bat
  %i.bav = fcmp olt <4 x float> %i.bas, %i.bat
  %i.baw = shufflevector <4 x i1> %i.bav, <4 x i1> %i.bau, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bax = freeze <4 x i1> %i.baw
  %i.bay = bitcast <4 x i1> %i.bax to i4
  %i.baz = icmp eq i4 %i.bay, -1
  br i1 %i.baz, label %bb.mv, label %.critedge

bb.mv:                                            ; preds = %bb.mu
  %i.bba = getelementptr inbounds nuw i8, ptr %.21101, i64 712
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #36
  %i.bbc = load <4 x float>, ptr %22, align 16
  %.sroa.0.4.vec.insert.i1322 = shufflevector <4 x float> %i.bbc, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i1322, ptr %23, align 8
  %i.bbd = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 33, float noundef 1.000000e+00) #36
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.bbb, ptr noundef nonnull align 4 dereferenceable(8) %22, ptr noundef nonnull align 4 dereferenceable(8) %23, i32 noundef %i.bbd, float noundef 1.000000e+00) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  br label %.critedge

.critedge:                                        ; preds = %bb.mu, %bb.mt, %bb.mv
  br i1 %i.cz, label %bb.my, label %bb.mw

bb.mw:                                            ; preds = %.critedge
  %i.bbe = load i32, ptr %i.df, align 4, !tbaa !220
  %i.bbf = icmp eq i32 %i.bbe, %i.t
  br i1 %i.bbf, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.j, i64 9776
  store i8 1, ptr %i.bbg, align 8, !tbaa !702
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.j, i64 9777
  store i8 1, ptr %i.bbh, align 1, !tbaa !703
  %i.bbi = extractelement <4 x float> %i.bao, i64 0
  %i.bbj = fadd float %i.bbi, -1.000000e+00
  %i.bbk = load float, ptr %i.arp, align 8, !tbaa !208 ; 2 uses
  %i.bbl = extractelement <4 x float> %i.bao, i64 1
  %i.bbm = fsub float %i.bbl, %i.bbk
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.j, i64 9780
  store float %i.bbj, ptr %i.bbn, align 4, !tbaa !193
  %.sroa_idx1332 = getelementptr inbounds nuw i8, ptr %i.j, i64 9784
  store float %i.bbm, ptr %.sroa_idx1332, align 8, !tbaa !193
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.j, i64 9788
  store float %i.bbk, ptr %i.bbo, align 4, !tbaa !704
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !705
  %i.bbr = load i32, ptr %i.bbq, align 8, !tbaa !707
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.j, i64 9792
  store i32 %i.bbr, ptr %i.bbs, align 8, !tbaa !708
  br label %bb.my

bb.my:                                            ; preds = %bb.mx, %bb.mw, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  br label %bb.nh

bb.mz:                                            ; preds = %.thread1668
  br i1 %i.s, label %.preheader1488.preheader, label %bb.nd

.thread1696:                                      ; preds = %.thread1665
  br i1 %i.s, label %.preheader1488.preheader, label %bb.na

.preheader1488.preheader:                         ; preds = %.thread1696, %bb.mz
  %.01071.in145016761707 = phi i1 [ false, %.thread1696 ], [ true, %bb.mz ]
  %.0105416831703 = phi ptr [ %.01054, %.thread1696 ], [ %1, %bb.mz ] ; 2 uses
  br label %.preheader1488

.preheader1488:                                   ; preds = %.preheader1488.preheader, %.preheader1488
  %.011.i = phi i32 [ %i.bbu, %.preheader1488 ], [ 0, %.preheader1488.preheader ]
  %.010.i = phi ptr [ %i.bbw, %.preheader1488 ], [ %.0105416831703, %.preheader1488.preheader ] ; 3 uses
  %i.bbt = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.010.i, i32 noundef 10) #35 ; 2 uses
  %i.bbu = add nuw nsw i32 %.011.i, 1             ; 2 uses
  %i.bbv = icmp eq ptr %i.bbt, null
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbt, i64 1
  br i1 %i.bbv, label %.critedge1222, label %.preheader1488

bb.na:                                            ; preds = %.thread1696
  %i.bbx = load i32, ptr %i.df, align 4, !tbaa !220
  %i.bby = icmp eq i32 %i.bbx, %i.t
  br i1 %i.bby, label %bb.nb, label %bb.nc

bb.nb:                                            ; preds = %bb.na
  %i.bbz = getelementptr inbounds nuw i8, ptr %.010971611, i64 24
  %i.bca = load i32, ptr %i.bbz, align 8, !tbaa !355
end_hunk_7
begin_hunk_8_@_ZN5ImGui12ColorPicker4EPKcPfiPKf:bb.a
.critedge.i512:                                   ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

bb.cv:                                            ; preds = %bb.cu
  %i.pv = load float, ptr %i.k, align 4, !tbaa !193
  %i.pw = fcmp oeq float %i.pv, 0.000000e+00
  br i1 %i.pw, label %._crit_edge.i514, label %bb.cw

._crit_edge.i514:                                 ; preds = %bb.cv
  %.phi.trans.insert.i515 = getelementptr inbounds nuw i8, ptr %i.pj, i64 9500
  %.pre.i516 = load float, ptr %.phi.trans.insert.i515, align 4, !tbaa !434
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.px = load float, ptr %i.j, align 4, !tbaa !193
  %i.py = fcmp oeq float %i.px, 0.000000e+00
  br i1 %i.py, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pj, i64 9500
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !434
  %i.qb = fcmp oeq float %i.qa, 1.000000e+00
  br i1 %i.qb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx, %._crit_edge.i514
  %i.qc = phi float [ %.pre.i516, %._crit_edge.i514 ], [ 1.000000e+00, %bb.cx ]
  store float %i.qc, ptr %i.j, align 4, !tbaa !193
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.qd = load float, ptr %i.l, align 4, !tbaa !193
  %i.qe = fcmp oeq float %i.qd, 0.000000e+00
  br i1 %i.qe, label %bb.da, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

bb.da:                                            ; preds = %bb.cz
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pj, i64 9504
  %i.qg = load float, ptr %i.qf, align 8, !tbaa !435
  store float %i.qg, ptr %i.k, align 4, !tbaa !193
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

bb.db:                                            ; preds = %bb.cs
  %i.qh = and i32 %.3, 268435456
  %.not452 = icmp eq i32 %i.qh, 0
  br i1 %.not452, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qi = load float, ptr %1, align 4, !tbaa !193 ; 2 uses
  store float %i.qi, ptr %i.j, align 4, !tbaa !193
  %i.qj = load float, ptr %i.dj, align 4, !tbaa !193 ; 2 uses
  store float %i.qj, ptr %i.k, align 4, !tbaa !193
  %i.qk = load float, ptr %i.dl, align 4, !tbaa !193 ; 2 uses
  store float %i.qk, ptr %i.l, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.qi, float noundef %i.qj, float noundef %i.qk, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o) #36
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517:       ; preds = %bb.da, %bb.cz, %.critedge.i512, %bb.cu, %bb.dc, %bb.db, %.thread
  %i.ql = getelementptr inbounds nuw i8, ptr %i.w, i64 3148 ; 4 uses
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !739 ; 4 uses
  %i.qn = fcmp olt float %i.qm, 0.000000e+00
  %i.qo = fcmp ogt float %i.qm, 1.000000e+00
  %i.qp = select i1 %i.qo, float 1.000000e+00, float %i.qm
  %i.qq = call float @llvm.fmuladd.f32(float %i.qp, float 2.550000e+02, float 5.000000e-01)
  %i.qr = select i1 %i.qn, float 5.000000e-01, float %i.qq
  %i.qs = fptosi float %i.qr to i32
  %i.qt = shl i32 %i.qs, 24                       ; 11 uses
  %i.qu = or disjoint i32 %i.qt, 16711680         ; 5 uses
  %i.qv = or disjoint i32 %i.qt, 16776960         ; 5 uses
  %i.qw = or disjoint i32 %i.qt, 16777215         ; 6 uses
  %i.qx = or disjoint i32 %i.qt, 8421504          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #36
  %i.qy = or disjoint i32 %i.qt, 255              ; 7 uses
  store i32 %i.qy, ptr %i.v, align 16, !tbaa !211
  %i.qz = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ra = or disjoint i32 %i.qt, 65280            ; 5 uses
  %i.rb = or disjoint i32 %i.qt, 65535            ; 5 uses
  store i32 %i.rb, ptr %i.qz, align 4, !tbaa !211
  %i.rc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.ra, ptr %i.rc, align 8, !tbaa !211
  %i.rd = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.qv, ptr %i.rd, align 4, !tbaa !211
  %i.re = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.qu, ptr %i.re, align 16, !tbaa !211
  %i.rf = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.rg = or disjoint i32 %i.qt, 16711935         ; 5 uses
  store i32 %i.rg, ptr %i.rf, align 4, !tbaa !211
  %i.rh = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.qy, ptr %i.rh, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  %i.ri = getelementptr inbounds nuw i8, ptr %29, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %29, align 8, !tbaa !193
  %i.rj = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.rj, align 8, !tbaa !294
  %i.rk = getelementptr inbounds nuw i8, ptr %29, i64 12
  store float %i.qm, ptr %i.rk, align 4, !tbaa !252
  %i.rl = load float, ptr %i.j, align 4, !tbaa !193
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.rl, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %29, ptr noundef nonnull align 4 dereferenceable(4) %i.ri, ptr noundef nonnull align 4 dereferenceable(4) %i.rj) #36
  %i.rm = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %29) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  %i.rn = load float, ptr %i.m, align 4, !tbaa !193
  %i.ro = load float, ptr %i.n, align 4, !tbaa !193
  %i.rp = load float, ptr %i.o, align 4, !tbaa !193
  %i.rq = load float, ptr %i.ql, align 4, !tbaa !739
  store float %i.rn, ptr %30, align 4, !tbaa !292
  %i.rr = getelementptr inbounds nuw i8, ptr %30, i64 4
  store float %i.ro, ptr %i.rr, align 4, !tbaa !293
  %i.rs = getelementptr inbounds nuw i8, ptr %30, i64 8
  store float %i.rp, ptr %i.rs, align 4, !tbaa !294
  %i.rt = getelementptr inbounds nuw i8, ptr %30, i64 12
  store float %i.rq, ptr %i.rt, align 4, !tbaa !252
  %i.ru = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %30) #36 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !193
  br i1 %.not439, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517
  %i.rv = fdiv float 5.000000e-01, %i.cj          ; 2 uses
  %i.rw = fptosi float %i.cj to i32
  %i.rx = sdiv i32 %i.rw, 12
  %i.ry = call noundef i32 @llvm.smax.i32(i32 %i.rx, i32 4)
  %i.rz = fneg float %i.rv
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.sb = fadd float %i.cj, %i.ck                 ; 2 uses
  %i.sc = fmul float %i.sb, 5.000000e-01
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.sf = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.sg = shufflevector <2 x float> %i.sf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sh = insertelement <2 x float> poison, float %i.rz, i64 0
  %i.si = insertelement <2 x float> %i.sh, float %i.rv, i64 1
  br label %bb.df

bb.de:                                            ; preds = %bb.df
  %i.sj = load float, ptr %i.j, align 4, !tbaa !193
  %i.sk = fmul float %i.sj, 2.000000e+00
  %i.sl = fmul float %i.sk, f0x40490FDB           ; 2 uses
  %i.sm = call float @cosf(float noundef %i.sl) #36 ; 4 uses
  %i.sn = call float @sinf(float noundef %i.sl) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  %i.so = load <2 x float>, ptr %16, align 8, !tbaa !193
  %i.sp = insertelement <2 x float> poison, float %i.sb, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = insertelement <2 x float> poison, float %i.sm, i64 0
  %i.ss = insertelement <2 x float> %i.sr, float %i.sn, i64 1
  %i.st = fmul <2 x float> %i.sq, %i.ss
  %i.su = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.st, <2 x float> splat (float 5.000000e-01), <2 x float> %i.so)
  store <2 x float> %i.su, ptr %32, align 8, !tbaa !193
  %.v = select i1 %i.mn, float 6.500000e-01, float 5.500000e-01
  %i.sv = fmul float %i.ci, %.v                   ; 4 uses
  %i.sw = call noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, float noundef %i.sv) #36 ; 3 uses
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.sv, i32 noundef %i.rm, i32 noundef %i.sw) #36
  %i.sx = fadd float %i.sv, 1.000000e+00
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.sx, i32 noundef %i.qx, i32 noundef %i.sw, float noundef 1.000000e+00) #36
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.sv, i32 noundef %i.qw, i32 noundef %i.sw, float noundef 1.000000e+00) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  %i.sy = fneg float %i.sn                        ; 2 uses
  %i.sz = load <2 x float>, ptr %17, align 8, !tbaa !193 ; 2 uses
  %i.ta = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tb = insertelement <2 x float> poison, float %i.sy, i64 0
  %i.tc = insertelement <2 x float> %i.tb, float %i.sm, i64 1
  %i.td = fmul <2 x float> %i.ta, %i.tc
  %i.te = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tf = insertelement <2 x float> poison, float %i.sm, i64 0
  %i.tg = insertelement <2 x float> %i.tf, float %i.sn, i64 1
  %i.th = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.te, <2 x float> %i.tg, <2 x float> %i.td)
  %i.ti = load <2 x float>, ptr %16, align 8, !tbaa !193 ; 3 uses
  %i.tj = fadd <2 x float> %i.ti, %i.th           ; 2 uses
  store <2 x float> %i.tj, ptr %33, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  %i.tk = load <2 x float>, ptr %18, align 8, !tbaa !193 ; 2 uses
  %i.tl = load <2 x float>, ptr %19, align 8, !tbaa !193 ; 2 uses
  %i.tm = shufflevector <2 x float> %i.tl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 1>
  %i.tn = insertelement <4 x float> %i.tm, float %i.sy, i64 0
  %i.to = insertelement <4 x float> %i.tn, float %i.sm, i64 2 ; 3 uses
  %i.tp = shufflevector <2 x float> %i.tk, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.tq = shufflevector <4 x float> %i.tp, <4 x float> %i.to, <4 x i32> <i32 1, i32 4, i32 1, i32 6>
  %i.tr = fmul <4 x float> %i.to, %i.tq
  %i.ts = shufflevector <2 x float> %i.tk, <2 x float> %i.tl, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.tt = shufflevector <4 x float> %i.to, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.tu = insertelement <2 x float> %i.tt, float %i.sn, i64 1
  %i.tv = shufflevector <2 x float> %i.tu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.tw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ts, <4 x float> %i.tv, <4 x float> %i.tr) ; 2 uses
  %i.tx = shufflevector <4 x float> %i.tw, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ty = fadd <2 x float> %i.ti, %i.tx           ; 2 uses
  store <2 x float> %i.ty, ptr %34, align 8
  %i.tz = shufflevector <4 x float> %i.tw, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.ua = fadd <2 x float> %i.ti, %i.tz           ; 2 uses
  store <2 x float> %i.ua, ptr %35, align 8
  %i.ub = call <2 x float> @_ZN5ImGui22GetFontTexUvWhitePixelEv() #36 ; 3 uses
  call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i32 noundef 3, i32 noundef 3) #36
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !740 ; 3 uses
  %i.ue = trunc i32 %i.ud to i16
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !741 ; 3 uses
  store i16 %i.ue, ptr %i.ug, align 2, !tbaa !221
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 2
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !742 ; 7 uses
  %41 = shufflevector <2 x float> %i.tj, <2 x float> %i.ub, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %41, ptr %i.uj, align 4, !tbaa !193
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  store i32 %i.rm, ptr %i.uk, align 4, !tbaa !744
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 20
  %42 = shufflevector <2 x float> %i.ty, <2 x float> %i.ub, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %42, ptr %i.ul, align 4, !tbaa !193
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 36
  store i32 %i.qt, ptr %i.um, align 4, !tbaa !744
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 40
  %i.uo = trunc i32 %i.ud to i16
  %i.up = insertelement <2 x i16> poison, i16 %i.uo, i64 0
  %i.uq = shufflevector <2 x i16> %i.up, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.ur = add <2 x i16> %i.uq, <i16 1, i16 2>
  store <2 x i16> %i.ur, ptr %i.uh, align 2, !tbaa !221
  %i.us = getelementptr inbounds nuw i8, ptr %i.ug, i64 6
  store ptr %i.us, ptr %i.uf, align 8, !tbaa !741
  %43 = shufflevector <2 x float> %i.ua, <2 x float> %i.ub, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %43, ptr %i.un, align 4, !tbaa !193
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uj, i64 56
  store i32 %i.qw, ptr %i.ut, align 4, !tbaa !744
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uj, i64 60
  store ptr %i.uu, ptr %i.ui, align 8, !tbaa !742
  %i.uv = add i32 %i.ud, 3
  store i32 %i.uv, ptr %i.uc, align 4, !tbaa !740
  call void @_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %33, ptr noundef nonnull align 4 dereferenceable(8) %34, ptr noundef nonnull align 4 dereferenceable(8) %35, i32 noundef %i.qx, float noundef 1.500000e+00) #36
  %i.uw = load float, ptr %i.k, align 4, !tbaa !193
  %i.ux = load float, ptr %i.l, align 4, !tbaa !193
  %i.uy = fsub float 1.000000e+00, %i.ux
  %i.uz = load <2 x float>, ptr %35, align 8, !tbaa !193 ; 2 uses
  %i.va = load <2 x float>, ptr %33, align 8, !tbaa !193
  %i.vb = fsub <2 x float> %i.va, %i.uz
  %i.vc = insertelement <2 x float> poison, float %i.uw, i64 0
  %i.vd = insertelement <2 x float> %i.vc, float %i.uy, i64 1 ; 3 uses
  %i.ve = fcmp olt <2 x float> %i.vd, zeroinitializer
  %i.vf = fcmp ogt <2 x float> %i.vd, splat (float 1.000000e+00)
  %i.vg = select <2 x i1> %i.vf, <2 x float> splat (float 1.000000e+00), <2 x float> %i.vd
  %i.vh = select <2 x i1> %i.ve, <2 x float> zeroinitializer, <2 x float> %i.vg ; 2 uses
  %i.vi = shufflevector <2 x float> %i.vh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vb, <2 x float> %i.vi, <2 x float> %i.uz) ; 2 uses
  %i.vk = load <2 x float>, ptr %34, align 8, !tbaa !193
  %i.vl = fsub <2 x float> %i.vk, %i.vj
  %i.vm = shufflevector <2 x float> %i.vh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.vn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vl, <2 x float> %i.vm, <2 x float> %i.vj)
  store <2 x float> %i.vn, ptr %31, align 8, !tbaa !193
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  br label %bb.di

bb.df:                                            ; preds = %bb.dd, %bb.df
  %i.vo = phi i32 [ %i.qy, %bb.dd ], [ %i.wp, %bb.df ]
  %indvars.iv = phi i64 [ 0, %bb.dd ], [ %indvars.iv.next, %bb.df ] ; 2 uses
  %i.vp = trunc nuw nsw i64 %indvars.iv to i32
  %i.vq = uitofp nneg i32 %i.vp to float
  %i.vr = insertelement <2 x float> poison, float %i.vq, i64 0
  %i.vs = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vt = fadd nnan <2 x float> %i.vs, <float -0.000000e+00, float 1.000000e+00>
  %i.vu = fdiv nnan <2 x float> %i.vt, splat (float 6.000000e+00)
  %i.vv = fmul nnan <2 x float> %i.vu, splat (float 2.000000e+00)
  %i.vw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vv, <2 x float> splat (float f0x40490FDB), <2 x float> %i.si) ; 2 uses
  %i.vx = load i32, ptr %i.sa, align 8, !tbaa !745
  %i.vy = extractelement <2 x float> %i.vw, i64 0 ; 3 uses
  %i.vz = extractelement <2 x float> %i.vw, i64 1 ; 3 uses
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %16, float noundef %i.sc, float noundef %i.vy, float noundef %i.vz, i32 noundef %i.ry) #36
  %i.wa = load ptr, ptr %i.se, align 8, !tbaa !437
  %i.wb = load i32, ptr %i.sd, align 8, !tbaa !438
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef %i.wa, i32 noundef %i.wb, i32 noundef %i.qw, i32 noundef 0, float noundef %i.ci) #36
  store i32 0, ptr %i.sd, align 8, !tbaa !438
  %i.wc = load i32, ptr %i.sa, align 8, !tbaa !745
  %i.wd = call float @cosf(float noundef %i.vy) #36
  %i.we = call float @sinf(float noundef %i.vy) #36
  %i.wf = call float @cosf(float noundef %i.vz) #36
  %i.wg = call float @sinf(float noundef %i.vz) #36
  %i.wh = load <2 x float>, ptr %16, align 8, !tbaa !193 ; 2 uses
  %i.wi = insertelement <2 x float> poison, float %i.wd, i64 0
  %i.wj = insertelement <2 x float> %i.wi, float %i.we, i64 1
  %i.wk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wj, <2 x float> %i.sg, <2 x float> %i.wh)
  %i.wl = insertelement <2 x float> poison, float %i.wf, i64 0
  %i.wm = insertelement <2 x float> %i.wl, float %i.wg, i64 1
  %i.wn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wm, <2 x float> %i.sg, <2 x float> %i.wh)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !211 ; 2 uses
  call void @_ZN5ImGui38ShadeVertsLinearColorGradientKeepAlphaEP10ImDrawListii6ImVec2S2_jj(ptr noundef nonnull %i.ae, i32 noundef %i.vx, i32 noundef %i.wc, <2 x float> %i.wk, <2 x float> %i.wn, i32 noundef %i.vo, i32 noundef %i.wp) #36
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.de, label %bb.df, !llvm.loop !738

bb.dg:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit517
  %i.wq = and i32 %.3, 33554432
  %.not453 = icmp eq i32 %i.wq, 0
  br i1 %.not453, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.wr = extractelement <2 x float> %i.cp, i64 1
  %i.ws = fadd float %i.cd, %i.wr
  %.sroa.0.0.vec.insert.i534 = insertelement <2 x float> poison, float %i.cr, i64 0
  %.sroa.0.4.vec.insert.i535 = insertelement <2 x float> %.sroa.0.0.vec.insert.i534, float %i.ws, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i535, ptr %36, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %36, i32 noundef %i.qw, i32 noundef %i.rm, i32 noundef %i.rm, i32 noundef %i.qw) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #36
  %i.wt = load <2 x float>, ptr %15, align 8, !tbaa !193
  %i.wu = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.wv = shufflevector <2 x float> %i.wu, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ww = fadd <2 x float> %i.wv, %i.wt
  store <2 x float> %i.ww, ptr %37, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef 0, i32 noundef 0, i32 noundef %i.qt, i32 noundef %i.qt) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #36
  %.sroa.032.0.copyload = load <2 x float>, ptr %15, align 8 ; 2 uses
  %i.wx = fadd <2 x float> %i.wv, %.sroa.032.0.copyload
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.032.0.copyload, <2 x float> %i.wx, float noundef 0.000000e+00) #36
  %i.wy = load float, ptr %i.k, align 4, !tbaa !193
  %i.wz = load float, ptr %i.l, align 4, !tbaa !193
  %i.xa = fsub float 1.000000e+00, %i.wz
  %i.xb = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.xc = load <2 x float>, ptr %15, align 8, !tbaa !193 ; 3 uses
  %i.xd = insertelement <2 x float> poison, float %i.wy, i64 0
  %i.xe = insertelement <2 x float> %i.xd, float %i.xa, i64 1 ; 3 uses
  %i.xf = fcmp olt <2 x float> %i.xe, zeroinitializer
  %i.xg = fcmp ogt <2 x float> %i.xe, splat (float 1.000000e+00)
  %i.xh = select <2 x i1> %i.xg, <2 x float> splat (float 1.000000e+00), <2 x float> %i.xe
  %i.xi = select <2 x i1> %i.xf, <2 x float> zeroinitializer, <2 x float> %i.xh
  %i.xj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xi, <2 x float> %i.wv, <2 x float> %i.xc)
  %i.xk = fadd <2 x float> %i.xj, splat (float 5.000000e-01)
  %i.xl = fptosi <2 x float> %i.xk to <2 x i32>
  %i.xm = sitofp <2 x i32> %i.xl to <2 x float>   ; 3 uses
  %i.xn = fadd <2 x float> %i.xc, splat (float 2.000000e+00) ; 2 uses
  %i.xo = fadd <2 x float> %i.wv, %i.xc
  %i.xp = fadd <2 x float> %i.xo, splat (float -2.000000e+00) ; 2 uses
  %i.xq = fcmp ogt <2 x float> %i.xn, %i.xm
  %i.xr = fcmp olt <2 x float> %i.xp, %i.xm
  %i.xs = select <2 x i1> %i.xr, <2 x float> %i.xp, <2 x float> %i.xm
  %i.xt = select <2 x i1> %i.xq, <2 x float> %i.xn, <2 x float> %i.xs
  store <2 x float> %i.xt, ptr %31, align 8, !tbaa !193
  %i.xu = fdiv float %i.cd, 6.000000e+00          ; 12 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %38, i64 4 ; 6 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.xx = call float @llvm.fmuladd.f32(float %i.xu, float 0.000000e+00, float %i.xb)
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.xx, ptr %i.xv, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.xy = fadd float %i.xu, %i.xb
  store float %i.ct, ptr %39, align 4, !tbaa !197
  store float %i.xy, ptr %i.xw, align 4, !tbaa !200
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.qy, i32 noundef %i.qy, i32 noundef %i.rb, i32 noundef %i.rb) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.xz = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.ya = fadd float %i.xu, %i.xz
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.ya, ptr %i.xv, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.yb = call float @llvm.fmuladd.f32(float %i.xu, float 2.000000e+00, float %i.xz)
  store float %i.ct, ptr %39, align 4, !tbaa !197
  store float %i.yb, ptr %i.xw, align 4, !tbaa !200
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rb, i32 noundef %i.rb, i32 noundef %i.ra, i32 noundef %i.ra) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.yc = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.yd = call float @llvm.fmuladd.f32(float %i.xu, float 2.000000e+00, float %i.yc)
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.yd, ptr %i.xv, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.ye = call float @llvm.fmuladd.f32(float %i.xu, float 3.000000e+00, float %i.yc)
  store float %i.ct, ptr %39, align 4, !tbaa !197
  store float %i.ye, ptr %i.xw, align 4, !tbaa !200
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.ra, i32 noundef %i.ra, i32 noundef %i.qv, i32 noundef %i.qv) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.yf = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.yg = call float @llvm.fmuladd.f32(float %i.xu, float 3.000000e+00, float %i.yf)
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.yg, ptr %i.xv, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.yh = call float @llvm.fmuladd.f32(float %i.xu, float 4.000000e+00, float %i.yf)
  store float %i.ct, ptr %39, align 4, !tbaa !197
  store float %i.yh, ptr %i.xw, align 4, !tbaa !200
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.qv, i32 noundef %i.qv, i32 noundef %i.qu, i32 noundef %i.qu) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.yi = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.yj = call float @llvm.fmuladd.f32(float %i.xu, float 4.000000e+00, float %i.yi)
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.yj, ptr %i.xv, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.yk = call float @llvm.fmuladd.f32(float %i.xu, float 5.000000e+00, float %i.yi)
  store float %i.ct, ptr %39, align 4, !tbaa !197
  store float %i.yk, ptr %i.xw, align 4, !tbaa !200
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.qu, i32 noundef %i.qu, i32 noundef %i.rg, i32 noundef %i.rg) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #36
  %i.yl = load float, ptr %i.cm, align 4, !tbaa !200 ; 2 uses
  %i.ym = call float @llvm.fmuladd.f32(float %i.xu, float 5.000000e+00, float %i.yl)
  store float %i.cs, ptr %38, align 4, !tbaa !197
  store float %i.ym, ptr %i.xv, align 4, !tbaa !200
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #36
  %i.yn = call float @llvm.fmuladd.f32(float %i.xu, float 6.000000e+00, float %i.yl)
  store float %i.ct, ptr %39, align 4, !tbaa !197
  store float %i.yn, ptr %i.xw, align 4, !tbaa !200
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rg, i32 noundef %i.rg, i32 noundef %i.qy, i32 noundef %i.qy) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #36
  %i.yo = load float, ptr %i.cm, align 4, !tbaa !200 ; 3 uses
  %i.yp = load float, ptr %i.j, align 4, !tbaa !193
  %i.yq = call float @llvm.fmuladd.f32(float %i.yp, float %i.cd, float %i.yo)
  %i.yr = fadd float %i.yq, 5.000000e-01
  %i.ys = fptosi float %i.yr to i32
  %i.yt = sitofp i32 %i.ys to float
  %.sroa.0561.0.vec.insert = insertelement <2 x float> poison, float %i.cs, i64 0
  %.sroa.0561.4.vec.insert = insertelement <2 x float> %.sroa.0561.0.vec.insert, float %i.yo, i64 1
end_hunk_8
begin_hunk_9_@_ZN5ImGui14BeginBoxSelectERK6ImRectP11ImGuiWindowji:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 10156
  %i.l = load i32, ptr %i.k, align 4, !tbaa !496
  %i.m = and i32 %i.l, 64
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.b, align 8, !tbaa !492
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.152, i32 noundef %i.n) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 9004
  store i8 1, ptr %i.o, align 4, !tbaa !497
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 9040
  store ptr %1, ptr %i.p, align 8, !tbaa !766
  store i8 0, ptr %i.f, align 1, !tbaa !495
  %i.q = load i32, ptr %i.b, align 8, !tbaa !492
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %i.q, ptr noundef %1) #36
  tail call void @_ZN5ImGui31SetActiveIdUsingAllKeyboardKeysEv() #36
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 9006
  %i.s = load i8, ptr %i.r, align 2, !tbaa !498, !range !187, !noundef !188
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 9009
  %i.v = load i16, ptr %i.u, align 1
  %i.w = and i16 %i.v, 12288
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %bb.h, label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.e, align 8, !tbaa !494
  br label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

bb.i:                                             ; preds = %bb.c
  %.pre = load i8, ptr %i.f, align 1, !tbaa !495, !range !187
  %i.y = trunc nuw i8 %.pre to i1
  br i1 %i.y, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.b, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 9004
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !497, !range !187, !noundef !188
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.j, label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

bb.j:                                             ; preds = %.thread, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !233, !range !187, !noundef !188
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 2 uses
  store i8 0, ptr %i.f, align 1, !tbaa !495
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 9004
  store i8 0, ptr %i.ag, align 4, !tbaa !497
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 5300
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !220 ; 2 uses
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !492
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.l, label %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 10156
  %i.am = load i32, ptr %i.al, align 4, !tbaa !496
  %i.an = and i32 %i.am, 64
  %.not.i63 = icmp eq i32 %i.an, 0
  br i1 %.not.i63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.153, i32 noundef %i.ai) #36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_ZN5ImGui13ClearActiveIDEv() #36
  br label %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit

_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit: ; preds = %bb.k, %bb.n
  store i32 0, ptr %i.b, align 8, !tbaa !492
  br label %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit

_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit: ; preds = %bb.h, %bb.g, %bb.f, %.thread, %bb.j, %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 9004
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !497, !range !187, !noundef !188
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.o, label %_ZN6ImRect3AddERKS_.exit

bb.o:                                             ; preds = %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 9012
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 9020
  %i.au = load <2 x float>, ptr %i.as, align 8, !tbaa !193 ; 2 uses
  %i.av = load <2 x float>, ptr %i.ar, align 4, !tbaa !193
  %i.aw = fadd <2 x float> %i.au, %i.av           ; 8 uses
  %i.ax = load <2 x float>, ptr %i.at, align 4, !tbaa !193
  %i.ay = fadd <2 x float> %i.au, %i.ax           ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ba = load <2 x float>, ptr %i.az, align 8, !tbaa !193 ; 4 uses
  %i.bb = and i32 %3, 2048
  %.not40 = icmp eq i32 %i.bb, 0
  br i1 %.not40, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load <2 x float>, ptr %0, align 4       ; 2 uses
  %i.be = load <2 x float>, ptr %i.bc, align 4    ; 2 uses
  %i.bf = fcmp olt <2 x float> %i.ba, %i.bd
  %i.bg = fcmp ogt <2 x float> %i.ba, %i.be
  %i.bh = select <2 x i1> %i.bg, <2 x float> %i.be, <2 x float> %i.ba
  %i.bi = select <2 x i1> %i.bf, <2 x float> %i.bd, <2 x float> %i.bh
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.0 = phi <2 x float> [ %i.ba, %bb.o ], [ %i.bi, %bb.p ] ; 4 uses
  %i.bj = fcmp olt <2 x float> %i.aw, %i.ay
  %i.bk = select <2 x i1> %i.bj, <2 x float> %i.aw, <2 x float> %i.ay ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 9068 ; 2 uses
  store <2 x float> %i.bk, ptr %i.bl, align 4, !tbaa !193
  %i.bm = fcmp oge <2 x float> %i.aw, %i.ay
  %i.bn = select <2 x i1> %i.bm, <2 x float> %i.aw, <2 x float> %i.ay ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 9076
  store <2 x float> %i.bn, ptr %i.bo, align 4, !tbaa !193
  %i.bp = fcmp olt <2 x float> %i.aw, %.sroa.0.0
  %i.bq = select <2 x i1> %i.bp, <2 x float> %i.aw, <2 x float> %.sroa.0.0 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 9084
  store <2 x float> %i.bq, ptr %i.br, align 4, !tbaa !193
  %i.bs = fcmp oge <2 x float> %i.aw, %.sroa.0.0
  %i.bt = select <2 x i1> %i.bs, <2 x float> %i.aw, <2 x float> %.sroa.0.0 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 9092
  store <2 x float> %i.bt, ptr %i.bu, align 4, !tbaa !193
  %i.bv = and i32 %3, 128
  %.not41 = icmp eq i32 %i.bv, 0
  br i1 %.not41, label %_ZN6ImRect3AddERKS_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = extractelement <2 x float> %i.bk, i64 0
  %i.bx = extractelement <2 x float> %i.bq, i64 0 ; 3 uses
  %i.by = fcmp une float %i.bw, %i.bx
  %i.bz = extractelement <2 x float> %i.bn, i64 0
  %i.ca = extractelement <2 x float> %i.bt, i64 0 ; 3 uses
  %i.cb = fcmp une float %i.bz, %i.ca
  %or.cond = select i1 %i.by, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.s, label %_ZN6ImRect3AddERKS_.exit

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.d, align 8, !tbaa !493
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 9052 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cc, ptr noundef nonnull align 4 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !238
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !239
  %i.ce = fcmp ogt float %i.cd, %i.bx
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store float %i.bx, ptr %i.cc, align 4, !tbaa !239
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 9056 ; 2 uses
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !198
  %i.ch = extractelement <2 x float> %i.bq, i64 1 ; 2 uses
  %i.ci = fcmp ogt float %i.cg, %i.ch
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store float %i.ch, ptr %i.cf, align 8, !tbaa !198
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 9060 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !240
  %i.cl = fcmp olt float %i.ck, %i.ca
  br i1 %i.cl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store float %i.ca, ptr %i.cj, align 4, !tbaa !240
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 9064 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !199
  %i.co = extractelement <2 x float> %i.bt, i64 1 ; 2 uses
  %i.cp = fcmp olt float %i.cn, %i.co
  br i1 %i.cp, label %bb.z, label %_ZN6ImRect3AddERKS_.exit

bb.z:                                             ; preds = %bb.y
  store float %i.co, ptr %i.cm, align 8, !tbaa !199
  br label %_ZN6ImRect3AddERKS_.exit

_ZN6ImRect3AddERKS_.exit:                         ; preds = %bb.r, %bb.q, %bb.y, %bb.z, %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.r ], [ true, %bb.q ]
  ret i1 %.0
}

declare void @_ZN5ImGui11KeepAliveIDEj(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui12EndBoxSelectERK6ImRecti(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImRect, align 16            ; 8 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9048
  store i8 0, ptr %i.d, align 8, !tbaa !493
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr i8, ptr %i.a, i64 228
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.i = load <2 x float>, ptr %i.e, align 8      ; 3 uses
  %i.j = load <2 x float>, ptr %0, align 4        ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4      ; 2 uses
  %i.l = fcmp olt <2 x float> %i.i, %i.j
  %i.m = fcmp ogt <2 x float> %i.i, %i.k
  %i.n = select <2 x i1> %i.m, <2 x float> %i.k, <2 x float> %i.i
  %i.o = select <2 x i1> %i.l, <2 x float> %i.j, <2 x float> %i.n
  %i.p = load <2 x float>, ptr %i.h, align 8, !tbaa !193
  %i.q = fsub <2 x float> %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 9020
  store <2 x float> %i.q, ptr %i.r, align 4, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !238
  %i.t = load <2 x float>, ptr %2, align 16, !tbaa !193 ; 2 uses
  %i.u = load <2 x float>, ptr %0, align 4, !tbaa !193 ; 2 uses
  %i.v = fcmp oge <2 x float> %i.t, %i.u
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %4 = load <2 x float>, ptr %3, align 8, !tbaa !193 ; 2 uses
  %5 = load <2 x float>, ptr %i.f, align 4, !tbaa !193 ; 2 uses
  %6 = fcmp olt <2 x float> %4, %5
  %7 = shufflevector <2 x i1> %i.v, <2 x i1> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <2 x float> %i.t, <2 x float> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %9 = shufflevector <2 x float> %i.u, <2 x float> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %10 = select <4 x i1> %7, <4 x float> %8, <4 x float> %9
  store <4 x float> %10, ptr %2, align 16, !tbaa !193
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !205
  %i.y = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 28, float noundef 3.000000e-01) #36
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.x, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef %i.y, float noundef 0.000000e+00, i32 noundef 0) #36
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !205
  %i.aa = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 54, float noundef 1.000000e+00) #36
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.z, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef %i.aa, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #36
  %i.ab = and i32 %1, 2304
  %i.ac = icmp eq i32 %i.ab, 2048
  br i1 %i.ac, label %bb.b, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.0.copyload = load float, ptr %0, align 4, !tbaa !193
  %.sroa.7.0.copyload = load float, ptr %i.ae, align 4, !tbaa !193
  %.sroa.11.0.copyload = load float, ptr %i.f, align 4, !tbaa !193
  %.sroa.15.0.copyload = load float, ptr %i.ad, align 4, !tbaa !193
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.ag = load float, ptr %i.af, align 8, !tbaa !208 ; 4 uses
  %i.ah = fadd float %.sroa.0.0.copyload, %i.ag   ; 3 uses
  %i.ai = fadd float %.sroa.7.0.copyload, %i.ag   ; 3 uses
  %i.aj = fsub float %.sroa.11.0.copyload, %i.ag  ; 3 uses
  %i.ak = fsub float %.sroa.15.0.copyload, %i.ag  ; 3 uses
  %i.al = load float, ptr %i.e, align 8, !tbaa !197 ; 2 uses
  %i.am = fcmp ult float %i.al, %i.ah
  br i1 %i.am, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = load float, ptr %i.g, align 4, !tbaa !200 ; 2 uses
  %i.ao = fcmp oge float %i.an, %i.ai
  %i.ap = fcmp olt float %i.al, %i.aj
  %or.cond.i = select i1 %i.ao, i1 %i.ap, i1 false
  %i.aq = fcmp olt float %i.an, %i.ak
  %or.cond = select i1 %or.cond.i, i1 %i.aq, i1 false
  br i1 %or.cond, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit.thread:       ; preds = %bb.b, %bb.c
  %i.ar = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 224
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4400 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 9028 ; 4 uses
  %i.ay = load float, ptr %i.as, align 4, !tbaa !193 ; 3 uses
  %i.az = fcmp ogt float %i.ay, %i.aj
  br i1 %i.az, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread
  %i.ba = fcmp olt float %i.ay, %i.ah
  br i1 %i.ba, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread
  %.pn.i = phi float [ %i.aj, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread ], [ %i.ah, %bb.d ]
  %i.bb = fsub float %i.ay, %.pn.i                ; 4 uses
  %i.bc = load float, ptr %i.at, align 8, !tbaa !193 ; 3 uses
  %i.bd = fcmp oeq float %i.bb, 0.000000e+00
  br i1 %i.bd, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = fcmp olt float %i.bb, 0.000000e+00      ; 2 uses
  %i.bf = fcmp olt float %i.bc, 0.000000e+00
  %or.cond.i26 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond.i26, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = fcmp ogt float %i.bb, 0.000000e+00
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = load float, ptr %i.au, align 8, !tbaa !193
  %i.bi = fcmp ult float %i.bc, %i.bh
  br i1 %i.bi, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bj = phi float [ 1.000000e+00, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.bk = load float, ptr %i.av, align 8, !tbaa !208 ; 4 uses
  %i.bl = fmul float %i.bk, 5.000000e+00
  %i.bm = call noundef float @llvm.fabs.f32(float %i.bb)
  %i.bn = fsub float %i.bm, %i.bk
  %i.bo = fsub float %i.bl, %i.bk
  %i.bp = fdiv float %i.bn, %i.bo                 ; 3 uses
  %i.bq = fcmp olt float %i.bp, 0.000000e+00
  %i.br = fcmp ogt float %i.bp, 1.000000e+00
  %i.bs = select i1 %i.br, float 1.000000e+00, float %i.bp
  %i.bt = call float @llvm.fmuladd.f32(float %i.bs, float 3.000000e+00, float 1.000000e+00)
  %i.bu = select i1 %i.bq, float 1.000000e+00, float %i.bt
  %i.bv = fmul float %i.bk, 3.500000e+01
  %i.bw = fmul float %i.bv, %i.bu
  %i.bx = select i1 %i.be, float -1.000000e+00, float %i.bj
  %i.by = fmul float %i.bx, %i.bw
  %i.bz = load float, ptr %i.aw, align 8, !tbaa !215
  %i.ca = fmul float %i.bz, %i.by
  %i.cb = load float, ptr %i.ax, align 4, !tbaa !193
  %i.cc = fadd float %i.cb, %i.ca                 ; 4 uses
  store float %i.cc, ptr %i.ax, align 4, !tbaa !193
  %i.cd = fcmp ult float %i.cc, 0.000000e+00
  %i.ce = fptosi float %i.cc to i32               ; 2 uses
  %i.cf = sitofp i32 %i.ce to float
  %i.cg = fcmp une float %i.cc, %i.cf
  %or.cond.not.i.i = and i1 %i.cd, %i.cg
  %i.ch = sext i1 %or.cond.not.i.i to i32
  %i.ci = add nsw i32 %i.ch, %i.ce                ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = sitofp i32 %i.ci to float               ; 2 uses
  %i.cl = fadd float %i.bc, %i.ck
  call void @_ZN5ImGui10SetScrollXEP11ImGuiWindowf(ptr noundef nonnull %i.c, float noundef %i.cl) #36
  %.pre.i = load float, ptr %i.ax, align 4, !tbaa !193
  %i.cm = fsub float %.pre.i, %i.ck
  store float %i.cm, ptr %i.ax, align 4, !tbaa !193
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ar, i64 228
  %i.co = load float, ptr %i.cn, align 4, !tbaa !193 ; 3 uses
  %i.cp = fcmp ogt float %i.co, %i.ak
  br i1 %i.cp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.cq = fcmp olt float %i.co, %i.ai
  br i1 %i.cq, label %bb.l, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit

bb.l:                                             ; preds = %bb.k, %.thread.i
  %.pn.1.i = phi float [ %i.ak, %.thread.i ], [ %i.ai, %bb.k ]
  %i.cr = fsub float %i.co, %.pn.1.i              ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !193 ; 3 uses
  %i.cu = fcmp oeq float %i.cr, 0.000000e+00
  br i1 %i.cu, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = fcmp olt float %i.cr, 0.000000e+00      ; 2 uses
  %i.cw = fcmp olt float %i.ct, 0.000000e+00
  %or.cond.1.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond.1.i, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = fcmp ogt float %i.cr, 0.000000e+00
  br i1 %i.cx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !193
  %i.da = fcmp ult float %i.ct, %i.cz
  br i1 %i.da, label %bb.p, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.db = phi float [ 1.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.dc = load float, ptr %i.av, align 8, !tbaa !208 ; 4 uses
  %i.dd = fmul float %i.dc, 5.000000e+00
  %i.de = call noundef float @llvm.fabs.f32(float %i.cr)
  %i.df = fsub float %i.de, %i.dc
  %i.dg = fsub float %i.dd, %i.dc
  %i.dh = fdiv float %i.df, %i.dg                 ; 3 uses
  %i.di = fcmp olt float %i.dh, 0.000000e+00
  %i.dj = fcmp ogt float %i.dh, 1.000000e+00
  %i.dk = select i1 %i.dj, float 1.000000e+00, float %i.dh
  %i.dl = call float @llvm.fmuladd.f32(float %i.dk, float 3.000000e+00, float 1.000000e+00)
  %i.dm = select i1 %i.di, float 1.000000e+00, float %i.dl
  %i.dn = fmul float %i.dc, 3.500000e+01
  %i.do = fmul float %i.dn, %i.dm
  %i.dp = select i1 %i.cv, float -1.000000e+00, float %i.db
  %i.dq = fmul float %i.dp, %i.do
  %i.dr = load float, ptr %i.aw, align 8, !tbaa !215
  %i.ds = fmul float %i.dr, %i.dq
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 9032 ; 4 uses
  %i.du = load float, ptr %i.dt, align 8, !tbaa !193
  %i.dv = fadd float %i.du, %i.ds                 ; 4 uses
  store float %i.dv, ptr %i.dt, align 8, !tbaa !193
  %i.dw = fcmp ult float %i.dv, 0.000000e+00
  %i.dx = fptosi float %i.dv to i32               ; 2 uses
  %i.dy = sitofp i32 %i.dx to float
  %i.dz = fcmp une float %i.dv, %i.dy
  %or.cond.not.i.1.i = and i1 %i.dw, %i.dz
  %i.ea = sext i1 %or.cond.not.i.1.i to i32
  %i.eb = add nsw i32 %i.ea, %i.dx                ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ed = sitofp i32 %i.eb to float               ; 2 uses
  %i.ee = fadd float %i.ct, %i.ed
  call void @_ZN5ImGui10SetScrollYEP11ImGuiWindowf(ptr noundef nonnull %i.c, float noundef %i.ee) #36
  %.pre53.i = load float, ptr %i.dt, align 8, !tbaa !193
  %i.ef = fsub float %.pre53.i, %i.ed
  store float %i.ef, ptr %i.dt, align 8, !tbaa !193
  br label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit

_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit: ; preds = %bb.c, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImRect, align 16            ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 26 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9112 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !499  ; 4 uses
  %i.f = add nsw i32 %i.e, 1                      ; 5 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !499
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9120 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !768  ; 2 uses
  %.not = icmp slt i32 %i.e, %i.h
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9124 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !769  ; 4 uses
  %.not146 = icmp slt i32 %i.e, %i.j
  br i1 %.not146, label %_ZN8ImVectorI24ImGuiMultiSelectTempDataE7reserveEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI24ImGuiMultiSelectTempDataE14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sdiv i32 %i.j, 2
  %i.l = add nsw i32 %i.k, %i.j
  br label %_ZNK8ImVectorI24ImGuiMultiSelectTempDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI24ImGuiMultiSelectTempDataE14_grow_capacityEi.exit.i: ; preds = %bb.d, %bb.c
  %i.m = phi i32 [ %i.l, %bb.d ], [ 8, %bb.c ]
  %i.n = tail call noundef i32 @llvm.smax.i32(i32 %i.m, i32 %i.f) ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, 96
  %i.q = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.p) #36 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 9128 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !500  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.s, null
  br i1 %.not6.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8ImVectorI24ImGuiMultiSelectTempDataE14_grow_capacityEi.exit.i
  %i.t = load i32, ptr %i.g, align 8, !tbaa !770
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.u, 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.q, ptr nonnull align 8 %i.s, i64 %i.v, i1 false)
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !500
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.w) #36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI24ImGuiMultiSelectTempDataE14_grow_capacityEi.exit.i
  store ptr %i.q, ptr %i.r, align 8, !tbaa !500
  store i32 %i.n, ptr %i.i, align 4, !tbaa !769
  %.pre = load i32, ptr %i.g, align 8, !tbaa !770
  br label %_ZN8ImVectorI24ImGuiMultiSelectTempDataE7reserveEi.exit.i

_ZN8ImVectorI24ImGuiMultiSelectTempDataE7reserveEi.exit.i: ; preds = %bb.f, %bb.b
  %i.x = phi i32 [ %.pre, %bb.f ], [ %i.h, %bb.b ] ; 2 uses
  %.not147 = icmp slt i32 %i.e, %i.x
  br i1 %.not147, label %_ZN24ImGuiMultiSelectTempDataD2Ev.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8ImVectorI24ImGuiMultiSelectTempDataE7reserveEi.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 9128 ; 3 uses
  %i.z = sext i32 %i.x to i64                     ; 5 uses
  %wide.trip.count.i = sext i32 %i.f to i64       ; 3 uses
  %i.aa = sub nsw i64 %wide.trip.count.i, %i.z
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !500
  %i.ac = getelementptr inbounds [96 x i8], ptr %i.ab, i64 %i.z ; 5 uses
  %.sroa.5.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.prol, i8 -1, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i8 0, ptr %.sroa.6.0..sroa_idx.prol, align 8
  %.sroa.7.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.ac, i64 33
  store i8 0, ptr %.sroa.7.0..sroa_idx.prol, align 1
  %i.ad = getelementptr i8, ptr %i.ac, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, i8 0, i64 56, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %i.z, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.z, %.preheader.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ae = add nsw i64 %wide.trip.count.i, -1
  %i.af = icmp eq i64 %i.ae, %i.z
  br i1 %i.af, label %_ZN24ImGuiMultiSelectTempDataD2Ev.exit, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.prol.loopexit, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !500
  %i.ah = getelementptr inbounds [96 x i8], ptr %i.ag, i64 %indvars.iv.i ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 -1, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 33
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.ai = getelementptr i8, ptr %i.ah, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i8 0, i64 56, i1 false)
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !500
  %i.ak = getelementptr [96 x i8], ptr %i.aj, i64 %indvars.iv.i ; 5 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 96
  %.sroa.5.0..sroa_idx.1 = getelementptr i8, ptr %i.ak, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.1, i8 -1, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.1 = getelementptr i8, ptr %i.ak, i64 128
  store i8 0, ptr %.sroa.6.0..sroa_idx.1, align 8
  %.sroa.7.0..sroa_idx.1 = getelementptr i8, ptr %i.ak, i64 129
  store i8 0, ptr %.sroa.7.0..sroa_idx.1, align 1
  %i.am = getelementptr i8, ptr %i.ak, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZN24ImGuiMultiSelectTempDataD2Ev.exit, label %.preheader.i.new, !llvm.loop !767

_ZN24ImGuiMultiSelectTempDataD2Ev.exit:           ; preds = %.prol.loopexit, %.preheader.i.new, %_ZN8ImVectorI24ImGuiMultiSelectTempDataE7reserveEi.exit.i
  store i32 %i.f, ptr %i.g, align 8, !tbaa !770
  %.pre149 = load i32, ptr %i.d, align 8, !tbaa !499
  br label %bb.g

bb.g:                                             ; preds = %_ZN24ImGuiMultiSelectTempDataD2Ev.exit, %bb.a
  %i.an = phi i32 [ %.pre149, %_ZN24ImGuiMultiSelectTempDataD2Ev.exit ], [ %i.f, %bb.a ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 9128
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !500
  %i.aq = sext i32 %i.an to i64
  %i.ar = getelementptr [96 x i8], ptr %i.ap, i64 %i.aq ; 20 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -96    ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 9104
  store ptr %i.as, ptr %i.at, align 8, !tbaa !255
  %i.au = and i32 %0, 6144
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = or disjoint i32 %0, 2048
  %spec.select = select i1 %i.av, i32 %i.aw, i32 %0 ; 3 uses
  %i.ax = and i32 %spec.select, 1
  %.not116 = icmp eq i32 %i.ax, 0
  %i.ay = and i32 %spec.select, -193
  %.1112 = select i1 %.not116, i32 %spec.select, i32 %i.ay ; 3 uses
  %i.az = and i32 %.1112, 128
  %.not117 = icmp eq i32 %i.az, 0
  %i.ba = and i32 %.1112, -65
  %.2113 = select i1 %.not117, i32 %.1112, i32 %i.ba ; 9 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8816
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !324 ; 3 uses
  %.not118 = icmp eq ptr %i.bc, null
  br i1 %.not118, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 116
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !472
  %.not119 = icmp eq i32 %i.be, -1
  br i1 %.not119, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5ImGui12TableEndCellEP10ImGuiTable(ptr noundef nonnull %i.bc) #36
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !429
  %i.bi = load i32, ptr %i.bf, align 8, !tbaa !430
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [4 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !211 ; 5 uses
  %i.bn = getelementptr i8, ptr %i.ar, i64 -92    ; 4 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !275
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.k, label %_ZN24ImGuiMultiSelectTempData5ClearEv.exit

bb.k:                                             ; preds = %bb.j
  %i.bq = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) #36 ; 2 uses
  %i.br = getelementptr i8, ptr %i.ar, i64 -88    ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !276 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not6.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i32, ptr %i.as, align 8, !tbaa !277
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul nsw i64 %i.bu, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bq, ptr nonnull align 8 %i.bs, i64 %i.bv, i1 false)
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !276
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bw) #36
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !276
  store i32 0, ptr %i.bn, align 4, !tbaa !275
  br label %_ZN24ImGuiMultiSelectTempData5ClearEv.exit

_ZN24ImGuiMultiSelectTempData5ClearEv.exit:       ; preds = %bb.j, %bb.m
  store i32 0, ptr %i.as, align 8, !tbaa !277
  %i.bx = getelementptr i8, ptr %i.ar, i64 -80    ; 2 uses
  %i.by = getelementptr i8, ptr %i.ar, i64 -63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 -1, i64 16, i1 false)
  store i8 0, ptr %i.by, align 1, !tbaa !501
  %i.bz = getelementptr i8, ptr %i.ar, i64 -64    ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5ImGui16BeginMultiSelectEiii:bb.a
  store i8 %i.ch, ptr %i.cg, align 2, !tbaa !260
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ar, i64 -32
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !193
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !193
  %i.cm = load i64, ptr %i.ci, align 8, !tbaa !193 ; 2 uses
  store i64 %i.cm, ptr %i.cj, align 8, !tbaa !193
  %i.cn = getelementptr i8, ptr %i.ar, i64 -40    ; 2 uses
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !193
  tail call void @_ZN5ImGui14PushFocusScopeEj(i32 noundef %i.bm) #36
  %i.co = and i32 %.2113, 2048
  %.not120 = icmp eq i32 %i.co, 0
  br i1 %.not120, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN24ImGuiMultiSelectTempData5ClearEv.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 372 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 4, !tbaa !772
  %i.cr = or i16 %i.cq, 1
  store i16 %i.cr, ptr %i.cp, align 4, !tbaa !772
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN24ImGuiMultiSelectTempData5ClearEv.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 8524 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !266
  %.not121 = icmp eq i32 %i.ct, 0
  br i1 %.not121, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 8536
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !773, !range !187, !noundef !188
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8532
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !774
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !503
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.r
  %i.db = phi i32 [ %i.da, %bb.r ], [ %i.cy, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ar, i64 -12    ; 3 uses
  %i.dd = and i32 %.2113, 4
  %.not122 = icmp eq i32 %i.dd, 0
  %i.de = and i32 %i.db, -8193
  %spec.select131 = select i1 %.not122, i32 %i.db, i32 %i.de
  store i32 %spec.select131, ptr %i.dc, align 4, !tbaa !271
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 9136
  %i.dg = tail call noundef ptr @_ZN6ImPoolI21ImGuiMultiSelectStateE13GetOrAddByKeyEj(ptr noundef nonnull align 8 dereferenceable(40) %i.df, i32 noundef %i.bm) ; 7 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 %i.bm, ptr %i.dh, align 8, !tbaa !504
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 5000
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !486
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !505
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  store i32 %1, ptr %i.dl, align 8, !tbaa !281
  store ptr %i.c, ptr %i.dg, align 8, !tbaa !506
  store ptr %i.dg, ptr %i.ca, align 8, !tbaa !261
  %i.dm = load i32, ptr %i.bn, align 4, !tbaa !275
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %bb.t, label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit

bb.t:                                             ; preds = %bb.s
  %i.do = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) #36 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.ar, i64 -88    ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !276 ; 2 uses
  %.not6.i.i142 = icmp eq ptr %i.dq, null
  br i1 %.not6.i.i142, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dr = load i32, ptr %i.as, align 8, !tbaa !277
  %i.ds = sext i32 %i.dr to i64
  %i.dt = mul nsw i64 %i.ds, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.do, ptr nonnull align 8 %i.dq, i64 %i.dt, i1 false)
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !276
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.du) #36
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !276
  store i32 0, ptr %i.bn, align 4, !tbaa !275
  br label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit

_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit: ; preds = %bb.s, %bb.v
  store i32 0, ptr %i.as, align 8, !tbaa !277
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dw = load <2 x i64>, ptr %i.dv, align 8, !tbaa !248
  store <2 x i64> %i.dw, ptr %i.bx, align 8, !tbaa !248
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 21
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !285
  %i.dz = icmp eq i8 %i.dy, 1
  %i.ea = zext i1 %i.dz to i8
  store i8 %i.ea, ptr %i.bz, align 8, !tbaa !771
  %i.eb = getelementptr i8, ptr %i.ar, i64 -60
  store i32 %2, ptr %i.eb, align 4, !tbaa !775
  %i.ec = load i32, ptr %i.cs, align 4, !tbaa !266
  %.not123 = icmp eq i32 %i.ec, 0
  %.pre150 = load i32, ptr %i.cb, align 8, !tbaa !502 ; 2 uses
  br i1 %.not123, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 8528
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !325
  %i.ef = icmp eq i32 %i.ee, %.pre150
  br i1 %i.ef, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 8537
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !776, !range !187, !noundef !188
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ej = load i32, ptr %i.dc, align 4, !tbaa !271 ; 2 uses
  %i.ek = and i32 %i.ej, 8192
  %.not124 = icmp eq i32 %i.ek, 0
  br i1 %.not124, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.el = getelementptr i8, ptr %i.ar, i64 -5
  store i8 1, ptr %i.el, align 1, !tbaa !264
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.em = and i32 %i.ej, 12288
  %i.en = icmp eq i32 %i.em, 0
  %i.eo = and i32 %.2113, 24
  %i.ep = icmp eq i32 %i.eo, 0
  %or.cond133 = select i1 %i.en, i1 %i.ep, i1 false
  br label %bb.ad

bb.ab:                                            ; preds = %bb.x, %bb.w, %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 8520
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !777
  %i.es = icmp eq i32 %i.er, %.pre150
  br i1 %i.es, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.et = load i32, ptr %i.dc, align 4, !tbaa !271
  %i.eu = and i32 %i.et, 12288
  %i.ev = icmp eq i32 %i.eu, 0
  %i.ew = and i32 %.2113, 24
  %i.ex = icmp eq i32 %i.ew, 0
  %or.cond135 = select i1 %i.ev, i1 %i.ex, i1 false
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa, %bb.ab
  %.0110.shrunk = phi i1 [ %or.cond133, %bb.aa ], [ false, %bb.ab ], [ %or.cond135, %bb.ac ]
  %.0110 = zext i1 %.0110.shrunk to i8            ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 9000 ; 3 uses
  %i.ez = and i32 %.2113, 192
  %.not125 = icmp eq i32 %i.ez, 0
  br i1 %.not125, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fa = tail call noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef nonnull @.str.103) #36 ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ar, i64 -16
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.fc = load i32, ptr %i.cc, align 4, !tbaa !272
  %i.fd = and i32 %i.fc, 4096
  %.not.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fe = load <2 x float>, ptr %i.cj, align 8, !tbaa !193 ; 2 uses
  %i.ff = load <2 x float>, ptr %i.cn, align 8, !tbaa !193 ; 3 uses
  %i.fg = fcmp oge <2 x float> %i.fe, %i.ff
  %i.fh = select <2 x i1> %i.fg, <2 x float> %i.fe, <2 x float> %i.ff
  br label %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fi = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 560
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8816
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !324 ; 3 uses
  %.not9.i = icmp eq ptr %i.fl, null              ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 352
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 360
  %.sroa.024.0.in.i = select i1 %.not9.i, ptr %i.fj, ptr %i.fm
  %.sroa.7.0.in.i = select i1 %.not9.i, ptr %.sroa.7.0..sroa_idx.i, ptr %.sroa.7.0..sroa_idx28.i
  %.sroa.7.0.i = load <2 x float>, ptr %.sroa.7.0.in.i, align 8, !tbaa !193 ; 3 uses
  %.sroa.024.0.i = load <2 x float>, ptr %.sroa.024.0.in.i, align 8, !tbaa !193
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.fo = load <2 x float>, ptr %i.fn, align 8, !tbaa !193
  %i.fp = fadd <2 x float> %.sroa.024.0.i, %i.fo  ; 2 uses
  %i.fq = fcmp olt <2 x float> %i.fp, %.sroa.7.0.i
  %i.fr = select <2 x i1> %i.fq, <2 x float> %i.fp, <2 x float> %.sroa.7.0.i
  br label %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit

_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit: ; preds = %bb.af, %bb.ag
  %.sroa.024.1.i = phi <2 x float> [ %i.fr, %bb.ag ], [ %i.ff, %bb.af ]
  %.sroa.7.1.i = phi <2 x float> [ %.sroa.7.0.i, %bb.ag ], [ %i.fh, %bb.af ]
  %4 = shufflevector <2 x float> %.sroa.024.1.i, <2 x float> %.sroa.7.1.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %3, align 16
  %i.fs = call noundef zeroext i1 @_ZN5ImGui14BeginBoxSelectERK6ImRectP11ImGuiWindowji(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull %i.c, i32 noundef %i.fa, i32 noundef %.2113)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br i1 %i.fs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 9008
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !494, !range !187, !noundef !188
  %i.fv = or i8 %i.fu, %.0110
  br label %bb.ai

bb.ai:                                            ; preds = %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit, %bb.ah, %bb.ad
  %.1 = phi i8 [ %i.fv, %bb.ah ], [ %.0110, %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit ], [ %.0110, %bb.ad ] ; 4 uses
  %i.fw = load i8, ptr %i.cg, align 2, !tbaa !260, !range !187, !noundef !188
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.aj, label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %i.fy = and i32 %.2113, 512
  %.not126 = icmp eq i32 %i.fy, 0
  br i1 %.not126, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not127 = icmp eq i32 %1, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 9004
  %i.ga = load i8, ptr %i.fz, align 4, !tbaa !497, !range !187
  %i.gb = trunc nuw i8 %i.ga to i1                ; 2 uses
  br i1 %.not127, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  br i1 %i.gb, label %.thread, label %bb.au

.thread:                                          ; preds = %bb.al
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 9004
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 9004 ; 2 uses
  br i1 %i.gb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread, %bb.am
  %i.ge = phi ptr [ %i.gc, %.thread ], [ %i.gd, %bb.am ]
  %i.gf = load i32, ptr %i.ey, align 8, !tbaa !492
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.gg = phi ptr [ %i.ge, %bb.an ], [ %i.gd, %bb.am ] ; 2 uses
  %i.gh = phi i32 [ %i.gf, %bb.an ], [ 0, %bb.am ]
  %i.gi = tail call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 526, i32 noundef 0, i32 noundef %i.gh) #36
  br i1 %i.gi, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.gj = load i8, ptr %i.gg, align 4, !tbaa !497, !range !187, !noundef !188
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.gl = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 9005
  store i8 0, ptr %i.gm, align 1, !tbaa !495
  store i8 0, ptr %i.gg, align 4, !tbaa !497
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 5300
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !220 ; 2 uses
  %i.gp = load i32, ptr %i.ey, align 8, !tbaa !492
  %i.gq = icmp eq i32 %i.go, %i.gp
  br i1 %i.gq, label %bb.ar, label %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 10156
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !496
  %i.gt = and i32 %i.gs, 64
  %.not.i143 = icmp eq i32 %i.gt, 0
  br i1 %.not.i143, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.153, i32 noundef %i.go) #36
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  tail call void @_ZN5ImGui13ClearActiveIDEv() #36
  br label %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit

_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit: ; preds = %bb.aq, %bb.at
  store i32 0, ptr %i.ey, align 8, !tbaa !492
  br label %bb.au

bb.au:                                            ; preds = %bb.al, %bb.ap, %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit, %bb.ao, %bb.aj
  %.2 = phi i8 [ 1, %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit ], [ 1, %bb.ap ], [ %.1, %bb.ao ], [ %.1, %bb.al ], [ %.1, %bb.aj ] ; 2 uses
  %i.gu = and i32 %.2113, 3
  %or.cond136 = icmp eq i32 %i.gu, 0
  br i1 %or.cond136, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gv = tail call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 4642, i32 noundef 0) #36
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.ai
  %.3 = phi i8 [ %.2, %bb.au ], [ %.1, %bb.ai ], [ %.2, %bb.av ] ; 2 uses
  %.0 = phi i1 [ false, %bb.au ], [ false, %bb.ai ], [ %i.gv, %bb.av ] ; 4 uses
  %i.gw = trunc nuw i8 %.3 to i1
  %or.cond = or i1 %.0, %i.gw
  br i1 %or.cond, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZN5ImGui20MultiSelectAddSetAllEP24ImGuiMultiSelectTempDatab(ptr noundef nonnull %i.as, i1 noundef zeroext %.0)
  br i1 %.0, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.dl, align 8, !tbaa !281
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw
  %i.gx = or i8 %.3, -2
  %.neg = add nsw i8 %i.gx, 1
  %i.gy = select i1 %.0, i8 1, i8 %.neg
  %i.gz = getelementptr i8, ptr %i.ar, i64 -8
  store i8 %i.gy, ptr %i.gz, align 8, !tbaa !263
  %i.ha = getelementptr i8, ptr %i.ar, i64 -24
  store i64 -1, ptr %i.ha, align 8, !tbaa !287
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !496
  %i.hd = and i32 %i.hc, 64
  %.not130 = icmp eq i32 %i.hd, 0
  br i1 %.not130, label %_ZL27DebugLogMultiSelectRequestsPKcPK18ImGuiMultiSelectIO.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val = load i32, ptr %i.as, align 8, !tbaa !277 ; 2 uses
  %i.he = getelementptr i8, ptr %i.ar, i64 -88
  %.val140 = load ptr, ptr %i.he, align 8, !tbaa !276 ; 2 uses
  %i.hf = sext i32 %.val to i64
  %.idx.i = mul nsw i64 %i.hf, 24
  %i.hg = getelementptr inbounds i8, ptr %.val140, i64 %.idx.i
  %.not1.i = icmp eq i32 %.val, 0
  br i1 %.not1.i, label %_ZL27DebugLogMultiSelectRequestsPKcPK18ImGuiMultiSelectIO.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ba
  %i.hh = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 10156 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %thread-pre-split.thread.i, %.lr.ph.i
  %.02.i = phi ptr [ %.val140, %.lr.ph.i ], [ %i.ig, %thread-pre-split.thread.i ] ; 8 uses
  %i.hj = load i32, ptr %.02.i, align 8, !tbaa !509 ; 2 uses
  %i.hk = icmp eq i32 %i.hj, 1
  br i1 %i.hk, label %bb.bc, label %thread-pre-split.i

bb.bc:                                            ; preds = %bb.bb
  %i.hl = load i32, ptr %i.hi, align 4, !tbaa !496
  %i.hm = and i32 %i.hl, 64
  %.not21.i = icmp eq i32 %i.hm, 0
  br i1 %.not21.i, label %thread-pre-split.thread.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hn = getelementptr inbounds nuw i8, ptr %.02.i, i64 4
  %i.ho = load i8, ptr %i.hn, align 4, !tbaa !510, !range !187, !noundef !188 ; 2 uses
  %i.hp = trunc nuw i8 %i.ho to i1
  %i.hq = zext nneg i8 %i.ho to i32
  %i.hr = select i1 %i.hp, ptr @.str.155, ptr @.str.156
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.104, i32 noundef %i.hq, ptr noundef nonnull %i.hr) #36
  %.pr.pre.i = load i32, ptr %.02.i, align 8, !tbaa !509
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.bd, %bb.bb
  %i.hs = phi i32 [ %i.hj, %bb.bb ], [ %.pr.pre.i, %bb.bd ]
  %i.ht = icmp eq i32 %i.hs, 2
  br i1 %i.ht, label %bb.be, label %thread-pre-split.thread.i

bb.be:                                            ; preds = %thread-pre-split.i
  %i.hu = load i32, ptr %i.hi, align 4, !tbaa !496
  %i.hv = and i32 %i.hu, 64
  %.not22.i = icmp eq i32 %i.hv, 0
  br i1 %.not22.i, label %thread-pre-split.thread.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hw = getelementptr inbounds nuw i8, ptr %.02.i, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !511 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.02.i, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !512 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.02.i, i64 4
  %i.ib = load i8, ptr %i.ia, align 4, !tbaa !510, !range !187, !noundef !188
  %i.ic = zext nneg i8 %i.ib to i32
  %i.id = getelementptr inbounds nuw i8, ptr %.02.i, i64 5
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !513
  %i.if = sext i8 %i.ie to i32
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.104, i64 noundef %i.hx, i64 noundef %i.hz, i64 noundef %i.hx, i64 noundef %i.hz, i32 noundef %i.ic, i32 noundef %i.if) #36
  br label %thread-pre-split.thread.i

thread-pre-split.thread.i:                        ; preds = %bb.bf, %bb.be, %thread-pre-split.i, %bb.bc
  %i.ig = getelementptr inbounds nuw i8, ptr %.02.i, i64 24 ; 2 uses
  %.not.i144 = icmp eq ptr %i.ig, %i.hg
  br i1 %.not.i144, label %_ZL27DebugLogMultiSelectRequestsPKcPK18ImGuiMultiSelectIO.exit, label %bb.bb

_ZL27DebugLogMultiSelectRequestsPKcPK18ImGuiMultiSelectIO.exit: ; preds = %thread-pre-split.thread.i, %bb.ba, %bb.az
  ret ptr %i.as
}

declare void @_ZN5ImGui12TableEndCellEP10ImGuiTable(ptr noundef) local_unnamed_addr #3

declare void @_ZN5ImGui14PushFocusScopeEj(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
end_hunk_10
begin_hunk_11_@_ZN6ImPoolI21ImGuiMultiSelectStateE13GetOrAddByKeyEj:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1, i32 noundef -1) #36 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !211  ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !778
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [40 x i8], ptr %i.e, i64 %i.f
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !779  ; 6 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !211
  %i.j = load i32, ptr %0, align 8, !tbaa !780
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.i, 1                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !781  ; 4 uses
  %.not.i = icmp slt i32 %i.i, %i.n
  br i1 %.not.i, label %._ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit_crit_edge.i, label %bb.e

._ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre5.pre.i = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i, align 8, !tbaa !778
  br label %_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI21ImGuiMultiSelectStateE14_grow_capacityEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = sdiv i32 %i.n, 2
  %i.p = add nsw i32 %i.o, %i.n
  br label %_ZNK8ImVectorI21ImGuiMultiSelectStateE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI21ImGuiMultiSelectStateE14_grow_capacityEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.q = phi i32 [ %i.p, %bb.f ], [ 8, %bb.e ]
  %i.r = tail call noundef i32 @llvm.smax.i32(i32 %i.q, i32 %i.l) ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.s, 40
  %i.u = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.t) #36 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !778  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not6.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorI21ImGuiMultiSelectStateE14_grow_capacityEi.exit.i.i
  %i.x = load i32, ptr %0, align 8, !tbaa !782
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.u, ptr nonnull align 8 %i.w, i64 %i.z, i1 false)
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !778
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aa) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI21ImGuiMultiSelectStateE14_grow_capacityEi.exit.i.i
  store ptr %i.u, ptr %i.v, align 8, !tbaa !778
  store i32 %i.r, ptr %i.m, align 4, !tbaa !781
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !779
  %.pre7.i = add nsw i32 %.pre.i, 1
  br label %_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i

_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i: ; preds = %bb.h, %._ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit_crit_edge.i
  %.pre-phi.i = phi i32 [ %i.l, %._ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit_crit_edge.i ], [ %.pre7.i, %bb.h ]
  %.pre5.i = phi ptr [ %.pre5.pre.i, %._ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit_crit_edge.i ], [ %i.u, %bb.h ]
  store i32 %i.l, ptr %0, align 8, !tbaa !782
  %.pre8.i = sext i32 %i.i to i64
  br label %_ZN6ImPoolI21ImGuiMultiSelectStateE3AddEv.exit

bb.i:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !778 ; 2 uses
  %i.ad = sext i32 %i.i to i64                    ; 2 uses
  %i.ae = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !211
  br label %_ZN6ImPoolI21ImGuiMultiSelectStateE3AddEv.exit

_ZN6ImPoolI21ImGuiMultiSelectStateE3AddEv.exit:   ; preds = %_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i, %bb.i
  %.pre-phi9.i = phi i64 [ %i.ad, %bb.i ], [ %.pre8.i, %_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i ] ; 2 uses
  %i.ag = phi ptr [ %i.ac, %bb.i ], [ %.pre5.i, %_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i ]
  %storemerge.i = phi i32 [ %i.af, %bb.i ], [ %.pre-phi.i, %_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i ]
  store i32 %storemerge.i, ptr %i.h, align 8, !tbaa !779
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds [40 x i8], ptr %i.ag, i64 %.pre-phi9.i ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i8 0, i64 20, i1 false)
  store i8 -1, ptr %i.aj, align 1, !tbaa !285
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i8 -1, ptr %i.ak, align 4, !tbaa !269
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 -1, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !783
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !783
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !778
  %i.aq = getelementptr inbounds [40 x i8], ptr %i.ap, i64 %.pre-phi9.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN6ImPoolI21ImGuiMultiSelectStateE3AddEv.exit, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.aq, %_ZN6ImPoolI21ImGuiMultiSelectStateE3AddEv.exit ]
  ret ptr %.0
}

declare noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui20MultiSelectAddSetAllEP24ImGuiMultiSelectTempDatab(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !275  ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) #36 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !276  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.f, null
  br i1 %.not6.i.i, label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 8, !tbaa !277
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.f, i64 %i.i, i1 false)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !276
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.j) #36
  br label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit.thread

_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit.thread: ; preds = %bb.b, %bb.c
  store ptr %i.d, ptr %i.e, align 8, !tbaa !276
  store i32 0, ptr %i.a, align 4, !tbaa !275
  store i32 0, ptr %0, align 8, !tbaa !277
  br label %_ZNK8ImVectorI21ImGuiSelectionRequestE14_grow_capacityEi.exit.i

_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit: ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !277
  %i.k = icmp eq i32 %i.b, 0
  br i1 %i.k, label %_ZNK8ImVectorI21ImGuiSelectionRequestE14_grow_capacityEi.exit.i, label %._ZN8ImVectorI21ImGuiSelectionRequestE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI21ImGuiSelectionRequestE7reserveEi.exit_crit_edge.i: ; preds = %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !276
  br label %_ZN8ImVectorI21ImGuiSelectionRequestE9push_backERKS0_.exit

_ZNK8ImVectorI21ImGuiSelectionRequestE14_grow_capacityEi.exit.i: ; preds = %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit.thread, %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit
  %i.l = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 192) #36 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !276  ; 2 uses
  %.not6.i.i2 = icmp eq ptr %i.n, null
  br i1 %.not6.i.i2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI21ImGuiSelectionRequestE14_grow_capacityEi.exit.i
  %i.o = load i32, ptr %0, align 8, !tbaa !277
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr nonnull align 8 %i.n, i64 %i.q, i1 false)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !276
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.r) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorI21ImGuiSelectionRequestE14_grow_capacityEi.exit.i
  store ptr %i.l, ptr %i.m, align 8, !tbaa !276
  store i32 8, ptr %i.a, align 4, !tbaa !275
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !277
  %i.s = sext i32 %.pre3.i to i64
  br label %_ZN8ImVectorI21ImGuiSelectionRequestE9push_backERKS0_.exit

_ZN8ImVectorI21ImGuiSelectionRequestE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI21ImGuiSelectionRequestE7reserveEi.exit_crit_edge.i, %bb.e
  %i.t = phi i64 [ 0, %._ZN8ImVectorI21ImGuiSelectionRequestE7reserveEi.exit_crit_edge.i ], [ %i.s, %bb.e ]
  %i.u = phi ptr [ %.pre.i, %._ZN8ImVectorI21ImGuiSelectionRequestE7reserveEi.exit_crit_edge.i ], [ %i.l, %bb.e ]
  %i.v = zext i1 %1 to i8
  %i.w = getelementptr inbounds [24 x i8], ptr %i.u, i64 %i.t ; 4 uses
  store i32 1, ptr %i.w, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i8 %i.v, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.63.0..sroa_idx, i8 -1, i64 16, i1 false)
  %i.x = load i32, ptr %0, align 8, !tbaa !277
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %0, align 8, !tbaa !277
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5ImGui14EndMultiSelectEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImRect, align 16            ; 4 uses
  %1 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9104 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !255  ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !261  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !161  ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !502
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7636
  %i.k = load i32, ptr %i.j, align 4, !tbaa !326
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.105) #36 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 7 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !272
  %i.p = and i32 %i.o, 4096
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !193 ; 2 uses
  %i.t = load <2 x float>, ptr %i.q, align 8, !tbaa !193 ; 3 uses
  %i.u = fcmp oge <2 x float> %i.s, %i.t
  %i.v = select <2 x i1> %i.u, <2 x float> %i.s, <2 x float> %i.t
  br label %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 560
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 568
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8816
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !324  ; 3 uses
  %.not9.i = icmp eq ptr %i.z, null               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 352
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.z, i64 360
  %.sroa.024.0.in.i = select i1 %.not9.i, ptr %i.x, ptr %i.aa
  %.sroa.7.0.in.i = select i1 %.not9.i, ptr %.sroa.7.0..sroa_idx.i, ptr %.sroa.7.0..sroa_idx28.i
  %.sroa.7.0.i = load <2 x float>, ptr %.sroa.7.0.in.i, align 8, !tbaa !193 ; 3 uses
  %.sroa.024.0.i = load <2 x float>, ptr %.sroa.024.0.in.i, align 8, !tbaa !193
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.ac = load <2 x float>, ptr %i.ab, align 8, !tbaa !193
  %i.ad = fadd <2 x float> %.sroa.024.0.i, %i.ac  ; 2 uses
  %i.ae = fcmp olt <2 x float> %i.ad, %.sroa.7.0.i
  %i.af = select <2 x i1> %i.ae, <2 x float> %i.ad, <2 x float> %.sroa.7.0.i
  br label %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit

_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit: ; preds = %bb.d, %bb.e
  %.sroa.024.1.i = phi <2 x float> [ %i.af, %bb.e ], [ %i.t, %bb.d ] ; 3 uses
  %.sroa.7.1.i = phi <2 x float> [ %.sroa.7.0.i, %bb.e ], [ %i.v, %bb.d ] ; 3 uses
  %2 = shufflevector <2 x float> %.sroa.024.1.i, <2 x float> %.sroa.7.1.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %2, ptr %0, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 90
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !260, !range !187, !noundef !188
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = extractelement <2 x float> %.sroa.024.1.i, i64 0
  %i.ak = extractelement <2 x float> %.sroa.024.1.i, i64 1
  %i.al = extractelement <2 x float> %.sroa.7.1.i, i64 0
  %i.am = extractelement <2 x float> %.sroa.7.1.i, i64 1
  br i1 %i.ai, label %bb.f, label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread

bb.f:                                             ; preds = %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !501, !range !187, !noundef !188
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 93
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !270, !range !187, !noundef !188
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !514
  %.not = icmp eq i64 %i.au, -1
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !496
  %i.ax = and i32 %i.aw, 64
  %.not60 = icmp eq i32 %i.ax, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.106) #36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 -1, ptr %i.ay, align 8, !tbaa !268
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !286, !range !187, !noundef !188
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !284
  %.not61 = icmp eq i64 %i.bd, -1
  br i1 %.not61, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !496
  %i.bg = and i32 %i.bf, 64
  %.not62 = icmp eq i32 %i.bg, 0
  br i1 %.not62, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.107) #36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i64 -1, ptr %i.bc, align 8, !tbaa !284
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  store i8 -1, ptr %i.bh, align 1, !tbaa !285
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.bi = load i32, ptr %i.n, align 4, !tbaa !272 ; 2 uses
  %i.bj = and i32 %i.bi, 192
  %.not63 = icmp eq i32 %i.bj, 0
  br i1 %.not63, label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !278 ; 2 uses
  %.not.i76 = icmp eq i32 %i.bl, 0
  br i1 %.not.i76, label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 9000
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !279
  %i.bp = icmp eq i32 %i.bo, %i.bl
  br i1 %i.bp, label %bb.t, label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 9004
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !280, !range !187, !noundef !188
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5ImGui17GetBoxSelectStateEj.exit, label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread

_ZN5ImGui17GetBoxSelectStateEj.exit:              ; preds = %bb.t
  call void @_ZN5ImGui12EndBoxSelectERK6ImRecti(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.bi)
  br label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread

_ZN5ImGui17GetBoxSelectStateEj.exit.thread:       ; preds = %bb.s, %bb.t, %bb.r, %bb.q, %_ZN5ImGui17GetBoxSelectStateEj.exit, %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 89
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !274, !range !187, !noundef !188
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_ZN5ImGui17GetBoxSelectStateEj.exit.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !275
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.v, label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit

bb.v:                                             ; preds = %bb.u
  %i.bz = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) #36 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !276 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.cb, null
  br i1 %.not6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = load i32, ptr %i.c, align 8, !tbaa !277
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul nsw i64 %i.cd, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bz, ptr nonnull align 8 %i.cb, i64 %i.ce, i1 false)
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !276
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cf) #36
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !276
  store i32 0, ptr %i.bw, align 4, !tbaa !275
  br label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit

_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit: ; preds = %bb.u, %bb.x
  store i32 0, ptr %i.c, align 8, !tbaa !277
  br label %bb.y

bb.y:                                             ; preds = %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit, %_ZN5ImGui17GetBoxSelectStateEj.exit.thread
  %i.cg = tail call noundef zeroext i1 @_ZN5ImGui15IsWindowHoveredEi(i32 noundef 0) #36
  br i1 %i.cg, label %bb.z, label %_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !197 ; 4 uses
  %i.ck = load float, ptr %i.ch, align 4, !tbaa !239
  %i.cl = fcmp ult float %i.cj, %i.ck
  br i1 %i.cl, label %_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !200 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 548
  %i.cp = load float, ptr %i.co, align 4, !tbaa !198
  %i.cq = fcmp oge float %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 552
  %i.cs = load float, ptr %i.cr, align 4
  %i.ct = fcmp olt float %i.cj, %i.cs
  %or.cond.i = select i1 %i.cq, i1 %i.ct, i1 false
  br i1 %or.cond.i, label %_ZNK6ImRect8ContainsERK6ImVec2.exit, label %_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit:              ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 556
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !199
  %i.cw = fcmp olt float %i.cn, %i.cv
  br i1 %i.cw, label %bb.ab, label %_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread

bb.ab:                                            ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit
  %i.cx = load i32, ptr %i.n, align 4, !tbaa !272 ; 6 uses
  %i.cy = and i32 %i.cx, 4096
  %.not65 = icmp eq i32 %i.cy, 0
  br i1 %.not65, label %_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread82, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = fcmp ult float %i.cj, %i.aj
  br i1 %i.cz, label %_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = fcmp oge float %i.cn, %i.ak
  %i.db = fcmp olt float %i.cj, %i.al
  %or.cond.i77 = select i1 %i.da, i1 %i.db, i1 false
  %i.dc = fcmp olt float %i.cn, %i.am
  %or.cond = select i1 %or.cond.i77, i1 %i.dc, i1 false
  br i1 %or.cond, label %_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread82, label %_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread82:   ; preds = %bb.ad, %bb.ab
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 5276
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !515
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.ae, label %_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread

bb.ae:                                            ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread82
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !220
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.af, label %_ZNK6ImRect8ContainsERK6ImVec2.exit78.thread

bb.af:                                            ; preds = %bb.ae
  %i.dj = and i32 %i.cx, 192
end_hunk_11
begin_hunk_12_@_ZN5ImGui5ValueEPKcfS1_:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.b = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.121, ptr noundef nonnull %2) #36 ; 0 uses
  %i.c = fpext float %1 to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull %i.a, ptr noundef %0, double noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = fpext float %1 to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.122, ptr noundef %0, double noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN16ImGuiMenuColumns6UpdateEfb(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(26) initializes((0, 10), (12, 18)) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #14 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !221
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre3 = load i16, ptr %.phi.trans.insert2, align 4, !tbaa !221
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %.pre5 = load i16, ptr %.phi.trans.insert4, align 2, !tbaa !221
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre7 = load i16, ptr %.phi.trans.insert6, align 4, !tbaa !221
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %i.a = phi i16 [ %.pre7, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.b = phi i16 [ %.pre5, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.c = phi i16 [ %.pre3, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.d = phi i16 [ %.pre, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.e = fptoui float %1 to i16                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.e, ptr %i.f, align 4, !tbaa !803
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.h = icmp ne i16 %i.d, 0
  %i.i = icmp ne i16 %i.c, 0
  %or.cond.us.1.i = select i1 %i.h, i1 %i.i, i1 false
  %i.j = select i1 %or.cond.us.1.i, i16 %i.e, i16 0
  %.1.us.1.i = add i16 %i.j, %i.d                 ; 2 uses
  %i.k = or i16 %i.c, %i.d                        ; 2 uses
  %i.l = icmp ne i16 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.1.us.1.i, ptr %i.m, align 4, !tbaa !531
  %i.p = add i16 %.1.us.1.i, %i.c
  %i.q = icmp ne i16 %i.b, 0
  %or.cond.us.2.i = select i1 %i.l, i1 %i.q, i1 false
  %i.r = select i1 %or.cond.us.2.i, i16 %i.e, i16 0
  %.1.us.2.i = add i16 %i.p, %i.r                 ; 2 uses
  %i.s = or i16 %i.b, %i.k
  %i.t = icmp ne i16 %i.s, 0
  store i16 %.1.us.2.i, ptr %i.n, align 2, !tbaa !532
  %i.u = add i16 %.1.us.2.i, %i.b
  %i.v = icmp ne i16 %i.a, 0
  %or.cond.us.3.i = select i1 %i.t, i1 %i.v, i1 false
  %i.w = select i1 %or.cond.us.3.i, i16 %i.e, i16 0
  %.1.us.3.i = add i16 %i.u, %i.w                 ; 2 uses
  store i16 %.1.us.3.i, ptr %i.o, align 4, !tbaa !533
  %i.x = add i16 %.1.us.3.i, %i.a
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 0, ptr %i.g, align 2
  store i32 %i.y, ptr %0, align 4, !tbaa !534
  store i32 0, ptr %i.z, align 4, !tbaa !535
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN16ImGuiMenuColumns18CalcNextTotalWidthEb(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(26) initializes((4, 8)) %0, i1 noundef zeroext %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 4              ; 5 uses
  %i.d = load i16, ptr %i.a, align 2, !tbaa !221  ; 3 uses
  %i.e = icmp ne i16 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i16, ptr %i.f, align 4, !tbaa !221  ; 4 uses
  %i.h = icmp ne i16 %i.g, 0
  %or.cond.us.1 = select i1 %i.e, i1 %i.h, i1 false
  %i.i = select i1 %or.cond.us.1, i16 %i.c, i16 0
  %.1.us.1 = add i16 %i.i, %i.d                   ; 3 uses
  %i.j = or i16 %i.d, %i.g                        ; 3 uses
  %i.k = icmp ne i16 %i.j, 0                      ; 2 uses
  br i1 %1, label %.split26.us.loopexit, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.l = add i16 %.1.us.1, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.n = load i16, ptr %i.m, align 2, !tbaa !221  ; 3 uses
  %i.o = icmp ne i16 %i.n, 0
  %or.cond.2 = select i1 %i.k, i1 %i.o, i1 false
  %i.p = select i1 %or.cond.2, i16 %i.c, i16 0
  %.1.2 = add i16 %i.p, %i.l
  %i.q = or i16 %i.j, %i.n
  %i.r = icmp ne i16 %i.q, 0
  %i.s = add i16 %.1.2, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i16, ptr %i.t, align 4, !tbaa !221  ; 2 uses
  %i.v = icmp ne i16 %i.u, 0
  %or.cond.3 = select i1 %i.r, i1 %i.v, i1 false
  %i.w = select i1 %or.cond.3, i16 %i.c, i16 0
  %.1.3 = add i16 %i.w, %i.s
  %i.x = add i16 %.1.3, %i.u
  br label %.split26.us

.split26.us.loopexit:                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %.1.us.1, ptr %i.y, align 4, !tbaa !531
  %i.ab = add i16 %.1.us.1, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !221 ; 3 uses
  %i.ae = icmp ne i16 %i.ad, 0
  %or.cond.us.2 = select i1 %i.k, i1 %i.ae, i1 false
  %i.af = select i1 %or.cond.us.2, i16 %i.c, i16 0
  %.1.us.2 = add i16 %i.af, %i.ab                 ; 2 uses
  %i.ag = or i16 %i.j, %i.ad
  %i.ah = icmp ne i16 %i.ag, 0
  store i16 %.1.us.2, ptr %i.z, align 2, !tbaa !532
  %i.ai = add i16 %.1.us.2, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !221 ; 2 uses
  %i.al = icmp ne i16 %i.ak, 0
  %or.cond.us.3 = select i1 %i.ah, i1 %i.al, i1 false
  %i.am = select i1 %or.cond.us.3, i16 %i.c, i16 0
  %.1.us.3 = add i16 %i.am, %i.ai                 ; 2 uses
  store i16 %.1.us.3, ptr %i.aa, align 4, !tbaa !533
  %i.an = add i16 %.1.us.3, %i.ak
  br label %.split26.us

.split26.us:                                      ; preds = %.split.preheader, %.split26.us.loopexit
  %.us-phi = phi i16 [ %i.an, %.split26.us.loopexit ], [ %i.x, %.split.preheader ]
  %i.ao = zext i16 %.us-phi to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !535
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef float @_ZN16ImGuiMenuColumns11DeclColumnsEffff(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(26) initializes((4, 8)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = insertelement <4 x float> poison, float %1, i64 0
  %i.c = insertelement <4 x float> %i.b, float %2, i64 1
  %i.d = insertelement <4 x float> %i.c, float %3, i64 2
  %i.e = insertelement <4 x float> %i.d, float %4, i64 3
  %i.f = fptoui <4 x float> %i.e to <4 x i16>
  %i.g = load <4 x i16>, ptr %i.a, align 2, !tbaa !221
  %i.h = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.g, <4 x i16> %i.f) ; 5 uses
  store <4 x i16> %i.h, ptr %i.a, align 2, !tbaa !221
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i16, ptr %i.i, align 4              ; 3 uses
  %i.k = extractelement <4 x i16> %i.h, i64 0     ; 3 uses
  %i.l = icmp ne i16 %i.k, 0
  %i.m = extractelement <4 x i16> %i.h, i64 1     ; 3 uses
  %i.n = icmp ne i16 %i.m, 0
  %or.cond.us.1.i = and i1 %i.l, %i.n
  %i.o = select i1 %or.cond.us.1.i, i16 %i.j, i16 0
  %i.p = or i16 %i.m, %i.k                        ; 2 uses
  %i.q = icmp ne i16 %i.p, 0
  %i.r = extractelement <4 x i16> %i.h, i64 2     ; 3 uses
  %i.s = icmp ne i16 %i.r, 0
  %or.cond.2.i = and i1 %i.q, %i.s
  %i.t = select i1 %or.cond.2.i, i16 %i.j, i16 0
  %i.u = or i16 %i.r, %i.p
  %i.v = icmp ne i16 %i.u, 0
  %i.w = extractelement <4 x i16> %i.h, i64 3     ; 2 uses
  %i.x = icmp ne i16 %i.w, 0
  %or.cond.3.i = and i1 %i.v, %i.x
  %i.y = select i1 %or.cond.3.i, i16 %i.j, i16 0
  %.1.us.1.i = add i16 %i.m, %i.k
  %i.z = add i16 %.1.us.1.i, %i.r
  %.1.2.i = add i16 %i.z, %i.w
  %i.aa = add i16 %.1.2.i, %i.o
  %.1.3.i = add i16 %i.aa, %i.t
  %i.ab = add i16 %.1.3.i, %i.y
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !535
  %i.ae = load i32, ptr %0, align 4, !tbaa !534
  %i.af = tail call noundef i32 @llvm.umax.i32(i32 %i.ae, i32 %i.ac)
  %i.ag = uitofp i32 %i.af to float
  ret float %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImRect, align 16            ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !186, !range !187, !noundef !188
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !246
  %i.j = and i32 %i.i, 1024
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui10BeginGroupEv() #36
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.123) #36
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.l = load float, ptr %i.k, align 4, !tbaa !245 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.n = load float, ptr %i.m, align 8, !tbaa !804 ; 2 uses
  %i.o = fneg float %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.r = load float, ptr %i.q, align 4, !tbaa !242
  %i.s = fadd float %i.n, %i.r                    ; 3 uses
  %i.t = load float, ptr %i.p, align 8, !tbaa !241 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.v = load float, ptr %i.u, align 8, !tbaa !805
  %i.w = fadd float %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.y = load float, ptr %i.x, align 4, !tbaa !536
  %i.z = fadd float %i.s, %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !250 ; 2 uses
  %i.ac = fmul float %i.l, 5.000000e-01           ; 2 uses
  %i.ad = fcmp oge float %i.ab, %i.ac
  %i.ae = select i1 %i.ad, float %i.ab, float %i.ac
  %i.af = fsub float %i.w, %i.ae                  ; 2 uses
  %i.ag = fcmp oge float %i.t, %i.af
  %i.ah = select i1 %i.ag, float %i.t, float %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.ak = insertelement <2 x float> poison, float %i.l, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x float> poison, float %i.o, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.t, i64 1
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> splat (float 5.000000e-01), <2 x float> %i.an) ; 2 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 0 ; 2 uses
  %i.aq = fcmp oge float %i.ap, 0.000000e+00
  %i.ar = select i1 %i.aq, float %i.ap, float 0.000000e+00
  %i.as = fadd float %i.s, %i.ar
  %i.at = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.au = insertelement <2 x float> %i.at, float %i.as, i64 1
  %i.av = fadd <2 x float> %i.au, splat (float 5.000000e-01)
  %i.aw = fptosi <2 x float> %i.av to <2 x i32>
  %i.ax = sitofp <2 x i32> %i.aw to <2 x float>   ; 2 uses
  %i.ay = load <2 x float>, ptr %i.aj, align 8, !tbaa !193 ; 2 uses
  %i.az = fcmp ole <2 x float> %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  %i.bb = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.z, i64 1
  %i.bd = fadd <2 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = fptosi <2 x float> %i.bd to <2 x i32>
  %i.bf = sitofp <2 x i32> %i.be to <2 x float>   ; 2 uses
  %i.bg = load <2 x float>, ptr %i.ba, align 8, !tbaa !193 ; 2 uses
  %i.bh = fcmp ogt <2 x float> %i.bg, %i.bf
  %1 = shufflevector <2 x i1> %i.az, <2 x i1> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %2 = shufflevector <2 x float> %i.ax, <2 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %3 = shufflevector <2 x float> %i.ay, <2 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %4 = select <4 x i1> %1, <4 x float> %2, <4 x float> %3
  store <4 x float> %4, ptr %0, align 16, !tbaa !193
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.ai, i1 noundef zeroext false) #36
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !537
  %i.bl = fadd float %i.t, %i.bk                  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !806
  %i.bo = fadd float %i.s, %i.bn                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store float %i.bl, ptr %i.bp, align 8, !tbaa !193
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  store float %i.bo, ptr %.sroa_idx26, align 4, !tbaa !193
  store float %i.bl, ptr %i.bi, align 8, !tbaa !193
  %.sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  store float %i.bo, ptr %.sroa_idx25, align 4, !tbaa !193
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  store i32 0, ptr %i.bq, align 4, !tbaa !297
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.br, align 8, !tbaa !298
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store i32 1, ptr %i.bs, align 8, !tbaa !329
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 379
  store i8 1, ptr %i.bt, align 1, !tbaa !538
  %i.bu = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 5184
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !161 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 206
  store i8 1, ptr %i.bx, align 2, !tbaa !185
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 209
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !186, !range !187, !noundef !188
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZN5ImGui23AlignTextToFramePaddingEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 324 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !291 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 4400
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !208
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 3216
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !236 ; 3 uses
  %i.ch = call float @llvm.fmuladd.f32(float %i.cg, float 2.000000e+00, float %i.ce) ; 2 uses
  %i.ci = fcmp oge float %i.cc, %i.ch
  %i.cj = select i1 %i.ci, float %i.cc, float %i.ch
  store float %i.cj, ptr %i.cb, align 4, !tbaa !291
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 336 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !191 ; 2 uses
  %i.cm = fcmp oge float %i.cl, %i.cg
  %i.cn = select i1 %i.cm, float %i.cl, float %i.cg
  store float %i.cn, ptr %i.ck, align 8, !tbaa !191
  br label %_ZN5ImGui23AlignTextToFramePaddingEv.exit

_ZN5ImGui23AlignTextToFramePaddingEv.exit:        ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %_ZN5ImGui23AlignTextToFramePaddingEv.exit
  %.0 = phi i1 [ false, %bb.a ], [ true, %_ZN5ImGui23AlignTextToFramePaddingEv.exit ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui10EndMenuBarEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !34 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !186, !range !187, !noundef !188
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv() #36
  br i1 %i.h, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8240 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !443
  %switch = icmp ult i32 %i.j, 2
  br i1 %switch, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8080
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !327  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !246
  %i.o = and i32 %i.n, 268435456
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ]  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 944
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !539  ; 4 uses
  %.not42 = icmp eq ptr %i.q, null
  br i1 %.not42, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !246
  %i.t = and i32 %i.s, 268435456
  %.not43 = icmp eq i32 %i.t, 0
  br i1 %.not43, label %.critedge, label %.preheader, !llvm.loop !807

.critedge:                                        ; preds = %.preheader, %bb.e
  %i.u = icmp eq ptr %i.q, %i.c
  br i1 %i.u, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 472
  %i.w = load i32, ptr %i.v, align 8, !tbaa !808
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8228 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !809
  %i.aa = and i32 %i.z, 128
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef %i.c, i32 noundef 0) #36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1012
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !211
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1032
  tail call void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef %i.ad, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.ae) #36
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8072 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !223, !range !187, !noundef !188
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.af, align 8, !tbaa !223
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8160
  store i8 2, ptr %i.ai, align 8, !tbaa !810
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8074
  store i8 1, ptr %i.aj, align 2, !tbaa !811
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8073
  store i8 1, ptr %i.ak, align 1, !tbaa !225
  %i.al = load i32, ptr %i.i, align 8, !tbaa !443
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8248
  %i.an = load i32, ptr %i.am, align 8, !tbaa !812
  %i.ao = load i32, ptr %i.y, align 4, !tbaa !809
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8232
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !813
  tail call void @_ZN5ImGui21NavMoveRequestForwardE8ImGuiDirS0_ii(i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.aq) #36
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %.critedge, %bb.f, %bb.g, %bb.j, %bb.d, %bb.b
  tail call void @_ZN5ImGui11PopClipRectEv() #36
  tail call void @_ZN5ImGui5PopIDEv() #36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.as = load float, ptr %i.ar, align 8, !tbaa !189
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.au = load float, ptr %i.at, align 8, !tbaa !241
  %i.av = fsub float %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  store float %i.av, ptr %i.aw, align 4, !tbaa !537
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 7992
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8000
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !814
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !815
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [56 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -1
  store i8 0, ptr %i.bd, align 1, !tbaa !817
  %i.be = getelementptr i8, ptr %i.bc, i64 -44
  %i.bf = load i64, ptr %i.be, align 4, !tbaa !193
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !204 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !203
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !818
  %i.bm = fsub float %i.bj, %i.bl                 ; 2 uses
  %i.bn = fcmp oge float %i.bh, %i.bm
  %i.bo = select i1 %i.bn, float %i.bh, float %i.bm
  store float %i.bo, ptr %i.bg, align 8, !tbaa !204
  tail call void @_ZN5ImGui8EndGroupEv() #36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  store i32 1, ptr %i.bp, align 4, !tbaa !297
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.bq, align 8, !tbaa !298
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store i32 0, ptr %i.br, align 8, !tbaa !329
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 379
  store i8 0, ptr %i.bs, align 1, !tbaa !538
  store i64 %i.bf, ptr %i.bi, align 8, !tbaa !193
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

end_hunk_12
