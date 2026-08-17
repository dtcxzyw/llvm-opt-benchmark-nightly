inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.nk_rect = type { float, float, float, float }
%struct.nk_color = type { i8, i8, i8, i8 }
%struct.nk_image = type { %union.nk_handle, i16, i16, [4 x i16] }
%union.nk_handle = type { ptr }
%struct.nk_vec2 = type { float, float }
%struct.nk_user_font_glyph = type { [2 x %struct.nk_vec2], %struct.nk_vec2, float, float, float }
%struct.stbtt__csctx = type { i32, i32, float, float, float, float, i32, i32, i32, i32, ptr, i32 }
%struct.stbtt__bitmap = type { i32, i32, i32, ptr }
%struct.stbtt_fontinfo = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf, %struct.stbtt__buf }
%struct.stbtt__buf = type { ptr, i32, i32 }
%struct.stbtt_pack_range = type { float, i32, ptr, i32, ptr, i8, i8 }
%struct.nk_font_config = type { ptr, ptr, i64, i8, i8, i8, i8, i8, [3 x i8], float, i32, %struct.nk_vec2, ptr, ptr, i32, ptr, ptr }
%struct.nk_baked_font = type { float, float, float, i32, i32, ptr }
%struct.stbrp_rect = type { i32, i32, i32, i32, i32, i32 }
%struct.nk_style_item = type { i32, %union.nk_style_item_data }
%union.nk_style_item_data = type { %struct.nk_nine_slice }
%struct.nk_nine_slice = type { %struct.nk_image, i16, i16, i16, i16 }
%struct.nk_allocator = type { %union.nk_handle, ptr, ptr }
%struct.nk_text = type { %struct.nk_vec2, %struct.nk_color, %struct.nk_color }
%struct.nk_window = type { i32, i32, [64 x i8], i32, %struct.nk_rect, %struct.nk_scroll, %struct.nk_command_buffer, ptr, float, %struct.nk_property_state, %struct.nk_popup_state, %struct.nk_edit_state, i32, i8, ptr, i32, ptr, ptr, ptr }
%struct.nk_scroll = type { i32, i32 }
%struct.nk_command_buffer = type { ptr, %struct.nk_rect, i32, %union.nk_handle, i64, i64, i64 }
%struct.nk_property_state = type { i32, i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], i32 }
%struct.nk_popup_state = type { ptr, i32, %struct.nk_popup_buffer, i32, i8, i32, i32, i32, i32, %struct.nk_rect }
%struct.nk_popup_buffer = type { i64, i64, i64, i64, i8 }
%struct.nk_edit_state = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.nk_scroll, i8, i8 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
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
@switch.table.nk_panel_begin.32 = private unnamed_addr constant [6 x i16] [i16 9232, i16 9240, i16 9216, i16 9224, i16 9220, i16 9228], align 8
@switch.table.nk_end.33 = private unnamed_addr constant [7 x i16] [i16 9168, i16 9152, i16 9148, i16 9160, i16 9156, i16 9164, i16 9164], align 8
@switch.table.nk_combo_callback = private unnamed_addr constant [7 x i16] [i16 9284, i16 9292, i16 9276, i16 9308, i16 9300, i16 9316, i16 9316], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, <2 x float> } @nk_get_null_rect() local_unnamed_addr #0 {
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
  %i.a = load <4 x float>, ptr %0, align 4, !tbaa !8 ; 2 uses
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.c = shufflevector <4 x float> %i.a, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.b, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.c, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { <2 x float>, <2 x float> } @nk_rectiv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4, !tbaa !10
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
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !8
  ret <2 x float> %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define <2 x float> @nk_vec2iv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load <2 x i32>, ptr %0, align 4, !tbaa !10
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
  %i.g = fadd <2 x float> %1, %i.b                ; 16 uses
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
  store <2 x float> %i.n, ptr %0, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = fadd <2 x float> %i.g, %i.f              ; 2 uses
  store <2 x float> %i.p, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = shufflevector <2 x float> %i.g, <2 x float> %i.p, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.r, ptr %i.q, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store <2 x float> %i.g, ptr %0, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = insertelement <2 x float> %i.f, float %i.k, i64 1
  %i.u = fadd <2 x float> %i.g, %i.t
  store <2 x float> %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %foldExtExtBinop = fadd <2 x float> %i.g, %i.f
  %.sroa.0.4.vec.insert.i135 = shufflevector <2 x float> %i.g, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i135, ptr %i.v, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store <2 x float> %i.g, ptr %0, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %foldExtExtBinop149 = fadd <2 x float> %i.g, %i.f
  %i.x = shufflevector <2 x float> %foldExtExtBinop149, <2 x float> %i.g, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.x, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = insertelement <2 x float> %i.f, float %i.i, i64 0
  %i.aa = fadd <2 x float> %i.g, %i.z
  store <2 x float> %i.aa, ptr %i.y, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ab = extractelement <2 x float> %i.g, i64 1
  %i.ac = fadd float %i.ab, %i.k
  %.sroa.0.4.vec.insert.i143 = insertelement <2 x float> %i.g, float %i.ac, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i143, ptr %0, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = fadd <2 x float> %i.g, %i.f             ; 2 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> %i.g, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ag, ptr %i.ad, align 4
  store <2 x float> %i.af, ptr %i.ae, align 4
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
end_hunk_0
begin_hunk_1_@nk_begin_titled:bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %.0219, i64 96
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !845
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.a, %bb.b, %nk_create_panel.exit, %bb.t
  %.1 = phi i1 [ false, %bb.t ], [ %i.kb, %nk_create_panel.exit ], [ false, %.loopexit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @nk_create_window(ptr nofree noundef nonnull captures(address_is_null) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18568 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !823  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !824
  store ptr %i.d, ptr %i.a, align 8, !tbaa !823
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18460
  %i.f = load i32, ptr %i.e, align 4, !tbaa !803
  %.not18.i = icmp eq i32 %i.f, 0
  br i1 %.not18.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18464
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18496 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !802  ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.i, align 8, !tbaa !841  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.l = load i32, ptr %i.k, align 8, !tbaa !800
  %.not18.i.i = icmp ult i32 %i.j, %i.l
  br i1 %.not18.i.i, label %nk_pool_alloc.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18488
  %i.n = load i32, ptr %i.m, align 8, !tbaa !801
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %nk_create_page_element.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18512
  %i.q = load i32, ptr %i.p, align 8, !tbaa !800
  %i.r = add i32 %i.q, -1
  %i.s = zext i32 %i.r to i64
  %i.t = mul nuw nsw i64 %i.s, 592
  %i.u = add nuw nsw i64 %i.t, 608
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18472
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !842
  %i.x = load ptr, ptr %i.g, align 8
  %i.y = tail call ptr %i.w(ptr %i.x, ptr noundef null, i64 noundef %i.u) #50, !inline_history !846 ; 4 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !802
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !806
  store ptr %i.y, ptr %i.h, align 8, !tbaa !802
  store i32 0, ptr %i.y, align 8, !tbaa !841
  br label %nk_pool_alloc.exit.i

nk_pool_alloc.exit.i:                             ; preds = %.thread.i.i, %bb.e
  %i.ab = phi i32 [ 0, %.thread.i.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.ac = phi ptr [ %i.y, %.thread.i.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = add nuw i32 %i.ab, 1
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !841
  %i.af = zext i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [592 x i8], ptr %i.ad, i64 %i.af
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.ai = tail call fastcc ptr @nk_buffer_alloc(ptr noundef nonnull %i.ah, i32 noundef 1, i64 noundef 592, i64 noundef 8) ; 2 uses
  %.not19.i = icmp eq ptr %i.ai, null
  br i1 %.not19.i, label %nk_create_page_element.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %nk_pool_alloc.exit.i, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.ag, %nk_pool_alloc.exit.i ], [ %i.ai, %bb.g ] ; 7 uses
  %i.aj = ptrtoint ptr %.0.i to i64
  %i.ak = and i64 %i.aj, 3                        ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i, label %.loopexit46.i.i.thread.i, label %.loopexit46.i.i.i

.loopexit46.i.i.thread.i:                         ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(592) %.0.i, i8 0, i64 576, i1 false), !tbaa !10
  br label %bb.i

.loopexit46.i.i.i:                                ; preds = %bb.h
  %i.al = sub nuw nsw i64 4, %i.ak                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i, i8 0, i64 %i.al, i1 false), !tbaa !11
  %scevgep.i.i.i = getelementptr i8, ptr %.0.i, i64 %i.al ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(588) %scevgep.i.i.i, i8 0, i64 588, i1 false), !tbaa !10
  %scevgep53.i.i.i = getelementptr i8, ptr %scevgep.i.i.i, i64 588
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i.i.i, i8 0, i64 %i.ak, i1 false), !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %.loopexit46.i.i.i, %.loopexit46.i.i.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 18580
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !316
  store i32 %i.ao, ptr %.0.i, align 8, !tbaa !11
  br label %nk_create_page_element.exit.thread

nk_create_page_element.exit.thread:               ; preds = %bb.f, %bb.g, %bb.i
  %.0 = phi ptr [ %.0.i, %bb.i ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nk_insert_window(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #19 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18536 ; 3 uses
  %.042 = load ptr, ptr %i.a, align 8, !tbaa !296 ; 4 uses
  %.not4043 = icmp eq ptr %.042, null
  br i1 %.not4043, label %._crit_edge.thread, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.044, i64 528
  %.0 = load ptr, ptr %i.b, align 8, !tbaa !296   ; 2 uses
  %.not40 = icmp eq ptr %.0, null
  br i1 %.not40, label %._crit_edge, label %.lr.ph, !llvm.loop !831

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.044 = phi ptr [ %.0, %bb.c ], [ %.042, %bb.b ] ; 2 uses
  %i.c = icmp eq ptr %.044, %1
  br i1 %i.c, label %.loopexit, label %bb.c

._crit_edge.thread:                               ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !302
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18544
  store ptr %1, ptr %i.e, align 8, !tbaa !816
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18576
  store i32 1, ptr %i.f, align 8, !tbaa !254
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.c
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18544 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !816  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !314
  %i.l = or i32 %i.k, 4096
  store i32 %i.l, ptr %i.j, align 8, !tbaa !314
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 528
  store ptr %1, ptr %i.m, align 8, !tbaa !303
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr %i.i, ptr %i.n, align 8, !tbaa !815
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr null, ptr %i.o, align 8, !tbaa !303
  store ptr %1, ptr %i.h, align 8, !tbaa !816
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18552
  store ptr %1, ptr %i.p, align 8, !tbaa !814
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %.042, i64 536
  store ptr %1, ptr %i.q, align 8, !tbaa !815
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 528
  store ptr %.042, ptr %i.r, align 8, !tbaa !303
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 536
  store ptr null, ptr %i.s, align 8, !tbaa !815
  store ptr %1, ptr %i.a, align 8, !tbaa !302
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !314
  %i.v = and i32 %i.u, -4097
  store i32 %i.v, ptr %i.t, align 8, !tbaa !314
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18576 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !254
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !254
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.f, %._crit_edge.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @nk_panel_begin(ptr nofree noundef %0, ptr noundef %1, i32 noundef range(i32 1, 65) %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %struct.nk_text, align 8            ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !758  ; 3 uses
  %.not363 = icmp eq ptr %i.d, null
  br i1 %.not363, label %bb.bc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !759  ; 5 uses
  %.not364 = icmp eq ptr %i.f, null
  br i1 %.not364, label %bb.bc, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 3                          ; 3 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %.loopexit46.i.i.thread, label %.loopexit46.i.i

.loopexit46.i.i.thread:                           ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(464) %i.f, i8 0, i64 464, i1 false), !tbaa !10
  br label %nk_zero.exit

.loopexit46.i.i:                                  ; preds = %bb.d
  %i.i = sub nuw nsw i64 4, %i.h                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 0, i64 %i.i, i1 false), !tbaa !11
  %scevgep.i.i = getelementptr i8, ptr %i.f, i64 %i.i ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(460) %scevgep.i.i, i8 0, i64 460, i1 false), !tbaa !10
  %scevgep53.i.i = getelementptr i8, ptr %scevgep.i.i, i64 460
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i.i, i8 0, i64 %i.h, i1 false), !tbaa !11
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !758
  br label %nk_zero.exit

nk_zero.exit:                                     ; preds = %.loopexit46.i.i.thread, %.loopexit46.i.i
  %i.j = phi ptr [ %i.d, %.loopexit46.i.i.thread ], [ %.pre, %.loopexit46.i.i ] ; 16 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !314  ; 6 uses
  %i.m = and i32 %i.l, 24576
  %or.cond386 = icmp eq i32 %i.m, 0
  br i1 %or.cond386, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nk_zero.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !759  ; 5 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 3                          ; 3 uses
  %.not.i.i391 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i391, label %.loopexit46.i.i394.thread, label %.loopexit46.i.i394

.loopexit46.i.i394.thread:                        ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(464) %i.o, i8 0, i64 464, i1 false), !tbaa !10
  br label %nk_zero.exit400

.loopexit46.i.i394:                               ; preds = %bb.e
  %i.r = sub nuw nsw i64 4, %i.q                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.o, i8 0, i64 %i.r, i1 false), !tbaa !11
  %scevgep.i.i393 = getelementptr i8, ptr %i.o, i64 %i.r ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(460) %scevgep.i.i393, i8 0, i64 460, i1 false), !tbaa !10
  %scevgep53.i.i399 = getelementptr i8, ptr %scevgep.i.i393, i64 460
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep53.i.i399, i8 0, i64 %i.q, i1 false), !tbaa !11
  %.pre438 = load ptr, ptr %i.c, align 8, !tbaa !758
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre438, i64 168
  %.pre439 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !759
  br label %nk_zero.exit400

nk_zero.exit400:                                  ; preds = %.loopexit46.i.i394.thread, %.loopexit46.i.i394
  %i.s = phi ptr [ %i.o, %.loopexit46.i.i394.thread ], [ %.pre439, %.loopexit46.i.i394 ]
  store i32 %2, ptr %i.s, align 8, !tbaa !847
  br label %bb.bc

bb.f:                                             ; preds = %nk_zero.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 6 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !756  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !759  ; 24 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 11 uses
  %i.y = and i32 %i.l, 1024
  %.not367 = icmp eq i32 %i.y, 0
  %i.z = select i1 %.not367, ptr %0, ptr null     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8888 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 9652
  %.sroa.0163.0.copyload = load float, ptr %i.ab, align 4, !tbaa !8
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9656
  %.sroa.4164.0.copyload = load float, ptr %.sroa.4164.0..sroa_idx, align 8, !tbaa !8
  %i.ac = tail call range(i32 1, 8) i32 @llvm.ctpop.i32(i32 %2)
  %i.ad = icmp eq i32 %i.ac, 1                    ; 2 uses
  br i1 %i.ad, label %.split.i, label %nk_panel_get_padding.exit

.split.i:                                         ; preds = %bb.f
  %i.ae = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  %switch.tableidx = add nsw i32 %i.ae, -1        ; 2 uses
  %i.af = icmp ult i32 %switch.tableidx, 6
  br i1 %i.af, label %switch.lookup, label %nk_panel_get_padding.exit

switch.lookup:                                    ; preds = %.split.i
  %i.ag = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.nk_panel_begin, i64 %i.ag
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  br label %nk_panel_get_padding.exit

nk_panel_get_padding.exit:                        ; preds = %switch.lookup, %.split.i, %bb.f
  %.sink.i = phi i64 [ %switch.ext, %switch.lookup ], [ 9276, %bb.f ], [ 9276, %.split.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink.i
  %.sroa.0.0.i = load <2 x float>, ptr %i.ah, align 4 ; 3 uses
  %i.ai = and i32 %i.l, 4098
  %or.cond387 = icmp eq i32 %i.ai, 2
  br i1 %or.cond387, label %bb.g, label %nk_input_has_mouse_click_down_in_rect.exit.thread

bb.g:                                             ; preds = %nk_panel_get_padding.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 76 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.am = load float, ptr %i.al, align 4, !tbaa !835 ; 2 uses
  %i.an = and i32 %i.l, 88
  %.not.i = icmp ne i32 %i.an, 0
  %i.ao = icmp ne ptr %1, null
  %spec.select.i = and i1 %i.ao, %.not.i
  br i1 %spec.select.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.5.8.vec.insert = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !166
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9472
  %i.as = load float, ptr %i.ar, align 8, !tbaa !833
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float 2.000000e+00, float %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 9480
  %i.av = load float, ptr %i.au, align 8, !tbaa !834
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float 2.000000e+00, float %i.at)
  %.sroa.5.12.vec.insert151 = insertelement <2 x float> %.sroa.5.8.vec.insert, float %i.aw, i64 1
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %.sroa.5.12.vec.insert153 = insertelement <2 x float> %.sroa.0.0.i, float %i.am, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.5.0 = phi <2 x float> [ %.sroa.5.12.vec.insert151, %bb.h ], [ %.sroa.5.12.vec.insert153, %bb.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !711, !range !79, !noundef !80
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !702
  %.not.i401 = icmp eq ptr %i.z, null
  br i1 %.not.i401, label %nk_input_has_mouse_click_down_in_rect.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !714 ; 2 uses
  %i.be = extractelement <2 x float> %i.ak, i64 0
  %i.bf = fcmp ole float %i.be, %i.bd
  %foldExtExtBinop = fadd <2 x float> %i.ak, %.sroa.5.0
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bh = fcmp olt float %i.bd, %i.bg
  %or.cond.i.i = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond.i.i, label %nk_input_has_mouse_click_in_rect.exit.i, label %nk_input_has_mouse_click_down_in_rect.exit.thread

nk_input_has_mouse_click_in_rect.exit.i:          ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !715 ; 2 uses
  %i.bk = extractelement <2 x float> %i.ak, i64 1
  %i.bl = fcmp ole float %i.bk, %i.bj
  %foldExtExtBinop465 = fadd <2 x float> %i.ak, %.sroa.5.0
  %i.bm = extractelement <2 x float> %foldExtExtBinop465, i64 1
  %i.bn = fcmp olt float %i.bj, %i.bm
  %or.cond16.i.i = select i1 %i.bl, i1 %i.bn, i1 false
  %i.bo = icmp eq i32 %i.bb, 0
  %i.bp = and i1 %or.cond16.i.i, %i.az
  %or.cond = select i1 %i.bp, i1 %i.bo, i1 false
  br i1 %or.cond, label %bb.l, label %nk_input_has_mouse_click_down_in_rect.exit.thread

bb.l:                                             ; preds = %nk_input_has_mouse_click_in_rect.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.br = load <2 x float>, ptr %i.bq, align 4, !tbaa !8 ; 2 uses
  %i.bs = fadd <2 x float> %i.ak, %i.br
  store <2 x float> %i.bs, ptr %i.aj, align 4, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 268 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bt, align 4, !tbaa !8
  %i.bv = fadd <2 x float> %i.br, %i.bu
  store <2 x float> %i.bv, ptr %i.bt, align 4, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !298
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !297
  br label %nk_input_has_mouse_click_down_in_rect.exit.thread

nk_input_has_mouse_click_down_in_rect.exit.thread: ; preds = %bb.k, %nk_input_has_mouse_click_in_rect.exit.i, %bb.j, %bb.l, %nk_panel_get_padding.exit
  store i32 %2, ptr %i.w, align 8, !tbaa !847
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 8 uses
  store i32 %i.l, ptr %i.bz, align 4, !tbaa !848
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 76 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 4 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !185
  %.sroa.0158.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0 ; 2 uses
  %i.cc = load float, ptr %i.ca, align 8, !tbaa !849
  %i.cd = fadd float %.sroa.0158.0.vec.extract, %i.cc ; 2 uses
  store float %i.cd, ptr %i.ca, align 8, !tbaa !849
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 6 uses
  %i.cf = load float, ptr %i.ce, align 8, !tbaa !850
  %i.cg = tail call float @llvm.fmuladd.f32(float %.sroa.0158.0.vec.extract, float -2.000000e+00, float %i.cf)
  store float %i.cg, ptr %i.ce, align 8, !tbaa !850
  %i.ch = load i32, ptr %i.k, align 8, !tbaa !314
  %i.ci = and i32 %i.ch, 1
  %.not371 = icmp eq i32 %i.ci, 0
  br i1 %.not371, label %bb.n, label %bb.m

bb.m:                                             ; preds = %nk_input_has_mouse_click_down_in_rect.exit.thread
  br i1 %i.ad, label %.split.i404, label %nk_panel_get_border.exit

.split.i404:                                      ; preds = %bb.m
  %i.cj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 65) %2, i1 true)
  %switch.tableidx459 = add nsw i32 %i.cj, -1     ; 2 uses
  %i.ck = icmp ult i32 %switch.tableidx459, 6
  br i1 %i.ck, label %switch.lookup460, label %nk_panel_get_border.exit

