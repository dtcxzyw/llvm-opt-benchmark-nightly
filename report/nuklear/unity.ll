Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0
%struct.nk_style_button = type { %struct.nk_style_item, %struct.nk_style_item, %struct.nk_style_item, %struct.nk_color, float, %struct.nk_color, %struct.nk_color, %struct.nk_color, %struct.nk_color, i32, float, float, float, %struct.nk_vec2, %struct.nk_vec2, %struct.nk_vec2, float, %union.nk_handle, ptr, ptr }
%struct.nk_property_variant = type { i32, %union.nk_property, %union.nk_property, %union.nk_property, %union.nk_property }
%union.nk_property = type { double }
%struct.nk_colorf = type { float, float, float, float }
%struct.stbtt__edge = type { float, float, float, float, i32 }
%struct.nk_text_find = type { float, float, float, i32, i32, i32 }

@nk_null_rect = internal unnamed_addr constant %struct.nk_rect { float -8.192000e+03, float -8.192000e+03, float 1.638400e+04, float 1.638400e+04 }, align 4
@nk_font_default_glyph_ranges.ranges = internal constant [3 x i32] [i32 32, i32 255, i32 0], align 4
@nk_font_chinese_glyph_ranges.ranges = internal constant [11 x i32] [i32 32, i32 255, i32 12288, i32 12543, i32 12784, i32 12799, i32 65280, i32 65519, i32 19968, i32 40879, i32 0], align 16
@nk_font_cyrillic_glyph_ranges.ranges = internal constant [9 x i32] [i32 32, i32 255, i32 1024, i32 1327, i32 11744, i32 11775, i32 42560, i32 42655, i32 0], align 16
@nk_font_korean_glyph_ranges.ranges = internal constant [7 x i32] [i32 32, i32 255, i32 12593, i32 12643, i32 44032, i32 55197, i32 0], align 16
@nk_custom_cursor_data = internal unnamed_addr constant [2431 x i8] c"..-         -XXXXXXX-    X    -           X           -XXXXXXX          -          XXXXXXX..-         -X.....X-   X.X   -          X.X          -X.....X          -          X.....X---         -XXX.XXX-  X...X  -         X...X         -X....X           -           X....XX           -  X.X  - X.....X -        X.....X        -X...X            -            X...XXX          -  X.X  -X.......X-       X.......X       -X..X.X           -           X.X..XX.X         -  X.X  -XXXX.XXXX-       XXXX.XXXX       -X.X X.X          -          X.X X.XX..X        -  X.X  -   X.X   -          X.X          -XX   X.X         -         X.X   XXX...X       -  X.X  -   X.X   -    XX    X.X    XX    -      X.X        -        X.X      X....X      -  X.X  -   X.X   -   X.X    X.X    X.X   -       X.X       -       X.X       X.....X     -  X.X  -   X.X   -  X..X    X.X    X..X  -        X.X      -      X.X        X......X    -  X.X  -   X.X   - X...XXXXXX.XXXXXX...X -         X.X   XX-XX   X.X         X.......X   -  X.X  -   X.X   -X.....................X-          X.X X.X-X.X X.X          X........X  -  X.X  -   X.X   - X...XXXXXX.XXXXXX...X -           X.X..X-X..X.X           X.........X -XXX.XXX-   X.X   -  X..X    X.X    X..X  -            X...X-X...X            X..........X-X.....X-   X.X   -   X.X    X.X    X.X   -           X....X-X....X           X......XXXXX-XXXXXXX-   X.X   -    XX    X.X    XX    -          X.....X-X.....X          X...X..X    ---------   X.X   -          X.X          -          XXXXXXX-XXXXXXX          X..X X..X   -       -XXXX.XXXX-       XXXX.XXXX       ------------------------------------X.X  X..X   -       -X.......X-       X.......X       -    XX           XX    -           XX    X..X  -       - X.....X -        X.....X        -   X.X           X.X   -                 X..X          -  X...X  -         X...X         -  X..X           X..X  -                  XX           -   X.X   -          X.X          - X...XXXXXXXXXXXXX...X -           ------------        -    X    -           X           -X.....................X-                               ----------------------------------- X...XXXXXXXXXXXXX...X -                                                                 -  X..X           X..X  -                                                                 -   X.X           X.X   -                                                                 -    XX           XX    -           \00", align 16
@nk_color_names = internal unnamed_addr constant [32 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], align 16
@nk_default_color_style = internal unnamed_addr constant [32 x %struct.nk_color] [%struct.nk_color { i8 -81, i8 -81, i8 -81, i8 -1 }, %struct.nk_color { i8 45, i8 45, i8 45, i8 -1 }, %struct.nk_color { i8 40, i8 40, i8 40, i8 -1 }, %struct.nk_color { i8 65, i8 65, i8 65, i8 -1 }, %struct.nk_color { i8 50, i8 50, i8 50, i8 -1 }, %struct.nk_color { i8 40, i8 40, i8 40, i8 -1 }, %struct.nk_color { i8 35, i8 35, i8 35, i8 -1 }, %struct.nk_color { i8 100, i8 100, i8 100, i8 -1 }, %struct.nk_color { i8 120, i8 120, i8 120, i8 -1 }, %struct.nk_color { i8 45, i8 45, i8 45, i8 -1 }, %struct.nk_color { i8 45, i8 45, i8 45, i8 -1 }, %struct.nk_color { i8 35, i8 35, i8 35, i8 -1 }, %struct.nk_color { i8 38, i8 38, i8 38, i8 -1 }, %struct.nk_color { i8 100, i8 100, i8 100, i8 -1 }, %struct.nk_color { i8 120, i8 120, i8 120, i8 -1 }, %struct.nk_color { i8 -106, i8 -106, i8 -106, i8 -1 }, %struct.nk_color { i8 38, i8 38, i8 38, i8 -1 }, %struct.nk_color { i8 38, i8 38, i8 38, i8 -1 }, %struct.nk_color { i8 -81, i8 -81, i8 -81, i8 -1 }, %struct.nk_color { i8 45, i8 45, i8 45, i8 -1 }, %struct.nk_color { i8 120, i8 120, i8 120, i8 -1 }, %struct.nk_color { i8 45, i8 45, i8 45, i8 -1 }, %struct.nk_color { i8 -1, i8 0, i8 0, i8 -1 }, %struct.nk_color { i8 40, i8 40, i8 40, i8 -1 }, %struct.nk_color { i8 100, i8 100, i8 100, i8 -1 }, %struct.nk_color { i8 120, i8 120, i8 120, i8 -1 }, %struct.nk_color { i8 -106, i8 -106, i8 -106, i8 -1 }, %struct.nk_color { i8 40, i8 40, i8 40, i8 -1 }, %struct.nk_color { i8 38, i8 38, i8 38, i8 -1 }, %struct.nk_color { i8 100, i8 100, i8 100, i8 -1 }, %struct.nk_color { i8 120, i8 120, i8 120, i8 -1 }, %struct.nk_color { i8 -106, i8 -106, i8 -106, i8 -1 }], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s: %d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s: %u\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%s: %.3f\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%s: (%d, %d, %d, %d)\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"%s: (%.2f, %.2f, %.2f, %.2f)\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"__##Tooltip##__\00", align 1
@nk_utfmask = internal unnamed_addr constant [5 x i8] c"\C0\80\E0\F0\F8", align 1
@nk_utfbyte = internal unnamed_addr constant [5 x i8] c"\80\00\C0\E0\F0", align 1
@nk_utfmin = internal unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 128, i32 2048, i32 65536], align 16
@nk_utfmax = internal unnamed_addr constant [5 x i32] [i32 1114111, i32 127, i32 2047, i32 65535, i32 1114111], align 16
@.str.25 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@nk__barrier2 = internal unnamed_addr global ptr null, align 8
@nk__barrier3 = internal unnamed_addr global ptr null, align 8
@nk__barrier = internal unnamed_addr global ptr null, align 8
@nk__barrier4 = internal unnamed_addr global ptr null, align 8
@nk__dout = internal unnamed_addr global ptr null, align 8
@.str.26 = private unnamed_addr constant [14 x i8] c"NK_COLOR_TEXT\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"NK_COLOR_WINDOW\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"NK_COLOR_HEADER\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"NK_COLOR_BORDER\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"NK_COLOR_BUTTON\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"NK_COLOR_BUTTON_HOVER\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"NK_COLOR_BUTTON_ACTIVE\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"NK_COLOR_TOGGLE\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"NK_COLOR_TOGGLE_HOVER\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"NK_COLOR_TOGGLE_CURSOR\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"NK_COLOR_SELECT\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"NK_COLOR_SELECT_ACTIVE\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"NK_COLOR_SLIDER\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"NK_COLOR_SLIDER_CURSOR\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"NK_COLOR_SLIDER_CURSOR_HOVER\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"NK_COLOR_SLIDER_CURSOR_ACTIVE\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"NK_COLOR_PROPERTY\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"NK_COLOR_EDIT\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"NK_COLOR_EDIT_CURSOR\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"NK_COLOR_COMBO\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"NK_COLOR_CHART\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"NK_COLOR_CHART_COLOR\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"NK_COLOR_CHART_COLOR_HIGHLIGHT\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"NK_COLOR_SCROLLBAR\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"NK_COLOR_SCROLLBAR_CURSOR\00", align 1
@.str.51 = private unnamed_addr constant [32 x i8] c"NK_COLOR_SCROLLBAR_CURSOR_HOVER\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"NK_COLOR_SCROLLBAR_CURSOR_ACTIVE\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"NK_COLOR_TAB_HEADER\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"NK_COLOR_KNOB\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"NK_COLOR_KNOB_CURSOR\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"NK_COLOR_KNOB_CURSOR_HOVER\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"NK_COLOR_KNOB_CURSOR_ACTIVE\00", align 1
@nk_widget_text_wrap.seperator = internal global [1 x i32] [i32 32], align 4
@__const.nk_knob_behavior.direction_rads = private unnamed_addr constant [4 x float] [float f0x40FB53D2, float f0x40C90FDB, float f0x4096CBE4, float f0x40490FDB], align 16
@__const.nk_draw_knob.direction_rads = private unnamed_addr constant [4 x float] [float f0x4096CBE4, float 0.000000e+00, float f0x3FC90FDB, float f0x40490FDB], align 16
@.str.58 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@__const.nk_do_property.filters = private unnamed_addr constant [2 x ptr] [ptr @nk_filter_decimal, ptr @nk_filter_float], align 16
@.str.60 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@switch.table.nk_panel_begin = private unnamed_addr constant [6 x i16] [i16 9284, i16 9292, i16 9276, i16 9308, i16 9300, i16 9316], align 8
@switch.table.nk_panel_begin.32 = private unnamed_addr constant [6 x i16] [i16 9624, i16 9632, i16 9608, i16 9616, i16 9612, i16 9620], align 8
@switch.table.nk_end.33 = private unnamed_addr constant [7 x i16] [i16 9168, i16 9152, i16 9148, i16 9160, i16 9156, i16 9164, i16 9164], align 8
@switch.table.nk_combo_callback = private unnamed_addr constant [7 x i16] [i16 9284, i16 9292, i16 9276, i16 9308, i16 9300, i16 9316, i16 9316], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef { <2 x float>, <2 x float> } @nk_get_null_rect() local_unnamed_addr #0 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float -8.192000e+03), <2 x float> splat (float 1.638400e+04) }
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @nk_rect(float noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %0, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %1, i64 1
  %.sroa.3.8.vec.insert = insertelement <2 x float> poison, float %2, i64 0
  %.sroa.3.12.vec.insert = insertelement <2 x float> %.sroa.3.8.vec.insert, float %3, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @nk_recti(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %3, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.c, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.f, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @nk_recta(<2 x float> %0, <2 x float> %1) local_unnamed_addr #2 {
bb.a:
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %0, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %1, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @nk_rectv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load <4 x float>, ptr %0, align 4, !tbaa !54 ; 2 uses
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.c = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.b, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.c, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @nk_rectiv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4, !tbaa !55
  %i.b = sitofp <4 x i32> %i.a to <4 x float>     ; 2 uses
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.d = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.c, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.d, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @nk_rect_pos(<2 x float> returned %0, <2 x float> %1) local_unnamed_addr #2 {
bb.a:
  ret <2 x float> %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @nk_rect_size(<2 x float> %0, <2 x float> returned %1) local_unnamed_addr #2 {
bb.a:
  ret <2 x float> %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @nk_vec2(float noundef %0, float noundef %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %0, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %1, i64 1
  ret <2 x float> %.sroa.0.4.vec.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define <2 x float> @nk_vec2i(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %0, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  ret <2 x float> %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define <2 x float> @nk_vec2v(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !54
  ret <2 x float> %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define <2 x float> @nk_vec2iv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load <2 x i32>, ptr %0, align 4, !tbaa !55
  %i.b = sitofp <2 x i32> %i.a to <2 x float>
  ret <2 x float> %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @nk_triangle_from_direction(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, <2 x float> %1, <2 x float> %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = insertelement <2 x float> poison, float %3, i64 0
  %i.b = insertelement <2 x float> %i.a, float %4, i64 1 ; 3 uses
  %i.c = fmul <2 x float> %i.b, splat (float 2.000000e+00) ; 2 uses
  %i.d = fcmp olt <2 x float> %i.c, %2
  %i.e = select <2 x i1> %i.d, <2 x float> %2, <2 x float> %i.c
  %i.f = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.b, <2 x float> splat (float -2.000000e+00), <2 x float> %i.e) ; 8 uses
  %i.g = fadd <2 x float> %1, %i.b                ; 15 uses
  %i.h = extractelement <2 x float> %i.f, i64 0
  %i.i = fmul float %i.h, 5.000000e-01            ; 2 uses
  %i.j = extractelement <2 x float> %i.f, i64 1
  %i.k = fmul float %i.j, 5.000000e-01            ; 2 uses
  switch i32 %5, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = extractelement <2 x float> %i.g, i64 0
  %i.m = fadd float %i.l, %i.i
  %i.n = insertelement <2 x float> %i.g, float %i.m, i64 0
  %6 = fadd <2 x float> %i.g, %i.f                ; 2 uses
  %7 = shufflevector <2 x float> %i.n, <2 x float> %6, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %0, align 4, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = shufflevector <2 x float> %i.g, <2 x float> %6, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.p, ptr %i.o, align 4, !tbaa !54
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.q = insertelement <2 x float> %i.f, float %i.k, i64 1
  %i.r = fadd <2 x float> %i.g, %i.q
  %8 = shufflevector <2 x float> %i.g, <2 x float> %i.r, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %0, align 4, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %foldExtExtBinop = fadd <2 x float> %i.g, %i.f
  %.sroa.0.4.vec.insert.i135 = shufflevector <2 x float> %i.g, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i135, ptr %i.s, align 4, !tbaa !54
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %foldExtExtBinop149 = fadd <2 x float> %i.g, %i.f
  %9 = shufflevector <2 x float> %i.g, <2 x float> %foldExtExtBinop149, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  store <4 x float> %9, ptr %0, align 4, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = insertelement <2 x float> %i.f, float %i.i, i64 0
  %i.v = fadd <2 x float> %i.g, %i.u
  store <2 x float> %i.v, ptr %i.t, align 4, !tbaa !54
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.w = extractelement <2 x float> %i.g, i64 1
  %i.x = fadd float %i.w, %i.k
  %.sroa.0.4.vec.insert.i143 = insertelement <2 x float> %i.g, float %i.x, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = fadd <2 x float> %i.g, %i.f              ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> %i.g, <2 x i32> <i32 0, i32 3>
  %10 = shufflevector <2 x float> %.sroa.0.4.vec.insert.i143, <2 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %10, ptr %0, align 4, !tbaa !54
  store <2 x float> %i.z, ptr %i.y, align 4, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @nk_strlen(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %.not5 = icmp eq ptr %0, null
  br i1 %.not5, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !56
  %.not410 = icmp eq i8 %i.a, 0
  br i1 %.not410, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03612 = phi ptr [ %i.b, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %.0711 = phi i32 [ %i.c, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.b = getelementptr inbounds nuw i8, ptr %.03612, i64 1 ; 2 uses
  %i.c = add nuw nsw i32 %.0711, 1                ; 2 uses
  %i.d = load i8, ptr %i.b, align 1, !tbaa !56
  %.not4 = icmp eq i8 %i.d, 0
  br i1 %.not4, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.preheader ], [ %i.c, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @nk_strtoi(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.017 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 4 uses
  %i.a = load i8, ptr %.017, align 1, !tbaa !56   ; 2 uses
  switch i8 %i.a, label %.loopexit [
    i8 32, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %.017, i64 1
  br label %.preheader, !llvm.loop !0

bb.c:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.017, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.c, align 1, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.c
  %i.d = phi i8 [ %.pre, %bb.c ], [ %i.a, %.preheader ] ; 2 uses
  %.018 = phi i32 [ -1, %bb.c ], [ 1, %.preheader ]
  %.1 = phi ptr [ %i.c, %bb.c ], [ %.017, %.preheader ] ; 2 uses
  %i.e = add i8 %i.d, -48
  %or.cond2628 = icmp ult i8 %i.e, 10
  br i1 %or.cond2628, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %i.f = phi i8 [ %i.k, %.lr.ph ], [ %i.d, %.loopexit ]
  %.030 = phi i32 [ %i.i, %.lr.ph ], [ 0, %.loopexit ]
  %.229 = phi ptr [ %i.j, %.lr.ph ], [ %.1, %.loopexit ]
  %i.g = mul nsw i32 %.030, 10
  %narrow = add nsw i8 %i.f, -48
  %i.h = zext nneg i8 %narrow to i32
  %i.i = add nsw i32 %i.g, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.229, i64 1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !56    ; 2 uses
  %i.l = add i8 %i.k, -48
  %or.cond26 = icmp ult i8 %i.l, 10
  br i1 %or.cond26, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !1

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.m = mul nsw i32 %i.i, %.018
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.loopexit
  %.2.lcssa = phi ptr [ %.1, %.loopexit ], [ %i.j, %.critedge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %.loopexit ], [ %i.m, %.critedge.loopexit ] ; 2 uses
  %.not25 = icmp eq ptr %1, null
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge
  store ptr %.2.lcssa, ptr %1, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d, %bb.a
  %.019 = phi i32 [ 0, %bb.a ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %.critedge ]
  ret i32 %.019
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define double @nk_strtod(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %.preheader77

.preheader77:                                     ; preds = %bb.a, %bb.b
  %.051 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ]  ; 4 uses
  %i.a = load i8, ptr %.051, align 1, !tbaa !56
  switch i8 %i.a, label %.loopexit [
    i8 32, label %bb.b
    i8 45, label %bb.c
  ]

bb.b:                                             ; preds = %.preheader77
  %i.b = getelementptr inbounds nuw i8, ptr %.051, i64 1
  br label %.preheader77, !llvm.loop !2

bb.c:                                             ; preds = %.preheader77
  %i.c = getelementptr inbounds nuw i8, ptr %.051, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader77, %bb.c
  %.056 = phi double [ -1.000000e+00, %bb.c ], [ 1.000000e+00, %.preheader77 ]
  %.152 = phi ptr [ %i.c, %bb.c ], [ %.051, %.preheader77 ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.loopexit
  %.253 = phi ptr [ %.152, %.loopexit ], [ %i.i, %bb.e ] ; 5 uses
  %.050 = phi double [ 0.000000e+00, %.loopexit ], [ %i.h, %bb.e ] ; 4 uses
  %i.d = load i8, ptr %.253, align 1, !tbaa !56   ; 4 uses
  switch i8 %i.d, label %bb.e [
    i8 46, label %.preheader76
    i8 0, label %.critedge2
    i8 101, label %.critedge2
  ]

bb.e:                                             ; preds = %bb.d
  %i.e = sext i8 %i.d to i32
  %i.f = add nsw i32 %i.e, -48
  %i.g = sitofp i32 %i.f to double
  %i.h = tail call double @llvm.fmuladd.f64(double %.050, double 1.000000e+01, double %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %.253, i64 1
  br label %bb.d, !llvm.loop !3

.preheader76:                                     ; preds = %bb.d, %bb.f
  %.057 = phi double [ %i.o, %bb.f ], [ 1.000000e-01, %bb.d ] ; 2 uses
  %.253.pn = phi ptr [ %.354, %bb.f ], [ %.253, %bb.d ]
  %.1 = phi double [ %i.n, %bb.f ], [ %.050, %bb.d ] ; 3 uses
  %.354 = getelementptr inbounds nuw i8, ptr %.253.pn, i64 1 ; 4 uses
  %i.j = load i8, ptr %.354, align 1, !tbaa !56   ; 4 uses
  switch i8 %i.j, label %bb.f [
    i8 0, label %.critedge2
    i8 101, label %.critedge2
  ]

bb.f:                                             ; preds = %.preheader76
  %i.k = sext i8 %i.j to i32
  %i.l = add nsw i32 %i.k, -48
  %i.m = sitofp i32 %i.l to double
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %.057, double %.1)
  %i.o = fmul double %.057, 1.000000e-01
  br label %.preheader76, !llvm.loop !4

.critedge2:                                       ; preds = %bb.d, %bb.d, %.preheader76, %.preheader76
  %i.p = phi i8 [ %i.j, %.preheader76 ], [ %i.j, %.preheader76 ], [ %i.d, %bb.d ], [ %i.d, %bb.d ]
  %.455 = phi ptr [ %.354, %.preheader76 ], [ %.354, %.preheader76 ], [ %.253, %bb.d ], [ %.253, %bb.d ] ; 3 uses
  %.2 = phi double [ %.1, %.preheader76 ], [ %.1, %.preheader76 ], [ %.050, %bb.d ], [ %.050, %bb.d ] ; 3 uses
  %i.q = icmp eq i8 %i.p, 101
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge2
  %i.r = getelementptr inbounds nuw i8, ptr %.455, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !56    ; 2 uses
  %.not74 = icmp eq i8 %i.s, 45                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.455, i64 2
  %i.u = icmp eq i8 %i.s, 43
  %i.v = or i1 %.not74, %i.u
  %.5 = select i1 %i.v, ptr %i.t, ptr %i.r        ; 3 uses
  %i.w = load i8, ptr %.5, align 1, !tbaa !56     ; 2 uses
  %.not7281 = icmp eq i8 %i.w, 0
  br i1 %.not7281, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.x = icmp sgt i32 %i.ah, 0
  br i1 %i.x, label %.lr.ph87.preheader, label %._crit_edge

.lr.ph87.preheader:                               ; preds = %.preheader
  %i.y = mul i32 %.04883, 10
  %i.z = add i32 %i.y, -49
  %i.aa = sext i8 %i.ad to i32
  %i.ab = add i32 %i.z, %i.aa
  %xtraiter = and i32 %i.ah, 7                    ; 3 uses
  %i.ac = icmp ult i32 %i.ab, 7
  br i1 %i.ac, label %.lr.ph87.epil.preheader, label %.lr.ph87.preheader.new
end_hunk_0
begin_hunk_1_@nk_draw_list_fill_poly_convex:bb.a
  br i1 %epil.iter.cmp.not, label %.critedge216, label %bb.p, !llvm.loop !750

.critedge216:                                     ; preds = %.critedge216.loopexit.unr-lcssa, %bb.p, %nk_draw_list_alloc_vertices.exit242, %nk_draw_list_alloc_vertices.exit, %bb.k, %.critedge, %nk_draw_list_alloc_elements.exit245, %nk_draw_list_alloc_elements.exit, %nk_buffer_mark.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_draw_list_path_clear(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 6 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %nk_buffer_reset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %.neg.i = sub i64 %i.f, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76
  %i.i = add i64 %.neg.i, %i.h
  store i64 %i.i, ptr %i.g, align 8, !tbaa !76
  %i.j = load i8, ptr %i.b, align 8, !tbaa !86, !range !88, !noundef !89
  %i.k = trunc nuw i8 %i.j to i1
  %spec.select.i = select i1 %i.k, i64 %i.f, i64 0
  store i64 %spec.select.i, ptr %i.c, align 8, !tbaa !77
  store i8 0, ptr %i.b, align 8, !tbaa !86
  br label %nk_buffer_reset.exit

nk_buffer_reset.exit:                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.l, align 8, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.m, align 4, !tbaa !170
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %nk_buffer_reset.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_path_line_to(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_draw_list_alloc_path.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !161
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @nk_draw_list_add_clip(ptr noundef %0, <2 x float> splat (float -8.192000e+03), <2 x float> splat (float 1.638400e+04))
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %nk_draw_list_command_last.exit.thread, label %nk_draw_list_command_last.exit

nk_draw_list_command_last.exit:                   ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %.not16 = icmp eq ptr %i.f, null
  br i1 %.not16, label %nk_draw_list_command_last.exit.thread, label %bb.e

bb.e:                                             ; preds = %nk_draw_list_command_last.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = load i64, ptr %i.i, align 8, !tbaa !160
  %i.k = sub i64 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %i.m = load i32, ptr %i.a, align 8, !tbaa !161
  %i.n = add i32 %i.m, -1
  %i.o = zext i32 %i.n to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 2 uses
  %.not17 = icmp eq ptr %i.s, %i.u
  br i1 %.not17, label %nk_draw_list_command_last.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @nk_draw_list_push_image(ptr noundef %0, ptr %i.u)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !151
  br label %nk_draw_list_command_last.exit.thread

nk_draw_list_command_last.exit.thread:            ; preds = %bb.d, %bb.f, %bb.e, %nk_draw_list_command_last.exit
  %i.v = phi ptr [ %.pre, %bb.f ], [ %i.d, %bb.e ], [ %i.d, %nk_draw_list_command_last.exit ], [ null, %bb.d ]
  %i.w = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.v, i32 noundef 0, i64 noundef 8, i64 noundef 4) ; 3 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %nk_draw_list_alloc_path.exit.thread, label %bb.g

bb.g:                                             ; preds = %nk_draw_list_command_last.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !170
  %.not12.i = icmp eq i32 %i.y, 0
  br i1 %.not12.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.z, null
  br i1 %.not.i.i19, label %nk_buffer_memory.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69
  %i.ac = ptrtoint ptr %i.ab to i64
  br label %nk_buffer_memory.exit.i

nk_buffer_memory.exit.i:                          ; preds = %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.ac, %bb.i ], [ 0, %bb.h ]
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ad, %.0.i.i
  %i.af = trunc i64 %i.ae to i32
  store i32 %i.af, ptr %i.x, align 4, !tbaa !170
  br label %bb.j

bb.j:                                             ; preds = %nk_buffer_memory.exit.i, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !162
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !162
  store <2 x float> %1, ptr %i.w, align 4, !tbaa !54
  br label %nk_draw_list_alloc_path.exit.thread

nk_draw_list_alloc_path.exit.thread:              ; preds = %nk_draw_list_command_last.exit.thread, %bb.a, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_draw_list_add_clip(ptr nofree noundef nonnull captures(none) %0, <2 x float> %1, <2 x float> %2) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %nk_draw_list_command_last.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !151
  %i.g = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.f, i32 noundef 1, i64 noundef 32, i64 noundef 8) ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %nk_draw_list_push_command.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 8, !tbaa !161
  %.not21.i = icmp eq i32 %i.h, 0
  br i1 %.not21.i, label %bb.d, label %nk_draw_list_push_command.exit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !151  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %nk_buffer_total.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70
  br label %nk_buffer_total.exit.i

nk_buffer_total.exit.i:                           ; preds = %bb.e, %bb.d
  %.0.i25.i = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ]
  %.0.i23.i = phi i64 [ %i.m, %bb.e ], [ 0, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 %.0.i23.i
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.q, ptr %i.r, align 8, !tbaa !160
  br label %nk_draw_list_push_command.exit.sink.split

nk_draw_list_command_last.exit:                   ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151, !nonnull !89, !noundef !89 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !160
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa
  %i.ac = add i32 %i.b, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [32 x i8], ptr %i.ab, i64 %i.ae ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !167
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %nk_draw_list_command_last.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %3 = shufflevector <2 x float> %1, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %i.ai, align 4, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %nk_draw_list_command_last.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.t, i32 noundef 1, i64 noundef 32, i64 noundef 8) ; 4 uses
  %.not.i13 = icmp eq ptr %i.al, null
  br i1 %.not.i13, label %nk_draw_list_push_command.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i32, ptr %i.a, align 8, !tbaa !161
  %.not21.i14 = icmp eq i32 %i.am, 0
  br i1 %.not21.i14, label %bb.i, label %nk_draw_list_push_command.exit.sink.split

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !151 ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.an, null
  br i1 %.not.i.i17, label %nk_buffer_total.exit.i18, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !70
  br label %nk_buffer_total.exit.i18

nk_buffer_total.exit.i18:                         ; preds = %bb.j, %bb.i
  %.0.i25.i19 = phi ptr [ %i.ap, %bb.j ], [ null, %bb.i ]
  %.0.i23.i20 = phi i64 [ %i.ar, %bb.j ], [ 0, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i25.i19, i64 %.0.i23.i20
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.al to i64
  %i.av = sub i64 %i.at, %i.au
  store i64 %i.av, ptr %i.y, align 8, !tbaa !160
  br label %nk_draw_list_push_command.exit.sink.split

nk_draw_list_push_command.exit.sink.split:        ; preds = %bb.h, %nk_buffer_total.exit.i18, %bb.c, %nk_buffer_total.exit.i
  %.sink32 = phi ptr [ %i.g, %bb.c ], [ %i.g, %nk_buffer_total.exit.i ], [ %i.al, %nk_buffer_total.exit.i18 ], [ %i.al, %bb.h ] ; 3 uses
  %.sink = phi ptr [ %i.d, %bb.c ], [ %i.d, %nk_buffer_total.exit.i ], [ %i.ak, %nk_buffer_total.exit.i18 ], [ %i.ak, %bb.h ]
  store i32 0, ptr %.sink32, align 8, !tbaa !167
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink32, i64 4
  %4 = shufflevector <2 x float> %1, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %i.aw, align 4, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink32, i64 24
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !56
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !161
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.a, align 8, !tbaa !161
  %5 = shufflevector <2 x float> %1, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %5, ptr %0, align 8, !tbaa !54
  br label %nk_draw_list_push_command.exit

nk_draw_list_push_command.exit:                   ; preds = %nk_draw_list_push_command.exit.sink.split, %bb.g, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_draw_list_push_image(ptr nofree noundef nonnull captures(none) %0, ptr %1) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 4 uses
  br i1 %.not, label %bb.b, label %nk_draw_list_command_last.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.d, i32 noundef 1, i64 noundef 32, i64 noundef 8) ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %nk_draw_list_push_command.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 8, !tbaa !161
  %.not21.i = icmp eq i32 %i.f, 0
  br i1 %.not21.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !151  ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %nk_buffer_total.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !70
  br label %nk_buffer_total.exit.i

nk_buffer_total.exit.i:                           ; preds = %bb.e, %bb.d
  %.0.i25.i = phi ptr [ %i.i, %bb.e ], [ null, %bb.d ]
  %.0.i23.i = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 %.0.i23.i
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %i.o, ptr %i.p, align 8, !tbaa !160
  br label %bb.f

bb.f:                                             ; preds = %nk_buffer_total.exit.i, %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !167
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store <4 x float> <float -8.192000e+03, float -8.192000e+03, float 1.638400e+04, float 1.638400e+04>, ptr %i.q, align 4, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %1, ptr %i.r, align 8, !tbaa !56
  %i.s = load i32, ptr %i.a, align 8, !tbaa !161
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.a, align 8, !tbaa !161
  store <4 x float> <float -8.192000e+03, float -8.192000e+03, float 1.638400e+04, float 1.638400e+04>, ptr %0, align 8, !tbaa !54
  br label %nk_draw_list_push_command.exit

nk_draw_list_command_last.exit:                   ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !160
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aa
  %i.ac = add i32 %i.b, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [32 x i8], ptr %i.ab, i64 %i.ae ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !167
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %nk_draw_list_command_last.exit
  store ptr %1, ptr %i.ai, align 8, !tbaa !56
  br label %nk_draw_list_push_command.exit

bb.h:                                             ; preds = %nk_draw_list_command_last.exit
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !56
  %i.ak = ptrtoint ptr %1 to i64
  %.sroa.0.0.extract.trunc = trunc i64 %i.ak to i32
  %.not10 = icmp eq i32 %i.aj, %.sroa.0.0.extract.trunc
  br i1 %.not10, label %nk_draw_list_push_command.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.am = load <2 x float>, ptr %i.al, align 4    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ao = load <2 x float>, ptr %i.an, align 4    ; 2 uses
  %i.ap = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.d, i32 noundef 1, i64 noundef 32, i64 noundef 8) ; 5 uses
  %.not.i13 = icmp eq ptr %i.ap, null
  br i1 %.not.i13, label %nk_draw_list_push_command.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !161
  %.not21.i14 = icmp eq i32 %i.aq, 0
  br i1 %.not21.i14, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !151 ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i17, label %nk_buffer_total.exit.i18, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.av = load i64, ptr %i.au, align 8, !tbaa !70
  br label %nk_buffer_total.exit.i18

nk_buffer_total.exit.i18:                         ; preds = %bb.l, %bb.k
  %.0.i25.i19 = phi ptr [ %i.at, %bb.l ], [ null, %bb.k ]
  %.0.i23.i20 = phi i64 [ %i.av, %bb.l ], [ 0, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i25.i19, i64 %.0.i23.i20
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.ap to i64
  %i.az = sub i64 %i.ax, %i.ay
  store i64 %i.az, ptr %i.y, align 8, !tbaa !160
  br label %bb.m

bb.m:                                             ; preds = %nk_buffer_total.exit.i18, %bb.j
  store i32 0, ptr %i.ap, align 8, !tbaa !167
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %2 = shufflevector <2 x float> %i.am, <2 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %2, ptr %i.ba, align 4, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %1, ptr %i.bb, align 8, !tbaa !56
  %i.bc = load i32, ptr %i.a, align 8, !tbaa !161
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.a, align 8, !tbaa !161
  %3 = shufflevector <2 x float> %i.am, <2 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %0, align 8, !tbaa !54
  br label %nk_draw_list_push_command.exit

nk_draw_list_push_command.exit:                   ; preds = %bb.m, %bb.i, %bb.f, %bb.b, %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_path_arc_to_fast(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not18 = icmp sgt i32 %3, %4
  %or.cond = or i1 %.not, %.not18
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %3 to i64
  %i.c = add i32 %4, 1
  %i.d = insertelement <2 x float> poison, float %2, i64 0
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = urem i64 %indvars.iv, 12
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f
  %i.h = load <2 x float>, ptr %i.g, align 8, !tbaa !54
  %i.i = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.e, <2 x float> %1)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.i)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !751

.loopexit:                                        ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_path_arc_to(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  %i.a = fcmp oeq float %2, 0.000000e+00
  %or.cond = or i1 %.not, %i.a
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fsub float %4, %3
  %i.c = uitofp i32 %5 to float
  %i.d = fdiv float %i.b, %i.c                    ; 15 uses
  %i.e = tail call float @llvm.fmuladd.f32(float %i.d, float f0x3910F359, float f0xBB473A13)
  %i.f = tail call float @llvm.fmuladd.f32(float %i.d, float %i.e, float f0x3CAA6A57)
  %i.g = tail call float @llvm.fmuladd.f32(float %i.d, float %i.f, float f0xBCDB0412)
  %i.h = tail call float @llvm.fmuladd.f32(float %i.d, float %i.g, float f0xBE0D6486)
  %i.i = tail call float @llvm.fmuladd.f32(float %i.d, float %i.h, float f0xBC46B2E5)
  %i.j = tail call float @llvm.fmuladd.f32(float %i.d, float %i.i, float f0x3F801C6E)
  %i.k = tail call float @llvm.fmuladd.f32(float %i.d, float %i.j, float f0x0C780258) ; 2 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.d, float f0xB79D821B, float f0x39F77236)
  %i.m = tail call float @llvm.fmuladd.f32(float %i.d, float %i.l, float f0xBB7C6287)
  %i.n = tail call float @llvm.fmuladd.f32(float %i.d, float %i.m, float f0x3BF19642)
  %i.o = tail call float @llvm.fmuladd.f32(float %i.d, float %i.n, float f0x3CEAD9F6)
  %i.p = tail call float @llvm.fmuladd.f32(float %i.d, float %i.o, float f0x3C540BB7)
  %i.q = tail call float @llvm.fmuladd.f32(float %i.d, float %i.p, float f0xBF01A908)
  %i.r = tail call float @llvm.fmuladd.f32(float %i.d, float %i.q, float f0x3AA47B71)
  %i.s = tail call float @llvm.fmuladd.f32(float %i.d, float %i.r, float 9.999600e-01)
  %i.t = insertelement <2 x float> <float poison, float -0.000000e+00>, float %3, i64 0 ; 2 uses
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> <float f0xB79D821B, float 0.000000e+00>, <2 x float> <float f0x39F77236, float f0x3910F359>)
  %i.v = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.u, <2 x float> <float f0xBB7C6287, float f0xBB473A13>)
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.w, <2 x float> <float f0x3BF19642, float f0x3CAA6A57>)
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.x, <2 x float> <float f0x3CEAD9F6, float f0xBCDB0412>)
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.y, <2 x float> <float f0x3C540BB7, float f0xBE0D6486>)
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.z, <2 x float> <float f0xBF01A908, float f0xBC46B2E5>)
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.aa, <2 x float> <float f0x3AA47B71, float f0x3F801C6E>)
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.ab, <2 x float> <float 9.999600e-01, float f0x0C780258>)
  %i.ad = insertelement <2 x float> poison, float %2, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ae, %i.ac
  %i.ag = fneg float %i.k
  %i.ah = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ag, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.036 = phi i32 [ 0, %bb.b ], [ %i.aq, %bb.c ]
  %i.al = phi <2 x float> [ %i.af, %bb.b ], [ %i.ap, %bb.c ] ; 3 uses
  %i.am = fadd <2 x float> %1, %i.al
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.am)
  %i.an = fmul <2 x float> %i.ak, %i.al
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.ai, <2 x float> %i.ao)
  %i.aq = add i32 %.036, 1                        ; 2 uses
  %.not33 = icmp ugt i32 %i.aq, %5
  br i1 %.not33, label %.loopexit, label %bb.c, !llvm.loop !12

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_path_rect_to(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_draw_list_path_arc_to_fast.exit157, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = fsub <2 x float> %2, %1                  ; 5 uses
  %i.b = extractelement <2 x float> %i.a, i64 0
  %i.c = tail call float @llvm.fabs.f32(float %i.b)
  %i.d = fcmp olt float %3, %i.c
  %i.e = fcmp uge <2 x float> %i.a, zeroinitializer
  %i.f = extractelement <2 x float> %i.a, i64 1
  %i.g = tail call float @llvm.fabs.f32(float %i.f)
  %i.h = fneg <2 x float> %i.a
  %i.i = select <2 x i1> %i.e, <2 x float> %i.a, <2 x float> %i.h ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  %i.k = select i1 %i.d, float %3, float %i.j     ; 2 uses
  %i.l = fcmp olt float %i.k, %i.g
  %i.m = extractelement <2 x float> %i.i, i64 1
  %i.n = select i1 %i.l, float %i.k, float %i.m   ; 2 uses
  %i.o = fcmp oeq float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %1)
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 0, i32 3>
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %.sroa.0.4.vec.insert.i)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %2)
  %.sroa.0.4.vec.insert.i113 = shufflevector <2 x float> %1, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  br label %nk_draw_list_path_arc_to_fast.exit157.sink.split

