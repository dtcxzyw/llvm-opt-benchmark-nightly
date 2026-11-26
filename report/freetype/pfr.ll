Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/pfr?download=true
inline.NumInlined: 33
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0
%struct.FT_CharMapRec_ = type { ptr, i32, i16, i16 }
%struct.FT_BBox_ = type { i64, i64, i64, i64 }
%struct.FT_Vector_ = type { i64, i64 }

@pfr_cmap_class_rec = hidden constant %struct.FT_CMap_ClassRec_ { i64 40, ptr @pfr_cmap_init, ptr @pfr_cmap_done, ptr @pfr_cmap_char_index, ptr @pfr_cmap_char_next, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"pfr\00", align 1
@pfr_driver_class = hidden local_unnamed_addr constant %struct.FT_Driver_ClassRec_ { %struct.FT_Module_Class_ { i64 257, i64 56, ptr @.str, i64 65536, i64 131072, ptr null, ptr null, ptr null, ptr @pfr_get_service }, i64 648, i64 88, i64 360, ptr @pfr_face_init, ptr @pfr_face_done, ptr null, ptr null, ptr @pfr_slot_init, ptr @pfr_slot_done, ptr @pfr_slot_load, ptr @pfr_get_kerning, ptr null, ptr null, ptr null, ptr null }, align 8
@pfr_services = internal constant [3 x %struct.FT_ServiceDescRec_] [%struct.FT_ServiceDescRec_ { ptr @.str.1, ptr @pfr_metrics_service_rec }, %struct.FT_ServiceDescRec_ { ptr @.str.2, ptr @.str.3 }, %struct.FT_ServiceDescRec_ zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [12 x i8] c"pfr-metrics\00", align 1
@pfr_metrics_service_rec = internal constant %struct.FT_Service_PfrMetricsRec_ { ptr @pfr_get_metrics, ptr @pfr_face_get_kerning, ptr @pfr_get_advance }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"font-format\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"PFR\00", align 1
@pfr_header_fields = internal constant [29 x %struct.FT_Frame_Field_] [%struct.FT_Frame_Field_ { i8 4, i8 0, i16 58 }, %struct.FT_Frame_Field_ { i8 16, i8 4, i16 0 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 4 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 8 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 12 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 16 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 20 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 24 }, %struct.FT_Frame_Field_ { i8 20, i8 4, i16 28 }, %struct.FT_Frame_Field_ { i8 20, i8 4, i16 32 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 36 }, %struct.FT_Frame_Field_ { i8 20, i8 4, i16 40 }, %struct.FT_Frame_Field_ { i8 20, i8 4, i16 44 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 48 }, %struct.FT_Frame_Field_ { i8 20, i8 4, i16 52 }, %struct.FT_Frame_Field_ { i8 20, i8 4, i16 56 }, %struct.FT_Frame_Field_ { i8 8, i8 4, i16 60 }, %struct.FT_Frame_Field_ { i8 8, i8 4, i16 64 }, %struct.FT_Frame_Field_ { i8 8, i8 4, i16 68 }, %struct.FT_Frame_Field_ { i8 8, i8 4, i16 72 }, %struct.FT_Frame_Field_ { i8 8, i8 4, i16 76 }, %struct.FT_Frame_Field_ { i8 20, i8 4, i16 80 }, %struct.FT_Frame_Field_ { i8 20, i8 4, i16 84 }, %struct.FT_Frame_Field_ { i8 20, i8 4, i16 88 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 92 }, %struct.FT_Frame_Field_ { i8 8, i8 4, i16 96 }, %struct.FT_Frame_Field_ { i8 8, i8 4, i16 100 }, %struct.FT_Frame_Field_ { i8 12, i8 4, i16 104 }, %struct.FT_Frame_Field_ zeroinitializer], align 16
@pfr_phy_font_extra_items = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @pfr_extra_item_load_bitmap_info }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @pfr_extra_item_load_font_id }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @pfr_extra_item_load_stem_snaps }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @pfr_extra_item_load_kerning_pairs }, { i32, [4 x i8], ptr } zeroinitializer], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 9) i32 @pfr_cmap_init(ptr nofree noundef captures(none) initializes((24, 28), (32, 40)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !139    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.c, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.g, align 8, !tbaa !46
  %i.h = icmp ugt i32 %i.c, 1
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.c to i64
  %.pre = load i32, ptr %i.f, align 4, !tbaa !48
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !138

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.i = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.k, %bb.b ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !48   ; 2 uses
  %.not = icmp ult i32 %i.i, %i.k
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 8, %.lr.ph ]
  ret i32 %.017
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @pfr_cmap_done(ptr nofree noundef writeonly captures(none) initializes((24, 28), (32, 40)) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !44
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @pfr_cmap_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %.not38 = icmp eq i32 %i.b, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = lshr i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.037 = phi i32 [ %i.c, %.lr.ph ], [ %.1, %bb.d ] ; 5 uses
  %.02636 = phi i32 [ %i.b, %.lr.ph ], [ %.127, %bb.d ]
  %.02835 = phi i32 [ 0, %.lr.ph ], [ %.129, %bb.d ]
  %i.f = zext i32 %.037 to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48   ; 3 uses
  %i.i = icmp eq i32 %i.h, %1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = add i32 %.037, 1
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %i.h, %1                    ; 2 uses
  %i.l = add i32 %.037, 1
  %.129 = select i1 %i.k, i32 %i.l, i32 %.02835   ; 5 uses
  %.127 = select i1 %i.k, i32 %.02636, i32 %.037  ; 4 uses
  %i.m = sub i32 %1, %i.h
  %i.n = add i32 %i.m, %.037                      ; 3 uses
  %.not = icmp uge i32 %i.n, %.127
  %i.o = icmp ult i32 %i.n, %.129
  %or.cond = or i1 %.not, %i.o
  %i.p = sub i32 %.127, %.129
  %i.q = lshr i32 %i.p, 1
  %i.r = add i32 %i.q, %.129
  %.1 = select i1 %or.cond, i32 %i.r, i32 %i.n
  %i.s = icmp ult i32 %.129, %.127
  br i1 %i.s, label %bb.b, label %.loopexit, !llvm.loop !140

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.c
  %.030 = phi i32 [ %i.j, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.030
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 2, 1) i32 @pfr_cmap_char_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44   ; 4 uses
  %i.c = lshr i32 %i.b, 1
  %.not74 = icmp eq i32 %i.b, 0
  br i1 %.not74, label %._crit_edge.thread, label %.split

.split:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %1, align 4, !tbaa !50
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !46
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.split
  %.047.in = phi i32 [ %i.e, %.split ], [ %.047, %bb.c ]
  %.047 = add i32 %.047.in, 1                     ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.04269 = phi i32 [ %i.c, %.lr.ph ], [ %.1, %bb.e ] ; 6 uses
  %.04368 = phi i32 [ %i.b, %.lr.ph ], [ %.144, %bb.e ]
  %.04567 = phi i32 [ 0, %.lr.ph ], [ %.146, %bb.e ]
  %i.g = zext i32 %.04269 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !48   ; 3 uses
  %i.j = icmp eq i32 %i.i, %.047
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not56 = icmp eq i32 %.04269, 0
  br i1 %.not56, label %.lr.ph, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %.04269, 1
  br label %._crit_edge.thread

bb.e:                                             ; preds = %bb.b
  %i.l = icmp ult i32 %i.i, %.047                 ; 2 uses
  %i.m = add i32 %.04269, 1
  %.146 = select i1 %i.l, i32 %i.m, i32 %.04567   ; 9 uses
  %.144 = select i1 %i.l, i32 %.04368, i32 %.04269 ; 4 uses
  %i.n = sub i32 %.047, %i.i
  %i.o = add i32 %i.n, %.04269                    ; 3 uses
  %.not55 = icmp uge i32 %i.o, %.144
  %i.p = icmp ult i32 %i.o, %.146
  %or.cond = or i1 %.not55, %i.p
  %i.q = sub i32 %.144, %.146
  %i.r = lshr i32 %i.q, 1
  %i.s = add i32 %i.r, %.146
  %.1 = select i1 %or.cond, i32 %i.s, i32 %i.o
  %i.t = icmp ult i32 %.146, %.144
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %bb.e
  %i.u = icmp uge i32 %.146, %i.b
  %.not = icmp eq i32 %.146, 0
  %or.cond62 = or i1 %i.u, %.not
  br i1 %or.cond62, label %._crit_edge.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = zext i32 %.146 to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.x
  %i.z = add nuw i32 %.146, 1
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !48
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %bb.f, %._crit_edge
  %.251.ph = phi i32 [ 0, %._crit_edge ], [ %i.k, %bb.d ], [ %i.z, %bb.f ], [ 0, %bb.a ]
  %.2.ph = phi i32 [ 0, %._crit_edge ], [ %.047, %bb.d ], [ %i.aa, %bb.f ], [ 0, %bb.a ]
  store i32 %.2.ph, ptr %1, align 4, !tbaa !50
  ret i32 %.251.ph
}

; Function Attrs: nounwind uwtable
define internal ptr @pfr_get_service(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = tail call ptr @ft_service_list_lookup(ptr noundef nonnull @pfr_services, ptr noundef %1) #12
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @pfr_face_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca i32, align 4                      ; 17 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %5 = alloca %struct.FT_CharMapRec_, align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.g = tail call i32 @FT_Stream_Seek(ptr noundef %0, i64 noundef 0) #12
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.b, label %.critedge154

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @FT_Stream_ReadFields(ptr noundef %0, ptr noundef nonnull @pfr_header_fields, ptr noundef nonnull %i.f) #12
  %.not7.i = icmp eq i32 %i.h, 0
  br i1 %.not7.i, label %bb.c, label %.critedge154

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !148
  %i.k = shl i32 %i.j, 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 284 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !149
  %i.n = add i32 %i.m, %i.k
  store i32 %i.n, ptr %i.l, align 4, !tbaa !149
  %i.o = load i32, ptr %i.f, align 4, !tbaa !150
  %.not.i155 = icmp eq i32 %i.o, 1346785840
  br i1 %.not.i155, label %bb.d, label %.critedge154

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 252
  %i.q = load i32, ptr %i.p, align 4, !tbaa !151
  %i.r = icmp ugt i32 %i.q, 4
  br i1 %i.r, label %.critedge154, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.t = load i32, ptr %i.s, align 4, !tbaa !152
  %i.u = icmp ult i32 %i.t, 58
  br i1 %i.u, label %.critedge154, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.w = load i32, ptr %i.v, align 4, !tbaa !153
  %.not4.i = icmp eq i32 %i.w, 3338
  br i1 %.not4.i, label %pfr_header_check.exit, label %.critedge154

pfr_header_check.exit:                            ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 268 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = tail call i32 @FT_Stream_Seek(ptr noundef %0, i64 noundef %i.z) #12 ; 3 uses
  store i32 %i.aa, ptr %i.d, align 4, !tbaa !50
  %.not.i157 = icmp eq i32 %i.aa, 0
  br i1 %.not.i157, label %bb.g, label %.thread

bb.g:                                             ; preds = %pfr_header_check.exit
  %i.ab = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef %0, ptr noundef nonnull %i.d) #12 ; 3 uses
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = load i32, ptr %i.d, align 4, !tbaa !50  ; 2 uses
  %.not12.i = icmp eq i32 %i.ad, 0
  br i1 %.not12.i, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp ugt i16 %i.ab, 13106
  br i1 %i.ae, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = mul nuw nsw i32 %i.ac, 5
  %i.ag = add nuw nsw i32 %i.af, 2
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !155 ; 2 uses
  %i.ak = sub i64 %i.aj, %i.z
  %.not13.i = icmp ugt i64 %i.ak, %i.ah
  br i1 %.not13.i, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.al = mul nuw nsw i32 %i.ac, 23
  %i.am = add nuw nsw i32 %i.al, 95
  %i.an = zext nneg i32 %i.am to i64
  %.not14.i = icmp ugt i64 %i.aj, %i.an
  br i1 %.not14.i, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.j, %bb.g, %pfr_header_check.exit
  %.ph = phi i32 [ 8, %bb.i ], [ 8, %bb.h ], [ 8, %bb.j ], [ %i.ad, %bb.g ], [ %i.aa, %pfr_header_check.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.critedge154

bb.k:                                             ; preds = %bb.j
  %i.ao = zext nneg i16 %i.ab to i64              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.e, align 4, !tbaa !50
  store i64 %i.ao, ptr %1, align 8, !tbaa !156
  %i.ap = icmp slt i32 %2, 0
  br i1 %i.ap, label %.critedge154, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = and i32 %2, 65535                       ; 3 uses
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %.not138 = icmp samesign ugt i64 %i.ao, %i.ar
  br i1 %.not138, label %bb.m, label %.critedge154

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.at = load i32, ptr %i.x, align 4, !tbaa !154
  %i.au = load i32, ptr %i.i, align 8, !tbaa !157
  %.not = icmp eq i32 %i.au, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.av = zext i32 %i.at to i64
  %i.aw = call i32 @FT_Stream_Seek(ptr noundef nonnull %0, i64 noundef %i.av) #12 ; 3 uses
  store i32 %i.aw, ptr %i.c, align 4, !tbaa !50
  %.not.i159 = icmp eq i32 %i.aw, 0
  br i1 %.not.i159, label %bb.n, label %pfr_log_font_load.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ax = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !50  ; 2 uses
  %.not59.i = icmp eq i32 %i.ay, 0
  br i1 %.not59.i, label %bb.o, label %pfr_log_font_load.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.az = zext i16 %i.ax to i32
  %.not60.i = icmp samesign ult i32 %i.aq, %i.az
  br i1 %.not60.i, label %bb.p, label %pfr_log_font_load.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ba = mul nuw nsw i32 %i.aq, 5
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = call i32 @FT_Stream_Skip(ptr noundef nonnull %0, i64 noundef %i.bb) #12 ; 3 uses
  store i32 %i.bc, ptr %i.c, align 4, !tbaa !50
  %.not61.i = icmp eq i32 %i.bc, 0
  br i1 %.not61.i, label %bb.q, label %pfr_log_font_load.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bd = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12 ; 3 uses
  %i.be = zext i16 %i.bd to i32
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !50  ; 2 uses
  %.not62.i = icmp eq i32 %i.bf, 0
  br i1 %.not62.i, label %bb.r, label %pfr_log_font_load.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bg = call i64 @FT_Stream_ReadUOffset(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !50  ; 2 uses
  %.not63.i = icmp eq i32 %i.bh, 0
  br i1 %.not63.i, label %bb.s, label %pfr_log_font_load.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bi = trunc i64 %i.bg to i32
  store i32 %i.be, ptr %i.as, align 4, !tbaa !158
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !159
  %i.bk = and i64 %i.bg, 4294967295
  %i.bl = call i32 @FT_Stream_Seek(ptr noundef nonnull %0, i64 noundef %i.bk) #12 ; 3 uses
  store i32 %i.bl, ptr %i.c, align 4, !tbaa !50
  %.not64.i = icmp eq i32 %i.bl, 0
  br i1 %.not64.i, label %bb.t, label %pfr_log_font_load.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bm = zext i16 %i.bd to i64                   ; 3 uses
  %i.bn = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %0, i64 noundef %i.bm) #12 ; 3 uses
  store i32 %i.bn, ptr %i.c, align 4, !tbaa !50
  %.not65.i = icmp eq i32 %i.bn, 0
  br i1 %.not65.i, label %bb.u, label %pfr_log_font_load.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !52 ; 18 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bm ; 5 uses
  %i.br = icmp ult i16 %i.bd, 13
  br i1 %i.br, label %bb.ar, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 3
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !53
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw i32 %i.bu, 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !53
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 16
  %i.ca = or disjoint i32 %i.bz, %i.bv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !53
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 8
  %i.cf = or disjoint i32 %i.ca, %i.ce
  %i.cg = ashr exact i32 %i.cf, 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 364
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !50
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 6
  %i.cj = load i8, ptr %i.bs, align 1, !tbaa !53
  %i.ck = zext i8 %i.cj to i32
  %i.cl = shl nuw i32 %i.ck, 24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !53
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 16
  %i.cq = or disjoint i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 5
end_hunk_0
begin_hunk_1_@pfr_face_init:bb.a

pfr_log_font_load.exit.thread:                    ; preds = %bb.o, %bb.t, %bb.s, %bb.p, %bb.q, %bb.r, %bb.m, %bb.n
  %.055.i.ph = phi i32 [ %i.ay, %bb.n ], [ %i.aw, %bb.m ], [ %i.bh, %bb.r ], [ %i.bf, %bb.q ], [ %i.bc, %bb.p ], [ %i.bl, %bb.s ], [ %i.bn, %bb.t ], [ 6, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.critedge154

pfr_log_font_load.exit:                           ; preds = %pfr_extra_items_skip.exit.thread.i, %bb.ao, %bb.aq, %bb.ar
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %0) #12
  %.pre.i = load i32, ptr %i.c, align 4, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  store i32 %.pre.i, ptr %i.e, align 4, !tbaa !50
  %.not139 = icmp eq i32 %.pre.i, 0
  br i1 %.not139, label %bb.as, label %.critedge154

bb.as:                                            ; preds = %pfr_log_font_load.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !165 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !166 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !167 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr %i.ig, ptr %i.ia, align 8, !tbaa !54
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i32 %i.ic, ptr %i.ih, align 8, !tbaa !55
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 616 ; 2 uses
  store ptr null, ptr %i.ii, align 8, !tbaa !56
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 624
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !57
  %i.ik = zext i32 %i.ic to i64                   ; 2 uses
  %i.il = call i32 @FT_Stream_Seek(ptr noundef nonnull %0, i64 noundef %i.ik) #12 ; 2 uses
  %.not.i162 = icmp eq i32 %i.il, 0
  br i1 %.not.i162, label %bb.at, label %pfr_phy_font_load.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.im = zext i32 %i.ie to i64                   ; 2 uses
  %i.in = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %0, i64 noundef %i.im) #12 ; 3 uses
  store i32 %i.in, ptr %i.a, align 4, !tbaa !50
  %.not158.i = icmp eq i32 %i.in, 0
  br i1 %.not158.i, label %bb.au, label %pfr_phy_font_load.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.io = load ptr, ptr %i.bo, align 8, !tbaa !52 ; 20 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 2 uses
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !58
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.im ; 7 uses
  %i.ir = icmp ult i32 %i.ie, 15
  br i1 %i.ir, label %.thread195.sink.split.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.it = load i8, ptr %i.io, align 1, !tbaa !53
  %i.iu = zext i8 %i.it to i32
  %i.iv = shl nuw nsw i32 %i.iu, 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !53
  %i.iy = zext i8 %i.ix to i32
  %i.iz = or disjoint i32 %i.iv, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 420
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !168
  %i.jb = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.jc = load i8, ptr %i.is, align 1, !tbaa !53
  %i.jd = zext i8 %i.jc to i32
  %i.je = shl nuw nsw i32 %i.jd, 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.io, i64 3
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !53
  %i.jh = zext i8 %i.jg to i32
  %i.ji = or disjoint i32 %i.je, %i.jh            ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i32 %i.ji, ptr %i.jj, align 8, !tbaa !59
  %i.jk = getelementptr inbounds nuw i8, ptr %i.io, i64 6
  %i.jl = load i8, ptr %i.jb, align 1, !tbaa !53
  %i.jm = zext i8 %i.jl to i32
  %i.jn = shl nuw nsw i32 %i.jm, 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.io, i64 5
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !53
  %i.jq = zext i8 %i.jp to i32
  %i.jr = or disjoint i32 %i.jn, %i.jq            ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 428
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !60
  %i.jt = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.ju = load i8, ptr %i.jk, align 1, !tbaa !53
  %i.jv = zext i8 %i.ju to i16
  %i.jw = shl nuw i16 %i.jv, 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.io, i64 7
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !53
  %i.jz = zext i8 %i.jy to i16
  %i.ka = or disjoint i16 %i.jw, %i.jz
  %i.kb = sext i16 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 432
  store i64 %i.kb, ptr %i.kc, align 8, !tbaa !169
  %i.kd = getelementptr inbounds nuw i8, ptr %i.io, i64 10
  %i.ke = load i8, ptr %i.jt, align 1, !tbaa !53
  %i.kf = zext i8 %i.ke to i16
  %i.kg = shl nuw i16 %i.kf, 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.io, i64 9
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !53
  %i.kj = zext i8 %i.ki to i16
  %i.kk = or disjoint i16 %i.kg, %i.kj
  %i.kl = sext i16 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 440
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !170
  %i.kn = getelementptr inbounds nuw i8, ptr %i.io, i64 12
  %i.ko = load i8, ptr %i.kd, align 1, !tbaa !53
  %i.kp = zext i8 %i.ko to i16
  %i.kq = shl nuw i16 %i.kp, 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.io, i64 11
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !53
  %i.kt = zext i8 %i.ks to i16
  %i.ku = or disjoint i16 %i.kq, %i.kt
  %i.kv = sext i16 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 448
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !171
  %i.kx = getelementptr inbounds nuw i8, ptr %i.io, i64 14
  %i.ky = load i8, ptr %i.kn, align 1, !tbaa !53
  %i.kz = zext i8 %i.ky to i16
  %i.la = shl nuw i16 %i.kz, 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.io, i64 13
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !53
  %i.ld = zext i8 %i.lc to i16
  %i.le = or disjoint i16 %i.la, %i.ld
  %i.lf = sext i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 456
  store i64 %i.lf, ptr %i.lg, align 8, !tbaa !172
  %i.lh = getelementptr inbounds nuw i8, ptr %i.io, i64 15 ; 3 uses
  store ptr %i.lh, ptr %i.b, align 8, !tbaa !61
  %i.li = load i8, ptr %i.kx, align 1, !tbaa !53  ; 2 uses
  %i.lj = zext i8 %i.li to i32                    ; 6 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i32 %i.lj, ptr %i.lk, align 8, !tbaa !173
  %.not159.i = icmp eq i32 %i.ji, 0
  %.not160.i = icmp eq i32 %i.jr, 0
  %or.cond.i = select i1 %.not159.i, i1 true, i1 %.not160.i
  br i1 %or.cond.i, label %.thread195.sink.split.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ll = and i32 %i.lj, 4                        ; 2 uses
  %.not161.i = icmp eq i32 %i.ll, 0               ; 3 uses
  br i1 %.not161.i, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.lm = icmp ult i32 %i.ie, 17
  br i1 %i.lm, label %.thread195.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ln = getelementptr inbounds nuw i8, ptr %i.io, i64 17 ; 2 uses
  store ptr %i.ln, ptr %i.b, align 8, !tbaa !61
  %i.lo = load i8, ptr %i.lh, align 1, !tbaa !53
  %i.lp = zext i8 %i.lo to i16
  %i.lq = shl nuw i16 %i.lp, 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !53
  %i.lt = zext i8 %i.ls to i16
  %i.lu = or disjoint i16 %i.lq, %i.lt
  %i.lv = sext i16 %i.lu to i32
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 468
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !174
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aw
  %i.lx = phi ptr [ %i.ln, %bb.ay ], [ %i.lh, %bb.aw ]
  %.not162.i = icmp sgt i8 %i.li, -1
  br i1 %.not162.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ly = call fastcc i32 @pfr_extra_items_parse(ptr noundef %i.b, ptr noundef nonnull %i.iq, ptr noundef nonnull @pfr_phy_font_extra_items, ptr noundef nonnull %i.ia) ; 2 uses
  store i32 %i.ly, ptr %i.a, align 4, !tbaa !50
  %.not163.i = icmp eq i32 %i.ly, 0
  br i1 %.not163.i, label %._crit_edge223.i, label %pfr_phy_font_load.exit

._crit_edge223.i:                                 ; preds = %bb.ba
  %.pre.i163 = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %bb.bb

bb.bb:                                            ; preds = %._crit_edge223.i, %bb.az
  %i.lz = phi ptr [ %.pre.i163, %._crit_edge223.i ], [ %i.lx, %bb.az ] ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 3 ; 5 uses
  %i.mb = icmp ugt ptr %i.ma, %i.iq
  br i1 %i.mb, label %.thread195.sink.split.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.ma, ptr %i.b, align 8, !tbaa !61
  %i.mc = load i8, ptr %i.lz, align 1, !tbaa !53
  %i.md = zext i8 %i.mc to i64
  %i.me = shl nuw nsw i64 %i.md, 16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !53
  %i.mh = zext i8 %i.mg to i64
  %i.mi = shl nuw nsw i64 %i.mh, 8
  %i.mj = or disjoint i64 %i.mi, %i.me
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lz, i64 2
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !53
  %i.mm = zext i8 %i.ml to i64
  %i.mn = or disjoint i64 %i.mj, %i.mm            ; 3 uses
  %.not164.i = icmp eq i64 %i.mn, 0
  br i1 %.not164.i, label %.thread185.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mn ; 4 uses
  %i.mp = icmp ugt ptr %i.mo, %i.iq
  br i1 %i.mp, label %.thread195.sink.split.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store ptr %i.mo, ptr %i.b, align 8, !tbaa !61
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 476
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 528
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bn, %bb.be
  %.0145199.i = phi ptr [ %i.ma, %bb.be ], [ %i.ni, %bb.bn ] ; 12 uses
  %.0147198.i = phi i64 [ %i.mn, %bb.be ], [ %i.ov, %bb.bn ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.0145199.i, i64 4 ; 3 uses
  %i.mw = icmp ugt ptr %i.mv, %i.mo
  br i1 %i.mw, label %.thread185.loopexit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mx = getelementptr inbounds nuw i8, ptr %.0145199.i, i64 2
  %i.my = load i8, ptr %.0145199.i, align 1, !tbaa !53
  %i.mz = zext i8 %i.my to i32
  %i.na = shl nuw nsw i32 %i.mz, 8
  %i.nb = getelementptr inbounds nuw i8, ptr %.0145199.i, i64 1
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !53
  %i.nd = zext i8 %i.nc to i32
  %i.ne = or disjoint i32 %i.na, %i.nd            ; 5 uses
  %i.nf = icmp samesign ult i32 %i.ne, 4
  br i1 %i.nf, label %.thread185.loopexit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ng = zext nneg i32 %i.ne to i64              ; 3 uses
  %i.nh = icmp ult i64 %.0147198.i, %i.ng
  br i1 %i.nh, label %.thread185.loopexit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ni = getelementptr i8, ptr %.0145199.i, i64 %i.ng
  %i.nj = load i8, ptr %i.mx, align 1, !tbaa !53
  %i.nk = zext i8 %i.nj to i16
  %i.nl = shl nuw i16 %i.nk, 8
  %i.nm = getelementptr inbounds nuw i8, ptr %.0145199.i, i64 3
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !53
  %i.no = zext i8 %i.nn to i16
  %trunc.i = or disjoint i16 %i.nl, %i.no
  switch i16 %trunc.i, label %bb.bn [
    i16 1, label %bb.bj
    i16 2, label %bb.bk
    i16 3, label %bb.bm
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.np = add nsw i32 %i.ne, -4
  %i.nq = call fastcc i32 @pfr_aux_name_load(ptr noundef nonnull %i.mv, i32 noundef %i.np, ptr noundef %i.ig, ptr noundef nonnull %i.mu) ; 2 uses
  %.not167.i = icmp eq i32 %i.nq, 0
  br i1 %.not167.i, label %bb.bn, label %pfr_phy_font_load.exit.thread

bb.bk:                                            ; preds = %bb.bi
  %i.nr = icmp samesign ult i32 %i.ne, 36
  br i1 %i.nr, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ns = getelementptr inbounds nuw i8, ptr %.0145199.i, i64 14
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !53
  %i.nu = zext i8 %i.nt to i16
  %i.nv = shl nuw i16 %i.nu, 8
  %i.nw = getelementptr inbounds nuw i8, ptr %.0145199.i, i64 15
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !53
  %i.ny = zext i8 %i.nx to i16
  %i.nz = or disjoint i16 %i.nv, %i.ny
  %i.oa = sext i16 %i.nz to i32
  store i32 %i.oa, ptr %i.mr, align 8, !tbaa !175
  %i.ob = getelementptr inbounds nuw i8, ptr %.0145199.i, i64 16
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !53
  %i.od = zext i8 %i.oc to i16
  %i.oe = shl nuw i16 %i.od, 8
  %i.of = getelementptr inbounds nuw i8, ptr %.0145199.i, i64 17
  %i.og = load i8, ptr %i.of, align 1, !tbaa !53
  %i.oh = zext i8 %i.og to i16
  %i.oi = or disjoint i16 %i.oe, %i.oh
  %i.oj = sext i16 %i.oi to i32
  store i32 %i.oj, ptr %i.ms, align 4, !tbaa !176
  %i.ok = getelementptr inbounds nuw i8, ptr %.0145199.i, i64 18
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !53
  %i.om = zext i8 %i.ol to i16
  %i.on = shl nuw i16 %i.om, 8
  %i.oo = getelementptr inbounds nuw i8, ptr %.0145199.i, i64 19
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !53
  %i.oq = zext i8 %i.op to i16
  %i.or = or disjoint i16 %i.on, %i.oq
  %i.os = sext i16 %i.or to i32
  store i32 %i.os, ptr %i.mt, align 8, !tbaa !177
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bi
  %i.ot = add nsw i32 %i.ne, -4
  %i.ou = call fastcc i32 @pfr_aux_name_load(ptr noundef nonnull %i.mv, i32 noundef %i.ot, ptr noundef %i.ig, ptr noundef nonnull %i.mq) ; 2 uses
  %.not166.i = icmp eq i32 %i.ou, 0
  br i1 %.not166.i, label %bb.bn, label %pfr_phy_font_load.exit.thread

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi
  %i.ov = sub nuw nsw i64 %.0147198.i, %i.ng      ; 2 uses
  %.not165.i = icmp eq i64 %i.ov, 0
  br i1 %.not165.i, label %.thread185.loopexit.i, label %bb.bf

.thread185.loopexit.i:                            ; preds = %bb.bn, %bb.bh, %bb.bg, %bb.bf
  store i32 0, ptr %i.a, align 4
  br label %.thread185.i

.thread185.i:                                     ; preds = %.thread185.loopexit.i, %bb.bc
  %6 = phi ptr [ %i.mo, %.thread185.loopexit.i ], [ %i.ma, %bb.bc ] ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 6 uses
  %i.ox = icmp ugt ptr %i.ow, %i.iq
  br i1 %i.ox, label %.thread195.sink.split.i, label %bb.bo

bb.bo:                                            ; preds = %.thread185.i
  store ptr %i.ow, ptr %i.b, align 8, !tbaa !61
  %i.oy = load i8, ptr %6, align 1, !tbaa !53     ; 5 uses
  %i.oz = zext i8 %i.oy to i32                    ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 560
  store i32 %i.oz, ptr %i.pa, align 8, !tbaa !62
  %i.pb = shl nuw nsw i32 %i.oz, 1
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.pc
  %i.pe = icmp ugt ptr %i.pd, %i.iq
  br i1 %i.pe, label %.thread195.sink.split.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pf = zext i8 %i.oy to i64                    ; 3 uses
  %i.pg = call ptr @ft_mem_qrealloc(ptr noundef %i.ig, i64 noundef 4, i64 noundef 0, i64 noundef %i.pf, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 568
  store ptr %i.pg, ptr %i.ph, align 8, !tbaa !63
  %i.pi = load i32, ptr %i.a, align 4, !tbaa !50
  %.not168.i = icmp eq i32 %i.pi, 0
  br i1 %.not168.i, label %.preheader197.i, label %pfr_phy_font_load.exit

.preheader197.i:                                  ; preds = %bb.bp
  %.not206.i = icmp eq i8 %i.oy, 0
  br i1 %.not206.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader197.i
  %xtraiter = and i64 %i.pf, 1
  %i.pj = icmp eq i8 %i.oy, 1
  br i1 %i.pj, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.pf, 254
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %i.pk = phi ptr [ %i.ow, %.lr.ph.i.preheader.new ], [ %i.pv, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 2
  %i.pm = load i8, ptr %i.pk, align 1, !tbaa !53
  %i.pn = zext i8 %i.pm to i16
  %i.po = shl nuw i16 %i.pn, 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 1
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !53
  %i.pr = zext i8 %i.pq to i16
  %i.ps = or disjoint i16 %i.po, %i.pr
  %i.pt = sext i16 %i.ps to i32
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv.i
  store i32 %i.pt, ptr %i.pu, align 4, !tbaa !50
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pk, i64 4 ; 3 uses
  %i.pw = load i8, ptr %i.pl, align 1, !tbaa !53
  %i.px = zext i8 %i.pw to i16
  %i.py = shl nuw i16 %i.px, 8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pk, i64 3
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !53
  %i.qb = zext i8 %i.qa to i16
  %i.qc = or disjoint i16 %i.py, %i.qb
  %i.qd = sext i16 %i.qc to i32
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  store i32 %i.qd, ptr %i.qf, align 4, !tbaa !50
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !142

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %i.ow, %.lr.ph.i.preheader ], [ %i.pv, %._crit_edge.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod260 = trunc i8 %i.oy to i1
  call void @llvm.assume(i1 %lcmp.mod260)
  %i.qg = getelementptr inbounds nuw i8, ptr %.epil.init, i64 2
  %i.qh = load i8, ptr %.epil.init, align 1, !tbaa !53
  %i.qi = zext i8 %i.qh to i16
  %i.qj = shl nuw i16 %i.qi, 8
  %i.qk = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !53
  %i.qm = zext i8 %i.ql to i16
  %i.qn = or disjoint i16 %i.qj, %i.qm
  %i.qo = sext i16 %i.qn to i32
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv.i.epil.init
  store i32 %i.qo, ptr %i.qp, align 4, !tbaa !50
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader197.i
  %.lcssa.i = phi ptr [ %i.ow, %.preheader197.i ], [ %i.pv, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.qg, %.lr.ph.i.epil.preheader ] ; 9 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8 ; 6 uses
  %i.qr = icmp ugt ptr %i.qq, %i.iq
  br i1 %i.qr, label %.thread195.sink.split.i, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.i
  %i.qs = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 1 ; 2 uses
  store ptr %i.qs, ptr %i.b, align 8, !tbaa !61
  %i.qt = load i8, ptr %.lcssa.i, align 1, !tbaa !53
  %i.qu = zext i8 %i.qt to i32
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 576
  store i32 %i.qu, ptr %i.qv, align 8, !tbaa !178
  %i.qw = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 2 ; 2 uses
  store ptr %i.qw, ptr %i.b, align 8, !tbaa !61
  %i.qx = load i8, ptr %i.qs, align 1, !tbaa !53
  %i.qy = zext i8 %i.qx to i32
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 580
  store i32 %i.qy, ptr %i.qz, align 4, !tbaa !179
  %i.ra = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 4 ; 2 uses
  store ptr %i.ra, ptr %i.b, align 8, !tbaa !61
  %i.rb = load i8, ptr %i.qw, align 1, !tbaa !53
  %i.rc = zext i8 %i.rb to i32
  %i.rd = shl nuw nsw i32 %i.rc, 8
  %i.re = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 3
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !53
  %i.rg = zext i8 %i.rf to i32
  %i.rh = or disjoint i32 %i.rd, %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i32 %i.rh, ptr %i.ri, align 8, !tbaa !180
  %i.rj = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 6 ; 2 uses
  store ptr %i.rj, ptr %i.b, align 8, !tbaa !61
  %i.rk = load i8, ptr %i.ra, align 1, !tbaa !53
  %i.rl = zext i8 %i.rk to i32
  %i.rm = shl nuw nsw i32 %i.rl, 8
  %i.rn = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 5
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !53
  %i.rp = zext i8 %i.ro to i32
  %i.rq = or disjoint i32 %i.rm, %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 488
  store i32 %i.rq, ptr %i.rr, align 8, !tbaa !181
  store ptr %i.qq, ptr %i.b, align 8, !tbaa !61
  %i.rs = load i8, ptr %i.rj, align 1, !tbaa !53
  %i.rt = zext i8 %i.rs to i32
  %i.ru = shl nuw nsw i32 %i.rt, 8
  %i.rv = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 7
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !53
  %i.rx = zext i8 %i.rw to i32
  %i.ry = or disjoint i32 %i.ru, %i.rx            ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 584
  store i32 %i.ry, ptr %i.rz, align 8, !tbaa !64
  %i.sa = load ptr, ptr %i.bo, align 8, !tbaa !52
  %i.sb = ptrtoint ptr %i.qq to i64
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = add i64 %i.sb, %i.ik
  %i.se = sub i64 %i.sd, %i.sc
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i64 %i.se, ptr %i.sf, align 8, !tbaa !182
  %.not169.i = icmp eq i32 %i.ry, 0
  br i1 %.not169.i, label %.thread195.sink.split.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.sg = and i32 %i.lj, 2
  %.not170.i = icmp eq i32 %i.sg, 0               ; 3 uses
  %spec.select.i164 = select i1 %.not170.i, i32 4, i32 5
  %i.sh = lshr exact i32 %i.ll, 1
  %i.si = lshr i32 %i.lj, 3
  %i.sj = and i32 %i.si, 1                        ; 2 uses
  %i.sk = and i32 %i.lj, 16                       ; 2 uses
  %.not172.i = icmp eq i32 %i.sk, 0               ; 2 uses
  %i.sl = lshr exact i32 %i.sk, 4
  %i.sm = and i32 %i.lj, 32                       ; 2 uses
  %.not173.i = icmp eq i32 %i.sm, 0
  %i.sn = lshr exact i32 %i.sm, 5
  %.1.i165 = or disjoint i32 %i.sj, %i.sh
  %.2.i166 = add nuw nsw i32 %.1.i165, %i.sl
  %.3.i167 = add nuw nsw i32 %.2.i166, %i.sn
  %.4.i168 = add nuw nsw i32 %.3.i167, %spec.select.i164
  %i.so = mul nuw nsw i32 %i.ry, %.4.i168
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.sp
  %i.sr = icmp ugt ptr %i.sq, %i.iq
  br i1 %i.sr, label %.thread195.sink.split.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ss = zext nneg i32 %i.ry to i64              ; 3 uses
  %i.st = call ptr @ft_mem_qrealloc(ptr noundef %i.ig, i64 noundef 16, i64 noundef 0, i64 noundef %i.ss, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 600
  store ptr %i.st, ptr %i.su, align 8, !tbaa !65
  %i.sv = load i32, ptr %i.a, align 4, !tbaa !50
  %.not174.i = icmp eq i32 %i.sv, 0
  br i1 %.not174.i, label %.preheader.i, label %pfr_phy_font_load.exit

.preheader.i:                                     ; preds = %bb.bs
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 468 ; 2 uses
  %spec.select204.idx.i = zext nneg i32 %i.sj to i64 ; 2 uses
  br i1 %.not173.i, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %bb.cb
  %indvars.iv218.i = phi i64 [ %indvars.iv.next219.i, %bb.cb ], [ 0, %.preheader.i ] ; 2 uses
  %i.sx = phi ptr [ %i.uj, %bb.cb ], [ %i.qq, %.preheader.i ] ; 4 uses
  %i.sy = getelementptr inbounds nuw [16 x i8], ptr %i.st, i64 %indvars.iv218.i ; 4 uses
  %i.sz = load i8, ptr %i.sx, align 1, !tbaa !53
  %i.ta = zext i8 %i.sz to i32                    ; 2 uses
  br i1 %.not170.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.preheader.split.us.i
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 2
  %i.tc = shl nuw nsw i32 %i.ta, 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.sx, i64 1
  %i.te = load i8, ptr %i.td, align 1, !tbaa !53
  %i.tf = zext i8 %i.te to i32
  %i.tg = or disjoint i32 %i.tc, %i.tf
  br label %bb.bv

bb.bu:                                            ; preds = %.preheader.split.us.i
  %i.th = getelementptr inbounds nuw i8, ptr %i.sx, i64 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ti = phi ptr [ %i.tb, %bb.bt ], [ %i.th, %bb.bu ] ; 4 uses
  %i.tj = phi i32 [ %i.tg, %bb.bt ], [ %i.ta, %bb.bu ]
  store i32 %i.tj, ptr %i.sy, align 4, !tbaa !48
  br i1 %.not161.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  %i.tl = load i8, ptr %i.ti, align 1, !tbaa !53
  %i.tm = zext i8 %i.tl to i16
  %i.tn = shl nuw i16 %i.tm, 8
  %i.to = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !53
  %i.tq = zext i8 %i.tp to i16
  %i.tr = or disjoint i16 %i.tn, %i.tq
  %i.ts = sext i16 %i.tr to i32
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.tt = load i32, ptr %i.sw, align 4, !tbaa !174
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.tu = phi ptr [ %i.tk, %bb.bw ], [ %i.ti, %bb.bx ]
  %i.tv = phi i32 [ %i.ts, %bb.bw ], [ %i.tt, %bb.bx ]
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sy, i64 4
  store i32 %i.tv, ptr %i.tw, align 4, !tbaa !66
  %spec.select204.i = getelementptr inbounds nuw i8, ptr %i.tu, i64 %spec.select204.idx.i ; 4 uses
  %i.tx = load i8, ptr %spec.select204.i, align 1, !tbaa !53
  %i.ty = zext i8 %i.tx to i32                    ; 2 uses
  br i1 %.not172.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.tz = getelementptr inbounds nuw i8, ptr %spec.select204.i, i64 2
  %i.ua = shl nuw nsw i32 %i.ty, 8
  %i.ub = getelementptr inbounds nuw i8, ptr %spec.select204.i, i64 1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !53
  %i.ud = zext i8 %i.uc to i32
  %i.ue = or disjoint i32 %i.ua, %i.ud
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.uf = getelementptr inbounds nuw i8, ptr %spec.select204.i, i64 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ug = phi ptr [ %i.tz, %bb.bz ], [ %i.uf, %bb.ca ] ; 3 uses
  %i.uh = phi i32 [ %i.ue, %bb.bz ], [ %i.ty, %bb.ca ]
  %i.ui = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  store i32 %i.uh, ptr %i.ui, align 4, !tbaa !67
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ug, i64 2
  %i.uk = load i8, ptr %i.ug, align 1, !tbaa !53
  %i.ul = zext i8 %i.uk to i32
  %i.um = shl nuw nsw i32 %i.ul, 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.ug, i64 1
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !53
  %i.up = zext i8 %i.uo to i32
  %i.uq = or disjoint i32 %i.um, %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %i.sy, i64 12
  store i32 %i.uq, ptr %i.ur, align 4, !tbaa !68
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 1 ; 2 uses
  %exitcond222.not.i = icmp eq i64 %indvars.iv.next219.i, %i.ss
  br i1 %exitcond222.not.i, label %pfr_phy_font_load.exit, label %.preheader.split.us.i, !llvm.loop !143

.preheader.split.i:                               ; preds = %.preheader.i, %bb.ck
  %indvars.iv213.i = phi i64 [ %indvars.iv.next214.i, %bb.ck ], [ 0, %.preheader.i ] ; 2 uses
  %i.us = phi ptr [ %i.we, %bb.ck ], [ %i.qq, %.preheader.i ] ; 4 uses
  %i.ut = getelementptr inbounds nuw [16 x i8], ptr %i.st, i64 %indvars.iv213.i ; 4 uses
  %i.uu = load i8, ptr %i.us, align 1, !tbaa !53
  %i.uv = zext i8 %i.uu to i32                    ; 2 uses
  br i1 %.not170.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.preheader.split.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 2
  %i.ux = shl nuw nsw i32 %i.uv, 8
  %i.uy = getelementptr inbounds nuw i8, ptr %i.us, i64 1
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !53
  %i.va = zext i8 %i.uz to i32
  %i.vb = or disjoint i32 %i.ux, %i.va
  br label %bb.ce

bb.cd:                                            ; preds = %.preheader.split.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.us, i64 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.vd = phi ptr [ %i.uw, %bb.cc ], [ %i.vc, %bb.cd ] ; 4 uses
  %i.ve = phi i32 [ %i.vb, %bb.cc ], [ %i.uv, %bb.cd ]
  store i32 %i.ve, ptr %i.ut, align 4, !tbaa !48
  br i1 %.not161.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 2
  %i.vg = load i8, ptr %i.vd, align 1, !tbaa !53
  %i.vh = zext i8 %i.vg to i16
  %i.vi = shl nuw i16 %i.vh, 8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vd, i64 1
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !53
  %i.vl = zext i8 %i.vk to i16
  %i.vm = or disjoint i16 %i.vi, %i.vl
  %i.vn = sext i16 %i.vm to i32
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.vo = load i32, ptr %i.sw, align 4, !tbaa !174
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.vp = phi ptr [ %i.vf, %bb.cf ], [ %i.vd, %bb.cg ]
  %i.vq = phi i32 [ %i.vn, %bb.cf ], [ %i.vo, %bb.cg ]
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  store i32 %i.vq, ptr %i.vr, align 4, !tbaa !66
  %spec.select205.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 %spec.select204.idx.i ; 4 uses
  %i.vs = load i8, ptr %spec.select205.i, align 1, !tbaa !53
  %i.vt = zext i8 %i.vs to i32                    ; 2 uses
  br i1 %.not172.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vu = getelementptr inbounds nuw i8, ptr %spec.select205.i, i64 2
  %i.vv = shl nuw nsw i32 %i.vt, 8
  %i.vw = getelementptr inbounds nuw i8, ptr %spec.select205.i, i64 1
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !53
  %i.vy = zext i8 %i.vx to i32
  %i.vz = or disjoint i32 %i.vv, %i.vy
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.wa = getelementptr inbounds nuw i8, ptr %spec.select205.i, i64 1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.wb = phi ptr [ %i.vu, %bb.ci ], [ %i.wa, %bb.cj ] ; 4 uses
  %i.wc = phi i32 [ %i.vz, %bb.ci ], [ %i.vt, %bb.cj ]
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  store i32 %i.wc, ptr %i.wd, align 4, !tbaa !67
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 3
  %i.wf = load i8, ptr %i.wb, align 1, !tbaa !53
  %i.wg = zext i8 %i.wf to i32
  %i.wh = shl nuw nsw i32 %i.wg, 16
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wb, i64 1
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !53
  %i.wk = zext i8 %i.wj to i32
  %i.wl = shl nuw nsw i32 %i.wk, 8
  %i.wm = or disjoint i32 %i.wl, %i.wh
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wb, i64 2
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !53
  %i.wp = zext i8 %i.wo to i32
  %i.wq = or disjoint i32 %i.wm, %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.ut, i64 12
  store i32 %i.wq, ptr %i.wr, align 4, !tbaa !68
  %indvars.iv.next214.i = add nuw nsw i64 %indvars.iv213.i, 1 ; 2 uses
  %exitcond217.not.i = icmp eq i64 %indvars.iv.next214.i, %i.ss
  br i1 %exitcond217.not.i, label %pfr_phy_font_load.exit, label %.preheader.split.i, !llvm.loop !143

.thread195.sink.split.i:                          ; preds = %bb.br, %bb.bq, %._crit_edge.i, %bb.bo, %.thread185.i, %bb.bd, %bb.bb, %bb.ax, %bb.av, %bb.au
  store i32 8, ptr %i.a, align 4, !tbaa !50
  br label %pfr_phy_font_load.exit

pfr_phy_font_load.exit.thread:                    ; preds = %bb.bm, %bb.bj, %bb.as, %bb.at
  %.ph179 = phi i32 [ %i.in, %bb.at ], [ %i.il, %bb.as ], [ %i.ou, %bb.bm ], [ %i.nq, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.critedge154

pfr_phy_font_load.exit:                           ; preds = %bb.ck, %bb.cb, %bb.ba, %bb.bp, %bb.bs, %.thread195.sink.split.i
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %0) #12
  %i.ws = call i64 @FT_Stream_Pos(ptr noundef nonnull %0) #12
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 632
  store i64 %i.ws, ptr %i.wt, align 8, !tbaa !69
  store ptr null, ptr %i.ip, align 8, !tbaa !58
  %.pre224.i = load i32, ptr %i.a, align 4, !tbaa !50 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i32 %.pre224.i, ptr %i.e, align 4, !tbaa !50
  %.not140 = icmp eq i32 %.pre224.i, 0
  br i1 %.not140, label %bb.cl, label %.critedge154

bb.cl:                                            ; preds = %pfr_phy_font_load.exit
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ar, ptr %i.wu, align 8, !tbaa !183
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 584 ; 2 uses
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !64 ; 3 uses
  %i.wx = zext i32 %i.ww to i64                   ; 2 uses
  %i.wy = add nuw nsw i64 %i.wx, 1
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.wy, ptr %i.wz, align 8, !tbaa !184
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !185 ; 2 uses
  %i.xc = or i64 %i.xb, 1                         ; 2 uses
  store i64 %i.xc, ptr %i.xa, align 8, !tbaa !185
  %.not200 = icmp eq i32 %i.ww, 0
  br i1 %.not200, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cl
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !65
  br label %bb.cm

bb.cm:                                            ; preds = %.lr.ph, %bb.cn
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cn ] ; 3 uses
  %i.xf = getelementptr inbounds nuw [16 x i8], ptr %i.xe, i64 %indvars.iv
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 12
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !68
  %.not141 = icmp eq i32 %i.xh, 0
  br i1 %.not141, label %bb.cn, label %._crit_edge

bb.cn:                                            ; preds = %bb.cm
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.wx
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.cm, !llvm.loop !144

._crit_edge:                                      ; preds = %bb.cm
  %i.xi = trunc nuw i64 %indvars.iv to i32
  %i.xj = icmp eq i32 %i.ww, %i.xi
  br i1 %i.xj, label %._crit_edge.thread, label %bb.cp

._crit_edge.thread:                               ; preds = %bb.cn, %bb.cl, %._crit_edge
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !70
  %.not142 = icmp eq i32 %i.xl, 0
  br i1 %.not142, label %.critedge154, label %bb.co

bb.co:                                            ; preds = %._crit_edge.thread
  %i.xm = and i64 %i.xb, -2
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge
  %i.xn = phi i64 [ %i.xm, %bb.co ], [ %i.xc, %._crit_edge ]
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !173 ; 3 uses
  %i.xq = and i32 %i.xp, 4
  %i.xr = xor i32 %i.xq, 4
  %i.xs = zext nneg i32 %i.xr to i64
  %spec.select251 = or i64 %i.xn, %i.xs
  %i.xt = and i32 %i.xp, 1
  %.not144 = icmp eq i32 %i.xt, 0
  %. = select i1 %.not144, i64 16, i64 32
  %i.xu = or i64 %spec.select251, %.              ; 3 uses
  store i64 %i.xu, ptr %i.xa, align 8, !tbaa !185
  %i.xv = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !70 ; 7 uses
  %.not145 = icmp eq i32 %i.xw, 0                 ; 2 uses
  br i1 %.not145, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.xx = or i64 %i.xu, 2                         ; 2 uses
  store i64 %i.xx, ptr %i.xa, align 8, !tbaa !185
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.xy = phi i64 [ %i.xx, %bb.cq ], [ %i.xu, %bb.cp ]
  %i.xz = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !71
  %.not146 = icmp eq i32 %i.ya, 0
  br i1 %.not146, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.yb = or i64 %i.xy, 64
  store i64 %i.yb, ptr %i.xa, align 8, !tbaa !185
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !72 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr %i.yd, ptr %i.ye, align 8, !tbaa !186
  %.not147 = icmp eq ptr %i.yd, null
  br i1 %.not147, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !73
  store ptr %i.yg, ptr %i.ye, align 8, !tbaa !186
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !74
  %i.yj = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.yi, ptr %i.yj, align 8, !tbaa !187
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store i32 0, ptr %i.yk, align 8, !tbaa !188
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr null, ptr %i.yl, align 8, !tbaa !75
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ym, ptr noundef nonnull align 8 dereferenceable(32) %i.yn, i64 32, i1 false), !tbaa.struct !189
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.yp = load i32, ptr %i.yo, align 8, !tbaa !59 ; 2 uses
  %i.yq = trunc i32 %i.yp to i16
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store i16 %i.yq, ptr %i.yr, align 8, !tbaa !190
  %i.ys = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !172
  %i.yu = trunc i64 %i.yt to i16                  ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 138
  store i16 %i.yu, ptr %i.yv, align 2, !tbaa !191
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !170
  %i.yy = trunc i64 %i.yx to i16                  ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i16 %i.yy, ptr %i.yz, align 4, !tbaa !192
  %i.za = and i32 %i.yp, 65535
  %i.zb = mul nuw nsw i32 %i.za, 6
  %i.zc = udiv i32 %i.zb, 5                       ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 142 ; 2 uses
  %sext = shl i32 %i.zc, 16
  %i.ze = ashr exact i32 %sext, 16
  %i.zf = sext i16 %i.yu to i32
  %i.zg = sext i16 %i.yy to i32
  %i.zh = sub nsw i32 %i.zf, %i.zg                ; 2 uses
  %i.zi = icmp slt i32 %i.ze, %i.zh
  %spec.select182 = select i1 %i.zi, i32 %i.zh, i32 %i.zc
  %storemerge181 = trunc i32 %spec.select182 to i16
  store i16 %storemerge181, ptr %i.zd, align 2, !tbaa !193
  br i1 %.not145, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !77
  %i.zl = zext i32 %i.xw to i64
  %i.zm = call ptr @ft_mem_qrealloc(ptr noundef %i.zk, i64 noundef 32, i64 noundef 0, i64 noundef %i.zl, ptr noundef null, ptr noundef nonnull %i.e) #12 ; 3 uses
  store ptr %i.zm, ptr %i.yl, align 8, !tbaa !75
  %i.zn = load i32, ptr %i.e, align 4, !tbaa !50  ; 2 uses
  %.not149 = icmp eq i32 %i.zn, 0
  br i1 %.not149, label %bb.cx, label %.critedge154

bb.cx:                                            ; preds = %bb.cw
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !78 ; 2 uses
  %xtraiter261 = and i32 %i.xw, 1
  %i.zq = icmp eq i32 %i.xw, 1
  br i1 %i.zq, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.cx
  %unroll_iter264 = and i32 %i.xw, -2
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cy, %.new
  %.0124191 = phi ptr [ %i.zp, %.new ], [ %i.aau, %bb.cy ] ; 5 uses
  %.0125190 = phi ptr [ %i.zm, %.new ], [ %i.aat, %bb.cy ] ; 11 uses
  %niter265 = phi i32 [ 0, %.new ], [ %niter265.next.1, %bb.cy ]
  %i.zr = getelementptr inbounds nuw i8, ptr %.0124191, i64 4
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !81 ; 2 uses
  %i.zt = trunc i32 %i.zs to i16
  store i16 %i.zt, ptr %.0125190, align 8, !tbaa !195
  %i.zu = load i32, ptr %.0124191, align 8, !tbaa !82 ; 2 uses
  %i.zv = trunc i32 %i.zu to i16
  %i.zw = getelementptr inbounds nuw i8, ptr %.0125190, i64 2
  store i16 %i.zv, ptr %i.zw, align 2, !tbaa !196
  %i.zx = shl i32 %i.zs, 6
  %i.zy = zext i32 %i.zx to i64                   ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %.0125190, i64 8
  store i64 %i.zy, ptr %i.zz, align 8, !tbaa !197
  %i.aaa = shl i32 %i.zu, 6
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw i8, ptr %.0125190, i64 16
  store i64 %i.aab, ptr %i.aac, align 8, !tbaa !198
  %i.aad = getelementptr inbounds nuw i8, ptr %.0125190, i64 24
  store i64 %i.zy, ptr %i.aad, align 8, !tbaa !199
end_hunk_1