switch.lookup460:                                 ; preds = %.split.i404
  %i.cl = zext nneg i32 %switch.tableidx459 to i64
  %switch.gep461 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.nk_panel_begin.32, i64 %i.cl
  %switch.load462 = load i16, ptr %switch.gep461, align 2
  %switch.ext463 = zext i16 %switch.load462 to i64
  br label %nk_panel_get_border.exit

nk_panel_get_border.exit:                         ; preds = %switch.lookup460, %.split.i404, %bb.m
  %.sink.a = phi i64 [ 9216, %bb.m ], [ %switch.ext463, %switch.lookup460 ], [ 9216, %.split.i404 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sink.a
  %.0.i403 = load float, ptr %i.cm, align 4, !tbaa !8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  store float %.0.i403, ptr %i.cn, align 4, !tbaa !851
  %i.co = load <2 x float>, ptr %i.ca, align 8
  %i.cp = load <2 x float>, ptr %i.ce, align 8    ; 2 uses
  %i.cq = fmul float %.0.i403, 2.000000e+00
  %i.cr = insertelement <2 x float> poison, float %.0.i403, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %.sroa.018.4.vec.insert.i = fadd <2 x float> %i.cs, %i.co ; 3 uses
  %i.ct = extractelement <2 x float> %.sroa.018.4.vec.insert.i, i64 1
  %i.cu = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = fcmp olt <2 x float> %i.cp, %i.cv
  %i.cx = select <2 x i1> %i.cw, <2 x float> %i.cv, <2 x float> %i.cp
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> splat (float -2.000000e+00), <2 x float> %i.cx)
  store <2 x float> %.sroa.018.4.vec.insert.i, ptr %i.ca, align 8
  store <2 x float> %i.cy, ptr %i.ce, align 8
  br label %bb.o

bb.n:                                             ; preds = %nk_input_has_mouse_click_down_in_rect.exit.thread
  %i.cz = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  store float 0.000000e+00, ptr %i.cz, align 4, !tbaa !851
  %.phi.trans.insert440 = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.pre441 = load float, ptr %.phi.trans.insert440, align 4, !tbaa !852 ; 2 uses
  %i.da = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.db = insertelement <2 x float> %i.da, float %.pre441, i64 1
  br label %bb.o

bb.o:                                             ; preds = %nk_panel_get_border.exit, %bb.n
  %i.dc = phi float [ %i.ct, %nk_panel_get_border.exit ], [ %.pre441, %bb.n ]
  %i.dd = phi <2 x float> [ %.sroa.018.4.vec.insert.i, %nk_panel_get_border.exit ], [ %i.db, %bb.n ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  %i.dg = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store <2 x float> %i.dd, ptr %i.dg, align 8, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.di = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 3 uses
  store float 0.000000e+00, ptr %i.di, align 8, !tbaa !853
  %i.dj = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  store <2 x float> zeroinitializer, ptr %i.dh, align 8, !tbaa !8
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !758 ; 2 uses
  %.not13.i = icmp eq ptr %i.dk, null
  br i1 %.not13.i, label %nk_layout_reset_min_row_height.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 168
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !759 ; 2 uses
  %.not14.i = icmp eq ptr %i.dm, null
  br i1 %.not14.i, label %nk_layout_reset_min_row_height.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = load ptr, ptr %i.t, align 8, !tbaa !769
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load float, ptr %i.do, align 8, !tbaa !166
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 124
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !760
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float 2.000000e+00, float %i.dp)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 9636
  %i.dv = load float, ptr %i.du, align 4, !tbaa !761
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float 2.000000e+00, float %i.dt)
  store float %i.dw, ptr %i.dq, align 4, !tbaa !762
  br label %nk_layout_reset_min_row_height.exit

nk_layout_reset_min_row_height.exit:              ; preds = %bb.o, %bb.p, %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %i.w, i64 116
  store i32 0, ptr %i.dx, align 4, !tbaa !854
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  store i32 0, ptr %i.dy, align 8, !tbaa !855
  %i.dz = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  store ptr null, ptr %i.dz, align 8, !tbaa !856
  %i.ea = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  store float 0.000000e+00, ptr %i.ea, align 8, !tbaa !857
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  store i32 0, ptr %i.eb, align 8, !tbaa !858
  %.sroa.0158.4.vec.extract162 = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  store float %.sroa.0158.4.vec.extract162, ptr %i.ec, align 8, !tbaa !859
  %i.ed = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i32 1, ptr %i.ed, align 8, !tbaa !860
  %i.ee = load i32, ptr %i.k, align 8, !tbaa !314 ; 3 uses
  %i.ef = and i32 %i.ee, 32
  %.not372 = icmp eq i32 %i.ef, 0
  br i1 %.not372, label %bb.r, label %bb.s

bb.r:                                             ; preds = %nk_layout_reset_min_row_height.exit
  %i.eg = load float, ptr %i.ce, align 8, !tbaa !850
  %i.eh = fsub float %i.eg, %.sroa.0163.0.copyload
  store float %i.eh, ptr %i.ce, align 8, !tbaa !850
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %nk_layout_reset_min_row_height.exit
  %i.ei = icmp samesign ugt i32 %2, 15
  br i1 %i.ei, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = and i32 %i.ee, 36
  %or.cond388 = icmp eq i32 %i.ej, 32
  %spec.store.select = select i1 %or.cond388, float 0.000000e+00, float %.sroa.4164.0.copyload ; 2 uses
  store float %spec.store.select, ptr %i.dj, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.w, i64 20 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !861
  %i.em = fsub float %i.el, %spec.store.select
  store float %i.em, ptr %i.ek, align 4, !tbaa !861
  %.pre442 = load i32, ptr %i.k, align 8, !tbaa !314
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.en = phi i32 [ %.pre442, %bb.t ], [ %i.ee, %bb.s ] ; 2 uses
  %i.eo = and i32 %i.en, 88
  %.not.i406 = icmp ne i32 %i.eo, 0
  %i.ep = and i32 %i.en, 8192
  %.not6.i407 = icmp eq i32 %i.ep, 0
  %or.cond.i408 = and i1 %.not.i406, %.not6.i407
  %i.eq = icmp ne ptr %1, null
  %spec.select.i409 = and i1 %i.eq, %or.cond.i408
  br i1 %spec.select.i409, label %bb.v, label %bb.av

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  %i.er = load <2 x float>, ptr %i.cb, align 4, !tbaa !8 ; 9 uses
  %i.es = extractelement <2 x float> %i.er, i64 0 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  %i.eu = load float, ptr %i.et, align 4, !tbaa !835 ; 4 uses
  %.sroa.23.8.vec.insert = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ev = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ew = load float, ptr %i.ev, align 8, !tbaa !166
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 9468 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 9472 ; 2 uses
  %i.ez = load float, ptr %i.ey, align 8, !tbaa !833
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float 2.000000e+00, float %i.ew)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 9476
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 9480 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 8, !tbaa !834
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fd, float 2.000000e+00, float %i.fa) ; 6 uses
  store float %i.fe, ptr %i.di, align 8, !tbaa !853
  %i.ff = load float, ptr %i.de, align 4, !tbaa !852
  %i.fg = fadd float %i.fe, %i.ff
  store float %i.fg, ptr %i.de, align 4, !tbaa !852
  %i.fh = getelementptr inbounds nuw i8, ptr %i.w, i64 20 ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !861
  %i.fj = fsub float %i.fi, %i.fe
  store float %i.fj, ptr %i.fh, align 4, !tbaa !861
  %i.fk = fadd float %i.fe, %i.dc
  store float %i.fk, ptr %i.df, align 4, !tbaa !862
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !814
  %i.fn = icmp eq ptr %i.fm, %i.j
  br i1 %i.fn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 8968
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !716 ; 2 uses
  %i.fr = fcmp ole float %i.es, %i.fq
  %i.fs = fadd float %i.es, %i.eu
  %i.ft = fcmp olt float %i.fq, %i.fs
  %or.cond.i412 = select i1 %i.fr, i1 %i.ft, i1 false
  br i1 %or.cond.i412, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !717 ; 2 uses
  %i.fw = extractelement <2 x float> %i.er, i64 1 ; 2 uses
  %i.fx = fcmp ole float %i.fw, %i.fv
  %i.fy = fadd float %i.fw, %i.fe
  %i.fz = fcmp olt float %i.fv, %i.fy
  %or.cond434 = select i1 %i.fx, i1 %i.fz, i1 false ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %spec.select = select i1 %or.cond434, i64 9456, i64 9452
  %spec.select461 = select i1 %or.cond434, ptr %4, ptr %i.aa
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.sink = phi i64 [ %spec.select, %bb.y ], [ 9460, %bb.w ], [ 9452, %bb.x ]
  %.0356 = phi ptr [ %spec.select461, %bb.y ], [ %i.fo, %bb.w ], [ %i.aa, %bb.x ] ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.gc = load i32, ptr %i.gb, align 4
  store i32 %i.gc, ptr %i.ga, align 4
  %5 = fadd float %i.fe, 1.000000e+00             ; 2 uses
  %.sroa.23.12.vec.insert142 = insertelement <2 x float> %.sroa.23.8.vec.insert, float %5, i64 1 ; 6 uses
  %6 = load i32, ptr %.0356, align 8, !tbaa !754
  switch i32 %6, label %bb.ad [
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %.0356, i64 8
  tail call void @nk_draw_image(ptr noundef nonnull %i.x, <2 x float> %i.er, <2 x float> %.sroa.23.12.vec.insert142, ptr noundef nonnull %i.ge, i32 -1)
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.0356, i64 8
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.x, <2 x float> %i.er, <2 x float> %.sroa.23.12.vec.insert142, ptr noundef nonnull %i.gg, i32 -1)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.0356, i64 8
  %i.gj = load i32, ptr %i.gi, align 8            ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 8
  tail call void @nk_fill_rect(ptr noundef nonnull %i.x, <2 x float> %i.er, <2 x float> %.sroa.23.12.vec.insert142, float noundef 0.000000e+00, i32 %i.gj)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.gk = load float, ptr %i.ey, align 8, !tbaa !833 ; 2 uses
  %i.gl = extractelement <2 x float> %i.er, i64 1
  %i.gm = fadd float %i.gl, %i.gk
  %.sroa.035.4.vec.insert = insertelement <2 x float> <float undef, float poison>, float %i.gm, i64 1 ; 3 uses
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.gk, float -2.000000e+00, float %5) ; 7 uses
  %i.go = insertelement <2 x float> poison, float %i.gn, i64 0
  %.sroa.11.8.vec.insert = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gp = load i32, ptr %i.k, align 8, !tbaa !314 ; 2 uses
  %i.gq = and i32 %i.gp, 8
  %.not375 = icmp eq i32 %i.gq, 0
  br i1 %.not375, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 9464
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !863
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gu = fadd float %i.es, %i.eu
  %i.gv = load float, ptr %i.ex, align 4, !tbaa !864 ; 2 uses
  %i.gw = fadd float %i.gn, %i.gv
  %i.gx = fsub float %i.gu, %i.gw
  %.sroa.035.0.vec.insert = insertelement <2 x float> %.sroa.035.4.vec.insert, float %i.gx, i64 0
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 9484
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !865
  %i.ha = fadd float %i.gn, %i.gz
  %i.hb = fadd float %i.gv, %i.ha
  %i.hc = fsub float %i.eu, %i.hb
  %.sroa.23.8.vec.insert109 = insertelement <2 x float> %.sroa.23.12.vec.insert142, float %i.hc, i64 0
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.hd = load float, ptr %i.ex, align 4, !tbaa !864 ; 2 uses
  %i.he = fadd float %i.es, %i.hd
  %.sroa.035.0.vec.insert39 = insertelement <2 x float> %.sroa.035.4.vec.insert, float %i.he, i64 0
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 9484
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !865
  %i.hh = fadd float %i.gn, %i.hg
  %i.hi = fadd float %i.hd, %i.hh
  %i.hj = fadd float %i.es, %i.hi
  %.sroa.068.0.vec.insert79 = insertelement <2 x float> %i.er, float %i.hj, i64 0
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.068.0 = phi <2 x float> [ %i.er, %bb.af ], [ %.sroa.068.0.vec.insert79, %bb.ag ]
  %.sroa.23.0 = phi <2 x float> [ %.sroa.23.8.vec.insert109, %bb.af ], [ %.sroa.23.12.vec.insert142, %bb.ag ]
  %.sroa.035.0 = phi <2 x float> [ %.sroa.035.0.vec.insert, %bb.af ], [ %.sroa.035.0.vec.insert39, %bb.ag ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 9440
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !866
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 9008
  %i.hn = load ptr, ptr %i.t, align 8, !tbaa !756
  %i.ho = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.a, ptr noundef nonnull %i.x, <2 x float> %.sroa.035.0, <2 x float> %.sroa.11.8.vec.insert, i32 noundef %i.hl, i32 noundef 0, ptr noundef nonnull %i.hm, ptr noundef %i.z, ptr noundef %i.hn)
  %.pre443.pre = load i32, ptr %i.k, align 8, !tbaa !314 ; 2 uses
  %i.hp = and i32 %.pre443.pre, 4096
  %.not376 = icmp eq i32 %i.hp, 0
  %or.cond458 = select i1 %i.ho, i1 %.not376, i1 false
  br i1 %or.cond458, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hq = load i32, ptr %i.bz, align 4, !tbaa !848
  %i.hr = and i32 %i.hq, -40961
  %i.hs = or disjoint i32 %i.hr, 8192
  store i32 %i.hs, ptr %i.bz, align 4, !tbaa !848
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ad
  %i.ht = phi i32 [ %.pre443.pre, %bb.aj ], [ %i.gp, %bb.ad ] ; 2 uses
  %.sroa.068.1 = phi <2 x float> [ %.sroa.068.0, %bb.aj ], [ %i.er, %bb.ad ] ; 6 uses
  %.sroa.23.1 = phi <2 x float> [ %.sroa.23.0, %bb.aj ], [ %.sroa.23.12.vec.insert142, %bb.ad ] ; 6 uses
  %.sroa.035.1 = phi <2 x float> [ %.sroa.035.0, %bb.aj ], [ %.sroa.035.4.vec.insert, %bb.ad ] ; 2 uses
  %i.hu = and i32 %i.ht, 16
  %.not377 = icmp eq i32 %i.hu, 0
  br i1 %.not377, label %bb.au, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i32 0, ptr %i.b, align 4, !tbaa !10
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 9464
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !863
  %i.hx = icmp eq i32 %i.hw, 1
  br i1 %i.hx, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %.sroa.23.8.vec.extract111 = extractelement <2 x float> %.sroa.23.1, i64 0 ; 2 uses
  %foldExtExtBinop467 = fadd <2 x float> %.sroa.068.1, %.sroa.23.1
  %i.hy = extractelement <2 x float> %foldExtExtBinop467, i64 0
  %i.hz = fsub float %i.hy, %i.gn                 ; 2 uses
  %.sroa.035.0.vec.insert41 = insertelement <2 x float> %.sroa.035.1, float %i.hz, i64 0 ; 2 uses
  %i.ia = and i32 %i.ht, 8
  %.not378 = icmp eq i32 %i.ia, 0
  br i1 %.not378, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ib = load float, ptr %i.ex, align 4, !tbaa !864 ; 2 uses
  %i.ic = fsub float %i.hz, %i.ib
  %.sroa.035.0.vec.insert44 = insertelement <2 x float> %.sroa.035.0.vec.insert41, float %i.ic, i64 0
  %i.id = fsub float %.sroa.23.8.vec.extract111, %i.ib ; 2 uses
  %.sroa.23.8.vec.insert115 = insertelement <2 x float> %.sroa.23.1, float %i.id, i64 0
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.23.8.vec.extract117.pre-phi = phi float [ %i.id, %bb.an ], [ %.sroa.23.8.vec.extract111, %bb.am ]
  %.sroa.23.2 = phi <2 x float> [ %.sroa.23.8.vec.insert115, %bb.an ], [ %.sroa.23.1, %bb.am ]
  %.sroa.035.2 = phi <2 x float> [ %.sroa.035.0.vec.insert44, %bb.an ], [ %.sroa.035.0.vec.insert41, %bb.am ]
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 9484
  %i.if = load float, ptr %i.ie, align 4, !tbaa !865
  %i.ig = fadd float %i.gn, %i.if
  %i.ih = fsub float %.sroa.23.8.vec.extract117.pre-phi, %i.ig
  %.sroa.23.8.vec.insert119 = insertelement <2 x float> %.sroa.23.2, float %i.ih, i64 0
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %.sroa.068.0.vec.extract83 = extractelement <2 x float> %.sroa.068.1, i64 0
  %.sroa.035.0.vec.insert46 = shufflevector <2 x float> %.sroa.068.1, <2 x float> %.sroa.035.1, <2 x i32> <i32 0, i32 3>
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 9484
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !865
  %i.ik = fadd float %i.gn, %i.ij
  %i.il = load float, ptr %i.ex, align 4, !tbaa !864
  %i.im = fadd float %i.ik, %i.il
  %i.in = fadd float %.sroa.068.0.vec.extract83, %i.im
  %.sroa.068.0.vec.insert87 = insertelement <2 x float> %.sroa.068.1, float %i.in, i64 0
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.068.2 = phi <2 x float> [ %.sroa.068.1, %bb.ao ], [ %.sroa.068.0.vec.insert87, %bb.ap ]
  %.sroa.23.3 = phi <2 x float> [ %.sroa.23.8.vec.insert119, %bb.ao ], [ %.sroa.23.1, %bb.ap ]
  %.sroa.035.3 = phi <2 x float> [ %.sroa.035.2, %bb.ao ], [ %.sroa.035.0.vec.insert46, %bb.ap ]
  %i.io = load i32, ptr %i.bz, align 4, !tbaa !848
  %i.ip = and i32 %i.io, 32768
  %.not379 = icmp eq i32 %i.ip, 0
  %.in.v = select i1 %.not379, i64 9444, i64 9448
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.iq = load i32, ptr %.in, align 4, !tbaa !10
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 9224
  %i.is = load ptr, ptr %i.t, align 8, !tbaa !756
  %i.it = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.b, ptr noundef nonnull %i.x, <2 x float> %.sroa.035.3, <2 x float> %.sroa.11.8.vec.insert, i32 noundef %i.iq, i32 noundef 0, ptr noundef nonnull %i.ir, ptr noundef %i.z, ptr noundef %i.is)
  br i1 %i.it, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.iu = load i32, ptr %i.k, align 8, !tbaa !314
  %i.iv = and i32 %i.iu, 4096
  %.not380 = icmp eq i32 %i.iv, 0
  br i1 %.not380, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.iw = load i32, ptr %i.bz, align 4, !tbaa !848
  %i.ix = xor i32 %i.iw, 32768
  store i32 %i.ix, ptr %i.bz, align 4, !tbaa !848
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ak
  %.sroa.068.3 = phi <2 x float> [ %.sroa.068.2, %bb.at ], [ %.sroa.068.1, %bb.ak ] ; 3 uses
  %.sroa.23.4 = phi <2 x float> [ %.sroa.23.3, %bb.at ], [ %.sroa.23.1, %bb.ak ]
  %i.iy = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i435 = icmp eq i8 %i.iy, 0
  br i1 %.not4.i435, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.au
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.iz = trunc i64 %strlen to i32
  %i.ja = add i32 %i.iz, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader, %bb.au
  %.07.i.lcssa = phi i32 [ 0, %bb.au ], [ %i.ja, %.lr.ph.i.preheader ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !164
  %i.jd = load float, ptr %i.ev, align 8, !tbaa !166
  %i.je = load ptr, ptr %i.u, align 8
  %i.jf = tail call float %i.jc(ptr %i.je, float noundef %i.jd, ptr noundef nonnull %1, i32 noundef %.07.i.lcssa) #50
  store <2 x float> zeroinitializer, ptr %3, align 8
  %.sroa.068.0.vec.extract89 = extractelement <2 x float> %.sroa.068.3, i64 0
  %i.jg = load float, ptr %i.ex, align 4, !tbaa !864
  %i.jh = fadd float %.sroa.068.0.vec.extract89, %i.jg
  %i.ji = load <2 x float>, ptr %i.fb, align 4, !tbaa !8
  %i.jj = insertelement <2 x float> %.sroa.068.3, float %i.jh, i64 0
  %i.jk = fadd <2 x float> %i.jj, %i.ji           ; 2 uses
  %i.jl = load float, ptr %i.ev, align 8, !tbaa !166
  %i.jm = load <2 x float>, ptr %i.fc, align 8, !tbaa !8
  %i.jn = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.jo = insertelement <2 x float> %i.jn, float %i.jf, i64 1
  %i.jp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> splat (float 2.000000e+00), <2 x float> %i.jo) ; 2 uses
  %foldExtExtBinop469 = fadd <2 x float> %.sroa.068.3, %.sroa.23.4
  %foldExtExtBinop471 = fsub <2 x float> %foldExtExtBinop469, %i.jk
  %i.jq = extractelement <2 x float> %foldExtExtBinop471, i64 0 ; 2 uses
  %i.jr = extractelement <2 x float> %i.jp, i64 1 ; 2 uses
  %i.js = fcmp olt float %i.jr, %i.jq
  %. = select i1 %i.js, float %i.jr, float %i.jq  ; 2 uses
  %i.jt = fcmp olt float %., 0.000000e+00
  %i.ju = select i1 %i.jt, float 0.000000e+00, float %.
  %i.jv = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> %i.jp, <2 x i32> <i32 0, i32 2>
  call fastcc void @nk_widget_text(ptr noundef nonnull %i.x, <2 x float> %i.jk, <2 x float> %i.jw, ptr noundef nonnull %1, i32 noundef %.07.i.lcssa, ptr noundef %3, i32 noundef 17, ptr noundef nonnull %i.u)