.preheader.i:                                     ; preds = %bb.b
  %i.p = insertelement <2 x float> poison, float %i.n, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 18 uses
  %i.r = fadd <2 x float> %1, %i.q                ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = load <2 x float>, ptr %i.t, align 8, !tbaa !54
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.q, <2 x float> %i.r)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load <2 x float>, ptr %i.w, align 8, !tbaa !54
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.q, <2 x float> %i.r)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load <2 x float>, ptr %i.z, align 8, !tbaa !54
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.q, <2 x float> %i.r)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !54
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.q, <2 x float> %i.r)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ae)
  %i.af = fsub <2 x float> %2, %i.q               ; 6 uses
  %i.ag = load <2 x float>, ptr %i.ac, align 8, !tbaa !54
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> %i.r, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.q, <2 x float> %i.ah)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load <2 x float>, ptr %i.aj, align 8, !tbaa !54
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.q, <2 x float> %i.ah)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.an = load <2 x float>, ptr %i.am, align 8, !tbaa !54
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.q, <2 x float> %i.ah)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ao)
  %i.ap = load <2 x float>, ptr %i.s, align 8, !tbaa !54
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.q, <2 x float> %i.ah)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.aq)
  %i.ar = load <2 x float>, ptr %i.s, align 8, !tbaa !54
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.q, <2 x float> %i.af)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load <2 x float>, ptr %i.at, align 8, !tbaa !54
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.q, <2 x float> %i.af)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load <2 x float>, ptr %i.aw, align 8, !tbaa !54
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.q, <2 x float> %i.af)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.az, align 8, !tbaa !54
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.q, <2 x float> %i.af)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.bb)
  %i.bc = load <2 x float>, ptr %i.az, align 8, !tbaa !54
  %i.bd = shufflevector <2 x float> %i.r, <2 x float> %i.af, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.q, <2 x float> %i.bd)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load <2 x float>, ptr %i.bf, align 8, !tbaa !54
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.q, <2 x float> %i.bd)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = load <2 x float>, ptr %i.bi, align 8, !tbaa !54
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.q, <2 x float> %i.bd)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.bk)
  %i.bl = load <2 x float>, ptr %i.t, align 8, !tbaa !54
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.q, <2 x float> %i.bd)
  br label %nk_draw_list_path_arc_to_fast.exit157.sink.split
end_hunk_1
begin_hunk_2_@nk_free_window:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !470 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i25, label %nk_link_page_element_into_freelist.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 576
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !472
  br label %nk_link_page_element_into_freelist.exit.i

nk_link_page_element_into_freelist.exit.i:        ; preds = %bb.q, %bb.p
  store ptr %1, ptr %i.ad, align 8, !tbaa !470
  br label %nk_free_page_element.exit

bb.r:                                             ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 9800
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !217
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 9848 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !473 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = icmp eq ptr %i.ag, %i.al
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = add i64 %i.ak, -592
  store i64 %i.an, ptr %i.aj, align 8, !tbaa !473
  br label %nk_free_page_element.exit

bb.t:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !470 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.ap, null
  br i1 %.not.i11.i, label %nk_link_page_element_into_freelist.exit12.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 576
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !472
  br label %nk_link_page_element_into_freelist.exit12.i

nk_link_page_element_into_freelist.exit12.i:      ; preds = %bb.u, %bb.t
  store ptr %1, ptr %i.ao, align 8, !tbaa !470
  br label %nk_free_page_element.exit

nk_free_page_element.exit:                        ; preds = %nk_link_page_element_into_freelist.exit.i, %bb.s, %nk_link_page_element_into_freelist.exit12.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nk_remove_window(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(address) %1) unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18536 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !463  ; 3 uses
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %bb.e, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !234  ; 3 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !225
  %.not39 = icmp eq ptr %i.h, null
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 536
  store ptr null, ptr %i.i, align 8, !tbaa !462
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18544 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !463  ; 2 uses
  %i.l = icmp eq ptr %1, %i.k
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !462  ; 4 uses
  store ptr %i.n, ptr %i.j, align 8, !tbaa !463
  %.not40 = icmp eq ptr %i.n, null
  br i1 %.not40, label %.thread, label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !234  ; 3 uses
  %.not = icmp eq ptr %i.p, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !462 ; 3 uses
  br i1 %.not, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 536
  store ptr %.pre, ptr %i.q, align 8, !tbaa !462
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.h
  %.not38 = icmp eq ptr %.pre, null
  br i1 %.not38, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.f
  %.pre.sink = phi ptr [ %i.n, %bb.f ], [ %.pre, %._crit_edge ]
  %.sink = phi ptr [ null, %bb.f ], [ %i.p, %._crit_edge ]
  %.ph = phi ptr [ %i.n, %bb.f ], [ %i.e, %._crit_edge ]
  %i.r = getelementptr inbounds nuw i8, ptr %.pre.sink, i64 528
  store ptr %.sink, ptr %i.r, align 8, !tbaa !234
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %._crit_edge, %bb.e
  %i.s = phi ptr [ %i.e, %._crit_edge ], [ %i.k, %bb.e ], [ %.ph, %.sink.split ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18552 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !461  ; 2 uses
  %i.v = icmp eq ptr %1, %i.u
  %.not41 = icmp eq ptr %i.u, null
  %or.cond = or i1 %i.v, %.not41
  br i1 %or.cond, label %bb.j, label %bb.l

.thread:                                          ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18552 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !461  ; 2 uses
  %i.y = icmp eq ptr %1, %i.x
  %.not4150 = icmp eq ptr %i.x, null
  %or.cond51 = or i1 %i.y, %.not4150
  br i1 %or.cond51, label %.thread52, label %bb.l

.thread52:                                        ; preds = %.thread
  store ptr null, ptr %i.w, align 8, !tbaa !461
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  store ptr %i.s, ptr %i.t, align 8, !tbaa !461
  %.not42 = icmp eq ptr %i.s, null
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !235
  %i.ab = and i32 %i.aa, -4097
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !235
  br label %bb.l

bb.l:                                             ; preds = %.thread52, %.thread, %bb.i, %bb.j, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18576 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !215
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !215
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_begin(ptr noundef %0, ptr noundef %1, <2 x float> %2, <2 x float> %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = tail call zeroext i1 @nk_begin_titled(ptr noundef %0, ptr noundef %1, ptr noundef %1, <2 x float> %2, <2 x float> %3, i32 noundef %4)
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_begin_titled(ptr noundef %0, ptr noundef %1, ptr noundef %2, <2 x float> %3, <2 x float> %4, i32 noundef %5) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp ne ptr %2, null
  %or.cond = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.g = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i343 = icmp eq i8 %i.g, 0
  br i1 %.not4.i343, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.h = trunc i64 %strlen to i32
  %i.i = add i32 %i.h, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader, %bb.c
  %.07.i.lcssa = phi i32 [ 0, %bb.c ], [ %i.i, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = tail call i32 @nk_murmur_hash(ptr noundef nonnull %1, i32 noundef %.07.i.lcssa, i32 noundef 64) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18536 ; 5 uses
  %.01122.i = load ptr, ptr %i.k, align 8, !tbaa !219 ; 2 uses
  %.not23.i = icmp eq ptr %.01122.i, null
  br i1 %.not23.i, label %.loopexit, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %nk_strlen.exit, %nk_stricmpn.exit.i
  %.01124.i = phi ptr [ %.011.i, %nk_stricmpn.exit.i ], [ %.01122.i, %nk_strlen.exit ] ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01124.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !474
  %i.n = icmp eq i32 %i.m, %i.j
  br i1 %i.n, label %bb.d, label %nk_stricmpn.exit.i

bb.d:                                             ; preds = %.lr.ph25.i
  %i.o = getelementptr inbounds nuw i8, ptr %.01124.i, i64 8 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !56
  %.not4.i19.i = icmp eq i8 %i.p, 0
  br i1 %.not4.i19.i, label %nk_strlen.exit.preheader.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.d
  %scevgep.i = getelementptr i8, ptr %.01124.i, i64 9
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i)
  %i.q = trunc i64 %strlen.i to i32
  %i.r = add i32 %i.q, 1
  br label %nk_strlen.exit.preheader.i

nk_strlen.exit.preheader.i:                       ; preds = %.lr.ph.i.preheader.i, %bb.d
  %.07.i.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.r, %.lr.ph.i.preheader.i ] ; 2 uses
  %.not.i.i393 = icmp eq i32 %.07.i.lcssa.i, 0
  br i1 %.not.i.i393, label %nk_find_window.exit, label %.lr.ph

.lr.ph:                                           ; preds = %nk_strlen.exit.preheader.i
  %i.s = getelementptr inbounds nuw i8, ptr %.01124.i, i64 9
  br label %bb.e

nk_strlen.exit.i:                                 ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %nk_find_window.exit, label %bb.e, !llvm.loop !7

bb.e:                                             ; preds = %.lr.ph, %nk_strlen.exit.i
  %.in = phi i32 [ %.07.i.lcssa.i, %.lr.ph ], [ %i.y, %nk_strlen.exit.i ]
  %.in396 = phi ptr [ %1, %.lr.ph ], [ %i.w, %nk_strlen.exit.i ] ; 2 uses
  %.in397 = phi ptr [ %i.o, %.lr.ph ], [ %i.u, %nk_strlen.exit.i ]
  %i.u = phi ptr [ %i.s, %.lr.ph ], [ %i.t, %nk_strlen.exit.i ] ; 2 uses
  %i.v = load i8, ptr %.in397, align 1, !tbaa !56 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.in396, i64 1
  %i.x = load i8, ptr %.in396, align 1, !tbaa !56 ; 2 uses
  %i.y = add nsw i32 %.in, -1                     ; 2 uses
  %i.z = sext i8 %i.v to i32
  %i.aa = sext i8 %i.x to i32
  %i.ab = sub nsw i32 %i.z, %i.aa                 ; 3 uses
  %.not26.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not26.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = add i8 %i.v, -65
  %or.cond.i.i = icmp ult i8 %i.ac, 26
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.ab, 32                   ; 2 uses
  %.not27.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not27.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.ad, %bb.g ], [ %i.ab, %bb.f ]
  %i.ae = add i8 %i.x, -65
  %or.cond3.i.i = icmp ult i8 %i.ae, 26
  %.not28.i.i = icmp eq i32 %.0.i.i, 32
  %or.cond.i = and i1 %or.cond3.i.i, %.not28.i.i
  br i1 %or.cond.i, label %bb.i, label %nk_stricmpn.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.not29.i.i = icmp eq i8 %i.v, 0
  br i1 %.not29.i.i, label %.nk_find_window.exit_crit_edge, label %nk_strlen.exit.i, !llvm.loop !7

nk_stricmpn.exit.i:                               ; preds = %bb.h, %.lr.ph25.i
  %i.af = getelementptr inbounds nuw i8, ptr %.01124.i, i64 528
  %.011.i = load ptr, ptr %i.af, align 8, !tbaa !219 ; 2 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph25.i, !llvm.loop !35

.loopexit:                                        ; preds = %nk_stricmpn.exit.i, %nk_strlen.exit
  %i.ag = tail call fastcc ptr @nk_create_window(ptr noundef %0) ; 33 uses
  %.not237.not = icmp eq ptr %i.ag, null
  br i1 %.not237.not, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.ah = and i32 %5, 256
  %.not238 = icmp eq i32 %i.ah, 0
  %.042.i281 = load ptr, ptr %i.k, align 8, !tbaa !219 ; 5 uses
  %.not4043.i282 = icmp eq ptr %.042.i281, null   ; 2 uses
  br i1 %.not238, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not4043.i282, label %._crit_edge.thread.i, label %.lr.ph.i279

bb.l:                                             ; preds = %.lr.ph.i279
  %i.ai = getelementptr inbounds nuw i8, ptr %.044.i, i64 528
  %.0.i = load ptr, ptr %i.ai, align 8, !tbaa !219 ; 2 uses
  %.not40.i = icmp eq ptr %.0.i, null
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i279, !llvm.loop !36

.lr.ph.i279:                                      ; preds = %bb.k, %bb.l
  %.044.i = phi ptr [ %.0.i, %bb.l ], [ %.042.i281, %bb.k ] ; 2 uses
  %i.aj = icmp eq ptr %.044.i, %i.ag
  br i1 %i.aj, label %nk_insert_window.exit, label %bb.l

._crit_edge.i:                                    ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.042.i281, i64 536
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !462
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 528
  store ptr %.042.i281, ptr %i.al, align 8, !tbaa !234
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 536
  store ptr null, ptr %i.am, align 8, !tbaa !462
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !225
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 18576 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !215
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !215
  br label %nk_insert_window.exit

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !225
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 18544
  store ptr %i.ag, ptr %i.ar, align 8, !tbaa !463
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 18576
  store i32 1, ptr %i.as, align 8, !tbaa !215
  br label %nk_insert_window.exit

bb.m:                                             ; preds = %bb.j
  br i1 %.not4043.i282, label %._crit_edge.thread.i288, label %.lr.ph.i283

bb.n:                                             ; preds = %.lr.ph.i283
  %i.at = getelementptr inbounds nuw i8, ptr %.044.i284, i64 528
  %.0.i285 = load ptr, ptr %i.at, align 8, !tbaa !219 ; 2 uses
  %.not40.i286 = icmp eq ptr %.0.i285, null
  br i1 %.not40.i286, label %._crit_edge.i287, label %.lr.ph.i283, !llvm.loop !36

.lr.ph.i283:                                      ; preds = %bb.m, %bb.n
  %.044.i284 = phi ptr [ %.0.i285, %bb.n ], [ %.042.i281, %bb.m ] ; 2 uses
  %i.au = icmp eq ptr %.044.i284, %i.ag
  br i1 %i.au, label %nk_insert_window.exit, label %bb.n

._crit_edge.i287:                                 ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 18544 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !463 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !235
  %i.az = or i32 %i.ay, 4096
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !235
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 528
  store ptr %i.ag, ptr %i.ba, align 8, !tbaa !234
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 536
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !462
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 528
  store ptr null, ptr %i.bc, align 8, !tbaa !234
  store ptr %i.ag, ptr %i.av, align 8, !tbaa !463
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 18552
  store ptr %i.ag, ptr %i.bd, align 8, !tbaa !461
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 18576 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !215
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !215
  br label %nk_insert_window.exit

._crit_edge.thread.i288:                          ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !225
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18544
  store ptr %i.ag, ptr %i.bi, align 8, !tbaa !463
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 18576
  store i32 1, ptr %i.bj, align 8, !tbaa !215
  br label %nk_insert_window.exit

nk_insert_window.exit:                            ; preds = %.lr.ph.i279, %.lr.ph.i283, %._crit_edge.i287, %._crit_edge.thread.i288, %._crit_edge.i, %._crit_edge.thread.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 9736
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !99
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  store i32 1, ptr %i.bm, align 8, !tbaa !111
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 9824
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !77 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !224
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !104
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  store i64 %i.bo, ptr %i.br, align 8, !tbaa !100
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store i32 %5, ptr %i.bs, align 8, !tbaa !235
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 76
  store <2 x float> %3, ptr %i.bt, align 4, !tbaa !54
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 84
  store <2 x float> %4, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.j, ptr %i.bu, align 4, !tbaa !474
  %i.bv = tail call i32 @llvm.umin.i32(i32 %.07.i.lcssa, i32 63)
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.by = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.bx, ptr noundef nonnull %1, i64 noundef %i.bw) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 0, ptr %i.bz, align 1, !tbaa !56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ag, i64 360
  store ptr null, ptr %i.ca, align 8, !tbaa !464
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ag, i64 504
  store i8 0, ptr %i.cb, align 8, !tbaa !475
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 18552 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !461
  %.not239 = icmp eq ptr %i.cd, null
  br i1 %.not239, label %bb.o, label %bb.s

bb.o:                                             ; preds = %nk_insert_window.exit
  store ptr %i.ag, ptr %i.cc, align 8, !tbaa !461
  br label %bb.s

.nk_find_window.exit_crit_edge:                   ; preds = %bb.i
  br label %nk_find_window.exit, !llvm.loop !7

nk_find_window.exit:                              ; preds = %nk_strlen.exit.preheader.i, %nk_strlen.exit.i, %.nk_find_window.exit_crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %.01124.i, i64 72 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !235
  %i.cg = and i32 %i.cf, -2048
  %i.ch = or i32 %i.cg, %5                        ; 2 uses
  store i32 %i.ch, ptr %i.ce, align 8, !tbaa !235
  %i.ci = and i32 %5, 6
  %.not240 = icmp eq i32 %i.ci, 0
  br i1 %.not240, label %bb.p, label %bb.q

bb.p:                                             ; preds = %nk_find_window.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.01124.i, i64 76
  %6 = shufflevector <2 x float> %3, <2 x float> %4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %i.cj, align 4, !tbaa !54
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %nk_find_window.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !237
  store i32 %i.cl, ptr %.01124.i, align 8, !tbaa !236
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 18552 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !461
  %.not241 = icmp eq ptr %i.cn, null
  %i.co = and i32 %i.ch, 8192
  %.not242 = icmp eq i32 %i.co, 0
  %or.cond330 = select i1 %.not241, i1 %.not242, i1 false
  br i1 %or.cond330, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %.01124.i, ptr %i.cm, align 8, !tbaa !461
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 18544
  store ptr %.01124.i, ptr %i.cp, align 8, !tbaa !463
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %nk_insert_window.exit, %bb.q, %bb.r
  %.0220 = phi ptr [ %.01124.i, %bb.q ], [ %i.ag, %bb.o ], [ %.01124.i, %bb.r ], [ %i.ag, %nk_insert_window.exit ] ; 26 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0220, i64 72 ; 5 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !235 ; 9 uses
  %i.cs = and i32 %i.cr, 8192
  %.not243 = icmp eq i32 %i.cs, 0
  br i1 %.not243, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %.0220, ptr %i.a, align 8, !tbaa !415
  %i.ct = getelementptr inbounds nuw i8, ptr %.0220, i64 168
  store ptr null, ptr %i.ct, align 8, !tbaa !416
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  %i.cu = getelementptr i8, ptr %0, i64 9824
  %.val = load i64, ptr %i.cu, align 8, !tbaa !216 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0220, i64 144
  store i64 %.val, ptr %i.cv, align 8, !tbaa !224
  %i.cw = getelementptr inbounds nuw i8, ptr %.0220, i64 152
  store i64 %.val, ptr %i.cw, align 8, !tbaa !104
  %i.cx = getelementptr inbounds nuw i8, ptr %.0220, i64 160
  store i64 %.val, ptr %i.cx, align 8, !tbaa !100
  %i.cy = getelementptr inbounds nuw i8, ptr %.0220, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, ptr noundef nonnull align 4 dereferenceable(16) @nk_null_rect, i64 16, i1 false), !tbaa.struct !157
  %i.cz = and i32 %i.cr, 1024
  %.not245 = icmp eq i32 %i.cz, 0
  br i1 %.not245, label %bb.v, label %bb.bi

bb.v:                                             ; preds = %bb.u
  %i.da = load ptr, ptr %i.f, align 8, !tbaa !426
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load float, ptr %i.db, align 8, !tbaa !140
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 9472
  %i.de = load float, ptr %i.dd, align 8, !tbaa !476
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float 2.000000e+00, float %i.dc)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 9480
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !477
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float 2.000000e+00, float %i.df) ; 3 uses
  %i.dj = and i32 %i.cr, 32768
  %.not246 = icmp eq i32 %i.dj, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %.0220, i64 76 ; 2 uses
  br i1 %.not246, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.dk, align 4 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0220, i64 84
  %.sroa.16.0.copyload = load <2 x float>, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !54
  %i.dl = extractelement <2 x float> %.sroa.018.0.copyload, i64 0
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dm = load <2 x float>, ptr %i.dk, align 4, !tbaa !54 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0220, i64 84
  %i.do = load float, ptr %i.dn, align 4, !tbaa !478
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.do, i64 0
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %i.di, i64 1
  %i.dp = extractelement <2 x float> %i.dm, i64 0
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.dq = phi float [ %i.dp, %bb.x ], [ %i.dl, %bb.w ] ; 2 uses
  %.sroa.16.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %bb.x ], [ %.sroa.16.0.copyload, %bb.w ] ; 5 uses
  %.sroa.018.0 = phi <2 x float> [ %i.dm, %bb.x ], [ %.sroa.018.0.copyload, %bb.w ] ; 8 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.018.0, i64 0 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !389 ; 2 uses
  %i.dt = fcmp ole float %.sroa.0.0.vec.extract.i.i, %i.ds
  %.sroa.5.8.vec.extract.i.i = extractelement <2 x float> %.sroa.16.0, i64 0
  %foldExtExtBinop = fadd <2 x float> %.sroa.16.0, %.sroa.018.0
  %i.du = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.dv = fcmp olt float %i.ds, %i.du
  %or.cond.i.i292 = select i1 %i.dt, i1 %i.dv, i1 false
  br i1 %or.cond.i.i292, label %nk_input_has_mouse_click_in_rect.exit.i, label %nk_input_has_mouse_click_down_in_rect.exit.thread

