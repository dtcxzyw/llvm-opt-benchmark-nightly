Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
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
  store <2 x float> %i.n, ptr %0, align 4, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = fadd <2 x float> %i.g, %i.f              ; 2 uses
  store <2 x float> %i.p, ptr %i.o, align 4, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = shufflevector <2 x float> %i.g, <2 x float> %i.p, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.r, ptr %i.q, align 4, !tbaa !54
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store <2 x float> %i.g, ptr %0, align 4, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = insertelement <2 x float> %i.f, float %i.k, i64 1
  %i.u = fadd <2 x float> %i.g, %i.t
  store <2 x float> %i.u, ptr %i.s, align 4, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %foldExtExtBinop = fadd <2 x float> %i.g, %i.f
  %.sroa.0.4.vec.insert.i135 = shufflevector <2 x float> %i.g, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i135, ptr %i.v, align 4, !tbaa !54
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store <2 x float> %i.g, ptr %0, align 4, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %foldExtExtBinop149 = fadd <2 x float> %i.g, %i.f
  %i.x = shufflevector <2 x float> %foldExtExtBinop149, <2 x float> %i.g, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.x, ptr %i.w, align 4, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = insertelement <2 x float> %i.f, float %i.i, i64 0
  %i.aa = fadd <2 x float> %i.g, %i.z
  store <2 x float> %i.aa, ptr %i.y, align 4, !tbaa !54
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ab = extractelement <2 x float> %i.g, i64 1
  %i.ac = fadd float %i.ab, %i.k
  %.sroa.0.4.vec.insert.i143 = insertelement <2 x float> %i.g, float %i.ac, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i143, ptr %0, align 4, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = fadd <2 x float> %i.g, %i.f             ; 2 uses
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> %i.g, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ag, ptr %i.ad, align 4, !tbaa !54
  store <2 x float> %i.af, ptr %i.ae, align 4, !tbaa !54
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
begin_hunk_1_@nk_property:bb.a
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
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !54
  %i.oa = load i8, ptr %.0111, align 1, !tbaa !56
  %.not45.i.i = icmp eq i8 %i.oa, 35
  br i1 %.not45.i.i, label %nk_draw_property.exit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @nk_widget_text(ptr noundef nonnull %i.bh, <2 x float> %.sroa.0.4.vec.insert385.i, <2 x float> %.sroa.8.12.vec.insert392.i, ptr noundef nonnull %.0111, i32 noundef %.0286.i, ptr noundef %5, i32 noundef 18, ptr noundef nonnull %i.bj)
  br label %nk_draw_property.exit.i

