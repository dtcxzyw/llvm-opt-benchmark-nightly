inline.NumInlined: 294
inline.NumDeleted: 158
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FT_Driver_ClassRec_ = type { %struct.FT_Module_Class_, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Module_Class_ = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr }
%struct.FT_UnitVector_ = type { i16, i16 }
%struct.FT_ServiceDescRec_ = type { ptr, ptr }
%struct.FT_Service_MultiMastersRec_ = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Service_MetricsVariationsRec_ = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Service_TrueTypeEngineRec_ = type { i32 }
%struct.FT_Service_TTGlyfRec_ = type { ptr }
%struct.FT_Service_PropertiesRec_ = type { ptr, ptr }
%struct.FT_Frame_Field_ = type { i8, i8, i16 }
%struct.tt_sfnt_id_rec_ = type { i64, i64 }
%struct.TT_SBit_MetricsRec_ = type { i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.TT_LoaderRec_ = type { ptr, ptr, ptr, ptr, i64, i32, ptr, i32, i16, %struct.FT_BBox_, i32, i32, i32, i8, %struct.FT_Vector_, %struct.FT_Vector_, %struct.TT_GlyphZoneRec_, %struct.TT_GlyphZoneRec_, ptr, ptr, i64, ptr, i32, i32, %struct.FT_Vector_, %struct.FT_Vector_, ptr, ptr, %struct.FT_ListRec_, ptr }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.TT_GlyphZoneRec_ = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, i16 }
%struct.FT_Vector_ = type { i64, i64 }
%struct.FT_ListRec_ = type { ptr, ptr }
%struct.IUP_WorkerRec_ = type { ptr, ptr, ptr, i32 }
%struct.GX_FVar_Head_ = type { i64, i16, i16, i16, i16, i16 }
%struct.fvar_axis_ = type { i64, i64, i64, i64, i16, i16 }
%struct.GX_GVar_Head_ = type { i64, i16, i16, i64, i16, i16, i64 }
%struct.FT_Incremental_MetricsRec_ = type { i64, i64, i64, i64 }
%struct.FT_StreamRec_ = type { ptr, i64, i64, %union.FT_StreamDesc_, %union.FT_StreamDesc_, ptr, ptr, ptr, ptr, ptr }
%union.FT_StreamDesc_ = type { i64 }
%struct.FT_Data_ = type { ptr, i32 }
%struct.FT_Outline_ = type { i16, i16, ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [9 x i8] c"truetype\00", align 1
@tt_driver_class = hidden local_unnamed_addr constant %struct.FT_Driver_ClassRec_ { %struct.FT_Module_Class_ { i64 1281, i64 128, ptr @.str, i64 65536, i64 131072, ptr null, ptr @tt_driver_init, ptr @tt_driver_done, ptr @tt_get_interface }, i64 1488, i64 552, i64 304, ptr @tt_face_init, ptr @tt_face_done, ptr @tt_size_init, ptr @tt_size_done, ptr @tt_slot_init, ptr null, ptr @tt_glyph_load, ptr @tt_get_kerning, ptr null, ptr @tt_get_advances, ptr @tt_size_request, ptr @tt_size_select }, align 8
@tt_default_graphics_state = hidden local_unnamed_addr constant { i16, i16, i16, %struct.FT_UnitVector_, %struct.FT_UnitVector_, %struct.FT_UnitVector_, [6 x i8], i64, i64, i32, i8, [3 x i8], i64, i64, i64, i16, i16, i8, i8, [2 x i8], i32, i16, i16, i16, [6 x i8] } { i16 0, i16 0, i16 0, %struct.FT_UnitVector_ { i16 16384, i16 0 }, %struct.FT_UnitVector_ { i16 16384, i16 0 }, %struct.FT_UnitVector_ { i16 16384, i16 0 }, [6 x i8] zeroinitializer, i64 1, i64 64, i32 1, i8 1, [3 x i8] zeroinitializer, i64 68, i64 0, i64 0, i16 9, i16 3, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i16 1, i16 1, i16 1, [6 x i8] zeroinitializer }, align 8
@opcode_length = internal unnamed_addr constant [256 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FF\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\03\04\05\06\07\08\09\03\05\07\09\0B\0D\0F\11\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@Pop_Push_Count = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00      \02\02\00P\10\10\10\10\10\10\10\10\00\00\10\00\10\10\10\10\12\10\00\22\01\11\10 \00\10 \10\10\00\10\10\00\00\00\00\10\10\10\10\10\00  \00\00  \00\00 \11 \11\11\11 !!\01\01\00\00\10!!!!!!\11\11\10\00!!\11\10\10\10!!!!\11\11\11\11\11\11\11\11\11\11\11\11 \10\10\10\10\10\10\10  \00\00\00\00\10\10\00  \00\00\10  \11\103!!\10 \00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\01\02\03\04\05\06\07\08\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10                                ", align 16
@tt_services = internal constant [7 x %struct.FT_ServiceDescRec_] [%struct.FT_ServiceDescRec_ { ptr @.str.2, ptr @.str.3 }, %struct.FT_ServiceDescRec_ { ptr @.str.4, ptr @tt_service_gx_multi_masters }, %struct.FT_ServiceDescRec_ { ptr @.str.5, ptr @tt_service_metrics_variations }, %struct.FT_ServiceDescRec_ { ptr @.str.6, ptr @tt_service_truetype_engine }, %struct.FT_ServiceDescRec_ { ptr @.str.7, ptr @tt_service_truetype_glyf }, %struct.FT_ServiceDescRec_ { ptr @.str.8, ptr @tt_service_properties }, %struct.FT_ServiceDescRec_ zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"sfnt\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"font-format\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"TrueType\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"multi-masters\00", align 1
@tt_service_gx_multi_masters = internal constant %struct.FT_Service_MultiMastersRec_ { ptr null, ptr null, ptr @TT_Set_MM_Blend, ptr @TT_Get_MM_Blend, ptr @TT_Get_MM_Var, ptr @TT_Set_Var_Design, ptr @TT_Get_Var_Design, ptr @TT_Set_Named_Instance, ptr @TT_Get_Default_Named_Instance, ptr null, ptr null, ptr @tt_construct_ps_name, ptr @tt_var_load_delta_set_index_mapping, ptr @tt_var_load_item_variation_store, ptr @tt_var_get_item_delta, ptr @tt_var_done_item_variation_store, ptr @tt_var_done_delta_set_index_map, ptr @tt_get_var_blend, ptr @tt_done_blend }, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"metrics-variations\00", align 1
@tt_service_metrics_variations = internal constant %struct.FT_Service_MetricsVariationsRec_ { ptr @tt_hadvance_adjust, ptr null, ptr null, ptr @tt_vadvance_adjust, ptr null, ptr null, ptr null, ptr @tt_apply_mvar, ptr @tt_size_reset_height }, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"truetype-engine\00", align 1
@tt_service_truetype_engine = internal constant %struct.FT_Service_TrueTypeEngineRec_ { i32 2 }, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"tt-glyf\00", align 1
@tt_service_truetype_glyf = internal constant %struct.FT_Service_TTGlyfRec_ { ptr @tt_face_get_location }, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@tt_service_properties = internal constant %struct.FT_Service_PropertiesRec_ { ptr @tt_property_set, ptr @tt_property_get }, align 8
@ft_var_load_gvar.gvar_fields = internal constant [9 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 20 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 8 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 10 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 16 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 24 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 26 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 32 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@TT_Get_MM_Var.fvar_fields = internal constant [9 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 16 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 8 }, %struct.FT_Frame_Field_ { i8 13, i8 0, i16 0 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 10 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 12 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 14 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 16 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@TT_Get_MM_Var.fvaraxis_fields = internal constant [8 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 20 }, %struct.FT_Frame_Field_ { i8 16, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 16 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 24 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 32 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 34 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"OpticalSize\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Slant\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"interpreter-version\00", align 1
@tt_check_trickyness_family.trick_names = internal constant [20 x [20 x i8]] [[20 x i8] c"cpop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"DFGirl-W6-WIN-BF\00\00\00\00", [20 x i8] c"DFGothic-EB\00\00\00\00\00\00\00\00\00", [20 x i8] c"DFGyoSho-Lt\00\00\00\00\00\00\00\00\00", [20 x i8] c"DFHei\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"DFHSGothic-W5\00\00\00\00\00\00\00", [20 x i8] c"DFHSMincho-W3\00\00\00\00\00\00\00", [20 x i8] c"DFHSMincho-W7\00\00\00\00\00\00\00", [20 x i8] c"DFKaiSho-SB\00\00\00\00\00\00\00\00\00", [20 x i8] c"DFKaiShu\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"DFKai-SB\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"DFMing\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"DLC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"HuaTianKaiTi?\00\00\00\00\00\00\00", [20 x i8] c"HuaTianSongTi?\00\00\00\00\00\00", [20 x i8] c"Ming(for ISO10646)\00\00", [20 x i8] c"MingLiU\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"MingMedium\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"PMingLiU\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"MingLi43\00\00\00\00\00\00\00\00\00\00\00\00"], align 16
@tt_check_trickyness_sfnt_ids.sfnt_id = internal unnamed_addr constant [31 x [3 x %struct.tt_sfnt_id_rec_]] [[3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 96268376, i64 740 }, %struct.tt_sfnt_id_rec_ { i64 673397745, i64 34756 }, %struct.tt_sfnt_id_rec_ { i64 2739184106, i64 481 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 96268376, i64 740 }, %struct.tt_sfnt_id_rec_ { i64 673397745, i64 34756 }, %struct.tt_sfnt_id_rec_ { i64 2739184107, i64 481 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 314829746, i64 848 }, %struct.tt_sfnt_id_rec_ { i64 3061902948, i64 34727 }, %struct.tt_sfnt_id_rec_ { i64 3465778531, i64 1880 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 300280532, i64 848 }, %struct.tt_sfnt_id_rec_ { i64 3461961449, i64 48261 }, %struct.tt_sfnt_id_rec_ { i64 2188571670, i64 69 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 307751750, i64 848 }, %struct.tt_sfnt_id_rec_ { i64 4137275744, i64 29023 }, %struct.tt_sfnt_id_rec_ { i64 3525506408, i64 956 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 308472654, i64 848 }, %struct.tt_sfnt_id_rec_ { i64 3899284836, i64 31040 }, %struct.tt_sfnt_id_rec_ { i64 2018572073, i64 1535 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 304999178, i64 848 }, %struct.tt_sfnt_id_rec_ { i64 1024864906, i64 34203 }, %struct.tt_sfnt_id_rec_ { i64 2839528251, i64 715 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 308276006, i64 848 }, %struct.tt_sfnt_id_rec_ { i64 2779564418, i64 32481 }, %struct.tt_sfnt_id_rec_ { i64 2425983382, i64 1055 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 300280532, i64 848 }, %struct.tt_sfnt_id_rec_ { i64 1513146939, i64 36963 }, %struct.tt_sfnt_id_rec_ { i64 329524738, i64 126 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 300280532, i64 848 }, %struct.tt_sfnt_id_rec_ { i64 2800192513, i64 35224 }, %struct.tt_sfnt_id_rec_ { i64 329524738, i64 126 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 300280532, i64 864 }, %struct.tt_sfnt_id_rec_ { i64 2645721778, i64 49262 }, %struct.tt_sfnt_id_rec_ { i64 1407637450, i64 130 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 306440984, i64 848 }, %struct.tt_sfnt_id_rec_ { i64 3121253424, i64 29869 }, %struct.tt_sfnt_id_rec_ { i64 4091032585, i64 891 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 131921222, i64 776 }, %struct.tt_sfnt_id_rec_ { i64 1090419856, i64 36394 }, %struct.tt_sfnt_id_rec_ { i64 1619096757, i64 122 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 3951628856, i64 776 }, %struct.tt_sfnt_id_rec_ { i64 3538214100, i64 26479 }, %struct.tt_sfnt_id_rec_ { i64 2393240211, i64 952 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 4294705148, i64 8 }, %struct.tt_sfnt_id_rec_ { i64 2627619000, i64 48802 }, %struct.tt_sfnt_id_rec_ { i64 1879179538, i64 8 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 4294705148, i64 8 }, %struct.tt_sfnt_id_rec_ { i64 173671555, i64 97337 }, %struct.tt_sfnt_id_rec_ { i64 1879179538, i64 8 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 1086924117, i64 229 }, %struct.tt_sfnt_id_rec_ { i64 2744867043, i64 4476 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 868488786, i64 229 }, %struct.tt_sfnt_id_rec_ { i64 651609386, i64 3946 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 1840342301, i64 413 }, %struct.tt_sfnt_id_rec_ { i64 1819167491, i64 9362 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 1086924117, i64 229 }, %struct.tt_sfnt_id_rec_ { i64 3729914576, i64 4476 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 2246342244, i64 229 }, %struct.tt_sfnt_id_rec_ { i64 2798004273, i64 7338 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 763960573, i64 413 }, %struct.tt_sfnt_id_rec_ { i64 2690663987, i64 7656 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 1084913484, i64 459 }, %struct.tt_sfnt_id_rec_ { i64 2606541462, i64 8090 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 222161355, i64 321 }, %struct.tt_sfnt_id_rec_ { i64 3557980006, i64 8832 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 1248405144, i64 496 }, %struct.tt_sfnt_id_rec_ { i64 873284422, i64 8138 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 3442787844, i64 358 }, %struct.tt_sfnt_id_rec_ { i64 1827868742, i64 8880 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 1571246869, i64 413 }, %struct.tt_sfnt_id_rec_ { i64 1081367135, i64 8928 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ zeroinitializer, %struct.tt_sfnt_id_rec_ { i64 4032166984, i64 450 }, %struct.tt_sfnt_id_rec_ { i64 956358355, i64 7704 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 1507331, i64 96 }, %struct.tt_sfnt_id_rec_ { i64 3686019182, i64 22698 }, %struct.tt_sfnt_id_rec_ { i64 3594733610, i64 53 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 308931416, i64 848 }, %struct.tt_sfnt_id_rec_ { i64 1557501306, i64 27214 }, %struct.tt_sfnt_id_rec_ { i64 4149752378, i64 896 }], [3 x %struct.tt_sfnt_id_rec_] [%struct.tt_sfnt_id_rec_ { i64 305130251, i64 848 }, %struct.tt_sfnt_id_rec_ { i64 2131792282, i64 28841 }, %struct.tt_sfnt_id_rec_ { i64 2094524343, i64 604 }]], align 16
@switch.table.TT_RunIns = private unnamed_addr constant [8 x ptr] [ptr @Round_To_Half_Grid, ptr @Round_To_Grid, ptr @Round_To_Double_Grid, ptr @Round_Down_To_Grid, ptr @Round_Up_To_Grid, ptr @Round_None, ptr @Round_Super, ptr @Round_Super_45], align 8
@switch.table.TT_RunIns.37 = private unnamed_addr constant [4 x i64] [i64 8192, i64 16384, i64 32768, i64 16384], align 8
@switch.table.TT_RunIns.38 = private unnamed_addr constant [4 x i64] [i64 5792, i64 11585, i64 23170, i64 11585], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @tt_driver_init(ptr nofree noundef writeonly captures(none) initializes((120, 124)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 40, ptr %i.a, align 8, !tbaa !7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @tt_driver_done(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @tt_get_interface(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = tail call ptr @ft_service_list_lookup(ptr noundef nonnull @tt_services, ptr noundef %1) #22 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp eq ptr %0, null
  br i1 %.not19, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not20 = icmp eq ptr %i.c, null
  br i1 %.not20, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @FT_Get_Module(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1) #22 ; 2 uses
  %.not21 = icmp eq ptr %i.d, null
  br i1 %.not21, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = tail call ptr %i.i(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.j, %bb.f ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_face_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = tail call ptr @FT_Get_Module_Interface(ptr noundef %i.d, ptr noundef nonnull @.str.1) #22 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @FT_Stream_Seek(ptr noundef %0, i64 noundef 0) #22 ; 2 uses
  %.not87 = icmp eq i32 %i.f, 0
  br i1 %.not87, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = tail call i32 %i.h(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #22 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 6 uses
  %.not88 = icmp eq i32 %i.i, 0
  br i1 %.not88, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72
  switch i64 %i.m, label %bb.w [
    i64 65536, label %bb.e
    i64 131072, label %bb.e
    i64 1953658213, label %bb.e
    i64 2775278180, label %bb.e
    i64 2775348084, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !73
  %i.p = or i64 %i.o, 2048
  store i64 %i.p, ptr %i.n, align 8, !tbaa !73
  %i.q = icmp slt i32 %2, 0
  br i1 %i.q, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !74
  %i.t = tail call i32 %i.s(ptr noundef %i.k, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #22 ; 2 uses
  %.not94 = icmp eq i32 %i.t, 0
  br i1 %.not94, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %i.u = tail call fastcc zeroext i8 @tt_check_trickyness(ptr noundef nonnull %1)
  %.not95 = icmp eq i8 %i.u, 0
  br i1 %.not95, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i64, ptr %i.n, align 8, !tbaa !73
  %i.w = or i64 %i.v, 8192
  store i64 %i.w, ptr %i.n, align 8, !tbaa !73
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = tail call fastcc i32 @tt_face_load_hdmx(ptr noundef nonnull %1, ptr noundef %i.k) ; 2 uses
  %.not96 = icmp eq i32 %i.x, 0
  br i1 %.not96, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.n, align 8, !tbaa !73
  %i.z = and i64 %i.y, 131073
  %or.cond113 = icmp eq i64 %i.z, 0
  br i1 %or.cond113, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76
  %.not99 = icmp eq ptr %i.ad, null
  br i1 %.not99, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = tail call fastcc i32 @tt_face_load_loca(ptr noundef nonnull %1, ptr noundef %i.k) ; 2 uses
  %.old2.not = icmp eq i32 %i.ae, 0
  br i1 %.old2.not, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = tail call fastcc i32 @tt_face_load_cvt(ptr noundef nonnull %1, ptr noundef %i.k) ; 3 uses
  %.not102 = icmp eq i32 %i.af, 0
  %i.ag = and i32 %i.af, 255
  %.not103 = icmp eq i32 %i.ag, 142
  %or.cond114 = or i1 %.not102, %.not103
  br i1 %or.cond114, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call fastcc i32 @tt_face_load_fpgm(ptr noundef nonnull %1, ptr noundef %i.k) ; 3 uses
  %.not104 = icmp eq i32 %i.ah, 0
  %i.ai = and i32 %i.ah, 255
  %.not105 = icmp eq i32 %i.ai, 142
  %or.cond115 = or i1 %.not104, %.not105
  br i1 %or.cond115, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call fastcc i32 @tt_face_load_prep(ptr noundef nonnull %1, ptr noundef %i.k) ; 8 uses
  %.not106 = icmp eq i32 %i.aj, 0
  %i.ak = and i32 %i.aj, 255
  %.not107 = icmp eq i32 %i.ak, 142
  %or.cond116 = or i1 %.not106, %.not107
  br i1 %or.cond116, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !76
  %.not108 = icmp eq ptr %i.an, null
  br i1 %.not108, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !82
  %.not109 = icmp eq i32 %i.ap, 0
  br i1 %.not109, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !83
  %.not110 = icmp eq ptr %i.ar, null
  br i1 %.not110, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = tail call fastcc zeroext i8 @tt_check_single_notdef(ptr noundef nonnull %1)
  %.not111 = icmp eq i8 %i.as, 0
  br i1 %.not111, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.at = load i64, ptr %i.n, align 8, !tbaa !73
  %i.au = and i64 %i.at, -2
  store i64 %i.au, ptr %i.n, align 8, !tbaa !73
  br label %bb.u

bb.u:                                             ; preds = %bb.j, %bb.p, %bb.t, %bb.s, %bb.r, %bb.q
  %.071 = phi i32 [ %i.aj, %bb.p ], [ %i.aj, %bb.t ], [ %i.aj, %bb.s ], [ %i.aj, %bb.r ], [ %i.aj, %bb.q ], [ 0, %bb.j ]
  %i.av = lshr i32 %2, 16                         ; 2 uses
  %i.aw = load i64, ptr %i.n, align 8, !tbaa !73
  %i.ax = and i64 %i.aw, 256
end_hunk_0
begin_hunk_1_@TT_RunIns:bb.a
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.cms = load i64, ptr %i.cmr, align 8, !tbaa !223
  %i.cmt = call i64 @FT_MulDiv(i64 noundef %i.cmq, i64 noundef %i.cms, i64 noundef 64) #22
  store i64 %i.cmt, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.uc:                                            ; preds = %bb.ao
  %i.cmu = load i64, ptr %i.ji, align 8, !tbaa !223 ; 2 uses
  %i.cmv = icmp slt i64 %i.cmu, 0
  br i1 %i.cmv, label %bb.ud, label %Ins_SPVTL.exitthread-pre-split

bb.ud:                                            ; preds = %bb.uc
  %i.cmw = sub i64 0, %i.cmu
  store i64 %i.cmw, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.ue:                                            ; preds = %bb.ao
  %i.cmx = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.cmy = sub i64 0, %i.cmx
  store i64 %i.cmy, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.uf:                                            ; preds = %bb.ao
  %i.cmz = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.cna = and i64 %i.cmz, -64
  store i64 %i.cna, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.ug:                                            ; preds = %bb.ao
  %i.cnb = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.cnc = add i64 %i.cnb, 63
  %i.cnd = and i64 %i.cnc, -64
  store i64 %i.cnd, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.uh:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.cne = load ptr, ptr %i.fc, align 8, !tbaa !321
  %i.cnf = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.cng = and i8 %i.hq, 3
  %i.cnh = zext nneg i8 %i.cng to i32
  %i.cni = call i64 %i.cne(ptr noundef nonnull %0, i64 noundef %i.cnf, i32 noundef %i.cnh) #22, !inline_history !461
  store i64 %i.cni, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.ui:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.cnj = load i64, ptr %i.ji, align 8, !tbaa !223 ; 3 uses
  %i.cnk = and i8 %i.hq, 3
  %i.cnl = zext nneg i8 %i.cnk to i64
  %i.cnm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.cnl
  %i.cnn = load i64, ptr %i.cnm, align 8, !tbaa !223 ; 2 uses
  %i.cno = icmp sgt i64 %i.cnj, -1
  br i1 %i.cno, label %bb.uj, label %bb.uk

bb.uj:                                            ; preds = %bb.ui
  %i.cnp = add i64 %i.cnn, %i.cnj
  %spec.store.select.i.i = call i64 @llvm.smax.i64(i64 %i.cnp, i64 0)
  br label %Ins_NROUND.exit

bb.uk:                                            ; preds = %bb.ui
  %i.cnq = sub i64 %i.cnj, %i.cnn
  %spec.store.select1.i.i = call i64 @llvm.smin.i64(i64 %i.cnq, i64 0)
  br label %Ins_NROUND.exit

Ins_NROUND.exit:                                  ; preds = %bb.uj, %bb.uk
  %.0.i.i632 = phi i64 [ %spec.store.select.i.i, %bb.uj ], [ %spec.store.select1.i.i, %bb.uk ]
  store i64 %.0.i.i632, ptr %i.ji, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.ul:                                            ; preds = %bb.ao
  %i.cnr = load i64, ptr %i.ji, align 8, !tbaa !223 ; 2 uses
  %i.cns = load i64, ptr %i.n, align 8, !tbaa !292
  %.not.i633 = icmp ult i64 %i.cnr, %i.cns
  br i1 %.not.i633, label %bb.un, label %bb.um

bb.um:                                            ; preds = %bb.ul
  %i.cnt = load i8, ptr %i.do, align 1, !tbaa !239
  %.not8.i634 = icmp eq i8 %i.cnt, 0
  br i1 %.not8.i634, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.un:                                            ; preds = %bb.ul
  %i.cnu = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.cnv = load i64, ptr %i.cnu, align 8, !tbaa !223
  %i.cnw = load i64, ptr %i.fi, align 8, !tbaa !367
  %sext.i635 = shl i64 %i.cnv, 32
  %i.cnx = ashr exact i64 %sext.i635, 32
  %sext9.i636 = shl i64 %i.cnw, 32
  %i.cny = ashr exact i64 %sext9.i636, 32
  %i.cnz = mul nsw i64 %i.cny, %i.cnx             ; 2 uses
  %i.coa = ashr i64 %i.cnz, 63
  %i.cob = add nsw i64 %i.cnz, 32768
  %i.coc = add nsw i64 %i.cob, %i.coa
  %i.cod = shl i64 %i.coc, 16
  %i.coe = ashr i64 %i.cod, 32
  %i.cof = load ptr, ptr %i.fj, align 8, !tbaa !462
  %i.cog = getelementptr inbounds nuw [8 x i8], ptr %i.cof, i64 %i.cnr
  store i64 %i.coe, ptr %i.cog, align 8, !tbaa !223
  br label %Ins_SPVTL.exitthread-pre-split

bb.uo:                                            ; preds = %bb.ao, %bb.ao
  call fastcc void @Ins_DELTAP(ptr noundef nonnull %0, ptr noundef %i.ji)
  br label %Ins_SPVTL.exitthread-pre-split

bb.up:                                            ; preds = %bb.ao, %bb.ao, %bb.ao
  %i.coh = load ptr, ptr %i.as, align 8, !tbaa !303
  %i.coi = call i64 %i.coh(ptr noundef nonnull %0) #22, !inline_history !463
  %i.coj = load i64, ptr %i.ji, align 8, !tbaa !223 ; 2 uses
  %.not46.i637 = icmp eq i64 %i.coj, 0
  br i1 %.not46.i637, label %.loopexit.i642, label %.lr.ph.i638

.lr.ph.i638:                                      ; preds = %bb.up, %bb.va
  %.03747.i = phi i64 [ %i.cpn, %bb.va ], [ 1, %bb.up ]
  %i.cok = load i64, ptr %i.dn, align 8, !tbaa !330 ; 3 uses
  %i.col = icmp slt i64 %i.cok, 2
  br i1 %i.col, label %bb.uq, label %bb.ut

bb.uq:                                            ; preds = %.lr.ph.i638
  %i.com = load i8, ptr %i.do, align 1, !tbaa !239
  %.not44.i644 = icmp eq i8 %i.com, 0
  br i1 %.not44.i644, label %bb.us, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  store i32 129, ptr %i.dt, align 8, !tbaa !340
  br label %bb.us

bb.us:                                            ; preds = %bb.ur, %bb.uq
  store i64 0, ptr %i.dn, align 8, !tbaa !330
  br label %.loopexit.i642

bb.ut:                                            ; preds = %.lr.ph.i638
  %i.con = add nsw i64 %i.cok, -2                 ; 2 uses
  store i64 %i.con, ptr %i.dn, align 8, !tbaa !330
  %i.coo = load ptr, ptr %i.dp, align 8, !tbaa !190 ; 2 uses
  %i.cop = getelementptr [8 x i8], ptr %i.coo, i64 %i.cok
  %i.coq = getelementptr i8, ptr %i.cop, i64 -8
  %i.cor = load i64, ptr %i.coq, align 8, !tbaa !223 ; 2 uses
  %i.cos = getelementptr inbounds nuw [8 x i8], ptr %i.coo, i64 %i.con
  %i.cot = load i64, ptr %i.cos, align 8, !tbaa !223 ; 2 uses
  %i.cou = load i64, ptr %i.n, align 8, !tbaa !292
  %.not42.i639 = icmp ult i64 %i.cor, %i.cou
  br i1 %.not42.i639, label %bb.uv, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.cov = load i8, ptr %i.do, align 1, !tbaa !239
  %.not43.i640 = icmp eq i8 %i.cov, 0
  br i1 %.not43.i640, label %bb.va, label %.loopexit.sink.split

bb.uv:                                            ; preds = %bb.ut
  %i.cow = lshr i64 %i.cot, 4
  %i.cox = and i64 %i.cow, 15                     ; 3 uses
  %i.coy = load i8, ptr %i.dj, align 8, !tbaa !327
  switch i8 %i.coy, label %bb.uy [
    i8 117, label %bb.ux
    i8 116, label %bb.uw
  ]

bb.uw:                                            ; preds = %bb.uv
  %i.coz = or disjoint i64 %i.cox, 16
  br label %bb.uy

bb.ux:                                            ; preds = %bb.uv
  %i.cpa = or disjoint i64 %i.cox, 32
  br label %bb.uy

bb.uy:                                            ; preds = %bb.ux, %bb.uw, %bb.uv
  %.038.i = phi i64 [ %i.cox, %bb.uv ], [ %i.cpa, %bb.ux ], [ %i.coz, %bb.uw ]
  %i.cpb = load i16, ptr %i.fg, align 8, !tbaa !459
  %i.cpc = zext i16 %i.cpb to i64
  %i.cpd = add nuw nsw i64 %.038.i, %i.cpc
  %i.cpe = icmp eq i64 %i.coi, %i.cpd
  br i1 %i.cpe, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %bb.uy
  %i.cpf = and i64 %i.cot, 15                     ; 2 uses
  %i.cpg = icmp samesign ugt i64 %i.cpf, 7
  %spec.select.v.i = select i1 %i.cpg, i64 -7, i64 -8
  %spec.select.i643 = add nsw i64 %spec.select.v.i, %i.cpf
  %i.cph = load i16, ptr %i.fh, align 2, !tbaa !460
  %i.cpi = zext i16 %i.cph to i64
  %i.cpj = sub nsw i64 6, %i.cpi
  %i.cpk = and i64 %i.cpj, 4294967295
  %i.cpl = shl i64 %spec.select.i643, %i.cpk
  %i.cpm = load ptr, ptr %i.av, align 8, !tbaa !306
  call void %i.cpm(ptr noundef nonnull %0, i64 noundef %i.cor, i64 noundef %i.cpl) #22, !inline_history !463
  br label %bb.va

bb.va:                                            ; preds = %bb.uz, %bb.uy, %bb.uu
  %i.cpn = add i64 %.03747.i, 1                   ; 2 uses
  %.not.i641 = icmp ugt i64 %i.cpn, %i.coj
  br i1 %.not.i641, label %.loopexit.i642, label %.lr.ph.i638, !llvm.loop !464

.loopexit.i642:                                   ; preds = %bb.va, %bb.us, %bb.up
  %i.cpo = load i64, ptr %i.dn, align 8, !tbaa !330
  store i64 %i.cpo, ptr %i.dq, align 8, !tbaa !331
  br label %Ins_SPVTL.exitthread-pre-split

switch.lookup1302:                                ; preds = %bb.ao
  %.val399 = load i64, ptr %i.ji, align 8, !tbaa !223 ; 3 uses
  %i.cpp = trunc i64 %.val399 to i32
  %i.cpq = lshr i64 %.val399, 6
  %i.cpr = and i64 %i.cpq, 3
  %switch.gep1303 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.TT_RunIns.37, i64 %i.cpr
  %switch.load1304 = load i64, ptr %switch.gep1303, align 8 ; 6 uses
  %i.cps = lshr i32 %i.cpp, 4
  %i.cpt = and i32 %i.cps, 3
  switch i32 %i.cpt, label %default.unreachable [
    i32 0, label %bb.ve
    i32 1, label %bb.vb
    i32 2, label %bb.vc
    i32 3, label %bb.vd
  ]

default.unreachable:                              ; preds = %switch.lookup1305, %switch.lookup1302
  unreachable

bb.vb:                                            ; preds = %switch.lookup1302
  %i.cpu = lshr exact i64 %switch.load1304, 2
  br label %bb.ve

bb.vc:                                            ; preds = %switch.lookup1302
  %i.cpv = lshr exact i64 %switch.load1304, 1
  br label %bb.ve

bb.vd:                                            ; preds = %switch.lookup1302
  %i.cpw = mul nuw nsw i64 %switch.load1304, 3
  %i.cpx = lshr exact i64 %i.cpw, 2
  br label %bb.ve

bb.ve:                                            ; preds = %bb.vd, %bb.vc, %bb.vb, %switch.lookup1302
  %i.cpy = phi i64 [ %i.cpx, %bb.vd ], [ %i.cpv, %bb.vc ], [ %i.cpu, %bb.vb ], [ 0, %switch.lookup1302 ]
  %i.cpz = and i64 %.val399, 15                   ; 2 uses
  %i.cqa = icmp eq i64 %i.cpz, 0
  br i1 %i.cqa, label %bb.vf, label %bb.vg

bb.vf:                                            ; preds = %bb.ve
  %i.cqb = add nsw i64 %switch.load1304, -1
  br label %Ins_SROUND.exit

bb.vg:                                            ; preds = %bb.ve
  %i.cqc = add nuw nsw i64 %i.cpz, 4294967292
  %i.cqd = mul nuw nsw i64 %switch.load1304, %i.cqc
  %.lhs.trunc.i.i = trunc i64 %i.cqd to i32
  %i.cqe = ashr exact i32 %.lhs.trunc.i.i, 3
  %.sext.i.i = sext i32 %i.cqe to i64
  br label %Ins_SROUND.exit

Ins_SROUND.exit:                                  ; preds = %bb.vf, %bb.vg
  %.sink.i.i = phi i64 [ %i.cqb, %bb.vf ], [ %.sext.i.i, %bb.vg ]
  %i.cqf = lshr exact i64 %switch.load1304, 8
  store i64 %i.cqf, ptr %i.fe, align 8, !tbaa !465
  %i.cqg = lshr i64 %i.cpy, 8
  store i64 %i.cqg, ptr %i.ff, align 8, !tbaa !466
  %i.cqh = ashr i64 %.sink.i.i, 8
  store i64 %i.cqh, ptr %i.fd, align 8, !tbaa !467
  store i32 6, ptr %i.cz, align 8, !tbaa !320
  store ptr @Round_Super, ptr %i.fc, align 8, !tbaa !321
  br label %Ins_SPVTL.exitthread-pre-split

switch.lookup1305:                                ; preds = %bb.ao
  %.val400 = load i64, ptr %i.ji, align 8, !tbaa !223 ; 3 uses
  %i.cqi = trunc i64 %.val400 to i32
  %i.cqj = lshr i64 %.val400, 6
  %i.cqk = and i64 %i.cqj, 3
  %switch.gep1306 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.TT_RunIns.38, i64 %i.cqk
  %switch.load1307 = load i64, ptr %switch.gep1306, align 8 ; 6 uses
  %i.cql = lshr i32 %i.cqi, 4
  %i.cqm = and i32 %i.cql, 3
  switch i32 %i.cqm, label %default.unreachable [
    i32 0, label %bb.vk
    i32 1, label %bb.vh
    i32 2, label %bb.vi
    i32 3, label %bb.vj
  ]

bb.vh:                                            ; preds = %switch.lookup1305
  %i.cqn = lshr i64 %switch.load1307, 2
  br label %bb.vk

bb.vi:                                            ; preds = %switch.lookup1305
  %i.cqo = lshr i64 %switch.load1307, 1
  br label %bb.vk

bb.vj:                                            ; preds = %switch.lookup1305
  %i.cqp = mul nuw nsw i64 %switch.load1307, 3
  %i.cqq = lshr i64 %i.cqp, 2
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vj, %bb.vi, %bb.vh, %switch.lookup1305
  %i.cqr = phi i64 [ %i.cqq, %bb.vj ], [ %i.cqo, %bb.vi ], [ %i.cqn, %bb.vh ], [ 0, %switch.lookup1305 ]
  %i.cqs = and i64 %.val400, 15                   ; 2 uses
  %i.cqt = icmp eq i64 %i.cqs, 0
  br i1 %i.cqt, label %bb.vl, label %bb.vm

bb.vl:                                            ; preds = %bb.vk
  %i.cqu = add nsw i64 %switch.load1307, -1
  br label %Ins_S45ROUND.exit

bb.vm:                                            ; preds = %bb.vk
  %i.cqv = add nuw nsw i64 %i.cqs, 4294967292
  %i.cqw = mul nuw nsw i64 %switch.load1307, %i.cqv
  %.lhs.trunc.i.i646 = trunc i64 %i.cqw to i32
  %i.cqx = sdiv i32 %.lhs.trunc.i.i646, 8
  %.sext.i.i647 = sext i32 %i.cqx to i64
  br label %Ins_S45ROUND.exit

Ins_S45ROUND.exit:                                ; preds = %bb.vl, %bb.vm
  %.sink.i.i648 = phi i64 [ %i.cqu, %bb.vl ], [ %.sext.i.i647, %bb.vm ]
  %i.cqy = lshr i64 %switch.load1307, 8
  store i64 %i.cqy, ptr %i.fe, align 8, !tbaa !465
  %i.cqz = lshr i64 %i.cqr, 8
  store i64 %i.cqz, ptr %i.ff, align 8, !tbaa !466
  %i.cra = ashr i64 %.sink.i.i648, 8
  store i64 %i.cra, ptr %i.fd, align 8, !tbaa !467
  store i32 7, ptr %i.cz, align 8, !tbaa !320
  store ptr @Round_Super_45, ptr %i.fc, align 8, !tbaa !321
  br label %Ins_SPVTL.exitthread-pre-split

bb.vn:                                            ; preds = %bb.ao
  %i.crb = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.crc = load i64, ptr %i.crb, align 8, !tbaa !223
  %.not.i650 = icmp eq i64 %i.crc, 0
  br i1 %.not.i650, label %Ins_SPVTL.exitthread-pre-split, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  %i.crd = load i64, ptr %i.ji, align 8, !tbaa !223 ; 2 uses
  %i.cre = or i64 %i.crd, %i.it
  %or.cond800 = icmp eq i64 %i.cre, 0
  br i1 %or.cond800, label %.sink.split.i.i, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.crf = load i64, ptr %i.di, align 8, !tbaa !324
  %i.crg = add i64 %i.crf, %i.crd                 ; 3 uses
  store i64 %i.crg, ptr %i.di, align 8, !tbaa !324
  %i.crh = icmp slt i64 %i.crg, 0
  br i1 %i.crh, label %.sink.split.i.i, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.cri = load i32, ptr %i.dw, align 8, !tbaa !360 ; 2 uses
  %i.crj = icmp sgt i32 %i.cri, 0
  br i1 %i.crj, label %bb.vr, label %bb.vs

bb.vr:                                            ; preds = %bb.vq
  %i.crk = load ptr, ptr %i.dy, align 8, !tbaa !194
  %i.crl = zext nneg i32 %i.cri to i64
  %i.crm = getelementptr [32 x i8], ptr %i.crk, i64 %i.crl
  %i.crn = getelementptr i8, ptr %i.crm, i64 -8
  %i.cro = load ptr, ptr %i.crn, align 8, !tbaa !361
  %i.crp = getelementptr inbounds nuw i8, ptr %i.cro, i64 16
  %i.crq = load i64, ptr %i.crp, align 8, !tbaa !363
  %i.crr = icmp sgt i64 %i.crg, %i.crq
  br i1 %i.crr, label %.sink.split.i.i, label %bb.vs

bb.vs:                                            ; preds = %bb.vr, %bb.vq
  store i8 0, ptr %i.ds, align 8, !tbaa !339
  %i.crs = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.crt = icmp slt i64 %i.crs, 0
  br i1 %i.crt, label %bb.vt, label %Ins_SPVTL.exitthread-pre-split

bb.vt:                                            ; preds = %bb.vs
  %i.cru = load i64, ptr %i.x, align 8, !tbaa !295
  %i.crv = add i64 %i.cru, 1                      ; 2 uses
  store i64 %i.crv, ptr %i.x, align 8, !tbaa !295
  %i.crw = load i64, ptr %i.am, align 8, !tbaa !299
  %i.crx = icmp ugt i64 %i.crv, %i.crw
  br i1 %i.crx, label %.sink.split.i.i, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i.i:                                  ; preds = %bb.vo, %bb.vt, %bb.vr, %bb.vp
  %.sink.i.i651 = phi i32 [ 132, %bb.vp ], [ 132, %bb.vo ], [ 132, %bb.vr ], [ 139, %bb.vt ] ; 2 uses
  store i32 %.sink.i.i651, ptr %i.dt, align 8, !tbaa !340
  br label %Ins_SPVTL.exit

bb.vu:                                            ; preds = %bb.ao
  %i.cry = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.crz = load i64, ptr %i.cry, align 8, !tbaa !223
  %i.csa = icmp eq i64 %i.crz, 0
  br i1 %i.csa, label %bb.vv, label %Ins_SPVTL.exitthread-pre-split

bb.vv:                                            ; preds = %bb.vu
  %i.csb = load i64, ptr %i.ji, align 8, !tbaa !223 ; 2 uses
  %i.csc = or i64 %i.csb, %i.it
  %or.cond801 = icmp eq i64 %i.csc, 0
  br i1 %or.cond801, label %.sink.split.i.i652, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.csd = load i64, ptr %i.di, align 8, !tbaa !324
  %i.cse = add i64 %i.csd, %i.csb                 ; 3 uses
  store i64 %i.cse, ptr %i.di, align 8, !tbaa !324
  %i.csf = icmp slt i64 %i.cse, 0
  br i1 %i.csf, label %.sink.split.i.i652, label %bb.vx

bb.vx:                                            ; preds = %bb.vw
  %i.csg = load i32, ptr %i.dw, align 8, !tbaa !360 ; 2 uses
  %i.csh = icmp sgt i32 %i.csg, 0
  br i1 %i.csh, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %bb.vx
  %i.csi = load ptr, ptr %i.dy, align 8, !tbaa !194
  %i.csj = zext nneg i32 %i.csg to i64
  %i.csk = getelementptr [32 x i8], ptr %i.csi, i64 %i.csj
  %i.csl = getelementptr i8, ptr %i.csk, i64 -8
  %i.csm = load ptr, ptr %i.csl, align 8, !tbaa !361
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csm, i64 16
  %i.cso = load i64, ptr %i.csn, align 8, !tbaa !363
  %i.csp = icmp sgt i64 %i.cse, %i.cso
  br i1 %i.csp, label %.sink.split.i.i652, label %bb.vz

bb.vz:                                            ; preds = %bb.vy, %bb.vx
  store i8 0, ptr %i.ds, align 8, !tbaa !339
  %i.csq = load i64, ptr %i.ji, align 8, !tbaa !223
  %i.csr = icmp slt i64 %i.csq, 0
  br i1 %i.csr, label %bb.wa, label %Ins_SPVTL.exitthread-pre-split

bb.wa:                                            ; preds = %bb.vz
  %i.css = load i64, ptr %i.x, align 8, !tbaa !295
  %i.cst = add i64 %i.css, 1                      ; 2 uses
  store i64 %i.cst, ptr %i.x, align 8, !tbaa !295
  %i.csu = load i64, ptr %i.am, align 8, !tbaa !299
  %i.csv = icmp ugt i64 %i.cst, %i.csu
  br i1 %i.csv, label %.sink.split.i.i652, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i.i652:                               ; preds = %bb.vv, %bb.wa, %bb.vy, %bb.vw
  %.sink.i.i653 = phi i32 [ 132, %bb.vw ], [ 132, %bb.vv ], [ 132, %bb.vy ], [ 139, %bb.wa ] ; 2 uses
  store i32 %.sink.i.i653, ptr %i.dt, align 8, !tbaa !340
  br label %Ins_SPVTL.exit

bb.wb:                                            ; preds = %bb.ao
  store i32 5, ptr %i.cz, align 8, !tbaa !320
  store ptr @Round_None, ptr %i.fc, align 8, !tbaa !321
  br label %Ins_SPVTL.exitthread-pre-split

bb.wc:                                            ; preds = %bb.ao
  %i.csw = load ptr, ptr %i.du, align 8, !tbaa !370 ; 4 uses
  %.not.i654 = icmp eq ptr %i.csw, null
  br i1 %.not.i654, label %._crit_edge.i659, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.csx = load i32, ptr %i.dv, align 8, !tbaa !371 ; 2 uses
  %i.csy = zext i32 %i.csx to i64
  %.idx.i655 = shl nuw nsw i64 %i.csy, 5
  %i.csz = getelementptr inbounds nuw i8, ptr %i.csw, i64 %.idx.i655
  %.not41.i656 = icmp eq i32 %i.csx, 0
  br i1 %.not41.i656, label %._crit_edge.i659, label %.lr.ph.i657

.lr.ph.i657:                                      ; preds = %bb.wd, %bb.wn
  %.032.i658 = phi ptr [ %i.cud, %bb.wn ], [ %i.csw, %bb.wd ] ; 6 uses
  %i.cta = getelementptr inbounds nuw i8, ptr %.032.i658, i64 24
  %i.ctb = load i32, ptr %i.cta, align 8, !tbaa !372
  %i.ctc = and i32 %i.ctb, 255
  %i.ctd = icmp eq i32 %i.ctc, 123
  br i1 %i.ctd, label %bb.we, label %bb.wn

bb.we:                                            ; preds = %.lr.ph.i657
  %i.cte = getelementptr inbounds nuw i8, ptr %.032.i658, i64 28
  %i.ctf = load i8, ptr %i.cte, align 4, !tbaa !373
  %.not29.i660 = icmp eq i8 %i.ctf, 0
  br i1 %.not29.i660, label %bb.wn, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.ctg = load i32, ptr %i.dw, align 8, !tbaa !360 ; 3 uses
  %i.cth = load i32, ptr %i.dx, align 4, !tbaa !205
  %.not30.i661 = icmp slt i32 %i.ctg, %i.cth
  br i1 %.not30.i661, label %bb.wg, label %.loopexit.sink.split

bb.wg:                                            ; preds = %bb.wf
  %i.cti = load ptr, ptr %i.dy, align 8, !tbaa !194
  %i.ctj = add nsw i32 %i.ctg, 1
  store i32 %i.ctj, ptr %i.dw, align 8, !tbaa !360
  %i.ctk = sext i32 %i.ctg to i64
  %i.ctl = getelementptr inbounds [32 x i8], ptr %i.cti, i64 %i.ctk ; 4 uses
  %i.ctm = load i32, ptr %i.aw, align 4, !tbaa !307
  store i32 %i.ctm, ptr %i.ctl, align 8, !tbaa !374
  %i.ctn = load i64, ptr %i.di, align 8, !tbaa !324
  %i.cto = add nsw i64 %i.ctn, 1
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.ctl, i64 8
  store i64 %i.cto, ptr %i.ctp, align 8, !tbaa !375
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.ctl, i64 16
  store i64 1, ptr %i.ctq, align 8, !tbaa !376
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.ctl, i64 24
  store ptr %.032.i658, ptr %i.ctr, align 8, !tbaa !361
  %i.cts = load i32, ptr %.032.i658, align 8, !tbaa !377 ; 3 uses
  %i.ctt = getelementptr inbounds nuw i8, ptr %.032.i658, i64 8
  %i.ctu = load i64, ptr %i.ctt, align 8, !tbaa !378 ; 2 uses
  %i.ctv = add i32 %i.cts, -4
  %or.cond.i.i662 = icmp ult i32 %i.ctv, -3
  br i1 %or.cond.i.i662, label %bb.wh, label %bb.wi

bb.wh:                                            ; preds = %bb.wg
  store i32 132, ptr %i.dt, align 8, !tbaa !340
  br label %Ins_Goto_CodeRange.exit.i664

bb.wi:                                            ; preds = %bb.wg
  %i.ctw = zext nneg i32 %i.cts to i64
  %i.ctx = getelementptr [16 x i8], ptr %0, i64 %i.ctw ; 2 uses
  %i.cty = getelementptr i8, ptr %i.ctx, i64 776
  %i.ctz = load ptr, ptr %i.cty, align 8, !tbaa !379 ; 2 uses
  %.not.i.i663 = icmp eq ptr %i.ctz, null
  br i1 %.not.i.i663, label %bb.wj, label %bb.wk

bb.wj:                                            ; preds = %bb.wi
  store i32 138, ptr %i.dt, align 8, !tbaa !340
  br label %Ins_Goto_CodeRange.exit.i664

bb.wk:                                            ; preds = %bb.wi
  %i.cua = getelementptr i8, ptr %i.ctx, i64 784
  %i.cub = load i64, ptr %i.cua, align 8, !tbaa !381 ; 2 uses
  %i.cuc = icmp sgt i64 %i.ctu, %i.cub
  br i1 %i.cuc, label %bb.wl, label %bb.wm

end_hunk_1