nk_input_has_mouse_click_in_rect.exit.i:          ; preds = %bb.y
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %.sroa.018.0, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !390 ; 2 uses
  %i.dy = fcmp ole float %.sroa.0.4.vec.extract.i.i, %i.dx
  %foldExtExtBinop399 = fadd <2 x float> %.sroa.16.0, %.sroa.018.0
  %i.dz = extractelement <2 x float> %foldExtExtBinop399, i64 1
  %i.ea = fcmp olt float %i.dx, %i.dz
  %or.cond16.i.i = select i1 %i.dy, i1 %i.ea, i1 false
  br i1 %or.cond16.i.i, label %nk_input_has_mouse_click_down_in_rect.exit, label %nk_input_has_mouse_click_down_in_rect.exit.thread

nk_input_has_mouse_click_down_in_rect.exit:       ; preds = %nk_input_has_mouse_click_in_rect.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ec = load i8, ptr %i.eb, align 4, !tbaa !388, !range !88, !noundef !89
  %.not335 = icmp eq i8 %i.ec, 0
  br i1 %.not335, label %nk_input_has_mouse_click_down_in_rect.exit.thread, label %bb.z

bb.z:                                             ; preds = %nk_input_has_mouse_click_down_in_rect.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !383
  %i.ef = icmp ne i32 %i.ee, 0
  br label %nk_input_has_mouse_click_down_in_rect.exit.thread

nk_input_has_mouse_click_down_in_rect.exit.thread: ; preds = %nk_input_has_mouse_click_in_rect.exit.i, %bb.y, %nk_input_has_mouse_click_down_in_rect.exit, %bb.z
  %i.eg = phi i1 [ false, %nk_input_has_mouse_click_down_in_rect.exit ], [ %i.ef, %bb.z ], [ false, %bb.y ], [ false, %nk_input_has_mouse_click_in_rect.exit.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !391 ; 4 uses
  %i.ej = fcmp ole float %.sroa.0.0.vec.extract.i.i, %i.ei
  %i.ek = fcmp olt float %i.ei, %i.du
  %or.cond.i295 = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond.i295, label %bb.aa, label %nk_input_is_mouse_hovering_rect.exit.thread

bb.aa:                                            ; preds = %nk_input_has_mouse_click_down_in_rect.exit.thread
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.018.0, i64 1 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.em = load float, ptr %i.el, align 8, !tbaa !392 ; 2 uses
  %i.en = fcmp ugt float %.sroa.0.4.vec.extract.i, %i.em
  br i1 %i.en, label %nk_input_is_mouse_hovering_rect.exit.thread, label %nk_input_is_mouse_hovering_rect.exit

nk_input_is_mouse_hovering_rect.exit.thread:      ; preds = %bb.aa, %nk_input_has_mouse_click_down_in_rect.exit.thread
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 18552
  br label %.thread

nk_input_is_mouse_hovering_rect.exit:             ; preds = %bb.aa
  %foldExtExtBinop401 = fadd <2 x float> %.sroa.16.0, %.sroa.018.0
  %i.ep = extractelement <2 x float> %foldExtExtBinop401, i64 1 ; 3 uses
  %i.eq = fcmp olt float %i.em, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 18552 ; 7 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !461
  %i.et = icmp ne ptr %.0220, %i.es
  %or.cond5 = select i1 %i.et, i1 %i.eq, i1 false
  br i1 %or.cond5, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %nk_input_is_mouse_hovering_rect.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ev = load i8, ptr %i.eu, align 4, !tbaa !388, !range !88, !noundef !89
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %.thread, label %.preheader337

.preheader337:                                    ; preds = %bb.ab
  %.0.in346 = getelementptr inbounds nuw i8, ptr %.0220, i64 528
  %.0347 = load ptr, ptr %.0.in346, align 8, !tbaa !234 ; 2 uses
  %.not247348 = icmp eq ptr %.0347, null
  br i1 %.not247348, label %.critedge277, label %.lr.ph350

.lr.ph350:                                        ; preds = %.preheader337
  %i.ex = fadd float %.sroa.5.8.vec.extract.i.i, %i.dq
  %i.ey = insertelement <2 x float> poison, float %i.di, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph350, %bb.an
  %.0349 = phi ptr [ %.0347, %.lr.ph350 ], [ %.0, %bb.an ] ; 9 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0349, i64 72
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !235 ; 3 uses
  %i.fb = and i32 %i.fa, 32768
  %.not248 = icmp eq i32 %i.fb, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %.0349, i64 76
  br i1 %.not248, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0349, i64 84
  %.sroa.817.0.copyload = load <2 x float>, ptr %.sroa.817.0..sroa_idx, align 4, !tbaa !54
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.fd = getelementptr inbounds nuw i8, ptr %.0349, i64 84
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !478
  %i.ff = insertelement <2 x float> %i.ey, float %i.fe, i64 0
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.817.0 = phi <2 x float> [ %i.ff, %bb.ae ], [ %.sroa.817.0.copyload, %bb.ad ] ; 2 uses
  %.sroa.012.0 = load <2 x float>, ptr %i.fc, align 4, !tbaa !54 ; 4 uses
  %.sroa.012.0.vec.extract = extractelement <2 x float> %.sroa.012.0, i64 0
  %i.fg = fcmp olt float %.sroa.012.0.vec.extract, %i.du
  %foldExtExtBinop403 = fadd <2 x float> %.sroa.817.0, %.sroa.012.0
  %i.fh = extractelement <2 x float> %foldExtExtBinop403, i64 0
  %i.fi = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.fh
  %or.cond268 = select i1 %i.fg, i1 %i.fi, i1 false
  br i1 %or.cond268, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.sroa.012.4.vec.extract = extractelement <2 x float> %.sroa.012.0, i64 1
  %i.fj = fcmp olt float %.sroa.012.4.vec.extract, %i.ep
  %foldExtExtBinop405 = fadd <2 x float> %.sroa.817.0, %.sroa.012.0
end_hunk_2
begin_hunk_3_@nk_window_is_active:bb.a
  %.in31 = phi ptr [ %i.i, %.lr.ph ], [ %i.o, %nk_strlen.exit.i ]
  %i.o = phi ptr [ %i.m, %.lr.ph ], [ %i.n, %nk_strlen.exit.i ] ; 2 uses
  %i.p = load i8, ptr %.in31, align 1, !tbaa !56  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.in30, i64 1
  %i.r = load i8, ptr %.in30, align 1, !tbaa !56  ; 2 uses
  %i.s = add nsw i32 %.in, -1                     ; 2 uses
  %i.t = sext i8 %i.p to i32
  %i.u = sext i8 %i.r to i32
  %i.v = sub nsw i32 %i.t, %i.u                   ; 3 uses
  %.not26.i.i = icmp eq i32 %i.v, 0
  br i1 %.not26.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i8 %i.p, -65
  %or.cond.i.i = icmp ult i8 %i.w, 26
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.v, 32                     ; 2 uses
  %.not27.i.i = icmp eq i32 %i.x, 0
  br i1 %.not27.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.x, %bb.f ], [ %i.v, %bb.e ]
  %i.y = add i8 %i.r, -65
  %or.cond3.i.i = icmp ult i8 %i.y, 26
  %.not28.i.i = icmp eq i32 %.0.i.i, 32
  %or.cond.i = and i1 %or.cond3.i.i, %.not28.i.i
  br i1 %or.cond.i, label %bb.h, label %nk_stricmpn.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.not29.i.i = icmp eq i8 %i.p, 0
  br i1 %.not29.i.i, label %.nk_find_window.exit_crit_edge, label %nk_strlen.exit.i, !llvm.loop !7

nk_stricmpn.exit.i:                               ; preds = %bb.g, %.lr.ph25.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01124.i, i64 528
  %.011.i = load ptr, ptr %i.z, align 8, !tbaa !219 ; 2 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %nk_find_window.exit.thread, label %.lr.ph25.i, !llvm.loop !35

.nk_find_window.exit_crit_edge:                   ; preds = %bb.h
  br label %nk_find_window.exit, !llvm.loop !7

nk_find_window.exit:                              ; preds = %nk_strlen.exit.preheader.i, %nk_strlen.exit.i, %.nk_find_window.exit_crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !461
  %i.ac = icmp eq ptr %.01124.i, %i.ab
  br label %nk_find_window.exit.thread

nk_find_window.exit.thread:                       ; preds = %nk_stricmpn.exit.i, %nk_strlen.exit, %bb.a, %nk_find_window.exit
  %.0 = phi i1 [ %i.ac, %nk_find_window.exit ], [ false, %bb.a ], [ false, %nk_strlen.exit ], [ false, %nk_stricmpn.exit.i ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @nk_window_find(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #25 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i7 = icmp eq i8 %i.a, 0
  br i1 %.not4.i7, label %nk_strlen.exit, label %.lr.ph.i.preheader11

.lr.ph.i.preheader11:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader11, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader11 ]
  %i.d = tail call i32 @nk_murmur_hash(ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef 64)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18536
  %.01122.i = load ptr, ptr %i.e, align 8, !tbaa !219 ; 2 uses
  %.not23.i = icmp eq ptr %.01122.i, null
  br i1 %.not23.i, label %nk_find_window.exit, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %nk_strlen.exit, %nk_stricmpn.exit.i
  %.01124.i = phi ptr [ %.011.i, %nk_stricmpn.exit.i ], [ %.01122.i, %nk_strlen.exit ] ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01124.i, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !474
  %i.h = icmp eq i32 %i.g, %i.d
  br i1 %i.h, label %bb.b, label %nk_stricmpn.exit.i

bb.b:                                             ; preds = %.lr.ph25.i
  %i.i = getelementptr inbounds nuw i8, ptr %.01124.i, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !56
  %.not4.i19.i = icmp eq i8 %i.j, 0
  br i1 %.not4.i19.i, label %nk_strlen.exit.preheader.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %scevgep.i = getelementptr i8, ptr %.01124.i, i64 9
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i)
  %i.k = trunc i64 %strlen.i to i32
  %i.l = add i32 %i.k, 1
  br label %nk_strlen.exit.preheader.i

nk_strlen.exit.preheader.i:                       ; preds = %.lr.ph.i.preheader.i, %bb.b
  %.07.i.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.l, %.lr.ph.i.preheader.i ] ; 2 uses
  %.not.i.i19 = icmp eq i32 %.07.i.lcssa.i, 0
  br i1 %.not.i.i19, label %nk_find_window.exit, label %.lr.ph

.lr.ph:                                           ; preds = %nk_strlen.exit.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01124.i, i64 9
  br label %bb.c

nk_strlen.exit.i:                                 ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %nk_find_window.exit, label %bb.c, !llvm.loop !7

bb.c:                                             ; preds = %.lr.ph, %nk_strlen.exit.i
  %.in = phi i32 [ %.07.i.lcssa.i, %.lr.ph ], [ %i.s, %nk_strlen.exit.i ]
  %.in22 = phi ptr [ %1, %.lr.ph ], [ %i.q, %nk_strlen.exit.i ] ; 2 uses
  %.in23 = phi ptr [ %i.i, %.lr.ph ], [ %i.o, %nk_strlen.exit.i ]
  %i.o = phi ptr [ %i.m, %.lr.ph ], [ %i.n, %nk_strlen.exit.i ] ; 2 uses
  %i.p = load i8, ptr %.in23, align 1, !tbaa !56  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.in22, i64 1
  %i.r = load i8, ptr %.in22, align 1, !tbaa !56  ; 2 uses
  %i.s = add nsw i32 %.in, -1                     ; 2 uses
  %i.t = sext i8 %i.p to i32
  %i.u = sext i8 %i.r to i32
  %i.v = sub nsw i32 %i.t, %i.u                   ; 3 uses
  %.not26.i.i = icmp eq i32 %i.v, 0
  br i1 %.not26.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = add i8 %i.p, -65
  %or.cond.i.i = icmp ult i8 %i.w, 26
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.v, 32                     ; 2 uses
  %.not27.i.i = icmp eq i32 %i.x, 0
  br i1 %.not27.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi i32 [ %i.x, %bb.e ], [ %i.v, %bb.d ]
  %i.y = add i8 %i.r, -65
  %or.cond3.i.i = icmp ult i8 %i.y, 26
  %.not28.i.i = icmp eq i32 %.0.i.i, 32
  %or.cond.i = and i1 %or.cond3.i.i, %.not28.i.i
  br i1 %or.cond.i, label %bb.g, label %nk_stricmpn.exit.i

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.not29.i.i = icmp eq i8 %i.p, 0
  br i1 %.not29.i.i, label %.nk_find_window.exit.loopexit_crit_edge, label %nk_strlen.exit.i, !llvm.loop !7

nk_stricmpn.exit.i:                               ; preds = %bb.f, %.lr.ph25.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01124.i, i64 528
  %.011.i = load ptr, ptr %i.z, align 8, !tbaa !219 ; 2 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %nk_find_window.exit, label %.lr.ph25.i, !llvm.loop !35

.nk_find_window.exit.loopexit_crit_edge:          ; preds = %bb.g
  br label %nk_find_window.exit, !llvm.loop !7

nk_find_window.exit:                              ; preds = %nk_stricmpn.exit.i, %nk_strlen.exit.preheader.i, %nk_strlen.exit.i, %.nk_find_window.exit.loopexit_crit_edge, %nk_strlen.exit
  %.3.i = phi ptr [ %.01124.i, %.nk_find_window.exit.loopexit_crit_edge ], [ null, %nk_strlen.exit ], [ %.01124.i, %nk_strlen.exit.i ], [ %.01124.i, %nk_strlen.exit.preheader.i ], [ null, %nk_stricmpn.exit.i ]
  ret ptr %.3.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_window_close(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @nk_window_find(ptr noundef nonnull %0, ptr noundef %1) ; 3 uses
  %.not9 = icmp eq ptr %i.a, null
  br i1 %.not9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !415
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !235
  %i.g = or i32 %i.f, 24576
  store i32 %i.g, ptr %i.e, align 8, !tbaa !235
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_window_set_bounds(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, <2 x float> %2, <2 x float> %3) local_unnamed_addr #35 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @nk_window_find(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %4 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %i.b, align 4, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_window_set_position(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, <2 x float> %2) local_unnamed_addr #35 {
bb.a:
  %i.a = tail call ptr @nk_window_find(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store <2 x float> %2, ptr %i.b, align 4, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_window_set_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, <2 x float> %2) local_unnamed_addr #35 {
bb.a:
  %i.a = tail call ptr @nk_window_find(ptr noundef %0, ptr noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store <2 x float> %2, ptr %i.b, align 4, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_window_set_scroll(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #31 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 %1, ptr %i.c, align 4, !tbaa !525
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 %2, ptr %i.d, align 4, !tbaa !526
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_window_collapse(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #19 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_find_window.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.a = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i15 = icmp eq i8 %i.a, 0
  br i1 %.not4.i15, label %nk_strlen.exit, label %.lr.ph.i.preheader18

.lr.ph.i.preheader18:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader18, %.lr.ph.i.preheader, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader18 ]
  %i.d = tail call i32 @nk_murmur_hash(ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef 64)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18536
  %.01122.i = load ptr, ptr %i.e, align 8, !tbaa !219 ; 2 uses
  %.not23.i = icmp eq ptr %.01122.i, null
  br i1 %.not23.i, label %nk_find_window.exit.thread, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %nk_strlen.exit, %nk_stricmpn.exit.i
  %.01124.i = phi ptr [ %.011.i, %nk_stricmpn.exit.i ], [ %.01122.i, %nk_strlen.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01124.i, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !474
  %i.h = icmp eq i32 %i.g, %i.d
  br i1 %i.h, label %bb.c, label %nk_stricmpn.exit.i

bb.c:                                             ; preds = %.lr.ph25.i
  %i.i = getelementptr inbounds nuw i8, ptr %.01124.i, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !56
  %.not4.i19.i = icmp eq i8 %i.j, 0
  br i1 %.not4.i19.i, label %nk_strlen.exit.preheader.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %.01124.i, i64 9
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i)
  %i.k = trunc i64 %strlen.i to i32
  %i.l = add i32 %i.k, 1
  br label %nk_strlen.exit.preheader.i

nk_strlen.exit.preheader.i:                       ; preds = %.lr.ph.i.preheader.i, %bb.c
  %.07.i.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.l, %.lr.ph.i.preheader.i ] ; 2 uses
  %.not.i.i25 = icmp eq i32 %.07.i.lcssa.i, 0
  br i1 %.not.i.i25, label %nk_find_window.exit, label %.lr.ph

.lr.ph:                                           ; preds = %nk_strlen.exit.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01124.i, i64 9
  br label %bb.d

nk_strlen.exit.i:                                 ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %nk_find_window.exit, label %bb.d, !llvm.loop !7

bb.d:                                             ; preds = %.lr.ph, %nk_strlen.exit.i
  %.in = phi i32 [ %.07.i.lcssa.i, %.lr.ph ], [ %i.s, %nk_strlen.exit.i ]
  %.in28 = phi ptr [ %1, %.lr.ph ], [ %i.q, %nk_strlen.exit.i ] ; 2 uses
  %.in29 = phi ptr [ %i.i, %.lr.ph ], [ %i.o, %nk_strlen.exit.i ]
  %i.o = phi ptr [ %i.m, %.lr.ph ], [ %i.n, %nk_strlen.exit.i ] ; 2 uses
  %i.p = load i8, ptr %.in29, align 1, !tbaa !56  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.in28, i64 1
  %i.r = load i8, ptr %.in28, align 1, !tbaa !56  ; 2 uses
  %i.s = add nsw i32 %.in, -1                     ; 2 uses
  %i.t = sext i8 %i.p to i32
  %i.u = sext i8 %i.r to i32
  %i.v = sub nsw i32 %i.t, %i.u                   ; 3 uses
  %.not26.i.i = icmp eq i32 %i.v, 0
  br i1 %.not26.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i8 %i.p, -65
  %or.cond.i.i = icmp ult i8 %i.w, 26
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.v, 32                     ; 2 uses
  %.not27.i.i = icmp eq i32 %i.x, 0
  br i1 %.not27.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.x, %bb.f ], [ %i.v, %bb.e ]
  %i.y = add i8 %i.r, -65
  %or.cond3.i.i = icmp ult i8 %i.y, 26
  %.not28.i.i = icmp eq i32 %.0.i.i, 32
  %or.cond.i = and i1 %or.cond3.i.i, %.not28.i.i
  br i1 %or.cond.i, label %bb.h, label %nk_stricmpn.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.not29.i.i = icmp eq i8 %i.p, 0
  br i1 %.not29.i.i, label %.nk_find_window.exit_crit_edge, label %nk_strlen.exit.i, !llvm.loop !7

nk_stricmpn.exit.i:                               ; preds = %bb.g, %.lr.ph25.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01124.i, i64 528
  %.011.i = load ptr, ptr %i.z, align 8, !tbaa !219 ; 2 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %nk_find_window.exit.thread, label %.lr.ph25.i, !llvm.loop !35

.nk_find_window.exit_crit_edge:                   ; preds = %bb.h
  br label %nk_find_window.exit, !llvm.loop !7

nk_find_window.exit:                              ; preds = %nk_strlen.exit.preheader.i, %nk_strlen.exit.i, %.nk_find_window.exit_crit_edge
  %i.aa = icmp eq i32 %2, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %.01124.i, i64 72 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !235
  %i.ad = and i32 %i.ac, -32769
  %masksel = select i1 %i.aa, i32 32768, i32 0
  %.sink = or disjoint i32 %i.ad, %masksel
  store i32 %.sink, ptr %i.ab, align 8, !tbaa !235
  br label %nk_find_window.exit.thread

nk_find_window.exit.thread:                       ; preds = %nk_stricmpn.exit.i, %nk_find_window.exit, %nk_strlen.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_window_collapse_if(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i32 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @nk_window_collapse(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}
end_hunk_3
begin_hunk_4_@nk_contextual_begin:bb.a
  %.not58 = icmp eq i32 %i.ar, 0
  br i1 %.not58, label %bb.m, label %bb.l

bb.l:                                             ; preds = %nk_input_mouse_clicked.exit
  %.not59 = icmp eq i32 %i.h, %i.ar
  br i1 %.not59, label %.thread, label %bb.v

bb.m:                                             ; preds = %nk_input_mouse_clicked.exit
  br i1 %i.o, label %.critedge, label %bb.o

.thread:                                          ; preds = %bb.l
  br i1 %i.o, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.thread
  store i32 0, ptr %i.aq, align 4, !tbaa !522
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  br i1 %.0.i, label %.critedge62, label %bb.v

.critedge:                                        ; preds = %.thread, %bb.m
  store i32 %i.h, ptr %i.aq, align 4, !tbaa !522
  br i1 %.0.i, label %bb.p, label %bb.q

.critedge62:                                      ; preds = %bb.o
  store i32 %i.h, ptr %i.aq, align 4, !tbaa !522
  br label %bb.p

bb.p:                                             ; preds = %.critedge62, %.critedge
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.t, i64 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.at = load float, ptr %i.as, align 8, !tbaa !392
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.at, i64 1
  br label %bb.r

bb.q:                                             ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.av = load <2 x float>, ptr %i.au, align 4, !tbaa !54
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert, %bb.p ], [ %i.av, %bb.q ]
  %i.aw = or i32 %1, 32
  %i.ax = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef %0, i32 noundef %i.aw, <2 x float> %.sroa.0.0, <2 x float> %2, <2 x float> splat (float -1.000000e+00), <2 x float> zeroinitializer, i32 noundef 16)
  br i1 %i.ax, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 16, ptr %i.ay, align 8, !tbaa !528
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %i.aq, align 4, !tbaa !522
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 0, ptr %i.az, align 8, !tbaa !528
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !464 ; 2 uses
  %.not61 = icmp eq ptr %i.ba, null
  br i1 %.not61, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store i32 0, ptr %i.bb, align 8, !tbaa !235
  br label %bb.v

bb.v:                                             ; preds = %bb.g, %bb.t, %bb.u, %bb.s, %bb.o, %bb.l, %bb.d, %bb.a, %bb.b, %bb.c
  %.047 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.s ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.g ]
  ret i1 %.047
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef range(i32 32, 1) %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, <2 x float> %5, i32 noundef range(i32 16, 65) %6) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 17 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 2 uses
  %.not73 = icmp eq ptr %i.d, null
  br i1 %.not73, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !464  ; 2 uses
  %.not74 = icmp eq ptr %i.f, null
  br i1 %.not74, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.g = tail call fastcc ptr @nk_create_window(ptr noundef %0) ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  store ptr %i.b, ptr %i.h, align 8, !tbaa !506
  store ptr %i.g, ptr %i.e, align 8, !tbaa !464
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 %6, ptr %i.i, align 8, !tbaa !528
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9736
  store ptr %i.k, ptr %i.j, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i32 1, ptr %i.l, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9824
  %i.n = load i64, ptr %i.m, align 8, !tbaa !77   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store i64 %i.n, ptr %i.o, align 8, !tbaa !224
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store i64 %i.n, ptr %i.p, align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  store i64 %i.n, ptr %i.q, align 8, !tbaa !100
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store <2 x float> %4, ptr %i.r, align 8, !tbaa !54
  %.sroa.3.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store <2 x float> %5, ptr %.sroa.3.0..sroa_idx90, align 8, !tbaa !54
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.t = load i8, ptr %i.s, align 4, !tbaa !388, !range !88, !noundef !89
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = load i32, ptr %i.v, align 8, !tbaa !383
  %.not6.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i, label %bb.f, label %nk_input_is_mouse_pressed.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %nk_input_is_mouse_pressed.exit

nk_input_is_mouse_pressed.exit:                   ; preds = %bb.e, %bb.f
  %.0.i = phi i1 [ true, %bb.e ], [ false, %bb.f ]
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %2, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.y = load float, ptr %i.x, align 4, !tbaa !391 ; 4 uses
  %i.z = fcmp ole float %.sroa.0.0.vec.extract.i, %i.y
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.aa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ab = fcmp olt float %i.y, %i.aa
  %or.cond.i = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %bb.g, label %nk_input_is_mouse_hovering_rect.exit

bb.g:                                             ; preds = %nk_input_is_mouse_pressed.exit
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %2, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !392 ; 2 uses
  %i.ae = fcmp ugt float %.sroa.0.4.vec.extract.i, %i.ad
  br i1 %i.ae, label %nk_input_is_mouse_hovering_rect.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop116 = fadd <2 x float> %2, %3
  %i.af = extractelement <2 x float> %foldExtExtBinop116, i64 1
  %i.ag = fcmp uge float %i.ad, %i.af
  br label %nk_input_is_mouse_hovering_rect.exit

nk_input_is_mouse_hovering_rect.exit:             ; preds = %nk_input_is_mouse_pressed.exit, %bb.g, %bb.h
  %.0.i79 = phi i1 [ true, %bb.g ], [ %i.ag, %bb.h ], [ true, %nk_input_is_mouse_pressed.exit ]
  %.sroa.0.0.vec.extract.i80 = extractelement <2 x float> %4, i64 0
  %i.ah = fcmp ole float %.sroa.0.0.vec.extract.i80, %i.y
  %foldExtExtBinop118 = fadd <2 x float> %4, %5
  %i.ai = extractelement <2 x float> %foldExtExtBinop118, i64 0
  %i.aj = fcmp olt float %i.y, %i.ai
  %or.cond.i82 = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond.i82, label %bb.i, label %bb.k

bb.i:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit
  %.sroa.0.4.vec.extract.i84 = extractelement <2 x float> %4, i64 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.al = load float, ptr %i.ak, align 8, !tbaa !392 ; 2 uses
  %i.am = fcmp ugt float %.sroa.0.4.vec.extract.i84, %i.al
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop120 = fadd <2 x float> %4, %5
  %i.an = extractelement <2 x float> %foldExtExtBinop120, i64 1
  %i.ao = fcmp olt float %i.al, %i.an
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %nk_input_is_mouse_hovering_rect.exit
  %.0.i83 = phi i1 [ false, %bb.i ], [ %i.ao, %bb.j ], [ false, %nk_input_is_mouse_hovering_rect.exit ]
  %or.cond = select i1 %.0.i79, i1 true, i1 %.0.i83
  %or.cond78 = select i1 %.0.i, i1 %or.cond, i1 false
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store <2 x float> %4, ptr %i.ap, align 8, !tbaa !54
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store <2 x float> %5, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !54
  br i1 %or.cond78, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.06695 = phi ptr [ %.066, %.lr.ph ], [ %i.d, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.06695, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !488
  %i.as = or i32 %i.ar, 65536
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !488
  %i.at = getelementptr inbounds nuw i8, ptr %.06695, i64 456
  %.066 = load ptr, ptr %i.at, align 8, !tbaa !532 ; 2 uses
  %.not76 = icmp eq ptr %.066, null
  br i1 %.not76, label %.loopexit, label %.lr.ph, !llvm.loop !1061

bb.l:                                             ; preds = %.thread, %bb.k
  %.06891 = phi ptr [ %i.g, %.thread ], [ %i.f, %bb.k ] ; 12 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.06891, i64 76
  %7 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %7, ptr %i.au, align 4, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %.06891, i64 544
  store ptr %i.b, ptr %i.av, align 8, !tbaa !506
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !470 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 576
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !472
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !470
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !457
  %.not18.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not18.i.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !456 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !483 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !454
  %.not18.i.i.i = icmp ult i32 %i.bf, %i.bh
  br i1 %.not18.i.i.i, label %nk_pool_alloc.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !455
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %nk_create_panel.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !454
  %i.bn = add i32 %i.bm, -1
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw nsw i64 %i.bo, 592
  %i.bq = add nuw nsw i64 %i.bp, 608
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !484
  %i.bt = load ptr, ptr %i.bc, align 8
  %i.bu = tail call ptr %i.bs(ptr %i.bt, ptr noundef null, i64 noundef %i.bq) #50, !inline_history !37 ; 4 uses
  %i.bv = load ptr, ptr %i.bd, align 8, !tbaa !456
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !459
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !456
  store i32 0, ptr %i.bu, align 8, !tbaa !483
  br label %nk_pool_alloc.exit.i.i

nk_pool_alloc.exit.i.i:                           ; preds = %.thread.i.i.i, %bb.p
  %i.bx = phi i32 [ 0, %.thread.i.i.i ], [ %i.bf, %bb.p ] ; 2 uses
  %i.by = phi ptr [ %i.bu, %.thread.i.i.i ], [ %i.be, %bb.p ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = add nuw i32 %i.bx, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !483
  %i.cb = zext i32 %i.bx to i64
  %i.cc = getelementptr inbounds nuw [592 x i8], ptr %i.bz, i64 %i.cb
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.ce = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.cd, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i.i = icmp eq ptr %i.ce, null
  br i1 %.not19.i.i, label %nk_create_panel.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %nk_pool_alloc.exit.i.i, %bb.m
  %.0.i.i = phi ptr [ %i.ax, %bb.m ], [ %i.cc, %nk_pool_alloc.exit.i.i ], [ %i.ce, %bb.r ] ; 6 uses
  %i.cf = ptrtoint ptr %.0.i.i to i64
  %i.cg = and i64 %i.cf, 3                        ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.i, label %.loopexit46.i.i.thread.i.i, label %.loopexit46.i.i.i.i

.loopexit46.i.i.thread.i.i:                       ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i.i, i8 0, i64 576, i1 false), !tbaa !55
  br label %nk_zero.exit.i.i

.loopexit46.i.i.i.i:                              ; preds = %bb.s
  %i.ch = sub nuw nsw i64 4, %i.cg                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i, i8 0, i64 %i.ch, i1 false), !tbaa !56
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i, i64 %i.ch ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i.i, i8 0, i64 588, i1 false), !tbaa !55
  %scevgep53.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i.i.i, i8 0, i64 %i.cg, i1 false), !tbaa !56
  br label %nk_zero.exit.i.i

nk_zero.exit.i.i:                                 ; preds = %.loopexit46.i.i.i.i, %.loopexit46.i.i.thread.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  br label %nk_create_panel.exit

