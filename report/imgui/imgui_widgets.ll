Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0
$_ZN5ImGui22RoundScalarWithFormatTIyEET_PKciS1_ = comdat any

$_ZN5ImGui20ScaleRatioFromValueTIfffEEfiT_S1_S1_ff = comdat any

$_ZN5ImGui20ScaleValueFromRatioTIfffEET_ifS1_S1_ff = comdat any

$_ZN5ImGui22RoundScalarWithFormatTIfEET_PKciS1_ = comdat any

$_ZN5ImGui20ScaleRatioFromValueTIdddEEfiT_S1_S1_ff = comdat any

$_ZN5ImGui20ScaleValueFromRatioTIdddEET_ifS1_S1_ff = comdat any

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
@.str.19 = private unnamed_addr constant [36 x i8] c"Calling EndCombo() in wrong window!\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"*Unknown item*\00", align 1
@_ZL13GDataTypeInfo = internal constant [12 x %struct.ImGuiDataTypeInfo] [%struct.ImGuiDataTypeInfo { i64 1, ptr @.str.137, ptr @.str.27, ptr @.str.27 }, %struct.ImGuiDataTypeInfo { i64 1, ptr @.str.138, ptr @.str.139, ptr @.str.139 }, %struct.ImGuiDataTypeInfo { i64 2, ptr @.str.140, ptr @.str.27, ptr @.str.27 }, %struct.ImGuiDataTypeInfo { i64 2, ptr @.str.141, ptr @.str.139, ptr @.str.139 }, %struct.ImGuiDataTypeInfo { i64 4, ptr @.str.142, ptr @.str.27, ptr @.str.27 }, %struct.ImGuiDataTypeInfo { i64 4, ptr @.str.143, ptr @.str.139, ptr @.str.139 }, %struct.ImGuiDataTypeInfo { i64 8, ptr @.str.144, ptr @.str.145, ptr @.str.145 }, %struct.ImGuiDataTypeInfo { i64 8, ptr @.str.146, ptr @.str.147, ptr @.str.147 }, %struct.ImGuiDataTypeInfo { i64 4, ptr @.str.148, ptr @.str.149, ptr @.str.150 }, %struct.ImGuiDataTypeInfo { i64 8, ptr @.str.151, ptr @.str.150, ptr @.str.152 }, %struct.ImGuiDataTypeInfo { i64 1, ptr @.str.153, ptr @.str.27, ptr @.str.27 }, %struct.ImGuiDataTypeInfo { i64 0, ptr @.str.154, ptr @.str.155, ptr @.str.155 }], align 16
@_ZL24GDefaultRgbaColorMarkers = internal unnamed_addr constant [4 x i32] [i32 -15461136, i32 -15405036, i32 -1043436, i32 -7566196], align 16
@.str.21 = private unnamed_addr constant [6 x i8] c"##min\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"##max\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%.0f deg\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"ID: 0x%08X, ActiveID: 0x%08X\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"TextLen: %d, Cursor: %d%s, Selection: %d..%d\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c" (L)\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c" (R)\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"BufCapacity: %d, LineCount: %d\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"(Internal Buffer: TextA Size: %d, Capacity: %d)\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"has_preferred_x: %d (%.2f)\00", align 1
@.str.35 = private unnamed_addr constant [73 x i8] c"undo_point: %d, redo_point: %d, undo_char_point: %d, redo_char_point: %d\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"undopoints\00", align 1
@.str.37 = private unnamed_addr constant [73 x i8] c"%c [%02d] where %03d, insert %03d, delete %03d, char_storage %03d \22%.*s\22\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"M:0.000\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"M:000\00", align 1
@_ZZN5ImGui10ColorEdit4EPKcPfiE3ids = internal unnamed_addr constant [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], align 16
@.str.40 = private unnamed_addr constant [4 x i8] c"##X\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"##Y\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"##Z\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"##W\00", align 1
@_ZZN5ImGui10ColorEdit4EPKcPfiE13fmt_table_int = internal unnamed_addr constant [3 x [4 x ptr]] [[4 x ptr] [ptr @.str.44, ptr @.str.44, ptr @.str.44, ptr @.str.44], [4 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], [4 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.48]], align 16
@.str.44 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"R:%3d\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"G:%3d\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"B:%3d\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"A:%3d\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"H:%3d\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"S:%3d\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"V:%3d\00", align 1
@_ZZN5ImGui10ColorEdit4EPKcPfiE15fmt_table_float = internal unnamed_addr constant [3 x [4 x ptr]] [[4 x ptr] [ptr @.str.52, ptr @.str.52, ptr @.str.52, ptr @.str.52], [4 x ptr] [ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], [4 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.56]], align 16
@.str.52 = private unnamed_addr constant [6 x i8] c"%0.3f\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"R:%0.3f\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"G:%0.3f\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"B:%0.3f\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"A:%0.3f\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"H:%0.3f\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"S:%0.3f\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"V:%0.3f\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"#%02X%02X%02X%02X\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"#%02X%02X%02X\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"##Text\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"%02X%02X%02X%02X\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"%02X%02X%02X\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"##ColorButton\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"picker\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"##picker\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"_COL3F\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"_COL4F\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"hsv\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"Current\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"##current\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"Original\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"##original\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"##rgb\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"##hsv\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"##hex\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"##preview\00", align 1
@.str.84 = private unnamed_addr constant [53 x i8] c"#%02X%02X%02X\0AR: %d, G: %d, B: %d\0A(%.3f, %.3f, %.3f)\00", align 1
@.str.85 = private unnamed_addr constant [66 x i8] c"#%02X%02X%02X%02X\0AR:%d, G:%d, B:%d, A:%d\0A(%.3f, %.3f, %.3f, %.3f)\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"H: %.3f, S: %.3f, V: %.3f\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"H: %.3f, S: %.3f, V: %.3f, A: %.3f\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"HSV\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"Hex\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"0..255\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"0.00..1.00\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"Copy as..\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.95 = private unnamed_addr constant [29 x i8] c"(%.3ff, %.3ff, %.3ff, %.3ff)\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"(%d,%d,%d,%d)\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"##selectable\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"##previewing_picker\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"Alpha Bar\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"###\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"#CLOSE\00", align 1
@.str.103 = private unnamed_addr constant [20 x i8] c"SearchBuffer = \22%s\22\00", align 1
@.str.104 = private unnamed_addr constant [42 x i8] c"SingleCharMode = %d, Size = %d, Lock = %d\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"LastRequest = time: %.2f, frame: %d\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"##BoxSelect\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"BeginMultiSelect\00", align 1
@.str.108 = private unnamed_addr constant [38 x i8] c"EndMultiSelect() FocusScope mismatch!\00", align 1
@.str.109 = private unnamed_addr constant [49 x i8] c"[selection] EndMultiSelect: Reset RangeSrcItem.\0A\00", align 1
@.str.110 = private unnamed_addr constant [46 x i8] c"[selection] EndMultiSelect: Reset NavIdItem.\0A\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"EndMultiSelect\00", align 1
@.str.112 = private unnamed_addr constant [29 x i8] c"MultiSelect 0x%08X in '%s'%s\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c" *Inactive*\00", align 1
@.str.115 = private unnamed_addr constant [49 x i8] c"RangeSrcItem = %lld (0x%llX), RangeSelected = %d\00", align 1
@.str.116 = private unnamed_addr constant [46 x i8] c"NavIdItem = %lld (0x%llX), NavIdSelected = %d\00", align 1
@.str.117 = private unnamed_addr constant [23 x i8] c"LastSelectionSize = %d\00", align 1
@.str.118 = private unnamed_addr constant [20 x i8] c"%d: %8.4g\0A%d: %8.4g\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"%d: %8.4g\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"%s: %d\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"%%s: %s\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"%s: %.3f\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"##MenuBar\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"##MainMenuBar\00", align 1
@.str.128 = private unnamed_addr constant [46 x i8] c"Calling EndMainMenuBar() not from a menu-bar!\00", align 1
@.str.129 = private unnamed_addr constant [35 x i8] c"Calling EndMenu() in wrong window!\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.132 = private unnamed_addr constant [38 x i8] c"Mismatched BeginTabBar()/EndTabBar()!\00", align 1
@.str.133 = private unnamed_addr constant [58 x i8] c"Needs to be called between BeginTabBar() and EndTabBar()!\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"*Missing Text*\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"S8\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"U8\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"S16\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"U16\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"S32\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"U32\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"S64\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"U64\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"char*\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.156 = private unnamed_addr constant [47 x i8] c"[selection] BeginBoxSelect() 0X%08X: Activate\0A\00", align 1
@.str.157 = private unnamed_addr constant [49 x i8] c"[selection] BeginBoxSelect() 0X%08X: Deactivate\0A\00", align 1
@.str.158 = private unnamed_addr constant [43 x i8] c"[selection] %s: Request: SetAll %d (= %s)\0A\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"SelectAll\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.161 = private unnamed_addr constant [77 x i8] c"[selection] %s: Request: SetRange %lld..%lld (0x%llX..0x%llX) = %d (dir %d)\0A\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"##v\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"##<\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"##>\00", align 1
@_ZZL32GetMinimumStepAtDecimalPrecisioniE9min_steps = internal unnamed_addr constant [10 x float] [float 1.000000e+00, float 1.000000e-01, float f0x3C23D70A, float 1.000000e-03, float f0x38D1B717, float f0x3727C5AC, float f0x358637BD, float 1.000000e-07, float f0x322BCC77, float f0x3089705F], align 16

@_ZN19ImGuiInputTextStateC1Ev = unnamed_addr alias void (ptr), ptr @_ZN19ImGuiInputTextStateC2Ev
@_ZN19ImGuiInputTextStateD1Ev = unnamed_addr alias void (ptr), ptr @_ZN19ImGuiInputTextStateD2Ev
@_ZN26ImGuiInputTextCallbackDataC1Ev = unnamed_addr alias void (ptr), ptr @_ZN26ImGuiInputTextCallbackDataC2Ev
@_ZN26ImGuiSelectionBasicStorageC1Ev = unnamed_addr alias void (ptr), ptr @_ZN26ImGuiSelectionBasicStorageC2Ev
@_ZN29ImGuiSelectionExternalStorageC1Ev = unnamed_addr alias void (ptr), ptr @_ZN29ImGuiSelectionExternalStorageC2Ev
@_ZN11ImGuiTabBarC1Ev = unnamed_addr alias void (ptr), ptr @_ZN11ImGuiTabBarC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 5 uses
  %4 = alloca %struct.ImRect, align 8             ; 8 uses
  %5 = alloca %struct.ImVec2, align 8             ; 11 uses
  %6 = alloca %struct.ImRect, align 16            ; 6 uses
  %7 = alloca %struct.ImRect, align 4             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %0, %1                       ; 2 uses
  %spec.select = select i1 %i.h, ptr @.str, ptr %1 ; 2 uses
  %spec.select101 = select i1 %i.h, ptr @.str, ptr %0 ; 11 uses
  %i.i = icmp eq ptr %spec.select, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select101) #40
  %i.k = getelementptr inbounds nuw i8, ptr %spec.select101, i64 %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.k, %bb.c ], [ %spec.select, %bb.b ] ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.m = load float, ptr %i.l, align 8, !tbaa !186 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.o = load float, ptr %i.n, align 4, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.q = load float, ptr %i.p, align 8, !tbaa !188
  %i.r = fadd float %i.o, %i.q                    ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.t = load float, ptr %i.s, align 8, !tbaa !189 ; 2 uses
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
  %i.z = tail call noundef float @_ZN5ImGui19CalcWrapWidthForPosERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %i.l, float noundef %i.t)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = phi float [ %i.z, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ab = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %spec.select101, ptr noundef nonnull %.1, i1 noundef zeroext false, float noundef %i.aa) ; 2 uses
  store <2 x float> %i.ab, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ac = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.r, i64 1
  %i.ae = fadd <2 x float> %i.ad, %i.ab
  store float %i.m, ptr %4, align 8, !tbaa !190
  %.sroa_idx133 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.r, ptr %.sroa_idx133, align 4, !tbaa !190
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.ae, ptr %i.af, align 8, !tbaa !190
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef 0.000000e+00)
  %i.ag = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef 0, ptr noundef null, i32 noundef 0)
  br i1 %i.ag, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %.sroa.042.0.copyload = load <2 x float>, ptr %4, align 8, !tbaa !190
  call void @_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f(<2 x float> %.sroa.042.0.copyload, ptr noundef %spec.select101, ptr noundef nonnull %.1, float noundef %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  %i.ah = tail call noundef float @_ZN5ImGui17GetTextLineHeightEv() ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 4
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !190
  %i.aj = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.r, i64 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.am = load i8, ptr %i.al, align 8, !tbaa !191, !range !184, !noundef !185
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !192
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
  %i.ba = tail call noundef ptr @memchr(ptr noundef %.090147.us, i32 noundef 10, i64 noundef %i.az) #40 ; 2 uses
  %.not.us = icmp eq ptr %i.ba, null
  %spec.select102.us = select i1 %.not.us, ptr %.1, ptr %i.ba ; 2 uses
  %i.bb = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.090147.us, ptr noundef nonnull %spec.select102.us, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.012.0.vec.extract.us = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.bc = fcmp oge float %i.ax, %.sroa.012.0.vec.extract.us
  %i.bd = select i1 %i.bc, float %i.ax, float %.sroa.012.0.vec.extract.us ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %spec.select102.us, i64 1 ; 3 uses
  %i.bf = add nuw nsw i32 %.089148.us, 1          ; 3 uses
  %i.bg = icmp ult ptr %i.be, %.1
  %i.bh = icmp slt i32 %i.bf, %i.as
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !616

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.089148 = phi i32 [ %i.bn, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.090147 = phi ptr [ %i.bm, %.lr.ph.split ], [ %spec.select101, %.lr.ph ] ; 2 uses
  %i.bj = ptrtoint ptr %.090147 to i64
  %i.bk = sub i64 %i.v, %i.bj
  %i.bl = tail call noundef ptr @memchr(ptr noundef %.090147, i32 noundef 10, i64 noundef %i.bk) #40 ; 2 uses
  %.not = icmp eq ptr %i.bl, null
  %spec.select102 = select i1 %.not, ptr %.1, ptr %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %spec.select102, i64 1 ; 3 uses
  %i.bn = add nuw nsw i32 %.089148, 1             ; 3 uses
  %i.bo = icmp ult ptr %i.bm, %.1
  %i.bp = icmp slt i32 %i.bn, %i.as
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %.lr.ph.split, label %._crit_edge, !llvm.loop !616

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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bv = insertelement <2 x float> <float f0x7F7FFFFF, float poison>, float %i.ah, i64 1
  %i.bw = fadd <2 x float> %i.bv, %.sroa.0113.0
  %8 = shufflevector <2 x float> %.sroa.0113.0, <2 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %6, align 16, !tbaa !190
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.n
  %.3154 = phi ptr [ %.2, %bb.l ], [ %i.ch, %bb.n ] ; 5 uses
  %.sroa.0113.1153 = phi <2 x float> [ %.sroa.0113.0, %bb.l ], [ %.sroa.0113.4.vec.insert121, %bb.n ] ; 4 uses
  %i.bz = call noundef zeroext i1 @_ZN5ImGui11IsClippedExERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef 0)
  br i1 %i.bz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = ptrtoint ptr %.3154 to i64
  %i.cb = sub i64 %i.v, %i.ca
  %i.cc = call noundef ptr @memchr(ptr noundef %.3154, i32 noundef 10, i64 noundef %i.cb) #40 ; 2 uses
  %.not99 = icmp eq ptr %i.cc, null
  %spec.select103 = select i1 %.not99, ptr %.1, ptr %i.cc ; 3 uses
  %i.cd = load float, ptr %5, align 8, !tbaa !194 ; 2 uses
  %i.ce = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.3154, ptr noundef nonnull %spec.select103, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.07.0.vec.extract = extractelement <2 x float> %i.ce, i64 0 ; 2 uses
  %i.cf = fcmp oge float %i.cd, %.sroa.07.0.vec.extract
  %i.cg = select i1 %i.cf, float %i.cd, float %.sroa.07.0.vec.extract
  store float %i.cg, ptr %5, align 8, !tbaa !194
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %.sroa.0113.1153, ptr noundef %.3154, ptr noundef nonnull %spec.select103, i1 noundef zeroext false)
  %i.ch = getelementptr inbounds nuw i8, ptr %spec.select103, i64 1 ; 3 uses
  %i.ci = load float, ptr %i.bx, align 4, !tbaa !195
  %i.cj = fadd float %i.ah, %i.ci
  store float %i.cj, ptr %i.bx, align 4, !tbaa !195
  %i.ck = load float, ptr %i.by, align 4, !tbaa !196
  %i.cl = fadd float %i.ah, %i.ck
  store float %i.cl, ptr %i.by, align 4, !tbaa !196
  %.sroa.0113.4.vec.extract123 = extractelement <2 x float> %.sroa.0113.1153, i64 1
  %i.cm = fadd float %i.ah, %.sroa.0113.4.vec.extract123
  %.sroa.0113.4.vec.insert121 = insertelement <2 x float> %.sroa.0113.1153, float %i.cm, i64 1 ; 2 uses
  %i.cn = icmp ult ptr %i.ch, %.1
  br i1 %i.cn, label %bb.m, label %bb.o, !llvm.loop !617

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
  %.pre = load float, ptr %5, align 8, !tbaa !194
  br label %.lr.ph158.split.us

.lr.ph158.split.us:                               ; preds = %.lr.ph158.split.us.preheader, %.lr.ph158.split.us
  %i.cr = phi float [ %i.cx, %.lr.ph158.split.us ], [ %.pre, %.lr.ph158.split.us.preheader ] ; 2 uses
  %.085156.us = phi i32 [ %i.cz, %.lr.ph158.split.us ], [ 0, %.lr.ph158.split.us.preheader ]
  %.4155.us = phi ptr [ %i.cy, %.lr.ph158.split.us ], [ %.3.lcssa, %.lr.ph158.split.us.preheader ] ; 3 uses
  %i.cs = ptrtoint ptr %.4155.us to i64
  %i.ct = sub i64 %i.v, %i.cs
  %i.cu = call noundef ptr @memchr(ptr noundef %.4155.us, i32 noundef 10, i64 noundef %i.ct) #40 ; 2 uses
  %.not100.us = icmp eq ptr %i.cu, null
  %spec.select104.us = select i1 %.not100.us, ptr %.1, ptr %i.cu ; 2 uses
  %i.cv = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.4155.us, ptr noundef nonnull %spec.select104.us, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.02.0.vec.extract.us = extractelement <2 x float> %i.cv, i64 0 ; 2 uses
  %i.cw = fcmp oge float %i.cr, %.sroa.02.0.vec.extract.us
  %i.cx = select i1 %i.cw, float %i.cr, float %.sroa.02.0.vec.extract.us ; 2 uses
  store float %i.cx, ptr %5, align 8, !tbaa !194
  %i.cy = getelementptr inbounds nuw i8, ptr %spec.select104.us, i64 1 ; 2 uses
  %i.cz = add nuw nsw i32 %.085156.us, 1          ; 2 uses
  %i.da = icmp ult ptr %i.cy, %.1
  br i1 %i.da, label %.lr.ph158.split.us, label %._crit_edge159, !llvm.loop !618

.lr.ph158.split:                                  ; preds = %.lr.ph158, %.lr.ph158.split
  %.085156 = phi i32 [ %i.df, %.lr.ph158.split ], [ 0, %.lr.ph158 ]
  %.4155 = phi ptr [ %i.de, %.lr.ph158.split ], [ %.3.lcssa, %.lr.ph158 ] ; 2 uses
  %i.db = ptrtoint ptr %.4155 to i64
  %i.dc = sub i64 %i.v, %i.db
  %i.dd = call noundef ptr @memchr(ptr noundef %.4155, i32 noundef 10, i64 noundef %i.dc) #40 ; 2 uses
  %.not100 = icmp eq ptr %i.dd, null
  %spec.select104 = select i1 %.not100, ptr %.1, ptr %i.dd
  %i.de = getelementptr inbounds nuw i8, ptr %spec.select104, i64 1 ; 2 uses
  %i.df = add nuw nsw i32 %.085156, 1             ; 2 uses
  %i.dg = icmp ult ptr %i.de, %.1
  br i1 %i.dg, label %.lr.ph158.split, label %._crit_edge159, !llvm.loop !618

._crit_edge159:                                   ; preds = %.lr.ph158.split, %.lr.ph158.split.us, %bb.o
  %.085.lcssa = phi i32 [ 0, %bb.o ], [ %i.cz, %.lr.ph158.split.us ], [ %i.df, %.lr.ph158.split ]
  %i.dh = uitofp nneg i32 %.085.lcssa to float
  %.sroa.0113.4.vec.extract127 = extractelement <2 x float> %.sroa.0113.1.lcssa, i64 1
  %i.di = call float @llvm.fmuladd.f32(float %i.dh, float %i.ah, float %.sroa.0113.4.vec.extract127)
  %.sroa.0113.4.vec.insert125 = insertelement <2 x float> %.sroa.0113.1.lcssa, float %i.di, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %.pre171 = load float, ptr %5, align 8, !tbaa !194
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge159, %bb.k
  %i.dj = phi float [ %.pre171, %._crit_edge159 ], [ %i.bt, %bb.k ]
  %.sroa.0113.2 = phi <2 x float> [ %.sroa.0113.4.vec.insert125, %._crit_edge159 ], [ %.sroa.0113.0, %bb.k ]
  %.sroa.0113.4.vec.extract131 = extractelement <2 x float> %.sroa.0113.2, i64 1
  %i.dk = fsub float %.sroa.0113.4.vec.extract131, %i.r ; 2 uses
  store float %i.dk, ptr %i.ai, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.dl = fadd float %i.m, %i.dj
  %i.dm = fadd float %i.r, %i.dk
  %.sroa.0.0.vec.insert.i109 = insertelement <2 x float> poison, float %i.dl, i64 0
  %.sroa.0.4.vec.insert.i110 = insertelement <2 x float> %.sroa.0.0.vec.insert.i109, float %i.dm, i64 1
  store float %i.m, ptr %7, align 4, !tbaa !190
  %.sroa_idx135 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.r, ptr %.sroa_idx135, align 4, !tbaa !190
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.0.4.vec.insert.i110, ptr %i.dn, align 4, !tbaa !190
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef 0.000000e+00)
  %i.do = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef 0, ptr noundef null, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.q

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
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

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui4TextEPKcz(ptr noundef %0, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui5TextVEPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %0, ptr noundef nonnull %1)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !198
  call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef %i.j, ptr noundef %i.k, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui5TextVEPKcP13__va_list_tag.exit

_ZN5ImGui5TextVEPKcP13__va_list_tag.exit:         ; preds = %bb.a, %bb.b
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN5ImGui11CloseButtonEjRK6ImVec2:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %.sroa.0.4.vec.insert.i48 = insertelement <2 x float> %.sroa.0.0.vec.insert.i43, float %i.bn, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i48, ptr %7, align 8
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.bq, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef %i.as, float noundef %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret i1 %i.aj
}

declare void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui14CollapseButtonEjRK6ImVec2(i32 noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImRect, align 8             ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4568
  %i.g = load float, ptr %i.f, align 8, !tbaa !205
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !190 ; 2 uses
  %i.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fadd <2 x float> %i.j, %i.h
  store <2 x float> %i.h, ptr %2, align 8, !tbaa !190
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store <2 x float> %i.k, ptr %i.l, align 8, !tbaa !190
  %i.m = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %0, ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.n = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.o = load i8, ptr %i.b, align 1, !tbaa !231, !range !184, !noundef !185 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = load i8, ptr %i.a, align 1, !range !184  ; 2 uses
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = select i1 %i.p, i32 24, i32 23
  %i.t = select i1 %i.r, i32 %i.s, i32 22
  %i.u = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.t, float noundef 1.000000e+00)
  %i.v = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.w = or i8 %i.q, %i.o
  %or.cond3.not = icmp eq i8 %i.w, 0
  br i1 %or.cond3.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !202
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.y, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.l, i32 noundef %i.u, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %0, i32 noundef 2, float noundef -1.000000e+00)
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !202
  %.sroa.0.0.copyload = load <2 x float>, ptr %2, align 8, !tbaa !190
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 207
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !630, !range !184, !noundef !185
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ad, i32 1, i32 3
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.aa, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.v, i32 noundef %i.ae, float noundef 1.000000e+00)
  %i.af = call noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv()
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ag = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00)
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow(ptr noundef nonnull %i.e)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret i1 %i.n
}

declare noundef zeroext i1 @_ZN5ImGui12IsItemActiveEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN5ImGui22StartMouseMovingWindowEP11ImGuiWindow(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5ImGui20GetWindowScrollbarIDEP11ImGuiWindow9ImGuiAxis(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %.str.4..str.5 = select i1 %i.a, ptr @.str.4, ptr @.str.5
  %i.b = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %0, ptr noundef nonnull %.str.4..str.5, ptr noundef null)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @_ZN5ImGui22GetWindowScrollbarRectEP11ImGuiWindow9ImGuiAxis(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load float, ptr %i.a, align 8, !tbaa !240 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load float, ptr %i.c, align 4, !tbaa !241 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load float, ptr %i.e, align 8, !tbaa !242
  %i.g = fadd float %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load float, ptr %i.h, align 4, !tbaa !243
  %i.j = fadd float %i.d, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.sroa.0.0.copyload = load float, ptr %i.k, align 8, !tbaa !190
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 556
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !190
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !190
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 564
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !190
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.m = xor i32 %1, 1
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !190 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.r = load float, ptr %i.q, align 4, !tbaa !244
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 5.000000e-01, float 5.000000e-01)
  %i.t = fptosi float %i.s to i32
  %i.u = sitofp i32 %i.t to float                 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !245  ; 2 uses
  %i.x = and i32 %i.w, 1024
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3296
  %i.aa = load float, ptr %i.z, align 8, !tbaa !246
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.aa, float 5.000000e-01, float 5.000000e-01)
  %i.ac = fptosi float %i.ab to i32
  %i.ad = sitofp i32 %i.ac to float
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ae = and i32 %i.w, 1
  %.not26 = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not26, float 0.000000e+00, float %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = phi float [ %i.ad, %bb.b ], [ %i.af, %bb.c ]
  %i.ah = icmp eq i32 %1, 0
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = fadd float %.sroa.0.0.copyload, %i.u
  %i.aj = fadd float %i.d, %i.u                   ; 2 uses
  %i.ak = fsub float %i.j, %i.u                   ; 2 uses
  %i.al = fsub float %i.ak, %i.p                  ; 2 uses
  %i.am = fcmp oge float %i.aj, %i.al
  %i.an = select i1 %i.am, float %i.aj, float %i.al
  %i.ao = fsub float %.sroa.5.0.copyload, %i.u
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = fsub float %i.g, %i.u                   ; 2 uses
  %i.aq = fsub float %i.ap, %i.p                  ; 2 uses
  %i.ar = fcmp oge float %i.b, %i.aq
  %i.as = select i1 %i.ar, float %i.b, float %i.aq
  %i.at = fadd float %.sroa.4.0.copyload, %i.ag
  %i.au = fsub float %.sroa.6.0.copyload, %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink39 = phi float [ %i.as, %bb.f ], [ %i.ai, %bb.e ]
  %.sink38 = phi float [ %i.at, %bb.f ], [ %i.an, %bb.e ]
  %.sink37 = phi float [ %i.ap, %bb.f ], [ %i.ao, %bb.e ]
  %.sink = phi float [ %i.au, %bb.f ], [ %i.ak, %bb.e ]
  %.sroa.0.0.vec.insert29 = insertelement <2 x float> poison, float %.sink39, i64 0
  %.sroa.0.4.vec.insert31 = insertelement <2 x float> %.sroa.0.0.vec.insert29, float %.sink38, i64 1
  %.sroa.5.8.vec.insert34 = insertelement <2 x float> poison, float %.sink37, i64 0
  %.sroa.5.12.vec.insert36 = insertelement <2 x float> %.sroa.5.8.vec.insert34, float %.sink, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert31, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.5.12.vec.insert36, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, float noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.ImRect, align 16            ; 5 uses
  %5 = alloca %struct.ImRect, align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = load <2 x float>, ptr %i.c, align 8, !tbaa !190 ; 2 uses
  %i.f = load <2 x float>, ptr %i.d, align 8, !tbaa !190
  %i.g = fadd <2 x float> %i.e, %i.f
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %7 = shufflevector <2 x float> %i.e, <2 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %4, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !247  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load <2 x float>, ptr %i.j, align 8, !tbaa !190 ; 2 uses
  %i.m = load <2 x float>, ptr %i.k, align 8, !tbaa !190
  %i.n = fadd <2 x float> %i.l, %i.m
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %9 = shufflevector <2 x float> %i.l, <2 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %9, ptr %5, align 16
  %i.o = sext i32 %3 to i64                       ; 6 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !190 ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.o
  %i.s = load float, ptr %i.r, align 4, !tbaa !190
  %i.t = fcmp oeq float %i.q, %i.s
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !190 ; 2 uses
  %i.w = fcmp ule float %i.v, %i.q
  %i.x = fsub float %i.v, %2
  %i.y = fcmp ugt float %i.x, %i.q
  %or.cond = or i1 %i.w, %i.y
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float %i.q, ptr %i.u, align 4, !tbaa !190
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.o
  %i.aa = load float, ptr %i.z, align 4, !tbaa !190 ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.o
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !190
  %i.ad = fcmp oeq float %i.aa, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.o ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !190 ; 2 uses
  %i.ah = fcmp uge float %i.ag, %i.aa
  %i.ai = fadd float %2, %i.ag
  %i.aj = fcmp ult float %i.ai, %i.aa
  %or.cond33 = or i1 %i.ah, %i.aj
  br i1 %or.cond33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store float %i.aa, ptr %i.af, align 4, !tbaa !190
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui9ScrollbarE9ImGuiAxis(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImRect, align 16            ; 5 uses
  %2 = alloca %struct.ImRect, align 16            ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158  ; 13 uses
  %i.e = icmp eq i32 %0, 0                        ; 2 uses
  %.str.4..str.5.i = select i1 %i.e, ptr @.str.4, ptr @.str.5
  %i.f = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.d, ptr noundef nonnull %.str.4..str.5.i, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.i = load <2 x float>, ptr %i.g, align 8, !tbaa !190 ; 4 uses
  %i.j = load <2 x float>, ptr %i.h, align 8, !tbaa !190
  %i.k = fadd <2 x float> %i.i, %i.j              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 552 ; 2 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.l, align 8, !tbaa !190
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 556
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !190
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 560 ; 2 uses
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !190
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 564
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !190
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.n = xor i32 %0, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = load float, ptr %i.p, align 4, !tbaa !190 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  %i.s = load float, ptr %i.r, align 4, !tbaa !244
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float 5.000000e-01, float 5.000000e-01)
  %i.u = fptosi float %i.t to i32
  %i.v = sitofp i32 %i.u to float                 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !245  ; 2 uses
  %i.y = and i32 %i.x, 1024
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3296
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !246
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 5.000000e-01, float 5.000000e-01)
  %i.ad = fptosi float %i.ac to i32
  %i.ae = sitofp i32 %i.ad to float
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.af = and i32 %i.x, 1
  %.not26.i = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not26.i, float 0.000000e+00, float %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = phi float [ %i.ae, %bb.b ], [ %i.ag, %bb.c ]
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = fadd float %.sroa.0.0.copyload.i, %i.v
  %i.aj = extractelement <2 x float> %i.i, i64 1
  %i.ak = fadd float %i.aj, %i.v                  ; 2 uses
  %i.al = extractelement <2 x float> %i.k, i64 1
  %i.am = fsub float %i.al, %i.v                  ; 2 uses
  %i.an = fsub float %i.am, %i.q                  ; 2 uses
  %i.ao = fcmp oge float %i.ak, %i.an
  %i.ap = select i1 %i.ao, float %i.ak, float %i.an
  %i.aq = fsub float %.sroa.5.0.copyload.i, %i.v
  br label %_ZN5ImGui22GetWindowScrollbarRectEP11ImGuiWindow9ImGuiAxis.exit

