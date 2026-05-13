inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FT_Driver_ClassRec_ = type { %struct.FT_Module_Class_, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Module_Class_ = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr }
%struct.FT_ServiceDescRec_ = type { ptr, ptr }
%struct.FT_Service_GlyphDictRec_ = type { ptr, ptr }
%struct.FT_Service_PsFontNameRec_ = type { ptr }
%struct.FT_Service_PsInfoRec_ = type { ptr, ptr, ptr, ptr, ptr }
%struct.T1_TokenRec_ = type { ptr, ptr, i32 }
%struct.T42_Loader_ = type { %struct.T42_ParserRec_, i32, %struct.PS_TableRec_, i32, %struct.PS_TableRec_, %struct.PS_TableRec_, %struct.PS_TableRec_ }
%struct.T42_ParserRec_ = type { %struct.PS_ParserRec_, ptr, ptr, i64, i8 }
%struct.PS_ParserRec_ = type { ptr, ptr, ptr, i32, ptr, %struct.PS_Parser_FuncsRec_ }
%struct.PS_Parser_FuncsRec_ = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PS_TableRec_ = type { ptr, i64, i64, i64, i32, ptr, ptr, ptr, %struct.PS_Table_FuncsRec_ }
%struct.PS_Table_FuncsRec_ = type { ptr, ptr, ptr, ptr }
%struct.FT_Open_Args_ = type { i32, ptr, i64, ptr, ptr, ptr, i32, ptr }
%struct.FT_CharMapRec_ = type { ptr, i32, i16, i16 }

