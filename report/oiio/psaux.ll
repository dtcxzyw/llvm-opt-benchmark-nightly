inline.NumInlined: 440
inline.NumDeleted: 103
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PS_Table_FuncsRec_ = type { ptr, ptr, ptr, ptr }
%struct.PS_Parser_FuncsRec_ = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PS_Builder_FuncsRec_ = type { ptr, ptr }
%struct.T1_Builder_FuncsRec_ = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.T1_Decoder_FuncsRec_ = type { ptr, ptr, ptr, ptr }
%struct.AFM_Parser_FuncsRec_ = type { ptr, ptr, ptr }
%struct.FT_CMap_ClassRec_ = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.T1_CMap_ClassesRec_ = type { ptr, ptr, ptr, ptr }
%struct.CFF_Builder_FuncsRec_ = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.CFF_Decoder_FuncsRec_ = type { ptr, ptr, ptr }
%struct.PSAux_ServiceRec_ = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Module_Class_ = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr }
%struct.T1_TokenRec_ = type { ptr, ptr, i32 }
%struct.T1_FieldRec_ = type { ptr, i32, i32, ptr, i32, i8, i32, i32, i32 }
%struct.FT_Vector_ = type { i64, i64 }
%struct.CF2_BufferRec_ = type { ptr, ptr, ptr, ptr }
%struct.CF2_Matrix_ = type { i32, i32, i32, i32, i32, i32 }
%struct.AFM_ValueRec_ = type { i32, %union.anon }
%union.anon = type { ptr }
%struct.FT_Data_ = type { ptr, i32 }
%struct.CF2_ArrStackRec_ = type { ptr, ptr, i64, i64, i64, i64, ptr }
%struct.CF2_HintMaskRec_ = type { ptr, i8, i8, i64, i64, [12 x i8] }
%struct.CF2_GlyphPathRec_ = type { ptr, ptr, %struct.CF2_HintMapRec_, %struct.CF2_HintMapRec_, %struct.CF2_HintMapRec_, %struct.CF2_ArrStackRec_, i32, i32, i32, %struct.FT_Vector_, i8, i8, i8, i8, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.FT_Vector_, %struct.FT_Vector_, %struct.FT_Vector_, %struct.FT_Vector_, %struct.FT_Vector_, i8, i32, %struct.FT_Vector_, %struct.FT_Vector_, %struct.FT_Vector_, %struct.FT_Vector_ }
%struct.CF2_HintMapRec_ = type { ptr, ptr, ptr, i8, i8, i32, i32, i32, [192 x %struct.CF2_HintRec_] }
%struct.CF2_HintRec_ = type { i32, i64, i32, i32, i32 }
%struct.CF2_StemHintRec_ = type { i8, i32, i32, i32, i32 }
%struct.CF2_CallbackParamsRec_ = type { %struct.FT_Vector_, %struct.FT_Vector_, %struct.FT_Vector_, %struct.FT_Vector_, i32 }
%struct.CF2_HintMoveRec_ = type { i64, i32 }