end_hunk_1
begin_hunk_2_@nk_do_toggle:bb.a
  %.sroa.0243.0.vec.insert252280 = insertelement <2 x float> %2, float undef, i64 1
  %i.ag = fadd float %.sroa.072.0.vec.extract, %i.b
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 244
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !1062
  %i.aj = fadd float %i.ag, %i.ai                 ; 4 uses
  %.sroa.0.0.vec.insert228 = insertelement <2 x float> <float poison, float undef>, float %i.aj, i64 0
  %foldExtExtBinop2 = fadd <2 x float> %2, %i.j
  %i.ak = extractelement <2 x float> %foldExtExtBinop2, i64 0 ; 2 uses
  %i.al = fcmp olt float %i.ak, %i.aj
  %i.am = select i1 %i.al, float %i.aj, float %i.ak
  %i.an = fsub float %i.am, %i.aj
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.sink = phi float [ %i.af, %bb.e ], [ %i.an, %bb.f ], [ %i.v, %bb.c ]
  %.sroa.0243.0 = phi <2 x float> [ %.sroa.0243.0.vec.insert250, %bb.e ], [ %.sroa.0243.0.vec.insert252280, %bb.f ], [ %.sroa.0243.0.vec.insert, %bb.c ] ; 3 uses
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.vec.insert226279, %bb.e ], [ %.sroa.0.0.vec.insert228, %bb.f ], [ %.sroa.0.0.vec.insert224278, %bb.c ]
  %.sroa.8.8.vec.insert233 = insertelement <2 x float> poison, float %.sink, i64 0
  %i.ao = and i32 %11, 8
  %.not130 = icmp eq i32 %i.ao, 0
  br i1 %.not130, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0243.4.vec.insert256 = shufflevector <2 x float> %.sroa.0243.0, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ap = and i32 %11, 32
  %.not131 = icmp eq i32 %i.ap, 0
  br i1 %.not131, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop4 = fadd <2 x float> %2, %i.j
  %i.aq = extractelement <2 x float> %foldExtExtBinop4, i64 1
  %i.ar = fsub float %i.aq, %i.b
  %i.as = extractelement <2 x float> %i.d, i64 1
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float -2.000000e+00, float %i.ar)
  %.sroa.0243.4.vec.insert254 = insertelement <2 x float> %.sroa.0243.0, float %i.at, i64 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.au = extractelement <2 x float> %i.j, i64 1
  %i.av = fmul float %i.au, 5.000000e-01
  %i.aw = fadd float %.sroa.072.4.vec.extract, %i.av
  %i.ax = fmul float %i.b, 5.000000e-01
  %i.ay = fsub float %i.aw, %i.ax
  %.sroa.0243.4.vec.insert = insertelement <2 x float> %.sroa.0243.0, float %i.ay, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.h
  %.sroa.0243.1 = phi <2 x float> [ %.sroa.0243.4.vec.insert, %bb.k ], [ %.sroa.0243.4.vec.insert254, %bb.j ], [ %.sroa.0243.4.vec.insert256, %bb.h ] ; 8 uses
  %.sroa.0.4.vec.insert229 = shufflevector <2 x float> %.sroa.0.0, <2 x float> %.sroa.0243.1, <2 x i32> <i32 0, i32 3> ; 2 uses
  %.sroa.8.12.vec.insert = insertelement <2 x float> %.sroa.8.8.vec.insert233, float %i.b, i64 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 248 ; 3 uses
  %i.ba = load float, ptr %i.az, align 8, !tbaa !1063 ; 2 uses
  %i.bb = fadd <2 x float> %i.d, %.sroa.0243.1
  %i.bc = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fadd <2 x float> %i.bd, %i.bb           ; 4 uses
  %i.bf = fmul float %i.ba, 2.000000e+00
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> splat (float 2.000000e+00), <2 x float> %i.bh)
  %i.bj = fsub <2 x float> %i.g, %i.bi            ; 4 uses
  %i.bk = load i8, ptr %4, align 1, !tbaa !958, !range !79, !noundef !80
  %i.bl = trunc nuw i8 %i.bk to i1                ; 4 uses
  %i.bm = load i32, ptr %0, align 4, !tbaa !10
  %i.bn = and i32 %i.bm, 2
  %..i = or disjoint i32 %i.bn, 4
  store i32 %..i, ptr %0, align 4, !tbaa !10
  %i.bo = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef nonnull %0, <2 x float> %i.l, <2 x float> %i.m, ptr noundef readonly %9, i32 noundef 0)
  br i1 %i.bo, label %.thread37.i, label %bb.m

.thread37.i:                                      ; preds = %bb.l
  store i32 34, ptr %0, align 4, !tbaa !10
  %i.bp = xor i1 %i.bl, true
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %.pre.i = load i32, ptr %0, align 4, !tbaa !10  ; 4 uses
  %i.bq = and i32 %.pre.i, 16
  %.not16.i = icmp eq i32 %i.bq, 0
  br i1 %.not16.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i = icmp eq ptr %9, null
  br i1 %.not.i.i, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 364
  %i.bs = load float, ptr %i.br, align 4, !tbaa !718 ; 3 uses
  %i.bt = extractelement <2 x float> %i.l, i64 0
  %i.bu = fcmp ole float %i.bt, %i.bs
  %foldExtExtBinop6 = fadd <2 x float> %i.l, %i.m
  %i.bv = extractelement <2 x float> %foldExtExtBinop6, i64 0 ; 2 uses
  %i.bw = fcmp olt float %i.bs, %i.bv
  %or.cond.i.i = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond.i.i, label %bb.p, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 368
  %i.by = load float, ptr %i.bx, align 4, !tbaa !719 ; 2 uses
  %i.bz = extractelement <2 x float> %i.l, i64 1
  %i.ca = fcmp ole float %i.bz, %i.by
  %foldExtExtBinop8 = fadd <2 x float> %i.l, %i.m
  %i.cb = extractelement <2 x float> %foldExtExtBinop8, i64 1
  %i.cc = fcmp olt float %i.by, %i.cb
  %or.cond.i = select i1 %i.ca, i1 %i.cc, i1 false
  br i1 %or.cond.i, label %.thread.i, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i

nk_input_is_mouse_prev_hovering_rect.exit.thread.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.cd = or i32 %.pre.i, 8
  br label %nk_input_is_mouse_prev_hovering_rect.exit24.thread.sink.split.i

bb.q:                                             ; preds = %bb.m, %.thread37.i
  %.0.in42.i = phi i1 [ %i.bp, %.thread37.i ], [ %i.bl, %bb.m ] ; 2 uses
  %i.ce = phi i32 [ 34, %.thread37.i ], [ %.pre.i, %bb.m ]
  %.not.i17.i = icmp eq ptr %9, null
  br i1 %.not.i17.i, label %nk_toggle_behavior.exit, label %..thread_crit_edge.i

..thread_crit_edge.i:                             ; preds = %bb.q
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %9, i64 364
  %.pre31.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !718
  %foldExtExtBinop10 = fadd <2 x float> %i.l, %i.m
  %.pre34.i = extractelement <2 x float> %foldExtExtBinop10, i64 0
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.p
  %.0.in41.i = phi i1 [ %.0.in42.i, %..thread_crit_edge.i ], [ %i.bl, %bb.p ] ; 3 uses
  %i.cf = phi i32 [ %i.ce, %..thread_crit_edge.i ], [ %.pre.i, %bb.p ]
  %.pre-phi.i = phi float [ %.pre34.i, %..thread_crit_edge.i ], [ %i.bv, %bb.p ]
  %i.cg = phi float [ %.pre31.i, %..thread_crit_edge.i ], [ %i.bs, %bb.p ] ; 2 uses
  %i.ch = extractelement <2 x float> %i.l, i64 0
  %i.ci = fcmp ole float %i.ch, %i.cg
  %i.cj = fcmp olt float %i.cg, %.pre-phi.i
  %or.cond.i20.i = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond.i20.i, label %bb.r, label %nk_toggle_behavior.exit

bb.r:                                             ; preds = %.thread.i
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 368
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !719 ; 2 uses
  %i.cm = extractelement <2 x float> %i.l, i64 1
  %i.cn = fcmp ole float %i.cm, %i.cl
  %foldExtExtBinop12 = fadd <2 x float> %i.l, %i.m
  %i.co = extractelement <2 x float> %foldExtExtBinop12, i64 1
  %i.cp = fcmp olt float %i.cl, %i.co
  %or.cond30.i = select i1 %i.cn, i1 %i.cp, i1 false
  br i1 %or.cond30.i, label %bb.s, label %nk_toggle_behavior.exit

bb.s:                                             ; preds = %bb.r
  %i.cq = or i32 %i.cf, 64
  br label %nk_input_is_mouse_prev_hovering_rect.exit24.thread.sink.split.i

nk_input_is_mouse_prev_hovering_rect.exit24.thread.sink.split.i: ; preds = %bb.s, %nk_input_is_mouse_prev_hovering_rect.exit.thread.i
  %.sink.i = phi i32 [ %i.cq, %bb.s ], [ %i.cd, %nk_input_is_mouse_prev_hovering_rect.exit.thread.i ]
  %.0.in40.ph.i = phi i1 [ %.0.in41.i, %bb.s ], [ %i.bl, %nk_input_is_mouse_prev_hovering_rect.exit.thread.i ]
  store i32 %.sink.i, ptr %0, align 4, !tbaa !10
  br label %nk_toggle_behavior.exit

nk_toggle_behavior.exit:                          ; preds = %bb.q, %.thread.i, %bb.r, %nk_input_is_mouse_prev_hovering_rect.exit24.thread.sink.split.i
  %.0.in40.i = phi i1 [ %.0.in41.i, %bb.r ], [ %.0.in41.i, %.thread.i ], [ %.0.in42.i, %bb.q ], [ %.0.in40.ph.i, %nk_input_is_mouse_prev_hovering_rect.exit24.thread.sink.split.i ]
  %i.cr = zext i1 %.0.in40.i to i8
  store i8 %i.cr, ptr %4, align 1, !tbaa !958
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 272
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1064 ; 2 uses
  %.not132 = icmp eq ptr %i.ct, null
  br i1 %.not132, label %bb.u, label %bb.t

bb.t:                                             ; preds = %nk_toggle_behavior.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 264
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.ct(ptr noundef nonnull %1, ptr %i.cv) #50
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %nk_toggle_behavior.exit
  %i.cw = icmp eq i32 %7, 0
  %i.cx = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.cy = load i8, ptr %4, align 1, !tbaa !958, !range !79, !noundef !80
  %i.cz = trunc nuw i8 %i.cy to i1                ; 2 uses
  %i.da = and i32 %i.cx, 16
  %.not.i = icmp eq i32 %i.da, 0                  ; 2 uses
  br i1 %i.cw, label %bb.v, label %bb.ak

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #50
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 40
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.dc = and i32 %i.cx, 32
  %.not47.i = icmp eq i32 %i.dc, 0
  br i1 %.not47.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 40
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.sink294 = phi i64 [ 168, %bb.y ], [ 168, %bb.w ], [ 128, %bb.x ]
  %.sink293 = phi i64 [ 216, %bb.y ], [ 212, %bb.w ], [ 208, %bb.x ]
  %.0.i = phi ptr [ %i.dd, %bb.y ], [ %i.db, %bb.w ], [ %8, %bb.x ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 %.sink294 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 %.sink293
  %i.dg = load i32, ptr %i.df, align 4            ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 252 ; 4 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !1065 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %i.dg, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %i.dg, 16 ; 2 uses
  %i.dk = fcmp oeq float %i.dj, 1.000000e+00
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.7.0.extract.trunc.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.dg to i8
  br label %nk_rgb_factor.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.dl = and i32 %i.dg, 255
  %i.dm = uitofp nneg i32 %i.dl to float
  %i.dn = fmul float %i.dj, %i.dm
  %i.do = fptoui float %i.dn to i8
  %i.dp = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.dq = uitofp nneg i32 %i.dp to float
  %i.dr = fmul float %i.dj, %i.dq
  %i.ds = fptoui float %i.dr to i8
  %i.dt = and i32 %.sroa.7.0.extract.shift.i.i, 255
  %i.du = uitofp nneg i32 %i.dt to float
  %i.dv = fmul float %i.dj, %i.du
  %i.dw = fptoui float %i.dv to i8
  br label %nk_rgb_factor.exit.i

nk_rgb_factor.exit.i:                             ; preds = %bb.ab, %bb.aa
  %.sroa.3.0.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i, %bb.aa ], [ %i.ds, %bb.ab ]
  %.sroa.011.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %bb.aa ], [ %i.do, %bb.ab ]
  %.sroa.512.0.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i, %bb.aa ], [ %i.dw, %bb.ab ]
  %.sroa.9.0.extract.shift.i.i = and i32 %i.dg, -16777216
  %.sroa.512.0.insert.ext.i.i = zext i8 %.sroa.512.0.i.i to i32
  %.sroa.512.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i, 16
  %.sroa.512.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i, %.sroa.9.0.extract.shift.i.i
  %.sroa.3.0.insert.ext.i.i = zext i8 %.sroa.3.0.i.i to i32
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i, 8
  %.sroa.3.0.insert.insert.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.011.0.insert.ext.i.i = zext i8 %.sroa.011.0.i.i to i32
  %.sroa.011.0.insert.insert.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i, %.sroa.011.0.insert.ext.i.i
  store i32 %.sroa.011.0.insert.insert.i.i, ptr %i.dh, align 4
  store <2 x float> zeroinitializer, ptr %14, align 8, !tbaa !8
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 220
  %i.dz = load i32, ptr %i.dy, align 4
  store i32 %i.dz, ptr %i.dx, align 8
  call fastcc void @nk_widget_text(ptr noundef nonnull %1, <2 x float> %.sroa.0.4.vec.insert229, <2 x float> %.sroa.8.12.vec.insert, ptr noundef %5, i32 noundef %6, ptr noundef %14, i32 noundef %12, ptr noundef nonnull %10)
  %i.ea = load i32, ptr %.0.i, align 8, !tbaa !754
  %i.eb = icmp eq i32 %i.ea, 0
  %i.ec = load float, ptr %i.di, align 4, !tbaa !1065 ; 6 uses
  br i1 %i.eb, label %bb.ac, label %nk_rgb_factor.exit95.i

bb.ac:                                            ; preds = %nk_rgb_factor.exit.i
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ee = load i32, ptr %i.ed, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i48.i = lshr i32 %i.ee, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i49.i = lshr i32 %i.ee, 16 ; 2 uses
  %i.ef = fcmp oeq float %i.ec, 1.000000e+00
  br i1 %i.ef, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.7.0.extract.trunc.i62.i = trunc i32 %.sroa.7.0.extract.shift.i49.i to i8
  %.sroa.5.0.extract.trunc.i63.i = trunc i32 %.sroa.5.0.extract.shift.i48.i to i8
  %.sroa.0.0.extract.trunc.i64.i = trunc i32 %i.ee to i8
  br label %nk_rgb_factor.exit65.i

bb.ae:                                            ; preds = %bb.ac
  %i.eg = and i32 %i.ee, 255
  %i.eh = uitofp nneg i32 %i.eg to float
  %i.ei = fmul float %i.ec, %i.eh
  %i.ej = fptoui float %i.ei to i8
  %i.ek = and i32 %.sroa.5.0.extract.shift.i48.i, 255
  %i.el = uitofp nneg i32 %i.ek to float
  %i.em = fmul float %i.ec, %i.el
  %i.en = fptoui float %i.em to i8
  %i.eo = and i32 %.sroa.7.0.extract.shift.i49.i, 255
  %i.ep = uitofp nneg i32 %i.eo to float
  %i.eq = fmul float %i.ec, %i.ep
  %i.er = fptoui float %i.eq to i8
  br label %nk_rgb_factor.exit65.i

nk_rgb_factor.exit65.i:                           ; preds = %bb.ae, %bb.ad
  %.sroa.3.0.i50.i = phi i8 [ %.sroa.5.0.extract.trunc.i63.i, %bb.ad ], [ %i.en, %bb.ae ]
  %.sroa.011.0.i51.i = phi i8 [ %.sroa.0.0.extract.trunc.i64.i, %bb.ad ], [ %i.ej, %bb.ae ]
  %.sroa.512.0.i52.i = phi i8 [ %.sroa.7.0.extract.trunc.i62.i, %bb.ad ], [ %i.er, %bb.ae ]
  %.sroa.9.0.extract.shift.i53.i = and i32 %i.ee, -16777216
  %.sroa.512.0.insert.ext.i54.i = zext i8 %.sroa.512.0.i52.i to i32
  %.sroa.512.0.insert.shift.i55.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i54.i, 16
  %.sroa.512.0.insert.insert.i56.i = or disjoint i32 %.sroa.512.0.insert.shift.i55.i, %.sroa.9.0.extract.shift.i53.i
  %.sroa.3.0.insert.ext.i57.i = zext i8 %.sroa.3.0.i50.i to i32
  %.sroa.3.0.insert.shift.i58.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i57.i, 8
  %.sroa.3.0.insert.insert.i59.i = or disjoint i32 %.sroa.512.0.insert.insert.i56.i, %.sroa.3.0.insert.shift.i58.i
  %.sroa.011.0.insert.ext.i60.i = zext i8 %.sroa.011.0.i51.i to i32
  %.sroa.011.0.insert.insert.i61.i = or disjoint i32 %.sroa.3.0.insert.insert.i59.i, %.sroa.011.0.insert.ext.i60.i
  tail call void @nk_fill_rect(ptr noundef nonnull %1, <2 x float> %.sroa.0243.1, <2 x float> %i.g, float noundef 0.000000e+00, i32 %.sroa.011.0.insert.insert.i61.i)
  %i.es = load float, ptr %i.az, align 8, !tbaa !1063 ; 3 uses
  %i.et = fmul float %i.es, 2.000000e+00          ; 2 uses
  %i.eu = fcmp olt float %i.b, %i.et
  %i.ev = select i1 %i.eu, float %i.et, float %i.b
  %i.ew = insertelement <2 x float> poison, float %i.es, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fadd <2 x float> %.sroa.0243.1, %i.ex
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.es, float -2.000000e+00, float %i.ev)
  %.sroa.320.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.ez, i64 0
  %.sroa.320.12.vec.insert.i.i = shufflevector <2 x float> %.sroa.320.8.vec.insert.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.fb = load float, ptr %i.di, align 4, !tbaa !1065 ; 4 uses
  %i.fc = load i32, ptr %i.fa, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i66.i = lshr i32 %i.fc, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i67.i = lshr i32 %i.fc, 16 ; 2 uses
  %i.fd = fcmp oeq float %i.fb, 1.000000e+00
  br i1 %i.fd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %nk_rgb_factor.exit65.i
  %.sroa.7.0.extract.trunc.i80.i = trunc i32 %.sroa.7.0.extract.shift.i67.i to i8
  %.sroa.5.0.extract.trunc.i81.i = trunc i32 %.sroa.5.0.extract.shift.i66.i to i8
  %.sroa.0.0.extract.trunc.i82.i = trunc i32 %i.fc to i8
  br label %nk_rgb_factor.exit83.i