nk_draw_property.exit.i:                          ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 4944
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !1191 ; 2 uses
  %.not336.i = icmp eq ptr %i.oc, null
  br i1 %.not336.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %nk_draw_property.exit.i
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 4928
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oc(ptr noundef nonnull %i.bh, ptr %i.oe) #50, !inline_history !1173
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %nk_draw_property.exit.i
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 3496
  %i.og = load i32, ptr %i.of, align 8, !tbaa !410
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 4712
  %i.oi = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, <2 x float> %.sroa.025.4.vec.insert.i, <2 x float> %.sroa.729.8.vec.insert.i, i32 noundef %i.og, i32 noundef %i.bl, ptr noundef nonnull readonly %i.oh, ptr noundef %i.bf, ptr noundef nonnull %i.bj)
  br i1 %i.oi, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.oj = load i32, ptr %2, align 8, !tbaa !641
  switch i32 %i.oj, label %bb.bp [
    i32 0, label %bb.bm
    i32 1, label %bb.bn
    i32 2, label %bb.bo
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !56
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.on = load i32, ptr %i.om, align 8, !tbaa !56
  %i.oo = sub nsw i32 %i.ol, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !56
  %.339.i = call i32 @llvm.smin.i32(i32 %i.oo, i32 %i.oq)
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.os = load i32, ptr %i.or, align 8, !tbaa !56
  %spec.select.i = call i32 @llvm.smax.i32(i32 %.339.i, i32 %i.os)
  store i32 %spec.select.i, ptr %i.ok, align 8, !tbaa !56
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ou = load float, ptr %i.ot, align 8, !tbaa !56
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ow = load float, ptr %i.ov, align 8, !tbaa !56
  %i.ox = fsub float %i.ou, %i.ow                 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.oz = load float, ptr %i.oy, align 8, !tbaa !56 ; 2 uses
  %i.pa = fcmp olt float %i.ox, %i.oz
  %.341.i = select i1 %i.pa, float %i.ox, float %i.oz ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pc = load float, ptr %i.pb, align 8, !tbaa !56 ; 2 uses
  %i.pd = fcmp olt float %.341.i, %i.pc
  %i.pe = select i1 %i.pd, float %i.pc, float %.341.i
  store float %i.pe, ptr %i.ot, align 8, !tbaa !56
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !56
  %i.ph = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !56
  %i.pj = fsub double %i.pg, %i.pi                ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !56 ; 2 uses
  %i.pm = fcmp olt double %i.pj, %i.pl
  %.343.i = select i1 %i.pm, double %i.pj, double %i.pl ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.po = load double, ptr %i.pn, align 8, !tbaa !56 ; 2 uses
  %i.pp = fcmp olt double %.343.i, %i.po
  %i.pq = select i1 %i.pp, double %i.po, double %.343.i
  store double %i.pq, ptr %i.pf, align 8, !tbaa !56
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 3500
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !411
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 4496
  %i.pu = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, <2 x float> %.sroa.016.0.vec.insert.i, <2 x float> %.sroa.729.8.vec.insert.i, i32 noundef %i.ps, i32 noundef %i.bl, ptr noundef nonnull readonly %i.pt, ptr noundef %i.bf, ptr noundef nonnull %i.bj)
  br i1 %i.pu, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.pv = load i32, ptr %2, align 8, !tbaa !641
  switch i32 %i.pv, label %bb.bu [
    i32 0, label %bb.br
    i32 1, label %bb.bs
    i32 2, label %bb.bt
  ]

