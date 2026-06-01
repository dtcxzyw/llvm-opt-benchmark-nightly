inline.NumInlined: 21
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FT_Driver_ClassRec_ = type { %struct.FT_Module_Class_, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Module_Class_ = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr }
%struct.FT_ServiceDescRec_ = type { ptr, ptr }
%struct.FT_Service_BDFRec_ = type { ptr, ptr }
%struct.FT_Service_PropertiesRec_ = type { ptr, ptr }
%struct.FT_CMap_ClassRec_ = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.FT_Frame_Field_ = type { i8, i8, i16 }
%struct.FT_CharMapRec_ = type { ptr, i32, i16, i16 }
%struct.PCF_Compressed_MetricRec_ = type { i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [4 x i8] c"pcf\00", align 1
@pcf_driver_class = hidden local_unnamed_addr constant %struct.FT_Driver_ClassRec_ { %struct.FT_Module_Class_ { i64 513, i64 64, ptr @.str, i64 65536, i64 131072, ptr null, ptr @pcf_driver_init, ptr @pcf_driver_done, ptr @pcf_driver_requester }, i64 568, i64 88, i64 304, ptr @PCF_Face_Init, ptr @PCF_Face_Done, ptr null, ptr null, ptr null, ptr null, ptr @PCF_Glyph_Load, ptr null, ptr null, ptr null, ptr @PCF_Size_Request, ptr @PCF_Size_Select }, align 8
@pcf_services = internal constant [4 x %struct.FT_ServiceDescRec_] [%struct.FT_ServiceDescRec_ { ptr @.str.1, ptr @pcf_service_bdf }, %struct.FT_ServiceDescRec_ { ptr @.str.2, ptr @.str.3 }, %struct.FT_ServiceDescRec_ { ptr @.str.4, ptr @pcf_service_properties }, %struct.FT_ServiceDescRec_ zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"bdf\00", align 1
@pcf_service_bdf = internal constant %struct.FT_Service_BDFRec_ { ptr @pcf_get_charset_id, ptr @pcf_get_bdf_property }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"font-format\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"PCF\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@pcf_service_properties = internal constant %struct.FT_Service_PropertiesRec_ { ptr @pcf_property_set, ptr @pcf_property_get }, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"10646\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"8859\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"646.1991\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"IRV\00", align 1
@pcf_cmap_class = internal constant %struct.FT_CMap_ClassRec_ { i64 32, ptr @pcf_cmap_init, ptr @pcf_cmap_done, ptr @pcf_cmap_char_index, ptr @pcf_cmap_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"FAMILY_NAME\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"AVERAGE_WIDTH\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"POINT_SIZE\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"PIXEL_SIZE\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"RESOLUTION_X\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"RESOLUTION_Y\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"CHARSET_REGISTRY\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"CHARSET_ENCODING\00", align 1
@pcf_toc_header = internal constant [4 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 8 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 8 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@pcf_table_header = internal constant [6 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 16 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 16 }, %struct.FT_Frame_Field_ { i8 18, i8 8, i16 24 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@pcf_property_msb_header = internal constant [5 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 9 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 8 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 16 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@pcf_property_header = internal constant [5 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 9 }, %struct.FT_Frame_Field_ { i8 19, i8 8, i16 0 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 8 }, %struct.FT_Frame_Field_ { i8 19, i8 8, i16 16 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@pcf_accel_msb_header = internal constant [13 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 20 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 0 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 1 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 2 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 3 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 4 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 5 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 6 }, %struct.FT_Frame_Field_ { i8 25, i8 1, i16 0 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 16 }, %struct.FT_Frame_Field_ { i8 17, i8 8, i16 24 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@pcf_accel_header = internal constant [13 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 20 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 0 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 1 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 2 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 3 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 4 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 5 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 6 }, %struct.FT_Frame_Field_ { i8 25, i8 1, i16 0 }, %struct.FT_Frame_Field_ { i8 19, i8 8, i16 8 }, %struct.FT_Frame_Field_ { i8 19, i8 8, i16 16 }, %struct.FT_Frame_Field_ { i8 19, i8 8, i16 24 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@pcf_metric_msb_header = internal constant [8 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 12 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 2 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 4 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 6 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 8 }, %struct.FT_Frame_Field_ { i8 13, i8 2, i16 10 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@pcf_metric_header = internal constant [8 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 12 }, %struct.FT_Frame_Field_ { i8 15, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 15, i8 2, i16 2 }, %struct.FT_Frame_Field_ { i8 15, i8 2, i16 4 }, %struct.FT_Frame_Field_ { i8 15, i8 2, i16 6 }, %struct.FT_Frame_Field_ { i8 15, i8 2, i16 8 }, %struct.FT_Frame_Field_ { i8 15, i8 2, i16 10 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@pcf_compressed_metric_header = internal constant [7 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 5 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 0 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 1 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 2 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 3 }, %struct.FT_Frame_Field_ { i8 8, i8 1, i16 4 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@pcf_enc_msb_header = internal constant [7 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 10 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 2 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 4 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 6 }, %struct.FT_Frame_Field_ { i8 12, i8 2, i16 8 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@pcf_enc_header = internal constant [7 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 10 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 0 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 2 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 4 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 6 }, %struct.FT_Frame_Field_ { i8 14, i8 2, i16 8 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@.str.18 = private unnamed_addr constant [6 x i8] c"SLANT\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Oblique\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"WEIGHT_NAME\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"SETWIDTH_NAME\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"ADD_STYLE_NAME\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"Regular\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @pcf_driver_init(ptr readnone captures(none) %0) #0 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @pcf_driver_done(ptr readnone captures(none) %0) #0 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @pcf_driver_requester(ptr readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call ptr @ft_service_list_lookup(ptr noundef nonnull @pcf_services, ptr noundef %1) #12
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @PCF_Face_Init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr readnone captures(none) %4) #1 {
bb.a:
  %5 = alloca %struct.FT_CharMapRec_, align 8     ; 15 uses
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = tail call fastcc i32 @pcf_load_font(ptr noundef %0, ptr noundef %1, i64 noundef %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @PCF_Face_Done(ptr noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %i.d = tail call i32 @FT_Stream_OpenGzip(ptr noundef nonnull %i.c, ptr noundef %0) #12 ; 2 uses
  %i.e = and i32 %i.d, 255
  %i.f = icmp eq i32 %i.e, 7
  br i1 %i.f, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not68 = icmp eq i32 %i.d, 0
  br i1 %.not68, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @FT_Stream_OpenLZW(ptr noundef nonnull %i.c, ptr noundef %0) #12
  %.not69 = icmp eq i32 %i.g, 0
  br i1 %.not69, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr %0, ptr %i.h, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %i.c, ptr %i.i, align 8, !tbaa !37
  %i.j = tail call fastcc i32 @pcf_load_font(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef %i.a)
  %.not70 = icmp eq i32 %i.j, 0
  br i1 %.not70, label %bb.e, label %bb.q

bb.e:                                             ; preds = %.thread, %bb.a
  %i.k = icmp slt i32 %2, 0
  br i1 %i.k, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %2, 65535
  %.not72 = icmp eq i32 %i.l, 0
  br i1 %.not72, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @PCF_Face_Done(ptr noundef %1)
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 4 uses
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp ne ptr %i.p, null
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.s = load i8, ptr %i.n, align 1, !tbaa !40
  switch i8 %i.s, label %.critedge [
    i8 105, label %bb.j
    i8 73, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40
  switch i8 %i.u, label %.critedge [
    i8 115, label %bb.k
    i8 83, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !40
  switch i8 %i.w, label %.critedge [
    i8 111, label %bb.l
    i8 79, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 3 ; 3 uses
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(6) @.str.5) #13
  %.not73 = icmp eq i32 %i.y, 0
  br i1 %.not73, label %.thread84, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(5) @.str.6) #13
  %.not74 = icmp eq i32 %i.z, 0
  br i1 %.not74, label %sub_0, label %.tail.thread

sub_0:                                            ; preds = %bb.m
  %i.aa = load i8, ptr %i.p, align 1
  %.not87 = icmp eq i8 %i.aa, 49
  br i1 %.not87, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.thread84, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail, %bb.m
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(9) @.str.8) #13
  %.not76 = icmp eq i32 %i.ae, 0
  br i1 %.not76, label %bb.n, label %.critedge

.thread84:                                        ; preds = %bb.l, %.tail
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %1, ptr %5, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i64 0, ptr %i.af, align 8
  br label %bb.o

bb.n:                                             ; preds = %.tail.thread
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(4) @.str.9) #13
  %.not77.not = icmp eq i32 %i.ai, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %1, ptr %5, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i64 0, ptr %i.aj, align 8
  br i1 %.not77.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread84, %bb.n
  %i.am = phi ptr [ %i.ah, %.thread84 ], [ %i.al, %bb.n ]
  %i.an = phi ptr [ %i.ag, %.thread84 ], [ %i.ak, %bb.n ]
  %i.ao = phi ptr [ %i.af, %.thread84 ], [ %i.aj, %bb.n ]
  store i32 1970170211, ptr %i.ao, align 8, !tbaa !44
  store i16 3, ptr %i.an, align 4, !tbaa !45
  store i16 1, ptr %i.am, align 2, !tbaa !46
  br label %bb.p

.critedge:                                        ; preds = %bb.j, %bb.k, %bb.i, %.tail.thread, %bb.h
end_hunk_0
begin_hunk_1_@PCF_Size_Request:bb.a
bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.v = load i64, ptr %i.u, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.x = load i64, ptr %i.w, align 8, !tbaa !96
  %i.y = add nsw i64 %i.x, %i.v
  %i.z = icmp eq i64 %i.n, %i.y
  br i1 %i.z, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.d, %bb.e
  tail call void @FT_Select_Metrics(ptr noundef nonnull %i.a, i64 noundef 0) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !118
  %i.ac = shl nsw i64 %i.ab, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !119
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !120
  %.neg.i = mul i64 %i.af, -64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.neg.i, ptr %i.ag, align 8, !tbaa !121
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 436
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !122
  %i.aj = sext i16 %i.ai to i32
  %i.ak = shl nsw i32 %i.aj, 6
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.al, ptr %i.am, align 8, !tbaa !123
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.016 = phi i32 [ 0, %bb.f ], [ 23, %bb.e ], [ 23, %bb.d ], [ 7, %bb.c ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PCF_Size_Select(ptr noundef captures(none) initializes((48, 64), (72, 80)) %0, i64 noundef %1) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !62     ; 4 uses
  tail call void @FT_Select_Metrics(ptr noundef %i.a, i64 noundef %1) #12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.c = load i64, ptr %i.b, align 8, !tbaa !118
  %i.d = shl nsw i64 %i.c, 6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.d, ptr %i.e, align 8, !tbaa !119
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.g = load i64, ptr %i.f, align 8, !tbaa !120
  %.neg = mul i64 %i.g, -64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.neg, ptr %i.h, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 436
  %i.j = load i16, ptr %i.i, align 4, !tbaa !122
  %i.k = sext i16 %i.j to i32
  %i.l = shl nsw i32 %i.k, 6
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.m, ptr %i.n, align 8, !tbaa !123
  ret i32 0
}

declare hidden ptr @ft_service_list_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @pcf_get_charset_id(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef writeonly captures(none) initializes((0, 8)) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  store ptr %i.b, ptr %1, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  store ptr %i.d, ptr %2, align 8, !tbaa !124
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 7) i32 @pcf_get_bdf_property(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i, label %pcf_find_property.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %1) #13
  %.fr.i = freeze i32 %i.i
  %.not14.i = icmp ne i32 %.fr.i, 0               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.j = icmp samesign ult i64 %indvars.iv.next.i, %i.f
  %or.cond.i = and i1 %i.j, %.not14.i
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !125

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 3 uses
  br i1 %.not14.i, label %pcf_find_property.exit.thread, label %pcf_find_property.exit

pcf_find_property.exit:                           ; preds = %.critedge.i
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !54
  %.not13 = icmp eq i8 %i.m, 0
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %pcf_find_property.exit
  store i32 1, ptr %2, align 8, !tbaa !126
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !40
  br label %pcf_find_property.exit.thread

bb.c:                                             ; preds = %pcf_find_property.exit
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 -8
  store i32 2, ptr %2, align 8, !tbaa !126
  %i.r = load i64, ptr %i.q, align 8, !tbaa !40
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.s, ptr %i.t, align 8, !tbaa !40
  br label %pcf_find_property.exit.thread

pcf_find_property.exit.thread:                    ; preds = %.critedge.i, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 6, %bb.a ], [ 6, %.critedge.i ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @pcf_find_property(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %1) #13
  %.fr = freeze i32 %i.i
  %.not14 = icmp ne i32 %.fr, 0                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.f
  %or.cond = and i1 %i.j, %.not14
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !125

.critedge:                                        ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -24
  br i1 %.not14, label %.critedge.thread, label %bb.b

.critedge.thread:                                 ; preds = %bb.a, %.critedge
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %.critedge.thread
  %i.m = phi ptr [ null, %.critedge.thread ], [ %i.l, %.critedge ]
  ret ptr %i.m
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @pcf_property_set(ptr readnone captures(none) %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2, i8 zeroext %3) #0 {
bb.a:
  ret i32 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @pcf_property_get(ptr readnone captures(none) %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2) #0 {
bb.a:
  ret i32 12
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @pcf_load_font(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 25 uses
  %3 = alloca %struct.PCF_Compressed_MetricRec_, align 1 ; 7 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %i.c = alloca i32, align 4                      ; 28 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %i.e = alloca i32, align 4                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.i = tail call i32 @FT_Stream_Seek(ptr noundef %0, i64 noundef 0) #12
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.b, label %pcf_read_TOC.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @FT_Stream_ReadFields(ptr noundef %0, ptr noundef nonnull @pcf_toc_header, ptr noundef nonnull %i.h) #12 ; 2 uses
  store i32 %i.j, ptr %i.d, align 4, !tbaa !3
  %.not100.i = icmp eq i32 %i.j, 0
  br i1 %.not100.i, label %bb.c, label %pcf_read_TOC.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.h, align 8, !tbaa !128
  %.not101.i = icmp eq i64 %i.k, 1885562369
  br i1 %.not101.i, label %bb.d, label %pcf_read_TOC.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 9 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !129  ; 4 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %pcf_read_TOC.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !130  ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  br i1 %i.q, label %pcf_read_TOC.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = lshr i64 %i.p, 4                         ; 2 uses
  %i.s = icmp ugt i64 %i.m, %i.r
  %i.t = icmp ugt i64 %i.m, 9
  %or.cond.i = or i1 %i.t, %i.s
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = icmp ult i64 %i.p, 144
  %spec.select.i = select i1 %i.u, i64 %i.r, i64 9 ; 2 uses
  store i64 %spec.select.i, ptr %i.l, align 8, !tbaa !129
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = phi i64 [ %i.m, %bb.f ], [ %spec.select.i, %bb.g ]
  %i.w = call ptr @ft_mem_qrealloc(ptr noundef %i.g, i64 noundef 32, i64 noundef 0, i64 noundef %i.v, ptr noundef null, ptr noundef nonnull %i.d) #12 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 8 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !58
  %i.y = load i32, ptr %i.d, align 4, !tbaa !3
  %.not102.i = icmp eq i32 %i.y, 0
  br i1 %.not102.i, label %.preheader111.i, label %pcf_read_TOC.exit.thread

.preheader111.i:                                  ; preds = %bb.h
  %i.z = load i64, ptr %i.l, align 8, !tbaa !129
  %.not127.i = icmp eq i64 %i.z, 0
  br i1 %.not127.i, label %.preheader.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader111.i, %bb.i
  %.083115.i = phi i32 [ %i.ac, %bb.i ], [ 0, %.preheader111.i ]
  %.085114.i = phi ptr [ %i.ab, %bb.i ], [ %i.w, %.preheader111.i ] ; 2 uses
  %i.aa = call i32 @FT_Stream_ReadFields(ptr noundef %0, ptr noundef nonnull @pcf_table_header, ptr noundef %.085114.i) #12 ; 2 uses
  store i32 %i.aa, ptr %i.d, align 4, !tbaa !3
  %.not104.i = icmp eq i32 %i.aa, 0
  br i1 %.not104.i, label %bb.i, label %pcf_read_TOC.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.085114.i, i64 32
  %i.ac = add i32 %.083115.i, 1                   ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !129 ; 3 uses
  %i.af = icmp ugt i64 %i.ae, %i.ad
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !131

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !58 ; 3 uses
  %.not128.i = icmp eq i64 %i.ae, 1
  br i1 %.not128.i, label %.thread109.thread.i, label %.preheader.preheader.i

.thread109.thread.i:                              ; preds = %._crit_edge.i
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !130
  br label %._crit_edge125.i

.preheader.preheader.i:                           ; preds = %._crit_edge.i, %.preheader111.i
  %i.ah = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.w, %.preheader111.i ] ; 3 uses
  %i.ai = phi i64 [ %i.ae, %._crit_edge.i ], [ 0, %.preheader111.i ]
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  br label %.preheader.i

bb.j:                                             ; preds = %._crit_edge119.i
  %i.aj = add i32 %.184120.i, 1                   ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = add i64 %i.bh, -1
  %i.am = icmp ugt i64 %i.al, %i.ak
  br i1 %i.am, label %.preheader.i, label %.thread109.i, !llvm.loop !132

.preheader.i:                                     ; preds = %bb.j, %.preheader.preheader.i
  %i.an = phi i64 [ %i.bh, %bb.j ], [ %i.ai, %.preheader.preheader.i ] ; 2 uses
  %i.ao = phi i64 [ %i.ak, %bb.j ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %.184120.i = phi i32 [ %i.aj, %bb.j ], [ 0, %.preheader.preheader.i ]
  %.neg.i = add nuw nsw i64 %i.ao, 1
  %i.ap = xor i64 %i.ao, -1
  %.not129.i = icmp eq i64 %i.an, %.neg.i
  br i1 %.not129.i, label %.thread109.i, label %.lr.ph118.preheader.i

.lr.ph118.preheader.i:                            ; preds = %.preheader.i
  %.pre134.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !133
  br label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %bb.n, %.lr.ph118.preheader.i
  %i.aq = phi i64 [ %i.ba, %bb.n ], [ %.pre134.i, %.lr.ph118.preheader.i ]
  %i.ar = phi i64 [ %i.av, %bb.n ], [ 0, %.lr.ph118.preheader.i ]
  %.0117.i = phi i32 [ %.1.i, %bb.n ], [ 0, %.lr.ph118.preheader.i ]
  %.079116.i = phi i32 [ %i.au, %bb.n ], [ 0, %.lr.ph118.preheader.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ar ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = add i32 %.079116.i, 1                   ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !133 ; 2 uses
  %i.az = icmp ugt i64 %i.aq, %i.ay
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph118.i
  %.sroa.0.0.copyload = load <4 x i64>, ptr %i.as, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false), !tbaa.struct !135
  store <4 x i64> %.sroa.0.0.copyload, ptr %i.aw, align 8
  %.pre132.i = load i64, ptr %i.ax, align 8, !tbaa !133
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph118.i
  %i.ba = phi i64 [ %.pre132.i, %bb.k ], [ %i.ay, %.lr.ph118.i ] ; 3 uses
  %.1.i = phi i32 [ 1, %bb.k ], [ %.0117.i, %.lr.ph118.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !136 ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, %i.ba
  br i1 %i.bd, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i64, ptr %i.at, align 8, !tbaa !133
  %i.bf = sub nuw i64 %i.ba, %i.bc
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load i64, ptr %i.l, align 8, !tbaa !129 ; 5 uses
  %i.bi = add i64 %i.bh, %i.ap
  %i.bj = icmp ugt i64 %i.bi, %i.av
  br i1 %i.bj, label %.lr.ph118.i, label %._crit_edge119.i, !llvm.loop !137

._crit_edge119.i:                                 ; preds = %bb.n
  %i.bk = icmp eq i32 %.1.i, 0
  br i1 %i.bk, label %.thread109.i, label %bb.j

bb.o:                                             ; preds = %bb.m, %bb.l
  store i32 9, ptr %i.d, align 4, !tbaa !3
  br label %pcf_read_TOC.exit

.thread109.i:                                     ; preds = %._crit_edge119.i, %.preheader.i, %bb.j
  %i.bl = phi i64 [ %i.bh, %bb.j ], [ %i.bh, %._crit_edge119.i ], [ %i.an, %.preheader.i ]
  %.pre133.i = load ptr, ptr %i.x, align 8, !tbaa !58 ; 4 uses
  %i.bm = add i64 %i.bl, -1                       ; 2 uses
  %i.bn = load i64, ptr %i.o, align 8, !tbaa !130 ; 4 uses
  %.not130.i = icmp eq i64 %i.bm, 0
  br i1 %.not130.i, label %._crit_edge125.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %.thread109.i, %bb.r
  %.2123.i = phi i32 [ %i.bw, %bb.r ], [ 0, %.thread109.i ]
  %.186122.i = phi ptr [ %i.bv, %bb.r ], [ %.pre133.i, %.thread109.i ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.186122.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !136 ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, %i.bn
  br i1 %i.bq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph124.i
  %i.br = getelementptr inbounds nuw i8, ptr %.186122.i, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !133
  %i.bt = sub nuw i64 %i.bn, %i.bp
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.lr.ph124.i
  store i32 8, ptr %i.d, align 4, !tbaa !3
  br label %pcf_read_TOC.exit

bb.r:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.186122.i, i64 32 ; 2 uses
  %i.bw = add i32 %.2123.i, 1                     ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp ugt i64 %i.bm, %i.bx
  br i1 %i.by, label %.lr.ph124.i, label %._crit_edge125.i, !llvm.loop !138

._crit_edge125.i:                                 ; preds = %bb.r, %.thread109.i, %.thread109.thread.i
  %i.bz = phi ptr [ %.pre133.i, %.thread109.i ], [ %.pre.i, %.thread109.thread.i ], [ %.pre133.i, %bb.r ]
  %i.ca = phi i64 [ %i.bn, %.thread109.i ], [ %i.ag, %.thread109.thread.i ], [ %i.bn, %bb.r ] ; 2 uses
  %.186.lcssa.i = phi ptr [ %.pre133.i, %.thread109.i ], [ %.pre.i, %.thread109.thread.i ], [ %i.bv, %bb.r ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.186.lcssa.i, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !133 ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge125.i
  store i32 8, ptr %i.d, align 4, !tbaa !3
  br label %pcf_read_TOC.exit

bb.t:                                             ; preds = %._crit_edge125.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.186.lcssa.i, i64 16 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !136
  %i.cg = sub nuw i64 %i.ca, %i.cc                ; 2 uses
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.u, label %pcf_read_TOC.exit.thread237

bb.u:                                             ; preds = %bb.t
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !136
  br label %pcf_read_TOC.exit.thread237

pcf_read_TOC.exit.thread:                         ; preds = %bb.d, %bb.a, %bb.c, %bb.e, %bb.h, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.thread266

pcf_read_TOC.exit.thread237:                      ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.e, align 4, !tbaa !3
  br label %bb.v

pcf_read_TOC.exit:                                ; preds = %.lr.ph.i, %bb.o, %bb.q, %bb.s
  %i.ci = load ptr, ptr %i.x, align 8, !tbaa !58
  call void @ft_mem_free(ptr noundef %i.g, ptr noundef %i.ci) #12
  store ptr null, ptr %i.x, align 8, !tbaa !58
  %i.cj = load i32, ptr %i.d, align 4, !tbaa !3   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  store i32 %i.cj, ptr %i.e, align 4, !tbaa !3
  %.not = icmp eq i32 %i.cj, 0
  br i1 %.not, label %bb.v, label %.thread266

bb.v:                                             ; preds = %pcf_read_TOC.exit.thread237, %pcf_read_TOC.exit
  %i.ck = phi ptr [ %i.bz, %pcf_read_TOC.exit.thread237 ], [ null, %pcf_read_TOC.exit ]
  store i64 1, ptr %1, align 8, !tbaa !139
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.cl, align 8, !tbaa !140
  %i.cm = icmp slt i64 %2, 0
  br i1 %i.cm, label %bb.du, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.cn = load ptr, ptr %i.f, align 8, !tbaa !47  ; 7 uses
  %i.co = load i64, ptr %i.l, align 8, !tbaa !141 ; 2 uses
  %.not26.i.i = icmp eq i64 %i.co, 0
  br i1 %.not26.i.i, label %.thread127.sink.split.i, label %.lr.ph.i.i

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.cp = add nuw i64 %.025.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cp, %i.co
  br i1 %exitcond.not.i.i, label %.thread127.sink.split.i, label %.lr.ph.i.i, !llvm.loop !142

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.x
  %.025.i.i = phi i64 [ %i.cp, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %.025.i.i ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !143
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !144 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !133 ; 2 uses
  %i.cx = icmp ugt i64 %i.cu, %i.cw
  br i1 %i.cx, label %.thread127.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = sub nuw i64 %i.cw, %i.cu
  %i.cz = call i32 @FT_Stream_Skip(ptr noundef nonnull %0, i64 noundef %i.cy) #12
  %.not.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i, label %bb.aa, label %.thread127.sink.split.i

bb.aa:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !136 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !3
  %i.dc = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !3
  %.not96.i = icmp eq i32 %i.dd, 0
  %i.de = icmp ult i32 %i.dc, 256
  %or.cond.i194 = select i1 %.not96.i, i1 %i.de, i1 false
  br i1 %or.cond.i194, label %bb.ab, label %pcf_get_properties.exit

bb.ab:                                            ; preds = %bb.aa
  %i.df = and i32 %i.dc, 4
  %.not97.i = icmp eq i32 %i.df, 0                ; 3 uses
  br i1 %.not97.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dh = call i32 @FT_Stream_ReadULongLE(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.091.in.i = phi i32 [ %i.dg, %bb.ac ], [ %i.dh, %bb.ad ] ; 3 uses
  %.091.i = zext i32 %.091.in.i to i64            ; 4 uses
  %i.di = load i32, ptr %i.c, align 4, !tbaa !3
  %.not98.i = icmp eq i32 %i.di, 0
  br i1 %.not98.i, label %bb.af, label %pcf_get_properties.exit

bb.af:                                            ; preds = %bb.ae
  %i.dj = udiv i64 %i.db, 9
  %i.dk = icmp samesign ult i64 %i.dj, %.091.i
  br i1 %i.dk, label %.thread127.sink.split.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %..091131.i = call i32 @llvm.umin.i32(i32 %.091.in.i, i32 256) ; 2 uses
  %..091.i = zext nneg i32 %..091131.i to i64     ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i32 %..091131.i, ptr %i.dl, align 8, !tbaa !51
  %i.dm = call ptr @ft_mem_qrealloc(ptr noundef %i.cn, i64 noundef 24, i64 noundef 0, i64 noundef %..091.i, ptr noundef null, ptr noundef nonnull %i.c) #12 ; 19 uses
  %i.dn = load i32, ptr %i.c, align 4, !tbaa !3
  %.not99.i = icmp eq i32 %i.dn, 0
  br i1 %.not99.i, label %.preheader.i195, label %pcf_get_properties.exit

.preheader.i195:                                  ; preds = %bb.ag
  %.not.i196 = icmp eq i32 %.091.in.i, 0          ; 2 uses
  br i1 %.not.i196, label %._crit_edge.i198, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %.preheader.i195
  br i1 %.not97.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i197, %bb.ah
  %.089134.us.i = phi i64 [ %i.dq, %bb.ah ], [ 0, %.lr.ph.i197 ] ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %.089134.us.i
  %i.dp = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %0, ptr noundef nonnull @pcf_property_header, ptr noundef %i.do) #12 ; 2 uses
  store i32 %i.dp, ptr %i.c, align 4, !tbaa !3
  %.not112.us.i = icmp eq i32 %i.dp, 0
  br i1 %.not112.us.i, label %bb.ah, label %pcf_get_properties.exit

bb.ah:                                            ; preds = %.lr.ph.split.us.i
  %i.dq = add nuw nsw i64 %.089134.us.i, 1        ; 2 uses
  %exitcond144.not.i = icmp eq i64 %i.dq, %..091.i
  br i1 %exitcond144.not.i, label %._crit_edge.i198, label %.lr.ph.split.us.i, !llvm.loop !145

.lr.ph.split.i:                                   ; preds = %.lr.ph.i197, %bb.ai
  %.089134.i = phi i64 [ %i.dt, %bb.ai ], [ 0, %.lr.ph.i197 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %.089134.i
  %i.ds = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %0, ptr noundef nonnull @pcf_property_msb_header, ptr noundef %i.dr) #12 ; 2 uses
  store i32 %i.ds, ptr %i.c, align 4, !tbaa !3
  %.not113.i = icmp eq i32 %i.ds, 0
  br i1 %.not113.i, label %bb.ai, label %pcf_get_properties.exit

bb.ai:                                            ; preds = %.lr.ph.split.i
  %i.dt = add nuw nsw i64 %.089134.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dt, %..091.i
  br i1 %exitcond.not.i, label %._crit_edge.i198, label %.lr.ph.split.i, !llvm.loop !145

._crit_edge.i198:                                 ; preds = %bb.ai, %bb.ah, %.preheader.i195
end_hunk_1