bb.ag:                                            ; preds = %nk_rgb_factor.exit65.i
  %i.fe = and i32 %i.fc, 255
  %i.ff = uitofp nneg i32 %i.fe to float
  %i.fg = fmul float %i.fb, %i.ff
  %i.fh = fptoui float %i.fg to i8
  %i.fi = and i32 %.sroa.5.0.extract.shift.i66.i, 255
  %i.fj = uitofp nneg i32 %i.fi to float
  %i.fk = fmul float %i.fb, %i.fj
  %i.fl = fptoui float %i.fk to i8
  %i.fm = and i32 %.sroa.7.0.extract.shift.i67.i, 255
  %i.fn = uitofp nneg i32 %i.fm to float
  %i.fo = fmul float %i.fb, %i.fn
  %i.fp = fptoui float %i.fo to i8
  br label %nk_rgb_factor.exit83.i

nk_rgb_factor.exit83.i:                           ; preds = %bb.ag, %bb.af
  %.sroa.3.0.i68.i = phi i8 [ %.sroa.5.0.extract.trunc.i81.i, %bb.af ], [ %i.fl, %bb.ag ]
  %.sroa.011.0.i69.i = phi i8 [ %.sroa.0.0.extract.trunc.i82.i, %bb.af ], [ %i.fh, %bb.ag ]
  %.sroa.512.0.i70.i = phi i8 [ %.sroa.7.0.extract.trunc.i80.i, %bb.af ], [ %i.fp, %bb.ag ]
  %.sroa.9.0.extract.shift.i71.i = and i32 %i.fc, -16777216
  %.sroa.512.0.insert.ext.i72.i = zext i8 %.sroa.512.0.i70.i to i32
  %.sroa.512.0.insert.shift.i73.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i72.i, 16
  %.sroa.512.0.insert.insert.i74.i = or disjoint i32 %.sroa.512.0.insert.shift.i73.i, %.sroa.9.0.extract.shift.i71.i
  %.sroa.3.0.insert.ext.i75.i = zext i8 %.sroa.3.0.i68.i to i32
  %.sroa.3.0.insert.shift.i76.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i75.i, 8
  %.sroa.3.0.insert.insert.i77.i = or disjoint i32 %.sroa.512.0.insert.insert.i74.i, %.sroa.3.0.insert.shift.i76.i
  %.sroa.011.0.insert.ext.i78.i = zext i8 %.sroa.011.0.i69.i to i32
  %.sroa.011.0.insert.insert.i79.i = or disjoint i32 %.sroa.3.0.insert.insert.i77.i, %.sroa.011.0.insert.ext.i78.i
  tail call void @nk_fill_rect(ptr noundef nonnull %1, <2 x float> %i.ey, <2 x float> %.sroa.320.12.vec.insert.i.i, float noundef 0.000000e+00, i32 %.sroa.011.0.insert.insert.i79.i)
  br label %bb.ah

nk_rgb_factor.exit95.i:                           ; preds = %nk_rgb_factor.exit.i
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.fr = fcmp oeq float %i.ec, 1.000000e+00
  %i.fs = fmul float %i.ec, 2.550000e+02
  %i.ft = fptoui float %i.fs to i8
  %i.fu = zext i8 %i.ft to i32
  %i.fv = mul nuw nsw i32 %i.fu, 65793
  %i.fw = or disjoint i32 %i.fv, -16777216
  %.sroa.011.0.insert.insert.i94.i = select i1 %i.fr, i32 -1, i32 %i.fw
  tail call void @nk_draw_image(ptr noundef nonnull %1, <2 x float> %.sroa.0243.1, <2 x float> %i.g, ptr noundef nonnull %i.fq, i32 %.sroa.011.0.insert.insert.i94.i)
  br label %bb.ah

bb.ah:                                            ; preds = %nk_rgb_factor.exit95.i, %nk_rgb_factor.exit83.i
  br i1 %i.cz, label %bb.ai, label %nk_draw_checkbox.exit

bb.ai:                                            ; preds = %bb.ah
  %i.fx = load i32, ptr %i.de, align 8, !tbaa !754
  %i.fy = icmp eq i32 %i.fx, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  br i1 %i.fy, label %nk_rgb_factor.exit107.i, label %bb.aj

nk_rgb_factor.exit107.i:                          ; preds = %bb.ai
  %i.ga = load float, ptr %i.di, align 4, !tbaa !1065 ; 2 uses
  %i.gb = fcmp oeq float %i.ga, 1.000000e+00
  %i.gc = fmul float %i.ga, 2.550000e+02
  %i.gd = fptoui float %i.gc to i8
  %i.ge = zext i8 %i.gd to i32
  %i.gf = mul nuw nsw i32 %i.ge, 65793
  %i.gg = or disjoint i32 %i.gf, -16777216
  %.sroa.011.0.insert.insert.i106.i = select i1 %i.gb, i32 -1, i32 %i.gg
  tail call void @nk_draw_image(ptr noundef nonnull %1, <2 x float> %i.be, <2 x float> %i.bj, ptr noundef nonnull readonly %i.fz, i32 %.sroa.011.0.insert.insert.i106.i)
  br label %nk_draw_checkbox.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gh = load i32, ptr %i.fz, align 8
  tail call void @nk_fill_rect(ptr noundef nonnull %1, <2 x float> %i.be, <2 x float> %i.bj, float noundef 0.000000e+00, i32 %i.gh)
  br label %nk_draw_checkbox.exit

nk_draw_checkbox.exit:                            ; preds = %bb.ah, %nk_rgb_factor.exit107.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #50
  br label %bb.az

bb.ak:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #50
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gi = getelementptr inbounds nuw i8, ptr %8, i64 40
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.gj = and i32 %i.cx, 32
  %.not47.i221 = icmp eq i32 %i.gj, 0
  br i1 %.not47.i221, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 40
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.sink296 = phi i64 [ 168, %bb.an ], [ 168, %bb.al ], [ 128, %bb.am ]
  %.sink295 = phi i64 [ 216, %bb.an ], [ 212, %bb.al ], [ 208, %bb.am ]
  %.0.i144 = phi ptr [ %i.gk, %bb.an ], [ %i.gi, %bb.al ], [ %8, %bb.am ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 %.sink296 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 %.sink295
  %i.gn = load i32, ptr %i.gm, align 4            ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.gp = getelementptr inbounds nuw i8, ptr %8, i64 252 ; 4 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !1065 ; 4 uses
  %.sroa.5.0.extract.shift.i.i145 = lshr i32 %i.gn, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i146 = lshr i32 %i.gn, 16 ; 2 uses
  %i.gr = fcmp oeq float %i.gq, 1.000000e+00
  br i1 %i.gr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %.sroa.7.0.extract.trunc.i.i218 = trunc i32 %.sroa.7.0.extract.shift.i.i146 to i8
  %.sroa.5.0.extract.trunc.i.i219 = trunc i32 %.sroa.5.0.extract.shift.i.i145 to i8
  %.sroa.0.0.extract.trunc.i.i220 = trunc i32 %i.gn to i8
  br label %nk_rgb_factor.exit.i147

bb.aq:                                            ; preds = %bb.ao
  %i.gs = and i32 %i.gn, 255
  %i.gt = uitofp nneg i32 %i.gs to float
  %i.gu = fmul float %i.gq, %i.gt
  %i.gv = fptoui float %i.gu to i8
  %i.gw = and i32 %.sroa.5.0.extract.shift.i.i145, 255
  %i.gx = uitofp nneg i32 %i.gw to float
  %i.gy = fmul float %i.gq, %i.gx
  %i.gz = fptoui float %i.gy to i8
  %i.ha = and i32 %.sroa.7.0.extract.shift.i.i146, 255
  %i.hb = uitofp nneg i32 %i.ha to float
  %i.hc = fmul float %i.gq, %i.hb
  %i.hd = fptoui float %i.hc to i8
  br label %nk_rgb_factor.exit.i147

nk_rgb_factor.exit.i147:                          ; preds = %bb.aq, %bb.ap
  %.sroa.3.0.i.i148 = phi i8 [ %.sroa.5.0.extract.trunc.i.i219, %bb.ap ], [ %i.gz, %bb.aq ]
  %.sroa.011.0.i.i149 = phi i8 [ %.sroa.0.0.extract.trunc.i.i220, %bb.ap ], [ %i.gv, %bb.aq ]
  %.sroa.512.0.i.i150 = phi i8 [ %.sroa.7.0.extract.trunc.i.i218, %bb.ap ], [ %i.hd, %bb.aq ]
  %.sroa.9.0.extract.shift.i.i151 = and i32 %i.gn, -16777216
  %.sroa.512.0.insert.ext.i.i152 = zext i8 %.sroa.512.0.i.i150 to i32
  %.sroa.512.0.insert.shift.i.i153 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i152, 16
  %.sroa.512.0.insert.insert.i.i154 = or disjoint i32 %.sroa.512.0.insert.shift.i.i153, %.sroa.9.0.extract.shift.i.i151
  %.sroa.3.0.insert.ext.i.i155 = zext i8 %.sroa.3.0.i.i148 to i32
  %.sroa.3.0.insert.shift.i.i156 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i155, 8
  %.sroa.3.0.insert.insert.i.i157 = or disjoint i32 %.sroa.512.0.insert.insert.i.i154, %.sroa.3.0.insert.shift.i.i156
  %.sroa.011.0.insert.ext.i.i158 = zext i8 %.sroa.011.0.i.i149 to i32
  %.sroa.011.0.insert.insert.i.i159 = or disjoint i32 %.sroa.3.0.insert.insert.i.i157, %.sroa.011.0.insert.ext.i.i158
  store i32 %.sroa.011.0.insert.insert.i.i159, ptr %i.go, align 4
  store <2 x float> zeroinitializer, ptr %13, align 8, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %8, i64 220
  %i.hg = load i32, ptr %i.hf, align 4
  store i32 %i.hg, ptr %i.he, align 8
  call fastcc void @nk_widget_text(ptr noundef nonnull %1, <2 x float> %.sroa.0.4.vec.insert229, <2 x float> %.sroa.8.12.vec.insert, ptr noundef %5, i32 noundef %6, ptr noundef %13, i32 noundef %12, ptr noundef nonnull %10)
  %i.hh = load i32, ptr %.0.i144, align 8, !tbaa !754
  %i.hi = icmp eq i32 %i.hh, 0
  %i.hj = load float, ptr %i.gp, align 4, !tbaa !1065 ; 6 uses
  br i1 %i.hi, label %bb.ar, label %nk_rgb_factor.exit95.i160

bb.ar:                                            ; preds = %nk_rgb_factor.exit.i147
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.hl = load i32, ptr %i.hk, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i48.i174 = lshr i32 %i.hl, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i49.i175 = lshr i32 %i.hl, 16 ; 2 uses
  %i.hm = fcmp oeq float %i.hj, 1.000000e+00
  br i1 %i.hm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %.sroa.7.0.extract.trunc.i62.i215 = trunc i32 %.sroa.7.0.extract.shift.i49.i175 to i8
  %.sroa.5.0.extract.trunc.i63.i216 = trunc i32 %.sroa.5.0.extract.shift.i48.i174 to i8
  %.sroa.0.0.extract.trunc.i64.i217 = trunc i32 %i.hl to i8
  br label %nk_rgb_factor.exit65.i176

bb.at:                                            ; preds = %bb.ar
  %i.hn = and i32 %i.hl, 255
  %i.ho = uitofp nneg i32 %i.hn to float
  %i.hp = fmul float %i.hj, %i.ho
  %i.hq = fptoui float %i.hp to i8
  %i.hr = and i32 %.sroa.5.0.extract.shift.i48.i174, 255
  %i.hs = uitofp nneg i32 %i.hr to float
  %i.ht = fmul float %i.hj, %i.hs
  %i.hu = fptoui float %i.ht to i8
  %i.hv = and i32 %.sroa.7.0.extract.shift.i49.i175, 255
  %i.hw = uitofp nneg i32 %i.hv to float
  %i.hx = fmul float %i.hj, %i.hw
  %i.hy = fptoui float %i.hx to i8
  br label %nk_rgb_factor.exit65.i176

nk_rgb_factor.exit65.i176:                        ; preds = %bb.at, %bb.as
  %.sroa.3.0.i50.i177 = phi i8 [ %.sroa.5.0.extract.trunc.i63.i216, %bb.as ], [ %i.hu, %bb.at ]
  %.sroa.011.0.i51.i178 = phi i8 [ %.sroa.0.0.extract.trunc.i64.i217, %bb.as ], [ %i.hq, %bb.at ]
  %.sroa.512.0.i52.i179 = phi i8 [ %.sroa.7.0.extract.trunc.i62.i215, %bb.as ], [ %i.hy, %bb.at ]
  %.sroa.9.0.extract.shift.i53.i180 = and i32 %i.hl, -16777216
  %.sroa.512.0.insert.ext.i54.i181 = zext i8 %.sroa.512.0.i52.i179 to i32
  %.sroa.512.0.insert.shift.i55.i182 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i54.i181, 16
  %.sroa.512.0.insert.insert.i56.i183 = or disjoint i32 %.sroa.512.0.insert.shift.i55.i182, %.sroa.9.0.extract.shift.i53.i180
  %.sroa.3.0.insert.ext.i57.i184 = zext i8 %.sroa.3.0.i50.i177 to i32
  %.sroa.3.0.insert.shift.i58.i185 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i57.i184, 8
  %.sroa.3.0.insert.insert.i59.i186 = or disjoint i32 %.sroa.512.0.insert.insert.i56.i183, %.sroa.3.0.insert.shift.i58.i185
  %.sroa.011.0.insert.ext.i60.i187 = zext i8 %.sroa.011.0.i51.i178 to i32
  %.sroa.011.0.insert.insert.i61.i188 = or disjoint i32 %.sroa.3.0.insert.insert.i59.i186, %.sroa.011.0.insert.ext.i60.i187
  tail call void @nk_fill_circle(ptr noundef nonnull %1, <2 x float> %.sroa.0243.1, <2 x float> %i.g, i32 %.sroa.011.0.insert.insert.i61.i188)
  %i.hz = load float, ptr %i.az, align 8, !tbaa !1063 ; 3 uses
  %i.ia = fmul float %i.hz, 2.000000e+00          ; 2 uses
  %i.ib = fcmp olt float %i.b, %i.ia
  %i.ic = select i1 %i.ib, float %i.ia, float %i.b
  %i.id = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = fadd <2 x float> %.sroa.0243.1, %i.ie
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.hz, float -2.000000e+00, float %i.ic)
  %.sroa.320.8.vec.insert.i.i195 = insertelement <2 x float> poison, float %i.ig, i64 0
  %.sroa.320.12.vec.insert.i.i196 = shufflevector <2 x float> %.sroa.320.8.vec.insert.i.i195, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i144, i64 8
  %i.ii = load float, ptr %i.gp, align 4, !tbaa !1065 ; 4 uses
  %i.ij = load i32, ptr %i.ih, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i66.i197 = lshr i32 %i.ij, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i67.i198 = lshr i32 %i.ij, 16 ; 2 uses
  %i.ik = fcmp oeq float %i.ii, 1.000000e+00
  br i1 %i.ik, label %bb.au, label %bb.av

bb.au:                                            ; preds = %nk_rgb_factor.exit65.i176
  %.sroa.7.0.extract.trunc.i80.i212 = trunc i32 %.sroa.7.0.extract.shift.i67.i198 to i8
  %.sroa.5.0.extract.trunc.i81.i213 = trunc i32 %.sroa.5.0.extract.shift.i66.i197 to i8
  %.sroa.0.0.extract.trunc.i82.i214 = trunc i32 %i.ij to i8
  br label %nk_rgb_factor.exit83.i199

bb.av:                                            ; preds = %nk_rgb_factor.exit65.i176
  %i.il = and i32 %i.ij, 255
  %i.im = uitofp nneg i32 %i.il to float
  %i.in = fmul float %i.ii, %i.im
  %i.io = fptoui float %i.in to i8
  %i.ip = and i32 %.sroa.5.0.extract.shift.i66.i197, 255
  %i.iq = uitofp nneg i32 %i.ip to float
  %i.ir = fmul float %i.ii, %i.iq
  %i.is = fptoui float %i.ir to i8
  %i.it = and i32 %.sroa.7.0.extract.shift.i67.i198, 255
  %i.iu = uitofp nneg i32 %i.it to float
  %i.iv = fmul float %i.ii, %i.iu
  %i.iw = fptoui float %i.iv to i8
  br label %nk_rgb_factor.exit83.i199

nk_rgb_factor.exit83.i199:                        ; preds = %bb.av, %bb.au
  %.sroa.3.0.i68.i200 = phi i8 [ %.sroa.5.0.extract.trunc.i81.i213, %bb.au ], [ %i.is, %bb.av ]
  %.sroa.011.0.i69.i201 = phi i8 [ %.sroa.0.0.extract.trunc.i82.i214, %bb.au ], [ %i.io, %bb.av ]
  %.sroa.512.0.i70.i202 = phi i8 [ %.sroa.7.0.extract.trunc.i80.i212, %bb.au ], [ %i.iw, %bb.av ]
  %.sroa.9.0.extract.shift.i71.i203 = and i32 %i.ij, -16777216
  %.sroa.512.0.insert.ext.i72.i204 = zext i8 %.sroa.512.0.i70.i202 to i32
  %.sroa.512.0.insert.shift.i73.i205 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i72.i204, 16
  %.sroa.512.0.insert.insert.i74.i206 = or disjoint i32 %.sroa.512.0.insert.shift.i73.i205, %.sroa.9.0.extract.shift.i71.i203
  %.sroa.3.0.insert.ext.i75.i207 = zext i8 %.sroa.3.0.i68.i200 to i32
  %.sroa.3.0.insert.shift.i76.i208 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i75.i207, 8
  %.sroa.3.0.insert.insert.i77.i209 = or disjoint i32 %.sroa.512.0.insert.insert.i74.i206, %.sroa.3.0.insert.shift.i76.i208
  %.sroa.011.0.insert.ext.i78.i210 = zext i8 %.sroa.011.0.i69.i201 to i32
  %.sroa.011.0.insert.insert.i79.i211 = or disjoint i32 %.sroa.3.0.insert.insert.i77.i209, %.sroa.011.0.insert.ext.i78.i210
  tail call void @nk_fill_circle(ptr noundef nonnull %1, <2 x float> %i.if, <2 x float> %.sroa.320.12.vec.insert.i.i196, i32 %.sroa.011.0.insert.insert.i79.i211)
  br label %bb.aw

nk_rgb_factor.exit95.i160:                        ; preds = %nk_rgb_factor.exit.i147
  %i.ix = getelementptr inbounds nuw i8, ptr %.0.i144, i64 8
  %i.iy = fcmp oeq float %i.hj, 1.000000e+00
  %i.iz = fmul float %i.hj, 2.550000e+02
  %i.ja = fptoui float %i.iz to i8
  %i.jb = zext i8 %i.ja to i32
  %i.jc = mul nuw nsw i32 %i.jb, 65793
  %i.jd = or disjoint i32 %i.jc, -16777216
  %.sroa.011.0.insert.insert.i94.i166 = select i1 %i.iy, i32 -1, i32 %i.jd
  tail call void @nk_draw_image(ptr noundef nonnull %1, <2 x float> %.sroa.0243.1, <2 x float> %i.g, ptr noundef nonnull %i.ix, i32 %.sroa.011.0.insert.insert.i94.i166)
  br label %bb.aw