bb.br:                                            ; preds = %bb.bq
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !56
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !56
  %i.qa = add nsw i32 %i.pz, %i.px
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !56
  %.345.i = call i32 @llvm.smin.i32(i32 %i.qa, i32 %i.qc)
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !56
  %spec.select411.i = call i32 @llvm.smax.i32(i32 %.345.i, i32 %i.qe)
  store i32 %spec.select411.i, ptr %i.pw, align 8, !tbaa !56
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.qg = load float, ptr %i.qf, align 8, !tbaa !56
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.qi = load float, ptr %i.qh, align 8, !tbaa !56
  %i.qj = fadd float %i.qg, %i.qi                 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ql = load float, ptr %i.qk, align 8, !tbaa !56 ; 2 uses
  %i.qm = fcmp olt float %i.qj, %i.ql
  %.347.i = select i1 %i.qm, float %i.qj, float %i.ql ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.qo = load float, ptr %i.qn, align 8, !tbaa !56 ; 2 uses
  %i.qp = fcmp olt float %.347.i, %i.qo
  %i.qq = select i1 %i.qp, float %i.qo, float %.347.i
  store float %i.qq, ptr %i.qf, align 8, !tbaa !56
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bq
  %i.qr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !56
  %i.qt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !56
  %i.qv = fadd double %i.qs, %i.qu                ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !56 ; 2 uses
  %i.qy = fcmp olt double %i.qv, %i.qx
  %.349.i = select i1 %i.qy, double %i.qv, double %i.qx ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !56 ; 2 uses
  %i.rb = fcmp olt double %.349.i, %i.ra
  %i.rc = select i1 %i.rb, double %i.ra, double %.349.i
  store double %i.rc, ptr %i.qr, align 8, !tbaa !56
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.pre434.i = load i32, ptr %.0110, align 4, !tbaa !55
  %i.rd = icmp eq i32 %.pre434.i, 1               ; 2 uses
  %or.cond.i = select i1 %i.gw, i1 %i.rd, i1 false
  br i1 %or.cond.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.re = load i32, ptr %.0.i, align 4, !tbaa !55
  %i.rf = sext i32 %i.re to i64
  %i.rg = call fastcc ptr @nk_memcopy(ptr noundef nonnull %.0108, ptr noundef nonnull %.0283.i, i64 noundef %i.rf) ; 0 uses
  %i.rh = load i32, ptr %.0.i, align 4, !tbaa !55
  %i.ri = call i32 @nk_utf_len(ptr noundef nonnull %.0108, i32 noundef %i.rh)
  store i32 %i.ri, ptr %.0106, align 4, !tbaa !55
  %i.rj = load i32, ptr %.0.i, align 4, !tbaa !55
  store i32 %i.rj, ptr %.0107, align 4, !tbaa !55
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %.0287.i = phi i1 [ false, %bb.bv ], [ %i.rd, %bb.bu ] ; 3 uses
  %.1284.i = phi ptr [ %.0108, %bb.bv ], [ %.0283.i, %bb.bu ]
  %.1.i = phi ptr [ %.0107, %bb.bv ], [ %.0.i, %bb.bu ] ; 5 uses
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [8 x i8], ptr @__const.nk_do_property.filters, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !73       ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 18384
  store <4 x i16> <i16 0, i16 99, i16 0, i16 999>, ptr %i.rk, align 8, !tbaa !106
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 13180 ; 3 uses
  store i32 0, ptr %i.rl, align 4, !tbaa !628
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 13184 ; 3 uses
  store i32 0, ptr %i.rm, align 8, !tbaa !629
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 13176 ; 3 uses
  store i32 0, ptr %i.rn, align 8, !tbaa !630
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 13196
  store float 0.000000e+00, ptr %i.ro, align 4, !tbaa !634
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 13192
  store i8 1, ptr %i.rp, align 8, !tbaa !632
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 13188
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 13160
  store ptr %9, ptr %i.rr, align 8, !tbaa !633
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 13168
  store <2 x float> zeroinitializer, ptr %i.rs, align 8, !tbaa !54
  %i.rt = zext i1 %.0287.i to i8
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 13193 ; 3 uses
  store i8 %i.rt, ptr %i.ru, align 1, !tbaa !637
  %i.rv = load i32, ptr %.1.i, align 4, !tbaa !55 ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 13152 ; 2 uses
  store i32 %i.rv, ptr %i.rw, align 8, !tbaa !627
  %i.rx = load i32, ptr %.0106, align 4, !tbaa !55
  %.351.i = call i32 @llvm.smin.i32(i32 %i.rx, i32 %i.rv)
  %spec.select412.i = call i32 @llvm.smax.i32(i32 %.351.i, i32 0)
  store i32 %spec.select412.i, ptr %i.rn, align 8, !tbaa !630
  %i.ry = load i32, ptr %.0105, align 4, !tbaa !55
  %i.rz = load i32, ptr %.1.i, align 4, !tbaa !55
  %.353.i = call i32 @llvm.smin.i32(i32 %i.ry, i32 %i.rz)
  %i.sa = call i32 @llvm.smax.i32(i32 %.353.i, i32 0)
  store i32 %i.sa, ptr %i.rl, align 4, !tbaa !628
  %i.sb = load i32, ptr %.0, align 4, !tbaa !55
  %i.sc = load i32, ptr %.1.i, align 4, !tbaa !55
  %.355.i = call i32 @llvm.smin.i32(i32 %i.sb, i32 %i.sc)
  %i.sd = call i32 @llvm.smax.i32(i32 %.355.i, i32 0)
  store i32 %i.sd, ptr %i.rm, align 8, !tbaa !629
  %i.se = load i32, ptr %.1.i, align 4, !tbaa !55
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 13120
  store i64 %i.sf, ptr %i.sg, align 8, !tbaa !638
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 13096
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 13104
  store i64 64, ptr %i.si, align 8, !tbaa !1192
  store ptr %.1284.i, ptr %i.sh, align 8, !tbaa !1193
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 13144
  store i64 64, ptr %i.sj, align 8, !tbaa !1194
  store <4 x i8> <i8 1, i8 0, i8 1, i8 0>, ptr %i.rq, align 4, !tbaa !56
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 3528
  %i.sl = load i32, ptr %.0110, align 4, !tbaa !55
  %i.sm = icmp eq i32 %i.sl, 1
  %i.sn = select i1 %i.sm, ptr %i.bf, ptr null
  %i.so = call fastcc i32 @nk_do_edit(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, <2 x float> %.sroa.03.4.vec.insert.i, <2 x float> %i.gt, i32 noundef 610, ptr noundef %9, ptr noundef nonnull %i.aw, ptr noundef readonly %i.sk, ptr noundef %i.sn, ptr noundef nonnull %i.bj) ; 0 uses
  %i.sp = load i32, ptr %i.rw, align 8, !tbaa !627
  store i32 %i.sp, ptr %.1.i, align 4, !tbaa !55
  %i.sq = load i32, ptr %i.rn, align 8, !tbaa !630
  store i32 %i.sq, ptr %.0106, align 4, !tbaa !55
  %i.sr = load i32, ptr %i.rl, align 4, !tbaa !628
  store i32 %i.sr, ptr %.0105, align 4, !tbaa !55
  %i.ss = load i32, ptr %i.rm, align 8, !tbaa !629
  store i32 %i.ss, ptr %.0, align 4, !tbaa !55
  %i.st = load i8, ptr %i.ru, align 1, !tbaa !637
  %.not337.i = icmp eq i8 %i.st, 0                ; 2 uses
  %brmerge.i = or i1 %.not25.i.i, %.not337.i
  br i1 %brmerge.i, label %nk_input_is_key_pressed.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.su = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.sv = load i8, ptr %i.su, align 4, !tbaa !387, !range !88, !noundef !89
  %i.sw = trunc nuw i8 %i.sv to i1
  %i.sx = getelementptr inbounds nuw i8, ptr %i.bf, i64 36
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !386 ; 2 uses
  br i1 %i.sw, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.not8.i.i = icmp eq i32 %i.sy, 0
  br i1 %.not8.i.i, label %nk_do_property.exit.thread, label %nk_input_is_key_pressed.exit.thread.i