bb.f:                                             ; preds = %bb.d
  %i.ar = extractelement <2 x float> %i.k, i64 0
  %i.as = fsub float %i.ar, %i.v                  ; 2 uses
  %i.at = fsub float %i.as, %i.q                  ; 2 uses
  %i.au = extractelement <2 x float> %i.i, i64 0  ; 2 uses
  %i.av = fcmp oge float %i.au, %i.at
  %i.aw = select i1 %i.av, float %i.au, float %i.at
  %i.ax = fadd float %.sroa.4.0.copyload.i, %i.ah
  %i.ay = fsub float %.sroa.6.0.copyload.i, %i.v
  br label %_ZN5ImGui22GetWindowScrollbarRectEP11ImGuiWindow9ImGuiAxis.exit

_ZN5ImGui22GetWindowScrollbarRectEP11ImGuiWindow9ImGuiAxis.exit: ; preds = %bb.e, %bb.f
  %.sink39.i = phi float [ %i.aw, %bb.f ], [ %i.ai, %bb.e ]
  %.sink38.i = phi float [ %i.ax, %bb.f ], [ %i.ap, %bb.e ]
  %.sink37.i = phi float [ %i.as, %bb.f ], [ %i.aq, %bb.e ]
  %.sink.i = phi float [ %i.ay, %bb.f ], [ %i.am, %bb.e ]
  %.sroa.0.0.vec.insert29.i = insertelement <2 x float> poison, float %.sink39.i, i64 0
  %.sroa.0.4.vec.insert31.i = insertelement <2 x float> %.sroa.0.0.vec.insert29.i, float %.sink38.i, i64 1
  %.sroa.5.8.vec.insert34.i = insertelement <2 x float> poison, float %.sink37.i, i64 0
  %.sroa.5.12.vec.insert36.i = insertelement <2 x float> %.sroa.5.8.vec.insert34.i, float %.sink.i, i64 1
  %3 = shufflevector <2 x float> %.sroa.0.4.vec.insert31.i, <2 x float> %.sroa.5.12.vec.insert36.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %1, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %4 = shufflevector <2 x float> %i.i, <2 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %2, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 3240
  %i.ba = load float, ptr %i.az, align 8, !tbaa !248
  %i.bb = call noundef i32 @_ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.bc = sext i32 %0 to i64                      ; 5 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.5.0..sroa_idx.i, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !190
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bc
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !190
  %i.bh = fsub float %i.be, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bc
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !190
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bc
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !190
  %i.bo = call float @llvm.fmuladd.f32(float %i.bn, float 2.000000e+00, float %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bc ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !190
  %i.bs = fptosi float %i.br to i64
  store i64 %i.bs, ptr %i.a, align 8, !tbaa !249
  %i.bt = fptosi float %i.bh to i64
  %i.bu = fptosi float %i.bo to i64
  %i.bv = call noundef zeroext i1 @_ZN5ImGui11ScrollbarExERK6ImRectj9ImGuiAxisPxxxi(ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %i.f, i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.bt, i64 noundef %i.bu, i32 noundef %i.bb) ; 0 uses
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !249
  %i.bx = sitofp i64 %i.bw to float
  store float %i.bx, ptr %i.bq, align 4, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret void
}

declare noundef i32 @_ZN5ImGui30CalcRoundingFlagsForRectInRectERK6ImRectS2_f(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11ScrollbarExERK6ImRectj9ImGuiAxisPxxxi(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.ImRect, align 16            ; 5 uses
  %8 = alloca %struct.ImRect, align 16            ; 5 uses
  %9 = alloca %struct.ImRect, align 16            ; 6 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImRect, align 4            ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %12 = alloca %struct.ImRect, align 4            ; 7 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.g = load i8, ptr %i.f, align 1, !tbaa !183, !range !184, !noundef !185
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.thread133, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !190
  %i.k = load <2 x float>, ptr %0, align 4, !tbaa !190
  %i.l = fsub <2 x float> %i.j, %i.k              ; 3 uses
  %i.m = fcmp ole <2 x float> %i.l, zeroinitializer
  %i.n = bitcast <2 x i1> %i.m to i2
  %.not = icmp eq i2 %i.n, 0
  br i1 %.not, label %bb.c, label %.thread133

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %2, 1
  %i.p = extractelement <2 x float> %i.l, i64 0   ; 4 uses
  %i.q = extractelement <2 x float> %i.l, i64 1   ; 4 uses
  %i.r = fcmp olt float %i.q, %i.p
  %or.cond126 = and i1 %i.o, %i.r
  br i1 %or.cond126, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.s = fmul float %i.p, 2.000000e+00            ; 2 uses
  %i.t = fcmp oge float %i.s, 1.000000e+00
  %i.u = select i1 %i.t, float %i.s, float 1.000000e+00
  %i.v = fdiv float %i.q, %i.u                    ; 2 uses
  %i.w = fcmp ogt float %i.v, 1.000000e+00
  %i.x = select i1 %i.w, float 1.000000e+00, float %i.v ; 2 uses
  %i.y = fcmp ugt float %i.x, 0.000000e+00
  br i1 %i.y, label %.thread, label %.thread133

.thread:                                          ; preds = %bb.d, %bb.c
  %.0118132 = phi float [ %i.x, %bb.d ], [ 1.000000e+00, %bb.c ] ; 2 uses
  %i.z = fcmp oge float %.0118132, 1.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !236
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 3348
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !631 ; 2 uses
  %i.ac = fcmp olt float %i.p, %i.q
  %i.ad = select i1 %i.ac, float %i.p, float %i.q
  %i.ae = fmul float %i.ad, 5.000000e-01          ; 2 uses
  %i.af = fcmp olt float %i.ab, %i.ae
  %i.ag = select i1 %i.af, float %i.ab, float %i.ae
  %i.ah = fptosi float %i.ag to i32
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = load <4 x float>, ptr %9, align 16, !tbaa !190 ; 2 uses
  %i.ak = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = fadd <4 x float> %i.aj, %i.al           ; 3 uses
  %i.an = fsub <4 x float> %i.aj, %i.al           ; 3 uses
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ao, ptr %9, align 16, !tbaa !190
  %i.ap = icmp eq i32 %2, 0                       ; 2 uses
  %i.aq = extractelement <4 x float> %i.am, i64 0 ; 3 uses
  %i.ar = extractelement <4 x float> %i.an, i64 2 ; 2 uses
  %i.as = fsub float %i.ar, %i.aq                 ; 3 uses
  %i.at = extractelement <4 x float> %i.am, i64 1 ; 3 uses
  %i.au = extractelement <4 x float> %i.an, i64 3 ; 2 uses
  %i.av = fsub float %i.au, %i.at                 ; 3 uses
  %i.aw = select i1 %i.ap, float %i.as, float %i.av ; 9 uses
  %i.ax = fcmp olt float %i.aw, 1.000000e+00
  br i1 %i.ax, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.ay = tail call noundef i64 @llvm.smax.i64(i64 %5, i64 %4)
  %i.az = tail call noundef i64 @llvm.smax.i64(i64 %i.ay, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.as, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.av, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %10, align 8
  %i.ba = sext i32 %2 to i64                      ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !190 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 3352
  %i.be = load float, ptr %i.bd, align 8, !tbaa !250 ; 2 uses
  %i.bf = fcmp olt float %i.bc, %i.be
  %i.bg = select i1 %i.bf, float %i.bc, float %i.be ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.bh = sitofp i64 %4 to float                  ; 3 uses
  %i.bi = uitofp nneg i64 %i.az to float
  %i.bj = fdiv float %i.bh, %i.bi
  %i.bk = fmul float %i.bj, %i.aw                 ; 3 uses
  %i.bl = fcmp olt float %i.bk, %i.bg
  %i.bm = fcmp ogt float %i.bk, %i.aw
  %i.bn = select i1 %i.bm, float %i.aw, float %i.bk
  %i.bo = select i1 %i.bl, float %i.bg, float %i.bn
  %i.bp = fptosi float %i.bo to i32
  %i.bq = sitofp i32 %i.bp to float               ; 4 uses
  %i.br = fdiv float %i.bq, %i.aw                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !236
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 3240
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !248 ; 2 uses
  %i.bu = xor i32 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !210 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.bz = load <2 x float>, ptr %i.bx, align 8, !tbaa !190 ; 2 uses
  %i.ca = load <2 x float>, ptr %i.by, align 8, !tbaa !190
  %i.cb = fadd <2 x float> %i.bz, %i.ca
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %14 = shufflevector <2 x float> %i.bz, <2 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %14, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !247 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = load <2 x float>, ptr %i.ce, align 8, !tbaa !190 ; 2 uses
  %i.ch = load <2 x float>, ptr %i.cf, align 8, !tbaa !190
  %i.ci = fadd <2 x float> %i.cg, %i.ch
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %16 = shufflevector <2 x float> %i.cg, <2 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %16, ptr %8, align 16
  %i.cj = sext i32 %i.bu to i64                   ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !190 ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.cj
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !190
  %i.co = fcmp oeq float %i.cl, %i.cn
  br i1 %i.co, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.cj ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !190 ; 2 uses
  %i.cr = fcmp ule float %i.cq, %i.cl
  %i.cs = fsub float %i.cq, %i.bt
  %i.ct = fcmp ugt float %i.cs, %i.cl
  %or.cond.i = or i1 %i.cr, %i.ct
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float %i.cl, ptr %i.cp, align 4, !tbaa !190
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %i.cj
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !190 ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %i.cj
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !190
  %i.cy = fcmp oeq float %i.cv, %i.cx
  br i1 %i.cy, label %bb.i, label %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit

bb.i:                                             ; preds = %bb.h
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cj ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !190 ; 2 uses
  %i.dc = fcmp uge float %i.db, %i.cv
  %i.dd = fadd float %i.bt, %i.db
  %i.de = fcmp ult float %i.dd, %i.cv
  %or.cond33.i = or i1 %i.dc, %i.de
  br i1 %or.cond33.i, label %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float %i.cv, ptr %i.da, align 4, !tbaa !190
  br label %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit

_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i8 0, ptr %i.a, align 1, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store i8 0, ptr %i.b, align 1, !tbaa !231
  %i.df = tail call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %1, ptr noundef null, i32 noundef 2) ; 0 uses
  %i.dg = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 262144) ; 0 uses
  %i.dh = sub nsw i64 %5, %4
  %i.di = call noundef i64 @llvm.smax.i64(i64 %i.dh, i64 1) ; 2 uses
  %i.dj = load i64, ptr %3, align 8, !tbaa !249
  %i.dk = sitofp i64 %i.dj to float
  %i.dl = uitofp nneg i64 %i.di to float          ; 3 uses
  %i.dm = fdiv float %i.dk, %i.dl                 ; 3 uses
  %i.dn = fcmp olt float %i.dm, 0.000000e+00
  %i.do = fcmp ogt float %i.dm, 1.000000e+00
  %i.dp = select i1 %i.do, float 1.000000e+00, float %i.dm
  %i.dq = select i1 %i.dn, float 0.000000e+00, float %i.dp
  %i.dr = fsub float %i.aw, %i.bq                 ; 2 uses
  %i.ds = fmul float %i.dr, %i.dq
  %i.dt = fdiv float %i.ds, %i.aw                 ; 4 uses
  %i.du = load i8, ptr %i.a, align 1, !tbaa !231, !range !184, !noundef !185
  %i.dv = trunc nuw i8 %i.du to i1                ; 3 uses
  %or.cond3 = and i1 %i.z, %i.dv
  %i.dw = fcmp olt float %i.br, 1.000000e+00
  %or.cond5 = select i1 %or.cond3, i1 %i.dw, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.x

bb.k:                                             ; preds = %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.ba
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !190
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ba
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !190
  %i.ec = fsub float %i.eb, %i.dy
  %i.ed = fdiv float %i.ec, %i.aw                 ; 3 uses
  %i.ee = fcmp olt float %i.ed, 0.000000e+00
  %i.ef = fcmp ogt float %i.ed, 1.000000e+00
  %i.eg = select i1 %i.ef, float 1.000000e+00, float %i.ed
  %i.eh = select i1 %i.ee, float 0.000000e+00, float %i.eg ; 4 uses
  %i.ei = fcmp olt float %i.eh, %i.dt
  %i.ej = fadd float %i.br, %i.dt
  %i.ek = fcmp ogt float %i.eh, %i.ej
  %i.el = zext i1 %i.ek to i32
  %i.em = select i1 %i.ei, i32 -1, i32 %i.el      ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 5440
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !230, !range !184, !noundef !185
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.l, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 9826
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !632
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.er = load i8, ptr %i.eq, align 4, !tbaa !633, !range !184, !noundef !185
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 301
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !216, !range !184, !noundef !185
  %i.ev = trunc nuw i8 %i.eu to i1
  %i.ew = trunc nsw i32 %i.em to i16
  %spec.select = select i1 %i.ev, i16 0, i16 %i.ew
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ex = phi i16 [ %spec.select, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 9826
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !632
  %i.ez = icmp eq i32 %i.em, 0
  br i1 %i.ez, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 301
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !216, !range !184, !noundef !185
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fd = fsub float %i.eh, %i.dt
  %i.fe = fneg float %i.br
  %i.ff = call float @llvm.fmuladd.f32(float %i.fe, float 5.000000e-01, float %i.fd)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p
  %i.fg = phi float [ %i.ff, %bb.p ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 9828
  store float %i.fg, ptr %i.fh, align 4, !tbaa !634
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q
  %i.fi = phi i16 [ %.pre, %._crit_edge ], [ %i.ex, %bb.q ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 9826
  %i.fk = icmp eq i16 %i.fi, 0
  br i1 %i.fk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 9828
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !634
  %i.fn = fsub float %i.eh, %i.fm
  %i.fo = fneg float %i.br
  %i.fp = call float @llvm.fmuladd.f32(float %i.fo, float 5.000000e-01, float %i.fn)
  %i.fq = fsub float 1.000000e+00, %i.br
  %i.fr = fdiv float %i.fp, %i.fq                 ; 3 uses
  %i.fs = fcmp olt float %i.fr, 0.000000e+00
  %i.ft = fcmp ogt float %i.fr, 1.000000e+00
  %i.fu = select i1 %i.ft, float 1.000000e+00, float %i.fr
  %i.fv = select i1 %i.fs, float 0.000000e+00, float %i.fu
  %i.fw = fmul float %i.fv, %i.dl
  %i.fx = fptosi float %i.fw to i64               ; 2 uses
  store i64 %i.fx, ptr %3, align 8, !tbaa !249
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.fy = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEiij(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br i1 %i.fy, label %bb.u, label %._crit_edge139

._crit_edge139:                                   ; preds = %bb.t
  %.pre140 = load i64, ptr %3, align 8, !tbaa !249
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.fz = load i16, ptr %i.fj, align 2, !tbaa !632 ; 2 uses
  %i.ga = sext i16 %i.fz to i32
  %i.gb = icmp eq i32 %i.em, %i.ga
  %.pre141 = load i64, ptr %3, align 8, !tbaa !249 ; 2 uses
  br i1 %i.gb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gc = icmp sgt i16 %i.fz, 0
  %i.gd = fneg float %i.bh
  %i.ge = select i1 %i.gc, float %i.bh, float %i.gd
  %i.gf = fptosi float %i.ge to i64
  %i.gg = add nsw i64 %.pre141, %i.gf             ; 2 uses
  %i.gh = icmp slt i64 %i.gg, 0
  %i.gi = call i64 @llvm.smin.i64(i64 %i.gg, i64 %i.di)
  %i.gj = select i1 %i.gh, i64 0, i64 %i.gi       ; 2 uses
  store i64 %i.gj, ptr %3, align 8, !tbaa !249
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge139, %bb.u, %bb.v, %bb.s
  %i.gk = phi i64 [ %.pre140, %._crit_edge139 ], [ %.pre141, %bb.u ], [ %i.gj, %bb.v ], [ %i.fx, %bb.s ]
  %i.gl = sitofp i64 %i.gk to float
  %i.gm = fdiv float %i.gl, %i.dl                 ; 3 uses
  %i.gn = fcmp olt float %i.gm, 0.000000e+00
  %i.go = fcmp ogt float %i.gm, 1.000000e+00
  %i.gp = select i1 %i.go, float 1.000000e+00, float %i.gm
  %i.gq = select i1 %i.gn, float 0.000000e+00, float %i.gp
  %i.gr = fmul float %i.dr, %i.gq
  %i.gs = fdiv float %i.gr, %i.aw
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit
  %.0117 = phi float [ %i.gs, %bb.w ], [ %i.dt, %_ZN5ImGui32ExtendHitBoxWhenNearViewportEdgeEP11ImGuiWindowP6ImRectf9ImGuiAxis.exit ] ; 2 uses
  %i.gt = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 14, float noundef 1.000000e+00)
  %i.gu = load i8, ptr %i.b, align 1, !range !184
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = select i1 %i.gv, i32 16, i32 15
  %i.gx = select i1 %i.dv, i32 17, i32 %i.gw
  %i.gy = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.gx, float noundef %.0118132)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !202
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.hc = load float, ptr %i.hb, align 8, !tbaa !251
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ha, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.i, i32 noundef %i.gt, float noundef %i.hc, i32 noundef %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  br i1 %i.ap, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hd = call noundef float @llvm.fmuladd.f32(float %i.as, float %.0117, float %i.aq) ; 2 uses
  %i.he = fadd float %i.hd, %i.bq
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.hf = call noundef float @llvm.fmuladd.f32(float %i.av, float %.0117, float %i.at) ; 2 uses
  %i.hg = fadd float %i.hf, %i.bq
  br label %bb.aa
end_hunk_1
begin_hunk_2_@_ZN5ImGui10BeginComboEPKcS1_i:bb.a
  %i.aw = fsub <2 x float> %i.at, %i.ai
  store <2 x float> %i.aw, ptr %3, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.ax = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.l, ptr noundef nonnull %4, i32 noundef 0)
  br i1 %i.ax, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ay = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.az = call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.15, i64 noundef 0, i32 noundef %i.l) ; 3 uses
  %i.ba = call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %i.az, i32 noundef 0) ; 2 uses
  %.not = xor i1 %i.ay, true
  %or.cond3 = or i1 %i.ba, %.not
  br i1 %or.cond3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = call noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef %i.az, i32 noundef 0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.087 = phi i1 [ %i.ba, %bb.m ], [ true, %bb.n ] ; 2 uses
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !231, !range !184, !noundef !185
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %i.be = select i1 %i.bd, i32 8, i32 7
  %i.bf = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.be, float noundef 1.000000e+00)
  %i.bg = load float, ptr %4, align 8, !tbaa !237 ; 2 uses
  %i.bh = load float, ptr %i.am, align 8, !tbaa !238
  %i.bi = fsub float %i.bh, %i.p                  ; 2 uses
  %i.bj = fcmp oge float %i.bg, %i.bi
  %i.bk = select i1 %i.bj, float %i.bg, float %i.bi ; 6 uses
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.l, i32 noundef 0, float noundef -1.000000e+00)
  br i1 %.not90, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bn = load float, ptr %i.au, align 4, !tbaa !196
  store float %i.bk, ptr %6, align 4, !tbaa !194
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !197
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !233
  %i.br = select i1 %.not89, i32 80, i32 240
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bm, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.bf, float noundef %i.bq, i32 noundef %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not89, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bs = or i1 %.087, %i.bd
  %i.bt = select i1 %i.bs, i32 23, i32 22
  %i.bu = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bt, float noundef 1.000000e+00)
  %i.bv = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !195
  store float %i.bk, ptr %7, align 4, !tbaa !194
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !197
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !233
  %i.cd = fcmp ole float %i.ac, %i.p
  %i.ce = select i1 %i.cd, i32 240, i32 160
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bx, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %i.am, i32 noundef %i.bu, float noundef %i.cc, i32 noundef %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.cf = fadd float %i.p, %i.bk
  %i.cg = load float, ptr %i.ae, align 4, !tbaa !206
  %i.ch = fsub float %i.cf, %i.cg
  %i.ci = load float, ptr %i.am, align 8, !tbaa !238
  %i.cj = fcmp ugt float %i.ch, %i.ci
  br i1 %i.cj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !202
  %i.cl = load float, ptr %i.af, align 8, !tbaa !203 ; 2 uses
  %i.cm = fadd float %i.bk, %i.cl
  %i.cn = load float, ptr %i.by, align 4, !tbaa !195
  %i.co = fadd float %i.cl, %i.cn
  %.sroa.099.0.vec.insert = insertelement <2 x float> poison, float %i.cm, i64 0
  %.sroa.099.4.vec.insert = insertelement <2 x float> %.sroa.099.0.vec.insert, float %i.co, i64 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.ck, <2 x float> %.sroa.099.4.vec.insert, i32 noundef %i.bv, i32 noundef 3, float noundef 1.000000e+00)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.sroa.04.0.copyload = load <2 x float>, ptr %4, align 8, !tbaa !190
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.am, align 8, !tbaa !190
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !233
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.04.0.copyload, <2 x float> %.sroa.0.0.copyload, float noundef %i.cq)
  %i.cr = and i32 %2, 1048576
  %.not91 = icmp eq i32 %i.cr, 0
  br i1 %.not91, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.t
  %i.cs = load float, ptr %i.au, align 4, !tbaa !196
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 9760
  %i.cu = load <2 x float>, ptr %4, align 8, !tbaa !190
  store <2 x float> %i.cu, ptr %i.ct, align 8, !tbaa !190
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9768
  store float %i.bk, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !190
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9772
  store float %i.cs, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !190
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %brmerge.not = and i1 %.not90, %i.t
  br i1 %brmerge.not, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 10264
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !191, !range !184, !noundef !185
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.cy = load <2 x float>, ptr %4, align 8, !tbaa !190
  %i.cz = load <2 x float>, ptr %i.ae, align 4, !tbaa !190
  %i.da = fadd <2 x float> %i.cy, %i.cz
  store <2 x float> %i.da, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.db = load float, ptr %i.au, align 4, !tbaa !196
  store float %i.bk, ptr %9, align 4, !tbaa !194
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.db, ptr %i.dc, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !190
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.y

bb.y:                                             ; preds = %.thread, %bb.u, %bb.x
  br i1 %i.an, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 3308
  %i.de = load float, ptr %i.dd, align 4, !tbaa !204
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dg = load float, ptr %i.af, align 8, !tbaa !203
  %i.dh = load <2 x float>, ptr %i.df, align 4, !tbaa !190
  %i.di = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.de, i64 1
  %i.dk = fadd <2 x float> %i.dh, %i.dj
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.dl, ptr noundef %0, ptr noundef %i.q, i1 noundef zeroext false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.087, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.h, ptr %i.g, align 8, !tbaa !325
  %i.dm = call noundef zeroext i1 @_ZN5ImGui15BeginComboPopupEjRK6ImRecti(i32 noundef %i.az, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %2)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.0 = phi i1 [ %i.dm, %bb.ab ], [ false, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.ad

bb.ad:                                            ; preds = %bb.l, %bb.ac
  %.1 = phi i1 [ %.0, %bb.ac ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  %.2 = phi i1 [ %.1, %bb.ad ], [ false, %bb.a ]
  ret i1 %.2
}

declare noundef i32 @_Z9ImHashStrPKcmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float>, <2 x float>, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui15BeginComboPopupEjRK6ImRecti(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 6 uses
  %4 = alloca %struct.ImVec2, align 8             ; 5 uses
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImRect, align 16            ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 7 uses
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %0, i32 noundef 0)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 7928
  store i32 0, ptr %i.d, align 8, !tbaa !326
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !238
  %i.g = load float, ptr %1, align 4, !tbaa !237
  %i.h = fsub float %i.f, %i.g                    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 7928
  %i.j = load i32, ptr %i.i, align 8, !tbaa !325  ; 2 uses
  %i.k = and i32 %i.j, 16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 7996 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !657 ; 2 uses
  %i.n = fcmp oge float %i.m, %i.h
  %i.o = select i1 %i.n, float %i.m, float %i.h
  store float %i.o, ptr %i.l, align 4, !tbaa !657
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.p = and i32 %2, 30
  %i.q = icmp eq i32 %i.p, 0
  %i.r = or disjoint i32 %2, 4
  %spec.select = select i1 %i.q, i32 %i.r, i32 %2 ; 4 uses
  %i.s = and i32 %spec.select, 4
  %.not37 = icmp eq i32 %i.s, 0
  br i1 %.not37, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = and i32 %spec.select, 2
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %spec.select, 8
  %.not39 = icmp eq i32 %i.u, 0
  %spec.select42 = select i1 %.not39, i32 -1, i32 20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ %spec.select42, %bb.g ], [ 8, %bb.e ], [ 4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <2 x float> splat (float f0x7F7FFFFF), ptr %4, align 8, !tbaa !190
  %i.w = and i32 %i.j, 2
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.thread44, label %bb.i

.thread44:                                        ; preds = %bb.h
  store float %i.h, ptr %3, align 8, !tbaa !194
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 7960
  %i.z = load float, ptr %i.y, align 8, !tbaa !658
  %i.aa = fcmp ugt float %i.z, 0.000000e+00
  br i1 %i.aa, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float %i.h, ptr %3, align 8, !tbaa !194
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 7964
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !659
  %i.ad = fcmp ugt float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread44, %.thread
  %i.ae = icmp slt i32 %.0, 1
  br i1 %i.ae, label %_ZL31CalcMaxPopupHeightFromItemCounti.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4568
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !205
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 3304
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !327 ; 2 uses
  %i.ak = fadd float %i.ah, %i.aj
  %i.al = uitofp nneg i32 %.0 to float
  %i.am = fneg float %i.aj
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.al, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 3232
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !328
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 2.000000e+00, float %i.an)
  br label %_ZL31CalcMaxPopupHeightFromItemCounti.exit

_ZL31CalcMaxPopupHeightFromItemCounti.exit:       ; preds = %bb.k, %bb.l
  %.0.i = phi float [ %i.aq, %bb.l ], [ f0x7F7FFFFF, %bb.k ]
  store float %.0.i, ptr %i.v, align 4, !tbaa !197
  br label %bb.m

bb.m:                                             ; preds = %_ZL31CalcMaxPopupHeightFromItemCounti.exit, %.thread
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.1 = phi i32 [ %2, %bb.d ], [ %spec.select, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 9720 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !329
  %i.at = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.as) ; 0 uses
  %i.au = call noundef ptr @_ZN5ImGui16FindWindowByNameEPKc(ptr noundef nonnull %i.a) ; 5 uses
  %.not40 = icmp eq ptr %i.au, null
  br i1 %.not40, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 205
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !660, !range !184, !noundef !185
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.ay = call <2 x float> @_ZN5ImGui25CalcWindowNextAutoFitSizeEP11ImGuiWindow(ptr noundef nonnull %i.au)
  store <2 x float> %i.ay, ptr %5, align 8
  %i.az = and i32 %.1, 1
  %.not41 = icmp eq i32 %i.az, 0
  %i.ba = select i1 %.not41, i32 3, i32 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 228 ; 2 uses
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !661
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bc = call { <2 x float>, <2 x float> } @_ZN5ImGui25GetPopupAllowedExtentRectEP11ImGuiWindow(ptr noundef nonnull %i.au) ; 2 uses
  %i.bd = extractvalue { <2 x float>, <2 x float> } %i.bc, 0
  %10 = extractvalue { <2 x float>, <2 x float> } %i.bc, 1
  %11 = shufflevector <2 x float> %i.bd, <2 x float> %10, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %11, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.be = load <4 x float>, ptr %1, align 4
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.be, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %8, align 8
  %i.bf = call <2 x float> @_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef 1)
  store <2 x float> %i.bf, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !190
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 3284
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !330
  call void @_ZN5ImGui13PushStyleVarXEif(i32 noundef 2, float noundef %i.bh)
  %i.bi = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 67109191) ; 2 uses
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  br i1 %i.bi, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bj = load i32, ptr %i.ar, align 8, !tbaa !329
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ar, align 8, !tbaa !329
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  %.135 = phi i1 [ %i.bi, %bb.t ], [ false, %bb.b ]
  ret i1 %.135
}

declare void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN5ImGui16FindWindowByNameEPKc(ptr noundef) local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui25CalcWindowNextAutoFitSizeEP11ImGuiWindow(ptr noundef) local_unnamed_addr #3

declare { <2 x float>, <2 x float> } @_ZN5ImGui25GetPopupAllowedExtentRectEP11ImGuiWindow(ptr noundef) local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16), i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN5ImGui13PushStyleVarXEif(i32 noundef, float noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui8EndComboEv() local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9720 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !329
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.f = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !331
  %i.k = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull dereferenceable(1) %i.a) #40
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui17BeginComboPreviewEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9760 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZNK6ImRect8OverlapsERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 7856
  %i.i = load i32, ptr %i.h, align 8, !tbaa !275
  %i.j = and i32 %i.i, 256
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %_ZNK6ImRect8OverlapsERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 9764
  %i.m = load float, ptr %i.l, align 4, !tbaa !195 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 628
  %i.p = load float, ptr %i.o, align 4, !tbaa !196
  %i.q = fcmp olt float %i.m, %i.p
  br i1 %i.q, label %bb.d, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 9768 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9772
  %i.t = load float, ptr %i.s, align 4, !tbaa !196
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  %i.v = load float, ptr %i.u, align 4, !tbaa !195
  %i.w = fcmp ogt float %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.x = load float, ptr %i.d, align 8, !tbaa !237 ; 2 uses
  %i.y = load float, ptr %i.n, align 4, !tbaa !238
  %i.z = fcmp olt float %i.x, %i.y
  br i1 %i.z, label %_ZNK6ImRect8OverlapsERKS_.exit, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit:                   ; preds = %bb.e
  %i.aa = load float, ptr %i.r, align 8, !tbaa !238
  %i.ab = load float, ptr %i.k, align 4, !tbaa !237
  %i.ac = fcmp ogt float %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.f:                                             ; preds = %_ZNK6ImRect8OverlapsERKS_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 9776
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !190
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !190
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 9784
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !190
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !190
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 9792
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !190
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !190
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 340
  %i.an = load float, ptr %i.am, align 4, !tbaa !332
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 9800
  store float %i.an, ptr %i.ao, align 8, !tbaa !333
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 468 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !315
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 9804
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !334
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 3284
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !190
  %i.au = insertelement <2 x float> poison, float %i.x, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.m, i64 1
  %i.aw = fadd <2 x float> %i.av, %i.at           ; 2 uses
  store <2 x float> %i.aw, ptr %i.ad, align 8, !tbaa !190
  store <2 x float> %i.aw, ptr %i.ag, align 8, !tbaa !190
  store i32 0, ptr %i.ap, align 4, !tbaa !315
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.ax, align 8, !tbaa !316
  tail call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %i.r, i1 noundef zeroext true)
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.c, %bb.d, %bb.e, %_ZNK6ImRect8OverlapsERKS_.exit, %bb.a, %bb.b, %bb.f
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.f ], [ false, %bb.b ], [ false, %_ZNK6ImRect8OverlapsERKS_.exit ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

declare void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15EndComboPreviewEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !202  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 3 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !200
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 9768
  %i.i = load float, ptr %i.h, align 8, !tbaa !662
end_hunk_2
begin_hunk_3_@_ZN5ImGui5ComboEPKcPiPFS1_PviES3_ii:bb.a
  store float %.0.i, ptr %i.w, align 4, !tbaa !197
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.g

bb.g:                                             ; preds = %_ZL31CalcMaxPopupHeightFromItemCounti.exit, %bb.d, %bb.c
  %i.x = call noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef %0, ptr noundef %.041, i32 noundef 0)
  br i1 %i.x, label %bb.h, label %bb.ae

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %8)
  invoke void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56) %8, i32 noundef %4, float noundef -1.000000e+00)
          to label %bb.i unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %1, align 4, !tbaa !208    ; 2 uses
  %i.z = add nsw i32 %i.y, 1
  invoke void @_ZN16ImGuiListClipper19IncludeItemsByIndexEii(ptr noundef nonnull align 8 dereferenceable(56) %8, i32 noundef %i.y, i32 noundef %i.z)
          to label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.preheader unwind label %.loopexit.split-lp

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.preheader: ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  br label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.loopexit: ; preds = %bb.w, %bb.k
  %.139.lcssa = phi i1 [ %.038, %bb.k ], [ %.240, %bb.w ]
  br label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit, !llvm.loop !0

