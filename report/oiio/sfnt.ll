inline.NumInlined: 86
inline.NumDeleted: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SFNT_Interface_ = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Module_Class_ = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr }
%struct.FT_CMap_ClassRec_ = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Frame_Field_ = type { i8, i8, i16 }
%struct.TEncoding_ = type { i32, i32, i32 }
%struct.FT_ServiceDescRec_ = type { ptr, ptr }
%struct.FT_Service_SFNT_TableRec_ = type { ptr, ptr, ptr }
%struct.FT_Service_PsFontNameRec_ = type { ptr }
%struct.FT_Service_GlyphDictRec_ = type { ptr, ptr }
%struct.FT_Service_BDFRec_ = type { ptr, ptr }
%struct.FT_Service_TTCMapsRec_ = type { ptr }
%struct.WOFF_HeaderRec_ = type { i64, i64, i64, i16, i16, i64, i16, i16, i64, i64, i64, i64, i64 }
%struct.FT_CharMapRec_ = type { ptr, i32, i16, i16 }
%struct.FT_Size_Metrics_ = type { i16, i16, i64, i64, i64, i64, i64, i64 }
%struct.TT_SBitDecoderRec_ = type { ptr, ptr, ptr, ptr, i8, i8, i8, i64, i64, i64, i64, ptr, ptr }
%struct.FT_Bitmap_ = type { i32, i32, i32, ptr, i16, i8, i8, ptr }
%struct.TT_TableRec_ = type { i64, i64, i64, i64 }
%struct.SFNT_HeaderRec_ = type { i64, i16, i16, i16, i16, i64 }
%struct.FT_Vector_ = type { i64, i64 }
%struct.FT_Matrix_ = type { i64, i64, i64, i64 }
%struct.TT_ValidatorRec_ = type { %struct.FT_ValidatorRec_, i32 }
%struct.FT_ValidatorRec_ = type { [1 x %struct.__jmp_buf_tag], ptr, ptr, i32, i32 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.FT_StreamRec_ = type { ptr, i64, i64, %union.FT_StreamDesc_, %union.FT_StreamDesc_, ptr, ptr, ptr, ptr, ptr }
%union.FT_StreamDesc_ = type { i64 }
%struct.BDF_PropertyRec_ = type { i32, %union.anon.0 }
%union.anon.0 = type { ptr }

@.str = private unnamed_addr constant [5 x i8] c"sfnt\00", align 1
@sfnt_interface = internal constant %struct.SFNT_Interface_ { ptr @tt_face_goto_table, ptr @sfnt_init_face, ptr @sfnt_load_face, ptr @sfnt_done_face, ptr @sfnt_get_interface, ptr @tt_face_load_any, ptr @tt_face_load_head, ptr @tt_face_load_hhea, ptr @tt_face_load_cmap, ptr @tt_face_load_maxp, ptr @tt_face_load_os2, ptr @tt_face_load_post, ptr @tt_face_load_name, ptr @tt_face_free_name, ptr @tt_face_load_kern, ptr @tt_face_load_gasp, ptr @tt_face_load_pclt, ptr @tt_face_load_bhed, ptr @tt_face_load_sbit_image, ptr @tt_face_get_ps_name, ptr @tt_face_free_ps_names, ptr @tt_face_get_kerning, ptr @tt_face_load_font_dir, ptr @tt_face_load_hmtx, ptr @tt_face_load_sbit, ptr @tt_face_free_sbit, ptr @tt_face_set_sbit_strike, ptr @tt_face_load_strike_metrics, ptr @tt_face_load_cpal, ptr @tt_face_load_colr, ptr @tt_face_free_cpal, ptr @tt_face_free_colr, ptr @tt_face_palette_set, ptr @tt_face_get_colr_layer, ptr @tt_face_get_colr_glyph_paint, ptr @tt_face_get_color_glyph_clipbox, ptr @tt_face_get_paint_layers, ptr @tt_face_get_colorline_stops, ptr @tt_face_get_paint, ptr @tt_face_colr_blend_layer, ptr @tt_face_get_metrics, ptr @tt_face_get_name, ptr @sfnt_get_name_id, ptr @tt_face_load_svg, ptr @tt_face_free_svg, ptr @tt_face_load_svg_doc }, align 8
@sfnt_module_class = hidden local_unnamed_addr constant %struct.FT_Module_Class_ { i64 0, i64 24, ptr @.str, i64 65536, i64 131072, ptr @sfnt_interface, ptr null, ptr null, ptr @sfnt_get_interface }, align 8
@tt_cmap0_class_rec = hidden constant { %struct.FT_CMap_ClassRec_, i32, [4 x i8], ptr, ptr } { %struct.FT_CMap_ClassRec_ { i64 40, ptr @tt_cmap_init, ptr null, ptr @tt_cmap0_char_index, ptr @tt_cmap0_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 0, [4 x i8] zeroinitializer, ptr @tt_cmap0_validate, ptr @tt_cmap0_get_info }, align 8
@tt_cmap2_class_rec = hidden constant { %struct.FT_CMap_ClassRec_, i32, [4 x i8], ptr, ptr } { %struct.FT_CMap_ClassRec_ { i64 40, ptr @tt_cmap_init, ptr null, ptr @tt_cmap2_char_index, ptr @tt_cmap2_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 2, [4 x i8] zeroinitializer, ptr @tt_cmap2_validate, ptr @tt_cmap2_get_info }, align 8
@tt_cmap4_class_rec = hidden constant { %struct.FT_CMap_ClassRec_, i32, [4 x i8], ptr, ptr } { %struct.FT_CMap_ClassRec_ { i64 80, ptr @tt_cmap4_init, ptr null, ptr @tt_cmap4_char_index, ptr @tt_cmap4_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 4, [4 x i8] zeroinitializer, ptr @tt_cmap4_validate, ptr @tt_cmap4_get_info }, align 8
@tt_cmap6_class_rec = hidden constant { %struct.FT_CMap_ClassRec_, i32, [4 x i8], ptr, ptr } { %struct.FT_CMap_ClassRec_ { i64 40, ptr @tt_cmap_init, ptr null, ptr @tt_cmap6_char_index, ptr @tt_cmap6_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 6, [4 x i8] zeroinitializer, ptr @tt_cmap6_validate, ptr @tt_cmap6_get_info }, align 8
@tt_cmap8_class_rec = hidden constant { %struct.FT_CMap_ClassRec_, i32, [4 x i8], ptr, ptr } { %struct.FT_CMap_ClassRec_ { i64 40, ptr @tt_cmap_init, ptr null, ptr @tt_cmap8_char_index, ptr @tt_cmap8_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 8, [4 x i8] zeroinitializer, ptr @tt_cmap8_validate, ptr @tt_cmap8_get_info }, align 8
@tt_cmap10_class_rec = hidden constant { %struct.FT_CMap_ClassRec_, i32, [4 x i8], ptr, ptr } { %struct.FT_CMap_ClassRec_ { i64 40, ptr @tt_cmap_init, ptr null, ptr @tt_cmap10_char_index, ptr @tt_cmap10_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 10, [4 x i8] zeroinitializer, ptr @tt_cmap10_validate, ptr @tt_cmap10_get_info }, align 8
@tt_cmap12_class_rec = hidden constant { %struct.FT_CMap_ClassRec_, i32, [4 x i8], ptr, ptr } { %struct.FT_CMap_ClassRec_ { i64 80, ptr @tt_cmap12_init, ptr null, ptr @tt_cmap12_char_index, ptr @tt_cmap12_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 12, [4 x i8] zeroinitializer, ptr @tt_cmap12_validate, ptr @tt_cmap12_get_info }, align 8
@tt_cmap13_class_rec = hidden constant { %struct.FT_CMap_ClassRec_, i32, [4 x i8], ptr, ptr } { %struct.FT_CMap_ClassRec_ { i64 80, ptr @tt_cmap13_init, ptr null, ptr @tt_cmap13_char_index, ptr @tt_cmap13_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 13, [4 x i8] zeroinitializer, ptr @tt_cmap13_validate, ptr @tt_cmap13_get_info }, align 8
@tt_cmap14_class_rec = hidden constant { %struct.FT_CMap_ClassRec_, i32, [4 x i8], ptr, ptr } { %struct.FT_CMap_ClassRec_ { i64 72, ptr @tt_cmap14_init, ptr @tt_cmap14_done, ptr @tt_cmap14_char_index, ptr @tt_cmap14_char_next, ptr @tt_cmap14_char_var_index, ptr @tt_cmap14_char_var_isdefault, ptr @tt_cmap14_variants, ptr @tt_cmap14_char_variants, ptr @tt_cmap14_variant_chars }, i32 14, [4 x i8] zeroinitializer, ptr @tt_cmap14_validate, ptr @tt_cmap14_get_info }, align 8
@tt_cmap_unicode_class_rec = hidden constant { %struct.FT_CMap_ClassRec_, i32, [4 x i8], ptr, ptr } { %struct.FT_CMap_ClassRec_ { i64 40, ptr @tt_cmap_unicode_init, ptr @tt_cmap_unicode_done, ptr @tt_cmap_unicode_char_index, ptr @tt_cmap_unicode_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, i32 -1, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"postscript-cmaps\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"truetype\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"multi-masters\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"metrics-variations\00", align 1
@sfnt_open_font.ttc_header_fields = internal constant [4 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 8 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 16 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@woff_open_font.woff_header_fields = internal constant [15 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 44 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 16 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 24 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 26 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 32 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 40 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 42 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 48 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 56 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 64 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 72 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 80 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_cmap_classes = internal constant [10 x ptr] [ptr @tt_cmap0_class_rec, ptr @tt_cmap2_class_rec, ptr @tt_cmap4_class_rec, ptr @tt_cmap6_class_rec, ptr @tt_cmap8_class_rec, ptr @tt_cmap10_class_rec, ptr @tt_cmap12_class_rec, ptr @tt_cmap13_class_rec, ptr @tt_cmap14_class_rec, ptr null], align 16
@sfnt_find_encoding.tt_encodings = internal unnamed_addr constant [11 x %struct.TEncoding_] [%struct.TEncoding_ { i32 2, i32 -1, i32 1970170211 }, %struct.TEncoding_ { i32 0, i32 -1, i32 1970170211 }, %struct.TEncoding_ { i32 1, i32 0, i32 1634889070 }, %struct.TEncoding_ { i32 3, i32 0, i32 1937337698 }, %struct.TEncoding_ { i32 3, i32 10, i32 1970170211 }, %struct.TEncoding_ { i32 3, i32 1, i32 1970170211 }, %struct.TEncoding_ { i32 3, i32 2, i32 1936353651 }, %struct.TEncoding_ { i32 3, i32 3, i32 1734484000 }, %struct.TEncoding_ { i32 3, i32 4, i32 1651074869 }, %struct.TEncoding_ { i32 3, i32 5, i32 2002873971 }, %struct.TEncoding_ { i32 3, i32 6, i32 1785686113 }], align 16
@tt_face_load_generic_header.header_fields = internal constant [21 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 54 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 16 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 24 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 32 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 34 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 40 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 48 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 56 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 64 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 72 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 74 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 76 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 78 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 80 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 82 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 84 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 86 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 88 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_face_load_hhea.metrics_header_fields = internal constant [19 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 36 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 8 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 10 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 12 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 14 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 16 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 18 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 20 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 22 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 24 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 26 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 28 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 30 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 32 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 34 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 36 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 38 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_face_load_maxp.maxp_fields = internal constant [4 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 6 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 8 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_face_load_maxp.maxp_fields_extra = internal constant [15 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 26 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 10 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 12 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 14 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 16 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 18 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 20 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 22 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 24 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 26 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 28 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 30 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 32 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 34 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_face_load_os2.os2_fields = internal constant [44 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 78 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 2 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 4 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 6 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 8 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 10 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 12 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 14 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 16 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 18 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 20 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 22 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 24 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 26 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 28 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 30 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 32 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 33 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 34 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 35 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 36 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 37 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 38 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 39 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 40 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 41 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 48 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 56 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 64 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 72 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 80 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 81 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 82 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 83 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 84 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 86 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 88 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 90 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 92 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 94 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 96 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 98 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_face_load_os2.os2_fields_extra1 = internal constant [4 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 8 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 104 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 112 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_face_load_os2.os2_fields_extra2 = internal constant [7 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 10 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 120 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 122 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 124 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 126 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 128 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_face_load_os2.os2_fields_extra5 = internal constant [4 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 4 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 130 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 132 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_face_load_post.post_fields = internal constant [11 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 32 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 16 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 18 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 24 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 32 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 40 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 48 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 56 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_face_load_name.name_table_fields = internal constant [5 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 6 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 4 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 8 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_face_load_name.name_record_fields = internal constant [7 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 12, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 2 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 4 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 6 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 8 }, %struct.FT_Frame_Field_ { i8 12, i8 8, i16 16 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@tt_face_load_name.langTag_record_fields = internal constant [3 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 12, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 12, i8 8, i16 8 }, %struct.FT_Frame_Field_ zeroinitializer], align 2
@tt_face_load_pclt.pclt_fields = internal constant [17 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 54 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 16 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 18 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 20 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 22 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 24 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 26 }, %struct.FT_Frame_Field_ { i8 24, i8 16, i16 28 }, %struct.FT_Frame_Field_ { i8 24, i8 8, i16 44 }, %struct.FT_Frame_Field_ { i8 24, i8 6, i16 52 }, %struct.FT_Frame_Field_ { i8 9, i8 1, i16 58 }, %struct.FT_Frame_Field_ { i8 9, i8 1, i16 59 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 60 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 61 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"1.6.50\00", align 1
@tt_face_load_font_dir.offset_table_fields = internal constant [6 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 8 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 8 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 10 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 12 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 14 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@check_table_dir.table_dir_entry_fields = internal constant [6 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 16 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 16 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 24 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@sfnt_services = internal constant [6 x %struct.FT_ServiceDescRec_] [%struct.FT_ServiceDescRec_ { ptr @.str.6, ptr @sfnt_service_sfnt_table }, %struct.FT_ServiceDescRec_ { ptr @.str.7, ptr @sfnt_service_ps_name }, %struct.FT_ServiceDescRec_ { ptr @.str.8, ptr @sfnt_service_glyph_dict }, %struct.FT_ServiceDescRec_ { ptr @.str.9, ptr @sfnt_service_bdf }, %struct.FT_ServiceDescRec_ { ptr @.str.10, ptr @tt_service_get_cmap_info }, %struct.FT_ServiceDescRec_ zeroinitializer], align 16
@.str.6 = private unnamed_addr constant [11 x i8] c"sfnt-table\00", align 1
@sfnt_service_sfnt_table = internal constant %struct.FT_Service_SFNT_TableRec_ { ptr @sfnt_load_table, ptr @get_sfnt_table, ptr @sfnt_table_info }, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"postscript-font-name\00", align 1
@sfnt_service_ps_name = internal constant %struct.FT_Service_PsFontNameRec_ { ptr @sfnt_get_ps_name }, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"glyph-dict\00", align 1
@sfnt_service_glyph_dict = internal constant %struct.FT_Service_GlyphDictRec_ { ptr @sfnt_get_glyph_name, ptr @sfnt_get_name_index }, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"bdf\00", align 1
@sfnt_service_bdf = internal constant %struct.FT_Service_BDFRec_ { ptr @sfnt_get_charset_id, ptr @tt_face_find_bdf_prop }, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c"tt-cmaps\00", align 1
@tt_service_get_cmap_info = internal constant %struct.FT_Service_TTCMapsRec_ { ptr @tt_get_cmap_info }, align 8
@hexdigits = internal unnamed_addr constant [16 x i8] c"0123456789ABCDEF", align 16
@sfnt_ps_map = internal unnamed_addr constant [16 x i8] c"\00\00\00\00\DE|\FF\AF\FF\FF\FF\D7\FF\FF\FFW", align 16
@.str.11 = private unnamed_addr constant [17 x i8] c"CHARSET_REGISTRY\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"CHARSET_ENCODING\00", align 1
@switch.table.sfnt_load_face = private unnamed_addr constant [11 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @sfnt_find_encoding.tt_encodings, i64 36), ptr getelementptr inbounds nuw (i8, ptr @sfnt_find_encoding.tt_encodings, i64 60), ptr getelementptr inbounds nuw (i8, ptr @sfnt_find_encoding.tt_encodings, i64 72), ptr getelementptr inbounds nuw (i8, ptr @sfnt_find_encoding.tt_encodings, i64 84), ptr getelementptr inbounds nuw (i8, ptr @sfnt_find_encoding.tt_encodings, i64 96), ptr getelementptr inbounds nuw (i8, ptr @sfnt_find_encoding.tt_encodings, i64 108), ptr getelementptr inbounds nuw (i8, ptr @sfnt_find_encoding.tt_encodings, i64 120), ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @sfnt_find_encoding.tt_encodings, i64 48)], align 8

; Function Attrs: nounwind uwtable
define internal ptr @sfnt_get_interface(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @ft_service_list_lookup(ptr noundef nonnull @sfnt_services, ptr noundef %1) #26
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @tt_cmap_init(ptr noundef writeonly captures(none) initializes((24, 32)) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 256) i32 @tt_cmap0_char_index(ptr noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %i.a = icmp ult i32 %1, 256
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 256) i32 @tt_cmap0_char_next(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.e = add i32 %i.c, 1                          ; 2 uses
  %i.f = icmp ult i32 %i.e, 256
  br i1 %i.f, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %i.i, 1
  %i.h = icmp ult i32 %i.i, 255
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !17

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %i.g, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !16    ; 2 uses
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !17

bb.c:                                             ; preds = %.lr.ph
  %i.m = zext i8 %i.l to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.011 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.1 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  store i32 %.011, ptr %1, align 4, !tbaa !3
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tt_cmap0_validate(ptr noundef readonly captures(address) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.c = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %i.h, %i.k               ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load volatile ptr, ptr %i.b, align 8, !tbaa !19
  %i.p = icmp ugt ptr %i.n, %i.o
  %i.q = icmp samesign ult i32 %i.l, 262
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 8) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.s = load volatile i32, ptr %i.r, align 8, !tbaa !21
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 224
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.i
  %.023 = phi ptr [ %i.t, %bb.f ], [ %i.v, %bb.i ] ; 2 uses
  %.02022 = phi i32 [ 0, %bb.f ], [ %i.z, %bb.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.023, i64 1
  %i.w = load i8, ptr %.023, align 1, !tbaa !16
  %i.x = zext i8 %i.w to i32
  %i.y = load i32, ptr %i.u, align 8, !tbaa !22
  %.not21 = icmp ugt i32 %i.y, %i.x
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ft_validator_error(ptr noundef nonnull %1, i32 noundef 16) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.z = add nuw nsw i32 %.02022, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.z, 256
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !24

.loopexit:                                        ; preds = %bb.i, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @tt_cmap0_get_info(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !25
  %i.e = load i8, ptr %i.c, align 1, !tbaa !16
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !16
  %i.j = zext i8 %i.i to i64
  %i.k = or disjoint i64 %i.g, %i.j
  store i64 %i.k, ptr %1, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @tt_cmap2_char_index(ptr noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %i.a = icmp ult i32 %1, 65536
  br i1 %i.a, label %bb.b, label %tt_cmap2_get_subheader.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.d = lshr i32 %1, 8                           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 518 ; 2 uses
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw nsw i32 %1, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = or i8 %i.m, %i.k
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %tt_cmap2_get_subheader.exit, label %tt_cmap2_get_subheader.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.p = shl nuw nsw i32 %i.d, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !16
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16
  %i.x = and i8 %i.w, -8
  %.masked.i = zext i8 %i.x to i64
  %i.y = or disjoint i64 %i.u, %.masked.i         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y
  %i.aa = icmp samesign eq i64 %i.y, 0
  br i1 %i.aa, label %tt_cmap2_get_subheader.exit.thread, label %tt_cmap2_get_subheader.exit
end_hunk_0
begin_hunk_1_@tt_face_load_head:bb.a
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %tt_face_load_generic_header.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @tt_face_load_generic_header.header_fields, ptr noundef nonnull %i.d) #26
  br label %tt_face_load_generic_header.exit

tt_face_load_generic_header.exit:                 ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.a ], [ %i.e, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_load_hhea(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
bb.a:
  %.not = icmp eq i8 %2, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %i.b(ptr noundef %0, i64 noundef 1986553185, ptr noundef %1, ptr noundef null) #26 ; 2 uses
  %.not25 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  br i1 %.not25, label %bb.e, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 %i.b(ptr noundef %0, i64 noundef 1751672161, ptr noundef %1, ptr noundef null) #26 ; 2 uses
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.1 = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.d ]  ; 2 uses
  %i.g = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @tt_face_load_hhea.metrics_header_fields, ptr noundef nonnull %.1) #26 ; 2 uses
  %.not26 = icmp eq i32 %i.g, 0
  br i1 %.not26, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.c, %bb.e
  %.018 = phi i32 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ 0, %bb.f ], [ %i.c, %bb.b ]
  ret i32 %.018
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_load_cmap(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  %i.d = tail call i32 %i.b(ptr noundef %0, i64 noundef 1668112752, ptr noundef %1, ptr noundef nonnull %i.c) #26 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !326
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.g = tail call i32 @FT_Stream_ExtractFrame(ptr noundef %1, i64 noundef %i.e, ptr noundef nonnull %i.f) #26 ; 2 uses
  %.not11 = icmp eq i32 %i.g, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.c, align 8, !tbaa !326
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.d, %bb.a ], [ %i.g, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_load_maxp(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.d = tail call i32 %i.c(ptr noundef %0, i64 noundef 1835104368, ptr noundef %1, ptr noundef null) #26 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @tt_face_load_maxp.maxp_fields, ptr noundef nonnull %i.a) #26 ; 2 uses
  %.not31 = icmp eq i32 %i.e, 0
  br i1 %.not31, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 466
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %i.f, i8 0, i64 26, i1 false)
  %i.i = load i64, ptr %i.a, align 8, !tbaa !341
  %i.j = icmp sgt i64 %i.i, 65535
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @tt_face_load_maxp.maxp_fields_extra, ptr noundef nonnull %i.a) #26 ; 2 uses
  %.not32 = icmp eq i32 %i.k, 0
  br i1 %.not32, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i16, ptr %i.h, align 8, !tbaa !342
  %i.m = icmp ult i16 %i.l, 64
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i16 64, ptr %i.h, align 8, !tbaa !342
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = load i16, ptr %i.g, align 4, !tbaa !343
  %i.o = icmp ugt i16 %i.n, -5
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 -5, ptr %i.g, align 4, !tbaa !343
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.a ], [ %i.e, %bb.b ], [ %i.k, %bb.d ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_load_os2(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.c = tail call i32 %i.b(ptr noundef %0, i64 noundef 1330851634, ptr noundef %1, ptr noundef null) #26 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 7 uses
  %i.e = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @tt_face_load_os2.os2_fields, ptr noundef nonnull %i.d) #26 ; 2 uses
  %.not31 = icmp eq i32 %i.e, 0
  br i1 %.not31, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 748
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  store i16 -1, ptr %i.g, align 4, !tbaa !344
  %i.h = load i16, ptr %i.d, align 8, !tbaa !345
  %.not32 = icmp eq i16 %i.h, 0
  br i1 %.not32, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @tt_face_load_os2.os2_fields_extra1, ptr noundef nonnull %i.d) #26 ; 2 uses
  %.not33 = icmp eq i32 %i.i, 0
  br i1 %.not33, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = load i16, ptr %i.d, align 8, !tbaa !345
  %i.k = icmp ugt i16 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @tt_face_load_os2.os2_fields_extra2, ptr noundef nonnull %i.d) #26 ; 2 uses
  %.not34 = icmp eq i32 %i.l, 0
  br i1 %.not34, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = load i16, ptr %i.d, align 8, !tbaa !345
  %i.n = icmp ugt i16 %i.m, 4
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @tt_face_load_os2.os2_fields_extra5, ptr noundef nonnull %i.d) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.g, %bb.c, %bb.f, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ %i.e, %bb.b ], [ %i.i, %bb.d ], [ %i.l, %bb.f ], [ %i.o, %bb.h ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_load_post(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173
  %i.d = tail call i32 %i.c(ptr noundef %0, i64 noundef 1886352244, ptr noundef %1, ptr noundef null) #26 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @tt_face_load_post.post_fields, ptr noundef nonnull %i.a) #26 ; 2 uses
  %.not16 = icmp eq i32 %i.e, 0
  br i1 %.not16, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !346
  switch i64 %i.f, label %bb.e [
    i64 196608, label %bb.d
    i64 151552, label %bb.d
    i64 131072, label %bb.d
    i64 65536, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %i.d, %bb.a ], [ %i.e, %bb.b ], [ 154, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_load_name(ptr noundef initializes((608, 616)) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 19 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr %1, ptr %i.f, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173
  %i.i = call i32 %i.h(ptr noundef %0, i64 noundef 1851878757, ptr noundef %1, ptr noundef nonnull %i.b) #26 ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !3
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.j = call i64 @FT_Stream_Pos(ptr noundef nonnull %1) #26 ; 4 uses
  %i.k = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %1, ptr noundef nonnull @tt_face_load_name.name_table_fields, ptr noundef nonnull %i.e) #26 ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !3
  %.not107 = icmp eq i32 %i.k, 0
  br i1 %.not107, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %i.j, 6                          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 7 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !348  ; 2 uses
  %i.o = mul i32 %i.n, 12
  %i.p = zext i32 %i.o to i64
  %i.q = add i64 %i.l, %i.p                       ; 4 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !160
  %i.s = add i64 %i.r, %i.j                       ; 3 uses
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 145, ptr %i.a, align 4, !tbaa !3
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.u = load i16, ptr %i.e, align 8, !tbaa !349
  %i.v = icmp eq i16 %i.u, 1
  br i1 %i.v, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.w = call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef %i.q) #26 ; 2 uses
  store i32 %i.w, ptr %i.a, align 4, !tbaa !3
  %.not108 = icmp eq i32 %i.w, 0
  br i1 %.not108, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %bb.f
  %i.x = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #26 ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  store i32 %i.y, ptr %i.z, align 8, !tbaa !350
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !3
  %.not109 = icmp eq i32 %i.aa, 0
  br i1 %.not109, label %bb.h, label %bb.ab

bb.h:                                             ; preds = %bb.g
  %i.ab = shl nuw nsw i32 %i.y, 2
  %i.ac = or disjoint i32 %i.ab, 2
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = add i64 %i.q, %i.ad                     ; 2 uses
  %i.af = zext i16 %i.x to i64
  %i.ag = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 24, i64 noundef 0, i64 noundef %i.af, ptr noundef null, ptr noundef nonnull %i.a) #26 ; 6 uses
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !3
  %.not110 = icmp eq i32 %i.ah, 0
  br i1 %.not110, label %bb.i, label %bb.ab

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !350
  %i.aj = shl i32 %i.ai, 2
  %i.ak = zext i32 %i.aj to i64
  %i.al = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %1, i64 noundef %i.ak) #26 ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !3
  %.not111 = icmp eq i32 %i.al, 0
  br i1 %.not111, label %bb.j, label %bb.ab

bb.j:                                             ; preds = %bb.i
  %.not112 = icmp eq ptr %i.ag, null
  br i1 %.not112, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load i32, ptr %i.z, align 8, !tbaa !350 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %.idx = mul nuw nsw i64 %i.an, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx
  %.not141 = icmp eq i32 %i.am, 0
  br i1 %.not141, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 576
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.o
  %.096121 = phi ptr [ %i.ag, %.lr.ph ], [ %i.bd, %bb.o ] ; 6 uses
  %i.aq = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %1, ptr noundef nonnull @tt_face_load_name.langTag_record_fields, ptr noundef nonnull %.096121) #26
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !3
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !351
  %i.as = zext i32 %i.ar to i64
  %i.at = add i64 %i.j, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.096121, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !352
  %i.aw = add i64 %i.at, %i.av                    ; 3 uses
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !352
  %i.ax = icmp ult i64 %i.aw, %i.ae
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i16, ptr %.096121, align 8, !tbaa !354
  %i.az = zext i16 %i.ay to i64
  %i.ba = add i64 %i.aw, %i.az
  %i.bb = icmp ugt i64 %i.ba, %i.s
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  store i16 0, ptr %.096121, align 8, !tbaa !354
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.096121, i64 16
  store ptr null, ptr %i.bc, align 8, !tbaa !355
  %i.bd = getelementptr inbounds nuw i8, ptr %.096121, i64 24 ; 2 uses
  %i.be = icmp ult ptr %i.bd, %i.ao
  br i1 %i.be, label %bb.l, label %._crit_edge, !llvm.loop !356

._crit_edge:                                      ; preds = %bb.o, %bb.j, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.ag, ptr %i.bf, align 8, !tbaa !357
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %1) #26
  %i.bg = call i32 @FT_Stream_Seek(ptr noundef nonnull %1, i64 noundef %i.l) #26
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !3
  %.pre = load i32, ptr %i.m, align 4, !tbaa !348
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.e
  %i.bh = phi i32 [ %.pre, %._crit_edge ], [ %i.n, %bb.e ]
  %.095 = phi i64 [ %i.ae, %._crit_edge ], [ %i.q, %bb.e ]
  %i.bi = zext i32 %i.bh to i64
  %i.bj = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 32, i64 noundef 0, i64 noundef %i.bi, ptr noundef null, ptr noundef nonnull %i.a) #26 ; 4 uses
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !3
  %.not113 = icmp eq i32 %i.bk, 0
  br i1 %.not113, label %bb.q, label %bb.ab

bb.q:                                             ; preds = %bb.p
  %i.bl = load i32, ptr %i.m, align 4, !tbaa !348
  %i.bm = mul i32 %i.bl, 12
  %i.bn = zext i32 %i.bm to i64
  %i.bo = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %1, i64 noundef %i.bn) #26 ; 2 uses
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !3
  %.not114 = icmp eq i32 %i.bo, 0
  br i1 %.not114, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %bb.q
  %i.bp = load i32, ptr %i.m, align 4, !tbaa !348 ; 2 uses
  %.not115122 = icmp eq i32 %i.bp, 0
  br i1 %.not115122, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 600
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph127, %bb.aa
  %.0125 = phi i32 [ 0, %.lr.ph127 ], [ %.1, %bb.aa ] ; 6 uses
  %.092124 = phi i32 [ %i.bp, %.lr.ph127 ], [ %i.cw, %bb.aa ]
  %.093123 = phi ptr [ %i.bj, %.lr.ph127 ], [ %.194, %bb.aa ] ; 11 uses
  %i.bt = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %1, ptr noundef nonnull @tt_face_load_name.name_record_fields, ptr noundef %.093123) #26 ; 2 uses
  store i32 %i.bt, ptr %i.a, align 4, !tbaa !3
  %.not116 = icmp eq i32 %i.bt, 0
  br i1 %.not116, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %.093123, i64 8
  %i.bv = load i16, ptr %i.bu, align 8, !tbaa !358 ; 2 uses
  %i.bw = icmp eq i16 %i.bv, 0
  br i1 %i.bw, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = load i32, ptr %i.bq, align 8, !tbaa !351
  %i.by = zext i32 %i.bx to i64
  %i.bz = add i64 %i.j, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.093123, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !360
  %i.cc = add i64 %i.bz, %i.cb                    ; 3 uses
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !360
  %i.cd = icmp ult i64 %i.cc, %.095
  %i.ce = zext i16 %i.bv to i64
  %i.cf = add i64 %i.cc, %i.ce
  %i.cg = icmp ugt i64 %i.cf, %i.s
  %or.cond = or i1 %i.cd, %i.cg
  br i1 %or.cond, label %bb.aa, label %bb.v
end_hunk_1
begin_hunk_2_@tt_cmap14_get_def_chars:bb.a
  %i.az = load i8, ptr %next.gep54, align 1, !tbaa !16
  %i.ba = load i8, ptr %next.gep55, align 1, !tbaa !16
  %i.bb = load i8, ptr %next.gep56, align 1, !tbaa !16
  %i.bc = load i8, ptr %next.gep57, align 1, !tbaa !16
  %i.bd = insertelement <4 x i8> poison, i8 %i.az, i64 0
  %i.be = insertelement <4 x i8> %i.bd, i8 %i.ba, i64 1
  %i.bf = insertelement <4 x i8> %i.be, i8 %i.bb, i64 2
  %i.bg = insertelement <4 x i8> %i.bf, i8 %i.bc, i64 3
  %i.bh = zext <4 x i8> %i.ay to <4 x i32>
  %i.bi = zext <4 x i8> %i.bg to <4 x i32>
  %i.bj = add <4 x i32> %vec.phi, splat (i32 1)
  %i.bk = add <4 x i32> %vec.phi50, splat (i32 1)
  %i.bl = add <4 x i32> %i.bj, %i.bh              ; 2 uses
  %i.bm = add <4 x i32> %i.bk, %i.bi              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !744

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bm, %i.bl
  %i.bo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.016.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.bo, %middle.block ]
  %.01115.i.ph = phi i32 [ %i.r, %.lr.ph.preheader.i ], [ %i.ag, %middle.block ]
  %.01214.i.ph = phi ptr [ %i.s, %.lr.ph.preheader.i ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.016.i = phi i32 [ %i.bs, %.lr.ph.i ], [ %.016.i.ph, %.lr.ph.i.preheader ]
  %.01115.i = phi i32 [ %i.bu, %.lr.ph.i ], [ %.01115.i.ph, %.lr.ph.i.preheader ]
  %.01214.i = phi ptr [ %i.bt, %.lr.ph.i ], [ %.01214.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bp = load i8, ptr %.01214.i, align 1, !tbaa !16
  %i.bq = zext i8 %i.bp to i32
  %i.br = add i32 %.016.i, 1
  %i.bs = add i32 %i.br, %i.bq                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %i.bu = add i32 %.01115.i, -1                   ; 2 uses
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %tt_cmap14_def_char_count.exit.loopexit, label %.lr.ph.i, !llvm.loop !745

tt_cmap14_def_char_count.exit.loopexit:           ; preds = %.lr.ph.i
  %i.bv = add i32 %i.bs, 1
  br label %tt_cmap14_def_char_count.exit

tt_cmap14_def_char_count.exit:                    ; preds = %tt_cmap14_def_char_count.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.bv, %tt_cmap14_def_char_count.exit.loopexit ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.by = icmp ugt i32 %.0.lcssa.i, %i.bx
  br i1 %i.by, label %bb.b, label %tt_cmap14_def_char_count.exit._crit_edge

tt_cmap14_def_char_count.exit._crit_edge:         ; preds = %tt_cmap14_def_char_count.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %bb.d

bb.b:                                             ; preds = %tt_cmap14_def_char_count.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %2, ptr %i.bz, align 8, !tbaa !93
  %i.ca = zext i32 %i.bx to i64
  %i.cb = zext i32 %.0.lcssa.i to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !92
  %i.ce = call ptr @ft_mem_qrealloc(ptr noundef %2, i64 noundef 4, i64 noundef %i.ca, i64 noundef %i.cb, ptr noundef %i.cd, ptr noundef nonnull %i.a) #26 ; 2 uses
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !92
  %i.cf = load i32, ptr %i.a, align 4, !tbaa !3
  %.not.i32 = icmp eq i32 %i.cf, 0
  br i1 %.not.i32, label %bb.c, label %tt_cmap14_ensure.exit

bb.c:                                             ; preds = %bb.b
  store i32 %.0.lcssa.i, ptr %i.bw, align 8, !tbaa !91
  br label %bb.d

tt_cmap14_ensure.exit:                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.e

bb.d:                                             ; preds = %tt_cmap14_def_char_count.exit._crit_edge, %bb.c
  %i.cg = phi ptr [ %.pre, %tt_cmap14_def_char_count.exit._crit_edge ], [ %i.ce, %bb.c ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %.not13.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.loopexit
  %.02540 = phi ptr [ %.lcssa, %.loopexit ], [ %i.cg, %bb.d ] ; 3 uses
  %.02739 = phi i32 [ %i.dk, %.loopexit ], [ %i.r, %bb.d ]
  %.pn38 = phi ptr [ %.02941, %.loopexit ], [ %1, %bb.d ] ; 4 uses
  %.02941 = getelementptr inbounds nuw i8, ptr %.pn38, i64 4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.pn38, i64 7
  %i.ci = load i8, ptr %.02941, align 1, !tbaa !16
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.pn38, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !16
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 8
  %i.cp = or disjoint i32 %i.co, %i.ck
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn38, i64 6
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !16
  %i.cs = zext i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cp, %i.cs            ; 3 uses
  %i.cu = load i8, ptr %i.ch, align 1, !tbaa !16  ; 3 uses
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nuw nsw i32 %i.cv, 1                ; 2 uses
  %i.cx = zext i8 %i.cu to i64
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check60 = icmp ult i8 %i.cu, 7
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph
  %n.vec63 = and i64 %i.cy, 504                   ; 4 uses
  %i.cz = trunc nuw nsw i64 %n.vec63 to i32       ; 2 uses
  %i.da = sub nsw i32 %i.cw, %i.cz
  %i.db = shl nuw nsw i64 %n.vec63, 2
  %i.dc = getelementptr i8, ptr %.02540, i64 %i.db ; 2 uses
  %i.dd = add nuw nsw i32 %i.ct, %i.cz
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next67, %vector.body64 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph61 ], [ %vec.ind.next, %vector.body64 ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.de = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %.02540, i64 %i.de ; 2 uses
  %i.df = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep66, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.df, align 4, !tbaa !3
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.dg = icmp eq i64 %index.next67, %n.vec63
  br i1 %i.dg, label %middle.block68, label %vector.body64, !llvm.loop !746

middle.block68:                                   ; preds = %vector.body64
  %cmp.n = icmp eq i64 %i.cy, %n.vec63
  br i1 %cmp.n, label %.loopexit, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %.lr.ph, %middle.block68
  %.026.ph = phi i32 [ %i.cw, %.lr.ph ], [ %i.da, %middle.block68 ]
  %.1.ph = phi ptr [ %.02540, %.lr.ph ], [ %i.dc, %middle.block68 ]
  %.0.ph = phi i32 [ %i.ct, %.lr.ph ], [ %i.dd, %middle.block68 ]
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %.026 = phi i32 [ %i.dj, %scalar.ph59 ], [ %.026.ph, %scalar.ph59.preheader ]
  %.1 = phi ptr [ %i.di, %scalar.ph59 ], [ %.1.ph, %scalar.ph59.preheader ] ; 2 uses
  %.0 = phi i32 [ %i.dh, %scalar.ph59 ], [ %.0.ph, %scalar.ph59.preheader ] ; 2 uses
  store i32 %.0, ptr %.1, align 4, !tbaa !3
  %i.dh = add nuw nsw i32 %.0, 1
  %i.di = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  %i.dj = add nsw i32 %.026, -1                   ; 2 uses
  %.not31 = icmp eq i32 %i.dj, 0
  br i1 %.not31, label %.loopexit, label %scalar.ph59, !llvm.loop !747

.loopexit:                                        ; preds = %scalar.ph59, %middle.block68
  %.lcssa = phi ptr [ %i.dc, %middle.block68 ], [ %i.di, %scalar.ph59 ] ; 2 uses
  %i.dk = add i32 %.02739, -1                     ; 2 uses
  %.not30 = icmp eq i32 %i.dk, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph, !llvm.loop !748

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.025.lcssa = phi ptr [ %i.cg, %bb.d ], [ %.lcssa, %.loopexit ]
  store i32 0, ptr %.025.lcssa, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %tt_cmap14_ensure.exit, %._crit_edge
  %.028 = phi ptr [ %i.cg, %._crit_edge ], [ null, %tt_cmap14_ensure.exit ]
  ret ptr %.028
}

; Function Attrs: nounwind uwtable
define internal ptr @tt_get_glyph_name(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8, !tbaa !429
  %i.b = call i32 @tt_face_get_ps_name(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a) ; 0 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %i.c
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.usub.sat.i16(i16, i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i2 @llvm.bitreverse.i2(i2) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #22

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { nounwind returns_twice }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }

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
!7 = !{!8, !15, i64 24}
!8 = !{!"TT_CMapRec_", !9, i64 0, !15, i64 24, !4, i64 32}
!9 = !{!"FT_CMapRec_", !10, i64 0, !14, i64 16}
!10 = !{!"FT_CharMapRec_", !11, i64 0, !4, i64 8, !13, i64 12, !13, i64 14}
!11 = !{!"p1 _ZTS11FT_FaceRec_", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"short", !5, i64 0}
!14 = !{!"p1 _ZTS17FT_CMap_ClassRec_", !12, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!5, !5, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!20, !15, i64 208}
!20 = !{!"FT_ValidatorRec_", !5, i64 0, !15, i64 200, !15, i64 208, !4, i64 216, !4, i64 220}
!21 = !{!20, !4, i64 216}
!22 = !{!23, !4, i64 224}
!23 = !{!"TT_ValidatorRec_", !20, i64 0, !4, i64 224}
!24 = distinct !{!24, !18}
!25 = !{!26, !27, i64 8}
!26 = !{!"TT_CMapInfo_", !27, i64 0, !27, i64 8}
!27 = !{!"long", !5, i64 0}
!28 = !{!26, !27, i64 0}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = !{!35, !15, i64 24}
!35 = !{!"TT_CMap4Rec_", !8, i64 0, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !15, i64 72}
!36 = !{!35, !4, i64 48}
!37 = !{!35, !4, i64 40}
!38 = !{!35, !4, i64 44}
!39 = !{!8, !4, i64 32}
!40 = !{!9, !11, i64 0}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = !{!47, !27, i64 32}
!47 = !{!"FT_FaceRec_", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !15, i64 40, !15, i64 48, !4, i64 56, !48, i64 64, !4, i64 72, !49, i64 80, !51, i64 88, !52, i64 104, !13, i64 136, !13, i64 138, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !53, i64 152, !54, i64 160, !55, i64 168, !56, i64 176, !57, i64 184, !58, i64 192, !59, i64 200, !51, i64 216, !12, i64 232, !61, i64 240}
!48 = !{!"p1 _ZTS15FT_Bitmap_Size_", !12, i64 0}
!49 = !{!"p2 _ZTS14FT_CharMapRec_", !50, i64 0}
!50 = !{!"any p2 pointer", !12, i64 0}
!51 = !{!"FT_Generic_", !12, i64 0, !12, i64 8}
!52 = !{!"FT_BBox_", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24}
!53 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !12, i64 0}
!54 = !{!"p1 _ZTS11FT_SizeRec_", !12, i64 0}
!55 = !{!"p1 _ZTS14FT_CharMapRec_", !12, i64 0}
!56 = !{!"p1 _ZTS13FT_DriverRec_", !12, i64 0}
!57 = !{!"p1 _ZTS13FT_MemoryRec_", !12, i64 0}
!58 = !{!"p1 _ZTS13FT_StreamRec_", !12, i64 0}
!59 = !{!"FT_ListRec_", !60, i64 0, !60, i64 8}
!60 = !{!"p1 _ZTS15FT_ListNodeRec_", !12, i64 0}
!61 = !{!"p1 _ZTS20FT_Face_InternalRec_", !12, i64 0}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = !{!69, !15, i64 24}
!69 = !{!"TT_CMap12Rec_", !8, i64 0, !5, i64 40, !27, i64 48, !4, i64 56, !27, i64 64, !27, i64 72}
!70 = !{!69, !27, i64 72}
!71 = !{!69, !5, i64 40}
!72 = distinct !{!72, !18}
!73 = !{!69, !27, i64 48}
!74 = !{!69, !4, i64 56}
!75 = distinct !{!75, !18, !76}
!76 = !{!"llvm.loop.peeled.count", i32 1}
!77 = !{!78, !15, i64 24}
!78 = !{!"TT_CMap13Rec_", !8, i64 0, !5, i64 40, !27, i64 48, !4, i64 56, !27, i64 64, !27, i64 72}
!79 = !{!78, !27, i64 72}
!80 = !{!78, !5, i64 40}
!81 = distinct !{!81, !18}
!82 = !{!78, !27, i64 48}
!83 = !{!78, !27, i64 64}
!84 = distinct !{!84, !18}
!85 = !{!78, !4, i64 56}
!86 = distinct !{!86, !18, !76}
!87 = !{!88, !15, i64 24}
!88 = !{!"TT_CMap14Rec_", !8, i64 0, !27, i64 40, !4, i64 48, !89, i64 56, !57, i64 64}
!89 = !{!"p1 int", !12, i64 0}
!90 = !{!88, !27, i64 40}
!91 = !{!88, !4, i64 48}
!92 = !{!88, !89, i64 56}
!93 = !{!88, !57, i64 64}
!94 = distinct !{!94, !18}
!95 = distinct !{!95, !18}
!96 = !{!8, !14, i64 16}
!97 = !{!98, !12, i64 24}
!98 = !{!"FT_CMap_ClassRec_", !27, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!99 = distinct !{!99, !18}
!100 = distinct !{!100, !18}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !18}
!103 = distinct !{!103, !18, !104, !105}
!104 = !{!"llvm.loop.isvectorized", i32 1}
!105 = !{!"llvm.loop.unroll.runtime.disable"}
!106 = distinct !{!106, !18, !105, !104}
!107 = distinct !{!107, !18, !104, !105}
!108 = distinct !{!108, !18, !105, !104}
!109 = distinct !{!109, !18}
!110 = distinct !{!110, !18, !104, !105}
!111 = distinct !{!111, !18, !105, !104}
end_hunk_2