nk_create_panel.exit:                             ; preds = %bb.q, %bb.r, %nk_zero.exit.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %nk_zero.exit.i.i ], [ null, %bb.r ], [ null, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.06891, i64 168 ; 2 uses
  store ptr %.014.i.i, ptr %i.cj, align 8, !tbaa !416
  %i.ck = getelementptr inbounds nuw i8, ptr %.06891, i64 72
  %i.cl = or i32 %1, 2049
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !235
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !237
  store i32 %i.cn, ptr %.06891, align 8, !tbaa !236
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  store i8 1, ptr %i.co, align 4, !tbaa !479
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !tbaa !79
  %i.ct = load i64, ptr %i.cq, align 8, !tbaa !241 ; 2 uses
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !517
  store <2 x i64> %i.cs, ptr %i.cp, align 8, !tbaa !79
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !239
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store i8 1, ptr %i.cv, align 8, !tbaa !240
  %i.cw = getelementptr inbounds nuw i8, ptr %.06891, i64 104 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cw, ptr noundef nonnull align 8 dereferenceable(64) %i.cx, i64 64, i1 false), !tbaa.struct !531
  %i.cy = getelementptr inbounds nuw i8, ptr %.06891, i64 112
  store <4 x float> <float -8.192000e+03, float -8.192000e+03, float 1.638400e+04, float 1.638400e+04>, ptr %i.cy, align 8, !tbaa !54
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !99
  %i.da = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.cz, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i87 = icmp eq ptr %i.da, null
  br i1 %.not.i.i87, label %nk_push_scissor.exit, label %bb.t

bb.t:                                             ; preds = %nk_create_panel.exit
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !99 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !69
  %i.de = ptrtoint ptr %i.da to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %.06891, i64 160
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !100
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 31
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, -8
  %i.dm = ptrtoint ptr %i.di to i64
  %i.dn = sub i64 %i.dl, %i.dm
  store i32 1, ptr %i.da, align 8, !tbaa !102
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 88
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !77
  %i.dq = add i64 %i.dp, %i.dn                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !103
  %i.ds = getelementptr inbounds nuw i8, ptr %.06891, i64 152
  store i64 %i.dq, ptr %i.ds, align 8, !tbaa !104
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <4 x i16> <i16 -8192, i16 -8192, i16 16384, i16 16384>, ptr %i.dt, align 8, !tbaa !106
  br label %nk_push_scissor.exit

nk_push_scissor.exit:                             ; preds = %nk_create_panel.exit, %bb.t
  store ptr %.06891, ptr %i.a, align 8, !tbaa !415
  %i.du = tail call fastcc zeroext i1 @nk_panel_begin(ptr noundef nonnull %0, ptr noundef null, i32 noundef %6) ; 0 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cx, ptr noundef nonnull align 8 dereferenceable(64) %i.cw, i64 64, i1 false), !tbaa.struct !531
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !416 ; 3 uses
  %i.dw = load ptr, ptr %i.cj, align 8, !tbaa !416 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 456
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !505
  %i.dy = getelementptr inbounds nuw i8, ptr %.06891, i64 92
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !485
  %i.ea = getelementptr inbounds nuw i8, ptr %.06891, i64 96
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !486
  %.not7797 = icmp eq ptr %i.dv, null
  br i1 %.not7797, label %.loopexit, label %.lr.ph99

.lr.ph99:                                         ; preds = %nk_push_scissor.exit, %.lr.ph99
  %.098 = phi ptr [ %.0, %.lr.ph99 ], [ %i.dv, %nk_push_scissor.exit ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.098, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !488
  %i.ee = or i32 %i.ed, 4096
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !488
  %i.ef = getelementptr inbounds nuw i8, ptr %.098, i64 456
  %.0 = load ptr, ptr %i.ef, align 8, !tbaa !532  ; 2 uses
  %.not77 = icmp eq ptr %.0, null
  br i1 %.not77, label %.loopexit, label %.lr.ph99, !llvm.loop !1062

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph99, %nk_push_scissor.exit, %bb.a, %bb.b
  %.069 = phi i1 [ true, %nk_push_scissor.exit ], [ false, %bb.a ], [ false, %bb.b ], [ true, %.lr.ph99 ], [ false, %.lr.ph ]
  ret i1 %.069
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_contextual_item_text(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_contextual_close.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %nk_contextual_close.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %nk_contextual_close.exit, label %nk_widget_fitting.exit

nk_widget_fitting.exit:                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.g = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull readonly %0)
  switch i32 %i.g, label %bb.d [
    i32 0, label %nk_contextual_close.exit
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %nk_widget_fitting.exit
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not26 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not26, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit
  %i.l = phi ptr [ null, %nk_widget_fitting.exit ], [ %spec.select, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !414
  %i.p = load <2 x float>, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.p, <2 x float> %i.r, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %i.f, ptr noundef %i.l, ptr noundef %i.o)
  br i1 %i.s, label %bb.f, label %nk_contextual_close.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %nk_contextual_close.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !416
  %.not6.i = icmp eq ptr %i.v, null
  br i1 %.not6.i, label %nk_contextual_close.exit, label %nk_popup_close.exit.i

nk_popup_close.exit.i:                            ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !235
  %i.y = or i32 %i.x, 8192
  store i32 %i.y, ptr %i.w, align 8, !tbaa !235
  br label %nk_contextual_close.exit

nk_contextual_close.exit:                         ; preds = %nk_popup_close.exit.i, %bb.g, %bb.f, %bb.e, %nk_widget_fitting.exit, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.e ], [ false, %nk_widget_fitting.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.g ], [ true, %nk_popup_close.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @nk_widget_fitting(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, <2 x float> %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @nk_widget(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.e, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @nk_do_button_text(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, <2 x float> %2, <2 x float> %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef nonnull readonly captures(none) %8, ptr nofree noundef readonly captures(address_is_null) %9, ptr noundef %10) unnamed_addr #20 {
bb.a:
  %11 = alloca %struct.nk_text, align 8           ; 6 uses
  %12 = alloca %struct.nk_rect, align 16          ; 2 uses
  %13 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %13, ptr %12, align 16
  %i.a = icmp ne ptr %10, null
  %i.b = icmp ne ptr %4, null
  %or.cond5 = and i1 %i.b, %i.a
  br i1 %or.cond5, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 156
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 164
  %i.g = load <2 x float>, ptr %i.c, align 8, !tbaa !54 ; 3 uses
  %i.h = load float, ptr %i.f, align 4, !tbaa !533
  %i.i = load float, ptr %i.d, align 8, !tbaa !534 ; 3 uses
  %i.j = load float, ptr %i.e, align 4, !tbaa !398
  %i.k = insertelement <2 x float> %i.g, float %i.h, i64 1
  %i.l = fadd <2 x float> %2, %i.k
  %i.m = insertelement <2 x float> poison, float %i.i, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fadd <2 x float> %i.l, %i.n
  %i.p = insertelement <2 x float> poison, float %i.j, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = fadd <2 x float> %i.o, %i.q
  %i.s = insertelement <2 x float> %i.g, float %i.i, i64 1
  %i.t = insertelement <2 x float> %i.g, float %i.i, i64 0
  %i.u = fadd <2 x float> %i.s, %i.t
  %i.v = fadd <2 x float> %i.u, %i.q
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float -2.000000e+00), <2 x float> %3)
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !54 ; 2 uses
  %i.z = fsub <2 x float> %2, %i.y
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> splat (float 2.000000e+00), <2 x float> %3)
  %i.ab = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %0, <2 x float> %i.z, <2 x float> %i.aa, ptr noundef readonly %9, i32 noundef %7) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 200
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !535 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.ad(ptr noundef nonnull %1, ptr %i.af) #50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = load i32, ptr %0, align 4, !tbaa !55    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  %i.ah = call fastcc ptr @nk_draw_button(ptr noundef nonnull %1, ptr noundef nonnull readonly %12, i32 noundef %i.ag, ptr noundef nonnull readonly %8) ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !413
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 128
  %.sink.in.i = select i1 %i.aj, ptr %i.ak, ptr %i.al
  %.sink.i = load i32, ptr %.sink.in.i, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.sink.i, ptr %i.am, align 8, !tbaa !56
  %i.an = and i32 %i.ag, 16
  %.not.i = icmp eq i32 %i.an, 0
  %i.ao = and i32 %i.ag, 32
  %.not19.i = icmp eq i32 %i.ao, 0
  %. = select i1 %.not19.i, i64 132, i64 140
  %.sink = select i1 %.not.i, i64 %., i64 136
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 %.sink
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !56 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 148
  %i.as = load float, ptr %i.ar, align 4, !tbaa !536 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %i.aq, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %i.aq, 16 ; 2 uses
  %i.at = fcmp oeq float %i.as, 1.000000e+00
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.aq to i8
  br label %nk_draw_button_text.exit

bb.f:                                             ; preds = %bb.d
  %i.au = and i32 %i.aq, 255
  %i.av = uitofp nneg i32 %i.au to float
  %i.aw = fmul float %i.as, %i.av
  %i.ax = fptoui float %i.aw to i8
  %i.ay = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = fmul float %i.as, %i.az
  %i.bb = fptoui float %i.ba to i8
  %i.bc = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.bd = uitofp nneg i32 %i.bc to float
  %i.be = fmul float %i.as, %i.bd
  %i.bf = fptoui float %i.be to i8
  br label %nk_draw_button_text.exit

nk_draw_button_text.exit:                         ; preds = %bb.e, %bb.f
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.e ], [ %i.bb, %bb.f ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.e ], [ %i.ax, %bb.f ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.e ], [ %i.bf, %bb.f ]
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 12
  %.sroa.9.0.extract.shift.i.i = and i32 %i.aq, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  store i32 %.sroa.011.0.insert.insert.i.i, ptr %i.bg, align 4, !tbaa !56
  store <2 x float> zeroinitializer, ptr %11, align 8, !tbaa !54
  call fastcc void @nk_widget_text(ptr noundef nonnull %1, <2 x float> %i.r, <2 x float> %i.w, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %11, i32 noundef %6, ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 208
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !537 ; 2 uses
  %.not36 = icmp eq ptr %i.bi, null
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %nk_draw_button_text.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bi(ptr noundef nonnull %1, ptr %i.bk) #50
  br label %bb.h

bb.h:                                             ; preds = %nk_draw_button_text.exit, %bb.g, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.ab, %bb.g ], [ %i.ab, %nk_draw_button_text.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_contextual_close(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.d, label %nk_popup_close.exit

nk_popup_close.exit:                              ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !235
  %i.g = or i32 %i.f, 8192
  store i32 %i.g, ptr %i.e, align 8, !tbaa !235
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c, %nk_popup_close.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_contextual_item_label(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 5 uses
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i3 = icmp eq i8 %i.a, 0
  br i1 %.not4.i3, label %nk_strlen.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader6 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_contextual_item_text.exit, label %bb.b

bb.b:                                             ; preds = %nk_strlen.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !415  ; 3 uses
  %.not23.i = icmp eq ptr %i.e, null
  br i1 %.not23.i, label %nk_contextual_item_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !416
  %.not24.i = icmp eq ptr %i.g, null
  br i1 %.not24.i, label %nk_contextual_item_text.exit, label %nk_widget_fitting.exit.i

nk_widget_fitting.exit.i:                         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.j = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef nonnull readonly %0)
  switch i32 %i.j, label %bb.d [
    i32 0, label %nk_contextual_item_text.exit
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %nk_widget_fitting.exit.i
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !416
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !488
  %i.n = and i32 %i.m, 4096
  %.not26.i = icmp eq i32 %i.n, 0
  %spec.select.i = select i1 %.not26.i, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit.i
  %i.o = phi ptr [ null, %nk_widget_fitting.exit.i ], [ %spec.select.i, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !414
  %i.s = load <2 x float>, ptr %3, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load <2 x float>, ptr %i.t, align 8
  %i.v = tail call fastcc zeroext i1 @nk_do_button_text(ptr noundef %i.p, ptr noundef %i.q, <2 x float> %i.s, <2 x float> %i.u, ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef %2, i32 noundef 0, ptr noundef %i.i, ptr noundef %i.o, ptr noundef %i.r)
  br i1 %i.v, label %bb.f, label %nk_contextual_item_text.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !415  ; 3 uses
  %.not5.i.i = icmp eq ptr %i.w, null
  br i1 %.not5.i.i, label %nk_contextual_item_text.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !416
  %.not6.i.i = icmp eq ptr %i.y, null
  br i1 %.not6.i.i, label %nk_contextual_item_text.exit, label %nk_popup_close.exit.i.i

nk_popup_close.exit.i.i:                          ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !235
  %i.ab = or i32 %i.aa, 8192
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !235
  br label %nk_contextual_item_text.exit

nk_contextual_item_text.exit:                     ; preds = %nk_strlen.exit, %bb.b, %bb.c, %nk_widget_fitting.exit.i, %bb.e, %bb.f, %bb.g, %nk_popup_close.exit.i.i
  %.0.i = phi i1 [ false, %bb.e ], [ false, %nk_widget_fitting.exit.i ], [ false, %nk_strlen.exit ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.g ], [ true, %nk_popup_close.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_contextual_item_image_text(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_contextual_close.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %nk_contextual_close.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %nk_contextual_close.exit, label %nk_widget_fitting.exit

nk_widget_fitting.exit:                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.g = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull readonly %0)
  switch i32 %i.g, label %bb.d [
    i32 0, label %nk_contextual_close.exit
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %nk_widget_fitting.exit
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not26 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not26, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit
  %i.l = phi ptr [ null, %nk_widget_fitting.exit ], [ %spec.select, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !414
  %i.p = load <2 x float>, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text_image(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.p, <2 x float> %i.r, ptr noundef nonnull byval(%struct.nk_image) align 8 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef nonnull %i.f, ptr noundef %i.o, ptr noundef %i.l)
  br i1 %i.s, label %bb.f, label %nk_contextual_close.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %nk_contextual_close.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !416
  %.not6.i = icmp eq ptr %i.v, null
  br i1 %.not6.i, label %nk_contextual_close.exit, label %nk_popup_close.exit.i

nk_popup_close.exit.i:                            ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !235
  %i.y = or i32 %i.x, 8192
  store i32 %i.y, ptr %i.w, align 8, !tbaa !235
  br label %nk_contextual_close.exit

nk_contextual_close.exit:                         ; preds = %nk_popup_close.exit.i, %bb.g, %bb.f, %bb.e, %nk_widget_fitting.exit, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.e ], [ false, %nk_widget_fitting.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.g ], [ true, %nk_popup_close.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @nk_do_button_text_image(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, <2 x float> %2, <2 x float> %3, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9, ptr noundef %10, ptr nofree noundef readonly captures(address_is_null) %11) unnamed_addr #20 {
bb.a:
  %12 = alloca %struct.nk_text, align 8           ; 6 uses
  %13 = alloca %struct.nk_rect, align 16          ; 2 uses
  %14 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %14, ptr %13, align 16
  %i.a = icmp ne ptr %10, null
  %i.b = icmp ne ptr %9, null
  %or.cond3 = and i1 %i.b, %i.a
  %i.c = icmp ne ptr %5, null
  %or.cond5 = and i1 %i.c, %or.cond3
  %i.d = extractelement <2 x float> %2, i64 0
  br i1 %or.cond5, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = extractelement <2 x float> %3, i64 1
  %i.f = extractelement <2 x float> %2, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 156
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 164 ; 2 uses
  %i.k = load <2 x float>, ptr %i.g, align 8, !tbaa !54 ; 3 uses
  %i.l = load float, ptr %i.j, align 4, !tbaa !533
  %i.m = load float, ptr %i.h, align 8, !tbaa !534 ; 3 uses
  %i.n = load float, ptr %i.i, align 4, !tbaa !398
  %i.o = insertelement <2 x float> %i.k, float %i.l, i64 1
  %i.p = fadd <2 x float> %2, %i.o
  %i.q = insertelement <2 x float> poison, float %i.m, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fadd <2 x float> %i.p, %i.r
  %i.t = insertelement <2 x float> poison, float %i.n, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.v = fadd <2 x float> %i.s, %i.u
  %i.w = insertelement <2 x float> %i.k, float %i.m, i64 1
  %i.x = insertelement <2 x float> %i.k, float %i.m, i64 0
  %i.y = fadd <2 x float> %i.w, %i.x
  %i.z = fadd <2 x float> %i.y, %i.u
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> splat (float -2.000000e+00), <2 x float> %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.ac = load <2 x float>, ptr %i.ab, align 8, !tbaa !54 ; 2 uses
  %i.ad = fsub <2 x float> %2, %i.ac
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> splat (float 2.000000e+00), <2 x float> %3)
  %i.af = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %0, <2 x float> %i.ad, <2 x float> %i.ae, ptr noundef readonly %11, i32 noundef %8) ; 2 uses
  %i.ag = load float, ptr %i.j, align 4, !tbaa !533 ; 2 uses
  %i.ah = fadd float %i.f, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ag, float -2.000000e+00, float %i.e) ; 2 uses
  %i.aj = and i32 %7, 1
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop = fadd <2 x float> %2, %3
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.al = load float, ptr %i.g, align 8, !tbaa !538
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float 2.000000e+00, float %i.ai)
  %i.an = fsub float %i.ak, %i.am                 ; 2 uses
  %i.ao = fcmp olt float %i.an, 0.000000e+00
  %i.ap = select i1 %i.ao, float 0.000000e+00, float %i.an
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aq = load float, ptr %i.g, align 8, !tbaa !538
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 2.000000e+00, float %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi float [ %i.ar, %bb.d ], [ %i.ap, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.at = load <2 x float>, ptr %i.as, align 8, !tbaa !54 ; 2 uses
  %i.au = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.ah, i64 1
  %i.aw = fadd <2 x float> %i.av, %i.at
  %i.ax = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> splat (float -2.000000e+00), <2 x float> %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !535 ; 2 uses
  %.not44 = icmp eq ptr %i.bb, null
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bb(ptr noundef nonnull %1, ptr %i.bd) #50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.be = load i32, ptr %0, align 4, !tbaa !55    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #50
  %i.bf = call fastcc ptr @nk_draw_button(ptr noundef nonnull %1, ptr noundef nonnull readonly %13, i32 noundef %i.be, ptr noundef nonnull readonly %9) ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !413
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 128
  %.sink.in.i = select i1 %i.bh, ptr %i.bi, ptr %i.bj
  %.sink.i = load i32, ptr %.sink.in.i, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sink.i, ptr %i.bk, align 8, !tbaa !56
  %i.bl = and i32 %i.be, 16
  %.not.i = icmp eq i32 %i.bl, 0
  %i.bm = and i32 %i.be, 32
  %.not23.i = icmp eq i32 %i.bm, 0
  %. = select i1 %.not23.i, i64 132, i64 140
  %.sink = select i1 %.not.i, i64 %., i64 136
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 %.sink
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !56 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 148
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !536 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %i.bo, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %i.bo, 16 ; 2 uses
  %i.br = fcmp oeq float %i.bq, 1.000000e+00
  br i1 %i.br, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.bo to i8
  br label %nk_draw_button_text_image.exit

bb.i:                                             ; preds = %bb.g
  %i.bs = and i32 %i.bo, 255
  %i.bt = uitofp nneg i32 %i.bs to float
  %i.bu = fmul float %i.bq, %i.bt
  %i.bv = fptoui float %i.bu to i8
  %i.bw = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.bx = uitofp nneg i32 %i.bw to float
  %i.by = fmul float %i.bq, %i.bx
  %i.bz = fptoui float %i.by to i8
  %i.ca = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.cb = uitofp nneg i32 %i.ca to float
  %i.cc = fmul float %i.bq, %i.cb
  %i.cd = fptoui float %i.cc to i8
  br label %nk_draw_button_text_image.exit

nk_draw_button_text_image.exit:                   ; preds = %bb.h, %bb.i
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.h ], [ %i.bz, %bb.i ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.h ], [ %i.bv, %bb.i ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.h ], [ %i.cd, %bb.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 12
  %.sroa.9.0.extract.shift.i.i = and i32 %i.bo, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  store i32 %.sroa.011.0.insert.insert.i.i, ptr %i.ce, align 4, !tbaa !56
  store <2 x float> zeroinitializer, ptr %12, align 8, !tbaa !54
  call fastcc void @nk_widget_text(ptr noundef nonnull %1, <2 x float> %i.v, <2 x float> %i.aa, ptr noundef nonnull %5, i32 noundef %6, ptr noundef %12, i32 noundef 18, ptr noundef nonnull %10)
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 124
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !399 ; 2 uses
  %i.ch = fcmp oeq float %i.cg, 1.000000e+00
  %i.ci = fmul float %i.cg, 2.550000e+02
  %i.cj = fptoui float %i.ci to i8
  %i.ck = zext i8 %i.cj to i32
  %i.cl = mul nuw nsw i32 %i.ck, 65793
  %i.cm = or disjoint i32 %i.cl, -16777216
  %.sroa.011.0.insert.insert.i34.i = select i1 %i.ch, i32 -1, i32 %i.cm
  call void @nk_draw_image(ptr noundef nonnull %1, <2 x float> %i.aw, <2 x float> %i.az, ptr noundef nonnull readonly %4, i32 %.sroa.011.0.insert.insert.i34.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #50
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !537 ; 2 uses
  %.not45 = icmp eq ptr %i.co, null
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %nk_draw_button_text_image.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.co(ptr noundef nonnull %1, ptr %i.cq) #50
  br label %bb.k

bb.k:                                             ; preds = %nk_draw_button_text_image.exit, %bb.j, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.af, %bb.j ], [ %i.af, %nk_draw_button_text_image.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_contextual_item_image_label(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  %.not5.i = icmp eq ptr %2, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %2, align 1, !tbaa !56
  %.not4.i3 = icmp eq i8 %i.a, 0
  br i1 %.not4.i3, label %nk_strlen.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %2, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader6 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_contextual_item_image_text.exit, label %bb.b

bb.b:                                             ; preds = %nk_strlen.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !415  ; 3 uses
  %.not23.i = icmp eq ptr %i.e, null
  br i1 %.not23.i, label %nk_contextual_item_image_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !416
  %.not24.i = icmp eq ptr %i.g, null
  br i1 %.not24.i, label %nk_contextual_item_image_text.exit, label %nk_widget_fitting.exit.i

nk_widget_fitting.exit.i:                         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.j = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull readonly %0)
  switch i32 %i.j, label %bb.d [
    i32 0, label %nk_contextual_item_image_text.exit
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %nk_widget_fitting.exit.i
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !416
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !488
  %i.n = and i32 %i.m, 4096
  %.not26.i = icmp eq i32 %i.n, 0
  %spec.select.i = select i1 %.not26.i, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit.i
  %i.o = phi ptr [ null, %nk_widget_fitting.exit.i ], [ %spec.select.i, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !414
  %i.s = load <2 x float>, ptr %4, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load <2 x float>, ptr %i.t, align 8
  %i.v = tail call fastcc zeroext i1 @nk_do_button_text_image(ptr noundef %i.p, ptr noundef %i.q, <2 x float> %i.s, <2 x float> %i.u, ptr noundef nonnull byval(%struct.nk_image) align 8 %1, ptr noundef %2, i32 noundef %.0.lcssa.i, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %i.i, ptr noundef %i.r, ptr noundef %i.o)
  br i1 %i.v, label %bb.f, label %nk_contextual_item_image_text.exit

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !415  ; 3 uses
  %.not5.i.i = icmp eq ptr %i.w, null
  br i1 %.not5.i.i, label %nk_contextual_item_image_text.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !416
  %.not6.i.i = icmp eq ptr %i.y, null
  br i1 %.not6.i.i, label %nk_contextual_item_image_text.exit, label %nk_popup_close.exit.i.i

nk_popup_close.exit.i.i:                          ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !235
  %i.ab = or i32 %i.aa, 8192
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !235
  br label %nk_contextual_item_image_text.exit

nk_contextual_item_image_text.exit:               ; preds = %nk_strlen.exit, %bb.b, %bb.c, %nk_widget_fitting.exit.i, %bb.e, %bb.f, %bb.g, %nk_popup_close.exit.i.i
  %.0.i = phi i1 [ false, %bb.e ], [ false, %nk_widget_fitting.exit.i ], [ false, %nk_strlen.exit ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.g ], [ true, %nk_popup_close.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.0.i
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_contextual_item_symbol_text(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_contextual_close.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not24 = icmp eq ptr %i.b, null
  br i1 %.not24, label %nk_contextual_close.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not25 = icmp eq ptr %i.d, null
  br i1 %.not25, label %nk_contextual_close.exit, label %nk_widget_fitting.exit

nk_widget_fitting.exit:                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.g = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull readonly %0)
  switch i32 %i.g, label %bb.d [
    i32 0, label %nk_contextual_close.exit
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %nk_widget_fitting.exit
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not27 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not27, ptr %0, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %nk_widget_fitting.exit
  %i.l = phi ptr [ null, %nk_widget_fitting.exit ], [ %spec.select, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !414
  %i.p = load <2 x float>, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text_symbol(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.p, <2 x float> %i.r, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, ptr noundef nonnull %i.f, ptr noundef %i.o, ptr noundef %i.l)
  br i1 %i.s, label %bb.f, label %nk_contextual_close.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not5.i = icmp eq ptr %i.t, null
  br i1 %.not5.i, label %nk_contextual_close.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !416
  %.not6.i = icmp eq ptr %i.v, null
  br i1 %.not6.i, label %nk_contextual_close.exit, label %nk_popup_close.exit.i

nk_popup_close.exit.i:                            ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !235
  %i.y = or i32 %i.x, 8192
  store i32 %i.y, ptr %i.w, align 8, !tbaa !235
  br label %nk_contextual_close.exit

nk_contextual_close.exit:                         ; preds = %nk_popup_close.exit.i, %bb.g, %bb.f, %bb.e, %nk_widget_fitting.exit, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.e ], [ false, %nk_widget_fitting.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.f ], [ true, %bb.g ], [ true, %nk_popup_close.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @nk_do_button_text_symbol(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, <2 x float> %2, <2 x float> %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9, ptr noundef %10, ptr nofree noundef readonly captures(address_is_null) %11) unnamed_addr #20 {
bb.a:
  %12 = alloca %struct.nk_text, align 8           ; 6 uses
  %13 = alloca %struct.nk_rect, align 16          ; 2 uses
  %14 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %14, ptr %13, align 16
  %i.a = icmp ne ptr %9, null
  %i.b = icmp ne ptr %10, null
  %or.cond3 = and i1 %i.a, %i.b
  br i1 %or.cond3, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 160 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 156
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 164
  %i.g = load <2 x float>, ptr %i.c, align 8, !tbaa !54 ; 3 uses
  %i.h = load float, ptr %i.f, align 4, !tbaa !533
  %i.i = load float, ptr %i.d, align 8, !tbaa !534 ; 3 uses
  %i.j = load float, ptr %i.e, align 4, !tbaa !398
  %i.k = insertelement <2 x float> %i.g, float %i.h, i64 1
  %i.l = fadd <2 x float> %2, %i.k
  %i.m = insertelement <2 x float> poison, float %i.i, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fadd <2 x float> %i.l, %i.n
  %i.p = insertelement <2 x float> poison, float %i.j, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = fadd <2 x float> %i.o, %i.q              ; 4 uses
  %i.s = insertelement <2 x float> %i.g, float %i.i, i64 1
  %i.t = insertelement <2 x float> %i.g, float %i.i, i64 0
  %i.u = fadd <2 x float> %i.s, %i.t
  %i.v = fadd <2 x float> %i.u, %i.q
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float -2.000000e+00), <2 x float> %3) ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !54 ; 2 uses
  %i.z = fsub <2 x float> %2, %i.y
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> splat (float 2.000000e+00), <2 x float> %3)
  %i.ab = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %0, <2 x float> %i.z, <2 x float> %i.aa, ptr noundef readonly %11, i32 noundef %8) ; 2 uses
  %i.ac = extractelement <2 x float> %i.w, i64 1
  %i.ad = fmul float %i.ac, 5.000000e-01
  %i.ae = extractelement <2 x float> %i.r, i64 1
  %i.af = fadd float %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !140 ; 3 uses
  %i.ai = fmul float %i.ah, 5.000000e-01
  %i.aj = fsub float %i.af, %i.ai
  %.sroa.6.8.vec.insert = insertelement <2 x float> poison, float %i.ah, i64 0
  %.sroa.6.12.vec.insert = shufflevector <2 x float> %.sroa.6.8.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = and i32 %7, 1
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %foldExtExtBinop = fadd <2 x float> %i.r, %i.w
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.am = load float, ptr %i.c, align 8, !tbaa !538
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float 2.000000e+00, float %i.ah)
  %i.ao = fsub float %i.al, %i.an                 ; 2 uses
  %i.ap = fcmp olt float %i.ao, 0.000000e+00
  %i.aq = select i1 %i.ap, float 0.000000e+00, float %i.ao
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ar = load float, ptr %i.c, align 8, !tbaa !538
  %i.as = extractelement <2 x float> %i.r, i64 0
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ar, float 2.000000e+00, float %i.as)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi float [ %i.at, %bb.d ], [ %i.aq, %bb.c ]
  %i.au = insertelement <2 x float> poison, float %storemerge, i64 0
  %.sroa.051.0.vec.insert = insertelement <2 x float> %i.au, float %i.aj, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !535 ; 2 uses
  %.not38 = icmp eq ptr %i.aw, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.aw(ptr noundef nonnull %1, ptr %i.ay) #50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.az = load i32, ptr %0, align 4, !tbaa !55    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #50
  %i.ba = call fastcc ptr @nk_draw_button(ptr noundef nonnull %1, ptr noundef nonnull readonly %13, i32 noundef %i.az, ptr noundef nonnull readonly %9) ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !413
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 2 uses
  %.sink.in.i = select i1 %i.bc, ptr %i.bd, ptr %i.be
  %.sink.i = load i32, ptr %.sink.in.i, align 8, !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.sink.i, ptr %i.bf, align 8, !tbaa !56
  %i.bg = and i32 %i.az, 16
  %.not.i = icmp eq i32 %i.bg, 0
  %i.bh = and i32 %i.az, 32
  %.not32.i = icmp eq i32 %i.bh, 0
  %. = select i1 %.not32.i, i64 132, i64 140
  %.sink = select i1 %.not.i, i64 %., i64 136
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 %.sink
  %.sroa.04.0.i = load i32, ptr %i.bi, align 4, !tbaa !56 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 148
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !536 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.bl = fcmp oeq float %i.bk, 1.000000e+00
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.04.0.i to i8
  br label %nk_draw_button_text_symbol.exit

bb.i:                                             ; preds = %bb.g
  %i.bm = and i32 %.sroa.04.0.i, 255
  %i.bn = uitofp nneg i32 %i.bm to float
  %i.bo = fmul float %i.bk, %i.bn
  %i.bp = fptoui float %i.bo to i8
  %i.bq = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.br = uitofp nneg i32 %i.bq to float
  %i.bs = fmul float %i.bk, %i.br
  %i.bt = fptoui float %i.bs to i8
  %i.bu = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.bv = uitofp nneg i32 %i.bu to float
  %i.bw = fmul float %i.bk, %i.bv
  %i.bx = fptoui float %i.bw to i8
  br label %nk_draw_button_text_symbol.exit

nk_draw_button_text_symbol.exit:                  ; preds = %bb.h, %bb.i
  %.sroa.512.0.i12.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.h ], [ %i.bx, %bb.i ]
  %.sroa.011.0.i10.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.h ], [ %i.bp, %bb.i ]
  %.sroa.3.0.i8.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.h ], [ %i.bt, %bb.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 12
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i10.i to i32
  %.sroa.9.0.extract.shift.i.i = and i32 %.sroa.04.0.i, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i12.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i8.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %i.bz = or disjoint i32 %.sroa.3.0.insert.shift.i.i, %.sroa.512.0.insert.shift.i.i
  %i.ca = or disjoint i32 %i.bz, %.sroa.011.0.insert.ext.i.i
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %i.ca, %.sroa.9.0.extract.shift.i.i ; 2 uses
  store i32 %.sroa.011.0.insert.insert.i.i, ptr %i.by, align 4, !tbaa !56
  store <2 x float> zeroinitializer, ptr %12, align 8, !tbaa !54
  %i.cb = load i32, ptr %i.be, align 8
  tail call fastcc void @nk_draw_symbol(ptr noundef nonnull %1, i32 noundef %4, <2 x float> %.sroa.051.0.vec.insert, <2 x float> %.sroa.6.12.vec.insert, i32 %i.cb, i32 %.sroa.011.0.insert.insert.i.i, float noundef 0.000000e+00, ptr noundef nonnull %10)
  call fastcc void @nk_widget_text(ptr noundef nonnull %1, <2 x float> %i.r, <2 x float> %i.w, ptr noundef %5, i32 noundef %6, ptr noundef %12, i32 noundef 18, ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #50
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 208
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !537 ; 2 uses
  %.not39 = icmp eq ptr %i.cd, null
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %nk_draw_button_text_symbol.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cd(ptr noundef nonnull %1, ptr %i.cf) #50
  br label %bb.k

bb.k:                                             ; preds = %nk_draw_button_text_symbol.exit, %bb.j, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.ab, %bb.j ], [ %i.ab, %nk_draw_button_text_symbol.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_contextual_item_symbol_label(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  %.not5.i = icmp eq ptr %2, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %2, align 1, !tbaa !56
  %.not4.i4 = icmp eq i8 %i.a, 0
  br i1 %.not4.i4, label %nk_strlen.exit, label %.lr.ph.i.preheader7

.lr.ph.i.preheader7:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %2, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader7, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader7 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_contextual_item_symbol_text.exit, label %bb.b

bb.b:                                             ; preds = %nk_strlen.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !415  ; 3 uses
  %.not24.i = icmp eq ptr %i.e, null
  br i1 %.not24.i, label %nk_contextual_item_symbol_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !416
  %.not25.i = icmp eq ptr %i.g, null
  br i1 %.not25.i, label %nk_contextual_item_symbol_text.exit, label %nk_widget_fitting.exit.i

nk_widget_fitting.exit.i:                         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
end_hunk_4
begin_hunk_5_@nk_menubar_end:bb.a
  store float %i.ai, ptr %i.i, align 4, !tbaa !503
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store float %i.w, ptr %i.ak, align 8, !tbaa !508
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store float %i.z, ptr %i.al, align 8, !tbaa !509
  %i.am = load <2 x float>, ptr %i.aj, align 4    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.ao = load <2 x float>, ptr %i.an, align 4    ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aq = shufflevector <2 x float> %i.am, <2 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.aq, ptr %i.ap, align 8, !tbaa !54
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.as = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.ar, i32 noundef 0, i64 noundef 24, i64 noundef 8) ; 7 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %nk_push_scissor.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !99  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !69
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !100
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 31
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -8
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  store i32 1, ptr %i.as, align 8, !tbaa !102
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !77
  %i.bi = add i64 %i.bh, %i.bf                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !103
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !104
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bm = fcmp ogt <2 x float> %i.ao, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x float> %i.ao, <2 x float> zeroinitializer
  %i.bo = shufflevector <2 x float> %i.am, <2 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bp = fptosi <4 x float> %i.bo to <4 x i16>
  %i.bq = fptoui <4 x float> %i.bo to <4 x i16>
  %i.br = shufflevector <4 x i16> %i.bp, <4 x i16> %i.bq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i16> %i.br, ptr %i.bl, align 8, !tbaa !106
  br label %nk_push_scissor.exit

nk_push_scissor.exit:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_text(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, <2 x float> %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_menu_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 9 uses
  %.not27 = icmp eq ptr %i.b, null
  br i1 %.not27, label %nk_menu_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not28 = icmp eq ptr %i.d, null
  br i1 %.not28, label %nk_menu_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %nk_menu_begin.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !235
  %i.h = and i32 %i.g, 4096
  %.not30 = icmp eq i32 %i.h, 0
  %spec.select = select i1 %.not30, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !426
  %i.o = load <2 x float>, ptr %5, align 8        ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8      ; 3 uses
  %i.r = tail call fastcc zeroext i1 @nk_do_button_text(ptr noundef %i.j, ptr noundef %i.k, <2 x float> %i.o, <2 x float> %i.q, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef %i.m, ptr noundef %i.i, ptr noundef %i.n)
  %.not5.i.i = icmp eq ptr %1, null
  br i1 %.not5.i.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.s = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i42.i = icmp eq i8 %i.s, 0
  br i1 %.not4.i42.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader45.i

.lr.ph.i.preheader45.i:                           ; preds = %.lr.ph.i.preheader.i
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.t = trunc i64 %strlen.i to i32
  %i.u = add i32 %i.t, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader45.i, %.lr.ph.i.preheader.i, %bb.f
  %.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ 0, %.lr.ph.i.preheader.i ], [ %i.u, %.lr.ph.i.preheader45.i ]
  %i.v = tail call i32 @nk_murmur_hash(ptr noundef readonly %1, i32 noundef %.0.lcssa.i.i, i32 noundef 64) ; 2 uses
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %nk_menu_begin.exit, label %bb.g

bb.g:                                             ; preds = %nk_strlen.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !416
  %.not39.i = icmp eq ptr %i.y, null
  br i1 %.not39.i, label %nk_menu_begin.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop = fadd <2 x float> %i.o, %i.q
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %i.o, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !464
  %i.ab = icmp ne ptr %i.aa, null                 ; 3 uses
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !529
  %i.ae = icmp eq i32 %i.ad, %i.v
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !528
  %i.ah = icmp eq i32 %i.ag, 64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ai = phi i1 [ false, %bb.i ], [ false, %bb.h ], [ %i.ah, %bb.j ]
  %i.aj = xor i1 %i.ab, true
  %or.cond40.i = select i1 %i.aj, i1 true, i1 %i.ai
  %or.cond9.i = or i1 %i.r, %i.ab
  %or.cond41.i = and i1 %or.cond9.i, %or.cond40.i
  br i1 %or.cond41.i, label %bb.l, label %nk_menu_begin.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 32, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %4, <2 x float> %i.o, <2 x float> %i.q, i32 noundef 64)
  br i1 %i.ak, label %bb.m, label %nk_menu_begin.exit

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 64, ptr %i.al, align 8, !tbaa !528
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.v, ptr %i.am, align 8, !tbaa !529
  br label %nk_menu_begin.exit

nk_menu_begin.exit:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.g, %nk_strlen.exit.i, %bb.d, %bb.a, %bb.b, %bb.c
  %.023 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.m ], [ false, %bb.k ], [ false, %nk_strlen.exit.i ], [ false, %bb.g ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i1 %.023
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_label(ptr noundef %0, ptr noundef %1, i32 noundef %2, <2 x float> %3) local_unnamed_addr #20 {
bb.a:
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i3 = icmp eq i8 %i.a, 0
  br i1 %.not4.i3, label %nk_strlen.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader6 ]
  %i.d = tail call zeroext i1 @nk_menu_begin_text(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef %2, <2 x float> %3)
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_image(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %2, <2 x float> %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 16           ; 4 uses
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_menu_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 8 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %nk_menu_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %nk_menu_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %nk_menu_begin.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !488
  %i.i = and i32 %i.h, 4096
  %.not26 = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not26, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.n = load <2 x float>, ptr %5, align 8        ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load <2 x float>, ptr %i.o, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %6 = shufflevector <2 x float> %i.n, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %4, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !54 ; 2 uses
  %i.w = fsub <2 x float> %i.n, %i.v
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float 2.000000e+00), <2 x float> %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.z = load <2 x float>, ptr %i.q, align 8, !tbaa !54 ; 3 uses
  %i.aa = load float, ptr %i.t, align 4, !tbaa !533
  %i.ab = load float, ptr %i.r, align 8, !tbaa !534 ; 3 uses
  %i.ac = load float, ptr %i.s, align 4, !tbaa !398
  %i.ad = insertelement <2 x float> %i.z, float %i.aa, i64 1
  %i.ae = fadd <2 x float> %i.n, %i.ad
  %i.af = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fadd <2 x float> %i.ae, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fadd <2 x float> %i.ah, %i.aj
  %i.al = insertelement <2 x float> %i.z, float %i.ab, i64 1
  %i.am = insertelement <2 x float> %i.z, float %i.ab, i64 0
  %i.an = fadd <2 x float> %i.al, %i.am
  %i.ao = fadd <2 x float> %i.an, %i.aj
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> splat (float -2.000000e+00), <2 x float> %i.p)
  %i.aq = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.k, <2 x float> %i.w, <2 x float> %i.x, ptr noundef readonly %i.j, i32 noundef 0)
  %i.ar = load <2 x float>, ptr %i.y, align 8, !tbaa !54 ; 2 uses
  %i.as = fadd <2 x float> %i.ak, %i.ar
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> splat (float -2.000000e+00), <2 x float> %i.ap)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !535 ; 2 uses
  %.not32.i = icmp eq ptr %i.av, null
  br i1 %.not32.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.av(ptr noundef nonnull %i.l, ptr %i.ax) #50, !inline_history !39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ay = load i32, ptr %i.k, align 8, !tbaa !55
  %i.az = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.l, ptr noundef nonnull readonly %4, i32 noundef %i.ay, ptr noundef nonnull readonly %i.m) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !399 ; 2 uses
  %i.bc = fcmp oeq float %i.bb, 1.000000e+00
  %i.bd = fmul float %i.bb, 2.550000e+02
  %i.be = fptoui float %i.bd to i8
  %i.bf = zext i8 %i.be to i32
  %i.bg = mul nuw nsw i32 %i.bf, 65793
  %i.bh = or disjoint i32 %i.bg, -16777216
  %.sroa.011.0.insert.insert.i.i.i = select i1 %i.bc, i32 -1, i32 %i.bh
  call void @nk_draw_image(ptr noundef nonnull %i.l, <2 x float> %i.as, <2 x float> %i.at, ptr noundef nonnull readonly align 8 %2, i32 %.sroa.011.0.insert.insert.i.i.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !537 ; 2 uses
  %.not33.i = icmp eq ptr %i.bj, null
  br i1 %.not33.i, label %nk_do_button_image.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bj(ptr noundef nonnull %i.l, ptr %i.bl) #50, !inline_history !39
  br label %nk_do_button_image.exit

nk_do_button_image.exit:                          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not5.i.i = icmp eq ptr %1, null
  br i1 %.not5.i.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %nk_do_button_image.exit
  %i.bm = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i42.i = icmp eq i8 %i.bm, 0
  br i1 %.not4.i42.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader45.i

.lr.ph.i.preheader45.i:                           ; preds = %.lr.ph.i.preheader.i
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.bn = trunc i64 %strlen.i to i32
  %i.bo = add i32 %i.bn, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader45.i, %.lr.ph.i.preheader.i, %nk_do_button_image.exit
  %.0.lcssa.i.i = phi i32 [ 0, %nk_do_button_image.exit ], [ 0, %.lr.ph.i.preheader.i ], [ %i.bo, %.lr.ph.i.preheader45.i ]
  %i.bp = tail call i32 @nk_murmur_hash(ptr noundef readonly %1, i32 noundef %.0.lcssa.i.i, i32 noundef 64) ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !415 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %nk_menu_begin.exit, label %bb.j

bb.j:                                             ; preds = %nk_strlen.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 168
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !416
  %.not39.i = icmp eq ptr %i.bs, null
  br i1 %.not39.i, label %nk_menu_begin.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %foldExtExtBinop = fadd <2 x float> %i.n, %i.p
  %.sroa.0.4.vec.insert.i28 = shufflevector <2 x float> %i.n, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !464
  %i.bv = icmp ne ptr %i.bu, null                 ; 3 uses
  br i1 %i.bv, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !529
  %i.by = icmp eq i32 %i.bx, %i.bp
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !528
  %i.cb = icmp eq i32 %i.ca, 64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cc = phi i1 [ false, %bb.l ], [ false, %bb.k ], [ %i.cb, %bb.m ]
  %i.cd = xor i1 %i.bv, true
  %or.cond40.i = select i1 %i.cd, i1 true, i1 %i.cc
  %or.cond9.i = or i1 %i.aq, %i.bv
  %or.cond41.i = and i1 %or.cond9.i, %or.cond40.i
  br i1 %or.cond41.i, label %bb.o, label %nk_menu_begin.exit

bb.o:                                             ; preds = %bb.n
  %i.ce = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 32, <2 x float> %.sroa.0.4.vec.insert.i28, <2 x float> %3, <2 x float> %i.n, <2 x float> %i.p, i32 noundef 64)
  br i1 %i.ce, label %bb.p, label %nk_menu_begin.exit

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 64, ptr %i.cf, align 8, !tbaa !528
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.bp, ptr %i.cg, align 8, !tbaa !529
  br label %nk_menu_begin.exit