_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit: ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.preheader, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.loopexit
  %.038 = phi i1 [ %.139.lcssa, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.loopexit ], [ false, %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.preheader ] ; 4 uses
  %i.ab = invoke noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit
  br i1 %i.ab, label %bb.k, label %bb.x

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %8, align 8, !tbaa !336   ; 2 uses
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !337
  %i.ae = icmp slt i32 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.loopexit

.loopexit:                                        ; preds = %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.h, %bb.ab, %bb.i, %bb.x, %bb.y, %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.lr.ph:                                           ; preds = %bb.k, %bb.w
  %.060 = phi i32 [ %i.ao, %bb.w ], [ %i.ac, %bb.k ] ; 6 uses
  %.13959 = phi i1 [ %.240, %bb.w ], [ %.038, %bb.k ] ; 2 uses
  %i.af = invoke noundef ptr %2(ptr noundef %3, i32 noundef %.060)
          to label %bb.l unwind label %bb.m       ; 2 uses

bb.l:                                             ; preds = %.lr.ph
  invoke void @_ZN5ImGui6PushIDEi(i32 noundef %.060)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.n:                                             ; preds = %bb.l
  %i.ah = icmp eq ptr %i.af, null
  %spec.store.select = select i1 %i.ah, ptr @.str.20, ptr %i.af
  %i.ai = load i32, ptr %1, align 4, !tbaa !208
  %i.aj = icmp eq i32 %.060, %i.ai                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  store <2 x float> zeroinitializer, ptr %9, align 8, !tbaa !190
  %i.ak = invoke noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %spec.store.select, i1 noundef zeroext %i.aj, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %i.ak, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.al = load i32, ptr %1, align 4, !tbaa !208
  %.not46 = icmp eq i32 %i.al, %.060
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br i1 %.not46, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.060, ptr %1, align 4, !tbaa !208
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.ad

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %bb.q, %bb.p
  %.240 = phi i1 [ true, %bb.q ], [ %.13959, %bb.p ], [ %.13959, %.critedge ] ; 2 uses
  br i1 %i.aj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5ImGui19SetItemDefaultFocusEv()
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.v:                                             ; preds = %bb.t, %bb.s
  invoke void @_ZN5ImGui5PopIDEv()
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  %i.ao = add nsw i32 %.060, 1                    ; 2 uses
  %i.ap = load i32, ptr %i.aa, align 4, !tbaa !337
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %_ZN16ImGuiListClipper18IncludeItemByIndexEi.exit.loopexit, !llvm.loop !1

bb.x:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 9720 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !329
  %i.au = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.au, ptr %i.as, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.av = invoke noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.au)
          to label %.noexc unwind label %.loopexit.split-lp ; 0 uses

.noexc:                                           ; preds = %bb.x
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 5312
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !158
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !331
  %i.ba = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.az, ptr noundef nonnull dereferenceable(1) %i.a) #40
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc
  %i.bb = invoke noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.19)
          to label %bb.aa unwind label %.loopexit.split-lp ; 0 uses

bb.z:                                             ; preds = %.noexc
  invoke void @_ZN5ImGui8EndPopupEv()
          to label %bb.aa unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br i1 %.038, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 7848
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !207
  invoke void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.bd)
          to label %bb.ac unwind label %.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.ae

bb.ad:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %bb.u, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.r ], [ %i.ag, %bb.m ], [ %i.an, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN16ImGuiListClipperD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  resume { ptr, i32 } %.pn.pn.pn

bb.ae:                                            ; preds = %bb.g, %bb.ac
  %.042 = phi i1 [ %.038, %bb.ac ], [ false, %bb.g ]
  ret i1 %.042
}

declare void @_ZN16ImGuiListClipperC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

declare void @_ZN16ImGuiListClipper5BeginEif(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, float noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef zeroext i1 @_ZN16ImGuiListClipper4StepEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare void @_ZN5ImGui6PushIDEi(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 8 uses
  %6 = alloca %struct.ImVec2, align 8             ; 6 uses
  %7 = alloca %struct.ImRect, align 8             ; 16 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %8 = alloca %struct.ImRect, align 16            ; 4 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %i.f = zext i1 %1 to i8                         ; 4 uses
  store i8 %i.f, ptr %i.a, align 1, !tbaa !231
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 35 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !158  ; 17 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 206
  store i8 1, ptr %i.j, align 2, !tbaa !182
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 209
  %i.l = load i8, ptr %i.k, align 1, !tbaa !183, !range !184, !noundef !185
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.bl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.i, ptr noundef %0, ptr noundef null) ; 12 uses
  %i.o = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.p = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.o, i1 noundef zeroext false, float noundef -1.000000e+00) ; 3 uses
  store <2 x float> %i.p, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.r = load <2 x float>, ptr %3, align 4, !tbaa !190 ; 2 uses
  %i.s = fcmp une <2 x float> %i.r, zeroinitializer
  %i.t = select <2 x i1> %i.s, <2 x float> %i.r, <2 x float> %i.p
  store <2 x float> %i.t, ptr %5, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %i.v = load i64, ptr %i.u, align 8, !tbaa !190  ; 3 uses
  store i64 %i.v, ptr %6, align 8, !tbaa !190
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  %i.x = load float, ptr %i.w, align 8, !tbaa !188
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.z = lshr i64 %i.v, 32
  %i.aa = trunc nuw i64 %i.z to i32
  %i.ab = bitcast i32 %i.aa to float
  %i.ac = fadd float %i.x, %i.ab                  ; 5 uses
  store float %i.ac, ptr %i.y, align 4, !tbaa !197
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %5, float noundef 0.000000e+00)
  %i.ad = and i32 %2, 2
  %.not160 = icmp eq i32 %i.ad, 0                 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 600 ; 2 uses
  %.in = select i1 %.not160, ptr %6, ptr %i.ae
  %i.af = load float, ptr %.in, align 4, !tbaa !194 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 608 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 592 ; 2 uses
  %i.ai = load float, ptr %3, align 4, !tbaa !194
  %i.aj = fcmp une float %i.ai, 0.000000e+00
  %i.ak = and i32 %2, 16777216
  %.not162 = icmp eq i32 %i.ak, 0
  %or.cond182 = and i1 %.not162, %i.aj
  %i.al = trunc i64 %i.v to i32
  %i.am = bitcast i32 %i.al to float
  br i1 %or.cond182, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load float, ptr %5, align 8, !tbaa !194
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.an = extractelement <2 x float> %i.p, i64 0  ; 2 uses
  %.in161 = select i1 %.not160, ptr %i.ah, ptr %i.ag
  %i.ao = load float, ptr %.in161, align 8, !tbaa !190
  %i.ap = fsub float %i.ao, %i.af                 ; 2 uses
  %i.aq = fcmp oge float %i.an, %i.ap
  %i.ar = select i1 %i.aq, float %i.an, float %i.ap ; 2 uses
  store float %i.ar, ptr %5, align 8, !tbaa !194
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.as = phi float [ %.pre, %._crit_edge ], [ %i.ar, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.at = fadd float %i.af, %i.as                 ; 2 uses
  %i.au = load float, ptr %i.q, align 4, !tbaa !197
  %i.av = fadd float %i.ac, %i.au                 ; 2 uses
  store float %i.af, ptr %7, align 8, !tbaa !194
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  store float %i.ac, ptr %i.aw, align 4, !tbaa !197
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store float %i.at, ptr %i.ax, align 8, !tbaa !194
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  store float %i.av, ptr %i.ay, align 4, !tbaa !197
  %i.az = and i32 %2, 67108864
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %.not160, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 3300
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !308
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bd = phi float [ %i.bc, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 3304
  %i.bf = load float, ptr %i.be, align 8, !tbaa !320 ; 2 uses
  %i.bg = fmul float %i.bd, 5.000000e-01
  %i.bh = fptosi float %i.bg to i32
  %i.bi = sitofp i32 %i.bh to float               ; 2 uses
  %i.bj = fmul float %i.bf, 5.000000e-01
  %i.bk = fptosi float %i.bj to i32
  %i.bl = sitofp i32 %i.bk to float               ; 2 uses
  %i.bm = fsub float %i.af, %i.bi
  store float %i.bm, ptr %7, align 8, !tbaa !237
  %i.bn = fsub float %i.ac, %i.bl
  store float %i.bn, ptr %i.aw, align 4, !tbaa !195
  %i.bo = fsub float %i.bd, %i.bi
  %i.bp = fadd float %i.at, %i.bo
  store float %i.bp, ptr %i.ax, align 8, !tbaa !238
  %i.bq = fsub float %i.bf, %i.bl
  %i.br = fadd float %i.av, %i.bq
  store float %i.br, ptr %i.ay, align 4, !tbaa !196
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.bs = and i32 %2, 8                           ; 2 uses
  %.not163 = icmp eq i32 %i.bs, 0
  %i.bt = shl nuw nsw i32 %i.bs, 3                ; 2 uses
  br i1 %.not160, label %bb.i, label %.split

.split:                                           ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 616 ; 3 uses
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !338
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 624 ; 3 uses
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !339
  %i.by = load float, ptr %i.ae, align 8, !tbaa !340
  store float %i.by, ptr %i.bu, align 8, !tbaa !338
  %i.bz = load float, ptr %i.ag, align 8, !tbaa !341
  store float %i.bz, ptr %i.bw, align 8, !tbaa !339
  %i.ca = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.n, ptr noundef null, i32 noundef %i.bt)
  store float %i.bv, ptr %i.bu, align 8, !tbaa !338
  store float %i.bx, ptr %i.bw, align 8, !tbaa !339
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 7852 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !255
  %i.cd = and i32 %i.cc, 4194304
  %.not164189 = icmp eq i32 %i.cd, 0              ; 2 uses
  br i1 %i.ca, label %bb.o, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ce = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.n, ptr noundef null, i32 noundef %i.bt)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 7852 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !255
  %i.ch = and i32 %i.cg, 4194304
  %.not164 = icmp eq i32 %i.ch, 0                 ; 2 uses
  br i1 %i.ce, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.split, %bb.i
  %.not164192 = phi i1 [ %.not164189, %.split ], [ %.not164, %bb.i ]
  %i.ci = phi ptr [ %i.cb, %.split ], [ %i.cf, %bb.i ]
  br i1 %.not164192, label %_ZNK6ImRect8OverlapsERKS_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 9216
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !256, !range !184, !noundef !185
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.l, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 9220
  %i.cn = load float, ptr %i.aw, align 4, !tbaa !195
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 9228
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 9232
  %i.cq = load float, ptr %i.cp, align 8, !tbaa !196
  %i.cr = fcmp olt float %i.cn, %i.cq
  br i1 %i.cr, label %bb.m, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.cs = load float, ptr %i.ay, align 4, !tbaa !196
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 9224
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !195
  %i.cv = fcmp ogt float %i.cs, %i.cu
  br i1 %i.cv, label %bb.n, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cw = load float, ptr %7, align 8, !tbaa !237
  %i.cx = load float, ptr %i.co, align 4, !tbaa !238
  %i.cy = fcmp olt float %i.cw, %i.cx
  br i1 %i.cy, label %_ZNK6ImRect8OverlapsERKS_.exit, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit:                   ; preds = %bb.n
  %i.cz = load float, ptr %i.ax, align 8, !tbaa !238
  %i.da = load float, ptr %i.cm, align 4, !tbaa !237
  %i.db = fcmp ogt float %i.cz, %i.da
  br i1 %i.db, label %bb.o, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.o:                                             ; preds = %.split, %_ZNK6ImRect8OverlapsERKS_.exit, %bb.i
  %.not164193 = phi i1 [ %.not164189, %.split ], [ false, %_ZNK6ImRect8OverlapsERKS_.exit ], [ %.not164, %bb.i ] ; 3 uses
  %i.dc = phi ptr [ %i.cb, %.split ], [ %i.ci, %_ZNK6ImRect8OverlapsERKS_.exit ], [ %i.cf, %bb.i ] ; 2 uses
  %.0153.in191 = phi i1 [ true, %.split ], [ false, %_ZNK6ImRect8OverlapsERKS_.exit ], [ true, %bb.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 7784
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !342
  %i.df = and i32 %i.de, 64
  %i.dg = icmp ne i32 %i.df, 0
  %or.cond = select i1 %.not163, i1 true, i1 %i.dg ; 2 uses
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not160, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 8984
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !283
  %.not = icmp eq ptr %i.di, null
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5ImGui26TablePushBackgroundChannelEv()
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 456
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !318
  %.not165 = icmp eq ptr %i.dk, null
  br i1 %.not165, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5ImGui21PushColumnsBackgroundEv()
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.g, i64 7856 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !275
  %i.dn = or i32 %i.dm, 512
  store i32 %i.dn, ptr %i.dl, align 8, !tbaa !275
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 616
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 7908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %i.do, i64 16, i1 false), !tbaa.struct !236
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.dq = lshr i32 %2, 3
  %spec.select = and i32 %i.dq, 131072
  %i.dr = lshr i32 %2, 7
  %i.ds = and i32 %i.dr, 1048576
  %spec.select194 = or disjoint i32 %spec.select, %i.ds
  %i.dt = lshr i32 %2, 18
  %i.du = and i32 %i.dt, 16
  %spec.select208 = or disjoint i32 %spec.select194, %i.du
  %i.dv = lshr i32 %2, 16
  %i.dw = and i32 %i.dv, 128
  %i.dx = or disjoint i32 %spec.select208, %i.dw  ; 2 uses
  %i.dy = and i32 %2, 4
  %.not170 = icmp eq i32 %i.dy, 0
  %i.dz = or disjoint i32 %i.dx, 288
  %i.ea = select i1 %.not170, i32 %i.dx, i32 %i.dz ; 3 uses
  store i32 %i.ea, ptr %i.b, align 4, !tbaa !208
  %i.eb = and i32 %2, 16
  %.not171 = icmp eq i32 %i.eb, 0
  br i1 %.not171, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ec = load i32, ptr %i.dc, align 4, !tbaa !255
  %i.ed = and i32 %i.ec, 16384
  %.not172 = icmp eq i32 %i.ed, 0
  br i1 %.not172, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ee = or i32 %i.ea, 4096                      ; 2 uses
  store i32 %i.ee, ptr %i.b, align 4, !tbaa !208
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ef = phi i32 [ %i.ee, %bb.y ], [ %i.ea, %bb.x ]
  br i1 %.not164193, label %.critedge, label %.split206

.split206:                                        ; preds = %bb.z
  call void @_ZN5ImGui21MultiSelectItemHeaderEjPbPi(i32 noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.eg = load i32, ptr %i.b, align 4, !tbaa !208
  %i.eh = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.n, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.eg)
  %i.ei = zext i1 %i.eh to i8
  store i8 %i.ei, ptr %i.e, align 1, !tbaa !231
  call void @_ZN5ImGui21MultiSelectItemFooterEjPbS0_i(i32 noundef %i.n, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i32 noundef 0)
  %.pre195 = load i8, ptr %i.e, align 1, !tbaa !231, !range !184
  %i.ej = trunc nuw i8 %.pre195 to i1
  br i1 %i.ej, label %bb.af, label %bb.ae

.critedge:                                        ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.ek = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.n, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.ef)
  %i.el = and i32 %2, 64
  %.not173 = icmp eq i32 %i.el, 0
  br i1 %.not173, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 8684
  %i.en = load i32, ptr %i.em, align 4, !tbaa !268 ; 2 uses
  %.not174 = icmp eq i32 %i.en, 0
  br i1 %.not174, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 8688
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !343
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 7780
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !344
  %i.es = icmp eq i32 %i.ep, %i.er
  %i.et = icmp eq i32 %i.en, %i.n
  %or.cond183 = and i1 %i.et, %i.es
  br i1 %or.cond183, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eu = getelementptr inbounds nuw i8, ptr %i.g, i64 8692
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !345
  %i.ew = and i32 %i.ev, 4096
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %.thread202, label %bb.ad

.thread202:                                       ; preds = %bb.ac
  store i8 1, ptr %i.a, align 1, !tbaa !231
  br label %bb.af

bb.ad:                                            ; preds = %.critedge, %bb.aa, %bb.ab, %bb.ac
  br i1 %i.ek, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.split206, %bb.ad
  %i.ey = load i8, ptr %i.c, align 1, !tbaa !231, !range !184, !noundef !185
  %i.ez = trunc nuw i8 %i.ey to i1
  %i.fa = and i32 %2, 33554432
  %.not175 = icmp ne i32 %i.fa, 0
  %or.cond185.not = and i1 %.not175, %i.ez
  br i1 %or.cond185.not, label %bb.af, label %.thread

bb.af:                                            ; preds = %.split206, %.thread202, %bb.ae, %bb.ad
  %.0152.not205 = phi i1 [ false, %.thread202 ], [ false, %bb.ae ], [ true, %bb.ad ], [ true, %.split206 ] ; 2 uses
  %i.fb = phi i1 [ true, %.thread202 ], [ false, %bb.ae ], [ true, %bb.ad ], [ true, %.split206 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 8217
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !223, !range !184, !noundef !185
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ff = getelementptr inbounds nuw i8, ptr %i.g, i64 8224
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !346
  %i.fh = icmp eq ptr %i.fg, %i.i
  br i1 %i.fh, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 8236
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !347 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 368
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !348
  %i.fm = icmp eq i32 %i.fj, %i.fl
  br i1 %i.fm, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fn = getelementptr inbounds nuw i8, ptr %i.g, i64 7780
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !344
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.fp = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  %i.fq = load <2 x float>, ptr %i.fp, align 8, !tbaa !190
  %i.fr = load <2 x float>, ptr %7, align 8, !tbaa !190
  %i.fs = load <2 x float>, ptr %i.ax, align 8, !tbaa !190
  %10 = shufflevector <2 x float> %i.fr, <2 x float> %i.fs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <2 x float> %i.fq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %12 = fsub <4 x float> %10, %11
  store <4 x float> %12, ptr %8, align 16
  call void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef %i.n, i32 noundef %i.fj, i32 noundef %i.fo, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.ft = getelementptr inbounds nuw i8, ptr %i.g, i64 118
  %i.fu = load i8, ptr %i.ft, align 2, !tbaa !220, !range !184, !noundef !185
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fw = getelementptr inbounds nuw i8, ptr %i.g, i64 8216
  store i8 0, ptr %i.fw, align 8, !tbaa !221
  br label %bb.ak

bb.ak:                                            ; preds = %bb.af, %bb.ag, %bb.ah, %bb.aj, %bb.ai
  br i1 %i.fb, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.n)
  br label %.thread

.thread:                                          ; preds = %bb.ae, %bb.al, %bb.ak
  %.0152.not204 = phi i1 [ false, %bb.ae ], [ %.0152.not205, %bb.al ], [ %.0152.not205, %bb.ak ]
  %i.fx = phi i1 [ false, %bb.ae ], [ true, %bb.al ], [ false, %bb.ak ]
  %i.fy = load i8, ptr %i.a, align 1, !tbaa !231, !range !184, !noundef !185 ; 2 uses
  %.not176 = icmp eq i8 %i.fy, %i.f
  br i1 %.not176, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.thread
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 7856 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !275
  %i.gb = or i32 %i.ga, 8
  store i32 %i.gb, ptr %i.fz, align 8, !tbaa !275
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 5428
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !218
  %i.ge = icmp eq i32 %i.gd, %i.n
  br i1 %i.ge, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.gf = getelementptr inbounds nuw i8, ptr %i.g, i64 5440
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !230, !range !184, !noundef !185
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 5441
  store i8 %i.f, ptr %i.gi, align 1, !tbaa !667
  %.not186 = xor i1 %1, true
  %brmerge = select i1 %.not186, i1 true, i1 %.not164193
  br i1 %brmerge, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 9304
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !257
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 87
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !349, !range !184, !noundef !185
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.gn = phi i8 [ %i.f, %bb.ap ], [ %i.gm, %bb.aq ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 5442
  store i8 %i.gn, ptr %i.go, align 2, !tbaa !668
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao, %bb.an
  br i1 %.0153.in191, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.gp = load i8, ptr %i.c, align 1, !tbaa !231, !range !184, !noundef !185
  %i.gq = trunc nuw i8 %i.gp to i1
  %i.gr = and i32 %2, 32
  %i.gs = icmp ne i32 %i.gr, 0
  %i.gt = or i1 %i.gs, %i.gq                      ; 2 uses
  %i.gu = trunc nuw i8 %i.fy to i1
  %or.cond3 = or i1 %i.gt, %i.gu
  br i1 %or.cond3, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gv = load i8, ptr %i.d, align 1, !tbaa !231, !range !184, !noundef !185
  %i.gw = trunc nuw i8 %i.gv to i1
  %i.gx = select i1 %i.gw, i32 27, i32 26
  %i.gy = select i1 %i.gt, i32 %i.gx, i32 25
  %i.gz = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.gy, float noundef 1.000000e+00)
  %.sroa.013.0.copyload = load <2 x float>, ptr %7, align 8, !tbaa !190
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ax, align 8, !tbaa !190
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 3432
  %i.hb = load float, ptr %i.ha, align 8, !tbaa !350
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.013.0.copyload, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.gz, i1 noundef zeroext false, float noundef %i.hb)
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 8220
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !222
  %i.he = icmp eq i32 %i.hd, %i.n
  br i1 %i.he, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %spec.select187 = select i1 %.not164193, i32 2, i32 6
  %i.hf = getelementptr inbounds nuw i8, ptr %i.g, i64 3432
  %i.hg = load float, ptr %i.hf, align 8, !tbaa !350
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %i.n, i32 noundef %spec.select187, float noundef %i.hg)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw, %bb.as
  br i1 %.not160, label %bb.bc, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hh = getelementptr inbounds nuw i8, ptr %i.g, i64 8984
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !283
  %.not177 = icmp eq ptr %i.hi, null
  br i1 %.not177, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5ImGui25TablePopBackgroundChannelEv()
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.hj = getelementptr inbounds nuw i8, ptr %i.i, i64 456
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !318
  %.not178 = icmp eq ptr %i.hk, null
  br i1 %.not178, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN5ImGui20PopColumnsBackgroundEv()
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.bb, %bb.ba, %bb.ax
  br i1 %.0153.in191, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.hl = load float, ptr %5, align 8, !tbaa !194
  %i.hm = fadd float %i.hl, %i.am                 ; 2 uses
  %i.hn = load float, ptr %i.ah, align 8, !tbaa !317 ; 2 uses
  %i.ho = fcmp olt float %i.hm, %i.hn
  %i.hp = select i1 %i.ho, float %i.hm, float %i.hn
  %i.hq = load float, ptr %i.q, align 4, !tbaa !197
  %i.hr = fadd float %i.ac, %i.hq
  store float %i.hp, ptr %9, align 4, !tbaa !194
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.hr, ptr %i.hs, align 4, !tbaa !197
  %i.ht = getelementptr inbounds nuw i8, ptr %i.g, i64 3464
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef %0, ptr noundef %i.o, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(8) %i.ht, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %.0152.not204, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.hu = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !245
  %i.hw = and i32 %i.hv, 67108864
  %.not179 = icmp ne i32 %i.hw, 0
  %i.hx = and i32 %2, 1
  %.not180 = icmp eq i32 %i.hx, 0
  %or.cond188 = and i1 %.not180, %.not179
  br i1 %or.cond188, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hy = load i32, ptr %i.dc, align 4, !tbaa !255
  %i.hz = and i32 %i.hy, 16
  %.not181 = icmp eq i32 %i.hz, 0
  br i1 %.not181, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN5ImGui17CloseCurrentPopupEv()
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be
  br i1 %or.cond, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN5ImGui11EndDisabledEv()
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.l, %bb.m, %bb.n, %bb.j, %bb.k, %_ZNK6ImRect8OverlapsERKS_.exit, %bb.bk
  %.0151 = phi i1 [ %i.fx, %bb.bk ], [ false, %_ZNK6ImRect8OverlapsERKS_.exit ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.bl

bb.bl:                                            ; preds = %bb.a, %_ZNK6ImRect8OverlapsERKS_.exit.thread
  %.1 = phi i1 [ %.0151, %_ZNK6ImRect8OverlapsERKS_.exit.thread ], [ false, %bb.a ]
  ret i1 %.1
}

declare void @_ZN5ImGui19SetItemDefaultFocusEv() local_unnamed_addr #3

declare void @_ZN5ImGui5PopIDEv() local_unnamed_addr #3
end_hunk_3
begin_hunk_4_@_Z32ImParseFormatSanitizeForPrintingPKcPcm:bb.a
  %.014.lcssa = phi ptr [ %1, %_Z20ImParseFormatFindEndPKc.exit ], [ %1, %bb.a ], [ %.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.1.3, %bb.m ]
  store i8 0, ptr %.014.lcssa, align 1, !tbaa !351
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_Z22ImParseFormatPrecisionPKci(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !351     ; 2 uses
  %.not24.i = icmp eq i8 %i.a, 0
  br i1 %.not24.i, label %_Z22ImParseFormatFindStartPKc.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.pr = phi i8 [ %i.f, %bb.c ], [ %i.a, %bb.a ]
  %.01025.i = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ] ; 3 uses
  %i.b = icmp eq i8 %.pr, 37                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.01025.i, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !351
  %.not15.i = icmp eq i8 %i.d, 37
  br i1 %.not15.i, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %spec.select.idx.i = zext i1 %i.b to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.01025.i, i64 %spec.select.idx.i
  %i.e = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !351   ; 2 uses
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %_Z22ImParseFormatFindStartPKc.exit.thread, label %.lr.ph.i

.preheader:                                       ; preds = %bb.b, %.preheader
  %.pn = phi ptr [ %.018, %.preheader ], [ %.01025.i, %bb.b ] ; 2 uses
  %.018 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.g = load i8, ptr %.018, align 1, !tbaa !351  ; 3 uses
  %i.h = add i8 %i.g, -48
  %or.cond23 = icmp ult i8 %i.h, 10
  br i1 %or.cond23, label %.preheader, label %.critedge, !llvm.loop !4

.critedge:                                        ; preds = %.preheader
  %i.i = icmp eq i8 %i.g, 46
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !351
  %.not.i24 = icmp eq i8 %i.k, 45                 ; 2 uses
  %spec.select.idx.i25 = zext i1 %.not.i24 to i64
  %spec.select.i26 = getelementptr inbounds nuw i8, ptr %i.j, i64 %spec.select.idx.i25 ; 2 uses
  %i.l = load i8, ptr %spec.select.i26, align 1, !tbaa !351
  %i.m = icmp eq i8 %i.l, 43
  %.1.idx.i = zext i1 %i.m to i64
  %.1.i = getelementptr inbounds nuw i8, ptr %spec.select.i26, i64 %.1.idx.i ; 2 uses
  %i.n = load i8, ptr %.1.i, align 1, !tbaa !351  ; 3 uses
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
  %i.u = load i8, ptr %i.r, align 1, !tbaa !351   ; 3 uses
  %i.v = add i8 %i.u, -48
  %or.cond.i = icmp ult i8 %i.v, 10
  br i1 %or.cond.i, label %.lr.ph.i27, label %_ZL6ImAtoiIiEPKcS1_PT_.exit, !llvm.loop !5

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

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui13TempInputTextERK6ImRectjPKcPcmiPFiP26ImGuiInputTextCallbackDataEPv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9568
  %i.e = load i32, ptr %i.d, align 8, !tbaa !364
  %i.f = icmp eq i32 %i.e, %1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9704 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !363
  %i.i = icmp eq i32 %i.h, %1                     ; 2 uses
  %or.cond = select i1 %i.i, i1 true, i1 %i.f     ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !190
  %i.l = load i64, ptr %0, align 4, !tbaa !190
  store i64 %i.l, ptr %i.j, align 8, !tbaa !190
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 7852 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !255
  %i.o = or i32 %i.n, 32
  store i32 %i.o, ptr %i.m, align 4, !tbaa !255
  %i.p = trunc i64 %4 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !190
  %i.s = load <2 x float>, ptr %0, align 4, !tbaa !190
  %i.t = fsub <2 x float> %i.r, %i.s
  store <2 x float> %i.t, ptr %8, align 8
  %i.u = or i32 %5, 134221824
  %i.v = call noundef zeroext i1 @_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %i.u, ptr noundef %6, ptr noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  tail call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %1)
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.x = load i32, ptr %i.w, align 4, !tbaa !218
  store i32 %i.x, ptr %i.g, align 8, !tbaa !363
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.z = load i32, ptr %i.y, align 4, !tbaa !218
  %.not = icmp eq i32 %i.z, %1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.g, align 8, !tbaa !363
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store i64 %i.k, ptr %i.j, align 8, !tbaa !190
  ret i1 %i.v
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %struct.ImRect, align 8             ; 5 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImRect, align 8            ; 16 uses
  %12 = alloca %struct.ImRect, align 8            ; 8 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %15 = alloca %struct.ImVector.37, align 8       ; 15 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [5 x i8], align 1                 ; 6 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %16 = alloca %struct.ImGuiInputTextCallbackData, align 8 ; 18 uses
  %17 = alloca %struct.ImGuiInputTextCallbackData, align 8 ; 13 uses
  %18 = alloca %struct.ImVec2, align 8            ; 15 uses
  %19 = alloca %struct.ImRect, align 16           ; 9 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i32, align 4                      ; 16 uses
  %20 = alloca %struct.ImRect, align 16           ; 6 uses
  %21 = alloca %struct.ImVec2, align 8            ; 4 uses
  %22 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.i = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 132 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 5312 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !158  ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 206
  store i8 1, ptr %i.l, align 2, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 209
  %i.n = load i8, ptr %i.m, align 1, !tbaa !183, !range !184, !noundef !185
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.qr, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.q = and i32 %5, 67108864
  %i.r = icmp ne i32 %i.q, 0                      ; 31 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui10BeginGroupEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.k, ptr noundef %0, ptr noundef null) ; 77 uses
  %i.t = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.u = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.t, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  %.sroa.0810.0.copyload = load <2 x float>, ptr %4, align 4, !tbaa !190
  %i.v = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 4568
  %i.x = load float, ptr %i.w, align 8, !tbaa !205
  %i.y = fmul float %i.x, 8.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.0811.4.vec.extract = extractelement <2 x float> %i.u, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = phi float [ %i.y, %bb.e ], [ %.sroa.0811.4.vec.extract, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 3284 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 3288 ; 8 uses
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !203
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float 2.000000e+00, float %i.z)
  %i.ae = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.0810.0.copyload, float noundef %i.v, float noundef %i.ad) ; 6 uses
  %.sroa.01509.0.vec.extract1511 = extractelement <2 x float> %i.ae, i64 0 ; 4 uses
  %.sroa.0811.0.vec.extract = extractelement <2 x float> %i.u, i64 0 ; 2 uses
  %i.af = fcmp ogt float %.sroa.0811.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 3308
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !204
  %i.ai = fadd float %.sroa.0811.0.vec.extract, %i.ah
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aj = phi float [ %i.ai, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ak = fadd float %.sroa.01509.0.vec.extract1511, %i.aj
  %.sroa.01509.4.vec.extract1517 = extractelement <2 x float> %i.ae, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 280 ; 2 uses
  %i.am = load <2 x float>, ptr %i.al, align 4, !tbaa !190 ; 6 uses
  %i.an = fadd <2 x float> %i.ae, %i.am
  store <2 x float> %i.am, ptr %11, align 8, !tbaa !190
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store <2 x float> %i.an, ptr %i.ao, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 4
  store <2 x float> %i.am, ptr %12, align 8, !tbaa !190
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = load float, ptr %i.ab, align 8, !tbaa !203 ; 2 uses
  %i.as = insertelement <2 x float> %i.ae, float %i.ak, i64 0
  %i.at = fadd <2 x float> %i.as, %i.am           ; 2 uses
  store <2 x float> %i.at, ptr %i.aq, align 8, !tbaa !190
  %i.au = fsub <2 x float> %i.at, %i.am           ; 2 uses
  br i1 %i.r, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  store <2 x float> %i.au, ptr %10, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %10, float noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 9568
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !364
  %i.ax = icmp eq i32 %i.aw, %i.s
  br i1 %i.ax, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 5428
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !218
  %i.ba = icmp eq i32 %i.az, %i.s
  br i1 %i.ba, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k, %bb.j
  %i.bb = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.s, ptr noundef nonnull %11, i32 noundef 1048576) ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 8244
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !224
  %i.be = icmp eq i32 %i.s, %i.bd                 ; 2 uses
  %i.bf = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.s, ptr noundef nonnull %11, i32 noundef 1048576)
  %or.cond = select i1 %i.bf, i1 true, i1 %i.be
  br i1 %or.cond, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.l
  call void @_ZN5ImGui8EndGroupEv()
  br label %bb.qq