bb.bz:                                            ; preds = %bb.bx
  %i.sz = icmp ugt i32 %i.sy, 1
  br i1 %i.sz, label %nk_input_is_key_pressed.exit.thread.i, label %nk_do_property.exit.thread

nk_input_is_key_pressed.exit.i:                   ; preds = %bb.bw
  %or.cond454.i = and i1 %.0287.i, %.not337.i
  br i1 %or.cond454.i, label %.thread.i, label %nk_do_property.exit

nk_input_is_key_pressed.exit.thread.i:            ; preds = %bb.bz, %bb.by
  store i8 0, ptr %i.ru, align 1, !tbaa !637
  br i1 %.0287.i, label %.thread.i, label %nk_do_property.exit.thread

.thread.i:                                        ; preds = %nk_input_is_key_pressed.exit.thread.i, %nk_input_is_key_pressed.exit.i
  store i32 0, ptr %.0110, align 4, !tbaa !55
  %i.ta = load i32, ptr %.0107, align 4, !tbaa !55
  call fastcc void @nk_property_save(ptr noundef nonnull %2, ptr noundef nonnull %.0108, i32 noundef %i.ta)
  br label %nk_do_property.exit

nk_do_property.exit.thread:                       ; preds = %nk_input_is_key_pressed.exit.thread.i, %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ca

nk_do_property.exit:                              ; preds = %nk_input_is_key_pressed.exit.i, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.not25.i.i, label %nk_do_property.exit._crit_edge, label %bb.ca

nk_do_property.exit._crit_edge:                   ; preds = %nk_do_property.exit
  %.pre165 = load i32, ptr %.0110, align 4, !tbaa !55
  br label %bb.ce

bb.ca:                                            ; preds = %nk_do_property.exit.thread, %nk_do_property.exit
  %i.tb = load i32, ptr %.0110, align 4, !tbaa !55 ; 2 uses
  %i.tc = icmp eq i32 %i.tb, 0
  %or.cond3 = or i1 %i.at, %i.tc
  br i1 %or.cond3, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.td = load i32, ptr %i.y, align 4, !tbaa !518
  %.not122 = icmp eq i32 %i.td, 0
  br i1 %.not122, label %nk_memcopy.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 %i.av, ptr %i.z, align 4, !tbaa !1179
  %i.te = getelementptr inbounds nuw i8, ptr %i.j, i64 268
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !1182
  %i.tg = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  store i32 %i.tf, ptr %i.tg, align 8, !tbaa !1180
  %i.th = getelementptr inbounds nuw i8, ptr %i.j, i64 252
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !1195 ; 4 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.j, i64 356
  store i32 %i.ti, ptr %i.tj, align 4, !tbaa !1181
  %i.tk = sext i32 %i.ti to i64                   ; 7 uses
  %i.tl = icmp eq i32 %i.ti, 0
  br i1 %i.tl, label %nk_memcopy.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.tm = getelementptr inbounds nuw i8, ptr %i.j, i64 188
  %i.tn = getelementptr inbounds nuw i8, ptr %i.j, i64 292
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.tk ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tk ; 2 uses
  %i.tq = ptrtoint ptr %i.to to i64               ; 3 uses
  %i.tr = ptrtoint ptr %i.tp to i64               ; 2 uses
  %i.ts = or i64 %i.tq, %i.tr
  %i.tt = and i64 %i.ts, 3
  %.not.i = icmp eq i64 %i.tt, 0
  br i1 %.not.i, label %.loopexit110.i, label %.loopexit110.loopexit.i