nk_menu_begin.exit:                               ; preds = %bb.p, %bb.o, %bb.n, %bb.j, %nk_strlen.exit.i, %bb.d, %bb.a, %bb.b, %bb.c
  %.019 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.p ], [ false, %bb.n ], [ false, %nk_strlen.exit.i ], [ false, %bb.j ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  ret i1 %.019
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_symbol(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, <2 x float> %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_menu_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 8 uses
  %.not25 = icmp eq ptr %i.b, null
  br i1 %.not25, label %nk_menu_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not26 = icmp eq ptr %i.d, null
  br i1 %.not26, label %nk_menu_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %nk_menu_begin.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !488
  %i.i = and i32 %i.h, 4096
  %.not28 = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not28, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !426
  %i.p = load <2 x float>, ptr %4, align 8        ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8      ; 3 uses
  %i.s = tail call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.k, ptr noundef nonnull %i.l, <2 x float> %i.p, <2 x float> %i.r, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %i.n, ptr noundef %i.j, ptr noundef %i.o)
  %.not5.i.i = icmp eq ptr %1, null
  br i1 %.not5.i.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.t = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i42.i = icmp eq i8 %i.t, 0
  br i1 %.not4.i42.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader45.i

.lr.ph.i.preheader45.i:                           ; preds = %.lr.ph.i.preheader.i
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.u = trunc i64 %strlen.i to i32
  %i.v = add i32 %i.u, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader45.i, %.lr.ph.i.preheader.i, %bb.f
  %.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ 0, %.lr.ph.i.preheader.i ], [ %i.v, %.lr.ph.i.preheader45.i ]
  %i.w = tail call i32 @nk_murmur_hash(ptr noundef readonly %1, i32 noundef %.0.lcssa.i.i, i32 noundef 64) ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %nk_menu_begin.exit, label %bb.g

bb.g:                                             ; preds = %nk_strlen.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !416
  %.not39.i = icmp eq ptr %i.z, null
  br i1 %.not39.i, label %nk_menu_begin.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop = fadd <2 x float> %i.p, %i.r
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %i.p, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !464
  %i.ac = icmp ne ptr %i.ab, null                 ; 3 uses
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !529
  %i.af = icmp eq i32 %i.ae, %i.w
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !528
  %i.ai = icmp eq i32 %i.ah, 64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.aj = phi i1 [ false, %bb.i ], [ false, %bb.h ], [ %i.ai, %bb.j ]
  %i.ak = xor i1 %i.ac, true
  %or.cond40.i = select i1 %i.ak, i1 true, i1 %i.aj
  %or.cond9.i = or i1 %i.s, %i.ac
  %or.cond41.i = and i1 %or.cond9.i, %or.cond40.i
  br i1 %or.cond41.i, label %bb.l, label %nk_menu_begin.exit

bb.l:                                             ; preds = %bb.k
  %i.al = tail call fastcc zeroext i1 @nk_nonblock_begin(ptr noundef nonnull %0, i32 noundef 32, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %3, <2 x float> %i.p, <2 x float> %i.r, i32 noundef 64)
  br i1 %i.al, label %bb.m, label %nk_menu_begin.exit

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store i32 64, ptr %i.am, align 8, !tbaa !528
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i32 %i.w, ptr %i.an, align 8, !tbaa !529
  br label %nk_menu_begin.exit

nk_menu_begin.exit:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.g, %nk_strlen.exit.i, %bb.d, %bb.a, %bb.b, %bb.c
  %.021 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.m ], [ false, %bb.k ], [ false, %nk_strlen.exit.i ], [ false, %bb.g ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.021
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @nk_do_button_symbol(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, <2 x float> %2, <2 x float> %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) unnamed_addr #20 {
bb.a:
  %9 = alloca %struct.nk_rect, align 16           ; 2 uses
  %10 = shufflevector <2 x float> %2, <2 x float> %3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %10, ptr %9, align 16
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %6, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne ptr %8, null
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 156
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 164
  %i.h = load <2 x float>, ptr %i.d, align 8, !tbaa !54 ; 3 uses
  %i.i = load float, ptr %i.g, align 4, !tbaa !533
  %i.j = load float, ptr %i.e, align 8, !tbaa !534 ; 3 uses
  %i.k = load float, ptr %i.f, align 4, !tbaa !398
  %i.l = insertelement <2 x float> %i.h, float %i.i, i64 1
  %i.m = fadd <2 x float> %2, %i.l
  %i.n = insertelement <2 x float> poison, float %i.j, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fadd <2 x float> %i.m, %i.o
  %i.q = insertelement <2 x float> poison, float %i.k, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.s = fadd <2 x float> %i.p, %i.r
  %i.t = insertelement <2 x float> %i.h, float %i.j, i64 1
  %i.u = insertelement <2 x float> %i.h, float %i.j, i64 0
  %i.v = fadd <2 x float> %i.t, %i.u
  %i.w = fadd <2 x float> %i.v, %i.r
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> splat (float -2.000000e+00), <2 x float> %3)
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.z = load <2 x float>, ptr %i.y, align 8, !tbaa !54 ; 2 uses
  %i.aa = fsub <2 x float> %2, %i.z
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> splat (float 2.000000e+00), <2 x float> %3)
  %i.ac = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %0, <2 x float> %i.aa, <2 x float> %i.ab, ptr noundef readonly %7, i32 noundef %5) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !535 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ae(ptr noundef nonnull %1, ptr %i.ag) #50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ah = load i32, ptr %0, align 4, !tbaa !55    ; 3 uses
  %i.ai = call fastcc ptr @nk_draw_button(ptr noundef nonnull %1, ptr noundef nonnull readonly %9, i32 noundef %i.ah, ptr noundef nonnull readonly %6) ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !413
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.sroa.02.0.in.i = select i1 %i.ak, ptr %i.al, ptr %i.am
  %.sroa.02.0.i = load i32, ptr %.sroa.02.0.in.i, align 8, !tbaa !56
  %i.an = and i32 %i.ah, 16
  %.not.i = icmp eq i32 %i.an, 0
  %i.ao = and i32 %i.ah, 32
  %.not22.i = icmp eq i32 %i.ao, 0
  %..i = select i1 %.not22.i, i64 132, i64 140
  %.sink.i = select i1 %.not.i, i64 %..i, i64 136
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 %.sink.i
  %.sroa.04.0.i = load i32, ptr %i.ap, align 4, !tbaa !56 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 148
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !536 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.as = fcmp oeq float %i.ar, 1.000000e+00
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %.sroa.04.0.i to i8
  br label %nk_draw_button_symbol.exit

bb.f:                                             ; preds = %bb.d
  %i.at = and i32 %.sroa.04.0.i, 255
  %i.au = uitofp nneg i32 %i.at to float
  %i.av = fmul float %i.ar, %i.au
  %i.aw = fptoui float %i.av to i8
  %i.ax = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.ay = uitofp nneg i32 %i.ax to float
  %i.az = fmul float %i.ar, %i.ay
  %i.ba = fptoui float %i.az to i8
  %i.bb = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.bc = uitofp nneg i32 %i.bb to float
  %i.bd = fmul float %i.ar, %i.bc
  %i.be = fptoui float %i.bd to i8
  br label %nk_draw_button_symbol.exit

nk_draw_button_symbol.exit:                       ; preds = %bb.e, %bb.f
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.e ], [ %i.ba, %bb.f ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.e ], [ %i.aw, %bb.f ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.e ], [ %i.be, %bb.f ]
  %.sroa.9.0.extract.shift.i.i = and i32 %.sroa.04.0.i, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  tail call fastcc void @nk_draw_symbol(ptr noundef nonnull %1, i32 noundef %4, <2 x float> %i.s, <2 x float> %i.x, i32 %.sroa.02.0.i, i32 %.sroa.011.0.insert.insert.i.i, float noundef 1.000000e+00, ptr noundef nonnull %8)
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 208
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !537 ; 2 uses
  %.not34 = icmp eq ptr %i.bg, null
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %nk_draw_button_symbol.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bg(ptr noundef nonnull %1, ptr %i.bi) #50
  br label %bb.h

bb.h:                                             ; preds = %nk_draw_button_symbol.exit, %bb.g, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.ac, %bb.g ], [ %i.ac, %nk_draw_button_symbol.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_menu_begin_image_text(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %4, <2 x float> %5) local_unnamed_addr #20 {
bb.a:
  %6 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_menu_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 8 uses
  %.not27 = icmp eq ptr %i.b, null
  br i1 %.not27, label %nk_menu_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not28 = icmp eq ptr %i.d, null
  br i1 %.not28, label %nk_menu_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %6, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %nk_menu_begin.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !488
  %i.i = and i32 %i.h, 4096
  %.not30 = icmp eq i32 %i.i, 0
  %spec.select = select i1 %.not30, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !426
  %i.p = load <2 x float>, ptr %6, align 8        ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8      ; 3 uses
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text_image(ptr noundef %i.k, ptr noundef %i.l, <2 x float> %i.p, <2 x float> %i.r, ptr noundef nonnull byval(%struct.nk_image) align 8 %4, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %i.n, ptr noundef %i.o, ptr noundef %i.j)
  %.not5.i.i = icmp eq ptr %1, null
  br i1 %.not5.i.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.f
  %i.t = load i8, ptr %1, align 1, !tbaa !56
  %.not4.i42.i = icmp eq i8 %i.t, 0
  br i1 %.not4.i42.i, label %nk_strlen.exit.i, label %.lr.ph.i.preheader45.i

.lr.ph.i.preheader45.i:                           ; preds = %.lr.ph.i.preheader.i
  %scevgep.i = getelementptr i8, ptr %1, i64 1
  %strlen.i = tail call i64 @strlen(ptr nonnull readonly dereferenceable(1) %scevgep.i)
  %i.u = trunc i64 %strlen.i to i32
  %i.v = add i32 %i.u, 1
  br label %nk_strlen.exit.i

nk_strlen.exit.i:                                 ; preds = %.lr.ph.i.preheader45.i, %.lr.ph.i.preheader.i, %bb.f
  %.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ 0, %.lr.ph.i.preheader.i ], [ %i.v, %.lr.ph.i.preheader45.i ]
  %i.w = tail call i32 @nk_murmur_hash(ptr noundef readonly %1, i32 noundef %.0.lcssa.i.i, i32 noundef 64) ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %nk_menu_begin.exit, label %bb.g

bb.g:                                             ; preds = %nk_strlen.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !416
  %.not39.i = icmp eq ptr %i.z, null
  br i1 %.not39.i, label %nk_menu_begin.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop = fadd <2 x float> %i.p, %i.r
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %i.p, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !464
end_hunk_5
begin_hunk_6_@nk_layout_row_template_end:bb.a
  br i1 %min.iters.check, label %.lr.ph94.split.us.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph94.split.us.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ba, align 4, !tbaa !54 ; 2 uses
  %wide.load128 = load <4 x float>, ptr %i.bb, align 4, !tbaa !54 ; 2 uses
  %i.bc = fcmp ult <4 x float> %wide.load, zeroinitializer
  %i.bd = fcmp ult <4 x float> %wide.load128, zeroinitializer
  %i.be = select <4 x i1> %i.bc, <4 x float> %broadcast.splat, <4 x float> %wide.load
  %i.bf = select <4 x i1> %i.bd, <4 x float> %broadcast.splat, <4 x float> %wide.load128
  store <4 x float> %i.be, ptr %i.ba, align 4, !tbaa !54
  store <4 x float> %i.bf, ptr %i.bb, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1069

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph94.split.us.preheader146