bb.aw:                                            ; preds = %nk_rgb_factor.exit95.i160, %nk_rgb_factor.exit83.i199
  br i1 %i.cz, label %bb.ax, label %nk_draw_option.exit

bb.ax:                                            ; preds = %bb.aw
  %i.je = load i32, ptr %i.gl, align 8, !tbaa !754
  %i.jf = icmp eq i32 %i.je, 1
  %i.jg = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  br i1 %i.jf, label %nk_rgb_factor.exit107.i167, label %bb.ay

nk_rgb_factor.exit107.i167:                       ; preds = %bb.ax
  %i.jh = load float, ptr %i.gp, align 4, !tbaa !1065 ; 2 uses
  %i.ji = fcmp oeq float %i.jh, 1.000000e+00
  %i.jj = fmul float %i.jh, 2.550000e+02
  %i.jk = fptoui float %i.jj to i8
  %i.jl = zext i8 %i.jk to i32
  %i.jm = mul nuw nsw i32 %i.jl, 65793
  %i.jn = or disjoint i32 %i.jm, -16777216
  %.sroa.011.0.insert.insert.i106.i173 = select i1 %i.ji, i32 -1, i32 %i.jn
  tail call void @nk_draw_image(ptr noundef nonnull %1, <2 x float> %i.be, <2 x float> %i.bj, ptr noundef nonnull readonly %i.jg, i32 %.sroa.011.0.insert.insert.i106.i173)
  br label %nk_draw_option.exit

bb.ay:                                            ; preds = %bb.ax
  %i.jo = load i32, ptr %i.jg, align 8
  tail call void @nk_fill_circle(ptr noundef nonnull %1, <2 x float> %i.be, <2 x float> %i.bj, i32 %i.jo)
  br label %nk_draw_option.exit

nk_draw_option.exit:                              ; preds = %bb.aw, %nk_rgb_factor.exit107.i167, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #50
  br label %bb.az

bb.az:                                            ; preds = %nk_draw_option.exit, %nk_draw_checkbox.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 280
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1066 ; 2 uses
  %.not133 = icmp eq ptr %i.jq, null
  br i1 %.not133, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jr = getelementptr inbounds nuw i8, ptr %8, i64 264
  %i.js = load ptr, ptr %i.jr, align 8
  tail call void %i.jq(ptr noundef nonnull %1, ptr %i.js) #50
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_check_text_align(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #20 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %6 = alloca %struct.nk_rect, align 8            ; 5 uses
  %i.b = zext i1 %3 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !958
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !758  ; 3 uses
  %.not26 = icmp eq ptr %i.d, null
  br i1 %.not26, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !759  ; 2 uses
  %.not27 = icmp eq ptr %i.f, null
  br i1 %.not27, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = call i32 @nk_widget(ptr noundef nonnull %6, ptr noundef nonnull %0)
  switch i32 %i.h, label %bb.f [
    i32 0, label %bb.g
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !848
  %i.k = and i32 %i.j, 4096
  %.not29 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not29, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !756
  %i.q = load <2 x float>, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load <2 x float>, ptr %i.r, align 8
  call fastcc void @nk_do_toggle(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.q, <2 x float> %i.s, ptr noundef %i.a, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %i.o, ptr noundef %i.l, ptr noundef %i.p, i32 noundef %4, i32 noundef %5)
  %.0.in.pre = load i8, ptr %i.a, align 1, !tbaa !958, !range !79
  %i.t = trunc nuw i8 %.0.in.pre to i1
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c, %bb.f
  %.0.in = phi i1 [ %3, %bb.d ], [ %3, %bb.a ], [ %3, %bb.b ], [ %3, %bb.c ], [ %i.t, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  ret i1 %.0.in
}

; Function Attrs: nounwind uwtable
define i32 @nk_check_flags_text(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %4, %3
  %i.e = icmp ne i32 %i.d, 0                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = zext i1 %i.e to i8
  store i8 %i.f, ptr %i.a, align 1, !tbaa !958
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !758  ; 3 uses
  %.not24.i = icmp eq ptr %i.h, null
  br i1 %.not24.i, label %nk_check_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !759  ; 2 uses
  %.not25.i = icmp eq ptr %i.j, null
  br i1 %.not25.i, label %nk_check_text.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.l = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0)
  switch i32 %i.l, label %bb.f [
    i32 0, label %nk_check_text.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !848
  %i.o = and i32 %i.n, 4096
  %.not27.i = icmp eq i32 %i.o, 0
  %spec.select.i = select i1 %.not27.i, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ null, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !756
  %i.u = load <2 x float>, ptr %5, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load <2 x float>, ptr %i.v, align 8
  call fastcc void @nk_do_toggle(ptr noundef %i.q, ptr noundef %i.r, <2 x float> %i.u, <2 x float> %i.w, ptr noundef %i.a, ptr noundef nonnull %1, i32 noundef %2, i32 noundef 0, ptr noundef %i.s, ptr noundef %i.p, ptr noundef %i.t, i32 noundef 17, i32 noundef 17)
  %.0.in.pre.i = load i8, ptr %i.a, align 1, !tbaa !958, !range !79
  %i.x = trunc nuw i8 %.0.in.pre.i to i1
  br label %nk_check_text.exit

nk_check_text.exit:                               ; preds = %bb.b, %bb.c, %bb.d, %bb.f
  %.0.in.i = phi i1 [ %i.e, %bb.d ], [ %i.x, %bb.f ], [ %i.e, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = or i32 %4, %3
  %i.z = xor i32 %4, -1
  %i.aa = and i32 %3, %i.z
  %.016 = select i1 %.0.in.i, i32 %i.y, i32 %i.aa
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %nk_check_text.exit
  %.0 = phi i32 [ %.016, %nk_check_text.exit ], [ %3, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_checkbox_text(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #20 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %4 = alloca %struct.nk_rect, align 8            ; 5 uses
  %i.b = icmp ne ptr %0, null
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp ne ptr %3, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %3, align 1, !tbaa !958, !range !79, !noundef !80 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.e, ptr %i.a, align 1, !tbaa !958
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !758  ; 3 uses
  %.not24.i = icmp eq ptr %i.g, null
  br i1 %.not24.i, label %nk_check_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !759  ; 2 uses
  %.not25.i = icmp eq ptr %i.i, null
  br i1 %.not25.i, label %nk_check_text.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.k = call i32 @nk_widget(ptr noundef nonnull %4, ptr noundef nonnull %0)
  switch i32 %i.k, label %bb.f [
    i32 0, label %nk_check_text.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !848
  %i.n = and i32 %i.m, 4096
  %.not27.i = icmp eq i32 %i.n, 0
end_hunk_2
begin_hunk_3_@nk_property:bb.a
  %i.jf = add nsw i32 %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !11
  %.86.i.i.i = call i32 @llvm.smin.i32(i32 %i.jf, i32 %i.jh)
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !11
  %spec.select.i.i.i = call i32 @llvm.smax.i32(i32 %.86.i.i.i, i32 %i.jj)
  store i32 %spec.select.i.i.i, ptr %i.jc, align 8, !tbaa !11
  br label %.thread.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jl = load float, ptr %i.jk, align 8, !tbaa !11
  %i.jm = fadd float %i.ja, %i.jl                 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jo = load float, ptr %i.jn, align 8, !tbaa !11 ; 2 uses
  %i.jp = fcmp olt float %i.jm, %i.jo
  %.88.i.i.i = select i1 %i.jp, float %i.jm, float %i.jo ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jr = load float, ptr %i.jq, align 8, !tbaa !11 ; 2 uses
  %i.js = fcmp olt float %.88.i.i.i, %i.jr
  %i.jt = select i1 %i.js, float %i.jr, float %.88.i.i.i
  store float %i.jt, ptr %i.jk, align 8, !tbaa !11
  br label %.thread.i.i.i

bb.as:                                            ; preds = %bb.ap
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !11
  %i.jw = fpext float %i.ja to double
  %i.jx = fadd double %i.jv, %i.jw                ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !11 ; 2 uses
  %i.ka = fcmp olt double %i.jx, %i.jz
  %.90.i.i.i = select i1 %i.ka, double %i.jx, double %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !11 ; 2 uses
  %i.kd = fcmp olt double %.90.i.i.i, %i.kc
  %i.ke = select i1 %i.kd, double %i.kc, double %.90.i.i.i
  store double %i.ke, ptr %i.ju, align 8, !tbaa !11
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  store i32 34, ptr %i.bg, align 8, !tbaa !10
  br label %..thread115_crit_edge.i.i.i

bb.at:                                            ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.i.i.i
  %i.kf = and i32 %i.ix, 16
  %.not85.i.i.i = icmp eq i32 %i.kf, 0
  br i1 %.not85.i.i.i, label %..thread115_crit_edge.i.i.i, label %bb.au

..thread115_crit_edge.i.i.i:                      ; preds = %bb.at, %.thread.i.i.i
  %i.kg = phi i32 [ 34, %.thread.i.i.i ], [ %i.ix, %bb.at ]
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 364
  %.pre.i.i.i = load float, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !718
  br label %.thread115.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.kh = getelementptr inbounds nuw i8, ptr %i.bf, i64 364
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !718 ; 3 uses
  %i.kj = fcmp ole float %.sroa.0394.0.vec.extract.i, %i.ki
  %i.kk = fcmp olt float %i.ki, %i.cz
  %or.cond.i97.i.i.i = select i1 %i.kj, i1 %i.kk, i1 false
  br i1 %or.cond.i97.i.i.i, label %bb.av, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.kl = getelementptr inbounds nuw i8, ptr %i.bf, i64 368
  %i.km = load float, ptr %i.kl, align 4, !tbaa !719 ; 2 uses
  %i.kn = fcmp ole float %.sroa.0394.4.vec.extract402.i, %i.km
  %i.ko = fadd float %.sroa.0394.4.vec.extract402.i, %.sroa.8403.12.vec.extract409.i
  %i.kp = fcmp olt float %i.km, %i.ko
  %or.cond125.i.i.i = select i1 %i.kn, i1 %i.kp, i1 false
  br i1 %or.cond125.i.i.i, label %.thread115.i.i.i, label %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i.i

nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i.i: ; preds = %bb.av, %bb.au
  %i.kq = or i32 %i.ix, 8
  br label %nk_input_is_mouse_prev_hovering_rect.exit108.thread.sink.split.i.i.i

.thread115.i.i.i:                                 ; preds = %bb.av, %..thread115_crit_edge.i.i.i
  %i.kr = phi i32 [ %i.kg, %..thread115_crit_edge.i.i.i ], [ %i.ix, %bb.av ] ; 3 uses
  %i.ks = phi float [ %.pre.i.i.i, %..thread115_crit_edge.i.i.i ], [ %i.ki, %bb.av ] ; 2 uses
  %i.kt = fcmp ole float %.sroa.0394.0.vec.extract.i, %i.ks
  %i.ku = fcmp olt float %i.ks, %i.cz
  %or.cond.i104.i.i.i = select i1 %i.kt, i1 %i.ku, i1 false
  br i1 %or.cond.i104.i.i.i, label %bb.aw, label %nk_drag_behavior.exit.i.i

bb.aw:                                            ; preds = %.thread115.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.bf, i64 368
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !719 ; 2 uses
  %i.kx = fcmp ole float %.sroa.0394.4.vec.extract402.i, %i.kw
  %i.ky = fadd float %.sroa.0394.4.vec.extract402.i, %.sroa.8403.12.vec.extract409.i
  %i.kz = fcmp olt float %i.kw, %i.ky
  %or.cond127.i.i.i = select i1 %i.kx, i1 %i.kz, i1 false
  br i1 %or.cond127.i.i.i, label %bb.ax, label %nk_drag_behavior.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.la = or i32 %i.kr, 64
  br label %nk_input_is_mouse_prev_hovering_rect.exit108.thread.sink.split.i.i.i

nk_input_is_mouse_prev_hovering_rect.exit108.thread.sink.split.i.i.i: ; preds = %bb.ax, %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i.i, %.thread52.i.i
  %..sink.i.i.i = phi i32 [ %i.kq, %nk_input_is_mouse_prev_hovering_rect.exit.thread.i.i.i ], [ %i.la, %bb.ax ], [ %..i.i, %.thread52.i.i ] ; 2 uses
  store i32 %..sink.i.i.i, ptr %i.bg, align 8, !tbaa !10
  br label %nk_drag_behavior.exit.i.i

nk_drag_behavior.exit.i.i:                        ; preds = %nk_input_is_mouse_prev_hovering_rect.exit108.thread.sink.split.i.i.i, %bb.aw, %.thread115.i.i.i
  %i.lb = phi i32 [ %i.kr, %.thread115.i.i.i ], [ %i.kr, %bb.aw ], [ %..sink.i.i.i, %nk_input_is_mouse_prev_hovering_rect.exit108.thread.sink.split.i.i.i ]
  %i.lc = and i32 %i.lb, 32
  %.not26.i.i = icmp eq i32 %i.lc, 0
  br i1 %.not26.i.i, label %.sink.split.i.i, label %nk_property_behavior.exit.i

.sink.split.i.i:                                  ; preds = %nk_drag_behavior.exit.i.i, %bb.ah
  %.sink.i.i = phi i32 [ 1, %bb.ah ], [ 0, %nk_drag_behavior.exit.i.i ]
  store i32 %.sink.i.i, ptr %.0105, align 4, !tbaa !10
  br label %nk_property_behavior.exit.i

nk_property_behavior.exit.i:                      ; preds = %.sink.split.i.i, %nk_drag_behavior.exit.i.i, %.thread52.i.i, %bb.al, %bb.ag
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 4936
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !1157 ; 2 uses
  %.not335.i = icmp eq ptr %i.le, null
  br i1 %.not335.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %nk_property_behavior.exit.i
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 4928
  %i.lg = load ptr, ptr %i.lf, align 8
  call void %i.le(ptr noundef nonnull %i.bh, ptr %i.lg) #50, !inline_history !1149
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %nk_property_behavior.exit.i
  %i.lh = load i32, ptr %i.bg, align 8, !tbaa !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.li = and i32 %i.lh, 32
  %.not.i375.i = icmp eq i32 %i.li, 0             ; 2 uses
  %i.lj = and i32 %i.lh, 16
  %.not44.i.i = icmp eq i32 %i.lj, 0              ; 2 uses
  %spec.select455.i = select i1 %.not44.i.i, i64 124, i64 128
  %spec.select456.idx.i = select i1 %.not44.i.i, i64 0, i64 40
  %.sink453.i = select i1 %.not.i375.i, i64 %spec.select455.i, i64 132
  %.0.i376.v.i = select i1 %.not.i375.i, i64 %spec.select456.idx.i, i64 80
  %.0.i376.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0.i376.v.i ; 4 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sink453.i
  %i.ll = load i32, ptr %i.lk, align 4            ; 5 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 3520 ; 2 uses
  %i.lo = load float, ptr %i.ln, align 8, !tbaa !1158 ; 9 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i32 %i.ll, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i.i = lshr i32 %i.ll, 16 ; 2 uses
  %i.lp = fcmp oeq float %i.lo, 1.000000e+00      ; 4 uses
  br i1 %i.lp, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.sroa.7.0.extract.trunc.i.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i.i to i8
  %.sroa.5.0.extract.trunc.i.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i.i to i8
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.ll to i8
  br label %nk_rgb_factor.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %i.lq = and i32 %i.ll, 255
  %i.lr = uitofp nneg i32 %i.lq to float
  %i.ls = fmul float %i.lo, %i.lr
  %i.lt = fptoui float %i.ls to i8
  %i.lu = and i32 %.sroa.5.0.extract.shift.i.i.i, 255
  %i.lv = uitofp nneg i32 %i.lu to float
  %i.lw = fmul float %i.lo, %i.lv
  %i.lx = fptoui float %i.lw to i8
  %i.ly = and i32 %.sroa.7.0.extract.shift.i.i.i, 255
  %i.lz = uitofp nneg i32 %i.ly to float
  %i.ma = fmul float %i.lo, %i.lz
  %i.mb = fptoui float %i.ma to i8
  br label %nk_rgb_factor.exit.i.i

nk_rgb_factor.exit.i.i:                           ; preds = %bb.bb, %bb.ba
  %.sroa.3.0.i.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i.i, %bb.ba ], [ %i.lx, %bb.bb ]
  %.sroa.011.0.i.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i.i, %bb.ba ], [ %i.lt, %bb.bb ]
  %.sroa.512.0.i.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i.i, %bb.ba ], [ %i.mb, %bb.bb ]
  %.sroa.9.0.extract.shift.i.i.i = and i32 %i.ll, -16777216
  %.sroa.512.0.insert.ext.i.i.i = zext i8 %.sroa.512.0.i.i.i to i32
  %.sroa.512.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i.i.i, 16
  %.sroa.512.0.insert.insert.i.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i.i.i, %.sroa.9.0.extract.shift.i.i.i
  %.sroa.3.0.insert.ext.i.i.i = zext i8 %.sroa.3.0.i.i.i to i32
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i.i.i, 8
  %.sroa.3.0.insert.insert.i.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i.i.i, %.sroa.3.0.insert.shift.i.i.i
  %.sroa.011.0.insert.ext.i.i.i = zext i8 %.sroa.011.0.i.i.i to i32
  %.sroa.011.0.insert.insert.i.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i.i.i, %.sroa.011.0.insert.ext.i.i.i
  store i32 %.sroa.011.0.insert.insert.i.i.i, ptr %i.lm, align 4
  %i.mc = load i32, ptr %.0.i376.i, align 8, !tbaa !754
  switch i32 %i.mc, label %bb.bh [
    i32 1, label %nk_rgb_factor.exit57.i.i
    i32 2, label %nk_rgb_factor.exit69.i.i
    i32 0, label %bb.bc
  ]

nk_rgb_factor.exit57.i.i:                         ; preds = %nk_rgb_factor.exit.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %.0.i376.i, i64 8
  %i.mf = fmul float %i.lo, 2.550000e+02
  %i.mg = fptoui float %i.mf to i8
  %i.mh = zext i8 %i.mg to i32
  %i.mi = mul nuw nsw i32 %i.mh, 65793
  %i.mj = or disjoint i32 %i.mi, -16777216
  %.sroa.011.0.insert.insert.i56.i.i = select i1 %i.lp, i32 -1, i32 %i.mj
  call void @nk_draw_image(ptr noundef nonnull %i.bh, <2 x float> %i.bm, <2 x float> %i.bo, ptr noundef nonnull readonly %i.me, i32 %.sroa.011.0.insert.insert.i56.i.i)
  br label %bb.bh

nk_rgb_factor.exit69.i.i:                         ; preds = %nk_rgb_factor.exit.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i376.i, i64 8
  %i.mm = fmul float %i.lo, 2.550000e+02
  %i.mn = fptoui float %i.mm to i8
  %i.mo = zext i8 %i.mn to i32
  %i.mp = mul nuw nsw i32 %i.mo, 65793
  %i.mq = or disjoint i32 %i.mp, -16777216
  %.sroa.011.0.insert.insert.i68.i.i = select i1 %i.lp, i32 -1, i32 %i.mq
  call void @nk_draw_nine_slice(ptr noundef nonnull %i.bh, <2 x float> %i.bm, <2 x float> %i.bo, ptr noundef nonnull readonly %i.ml, i32 %.sroa.011.0.insert.insert.i68.i.i)
  br label %bb.bh

bb.bc:                                            ; preds = %nk_rgb_factor.exit.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.i376.i, i64 8
  %i.mt = load i32, ptr %i.ms, align 8            ; 6 uses
  store i32 %i.mt, ptr %i.mr, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 3508 ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !1159
  %.sroa.5.0.extract.shift.i70.i.i = lshr i32 %i.mt, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i71.i.i = lshr i32 %i.mt, 16 ; 2 uses
  br i1 %i.lp, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %.sroa.7.0.extract.trunc.i84.i.i = trunc i32 %.sroa.7.0.extract.shift.i71.i.i to i8
  %.sroa.5.0.extract.trunc.i85.i.i = trunc i32 %.sroa.5.0.extract.shift.i70.i.i to i8
  %.sroa.0.0.extract.trunc.i86.i.i = trunc i32 %i.mt to i8
  br label %nk_rgb_factor.exit87.i.i

bb.be:                                            ; preds = %bb.bc
  %i.mw = and i32 %i.mt, 255
  %i.mx = uitofp nneg i32 %i.mw to float
  %i.my = fmul float %i.lo, %i.mx
  %i.mz = fptoui float %i.my to i8
  %i.na = and i32 %.sroa.5.0.extract.shift.i70.i.i, 255
  %i.nb = uitofp nneg i32 %i.na to float
  %i.nc = fmul float %i.lo, %i.nb
  %i.nd = fptoui float %i.nc to i8
  %i.ne = and i32 %.sroa.7.0.extract.shift.i71.i.i, 255
  %i.nf = uitofp nneg i32 %i.ne to float
  %i.ng = fmul float %i.lo, %i.nf
  %i.nh = fptoui float %i.ng to i8
  br label %nk_rgb_factor.exit87.i.i

nk_rgb_factor.exit87.i.i:                         ; preds = %bb.be, %bb.bd
  %.sroa.3.0.i72.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i85.i.i, %bb.bd ], [ %i.nd, %bb.be ]
  %.sroa.011.0.i73.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i86.i.i, %bb.bd ], [ %i.mz, %bb.be ]
  %.sroa.512.0.i74.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i84.i.i, %bb.bd ], [ %i.nh, %bb.be ]
  %.sroa.9.0.extract.shift.i75.i.i = and i32 %i.mt, -16777216
  %.sroa.512.0.insert.ext.i76.i.i = zext i8 %.sroa.512.0.i74.i.i to i32
  %.sroa.512.0.insert.shift.i77.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i76.i.i, 16
  %.sroa.512.0.insert.insert.i78.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i77.i.i, %.sroa.9.0.extract.shift.i75.i.i
  %.sroa.3.0.insert.ext.i79.i.i = zext i8 %.sroa.3.0.i72.i.i to i32
  %.sroa.3.0.insert.shift.i80.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i79.i.i, 8
  %.sroa.3.0.insert.insert.i81.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i78.i.i, %.sroa.3.0.insert.shift.i80.i.i
  %.sroa.011.0.insert.ext.i82.i.i = zext i8 %.sroa.011.0.i73.i.i to i32
  %.sroa.011.0.insert.insert.i83.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i81.i.i, %.sroa.011.0.insert.ext.i82.i.i
  call void @nk_fill_rect(ptr noundef nonnull %i.bh, <2 x float> %i.bm, <2 x float> %i.bo, float noundef %i.mv, i32 %.sroa.011.0.insert.insert.i83.i.i)
  %i.ni = load float, ptr %i.mu, align 4, !tbaa !1159
  %i.nj = load float, ptr %i.bs, align 8, !tbaa !1147
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.nl = load float, ptr %i.ln, align 8, !tbaa !1158 ; 4 uses
  %i.nm = load i32, ptr %i.nk, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i88.i.i = lshr i32 %i.nm, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i89.i.i = lshr i32 %i.nm, 16 ; 2 uses
  %i.nn = fcmp oeq float %i.nl, 1.000000e+00
  br i1 %i.nn, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %nk_rgb_factor.exit87.i.i
  %.sroa.7.0.extract.trunc.i102.i.i = trunc i32 %.sroa.7.0.extract.shift.i89.i.i to i8
  %.sroa.5.0.extract.trunc.i103.i.i = trunc i32 %.sroa.5.0.extract.shift.i88.i.i to i8
  %.sroa.0.0.extract.trunc.i104.i.i = trunc i32 %i.nm to i8
  br label %nk_rgb_factor.exit105.i.i

bb.bg:                                            ; preds = %nk_rgb_factor.exit87.i.i
  %i.no = and i32 %i.nm, 255
  %i.np = uitofp nneg i32 %i.no to float
  %i.nq = fmul float %i.nl, %i.np
  %i.nr = fptoui float %i.nq to i8
  %i.ns = and i32 %.sroa.5.0.extract.shift.i88.i.i, 255
  %i.nt = uitofp nneg i32 %i.ns to float
  %i.nu = fmul float %i.nl, %i.nt
  %i.nv = fptoui float %i.nu to i8
  %i.nw = and i32 %.sroa.7.0.extract.shift.i89.i.i, 255
  %i.nx = uitofp nneg i32 %i.nw to float
  %i.ny = fmul float %i.nl, %i.nx
  %i.nz = fptoui float %i.ny to i8
  br label %nk_rgb_factor.exit105.i.i

nk_rgb_factor.exit105.i.i:                        ; preds = %bb.bg, %bb.bf
  %.sroa.3.0.i90.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i103.i.i, %bb.bf ], [ %i.nv, %bb.bg ]
  %.sroa.011.0.i91.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i104.i.i, %bb.bf ], [ %i.nr, %bb.bg ]
  %.sroa.512.0.i92.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i102.i.i, %bb.bf ], [ %i.nz, %bb.bg ]
  %.sroa.9.0.extract.shift.i93.i.i = and i32 %i.nm, -16777216
  %.sroa.512.0.insert.ext.i94.i.i = zext i8 %.sroa.512.0.i92.i.i to i32
  %.sroa.512.0.insert.shift.i95.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i94.i.i, 16
  %.sroa.512.0.insert.insert.i96.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i95.i.i, %.sroa.9.0.extract.shift.i93.i.i
  %.sroa.3.0.insert.ext.i97.i.i = zext i8 %.sroa.3.0.i90.i.i to i32
  %.sroa.3.0.insert.shift.i98.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i97.i.i, 8
  %.sroa.3.0.insert.insert.i99.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i96.i.i, %.sroa.3.0.insert.shift.i98.i.i
  %.sroa.011.0.insert.ext.i100.i.i = zext i8 %.sroa.011.0.i91.i.i to i32
  %.sroa.011.0.insert.insert.i101.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i99.i.i, %.sroa.011.0.insert.ext.i100.i.i
  call void @nk_stroke_rect(ptr noundef nonnull %i.bh, <2 x float> %i.bm, <2 x float> %i.bo, float noundef %i.ni, float noundef %i.nj, i32 %.sroa.011.0.insert.insert.i101.i.i)
  br label %bb.bh