@.str = private unnamed_addr constant [7 x i8] c"type42\00", align 1
@t42_driver_class = hidden local_unnamed_addr constant %struct.FT_Driver_ClassRec_ { %struct.FT_Module_Class_ { i64 1281, i64 64, ptr @.str, i64 65536, i64 131072, ptr null, ptr @T42_Driver_Init, ptr @T42_Driver_Done, ptr @T42_Get_Interface }, i64 904, i64 96, i64 312, ptr @T42_Face_Init, ptr @T42_Face_Done, ptr @T42_Size_Init, ptr @T42_Size_Done, ptr @T42_GlyphSlot_Init, ptr @T42_GlyphSlot_Done, ptr @T42_GlyphSlot_Load, ptr null, ptr null, ptr null, ptr @T42_Size_Request, ptr @T42_Size_Select }, align 8
@t42_services = internal constant [5 x %struct.FT_ServiceDescRec_] [%struct.FT_ServiceDescRec_ { ptr @.str.1, ptr @t42_service_glyph_dict }, %struct.FT_ServiceDescRec_ { ptr @.str.2, ptr @t42_service_ps_font_name }, %struct.FT_ServiceDescRec_ { ptr @.str.3, ptr @t42_service_ps_info }, %struct.FT_ServiceDescRec_ { ptr @.str.4, ptr @.str.5 }, %struct.FT_ServiceDescRec_ zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"glyph-dict\00", align 1
@t42_service_glyph_dict = internal constant %struct.FT_Service_GlyphDictRec_ { ptr @t42_get_glyph_name, ptr @t42_get_name_index }, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"postscript-font-name\00", align 1
@t42_service_ps_font_name = internal constant %struct.FT_Service_PsFontNameRec_ { ptr @t42_get_ps_font_name }, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"postscript-info\00", align 1
@t42_service_ps_info = internal constant %struct.FT_Service_PsInfoRec_ { ptr @t42_ps_get_font_info, ptr @t42_ps_get_font_extra, ptr @t42_ps_has_glyph_names, ptr null, ptr null }, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"font-format\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Type 42\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"postscript-cmaps\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"psaux\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Regular\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"truetype\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"FontDirectory\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"known\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Notice\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"FullName\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"FamilyName\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"ItalicAngle\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"isFixedPitch\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"UnderlinePosition\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"UnderlineThickness\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"FSType\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"FontName\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"PaintType\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"FontType\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"StrokeWidth\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"FontMatrix\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"CharStrings\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"sfnts\00", align 1
@t42_keywords = internal constant [20 x { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] }] [{ ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.14, i32 3, i32 5, ptr null, i32 0, i8 8, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.15, i32 3, i32 5, ptr null, i32 8, i8 8, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.16, i32 3, i32 5, ptr null, i32 16, i8 8, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.17, i32 3, i32 5, ptr null, i32 24, i8 8, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.18, i32 3, i32 5, ptr null, i32 32, i8 8, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.19, i32 3, i32 2, ptr null, i32 40, i8 8, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.20, i32 3, i32 1, ptr null, i32 48, i8 1, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.21, i32 3, i32 2, ptr null, i32 50, i8 2, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.22, i32 3, i32 2, ptr null, i32 52, i8 2, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.23, i32 2, i32 2, ptr null, i32 0, i8 2, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.24, i32 1, i32 6, ptr null, i32 288, i8 8, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.25, i32 1, i32 2, ptr null, i32 424, i8 1, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.26, i32 1, i32 2, ptr null, i32 425, i8 1, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.27, i32 1, i32 3, ptr null, i32 520, i8 8, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.28, i32 5, i32 7, ptr null, i32 0, i8 8, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.29, i32 5, i32 11, ptr @t42_parse_font_matrix, i32 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.30, i32 5, i32 11, ptr @t42_parse_encoding, i32 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.31, i32 5, i32 11, ptr @t42_parse_charstrings, i32 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } { ptr @.str.32, i32 5, i32 11, ptr @t42_parse_sfnts, i32 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, i32, ptr, i32, i8, [3 x i8], i32, i32, i32, [4 x i8] } zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [17 x i8] c"StandardEncoding\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"ExpertEncoding\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"ISOLatin1Encoding\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 12) i32 @T42_Driver_Init(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call ptr @FT_Get_Module(ptr noundef %i.b, ptr noundef nonnull @.str.9) #13 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.e, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 11, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @T42_Driver_Done(ptr readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @T42_Get_Interface(ptr readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @ft_service_list_lookup(ptr noundef nonnull @t42_services, ptr noundef %1) #13
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @T42_Face_Init(ptr readnone captures(none) %0, ptr noundef initializes((0, 8), (776, 792), (808, 816)) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.T1_TokenRec_, align 8       ; 4 uses
  %i.b = alloca i32, align 4                      ; 13 uses
  %6 = alloca %struct.T42_Loader_, align 8        ; 59 uses
  %7 = alloca %struct.FT_Open_Args_, align 8      ; 11 uses
  %8 = alloca %struct.FT_CharMapRec_, align 8     ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !21
  store i64 1, ptr %1, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = tail call ptr @ft_module_get_service(ptr noundef %i.e, ptr noundef nonnull @.str.6, i8 noundef zeroext 1) #13 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 776
  store ptr %i.f, ptr %i.g, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.k = tail call ptr @FT_Get_Module_Interface(ptr noundef %i.j, ptr noundef nonnull @.str.7) #13 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 784
  store ptr %i.k, ptr %i.l, align 8, !tbaa !59
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.bx, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(576) %6, i8 0, i64 576, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61   ; 13 uses
  %i.r = getelementptr i8, ptr %i.k, i64 8
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !62
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void %.val.val.i(ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef %i.n) #13, !inline_history !73
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 144
  store ptr %i.q, ptr %i.s, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.u, i8 0, i64 17, i1 false)
  %i.w = call i32 @FT_Stream_Seek(ptr noundef %i.q, i64 noundef 0) #13 ; 3 uses
  store i32 %i.w, ptr %i.b, align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.x = call i32 @FT_Stream_EnterFrame(ptr noundef %i.q, i64 noundef 17) #13 ; 3 uses
  store i32 %i.x, ptr %i.b, align 4, !tbaa !3
  %.not41.i.i = icmp eq i32 %i.x, 0
  br i1 %.not41.i.i, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !77   ; 2 uses
  %i.aa = load i128, ptr %i.z, align 1
  %i.ab = xor i128 %i.aa, 146792852293163781118346084504518533413
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i128
  %i.af = xor i128 %i.ae, 116
  %i.ag = or i128 %i.ab, %i.af
  %i.ah = icmp ne i128 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not42.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not42.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.b, align 4, !tbaa !3
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.q) #13
  br label %.thread.i.i