.lr.ph94.split.us.preheader146:                   ; preds = %.lr.ph94.split.us.preheader, %middle.block
  %indvars.iv102.ph = phi i64 [ 0, %.lr.ph94.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph94.split.us

.lr.ph94.split.us:                                ; preds = %.lr.ph94.split.us.preheader146, %.lr.ph94.split.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %.lr.ph94.split.us ], [ %indvars.iv102.ph, %.lr.ph94.split.us.preheader146 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv102 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !54 ; 2 uses
  %i.bj = fcmp ult float %i.bi, 0.000000e+00
  %i.bk = select i1 %i.bj, float %i.aj, float %i.bi
  store float %i.bk, ptr %i.bh, align 4, !tbaa !54
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.loopexit, label %.lr.ph94.split.us, !llvm.loop !1070

.lr.ph94.split:                                   ; preds = %.lr.ph94.split.preheader, %bb.n
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %bb.n ], [ %indvars.iv97.ph, %.lr.ph94.split.preheader ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv97 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !54 ; 4 uses
  %i.bn = fcmp ult float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph94.split
  %i.bo = fcmp uge float %i.bm, -1.000000e+00
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = fneg float %i.bm
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.lr.ph94.split, %bb.m
  %i.bq = phi float [ %i.bm, %.lr.ph94.split ], [ %i.bp, %bb.m ], [ %i.ao, %bb.l ]
  store float %i.bq, ptr %i.bl, align 4, !tbaa !54
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %.loopexit, label %.lr.ph94.split, !llvm.loop !1071

.loopexit:                                        ; preds = %.lr.ph94.split.us, %bb.n, %middle.block, %middle.block143, %.preheader, %._crit_edge, %bb.d, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_layout_space_begin(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 5 uses
  %.not17 = icmp eq ptr %i.b, null
  br i1 %.not17, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 11 uses
  %.not18 = icmp eq ptr %i.d, null
  br i1 %.not18, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %.sroa.03.0.copyload.i = load i32, ptr %i.f, align 8, !tbaa !56
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9648
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  store i32 0, ptr %i.g, align 4, !tbaa !494
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !499
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !503
  %i.l = fadd float %i.i, %i.k                    ; 2 uses
  store float %i.l, ptr %i.j, align 4, !tbaa !503
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i32 %3, ptr %i.m, align 8, !tbaa !495
  %i.n = fcmp oeq float %2, 0.000000e+00
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.p = load float, ptr %i.o, align 4, !tbaa !425 ; 2 uses
  %i.q = fcmp olt float %2, %i.p
  %..i = select i1 %i.q, float %i.p, float %2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi float [ %..i, %bb.e ], [ %2, %bb.d ]
  %storemerge.i = fadd float %.sroa.3.0.copyload.i, %.pn.i ; 2 uses
  store float %storemerge.i, ptr %i.h, align 8, !tbaa !499
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  store float 0.000000e+00, ptr %i.r, align 8, !tbaa !544
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !488
  %i.u = and i32 %i.t, 2048
  %.not36.i = icmp eq i32 %i.u, 0
  br i1 %.not36.i, label %nk_panel_layout.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.w = load float, ptr %i.v, align 4, !tbaa !480
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.w, i64 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.y = load float, ptr %i.x, align 4, !tbaa !478
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> poison, float %i.y, i64 0
  %i.z = fadd float %i.l, -1.000000e+00
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.z, i64 1
  %i.aa = fadd float %storemerge.i, 1.000000e+00
  %.sroa.5.12.vec.insert.i = insertelement <2 x float> %.sroa.5.8.vec.insert.i, float %i.aa, i64 1
  tail call void @nk_fill_rect(ptr noundef nonnull %i.e, <2 x float> %.sroa.0.4.vec.insert.i, <2 x float> %.sroa.5.12.vec.insert.i, float noundef 0.000000e+00, i32 %.sroa.03.0.copyload.i)
  br label %nk_panel_layout.exit

nk_panel_layout.exit:                             ; preds = %bb.f, %bb.g
  %i.ab = icmp eq i32 %1, 1
  %spec.select = select i1 %i.ab, i32 6, i32 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 %spec.select, ptr %i.ac, align 8, !tbaa !545
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr null, ptr %i.ad, align 8, !tbaa !496
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store float 0.000000e+00, ptr %i.ae, align 8, !tbaa !497
  store <2 x float> zeroinitializer, ptr %i.r, align 8, !tbaa !54
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %nk_panel_layout.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_layout_space_end(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_zero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %nk_zero.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 4 uses
  %.not12 = icmp eq ptr %i.d, null
  br i1 %.not12, label %nk_zero.exit, label %.loopexit46.i.i.thread

.loopexit46.i.i.thread:                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store <2 x float> zeroinitializer, ptr %i.e, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store float 0.000000e+00, ptr %i.f, align 8, !tbaa !544
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !tbaa !55
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_layout_space_push(ptr nofree noundef readonly captures(address_is_null) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #36 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %3 = shufflevector <2 x float> %1, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %3, ptr %i.e, align 8, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @nk_layout_space_bounds(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.h = load float, ptr %i.g, align 4, !tbaa !507
  %.sroa.3.8.vec.insert = insertelement <2 x float> poison, float %i.h, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.j = load float, ptr %i.i, align 8, !tbaa !499
  %.sroa.3.12.vec.insert = insertelement <2 x float> %.sroa.3.8.vec.insert, float %i.j, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.f, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @nk_layout_widget_bounds(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load <2 x float>, ptr %i.e, align 8, !tbaa !54 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load float, ptr %i.h, align 8, !tbaa !490
  %i.j = load float, ptr %i.g, align 8, !tbaa !489
  %i.k = extractelement <2 x float> %i.f, i64 0
  %i.l = fsub float %i.k, %i.j                    ; 2 uses
  %i.m = fcmp olt float %i.l, 0.000000e+00
  %i.n = select i1 %i.m, float 0.000000e+00, float %i.l
  %i.o = fsub float %i.i, %i.n
  %.sroa.3.8.vec.insert = insertelement <2 x float> poison, float %i.o, i64 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.q = load float, ptr %i.p, align 8, !tbaa !499
  %.sroa.3.12.vec.insert = insertelement <2 x float> %.sroa.3.8.vec.insert, float %i.q, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.f, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @nk_layout_space_to_screen(ptr nofree noundef readonly captures(none) %0, <2 x float> %1) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !485
  %i.h = load i32, ptr %i.g, align 4, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !486
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55
  %i.l = uitofp i32 %i.h to float
  %i.m = load <2 x float>, ptr %i.e, align 8, !tbaa !54
  %i.n = uitofp i32 %i.k to float
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 1
  %i.q = fsub <2 x float> %i.m, %i.p
  %i.r = fadd <2 x float> %1, %i.q
  ret <2 x float> %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @nk_layout_space_to_local(ptr nofree noundef readonly captures(none) %0, <2 x float> %1) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !485
  %i.h = load i32, ptr %i.g, align 4, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !486
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55
  %i.l = uitofp i32 %i.h to float
  %i.m = load <2 x float>, ptr %i.e, align 8, !tbaa !54
  %i.n = uitofp i32 %i.k to float
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 1
  %i.q = fsub <2 x float> %i.p, %i.m
  %i.r = fadd <2 x float> %1, %i.q
  ret <2 x float> %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @nk_layout_space_rect_to_screen(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !485
  %i.h = load i32, ptr %i.g, align 4, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !486
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55
  %i.l = uitofp i32 %i.h to float
  %i.m = load <2 x float>, ptr %i.e, align 8, !tbaa !54
  %i.n = uitofp i32 %i.k to float
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 1
  %i.q = fsub <2 x float> %i.m, %i.p
  %i.r = fadd <2 x float> %1, %i.q
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.r, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %2, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @nk_layout_space_rect_to_local(ptr nofree noundef readonly captures(none) %0, <2 x float> %1, <2 x float> %2) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !485
  %i.h = load i32, ptr %i.g, align 4, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !486
  %i.k = load i32, ptr %i.j, align 4, !tbaa !55
  %i.l = uitofp i32 %i.h to float
  %i.m = load <2 x float>, ptr %i.e, align 8, !tbaa !54
  %i.n = uitofp i32 %i.k to float
  %i.o = insertelement <2 x float> poison, float %i.l, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 1
  %i.q = fsub <2 x float> %i.p, %i.m
  %i.r = fadd <2 x float> %1, %i.q
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.r, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %2, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @nk_spacer(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %1 = alloca %struct.nk_rect, align 4            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  call fastcc void @nk_panel_alloc_space(ptr noundef nonnull %1, ptr noundef %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_panel_alloc_space(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 5 uses
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 8 uses
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !494
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.h = load i32, ptr %i.g, align 8, !tbaa !495
  %.not17 = icmp slt i32 %i.f, %i.h
  br i1 %.not17, label %nk_panel_alloc_row.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9648
  %.sroa.3.0.copyload.i = load float, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !54 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.j = load float, ptr %i.i, align 8, !tbaa !499 ; 2 uses
  %i.k = fsub float %i.j, %.sroa.3.0.copyload.i   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9536
  %.sroa.03.0.copyload.i.i = load i32, ptr %i.m, align 8, !tbaa !56
  store i32 0, ptr %i.e, align 4, !tbaa !494
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
end_hunk_6
begin_hunk_7_@nk_draw_button:bb.a
  %i.ah = fptoui float %i.ag to i8
  %i.ai = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.aj = uitofp nneg i32 %i.ai to float
  %i.ak = fmul float %i.ab, %i.aj
  %i.al = fptoui float %i.ak to i8
  %i.am = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.an = uitofp nneg i32 %i.am to float
  %i.ao = fmul float %i.ab, %i.an
  %i.ap = fptoui float %i.ao to i8
  br label %nk_rgb_factor.exit52

nk_rgb_factor.exit52:                             ; preds = %bb.c, %bb.d
  %.sroa.3.0.i41 = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.c ], [ %i.al, %bb.d ]
  %.sroa.011.0.i42 = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.c ], [ %i.ah, %bb.d ]
  %.sroa.512.0.i43 = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.c ], [ %i.ap, %bb.d ]
  %.sroa.9.0.extract.shift.i = and i32 %i.ac, -16777216
  %.sroa.512.0.insert.ext.i44 = zext i8 %.sroa.512.0.i43 to i32
  %.sroa.512.0.insert.shift.i45 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i44, 16
  %.sroa.512.0.insert.insert.i46 = or disjoint i32 %.sroa.512.0.insert.shift.i45, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i47 = zext i8 %.sroa.3.0.i41 to i32
  %.sroa.3.0.insert.shift.i48 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i47, 8
  %.sroa.3.0.insert.insert.i49 = or disjoint i32 %.sroa.512.0.insert.insert.i46, %.sroa.3.0.insert.shift.i48
  %.sroa.011.0.insert.ext.i50 = zext i8 %.sroa.011.0.i42 to i32
  %.sroa.011.0.insert.insert.i51 = or disjoint i32 %.sroa.3.0.insert.insert.i49, %.sroa.011.0.insert.ext.i50
  %i.aq = load <2 x float>, ptr %1, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.as = load <2 x float>, ptr %i.ar, align 4
  tail call void @nk_fill_rect(ptr noundef nonnull %0, <2 x float> %i.aq, <2 x float> %i.as, float noundef %i.y, i32 %.sroa.011.0.insert.insert.i51)
  %i.at = load float, ptr %i.x, align 4, !tbaa !398
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.av = load float, ptr %i.au, align 8, !tbaa !534
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.ax = load float, ptr %i.aa, align 4, !tbaa !399 ; 4 uses
  %i.ay = load i32, ptr %i.aw, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i53 = lshr i32 %i.ay, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i54 = lshr i32 %i.ay, 16 ; 2 uses
  %i.az = fcmp oeq float %i.ax, 1.000000e+00
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %nk_rgb_factor.exit52
  %.sroa.7.0.extract.trunc.i67 = trunc i32 %.sroa.7.0.extract.shift.i54 to i8
  %.sroa.5.0.extract.trunc.i68 = trunc i32 %.sroa.5.0.extract.shift.i53 to i8
  %.sroa.0.0.extract.trunc.i69 = trunc i32 %i.ay to i8
  br label %nk_rgb_factor.exit70

bb.f:                                             ; preds = %nk_rgb_factor.exit52
  %i.ba = and i32 %i.ay, 255
  %i.bb = uitofp nneg i32 %i.ba to float
  %i.bc = fmul float %i.ax, %i.bb
  %i.bd = fptoui float %i.bc to i8
  %i.be = and i32 %.sroa.5.0.extract.shift.i53, 255
  %i.bf = uitofp nneg i32 %i.be to float
  %i.bg = fmul float %i.ax, %i.bf
  %i.bh = fptoui float %i.bg to i8
  %i.bi = and i32 %.sroa.7.0.extract.shift.i54, 255
  %i.bj = uitofp nneg i32 %i.bi to float
  %i.bk = fmul float %i.ax, %i.bj
  %i.bl = fptoui float %i.bk to i8
  br label %nk_rgb_factor.exit70

nk_rgb_factor.exit70:                             ; preds = %bb.e, %bb.f
  %.sroa.3.0.i55 = phi i8 [ %.sroa.5.0.extract.trunc.i68, %bb.e ], [ %i.bh, %bb.f ]
  %.sroa.011.0.i56 = phi i8 [ %.sroa.0.0.extract.trunc.i69, %bb.e ], [ %i.bd, %bb.f ]
  %.sroa.512.0.i57 = phi i8 [ %.sroa.7.0.extract.trunc.i67, %bb.e ], [ %i.bl, %bb.f ]
  %.sroa.9.0.extract.shift.i58 = and i32 %i.ay, -16777216
  %.sroa.512.0.insert.ext.i59 = zext i8 %.sroa.512.0.i57 to i32
  %.sroa.512.0.insert.shift.i60 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i59, 16
  %.sroa.512.0.insert.insert.i61 = or disjoint i32 %.sroa.512.0.insert.shift.i60, %.sroa.9.0.extract.shift.i58
  %.sroa.3.0.insert.ext.i62 = zext i8 %.sroa.3.0.i55 to i32
  %.sroa.3.0.insert.shift.i63 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i62, 8
  %.sroa.3.0.insert.insert.i64 = or disjoint i32 %.sroa.512.0.insert.insert.i61, %.sroa.3.0.insert.shift.i63
  %.sroa.011.0.insert.ext.i65 = zext i8 %.sroa.011.0.i56 to i32
  %.sroa.011.0.insert.insert.i66 = or disjoint i32 %.sroa.3.0.insert.insert.i64, %.sroa.011.0.insert.ext.i65
  %i.bm = load <2 x float>, ptr %1, align 4
  %i.bn = load <2 x float>, ptr %i.ar, align 4
  tail call void @nk_stroke_rect(ptr noundef nonnull %0, <2 x float> %i.bm, <2 x float> %i.bn, float noundef %i.at, float noundef %i.av, i32 %.sroa.011.0.insert.insert.i66)
  br label %bb.g

bb.g:                                             ; preds = %nk_rgb_factor.exit70, %nk_rgb_factor.exit40, %nk_rgb_factor.exit, %bb.a
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_button_symbol_styled(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 2 uses
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %bb.g
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !488
  %i.h = and i32 %i.g, 4096
  %.not26 = icmp eq i32 %i.h, 0
  %spec.select = select i1 %.not26, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9884
  %i.m = load i32, ptr %i.l, align 4, !tbaa !610
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !426
  %i.p = load <2 x float>, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.j, ptr noundef nonnull %i.k, <2 x float> %i.p, <2 x float> %i.r, i32 noundef %2, i32 noundef %i.m, ptr noundef %1, ptr noundef %i.i, ptr noundef %i.o)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.f
  %.0 = phi i1 [ %i.s, %bb.f ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_button_symbol(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #20 {
bb.a:
  %2 = alloca %struct.nk_rect, align 8            ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !415  ; 3 uses
  %.not23.i = icmp eq ptr %i.c, null
  br i1 %.not23.i, label %nk_button_symbol_styled.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !416  ; 2 uses
  %.not24.i = icmp eq ptr %i.e, null
  br i1 %.not24.i, label %nk_button_symbol_styled.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @nk_widget(ptr noundef nonnull %2, ptr noundef nonnull %0)
  switch i32 %i.f, label %bb.f [
    i32 0, label %nk_button_symbol_styled.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !488
  %i.i = and i32 %i.h, 4096
  %.not26.i = icmp eq i32 %i.i, 0
  %spec.select.i = select i1 %.not26.i, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ null, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9884
  %i.n = load i32, ptr %i.m, align 4, !tbaa !610
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !426
  %i.q = load <2 x float>, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x float>, ptr %i.r, align 8
  %i.t = tail call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.k, ptr noundef nonnull %i.l, <2 x float> %i.q, <2 x float> %i.s, i32 noundef %1, i32 noundef %i.n, ptr noundef nonnull readonly %i.a, ptr noundef %i.j, ptr noundef %i.p)
  br label %nk_button_symbol_styled.exit

nk_button_symbol_styled.exit:                     ; preds = %bb.b, %bb.c, %bb.d, %bb.f
  %.0.i = phi i1 [ %i.t, %bb.f ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %nk_button_symbol_styled.exit
  %.0 = phi i1 [ %.0.i, %nk_button_symbol_styled.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_button_image_styled(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 16           ; 4 uses
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 2 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %bb.k
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !488
  %i.h = and i32 %i.g, 4096
  %.not24 = icmp eq i32 %i.h, 0
  %spec.select = select i1 %.not24, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9884
  %i.m = load i32, ptr %i.l, align 4, !tbaa !610
  %i.n = load <2 x float>, ptr %4, align 8        ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load <2 x float>, ptr %i.o, align 8      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %5 = shufflevector <2 x float> %i.n, <2 x float> %i.p, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %5, ptr %3, align 16
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %nk_do_button_image.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !54 ; 2 uses
  %i.w = fsub <2 x float> %i.n, %i.v
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float 2.000000e+00), <2 x float> %i.p)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.z = load <2 x float>, ptr %i.q, align 8, !tbaa !54 ; 3 uses
  %i.aa = load float, ptr %i.t, align 4, !tbaa !533
  %i.ab = load float, ptr %i.r, align 8, !tbaa !534 ; 3 uses
  %i.ac = load float, ptr %i.s, align 4, !tbaa !398
  %i.ad = insertelement <2 x float> %i.z, float %i.aa, i64 1
  %i.ae = fadd <2 x float> %i.n, %i.ad
  %i.af = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fadd <2 x float> %i.ae, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = fadd <2 x float> %i.ah, %i.aj
  %i.al = insertelement <2 x float> %i.z, float %i.ab, i64 1
  %i.am = insertelement <2 x float> %i.z, float %i.ab, i64 0
  %i.an = fadd <2 x float> %i.al, %i.am
  %i.ao = fadd <2 x float> %i.an, %i.aj
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> splat (float -2.000000e+00), <2 x float> %i.p)
  %i.aq = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.j, <2 x float> %i.w, <2 x float> %i.x, ptr noundef readonly %i.i, i32 noundef %i.m) ; 2 uses
  %i.ar = load <2 x float>, ptr %i.y, align 8, !tbaa !54 ; 2 uses
  %i.as = fadd <2 x float> %i.ak, %i.ar
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> splat (float -2.000000e+00), <2 x float> %i.ap)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !535 ; 2 uses
  %.not32.i = icmp eq ptr %i.av, null
  br i1 %.not32.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.av(ptr noundef nonnull %i.k, ptr %i.ax) #50, !inline_history !39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = load i32, ptr %i.j, align 8, !tbaa !55
  %i.az = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.k, ptr noundef nonnull readonly %3, i32 noundef %i.ay, ptr noundef nonnull readonly %1) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !399 ; 2 uses
  %i.bc = fcmp oeq float %i.bb, 1.000000e+00
  %i.bd = fmul float %i.bb, 2.550000e+02
  %i.be = fptoui float %i.bd to i8
  %i.bf = zext i8 %i.be to i32
  %i.bg = mul nuw nsw i32 %i.bf, 65793
  %i.bh = or disjoint i32 %i.bg, -16777216
  %.sroa.011.0.insert.insert.i.i.i = select i1 %i.bc, i32 -1, i32 %i.bh
  call void @nk_draw_image(ptr noundef nonnull %i.k, <2 x float> %i.as, <2 x float> %i.at, ptr noundef nonnull readonly align 8 %2, i32 %.sroa.011.0.insert.insert.i.i.i)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !537 ; 2 uses
  %.not33.i = icmp eq ptr %i.bj, null
  br i1 %.not33.i, label %nk_do_button_image.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bj(ptr noundef nonnull %i.k, ptr %i.bl) #50, !inline_history !39
  br label %nk_do_button_image.exit

nk_do_button_image.exit:                          ; preds = %bb.f, %bb.i, %bb.j
  %.0.i = phi i1 [ false, %bb.f ], [ %i.aq, %bb.j ], [ %i.aq, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %nk_do_button_image.exit
  %.0 = phi i1 [ %.0.i, %nk_do_button_image.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_button_image(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = tail call zeroext i1 @nk_button_image_styled(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull byval(%struct.nk_image) align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_button_symbol_text_styled(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #20 {
bb.a:
  %6 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 3 uses
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 2 uses
  %.not27 = icmp eq ptr %i.d, null
  br i1 %.not27, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %6, ptr noundef nonnull %0)
  switch i32 %i.e, label %bb.f [
    i32 0, label %bb.g
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !488
  %i.h = and i32 %i.g, 4096
  %.not29 = icmp eq i32 %i.h, 0
  %spec.select = select i1 %.not29, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9884
  %i.m = load i32, ptr %i.l, align 4, !tbaa !610
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !426
  %i.p = load <2 x float>, ptr %6, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.r = load <2 x float>, ptr %i.q, align 8
  %i.s = tail call fastcc zeroext i1 @nk_do_button_text_symbol(ptr noundef %i.j, ptr noundef %i.k, <2 x float> %i.p, <2 x float> %i.r, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %i.m, ptr noundef %1, ptr noundef %i.o, ptr noundef %i.i)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.f
  %.0 = phi i1 [ %i.s, %bb.f ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_button_symbol_text(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !415  ; 3 uses
  %.not26.i = icmp eq ptr %i.c, null
  br i1 %.not26.i, label %nk_button_symbol_text_styled.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !416  ; 2 uses
  %.not27.i = icmp eq ptr %i.e, null
  br i1 %.not27.i, label %nk_button_symbol_text_styled.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0)
  switch i32 %i.f, label %bb.f [
    i32 0, label %nk_button_symbol_text_styled.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !488
  %i.i = and i32 %i.h, 4096
  %.not29.i = icmp eq i32 %i.i, 0
  %spec.select.i = select i1 %.not29.i, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ null, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9884
  %i.n = load i32, ptr %i.m, align 4, !tbaa !610
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !426
  %i.q = load <2 x float>, ptr %5, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load <2 x float>, ptr %i.r, align 8
  %i.t = tail call fastcc zeroext i1 @nk_do_button_text_symbol(ptr noundef %i.k, ptr noundef %i.l, <2 x float> %i.q, <2 x float> %i.s, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %i.n, ptr noundef nonnull readonly %i.a, ptr noundef %i.p, ptr noundef %i.j)
  br label %nk_button_symbol_text_styled.exit
end_hunk_7
begin_hunk_8_@nk_property_float:bb.a
bb.c:                                             ; preds = %bb.b
  %i.f = load float, ptr %3, align 4, !tbaa !54
  store i32 1, ptr %7, align 8, !tbaa !55
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %i.f, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store float %2, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store float %4, ptr %.sroa.622.0..sroa_idx, align 8
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %5, ptr %.sroa.723.0..sroa_idx, align 8
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 1)
  %i.g = load float, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !56 ; 2 uses
  %i.h = load float, ptr %3, align 4, !tbaa !54
  %i.i = fcmp une float %i.g, %i.h
  store float %i.g, ptr %3, align 4, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_property_double(ptr noundef %0, ptr noundef %1, double noundef %2, ptr nofree noundef captures(address_is_null) %3, double noundef %4, double noundef %5, float noundef %6) local_unnamed_addr #17 {
bb.a:
  %7 = alloca %struct.nk_property_variant, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.e, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load double, ptr %3, align 8, !tbaa !63
  store i32 2, ptr %7, align 8, !tbaa !55
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store double %i.f, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !56
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %4, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store double %5, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !56
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 1)
  %i.g = load double, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !56 ; 2 uses
  %i.h = load double, ptr %3, align 8, !tbaa !63
  %i.i = fcmp une double %i.g, %i.h
  store double %i.g, ptr %3, align 8, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define i32 @nk_propertyi(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6) local_unnamed_addr #17 {
bb.a:
  %7 = alloca %struct.nk_property_variant, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %7, align 8, !tbaa !55
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 %3, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %2, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %4, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %5, ptr %.sroa.718.0..sroa_idx, align 8
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 0)
  %i.e = load i32, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define float @nk_propertyf(ptr noundef %0, ptr noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #17 {
bb.a:
  %7 = alloca %struct.nk_property_variant, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %7, align 8, !tbaa !55
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %3, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store float %2, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store float %4, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %5, ptr %.sroa.719.0..sroa_idx, align 8
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 1)
  %i.e = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi float [ %i.e, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret float %.0
}

; Function Attrs: nounwind uwtable
define double @nk_propertyd(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, float noundef %6) local_unnamed_addr #17 {
bb.a:
  %7 = alloca %struct.nk_property_variant, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %7, align 8, !tbaa !55
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store double %3, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !56
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !56
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %4, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !56
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store double %5, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !56
  call fastcc void @nk_property(ptr noundef %0, ptr noundef %1, ptr noundef %7, float noundef %6, i32 noundef 1)
  %i.e = load double, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi double [ %i.e, %bb.c ], [ %3, %bb.b ], [ %3, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret double %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_chart_begin_colored(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 %2, i32 %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #20 {
bb.a:
  %7 = alloca %struct.nk_rect, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_zero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not83 = icmp eq ptr %i.b, null
  br i1 %.not83, label %nk_zero.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not84 = icmp eq ptr %i.d, null
  br i1 %.not84, label %nk_zero.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @nk_widget(ptr noundef nonnull %7, ptr noundef nonnull %0)
  %.not85 = icmp eq i32 %i.e, 0
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !415  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !416  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 248 ; 9 uses
  br i1 %.not85, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.i, i8 0, i64 196, i1 false), !tbaa !55
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.e
  %i.l = sub nuw nsw i64 4, %i.k                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 0, i64 %i.l, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %i.i, i64 %i.l ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.k, i1 false), !tbaa !56
  br label %nk_zero.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = and i64 %i.n, 3                          ; 3 uses
  %.not.i.i86 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i86, label %.loopexit46.i.i89.thread, label %.loopexit46.i.i89

.loopexit46.i.i89.thread:                         ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 268
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(176) %i.p, i8 0, i64 176, i1 false), !tbaa !55
  br label %nk_zero.exit95

.loopexit46.i.i89:                                ; preds = %bb.f
  %i.q = sub nuw nsw i64 4, %i.o                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, i8 0, i64 %i.q, i1 false), !tbaa !56
  %scevgep.i.i88 = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i88, i8 0, i64 192, i1 false), !tbaa !55
  %scevgep53.i.i94 = getelementptr i8, ptr %scevgep.i.i88, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i94, i8 0, i64 %i.o, i1 false), !tbaa !56
  %.pre = load i32, ptr %i.i, align 4, !tbaa !642
  br label %nk_zero.exit95

nk_zero.exit95:                                   ; preds = %.loopexit46.i.i89.thread, %.loopexit46.i.i89
  %i.r = phi i32 [ 0, %.loopexit46.i.i89.thread ], [ %.pre, %.loopexit46.i.i89 ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5980
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 252
  %i.u = load <2 x float>, ptr %7, align 8, !tbaa !54
  %i.v = load <2 x float>, ptr %i.s, align 4, !tbaa !54 ; 3 uses
  %i.w = fadd <2 x float> %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !54
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> splat (float -2.000000e+00), <2 x float> %i.y) ; 2 uses
  %i.aa = fmul <2 x float> %i.v, splat (float 2.000000e+00) ; 2 uses
  %i.ab = fcmp olt <2 x float> %i.z, %i.aa
  %i.ac = select <2 x i1> %i.ab, <2 x float> %i.aa, <2 x float> %i.z
  %8 = shufflevector <2 x float> %i.w, <2 x float> %i.ac, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %8, ptr %i.t, align 4, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 268
  %i.ae = add nsw i32 %i.r, 1
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !642
  %i.af = sext i32 %i.r to i64
  %i.ag = getelementptr inbounds [44 x i8], ptr %i.ad, i64 %i.af ; 8 uses
  store i32 %1, ptr %i.ag, align 4, !tbaa !644
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 %4, ptr %i.ah, align 4, !tbaa !645
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 5988 ; 5 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !646 ; 4 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %2, 8     ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %2, 16    ; 2 uses
  %i.al = fcmp oeq float %i.ak, 1.000000e+00
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %nk_zero.exit95
  %.sroa.7.0.extract.trunc.i = trunc i32 %.sroa.7.0.extract.shift.i to i8
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %2 to i8
  br label %nk_rgb_factor.exit

bb.h:                                             ; preds = %nk_zero.exit95
  %i.am = and i32 %2, 255
  %i.an = uitofp nneg i32 %i.am to float
  %i.ao = fmul float %i.ak, %i.an
  %i.ap = fptoui float %i.ao to i8
  %i.aq = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fmul float %i.ak, %i.ar
  %i.at = fptoui float %i.as to i8
  %i.au = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.av = uitofp nneg i32 %i.au to float
  %i.aw = fmul float %i.ak, %i.av
  %i.ax = fptoui float %i.aw to i8
  br label %nk_rgb_factor.exit

nk_rgb_factor.exit:                               ; preds = %bb.g, %bb.h
  %.sroa.3.0.i = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.g ], [ %i.at, %bb.h ]
  %.sroa.011.0.i = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.g ], [ %i.ap, %bb.h ]
  %.sroa.512.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.g ], [ %i.ax, %bb.h ]
  %.sroa.9.0.extract.shift.i = and i32 %2, -16777216
  %.sroa.512.0.insert.ext.i = zext i8 %.sroa.512.0.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.512.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i = zext i8 %.sroa.3.0.i to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %.sroa.011.0.insert.ext.i = zext i8 %.sroa.011.0.i to i32
  %.sroa.011.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %.sroa.011.0.insert.ext.i
  store i32 %.sroa.011.0.insert.insert.i, ptr %i.ai, align 4, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %3, ptr %i.ay, align 4, !tbaa !56
  %i.az = fcmp olt float %5, %6                   ; 2 uses
  %i.ba = select i1 %i.az, float %5, float %6     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store float %i.ba, ptr %i.bb, align 4, !tbaa !647
  %i.bc = select i1 %i.az, float %6, float %5     ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store float %i.bc, ptr %i.bd, align 4, !tbaa !648
  %i.be = fsub float %i.bc, %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store float %i.be, ptr %i.bf, align 4, !tbaa !649
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5996
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !412, !range !88, !noundef !89
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i8 %i.bh, ptr %i.bi, align 4, !tbaa !650
  %i.bj = load i32, ptr %i.m, align 8, !tbaa !413
  switch i32 %i.bj, label %nk_zero.exit [
    i32 1, label %nk_rgb_factor.exit107
    i32 2, label %nk_rgb_factor.exit119
    i32 0, label %bb.i
  ]

nk_rgb_factor.exit107:                            ; preds = %nk_rgb_factor.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.bm = load float, ptr %i.aj, align 4, !tbaa !646 ; 2 uses
  %i.bn = fcmp oeq float %i.bm, 1.000000e+00
  %i.bo = fmul float %i.bm, 2.550000e+02
  %i.bp = fptoui float %i.bo to i8
  %i.bq = zext i8 %i.bp to i32
  %.sroa.512.0.insert.ext.i99 = select i1 %i.bn, i32 255, i32 %i.bq ; 3 uses
  %.sroa.512.0.insert.shift.i100 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i99, 16
  %.sroa.3.0.insert.shift.i103 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i99, 8
  %.sroa.512.0.insert.insert.i101 = or disjoint i32 %.sroa.512.0.insert.shift.i100, %.sroa.3.0.insert.shift.i103
  %.sroa.3.0.insert.insert.i104 = or disjoint i32 %.sroa.512.0.insert.insert.i101, %.sroa.512.0.insert.ext.i99
  %.sroa.011.0.insert.insert.i106 = or disjoint i32 %.sroa.3.0.insert.insert.i104, -16777216
  %i.br = load <2 x float>, ptr %7, align 8
  %i.bs = load <2 x float>, ptr %i.x, align 8
  tail call void @nk_draw_image(ptr noundef nonnull %i.bk, <2 x float> %i.br, <2 x float> %i.bs, ptr noundef nonnull %i.bl, i32 %.sroa.011.0.insert.insert.i106)
  br label %nk_zero.exit

nk_rgb_factor.exit119:                            ; preds = %nk_rgb_factor.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.bv = load float, ptr %i.aj, align 4, !tbaa !646 ; 2 uses
  %i.bw = fcmp oeq float %i.bv, 1.000000e+00
  %i.bx = fmul float %i.bv, 2.550000e+02
  %i.by = fptoui float %i.bx to i8
  %i.bz = zext i8 %i.by to i32
  %.sroa.512.0.insert.ext.i111 = select i1 %i.bw, i32 255, i32 %i.bz ; 3 uses
  %.sroa.512.0.insert.shift.i112 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i111, 16
  %.sroa.3.0.insert.shift.i115 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i111, 8
  %.sroa.512.0.insert.insert.i113 = or disjoint i32 %.sroa.512.0.insert.shift.i112, %.sroa.3.0.insert.shift.i115
  %.sroa.3.0.insert.insert.i116 = or disjoint i32 %.sroa.512.0.insert.insert.i113, %.sroa.512.0.insert.ext.i111
  %.sroa.011.0.insert.insert.i118 = or disjoint i32 %.sroa.3.0.insert.insert.i116, -16777216
  %i.ca = load <2 x float>, ptr %7, align 8
  %i.cb = load <2 x float>, ptr %i.x, align 8
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.bt, <2 x float> %i.ca, <2 x float> %i.cb, ptr noundef nonnull %i.bu, i32 %.sroa.011.0.insert.insert.i118)
  br label %nk_zero.exit

bb.i:                                             ; preds = %nk_rgb_factor.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5976 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !1201
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 5960
  %i.cg = load float, ptr %i.aj, align 4, !tbaa !646 ; 4 uses
  %i.ch = load i32, ptr %i.cf, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i120 = lshr i32 %i.ch, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i121 = lshr i32 %i.ch, 16 ; 2 uses
  %i.ci = fcmp oeq float %i.cg, 1.000000e+00
  br i1 %i.ci, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.7.0.extract.trunc.i134 = trunc i32 %.sroa.7.0.extract.shift.i121 to i8
  %.sroa.5.0.extract.trunc.i135 = trunc i32 %.sroa.5.0.extract.shift.i120 to i8
  %.sroa.0.0.extract.trunc.i136 = trunc i32 %i.ch to i8
  br label %nk_rgb_factor.exit137

bb.k:                                             ; preds = %bb.i
  %i.cj = and i32 %i.ch, 255
  %i.ck = uitofp nneg i32 %i.cj to float
  %i.cl = fmul float %i.cg, %i.ck
  %i.cm = fptoui float %i.cl to i8
  %i.cn = and i32 %.sroa.5.0.extract.shift.i120, 255
  %i.co = uitofp nneg i32 %i.cn to float
  %i.cp = fmul float %i.cg, %i.co
  %i.cq = fptoui float %i.cp to i8
  %i.cr = and i32 %.sroa.7.0.extract.shift.i121, 255
  %i.cs = uitofp nneg i32 %i.cr to float
  %i.ct = fmul float %i.cg, %i.cs
  %i.cu = fptoui float %i.ct to i8
  br label %nk_rgb_factor.exit137

nk_rgb_factor.exit137:                            ; preds = %bb.j, %bb.k
  %.sroa.3.0.i122 = phi i8 [ %.sroa.5.0.extract.trunc.i135, %bb.j ], [ %i.cq, %bb.k ]
  %.sroa.011.0.i123 = phi i8 [ %.sroa.0.0.extract.trunc.i136, %bb.j ], [ %i.cm, %bb.k ]
  %.sroa.512.0.i124 = phi i8 [ %.sroa.7.0.extract.trunc.i134, %bb.j ], [ %i.cu, %bb.k ]
  %.sroa.9.0.extract.shift.i125 = and i32 %i.ch, -16777216
  %.sroa.512.0.insert.ext.i126 = zext i8 %.sroa.512.0.i124 to i32
  %.sroa.512.0.insert.shift.i127 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i126, 16
  %.sroa.512.0.insert.insert.i128 = or disjoint i32 %.sroa.512.0.insert.shift.i127, %.sroa.9.0.extract.shift.i125
  %.sroa.3.0.insert.ext.i129 = zext i8 %.sroa.3.0.i122 to i32
  %.sroa.3.0.insert.shift.i130 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i129, 8
  %.sroa.3.0.insert.insert.i131 = or disjoint i32 %.sroa.512.0.insert.insert.i128, %.sroa.3.0.insert.shift.i130
  %.sroa.011.0.insert.ext.i132 = zext i8 %.sroa.011.0.i123 to i32
  %.sroa.011.0.insert.insert.i133 = or disjoint i32 %.sroa.3.0.insert.insert.i131, %.sroa.011.0.insert.ext.i132
  %i.cv = load <2 x float>, ptr %7, align 8       ; 2 uses
  %i.cw = load <2 x float>, ptr %i.x, align 8     ; 3 uses
  tail call void @nk_fill_rect(ptr noundef nonnull %i.cc, <2 x float> %i.cv, <2 x float> %i.cw, float noundef %i.ce, i32 %.sroa.011.0.insert.insert.i133)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 5972
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !1202 ; 2 uses
  %i.cz = fmul float %i.cy, 2.000000e+00
  %i.da = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dc = fadd <2 x float> %i.cv, %i.db
  %i.dd = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = fcmp olt <2 x float> %i.cw, %i.de
  %i.dg = select <2 x i1> %i.df, <2 x float> %i.de, <2 x float> %i.cw
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> splat (float -2.000000e+00), <2 x float> %i.dg)
  %i.di = load float, ptr %i.cd, align 8, !tbaa !1201
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 5928
  %i.dk = load float, ptr %i.aj, align 4, !tbaa !646 ; 4 uses
  %i.dl = load i32, ptr %i.dj, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i138 = lshr i32 %i.dl, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i139 = lshr i32 %i.dl, 16 ; 2 uses
  %i.dm = fcmp oeq float %i.dk, 1.000000e+00
  br i1 %i.dm, label %bb.l, label %bb.m