bb.bh:                                            ; preds = %nk_rgb_factor.exit105.i.i, %nk_rgb_factor.exit69.i.i, %nk_rgb_factor.exit57.i.i, %nk_rgb_factor.exit.i.i
  store <2 x float> zeroinitializer, ptr %5, align 8
  %i.oa = load i8, ptr %.0, align 1, !tbaa !11
  %.not45.i.i = icmp eq i8 %i.oa, 35
  br i1 %.not45.i.i, label %nk_draw_property.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @nk_widget_text(ptr noundef nonnull %i.bh, <2 x float> %.sroa.0.4.vec.insert385.i, <2 x float> %.sroa.8.12.vec.insert392.i, ptr noundef nonnull %.0, i32 noundef %.0286.i, ptr noundef %5, i32 noundef 18, ptr noundef nonnull %i.bj)
  br label %nk_draw_property.exit.i

nk_draw_property.exit.i:                          ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 4944
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !1160 ; 2 uses
  %.not336.i = icmp eq ptr %i.oc, null
  br i1 %.not336.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %nk_draw_property.exit.i
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 4928
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oc(ptr noundef nonnull %i.bh, ptr %i.oe) #50, !inline_history !1149
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %nk_draw_property.exit.i
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 3496
  %i.og = load i32, ptr %i.of, align 8, !tbaa !739
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 4712
  %i.oi = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, <2 x float> %.sroa.025.4.vec.insert.i, <2 x float> %.sroa.729.8.vec.insert.i, i32 noundef %i.og, i32 noundef %i.bl, ptr noundef nonnull %i.oh, ptr noundef %i.bf, ptr noundef nonnull %i.bj)
  br i1 %i.oi, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.oj = load i32, ptr %2, align 8, !tbaa !1152
  switch i32 %i.oj, label %bb.bp [
    i32 0, label %bb.bm
    i32 1, label %bb.bn
    i32 2, label %bb.bo
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !11
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.on = load i32, ptr %i.om, align 8, !tbaa !11
  %i.oo = sub nsw i32 %i.ol, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !11
  %.339.i = call i32 @llvm.smin.i32(i32 %i.oo, i32 %i.oq)
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.os = load i32, ptr %i.or, align 8, !tbaa !11
  %spec.select.i = call i32 @llvm.smax.i32(i32 %.339.i, i32 %i.os)
  store i32 %spec.select.i, ptr %i.ok, align 8, !tbaa !11
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ou = load float, ptr %i.ot, align 8, !tbaa !11
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ow = load float, ptr %i.ov, align 8, !tbaa !11
  %i.ox = fsub float %i.ou, %i.ow                 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.oz = load float, ptr %i.oy, align 8, !tbaa !11 ; 2 uses
  %i.pa = fcmp olt float %i.ox, %i.oz
  %.341.i = select i1 %i.pa, float %i.ox, float %i.oz ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pc = load float, ptr %i.pb, align 8, !tbaa !11 ; 2 uses
  %i.pd = fcmp olt float %.341.i, %i.pc
  %i.pe = select i1 %i.pd, float %i.pc, float %.341.i
  store float %i.pe, ptr %i.ot, align 8, !tbaa !11
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !11
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !11
  %i.pj = fsub double %i.pg, %i.pi                ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !11 ; 2 uses
  %i.pm = fcmp olt double %i.pj, %i.pl
  %.343.i = select i1 %i.pm, double %i.pj, double %i.pl ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.po = load double, ptr %i.pn, align 8, !tbaa !11 ; 2 uses
  %i.pp = fcmp olt double %.343.i, %i.po
  %i.pq = select i1 %i.pp, double %i.po, double %.343.i
  store double %i.pq, ptr %i.pf, align 8, !tbaa !11
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 3500
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !740
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 4496
  %i.pu = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, <2 x float> %.sroa.016.0.vec.insert.i, <2 x float> %.sroa.729.8.vec.insert.i, i32 noundef %i.ps, i32 noundef %i.bl, ptr noundef nonnull %i.pt, ptr noundef %i.bf, ptr noundef nonnull %i.bj)
  br i1 %i.pu, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.pv = load i32, ptr %2, align 8, !tbaa !1152
  switch i32 %i.pv, label %bb.bu [
    i32 0, label %bb.br
    i32 1, label %bb.bs
    i32 2, label %bb.bt
  ]

bb.br:                                            ; preds = %bb.bq
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !11
end_hunk_3
begin_hunk_4_@nk_draw_symbol:bb.a

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.x = icmp eq i32 %1, 10
  %i.y = icmp eq i32 %1, 9
  %i.z = icmp eq i32 %1, 7
  %i.aa = select i1 %i.z, i32 0, i32 2
  %i.ab = select i1 %i.y, i32 3, i32 %i.aa
  %i.ac = select i1 %i.x, i32 1, i32 %i.ab
  %i.ad = fcmp ogt <2 x float> %3, zeroinitializer
  %i.ae = select <2 x i1> %i.ad, <2 x float> %3, <2 x float> zeroinitializer ; 8 uses
  %i.af = fadd <2 x float> %2, zeroinitializer    ; 16 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0
  %i.ah = fmul float %i.ag, 5.000000e-01          ; 2 uses
  %i.ai = extractelement <2 x float> %i.ae, i64 1
  %i.aj = fmul float %i.ai, 5.000000e-01          ; 2 uses
  switch i32 %i.ac, label %default.unreachable [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = extractelement <2 x float> %i.af, i64 0
  %i.al = fadd float %i.ak, %i.ah
  %i.am = insertelement <2 x float> %i.af, float %i.al, i64 0
  %i.an = fadd <2 x float> %i.af, %i.ae           ; 2 uses
  %i.ao = shufflevector <2 x float> %i.af, <2 x float> %i.an, <2 x i32> <i32 0, i32 3>
  br label %nk_triangle_from_direction.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = insertelement <2 x float> %i.ae, float %i.aj, i64 1
  %i.aq = fadd <2 x float> %i.af, %i.ap
  %foldExtExtBinop = fadd <2 x float> %i.af, %i.ae
  %.sroa.0.4.vec.insert.i135.i = shufflevector <2 x float> %i.af, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  br label %nk_triangle_from_direction.exit

bb.l:                                             ; preds = %bb.i
  %foldExtExtBinop91 = fadd <2 x float> %i.af, %i.ae
  %i.ar = shufflevector <2 x float> %foldExtExtBinop91, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.as = insertelement <2 x float> %i.ae, float %i.ah, i64 0
  %i.at = fadd <2 x float> %i.af, %i.as
  br label %nk_triangle_from_direction.exit

default.unreachable:                              ; preds = %bb.n, %bb.i
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.au = extractelement <2 x float> %i.af, i64 1
  %i.av = fadd float %i.au, %i.aj
  %.sroa.0.4.vec.insert.i143.i = insertelement <2 x float> %i.af, float %i.av, i64 1
  %i.aw = fadd <2 x float> %i.af, %i.ae           ; 2 uses
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  br label %nk_triangle_from_direction.exit

nk_triangle_from_direction.exit:                  ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.1488.0 = phi <2 x float> [ %i.aw, %bb.m ], [ %i.ao, %bb.j ], [ %.sroa.0.4.vec.insert.i135.i, %bb.k ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.887.0 = phi <2 x float> [ %i.ax, %bb.m ], [ %i.an, %bb.j ], [ %i.aq, %bb.k ], [ %i.ar, %bb.l ] ; 2 uses
  %.sroa.086.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i143.i, %bb.m ], [ %i.am, %bb.j ], [ %i.af, %bb.k ], [ %i.af, %bb.l ] ; 2 uses
  %.sroa.086.0.vec.extract = extractelement <2 x float> %.sroa.086.0, i64 0
  %.sroa.086.4.vec.extract = extractelement <2 x float> %.sroa.086.0, i64 1
  %.sroa.887.8.vec.extract = extractelement <2 x float> %.sroa.887.0, i64 0
  %.sroa.887.12.vec.extract = extractelement <2 x float> %.sroa.887.0, i64 1
  %.sroa.1488.16.vec.extract = extractelement <2 x float> %.sroa.1488.0, i64 0
  %.sroa.1488.20.vec.extract = extractelement <2 x float> %.sroa.1488.0, i64 1
  tail call void @nk_fill_triangle(ptr noundef nonnull %0, float noundef %.sroa.086.0.vec.extract, float noundef %.sroa.086.4.vec.extract, float noundef %.sroa.887.8.vec.extract, float noundef %.sroa.887.12.vec.extract, float noundef %.sroa.1488.16.vec.extract, float noundef %.sroa.1488.20.vec.extract, i32 %5)
  br label %bb.s

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.ay = icmp eq i32 %1, 16
  %i.az = icmp eq i32 %1, 15
  %i.ba = icmp eq i32 %1, 13
  %i.bb = select i1 %i.ba, i32 0, i32 2
  %i.bc = select i1 %i.az, i32 3, i32 %i.bb
  %i.bd = select i1 %i.ay, i32 1, i32 %i.bc
  %i.be = fcmp ogt <2 x float> %3, zeroinitializer
  %i.bf = select <2 x i1> %i.be, <2 x float> %3, <2 x float> zeroinitializer ; 8 uses
  %i.bg = fadd <2 x float> %2, zeroinitializer    ; 16 uses
  %i.bh = extractelement <2 x float> %i.bf, i64 0
  %i.bi = fmul float %i.bh, 5.000000e-01          ; 2 uses
  %i.bj = extractelement <2 x float> %i.bf, i64 1
  %i.bk = fmul float %i.bj, 5.000000e-01          ; 2 uses
  switch i32 %i.bd, label %default.unreachable [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  %i.bl = extractelement <2 x float> %i.bg, i64 0
  %i.bm = fadd float %i.bl, %i.bi
  %i.bn = insertelement <2 x float> %i.bg, float %i.bm, i64 0
  %i.bo = fadd <2 x float> %i.bg, %i.bf           ; 2 uses
  %i.bp = shufflevector <2 x float> %i.bg, <2 x float> %i.bo, <2 x i32> <i32 0, i32 3>
  br label %nk_triangle_from_direction.exit85

bb.p:                                             ; preds = %bb.n
  %i.bq = insertelement <2 x float> %i.bf, float %i.bk, i64 1
  %i.br = fadd <2 x float> %i.bg, %i.bq
  %foldExtExtBinop93 = fadd <2 x float> %i.bg, %i.bf
  %.sroa.0.4.vec.insert.i135.i73 = shufflevector <2 x float> %i.bg, <2 x float> %foldExtExtBinop93, <2 x i32> <i32 0, i32 3>
  br label %nk_triangle_from_direction.exit85

bb.q:                                             ; preds = %bb.n
  %foldExtExtBinop95 = fadd <2 x float> %i.bg, %i.bf
  %i.bs = shufflevector <2 x float> %foldExtExtBinop95, <2 x float> %i.bg, <2 x i32> <i32 0, i32 3>
  %i.bt = insertelement <2 x float> %i.bf, float %i.bi, i64 0
  %i.bu = fadd <2 x float> %i.bg, %i.bt
  br label %nk_triangle_from_direction.exit85

bb.r:                                             ; preds = %bb.n
  %i.bv = extractelement <2 x float> %i.bg, i64 1
  %i.bw = fadd float %i.bv, %i.bk
  %.sroa.0.4.vec.insert.i143.i81 = insertelement <2 x float> %i.bg, float %i.bw, i64 1
  %i.bx = fadd <2 x float> %i.bg, %i.bf           ; 2 uses
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> %i.bg, <2 x i32> <i32 0, i32 3>
  br label %nk_triangle_from_direction.exit85

nk_triangle_from_direction.exit85:                ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %.sroa.14.0 = phi <2 x float> [ %i.bx, %bb.r ], [ %i.bp, %bb.o ], [ %.sroa.0.4.vec.insert.i135.i73, %bb.p ], [ %i.bu, %bb.q ] ; 2 uses
  %.sroa.8.0 = phi <2 x float> [ %i.by, %bb.r ], [ %i.bo, %bb.o ], [ %i.br, %bb.p ], [ %i.bs, %bb.q ] ; 2 uses
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i143.i81, %bb.r ], [ %i.bn, %bb.o ], [ %i.bg, %bb.p ], [ %i.bg, %bb.q ] ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1
  %.sroa.8.8.vec.extract = extractelement <2 x float> %.sroa.8.0, i64 0
  %.sroa.8.12.vec.extract = extractelement <2 x float> %.sroa.8.0, i64 1
  %.sroa.14.16.vec.extract = extractelement <2 x float> %.sroa.14.0, i64 0
  %.sroa.14.20.vec.extract = extractelement <2 x float> %.sroa.14.0, i64 1
  tail call void @nk_stroke_triangle(ptr noundef nonnull %0, float noundef %.sroa.0.0.vec.extract, float noundef %.sroa.0.4.vec.extract, float noundef %.sroa.8.8.vec.extract, float noundef %.sroa.8.12.vec.extract, float noundef %.sroa.14.16.vec.extract, float noundef %.sroa.14.20.vec.extract, float noundef %6, i32 %5)
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.h, %bb.g, %nk_triangle_from_direction.exit85, %nk_triangle_from_direction.exit, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @nk_combo_begin_symbol_text(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, <2 x float> %4) local_unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  %6 = alloca %struct.nk_text, align 8            ; 8 uses
  %7 = alloca %struct.nk_rect, align 4            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_combo_begin.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !758  ; 12 uses
  %.not111 = icmp eq ptr %i.b, null
  br i1 %.not111, label %nk_combo_begin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !759
  %.not112 = icmp eq ptr %i.d, null
  br i1 %.not112, label %nk_combo_begin.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.f = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0) ; 2 uses
  %.not113 = icmp eq i32 %i.f, 0
  br i1 %.not113, label %nk_combo_begin.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !759
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !848
  %i.j = and i32 %i.i, 4096
  %i.k = icmp ne i32 %i.j, 0
  %i.l = icmp ne i32 %i.f, 1
  %or.cond3 = or i1 %i.l, %i.k
  %i.m = select i1 %or.cond3, ptr null, ptr %0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 3 uses
  %i.o = load <2 x float>, ptr %5, align 8        ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8      ; 9 uses
  %i.r = tail call fastcc zeroext i1 @nk_button_behavior(ptr noundef %i.n, <2 x float> %i.o, <2 x float> %i.q, ptr noundef %i.m, i32 noundef 0) ; 3 uses
  %i.s = load i32, ptr %i.n, align 8, !tbaa !812  ; 2 uses
  %i.t = and i32 %i.s, 32
  %.not114 = icmp eq i32 %i.t, 0
  %i.u = extractelement <2 x float> %i.q, i64 1   ; 4 uses
  %i.v = extractelement <2 x float> %i.o, i64 1   ; 2 uses
  br i1 %.not114, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = and i32 %i.s, 16
  %.not115 = icmp eq i32 %i.w, 0                  ; 3 uses
  %.216.a = select i1 %.not115, i64 8464, i64 8504
  %.217.a = select i1 %.not115, i64 8600, i64 8604
  %.218.a = select i1 %.not115, i64 8588, i64 8592
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink215.a = phi i64 [ %.216.a, %bb.f ], [ 8544, %bb.e ]
  %.sink214 = phi i64 [ %.217.a, %bb.f ], [ 8608, %bb.e ]
  %.sink213 = phi i64 [ %.218.a, %bb.f ], [ 8596, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.sink215.a ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sink214
  %.sroa.023.0.copyload24 = load i32, ptr %i.y, align 4 ; 5 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink213
  %i.z = load i32, ptr %8, align 4                ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8876 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !984 ; 12 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.z, 8   ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.z, 16  ; 2 uses
  %i.ad = fcmp oeq float %i.ac, 1.000000e+00      ; 5 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.7.0.extract.trunc.i = trunc i32 %.sroa.7.0.extract.shift.i to i8
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.z to i8
  br label %nk_rgb_factor.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = and i32 %i.z, 255
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = fmul float %i.ac, %i.af
  %i.ah = fptoui float %i.ag to i8
  %i.ai = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.aj = uitofp nneg i32 %i.ai to float
  %i.ak = fmul float %i.ac, %i.aj
  %i.al = fptoui float %i.ak to i8
  %i.am = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.an = uitofp nneg i32 %i.am to float
  %i.ao = fmul float %i.ac, %i.an
  %i.ap = fptoui float %i.ao to i8
  br label %nk_rgb_factor.exit

nk_rgb_factor.exit:                               ; preds = %bb.h, %bb.i
  %.sroa.3.0.i = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.h ], [ %i.al, %bb.i ]
  %.sroa.011.0.i = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.h ], [ %i.ah, %bb.i ]
  %.sroa.512.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.h ], [ %i.ap, %bb.i ]
  %.sroa.9.0.extract.shift.i = and i32 %i.z, -16777216
  %.sroa.512.0.insert.ext.i = zext i8 %.sroa.512.0.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.512.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i = zext i8 %.sroa.3.0.i to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %.sroa.011.0.insert.ext.i = zext i8 %.sroa.011.0.i to i32
  %.sroa.011.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %.sroa.011.0.insert.ext.i
  store i32 %.sroa.011.0.insert.insert.i, ptr %i.aa, align 4
  %.sroa.5.0.extract.shift.i119 = lshr i32 %.sroa.023.0.copyload24, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i120 = lshr i32 %.sroa.023.0.copyload24, 16 ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %nk_rgb_factor.exit
  %.sroa.7.0.extract.trunc.i133 = trunc i32 %.sroa.7.0.extract.shift.i120 to i8
  %.sroa.5.0.extract.trunc.i134 = trunc i32 %.sroa.5.0.extract.shift.i119 to i8
  %.sroa.0.0.extract.trunc.i135 = trunc i32 %.sroa.023.0.copyload24 to i8
  br label %nk_rgb_factor.exit136