bb.f:                                             ; preds = %bb.d
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.q) #13
  %i.aj = call i32 @FT_Stream_Seek(ptr noundef nonnull %i.q, i64 noundef 0) #13 ; 3 uses
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !3
  %.not44.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not44.i.i, label %bb.g, label %.thread.i.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !79 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !80
  %.not45.i.i = icmp eq ptr %i.an, null
  br i1 %.not45.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  store ptr %i.ar, ptr %i.u, align 8, !tbaa !83
  store i64 %i.al, ptr %i.t, align 8, !tbaa !84
  store i8 1, ptr %i.v, align 8, !tbaa !85
  %i.as = call i32 @FT_Stream_Skip(ptr noundef nonnull %i.q, i64 noundef %i.al) #13 ; 3 uses
  store i32 %i.as, ptr %i.b, align 4, !tbaa !3
  %.not46.i.i = icmp eq i32 %i.as, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.thread.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %.pre.i.i = load i64, ptr %i.t, align 8, !tbaa !84
  br label %t42_parser_init.exit.thread.i

bb.i:                                             ; preds = %bb.g
  %i.at = call ptr @ft_mem_qalloc(ptr noundef %i.n, i64 noundef %i.al, ptr noundef nonnull %i.b) #13 ; 2 uses
  store ptr %i.at, ptr %i.u, align 8, !tbaa !83
  %i.au = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %.not47.i.i = icmp eq i32 %i.au, 0
  br i1 %.not47.i.i, label %bb.j, label %.thread.i.i

bb.j:                                             ; preds = %bb.i
  %i.av = call i32 @FT_Stream_Read(ptr noundef nonnull %i.q, ptr noundef %i.at, i64 noundef %i.al) #13 ; 3 uses
  store i32 %i.av, ptr %i.b, align 4, !tbaa !3
  %.not48.i.i = icmp eq i32 %i.av, 0
  br i1 %.not48.i.i, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %bb.j
  store i64 %i.al, ptr %i.t, align 8, !tbaa !84
  br label %t42_parser_init.exit.thread.i

t42_parser_init.exit.thread.i:                    ; preds = %bb.k, %._crit_edge.i.i
  %i.aw = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.al, %bb.k ]
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !83  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.l

.thread.i.i:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b
  %i.az = phi i32 [ %i.au, %bb.i ], [ %i.x, %bb.c ], [ %i.w, %bb.b ], [ %i.aj, %bb.f ], [ 2, %bb.e ], [ %i.as, %bb.h ], [ %i.av, %bb.j ]
  %i.ba = load i8, ptr %i.v, align 8, !tbaa !85
  %.not50.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not50.i.i, label %t42_parser_init.exit.i, label %t42_parser_init.exit.thread90.i

t42_parser_init.exit.thread90.i:                  ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %t42_parse_dict.exit.thread.i

t42_parser_init.exit.i:                           ; preds = %.thread.i.i
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !83
  call void @ft_mem_free(ptr noundef %i.n, ptr noundef %i.bb) #13
  store ptr null, ptr %i.u, align 8, !tbaa !83
  %.pre3.i.i = load i32, ptr %i.b, align 4, !tbaa !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %.not.i = icmp eq i32 %.pre3.i.i, 0
  br i1 %.not.i, label %t42_parser_init.exit._crit_edge.i, label %t42_parse_dict.exit.thread.i