bb.l:                                             ; preds = %nk_rgb_factor.exit137
  %.sroa.7.0.extract.trunc.i152 = trunc i32 %.sroa.7.0.extract.shift.i139 to i8
  %.sroa.5.0.extract.trunc.i153 = trunc i32 %.sroa.5.0.extract.shift.i138 to i8
  %.sroa.0.0.extract.trunc.i154 = trunc i32 %i.dl to i8
  br label %nk_rgb_factor.exit155

bb.m:                                             ; preds = %nk_rgb_factor.exit137
  %i.dn = and i32 %i.dl, 255
  %i.do = uitofp nneg i32 %i.dn to float
  %i.dp = fmul float %i.dk, %i.do
  %i.dq = fptoui float %i.dp to i8
  %i.dr = and i32 %.sroa.5.0.extract.shift.i138, 255
  %i.ds = uitofp nneg i32 %i.dr to float
  %i.dt = fmul float %i.dk, %i.ds
  %i.du = fptoui float %i.dt to i8
  %i.dv = and i32 %.sroa.7.0.extract.shift.i139, 255
  %i.dw = uitofp nneg i32 %i.dv to float
  %i.dx = fmul float %i.dk, %i.dw
  %i.dy = fptoui float %i.dx to i8
  br label %nk_rgb_factor.exit155

nk_rgb_factor.exit155:                            ; preds = %bb.l, %bb.m
  %.sroa.3.0.i140 = phi i8 [ %.sroa.5.0.extract.trunc.i153, %bb.l ], [ %i.du, %bb.m ]
  %.sroa.011.0.i141 = phi i8 [ %.sroa.0.0.extract.trunc.i154, %bb.l ], [ %i.dq, %bb.m ]
  %.sroa.512.0.i142 = phi i8 [ %.sroa.7.0.extract.trunc.i152, %bb.l ], [ %i.dy, %bb.m ]
  %.sroa.9.0.extract.shift.i143 = and i32 %i.dl, -16777216
  %.sroa.512.0.insert.ext.i144 = zext i8 %.sroa.512.0.i142 to i32
  %.sroa.512.0.insert.shift.i145 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i144, 16
  %.sroa.512.0.insert.insert.i146 = or disjoint i32 %.sroa.512.0.insert.shift.i145, %.sroa.9.0.extract.shift.i143
  %.sroa.3.0.insert.ext.i147 = zext i8 %.sroa.3.0.i140 to i32
  %.sroa.3.0.insert.shift.i148 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i147, 8
  %.sroa.3.0.insert.insert.i149 = or disjoint i32 %.sroa.512.0.insert.insert.i146, %.sroa.3.0.insert.shift.i148
  %.sroa.011.0.insert.ext.i150 = zext i8 %.sroa.011.0.i141 to i32
  %.sroa.011.0.insert.insert.i151 = or disjoint i32 %.sroa.3.0.insert.insert.i149, %.sroa.011.0.insert.ext.i150
  tail call void @nk_fill_rect(ptr noundef nonnull %i.cc, <2 x float> %i.dc, <2 x float> %i.dh, float noundef %i.di, i32 %.sroa.011.0.insert.insert.i151)
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i, %.loopexit46.i.i.thread, %nk_rgb_factor.exit, %nk_rgb_factor.exit107, %nk_rgb_factor.exit119, %nk_rgb_factor.exit155, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ true, %nk_rgb_factor.exit ], [ false, %bb.c ], [ false, %bb.b ], [ true, %nk_rgb_factor.exit155 ], [ true, %nk_rgb_factor.exit119 ], [ true, %nk_rgb_factor.exit107 ], [ false, %.loopexit46.i.i.thread ], [ false, %.loopexit46.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_chart_begin(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.c = load i32, ptr %i.a, align 8
  %i.d = load i32, ptr %i.b, align 4
  %i.e = tail call zeroext i1 @nk_chart_begin_colored(ptr noundef %0, i32 noundef %1, i32 %i.c, i32 %i.d, i32 noundef %2, float noundef %3, float noundef %4)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_chart_add_slot_colored(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 %2, i32 %3, i32 noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #22 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 2 uses
  %.not34 = icmp eq ptr %i.b, null
  br i1 %.not34, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 3 uses
  %.not35 = icmp eq ptr %i.d, null
  br i1 %.not35, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !651  ; 3 uses
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  %i.i = add nsw i32 %i.f, 1
  store i32 %i.i, ptr %i.e, align 8, !tbaa !642
  %i.j = sext i32 %i.f to i64
  %i.k = getelementptr inbounds [44 x i8], ptr %i.h, i64 %i.j ; 8 uses
  store i32 %1, ptr %i.k, align 4, !tbaa !644
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 %4, ptr %i.l, align 4, !tbaa !645
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5988
  %i.o = load float, ptr %i.n, align 4, !tbaa !646 ; 4 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %2, 8     ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %2, 16    ; 2 uses
  %i.p = fcmp oeq float %i.o, 1.000000e+00
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.7.0.extract.trunc.i = trunc i32 %.sroa.7.0.extract.shift.i to i8
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %2 to i8
  br label %nk_rgb_factor.exit

bb.g:                                             ; preds = %bb.e
  %i.q = and i32 %2, 255
  %i.r = uitofp nneg i32 %i.q to float
  %i.s = fmul float %i.o, %i.r
  %i.t = fptoui float %i.s to i8
  %i.u = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.v = uitofp nneg i32 %i.u to float
  %i.w = fmul float %i.o, %i.v
  %i.x = fptoui float %i.w to i8
  %i.y = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.z = uitofp nneg i32 %i.y to float
  %i.aa = fmul float %i.o, %i.z
  %i.ab = fptoui float %i.aa to i8
  br label %nk_rgb_factor.exit

nk_rgb_factor.exit:                               ; preds = %bb.f, %bb.g
  %.sroa.3.0.i = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.011.0.i = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.f ], [ %i.t, %bb.g ]
  %.sroa.512.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.f ], [ %i.ab, %bb.g ]
  %.sroa.9.0.extract.shift.i = and i32 %2, -16777216
  %.sroa.512.0.insert.ext.i = zext i8 %.sroa.512.0.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.512.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i = zext i8 %.sroa.3.0.i to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %.sroa.011.0.insert.ext.i = zext i8 %.sroa.011.0.i to i32
  %.sroa.011.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %.sroa.011.0.insert.ext.i
  store i32 %.sroa.011.0.insert.insert.i, ptr %i.m, align 4, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %3, ptr %i.ac, align 4, !tbaa !56
  %i.ad = fcmp olt float %5, %6                   ; 2 uses
  %i.ae = select i1 %i.ad, float %5, float %6     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store float %i.ae, ptr %i.af, align 4, !tbaa !647
  %i.ag = select i1 %i.ad, float %6, float %5     ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store float %i.ag, ptr %i.ah, align 4, !tbaa !648
  %i.ai = fsub float %i.ag, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store float %i.ai, ptr %i.aj, align 4, !tbaa !649
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5996
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !412, !range !88, !noundef !89
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i8 %i.al, ptr %i.am, align 4, !tbaa !650
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %nk_rgb_factor.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_chart_add_slot(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.c = load i32, ptr %i.a, align 8              ; 5 uses
  %i.d = load i32, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !415  ; 2 uses
  %.not34.i = icmp eq ptr %i.f, null
  br i1 %.not34.i, label %nk_chart_add_slot_colored.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !416  ; 3 uses
  %.not35.i = icmp eq ptr %i.h, null
  br i1 %.not35.i, label %nk_chart_add_slot_colored.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 248 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !651  ; 3 uses
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %nk_chart_add_slot_colored.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 268
  %i.m = add nsw i32 %i.j, 1
end_hunk_8
begin_hunk_9_@nk_plot:bb.a

.lr.ph53:                                         ; preds = %.lr.ph53.preheader, %.lr.ph53
  %indvars.iv56 = phi i64 [ 0, %.lr.ph53.preheader ], [ %indvars.iv.next57, %.lr.ph53 ] ; 2 uses
  %gep68 = getelementptr [4 x i8], ptr %invariant.gep67, i64 %indvars.iv56
  %i.af = load float, ptr %gep68, align 4, !tbaa !54
  %i.ag = tail call range(i32 0, 4) i32 @nk_chart_push_slot(ptr noundef nonnull readonly %0, float noundef %i.af, i32 noundef 0) ; 0 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge54, label %.lr.ph53, !llvm.loop !1211

._crit_edge54:                                    ; preds = %.lr.ph53, %._crit_edge.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !415 ; 2 uses
  %.not6.i = icmp eq ptr %i.ai, null
  br i1 %.not6.i, label %nk_chart_end.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 168
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !416
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 248 ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = and i64 %i.am, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.al, i8 0, i64 196, i1 false), !tbaa !55
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ao = sub nuw nsw i64 4, %i.an                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i8 0, i64 %i.ao, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %i.al, i64 %i.ao ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.an, i1 false), !tbaa !56
  br label %nk_chart_end.exit

nk_chart_end.exit:                                ; preds = %._crit_edge.thread, %.loopexit46.i.i, %.loopexit46.i.thread.i, %._crit_edge54, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_plot_function(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #17 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %4, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %nk_chart_end.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call float %3(ptr noundef %2, i32 noundef %5) #50 ; 4 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.044 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.03743 = phi float [ %i.k, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %.03842 = phi float [ %i.i, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.f = add nsw i32 %.044, %5
  %i.g = tail call float %3(ptr noundef %2, i32 noundef %i.f) #50 ; 4 uses
  %i.h = fcmp olt float %i.g, %.03842
  %i.i = select i1 %i.h, float %i.g, float %.03842 ; 2 uses
  %i.j = fcmp olt float %i.g, %.03743
  %i.k = select i1 %i.j, float %.03743, float %i.g ; 2 uses
  %i.l = add nuw nsw i32 %.044, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1212

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.o = load i32, ptr %i.m, align 8
  %i.p = load i32, ptr %i.n, align 4
  %i.q = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.o, i32 %i.p, i32 noundef %4, float noundef %i.i, float noundef %i.k)
  br i1 %i.q, label %.lr.ph47, label %nk_chart_end.exit

._crit_edge.thread:                               ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5968
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5964
  %i.t = load i32, ptr %i.r, align 8
  %i.u = load i32, ptr %i.s, align 4
  %i.v = tail call noundef zeroext i1 @nk_chart_begin_colored(ptr noundef nonnull readonly %0, i32 noundef %1, i32 %i.t, i32 %i.u, i32 noundef %4, float noundef %i.d, float noundef %i.d)
  br i1 %i.v, label %._crit_edge48, label %nk_chart_end.exit

.lr.ph47:                                         ; preds = %._crit_edge, %.lr.ph47
  %.146 = phi i32 [ %i.z, %.lr.ph47 ], [ 0, %._crit_edge ] ; 2 uses
  %i.w = add nsw i32 %.146, %5
  %i.x = tail call float %3(ptr noundef %2, i32 noundef %i.w) #50
  %i.y = tail call range(i32 0, 4) i32 @nk_chart_push_slot(ptr noundef nonnull readonly %0, float noundef %i.x, i32 noundef 0) ; 0 uses
  %i.z = add nuw nsw i32 %.146, 1                 ; 2 uses
  %exitcond50.not = icmp eq i32 %i.z, %4
  br i1 %exitcond50.not, label %._crit_edge48, label %.lr.ph47, !llvm.loop !1213

._crit_edge48:                                    ; preds = %.lr.ph47, %._crit_edge.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !415 ; 2 uses
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %nk_chart_end.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !416
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 248 ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 3                        ; 3 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %.loopexit46.i.thread.i, label %.loopexit46.i.i

.loopexit46.i.thread.i:                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.ae, i8 0, i64 196, i1 false), !tbaa !55
  br label %nk_chart_end.exit

.loopexit46.i.i:                                  ; preds = %bb.c
  %i.ah = sub nuw nsw i64 4, %i.ag                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i8 0, i64 %i.ah, i1 false), !tbaa !56
  %scevgep.i.i = getelementptr i8, ptr %i.ae, i64 %i.ah ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %scevgep.i.i, i8 0, i64 192, i1 false), !tbaa !55
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 192
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep53.i.i, i8 0, i64 %i.ag, i1 false), !tbaa !56
  br label %nk_chart_end.exit

nk_chart_end.exit:                                ; preds = %._crit_edge.thread, %.loopexit46.i.i, %.loopexit46.i.thread.i, %._crit_edge48, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_color_pick(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_do_color_picker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 15 uses
  %.not27 = icmp eq ptr %i.b, null
  br i1 %.not27, label %nk_do_color_picker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416  ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %nk_do_color_picker.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = call i32 @nk_widget(ptr noundef nonnull %3, ptr noundef nonnull %0)
  switch i32 %i.h, label %bb.f [
    i32 0, label %nk_do_color_picker.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not29 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not29, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ] ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 21 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !414  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %nk_do_color_picker.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8      ; 5 uses
  %i.r = load <2 x float>, ptr %3, align 8        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !140 ; 5 uses
  %.sroa.0152.0.vec.extract.i = extractelement <2 x float> %i.r, i64 0 ; 3 uses
  %.sroa.0152.4.vec.extract163.i = extractelement <2 x float> %i.r, i64 1 ; 3 uses
  %i.u = fadd <2 x float> %i.r, zeroinitializer   ; 11 uses
  %i.v = extractelement <2 x float> %i.u, i64 1   ; 9 uses
  %.sroa.10.8.vec.extract166.i = extractelement <2 x float> %i.q, i64 0
  %.sroa.10.12.vec.extract.i = extractelement <2 x float> %i.q, i64 1 ; 8 uses
  %i.w = fmul float %i.t, 2.000000e+00
  %i.x = fadd float %i.w, 0.000000e+00
  %i.y = fsub float %.sroa.10.8.vec.extract166.i, %i.x ; 2 uses
  %.sroa.12.8.vec.insert.i = insertelement <2 x float> %i.q, float %i.y, i64 0 ; 5 uses
  %.sroa.20.8.vec.insert.i = insertelement <2 x float> poison, float %i.t, i64 0
  %.sroa.20.12.vec.insert.i = insertelement <2 x float> %i.q, float %i.t, i64 0 ; 3 uses
  %i.z = extractelement <2 x float> %i.u, i64 0
  %i.aa = fadd float %i.z, %i.y                   ; 6 uses
  %i.ab = insertelement <2 x float> poison, float %i.aa, i64 0 ; 3 uses
  %i.ac = insertelement <2 x float> %i.u, float %i.aa, i64 0
  %i.ad = fadd float %i.t, %i.aa                  ; 4 uses
  %i.ae = insertelement <2 x float> %i.u, float %i.ad, i64 0 ; 2 uses
  %.not169.i = icmp eq i32 %2, 1                  ; 2 uses
  %i.af = load <2 x float>, ptr %1, align 4       ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.ag, align 4    ; 4 uses
  %.sroa.0.4.vec.extract.i.i.i.i = extractelement <2 x float> %i.af, i64 1
  %.sroa.18.8.vec.extract.i.i.i.i = extractelement <2 x float> %i.ah, i64 0
  %i.ai = fcmp olt float %.sroa.0.4.vec.extract.i.i.i.i, %.sroa.18.8.vec.extract.i.i.i.i ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i.i = shufflevector <2 x float> %i.af, <2 x float> %i.ah, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i.i = shufflevector <2 x float> %i.ah, <2 x float> %i.af, <2 x i32> <i32 3, i32 1>
  %.0.i.i.i.i = select i1 %i.ai, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i.i = select i1 %i.ai, <2 x float> %.sroa.0.4.vec.insert.i.i.i.i, <2 x float> %i.af ; 4 uses
  %.sroa.18.0.i.i.i.i = select i1 %i.ai, <2 x float> %.sroa.18.8.vec.insert.i.i.i.i, <2 x float> %i.ah ; 3 uses
  %.sroa.0.0.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i.i = extractelement <2 x float> %.sroa.0.0.i.i.i.i, i64 1
  %i.aj = fcmp olt float %.sroa.0.0.vec.extract.i.i.i.i, %.sroa.0.4.vec.extract27.i.i.i.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i.i = shufflevector <2 x float> %.sroa.0.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = fsub float f0xBEAAAAAB, %.0.i.i.i.i
  %.1.i.i.i.i = select i1 %i.aj, float %i.ak, float %.0.i.i.i.i
  %.sroa.0.1.i.i.i.i = select i1 %i.aj, <2 x float> %.sroa.0.4.vec.insert31.i.i.i.i, <2 x float> %.sroa.0.0.i.i.i.i ; 4 uses
  %.sroa.0.0.vec.extract18.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 0
  %.sroa.0.4.vec.extract33.i.i.i.i = extractelement <2 x float> %.sroa.0.1.i.i.i.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i.i, i64 0 ; 2 uses
  %i.al = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i.i, %.sroa.18.8.vec.extract46.i.i.i.i
  %i.am = select i1 %i.al, float %.sroa.0.4.vec.extract33.i.i.i.i, float %.sroa.18.8.vec.extract46.i.i.i.i
  %i.an = shufflevector <2 x float> %.sroa.18.0.i.i.i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ao = insertelement <2 x float> %i.an, float %i.am, i64 0
  %i.ap = fsub <2 x float> %.sroa.0.1.i.i.i.i, %i.ao ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 6.000000e+00, float f0x1E3CE508)
  %i.as = fadd float %.sroa.0.0.vec.extract18.i.i.i.i, f0x1E3CE508
  %i.at = insertelement <2 x float> poison, float %i.as, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.ar, i64 1
  %i.av = fdiv <2 x float> %i.ap, %i.au           ; 2 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1
  %i.ax = fadd float %.1.i.i.i.i, %i.aw           ; 3 uses
  %i.ay = fcmp olt float %i.ax, 0.000000e+00
  %i.az = fneg float %i.ax
  %i.ba = select i1 %i.ay, float %i.az, float %i.ax
  %.sroa.18.12.vec.extract.i.i.i.i = extractelement <2 x float> %.sroa.18.0.i.i.i.i, i64 1 ; 2 uses
  %i.bb = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.u, <2 x float> %.sroa.12.8.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  %i.bc = shufflevector <2 x float> %i.av, <2 x float> %.sroa.0.1.i.i.i.i, <2 x i32> <i32 0, i32 2>
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 356
  %i.be = fadd <2 x float> %.sroa.12.8.vec.insert.i, splat (float -1.000000e+00)
  %i.bf = load <2 x float>, ptr %i.bd, align 4, !tbaa !54
  %i.bg = fsub <2 x float> %i.bf, %i.u
  %i.bh = fdiv <2 x float> %i.bg, %i.be           ; 3 uses
  %i.bi = fcmp ule <2 x float> %i.bh, zeroinitializer
  %i.bj = fcmp ogt <2 x float> %i.bh, splat (float 1.000000e+00)
  %i.bk = select <2 x i1> %i.bj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bh ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 1
  %i.bm = fsub float 1.000000e+00, %i.bl
  %i.bn = insertelement <2 x float> %i.bk, float %i.bm, i64 1
  %i.bo = select <2 x i1> %i.bi, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %i.bn
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi i8 [ 1, %bb.h ], [ 0, %bb.g ]
  %i.bp = phi <2 x float> [ %i.bo, %bb.h ], [ %i.bc, %bb.g ] ; 5 uses
  %i.bq = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.ac, <2 x float> %.sroa.20.12.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  br i1 %i.bq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.bs = load float, ptr %i.br, align 4, !tbaa !392
  %i.bt = fsub float %i.bs, %i.v
  %i.bu = fadd float %.sroa.10.12.vec.extract.i, -1.000000e+00
  %i.bv = fdiv float %i.bt, %i.bu                 ; 3 uses
  %i.bw = fcmp ogt float %i.bv, 1.000000e+00
  %i.bx = fcmp ule float %i.bv, 0.000000e+00      ; 2 uses
  %brmerge10.i.i = or i1 %i.bx, %i.bw
  %.mux11.i.i = select i1 %i.bx, float 0.000000e+00, float 1.000000e+00
  br i1 %brmerge10.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.0.0.i.i = phi float [ %i.ba, %bb.i ], [ %.mux11.i.i, %bb.j ], [ %i.bv, %bb.k ]
  %.1.i.i = phi i8 [ %.0.i.i, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ] ; 3 uses
  br i1 %.not169.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.by = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %i.m, <2 x float> %i.ae, <2 x float> %.sroa.20.12.vec.insert.i, ptr noundef readonly %i.l, i32 noundef 1)
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !392
  %i.cb = fsub float %i.ca, %i.v
  %i.cc = fadd float %.sroa.10.12.vec.extract.i, -1.000000e+00
  %i.cd = fdiv float %i.cb, %i.cc                 ; 3 uses
  %i.ce = fcmp ogt float %i.cd, 1.000000e+00
  %i.cf = fcmp ule float %i.cd, 0.000000e+00
  %.mux13.i.i = select i1 %i.ce, float 1.000000e+00, float %i.cd
  %i.cg = fsub float 1.000000e+00, %.mux13.i.i
  %i.ch = select i1 %i.cf, float 1.000000e+00, float %i.cg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.11.0.i.i = phi float [ %.sroa.18.12.vec.extract.i.i.i.i, %bb.l ], [ %i.ch, %bb.n ], [ %.sroa.18.12.vec.extract.i.i.i.i, %bb.m ] ; 2 uses
  %.2.i.i = phi i8 [ %.1.i.i, %bb.l ], [ 1, %bb.n ], [ %.1.i.i, %bb.m ]
  %i.ci = load i32, ptr %i.m, align 8, !tbaa !55
  %i.cj = and i32 %i.ci, 2
  %..i.i = or disjoint i32 %i.cj, 4               ; 2 uses
  store i32 %..i.i, ptr %i.m, align 8, !tbaa !55
  %i.ck = trunc nuw i8 %.1.i.i to i1
  br i1 %i.ck, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.cl = extractelement <2 x float> %i.bp, i64 0 ; 3 uses
  %i.cm = fcmp ugt float %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bp, <2 x i32> <i32 3, i32 1>
  %.sroa.0.4.vec.insert.i.i94.i.i = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %nk_hsva_colorfv.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.co = fdiv float %.sroa.0.0.i.i, f0x3E2AAAAB  ; 2 uses
  %i.cp = fptosi float %i.co to i32               ; 2 uses
  %i.cq = sitofp i32 %i.cp to float
  %i.cr = fsub float %i.co, %i.cq                 ; 2 uses
  %i.cs = fsub float 1.000000e+00, %i.cl
  %i.ct = extractelement <2 x float> %i.bp, i64 1 ; 8 uses
  %i.cu = fmul float %i.ct, %i.cs                 ; 6 uses
  %i.cv = fneg float %i.cl
  %i.cw = fsub float 1.000000e+00, %i.cr
  %i.cx = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cz = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cw, i64 1
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.da, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.dc = extractelement <2 x float> %i.db, i64 0
  %i.dd = fmul float %i.ct, %i.dc                 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.bp, %i.db
  %i.de = extractelement <2 x float> %foldExtExtBinop, i64 1 ; 3 uses
  switch i32 %i.cp, label %bb.x [
    i32 5, label %bb.w
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
    i32 4, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sink77.i.i.i.i = phi float [ %i.ct, %bb.w ], [ %i.de, %bb.v ], [ %i.cu, %bb.u ], [ %i.cu, %bb.t ], [ %i.dd, %bb.s ], [ %i.ct, %bb.r ]
  %.sink76.i.i.i.i = phi float [ %i.cu, %bb.w ], [ %i.cu, %bb.v ], [ %i.dd, %bb.u ], [ %i.ct, %bb.t ], [ %i.ct, %bb.s ], [ %i.de, %bb.r ]
  %.sink.i.i.i.i = phi float [ %i.dd, %bb.w ], [ %i.ct, %bb.v ], [ %i.ct, %bb.u ], [ %i.de, %bb.t ], [ %i.cu, %bb.s ], [ %i.cu, %bb.r ]
  %.sroa.0.0.vec.insert48.i.i.i.i = insertelement <2 x float> poison, float %.sink77.i.i.i.i, i64 0
  %.sroa.0.4.vec.insert60.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert48.i.i.i.i, float %.sink76.i.i.i.i, i64 1
  %.sroa.16.8.vec.insert73.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink.i.i.i.i, i64 0
  br label %nk_hsva_colorfv.exit.i.i

nk_hsva_colorfv.exit.i.i:                         ; preds = %bb.x, %bb.q
  %.sroa.16.8.vec.insert73.sink.i.i.i.i = phi <2 x float> [ %.sroa.16.8.vec.insert73.i.i.i.i, %bb.x ], [ %i.cn, %bb.q ]
  %.sroa.0.1.i.i95.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert60.i.i.i.i, %bb.x ], [ %.sroa.0.4.vec.insert.i.i94.i.i, %bb.q ]
  %.sroa.16.12.vec.insert75.i.i.i.i = insertelement <2 x float> %.sroa.16.8.vec.insert73.sink.i.i.i.i, float %.sroa.11.0.i.i, i64 1
  %4 = shufflevector <2 x float> %.sroa.0.1.i.i95.i.i, <2 x float> %.sroa.16.12.vec.insert75.i.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %1, align 4, !tbaa !54
  store i32 34, ptr %i.m, align 8, !tbaa !55
  br label %bb.y

bb.y:                                             ; preds = %nk_hsva_colorfv.exit.i.i, %bb.o
  %i.df = phi i32 [ 34, %nk_hsva_colorfv.exit.i.i ], [ %..i.i, %bb.o ]
  %i.dg = trunc nuw i8 %.2.i.i to i1              ; 3 uses
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %.sroa.11.0.i.i, ptr %i.dh, align 4, !tbaa !1215
  store i32 34, ptr %i.m, align 8, !tbaa !55
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.di = phi i32 [ 34, %bb.z ], [ %i.df, %bb.y ] ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 356
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !391 ; 2 uses
  %i.dl = fcmp ole float %.sroa.0152.0.vec.extract.i, %i.dk
  %foldExtExtBinop45 = fadd <2 x float> %i.q, %i.u
  %i.dm = extractelement <2 x float> %foldExtExtBinop45, i64 0 ; 3 uses
  %i.dn = fcmp olt float %i.dk, %i.dm
  %or.cond.i.i.i = select i1 %i.dl, i1 %i.dn, i1 false
  br i1 %or.cond.i.i.i, label %bb.ac, label %nk_input_is_mouse_hovering_rect.exit.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %i.dp = load float, ptr %i.do, align 4, !tbaa !392 ; 2 uses
  %i.dq = fcmp ole float %.sroa.0152.4.vec.extract163.i, %i.dp
  %i.dr = fadd float %.sroa.10.12.vec.extract.i, %i.v
  %i.ds = fcmp olt float %i.dp, %i.dr
  %or.cond.i.i = select i1 %i.dq, i1 %i.ds, i1 false
  br i1 %or.cond.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread.thread23.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread.i.i