bb.m:                                             ; preds = %.thread, %bb.l
  %i.bg = phi i1 [ true, %.thread ], [ %i.be, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 7848
  %.sroa.51497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 7852 ; 2 uses
  %.sroa.51497.0.copyload = load i32, ptr %.sroa.51497.0..sroa_idx, align 4, !tbaa !208 ; 2 uses
  %.sroa.71499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 7856 ; 2 uses
  %.sroa.71499.0.copyload = load i32, ptr %.sroa.71499.0..sroa_idx, align 8, !tbaa !208 ; 2 uses
  store <2 x float> %i.am, ptr %i.al, align 8, !tbaa !190
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 8244 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !224 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, %i.s
  br i1 %i.bk, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 8256
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !229
  %i.bn = and i32 %i.bm, 40
  %or.cond1345 = icmp ne i32 %i.bn, 8
  %i.bo = and i32 %5, 32
  %.not1289 = icmp eq i32 %i.bo, 0
  %or.cond1346 = or i1 %.not1289, %or.cond1345
  br i1 %or.cond1346, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bi, align 4, !tbaa !224
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.bp = phi i32 [ 0, %bb.o ], [ %i.s, %bb.n ], [ %i.bj, %bb.m ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 5428
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !218
  %i.bs = icmp eq i32 %i.br, %i.s
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bi, align 4, !tbaa !224
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 3644
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(16) %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 3292
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !233
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 7, float noundef %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 3296
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !307
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 8, float noundef %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  store <2 x float> zeroinitializer, ptr %13, align 8, !tbaa !190
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.by = load <2 x float>, ptr %i.ao, align 8, !tbaa !190
  %i.bz = load <2 x float>, ptr %11, align 8, !tbaa !190
  %i.ca = fsub <2 x float> %i.by, %i.bz
  store <2 x float> %i.ca, ptr %14, align 8
  %i.cb = call noundef zeroext i1 @_ZN5ImGui12BeginChildExEPKcjRK6ImVec2ii(ptr noundef %0, i32 noundef %i.s, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef 1, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  store i32 %i.bp, ptr %i.bi, align 4, !tbaa !224
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 3)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  %or.cond3 = select i1 %i.cb, i1 true, i1 %i.bg
  br i1 %or.cond3, label %.thread1521, label %bb.s

.thread1521:                                      ; preds = %bb.r
  %i.cc = load ptr, ptr %i.j, align 8, !tbaa !158 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 280 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 368
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !348
  %i.cg = shl nuw i32 1, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 374 ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !691
  %i.cj = trunc i32 %i.cg to i16
  %i.ck = or i16 %i.ci, %i.cj
  store i16 %i.ck, ptr %i.ch, align 2, !tbaa !691
  %i.cl = load <2 x float>, ptr %i.aa, align 4, !tbaa !190
  %i.cm = load <2 x float>, ptr %i.cd, align 8, !tbaa !190
  %i.cn = fadd <2 x float> %i.cl, %i.cm
  store <2 x float> %i.cn, ptr %i.cd, align 8, !tbaa !190
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 192
  %i.cp = load float, ptr %i.co, align 8, !tbaa !692
  %i.cq = fsub float %.sroa.01509.0.vec.extract1511, %i.cp
  store i32 %i.s, ptr %i.bh, align 8, !tbaa !207
  store i32 %.sroa.51497.0.copyload, ptr %.sroa.51497.0..sroa_idx, align 4, !tbaa !255
  store i32 %.sroa.71499.0.copyload, ptr %.sroa.71499.0..sroa_idx, align 8, !tbaa !275
  br label %bb.v

bb.s:                                             ; preds = %bb.r
end_hunk_4
begin_hunk_5_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !400 ; 2 uses
  %i.ans = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.anr, ptr noundef nonnull dereferenceable(1) %2) #40
  %.not1332 = icmp eq i32 %i.ans, 0
  br i1 %.not1332, label %.thread1572, label %.thread1572.sink.split

bb.kx:                                            ; preds = %bb.kv
  %i.ant = trunc nuw i8 %.3125817891822 to i1
  %or.cond145 = select i1 %.2123517981818, i1 true, i1 %i.ant
  %or.cond148 = or i1 %or.cond145, %.1123018001817
  br i1 %or.cond148, label %bb.ky, label %.thread1572

bb.ky:                                            ; preds = %bb.kx
  %i.anu = getelementptr inbounds nuw i8, ptr %.012601537, i64 32
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !400 ; 2 uses
  %i.anw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.anv, ptr noundef nonnull dereferenceable(1) %2) #40
  %.not1646 = icmp eq i32 %i.anw, 0
  br i1 %.not1646, label %.thread1572, label %.thread1572.sink.split

.thread1572.sink.split:                           ; preds = %bb.ky, %bb.kw
  %.11219.ph = phi ptr [ %i.anr, %bb.kw ], [ %i.anv, %bb.ky ]
  %i.anx = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %i.any = load i32, ptr %i.anx, align 8, !tbaa !377
  br label %.thread1572

.thread1572:                                      ; preds = %.thread1572.sink.split, %bb.fk, %bb.kx, %bb.ky, %bb.ku, %bb.kw, %bb.js
  %.212351799 = phi i1 [ %.2123517981818, %bb.ku ], [ %.2123517981818, %bb.kx ], [ %.2123517981818, %bb.kw ], [ %.11234, %bb.js ], [ false, %bb.fk ], [ %.2123517981818, %bb.ky ], [ %.2123517981818, %.thread1572.sink.split ]
  %.112411796 = phi i8 [ %.1124117971819, %bb.ku ], [ %.1124117971819, %bb.kx ], [ %.1124117971819, %bb.kw ], [ %i.aij, %bb.js ], [ %i.qa, %bb.fk ], [ %.1124117971819, %bb.ky ], [ %.1124117971819, %.thread1572.sink.split ] ; 4 uses
  %.212441793 = phi i8 [ %.2124417941820, %bb.ku ], [ %.2124417941820, %bb.kx ], [ %.2124417941820, %bb.kw ], [ %.11243, %bb.js ], [ %.01242, %bb.fk ], [ %.2124417941820, %bb.ky ], [ %.2124417941820, %.thread1572.sink.split ] ; 4 uses
  %.112501790 = phi float [ %.1125017911821, %bb.ku ], [ %.1125017911821, %bb.kx ], [ %.1125017911821, %bb.kw ], [ %.01249, %bb.js ], [ %i.fn, %bb.fk ], [ %.1125017911821, %bb.ky ], [ %.1125017911821, %.thread1572.sink.split ] ; 7 uses
  %.312581788 = phi i8 [ %.3125817891822, %bb.ku ], [ 0, %bb.kx ], [ %.3125817891822, %bb.kw ], [ %.21257, %bb.js ], [ %.01255, %bb.fk ], [ %.3125817891822, %bb.ky ], [ %.3125817891822, %.thread1572.sink.split ]
  %.11237 = phi i1 [ %.01236, %bb.ku ], [ false, %bb.kx ], [ %.01236, %bb.kw ], [ false, %bb.js ], [ false, %bb.fk ], [ false, %bb.ky ], [ true, %.thread1572.sink.split ] ; 4 uses
  %.11219 = phi ptr [ %.01218, %bb.ku ], [ null, %bb.kx ], [ %.01218, %bb.kw ], [ null, %bb.js ], [ null, %bb.fk ], [ null, %bb.ky ], [ %.11219.ph, %.thread1572.sink.split ] ; 4 uses
  %.11214 = phi i32 [ %.01213, %bb.ku ], [ 0, %bb.kx ], [ %.01213, %bb.kw ], [ 0, %bb.js ], [ 0, %bb.fk ], [ 0, %bb.ky ], [ %i.any, %.thread1572.sink.split ] ; 4 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.i, i64 9568 ; 2 uses
  %i.aoa = load i32, ptr %i.anz, align 8, !tbaa !364
  %i.aob = icmp eq i32 %i.aoa, %i.s
  br i1 %i.aob, label %bb.kz, label %bb.lg

bb.kz:                                            ; preds = %.thread1572
  %i.aoc = load i32, ptr %i.ei, align 4, !tbaa !218
  %.not1333 = icmp eq i32 %i.aoc, %i.s
  br i1 %.not1333, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.aod = call noundef zeroext i1 @_ZN5ImGui17IsItemDeactivatedEv()
  br i1 %i.aod, label %bb.lc, label %._crit_edge1699

._crit_edge1699:                                  ; preds = %bb.la
  %.pre1700 = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.aoe = icmp eq i32 %.pre1700, %i.s
  br label %bb.lb

bb.lb:                                            ; preds = %._crit_edge1699, %bb.kz
  %i.aof = phi i1 [ %i.aoe, %._crit_edge1699 ], [ true, %bb.kz ]
  %i.aog = and i32 %spec.select1349, 134218240
  %or.cond202.not = icmp eq i32 %i.aog, 134217728
  %or.cond1389 = and i1 %or.cond202.not, %i.aof
  br i1 %or.cond1389, label %bb.ld, label %bb.lf

bb.lc:                                            ; preds = %bb.la
  br i1 %i.dl, label %bb.lf, label %bb.ld

bb.ld:                                            ; preds = %bb.lb, %bb.lc
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.i, i64 9584
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !435 ; 2 uses
  %i.aoj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aoi, ptr noundef nonnull dereferenceable(1) %2) #40
  %.not1334 = icmp eq i32 %i.aoj, 0
  br i1 %.not1334, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.aok = getelementptr inbounds nuw i8, ptr %i.i, i64 9576
  %i.aol = load i32, ptr %i.aok, align 8, !tbaa !728
  %i.aom = add nsw i32 %i.aol, -1
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lc, %bb.ld, %bb.le, %bb.lb
  %.21238 = phi i1 [ %.11237, %bb.lc ], [ true, %bb.le ], [ %.11237, %bb.ld ], [ %.11237, %bb.lb ]
  %.21220 = phi ptr [ %.11219, %bb.lc ], [ %i.aoi, %bb.le ], [ %.11219, %bb.ld ], [ %.11219, %bb.lb ]
  %.21215 = phi i32 [ %.11214, %bb.lc ], [ %i.aom, %bb.le ], [ %.11214, %bb.ld ], [ %.11214, %bb.lb ]
  store i32 0, ptr %i.anz, align 8, !tbaa !364
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %.thread1572
  %.31239 = phi i1 [ %.21238, %bb.lf ], [ %.11237, %.thread1572 ] ; 2 uses
  %.31221 = phi ptr [ %.21220, %bb.lf ], [ %.11219, %.thread1572 ] ; 2 uses
  %.31216 = phi i32 [ %.21215, %bb.lf ], [ %.11214, %.thread1572 ] ; 3 uses
  %.not1335 = icmp eq ptr %.31221, null
  br i1 %.not1335, label %bb.ln, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  br i1 %.not1291, label %bb.lm, label %bb.li

bb.li:                                            ; preds = %bb.lh
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  call void @_ZN26ImGuiInputTextCallbackDataC1Ev(ptr noundef nonnull align 8 dereferenceable(68) %17)
  store ptr %i.i, ptr %17, align 8, !tbaa !423
  %i.aon = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 %i.s, ptr %i.aon, align 8, !tbaa !424
  %i.aoo = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 %spec.select1349, ptr %i.aoo, align 4, !tbaa !425
  %i.aop = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i32 4194304, ptr %i.aop, align 8, !tbaa !426
  br i1 %i.pm, label %bb.lj, label %bb.ll

bb.lj:                                            ; preds = %bb.li
  %i.aoq = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.aor = getelementptr inbounds nuw i8, ptr %.012601537, i64 20
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !392
  %i.aot = icmp eq i32 %i.aoq, %i.aos
  br i1 %i.aot, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.aou = getelementptr inbounds nuw i8, ptr %i.i, i64 5440
  %i.aov = load i8, ptr %i.aou, align 8, !tbaa !230, !range !184, !noundef !185
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj, %bb.li
  %i.aow = phi i8 [ 0, %bb.lj ], [ 0, %bb.li ], [ %i.aov, %bb.lk ]
  %i.aox = getelementptr inbounds nuw i8, ptr %17, i64 34
  store i8 %i.aow, ptr %i.aox, align 2, !tbaa !427
  %i.aoy = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  store ptr %2, ptr %i.aoy, align 8, !tbaa !429
  %i.aoz = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store i32 %.31216, ptr %i.aoz, align 8, !tbaa !430
  %i.apa = add nsw i32 %.31216, 1
  %i.apb = call noundef i32 @llvm.smax.i32(i32 %3, i32 %i.apa)
  %i.apc = getelementptr inbounds nuw i8, ptr %17, i64 52 ; 2 uses
  store i32 %i.apb, ptr %i.apc, align 4, !tbaa !431
  %i.apd = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %7, ptr %i.apd, align 8, !tbaa !428
  %i.ape = call noundef i32 %6(ptr noundef nonnull %17) ; 0 uses
  %i.apf = load ptr, ptr %i.aoy, align 8, !tbaa !429
  %i.apg = load i32, ptr %i.apc, align 4, !tbaa !431 ; 2 uses
  %i.aph = load i32, ptr %i.aoz, align 8, !tbaa !430
  %i.api = add nsw i32 %i.apg, -1
  %i.apj = call noundef i32 @llvm.smin.i32(i32 %i.aph, i32 %i.api)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lh
  %.41217 = phi i32 [ %i.apj, %bb.ll ], [ %.31216, %bb.lh ]
  %.01197 = phi i32 [ %i.apg, %bb.ll ], [ %3, %bb.lh ]
  %.01195 = phi ptr [ %i.apf, %bb.ll ], [ %2, %bb.lh ] ; 2 uses
  %i.apk = add nsw i32 %.41217, 1
  %i.apl = call noundef i32 @llvm.smin.i32(i32 %i.apk, i32 %.01197)
  %i.apm = sext i32 %i.apl to i64
  call void @_Z9ImStrncpyPcPKcm(ptr noundef %.01195, ptr noundef nonnull %.31221, i64 noundef %i.apm)
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %bb.lg
  %.11196 = phi ptr [ %.01195, %bb.lm ], [ %2, %bb.lg ] ; 2 uses
  %i.apn = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.apo = icmp eq i32 %i.apn, %i.s
  %i.app = trunc nuw i8 %.312581788 to i1
  %or.cond151 = select i1 %i.apo, i1 %i.app, i1 false
  br i1 %or.cond151, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.apq = getelementptr inbounds nuw i8, ptr %.012601537, i64 115
  store i8 0, ptr %i.apq, align 1, !tbaa !393
  call void @_ZN5ImGui13ClearActiveIDEv()
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  br i1 %i.r, label %.critedge1391, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %11, i32 noundef %i.s, i32 noundef 0, float noundef -1.000000e+00)
  %.sroa.0296.0.copyload = load <2 x float>, ptr %11, align 8, !tbaa !190
  %.sroa.0295.0.copyload = load <2 x float>, ptr %i.ao, align 8, !tbaa !190
  %i.apr = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 7, float noundef 1.000000e+00)
  %i.aps = getelementptr inbounds nuw i8, ptr %i.i, i64 3292
  %i.apt = load float, ptr %i.aps, align 4, !tbaa !233
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.0296.0.copyload, <2 x float> %.sroa.0295.0.copyload, i32 noundef %i.apr, i1 noundef zeroext true, float noundef %i.apt)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.apu = load <2 x float>, ptr %11, align 8, !tbaa !190 ; 2 uses
  %i.apv = load <2 x float>, ptr %i.aa, align 4, !tbaa !190
  %i.apw = fadd <2 x float> %i.apu, %i.apv
  %i.apx = bitcast <2 x float> %i.apw to i64
  br label %bb.lr

.critedge1391:                                    ; preds = %bb.lp
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #41
  %i.apy = getelementptr inbounds nuw i8, ptr %.21264, i64 280
  %i.apz = load i64, ptr %i.apy, align 8, !tbaa !190
  %i.aqa = load <2 x float>, ptr %11, align 8, !tbaa !190
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %.critedge1391
  %storemerge = phi i64 [ %i.apz, %.critedge1391 ], [ %i.apx, %bb.lq ]
  %i.aqb = phi <2 x float> [ %i.aqa, %.critedge1391 ], [ %i.apu, %bb.lq ] ; 4 uses
  store i64 %storemerge, ptr %18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  %i.aqc = insertelement <2 x float> %i.ae, float %.sroa.0780.2, i64 0
  %i.aqd = fadd <2 x float> %i.aqc, %i.aqb        ; 3 uses
  %i.aqe = shufflevector <2 x float> %i.aqb, <2 x float> %i.aqd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.aqe, ptr %19, align 16, !tbaa !190
  br i1 %i.r, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.aqf = getelementptr inbounds nuw i8, ptr %.21264, i64 616
  %i.aqg = load <2 x float>, ptr %i.aqf, align 4, !tbaa !190 ; 2 uses
  %i.aqh = fcmp oge <2 x float> %i.aqb, %i.aqg
  %23 = getelementptr inbounds nuw i8, ptr %.21264, i64 624
  %24 = load <2 x float>, ptr %23, align 4, !tbaa !190 ; 2 uses
  %25 = fcmp olt <2 x float> %i.aqd, %24
  %26 = shufflevector <2 x i1> %i.aqh, <2 x i1> %25, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %27 = shufflevector <2 x float> %i.aqb, <2 x float> %i.aqd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %28 = shufflevector <2 x float> %i.aqg, <2 x float> %24, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %29 = select <4 x i1> %26, <4 x float> %27, <4 x float> %28
  store <4 x float> %29, ptr %19, align 16, !tbaa !190
  br label %bb.lt

bb.lt:                                            ; preds = %bb.ls, %bb.lr
  br i1 %i.qb, label %bb.lu, label %.thread1573

bb.lu:                                            ; preds = %bb.lt
  %i.aqi = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !376 ; 2 uses
  br i1 %.not1306, label %.thr_comm1575, label %.thread1574

.thread1573:                                      ; preds = %bb.lt
  br i1 %.not1306, label %.thr_comm1575, label %.thread1574

.thr_comm1575:                                    ; preds = %.thread1573, %bb.lu
  %.ph1576 = phi ptr [ %.11196, %.thread1573 ], [ %i.aqj, %bb.lu ] ; 2 uses
  br i1 %i.qh, label %bb.lv, label %.thread1823

.thread1574:                                      ; preds = %bb.lu, %.thread1573
  %i.aqk = phi ptr [ %.11196, %.thread1573 ], [ %i.aqj, %bb.lu ] ; 3 uses
  %i.aql = load i8, ptr %i.aqk, align 1, !tbaa !351
  %i.aqm = icmp eq i8 %i.aql, 0                   ; 2 uses
  %i.aqn = xor i1 %i.qh, %i.aqm
  br i1 %i.aqn, label %bb.lv, label %bb.ly

bb.lv:                                            ; preds = %.thr_comm1575, %.thread1574
  %i.aqo = phi i1 [ false, %.thr_comm1575 ], [ %i.aqm, %.thread1574 ] ; 2 uses
  %i.aqp = phi ptr [ %.ph1576, %.thr_comm1575 ], [ %i.aqk, %.thread1574 ] ; 2 uses
  br i1 %or.cond47, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.aqq = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 9 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 9592 ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqq, i64 9696
  %i.aqt = load i32, ptr %i.aqs, align 8, !tbaa !406
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqq, i64 4552
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !401
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 16
  store i32 %i.aqt, ptr %i.aqw, align 8, !tbaa !405
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqq, i64 9656
  %i.aqy = load i32, ptr %i.aqx, align 8, !tbaa !407
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqq, i64 4560
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !313 ; 7 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 64
  store i32 %i.aqy, ptr %i.arb, align 8, !tbaa !407
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqq, i64 9608
  %i.ard = load float, ptr %i.arc, align 8, !tbaa !408
  %i.are = getelementptr inbounds nuw i8, ptr %i.ara, i64 16
  store float %i.ard, ptr %i.are, align 8, !tbaa !408
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ara, i64 32 ; 2 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqq, i64 9624 ; 2 uses
  %i.arh = load <2 x i32>, ptr %i.arg, align 8, !tbaa !208
  %i.ari = load <2 x i32>, ptr %i.arf, align 8, !tbaa !208
  store <2 x i32> %i.ari, ptr %i.arg, align 8, !tbaa !208
  store <2 x i32> %i.arh, ptr %i.arf, align 8, !tbaa !208
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqq, i64 9632 ; 2 uses
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !409
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ara, i64 40 ; 2 uses
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !409
  store ptr %i.arm, ptr %i.arj, align 8, !tbaa !409
  store ptr %i.ark, ptr %i.arl, align 8, !tbaa !409
  %i.arn = load <2 x i32>, ptr %i.aqr, align 8, !tbaa !208
  %i.aro = load <2 x i32>, ptr %i.ara, align 8, !tbaa !208
  store <2 x i32> %i.aro, ptr %i.aqr, align 8, !tbaa !208
  store <2 x i32> %i.arn, ptr %i.ara, align 8, !tbaa !208
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aqq, i64 9600 ; 2 uses
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !410
  %i.arr = getelementptr inbounds nuw i8, ptr %i.ara, i64 8 ; 2 uses
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !410
  store ptr %i.ars, ptr %i.arp, align 8, !tbaa !410
  store ptr %i.arq, ptr %i.arr, align 8, !tbaa !410
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %bb.lv
  %or.cond159 = or i1 %i.dn, %i.aqo
  br i1 %or.cond159, label %bb.ly, label %.split1580

.split1580:                                       ; preds = %bb.lx
  %i.art = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 9 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 9592 ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.art, i64 4560 ; 2 uses
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !313
  %i.arx = call noundef ptr @_ZN11ImFontBaked9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(104) %i.arw, i16 noundef zeroext 42) ; 2 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.art, i64 4552
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !401
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 16 ; 2 uses
  %i.asb = load i32, ptr %i.asa, align 8, !tbaa !405 ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.art, i64 9696
  store i32 %i.asb, ptr %i.asc, align 8, !tbaa !406
  %i.asd = load ptr, ptr %i.arv, align 8, !tbaa !313 ; 8 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 64 ; 2 uses
  %i.asf = load i32, ptr %i.ase, align 8, !tbaa !407
  %i.asg = getelementptr inbounds nuw i8, ptr %i.art, i64 9656
  store i32 %i.asf, ptr %i.asg, align 8, !tbaa !407
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asd, i64 16 ; 2 uses
  %i.asi = load float, ptr %i.ash, align 8, !tbaa !408
  %i.asj = getelementptr inbounds nuw i8, ptr %i.art, i64 9608
  store float %i.asi, ptr %i.asj, align 8, !tbaa !408
  %i.ask = getelementptr inbounds nuw i8, ptr %i.art, i64 9624 ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asd, i64 32 ; 2 uses
  %i.asm = load <2 x i32>, ptr %i.asl, align 8, !tbaa !208
  %i.asn = load <2 x i32>, ptr %i.ask, align 8, !tbaa !208
  store <2 x i32> %i.asn, ptr %i.asl, align 8, !tbaa !208
  store <2 x i32> %i.asm, ptr %i.ask, align 8, !tbaa !208
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asd, i64 40 ; 2 uses
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !409
  %i.asq = getelementptr inbounds nuw i8, ptr %i.art, i64 9632 ; 2 uses
  %i.asr = load ptr, ptr %i.asq, align 8, !tbaa !409
  store ptr %i.asr, ptr %i.aso, align 8, !tbaa !409
  store ptr %i.asp, ptr %i.asq, align 8, !tbaa !409
  %i.ass = load <2 x i32>, ptr %i.asd, align 8, !tbaa !208
  %i.ast = load <2 x i32>, ptr %i.aru, align 8, !tbaa !208
  store <2 x i32> %i.ast, ptr %i.asd, align 8, !tbaa !208
  store <2 x i32> %i.ass, ptr %i.aru, align 8, !tbaa !208
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asd, i64 8 ; 2 uses
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !410
  %i.asw = getelementptr inbounds nuw i8, ptr %i.art, i64 9600 ; 2 uses
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !410
  store ptr %i.asx, ptr %i.asu, align 8, !tbaa !410
  store ptr %i.asv, ptr %i.asw, align 8, !tbaa !410
  %i.asy = or i32 %i.asb, 4
  store i32 %i.asy, ptr %i.asa, align 8, !tbaa !405
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asd, i64 56
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !411
  %i.atb = ptrtoint ptr %i.arx to i64
  %i.atc = ptrtoint ptr %i.ata to i64
  %i.atd = sub i64 %i.atb, %i.atc
  %i.ate = sdiv exact i64 %i.atd, 44
  %i.atf = trunc i64 %i.ate to i32
  store i32 %i.atf, ptr %i.ase, align 8, !tbaa !407
  %i.atg = getelementptr inbounds nuw i8, ptr %i.arx, i64 4
  %i.ath = load float, ptr %i.atg, align 4, !tbaa !413
  store float %i.ath, ptr %i.ash, align 8, !tbaa !408
  br label %.thread1823

bb.ly:                                            ; preds = %bb.lx, %.thread1574
  %i.ati = phi ptr [ %i.aqp, %bb.lx ], [ %i.aqk, %.thread1574 ]
  %.01232.in = phi i1 [ %i.aqo, %bb.lx ], [ %i.qh, %.thread1574 ]
  br i1 %.01232.in, label %bb.lz, label %.thread1823

bb.lz:                                            ; preds = %bb.ly
  %i.atj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40
  %i.atk = getelementptr inbounds nuw i8, ptr %1, i64 %i.atj
  br label %bb.me

.thread1823:                                      ; preds = %.thr_comm1575, %.split1580, %bb.ly
  %i.atl = phi ptr [ %i.aqp, %.split1580 ], [ %i.ati, %bb.ly ], [ %.ph1576, %.thr_comm1575 ] ; 6 uses
  %i.atm = trunc nuw i8 %.212441793 to i1
  %i.atn = trunc nuw i8 %.112411796 to i1
  %or.cond162 = select i1 %i.atm, i1 true, i1 %i.atn
  br i1 %or.cond162, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %.thread1823
  %i.ato = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.atp = icmp eq i32 %i.ato, %i.s
  br i1 %i.atp, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma, %.thread1823
  %i.atq = getelementptr inbounds nuw i8, ptr %.012601537, i64 24
  %i.atr = load i32, ptr %i.atq, align 8, !tbaa !377
  %i.ats = sext i32 %i.atr to i64
  %i.att = getelementptr inbounds i8, ptr %i.atl, i64 %i.ats
  br label %bb.me

bb.mc:                                            ; preds = %bb.ma
  %i.atu = and i32 %5, 83886080
  %or.cond166.not = icmp eq i32 %i.atu, 67108864
  br i1 %or.cond166.not, label %.thread1587, label %bb.md

.thread1587:                                      ; preds = %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  store i32 0, ptr %i.g, align 4, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  store i32 1, ptr %i.h, align 4, !tbaa !208
  br label %bb.mf

bb.md:                                            ; preds = %bb.mc
  %i.atv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.atl) #40
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atl, i64 %i.atv
  br label %bb.me

bb.me:                                            ; preds = %bb.mb, %bb.md, %bb.lz
  %.0 = phi ptr [ %i.atk, %bb.lz ], [ %i.att, %bb.mb ], [ %i.atw, %bb.md ] ; 2 uses
  %.01232.in1584 = phi i1 [ true, %bb.lz ], [ false, %bb.mb ], [ false, %bb.md ] ; 2 uses
  %.01208 = phi ptr [ %1, %bb.lz ], [ %i.atl, %bb.mb ], [ %i.atl, %bb.md ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  store i32 0, ptr %i.g, align 4, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  store i32 1, ptr %i.h, align 4, !tbaa !208
  br i1 %i.r, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %.thread1587, %bb.me
  %.1 = phi ptr [ %.0, %bb.me ], [ null, %.thread1587 ]
  %.012081596 = phi ptr [ %.01208, %bb.me ], [ %i.atl, %.thread1587 ]
  %.01232.in15841592 = phi i1 [ %.01232.in1584, %bb.me ], [ false, %.thread1587 ]
  %i.atx = getelementptr inbounds nuw i8, ptr %i.i, i64 4568
  %i.aty = load float, ptr %i.atx, align 8, !tbaa !205
  call void @_ZN5ImGui25CalcClipRectVisibleItemsYERK6ImRectRK6ImVec2fPiS6_(ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(8) %18, float noundef %i.aty, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %bb.me
end_hunk_5
begin_hunk_6_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  %i.bdi = fmul float %i.bcz, %i.bdh
  %.sroa.0.4.vec.insert.i1440 = insertelement <2 x float> %i.bdg, float %i.bdi, i64 1
  %i.bdj = zext i1 %.01232.in15841591 to i32
  %i.bdk = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bdj, float noundef 1.000000e+00)
  %i.bdl = trunc nuw i8 %.112411796 to i1
  %i.bdm = getelementptr inbounds nuw i8, ptr %.012601537, i64 100
  store i32 %.01207, ptr %i.bdm, align 4, !tbaa !437
  br label %bb.of

bb.od:                                            ; preds = %_ZL23InputTextLineIndexBuildiP14ImGuiTextIndexPKcS2_fiPS2_.exit
  %i.bdn = zext i1 %.01232.in15841591 to i32
  %i.bdo = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bdn, float noundef 1.000000e+00) ; 3 uses
  %i.bdp = trunc nuw i8 %.112411796 to i1         ; 3 uses
  %or.cond175 = select i1 %i.bbm, i1 true, i1 %i.bdp
  br i1 %or.cond175, label %bb.oe, label %.loopexit