.loopexit110.loopexit.i:                          ; preds = %bb.cd
  %i.tu = xor i64 %i.tq, %i.tr
  %i.tv = and i64 %i.tu, 3
  %i.tw = icmp ne i64 %i.tv, 0
  %i.tx = icmp ult i32 %i.ti, 5
  %or.cond3.i = or i1 %i.tx, %i.tw
  %i.ty = and i64 %i.tq, 3
  %.478.i = select i1 %or.cond3.i, i64 %i.tk, i64 %i.ty ; 4 uses
  %i.tz = add nsw i64 %i.tk, 292
  %i.ua = sub nsw i64 %i.tz, %.478.i
  %scevgep158 = getelementptr i8, ptr %i.j, i64 %i.ua ; 2 uses
  %i.ub = add nsw i64 %i.tk, 188
  %i.uc = sub nsw i64 %i.ub, %.478.i
  %scevgep159 = getelementptr i8, ptr %i.j, i64 %i.uc ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %scevgep158, ptr align 1 %scevgep159, i64 %.478.i, i1 false), !tbaa !56
  %i.ud = sub nsw i64 %i.tk, %.478.i
  br label %.loopexit110.i

.loopexit110.i:                                   ; preds = %.loopexit110.loopexit.i, %bb.cd
  %.183.i = phi i64 [ %i.tk, %bb.cd ], [ %i.ud, %.loopexit110.loopexit.i ] ; 3 uses
  %.670.i = phi ptr [ %i.tp, %bb.cd ], [ %scevgep158, %.loopexit110.loopexit.i ] ; 5 uses
  %.6.i = phi ptr [ %i.to, %bb.cd ], [ %scevgep159, %.loopexit110.loopexit.i ] ; 5 uses
  %i.ue = lshr i64 %.183.i, 2                     ; 5 uses
  %.not92.i = icmp eq i64 %i.ue, 0
  br i1 %.not92.i, label %.loopexit109.i, label %.preheader108.i.preheader

.preheader108.i.preheader:                        ; preds = %.loopexit110.i
  %.670.i201 = ptrtoaddr ptr %.670.i to i64
  %.6.i200 = ptrtoaddr ptr %.6.i to i64
  %min.iters.check = icmp ult i64 %.183.i, 32
  %i.uf = sub i64 %.670.i201, %.6.i200
  %diff.check = icmp ugt i64 %i.uf, -32
  %or.cond206 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond206, label %.preheader108.i.preheader210, label %vector.ph

vector.ph:                                        ; preds = %.preheader108.i.preheader
  %n.vec = and i64 %i.ue, 4611686018427387896     ; 3 uses
  %i.ug = and i64 %i.ue, 7
  %i.uh = mul i64 %n.vec, -4                      ; 2 uses
  %i.ui = getelementptr i8, ptr %.670.i, i64 %i.uh ; 2 uses
  %i.uj = getelementptr i8, ptr %.6.i, i64 %i.uh  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uk = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.670.i, i64 %i.uk ; 2 uses
  %next.gep202 = getelementptr i8, ptr %.6.i, i64 %i.uk ; 2 uses
  %i.ul = getelementptr inbounds i8, ptr %next.gep202, i64 -16
  %i.um = getelementptr inbounds i8, ptr %next.gep202, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ul, align 4, !tbaa !55
  %wide.load203 = load <4 x i32>, ptr %i.um, align 4, !tbaa !55
  %i.un = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.uo = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.un, align 4, !tbaa !55
  store <4 x i32> %wide.load203, ptr %i.uo, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.up = icmp eq i64 %index.next, %n.vec
  br i1 %i.up, label %middle.block, label %vector.body, !llvm.loop !1176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ue, %n.vec
  br i1 %cmp.n, label %.loopexit109.i, label %.preheader108.i.preheader210