t42_parser_init.exit._crit_edge.i:                ; preds = %t42_parser_init.exit.i
  %.pre.i = load i64, ptr %i.t, align 8, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %t42_parser_init.exit._crit_edge.i, %t42_parser_init.exit.thread.i
  %i.bc = phi i64 [ %i.aw, %t42_parser_init.exit.thread.i ], [ %.pre.i, %t42_parser_init.exit._crit_edge.i ]
  %i.bd = phi ptr [ %i.ax, %t42_parser_init.exit.thread.i ], [ null, %t42_parser_init.exit._crit_edge.i ] ; 2 uses
  store ptr %i.bd, ptr %6, align 8, !tbaa !87
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.bc ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !88
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 7 uses
  store i32 0, ptr %i.bg, align 8, !tbaa !89
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !90
  call void %i.bi(ptr noundef nonnull %6) #13, !inline_history !91
  %i.bj = load ptr, ptr %6, align 8, !tbaa !87    ; 2 uses
  %i.bk = icmp ult ptr %i.bj, %i.be
  br i1 %i.bk, label %.lr.ph153.i.i, label %t42_parse_dict.exit.i

.lr.ph153.i.i:                                    ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.thread128.i.i, %.lr.ph153.i.i
  %i.bq = phi ptr [ %i.bj, %.lr.ph153.i.i ], [ %i.eg, %.thread128.i.i ] ; 5 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !92  ; 2 uses
  %i.bs = icmp eq i8 %i.br, 70
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 25
  %i.bu = icmp ult ptr %i.bt, %i.be
  %or.cond111.i.i = select i1 %i.bs, i1 %i.bu, i1 false
  br i1 %or.cond111.i.i, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bv = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.bq, ptr noundef nonnull dereferenceable(14) @.str.12, i64 noundef 13) #14
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %.thread119.i.i

bb.o:                                             ; preds = %bb.n
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !93
  call void %i.bx(ptr noundef nonnull %6) #13, !inline_history !91
  %i.by = load ptr, ptr %i.bh, align 8, !tbaa !90
  call void %i.by(ptr noundef nonnull %6) #13, !inline_history !91
  %i.bz = load ptr, ptr %6, align 8, !tbaa !87    ; 5 uses
  %i.ca = icmp ult ptr %i.bz, %i.be
  br i1 %i.ca, label %.lr.ph.i.i, label %.thread.i87.i

.lr.ph.i.i:                                       ; preds = %bb.o, %bb.r
  %.091152.i.i = phi ptr [ %i.ck, %bb.r ], [ %i.bz, %bb.o ] ; 3 uses
  %i.cb = load i8, ptr %.091152.i.i, align 1, !tbaa !92
  %i.cc = icmp eq i8 %i.cb, 107
end_hunk_0
begin_hunk_1_@T42_Face_Init:bb.a
bb.ak:                                            ; preds = %t42_parse_dict.exit.thread.i
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 184
  call void %i.gn(ptr noundef nonnull %i.go) #13, !inline_history !139
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %t42_parse_dict.exit.thread.i
  %i.gp = getelementptr inbounds nuw i8, ptr %6, i64 472
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !140 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.gq, null
  br i1 %.not17.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 384
  call void %i.gq(ptr noundef nonnull %i.gr) #13, !inline_history !139
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 376
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !141 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.gt, null
  br i1 %.not18.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 288
  call void %i.gt(ptr noundef nonnull %i.gu) #13, !inline_history !139
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 568
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !142 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.gw, null
  br i1 %.not19.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 480
  call void %i.gw(ptr noundef nonnull %i.gx) #13, !inline_history !139
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gy = load i8, ptr %i.v, align 8, !tbaa !85
  %.not.i.i.i = icmp eq i8 %i.gy, 0
  br i1 %.not.i.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !143
  %i.hb = load ptr, ptr %i.u, align 8, !tbaa !83
  call void @ft_mem_free(ptr noundef %i.ha, ptr noundef %i.hb) #13
  store ptr null, ptr %i.u, align 8, !tbaa !83
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !144 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not8.i.i.i, label %t42_loader_done.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void %i.hd(ptr noundef nonnull %6) #13, !inline_history !145
  br label %t42_loader_done.exit.i