@ps_table_funcs = hidden constant %struct.PS_Table_FuncsRec_ { ptr @ps_table_new, ptr @ps_table_done, ptr @ps_table_add, ptr @ps_table_release }, align 8
@ps_parser_funcs = hidden constant %struct.PS_Parser_FuncsRec_ { ptr @ps_parser_init, ptr @ps_parser_done, ptr @ps_parser_skip_spaces, ptr @ps_parser_skip_PS_token, ptr @ps_parser_to_int, ptr @ps_parser_to_fixed, ptr @ps_parser_to_bytes, ptr @ps_parser_to_coord_array, ptr @ps_parser_to_fixed_array, ptr @ps_parser_to_token, ptr @ps_parser_to_token_array, ptr @ps_parser_load_field, ptr @ps_parser_load_field_table }, align 8
@ps_builder_funcs = hidden local_unnamed_addr constant %struct.PS_Builder_FuncsRec_ { ptr @ps_builder_init, ptr @ps_builder_done }, align 8
@t1_builder_funcs = hidden constant %struct.T1_Builder_FuncsRec_ { ptr @t1_builder_init, ptr @t1_builder_done, ptr @t1_builder_check_points, ptr @t1_builder_add_point, ptr @t1_builder_add_point1, ptr @t1_builder_add_contour, ptr @t1_builder_start_point, ptr @t1_builder_close_contour }, align 8
@t1_decoder_funcs = hidden constant %struct.T1_Decoder_FuncsRec_ { ptr @t1_decoder_init, ptr @t1_decoder_done, ptr @t1_decoder_parse_metrics, ptr @cf2_decoder_parse_charstrings }, align 8
@afm_parser_funcs = hidden constant %struct.AFM_Parser_FuncsRec_ { ptr @afm_parser_init, ptr @afm_parser_done, ptr @afm_parser_parse }, align 8
@t1_cmap_standard_class_rec = hidden constant %struct.FT_CMap_ClassRec_ { i64 56, ptr @t1_cmap_standard_init, ptr @t1_cmap_std_done, ptr @t1_cmap_std_char_index, ptr @t1_cmap_std_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@t1_cmap_expert_class_rec = hidden constant %struct.FT_CMap_ClassRec_ { i64 56, ptr @t1_cmap_expert_init, ptr @t1_cmap_std_done, ptr @t1_cmap_std_char_index, ptr @t1_cmap_std_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@t1_cmap_custom_class_rec = hidden constant %struct.FT_CMap_ClassRec_ { i64 40, ptr @t1_cmap_custom_init, ptr @t1_cmap_custom_done, ptr @t1_cmap_custom_char_index, ptr @t1_cmap_custom_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@t1_cmap_unicode_class_rec = hidden constant %struct.FT_CMap_ClassRec_ { i64 40, ptr @t1_cmap_unicode_init, ptr @t1_cmap_unicode_done, ptr @t1_cmap_unicode_char_index, ptr @t1_cmap_unicode_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@t1_cmap_classes = hidden constant %struct.T1_CMap_ClassesRec_ { ptr @t1_cmap_standard_class_rec, ptr @t1_cmap_expert_class_rec, ptr @t1_cmap_custom_class_rec, ptr @t1_cmap_unicode_class_rec }, align 8
@cff_builder_funcs = hidden local_unnamed_addr constant %struct.CFF_Builder_FuncsRec_ { ptr @cff_builder_init, ptr @cff_builder_done, ptr @cff_check_points, ptr @cff_builder_add_point, ptr @cff_builder_add_point1, ptr @cff_builder_add_contour, ptr @cff_builder_start_point, ptr @cff_builder_close_contour }, align 8
@cff_decoder_funcs = hidden constant %struct.CFF_Decoder_FuncsRec_ { ptr @cff_decoder_init, ptr @cff_decoder_prepare, ptr @cf2_decoder_parse_charstrings }, align 8
@.str = private unnamed_addr constant [6 x i8] c"psaux\00", align 1
@psaux_interface = internal constant %struct.PSAux_ServiceRec_ { ptr @ps_table_funcs, ptr @ps_parser_funcs, ptr @t1_builder_funcs, ptr @t1_decoder_funcs, ptr @t1_decrypt, ptr @cff_random, ptr @ps_decoder_init, ptr @t1_make_subfont, ptr @t1_cmap_classes, ptr @afm_parser_funcs, ptr @cff_decoder_funcs }, align 8
@psaux_module_class = hidden local_unnamed_addr constant %struct.FT_Module_Class_ { i64 0, i64 24, ptr @.str, i64 131072, i64 131072, ptr @psaux_interface, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"StartFontMetrics\00", align 1
@afm_key_table = internal unnamed_addr constant [74 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.1, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"Ascender\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"AxisLabel\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"AxisType\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"BlendAxisTypes\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"BlendDesignMap\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"BlendDesignPositions\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"CC\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"CapHeight\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"CharWidth\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"CharacterSet\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Characters\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Descender\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"EncodingScheme\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"EndAxis\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"EndCharMetrics\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"EndComposites\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"EndDirection\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"EndFontMetrics\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"EndKernData\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"EndKernPairs\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"EndTrackKern\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"EscChar\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"FamilyName\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"FullName\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"IsBaseFont\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"IsCIDFont\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"IsFixedPitch\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"IsFixedV\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"ItalicAngle\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"KP\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"KPH\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"KPX\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"KPY\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"MappingScheme\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"MetricsSets\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"Notice\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"PCC\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"StartAxis\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"StartCharMetrics\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"StartComposites\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"StartDirection\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"StartKernData\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"StartKernPairs\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"StartKernPairs0\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"StartKernPairs1\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"StartTrackKern\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"StdHW\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"StdVW\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"TrackKern\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"UnderlinePosition\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"UnderlineThickness\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"VV\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"VVector\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"W0\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"W0X\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"W0Y\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"W1\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"W1X\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"W1Y\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"WX\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"WY\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"WeightVector\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"XHeight\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@ft_char_table = internal unnamed_addr constant [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#\FF\FF\FF\FF\FF", align 16
@t1_args_count = internal unnamed_addr constant [27 x i32] [i32 0, i32 0, i32 2, i32 5, i32 4, i32 0, i32 1, i32 1, i32 4, i32 2, i32 2, i32 6, i32 4, i32 1, i32 1, i32 0, i32 2, i32 6, i32 2, i32 6, i32 2, i32 -1, i32 1, i32 0, i32 0, i32 2, i32 2], align 16
@.str.76 = private unnamed_addr constant [17 x i8] c"postscript-cmaps\00", align 1
@cf2_interpT2CharString.readFromStack = internal constant [12 x i8] c"\01\00\01\01\01\00\01\00\01\00\01\00", align 1
@cf2_interpT2CharString.readFromStack.77 = internal constant [12 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01", align 1
@cf2_interpT2CharString.readFromStack.78 = internal constant [12 x i8] c"\01\01\01\01\01\00\01\00\01\01\01\00", align 1
@cf2_interpT2CharString.readFromStack.79 = internal constant [12 x i8] c"\01\01\01\01\01\01\01\01\01\01\00\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @ps_table_new(ptr nofree noundef captures(none) initializes((40, 48), (56, 64)) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %i.b, align 8, !tbaa !7
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = call ptr @ft_mem_realloc(ptr noundef %2, i64 noundef 8, i64 noundef 0, i64 noundef %i.c, ptr noundef null, ptr noundef nonnull %i.a) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !17
  %i.f = load i32, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @ft_mem_realloc(ptr noundef %2, i64 noundef 4, i64 noundef 0, i64 noundef %i.c, ptr noundef null, ptr noundef nonnull %i.a) #19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.h, align 8, !tbaa !18
  %i.i = load i32, ptr %i.a, align 4, !tbaa !3
  %.not17 = icmp eq i32 %i.i, 0
  br i1 %.not17, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 3735928559, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @ps_table_funcs, i64 32, i1 false), !tbaa.struct !21
  br label %bb.d

.thread:                                          ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !17
  call void @ft_mem_free(ptr noundef %2, ptr noundef %i.m) #19
  store ptr null, ptr %i.e, align 8, !tbaa !17
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.n = phi i32 [ %.pre, %.thread ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.n
}

; Function Attrs: nounwind uwtable
define internal void @ps_table_done(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !25
  %i.i = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 1, i64 noundef %i.h, i64 noundef %i.c, ptr noundef %i.f, ptr noundef nonnull %i.a) #19 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !24
  %i.j = load i32, ptr %i.a, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.b, label %ps_table_realloc.exit

bb.b:                                             ; preds = %bb.a
  %.not27.i = icmp eq ptr %i.f, null
  %.not28.i = icmp eq ptr %i.i, %i.f
  %or.cond.i = select i1 %.not27.i, i1 true, i1 %.not28.i
  br i1 %or.cond.i, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.idx.i = shl nsw i64 %i.o, 3
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %.idx.i
  %i.q = icmp sgt i32 %i.n, 0
  br i1 %i.q, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.r = ptrtoint ptr %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.02330.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.x, %bb.f ] ; 3 uses
  %i.s = load ptr, ptr %.02330.i, align 8, !tbaa !26 ; 2 uses
  %.not29.i = icmp eq ptr %i.s, null
  br i1 %.not29.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %0, align 8, !tbaa !24
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.u, %i.r
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  store ptr %i.w, ptr %.02330.i, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.02330.i, i64 8 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.p
  br i1 %i.y, label %bb.d, label %.loopexit.i, !llvm.loop !27

.loopexit.i:                                      ; preds = %bb.f, %bb.c, %bb.b
  store i64 %i.c, ptr %i.g, align 8, !tbaa !25
  br label %ps_table_realloc.exit

ps_table_realloc.exit:                            ; preds = %bb.a, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ps_table_add(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19
  %.not = icmp slt i32 %1, %i.d
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = zext i32 %3 to i64                       ; 3 uses
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25   ; 4 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !24  ; 5 uses
  br i1 %i.k, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.c, %.preheader
  %.04162 = phi i64 [ %i.o, %.preheader ], [ %i.j, %bb.c ] ; 2 uses
  %i.l = lshr i64 %.04162, 2
  %i.m = add i64 %.04162, 1024
  %i.n = add i64 %i.m, %i.l
  %i.o = and i64 %i.n, -1024                      ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.h
  br i1 %i.p, label %.preheader, label %bb.d, !llvm.loop !29

bb.d:                                             ; preds = %.preheader
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %.pre63 to i64              ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %.not49 = icmp ult i64 %i.s, %i.j
  %i.t = tail call i64 @llvm.smax.i64(i64 %i.s, i64 -1)
  %.040 = select i1 %.not49, i64 %i.t, i64 -1     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.w = call ptr @ft_mem_realloc(ptr noundef %i.v, i64 noundef 1, i64 noundef %i.j, i64 noundef %i.o, ptr noundef %.pre63, ptr noundef nonnull %i.a) #19 ; 4 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !24
  %i.x = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %.not27.i = icmp eq ptr %.pre63, null
  %.not28.i = icmp eq ptr %i.w, %.pre63
  %or.cond.i = select i1 %.not27.i, i1 true, i1 %.not28.i
  br i1 %or.cond.i, label %ps_table_realloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 2 uses
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %.idx.i = shl nsw i64 %i.ab, 3
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %.idx.i
  %i.ad = icmp sgt i32 %i.aa, 0
  br i1 %i.ad, label %.lr.ph.i, label %ps_table_realloc.exit

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.02330.i = phi ptr [ %i.aj, %bb.h ], [ %i.z, %bb.f ] ; 3 uses
  %i.ae = load ptr, ptr %.02330.i, align 8, !tbaa !26 ; 2 uses
  %.not29.i = icmp eq ptr %i.ae, null
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !24
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.ag, %i.r
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah
  store ptr %i.ai, ptr %.02330.i, align 8, !tbaa !26
end_hunk_0
begin_hunk_1_@t1_builder_close_contour:bb.a
  %i.aa = sext i32 %i.u to i64
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.x ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -1
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !155
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !155
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !156
  %i.an = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !156
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aq = load i8, ptr %i.ah, align 1, !tbaa !38
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = add nsw i16 %i.t, -1                    ; 2 uses
  store i16 %i.as, ptr %i.v, align 2, !tbaa !153
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.j, %bb.i, %bb.f
  %i.at = phi i16 [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ %i.as, %bb.j ], [ %i.t, %bb.i ], [ %i.t, %bb.f ] ; 2 uses
  %i.au = icmp sgt i16 %i.c, 0
  br i1 %i.au, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.av = sext i16 %i.at to i32
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  %i.ax = icmp eq i32 %i.u, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i16 %i.c, -1
  store i16 %i.ay, ptr %i.b, align 8, !tbaa !160
  %i.az = add i16 %i.at, -1
  store i16 %i.az, ptr %i.v, align 2, !tbaa !153
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ba = trunc i32 %i.aw to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !161
  %i.bd = zext nneg i16 %i.c to i64
  %i.be = getelementptr [2 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -2
  store i16 %i.ba, ptr %i.bf, align 2, !tbaa !44
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %bb.m, %bb.a, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @t1_decoder_init(ptr nofree noundef writeonly captures(none) initializes((0, 3000)) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i32 noundef %7, ptr noundef %8) #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3000) %0, i8 0, i64 3000, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.c = tail call ptr @ft_module_get_service(ptr noundef %i.b, ptr noundef nonnull @.str.76, i8 noundef zeroext 1) #19 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store ptr %i.c, ptr %i.d, align 8, !tbaa !163
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.e, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 1, ptr %i.f, align 4, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8, !tbaa !109
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !110
  store ptr %i.j, ptr %0, align 8, !tbaa !122
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %t1_builder_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 296 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !131  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !134
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %i.p, align 8, !tbaa !135
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.q, ptr %i.r, align 8, !tbaa !136
  tail call void @FT_GlyphLoader_Rewind(ptr noundef %i.m) #19, !inline_history !170
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.u, ptr %i.v, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !144
  %.not29.i = icmp eq i8 %6, 0
  br i1 %.not29.i, label %t1_builder_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !145
  store ptr %i.z, ptr %i.w, align 8, !tbaa !144
  br label %t1_builder_init.exit

t1_builder_init.exit:                             ; preds = %bb.b, %bb.c, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i8 0, i64 48, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) @t1_builder_funcs, i64 64, i1 false), !tbaa.struct !146
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !171
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2696
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !172
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2704
  store ptr %4, ptr %i.ag, align 8, !tbaa !173
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2920
  store i32 %7, ptr %i.ah, align 8, !tbaa !174
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2912
  store ptr %5, ptr %i.ai, align 8, !tbaa !175
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2928
  store ptr %8, ptr %i.aj, align 8, !tbaa !176
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2936
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) @t1_decoder_funcs, i64 32, i1 false), !tbaa.struct !21
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %t1_builder_init.exit
  %.1 = phi i32 [ 0, %t1_builder_init.exit ], [ 7, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal void @t1_decoder_done(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !177
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %t1_builder_done.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !tbaa.struct !99
  br label %t1_builder_done.exit

t1_builder_done.exit:                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2992
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !178  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %t1_builder_done.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2984 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !179
  tail call void %i.h(ptr noundef %i.j) #19
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !179
  tail call void @ft_mem_free(ptr noundef %i.a, ptr noundef %i.k) #19
  store ptr null, ptr %i.i, align 8, !tbaa !179
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %t1_builder_done.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 162) i32 @t1_decoder_parse_metrics(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !180
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 2272 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2680 ; 3 uses
  store ptr %.ptr, ptr %i.c, align 8, !tbaa !181
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2280
  store ptr %1, ptr %i.e, align 8, !tbaa !182
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2288
  store ptr %i.g, ptr %i.h, align 8, !tbaa !184
  store ptr %1, ptr %.ptr, align 8, !tbaa !185
  %i.i = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2716
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2720
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not339 = icmp eq i32 %2, 0
  br i1 %.not339, label %.thread239, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.0142.ptr275 = getelementptr inbounds nuw i8, ptr %0, i64 2272
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread232
  %.0142.ptr281 = phi ptr [ %.0142.ptr275, %.lr.ph ], [ %.0142.ptr, %.thread232 ]
  %.0142.idx280 = phi i64 [ 2272, %.lr.ph ], [ %.5.idx, %.thread232 ] ; 6 uses
  %.0151279 = phi i8 [ 0, %.lr.ph ], [ %.5156, %.thread232 ] ; 6 uses
  %.0157278 = phi ptr [ %1, %.lr.ph ], [ %.7, %.thread232 ] ; 5 uses
  %.0163276 = phi ptr [ %i.g, %.lr.ph ], [ %.5168, %.thread232 ] ; 5 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !180  ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0157278, i64 1 ; 8 uses
  %i.u = load i8, ptr %.0157278, align 1, !tbaa !38 ; 5 uses
  switch i8 %i.u, label %bb.i [
    i8 1, label %.thread239
    i8 3, label %.thread239
    i8 4, label %.thread239
    i8 5, label %.thread239
    i8 6, label %.thread239
    i8 7, label %.thread239
    i8 8, label %.thread239
    i8 9, label %.thread239
    i8 14, label %.thread239
    i8 15, label %.thread239
    i8 21, label %.thread239
    i8 22, label %.thread239
    i8 30, label %.thread239
    i8 31, label %.thread239
    i8 10, label %bb.q
    i8 11, label %3
    i8 13, label %4
    i8 12, label %bb.c
    i8 -1, label %bb.e
  ]

3:                                                ; preds = %bb.b
  br label %bb.q

4:                                                ; preds = %bb.b
  br label %bb.q

bb.c:                                             ; preds = %bb.b
  %.not184 = icmp ult ptr %i.t, %.0163276
  br i1 %.not184, label %bb.d, label %.thread239

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.0157278, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.t, align 1, !tbaa !38
  switch i8 %i.w, label %.thread239 [
    i8 7, label %bb.q
    i8 12, label %.thread211
  ]

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.0157278, i64 5 ; 3 uses
  %i.y = icmp ugt ptr %i.x, %.0163276
  br i1 %i.y, label %.thread239, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.t, align 1
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z) ; 4 uses
  %i.ab = add i32 %i.aa, -32001
  %or.cond = icmp ult i32 %i.ab, -64001
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not183 = icmp eq i8 %.0151279, 0
  br i1 %.not183, label %bb.r, label %.thread239

bb.h:                                             ; preds = %bb.f
  %.not = icmp ne i8 %.0151279, 0                 ; 2 uses
  %i.ac = shl nsw i32 %i.aa, 16
  %spec.select195 = select i1 %.not, i32 %i.aa, i32 %i.ac
  br label %bb.r

bb.i:                                             ; preds = %bb.b
  %i.ad = zext i8 %i.u to i32                     ; 2 uses
  %i.ae = icmp ugt i8 %i.u, 31
  br i1 %i.ae, label %bb.j, label %.thread239

bb.j:                                             ; preds = %bb.i
  %i.af = icmp ult i8 %i.u, -9
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.ad, -139
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.0157278, i64 2 ; 3 uses
  %i.ai = icmp ugt ptr %i.ah, %.0163276
  br i1 %i.ai, label %.thread239, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = icmp samesign ult i8 %i.u, -5
  %i.ak = shl nuw nsw i32 %i.ad, 8                ; 2 uses
  %i.al = load i8, ptr %i.t, align 1, !tbaa !38
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = add nsw i32 %i.ak, -63124
  %i.ao = add nuw nsw i32 %i.an, %i.am
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ap = or disjoint i32 %i.ak, %i.am
  %i.aq = sub nsw i32 64148, %i.ap
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.k
  %.1158 = phi ptr [ %i.t, %bb.k ], [ %i.ah, %bb.n ], [ %i.ah, %bb.o ]
  %.0147 = phi i32 [ %i.ag, %bb.k ], [ %i.ao, %bb.n ], [ %i.aq, %bb.o ] ; 2 uses
  %.not185 = icmp ne i8 %.0151279, 0              ; 2 uses
  %i.ar = shl nsw i32 %.0147, 16
  %spec.select197 = select i1 %.not185, i32 %.0147, i32 %i.ar
  br label %bb.r

bb.q:                                             ; preds = %bb.d, %bb.b, %4, %3
  %.2159 = phi ptr [ %i.t, %4 ], [ %i.t, %bb.b ], [ %i.v, %bb.d ], [ %i.t, %3 ]
  %.0149 = phi i32 [ 2, %4 ], [ 22, %bb.b ], [ 4, %bb.d ], [ 24, %3 ]
  %i.as = icmp eq i8 %.0151279, 0
  br i1 %i.as, label %.thread211, label %.thread239

bb.r:                                             ; preds = %bb.g, %bb.p, %bb.h
  %.2159.ph.ph = phi ptr [ %i.x, %bb.h ], [ %.1158, %bb.p ], [ %i.x, %bb.g ]
  %.1152.ph.ph.shrunk = phi i1 [ %.not, %bb.h ], [ %.not185, %bb.p ], [ true, %bb.g ]
  %.1148.ph.ph = phi i32 [ %spec.select195, %bb.h ], [ %spec.select197, %bb.p ], [ %i.aa, %bb.g ]
  %i.at = ptrtoint ptr %i.s to i64
  %i.au = sub i64 %i.at, %i.i
  %i.av = icmp sgt i64 %i.au, 2040
  br i1 %i.av, label %.thread239, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.1152.ph.ph = zext i1 %.1152.ph.ph.shrunk to i8
  %i.aw = sext i32 %.1148.ph.ph to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.aw, ptr %i.s, align 8, !tbaa !42
  br label %.thread232

.thread211:                                       ; preds = %bb.q, %bb.d
  %.2159207218 = phi ptr [ %i.v, %bb.d ], [ %.2159, %bb.q ] ; 2 uses
  %.0149209216 = phi i32 [ 20, %bb.d ], [ %.0149, %bb.q ] ; 2 uses
  %5 = zext nneg i32 %.0149209216 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @t1_args_count, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !3
  %i.ay = ptrtoint ptr %i.s to i64
  %i.az = sub i64 %i.ay, %i.i
  %8 = ashr exact i64 %i.az, 3
  %9 = sext i32 %7 to i64                         ; 2 uses
  %i.ba = icmp slt i64 %8, %9
  br i1 %i.ba, label %.thread239, label %bb.t

bb.t:                                             ; preds = %.thread211
  %i.bb = sub nsw i64 0, %9
  %10 = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.bb ; 12 uses
  switch i32 %.0149209216, label %.thread239 [
    i32 2, label %bb.u
    i32 4, label %bb.v
    i32 20, label %bb.w
    i32 22, label %bb.x
    i32 24, label %24
  ]

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.d, align 8, !tbaa !103
  %11 = load i64, ptr %i.o, align 8, !tbaa !186
  %12 = load i64, ptr %10, align 8, !tbaa !42
  %13 = add i64 %12, %11
  store i64 %13, ptr %i.o, align 8, !tbaa !186
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa !42
  store i64 %15, ptr %i.q, align 8, !tbaa !187
  br label %.thread239.sink.split

bb.v:                                             ; preds = %bb.t
  store i32 1, ptr %i.d, align 8, !tbaa !103
  %i.bc = load i64, ptr %i.o, align 8, !tbaa !186
  %i.bd = load i64, ptr %10, align 8, !tbaa !42
  %i.be = add i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.o, align 8, !tbaa !186
  %i.bf = load i64, ptr %i.p, align 8, !tbaa !188
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !42
  %i.bi = add i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.p, align 8, !tbaa !188
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !42
  store i64 %i.bk, ptr %i.q, align 8, !tbaa !187
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !42
  br label %.thread239.sink.split

bb.w:                                             ; preds = %bb.t
  %i.bn = load i64, ptr %10, align 8, !tbaa !42
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %17 = load i64, ptr %16, align 8, !tbaa !42
  %18 = tail call i64 @FT_DivFix(i64 noundef %i.bn, i64 noundef %17) #19
  store i64 %18, ptr %10, align 8, !tbaa !42
  br label %.thread232

bb.x:                                             ; preds = %bb.t
  %19 = load i64, ptr %10, align 8, !tbaa !42
  %20 = lshr i64 %19, 16
  %21 = trunc i64 %20 to i16
  %22 = sext i16 %21 to i32                       ; 2 uses
  %23 = load ptr, ptr %i.j, align 8, !tbaa !189   ; 2 uses
  %.not190 = icmp eq ptr %23, null
  br i1 %.not190, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = tail call ptr @ft_hash_num_lookup(i32 noundef %22, ptr noundef nonnull %23) #19 ; 2 uses
  %.not191 = icmp eq ptr %i.bo, null
  br i1 %.not191, label %.thread239, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !42
  %i.bq = trunc i64 %i.bp to i32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.1138 = phi i32 [ %22, %bb.x ], [ %i.bq, %bb.z ] ; 3 uses
  %i.br = icmp slt i32 %.1138, 0
  br i1 %i.br, label %.thread239, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = load i32, ptr %i.k, align 4, !tbaa !190
  %.not192 = icmp sge i32 %.1138, %i.bs
  %i.bt = icmp sgt i64 %.0142.idx280, 2632
  %or.cond199 = select i1 %.not192, i1 true, i1 %i.bt
  br i1 %or.cond199, label %.thread239, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %.2159207218, ptr %.0142.ptr281, align 8, !tbaa !185
  %.0142.add187 = add nsw i64 %.0142.idx280, 24   ; 2 uses
  %.ptr189 = getelementptr inbounds i8, ptr %0, i64 %.0142.add187 ; 4 uses
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !191
  %i.bv = zext nneg i32 %.1138 to i64             ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !26 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.ptr189, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !182
  %i.bz = load ptr, ptr %i.m, align 8, !tbaa !192 ; 2 uses
  %.not193 = icmp eq ptr %i.bz, null
  br i1 %.not193, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cc
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ce = load i32, ptr %i.n, align 8, !tbaa !193
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 0)
  %spec.select198 = zext nneg i32 %narrow to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 %spec.select198 ; 2 uses
  store ptr %i.cf, ptr %i.by, align 8, !tbaa !182
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !26
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ci = phi ptr [ %i.ch, %bb.ae ], [ %i.cd, %bb.ad ] ; 2 uses
  %i.cj = phi ptr [ %i.cf, %bb.ae ], [ %i.bx, %bb.ad ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.ptr189, i64 16
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !184
  store ptr %i.cj, ptr %.ptr189, align 8, !tbaa !185
  %.not194 = icmp eq ptr %i.cj, null
  br i1 %.not194, label %.thread239, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %.ptr189, ptr %i.c, align 8, !tbaa !181
  br label %.thread232

24:                                               ; preds = %bb.t
  %.not186 = icmp sgt i64 %.0142.idx280, 2272
  br i1 %.not186, label %bb.ah, label %.thread239

bb.ah:                                            ; preds = %24
  %.0142.add = add nsw i64 %.0142.idx280, -24     ; 2 uses
  %.ptr188 = getelementptr inbounds nuw i8, ptr %0, i64 %.0142.add ; 3 uses
  %i.cl = load ptr, ptr %.ptr188, align 8, !tbaa !185
  %i.cm = getelementptr inbounds nuw i8, ptr %.ptr188, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !184
  store ptr %.ptr188, ptr %i.c, align 8, !tbaa !181
  br label %.thread232

.thread232:                                       ; preds = %bb.w, %bb.ah, %bb.ag, %bb.s
  %.0150.sink = phi ptr [ %i.ax, %bb.s ], [ %16, %bb.w ], [ %10, %bb.ag ], [ %10, %bb.ah ]
  %.5168 = phi ptr [ %.0163276, %bb.s ], [ %.0163276, %bb.w ], [ %i.ci, %bb.ag ], [ %i.cn, %bb.ah ] ; 2 uses
  %.7 = phi ptr [ %.2159.ph.ph, %bb.s ], [ %.2159207218, %bb.w ], [ %i.cj, %bb.ag ], [ %i.cl, %bb.ah ] ; 2 uses
  %.5156 = phi i8 [ %.1152.ph.ph, %bb.s ], [ 0, %bb.w ], [ %.0151279, %bb.ag ], [ %.0151279, %bb.ah ]
  %.5.idx = phi i64 [ %.0142.idx280, %bb.s ], [ %.0142.idx280, %bb.w ], [ %.0142.add187, %bb.ag ], [ %.0142.add, %bb.ah ] ; 2 uses
  store ptr %.0150.sink, ptr %i.b, align 8, !tbaa !180
  %.0142.ptr = getelementptr inbounds i8, ptr %0, i64 %.5.idx
  %i.co = icmp ult ptr %.7, %.5168
  br i1 %i.co, label %bb.b, label %.thread239

.thread239.sink.split:                            ; preds = %bb.u, %bb.v
  %.sink = phi i64 [ %i.bm, %bb.v ], [ 0, %bb.u ]
  store i64 %.sink, ptr %i.r, align 8, !tbaa !194
  br label %.thread239

.thread239:                                       ; preds = %.thread211, %bb.d, %bb.c, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.e, %bb.l, %bb.g, %bb.i, %bb.r, %bb.q, %.thread232, %24, %bb.t, %bb.af, %bb.ab, %bb.aa, %bb.y, %bb.a, %.thread239.sink.split
  %.4 = phi i32 [ 0, %.thread239.sink.split ], [ 160, %bb.a ], [ 160, %bb.y ], [ 160, %bb.q ], [ 160, %bb.aa ], [ 160, %bb.ab ], [ 160, %bb.af ], [ 160, %bb.t ], [ 160, %24 ], [ 160, %.thread232 ], [ 160, %bb.r ], [ 160, %bb.i ], [ 160, %bb.g ], [ 160, %bb.l ], [ 160, %bb.e ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.b ], [ 160, %bb.c ], [ 160, %bb.d ], [ 161, %.thread211 ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 165) i32 @cf2_decoder_parse_charstrings(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.CF2_BufferRec_, align 8     ; 8 uses
  %5 = alloca %struct.CF2_Matrix_, align 4        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.f = load i8, ptr %i.e, align 4, !tbaa !195   ; 2 uses
  %.not = icmp eq i8 %i.f, 0                      ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !201
  %.not72 = icmp eq ptr %i.h, null
  br i1 %.not72, label %bb.cm, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !202    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !203  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !204  ; 2 uses
  %.not73 = icmp eq ptr %i.l, null
  br i1 %.not73, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @cf2_free_instance, ptr %i.m, align 8, !tbaa !205
  %i.n = call ptr @ft_mem_alloc(ptr noundef %i.i, i64 noundef 656, ptr noundef nonnull %i.d) #19 ; 11 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !203
  store ptr %i.n, ptr %i.o, align 8, !tbaa !204
  %i.p = load i32, ptr %i.d, align 4, !tbaa !3
  %.not74 = icmp eq i32 %i.p, 0
  br i1 %.not74, label %bb.e, label %bb.cm

bb.e:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.n, align 8, !tbaa !206
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !216
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4968
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !217
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 648
  store ptr %i.t, ptr %i.u, align 8, !tbaa !232
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i8 0, i64 48, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 216
  store ptr %i.i, ptr %i.y, align 8, !tbaa !233
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 224
  store ptr %i.w, ptr %i.z, align 8, !tbaa !234
  store ptr @cf2_builder_moveTo, ptr %i.v, align 8, !tbaa !235
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  store ptr @cf2_builder_lineTo, ptr %i.aa, align 8, !tbaa !236
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  store ptr @cf2_builder_cubeTo, ptr %i.ab, align 8, !tbaa !237
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.068 = phi ptr [ %i.l, %bb.c ], [ %i.n, %bb.g ] ; 71 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.068, i64 240 ; 3 uses
  store ptr %0, ptr %i.ac, align 8, !tbaa !238
  %i.ad = getelementptr inbounds nuw i8, ptr %.068, i64 176 ; 2 uses
  %i.ae = getelementptr i8, ptr %.068, i64 232    ; 5 uses
  store ptr %0, ptr %i.ae, align 8, !tbaa !239
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !162 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 60
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !240
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !246
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !247 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 0, ptr %4, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %1, ptr %i.ap, align 8, !tbaa !251
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.aq, align 8, !tbaa !253
  %.not76 = icmp eq ptr %1, null
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.as = select i1 %.not76, ptr null, ptr %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.as, ptr %i.at, align 8, !tbaa !254
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.au, i8 0, i64 20, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !255 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 304
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !256
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 305
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !258
  %.not.i = icmp ne i8 %i.az, 0                   ; 2 uses
  br i1 %.not.i, label %bb.i, label %cf2_getScaleAndHintFlag.exit

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 312
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !tbaa !42
  %i.be = trunc <2 x i64> %i.bd to <2 x i32>
  %i.bf = add <2 x i32> %i.be, splat (i32 32)
  %i.bg = sdiv <2 x i32> %i.bf, splat (i32 64)
  br label %cf2_getScaleAndHintFlag.exit

cf2_getScaleAndHintFlag.exit:                     ; preds = %bb.h, %bb.i
  %i.bh = phi <2 x i32> [ %i.bg, %bb.i ], [ splat (i32 1024), %bb.h ] ; 3 uses
  %i.bi = extractelement <2 x i32> %i.bh, i64 0   ; 2 uses
  store i32 %i.bi, ptr %5, align 4, !tbaa !3
  %i.bj = extractelement <2 x i32> %i.bh, i64 1   ; 2 uses
  store i32 %i.bj, ptr %i.av, align 4, !tbaa !3
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %cf2_getScaleAndHintFlag.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ag, i64 1208
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !259
  br label %bb.k

bb.k:                                             ; preds = %cf2_getScaleAndHintFlag.exit, %bb.j
  %.sink = phi i8 [ %i.bl, %bb.j ], [ 0, %cf2_getScaleAndHintFlag.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.068, i64 13
  store i8 %.sink, ptr %i.bm, align 1, !tbaa !282
  %i.bn = getelementptr inbounds nuw i8, ptr %.068, i64 12 ; 2 uses
  store i8 %i.f, ptr %i.bn, align 4, !tbaa !283
  %i.bo = getelementptr inbounds nuw i8, ptr %.068, i64 16 ; 3 uses
  %spec.store.select = zext i1 %.not.i to i32     ; 2 uses
  store i32 %spec.store.select, ptr %i.bo, align 8
  %.not79 = icmp eq i8 %i.bb, 0                   ; 2 uses
  br i1 %.not79, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not80 = icmp eq i8 %i.ao, 0
  br i1 %.not80, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = icmp sgt i8 %i.ao, -1
  %i.bq = icmp ne i8 %i.ak, 0
  %or.cond = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.br = or disjoint i32 %spec.store.select, 2
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !284
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.068, i64 260 ; 3 uses
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 68
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = getelementptr inbounds nuw i8, ptr %.068, i64 264
  store i32 %i.bw, ptr %i.bx, align 8, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %.068, i64 268
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ai, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = getelementptr inbounds nuw i8, ptr %.068, i64 272
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.068, i64 276
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 84
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = getelementptr inbounds nuw i8, ptr %.068, i64 280
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !3
  %i.cm = getelementptr inbounds nuw i8, ptr %.068, i64 284
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ai, i64 92
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = getelementptr inbounds nuw i8, ptr %.068, i64 288
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !3
  %.val = load ptr, ptr %i.af, align 8, !tbaa !285
  %i.cq = getelementptr i8, ptr %.val, i64 136
  %.val.val = load i16, ptr %i.cq, align 8, !tbaa !286 ; 2 uses
  %i.cr = zext i16 %.val.val to i32               ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.068, i64 160 ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.assume
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !15, i64 56}
!8 = !{!"PS_TableRec_", !9, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !4, i64 32, !12, i64 40, !14, i64 48, !15, i64 56, !16, i64 64}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p2 omnipotent char", !13, i64 0}
!13 = !{!"any p2 pointer", !10, i64 0}
!14 = !{!"p1 int", !10, i64 0}
!15 = !{!"p1 _ZTS13FT_MemoryRec_", !10, i64 0}
!16 = !{!"PS_Table_FuncsRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!17 = !{!8, !12, i64 40}
!18 = !{!8, !14, i64 48}
!19 = !{!8, !4, i64 32}
!20 = !{!8, !11, i64 24}
!21 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !22, i64 24, i64 8, !22}
!22 = !{!10, !10, i64 0}
!23 = !{!8, !11, i64 8}
!24 = !{!8, !9, i64 0}
!25 = !{!8, !11, i64 16}
!26 = !{!9, !9, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!31, !4, i64 24}
!31 = !{!"PS_ParserRec_", !9, i64 0, !9, i64 8, !9, i64 16, !4, i64 24, !15, i64 32, !32, i64 40}
!32 = !{!"PS_Parser_FuncsRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96}
!33 = !{!31, !9, i64 8}
!34 = !{!31, !9, i64 16}
!35 = !{!31, !9, i64 0}
!36 = !{!31, !15, i64 32}
!37 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !22, i64 24, i64 8, !22, i64 32, i64 8, !22, i64 40, i64 8, !22, i64 48, i64 8, !22, i64 56, i64 8, !22, i64 64, i64 8, !22, i64 72, i64 8, !22, i64 80, i64 8, !22, i64 88, i64 8, !22, i64 96, i64 8, !22}
!38 = !{!5, !5, i64 0}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !28}
!42 = !{!11, !11, i64 0}
!43 = distinct !{!43, !28}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !5, i64 0}
!46 = !{!47, !4, i64 16}
!47 = !{!"T1_TokenRec_", !9, i64 0, !9, i64 8, !4, i64 16}
!48 = !{!47, !9, i64 0}
!49 = !{!47, !9, i64 8}
!50 = distinct !{!50, !28}
!51 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 4, !3}
!52 = !{!53, !4, i64 12}
!53 = !{!"T1_FieldRec_", !9, i64 0, !4, i64 8, !4, i64 12, !10, i64 16, !4, i64 24, !5, i64 28, !4, i64 32, !4, i64 36, !4, i64 40}
!54 = !{!53, !4, i64 24}
!55 = !{!53, !5, i64 28}
!56 = !{!57, !11, i64 0}
!57 = !{!"FT_BBox_", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!58 = !{!57, !11, i64 8}
!59 = !{!57, !11, i64 16}
!60 = !{!57, !11, i64 24}
!61 = distinct !{!61, !28}
!62 = distinct !{!62, !28}
!63 = !{i64 0, i64 8, !26, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 8, !22, i64 24, i64 4, !3, i64 28, i64 1, !38, i64 32, i64 4, !3, i64 36, i64 4, !3, i64 40, i64 4, !3}
!64 = !{!53, !4, i64 32}
!65 = !{!53, !4, i64 36}
!66 = distinct !{!66, !28}
!67 = !{!15, !15, i64 0}
!68 = !{!69, !15, i64 0}
!69 = !{!"PS_Builder_", !15, i64 0, !70, i64 8, !71, i64 16, !72, i64 24, !73, i64 32, !73, i64 40, !74, i64 48, !74, i64 56, !75, i64 64, !75, i64 72, !76, i64 80, !5, i64 88, !5, i64 89, !5, i64 90, !5, i64 91, !5, i64 92, !77, i64 96}
!70 = !{!"p1 _ZTS11FT_FaceRec_", !10, i64 0}
!71 = !{!"p1 _ZTS17CFF_GlyphSlotRec_", !10, i64 0}
!72 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !10, i64 0}
!73 = !{!"p1 _ZTS11FT_Outline_", !10, i64 0}
!74 = !{!"p1 long", !10, i64 0}
!75 = !{!"p1 _ZTS10FT_Vector_", !10, i64 0}
!76 = !{!"p1 _ZTS8FT_BBox_", !10, i64 0}
!77 = !{!"PS_Builder_FuncsRec_", !10, i64 0, !10, i64 8}
!78 = !{!69, !70, i64 8}
!79 = !{!73, !73, i64 0}
!80 = !{!69, !73, i64 32}
!81 = !{!69, !73, i64 40}
!82 = !{!69, !74, i64 48}
!83 = !{!69, !74, i64 56}
!84 = !{!69, !75, i64 64}
!85 = !{!69, !75, i64 72}
!86 = !{!69, !76, i64 80}
!87 = !{!88, !5, i64 128}
!88 = !{!"CFF_Builder_", !15, i64 0, !89, i64 8, !71, i64 16, !72, i64 24, !73, i64 32, !73, i64 40, !11, i64 48, !11, i64 56, !90, i64 64, !90, i64 80, !57, i64 96, !5, i64 128, !5, i64 129, !5, i64 130, !5, i64 131, !10, i64 136, !10, i64 144, !91, i64 152}
!89 = !{!"p1 _ZTS11TT_FaceRec_", !10, i64 0}
!90 = !{!"FT_Vector_", !11, i64 0, !11, i64 8}
!91 = !{!"CFF_Builder_FuncsRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!92 = !{!69, !5, i64 88}
!93 = !{!69, !5, i64 89}
!94 = !{!69, !5, i64 90}
!95 = !{!69, !5, i64 91}
!96 = !{!69, !5, i64 92}
!97 = !{i64 0, i64 8, !22, i64 8, i64 8, !22}
!98 = !{!69, !71, i64 16}
!99 = !{i64 0, i64 2, !44, i64 2, i64 2, !44, i64 8, i64 8, !100, i64 16, i64 8, !26, i64 24, i64 8, !101, i64 32, i64 4, !3}
!100 = !{!75, !75, i64 0}
!101 = !{!102, !102, i64 0}
!102 = !{!"p1 short", !10, i64 0}
!103 = !{!104, !4, i64 128}
!104 = !{!"T1_BuilderRec_", !15, i64 0, !70, i64 8, !105, i64 16, !72, i64 24, !73, i64 32, !73, i64 40, !11, i64 48, !11, i64 56, !90, i64 64, !90, i64 80, !57, i64 96, !4, i64 128, !5, i64 132, !5, i64 133, !5, i64 134, !10, i64 136, !10, i64 144, !106, i64 152}
!105 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !10, i64 0}
!106 = !{!"T1_Builder_FuncsRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56}
!107 = !{!104, !5, i64 132}
!108 = !{!104, !70, i64 8}
!109 = !{!104, !105, i64 16}
!110 = !{!111, !15, i64 184}
!111 = !{!"FT_FaceRec_", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !9, i64 40, !9, i64 48, !4, i64 56, !112, i64 64, !4, i64 72, !113, i64 80, !114, i64 88, !57, i64 104, !45, i64 136, !45, i64 138, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !105, i64 152, !115, i64 160, !116, i64 168, !117, i64 176, !15, i64 184, !118, i64 192, !119, i64 200, !114, i64 216, !10, i64 232, !121, i64 240}
!112 = !{!"p1 _ZTS15FT_Bitmap_Size_", !10, i64 0}
!113 = !{!"p2 _ZTS14FT_CharMapRec_", !13, i64 0}
!114 = !{!"FT_Generic_", !10, i64 0, !10, i64 8}
!115 = !{!"p1 _ZTS11FT_SizeRec_", !10, i64 0}
!116 = !{!"p1 _ZTS14FT_CharMapRec_", !10, i64 0}
!117 = !{!"p1 _ZTS13FT_DriverRec_", !10, i64 0}
!118 = !{!"p1 _ZTS13FT_StreamRec_", !10, i64 0}
!119 = !{!"FT_ListRec_", !120, i64 0, !120, i64 8}
!120 = !{!"p1 _ZTS15FT_ListNodeRec_", !10, i64 0}
!121 = !{!"p1 _ZTS20FT_Face_InternalRec_", !10, i64 0}
!122 = !{!104, !15, i64 0}
!123 = !{!124, !130, i64 296}
!124 = !{!"FT_GlyphSlotRec_", !125, i64 0, !70, i64 8, !105, i64 16, !4, i64 24, !114, i64 32, !126, i64 48, !11, i64 112, !11, i64 120, !90, i64 128, !4, i64 144, !127, i64 152, !4, i64 192, !4, i64 196, !128, i64 200, !4, i64 240, !129, i64 248, !10, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !10, i64 288, !130, i64 296}
!125 = !{!"p1 _ZTS14FT_LibraryRec_", !10, i64 0}
!126 = !{!"FT_Glyph_Metrics_", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!127 = !{!"FT_Bitmap_", !4, i64 0, !4, i64 4, !4, i64 8, !9, i64 16, !45, i64 24, !5, i64 26, !5, i64 27, !10, i64 32}
!128 = !{!"FT_Outline_", !45, i64 0, !45, i64 2, !75, i64 8, !9, i64 16, !102, i64 24, !4, i64 32}
!129 = !{!"p1 _ZTS15FT_SubGlyphRec_", !10, i64 0}
!130 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !10, i64 0}
!131 = !{!132, !72, i64 0}
!132 = !{!"FT_Slot_InternalRec_", !72, i64 0, !4, i64 8, !5, i64 12, !133, i64 16, !90, i64 48, !10, i64 64, !4, i64 72}
!133 = !{!"FT_Matrix_", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!134 = !{!104, !72, i64 24}
!135 = !{!104, !73, i64 32}
!136 = !{!104, !73, i64 40}
!137 = !{!138, !140, i64 80}
!138 = !{!"FT_SizeRec_", !70, i64 0, !114, i64 8, !139, i64 24, !140, i64 80}
!139 = !{!"FT_Size_Metrics_", !45, i64 0, !45, i64 2, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!140 = !{!"p1 _ZTS20FT_Size_InternalRec_", !10, i64 0}
!141 = !{!142, !10, i64 0}
!142 = !{!"FT_Size_InternalRec_", !10, i64 0, !4, i64 8, !139, i64 16}
!143 = !{!104, !10, i64 144}
!144 = !{!104, !10, i64 136}
!145 = !{!132, !10, i64 64}
!146 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !22, i64 24, i64 8, !22, i64 32, i64 8, !22, i64 40, i64 8, !22, i64 48, i64 8, !22, i64 56, i64 8, !22}
!147 = !{!148, !45, i64 26}
!148 = !{!"FT_GlyphLoaderRec_", !15, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !5, i64 20, !149, i64 24, !149, i64 96, !10, i64 168}
!149 = !{!"FT_GlyphLoadRec_", !128, i64 0, !75, i64 40, !75, i64 48, !4, i64 56, !129, i64 64}
!150 = !{!148, !45, i64 98}
!151 = !{!148, !4, i64 8}
!152 = !{!128, !75, i64 8}
!153 = !{!128, !45, i64 2}
!154 = !{!128, !9, i64 16}
!155 = !{!90, !11, i64 0}
!156 = !{!90, !11, i64 8}
!157 = !{!148, !45, i64 24}
!158 = !{!148, !45, i64 96}
!159 = !{!148, !4, i64 12}
!160 = !{!128, !45, i64 0}
!161 = !{!128, !102, i64 24}
!162 = !{!111, !117, i64 176}
!163 = !{!164, !166, i64 2688}
!164 = !{!"T1_DecoderRec_", !104, i64 0, !5, i64 216, !74, i64 2264, !5, i64 2272, !165, i64 2680, !166, i64 2688, !4, i64 2696, !12, i64 2704, !4, i64 2712, !4, i64 2716, !12, i64 2720, !14, i64 2728, !167, i64 2736, !133, i64 2744, !90, i64 2776, !4, i64 2792, !4, i64 2796, !5, i64 2800, !168, i64 2912, !4, i64 2920, !10, i64 2928, !169, i64 2936, !74, i64 2968, !4, i64 2976, !5, i64 2980, !114, i64 2984}
!165 = !{!"p1 _ZTS19T1_Decoder_ZoneRec_", !10, i64 0}
!166 = !{!"p1 _ZTS22FT_Service_PsCMapsRec_", !10, i64 0}
!167 = !{!"p1 _ZTS11FT_HashRec_", !10, i64 0}
!168 = !{!"p1 _ZTS12PS_BlendRec_", !10, i64 0}
!169 = !{!"T1_Decoder_FuncsRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!170 = !{ptr @t1_builder_init}
!171 = !{!111, !11, i64 32}
!172 = !{!164, !4, i64 2696}
!173 = !{!164, !12, i64 2704}
!174 = !{!164, !4, i64 2920}
!175 = !{!164, !168, i64 2912}
!176 = !{!164, !10, i64 2928}
!177 = !{!164, !15, i64 0}
!178 = !{!164, !10, i64 2992}
!179 = !{!164, !10, i64 2984}
!180 = !{!164, !74, i64 2264}
!181 = !{!164, !165, i64 2680}
!182 = !{!183, !9, i64 8}
!183 = !{!"T1_Decoder_ZoneRec_", !9, i64 0, !9, i64 8, !9, i64 16}
!184 = !{!183, !9, i64 16}
!185 = !{!183, !9, i64 0}
!186 = !{!104, !11, i64 64}
!187 = !{!104, !11, i64 80}
!188 = !{!104, !11, i64 72}
!189 = !{!164, !167, i64 2736}
!190 = !{!164, !4, i64 2716}
!191 = !{!164, !12, i64 2720}
!192 = !{!164, !14, i64 2728}
!193 = !{!164, !4, i64 2712}
!194 = !{!104, !11, i64 88}
!195 = !{!196, !5, i64 92}
!196 = !{!"PS_Decoder_", !69, i64 0, !5, i64 112, !74, i64 504, !5, i64 512, !197, i64 920, !4, i64 928, !4, i64 932, !5, i64 936, !198, i64 1048, !199, i64 1056, !200, i64 1064, !74, i64 1072, !5, i64 1080, !4, i64 1084, !4, i64 1088, !4, i64 1092, !4, i64 1096, !4, i64 1100, !12, i64 1104, !12, i64 1112, !12, i64 1120, !4, i64 1128, !4, i64 1132, !5, i64 1136, !10, i64 1144, !10, i64 1152, !166, i64 1160, !4, i64 1168, !14, i64 1176, !167, i64 1184, !133, i64 1192, !90, i64 1224, !168, i64 1240, !74, i64 1248, !4, i64 1256}
!197 = !{!"p1 _ZTS16PS_Decoder_Zone_", !10, i64 0}
!198 = !{!"p1 _ZTS12CFF_FontRec_", !10, i64 0}
!199 = !{!"p1 _ZTS15CFF_SubFontRec_", !10, i64 0}
!200 = !{!"p1 _ZTS11FT_Generic_", !10, i64 0}
!201 = !{!196, !199, i64 1056}
!202 = !{!196, !15, i64 0}
!203 = !{!196, !200, i64 1064}
!204 = !{!114, !10, i64 0}
!205 = !{!114, !10, i64 8}
!206 = !{!207, !15, i64 0}
!207 = !{!"CF2_FontRec_", !15, i64 0, !4, i64 8, !5, i64 12, !5, i64 13, !4, i64 16, !208, i64 20, !208, i64 44, !208, i64 68, !4, i64 92, !209, i64 96, !4, i64 144, !4, i64 148, !74, i64 152, !4, i64 160, !4, i64 164, !4, i64 168, !210, i64 176, !212, i64 240, !199, i64 248, !5, i64 256, !5, i64 257, !5, i64 258, !5, i64 260, !4, i64 292, !4, i64 296, !4, i64 300, !4, i64 304, !5, i64 308, !213, i64 312, !215, i64 648}
!208 = !{!"CF2_Matrix_", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!209 = !{!"CFF_BlendRec_", !5, i64 0, !5, i64 1, !198, i64 8, !4, i64 16, !4, i64 20, !74, i64 24, !4, i64 32, !14, i64 40}
!210 = !{!"CF2_OutlineRec_", !211, i64 0, !212, i64 56}
!211 = !{!"CF2_OutlineCallbacksRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !4, i64 32, !15, i64 40, !14, i64 48}
!212 = !{!"p1 _ZTS11PS_Decoder_", !10, i64 0}
!213 = !{!"CF2_BluesRec_", !4, i64 0, !4, i64 4, !5, i64 8, !5, i64 9, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !214, i64 32, !214, i64 64, !5, i64 96}
!214 = !{!"CF2_HintRec_", !4, i64 0, !11, i64 8, !4, i64 16, !4, i64 20, !4, i64 24}
!215 = !{!"p1 _ZTS22FT_Service_CFFLoadRec_", !10, i64 0}
!216 = !{!196, !198, i64 1048}
!217 = !{!218, !10, i64 4968}
!218 = !{!"CFF_FontRec_", !125, i64 0, !118, i64 8, !15, i64 16, !11, i64 24, !4, i64 32, !4, i64 36, !5, i64 40, !5, i64 41, !5, i64 42, !4, i64 44, !5, i64 48, !219, i64 56, !219, i64 120, !219, i64 184, !220, i64 248, !221, i64 1296, !219, i64 1336, !219, i64 1400, !219, i64 1464, !219, i64 1528, !9, i64 1592, !12, i64 1600, !4, i64 1608, !12, i64 1616, !9, i64 1624, !11, i64 1632, !222, i64 1640, !4, i64 2864, !5, i64 2872, !225, i64 4920, !226, i64 4952, !166, i64 4960, !10, i64 4968, !227, i64 4976, !9, i64 4984, !9, i64 4992, !114, i64 5000, !228, i64 5016, !231, i64 5048}
!219 = !{!"CFF_IndexRec_", !118, i64 0, !11, i64 8, !4, i64 16, !4, i64 20, !5, i64 24, !11, i64 32, !11, i64 40, !74, i64 48, !9, i64 56}
!220 = !{!"CFF_EncodingRec_", !4, i64 0, !11, i64 8, !4, i64 16, !5, i64 20, !5, i64 532}
!221 = !{!"CFF_CharsetRec_", !4, i64 0, !11, i64 8, !102, i64 16, !102, i64 24, !4, i64 32, !4, i64 36}
!222 = !{!"CFF_SubFontRec_", !223, i64 0, !224, i64 328, !209, i64 1056, !4, i64 1104, !74, i64 1112, !9, i64 1120, !9, i64 1128, !4, i64 1136, !4, i64 1140, !219, i64 1144, !12, i64 1208, !4, i64 1216}
!223 = !{!"CFF_FontRecDictRec_", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !5, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !4, i64 56, !4, i64 60, !133, i64 64, !5, i64 96, !11, i64 104, !90, i64 112, !11, i64 128, !57, i64 136, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !4, i64 224, !4, i64 228, !4, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !4, i64 304, !45, i64 308, !45, i64 310, !11, i64 312, !4, i64 320}
!224 = !{!"CFF_PrivateRec_", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 8, !5, i64 120, !5, i64 200, !5, i64 312, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !5, i64 432, !5, i64 433, !5, i64 440, !5, i64 544, !5, i64 648, !11, i64 656, !4, i64 664, !4, i64 668, !11, i64 672, !11, i64 680, !11, i64 688, !11, i64 696, !11, i64 704, !4, i64 712, !199, i64 720}
!225 = !{!"CFF_FDSelectRec_", !5, i64 0, !4, i64 4, !9, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 28}
!226 = !{!"p1 _ZTS19PSHinter_Interface_", !10, i64 0}
!227 = !{!"p1 _ZTS15PS_FontInfoRec_", !10, i64 0}
!228 = !{!"CFF_VStoreRec_", !4, i64 0, !229, i64 8, !45, i64 16, !4, i64 20, !230, i64 24}
!229 = !{!"p1 _ZTS12CFF_VarData_", !10, i64 0}
!230 = !{!"p1 _ZTS14CFF_VarRegion_", !10, i64 0}
!231 = !{!"p1 _ZTS16PS_FontExtraRec_", !10, i64 0}
!232 = !{!207, !215, i64 648}
!233 = !{!210, !15, i64 40}
!234 = !{!210, !14, i64 48}
!235 = !{!210, !10, i64 0}
!236 = !{!210, !10, i64 8}
!237 = !{!210, !10, i64 24}
!238 = !{!207, !212, i64 240}
!239 = !{!207, !212, i64 232}
!240 = !{!241, !5, i64 60}
!241 = !{!"PS_DriverRec_", !242, i64 0, !4, i64 56, !5, i64 60, !5, i64 64, !4, i64 96}
!242 = !{!"FT_DriverRec_", !243, i64 0, !245, i64 24, !119, i64 32, !72, i64 48}
!243 = !{!"FT_ModuleRec_", !244, i64 0, !125, i64 8, !15, i64 16}
!244 = !{!"p1 _ZTS16FT_Module_Class_", !10, i64 0}
!245 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !10, i64 0}
!246 = !{!111, !121, i64 240}
!247 = !{!248, !5, i64 112}
!248 = !{!"FT_Face_InternalRec_", !133, i64 0, !90, i64 32, !4, i64 48, !249, i64 56, !250, i64 104, !5, i64 112, !4, i64 116, !4, i64 120}
!249 = !{!"FT_ServiceCacheRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!250 = !{!"p1 _ZTS28FT_Incremental_InterfaceRec_", !10, i64 0}
!251 = !{!252, !9, i64 24}
!252 = !{!"CF2_BufferRec_", !14, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!253 = !{!252, !9, i64 8}
!254 = !{!252, !9, i64 16}
!255 = !{!196, !71, i64 16}
!256 = !{!257, !5, i64 304}
!257 = !{!"CFF_GlyphSlotRec_", !124, i64 0, !5, i64 304, !5, i64 305, !11, i64 312, !11, i64 320}
!258 = !{!257, !5, i64 305}
!259 = !{!260, !5, i64 1208}
!260 = !{!"TT_FaceRec_", !111, i64 0, !261, i64 248, !11, i64 280, !45, i64 288, !262, i64 296, !263, i64 304, !264, i64 400, !265, i64 456, !5, i64 496, !266, i64 504, !45, i64 560, !267, i64 568, !270, i64 616, !271, i64 752, !9, i64 816, !11, i64 824, !10, i64 832, !10, i64 840, !10, i64 848, !10, i64 856, !10, i64 864, !10, i64 872, !10, i64 880, !10, i64 888, !10, i64 896, !10, i64 904, !10, i64 912, !10, i64 920, !272, i64 928, !274, i64 944, !11, i64 1008, !275, i64 1016, !276, i64 1024, !277, i64 1048, !45, i64 1088, !278, i64 1096, !5, i64 1104, !279, i64 1105, !11, i64 1112, !9, i64 1120, !11, i64 1128, !9, i64 1136, !11, i64 1144, !14, i64 1152, !10, i64 1160, !114, i64 1168, !9, i64 1184, !11, i64 1192, !11, i64 1200, !5, i64 1208, !5, i64 1209, !280, i64 1216, !4, i64 1224, !9, i64 1232, !4, i64 1240, !4, i64 1244, !9, i64 1248, !11, i64 1256, !11, i64 1264, !11, i64 1272, !9, i64 1280, !9, i64 1288, !11, i64 1296, !4, i64 1304, !11, i64 1312, !12, i64 1320, !9, i64 1328, !11, i64 1336, !4, i64 1344, !4, i64 1348, !14, i64 1352, !9, i64 1360, !11, i64 1368, !4, i64 1376, !4, i64 1380, !4, i64 1384, !281, i64 1392, !11, i64 1432, !11, i64 1440, !11, i64 1448, !11, i64 1456, !10, i64 1464, !10, i64 1472, !10, i64 1480}
!261 = !{!"TTC_HeaderRec_", !11, i64 0, !11, i64 8, !11, i64 16, !74, i64 24}
!262 = !{!"p1 _ZTS12TT_TableRec_", !10, i64 0}
!263 = !{!"TT_Header_", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !45, i64 32, !45, i64 34, !5, i64 40, !5, i64 56, !45, i64 72, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !45, i64 84, !45, i64 86, !45, i64 88}
!264 = !{!"TT_HoriHeader_", !11, i64 0, !45, i64 8, !45, i64 10, !45, i64 12, !45, i64 14, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !5, i64 28, !45, i64 36, !45, i64 38, !10, i64 40, !10, i64 48}
!265 = !{!"TT_MaxProfile_", !11, i64 0, !45, i64 8, !45, i64 10, !45, i64 12, !45, i64 14, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !45, i64 34}
!266 = !{!"TT_VertHeader_", !11, i64 0, !45, i64 8, !45, i64 10, !45, i64 12, !45, i64 14, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !5, i64 28, !45, i64 36, !45, i64 38, !10, i64 40, !10, i64 48}
!267 = !{!"TT_NameTableRec_", !45, i64 0, !4, i64 4, !4, i64 8, !268, i64 16, !4, i64 24, !269, i64 32, !118, i64 40}
!268 = !{!"p1 _ZTS11TT_NameRec_", !10, i64 0}
!269 = !{!"p1 _ZTS14TT_LangTagRec_", !10, i64 0}
!270 = !{!"TT_OS2_", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !45, i64 8, !45, i64 10, !45, i64 12, !45, i64 14, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !5, i64 32, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !5, i64 80, !45, i64 84, !45, i64 86, !45, i64 88, !45, i64 90, !45, i64 92, !45, i64 94, !45, i64 96, !45, i64 98, !11, i64 104, !11, i64 112, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !45, i64 128, !45, i64 130, !45, i64 132}
!271 = !{!"TT_Postscript_", !11, i64 0, !11, i64 8, !45, i64 16, !45, i64 18, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!272 = !{!"TT_Gasp_", !45, i64 0, !45, i64 2, !273, i64 8}
!273 = !{!"p1 _ZTS16TT_GaspRangeRec_", !10, i64 0}
!274 = !{!"TT_PCLT_", !11, i64 0, !11, i64 8, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !5, i64 28, !5, i64 44, !5, i64 52, !5, i64 58, !5, i64 59, !5, i64 60, !5, i64 61}
!275 = !{!"p1 _ZTS17TT_SBit_ScaleRec_", !10, i64 0}
!276 = !{!"TT_Post_NamesRec_", !5, i64 0, !45, i64 2, !45, i64 4, !102, i64 8, !12, i64 16}
!277 = !{!"FT_Palette_Data_", !45, i64 0, !102, i64 8, !102, i64 16, !45, i64 24, !102, i64 32}
!278 = !{!"p1 _ZTS9FT_Color_", !10, i64 0}
!279 = !{!"FT_Color_", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!280 = !{!"p1 _ZTS12GX_BlendRec_", !10, i64 0}
!281 = !{!"TT_BDFRec_", !9, i64 0, !9, i64 8, !9, i64 16, !11, i64 24, !4, i64 32, !5, i64 36}
!282 = !{!207, !5, i64 13}
!283 = !{!207, !5, i64 12}
!284 = !{!207, !4, i64 16}
!285 = !{!196, !70, i64 8}
!286 = !{!111, !45, i64 136}
!287 = !{!207, !4, i64 160}
!288 = !{!207, !4, i64 164}
!289 = !{!207, !4, i64 168}
!290 = !{!74, !74, i64 0}
!291 = !{!207, !4, i64 8}
!292 = !{!207, !199, i64 248}
!293 = !{!228, !4, i64 0}
!294 = !{!260, !10, i64 896}
!295 = !{!296, !10, i64 136}
!296 = !{!"FT_Service_MultiMastersRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144}
!297 = distinct !{null, null, null}
!298 = !{!299, !10, i64 24}
!299 = !{!"FT_Service_CFFLoadRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!300 = !{!222, !4, i64 1040}
!301 = distinct !{null, null}
!302 = !{!299, !10, i64 8}
!303 = !{!222, !198, i64 1064}
!304 = !{!207, !198, i64 104}
!305 = !{!207, !5, i64 97}
!306 = !{!207, !4, i64 144}
!307 = !{!207, !4, i64 148}
!308 = !{!207, !74, i64 152}
!309 = !{!111, !115, i64 160}
!310 = !{!138, !45, i64 26}
!311 = !{!207, !4, i64 92}
!312 = !{!207, !5, i64 256}
!313 = !{!207, !5, i64 258}
!314 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3, i64 16, i64 4, !3, i64 20, i64 4, !3}
!315 = !{!207, !4, i64 40}
!316 = !{!207, !4, i64 36}
!317 = !{!222, !11, i64 752}
!318 = !{!207, !4, i64 292}
!319 = !{!222, !11, i64 744}
!320 = !{!207, !4, i64 296}
!321 = !{!207, !4, i64 300}
!322 = !{!207, !4, i64 304}
!323 = !{!207, !5, i64 257}
!324 = !{!207, !5, i64 308}
!325 = !{!207, !4, i64 56}
!326 = !{!213, !4, i64 0}
!327 = !{!222, !11, i64 720}
!328 = !{!222, !5, i64 328}
!329 = !{!222, !5, i64 329}
!330 = !{!222, !5, i64 330}
!331 = !{!222, !5, i64 331}
!332 = !{!222, !4, i64 996}
!333 = !{!213, !4, i64 80}
!334 = !{!213, !4, i64 84}
!335 = !{!213, !4, i64 88}
!336 = !{!213, !4, i64 64}
!337 = !{!213, !4, i64 48}
!338 = !{!213, !4, i64 52}
!339 = !{!213, !4, i64 56}
!340 = !{!213, !4, i64 32}
!341 = !{!213, !5, i64 9}
!342 = !{!213, !4, i64 4}
!343 = !{!344, !4, i64 0}
!344 = !{!"CF2_BlueRec_", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !5, i64 16}
!345 = !{!344, !4, i64 4}
!346 = !{!344, !5, i64 16}
!347 = !{!344, !4, i64 8}
!348 = distinct !{!348, !28, !349}
!349 = !{!"llvm.loop.peeled.count", i32 1}
!350 = distinct !{!350, !28}
!351 = distinct !{!351, !28}
!352 = distinct !{!352, !28}
!353 = distinct !{!353, !28}
!354 = !{!213, !4, i64 12}
!355 = !{!213, !5, i64 8}
!356 = !{!213, !4, i64 24}
!357 = !{!344, !4, i64 12}
!358 = distinct !{!358, !28}
!359 = !{!210, !212, i64 56}
!360 = !{!210, !4, i64 32}
!361 = !{!196, !72, i64 24}
!362 = !{!207, !4, i64 208}
!363 = !{!196, !74, i64 1072}
!364 = !{!365, !9, i64 8}
!365 = !{!"AFM_StreamRec_", !9, i64 0, !9, i64 8, !9, i64 16, !4, i64 24}
!366 = !{!365, !9, i64 0}
!367 = !{!365, !9, i64 16}
!368 = !{!365, !4, i64 24}
!369 = !{!370, !15, i64 0}
!370 = !{!"AFM_ParserRec_", !15, i64 0, !371, i64 8, !372, i64 16, !10, i64 24, !10, i64 32}
!371 = !{!"p1 _ZTS14AFM_StreamRec_", !10, i64 0}
!372 = !{!"p1 _ZTS16AFM_FontInfoRec_", !10, i64 0}
!373 = !{!370, !371, i64 8}
!374 = !{!370, !372, i64 16}
!375 = distinct !{!375, !28}
!376 = !{!377, !4, i64 0}
!377 = !{!"AFM_ValueRec_", !4, i64 0, !5, i64 8}
!378 = !{!379, !5, i64 0}
!379 = !{!"AFM_FontInfoRec_", !5, i64 0, !57, i64 8, !11, i64 40, !11, i64 48, !380, i64 56, !4, i64 64, !381, i64 72, !4, i64 80}
!380 = !{!"p1 _ZTS17AFM_TrackKernRec_", !10, i64 0}
!381 = !{!"p1 _ZTS16AFM_KernPairRec_", !10, i64 0}
!382 = !{!379, !11, i64 8}
!383 = !{!379, !11, i64 16}
!384 = !{!379, !11, i64 24}
!385 = !{!379, !11, i64 32}
!386 = !{!379, !11, i64 40}
!387 = !{!379, !11, i64 48}
!388 = distinct !{!388, !28}
end_hunk_2