.preheader108.i.preheader210:                     ; preds = %.preheader108.i.preheader, %middle.block
  %.680.i.ph = phi i64 [ %i.ue, %.preheader108.i.preheader ], [ %i.ug, %middle.block ] ; 4 uses
  %.771.i.ph = phi ptr [ %.670.i, %.preheader108.i.preheader ], [ %i.ui, %middle.block ] ; 2 uses
  %.7.i.ph = phi ptr [ %.6.i, %.preheader108.i.preheader ], [ %i.uj, %middle.block ] ; 2 uses
  %i.uq = add nsw i64 %.680.i.ph, -1
  %xtraiter218 = and i64 %.680.i.ph, 7            ; 2 uses
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  br i1 %lcmp.mod219.not, label %.preheader108.i.prol.loopexit, label %.preheader108.i.prol

.preheader108.i.prol:                             ; preds = %.preheader108.i.preheader210, %.preheader108.i.prol
  %.680.i.prol = phi i64 [ %i.uu, %.preheader108.i.prol ], [ %.680.i.ph, %.preheader108.i.preheader210 ]
  %.771.i.prol = phi ptr [ %i.us, %.preheader108.i.prol ], [ %.771.i.ph, %.preheader108.i.preheader210 ]
  %.7.i.prol = phi ptr [ %i.ur, %.preheader108.i.prol ], [ %.7.i.ph, %.preheader108.i.preheader210 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader108.i.prol ], [ 0, %.preheader108.i.preheader210 ]
  %i.ur = getelementptr inbounds i8, ptr %.7.i.prol, i64 -4 ; 4 uses
  %i.us = getelementptr inbounds i8, ptr %.771.i.prol, i64 -4 ; 4 uses
  %i.ut = load i32, ptr %i.ur, align 4, !tbaa !55
  store i32 %i.ut, ptr %i.us, align 4, !tbaa !55
  %i.uu = add nsw i64 %.680.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter218
  br i1 %prol.iter.cmp.not, label %.preheader108.i.prol.loopexit, label %.preheader108.i.prol, !llvm.loop !1177

.preheader108.i.prol.loopexit:                    ; preds = %.preheader108.i.prol, %.preheader108.i.preheader210
  %.lcssa211.unr = phi ptr [ poison, %.preheader108.i.preheader210 ], [ %i.ur, %.preheader108.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.preheader108.i.preheader210 ], [ %i.us, %.preheader108.i.prol ]
  %.680.i.unr = phi i64 [ %.680.i.ph, %.preheader108.i.preheader210 ], [ %i.uu, %.preheader108.i.prol ]
  %.771.i.unr = phi ptr [ %.771.i.ph, %.preheader108.i.preheader210 ], [ %i.us, %.preheader108.i.prol ]
  %.7.i.unr = phi ptr [ %.7.i.ph, %.preheader108.i.preheader210 ], [ %i.ur, %.preheader108.i.prol ]
  %i.uv = icmp ult i64 %i.uq, 7
  br i1 %i.uv, label %.loopexit109.i, label %.preheader108.i

.preheader108.i:                                  ; preds = %.preheader108.i.prol.loopexit, %.preheader108.i
  %.680.i = phi i64 [ %i.vu, %.preheader108.i ], [ %.680.i.unr, %.preheader108.i.prol.loopexit ]
  %.771.i = phi ptr [ %i.vs, %.preheader108.i ], [ %.771.i.unr, %.preheader108.i.prol.loopexit ] ; 8 uses
  %.7.i = phi ptr [ %i.vr, %.preheader108.i ], [ %.7.i.unr, %.preheader108.i.prol.loopexit ] ; 8 uses
  %i.uw = getelementptr inbounds i8, ptr %.7.i, i64 -4
  %i.ux = getelementptr inbounds i8, ptr %.771.i, i64 -4
  %i.uy = load i32, ptr %i.uw, align 4, !tbaa !55
  store i32 %i.uy, ptr %i.ux, align 4, !tbaa !55
  %i.uz = getelementptr inbounds i8, ptr %.7.i, i64 -8
  %i.va = getelementptr inbounds i8, ptr %.771.i, i64 -8
end_hunk_1