bb.k:                                             ; preds = %nk_rgb_factor.exit
  %i.aq = and i32 %.sroa.023.0.copyload24, 255
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fmul float %i.ac, %i.ar
  %i.at = fptoui float %i.as to i8
  %i.au = and i32 %.sroa.5.0.extract.shift.i119, 255
  %i.av = uitofp nneg i32 %i.au to float
  %i.aw = fmul float %i.ac, %i.av
  %i.ax = fptoui float %i.aw to i8
  %i.ay = and i32 %.sroa.7.0.extract.shift.i120, 255
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = fmul float %i.ac, %i.az
  %i.bb = fptoui float %i.ba to i8
  br label %nk_rgb_factor.exit136

nk_rgb_factor.exit136:                            ; preds = %bb.j, %bb.k
  %.sroa.3.0.i121 = phi i8 [ %.sroa.5.0.extract.trunc.i134, %bb.j ], [ %i.ax, %bb.k ]
  %.sroa.011.0.i122 = phi i8 [ %.sroa.0.0.extract.trunc.i135, %bb.j ], [ %i.at, %bb.k ]
  %.sroa.512.0.i123 = phi i8 [ %.sroa.7.0.extract.trunc.i133, %bb.j ], [ %i.bb, %bb.k ]
  %.sroa.9.0.extract.shift.i124 = and i32 %.sroa.023.0.copyload24, -16777216
  %.sroa.512.0.insert.ext.i125 = zext i8 %.sroa.512.0.i123 to i32
  %.sroa.512.0.insert.shift.i126 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i125, 16
  %.sroa.512.0.insert.insert.i127 = or disjoint i32 %.sroa.512.0.insert.shift.i126, %.sroa.9.0.extract.shift.i124
  %.sroa.3.0.insert.ext.i128 = zext i8 %.sroa.3.0.i121 to i32
  %.sroa.3.0.insert.shift.i129 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i128, 8
  %.sroa.3.0.insert.insert.i130 = or disjoint i32 %.sroa.512.0.insert.insert.i127, %.sroa.3.0.insert.shift.i129
  %.sroa.011.0.insert.ext.i131 = zext i8 %.sroa.011.0.i122 to i32
  %.sroa.011.0.insert.insert.i132 = or disjoint i32 %.sroa.3.0.insert.insert.i130, %.sroa.011.0.insert.ext.i131
  %i.bc = load i32, ptr %i.x, align 8, !tbaa !754
  switch i32 %i.bc, label %bb.q [
    i32 1, label %nk_rgb_factor.exit148
    i32 2, label %nk_rgb_factor.exit160
    i32 0, label %bb.l
  ]

nk_rgb_factor.exit148:                            ; preds = %nk_rgb_factor.exit136
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bg = fmul float %i.ac, 2.550000e+02
  %i.bh = fptoui float %i.bg to i8
  %i.bi = zext i8 %i.bh to i32
  %.sroa.512.0.insert.ext.i140 = select i1 %i.ad, i32 255, i32 %i.bi ; 3 uses
  %.sroa.512.0.insert.shift.i141 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i140, 16
  %.sroa.3.0.insert.shift.i144 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i140, 8
  %.sroa.512.0.insert.insert.i142 = or disjoint i32 %.sroa.512.0.insert.shift.i141, %.sroa.3.0.insert.shift.i144
  %.sroa.3.0.insert.insert.i145 = or disjoint i32 %.sroa.512.0.insert.insert.i142, %.sroa.512.0.insert.ext.i140
  %.sroa.011.0.insert.insert.i147 = or disjoint i32 %.sroa.3.0.insert.insert.i145, -16777216
  tail call void @nk_draw_image(ptr noundef nonnull %i.be, <2 x float> %i.o, <2 x float> %i.q, ptr noundef nonnull %i.bf, i32 %.sroa.011.0.insert.insert.i147)
  br label %bb.q

nk_rgb_factor.exit160:                            ; preds = %nk_rgb_factor.exit136
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bm = fmul float %i.ac, 2.550000e+02
  %i.bn = fptoui float %i.bm to i8
  %i.bo = zext i8 %i.bn to i32
  %.sroa.512.0.insert.ext.i152 = select i1 %i.ad, i32 255, i32 %i.bo ; 3 uses
  %.sroa.512.0.insert.shift.i153 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i152, 16
  %.sroa.3.0.insert.shift.i156 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i152, 8
  %.sroa.512.0.insert.insert.i154 = or disjoint i32 %.sroa.512.0.insert.shift.i153, %.sroa.3.0.insert.shift.i156
  %.sroa.3.0.insert.insert.i157 = or disjoint i32 %.sroa.512.0.insert.insert.i154, %.sroa.512.0.insert.ext.i152
  %.sroa.011.0.insert.insert.i159 = or disjoint i32 %.sroa.3.0.insert.insert.i157, -16777216
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.bk, <2 x float> %i.o, <2 x float> %i.q, ptr noundef nonnull %i.bl, i32 %.sroa.011.0.insert.insert.i159)
  br label %bb.q

bb.l:                                             ; preds = %nk_rgb_factor.exit136
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.br = load i32, ptr %i.bq, align 8            ; 7 uses
  store i32 %i.br, ptr %i.bp, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8848 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !1201
  %.sroa.5.0.extract.shift.i161 = lshr i32 %i.br, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i162 = lshr i32 %i.br, 16 ; 2 uses
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.7.0.extract.trunc.i175 = trunc i32 %.sroa.7.0.extract.shift.i162 to i8
  %.sroa.5.0.extract.trunc.i176 = trunc i32 %.sroa.5.0.extract.shift.i161 to i8
  %.sroa.0.0.extract.trunc.i177 = trunc i32 %i.br to i8
  br label %nk_rgb_factor.exit178

bb.n:                                             ; preds = %bb.l
  %i.bv = and i32 %i.br, 255
  %i.bw = uitofp nneg i32 %i.bv to float
  %i.bx = fmul float %i.ac, %i.bw
  %i.by = fptoui float %i.bx to i8
  %i.bz = and i32 %.sroa.5.0.extract.shift.i161, 255
  %i.ca = uitofp nneg i32 %i.bz to float
  %i.cb = fmul float %i.ac, %i.ca
  %i.cc = fptoui float %i.cb to i8
  %i.cd = and i32 %.sroa.7.0.extract.shift.i162, 255
  %i.ce = uitofp nneg i32 %i.cd to float
  %i.cf = fmul float %i.ac, %i.ce
  %i.cg = fptoui float %i.cf to i8
  br label %nk_rgb_factor.exit178

nk_rgb_factor.exit178:                            ; preds = %bb.m, %bb.n
  %.sroa.3.0.i163 = phi i8 [ %.sroa.5.0.extract.trunc.i176, %bb.m ], [ %i.cc, %bb.n ]
  %.sroa.011.0.i164 = phi i8 [ %.sroa.0.0.extract.trunc.i177, %bb.m ], [ %i.by, %bb.n ]
  %.sroa.512.0.i165 = phi i8 [ %.sroa.7.0.extract.trunc.i175, %bb.m ], [ %i.cg, %bb.n ]
  %.sroa.9.0.extract.shift.i166 = and i32 %i.br, -16777216
  %.sroa.512.0.insert.ext.i167 = zext i8 %.sroa.512.0.i165 to i32
  %.sroa.512.0.insert.shift.i168 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i167, 16
  %.sroa.512.0.insert.insert.i169 = or disjoint i32 %.sroa.512.0.insert.shift.i168, %.sroa.9.0.extract.shift.i166
  %.sroa.3.0.insert.ext.i170 = zext i8 %.sroa.3.0.i163 to i32
  %.sroa.3.0.insert.shift.i171 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i170, 8
  %.sroa.3.0.insert.insert.i172 = or disjoint i32 %.sroa.512.0.insert.insert.i169, %.sroa.3.0.insert.shift.i171
  %.sroa.011.0.insert.ext.i173 = zext i8 %.sroa.011.0.i164 to i32
  %.sroa.011.0.insert.insert.i174 = or disjoint i32 %.sroa.3.0.insert.insert.i172, %.sroa.011.0.insert.ext.i173
  tail call void @nk_fill_rect(ptr noundef nonnull %i.bs, <2 x float> %i.o, <2 x float> %i.q, float noundef %i.bu, i32 %.sroa.011.0.insert.insert.i174)
  %i.ch = load float, ptr %i.bt, align 8, !tbaa !1201
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8844
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !1202
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8584
  %i.cl = load float, ptr %i.ab, align 4, !tbaa !984 ; 4 uses
  %i.cm = load i32, ptr %i.ck, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i179 = lshr i32 %i.cm, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i180 = lshr i32 %i.cm, 16 ; 2 uses
  %i.cn = fcmp oeq float %i.cl, 1.000000e+00
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %nk_rgb_factor.exit178
  %.sroa.7.0.extract.trunc.i193 = trunc i32 %.sroa.7.0.extract.shift.i180 to i8
  %.sroa.5.0.extract.trunc.i194 = trunc i32 %.sroa.5.0.extract.shift.i179 to i8
  %.sroa.0.0.extract.trunc.i195 = trunc i32 %i.cm to i8
  br label %nk_rgb_factor.exit196

bb.p:                                             ; preds = %nk_rgb_factor.exit178
  %i.co = and i32 %i.cm, 255
  %i.cp = uitofp nneg i32 %i.co to float
  %i.cq = fmul float %i.cl, %i.cp
  %i.cr = fptoui float %i.cq to i8
  %i.cs = and i32 %.sroa.5.0.extract.shift.i179, 255
  %i.ct = uitofp nneg i32 %i.cs to float
  %i.cu = fmul float %i.cl, %i.ct
  %i.cv = fptoui float %i.cu to i8
  %i.cw = and i32 %.sroa.7.0.extract.shift.i180, 255
  %i.cx = uitofp nneg i32 %i.cw to float
  %i.cy = fmul float %i.cl, %i.cx
  %i.cz = fptoui float %i.cy to i8
  br label %nk_rgb_factor.exit196

nk_rgb_factor.exit196:                            ; preds = %bb.o, %bb.p
  %.sroa.3.0.i181 = phi i8 [ %.sroa.5.0.extract.trunc.i194, %bb.o ], [ %i.cv, %bb.p ]
  %.sroa.011.0.i182 = phi i8 [ %.sroa.0.0.extract.trunc.i195, %bb.o ], [ %i.cr, %bb.p ]
  %.sroa.512.0.i183 = phi i8 [ %.sroa.7.0.extract.trunc.i193, %bb.o ], [ %i.cz, %bb.p ]
  %.sroa.9.0.extract.shift.i184 = and i32 %i.cm, -16777216
  %.sroa.512.0.insert.ext.i185 = zext i8 %.sroa.512.0.i183 to i32
  %.sroa.512.0.insert.shift.i186 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i185, 16
  %.sroa.512.0.insert.insert.i187 = or disjoint i32 %.sroa.512.0.insert.shift.i186, %.sroa.9.0.extract.shift.i184
  %.sroa.3.0.insert.ext.i188 = zext i8 %.sroa.3.0.i181 to i32
  %.sroa.3.0.insert.shift.i189 = shl nuw nsw i32 %.sroa.3.0.insert.ext.i188, 8
  %.sroa.3.0.insert.insert.i190 = or disjoint i32 %.sroa.512.0.insert.insert.i187, %.sroa.3.0.insert.shift.i189
  %.sroa.011.0.insert.ext.i191 = zext i8 %.sroa.011.0.i182 to i32
  %.sroa.011.0.insert.insert.i192 = or disjoint i32 %.sroa.3.0.insert.insert.i190, %.sroa.011.0.insert.ext.i191
  tail call void @nk_stroke_rect(ptr noundef nonnull %i.bs, <2 x float> %i.o, <2 x float> %i.q, float noundef %i.ch, float noundef %i.cj, i32 %.sroa.011.0.insert.insert.i192)
  br label %bb.q

bb.q:                                             ; preds = %nk_rgb_factor.exit196, %nk_rgb_factor.exit160, %nk_rgb_factor.exit148, %nk_rgb_factor.exit136
  %i.da = phi i32 [ %i.br, %nk_rgb_factor.exit196 ], [ 0, %nk_rgb_factor.exit160 ], [ 0, %nk_rgb_factor.exit148 ], [ undef, %nk_rgb_factor.exit136 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.db = load i32, ptr %i.n, align 8, !tbaa !812 ; 3 uses
  %i.dc = and i32 %i.db, 16
  %.not116 = icmp eq i32 %i.dc, 0                 ; 2 uses
  %. = select i1 %i.r, i64 8840, i64 8832
  %.sink = select i1 %.not116, i64 %., i64 8836
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0105 = load i32, ptr %i.dd, align 4, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8860
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %foldExtExtBinop = fadd <2 x float> %i.o, %i.q
  %i.dh = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.di = fsub float %i.dh, %i.u
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8616 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8776
  %i.dn = load <2 x float>, ptr %i.dm, align 8, !tbaa !8 ; 2 uses
  %i.do = load float, ptr %i.df, align 8, !tbaa !1203 ; 2 uses
  %i.dp = load float, ptr %i.de, align 4, !tbaa !1204
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.do, float -2.000000e+00, float %i.u) ; 3 uses
  store float %i.dq, ptr %i.dg, align 4, !tbaa !130
  %i.dr = fadd float %i.do, %i.v                  ; 2 uses
  %i.ds = fsub float %i.di, %i.dp                 ; 3 uses
  store float %i.ds, ptr %7, align 4, !tbaa !129
  store float %i.dr, ptr %i.dj, align 4, !tbaa !131
  store float %i.dq, ptr %i.dk, align 4, !tbaa !132
  %i.dt = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dr, i64 1
  %i.dv = fadd <2 x float> %i.du, %i.dn
  %i.dw = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> splat (float -2.000000e+00), <2 x float> %i.dx)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 4 uses
  %i.ea = load ptr, ptr %i.e, align 8, !tbaa !756
  %i.eb = call fastcc ptr @nk_draw_button(ptr noundef nonnull %i.dz, ptr noundef nonnull readonly %7, i32 noundef %i.db, ptr noundef nonnull readonly %i.dl) ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !754
  %i.ed = icmp eq i32 %i.ec, 0
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8744
  %.sroa.02.0.in.i = select i1 %i.ed, ptr %i.ee, ptr %i.ef
  %.sroa.02.0.i = load i32, ptr %.sroa.02.0.in.i, align 8
  %i.eg = and i32 %i.db, 32
  %.not22.i = icmp eq i32 %i.eg, 0
  %..i = select i1 %.not22.i, i64 132, i64 140
  %.sink.i = select i1 %.not116, i64 %..i, i64 136
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sink.i
  %.sroa.04.0.i = load i32, ptr %i.eh, align 4    ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8764
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !924 ; 4 uses
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i = lshr i32 %.sroa.04.0.i, 16 ; 2 uses
  %i.ek = fcmp oeq float %i.ej, 1.000000e+00
end_hunk_4
begin_hunk_5_@nk_layout_widget_space:bb.a
  %i.fa = load float, ptr %i.ez, align 8, !tbaa !857 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !854
  %i.fd = sitofp i32 %i.fc to float               ; 2 uses
  %i.fe = fmul float %i.fa, %i.fd
  %i.ff = fmul float %.sroa.0.0.copyload, %i.fd
  br label %bb.ah

bb.w:                                             ; preds = %bb.c
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.fh = load float, ptr %i.fg, align 8, !tbaa !857 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !936 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !854
  %i.fm = sitofp i32 %i.fl to float
  %i.fn = fmul float %.sroa.0.0.copyload, %i.fm   ; 2 uses
  %.not159 = icmp eq i32 %2, 0
  br i1 %.not159, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = fadd float %i.fh, %i.fj
  store float %i.fo, ptr %i.fi, align 8, !tbaa !936
  br label %bb.ah

bb.y:                                             ; preds = %bb.c
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.fq = load float, ptr %i.fp, align 8, !tbaa !927
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.fs = load float, ptr %i.fr, align 8, !tbaa !1249
  %i.ft = fadd float %i.fq, %i.fs                 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !1247 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.fv, ptr %i.fw, align 4, !tbaa !130
  %i.fx = fadd float %i.ft, %i.fv                 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !883
  %i.ga = fcmp ogt float %i.fx, %i.fz
  %i.gb = icmp ne i32 %2, 0
  %or.cond = and i1 %i.gb, %i.ga
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store float %i.fx, ptr %i.fy, align 8, !tbaa !883
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !844
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !10
  %i.gf = uitofp i32 %i.ge to float
  %i.gg = fsub float %i.ft, %i.gf
  store float %i.gg, ptr %0, align 4, !tbaa !129
  %i.gh = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !862
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 164
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !1250
  %i.gl = fadd float %i.gi, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !845
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !10
  %i.gq = uitofp i32 %i.gp to float
  %i.gr = fsub float %i.gl, %i.gq
  store float %i.gr, ptr %i.gm, align 4, !tbaa !131
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 172
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !1248
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.gt, ptr %i.gu, align 4, !tbaa !132
  br label %bb.ak