bb.oe:                                            ; preds = %bb.od
  %i.bdq = getelementptr inbounds nuw i8, ptr %.012601537, i64 100
  store i32 %.01207, ptr %i.bdq, align 4, !tbaa !437
  br i1 %i.bbm, label %bb.of, label %bb.os

bb.of:                                            ; preds = %.thread1609, %bb.oe
  %.sroa.01483.016051611 = phi <2 x float> [ %.sroa.0.4.vec.insert.i1440, %.thread1609 ], [ zeroinitializer, %bb.oe ] ; 4 uses
  %i.bdr = phi i32 [ %i.bdk, %.thread1609 ], [ %i.bdo, %bb.oe ] ; 2 uses
  %i.bds = phi i1 [ %i.bdl, %.thread1609 ], [ %i.bdp, %bb.oe ] ; 2 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %.012601537, i64 112 ; 2 uses
  %i.bdu = load i8, ptr %i.bdt, align 8, !tbaa !419, !range !184, !noundef !185
  %i.bdv = trunc nuw i8 %i.bdu to i1
  br i1 %i.bdv, label %bb.og, label %bb.os

bb.og:                                            ; preds = %bb.of
  %i.bdw = and i32 %5, 32768
  %.not1339 = icmp eq i32 %i.bdw, 0
  br i1 %.not1339, label %bb.oh, label %bb.ol

bb.oh:                                            ; preds = %bb.og
  %i.bdx = fmul float %.sroa.0780.2, 2.500000e-01 ; 2 uses
  %.sroa.01483.0.vec.extract = extractelement <2 x float> %.sroa.01483.016051611, i64 0 ; 3 uses
  %i.bdy = getelementptr inbounds nuw i8, ptr %.012601537, i64 92 ; 3 uses
  %i.bdz = load float, ptr %i.bdy, align 4, !tbaa !701 ; 2 uses
  %i.bea = fcmp olt float %.sroa.01483.0.vec.extract, %i.bdz
  br i1 %i.bea, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh
  %i.beb = fsub float %.sroa.01483.0.vec.extract, %i.bdx ; 2 uses
  %i.bec = fcmp ole float %i.beb, 0.000000e+00
  %i.bed = select i1 %i.bec, float 0.000000e+00, float %i.beb
  %i.bee = fptosi float %i.bed to i32
  %i.bef = sitofp i32 %i.bee to float
  store float %i.bef, ptr %i.bdy, align 4, !tbaa !701
  br label %bb.om

bb.oj:                                            ; preds = %bb.oh
  %i.beg = load float, ptr %i.aa, align 4, !tbaa !206
  %i.beh = fsub float %.sroa.0780.2, %i.beg
  %i.bei = fsub float %.sroa.01483.0.vec.extract, %i.beh ; 2 uses
  %i.bej = fcmp ult float %i.bei, %i.bdz
  br i1 %i.bej, label %bb.om, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.bek = fadd float %i.bdx, %i.bei
  %i.bel = fptosi float %i.bek to i32
  %i.bem = sitofp i32 %i.bel to float
  store float %i.bem, ptr %i.bdy, align 4, !tbaa !701
  br label %bb.om

bb.ol:                                            ; preds = %bb.og
  %i.ben = getelementptr inbounds nuw i8, ptr %.012601537, i64 92
  store float 0.000000e+00, ptr %i.ben, align 4, !tbaa !701
  br label %bb.om

bb.om:                                            ; preds = %bb.oi, %bb.ok, %bb.oj, %bb.ol
  br i1 %i.r, label %bb.on, label %bb.or

bb.on:                                            ; preds = %bb.om
  %.sroa.01483.4.vec.extract = extractelement <2 x float> %.sroa.01483.016051611, i64 1 ; 3 uses
  %i.beo = load float, ptr %i.bbj, align 8, !tbaa !205
  %i.bep = fsub float %.sroa.01483.4.vec.extract, %i.beo ; 3 uses
  %i.beq = fcmp olt float %i.bep, %.112501790
  br i1 %i.beq, label %bb.oo, label %bb.op

bb.oo:                                            ; preds = %bb.on
  %i.ber = fcmp ole float %i.bep, 0.000000e+00
  %i.bes = select i1 %i.ber, float 0.000000e+00, float %i.bep
  br label %bb.or

bb.op:                                            ; preds = %bb.on
  %i.bet = load float, ptr %i.ab, align 8, !tbaa !203 ; 2 uses
  %i.beu = fneg float %i.bet
  %i.bev = call float @llvm.fmuladd.f32(float %i.beu, float 2.000000e+00, float %.sroa.01509.4.vec.extract1517)
  %i.bew = fsub float %.sroa.01483.4.vec.extract, %i.bev
  %i.bex = fcmp ult float %i.bew, %.112501790
  br i1 %i.bex, label %bb.or, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.bey = fsub float %.sroa.01483.4.vec.extract, %.sroa.01509.4.vec.extract1517
  %i.bez = call float @llvm.fmuladd.f32(float %i.bet, float 2.000000e+00, float %i.bey)
  br label %bb.or

bb.or:                                            ; preds = %bb.oo, %bb.oq, %bb.op, %bb.om
  %.01203 = phi float [ %i.bes, %bb.oo ], [ %i.bez, %bb.oq ], [ %.112501790, %bb.op ], [ %.112501790, %bb.om ]
  store i8 0, ptr %i.bdt, align 8, !tbaa !419
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.of, %bb.oe
  %i.bfa = phi i32 [ %i.bdr, %bb.or ], [ %i.bdr, %bb.of ], [ %i.bdo, %bb.oe ] ; 3 uses
  %i.bfb = phi i1 [ %i.bds, %bb.or ], [ %i.bds, %bb.of ], [ %i.bdp, %bb.oe ]
  %.sroa.01483.01606 = phi <2 x float> [ %.sroa.01483.016051611, %bb.or ], [ %.sroa.01483.016051611, %bb.of ], [ zeroinitializer, %bb.oe ] ; 4 uses
  %.11204 = phi float [ %.01203, %bb.or ], [ %.112501790, %bb.of ], [ %.112501790, %bb.oe ] ; 2 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %.012601537, i64 113 ; 2 uses
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !710, !range !184, !noundef !185
  %i.bfe = trunc nuw i8 %i.bfd to i1
  br i1 %i.bfe, label %bb.ot, label %bb.ow

bb.ot:                                            ; preds = %bb.os
  br i1 %i.r, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %bb.ot
  %.sroa.01483.4.vec.extract1488 = extractelement <2 x float> %.sroa.01483.01606, i64 1
  %i.bff = load float, ptr %i.bbj, align 8, !tbaa !205
  %i.bfg = fsub float %.sroa.01483.4.vec.extract1488, %i.bff
  %i.bfh = load float, ptr %i.ab, align 8, !tbaa !203
  %i.bfi = fneg float %i.bfh
  %i.bfj = call float @llvm.fmuladd.f32(float %.sroa.01509.4.vec.extract1517, float 5.000000e-01, float %i.bfi)
  %i.bfk = fsub float %i.bfg, %i.bfj
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %bb.ot
  %.21205 = phi float [ %i.bfk, %bb.ou ], [ %.11204, %bb.ot ]
  store i8 0, ptr %i.bfc, align 1, !tbaa !710
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.os
  %.31245 = phi i8 [ 0, %bb.ov ], [ %.212441793, %bb.os ] ; 4 uses
  %.31206 = phi float [ %.21205, %bb.ov ], [ %.11204, %bb.os ] ; 4 uses
  %i.bfl = fcmp une float %.31206, %.112501790
  br i1 %i.bfl, label %bb.ox, label %bb.oy

bb.ox:                                            ; preds = %bb.ow
  %i.bfm = load float, ptr %i.ab, align 8, !tbaa !203
  %i.bfn = call float @llvm.fmuladd.f32(float %i.bfm, float 2.000000e+00, float %i.bbl)
  %i.bfo = fsub float %i.bfn, %.sroa.01509.4.vec.extract1517 ; 2 uses
  %i.bfp = fcmp oge float %i.bfo, 0.000000e+00
  %i.bfq = select i1 %i.bfp, float %i.bfo, float 0.000000e+00 ; 2 uses
  %i.bfr = fcmp olt float %.31206, 0.000000e+00
  %i.bfs = fcmp ogt float %.31206, %i.bfq
  %i.bft = select i1 %i.bfs, float %i.bfq, float %.31206
  %i.bfu = select i1 %i.bfr, float 0.000000e+00, float %i.bft ; 2 uses
  %i.bfv = getelementptr inbounds nuw i8, ptr %.21264, i64 156 ; 2 uses
  %i.bfw = load float, ptr %i.bfv, align 4, !tbaa !698
  %i.bfx = fsub float %i.bfw, %i.bfu
  %i.bfy = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.bfz = load float, ptr %i.bfy, align 4, !tbaa !197
  %i.bga = fadd float %i.bfz, %i.bfx
  store float %i.bga, ptr %i.bfy, align 4, !tbaa !197
  store float %i.bfu, ptr %i.bfv, align 4, !tbaa !698
  %i.bgb = load float, ptr %i.bbj, align 8, !tbaa !205
  call void @_ZN5ImGui25CalcClipRectVisibleItemsYERK6ImRectRK6ImVec2fPiS6_(ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(8) %18, float noundef %i.bgb, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %i.bgc = load i32, ptr %i.h, align 4, !tbaa !208
  %i.bgd = call noundef i32 @llvm.smin.i32(i32 %i.bgc, i32 %.01207)
  store i32 %i.bgd, ptr %i.h, align 4, !tbaa !208
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  %i.bge = getelementptr inbounds nuw i8, ptr %.012601537, i64 92
  %i.bgf = load float, ptr %i.bge, align 4, !tbaa !701 ; 4 uses
  br i1 %i.bfb, label %bb.oz, label %.loopexit

bb.oz:                                            ; preds = %bb.oy
  %i.bgg = trunc nuw i8 %.31245 to i1
  %i.bgh = select i1 %i.bgg, float 1.000000e+00, float 6.000000e-01
  %i.bgi = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 52, float noundef %i.bgh)
  %i.bgj = select i1 %i.r, float 0.000000e+00, float -1.000000e+00
  %i.bgk = select i1 %i.r, float 0.000000e+00, float 2.000000e+00
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.i, i64 4560
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !313
  %i.bgn = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %i.bgm, i16 noundef zeroext 32)
  %i.bgo = fmul float %i.bgn, 5.000000e-01
  %i.bgp = fptosi float %i.bgo to i32
  %i.bgq = sitofp i32 %i.bgp to float
  %i.bgr = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.bgs = load ptr, ptr %i.bgr, align 8, !tbaa !378 ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 4
  %i.bgu = load i32, ptr %i.bgt, align 4, !tbaa !394 ; 2 uses
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.bgs, i64 8
  %i.bgw = load i32, ptr %i.bgv, align 4, !tbaa !395 ; 2 uses
  %i.bgx = call noundef i32 @llvm.smin.i32(i32 %i.bgu, i32 %i.bgw)
  %i.bgy = sext i32 %i.bgx to i64
  %i.bgz = getelementptr inbounds i8, ptr %.012081595, i64 %i.bgy ; 3 uses
  %i.bha = call noundef i32 @llvm.smax.i32(i32 %i.bgu, i32 %i.bgw)
  %i.bhb = sext i32 %i.bha to i64
  %i.bhc = getelementptr inbounds i8, ptr %.012081595, i64 %i.bhb ; 3 uses
  %i.bhd = load i32, ptr %i.g, align 4, !tbaa !208 ; 2 uses
  %i.bhe = load i32, ptr %i.h, align 4, !tbaa !208
  %i.bhf = icmp slt i32 %i.bhd, %i.bhe
  br i1 %i.bhf, label %.lr.ph1663, label %.loopexit

.lr.ph1663:                                       ; preds = %bb.oz
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.i, i64 9552 ; 2 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.bhi = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bhj = getelementptr inbounds nuw i8, ptr %.21264, i64 712
  %i.bhk = sext i32 %i.bhd to i64
  br label %bb.pa

bb.pa:                                            ; preds = %.lr.ph1663, %bb.pi
  %indvars.iv1671 = phi i64 [ %i.bhk, %.lr.ph1663 ], [ %indvars.iv.next1672, %bb.pi ] ; 3 uses
  %i.bhl = load i32, ptr %i.atz, align 8, !tbaa !733 ; 2 uses
  %.not.i1442 = icmp eq i32 %i.bhl, 0
  br i1 %.not.i1442, label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bhm = load ptr, ptr %i.bhg, align 8, !tbaa !730
  %i.bhn = getelementptr inbounds [4 x i8], ptr %i.bhm, i64 %indvars.iv1671
  %i.bho = load i32, ptr %i.bhn, align 4, !tbaa !208
  %i.bhp = sext i32 %i.bho to i64
  br label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit

_ZN14ImGuiTextIndex14get_line_beginEPKci.exit:    ; preds = %bb.pa, %bb.pb
  %i.bhq = phi i64 [ %i.bhp, %bb.pb ], [ 0, %bb.pa ]
  %i.bhr = getelementptr inbounds i8, ptr %.012081595, i64 %i.bhq ; 3 uses
  %indvars.iv.next1672 = add nsw i64 %indvars.iv1671, 1 ; 4 uses
  %i.bhs = sext i32 %i.bhl to i64
  %i.bht = icmp slt i64 %indvars.iv.next1672, %i.bhs
  br i1 %i.bht, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit
  %i.bhu = load ptr, ptr %i.bhg, align 8, !tbaa !730
  %i.bhv = getelementptr inbounds [4 x i8], ptr %i.bhu, i64 %indvars.iv.next1672
  %i.bhw = load i32, ptr %i.bhv, align 4, !tbaa !208
  %i.bhx = add nsw i32 %i.bhw, -1
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit

bb.pd:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit
  %i.bhy = load i32, ptr %i.bbf, align 8, !tbaa !732
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit

_ZN14ImGuiTextIndex12get_line_endEPKci.exit:      ; preds = %bb.pc, %bb.pd
  %i.bhz = phi i32 [ %i.bhx, %bb.pc ], [ %i.bhy, %bb.pd ]
  %i.bia = sext i32 %i.bhz to i64
  %i.bib = getelementptr inbounds i8, ptr %.012081595, i64 %i.bia ; 4 uses
  %i.bic = icmp ult ptr %i.bib, %.41679
  br i1 %i.bic, label %bb.pe, label %.thread1613

bb.pe:                                            ; preds = %_ZN14ImGuiTextIndex12get_line_endEPKci.exit
  %i.bid = load i8, ptr %i.bib, align 1, !tbaa !351
  %.fr = freeze i8 %i.bid
  %i.bie = icmp ne i8 %.fr, 10                    ; 2 uses
  %spec.select1619.idx = zext i1 %i.bie to i64
  %spec.select1619 = getelementptr inbounds nuw i8, ptr %i.bib, i64 %spec.select1619.idx
  br label %.thread1613

.thread1613:                                      ; preds = %bb.pe, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit
  %i.bif = phi i1 [ false, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit ], [ %i.bie, %bb.pe ]
  %i.big = phi ptr [ %i.bib, %_ZN14ImGuiTextIndex12get_line_endEPKci.exit ], [ %spec.select1619, %bb.pe ] ; 4 uses
  %i.bih = icmp ugt ptr %i.bgz, %i.bhr
  %i.bii = select i1 %i.bih, ptr %i.bgz, ptr %i.bhr ; 3 uses
  %i.bij = icmp ult ptr %i.bhc, %i.big
  %i.bik = select i1 %i.bij, ptr %i.bhc, ptr %i.big ; 2 uses
  %i.bil = icmp ult ptr %i.bii, %i.bik
  br i1 %i.bil, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %.thread1613
  %i.bim = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.bii, ptr noundef nonnull %i.bik, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0217.0.vec.extract = extractelement <2 x float> %i.bim, i64 0
  %i.bin = fadd float %.sroa.0217.0.vec.extract, 0.000000e+00
  br label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %.thread1613
  %.01199 = phi float [ %i.bin, %bb.pf ], [ 0.000000e+00, %.thread1613 ] ; 2 uses
  %.not1344 = icmp ugt ptr %i.bgz, %i.big
  %i.bio = icmp ule ptr %i.bhc, %i.big
  %or.cond178 = or i1 %i.bif, %i.bio
  %or.cond1393 = select i1 %.not1344, i1 true, i1 %or.cond178
  %i.bip = fadd float %.01199, %i.bgq
  %.11200 = select i1 %or.cond1393, float %.01199, float %i.bip ; 2 uses
  %i.biq = fcmp oeq float %.11200, 0.000000e+00
  br i1 %i.biq, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.bir = load float, ptr %18, align 8, !tbaa !194
  %i.bis = fsub float %i.bir, %i.bgf
  %i.bit = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %i.bhr, ptr noundef %i.bii, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0216.0.vec.extract = extractelement <2 x float> %i.bit, i64 0
  %i.biu = fadd float %i.bis, %.sroa.0216.0.vec.extract ; 2 uses
  %i.biv = load float, ptr %i.bhh, align 4, !tbaa !197
  %i.biw = trunc nsw i64 %indvars.iv1671 to i32
  %i.bix = sitofp i32 %i.biw to float
  %i.biy = load float, ptr %i.bbj, align 8, !tbaa !205 ; 2 uses
  %i.biz = call float @llvm.fmuladd.f32(float %i.bix, float %i.biy, float %i.biv) ; 2 uses
  %i.bja = fadd float %.11200, %i.biu
  %i.bjb = fadd float %i.bgk, %i.biz
  %i.bjc = fadd float %i.biy, %i.bjb
  %i.bjd = fadd float %i.bgj, %i.biz
  %i.bje = load <4 x float>, ptr %19, align 16, !tbaa !190 ; 3 uses
  %i.bjf = insertelement <4 x float> poison, float %i.biu, i64 0
  %i.bjg = insertelement <4 x float> %i.bjf, float %i.bjd, i64 1
  %i.bjh = insertelement <4 x float> %i.bjg, float %i.bja, i64 2
  %i.bji = insertelement <4 x float> %i.bjh, float %i.bjc, i64 3 ; 3 uses
  %i.bjj = fcmp oge <4 x float> %i.bji, %i.bje
  %i.bjk = fcmp olt <4 x float> %i.bji, %i.bje
  %i.bjl = shufflevector <4 x i1> %i.bjj, <4 x i1> %i.bjk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bjm = select <4 x i1> %i.bjl, <4 x float> %i.bji, <4 x float> %i.bje
  store <4 x float> %i.bjm, ptr %20, align 16, !tbaa !190
  %i.bjn = load ptr, ptr %i.bhj, align 8, !tbaa !202
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bjn, ptr noundef nonnull align 4 dereferenceable(8) %20, ptr noundef nonnull align 4 dereferenceable(8) %i.bhi, i32 noundef %i.bgi, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pg, %bb.ph
  %i.bjo = load i32, ptr %i.h, align 4, !tbaa !208
  %i.bjp = sext i32 %i.bjo to i64
  %i.bjq = icmp slt i64 %indvars.iv.next1672, %i.bjp
  br i1 %i.bjq, label %bb.pa, label %.loopexit, !llvm.loop !690

.loopexit:                                        ; preds = %bb.pi, %bb.oz, %bb.oy, %bb.od
  %i.bjr = phi i1 [ false, %bb.od ], [ false, %bb.oy ], [ true, %bb.oz ], [ true, %bb.pi ]
  %i.bjs = phi i32 [ %i.bdo, %bb.od ], [ %i.bfa, %bb.oy ], [ %i.bfa, %bb.oz ], [ %i.bfa, %bb.pi ] ; 3 uses
  %.sroa.01483.01607 = phi <2 x float> [ zeroinitializer, %bb.od ], [ %.sroa.01483.01606, %bb.oy ], [ %.sroa.01483.01606, %bb.oz ], [ %.sroa.01483.01606, %bb.pi ] ; 2 uses
  %.sroa.01478.0 = phi float [ 0.000000e+00, %bb.od ], [ %i.bgf, %bb.oy ], [ %i.bgf, %bb.oz ], [ %i.bgf, %bb.pi ] ; 2 uses
  %.41246 = phi i8 [ 0, %bb.od ], [ %.31245, %bb.oy ], [ %.31245, %bb.oz ], [ %.31245, %bb.pi ] ; 2 uses
  %i.bjt = load i32, ptr %i.ei, align 4, !tbaa !218
  %.not1340 = icmp eq i32 %i.bjt, %i.s
  br i1 %.not1340, label %bb.pl, label %bb.pj

bb.pj:                                            ; preds = %.loopexit
  %i.bju = and i32 %5, 131072
  %i.bjv = icmp eq i32 %i.bju, 0
  %i.bjw = trunc nuw i8 %.41246 to i1
  %or.cond181 = select i1 %i.bjv, i1 true, i1 %i.bjw
  %or.cond184 = or i1 %i.bjr, %or.cond181
  br i1 %or.cond184, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.bjx = load float, ptr %18, align 8, !tbaa !194 ; 2 uses
  %i.bjy = load float, ptr %i.ao, align 8, !tbaa !238
  %i.bjz = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %.012081595, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.0215.0.vec.extract = extractelement <2 x float> %i.bjz, i64 0
  %i.bka = fsub float %i.bjy, %.sroa.0215.0.vec.extract
  %i.bkb = load float, ptr %i.aa, align 4, !tbaa !206
  %i.bkc = fsub float %i.bka, %i.bkb              ; 2 uses
  %i.bkd = fcmp olt float %i.bjx, %i.bkc
  %i.bke = select i1 %i.bkd, float %i.bjx, float %i.bkc
  store float %i.bke, ptr %18, align 8, !tbaa !194
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj, %.loopexit
  br i1 %i.r, label %bb.pn, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.bkf = icmp sgt i64 %i.bbd, 2097151
  %.not1341 = icmp ult i32 %i.bjs, 16777216
  %or.cond1394 = or i1 %.not1341, %i.bkf
  br i1 %or.cond1394, label %bb.pt, label %bb.po

bb.pn:                                            ; preds = %bb.pl
  %.not1341.old = icmp ult i32 %i.bjs, 16777216
  br i1 %.not1341.old, label %bb.pt, label %bb.po

bb.po:                                            ; preds = %bb.pm, %bb.pn
  %i.bkg = load i32, ptr %i.g, align 4, !tbaa !208 ; 3 uses
  %i.bkh = load i32, ptr %i.h, align 4, !tbaa !208 ; 3 uses
  %i.bki = icmp slt i32 %i.bkg, %i.bkh
  br i1 %i.bki, label %bb.pp, label %bb.pt

bb.pp:                                            ; preds = %bb.po
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.i, i64 4552
  %i.bkk = load ptr, ptr %i.bkj, align 8, !tbaa !401
  %i.bkl = getelementptr inbounds nuw i8, ptr %.21264, i64 712
  %i.bkm = load ptr, ptr %i.bkl, align 8, !tbaa !202
  %i.bkn = load float, ptr %i.bbj, align 8, !tbaa !205 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  %i.bko = sitofp i32 %i.bkg to float
  %i.bkp = load <2 x float>, ptr %18, align 8, !tbaa !190 ; 2 uses
  %i.bkq = extractelement <2 x float> %i.bkp, i64 0
  %i.bkr = fsub float %i.bkq, %.sroa.01478.0
  %i.bks = fmul float %i.bkn, %i.bko
  %i.bkt = insertelement <2 x float> poison, float %i.bkr, i64 0
  %i.bku = insertelement <2 x float> %i.bkt, float %i.bks, i64 1
  %i.bkv = insertelement <2 x float> %i.bkp, float 0.000000e+00, i64 0
  %i.bkw = fadd <2 x float> %i.bku, %i.bkv
  store <2 x float> %i.bkw, ptr %21, align 8
  %i.bkx = load i32, ptr %i.atz, align 8, !tbaa !733 ; 2 uses
  %.not.i1455 = icmp eq i32 %i.bkx, 0
  br i1 %.not.i1455, label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.bky = getelementptr inbounds nuw i8, ptr %i.i, i64 9552
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !730
  %i.bla = sext i32 %i.bkg to i64
  %i.blb = getelementptr inbounds [4 x i8], ptr %i.bkz, i64 %i.bla
  %i.blc = load i32, ptr %i.blb, align 4, !tbaa !208
  %i.bld = sext i32 %i.blc to i64
  br label %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456

_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456: ; preds = %bb.pp, %bb.pq
  %i.ble = phi i64 [ %i.bld, %bb.pq ], [ 0, %bb.pp ]
  %i.blf = getelementptr inbounds i8, ptr %.012081595, i64 %i.ble
  %i.blg = icmp slt i32 %i.bkh, %i.bkx
  br i1 %i.blg, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456
  %i.blh = getelementptr inbounds nuw i8, ptr %i.i, i64 9552
  %i.bli = load ptr, ptr %i.blh, align 8, !tbaa !730
  %i.blj = sext i32 %i.bkh to i64
  %i.blk = getelementptr inbounds [4 x i8], ptr %i.bli, i64 %i.blj
  %i.bll = load i32, ptr %i.blk, align 4, !tbaa !208
  %i.blm = add nsw i32 %i.bll, -1
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457

bb.ps:                                            ; preds = %_ZN14ImGuiTextIndex14get_line_beginEPKci.exit1456
  %i.bln = load i32, ptr %i.bbf, align 8, !tbaa !732
  br label %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457

_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457:  ; preds = %bb.pr, %bb.ps
  %i.blo = phi i32 [ %i.blm, %bb.pr ], [ %i.bln, %bb.ps ]
  %i.blp = sext i32 %i.blo to i64
  %i.blq = getelementptr inbounds i8, ptr %.012081595, i64 %i.blp
  call void @_ZN6ImFont10RenderTextEP10ImDrawListfRK6ImVec2jRK6ImVec4PKcS9_fi(ptr noundef nonnull align 8 dereferenceable(76) %i.bkk, ptr noundef %i.bkm, float noundef %i.bkn, ptr noundef nonnull align 4 dereferenceable(8) %21, i32 noundef %i.bjs, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef %i.blf, ptr noundef %i.blq, float noundef %.01259, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %bb.pt

bb.pt:                                            ; preds = %_ZN14ImGuiTextIndex12get_line_endEPKci.exit1457, %bb.po, %bb.pn, %bb.pm
  %i.blr = trunc nuw i8 %.41246 to i1
  br i1 %i.blr, label %bb.pu, label %bb.qa

bb.pu:                                            ; preds = %bb.pt
  %i.bls = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.blt = load float, ptr %i.bls, align 8, !tbaa !734
  %i.blu = getelementptr inbounds nuw i8, ptr %.012601537, i64 108 ; 2 uses
  %i.blv = load float, ptr %i.blu, align 4, !tbaa !391
  %i.blw = fadd float %i.blt, %i.blv              ; 3 uses
  store float %i.blw, ptr %i.blu, align 4, !tbaa !391
  %i.blx = getelementptr inbounds nuw i8, ptr %i.i, i64 122
  %i.bly = load i8, ptr %i.blx, align 2, !tbaa !735, !range !184, !noundef !185
  %i.blz = trunc nuw i8 %i.bly to i1
  %i.bma = fcmp ugt float %i.blw, 0.000000e+00
  %or.cond1395 = select i1 %i.blz, i1 %i.bma, i1 false
  br i1 %or.cond1395, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  %i.bmb = call float @fmodf(float noundef %i.blw, float noundef 1.200000e+00) #41
  %i.bmc = fcmp ole float %i.bmb, 8.000000e-01
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pu
  %i.bmd = phi i1 [ %i.bmc, %bb.pv ], [ true, %bb.pu ]
  %i.bme = load float, ptr %18, align 8, !tbaa !194
  %.sroa.01483.0.vec.extract1486 = extractelement <2 x float> %.sroa.01483.01607, i64 0
  %i.bmf = fadd float %.sroa.01483.0.vec.extract1486, %i.bme
  %i.bmg = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.bmh = load float, ptr %i.bmg, align 4, !tbaa !197
  %.sroa.01483.4.vec.extract1491 = extractelement <2 x float> %.sroa.01483.01607, i64 1
  %i.bmi = load float, ptr %i.bbj, align 8, !tbaa !205
  %i.bmj = fadd float %.sroa.01483.4.vec.extract1491, %i.bmh
  %i.bmk = fsub float %i.bmf, %.sroa.01478.0
  %i.bml = insertelement <4 x float> poison, float %i.bmj, i64 0
  %i.bmm = insertelement <4 x float> %i.bml, float %i.bmk, i64 1
  %i.bmn = fptosi <4 x float> %i.bmm to <4 x i32>
  %i.bmo = sitofp <4 x i32> %i.bmn to <4 x float> ; 4 uses
  %i.bmp = shufflevector <4 x float> %i.bmo, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.bmq = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.bmi, i64 3
  %i.bmr = fsub <4 x float> %i.bmp, %i.bmq
  %i.bms = fadd <4 x float> %i.bmr, <float 1.000000e+00, float -1.500000e+00, float -0.000000e+00, float 5.000000e-01> ; 4 uses
  %i.bmt = load <4 x float>, ptr %19, align 16    ; 2 uses
  %i.bmu = fcmp ogt <4 x float> %i.bmt, %i.bms
  %i.bmv = fcmp olt <4 x float> %i.bmt, %i.bms
  %i.bmw = shufflevector <4 x i1> %i.bmv, <4 x i1> %i.bmu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bmx = freeze <4 x i1> %i.bmw
  %i.bmy = bitcast <4 x i1> %i.bmx to i4
  %i.bmz = icmp eq i4 %i.bmy, -1
  %op.rdx = select i1 %i.bmz, i1 %i.bmd, i1 false
  br i1 %op.rdx, label %bb.px, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.px:                                            ; preds = %bb.pw
  %i.bna = getelementptr inbounds nuw i8, ptr %.21264, i64 712
  %i.bnb = load ptr, ptr %i.bna, align 8, !tbaa !202
  %i.bnc = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 34, float noundef 1.000000e+00)
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.i, i64 3472
  %i.bne = load float, ptr %i.bnd, align 8, !tbaa !736
  %i.bnf = extractelement <4 x float> %i.bms, i64 1
  %i.bng = extractelement <4 x float> %i.bms, i64 3
  %i.bnh = extractelement <4 x float> %i.bmo, i64 1
  call void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224) %i.bnb, float noundef %i.bnh, float noundef %i.bng, float noundef %i.bnf, i32 noundef %i.bnc, float noundef %i.bne)
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.px, %bb.pw
  br i1 %i.dl, label %bb.qa, label %bb.py

bb.py:                                            ; preds = %_ZNK6ImRect8OverlapsERKS_.exit.thread
  %i.bni = load i32, ptr %i.ei, align 4, !tbaa !218
  %i.bnj = icmp eq i32 %i.bni, %i.s
  br i1 %i.bnj, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %bb.py
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.i, i64 10008
  store i8 1, ptr %i.bnk, align 8, !tbaa !737
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.i, i64 10009
  store i8 1, ptr %i.bnl, align 1, !tbaa !738
  %i.bnm = extractelement <4 x float> %i.bmo, i64 1
  %i.bnn = fadd float %i.bnm, -1.000000e+00
  %i.bno = load float, ptr %i.bbj, align 8, !tbaa !205 ; 2 uses
  %i.bnp = extractelement <4 x float> %i.bmo, i64 0
  %i.bnq = fsub float %i.bnp, %i.bno