t42_loader_done.exit.i:                           ; preds = %bb.au, %bb.at
  %.not82.i = icmp eq i32 %.1.i, 0
  br i1 %.not82.i, label %T42_Open_Face.exit, label %T42_Open_Face.exit.thread

T42_Open_Face.exit.thread:                        ; preds = %t42_loader_done.exit.i
  %i.he = load ptr, ptr %i.o, align 8, !tbaa !146
  call void @ft_mem_free(ptr noundef %i.n, ptr noundef %i.he) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.bx

T42_Open_Face.exit:                               ; preds = %t42_loader_done.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.hf = icmp slt i32 %2, 0
  br i1 %i.hf, label %bb.bx, label %bb.av

bb.av:                                            ; preds = %T42_Open_Face.exit
  %i.hg = and i32 %2, 65535
  %.not128 = icmp eq i32 %i.hg, 0
  br i1 %.not128, label %bb.aw, label %bb.bx

bb.aw:                                            ; preds = %bb.av
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !113
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.hj, ptr %i.hk, align 8, !tbaa !147
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 0, ptr %i.hl, align 8, !tbaa !148
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.hm, align 8, !tbaa !149
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !150
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !151
  %.not129 = icmp eq i8 %i.hq, 0
  %spec.select.v = select i1 %.not129, i64 529, i64 533
  %spec.select = or i64 %i.ho, %spec.select.v
  %i.hr = or i64 %spec.select, 2048
  store i64 %i.hr, ptr %i.hn, align 8, !tbaa !150
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !152 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !153
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr @.str.8, ptr %i.hv, align 8, !tbaa !154
  %.not130 = icmp eq ptr %i.ht, null
  br i1 %.not130, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !155 ; 3 uses
  %.not132 = icmp eq ptr %i.hx, null
  br i1 %.not132, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ax
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !92  ; 2 uses
  %.not133156 = icmp eq i8 %i.hy, 0
  br i1 %.not133156, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.be
  %i.hz = phi i8 [ %i.ig, %bb.be ], [ %i.hy, %.preheader ] ; 2 uses
  %.0110158 = phi ptr [ %.1, %bb.be ], [ %i.ht, %.preheader ] ; 4 uses
  %.0111157 = phi ptr [ %.1112, %bb.be ], [ %i.hx, %.preheader ] ; 4 uses
  %i.ia = load i8, ptr %.0110158, align 1, !tbaa !92 ; 2 uses
  %i.ib = icmp eq i8 %i.hz, %i.ia
  br i1 %i.ib, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph
  %i.ic = getelementptr inbounds nuw i8, ptr %.0110158, i64 1
  %i.id = getelementptr inbounds nuw i8, ptr %.0111157, i64 1
  br label %bb.be