bb.ab:                                            ; preds = %bb.c
  %i.gv = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !854 ; 2 uses
  %i.gx = sitofp i32 %i.gw to float
  %i.gy = fmul float %.sroa.0.0.copyload, %i.gx   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !856
  %i.hb = sext i32 %i.gw to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ha, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !8 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  %i.hf = load float, ptr %i.he, align 8, !tbaa !936 ; 3 uses
  %.not158 = icmp eq i32 %2, 0
  br i1 %.not158, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hg = fadd float %i.hd, %i.hf
  store float %i.hg, ptr %i.he, align 8, !tbaa !936
  br label %bb.ah

bb.ad:                                            ; preds = %bb.c
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 180
  %i.hi = getelementptr inbounds nuw i8, ptr %i.d, i64 116
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !854 ; 2 uses
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 8, !tbaa !936 ; 7 uses
  %i.hp = fcmp ult float %i.ho, 0.000000e+00
  br i1 %i.hp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hq = fadd float %i.ho, 5.000000e-01
  %i.hr = fptosi float %i.hq to i32
  br label %nk_roundf.exit171

bb.af:                                            ; preds = %bb.ad
  %i.hs = fadd float %i.ho, -5.000000e-01         ; 2 uses
  %i.ht = fptosi float %i.hs to i32               ; 2 uses
  %i.hu = sitofp i32 %i.ht to float
  %i.hv = fcmp ogt float %i.hs, %i.hu
  %i.hw = zext i1 %i.hv to i32
  %i.hx = add nsw i32 %i.hw, %i.ht
  br label %nk_roundf.exit171

nk_roundf.exit171:                                ; preds = %bb.ae, %bb.af
  %.in.i170 = phi i32 [ %i.hr, %bb.ae ], [ %i.hx, %bb.af ]
  %i.hy = sitofp i32 %.in.i170 to float
  %i.hz = fptosi float %i.hy to i32
  %i.ia = sitofp i32 %i.hz to float
  %i.ib = fsub float %i.ho, %i.ia
  %i.ic = fadd float %i.hm, %i.ib                 ; 2 uses
  %i.id = sitofp i32 %i.hj to float
  %i.ie = fmul float %.sroa.0.0.copyload, %i.id   ; 2 uses
  %.not157 = icmp eq i32 %2, 0
  br i1 %.not157, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %nk_roundf.exit171
  %i.if = fadd float %i.hm, %i.ho
  store float %i.if, ptr %i.hn, align 8, !tbaa !936
  br label %bb.ah

bb.ah:                                            ; preds = %nk_roundf.exit171, %bb.ag, %nk_roundf.exit169, %bb.u, %nk_roundf.exit163, %bb.j, %bb.c, %bb.ab, %bb.ac, %bb.w, %bb.x, %bb.v, %nk_roundf.exit
  %.0149 = phi float [ 0.000000e+00, %bb.c ], [ %i.am, %nk_roundf.exit ], [ %i.ee, %nk_roundf.exit169 ], [ 0.000000e+00, %nk_roundf.exit163 ], [ %i.ff, %bb.v ], [ %i.fn, %bb.x ], [ %i.fn, %bb.w ], [ %i.gy, %bb.ac ], [ %i.gy, %bb.ab ], [ 0.000000e+00, %bb.j ], [ %i.ee, %bb.u ], [ %i.ie, %bb.ag ], [ %i.ie, %nk_roundf.exit171 ]
  %.0148 = phi float [ 0.000000e+00, %bb.c ], [ %i.al, %nk_roundf.exit ], [ %i.eu, %nk_roundf.exit169 ], [ %i.bf, %nk_roundf.exit163 ], [ %i.fa, %bb.v ], [ %i.fh, %bb.x ], [ %i.fh, %bb.w ], [ %i.hd, %bb.ac ], [ %i.hd, %bb.ab ], [ %i.bf, %bb.j ], [ %i.eu, %bb.u ], [ %i.ic, %bb.ag ], [ %i.ic, %nk_roundf.exit171 ] ; 2 uses
  %.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.x, %nk_roundf.exit ], [ %i.eg, %nk_roundf.exit169 ], [ %i.ar, %nk_roundf.exit163 ], [ %i.fe, %bb.v ], [ %i.fj, %bb.x ], [ %i.fj, %bb.w ], [ %i.hf, %bb.ac ], [ %i.hf, %bb.ab ], [ %i.ar, %bb.j ], [ %i.eg, %bb.u ], [ %i.ho, %bb.ag ], [ %i.ho, %nk_roundf.exit171 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.0148, ptr %i.ig, align 4, !tbaa !130
  %i.ih = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ii = load float, ptr %i.ih, align 8, !tbaa !859
  %i.ij = fsub float %i.ii, %.sroa.10.0.copyload
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.ij, ptr %i.ik, align 4, !tbaa !132
  %i.il = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.im = load float, ptr %i.il, align 4, !tbaa !862
  %i.in = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !845
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !10
  %i.iq = uitofp i32 %i.ip to float
  %i.ir = fsub float %i.im, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ir, ptr %i.is, align 4, !tbaa !131
  %i.it = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.iu = load float, ptr %i.it, align 8, !tbaa !927
  %i.iv = fadd float %.0, %i.iu
  %i.iw = fadd float %.0149, %i.iv                ; 2 uses
  %i.ix = fadd float %.0148, %i.iw                ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.iz = load float, ptr %i.iy, align 8, !tbaa !883
  %i.ja = fcmp ogt float %i.ix, %i.iz
  %i.jb = icmp ne i32 %2, 0
  %or.cond3 = and i1 %i.jb, %i.ja
  br i1 %or.cond3, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store float %i.ix, ptr %i.iy, align 8, !tbaa !883
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !844
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !10
  %i.jf = uitofp i32 %i.je to float
  %i.jg = fsub float %i.iw, %i.jf
  store float %i.jg, ptr %0, align 4, !tbaa !129
  br label %bb.ak

bb.ak:                                            ; preds = %bb.a, %bb.b, %bb.aj, %bb.aa, %nk_roundf.exit167
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #43

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_draw_selectable(ptr nofree noundef nonnull captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i1 noundef zeroext %3, <2 x float> %.0.val, <2 x float> %.8.val, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) unnamed_addr #20 {
bb.a:
  %11 = alloca %struct.nk_text, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #50
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 276
  %i.b = load i64, ptr %i.a, align 4
  store i64 %i.b, ptr %11, align 8
  %i.c = and i32 %1, 32
  %.not56 = icmp eq i32 %i.c, 0                   ; 2 uses
  br i1 %3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not56, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %1, 16
  %.not55 = icmp eq i32 %i.d, 0                   ; 2 uses
  %spec.select = select i1 %.not55, i64 240, i64 244
  %spec.select4.idx = select i1 %.not55, i64 0, i64 40
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %.not56, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = and i32 %1, 16
  %.not57 = icmp eq i32 %i.e, 0                   ; 2 uses
  %. = select i1 %.not57, i64 120, i64 160
  %.6 = select i1 %.not57, i64 252, i64 256
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.c
  %spec.select5.idx.sink = phi i64 [ %spec.select4.idx, %bb.c ], [ 80, %bb.b ], [ 200, %bb.d ], [ %., %bb.e ]
  %.sink4 = phi i64 [ %spec.select, %bb.c ], [ 248, %bb.b ], [ 260, %bb.d ], [ %.6, %bb.e ]
  %spec.select5 = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select5.idx.sink ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %.sink4
  %i.g = load i32, ptr %i.f, align 4              ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 300 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !1251 ; 6 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.g, 8   ; 2 uses
  %.sroa.7.0.extract.shift.i = lshr i32 %i.g, 16  ; 2 uses
  %i.k = fcmp oeq float %i.j, 1.000000e+00        ; 3 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.7.0.extract.trunc.i = trunc i32 %.sroa.7.0.extract.shift.i to i8
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8
  %.sroa.0.0.extract.trunc.i = trunc i32 %i.g to i8
  br label %nk_rgb_factor.exit

bb.h:                                             ; preds = %bb.f
  %i.l = and i32 %i.g, 255
  %i.m = uitofp nneg i32 %i.l to float
  %i.n = fmul float %i.j, %i.m
  %i.o = fptoui float %i.n to i8
  %i.p = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = fmul float %i.j, %i.q
  %i.s = fptoui float %i.r to i8
  %i.t = and i32 %.sroa.7.0.extract.shift.i, 255
  %i.u = uitofp nneg i32 %i.t to float
  %i.v = fmul float %i.j, %i.u
  %i.w = fptoui float %i.v to i8
  br label %nk_rgb_factor.exit

nk_rgb_factor.exit:                               ; preds = %bb.g, %bb.h
  %.sroa.3.0.i = phi i8 [ %.sroa.5.0.extract.trunc.i, %bb.g ], [ %i.s, %bb.h ]
  %.sroa.011.0.i = phi i8 [ %.sroa.0.0.extract.trunc.i, %bb.g ], [ %i.o, %bb.h ]
  %.sroa.512.0.i = phi i8 [ %.sroa.7.0.extract.trunc.i, %bb.g ], [ %i.w, %bb.h ]
  %.sroa.9.0.extract.shift.i = and i32 %i.g, -16777216
  %.sroa.512.0.insert.ext.i = zext i8 %.sroa.512.0.i to i32
  %.sroa.512.0.insert.shift.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i, 16
  %.sroa.512.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.shift.i, %.sroa.9.0.extract.shift.i
  %.sroa.3.0.insert.ext.i = zext i8 %.sroa.3.0.i to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.512.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %.sroa.011.0.insert.ext.i = zext i8 %.sroa.011.0.i to i32
  %.sroa.011.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %.sroa.011.0.insert.ext.i ; 2 uses
  store i32 %.sroa.011.0.insert.insert.i, ptr %i.h, align 4
  %i.x = load i32, ptr %spec.select5, align 8, !tbaa !754
  switch i32 %i.x, label %bb.j [
    i32 1, label %nk_rgb_factor.exit71
    i32 2, label %nk_rgb_factor.exit83
    i32 0, label %bb.i
  ]

nk_rgb_factor.exit71:                             ; preds = %nk_rgb_factor.exit
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select5, i64 8
  %i.aa = fmul float %i.j, 2.550000e+02
  %i.ab = fptoui float %i.aa to i8
  %i.ac = zext i8 %i.ab to i32
  %.sroa.512.0.insert.ext.i63 = select i1 %i.k, i32 255, i32 %i.ac ; 3 uses
  %.sroa.512.0.insert.shift.i64 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i63, 16
  %.sroa.3.0.insert.shift.i67 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i63, 8
  %.sroa.512.0.insert.insert.i65 = or disjoint i32 %.sroa.512.0.insert.shift.i64, %.sroa.3.0.insert.shift.i67
  %.sroa.3.0.insert.insert.i68 = or disjoint i32 %.sroa.512.0.insert.insert.i65, %.sroa.512.0.insert.ext.i63
  %.sroa.011.0.insert.insert.i70 = or disjoint i32 %.sroa.3.0.insert.insert.i68, -16777216
  tail call void @nk_draw_image(ptr noundef nonnull %0, <2 x float> %.0.val, <2 x float> %.8.val, ptr noundef nonnull %i.z, i32 %.sroa.011.0.insert.insert.i70)
  br label %bb.j

nk_rgb_factor.exit83:                             ; preds = %nk_rgb_factor.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %spec.select5, i64 8
  %i.af = fmul float %i.j, 2.550000e+02
  %i.ag = fptoui float %i.af to i8
  %i.ah = zext i8 %i.ag to i32
  %.sroa.512.0.insert.ext.i75 = select i1 %i.k, i32 255, i32 %i.ah ; 3 uses
  %.sroa.512.0.insert.shift.i76 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i75, 16
  %.sroa.3.0.insert.shift.i79 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i75, 8
  %.sroa.512.0.insert.insert.i77 = or disjoint i32 %.sroa.512.0.insert.shift.i76, %.sroa.3.0.insert.shift.i79
  %.sroa.3.0.insert.insert.i80 = or disjoint i32 %.sroa.512.0.insert.insert.i77, %.sroa.512.0.insert.ext.i75
  %.sroa.011.0.insert.insert.i82 = or disjoint i32 %.sroa.3.0.insert.insert.i80, -16777216
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %0, <2 x float> %.0.val, <2 x float> %.8.val, ptr noundef nonnull %i.ae, i32 %.sroa.011.0.insert.insert.i82)
  br label %bb.j

bb.i:                                             ; preds = %nk_rgb_factor.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select5, i64 8
  %i.ak = load i32, ptr %i.aj, align 8            ; 3 uses
  store i32 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.am = load float, ptr %i.al, align 8, !tbaa !726
  tail call void @nk_fill_rect(ptr noundef nonnull %0, <2 x float> %.0.val, <2 x float> %.8.val, float noundef %i.am, i32 %i.ak)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %nk_rgb_factor.exit83, %nk_rgb_factor.exit71, %nk_rgb_factor.exit
  %i.an = phi i32 [ %i.ak, %bb.i ], [ 0, %nk_rgb_factor.exit83 ], [ 0, %nk_rgb_factor.exit71 ], [ undef, %nk_rgb_factor.exit ]
  %.not58 = icmp eq ptr %4, null
  br i1 %.not58, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not59 = icmp eq ptr %5, null
  br i1 %.not59, label %bb.l, label %nk_rgb_factor.exit95

nk_rgb_factor.exit95:                             ; preds = %bb.k
  %i.ao = load float, ptr %i.i, align 4, !tbaa !1251 ; 2 uses
  %i.ap = fcmp oeq float %i.ao, 1.000000e+00
  %i.aq = fmul float %i.ao, 2.550000e+02
  %i.ar = fptoui float %i.aq to i8
  %i.as = zext i8 %i.ar to i32
  %.sroa.512.0.insert.ext.i87 = select i1 %i.ap, i32 255, i32 %i.as ; 3 uses
  %.sroa.512.0.insert.shift.i88 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i87, 16
  %.sroa.3.0.insert.shift.i91 = shl nuw nsw i32 %.sroa.512.0.insert.ext.i87, 8
  %.sroa.512.0.insert.insert.i89 = or disjoint i32 %.sroa.512.0.insert.shift.i88, %.sroa.3.0.insert.shift.i91
  %.sroa.3.0.insert.insert.i92 = or disjoint i32 %.sroa.512.0.insert.insert.i89, %.sroa.512.0.insert.ext.i87
  %.sroa.011.0.insert.insert.i94 = or disjoint i32 %.sroa.3.0.insert.insert.i92, -16777216
  %i.at = load <2 x float>, ptr %4, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load <2 x float>, ptr %i.au, align 4
  tail call void @nk_draw_image(ptr noundef nonnull %0, <2 x float> %i.at, <2 x float> %i.av, ptr noundef nonnull %5, i32 %.sroa.011.0.insert.insert.i94)
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = load <2 x float>, ptr %4, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ay = load <2 x float>, ptr %i.ax, align 4
  tail call fastcc void @nk_draw_symbol(ptr noundef %0, i32 noundef %6, <2 x float> %i.aw, <2 x float> %i.ay, i32 %i.an, i32 %.sroa.011.0.insert.insert.i, float noundef 1.000000e+00, ptr noundef %10)
  br label %bb.m

bb.m:                                             ; preds = %nk_rgb_factor.exit95, %bb.l, %bb.j
  call fastcc void @nk_widget_text(ptr noundef nonnull %0, <2 x float> %.0.val, <2 x float> %.8.val, ptr noundef %7, i32 noundef %8, ptr noundef %11, i32 noundef %9, ptr noundef %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #50
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @nk_textedit_discard_undo(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !1096 ; 2 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %nk_memcopy.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 4, !tbaa !1103
  %i.f = icmp sgt i16 %i.e, -1
  br i1 %i.f, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !1101 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5188 ; 2 uses
  %i.j = load i16, ptr %i.i, align 4, !tbaa !1097
  %i.k = sub i16 %i.j, %i.h                       ; 2 uses
  store i16 %i.k, ptr %i.i, align 4, !tbaa !1097
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1188 ; 2 uses
  %i.m = sext i16 %i.h to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = sext i16 %i.k to i64
  %i.p = shl nsw i64 %i.o, 2
  %i.q = tail call fastcc ptr @nk_memcopy(ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, i64 noundef %i.p) ; 0 uses
  %i.r = load i16, ptr %i.a, align 4, !tbaa !1096 ; 5 uses
  %i.s = icmp sgt i16 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i16 %i.r to i64    ; 3 uses
  %min.iters.check = icmp ult i16 %i.r, 9
  br i1 %min.iters.check, label %.lr.ph.preheader70, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.t = and i64 %wide.trip.count, 7              ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 8, i64 %i.t
  %n.vec = sub nsw i64 %wide.trip.count, %i.v     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue52, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue52 ] ; 9 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %index
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 44 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 68 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 92 ; 2 uses
  %i.am = load i16, ptr %i.ae, align 4, !tbaa !1103 ; 2 uses
  %i.an = load i16, ptr %i.af, align 4, !tbaa !1103 ; 2 uses
  %i.ao = load i16, ptr %i.ag, align 4, !tbaa !1103 ; 2 uses
  %i.ap = load i16, ptr %i.ah, align 4, !tbaa !1103 ; 2 uses
  %i.aq = load i16, ptr %i.ai, align 4, !tbaa !1103 ; 2 uses
  %i.ar = load i16, ptr %i.aj, align 4, !tbaa !1103 ; 2 uses
  %i.as = load i16, ptr %i.ak, align 4, !tbaa !1103 ; 2 uses
  %i.at = load i16, ptr %i.al, align 4, !tbaa !1103 ; 2 uses
  %i.au = insertelement <8 x i16> poison, i16 %i.am, i64 0
  %i.av = insertelement <8 x i16> %i.au, i16 %i.an, i64 1
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ao, i64 2
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.ap, i64 3
  %i.ay = insertelement <8 x i16> %i.ax, i16 %i.aq, i64 4
  %i.az = insertelement <8 x i16> %i.ay, i16 %i.ar, i64 5
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 6
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 7
  %i.bc = icmp sgt <8 x i16> %i.bb, splat (i16 -1) ; 8 uses
  %i.bd = extractelement <8 x i1> %i.bc, i64 0
  br i1 %i.bd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.be = sub i16 %i.am, %i.h
  store i16 %i.be, ptr %i.ae, align 4, !tbaa !1103
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bf = extractelement <8 x i1> %i.bc, i64 1
  br i1 %i.bf, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue
  %i.bg = sub i16 %i.an, %i.h
  store i16 %i.bg, ptr %i.af, align 4, !tbaa !1103
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue
  %i.bh = extractelement <8 x i1> %i.bc, i64 2
  br i1 %i.bh, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %i.bi = sub i16 %i.ao, %i.h
  store i16 %i.bi, ptr %i.ag, align 4, !tbaa !1103
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.bj = extractelement <8 x i1> %i.bc, i64 3
  br i1 %i.bj, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.bk = sub i16 %i.ap, %i.h
  store i16 %i.bk, ptr %i.ah, align 4, !tbaa !1103
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.bl = extractelement <8 x i1> %i.bc, i64 4
  br i1 %i.bl, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.bm = sub i16 %i.aq, %i.h
  store i16 %i.bm, ptr %i.ai, align 4, !tbaa !1103
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.bn = extractelement <8 x i1> %i.bc, i64 5
  br i1 %i.bn, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.bo = sub i16 %i.ar, %i.h
  store i16 %i.bo, ptr %i.aj, align 4, !tbaa !1103
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.bp = extractelement <8 x i1> %i.bc, i64 6
  br i1 %i.bp, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.bq = sub i16 %i.as, %i.h
  store i16 %i.bq, ptr %i.ak, align 4, !tbaa !1103
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.br = extractelement <8 x i1> %i.bc, i64 7
  br i1 %i.br, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.bs = sub i16 %i.at, %i.h
  store i16 %i.bs, ptr %i.al, align 4, !tbaa !1103
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %.lr.ph.preheader70, label %vector.body, !llvm.loop !1252
end_hunk_5