end_hunk_6
begin_hunk_7_@_ZN5ImGui12ColorPicker4EPKcPfiPKf:bb.a

.critedge.i511:                                   ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.da:                                            ; preds = %bb.cz
  %i.qv = load float, ptr %i.k, align 4, !tbaa !190
  %i.qw = fcmp oeq float %i.qv, 0.000000e+00
  br i1 %i.qw, label %._crit_edge.i513, label %bb.db

._crit_edge.i513:                                 ; preds = %bb.da
  %.phi.trans.insert.i514 = getelementptr inbounds nuw i8, ptr %i.qj, i64 9732
  %.pre.i515 = load float, ptr %.phi.trans.insert.i514, align 4, !tbaa !464
  br label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.qx = load float, ptr %i.j, align 4, !tbaa !190
  %i.qy = fcmp oeq float %i.qx, 0.000000e+00
  br i1 %i.qy, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qj, i64 9732
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !464
  %i.rb = fcmp oeq float %i.ra, 1.000000e+00
  br i1 %i.rb, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc, %._crit_edge.i513
  %i.rc = phi float [ %.pre.i515, %._crit_edge.i513 ], [ 1.000000e+00, %bb.dc ]
  store float %i.rc, ptr %i.j, align 4, !tbaa !190
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %i.rd = load float, ptr %i.l, align 4, !tbaa !190
  %i.re = fcmp oeq float %i.rd, 0.000000e+00
  br i1 %i.re, label %bb.df, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.df:                                            ; preds = %bb.de
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qj, i64 9736
  %i.rg = load float, ptr %i.rf, align 8, !tbaa !465
  store float %i.rg, ptr %i.k, align 4, !tbaa !190
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

bb.dg:                                            ; preds = %bb.cx
  %i.rh = and i32 %.3, 536870912
  %.not466 = icmp eq i32 %i.rh, 0
  br i1 %.not466, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ri = load float, ptr %1, align 4, !tbaa !190 ; 2 uses
  store float %i.ri, ptr %i.j, align 4, !tbaa !190
  %i.rj = load float, ptr %i.dp, align 4, !tbaa !190 ; 2 uses
  store float %i.rj, ptr %i.k, align 4, !tbaa !190
  %i.rk = load float, ptr %i.dr, align 4, !tbaa !190 ; 2 uses
  store float %i.rk, ptr %i.l, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ri, float noundef %i.rj, float noundef %i.rk, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516

_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516:       ; preds = %bb.df, %bb.de, %.critedge.i511, %bb.cz, %bb.dh, %bb.dg, %.thread598
  %i.rl = getelementptr inbounds nuw i8, ptr %i.w, i64 3220 ; 4 uses
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !771 ; 4 uses
  %i.rn = fcmp olt float %i.rm, 0.000000e+00
  %i.ro = fcmp ogt float %i.rm, 1.000000e+00
  %i.rp = select i1 %i.ro, float 1.000000e+00, float %i.rm
  %i.rq = call float @llvm.fmuladd.f32(float %i.rp, float 2.550000e+02, float 5.000000e-01)
  %i.rr = select i1 %i.rn, float 5.000000e-01, float %i.rq
  %i.rs = fptosi float %i.rr to i32
  %i.rt = shl i32 %i.rs, 24                       ; 11 uses
  %i.ru = or disjoint i32 %i.rt, 16711680         ; 5 uses
  %i.rv = or disjoint i32 %i.rt, 16776960         ; 5 uses
  %i.rw = or disjoint i32 %i.rt, 16777215         ; 6 uses
  %i.rx = or disjoint i32 %i.rt, 8421504          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #41
  %i.ry = or disjoint i32 %i.rt, 255              ; 7 uses
  store i32 %i.ry, ptr %i.v, align 16, !tbaa !208
  %i.rz = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.sa = or disjoint i32 %i.rt, 65280            ; 5 uses
  %i.sb = or disjoint i32 %i.rt, 65535            ; 5 uses
  store i32 %i.sb, ptr %i.rz, align 4, !tbaa !208
  %i.sc = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.sa, ptr %i.sc, align 8, !tbaa !208
  %i.sd = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.rv, ptr %i.sd, align 4, !tbaa !208
  %i.se = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.ru, ptr %i.se, align 16, !tbaa !208
  %i.sf = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.sg = or disjoint i32 %i.rt, 16711935         ; 5 uses
  store i32 %i.sg, ptr %i.sf, align 4, !tbaa !208
  %i.sh = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.ry, ptr %i.sh, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %i.si = getelementptr inbounds nuw i8, ptr %29, i64 4
  store <2 x float> splat (float 1.000000e+00), ptr %29, align 8, !tbaa !190
  %i.sj = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.sj, align 8, !tbaa !312
  %i.sk = getelementptr inbounds nuw i8, ptr %29, i64 12
  store float %i.rm, ptr %i.sk, align 4, !tbaa !254
  %i.sl = load float, ptr %i.j, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.sl, float noundef 1.000000e+00, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %29, ptr noundef nonnull align 4 dereferenceable(4) %i.si, ptr noundef nonnull align 4 dereferenceable(4) %i.sj)
  %i.sm = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %29) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  %i.sn = load float, ptr %i.m, align 4, !tbaa !190
  %i.so = load float, ptr %i.n, align 4, !tbaa !190
  %i.sp = load float, ptr %i.o, align 4, !tbaa !190
  %i.sq = load float, ptr %i.rl, align 4, !tbaa !771
  store float %i.sn, ptr %30, align 4, !tbaa !310
  %i.sr = getelementptr inbounds nuw i8, ptr %30, i64 4
  store float %i.so, ptr %i.sr, align 4, !tbaa !311
  %i.ss = getelementptr inbounds nuw i8, ptr %30, i64 8
  store float %i.sp, ptr %i.ss, align 4, !tbaa !312
  %i.st = getelementptr inbounds nuw i8, ptr %30, i64 12
  store float %i.sq, ptr %i.st, align 4, !tbaa !254
  %i.su = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %30) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #41
  store <2 x float> zeroinitializer, ptr %31, align 8, !tbaa !190
  br i1 %.not453, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516
  %i.sv = fdiv float 5.000000e-01, %i.cj          ; 2 uses
  %i.sw = fptosi float %i.cj to i32
  %i.sx = sdiv i32 %i.sw, 12
  %i.sy = call noundef i32 @llvm.smax.i32(i32 %i.sx, i32 4)
  %i.sz = fneg float %i.sv
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.tb = fadd float %i.cj, %i.ck                 ; 2 uses
  %i.tc = fmul float %i.tb, 5.000000e-01
  %i.td = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.tf = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.tg = shufflevector <2 x float> %i.tf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.th = insertelement <2 x float> poison, float %i.sz, i64 0
  %i.ti = insertelement <2 x float> %i.th, float %i.sv, i64 1
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dk
  %i.tj = load float, ptr %i.j, align 4, !tbaa !190
  %i.tk = fmul float %i.tj, 2.000000e+00
  %i.tl = fmul float %i.tk, f0x40490FDB           ; 2 uses
  %i.tm = call float @cosf(float noundef %i.tl) #41
  %i.tn = call float @sinf(float noundef %i.tl) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #41
  %i.to = load <2 x float>, ptr %16, align 8, !tbaa !190
  %i.tp = insertelement <2 x float> poison, float %i.tb, i64 0
  %i.tq = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tr = insertelement <2 x float> poison, float %i.tm, i64 0
  %i.ts = insertelement <2 x float> %i.tr, float %i.tn, i64 1 ; 2 uses
  %i.tt = fmul <2 x float> %i.tq, %i.ts
  %i.tu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tt, <2 x float> splat (float 5.000000e-01), <2 x float> %i.to)
  store <2 x float> %i.tu, ptr %32, align 8, !tbaa !190
  %.v = select i1 %i.nn, float 6.500000e-01, float 5.500000e-01
  %i.tv = fmul float %i.ci, %.v                   ; 4 uses
  %i.tw = call noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, float noundef %i.tv) ; 3 uses
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tv, i32 noundef %i.sm, i32 noundef %i.tw)
  %i.tx = fadd float %i.tv, 1.000000e+00
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tx, i32 noundef %i.rx, i32 noundef %i.tw, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %32, float noundef %i.tv, i32 noundef %i.rw, i32 noundef %i.tw, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #41
  %i.ty = insertelement <2 x i1> poison, i1 %i.cz, i64 0
  %i.tz = shufflevector <2 x i1> %i.ty, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ua = select <2 x i1> %i.tz, <2 x float> %i.ts, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 5 uses
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.uc = extractelement <2 x float> %i.ua, i64 1
  %i.ud = load <2 x float>, ptr %17, align 8, !tbaa !190 ; 2 uses
  %i.ue = load <2 x float>, ptr %16, align 8, !tbaa !190 ; 3 uses
  %i.uf = fneg float %i.uc                        ; 2 uses
  %i.ug = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uh = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ui = insertelement <2 x float> %i.uh, float %i.uf, i64 0
  %i.uj = fmul <2 x float> %i.ug, %i.ui
  %i.uk = shufflevector <2 x float> %i.ud, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ul = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uk, <2 x float> %i.ua, <2 x float> %i.uj)
  %i.um = fadd <2 x float> %i.ue, %i.ul           ; 2 uses
  store <2 x float> %i.um, ptr %33, align 8
  %i.un = load <2 x float>, ptr %18, align 8, !tbaa !190 ; 2 uses
  %i.uo = load <2 x float>, ptr %19, align 8, !tbaa !190 ; 2 uses
  %i.up = shufflevector <2 x float> %i.uo, <2 x float> %i.ua, <4 x i32> <i32 poison, i32 1, i32 2, i32 1>
  %i.uq = insertelement <4 x float> %i.up, float %i.uf, i64 0 ; 2 uses
  %i.ur = shufflevector <2 x float> %i.un, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.us = shufflevector <4 x float> %i.ur, <4 x float> %i.uq, <4 x i32> <i32 1, i32 4, i32 1, i32 6>
  %i.ut = fmul <4 x float> %i.uq, %i.us
  %i.uu = shufflevector <2 x float> %i.un, <2 x float> %i.uo, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.uv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uu, <4 x float> %i.ub, <4 x float> %i.ut) ; 2 uses
  %i.uw = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ux = fadd <2 x float> %i.ue, %i.uw           ; 2 uses
  store <2 x float> %i.ux, ptr %34, align 8
  %i.uy = shufflevector <4 x float> %i.uv, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.uz = fadd <2 x float> %i.ue, %i.uy           ; 2 uses
  store <2 x float> %i.uz, ptr %35, align 8
  %i.va = call <2 x float> @_ZN5ImGui22GetFontTexUvWhitePixelEv() ; 3 uses
  call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, i32 noundef 3, i32 noundef 3)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ae, i64 52 ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !772 ; 3 uses
  %i.vd = trunc i32 %i.vc to i16
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !773 ; 3 uses
  store i16 %i.vd, ptr %i.vf, align 2, !tbaa !219
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 2
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !774 ; 7 uses
  %41 = shufflevector <2 x float> %i.um, <2 x float> %i.va, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %41, ptr %i.vi, align 4, !tbaa !190
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  store i32 %i.sm, ptr %i.vj, align 4, !tbaa !776
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 20
  %42 = shufflevector <2 x float> %i.ux, <2 x float> %i.va, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %42, ptr %i.vk, align 4, !tbaa !190
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 36
  store i32 %i.rt, ptr %i.vl, align 4, !tbaa !776
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 40
  %i.vn = trunc i32 %i.vc to i16
  %i.vo = insertelement <2 x i16> poison, i16 %i.vn, i64 0
  %i.vp = shufflevector <2 x i16> %i.vo, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.vq = add <2 x i16> %i.vp, <i16 1, i16 2>
  store <2 x i16> %i.vq, ptr %i.vg, align 2, !tbaa !219
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vf, i64 6
  store ptr %i.vr, ptr %i.ve, align 8, !tbaa !773
  %43 = shufflevector <2 x float> %i.uz, <2 x float> %i.va, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %43, ptr %i.vm, align 4, !tbaa !190
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vi, i64 56
  store i32 %i.rw, ptr %i.vs, align 4, !tbaa !776
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vi, i64 60
  store ptr %i.vt, ptr %i.vh, align 8, !tbaa !774
  %i.vu = add i32 %i.vc, 3
  store i32 %i.vu, ptr %i.vb, align 4, !tbaa !772
  call void @_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %33, ptr noundef nonnull align 4 dereferenceable(8) %34, ptr noundef nonnull align 4 dereferenceable(8) %35, i32 noundef %i.rx, float noundef 1.500000e+00)
  %i.vv = load float, ptr %i.k, align 4, !tbaa !190
  %i.vw = load float, ptr %i.l, align 4, !tbaa !190
  %i.vx = fsub float 1.000000e+00, %i.vw
  %i.vy = load <2 x float>, ptr %35, align 8, !tbaa !190 ; 2 uses
  %i.vz = load <2 x float>, ptr %33, align 8, !tbaa !190
  %i.wa = fsub <2 x float> %i.vz, %i.vy
  %i.wb = insertelement <2 x float> poison, float %i.vv, i64 0
  %i.wc = insertelement <2 x float> %i.wb, float %i.vx, i64 1 ; 3 uses
  %i.wd = fcmp olt <2 x float> %i.wc, zeroinitializer
  %i.we = fcmp ogt <2 x float> %i.wc, splat (float 1.000000e+00)
  %i.wf = select <2 x i1> %i.we, <2 x float> splat (float 1.000000e+00), <2 x float> %i.wc
  %i.wg = select <2 x i1> %i.wd, <2 x float> zeroinitializer, <2 x float> %i.wf ; 2 uses
  %i.wh = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wa, <2 x float> %i.wh, <2 x float> %i.vy) ; 2 uses
  %i.wj = load <2 x float>, ptr %34, align 8, !tbaa !190
  %i.wk = fsub <2 x float> %i.wj, %i.wi
  %i.wl = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wk, <2 x float> %i.wl, <2 x float> %i.wi)
  store <2 x float> %i.wm, ptr %31, align 8, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #41
  br label %bb.dn

bb.dk:                                            ; preds = %bb.di, %bb.dk
  %i.wn = phi i32 [ %i.ry, %bb.di ], [ %i.xo, %bb.dk ]
  %indvars.iv = phi i64 [ 0, %bb.di ], [ %indvars.iv.next, %bb.dk ] ; 2 uses
  %i.wo = trunc nuw nsw i64 %indvars.iv to i32
  %i.wp = uitofp nneg i32 %i.wo to float
  %i.wq = insertelement <2 x float> poison, float %i.wp, i64 0
  %i.wr = shufflevector <2 x float> %i.wq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ws = fadd nnan <2 x float> %i.wr, <float -0.000000e+00, float 1.000000e+00>
  %i.wt = fdiv nnan <2 x float> %i.ws, splat (float 6.000000e+00)
  %i.wu = fmul nnan <2 x float> %i.wt, splat (float 2.000000e+00)
  %i.wv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wu, <2 x float> splat (float f0x40490FDB), <2 x float> %i.ti) ; 2 uses
  %i.ww = load i32, ptr %i.ta, align 8, !tbaa !777
  %i.wx = extractelement <2 x float> %i.wv, i64 0 ; 3 uses
  %i.wy = extractelement <2 x float> %i.wv, i64 1 ; 3 uses
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %16, float noundef %i.tc, float noundef %i.wx, float noundef %i.wy, i32 noundef %i.sy)
  %i.wz = load ptr, ptr %i.te, align 8, !tbaa !467
  %i.xa = load i32, ptr %i.td, align 8, !tbaa !468
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef %i.wz, i32 noundef %i.xa, i32 noundef %i.rw, float noundef %i.ci, i32 noundef 0)
  store i32 0, ptr %i.td, align 8, !tbaa !468
  %i.xb = load i32, ptr %i.ta, align 8, !tbaa !777
  %i.xc = call float @cosf(float noundef %i.wx) #41
  %i.xd = call float @sinf(float noundef %i.wx) #41
  %i.xe = call float @cosf(float noundef %i.wy) #41
  %i.xf = call float @sinf(float noundef %i.wy) #41
  %i.xg = load <2 x float>, ptr %16, align 8, !tbaa !190 ; 2 uses
  %i.xh = insertelement <2 x float> poison, float %i.xc, i64 0
  %i.xi = insertelement <2 x float> %i.xh, float %i.xd, i64 1
  %i.xj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xi, <2 x float> %i.tg, <2 x float> %i.xg)
  %i.xk = insertelement <2 x float> poison, float %i.xe, i64 0
  %i.xl = insertelement <2 x float> %i.xk, float %i.xf, i64 1
  %i.xm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xl, <2 x float> %i.tg, <2 x float> %i.xg)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !208 ; 2 uses
  call void @_ZN5ImGui38ShadeVertsLinearColorGradientKeepAlphaEP10ImDrawListii6ImVec2S2_jj(ptr noundef nonnull %i.ae, i32 noundef %i.ww, i32 noundef %i.xb, <2 x float> %i.xj, <2 x float> %i.xm, i32 noundef %i.wn, i32 noundef %i.xo)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.dj, label %bb.dk, !llvm.loop !770

bb.dl:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516
  %i.xp = and i32 %.3, 33554432
  %.not467 = icmp eq i32 %i.xp, 0
  br i1 %.not467, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #41
  %i.xq = extractelement <2 x float> %i.cp, i64 1
  %i.xr = fadd float %i.cd, %i.xq
  %.sroa.0.0.vec.insert.i533 = insertelement <2 x float> poison, float %i.cr, i64 0
  %.sroa.0.4.vec.insert.i534 = insertelement <2 x float> %.sroa.0.0.vec.insert.i533, float %i.xr, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i534, ptr %36, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %36, i32 noundef %i.rw, i32 noundef %i.sm, i32 noundef %i.sm, i32 noundef %i.rw)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #41
  %i.xs = load <2 x float>, ptr %15, align 8, !tbaa !190
  %i.xt = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.xu = shufflevector <2 x float> %i.xt, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.xv = fadd <2 x float> %i.xu, %i.xs
  store <2 x float> %i.xv, ptr %37, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef 0, i32 noundef 0, i32 noundef %i.rt, i32 noundef %i.rt)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #41
  %.sroa.032.0.copyload = load <2 x float>, ptr %15, align 8 ; 2 uses
  %i.xw = fadd <2 x float> %i.xu, %.sroa.032.0.copyload
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.032.0.copyload, <2 x float> %i.xw, float noundef 0.000000e+00)
  %i.xx = load float, ptr %i.k, align 4, !tbaa !190
  %i.xy = load float, ptr %i.l, align 4, !tbaa !190
  %i.xz = fsub float 1.000000e+00, %i.xy
  %i.ya = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.yb = load <2 x float>, ptr %15, align 8, !tbaa !190 ; 3 uses
  %i.yc = insertelement <2 x float> poison, float %i.xx, i64 0
  %i.yd = insertelement <2 x float> %i.yc, float %i.xz, i64 1 ; 3 uses
  %i.ye = fcmp olt <2 x float> %i.yd, zeroinitializer
  %i.yf = fcmp ogt <2 x float> %i.yd, splat (float 1.000000e+00)
  %i.yg = select <2 x i1> %i.yf, <2 x float> splat (float 1.000000e+00), <2 x float> %i.yd
  %i.yh = select <2 x i1> %i.ye, <2 x float> zeroinitializer, <2 x float> %i.yg
  %i.yi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yh, <2 x float> %i.xu, <2 x float> %i.yb)
  %i.yj = fadd <2 x float> %i.yi, splat (float 5.000000e-01)
  %i.yk = fptosi <2 x float> %i.yj to <2 x i32>
  %i.yl = sitofp <2 x i32> %i.yk to <2 x float>   ; 3 uses
  %i.ym = fadd <2 x float> %i.yb, splat (float 2.000000e+00) ; 2 uses
  %i.yn = fadd <2 x float> %i.xu, %i.yb
  %i.yo = fadd <2 x float> %i.yn, splat (float -2.000000e+00) ; 2 uses
  %i.yp = fcmp ogt <2 x float> %i.ym, %i.yl
  %i.yq = fcmp olt <2 x float> %i.yo, %i.yl
  %i.yr = select <2 x i1> %i.yq, <2 x float> %i.yo, <2 x float> %i.yl
  %i.ys = select <2 x i1> %i.yp, <2 x float> %i.ym, <2 x float> %i.yr
  store <2 x float> %i.ys, ptr %31, align 8, !tbaa !190
  %i.yt = fdiv float %i.cd, 6.000000e+00          ; 12 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %38, i64 4 ; 6 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yw = call float @llvm.fmuladd.f32(float %i.yt, float 0.000000e+00, float %i.ya)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.yw, ptr %i.yu, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.yx = fadd float %i.yt, %i.ya
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.yx, ptr %i.yv, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.ry, i32 noundef %i.ry, i32 noundef %i.sb, i32 noundef %i.sb)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yy = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.yz = fadd float %i.yt, %i.yy
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.yz, ptr %i.yu, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.za = call float @llvm.fmuladd.f32(float %i.yt, float 2.000000e+00, float %i.yy)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.za, ptr %i.yv, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.sb, i32 noundef %i.sb, i32 noundef %i.sa, i32 noundef %i.sa)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.zb = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zc = call float @llvm.fmuladd.f32(float %i.yt, float 2.000000e+00, float %i.zb)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zc, ptr %i.yu, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zd = call float @llvm.fmuladd.f32(float %i.yt, float 3.000000e+00, float %i.zb)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zd, ptr %i.yv, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.sa, i32 noundef %i.sa, i32 noundef %i.rv, i32 noundef %i.rv)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.ze = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zf = call float @llvm.fmuladd.f32(float %i.yt, float 3.000000e+00, float %i.ze)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zf, ptr %i.yu, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zg = call float @llvm.fmuladd.f32(float %i.yt, float 4.000000e+00, float %i.ze)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zg, ptr %i.yv, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rv, i32 noundef %i.rv, i32 noundef %i.ru, i32 noundef %i.ru)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.zh = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zi = call float @llvm.fmuladd.f32(float %i.yt, float 4.000000e+00, float %i.zh)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zi, ptr %i.yu, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zj = call float @llvm.fmuladd.f32(float %i.yt, float 5.000000e+00, float %i.zh)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zj, ptr %i.yv, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.ru, i32 noundef %i.ru, i32 noundef %i.sg, i32 noundef %i.sg)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.zk = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zl = call float @llvm.fmuladd.f32(float %i.yt, float 5.000000e+00, float %i.zk)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zl, ptr %i.yu, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zm = call float @llvm.fmuladd.f32(float %i.yt, float 6.000000e+00, float %i.zk)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zm, ptr %i.yv, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.sg, i32 noundef %i.sg, i32 noundef %i.ry, i32 noundef %i.ry)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  %i.zn = load float, ptr %i.cm, align 4, !tbaa !197 ; 3 uses
  %i.zo = load float, ptr %i.j, align 4, !tbaa !190
  %i.zp = call float @llvm.fmuladd.f32(float %i.zo, float %i.cd, float %i.zn)
  %i.zq = fadd float %i.zp, 5.000000e-01
  %i.zr = fptosi float %i.zq to i32
  %i.zs = sitofp i32 %i.zr to float
  %.sroa.0560.0.vec.insert = insertelement <2 x float> poison, float %i.cs, i64 0
  %.sroa.0560.4.vec.insert = insertelement <2 x float> %.sroa.0560.0.vec.insert, float %i.zn, i64 1