nk_input_is_mouse_hovering_rect.exit.thread.thread23.i.i: ; preds = %bb.ac
  store i32 18, ptr %i.m, align 8, !tbaa !55
  br label %bb.ad

nk_input_is_mouse_hovering_rect.exit.thread.i.i:  ; preds = %bb.ac, %bb.ab
  %i.dt = and i32 %i.di, 16
  %.not90.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not90.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i, label %bb.ad

nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i: ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 364
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !393
  br label %.thread.i.i

nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i: ; preds = %bb.aa
  %i.du = and i32 %i.di, 16
  %.not905.i.i = icmp eq i32 %i.du, 0
  br i1 %.not905.i.i, label %nk_color_picker_behavior.exit.i, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i

bb.ad:                                            ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.i.i, %nk_input_is_mouse_hovering_rect.exit.thread.thread23.i.i
  %i.dv = phi i32 [ 18, %nk_input_is_mouse_hovering_rect.exit.thread.thread23.i.i ], [ %i.di, %nk_input_is_mouse_hovering_rect.exit.thread.i.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.l, i64 364
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !393 ; 3 uses
  %i.dy = fcmp ole float %.sroa.0152.0.vec.extract.i, %i.dx
  %i.dz = fcmp olt float %i.dx, %i.dm
  %or.cond.i99.i.i = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i99.i.i, label %bb.ae, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !394 ; 2 uses
  %i.ec = fcmp ole float %.sroa.0152.4.vec.extract163.i, %i.eb
  %i.ed = fadd float %.sroa.10.12.vec.extract.i, %i.v
  %i.ee = fcmp olt float %i.eb, %i.ed
  %or.cond16.i.i = select i1 %i.ec, i1 %i.ee, i1 false
  br i1 %or.cond16.i.i, label %.thread.i.i, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i

nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i: ; preds = %bb.ae, %bb.ad, %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i
  %i.ef = phi i32 [ %i.di, %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i ], [ %i.dv, %bb.ad ], [ %i.dv, %bb.ae ]
  %i.eg = or i32 %i.ef, 8
  br label %nk_input_is_mouse_prev_hovering_rect.exit110.thread.sink.split.i.i

.thread.i.i:                                      ; preds = %bb.ae, %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i
  %i.eh = phi i32 [ %i.di, %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i ], [ %i.dv, %bb.ae ]
  %i.ei = phi float [ %.pre.i.i, %nk_input_is_mouse_hovering_rect.exit.thread..thread_crit_edge.i.i ], [ %i.dx, %bb.ae ] ; 2 uses
  %i.ej = fcmp ole float %.sroa.0152.0.vec.extract.i, %i.ei
  %i.ek = fcmp olt float %i.ei, %i.dm
  %or.cond.i106.i.i = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond.i106.i.i, label %bb.af, label %nk_color_picker_behavior.exit.i

bb.af:                                            ; preds = %.thread.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  %i.em = load float, ptr %i.el, align 4, !tbaa !394 ; 2 uses
  %i.en = fcmp ole float %.sroa.0152.4.vec.extract163.i, %i.em
  %i.eo = fadd float %.sroa.10.12.vec.extract.i, %i.v
  %i.ep = fcmp olt float %i.em, %i.eo
  %or.cond18.i.i = select i1 %i.en, i1 %i.ep, i1 false
  br i1 %or.cond18.i.i, label %bb.ag, label %nk_color_picker_behavior.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.eq = or i32 %i.eh, 64
  br label %nk_input_is_mouse_prev_hovering_rect.exit110.thread.sink.split.i.i

nk_input_is_mouse_prev_hovering_rect.exit110.thread.sink.split.i.i: ; preds = %bb.ag, %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i
  %.sink.i.i = phi i32 [ %i.eq, %bb.ag ], [ %i.eg, %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i ]
  store i32 %.sink.i.i, ptr %i.m, align 8, !tbaa !55
  br label %nk_color_picker_behavior.exit.i

nk_color_picker_behavior.exit.i:                  ; preds = %nk_input_is_mouse_prev_hovering_rect.exit110.thread.sink.split.i.i, %bb.af, %.thread.i.i, %nk_input_is_mouse_hovering_rect.exit.thread.thread.i.i
  %i.er = load <2 x float>, ptr %1, align 4       ; 4 uses
  %i.es = load <2 x float>, ptr %i.ag, align 4    ; 4 uses
  %i.et = fdiv float %.sroa.10.12.vec.extract.i, 6.000000e+00 ; 4 uses
  %i.eu = fadd float %i.et, 5.000000e-01
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> %.sroa.20.8.vec.insert.i, float %i.eu, i64 1 ; 6 uses
  %i.ev = fadd float %i.et, %i.v
  %i.ew = fadd float %i.ev, 5.000000e-01
  %.sroa.0.4.vec.insert.i.1.i.i = insertelement <2 x float> %i.ab, float %i.ew, i64 1
  %i.ex = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ez = shufflevector <2 x float> %i.u, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> <float 0.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, <4 x float> %i.ez) ; 2 uses
  %i.fb = extractelement <4 x float> %i.fa, i64 0
  %i.fc = fadd float %i.fb, 5.000000e-01
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %i.ab, float %i.fc, i64 1
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %.sroa.0.4.vec.insert.i.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -16776961, i32 -16776961, i32 -16711681, i32 -16711681)
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %.sroa.0.4.vec.insert.i.1.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -16711681, i32 -16711681, i32 -16711936, i32 -16711936)
  %i.fd = tail call float @llvm.fmuladd.f32(float %i.et, float 5.000000e+00, float %i.v)
  %i.fe = insertelement <4 x float> %i.fa, float %i.fd, i64 0
  %i.ff = fadd <4 x float> %i.fe, splat (float 5.000000e-01) ; 4 uses
  %i.fg = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> %i.ff, <2 x i32> <i32 0, i32 5>
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.fh, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -16711936, i32 -16711936, i32 -256, i32 -256)
  %i.fi = shufflevector <4 x float> %i.ff, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.fj = insertelement <2 x float> %i.fi, float %i.aa, i64 0
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.fj, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -256, i32 -256, i32 -65536, i32 -65536)
  %i.fk = shufflevector <4 x float> %i.ff, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.fl = insertelement <2 x float> %i.fk, float %i.aa, i64 0
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.fl, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -65536, i32 -65536, i32 -65281, i32 -65281)
  %i.fm = shufflevector <4 x float> %i.fg, <4 x float> %i.ff, <2 x i32> <i32 0, i32 4>
  tail call void @nk_fill_rect_multi_color(ptr noundef nonnull %i.n, <2 x float> %i.fm, <2 x float> %.sroa.3.12.vec.insert.i.i.i, i32 -65281, i32 -65281, i32 -16776961, i32 -16776961)
  %.sroa.0.4.vec.extract.i.i.i37.i = extractelement <2 x float> %i.er, i64 1
  %.sroa.18.8.vec.extract.i.i.i38.i = extractelement <2 x float> %i.es, i64 0
  %i.fn = fcmp olt float %.sroa.0.4.vec.extract.i.i.i37.i, %.sroa.18.8.vec.extract.i.i.i38.i ; 3 uses
  %.sroa.0.4.vec.insert.i.i.i39.i = shufflevector <2 x float> %i.er, <2 x float> %i.es, <2 x i32> <i32 0, i32 2>
  %.sroa.18.8.vec.insert.i.i.i40.i = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.0.i.i.i41.i = select i1 %i.fn, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %.sroa.0.0.i.i.i42.i = select i1 %i.fn, <2 x float> %.sroa.0.4.vec.insert.i.i.i39.i, <2 x float> %i.er ; 4 uses
  %.sroa.18.0.i.i.i43.i = select i1 %i.fn, <2 x float> %.sroa.18.8.vec.insert.i.i.i40.i, <2 x float> %i.es ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i44.i = extractelement <2 x float> %.sroa.0.0.i.i.i42.i, i64 0
  %.sroa.0.4.vec.extract27.i.i.i45.i = extractelement <2 x float> %.sroa.0.0.i.i.i42.i, i64 1
  %i.fo = fcmp olt float %.sroa.0.0.vec.extract.i.i.i44.i, %.sroa.0.4.vec.extract27.i.i.i45.i ; 2 uses
  %.sroa.0.4.vec.insert31.i.i.i46.i = shufflevector <2 x float> %.sroa.0.0.i.i.i42.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fp = fsub float f0xBEAAAAAB, %.0.i.i.i41.i
  %.1.i.i.i47.i = select i1 %i.fo, float %i.fp, float %.0.i.i.i41.i
  %.sroa.0.1.i.i.i48.i = select i1 %i.fo, <2 x float> %.sroa.0.4.vec.insert31.i.i.i46.i, <2 x float> %.sroa.0.0.i.i.i42.i ; 3 uses
  %.sroa.0.0.vec.extract18.i.i.i49.i = extractelement <2 x float> %.sroa.0.1.i.i.i48.i, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract33.i.i.i50.i = extractelement <2 x float> %.sroa.0.1.i.i.i48.i, i64 1 ; 2 uses
  %.sroa.18.8.vec.extract46.i.i.i51.i = extractelement <2 x float> %.sroa.18.0.i.i.i43.i, i64 0 ; 2 uses
  %i.fq = fcmp olt float %.sroa.0.4.vec.extract33.i.i.i50.i, %.sroa.18.8.vec.extract46.i.i.i51.i
  %i.fr = select i1 %i.fq, float %.sroa.0.4.vec.extract33.i.i.i50.i, float %.sroa.18.8.vec.extract46.i.i.i51.i
  %i.fs = shufflevector <2 x float> %.sroa.18.0.i.i.i43.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ft = insertelement <2 x float> %i.fs, float %i.fr, i64 0
  %i.fu = fsub <2 x float> %.sroa.0.1.i.i.i48.i, %i.ft ; 2 uses
  %i.fv = extractelement <2 x float> %i.fu, i64 0
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fv, float 6.000000e+00, float f0x1E3CE508)
  %i.fx = fadd float %.sroa.0.0.vec.extract18.i.i.i49.i, f0x1E3CE508
  %i.fy = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fw, i64 1
  %i.ga = fdiv <2 x float> %i.fu, %i.fz           ; 2 uses
  %i.gb = extractelement <2 x float> %i.ga, i64 1
  %i.gc = fadd float %.1.i.i.i47.i, %i.gb         ; 3 uses
  %i.gd = fcmp olt float %i.gc, 0.000000e+00
  %i.ge = fneg float %i.gc
  %i.gf = select i1 %i.gd, float %i.ge, float %i.gc ; 2 uses
  %i.gg = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.gh = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.gg, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 12 uses
  %.not.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i, label %nk_stroke_line.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %nk_color_picker_behavior.exit.i
  %i.gi = fadd float %i.ad, 2.000000e+00
  %i.gj = fadd float %i.aa, -1.000000e+00
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gf, float %.sroa.10.12.vec.extract.i, float %i.v)
  %i.gl = fadd float %i.gk, 5.000000e-01
  %i.gm = fptosi float %i.gl to i32
  %i.gn = load ptr, ptr %i.n, align 8, !tbaa !99  ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !69
  %i.gq = ptrtoint ptr %i.gh to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !100
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gh, i64 39
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = and i64 %i.gw, -8
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = sub i64 %i.gx, %i.gy
  store i32 2, ptr %i.gh, align 8, !tbaa !102
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !77
end_hunk_9
begin_hunk_10_@nk_color_pick:bb.a
  %.not.i.i80.i.i = icmp eq ptr %i.kp, null
  br i1 %.not.i.i80.i.i, label %nk_stroke_line.exit81.i.i, label %bb.ap

bb.ap:                                            ; preds = %nk_hsv_f.exit.i.i
  %i.kq = fadd float %i.kk, -2.000000e+00
  %i.kr = fadd float %i.kk, -7.000000e+00
  %i.ks = load ptr, ptr %i.n, align 8, !tbaa !99  ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 64
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !69
  %i.kv = ptrtoint ptr %i.kp to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !100
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 39
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = and i64 %i.lb, -8
  %i.ld = ptrtoint ptr %i.kz to i64
  %i.le = sub i64 %i.lc, %i.ld
  store i32 2, ptr %i.kp, align 8, !tbaa !102
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ks, i64 88
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !77
  %i.lh = add i64 %i.lg, %i.le                    ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i64 %i.lh, ptr %i.li, align 8, !tbaa !103
  %i.lj = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.lh, ptr %i.lj, align 8, !tbaa !104
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store i16 1, ptr %i.lk, align 8, !tbaa !177
  %i.ll = fptosi float %i.kr to i16
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kp, i64 18
  store i16 %i.ll, ptr %i.lm, align 2, !tbaa !1216
  %i.ln = trunc i32 %i.km to i16                  ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kp, i64 20
  store i16 %i.ln, ptr %i.lo, align 4, !tbaa !1217
  %i.lp = fptosi float %i.kq to i16
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kp, i64 22
  store i16 %i.lp, ptr %i.lq, align 2, !tbaa !1218
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  store i16 %i.ln, ptr %i.lr, align 8, !tbaa !110
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kp, i64 26
  store i32 -1, ptr %i.ls, align 2, !tbaa !56
  br label %nk_stroke_line.exit81.i.i

nk_stroke_line.exit81.i.i:                        ; preds = %bb.ap, %nk_hsv_f.exit.i.i
  %i.lt = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.lu = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.lt, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 12 uses
  %.not.i.i82.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i82.i.i, label %nk_stroke_line.exit83.i.i, label %bb.aq

bb.aq:                                            ; preds = %nk_stroke_line.exit81.i.i
  %i.lv = fadd float %i.kk, 3.000000e+00
  %i.lw = fadd float %i.kk, 7.000000e+00
  %i.lx = fadd float %i.lw, 1.000000e+00
  %i.ly = load ptr, ptr %i.n, align 8, !tbaa !99  ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 64
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !69
  %i.mb = ptrtoint ptr %i.lu to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.md, ptr %i.me, align 8, !tbaa !100
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lu, i64 39
  %i.mh = ptrtoint ptr %i.mg to i64
  %i.mi = and i64 %i.mh, -8
  %i.mj = ptrtoint ptr %i.mf to i64
  %i.mk = sub i64 %i.mi, %i.mj
  store i32 2, ptr %i.lu, align 8, !tbaa !102
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ly, i64 88
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !77
  %i.mn = add i64 %i.mm, %i.mk                    ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i64 %i.mn, ptr %i.mo, align 8, !tbaa !103
  %i.mp = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.mn, ptr %i.mp, align 8, !tbaa !104
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i16 1, ptr %i.mq, align 8, !tbaa !177
  %i.mr = fptosi float %i.lx to i16
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lu, i64 18
  store i16 %i.mr, ptr %i.ms, align 2, !tbaa !1216
  %i.mt = trunc i32 %i.km to i16                  ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  store i16 %i.mt, ptr %i.mu, align 4, !tbaa !1217
  %i.mv = fptosi float %i.lv to i16
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lu, i64 22
  store i16 %i.mv, ptr %i.mw, align 2, !tbaa !1218
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store i16 %i.mt, ptr %i.mx, align 8, !tbaa !110
  %i.my = getelementptr inbounds nuw i8, ptr %i.lu, i64 26
  store i32 -1, ptr %i.my, align 2, !tbaa !56
  br label %nk_stroke_line.exit83.i.i

nk_stroke_line.exit83.i.i:                        ; preds = %bb.aq, %nk_stroke_line.exit81.i.i
  %i.mz = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.na = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.mz, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 12 uses
  %.not.i.i84.i.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i84.i.i, label %nk_stroke_line.exit85.i.i, label %bb.ar

bb.ar:                                            ; preds = %nk_stroke_line.exit83.i.i
  %i.nb = fadd float %i.kn, 3.000000e+00
  %i.nc = fadd float %i.kn, 7.000000e+00
  %i.nd = fadd float %i.nc, 1.000000e+00
  %i.ne = load ptr, ptr %i.n, align 8, !tbaa !99  ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 64
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !69
  %i.nh = ptrtoint ptr %i.na to i64
  %i.ni = ptrtoint ptr %i.ng to i64
  %i.nj = sub i64 %i.nh, %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.nj, ptr %i.nk, align 8, !tbaa !100
  %i.nl = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.na, i64 39
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = and i64 %i.nn, -8
  %i.np = ptrtoint ptr %i.nl to i64
  %i.nq = sub i64 %i.no, %i.np
  store i32 2, ptr %i.na, align 8, !tbaa !102
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ne, i64 88
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !77
  %i.nt = add i64 %i.ns, %i.nq                    ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store i64 %i.nt, ptr %i.nu, align 8, !tbaa !103
  %i.nv = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.nt, ptr %i.nv, align 8, !tbaa !104
  %i.nw = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store i16 1, ptr %i.nw, align 8, !tbaa !177
  %i.nx = trunc i32 %i.kj to i16                  ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.na, i64 18
  store i16 %i.nx, ptr %i.ny, align 2, !tbaa !1216
  %i.nz = fptosi float %i.nd to i16
  %i.oa = getelementptr inbounds nuw i8, ptr %i.na, i64 20
  store i16 %i.nz, ptr %i.oa, align 4, !tbaa !1217
  %i.ob = getelementptr inbounds nuw i8, ptr %i.na, i64 22
  store i16 %i.nx, ptr %i.ob, align 2, !tbaa !1218
  %i.oc = fptosi float %i.nb to i16
  %i.od = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  store i16 %i.oc, ptr %i.od, align 8, !tbaa !110
  %i.oe = getelementptr inbounds nuw i8, ptr %i.na, i64 26
  store i32 -1, ptr %i.oe, align 2, !tbaa !56
  br label %nk_stroke_line.exit85.i.i

nk_stroke_line.exit85.i.i:                        ; preds = %bb.ar, %nk_stroke_line.exit83.i.i
  %i.of = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.og = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.of, i32 noundef 0, i64 noundef 32, i64 noundef 8) ; 12 uses
  %.not.i.i86.i.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i86.i.i, label %nk_do_color_picker.exit, label %bb.as

bb.as:                                            ; preds = %nk_stroke_line.exit85.i.i
  %i.oh = fadd float %i.kn, -2.000000e+00
  %i.oi = fadd float %i.kn, -7.000000e+00
  %i.oj = load ptr, ptr %i.n, align 8, !tbaa !99  ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 64
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !69
  %i.om = ptrtoint ptr %i.og to i64
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = sub i64 %i.om, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.oo, ptr %i.op, align 8, !tbaa !100
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %i.or = getelementptr inbounds nuw i8, ptr %i.og, i64 39
  %i.os = ptrtoint ptr %i.or to i64
  %i.ot = and i64 %i.os, -8
  %i.ou = ptrtoint ptr %i.oq to i64
  %i.ov = sub i64 %i.ot, %i.ou
  store i32 2, ptr %i.og, align 8, !tbaa !102
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oj, i64 88
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !77
  %i.oy = add i64 %i.ox, %i.ov                    ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store i64 %i.oy, ptr %i.oz, align 8, !tbaa !103
  %i.pa = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 %i.oy, ptr %i.pa, align 8, !tbaa !104
  %i.pb = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  store i16 1, ptr %i.pb, align 8, !tbaa !177
  %i.pc = trunc i32 %i.kj to i16                  ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.og, i64 18
  store i16 %i.pc, ptr %i.pd, align 2, !tbaa !1216
  %i.pe = fptosi float %i.oi to i16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.og, i64 20
  store i16 %i.pe, ptr %i.pf, align 4, !tbaa !1217
  %i.pg = getelementptr inbounds nuw i8, ptr %i.og, i64 22
  store i16 %i.pc, ptr %i.pg, align 2, !tbaa !1218
  %i.ph = fptosi float %i.oh to i16
  %i.pi = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  store i16 %i.ph, ptr %i.pi, align 8, !tbaa !110
  %i.pj = getelementptr inbounds nuw i8, ptr %i.og, i64 26
  store i32 -1, ptr %i.pj, align 2, !tbaa !56
  br label %nk_do_color_picker.exit

nk_do_color_picker.exit:                          ; preds = %bb.as, %nk_stroke_line.exit85.i.i, %bb.f, %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.f ], [ %i.dg, %nk_stroke_line.exit85.i.i ], [ %i.dg, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define { <2 x float>, <2 x float> } @nk_color_picker(ptr nofree noundef captures(address) %0, <2 x float> %1, <2 x float> %2, i32 noundef %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_colorf, align 16         ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = shufflevector <2 x float> %1, <2 x float> %2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %6, ptr %4, align 16
  %i.a = call zeroext i1 @nk_color_pick(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %3) ; 0 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %4, align 16, !tbaa !54
  %.sroa.2.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !54
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_text(ptr noundef %0, ptr noundef %1, i32 noundef %2, <2 x float> %3) local_unnamed_addr #20 {
bb.a:
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  %5 = alloca %struct.nk_text, align 8            ; 9 uses
  %6 = alloca %struct.nk_rect, align 4            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_combo_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !415  ; 13 uses
  %.not99 = icmp eq ptr %i.b, null
  br i1 %.not99, label %nk_combo_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %nk_combo_begin.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.h = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull %0) ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %nk_combo_begin.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !488
  %i.m = and i32 %i.l, 4096
  %i.n = icmp ne i32 %i.m, 0
  %i.o = icmp ne i32 %i.h, 1
  %or.cond5 = or i1 %i.o, %i.n
  %i.p = select i1 %or.cond5, ptr null, ptr %0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 4 uses
  %i.r = load <2 x float>, ptr %4, align 8        ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load <2 x float>, ptr %i.s, align 8      ; 11 uses
  %i.u = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef %i.q, <2 x float> %i.r, <2 x float> %i.t, ptr noundef %i.p, i32 noundef 0) ; 3 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !460  ; 2 uses
  %i.w = and i32 %i.v, 32
  %.not100 = icmp eq i32 %i.w, 0                  ; 2 uses
  %i.x = extractelement <2 x float> %i.t, i64 1   ; 2 uses
  %i.y = extractelement <2 x float> %i.t, i64 0
  %i.z = extractelement <2 x float> %i.r, i64 1
  %i.aa = and i32 %i.v, 16
  %.not101 = icmp eq i32 %i.aa, 0                 ; 2 uses
  %.186 = select i1 %.not101, i64 8464, i64 8504
  %.187 = select i1 %.not101, i64 8588, i64 8592
  %.sink185 = select i1 %.not100, i64 %.186, i64 8544
  %.sink184 = select i1 %.not100, i64 %.187, i64 8596
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %.sink185 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.sink184
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !56 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8876 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !570 ; 9 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.ad, 8  ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.ad, 16 ; 2 uses
  %i.ah = fcmp oeq float %i.ag, 1.000000e+00      ; 4 uses
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.7.0.extract.trunc.i = trunc i32 %.sroa.7.0.extract.shift.i to i8
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.ad to i8
  br label %nk_rgb_factor.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = and i32 %i.ad, 255
  %i.aj = uitofp nneg i32 %i.ai to float
  %i.ak = fmul float %i.ag, %i.aj
  %i.al = fptoui float %i.ak to i8
  %i.am = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.an = uitofp nneg i32 %i.am to float
  %i.ao = fmul float %i.ag, %i.an
  %i.ap = fptoui float %i.ao to i8
  %i.aq = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fmul float %i.ag, %i.ar
  %i.at = fptoui float %i.as to i8
  br label %nk_rgb_factor.exit

nk_rgb_factor.exit:                               ; preds = %bb.f, %bb.g
  %.sroa.3.0.i = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.f ], [ %i.ap, %bb.g ]
  %.sroa.011.0.i = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.f ], [ %i.al, %bb.g ]
  %.sroa.512.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.f ], [ %i.at, %bb.g ]
  %.sroa.9.0.extract.shift.i = and i32 %i.ad, -16777216
  %.sroa.512.0.insert.ext.i = zext i8 %.sroa.512.0.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.512.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i = zext i8 %.sroa.3.0.i to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %.sroa.011.0.insert.ext.i = zext i8 %.sroa.011.0.i to i32
  %.sroa.011.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %.sroa.011.0.insert.ext.i
  store i32 %.sroa.011.0.insert.insert.i, ptr %i.ae, align 4, !tbaa !56
  %i.au = load i32, ptr %i.ab, align 8, !tbaa !413
  switch i32 %i.au, label %bb.m [
    i32 1, label %nk_rgb_factor.exit117
    i32 2, label %nk_rgb_factor.exit129
    i32 0, label %bb.h
  ]

nk_rgb_factor.exit117:                            ; preds = %nk_rgb_factor.exit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ay = fmul float %i.ag, 2.550000e+02
  %i.az = fptoui float %i.ay to i8
  %i.ba = zext i8 %i.az to i32
  %.sroa.512.0.insert.ext.i109 = select i1 %i.ah, i32 255, i32 %i.ba ; 3 uses
  %.sroa.512.0.insert.shift.i110 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i109, 16
  %.sroa.3.0.insert.shift.i113 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i109, 8
  %.sroa.512.0.insert.insert.i111 = or disjoint i32 %.sroa.512.0.insert.shift.i110, %.sroa.3.0.insert.shift.i113
  %.sroa.3.0.insert.insert.i114 = or disjoint i32 %.sroa.512.0.insert.insert.i111, %.sroa.512.0.insert.ext.i109
  %.sroa.011.0.insert.insert.i116 = or disjoint i32 %.sroa.3.0.insert.insert.i114, -16777216
  tail call void @nk_draw_image(ptr noundef nonnull %i.aw, <2 x float> %i.r, <2 x float> %i.t, ptr noundef nonnull %i.ax, i32 %.sroa.011.0.insert.insert.i116)
  br label %bb.m

nk_rgb_factor.exit129:                            ; preds = %nk_rgb_factor.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.bb, align 8, !tbaa !56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.be = fmul float %i.ag, 2.550000e+02
  %i.bf = fptoui float %i.be to i8
  %i.bg = zext i8 %i.bf to i32
  %.sroa.512.0.insert.ext.i121 = select i1 %i.ah, i32 255, i32 %i.bg ; 3 uses
  %.sroa.512.0.insert.shift.i122 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i121, 16
  %.sroa.3.0.insert.shift.i125 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i121, 8
  %.sroa.512.0.insert.insert.i123 = or disjoint i32 %.sroa.512.0.insert.shift.i122, %.sroa.3.0.insert.shift.i125
  %.sroa.3.0.insert.insert.i126 = or disjoint i32 %.sroa.512.0.insert.insert.i123, %.sroa.512.0.insert.ext.i121
  %.sroa.011.0.insert.insert.i128 = or disjoint i32 %.sroa.3.0.insert.insert.i126, -16777216
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.bc, <2 x float> %i.r, <2 x float> %i.t, ptr noundef nonnull %i.bd, i32 %.sroa.011.0.insert.insert.i128)
  br label %bb.m

bb.h:                                             ; preds = %nk_rgb_factor.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !56 ; 6 uses
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8848 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !652
  %.sroa.5.0.extract.shift.i130 = lshr i32 %i.bj, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i131 = lshr i32 %i.bj, 16 ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.7.0.extract.trunc.i144 = trunc i32 %.sroa.7.0.extract.shift.i131 to i8
  %.sroa.5.0.extract.trunc.i145 = trunc i32 %.sroa.5.0.extract.shift.i130 to i8
  %.sroa.0.0.extract.trunc.i146 = trunc i32 %i.bj to i8
  br label %nk_rgb_factor.exit147

bb.j:                                             ; preds = %bb.h
  %i.bn = and i32 %i.bj, 255
  %i.bo = uitofp nneg i32 %i.bn to float
  %i.bp = fmul float %i.ag, %i.bo
  %i.bq = fptoui float %i.bp to i8
  %i.br = and i32 %.sroa.5.0.extract.shift.i130, 255
  %i.bs = uitofp nneg i32 %i.br to float
  %i.bt = fmul float %i.ag, %i.bs
  %i.bu = fptoui float %i.bt to i8
  %i.bv = and i32 %.sroa.7.0.extract.shift.i131, 255
  %i.bw = uitofp nneg i32 %i.bv to float
  %i.bx = fmul float %i.ag, %i.bw
  %i.by = fptoui float %i.bx to i8
  br label %nk_rgb_factor.exit147

nk_rgb_factor.exit147:                            ; preds = %bb.i, %bb.j
  %.sroa.3.0.i132 = phi i8 [ %.sroa.5.0.extract.trunc.i145, %bb.i ], [ %i.bu, %bb.j ]
  %.sroa.011.0.i133 = phi i8 [ %.sroa.0.0.extract.trunc.i146, %bb.i ], [ %i.bq, %bb.j ]
  %.sroa.512.0.i134 = phi i8 [ %.sroa.7.0.extract.trunc.i144, %bb.i ], [ %i.by, %bb.j ]
  %.sroa.9.0.extract.shift.i135 = and i32 %i.bj, -16777216
  %.sroa.512.0.insert.ext.i136 = zext i8 %.sroa.512.0.i134 to i32
  %.sroa.512.0.insert.shift.i137 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i136, 16
  %.sroa.512.0.insert.insert.i138 = or disjoint i32 %.sroa.512.0.insert.shift.i137, %.sroa.9.0.extract.shift.i135
  %.sroa.3.0.insert.ext.i139 = zext i8 %.sroa.3.0.i132 to i32
  %.sroa.3.0.insert.shift.i140 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i139, 8
  %.sroa.3.0.insert.insert.i141 = or disjoint i32 %.sroa.512.0.insert.insert.i138, %.sroa.3.0.insert.shift.i140
  %.sroa.011.0.insert.ext.i142 = zext i8 %.sroa.011.0.i133 to i32
  %.sroa.011.0.insert.insert.i143 = or disjoint i32 %.sroa.3.0.insert.insert.i141, %.sroa.011.0.insert.ext.i142
  tail call void @nk_fill_rect(ptr noundef nonnull %i.bk, <2 x float> %i.r, <2 x float> %i.t, float noundef %i.bm, i32 %.sroa.011.0.insert.insert.i143)
  %i.bz = load float, ptr %i.bl, align 8, !tbaa !652
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8844
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !653
end_hunk_10