bb.az:                                            ; preds = %.lr.ph
  switch i8 %i.hz, label %bb.bb [
    i8 32, label %bb.ba
    i8 45, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.ie = getelementptr inbounds nuw i8, ptr %.0111157, i64 1
  br label %bb.be

bb.bb:                                            ; preds = %bb.az
  switch i8 %i.ia, label %.loopexit [
    i8 32, label %bb.bc
    i8 45, label %bb.bc
    i8 0, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb
  %i.if = getelementptr inbounds nuw i8, ptr %.0110158, i64 1
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  store ptr %.0111157, ptr %i.hv, align 8, !tbaa !154
  br label %.loopexit

bb.be:                                            ; preds = %bb.ba, %bb.bc, %bb.ay
  %.1112 = phi ptr [ %i.id, %bb.ay ], [ %i.ie, %bb.ba ], [ %.0111157, %bb.bc ] ; 2 uses
  %.1 = phi ptr [ %i.ic, %bb.ay ], [ %.0110158, %bb.ba ], [ %i.if, %bb.bc ]
  %i.ig = load i8, ptr %.1112, align 1, !tbaa !92 ; 2 uses
  %.not133 = icmp eq i8 %i.ig, 0
  br i1 %.not133, label %.loopexit, label %.lr.ph, !llvm.loop !156

bb.bf:                                            ; preds = %bb.aw
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !157 ; 2 uses
  %.not131 = icmp eq ptr %i.ii, null
  br i1 %.not131, label %.loopexit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.ii, ptr %i.hu, align 8, !tbaa !153
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bb, %bb.be, %.preheader, %bb.ax, %bb.bd, %bb.bf, %bb.bg
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 0, ptr %i.ij, align 8, !tbaa !158
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.ik, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store i32 9, ptr %7, align 8, !tbaa !160
  %i.il = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !58
  %i.io = call ptr @FT_Get_Module(ptr noundef %i.in, ptr noundef nonnull @.str.9) #13
  %i.ip = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !164
  %i.iq = load ptr, ptr %i.o, align 8, !tbaa !146
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !165
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.it = load i64, ptr %i.is, align 8, !tbaa !166
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !167
  %.not135 = icmp eq i32 %3, 0
  br i1 %.not135, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.loopexit
  %9 = load i32, ptr %7, align 8, !tbaa !160
  %10 = or i32 %9, 16
  store i32 %10, ptr %7, align 8, !tbaa !160
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 %3, ptr %i.iv, align 8, !tbaa !168
  %i.iw = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %4, ptr %i.iw, align 8, !tbaa !169
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.loopexit
  %i.ix = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !58
  %i.ja = call i32 @FT_Open_Face(ptr noundef %i.iz, ptr noundef nonnull %7, i64 noundef 0, ptr noundef nonnull %i.c) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.not136 = icmp eq i32 %i.ja, 0
  br i1 %.not136, label %bb.bj, label %bb.bx

bb.bj:                                            ; preds = %bb.bi
  %i.jb = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 160
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !170
  %i.je = call i32 @FT_Done_Size(ptr noundef %i.jd) #13 ; 0 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.jg = load ptr, ptr %i.c, align 8, !tbaa !21  ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jf, ptr noundef nonnull align 8 dereferenceable(32) %i.jh, i64 32, i1 false), !tbaa.struct !171
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 136
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 144
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 298
  %i.jm = load <4 x i16>, ptr %i.ji, align 8, !tbaa !126
  %i.jn = load <2 x i16>, ptr %i.jk, align 8, !tbaa !126
  %i.jo = load <2 x i16>, ptr %i.jl, align 2, !tbaa !126
  %i.jp = shufflevector <2 x i16> %i.jn, <2 x i16> %i.jo, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.jq = shufflevector <4 x i16> %i.jm, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jr = shufflevector <8 x i16> %i.jq, <8 x i16> %i.jp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  store <8 x i16> %i.jr, ptr %i.jj, align 8, !tbaa !126
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !173
  %.not137 = icmp ne i64 %i.ju, 0
  %spec.store.select = zext i1 %.not137 to i64    ; 2 uses
  store i64 %spec.store.select, ptr %i.js, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !174
  %i.jx = and i64 %i.jw, 2
  %.not138 = icmp eq i64 %i.jx, 0
  br i1 %.not138, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jy = or disjoint i64 %spec.store.select, 2
  store i64 %i.jy, ptr %i.js, align 8, !tbaa !174
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !150
  %i.kb = and i64 %i.ka, 32
  %.not139 = icmp eq i64 %i.kb, 0
  br i1 %.not139, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kc = load i64, ptr %i.hn, align 8, !tbaa !150
  %i.kd = or i64 %i.kc, 32
  store i64 %i.kd, ptr %i.hn, align 8, !tbaa !150
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.not140 = icmp eq ptr %i.f, null
  br i1 %.not140, label %bb.bx, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ke = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !175 ; 4 uses
  store ptr %1, ptr %8, align 8, !tbaa !176
  %i.kg = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i16 3, ptr %i.kg, align 4, !tbaa !177
  %i.kh = getelementptr inbounds nuw i8, ptr %8, i64 14 ; 5 uses
  store i16 1, ptr %i.kh, align 2, !tbaa !178
  %i.ki = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 1970170211, ptr %i.ki, align 8, !tbaa !179
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 24 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !180
  %i.kl = call i32 @FT_CMap_New(ptr noundef %i.kk, ptr noundef null, ptr noundef nonnull %8, ptr noundef null) #13 ; 3 uses
  %.not141 = icmp eq i32 %i.kl, 0
  br i1 %.not141, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %trunc = trunc i32 %i.kl to i8
  switch i8 %trunc, label %.thread [
    i8 -93, label %bb.bq
    i8 7, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp, %bb.bp, %bb.bo
  store i16 7, ptr %i.kg, align 4, !tbaa !177
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !121
  switch i32 %i.kn, label %.thread [
    i32 2, label %bb.br
    i32 4, label %bb.bs
    i32 1, label %bb.bt
    i32 3, label %bb.bu
  ]

bb.br:                                            ; preds = %bb.bq
  store i32 1094995778, ptr %i.ki, align 8, !tbaa !179
  store i16 0, ptr %i.kh, align 2, !tbaa !178
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  store i32 1094992453, ptr %i.ki, align 8, !tbaa !179
  store i16 1, ptr %i.kh, align 2, !tbaa !178
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  store i32 1094992451, ptr %i.ki, align 8, !tbaa !179
  store i16 2, ptr %i.kh, align 2, !tbaa !178
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  store i32 1818326065, ptr %i.ki, align 8, !tbaa !179
  store i16 3, ptr %i.kh, align 2, !tbaa !178
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  %.0108.in = phi ptr [ %i.kj, %bb.bu ], [ %i.kf, %bb.br ], [ %i.ko, %bb.bs ], [ %i.kp, %bb.bt ]
  %.0108 = load ptr, ptr %.0108.in, align 8, !tbaa !182 ; 2 uses
  %.not144 = icmp eq ptr %.0108, null
  br i1 %.not144, label %.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kq = call i32 @FT_CMap_New(ptr noundef nonnull %.0108, ptr noundef null, ptr noundef nonnull %8, ptr noundef null) #13
  br label %.thread

.thread:                                          ; preds = %bb.bq, %bb.bv, %bb.bw, %bb.bp
  %.1114 = phi i32 [ %i.kl, %bb.bp ], [ %i.kq, %bb.bw ], [ 0, %bb.bv ], [ 0, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.bx

bb.bx:                                            ; preds = %T42_Open_Face.exit.thread, %T42_Open_Face.exit, %bb.bi, %bb.bn, %bb.a, %bb.av, %.thread
  %.2 = phi i32 [ 0, %T42_Open_Face.exit ], [ 11, %bb.a ], [ %i.ja, %bb.bi ], [ 6, %bb.av ], [ %.1114, %.thread ], [ 0, %bb.bn ], [ %.1.i, %T42_Open_Face.exit.thread ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal void @T42_Face_Done(ptr noundef captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not56 = icmp eq ptr %i.e, null
  br i1 %.not56, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @FT_Done_Face(ptr noundef nonnull %i.e) #13 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !183
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.g) #13
  store ptr null, ptr %i.a, align 8, !tbaa !183
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.i) #13
  store ptr null, ptr %i.h, align 8, !tbaa !184
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !155
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.k) #13
  store ptr null, ptr %i.j, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !152
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.m) #13
  store ptr null, ptr %i.l, align 8, !tbaa !152
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !185
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.o) #13
  store ptr null, ptr %i.n, align 8, !tbaa !185
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !186
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.q) #13
  store ptr null, ptr %i.p, align 8, !tbaa !186
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.s) #13
  store ptr null, ptr %i.r, align 8, !tbaa !187
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !120
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.u) #13
  store ptr null, ptr %i.t, align 8, !tbaa !120
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !116
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.w) #13
end_hunk_1