end_hunk_7
begin_hunk_8_@_ZN5ImGui14BeginBoxSelectERK6ImRectP11ImGuiWindowji:bb.a
  %i.ey = fcmp une float %i.ex, %i.dq
  br i1 %i.ey, label %bb.ba, label %_ZN6ImRect4AddYEf.exit136

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 9240 ; 3 uses
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !195 ; 2 uses
  %i.fb = fcmp ogt float %i.fa, %.sroa.6.0
  br i1 %i.fb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store float %.sroa.6.0, ptr %i.ez, align 8, !tbaa !195
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.fc = phi float [ %.sroa.6.0, %bb.bb ], [ %i.fa, %bb.ba ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 9248 ; 3 uses
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !196 ; 2 uses
  %i.ff = fcmp olt float %i.fe, %.sroa.6.0
  br i1 %i.ff, label %bb.bd, label %_ZN6ImRect4AddYEf.exit135

bb.bd:                                            ; preds = %bb.bc
  store float %.sroa.6.0, ptr %i.fd, align 8, !tbaa !196
  br label %_ZN6ImRect4AddYEf.exit135

_ZN6ImRect4AddYEf.exit135:                        ; preds = %bb.bc, %bb.bd
  %i.fg = phi float [ %i.fe, %bb.bc ], [ %.sroa.6.0, %bb.bd ]
  %i.fh = fcmp ogt float %i.fc, %.sroa.12.0
  br i1 %i.fh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZN6ImRect4AddYEf.exit135
  store float %.sroa.12.0, ptr %i.ez, align 8, !tbaa !195
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZN6ImRect4AddYEf.exit135
  %i.fi = fcmp olt float %i.fg, %.sroa.12.0
  br i1 %i.fi, label %bb.bg, label %_ZN6ImRect4AddYEf.exit136

bb.bg:                                            ; preds = %bb.bf
  store float %.sroa.12.0, ptr %i.fd, align 8, !tbaa !196
  br label %_ZN6ImRect4AddYEf.exit136

_ZN6ImRect4AddYEf.exit136:                        ; preds = %bb.bg, %bb.bf, %_ZN6ImRect4AddYEf.exit134.1, %bb.az
  %i.fj = load float, ptr %i.cm, align 8, !tbaa !801
  %i.fk = fcmp une float %i.fj, %i.cr
  br i1 %i.fk, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZN6ImRect4AddYEf.exit136
  %i.fl = load float, ptr %i.cl, align 8, !tbaa !802
  %i.fm = fcmp une float %i.fl, %i.dt
  br i1 %i.fm, label %bb.bi, label %_ZN6ImRect4AddXEf.exit138

bb.bi:                                            ; preds = %bb.bh, %_ZN6ImRect4AddYEf.exit136
  %i.fn = fcmp olt float %.sroa.0.0176, f0x7F7FFFFF
  br i1 %i.fn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store float %.sroa.0.0176, ptr %i.ck, align 4, !tbaa !237
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fo = phi float [ %.sroa.0.0176, %bb.bj ], [ f0x7F7FFFFF, %bb.bi ] ; 2 uses
  %i.fp = fcmp ogt float %.sroa.0.0176, f0xFF7FFFFF
  br i1 %i.fp, label %bb.bl, label %_ZN6ImRect4AddXEf.exit137

bb.bl:                                            ; preds = %bb.bk
  store float %.sroa.0.0176, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !238
  br label %_ZN6ImRect4AddXEf.exit137

_ZN6ImRect4AddXEf.exit137:                        ; preds = %bb.bk, %bb.bl
  %i.fq = phi float [ f0xFF7FFFFF, %bb.bk ], [ %.sroa.0.0176, %bb.bl ] ; 2 uses
  %i.fr = fcmp ogt float %i.fo, %.sroa.9.0
  br i1 %i.fr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZN6ImRect4AddXEf.exit137
  store float %.sroa.9.0, ptr %i.ck, align 4, !tbaa !237
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZN6ImRect4AddXEf.exit137
  %i.fs = phi float [ %.sroa.9.0, %bb.bm ], [ %i.fo, %_ZN6ImRect4AddXEf.exit137 ] ; 2 uses
  %i.ft = fcmp olt float %i.fq, %.sroa.9.0
  br i1 %i.ft, label %bb.bo, label %_ZN6ImRect4AddXEf.exit138

bb.bo:                                            ; preds = %bb.bn
  store float %.sroa.9.0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !238
  br label %_ZN6ImRect4AddXEf.exit138

_ZN6ImRect4AddXEf.exit138:                        ; preds = %bb.bo, %bb.bn, %bb.bh
  %i.fu = phi float [ %.sroa.9.0, %bb.bo ], [ %i.fq, %bb.bn ], [ f0xFF7FFFFF, %bb.bh ] ; 3 uses
  %i.fv = phi float [ %i.fs, %bb.bo ], [ %i.fs, %bb.bn ], [ f0x7F7FFFFF, %bb.bh ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 9220 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fw, ptr noundef nonnull align 4 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !236
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !237 ; 2 uses
  %i.fy = fcmp ogt float %i.fx, %i.fv
  br i1 %i.fy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN6ImRect4AddXEf.exit138
  store float %i.fv, ptr %i.fw, align 4, !tbaa !237
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_ZN6ImRect4AddXEf.exit138
  %i.fz = phi float [ %i.fv, %bb.bp ], [ %i.fx, %_ZN6ImRect4AddXEf.exit138 ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 9224 ; 2 uses
  %i.gb = load float, ptr %i.ga, align 8, !tbaa !195 ; 2 uses
  %i.gc = fcmp ogt float %i.gb, %i.ep
  br i1 %i.gc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store float %i.ep, ptr %i.ga, align 8, !tbaa !195
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.gd = phi float [ %i.ep, %bb.br ], [ %i.gb, %bb.bq ] ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 9228 ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !238 ; 2 uses
  %i.gg = fcmp olt float %i.gf, %i.fu
  br i1 %i.gg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store float %i.fu, ptr %i.ge, align 4, !tbaa !238
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.gh = phi float [ %i.fu, %bb.bt ], [ %i.gf, %bb.bs ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 9232 ; 2 uses
  %i.gj = load float, ptr %i.gi, align 8, !tbaa !196 ; 2 uses
  %i.gk = fcmp olt float %i.gj, %i.eo
  br i1 %i.gk, label %bb.bv, label %_ZN6ImRect3AddERKS_.exit139

bb.bv:                                            ; preds = %bb.bu
  store float %i.eo, ptr %i.gi, align 8, !tbaa !196
  br label %_ZN6ImRect3AddERKS_.exit139

_ZN6ImRect3AddERKS_.exit139:                      ; preds = %bb.bu, %bb.bv
  %i.gl = phi float [ %i.gj, %bb.bu ], [ %i.eo, %bb.bv ] ; 3 uses
  %i.gm = fcmp ogt float %i.fz, %i.gh
  %i.gn = fcmp ogt float %i.gd, %i.gl
  %i.go = select i1 %i.gm, i1 true, i1 %i.gn
  br i1 %i.go, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %_ZN6ImRect3AddERKS_.exit139
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.gq = load float, ptr %i.gp, align 8, !tbaa !237 ; 2 uses
  %i.gr = fcmp ult float %i.fz, %i.gq
  br i1 %i.gr, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !195 ; 2 uses
  %i.gu = fcmp oge float %i.gd, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.gw = load float, ptr %i.gv, align 8          ; 2 uses
  %i.gx = fcmp olt float %i.fz, %i.gw
  %or.cond.i = select i1 %i.gu, i1 %i.gx, i1 false
  br i1 %or.cond.i, label %_ZNK6ImRect8ContainsERK6ImVec2.exit, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit:              ; preds = %bb.bx
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 628
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !196 ; 2 uses
  %i.ha = fcmp uge float %i.gd, %i.gz
  %i.hb = fcmp ult float %i.gh, %i.gq
  %or.cond = select i1 %i.ha, i1 true, i1 %i.hb
  br i1 %or.cond, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread, label %bb.by

bb.by:                                            ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit
  %i.hc = fcmp oge float %i.gl, %i.gt
  %i.hd = fcmp olt float %i.gh, %i.gw
  %or.cond.i140 = select i1 %i.hc, i1 %i.hd, i1 false
  %i.he = fcmp olt float %i.gl, %i.gz
  %or.cond218 = and i1 %or.cond.i140, %i.he
  br i1 %or.cond218, label %bb.bz, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit.thread:       ; preds = %bb.by, %bb.bw, %bb.bx, %_ZNK6ImRect8ContainsERK6ImVec2.exit
  store i8 1, ptr %i.d, align 8, !tbaa !505
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread, %_ZN6ImRect3AddERKS_.exit139
  %i.hf = load i8, ptr %i.d, align 8, !tbaa !505, !range !184, !noundef !185
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !283 ; 2 uses
  %.not94 = icmp eq ptr %i.hi, null
  br i1 %.not94, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect(ptr noundef nonnull %i.hi, ptr noundef nonnull align 4 dereferenceable(16) %i.fw)
  br label %bb.cc

bb.cc:                                            ; preds = %bb.t, %bb.cb, %bb.ca, %bb.bz, %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit, %bb.a
  %.089 = phi i1 [ false, %bb.a ], [ false, %_ZL21BoxSelectActivateDragP19ImGuiBoxSelectStateP11ImGuiWindow.exit ], [ true, %bb.bz ], [ true, %bb.ca ], [ true, %bb.cb ], [ true, %bb.t ]
  ret i1 %.089
}

declare void @_ZN5ImGui28TableApplyExternalUnclipRectEP10ImGuiTableR6ImRect(ptr noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui12EndBoxSelectERK6ImRecti(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ImRect, align 16            ; 8 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9216
  store i8 0, ptr %i.d, align 8, !tbaa !505
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load float, ptr %i.e, align 8, !tbaa !194 ; 3 uses
  %i.h = load float, ptr %0, align 4, !tbaa !194  ; 2 uses
  %i.i = fcmp olt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load float, ptr %i.f, align 4, !tbaa !194 ; 2 uses
  %i.k = fcmp ogt float %i.g, %i.j
  %..i = select i1 %i.k, float %i.j, float %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi float [ %i.h, %bb.a ], [ %..i, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 276 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !197 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !197 ; 2 uses
  %i.q = fcmp olt float %i.n, %i.p
  br i1 %i.q, label %_Z7ImClampRK6ImVec2S1_S1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !197 ; 2 uses
  %i.t = fcmp ogt float %i.n, %i.s
  %.19.i = select i1 %i.t, float %i.s, float %i.n
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit

_Z7ImClampRK6ImVec2S1_S1_.exit:                   ; preds = %bb.c, %bb.d
  %i.u = phi float [ %i.p, %bb.c ], [ %.19.i, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.w = load <2 x float>, ptr %i.v, align 8, !tbaa !190
  %i.x = insertelement <2 x float> poison, float %i.l, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.u, i64 1
  %i.z = fsub <2 x float> %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 9188
  store <2 x float> %i.z, ptr %i.aa, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 9284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !236
  %i.ac = load <2 x float>, ptr %2, align 16, !tbaa !190 ; 2 uses
  %i.ad = load <2 x float>, ptr %0, align 4, !tbaa !190 ; 2 uses
  %i.ae = fcmp oge <2 x float> %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.af, align 8, !tbaa !190 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.f, align 4, !tbaa !190 ; 2 uses
  %i.ai = fcmp olt <2 x float> %i.ag, %i.ah
  %3 = shufflevector <2 x i1> %i.ae, <2 x i1> %i.ai, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %4 = shufflevector <2 x float> %i.ac, <2 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <2 x float> %i.ad, <2 x float> %i.ah, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = select <4 x i1> %3, <4 x float> %4, <4 x float> %5
  store <4 x float> %6, ptr %2, align 16, !tbaa !190
  %i.aj = tail call noundef ptr @_ZN5ImGui31FindFrontMostVisibleChildWindowEP11ImGuiWindow(ptr noundef %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 712 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !202
  %i.am = tail call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 29, float noundef 3.000000e-01)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.al, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.af, i32 noundef %i.am, float noundef 0.000000e+00, i32 noundef 0)
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !202
  %i.ao = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 57, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.an, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.af, i32 noundef %i.ao, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  %i.ap = and i32 %1, 2304
  %i.aq = icmp eq i32 %i.ap, 2048
  br i1 %i.aq, label %bb.e, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit

bb.e:                                             ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload = load float, ptr %0, align 4, !tbaa !190
  %.sroa.7.0.copyload = load float, ptr %i.o, align 4, !tbaa !190
  %.sroa.11.0.copyload = load float, ptr %i.f, align 4, !tbaa !190
  %.sroa.15.0.copyload = load float, ptr %i.ar, align 4, !tbaa !190
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.at = load float, ptr %i.as, align 8, !tbaa !205 ; 4 uses
  %i.au = fadd float %.sroa.0.0.copyload, %i.at   ; 3 uses
  %i.av = fadd float %.sroa.7.0.copyload, %i.at   ; 3 uses
  %i.aw = fsub float %.sroa.11.0.copyload, %i.at  ; 3 uses
  %i.ax = fsub float %.sroa.15.0.copyload, %i.at  ; 3 uses
  %i.ay = load float, ptr %i.e, align 8, !tbaa !194 ; 2 uses
  %i.az = fcmp ult float %i.ay, %i.au
  br i1 %i.az, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load float, ptr %i.m, align 4, !tbaa !197 ; 2 uses
  %i.bb = fcmp oge float %i.ba, %i.av
  %i.bc = fcmp olt float %i.ay, %i.aw
  %or.cond.i = select i1 %i.bb, i1 %i.bc, i1 false
  %i.bd = fcmp olt float %i.ba, %i.ax
  %or.cond = select i1 %or.cond.i, i1 %i.bd, i1 false
  br i1 %or.cond, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit.thread:       ; preds = %bb.e, %bb.f
  %i.be = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 272
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 4568 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 9196 ; 4 uses
  %i.bl = load float, ptr %i.bf, align 4, !tbaa !190 ; 3 uses
  %i.bm = fcmp ogt float %i.bl, %i.aw
  br i1 %i.bm, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread
  %i.bn = fcmp olt float %i.bl, %i.au
  br i1 %i.bn, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread
  %.pn.i = phi float [ %i.aw, %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread ], [ %i.au, %bb.g ]
  %i.bo = fsub float %i.bl, %.pn.i                ; 4 uses
  %i.bp = load float, ptr %i.bg, align 8, !tbaa !190 ; 3 uses
  %i.bq = fcmp oeq float %i.bo, 0.000000e+00
  br i1 %i.bq, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = fcmp olt float %i.bo, 0.000000e+00      ; 2 uses
  %i.bs = fcmp olt float %i.bp, 0.000000e+00
  %or.cond.i22 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond.i22, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = fcmp ogt float %i.bo, 0.000000e+00
  br i1 %i.bt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = load float, ptr %i.bh, align 8, !tbaa !190
  %i.bv = fcmp ult float %i.bp, %i.bu
  br i1 %i.bv, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = phi float [ 1.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.bx = load float, ptr %i.bi, align 8, !tbaa !205 ; 4 uses
  %i.by = fmul float %i.bx, 5.000000e+00
  %i.bz = call noundef float @llvm.fabs.f32(float %i.bo)
  %i.ca = fsub float %i.bz, %i.bx
  %i.cb = fsub float %i.by, %i.bx
  %i.cc = fdiv float %i.ca, %i.cb                 ; 3 uses
  %i.cd = fcmp olt float %i.cc, 0.000000e+00
  %i.ce = fcmp ogt float %i.cc, 1.000000e+00
  %i.cf = select i1 %i.ce, float 1.000000e+00, float %i.cc
  %i.cg = call float @llvm.fmuladd.f32(float %i.cf, float 3.000000e+00, float 1.000000e+00)
  %i.ch = select i1 %i.cd, float 1.000000e+00, float %i.cg
  %i.ci = fmul float %i.bx, 3.500000e+01
  %i.cj = fmul float %i.ci, %i.ch
  %i.ck = select i1 %i.br, float -1.000000e+00, float %i.bw
  %i.cl = fmul float %i.ck, %i.cj
  %i.cm = load float, ptr %i.bj, align 8, !tbaa !213
  %i.cn = fmul float %i.cm, %i.cl
  %i.co = load float, ptr %i.bk, align 4, !tbaa !190
  %i.cp = fadd float %i.co, %i.cn                 ; 4 uses
  store float %i.cp, ptr %i.bk, align 4, !tbaa !190
  %i.cq = fcmp ult float %i.cp, 0.000000e+00
  %i.cr = fptosi float %i.cp to i32               ; 2 uses
  %i.cs = sitofp i32 %i.cr to float
  %i.ct = fcmp une float %i.cp, %i.cs
  %or.cond.not.i.i = and i1 %i.cq, %i.ct
  %i.cu = sext i1 %or.cond.not.i.i to i32
  %i.cv = add nsw i32 %i.cu, %i.cr                ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cx = sitofp i32 %i.cv to float               ; 2 uses
  %i.cy = fadd float %i.bp, %i.cx
  call void @_ZN5ImGui10SetScrollXEP11ImGuiWindowf(ptr noundef nonnull %i.c, float noundef %i.cy)
  %.pre.i = load float, ptr %i.bk, align 4, !tbaa !190
  %i.cz = fsub float %.pre.i, %i.cx
  store float %i.cz, ptr %i.bk, align 4, !tbaa !190
  br label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %i.be, i64 276
  %i.db = load float, ptr %i.da, align 4, !tbaa !190 ; 3 uses
  %i.dc = fcmp ogt float %i.db, %i.ax
  br i1 %i.dc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread.i
  %i.dd = fcmp olt float %i.db, %i.av
  br i1 %i.dd, label %bb.o, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit

bb.o:                                             ; preds = %bb.n, %.thread.i
  %.pn.1.i = phi float [ %i.ax, %.thread.i ], [ %i.av, %bb.n ]
  %i.de = fsub float %i.db, %.pn.1.i              ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.dg = load float, ptr %i.df, align 4, !tbaa !190 ; 3 uses
  %i.dh = fcmp oeq float %i.de, 0.000000e+00
  br i1 %i.dh, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = fcmp olt float %i.de, 0.000000e+00      ; 2 uses
  %i.dj = fcmp olt float %i.dg, 0.000000e+00
  %or.cond.1.i = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond.1.i, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = fcmp ogt float %i.de, 0.000000e+00
  br i1 %i.dk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !190
  %i.dn = fcmp ult float %i.dg, %i.dm
  br i1 %i.dn, label %bb.s, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.do = phi float [ 1.000000e+00, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.dp = load float, ptr %i.bi, align 8, !tbaa !205 ; 4 uses
  %i.dq = fmul float %i.dp, 5.000000e+00
  %i.dr = call noundef float @llvm.fabs.f32(float %i.de)
  %i.ds = fsub float %i.dr, %i.dp
  %i.dt = fsub float %i.dq, %i.dp
  %i.du = fdiv float %i.ds, %i.dt                 ; 3 uses
  %i.dv = fcmp olt float %i.du, 0.000000e+00
  %i.dw = fcmp ogt float %i.du, 1.000000e+00
  %i.dx = select i1 %i.dw, float 1.000000e+00, float %i.du
  %i.dy = call float @llvm.fmuladd.f32(float %i.dx, float 3.000000e+00, float 1.000000e+00)
  %i.dz = select i1 %i.dv, float 1.000000e+00, float %i.dy
  %i.ea = fmul float %i.dp, 3.500000e+01
  %i.eb = fmul float %i.ea, %i.dz
  %i.ec = select i1 %i.di, float -1.000000e+00, float %i.do
  %i.ed = fmul float %i.ec, %i.eb
  %i.ee = load float, ptr %i.bj, align 8, !tbaa !213
  %i.ef = fmul float %i.ee, %i.ed
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 9200 ; 4 uses
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !190
  %i.ei = fadd float %i.eh, %i.ef                 ; 4 uses
  store float %i.ei, ptr %i.eg, align 8, !tbaa !190
  %i.ej = fcmp ult float %i.ei, 0.000000e+00
  %i.ek = fptosi float %i.ei to i32               ; 2 uses
  %i.el = sitofp i32 %i.ek to float
  %i.em = fcmp une float %i.ei, %i.el
  %or.cond.not.i.1.i = and i1 %i.ej, %i.em
  %i.en = sext i1 %or.cond.not.i.1.i to i32
  %i.eo = add nsw i32 %i.en, %i.ek                ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eq = sitofp i32 %i.eo to float               ; 2 uses
  %i.er = fadd float %i.dg, %i.eq
  call void @_ZN5ImGui10SetScrollYEP11ImGuiWindowf(ptr noundef nonnull %i.c, float noundef %i.er)
  %.pre53.i = load float, ptr %i.eg, align 8, !tbaa !190
  %i.es = fsub float %.pre53.i, %i.eq
  store float %i.es, ptr %i.eg, align 8, !tbaa !190
  br label %_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit

_ZL28BoxSelectScrollWithMouseDragP19ImGuiBoxSelectStateP11ImGuiWindowRK6ImRect.exit: ; preds = %bb.f, %bb.n, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %_Z7ImClampRK6ImVec2S1_S1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

declare noundef ptr @_ZN5ImGui31FindFrontMostVisibleChildWindowEP11ImGuiWindow(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5ImGui16BeginMultiSelectEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.ImGuiMultiSelectTempData, align 8 ; 12 uses
  %4 = alloca %struct.ImRect, align 16            ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 26 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 9312 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !511  ; 4 uses
  %i.f = add nsw i32 %i.e, 1                      ; 5 uses
  store i32 %i.f, ptr %i.d, align 8, !tbaa !511
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9320 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !804  ; 2 uses
  %.not = icmp slt i32 %i.e, %i.h
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 -1, i64 16, i1 false)
  store i8 0, ptr %i.j, align 1, !tbaa !512
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 0, ptr %i.k, align 8, !tbaa !805
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 9324 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !806  ; 4 uses
  %.not156 = icmp slt i32 %i.e, %i.n
  br i1 %.not156, label %_ZN8ImVectorI24ImGuiMultiSelectTempDataE7reserveEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI24ImGuiMultiSelectTempDataE14_grow_capacityEi.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sdiv i32 %i.n, 2
  %i.p = add nsw i32 %i.o, %i.n
  br label %_ZNK8ImVectorI24ImGuiMultiSelectTempDataE14_grow_capacityEi.exit.i

_ZNK8ImVectorI24ImGuiMultiSelectTempDataE14_grow_capacityEi.exit.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %i.p, %bb.d ], [ 8, %bb.c ]
  %i.r = tail call noundef i32 @llvm.smax.i32(i32 %i.q, i32 %i.f) ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.s, 88
  %i.u = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.t)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_ZNK8ImVectorI24ImGuiMultiSelectTempDataE14_grow_capacityEi.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 9328 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !513  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.w, null
  br i1 %.not6.i.i, label %.noexc150, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.x = load i32, ptr %i.g, align 8, !tbaa !807
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.u, ptr nonnull align 8 %i.w, i64 %i.z, i1 false)
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !513
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aa)
          to label %.noexc150 unwind label %bb.f

.noexc150:                                        ; preds = %bb.e, %.noexc
  store ptr %i.u, ptr %i.v, align 8, !tbaa !513
  store i32 %i.r, ptr %i.m, align 4, !tbaa !806
  %.pre = load i32, ptr %i.g, align 8, !tbaa !807
  br label %_ZN8ImVectorI24ImGuiMultiSelectTempDataE7reserveEi.exit.i

_ZN8ImVectorI24ImGuiMultiSelectTempDataE7reserveEi.exit.i: ; preds = %.noexc150, %bb.b
  %i.ab = phi i32 [ %.pre, %.noexc150 ], [ %i.h, %bb.b ] ; 2 uses
  %.not157 = icmp slt i32 %i.e, %i.ab
  br i1 %.not157, label %_ZN24ImGuiMultiSelectTempDataD2Ev.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN8ImVectorI24ImGuiMultiSelectTempDataE7reserveEi.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 9328 ; 3 uses
  %i.ad = sext i32 %i.ab to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.f to i64       ; 3 uses
  %i.ae = sub nsw i64 %wide.trip.count.i, %i.ad
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.i
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !513
  %i.ag = getelementptr inbounds [88 x i8], ptr %i.af, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %indvars.iv.next.i.prol = add nsw i64 %i.ad, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.ad, %.preheader.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ah = add nsw i64 %wide.trip.count.i, -1
  %i.ai = icmp eq i64 %i.ah, %i.ad
  br i1 %i.ai, label %_ZN24ImGuiMultiSelectTempDataD2Ev.exit, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.prol.loopexit, %.preheader.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 3 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !513
  %i.ak = getelementptr inbounds [88 x i8], ptr %i.aj, i64 %indvars.iv.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !513
  %i.am = getelementptr [88 x i8], ptr %i.al, i64 %indvars.iv.i
  %i.an = getelementptr i8, ptr %i.am, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.an, ptr noundef nonnull align 8 dereferenceable(88) %3, i64 88, i1 false)
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZN24ImGuiMultiSelectTempDataD2Ev.exit, label %.preheader.i.new, !llvm.loop !803

_ZN24ImGuiMultiSelectTempDataD2Ev.exit:           ; preds = %.prol.loopexit, %.preheader.i.new, %_ZN8ImVectorI24ImGuiMultiSelectTempDataE7reserveEi.exit.i
  store i32 %i.f, ptr %i.g, align 8, !tbaa !807
  %.pre158.pre = load i32, ptr %i.d, align 8, !tbaa !511
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %_ZNK8ImVectorI24ImGuiMultiSelectTempDataE14_grow_capacityEi.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN24ImGuiMultiSelectTempDataD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %i.ao

bb.g:                                             ; preds = %_ZN24ImGuiMultiSelectTempDataD2Ev.exit, %bb.a
  %i.ap = phi i32 [ %.pre158.pre, %_ZN24ImGuiMultiSelectTempDataD2Ev.exit ], [ %i.f, %bb.a ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 9328
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !513
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr [88 x i8], ptr %i.ar, i64 %i.as ; 20 uses
  %i.au = getelementptr i8, ptr %i.at, i64 -88    ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 9304
  store ptr %i.au, ptr %i.av, align 8, !tbaa !257
  %i.aw = and i32 %0, 6144
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = or disjoint i32 %0, 2048
  %spec.select = select i1 %i.ax, i32 %i.ay, i32 %0 ; 3 uses
  %i.az = and i32 %spec.select, 1
  %.not124 = icmp eq i32 %i.az, 0
  %i.ba = and i32 %spec.select, -193
  %.1119 = select i1 %.not124, i32 %spec.select, i32 %i.ba ; 3 uses
  %i.bb = and i32 %.1119, 128
  %.not125 = icmp eq i32 %i.bb, 0
  %i.bc = and i32 %.1119, -65
  %.2120 = select i1 %.not125, i32 %.1119, i32 %i.bc ; 10 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !283 ; 5 uses
  %.not126 = icmp eq ptr %i.be, null
  br i1 %.not126, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 569
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !808, !range !184, !noundef !185
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5ImGui17TableUpdateLayoutEP10ImGuiTable(ptr noundef nonnull %i.be)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 116
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !299
  %.not127 = icmp eq i32 %i.bj, -1
  br i1 %.not127, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5ImGui12TableEndCellEP10ImGuiTable(ptr noundef nonnull %i.be)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j, %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !459
  %i.bn = load i32, ptr %i.bk, align 8, !tbaa !460
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [4 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !208 ; 4 uses
  %i.bs = getelementptr i8, ptr %i.at, i64 -84    ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !277
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.m, label %_ZN24ImGuiMultiSelectTempData5ClearEv.exit

bb.m:                                             ; preds = %bb.l
  %i.bv = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.bw = getelementptr i8, ptr %i.at, i64 -80    ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !278 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not6.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = load i32, ptr %i.au, align 8, !tbaa !279
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %i.bz, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bv, ptr nonnull align 8 %i.bx, i64 %i.ca, i1 false)
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !278
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cb)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !278
  store i32 0, ptr %i.bs, align 4, !tbaa !277
  br label %_ZN24ImGuiMultiSelectTempData5ClearEv.exit

end_hunk_8
begin_hunk_9_@_ZN5ImGui16BeginMultiSelectEiii:bb.a
  %i.cm = getelementptr i8, ptr %i.at, i64 -32    ; 2 uses
  %i.cn = load i64, ptr %i.ci, align 8, !tbaa !190 ; 2 uses
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !190
  %i.co = and i32 %.2120, 4096
  %.not128 = icmp eq i32 %i.co, 0
  br i1 %.not128, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN24ImGuiMultiSelectTempData5ClearEv.exit
  store i64 %i.cn, ptr %i.cj, align 8, !tbaa !190
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN24ImGuiMultiSelectTempData5ClearEv.exit
  tail call void @_ZN5ImGui14PushFocusScopeEj(i32 noundef %i.br)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 7780
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !344
  %i.cr = tail call noundef zeroext i1 @_ZN5ImGui17IsInNavFocusRouteEj(i32 noundef %i.cq)
  %i.cs = getelementptr i8, ptr %i.at, i64 -6     ; 2 uses
  %i.ct = zext i1 %i.cr to i8
  store i8 %i.ct, ptr %i.cs, align 2, !tbaa !262
  %i.cu = and i32 %.2120, 2048
  %.not129 = icmp eq i32 %i.cu, 0
  br i1 %.not129, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 372 ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 4, !tbaa !809
  %i.cx = or i16 %i.cw, 1
  store i16 %i.cx, ptr %i.cv, align 4, !tbaa !809
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 8684 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !268
  %.not130 = icmp eq i32 %i.cz, 0
  br i1 %.not130, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 8696
  %i.db = load i8, ptr %i.da, align 8, !tbaa !810, !range !184, !noundef !185
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8692
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !345
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !515
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.v
  %i.dh = phi i32 [ %i.dg, %bb.v ], [ %i.de, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.di = getelementptr i8, ptr %i.at, i64 -12    ; 3 uses
  %i.dj = and i32 %.2120, 4
  %.not131 = icmp eq i32 %i.dj, 0
  %i.dk = and i32 %i.dh, -8193
  %spec.select140 = select i1 %.not131, i32 %i.dh, i32 %i.dk
  store i32 %spec.select140, ptr %i.di, align 4, !tbaa !273
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 9336
  %i.dm = tail call noundef ptr @_ZN6ImPoolI21ImGuiMultiSelectStateE13GetOrAddByKeyEj(ptr noundef nonnull align 8 dereferenceable(40) %i.dl, i32 noundef %i.br) ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 %i.br, ptr %i.dn, align 8, !tbaa !516
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !455
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !517
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 3 uses
  store i32 %1, ptr %i.dr, align 8, !tbaa !300
  store ptr %i.c, ptr %i.dm, align 8, !tbaa !518
  store ptr %i.dm, ptr %i.cf, align 8, !tbaa !263
  %i.ds = load i32, ptr %i.bs, align 4, !tbaa !277
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.x, label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit

bb.x:                                             ; preds = %bb.w
  %i.du = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.dv = getelementptr i8, ptr %i.at, i64 -80    ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !278 ; 2 uses
  %.not6.i.i152 = icmp eq ptr %i.dw, null
  br i1 %.not6.i.i152, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = load i32, ptr %i.au, align 8, !tbaa !279
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul nsw i64 %i.dy, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.du, ptr nonnull align 8 %i.dw, i64 %i.dz, i1 false)
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !278
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ea)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !278
  store i32 0, ptr %i.bs, align 4, !tbaa !277
  br label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit

_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit: ; preds = %bb.w, %bb.z
  store i32 0, ptr %i.au, align 8, !tbaa !279
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.ec = load <2 x i64>, ptr %i.eb, align 8, !tbaa !249
  store <2 x i64> %i.ec, ptr %i.cc, align 8, !tbaa !249
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 21
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !304
  %i.ef = icmp eq i8 %i.ee, 1
  %i.eg = zext i1 %i.ef to i8
  store i8 %i.eg, ptr %i.ce, align 8, !tbaa !805
  %i.eh = getelementptr i8, ptr %i.at, i64 -52
  store i32 %2, ptr %i.eh, align 4, !tbaa !811
  %i.ei = load i32, ptr %i.cy, align 4, !tbaa !268
  %.not132 = icmp eq i32 %i.ei, 0
  %.pre159 = load i32, ptr %i.cg, align 8, !tbaa !514 ; 2 uses
  br i1 %.not132, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 8688
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !343
  %i.el = icmp eq i32 %i.ek, %.pre159
  br i1 %i.el, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 8697
  %i.en = load i8, ptr %i.em, align 1, !tbaa !812, !range !184, !noundef !185
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ep = load i32, ptr %i.di, align 4, !tbaa !273 ; 2 uses
  %i.eq = and i32 %i.ep, 8192
  %.not133 = icmp eq i32 %i.eq, 0
  br i1 %.not133, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.er = getelementptr i8, ptr %i.at, i64 -5
  store i8 1, ptr %i.er, align 1, !tbaa !266
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.es = and i32 %i.ep, 12288
  %i.et = icmp eq i32 %i.es, 0
  %i.eu = and i32 %.2120, 24
  %i.ev = icmp eq i32 %i.eu, 0
  %or.cond142 = select i1 %i.et, i1 %i.ev, i1 false
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab, %bb.aa, %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 8680
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !813
  %i.ey = icmp eq i32 %i.ex, %.pre159
  br i1 %i.ey, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ez = load i32, ptr %i.di, align 4, !tbaa !273
  %i.fa = and i32 %i.ez, 12288
  %i.fb = icmp eq i32 %i.fa, 0
  %i.fc = and i32 %.2120, 24
  %i.fd = icmp eq i32 %i.fc, 0
  %or.cond144 = select i1 %i.fb, i1 %i.fd, i1 false
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae, %bb.af
  %.0117.shrunk = phi i1 [ %or.cond142, %bb.ae ], [ false, %bb.af ], [ %or.cond144, %bb.ag ]
  %.0117 = zext i1 %.0117.shrunk to i8            ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 9168 ; 3 uses
  %i.ff = and i32 %.2120, 192
  %.not134 = icmp eq i32 %i.ff, 0
  br i1 %.not134, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fg = tail call noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef nonnull @.str.106) ; 2 uses
  %i.fh = getelementptr i8, ptr %i.at, i64 -16
  store i32 %i.fg, ptr %i.fh, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.fi = load i32, ptr %i.ch, align 4, !tbaa !274
  %i.fj = and i32 %i.fi, 4096
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fk = load <2 x float>, ptr %i.cj, align 8, !tbaa !190 ; 2 uses
  %i.fl = load <2 x float>, ptr %i.cm, align 8, !tbaa !190 ; 3 uses
  %i.fm = fcmp oge <2 x float> %i.fk, %i.fl
  %i.fn = select <2 x i1> %i.fm, <2 x float> %i.fk, <2 x float> %i.fl
  br label %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %.sroa.014.0.copyload.i = load <2 x float>, ptr %i.fo, align 8, !tbaa !190
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !190 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.fq = load <2 x float>, ptr %i.fp, align 8, !tbaa !190
  %i.fr = fadd <2 x float> %.sroa.014.0.copyload.i, %i.fq ; 2 uses
  %i.fs = fcmp olt <2 x float> %i.fr, %.sroa.6.0.copyload.i
  %i.ft = select <2 x i1> %i.fs, <2 x float> %i.fr, <2 x float> %.sroa.6.0.copyload.i
  br label %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit

_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit: ; preds = %bb.aj, %bb.ak
  %.sroa.014.0.i = phi <2 x float> [ %i.ft, %bb.ak ], [ %i.fl, %bb.aj ]
  %.sroa.6.0.i = phi <2 x float> [ %.sroa.6.0.copyload.i, %bb.ak ], [ %i.fn, %bb.aj ]
  %5 = shufflevector <2 x float> %.sroa.014.0.i, <2 x float> %.sroa.6.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %5, ptr %4, align 16
  %i.fu = call noundef zeroext i1 @_ZN5ImGui14BeginBoxSelectERK6ImRectP11ImGuiWindowji(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.c, i32 noundef %i.fg, i32 noundef %.2120)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br i1 %i.fu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 9176
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !506, !range !184, !noundef !185
  %i.fx = or i8 %i.fw, %.0117
  br label %bb.am

bb.am:                                            ; preds = %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit, %bb.al, %bb.ah
  %.1 = phi i8 [ %i.fx, %bb.al ], [ %.0117, %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit ], [ %.0117, %bb.ah ] ; 4 uses
  %i.fy = load i8, ptr %i.cs, align 2, !tbaa !262, !range !184, !noundef !185
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.an, label %bb.ba

bb.an:                                            ; preds = %bb.am
  %i.ga = and i32 %.2120, 512
  %.not135 = icmp eq i32 %i.ga, 0
  br i1 %.not135, label %bb.ay, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not136 = icmp eq i32 %1, 0
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 9172
  %i.gc = load i8, ptr %i.gb, align 4, !tbaa !509, !range !184
  %i.gd = trunc nuw i8 %i.gc to i1                ; 2 uses
  br i1 %.not136, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.gd, label %.thread, label %bb.ay

.thread:                                          ; preds = %bb.ap
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 9172
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 9172 ; 2 uses
  br i1 %i.gd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.thread, %bb.aq
  %i.gg = phi ptr [ %i.ge, %.thread ], [ %i.gf, %bb.aq ]
  %i.gh = load i32, ptr %i.fe, align 8, !tbaa !504
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.gi = phi ptr [ %i.gg, %bb.ar ], [ %i.gf, %bb.aq ] ; 2 uses
  %i.gj = phi i32 [ %i.gh, %bb.ar ], [ 0, %bb.aq ]
  %i.gk = tail call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 526, i32 noundef 0, i32 noundef %i.gj)
  br i1 %i.gk, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.gl = load i8, ptr %i.gi, align 4, !tbaa !509, !range !184, !noundef !185
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.gn = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 9173
  store i8 0, ptr %i.go, align 1, !tbaa !507
  store i8 0, ptr %i.gi, align 4, !tbaa !509
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 5428
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !218 ; 2 uses
  %i.gr = load i32, ptr %i.fe, align 8, !tbaa !504
  %i.gs = icmp eq i32 %i.gq, %i.gr
  br i1 %i.gs, label %bb.av, label %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit

bb.av:                                            ; preds = %bb.au
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 10404
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !508
  %i.gv = and i32 %i.gu, 64
  %.not.i153 = icmp eq i32 %i.gv, 0
  br i1 %.not.i153, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.157, i32 noundef %i.gq)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit

_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit: ; preds = %bb.au, %bb.ax
  store i32 0, ptr %i.fe, align 8, !tbaa !504
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ap, %bb.at, %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit, %bb.as, %bb.an
  %.2 = phi i8 [ 1, %_ZL23BoxSelectDeactivateDragP19ImGuiBoxSelectState.exit ], [ 1, %bb.at ], [ %.1, %bb.as ], [ %.1, %bb.ap ], [ %.1, %bb.an ] ; 2 uses
  %i.gw = and i32 %.2120, 3
  %or.cond145 = icmp eq i32 %i.gw, 0
  br i1 %or.cond145, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gx = tail call noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef 4642, i32 noundef 0)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.am
  %.3 = phi i8 [ %.2, %bb.ay ], [ %.1, %bb.am ], [ %.2, %bb.az ] ; 2 uses
  %.0 = phi i1 [ false, %bb.ay ], [ false, %bb.am ], [ %i.gx, %bb.az ] ; 4 uses
  %i.gy = trunc nuw i8 %.3 to i1
  %or.cond = or i1 %.0, %i.gy
  br i1 %or.cond, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZN5ImGui20MultiSelectAddSetAllEP24ImGuiMultiSelectTempDatab(ptr noundef nonnull %i.au, i1 noundef zeroext %.0)
  br i1 %.0, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.dr, align 8, !tbaa !300
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.ba
  %i.gz = or i8 %.3, -2
  %.neg = add nsw i8 %i.gz, 1
  %i.ha = select i1 %.0, i8 1, i8 %.neg
  %i.hb = getelementptr i8, ptr %i.at, i64 -8
  store i8 %i.ha, ptr %i.hb, align 8, !tbaa !265
  %i.hc = load i32, ptr %i.dr, align 8, !tbaa !300 ; 2 uses
  %i.hd = icmp eq i32 %i.hc, 1
  %i.he = icmp eq i32 %i.hc, -1
  %narrow = or i1 %i.hd, %i.he
  %i.hf = zext i1 %narrow to i8
  %i.hg = getelementptr i8, ptr %i.at, i64 -1
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !349
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !508
  %i.hj = and i32 %i.hi, 64
  %.not139 = icmp eq i32 %i.hj, 0
  br i1 %.not139, label %_ZL27DebugLogMultiSelectRequestsPKcPK18ImGuiMultiSelectIO.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val = load i32, ptr %i.au, align 8, !tbaa !279 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.at, i64 -80
  %.val149 = load ptr, ptr %i.hk, align 8, !tbaa !278 ; 2 uses
  %i.hl = sext i32 %.val to i64
  %.idx.i = mul nsw i64 %i.hl, 24
  %i.hm = getelementptr inbounds i8, ptr %.val149, i64 %.idx.i
  %.not1.i = icmp eq i32 %.val, 0
  br i1 %.not1.i, label %_ZL27DebugLogMultiSelectRequestsPKcPK18ImGuiMultiSelectIO.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.be
  %i.hn = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 10404 ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %thread-pre-split.thread.i, %.lr.ph.i
  %.02.i = phi ptr [ %.val149, %.lr.ph.i ], [ %i.im, %thread-pre-split.thread.i ] ; 8 uses
  %i.hp = load i32, ptr %.02.i, align 8, !tbaa !521 ; 2 uses
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.bg, label %thread-pre-split.i

bb.bg:                                            ; preds = %bb.bf
  %i.hr = load i32, ptr %i.ho, align 4, !tbaa !508
  %i.hs = and i32 %i.hr, 64
  %.not21.i = icmp eq i32 %i.hs, 0
  br i1 %.not21.i, label %thread-pre-split.thread.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ht = getelementptr inbounds nuw i8, ptr %.02.i, i64 4
  %i.hu = load i8, ptr %i.ht, align 4, !tbaa !522, !range !184, !noundef !185 ; 2 uses
  %i.hv = trunc nuw i8 %i.hu to i1
  %i.hw = zext nneg i8 %i.hu to i32
  %i.hx = select i1 %i.hv, ptr @.str.159, ptr @.str.160
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.107, i32 noundef %i.hw, ptr noundef nonnull %i.hx)
  %.pr.pre.i = load i32, ptr %.02.i, align 8, !tbaa !521
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.bh, %bb.bf
  %i.hy = phi i32 [ %i.hp, %bb.bf ], [ %.pr.pre.i, %bb.bh ]
  %i.hz = icmp eq i32 %i.hy, 2
  br i1 %i.hz, label %bb.bi, label %thread-pre-split.thread.i

bb.bi:                                            ; preds = %thread-pre-split.i
  %i.ia = load i32, ptr %i.ho, align 4, !tbaa !508
  %i.ib = and i32 %i.ia, 64
  %.not22.i = icmp eq i32 %i.ib, 0
  br i1 %.not22.i, label %thread-pre-split.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ic = getelementptr inbounds nuw i8, ptr %.02.i, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !523 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.02.i, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !524 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.02.i, i64 4
  %i.ih = load i8, ptr %i.ig, align 4, !tbaa !522, !range !184, !noundef !185
  %i.ii = zext nneg i8 %i.ih to i32
  %i.ij = getelementptr inbounds nuw i8, ptr %.02.i, i64 5
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !525
  %i.il = sext i8 %i.ik to i32
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.107, i64 noundef %i.id, i64 noundef %i.if, i64 noundef %i.id, i64 noundef %i.if, i32 noundef %i.ii, i32 noundef %i.il)
  br label %thread-pre-split.thread.i

thread-pre-split.thread.i:                        ; preds = %bb.bj, %bb.bi, %thread-pre-split.i, %bb.bg
  %i.im = getelementptr inbounds nuw i8, ptr %.02.i, i64 24 ; 2 uses
  %.not.i154 = icmp eq ptr %i.im, %i.hm
  br i1 %.not.i154, label %_ZL27DebugLogMultiSelectRequestsPKcPK18ImGuiMultiSelectIO.exit, label %bb.bf

_ZL27DebugLogMultiSelectRequestsPKcPK18ImGuiMultiSelectIO.exit: ; preds = %thread-pre-split.thread.i, %bb.be, %bb.bd
  ret ptr %i.au
}

end_hunk_9
begin_hunk_10_@_ZN6ImPoolI21ImGuiMultiSelectStateE13GetOrAddByKeyEj:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZN12ImGuiStorage9GetIntRefEji(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i32 noundef %1, i32 noundef -1) ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !208  ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !814
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [40 x i8], ptr %i.e, i64 %i.f
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !815  ; 6 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !208
  %i.j = load i32, ptr %0, align 8, !tbaa !816
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.i, 1                      ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !817  ; 4 uses
  %.not.i = icmp slt i32 %i.i, %i.n
  br i1 %.not.i, label %._ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit_crit_edge.i, label %bb.e

._ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre5.pre.i = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i, align 8, !tbaa !814
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
  %i.u = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.t) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !814  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not6.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK8ImVectorI21ImGuiMultiSelectStateE14_grow_capacityEi.exit.i.i
  %i.x = load i32, ptr %0, align 8, !tbaa !818
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.u, ptr nonnull align 8 %i.w, i64 %i.z, i1 false)
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !814
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aa)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8ImVectorI21ImGuiMultiSelectStateE14_grow_capacityEi.exit.i.i
  store ptr %i.u, ptr %i.v, align 8, !tbaa !814
  store i32 %i.r, ptr %i.m, align 4, !tbaa !817
  %.pre.i = load i32, ptr %i.h, align 8, !tbaa !815
  %.pre7.i = add nsw i32 %.pre.i, 1
  br label %_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i

_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i: ; preds = %bb.h, %._ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit_crit_edge.i
  %.pre-phi.i = phi i32 [ %i.l, %._ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit_crit_edge.i ], [ %.pre7.i, %bb.h ]
  %.pre5.i = phi ptr [ %.pre5.pre.i, %._ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit_crit_edge.i ], [ %i.u, %bb.h ]
  store i32 %i.l, ptr %0, align 8, !tbaa !818
  %.pre8.i = sext i32 %i.i to i64
  br label %_ZN6ImPoolI21ImGuiMultiSelectStateE3AddEv.exit

bb.i:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !814 ; 2 uses
  %i.ad = sext i32 %i.i to i64                    ; 2 uses
  %i.ae = getelementptr inbounds [40 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !208
  br label %_ZN6ImPoolI21ImGuiMultiSelectStateE3AddEv.exit

_ZN6ImPoolI21ImGuiMultiSelectStateE3AddEv.exit:   ; preds = %_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i, %bb.i
  %.pre-phi9.i = phi i64 [ %i.ad, %bb.i ], [ %.pre8.i, %_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i ] ; 2 uses
  %i.ag = phi ptr [ %i.ac, %bb.i ], [ %.pre5.i, %_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i ]
  %storemerge.i = phi i32 [ %i.af, %bb.i ], [ %.pre-phi.i, %_ZN8ImVectorI21ImGuiMultiSelectStateE6resizeEi.exit.i ]
  store i32 %storemerge.i, ptr %i.h, align 8, !tbaa !815
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds [40 x i8], ptr %i.ag, i64 %.pre-phi9.i ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i8 0, i64 20, i1 false)
  store i8 -1, ptr %i.aj, align 1, !tbaa !304
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  store i8 -1, ptr %i.ak, align 4, !tbaa !271
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 -1, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !819
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !819
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !814
  %i.aq = getelementptr inbounds [40 x i8], ptr %i.ap, i64 %.pre-phi9.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN6ImPoolI21ImGuiMultiSelectStateE3AddEv.exit, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.aq, %_ZN6ImPoolI21ImGuiMultiSelectStateE3AddEv.exit ]
  ret ptr %.0
}

declare noundef i32 @_ZN5ImGui5GetIDEPKc(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui8ShortcutEii(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui20MultiSelectAddSetAllEP24ImGuiMultiSelectTempDatab(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277  ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !278  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.f, null
  br i1 %.not6.i.i, label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 8, !tbaa !279
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.f, i64 %i.i, i1 false)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !278
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.j)
  br label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit.thread

_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit.thread: ; preds = %bb.b, %bb.c
  store ptr %i.d, ptr %i.e, align 8, !tbaa !278
  store i32 0, ptr %i.a, align 4, !tbaa !277
  store i32 0, ptr %0, align 8, !tbaa !279
  br label %_ZNK8ImVectorI21ImGuiSelectionRequestE14_grow_capacityEi.exit.i

_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit: ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !279
  %i.k = icmp eq i32 %i.b, 0
  br i1 %i.k, label %_ZNK8ImVectorI21ImGuiSelectionRequestE14_grow_capacityEi.exit.i, label %._ZN8ImVectorI21ImGuiSelectionRequestE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI21ImGuiSelectionRequestE7reserveEi.exit_crit_edge.i: ; preds = %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !278
  br label %_ZN8ImVectorI21ImGuiSelectionRequestE9push_backERKS0_.exit

_ZNK8ImVectorI21ImGuiSelectionRequestE14_grow_capacityEi.exit.i: ; preds = %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit.thread, %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit
  %i.l = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 192) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !278  ; 2 uses
  %.not6.i.i2 = icmp eq ptr %i.n, null
  br i1 %.not6.i.i2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI21ImGuiSelectionRequestE14_grow_capacityEi.exit.i
  %i.o = load i32, ptr %0, align 8, !tbaa !279
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.l, ptr nonnull align 8 %i.n, i64 %i.q, i1 false)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !278
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.r)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorI21ImGuiSelectionRequestE14_grow_capacityEi.exit.i
  store ptr %i.l, ptr %i.m, align 8, !tbaa !278
  store i32 8, ptr %i.a, align 4, !tbaa !277
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !279
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
  %i.x = load i32, ptr %0, align 8, !tbaa !279
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %0, align 8, !tbaa !279
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5ImGui14EndMultiSelectEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImRect, align 16            ; 4 uses
  %1 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 9304 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !257  ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !263  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !158  ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !514
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 7780
  %i.k = load i32, ptr %i.j, align 4, !tbaa !344
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.108) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 7 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !274
  %i.p = and i32 %i.o, 4096
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !190 ; 2 uses
  %i.t = load <2 x float>, ptr %i.q, align 8, !tbaa !190 ; 3 uses
  %i.u = fcmp oge <2 x float> %i.s, %i.t
  %i.v = select <2 x i1> %i.u, <2 x float> %i.s, <2 x float> %i.t
  br label %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 568
  %.sroa.014.0.copyload.i = load <2 x float>, ptr %i.w, align 8, !tbaa !190
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  %.sroa.6.0.copyload.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !190 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !190
  %i.z = fadd <2 x float> %.sroa.014.0.copyload.i, %i.y ; 2 uses
  %i.aa = fcmp olt <2 x float> %i.z, %.sroa.6.0.copyload.i
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> %.sroa.6.0.copyload.i
  br label %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit

_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit: ; preds = %bb.d, %bb.e
  %.sroa.014.0.i = phi <2 x float> [ %i.ab, %bb.e ], [ %i.t, %bb.d ] ; 3 uses
  %.sroa.6.0.i = phi <2 x float> [ %.sroa.6.0.copyload.i, %bb.e ], [ %i.v, %bb.d ] ; 3 uses
  %2 = shufflevector <2 x float> %.sroa.014.0.i, <2 x float> %.sroa.6.0.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %2, ptr %0, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 82
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !262, !range !184, !noundef !185
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = extractelement <2 x float> %.sroa.014.0.i, i64 0
  %i.ag = extractelement <2 x float> %.sroa.014.0.i, i64 1
  %i.ah = extractelement <2 x float> %.sroa.6.0.i, i64 0
  %i.ai = extractelement <2 x float> %.sroa.6.0.i, i64 1
  br i1 %i.ae, label %bb.f, label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread

bb.f:                                             ; preds = %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !512, !range !184, !noundef !185
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 85
  %i.an = load i8, ptr %i.am, align 1, !tbaa !272, !range !184, !noundef !185
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !526
  %.not = icmp eq i64 %i.aq, -1
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !508
  %i.at = and i32 %i.as, 64
  %.not65 = icmp eq i32 %i.at, 0
  br i1 %.not65, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.109)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 -1, ptr %i.au, align 8, !tbaa !270
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !305, !range !184, !noundef !185
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !303
  %.not66 = icmp eq i64 %i.az, -1
  br i1 %.not66, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !508
  %i.bc = and i32 %i.bb, 64
  %.not67 = icmp eq i32 %i.bc, 0
  br i1 %.not67, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.110)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i64 -1, ptr %i.ay, align 8, !tbaa !303
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  store i8 -1, ptr %i.bd, align 1, !tbaa !304
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.be = load i32, ptr %i.n, align 4, !tbaa !274 ; 2 uses
  %i.bf = and i32 %i.be, 192
  %.not68 = icmp eq i32 %i.bf, 0
  br i1 %.not68, label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !280 ; 2 uses
  %.not.i78 = icmp eq i32 %i.bh, 0
  br i1 %.not.i78, label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 9168
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !281
  %i.bl = icmp eq i32 %i.bk, %i.bh
  br i1 %i.bl, label %bb.t, label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 9172
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !282, !range !184, !noundef !185
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN5ImGui17GetBoxSelectStateEj.exit, label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread

_ZN5ImGui17GetBoxSelectStateEj.exit:              ; preds = %bb.t
  call void @_ZN5ImGui12EndBoxSelectERK6ImRecti(ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.be)
  br label %_ZN5ImGui17GetBoxSelectStateEj.exit.thread

_ZN5ImGui17GetBoxSelectStateEj.exit.thread:       ; preds = %bb.s, %bb.t, %bb.r, %bb.q, %_ZN5ImGui17GetBoxSelectStateEj.exit, %_ZL13CalcScopeRectP24ImGuiMultiSelectTempDataP11ImGuiWindow.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 81
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !276, !range !184, !noundef !185
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_ZN5ImGui17GetBoxSelectStateEj.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !277
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.v, label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit

bb.v:                                             ; preds = %bb.u
  %i.bv = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !278 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bx, null
  br i1 %.not6.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = load i32, ptr %i.c, align 8, !tbaa !279
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul nsw i64 %i.bz, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bv, ptr nonnull align 8 %i.bx, i64 %i.ca, i1 false)
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !278
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cb)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !278
  store i32 0, ptr %i.bs, align 4, !tbaa !277
  br label %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit

_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit: ; preds = %bb.u, %bb.x
  store i32 0, ptr %i.c, align 8, !tbaa !279
  br label %bb.y

bb.y:                                             ; preds = %_ZN8ImVectorI21ImGuiSelectionRequestE6resizeEi.exit, %_ZN5ImGui17GetBoxSelectStateEj.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 552
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 3 uses
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !194 ; 2 uses
  %i.cf = load float, ptr %i.cc, align 4, !tbaa !237
  %i.cg = fcmp ult float %i.ce, %i.cf
  br i1 %i.cg, label %_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 276 ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !197 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 556
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !195
  %i.cl = fcmp oge float %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 560
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = fcmp olt float %i.ce, %i.cn
  %or.cond.i = select i1 %i.cl, i1 %i.co, i1 false
  br i1 %or.cond.i, label %_ZNK6ImRect8ContainsERK6ImVec2.exit, label %_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit:              ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 564
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !196
  %i.cr = fcmp olt float %i.ci, %i.cq
  br i1 %i.cr, label %bb.aa, label %_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread

bb.aa:                                            ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit
  %i.cs = tail call noundef zeroext i1 @_ZN5ImGui15IsWindowHoveredEi(i32 noundef 1)
  br i1 %i.cs, label %bb.ab, label %_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load i32, ptr %i.n, align 4, !tbaa !274 ; 6 uses
  %i.cu = and i32 %i.ct, 4096
  %.not70 = icmp eq i32 %i.cu, 0
  br i1 %.not70, label %_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread84, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = load float, ptr %i.cd, align 8, !tbaa !194 ; 2 uses
  %i.cw = fcmp ult float %i.cv, %i.af
  br i1 %i.cw, label %_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = load float, ptr %i.ch, align 4, !tbaa !197 ; 2 uses
  %i.cy = fcmp oge float %i.cx, %i.ag
  %i.cz = fcmp olt float %i.cv, %i.ah
  %or.cond.i79 = select i1 %i.cy, i1 %i.cz, i1 false
  %i.da = fcmp olt float %i.cx, %i.ai
  %or.cond = select i1 %or.cond.i79, i1 %i.da, i1 false
  br i1 %or.cond, label %_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread84, label %_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread84:   ; preds = %bb.ad, %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 5404
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !527
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.ae, label %_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread

bb.ae:                                            ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread84
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.df = load i32, ptr %i.de, align 4, !tbaa !218
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.af, label %_ZNK6ImRect8ContainsERK6ImVec2.exit80.thread

end_hunk_10
begin_hunk_11_@_ZN5ImGui5ValueEPKcfS1_:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.b = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.124, ptr noundef nonnull %2) ; 0 uses
  %i.c = fpext float %1 to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull %i.a, ptr noundef %0, double noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = fpext float %1 to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.125, ptr noundef %0, double noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN16ImGuiMenuColumns6UpdateEfb(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(26) initializes((0, 10), (12, 18)) %0, float noundef %1, i1 noundef zeroext %2) local_unnamed_addr #15 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 18
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !219
  %.phi.trans.insert2 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre3 = load i16, ptr %.phi.trans.insert2, align 4, !tbaa !219
  %.phi.trans.insert4 = getelementptr inbounds nuw i8, ptr %0, i64 22
  %.pre5 = load i16, ptr %.phi.trans.insert4, align 2, !tbaa !219
  %.phi.trans.insert6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre7 = load i16, ptr %.phi.trans.insert6, align 4, !tbaa !219
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %i.a = phi i16 [ %.pre7, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.b = phi i16 [ %.pre5, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.c = phi i16 [ %.pre3, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.d = phi i16 [ %.pre, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.e = fptoui float %1 to i16                   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.e, ptr %i.f, align 4, !tbaa !837
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
  store i16 %.1.us.1.i, ptr %i.m, align 4, !tbaa !543
  %i.p = add i16 %.1.us.1.i, %i.c
  %i.q = icmp ne i16 %i.b, 0
  %or.cond.us.2.i = select i1 %i.l, i1 %i.q, i1 false
  %i.r = select i1 %or.cond.us.2.i, i16 %i.e, i16 0
  %.1.us.2.i = add i16 %i.p, %i.r                 ; 2 uses
  %i.s = or i16 %i.b, %i.k
  %i.t = icmp ne i16 %i.s, 0
  store i16 %.1.us.2.i, ptr %i.n, align 2, !tbaa !544
  %i.u = add i16 %.1.us.2.i, %i.b
  %i.v = icmp ne i16 %i.a, 0
  %or.cond.us.3.i = select i1 %i.t, i1 %i.v, i1 false
  %i.w = select i1 %or.cond.us.3.i, i16 %i.e, i16 0
  %.1.us.3.i = add i16 %i.u, %i.w                 ; 2 uses
  store i16 %.1.us.3.i, ptr %i.o, align 4, !tbaa !545
  %i.x = add i16 %.1.us.3.i, %i.a
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i64 0, ptr %i.g, align 2
  store i32 %i.y, ptr %0, align 4, !tbaa !546
  store i32 0, ptr %i.z, align 4, !tbaa !547
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN16ImGuiMenuColumns18CalcNextTotalWidthEb(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(26) initializes((4, 8)) %0, i1 noundef zeroext %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 4              ; 5 uses
  %i.d = load i16, ptr %i.a, align 2, !tbaa !219  ; 3 uses
  %i.e = icmp ne i16 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i16, ptr %i.f, align 4, !tbaa !219  ; 4 uses
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
  %i.n = load i16, ptr %i.m, align 2, !tbaa !219  ; 3 uses
  %i.o = icmp ne i16 %i.n, 0
  %or.cond.2 = select i1 %i.k, i1 %i.o, i1 false
  %i.p = select i1 %or.cond.2, i16 %i.c, i16 0
  %.1.2 = add i16 %i.p, %i.l
  %i.q = or i16 %i.j, %i.n
  %i.r = icmp ne i16 %i.q, 0
  %i.s = add i16 %.1.2, %i.n
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i16, ptr %i.t, align 4, !tbaa !219  ; 2 uses
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
  store i16 %.1.us.1, ptr %i.y, align 4, !tbaa !543
  %i.ab = add i16 %.1.us.1, %i.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !219 ; 3 uses
  %i.ae = icmp ne i16 %i.ad, 0
  %or.cond.us.2 = select i1 %i.k, i1 %i.ae, i1 false
  %i.af = select i1 %or.cond.us.2, i16 %i.c, i16 0
  %.1.us.2 = add i16 %i.af, %i.ab                 ; 2 uses
  %i.ag = or i16 %i.j, %i.ad
  %i.ah = icmp ne i16 %i.ag, 0
  store i16 %.1.us.2, ptr %i.z, align 2, !tbaa !544
  %i.ai = add i16 %.1.us.2, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !219 ; 2 uses
  %i.al = icmp ne i16 %i.ak, 0
  %or.cond.us.3 = select i1 %i.ah, i1 %i.al, i1 false
  %i.am = select i1 %or.cond.us.3, i16 %i.c, i16 0
  %.1.us.3 = add i16 %i.am, %i.ai                 ; 2 uses
  store i16 %.1.us.3, ptr %i.aa, align 4, !tbaa !545
  %i.an = add i16 %.1.us.3, %i.ak
  br label %.split26.us

.split26.us:                                      ; preds = %.split.preheader, %.split26.us.loopexit
  %.us-phi = phi i16 [ %i.an, %.split26.us.loopexit ], [ %i.x, %.split.preheader ]
  %i.ao = zext i16 %.us-phi to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !547
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef float @_ZN16ImGuiMenuColumns11DeclColumnsEffff(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(26) initializes((4, 8)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = insertelement <4 x float> poison, float %1, i64 0
  %i.c = insertelement <4 x float> %i.b, float %2, i64 1
  %i.d = insertelement <4 x float> %i.c, float %3, i64 2
  %i.e = insertelement <4 x float> %i.d, float %4, i64 3
  %i.f = fptoui <4 x float> %i.e to <4 x i16>
  %i.g = load <4 x i16>, ptr %i.a, align 2, !tbaa !219
  %i.h = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %i.g, <4 x i16> %i.f) ; 5 uses
  store <4 x i16> %i.h, ptr %i.a, align 2, !tbaa !219
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
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !547
  %i.ae = load i32, ptr %0, align 4, !tbaa !546
  %i.af = tail call noundef i32 @llvm.umax.i32(i32 %i.ae, i32 %i.ac)
  %i.ag = uitofp i32 %i.af to float
  ret float %i.ag
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui12BeginMenuBarEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.ImRect, align 16            ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !245
  %i.j = and i32 %i.i, 1024
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui10BeginGroupEv()
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.126)
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.l = load float, ptr %i.k, align 4, !tbaa !244 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.n = load float, ptr %i.m, align 8, !tbaa !838 ; 2 uses
  %i.o = fneg float %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.r = load float, ptr %i.q, align 4, !tbaa !241
  %i.s = fadd float %i.n, %i.r                    ; 3 uses
  %i.t = load float, ptr %i.p, align 8, !tbaa !240 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.v = load float, ptr %i.u, align 8, !tbaa !839
  %i.w = fadd float %i.t, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.y = load float, ptr %i.x, align 4, !tbaa !548
  %i.z = fadd float %i.s, %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !251 ; 2 uses
  %i.ac = fmul float %i.l, 5.000000e-01           ; 2 uses
  %i.ad = fcmp oge float %i.ab, %i.ac
  %i.ae = select i1 %i.ad, float %i.ab, float %i.ac
  %i.af = fsub float %i.w, %i.ae                  ; 2 uses
  %i.ag = fcmp oge float %i.t, %i.af
  %i.ah = select i1 %i.ag, float %i.t, float %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 536
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
  %i.ay = load <2 x float>, ptr %i.aj, align 8, !tbaa !190 ; 2 uses
  %i.az = fcmp ole <2 x float> %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.bb = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.z, i64 1
  %i.bd = fadd <2 x float> %i.bc, splat (float 5.000000e-01)
  %i.be = fptosi <2 x float> %i.bd to <2 x i32>
  %i.bf = sitofp <2 x i32> %i.be to <2 x float>   ; 2 uses
  %i.bg = load <2 x float>, ptr %i.ba, align 8, !tbaa !190 ; 2 uses
  %i.bh = fcmp ogt <2 x float> %i.bg, %i.bf
  %1 = shufflevector <2 x i1> %i.az, <2 x i1> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %2 = shufflevector <2 x float> %i.ax, <2 x float> %i.bf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %3 = shufflevector <2 x float> %i.ay, <2 x float> %i.bg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %4 = select <4 x i1> %1, <4 x float> %2, <4 x float> %3
  store <4 x float> %4, ptr %0, align 16, !tbaa !190
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %i.ai, i1 noundef zeroext false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !549
  %i.bl = fadd float %i.t, %i.bk                  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !840
  %i.bo = fadd float %i.s, %i.bn                  ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store float %i.bl, ptr %i.bp, align 8, !tbaa !190
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.c, i64 308
  store float %i.bo, ptr %.sroa_idx26, align 4, !tbaa !190
  store float %i.bl, ptr %i.bi, align 8, !tbaa !190
  %.sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  store float %i.bo, ptr %.sroa_idx25, align 4, !tbaa !190
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  store i32 0, ptr %i.bq, align 4, !tbaa !315
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.br, align 8, !tbaa !316
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store i32 1, ptr %i.bs, align 8, !tbaa !348
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 379
  store i8 1, ptr %i.bt, align 1, !tbaa !550
  %i.bu = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 5312
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !158 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 206
  store i8 1, ptr %i.bx, align 2, !tbaa !182
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 209
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !183, !range !184, !noundef !185
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZN5ImGui23AlignTextToFramePaddingEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 324 ; 2 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !309 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 4568
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !205
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 3288
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !234 ; 3 uses
  %i.ch = call float @llvm.fmuladd.f32(float %i.cg, float 2.000000e+00, float %i.ce) ; 2 uses
  %i.ci = fcmp oge float %i.cc, %i.ch
  %i.cj = select i1 %i.ci, float %i.cc, float %i.ch
  store float %i.cj, ptr %i.cb, align 4, !tbaa !309
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 336 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 8, !tbaa !188 ; 2 uses
  %i.cm = fcmp oge float %i.cl, %i.cg
  %i.cn = select i1 %i.cm, float %i.cl, float %i.cg
  store float %i.cn, ptr %i.ck, align 8, !tbaa !188
  br label %_ZN5ImGui23AlignTextToFramePaddingEv.exit

_ZN5ImGui23AlignTextToFramePaddingEv.exit:        ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %_ZN5ImGui23AlignTextToFramePaddingEv.exit
  %.0 = phi i1 [ false, %bb.a ], [ true, %_ZN5ImGui23AlignTextToFramePaddingEv.exit ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui10EndMenuBarEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158  ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !182
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.f = load i8, ptr %i.e, align 1, !tbaa !183, !range !184, !noundef !185
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN5ImGui28NavMoveRequestButNoResultYetEv()
  br i1 %i.h, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8400 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !473
  %switch = icmp ult i32 %i.j, 2
  br i1 %switch, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !346  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !245
  %i.o = and i32 %i.n, 268435456
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.e
  %.0 = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ]  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 944
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !551  ; 4 uses
  %.not43 = icmp eq ptr %i.q, null
  br i1 %.not43, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !245
  %i.t = and i32 %i.s, 268435456
  %.not44 = icmp eq i32 %i.t, 0
  br i1 %.not44, label %.critedge, label %.preheader, !llvm.loop !841

.critedge:                                        ; preds = %.preheader, %bb.e
  %i.u = icmp eq ptr %i.q, %i.c
  br i1 %i.u, label %bb.f, label %bb.l

bb.f:                                             ; preds = %.critedge
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 472
  %i.w = load i32, ptr %i.v, align 8, !tbaa !842
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8388 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !843
  %i.aa = and i32 %i.z, 128
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef %i.c, i32 noundef 0)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1012
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !208
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1032
  tail call void @_ZN5ImGui8SetNavIDEj13ImGuiNavLayerjRK6ImRect(i32 noundef %i.ad, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8216 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !221, !range !184, !noundef !185
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.af, align 8, !tbaa !221
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8320
  store i8 2, ptr %i.ai, align 8, !tbaa !844
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8218
  store i8 1, ptr %i.aj, align 2, !tbaa !845
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8217
  store i8 1, ptr %i.ak, align 1, !tbaa !223
  %i.al = load i32, ptr %i.i, align 8, !tbaa !473
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8408
  %i.an = load i32, ptr %i.am, align 8, !tbaa !846
  %i.ao = load i32, ptr %i.y, align 4, !tbaa !843
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8392
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !847
  tail call void @_ZN5ImGui21NavMoveRequestForwardE8ImGuiDirS0_ii(i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ao, i32 noundef %i.aq)
  br label %bb.l

bb.k:                                             ; preds = %bb.c, %bb.d, %bb.b
  tail call void @_ZN5ImGui25NavMoveRequestTryWrappingEP11ImGuiWindowi(ptr noundef nonnull %i.c, i32 noundef 4)
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.f, %bb.g, %bb.j, %bb.k
  tail call void @_ZN5ImGui11PopClipRectEv()
  tail call void @_ZN5ImGui5PopIDEv()
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.as = load float, ptr %i.ar, align 8, !tbaa !186
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.au = load float, ptr %i.at, align 8, !tbaa !240
  %i.av = fsub float %i.as, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  store float %i.av, ptr %i.aw, align 4, !tbaa !549
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8136
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8144
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !848
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !849
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [60 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -4
  store i8 0, ptr %i.bd, align 4, !tbaa !851
  %i.be = getelementptr i8, ptr %i.bc, i64 -48
  %i.bf = load i64, ptr %i.be, align 4, !tbaa !190
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 312 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !201 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !200
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !852
  %i.bm = fsub float %i.bj, %i.bl                 ; 2 uses
  %i.bn = fcmp oge float %i.bh, %i.bm
  %i.bo = select i1 %i.bn, float %i.bh, float %i.bm
  store float %i.bo, ptr %i.bg, align 8, !tbaa !201
  tail call void @_ZN5ImGui8EndGroupEv()
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  store i32 1, ptr %i.bp, align 4, !tbaa !315
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 0, ptr %i.bq, align 8, !tbaa !316
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store i32 0, ptr %i.br, align 8, !tbaa !348
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 379
  store i8 0, ptr %i.bs, align 1, !tbaa !550
  store i64 %i.bf, ptr %i.bi, align 8, !tbaa !190
  br label %bb.m

end_hunk_11
