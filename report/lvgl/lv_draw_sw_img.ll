inline.NumInlined: 20
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@img_draw_core:bb.a
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.cv, %bb.ct
  %.sink114.i = phi i32 [ %i.aas, %bb.ct ], [ %i.aau, %bb.cv ]
  %i.aav = sext i32 %.sink114.i to i64
  %i.aaw = getelementptr inbounds i8, ptr %i.ig, i64 %i.aav
  store ptr %i.aaw, ptr %i.kb, align 8, !tbaa !67
  %.pre = load i32, ptr %i.il, align 4, !tbaa !31
  br label %bb.cw

bb.cw:                                            ; preds = %.sink.split.i, %bb.cu, %bb.cr
  %i.aax = phi i32 [ %.pre, %.sink.split.i ], [ %i.aao, %bb.cu ], [ %i.aao, %bb.cr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  %.not118.i = icmp sgt i32 %i.aax, %i.ik
  br i1 %.not118.i, label %transform_and_recolor.exit, label %bb.ai, !llvm.loop !85

transform_and_recolor.exit:                       ; preds = %bb.cw, %bb.ah
  call void @lv_free(ptr noundef nonnull %i.ig) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.cx

.critedge:                                        ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  br label %bb.cx

bb.cx:                                            ; preds = %bb.f, %bb.n, %bb.s, %transform_and_recolor.exit, %radius_only.exit, %bb.q, %bb.j, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  ret void
}

declare void @lv_draw_image_tiled_helper(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_area_intersect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_draw_sw_blend(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_height(ptr noundef) local_unnamed_addr #2

declare i32 @lv_area_get_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @recolor_only(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readonly captures(none) %.72.val, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.lv_area_t, align 4          ; 11 uses
  %5 = alloca %struct._lv_draw_sw_blend_dsc_t, align 8 ; 15 uses
  %6 = alloca %struct.lv_area_t, align 8          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !28
  %i.a = getelementptr inbounds nuw i8, ptr %.72.val, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 65535                      ; 3 uses
  %i.d = load i64, ptr %.72.val, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.f, 255                        ; 3 uses
  %i.h = tail call zeroext i8 @lv_color_format_get_size(i32 noundef %i.g) #6
  %i.i = zext i8 %i.h to i32
  %i.j = tail call i32 @lv_area_get_height(ptr noundef %2) #6
  %i.k = call i32 @lv_area_get_width(ptr noundef nonnull %4) #6
  %i.l = call i32 @lv_area_get_height(ptr noundef nonnull %4) #6
  %i.m = mul i32 %i.k, %i.i                       ; 2 uses
  %spec.store.select = call i32 @llvm.umax.i32(i32 %i.m, i32 1) ; 2 uses
  %i.n = call ptr @lv_refr_get_disp_refreshing() #6
  %i.o = call i32 @lv_display_get_horizontal_resolution(ptr noundef %i.n) #6
  %i.p = shl nsw i32 %i.o, 2
  %i.q = call ptr @lv_refr_get_disp_refreshing() #6
  %i.r = call i32 @lv_display_get_color_format(ptr noundef %i.q) #6
  %i.s = call zeroext i8 @lv_color_format_get_size(i32 noundef %i.r) #6
  %i.t = zext i8 %i.s to i32
  %i.u = mul nsw i32 %i.p, %i.t
  %i.v = udiv i32 %i.u, %spec.store.select
  %spec.select = call i32 @llvm.smin.i32(i32 %i.v, i32 %i.l) ; 3 uses
  %i.w = mul i32 %spec.select, %spec.store.select
  %i.x = zext i32 %i.w to i64
  %i.y = call ptr @lv_malloc(i64 noundef %i.x) #6 ; 4 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @lv_memset(ptr noundef nonnull %5, i8 noundef zeroext 0, i64 noundef 72) #6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 %i.aa, ptr %i.ab, align 8, !tbaa !63
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = and i8 %i.ad, 15
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 68
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.m, ptr %i.ah, align 8, !tbaa !66
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.ai, align 8, !tbaa !76
  store ptr %4, ptr %5, align 8, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.y, ptr %i.aj, align 8, !tbaa !70
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 3 uses
  store i32 %i.g, ptr %i.ak, align 4, !tbaa !77
  %i.al = icmp eq i32 %i.g, 20
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %2, ptr %i.am, align 8, !tbaa !68
  %i.an = getelementptr inbounds nuw i8, ptr %.72.val, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.ap = mul i32 %i.j, %i.c
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 2, ptr %i.at, align 8, !tbaa !72
  store i32 18, ptr %i.ak, align 4, !tbaa !77
  %i.au = lshr i32 %i.c, 1
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 %i.au, ptr %i.av, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !31 ; 3 uses
  %i.ba = add i32 %spec.select, -1
  %i.bb = add i32 %i.ba, %i.az                    ; 2 uses
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !32
  %.not451 = icmp sgt i32 %i.az, %i.ax
  br i1 %.not451, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.72.val, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.bi = phi i32 [ %i.bb, %.lr.ph ], [ %spec.select46, %bb.e ]
  %i.bj = phi i32 [ %i.az, %.lr.ph ], [ %i.bv, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.bk = load i32, ptr %4, align 4, !tbaa !33
  store i32 %i.bk, ptr %6, align 8, !tbaa !33
  store i32 %i.bj, ptr %i.bc, align 4, !tbaa !31
  %i.bl = load i32, ptr %i.bd, align 4, !tbaa !30
  store i32 %i.bl, ptr %i.be, align 8, !tbaa !30
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !32
  %i.bm = load i32, ptr %2, align 4, !tbaa !33
  %i.bn = sub nsw i32 0, %i.bm
  %i.bo = load i32, ptr %i.bg, align 4, !tbaa !31
  %i.bp = sub nsw i32 0, %i.bo
  call void @lv_area_move(ptr noundef nonnull %6, i32 noundef %i.bn, i32 noundef %i.bp) #6
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !59
  %i.br = load i32, ptr %i.ak, align 4, !tbaa !77
  %i.bs = load i64, ptr %6, align 8
  %i.bt = load i64, ptr %i.be, align 8
  call fastcc void @recolor(i64 %i.bs, i64 %i.bt, ptr noundef %i.bq, ptr noundef %i.y, i32 noundef %i.c, i32 noundef %i.br, ptr noundef nonnull %1)
  call void @lv_draw_sw_blend(ptr noundef %0, ptr noundef nonnull %5) #6
  %i.bu = load i32, ptr %i.aw, align 4, !tbaa !32 ; 3 uses
  %i.bv = add nsw i32 %i.bu, 1                    ; 2 uses
  store i32 %i.bv, ptr %i.ay, align 4, !tbaa !31
  %i.bw = add i32 %i.bu, %spec.select
  %spec.select46 = call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.ax) ; 2 uses
  store i32 %spec.select46, ptr %i.aw, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %.not45.not = icmp slt i32 %i.bu, %i.ax
  br i1 %.not45.not, label %bb.e, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.e, %bb.d
  call void @lv_free(ptr noundef nonnull %i.y) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  ret void
}

declare void @lv_memset(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @lv_color_format_get_size(i32 noundef) local_unnamed_addr #2

declare i32 @lv_display_get_horizontal_resolution(ptr noundef) local_unnamed_addr #2

declare ptr @lv_refr_get_disp_refreshing() local_unnamed_addr #2

declare i32 @lv_display_get_color_format(ptr noundef) local_unnamed_addr #2

declare ptr @lv_malloc(i64 noundef) local_unnamed_addr #2

declare void @lv_area_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @recolor(i64 %0, i64 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.lv_area_t, align 8          ; 12 uses
  store i64 %0, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = call i32 @lv_area_get_width(ptr noundef nonnull %7) #6 ; 31 uses
  %i.c = call i32 @lv_area_get_height(ptr noundef nonnull %7) #6 ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 116
  %.sroa.0130.0.copyload = load i8, ptr %i.d, align 4, !tbaa !44 ; 16 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 117 ; 3 uses
  %i.e = load i8, ptr %.sroa.10.0..sroa_idx, align 1, !tbaa !44 ; 14 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 118
  %.sroa.15.0.copyload = load i8, ptr %.sroa.15.0..sroa_idx, align 2, !tbaa !44 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 119
  %i.g = load i8, ptr %i.f, align 1, !tbaa !74    ; 5 uses
  %i.h = zext i8 %i.g to i32                      ; 12 uses
  %i.i = xor i8 %i.g, -1                          ; 4 uses
  switch i32 %5, label %bb.f [
    i32 20, label %bb.b
    i32 18, label %bb.b
    i32 27, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 1
  %i.j = zext i16 %.sroa.10.0.copyload to i24
  %i.k = shl nuw i24 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31
  %i.n = load i32, ptr %7, align 8, !tbaa !33
  %i.o = sdiv i32 %4, 2
  %.sroa.0130.0.insert.ext135 = zext i8 %.sroa.0130.0.copyload to i24
  %.sroa.0130.0.insert.insert137 = or disjoint i24 %i.k, %.sroa.0130.0.insert.ext135
  %i.p = call zeroext i16 @lv_color_to_u16(i24 %.sroa.0130.0.insert.insert137) #6 ; 3 uses
  %i.q = icmp ugt i8 %i.g, -4
  br i1 %i.q, label %.preheader281, label %bb.c

.preheader281:                                    ; preds = %bb.b
  %i.r = icmp sgt i32 %i.c, 0
  %i.s = icmp sgt i32 %i.b, 0
  %or.cond = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond, label %.preheader280.preheader, label %.loopexit

.preheader280.preheader:                          ; preds = %.preheader281
  %i.t = zext nneg i32 %i.b to i64                ; 5 uses
  %min.iters.check508 = icmp ult i32 %i.b, 4
  %min.iters.check510 = icmp ult i32 %i.b, 16
  %i.u = and i64 %i.t, 12
  %n.vec512 = and i64 %i.t, 2147483632            ; 5 uses
  %i.v = shl nuw nsw i64 %n.vec512, 1
  %i.w = trunc nuw nsw i64 %n.vec512 to i32
  %broadcast.splatinsert513 = insertelement <8 x i16> poison, i16 %i.p, i64 0
  %broadcast.splat514 = shufflevector <8 x i16> %broadcast.splatinsert513, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n520 = icmp eq i64 %n.vec512, %i.t
  %min.epilog.iters.check527 = icmp eq i64 %i.u, 0
  %n.vec529 = and i64 %i.t, 2147483644            ; 4 uses
  %i.x = shl nuw nsw i64 %n.vec529, 1
  %i.y = trunc nuw nsw i64 %n.vec529 to i32
  %broadcast.splatinsert530 = insertelement <4 x i16> poison, i16 %i.p, i64 0
  %broadcast.splat531 = shufflevector <4 x i16> %broadcast.splatinsert530, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n537 = icmp eq i64 %n.vec529, %i.t
  br label %iter.check524

iter.check524:                                    ; preds = %.preheader280.preheader, %._crit_edge310
  %.0243313 = phi ptr [ %.lcssa445, %._crit_edge310 ], [ %3, %.preheader280.preheader ] ; 5 uses
  %.0247312 = phi i32 [ %i.ai, %._crit_edge310 ], [ 0, %.preheader280.preheader ]
  br i1 %min.iters.check508, label %vec.epilog.scalar.ph525.preheader, label %vector.main.loop.iter.check509

vector.main.loop.iter.check509:                   ; preds = %iter.check524
  br i1 %min.iters.check510, label %vec.epilog.ph528, label %vector.ph511

vector.ph511:                                     ; preds = %vector.main.loop.iter.check509
  %i.z = getelementptr i8, ptr %.0243313, i64 %i.v ; 2 uses
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph511
  %index516 = phi i64 [ 0, %vector.ph511 ], [ %index.next518, %vector.body515 ] ; 2 uses
  %i.aa = shl i64 %index516, 1
  %next.gep517 = getelementptr i8, ptr %.0243313, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep517, i64 16
  store <8 x i16> %broadcast.splat514, ptr %next.gep517, align 2, !tbaa !51
  store <8 x i16> %broadcast.splat514, ptr %i.ab, align 2, !tbaa !51
  %index.next518 = add nuw i64 %index516, 16      ; 2 uses
  %i.ac = icmp eq i64 %index.next518, %n.vec512
  br i1 %i.ac, label %middle.block519, label %vector.body515, !llvm.loop !87

middle.block519:                                  ; preds = %vector.body515
  br i1 %cmp.n520, label %._crit_edge310, label %vec.epilog.iter.check526

vec.epilog.iter.check526:                         ; preds = %middle.block519
  br i1 %min.epilog.iters.check527, label %vec.epilog.scalar.ph525.preheader, label %vec.epilog.ph528, !prof !90

vec.epilog.ph528:                                 ; preds = %vector.main.loop.iter.check509, %vec.epilog.iter.check526
  %vec.epilog.resume.val521 = phi i64 [ %n.vec512, %vec.epilog.iter.check526 ], [ 0, %vector.main.loop.iter.check509 ]
  %i.ad = getelementptr i8, ptr %.0243313, i64 %i.x ; 2 uses
  br label %vec.epilog.vector.body532

vec.epilog.vector.body532:                        ; preds = %vec.epilog.vector.body532, %vec.epilog.ph528
  %index533 = phi i64 [ %vec.epilog.resume.val521, %vec.epilog.ph528 ], [ %index.next535, %vec.epilog.vector.body532 ] ; 2 uses
  %i.ae = shl i64 %index533, 1
  %next.gep534 = getelementptr i8, ptr %.0243313, i64 %i.ae
  store <4 x i16> %broadcast.splat531, ptr %next.gep534, align 2, !tbaa !51
  %index.next535 = add nuw i64 %index533, 4       ; 2 uses
  %i.af = icmp eq i64 %index.next535, %n.vec529
  br i1 %i.af, label %vec.epilog.middle.block536, label %vec.epilog.vector.body532, !llvm.loop !91

vec.epilog.middle.block536:                       ; preds = %vec.epilog.vector.body532
  br i1 %cmp.n537, label %._crit_edge310, label %vec.epilog.scalar.ph525.preheader

vec.epilog.scalar.ph525.preheader:                ; preds = %iter.check524, %vec.epilog.iter.check526, %vec.epilog.middle.block536
  %.1244309.ph = phi ptr [ %.0243313, %iter.check524 ], [ %i.z, %vec.epilog.iter.check526 ], [ %i.ad, %vec.epilog.middle.block536 ]
  %.0250308.ph = phi i32 [ 0, %iter.check524 ], [ %i.w, %vec.epilog.iter.check526 ], [ %i.y, %vec.epilog.middle.block536 ]
  br label %vec.epilog.scalar.ph525

vec.epilog.scalar.ph525:                          ; preds = %vec.epilog.scalar.ph525.preheader, %vec.epilog.scalar.ph525
  %.1244309 = phi ptr [ %i.ag, %vec.epilog.scalar.ph525 ], [ %.1244309.ph, %vec.epilog.scalar.ph525.preheader ] ; 2 uses
  %.0250308 = phi i32 [ %i.ah, %vec.epilog.scalar.ph525 ], [ %.0250308.ph, %vec.epilog.scalar.ph525.preheader ]
  store i16 %i.p, ptr %.1244309, align 2, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %.1244309, i64 2 ; 2 uses
  %i.ah = add nuw nsw i32 %.0250308, 1            ; 2 uses
  %exitcond379.not = icmp eq i32 %i.ah, %i.b
  br i1 %exitcond379.not, label %._crit_edge310, label %vec.epilog.scalar.ph525, !llvm.loop !92

._crit_edge310:                                   ; preds = %vec.epilog.scalar.ph525, %vec.epilog.middle.block536, %middle.block519
  %.lcssa445 = phi ptr [ %i.ad, %vec.epilog.middle.block536 ], [ %i.z, %middle.block519 ], [ %i.ag, %vec.epilog.scalar.ph525 ]
  %i.ai = add nuw nsw i32 %.0247312, 1            ; 2 uses
  %exitcond380.not = icmp eq i32 %i.ai, %i.c
  br i1 %exitcond380.not, label %.loopexit, label %iter.check524, !llvm.loop !93

bb.c:                                             ; preds = %bb.b
  %i.aj = lshr i8 %.sroa.0130.0.copyload, 3
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = mul nuw nsw i32 %i.h, %i.ak             ; 2 uses
  %i.am = lshr i8 %i.e, 2
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = mul nuw nsw i32 %i.h, %i.an             ; 2 uses
  %i.ap = lshr i8 %.sroa.15.0.copyload, 3
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = mul nuw nsw i32 %i.aq, %i.h             ; 2 uses
  %i.as = icmp sgt i32 %i.c, 0
  br i1 %i.as, label %.preheader283.lr.ph, label %.loopexit

.preheader283.lr.ph:                              ; preds = %bb.c
  %i.at = icmp sgt i32 %i.b, 0
  %i.au = zext i8 %i.i to i32                     ; 4 uses
  %i.av = sext i32 %i.o to i64                    ; 2 uses
  br i1 %i.at, label %.preheader283.preheader, label %.loopexit

.preheader283.preheader:                          ; preds = %.preheader283.lr.ph
  %i.aw = mul i32 %i.m, %4
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr i8, ptr %2, i64 %i.ax
  %i.az = shl i32 %i.n, 1
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.ba  ; 2 uses
  %wide.trip.count376 = zext nneg i32 %i.b to i64 ; 5 uses
  %8 = add nsw i32 %i.c, -1
  %9 = zext i32 %8 to i64                         ; 2 uses
  %10 = shl nuw nsw i64 %9, 1
  %i.bc = add nuw nsw i64 %10, 2
  %11 = mul i64 %i.bc, %wide.trip.count376
  %scevgep482 = getelementptr i8, ptr %3, i64 %11
  %12 = mul nsw i64 %i.av, %9
  %i.bd = add i64 %12, %wide.trip.count376
  %13 = shl i64 %i.bd, 1
  %14 = getelementptr i8, ptr %2, i64 %13
  %15 = getelementptr i8, ptr %14, i64 %i.ax
  %scevgep483 = getelementptr i8, ptr %15, i64 %i.ba
  %min.iters.check487 = icmp ult i32 %i.b, 8
  %bound0484 = icmp ult ptr %3, %scevgep483
  %bound1485 = icmp ult ptr %i.bb, %scevgep482
  %found.conflict486 = and i1 %bound0484, %bound1485
  %stride.check487 = icmp slt i32 %4, -1
  %16 = or i1 %found.conflict486, %stride.check487
  %n.vec489 = and i64 %wide.trip.count376, 2147483640 ; 4 uses
  %i.be = shl nuw nsw i64 %n.vec489, 1
  %broadcast.splatinsert490 = insertelement <8 x i32> poison, i32 %i.au, i64 0
  %broadcast.splat491 = shufflevector <8 x i32> %broadcast.splatinsert490, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert492 = insertelement <8 x i32> poison, i32 %i.ar, i64 0
  %broadcast.splat493 = shufflevector <8 x i32> %broadcast.splatinsert492, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert494 = insertelement <8 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat495 = shufflevector <8 x i32> %broadcast.splatinsert494, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert496 = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat497 = shufflevector <8 x i32> %broadcast.splatinsert496, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n504 = icmp eq i64 %n.vec489, %wide.trip.count376
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.preheader, %._crit_edge303
  %.1242307 = phi ptr [ %i.cy, %._crit_edge303 ], [ %i.bb, %.preheader283.preheader ] ; 3 uses
  %.1242307.a = phi ptr [ %.lcssa446, %._crit_edge303 ], [ %3, %.preheader283.preheader ] ; 3 uses
  %.0251305 = phi i32 [ %i.cz, %._crit_edge303 ], [ 0, %.preheader283.preheader ]
  %brmerge = select i1 %min.iters.check487, i1 true, i1 %16
  br i1 %brmerge, label %scalar.ph486.preheader, label %vector.ph488

vector.ph488:                                     ; preds = %.preheader283
  %i.bf = getelementptr i8, ptr %.1242307.a, i64 %i.be ; 2 uses
  br label %vector.body498

vector.body498:                                   ; preds = %vector.body498, %vector.ph488
  %index499 = phi i64 [ 0, %vector.ph488 ], [ %index.next502, %vector.body498 ] ; 3 uses
  %i.bg = shl i64 %index499, 1
  %next.gep500 = getelementptr i8, ptr %.1242307.a, i64 %i.bg
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.1242307, i64 %index499
  %wide.load501 = load <8 x i16>, ptr %i.bh, align 2, !tbaa !51, !alias.scope !94 ; 3 uses
  %i.bi = lshr <8 x i16> %wide.load501, splat (i16 11)
  %i.bj = zext nneg <8 x i16> %i.bi to <8 x i32>
  %i.bk = mul nuw nsw <8 x i32> %broadcast.splat491, %i.bj
  %i.bl = add nuw nsw <8 x i32> %i.bk, %broadcast.splat493
  %i.bm = shl nuw nsw <8 x i32> %i.bl, splat (i32 3)
  %i.bn = and <8 x i32> %i.bm, splat (i32 63488)
  %i.bo = lshr <8 x i16> %wide.load501, splat (i16 5)
  %.inner = and <8 x i16> %i.bo, splat (i16 63)
  %i.bp = zext nneg <8 x i16> %.inner to <8 x i32>
  %i.bq = mul nuw nsw <8 x i32> %broadcast.splat491, %i.bp
  %i.br = add nuw nsw <8 x i32> %i.bq, %broadcast.splat495
  %i.bs = lshr <8 x i32> %i.br, splat (i32 3)
  %i.bt = and <8 x i32> %i.bs, splat (i32 2016)
  %.inner540 = and <8 x i16> %wide.load501, splat (i16 31)
  %i.bu = zext nneg <8 x i16> %.inner540 to <8 x i32>
  %i.bv = mul nuw nsw <8 x i32> %broadcast.splat491, %i.bu
  %i.bw = add nuw nsw <8 x i32> %i.bv, %broadcast.splat497
  %i.bx = lshr <8 x i32> %i.bw, splat (i32 8)
  %i.by = or disjoint <8 x i32> %i.bn, %i.bx
  %i.bz = add nuw nsw <8 x i32> %i.by, %i.bt
  %i.ca = trunc <8 x i32> %i.bz to <8 x i16>
  store <8 x i16> %i.ca, ptr %next.gep500, align 2, !tbaa !51, !alias.scope !97, !noalias !94
  %index.next502 = add nuw i64 %index499, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next502, %n.vec489
  br i1 %i.cb, label %middle.block503, label %vector.body498, !llvm.loop !99

middle.block503:                                  ; preds = %vector.body498
  br i1 %cmp.n504, label %._crit_edge303, label %scalar.ph486.preheader

scalar.ph486.preheader:                           ; preds = %.preheader283, %middle.block503
  %indvars.iv373.ph = phi i64 [ %n.vec489, %middle.block503 ], [ 0, %.preheader283 ]
  %.3246302.ph = phi ptr [ %i.bf, %middle.block503 ], [ %.1242307.a, %.preheader283 ]
  br label %scalar.ph486

scalar.ph486:                                     ; preds = %scalar.ph486.preheader, %scalar.ph486
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %scalar.ph486 ], [ %indvars.iv373.ph, %scalar.ph486.preheader ] ; 2 uses
  %.3246302 = phi ptr [ %i.cx, %scalar.ph486 ], [ %.3246302.ph, %scalar.ph486.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.1242307, i64 %indvars.iv373
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !51
  %i.ce = zext i16 %i.cd to i32                   ; 3 uses
  %i.cf = lshr i32 %i.ce, 11
  %i.cg = mul nuw nsw i32 %i.cf, %i.au
  %i.ch = add nuw nsw i32 %i.cg, %i.ar
  %i.ci = shl nuw nsw i32 %i.ch, 3
  %i.cj = and i32 %i.ci, 63488
  %i.ck = lshr i32 %i.ce, 5
  %i.cl = and i32 %i.ck, 63
  %i.cm = mul nuw nsw i32 %i.cl, %i.au
  %i.cn = add nuw nsw i32 %i.cm, %i.ao
  %i.co = lshr i32 %i.cn, 3
  %i.cp = and i32 %i.co, 2016
  %i.cq = and i32 %i.ce, 31
  %i.cr = mul nuw nsw i32 %i.cq, %i.au
  %i.cs = add nuw nsw i32 %i.cr, %i.al
  %i.ct = lshr i32 %i.cs, 8
  %i.cu = or disjoint i32 %i.cj, %i.ct
  %i.cv = add nuw nsw i32 %i.cu, %i.cp
  %i.cw = trunc i32 %i.cv to i16
  store i16 %i.cw, ptr %.3246302, align 2, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %.3246302, i64 2 ; 2 uses
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %._crit_edge303, label %scalar.ph486, !llvm.loop !100

._crit_edge303:                                   ; preds = %scalar.ph486, %middle.block503
  %.lcssa446 = phi ptr [ %i.bf, %middle.block503 ], [ %i.cx, %scalar.ph486 ]
  %i.cy = getelementptr inbounds [2 x i8], ptr %.1242307, i64 %i.av
  %i.cz = add nuw nsw i32 %.0251305, 1            ; 2 uses
  %exitcond378.not = icmp eq i32 %i.cz, %i.c
  br i1 %exitcond378.not, label %.loopexit, label %.preheader283, !llvm.loop !101

bb.d:                                             ; preds = %bb.a
  %i.da = load i16, ptr %.sroa.10.0..sroa_idx, align 1
  %i.db = zext i16 %i.da to i24
  %i.dc = shl nuw i24 %i.db, 8
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !31
  %i.df = load i32, ptr %7, align 8, !tbaa !33
  %i.dg = sdiv i32 %4, 2
  %.sroa.0130.0.insert.ext = zext i8 %.sroa.0130.0.copyload to i24
  %.sroa.0130.0.insert.insert = or disjoint i24 %i.dc, %.sroa.0130.0.insert.ext
  %i.dh = call zeroext i16 @lv_color_to_u16(i24 %.sroa.0130.0.insert.insert) #6 ; 3 uses
  %i.di = icmp ugt i8 %i.g, -4
  br i1 %i.di, label %.preheader286, label %bb.e

.preheader286:                                    ; preds = %bb.d
  %i.dj = icmp sgt i32 %i.c, 0
  %i.dk = icmp sgt i32 %i.b, 0
  %or.cond347 = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond347, label %.preheader285.preheader, label %.loopexit

.preheader285.preheader:                          ; preds = %.preheader286
  %i.dl = zext nneg i32 %i.b to i64               ; 5 uses
  %min.iters.check458 = icmp ult i32 %i.b, 4
  %min.iters.check459 = icmp ult i32 %i.b, 16
  %i.dm = and i64 %i.dl, 12
  %n.vec461 = and i64 %i.dl, 2147483632           ; 5 uses
  %i.dn = shl nuw nsw i64 %n.vec461, 1
  %i.do = trunc nuw nsw i64 %n.vec461 to i32
  %broadcast.splatinsert462 = insertelement <8 x i16> poison, i16 %i.dh, i64 0
  %broadcast.splat463 = shufflevector <8 x i16> %broadcast.splatinsert462, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n469 = icmp eq i64 %n.vec461, %i.dl
  %min.epilog.iters.check = icmp eq i64 %i.dm, 0
  %n.vec472 = and i64 %i.dl, 2147483644           ; 4 uses
  %i.dp = shl nuw nsw i64 %n.vec472, 1
  %i.dq = trunc nuw nsw i64 %n.vec472 to i32
  %broadcast.splatinsert473 = insertelement <4 x i16> poison, i16 %i.dh, i64 0
  %broadcast.splat474 = shufflevector <4 x i16> %broadcast.splatinsert473, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n478 = icmp eq i64 %n.vec472, %i.dl
  br label %iter.check

iter.check:                                       ; preds = %.preheader285.preheader, %._crit_edge297
  %.0257300 = phi ptr [ %.lcssa447, %._crit_edge297 ], [ %3, %.preheader285.preheader ] ; 5 uses
  %.0261299 = phi i32 [ %i.ea, %._crit_edge297 ], [ 0, %.preheader285.preheader ]
  br i1 %min.iters.check458, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check459, label %vec.epilog.ph, label %vector.ph460

vector.ph460:                                     ; preds = %vector.main.loop.iter.check
  %i.dr = getelementptr i8, ptr %.0257300, i64 %i.dn ; 2 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph460
  %index465 = phi i64 [ 0, %vector.ph460 ], [ %index.next467, %vector.body464 ] ; 2 uses
  %i.ds = shl i64 %index465, 1
  %next.gep466 = getelementptr i8, ptr %.0257300, i64 %i.ds ; 2 uses
  %i.dt = getelementptr i8, ptr %next.gep466, i64 16
  store <8 x i16> %broadcast.splat463, ptr %next.gep466, align 2, !tbaa !51
  store <8 x i16> %broadcast.splat463, ptr %i.dt, align 2, !tbaa !51
  %index.next467 = add nuw i64 %index465, 16      ; 2 uses
  %i.du = icmp eq i64 %index.next467, %n.vec461
  br i1 %i.du, label %middle.block468, label %vector.body464, !llvm.loop !102

middle.block468:                                  ; preds = %vector.body464
  br i1 %cmp.n469, label %._crit_edge297, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block468
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec461, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dv = getelementptr i8, ptr %.0257300, i64 %i.dp ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index475 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next477, %vec.epilog.vector.body ] ; 2 uses
  %i.dw = shl i64 %index475, 1
  %next.gep476 = getelementptr i8, ptr %.0257300, i64 %i.dw
  store <4 x i16> %broadcast.splat474, ptr %next.gep476, align 2, !tbaa !51
  %index.next477 = add nuw i64 %index475, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next477, %n.vec472
  br i1 %i.dx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !103

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n478, label %._crit_edge297, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1258296.ph = phi ptr [ %.0257300, %iter.check ], [ %i.dr, %vec.epilog.iter.check ], [ %i.dv, %vec.epilog.middle.block ]
  %.0262295.ph = phi i32 [ 0, %iter.check ], [ %i.do, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.1258296 = phi ptr [ %i.dy, %vec.epilog.scalar.ph ], [ %.1258296.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0262295 = phi i32 [ %i.dz, %vec.epilog.scalar.ph ], [ %.0262295.ph, %vec.epilog.scalar.ph.preheader ]
  store i16 %i.dh, ptr %.1258296, align 2, !tbaa !51
  %i.dy = getelementptr inbounds nuw i8, ptr %.1258296, i64 2 ; 2 uses
  %i.dz = add nuw nsw i32 %.0262295, 1            ; 2 uses
  %exitcond371.not = icmp eq i32 %i.dz, %i.b
  br i1 %exitcond371.not, label %._crit_edge297, label %vec.epilog.scalar.ph, !llvm.loop !104

._crit_edge297:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block468
  %.lcssa447 = phi ptr [ %i.dv, %vec.epilog.middle.block ], [ %i.dr, %middle.block468 ], [ %i.dy, %vec.epilog.scalar.ph ]
  %i.ea = add nuw nsw i32 %.0261299, 1            ; 2 uses
  %exitcond372.not = icmp eq i32 %i.ea, %i.c
  br i1 %exitcond372.not, label %.loopexit, label %iter.check, !llvm.loop !105

bb.e:                                             ; preds = %bb.d
  %i.eb = lshr i8 %.sroa.0130.0.copyload, 3
  %i.ec = zext nneg i8 %i.eb to i32
  %i.ed = mul nuw nsw i32 %i.h, %i.ec             ; 2 uses
  %i.ee = lshr i8 %i.e, 2
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = mul nuw nsw i32 %i.h, %i.ef             ; 2 uses
  %i.eh = lshr i8 %.sroa.15.0.copyload, 3
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.ei, %i.h             ; 2 uses
  %i.ek = icmp sgt i32 %i.c, 0
  br i1 %i.ek, label %.preheader288.lr.ph, label %.loopexit

.preheader288.lr.ph:                              ; preds = %bb.e
  %i.el = icmp sgt i32 %i.b, 0
  %i.em = zext i8 %i.i to i32                     ; 4 uses
  %i.en = sext i32 %i.dg to i64                   ; 2 uses
  br i1 %i.el, label %.preheader288.preheader, label %.loopexit

.preheader288.preheader:                          ; preds = %.preheader288.lr.ph
  %i.eo = mul i32 %i.de, %4
  %i.ep = sext i32 %i.eo to i64                   ; 2 uses
  %i.eq = getelementptr i8, ptr %2, i64 %i.ep
  %i.er = shl i32 %i.df, 1
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr i8, ptr %i.eq, i64 %i.es  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %17 = add nsw i32 %i.c, -1
  %18 = zext i32 %17 to i64                       ; 2 uses
  %19 = shl nuw nsw i64 %18, 1
  %i.eu = add nuw nsw i64 %19, 2
  %20 = mul i64 %i.eu, %wide.trip.count
  %scevgep = getelementptr i8, ptr %3, i64 %20
  %21 = mul nsw i64 %i.en, %18
  %i.ev = add i64 %21, %wide.trip.count
  %22 = shl i64 %i.ev, 1
  %23 = getelementptr i8, ptr %2, i64 %22
  %24 = getelementptr i8, ptr %23, i64 %i.ep
  %scevgep449 = getelementptr i8, ptr %24, i64 %i.es
  %min.iters.check = icmp ult i32 %i.b, 8
  %bound0 = icmp ult ptr %3, %scevgep449
  %bound1 = icmp ult ptr %i.et, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %4, -1
  %25 = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.ew = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.em, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert450 = insertelement <8 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat451 = shufflevector <8 x i32> %broadcast.splatinsert450, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert452 = insertelement <8 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat453 = shufflevector <8 x i32> %broadcast.splatinsert452, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert454 = insertelement <8 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat455 = shufflevector <8 x i32> %broadcast.splatinsert454, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.preheader, %._crit_edge
  %.1254294 = phi ptr [ %i.gy, %._crit_edge ], [ %i.et, %.preheader288.preheader ] ; 3 uses
  %.1254294.a = phi ptr [ %.lcssa448, %._crit_edge ], [ %3, %.preheader288.preheader ] ; 3 uses
  %.0265292 = phi i32 [ %i.gz, %._crit_edge ], [ 0, %.preheader288.preheader ]
  %brmerge590 = select i1 %min.iters.check, i1 true, i1 %25
  br i1 %brmerge590, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader288
  %i.ex = getelementptr i8, ptr %.1254294.a, i64 %i.ew ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ey = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.1254294.a, i64 %i.ey
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.1254294, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ez, align 2, !tbaa !51, !alias.scope !106
  %i.fa = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load) ; 3 uses
  %i.fb = lshr <8 x i16> %i.fa, splat (i16 11)
  %i.fc = zext nneg <8 x i16> %i.fb to <8 x i32>
  %i.fd = mul nuw nsw <8 x i32> %broadcast.splat, %i.fc
  %i.fe = add nuw nsw <8 x i32> %i.fd, %broadcast.splat451
  %i.ff = shl nuw nsw <8 x i32> %i.fe, splat (i32 3)
  %i.fg = and <8 x i32> %i.ff, splat (i32 63488)
  %i.fh = lshr <8 x i16> %i.fa, splat (i16 5)
  %i.fi = and <8 x i16> %i.fh, splat (i16 63)
  %i.fj = zext nneg <8 x i16> %i.fi to <8 x i32>
  %i.fk = mul nuw nsw <8 x i32> %broadcast.splat, %i.fj
  %i.fl = add nuw nsw <8 x i32> %i.fk, %broadcast.splat453
  %i.fm = lshr <8 x i32> %i.fl, splat (i32 3)
  %i.fn = and <8 x i32> %i.fm, splat (i32 2016)
  %i.fo = and <8 x i16> %i.fa, splat (i16 31)
  %i.fp = zext nneg <8 x i16> %i.fo to <8 x i32>
  %i.fq = mul nuw nsw <8 x i32> %broadcast.splat, %i.fp
  %i.fr = add nuw nsw <8 x i32> %i.fq, %broadcast.splat455
  %i.fs = lshr <8 x i32> %i.fr, splat (i32 8)
  %i.ft = or disjoint <8 x i32> %i.fg, %i.fs
  %i.fu = add nuw nsw <8 x i32> %i.ft, %i.fn
  %i.fv = trunc <8 x i32> %i.fu to <8 x i16>
  %i.fw = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fv)
  store <8 x i16> %i.fw, ptr %next.gep, align 2, !tbaa !51, !alias.scope !109, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader288, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader288 ]
  %.3260291.ph = phi ptr [ %i.ex, %middle.block ], [ %.1254294.a, %.preheader288 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.3260291 = phi ptr [ %i.gx, %scalar.ph ], [ %.3260291.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.1254294, i64 %indvars.iv
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !51
  %i.ga = call noundef i16 @llvm.bswap.i16(i16 %i.fz) ; 3 uses
  %i.gb = lshr i16 %i.ga, 11
  %i.gc = zext nneg i16 %i.gb to i32
  %i.gd = mul nuw nsw i32 %i.gc, %i.em
  %i.ge = add nuw nsw i32 %i.gd, %i.ej
  %i.gf = shl nuw nsw i32 %i.ge, 3
  %i.gg = and i32 %i.gf, 63488
  %i.gh = lshr i16 %i.ga, 5
  %i.gi = and i16 %i.gh, 63
  %i.gj = zext nneg i16 %i.gi to i32
  %i.gk = mul nuw nsw i32 %i.gj, %i.em
  %i.gl = add nuw nsw i32 %i.gk, %i.eg
  %i.gm = lshr i32 %i.gl, 3
  %i.gn = and i32 %i.gm, 2016
  %i.go = and i16 %i.ga, 31
  %i.gp = zext nneg i16 %i.go to i32
  %i.gq = mul nuw nsw i32 %i.gp, %i.em
  %i.gr = add nuw nsw i32 %i.gq, %i.ed
  %i.gs = lshr i32 %i.gr, 8
  %i.gt = or disjoint i32 %i.gg, %i.gs
  %i.gu = add nuw nsw i32 %i.gt, %i.gn
  %i.gv = trunc i32 %i.gu to i16
  %i.gw = call noundef i16 @llvm.bswap.i16(i16 %i.gv)
  store i16 %i.gw, ptr %.3260291, align 2, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %.3260291, i64 2 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !112

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa448 = phi ptr [ %i.ex, %middle.block ], [ %i.gx, %scalar.ph ]
  %i.gy = getelementptr inbounds [2 x i8], ptr %.1254294, i64 %i.en
  %i.gz = add nuw nsw i32 %.0265292, 1            ; 2 uses
  %exitcond370.not = icmp eq i32 %i.gz, %i.c
  br i1 %exitcond370.not, label %.loopexit, label %.preheader288, !llvm.loop !113

bb.f:                                             ; preds = %bb.a
  %i.ha = icmp eq i32 %5, 16                      ; 2 uses
  %i.hb = add i32 %5, -15
  %or.cond5 = icmp ult i32 %i.hb, 3
  br i1 %or.cond5, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.hc = call zeroext i8 @lv_color_format_get_size(i32 noundef %5) #6 ; 3 uses
  %i.hd = zext i8 %i.hc to i32                    ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !31
  %i.hg = mul nsw i32 %i.hf, %4
  %i.hh = load i32, ptr %7, align 8, !tbaa !33
  %i.hi = mul i32 %i.hh, %i.hd
  %i.hj = add i32 %i.hi, %i.hg
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 %i.hk ; 3 uses
  %i.hm = icmp ugt i8 %i.g, -4
  br i1 %i.hm, label %.preheader275, label %bb.j

.preheader275:                                    ; preds = %bb.g
  %i.hn = icmp sgt i32 %i.c, 0
  br i1 %i.hn, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader275
  %i.ho = icmp sgt i32 %i.b, 0
  %i.hp = zext i8 %i.hc to i64                    ; 16 uses
  %i.hq = mul i32 %i.b, %i.hd
  %i.hr = sub i32 %4, %i.hq
  %i.hs = zext i32 %i.hr to i64
  br i1 %i.ho, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %i.ha, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.ht = add nsw i32 %i.b, -1
  %xtraiter = and i32 %i.b, 3                     ; 3 uses
  %i.hu = icmp ult i32 %i.ht, 3
  %unroll_iter = and i32 %i.b, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod562 = icmp ne i32 %xtraiter, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.hv = add nsw i32 %i.b, -1
  %xtraiter564 = and i32 %i.b, 3                  ; 3 uses
  %i.hw = icmp ult i32 %i.hv, 3
  %unroll_iter570 = and i32 %i.b, 2147483644
  %lcmp.mod566.not = icmp eq i32 %xtraiter564, 0
  %lcmp.mod569 = icmp ne i32 %xtraiter564, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge338.split.us.us
  %.0344.us = phi ptr [ %i.ji, %._crit_edge338.split.us.us ], [ %i.hl, %.preheader.us.preheader ] ; 2 uses
  %.0235343.us = phi ptr [ %.lcssa, %._crit_edge338.split.us.us ], [ %3, %.preheader.us.preheader ] ; 2 uses
  %.0264342.us = phi i32 [ %i.jj, %._crit_edge338.split.us.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.hw, label %.epil.preheader563, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.1337.us.us = phi ptr [ %i.ix, %.preheader.us.new ], [ %.0344.us, %.preheader.us ] ; 2 uses
  %.1236336.us.us = phi ptr [ %i.iy, %.preheader.us.new ], [ %.0235343.us, %.preheader.us ] ; 5 uses
  %niter571 = phi i32 [ %niter571.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  store i8 %.sroa.0130.0.copyload, ptr %.1236336.us.us, align 1, !tbaa !44
  %i.hx = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 1
  store i8 %i.e, ptr %i.hx, align 1, !tbaa !44
  %i.hy = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.hy, align 1, !tbaa !44
  %i.hz = getelementptr inbounds nuw i8, ptr %.1337.us.us, i64 3
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !44
  %i.ib = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 3
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !44
  %i.ic = getelementptr inbounds nuw i8, ptr %.1337.us.us, i64 %i.hp ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 %i.hp ; 5 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.id, align 1, !tbaa !44
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  store i8 %i.e, ptr %i.ie, align 1, !tbaa !44
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.if, align 1, !tbaa !44
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 3
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !44
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 3
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !44
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.hp ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hp ; 5 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.ik, align 1, !tbaa !44
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  store i8 %i.e, ptr %i.il, align 1, !tbaa !44
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.im, align 1, !tbaa !44
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 3
  %i.io = load i8, ptr %i.in, align 1, !tbaa !44
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 3
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !44
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.hp ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.hp ; 5 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.ir, align 1, !tbaa !44
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 1
  store i8 %i.e, ptr %i.is, align 1, !tbaa !44
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.it, align 1, !tbaa !44
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 3
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !44
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 3
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !44
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.hp ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.hp ; 3 uses
  %niter571.next.3 = add nuw nsw i32 %niter571, 4 ; 2 uses
  %niter571.ncmp.3 = icmp eq i32 %niter571.next.3, %unroll_iter570
  br i1 %niter571.ncmp.3, label %._crit_edge338.split.us.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !114

._crit_edge338.split.us.us.unr-lcssa:             ; preds = %.preheader.us.new
  br i1 %lcmp.mod566.not, label %._crit_edge338.split.us.us, label %.epil.preheader563

.epil.preheader563:                               ; preds = %._crit_edge338.split.us.us.unr-lcssa, %.preheader.us
  %.1337.us.us.epil.init = phi ptr [ %.0344.us, %.preheader.us ], [ %i.ix, %._crit_edge338.split.us.us.unr-lcssa ]
  %.1236336.us.us.epil.init = phi ptr [ %.0235343.us, %.preheader.us ], [ %i.iy, %._crit_edge338.split.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod569)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader563
  %.1337.us.us.epil = phi ptr [ %.1337.us.us.epil.init, %.epil.preheader563 ], [ %i.je, %bb.h ] ; 3 uses
  %.1236336.us.us.epil = phi ptr [ %.1236336.us.us.epil.init, %.epil.preheader563 ], [ %i.jf, %bb.h ] ; 5 uses
  %epil.iter565 = phi i32 [ 0, %.epil.preheader563 ], [ %epil.iter565.next, %bb.h ]
  store i8 %.sroa.0130.0.copyload, ptr %.1236336.us.us.epil, align 1, !tbaa !44
  %i.iz = getelementptr inbounds nuw i8, ptr %.1236336.us.us.epil, i64 1
  store i8 %i.e, ptr %i.iz, align 1, !tbaa !44
  %i.ja = getelementptr inbounds nuw i8, ptr %.1236336.us.us.epil, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.ja, align 1, !tbaa !44
  %i.jb = getelementptr inbounds nuw i8, ptr %.1337.us.us.epil, i64 3
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !44
  %i.jd = getelementptr inbounds nuw i8, ptr %.1236336.us.us.epil, i64 3
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !44
  %i.je = getelementptr inbounds nuw i8, ptr %.1337.us.us.epil, i64 %i.hp
  %i.jf = getelementptr inbounds nuw i8, ptr %.1236336.us.us.epil, i64 %i.hp ; 2 uses
  %epil.iter565.next = add i32 %epil.iter565, 1   ; 2 uses
  %epil.iter565.cmp.not = icmp eq i32 %epil.iter565.next, %xtraiter564
  br i1 %epil.iter565.cmp.not, label %._crit_edge338.split.us.us, label %bb.h, !llvm.loop !115

._crit_edge338.split.us.us:                       ; preds = %bb.h, %._crit_edge338.split.us.us.unr-lcssa
  %i.jg = phi ptr [ %i.iq, %._crit_edge338.split.us.us.unr-lcssa ], [ %.1337.us.us.epil, %bb.h ]
  %.lcssa = phi ptr [ %i.iy, %._crit_edge338.split.us.us.unr-lcssa ], [ %i.jf, %bb.h ]
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.hp
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.hs
  %i.jj = add nuw nsw i32 %.0264342.us, 1         ; 2 uses
  %exitcond390.not = icmp eq i32 %i.jj, %i.c
  br i1 %exitcond390.not, label %.loopexit, label %.preheader.us, !llvm.loop !117

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge338.split
  %.0235343 = phi ptr [ %.lcssa543, %._crit_edge338.split ], [ %3, %.preheader.preheader ] ; 2 uses
  %.0264342 = phi i32 [ %i.jz, %._crit_edge338.split ], [ 0, %.preheader.preheader ]
  br i1 %i.hu, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.1236336 = phi ptr [ %i.jv, %.preheader.new ], [ %.0235343, %.preheader ] ; 4 uses
  %niter = phi i32 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  store i8 %.sroa.0130.0.copyload, ptr %.1236336, align 1, !tbaa !44
  %i.jk = getelementptr inbounds nuw i8, ptr %.1236336, i64 1
  store i8 %i.e, ptr %i.jk, align 1, !tbaa !44
  %i.jl = getelementptr inbounds nuw i8, ptr %.1236336, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.jl, align 1, !tbaa !44
  %i.jm = getelementptr inbounds nuw i8, ptr %.1236336, i64 %i.hp ; 4 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.jm, align 1, !tbaa !44
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  store i8 %i.e, ptr %i.jn, align 1, !tbaa !44
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.jo, align 1, !tbaa !44
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.hp ; 4 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.jp, align 1, !tbaa !44
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1
  store i8 %i.e, ptr %i.jq, align 1, !tbaa !44
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.jr, align 1, !tbaa !44
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.hp ; 4 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.js, align 1, !tbaa !44
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  store i8 %i.e, ptr %i.jt, align 1, !tbaa !44
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.ju, align 1, !tbaa !44
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.hp ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge338.split.unr-lcssa, label %.preheader.new, !llvm.loop !114

._crit_edge338.split.unr-lcssa:                   ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge338.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge338.split.unr-lcssa, %.preheader
  %.1236336.epil.init = phi ptr [ %.0235343, %.preheader ], [ %i.jv, %._crit_edge338.split.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod562)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.1236336.epil = phi ptr [ %.1236336.epil.init, %.epil.preheader ], [ %i.jy, %bb.i ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  store i8 %.sroa.0130.0.copyload, ptr %.1236336.epil, align 1, !tbaa !44
  %i.jw = getelementptr inbounds nuw i8, ptr %.1236336.epil, i64 1
  store i8 %i.e, ptr %i.jw, align 1, !tbaa !44
  %i.jx = getelementptr inbounds nuw i8, ptr %.1236336.epil, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.jx, align 1, !tbaa !44
  %i.jy = getelementptr inbounds nuw i8, ptr %.1236336.epil, i64 %i.hp ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge338.split, label %bb.i, !llvm.loop !118

._crit_edge338.split:                             ; preds = %bb.i, %._crit_edge338.split.unr-lcssa
  %.lcssa543 = phi ptr [ %i.jv, %._crit_edge338.split.unr-lcssa ], [ %i.jy, %bb.i ]
  %i.jz = add nuw nsw i32 %.0264342, 1            ; 2 uses
  %exitcond388.not = icmp eq i32 %i.jz, %i.c
  br i1 %exitcond388.not, label %.loopexit, label %.preheader, !llvm.loop !117

bb.j:                                             ; preds = %bb.g
  %i.ka = zext i8 %.sroa.0130.0.copyload to i32
  %i.kb = mul nuw nsw i32 %i.h, %i.ka             ; 2 uses
  %i.kc = zext i8 %i.e to i32
  %i.kd = mul nuw nsw i32 %i.h, %i.kc             ; 2 uses
  %i.ke = zext i8 %.sroa.15.0.copyload to i32
  %i.kf = mul nuw nsw i32 %i.h, %i.ke             ; 2 uses
  %i.kg = icmp sgt i32 %i.c, 0
  br i1 %i.kg, label %.preheader276.lr.ph, label %.loopexit

.preheader276.lr.ph:                              ; preds = %bb.j
  %i.kh = icmp sgt i32 %i.b, 0
  %i.ki = zext i8 %i.i to i32                     ; 6 uses
  %i.kj = zext i8 %i.hc to i64                    ; 4 uses
  %i.kk = mul i32 %i.b, %i.hd
  %i.kl = sub i32 %4, %i.kk
  %i.km = zext i32 %i.kl to i64                   ; 2 uses
  br i1 %i.kh, label %.preheader276.lr.ph.split, label %.loopexit

.preheader276.lr.ph.split:                        ; preds = %.preheader276.lr.ph
  br i1 %i.ha, label %.preheader276.us, label %.preheader276

.preheader276.us:                                 ; preds = %.preheader276.lr.ph.split, %._crit_edge326.split.us.us
  %.2332.us = phi ptr [ %i.lp, %._crit_edge326.split.us.us ], [ %i.hl, %.preheader276.lr.ph.split ]
  %.2237331.us = phi ptr [ %i.ln, %._crit_edge326.split.us.us ], [ %3, %.preheader276.lr.ph.split ]
  %.0256330.us = phi i32 [ %i.lq, %._crit_edge326.split.us.us ], [ 0, %.preheader276.lr.ph.split ]
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader276.us
  %.3325.us.us = phi ptr [ %.2332.us, %.preheader276.us ], [ %i.lm, %bb.k ] ; 5 uses
  %.3238324.us.us = phi ptr [ %.2237331.us, %.preheader276.us ], [ %i.ln, %bb.k ] ; 5 uses
  %.0255323.us.us = phi i32 [ 0, %.preheader276.us ], [ %i.lo, %bb.k ]
  %i.kn = load i8, ptr %.3325.us.us, align 1, !tbaa !44
  %i.ko = zext i8 %i.kn to i32
  %i.kp = mul nuw nsw i32 %i.ko, %i.ki
  %i.kq = add nuw nsw i32 %i.kp, %i.kb
  %i.kr = lshr i32 %i.kq, 8
  %i.ks = trunc i32 %i.kr to i8
  store i8 %i.ks, ptr %.3238324.us.us, align 1, !tbaa !44
  %i.kt = getelementptr inbounds nuw i8, ptr %.3325.us.us, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !44
  %i.kv = zext i8 %i.ku to i32
  %i.kw = mul nuw nsw i32 %i.kv, %i.ki
  %i.kx = add nuw nsw i32 %i.kw, %i.kd
  %i.ky = lshr i32 %i.kx, 8
  %i.kz = trunc i32 %i.ky to i8
  %i.la = getelementptr inbounds nuw i8, ptr %.3238324.us.us, i64 1
  store i8 %i.kz, ptr %i.la, align 1, !tbaa !44
  %i.lb = getelementptr inbounds nuw i8, ptr %.3325.us.us, i64 2
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !44
  %i.ld = zext i8 %i.lc to i32
  %i.le = mul nuw nsw i32 %i.ld, %i.ki
  %i.lf = add nuw nsw i32 %i.le, %i.kf
  %i.lg = lshr i32 %i.lf, 8
  %i.lh = trunc i32 %i.lg to i8
  %i.li = getelementptr inbounds nuw i8, ptr %.3238324.us.us, i64 2
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !44
  %i.lj = getelementptr inbounds nuw i8, ptr %.3325.us.us, i64 3
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !44
  %i.ll = getelementptr inbounds nuw i8, ptr %.3238324.us.us, i64 3
  store i8 %i.lk, ptr %i.ll, align 1, !tbaa !44
  %i.lm = getelementptr inbounds nuw i8, ptr %.3325.us.us, i64 %i.kj ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.3238324.us.us, i64 %i.kj ; 2 uses
  %i.lo = add nuw nsw i32 %.0255323.us.us, 1      ; 2 uses
  %exitcond385.not = icmp eq i32 %i.lo, %i.b
  br i1 %exitcond385.not, label %._crit_edge326.split.us.us, label %bb.k, !llvm.loop !119

._crit_edge326.split.us.us:                       ; preds = %bb.k
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.km
  %i.lq = add nuw nsw i32 %.0256330.us, 1         ; 2 uses
  %exitcond386.not = icmp eq i32 %i.lq, %i.c
  br i1 %exitcond386.not, label %.loopexit, label %.preheader276.us, !llvm.loop !120

.preheader276:                                    ; preds = %.preheader276.lr.ph.split, %._crit_edge326.split
  %.2332 = phi ptr [ %i.mq, %._crit_edge326.split ], [ %i.hl, %.preheader276.lr.ph.split ]
  %.2237331 = phi ptr [ %i.mo, %._crit_edge326.split ], [ %3, %.preheader276.lr.ph.split ]
  %.0256330 = phi i32 [ %i.mr, %._crit_edge326.split ], [ 0, %.preheader276.lr.ph.split ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader276, %bb.l
  %.3325 = phi ptr [ %.2332, %.preheader276 ], [ %i.mn, %bb.l ] ; 4 uses
  %.3238324 = phi ptr [ %.2237331, %.preheader276 ], [ %i.mo, %bb.l ] ; 4 uses
  %.0255323 = phi i32 [ 0, %.preheader276 ], [ %i.mp, %bb.l ]
  %i.lr = load i8, ptr %.3325, align 1, !tbaa !44
  %i.ls = zext i8 %i.lr to i32
  %i.lt = mul nuw nsw i32 %i.ls, %i.ki
  %i.lu = add nuw nsw i32 %i.lt, %i.kb
  %i.lv = lshr i32 %i.lu, 8
  %i.lw = trunc i32 %i.lv to i8
  store i8 %i.lw, ptr %.3238324, align 1, !tbaa !44
  %i.lx = getelementptr inbounds nuw i8, ptr %.3325, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !44
  %i.lz = zext i8 %i.ly to i32
  %i.ma = mul nuw nsw i32 %i.lz, %i.ki
  %i.mb = add nuw nsw i32 %i.ma, %i.kd
  %i.mc = lshr i32 %i.mb, 8
  %i.md = trunc i32 %i.mc to i8
  %i.me = getelementptr inbounds nuw i8, ptr %.3238324, i64 1
  store i8 %i.md, ptr %i.me, align 1, !tbaa !44
  %i.mf = getelementptr inbounds nuw i8, ptr %.3325, i64 2
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !44
  %i.mh = zext i8 %i.mg to i32
  %i.mi = mul nuw nsw i32 %i.mh, %i.ki
  %i.mj = add nuw nsw i32 %i.mi, %i.kf
  %i.mk = lshr i32 %i.mj, 8
  %i.ml = trunc i32 %i.mk to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %.3238324, i64 2
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !44
  %i.mn = getelementptr inbounds nuw i8, ptr %.3325, i64 %i.kj ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.3238324, i64 %i.kj ; 2 uses
  %i.mp = add nuw nsw i32 %.0255323, 1            ; 2 uses
  %exitcond383.not = icmp eq i32 %i.mp, %i.b
  br i1 %exitcond383.not, label %._crit_edge326.split, label %bb.l, !llvm.loop !119

._crit_edge326.split:                             ; preds = %bb.l
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.km
  %i.mr = add nuw nsw i32 %.0256330, 1            ; 2 uses
  %exitcond384.not = icmp eq i32 %i.mr, %i.c
  br i1 %exitcond384.not, label %.loopexit, label %.preheader276, !llvm.loop !120

bb.m:                                             ; preds = %bb.f
  %i.ms = icmp eq i32 %5, 26
  br i1 %i.ms, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.mt = call zeroext i8 @lv_color_format_get_size(i32 noundef 26) #6 ; 2 uses
  %i.mu = zext i8 %.sroa.0130.0.copyload to i32
  %i.mv = mul nuw nsw i32 %i.h, %i.mu
  %i.mw = zext i8 %i.e to i32
  %i.mx = mul nuw nsw i32 %i.h, %i.mw
  %i.my = zext i8 %.sroa.15.0.copyload to i32
  %i.mz = mul nuw nsw i32 %i.h, %i.my
  %i.na = icmp sgt i32 %i.c, 0
  br i1 %i.na, label %.preheader278.lr.ph, label %.loopexit

.preheader278.lr.ph:                              ; preds = %bb.n
  %i.nb = zext i8 %i.mt to i32                    ; 2 uses
  %i.nc = icmp sgt i32 %i.b, 0
  %i.nd = zext i8 %i.i to i32                     ; 3 uses
  %i.ne = zext i8 %i.mt to i64                    ; 2 uses
  %i.nf = mul i32 %i.b, %i.nb
  %i.ng = sub i32 %4, %i.nf
  %i.nh = zext i32 %i.ng to i64
  br i1 %i.nc, label %.preheader278.preheader, label %.loopexit

.preheader278.preheader:                          ; preds = %.preheader278.lr.ph
  %i.ni = load i32, ptr %7, align 8, !tbaa !33
  %i.nj = mul i32 %i.ni, %i.nb
  %i.nk = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !31
  %i.nm = mul nsw i32 %i.nl, %4
  %i.nn = add i32 %i.nj, %i.nm
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 %i.no
  br label %.preheader278

.preheader278:                                    ; preds = %.preheader278.preheader, %._crit_edge317
  %.4322 = phi ptr [ %i.ps, %._crit_edge317 ], [ %i.np, %.preheader278.preheader ]
  %.4239321 = phi ptr [ %i.pq, %._crit_edge317 ], [ %3, %.preheader278.preheader ]
  %.0249320 = phi i32 [ %i.pt, %._crit_edge317 ], [ 0, %.preheader278.preheader ]
  br label %bb.o

bb.o:                                             ; preds = %.preheader278, %bb.r
  %.5316 = phi ptr [ %.4322, %.preheader278 ], [ %i.pp, %bb.r ] ; 8 uses
  %.5240315 = phi ptr [ %.4239321, %.preheader278 ], [ %i.pq, %bb.r ] ; 7 uses
  %.0248314 = phi i32 [ 0, %.preheader278 ], [ %i.pr, %bb.r ]
  %i.nq = getelementptr inbounds nuw i8, ptr %.5316, i64 3
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !44  ; 4 uses
  %.not = icmp eq i8 %i.nr, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ns = zext i8 %i.nr to i32                    ; 3 uses
  %.rhs.trunc = zext i8 %i.nr to i16
  %i.nt = udiv i16 -256, %.rhs.trunc
  %.zext = zext i16 %i.nt to i32                  ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.5316, i64 2
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !44
  %i.nw = zext i8 %i.nv to i32
  %i.nx = mul nuw nsw i32 %i.nw, %.zext
  %i.ny = lshr i32 %i.nx, 8
  %i.nz = getelementptr inbounds nuw i8, ptr %.5316, i64 1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !44
  %i.ob = zext i8 %i.oa to i32
  %i.oc = mul nuw nsw i32 %i.ob, %.zext
  %i.od = lshr i32 %i.oc, 8
  %i.oe = load i8, ptr %.5316, align 1, !tbaa !44
  %i.of = zext i8 %i.oe to i32
  %i.og = mul nuw nsw i32 %i.of, %.zext
  %i.oh = lshr i32 %i.og, 8
  %i.oi = and i32 %i.ny, 255
  %i.oj = mul nuw nsw i32 %i.oi, %i.nd
  %i.ok = add nuw nsw i32 %i.oj, %i.mz
  %i.ol = lshr i32 %i.ok, 8
  %i.om = and i32 %i.od, 255
  %i.on = mul nuw nsw i32 %i.om, %i.nd
  %i.oo = add nuw nsw i32 %i.on, %i.mx
  %i.op = lshr i32 %i.oo, 8
  %i.oq = and i32 %i.oh, 255
  %i.or = mul nuw nsw i32 %i.oq, %i.nd
  %i.os = add nuw nsw i32 %i.or, %i.mv
  %i.ot = lshr i32 %i.os, 8
  %i.ou = and i32 %i.ot, 255
  %i.ov = mul nuw nsw i32 %i.ou, %i.ns
  %i.ow = lshr i32 %i.ov, 8
  %i.ox = trunc nuw i32 %i.ow to i8
  store i8 %i.ox, ptr %.5240315, align 1, !tbaa !44
  %i.oy = and i32 %i.op, 255
  %i.oz = mul nuw nsw i32 %i.oy, %i.ns
  %i.pa = lshr i32 %i.oz, 8
  %i.pb = trunc nuw i32 %i.pa to i8
  %i.pc = getelementptr inbounds nuw i8, ptr %.5240315, i64 1
  store i8 %i.pb, ptr %i.pc, align 1, !tbaa !44
  %i.pd = and i32 %i.ol, 255
  %i.pe = mul nuw nsw i32 %i.pd, %i.ns
  %i.pf = lshr i32 %i.pe, 8
  %i.pg = trunc nuw i32 %i.pf to i8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ph = load i8, ptr %.5316, align 1, !tbaa !44
  store i8 %i.ph, ptr %.5240315, align 1, !tbaa !44
  %i.pi = getelementptr inbounds nuw i8, ptr %.5316, i64 1
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !44
  %i.pk = getelementptr inbounds nuw i8, ptr %.5240315, i64 1
  store i8 %i.pj, ptr %i.pk, align 1, !tbaa !44
  %i.pl = getelementptr inbounds nuw i8, ptr %.5316, i64 2
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !44
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink = phi i8 [ %i.pm, %bb.q ], [ %i.pg, %bb.p ]
  %i.pn = getelementptr inbounds nuw i8, ptr %.5240315, i64 2
  store i8 %.sink, ptr %i.pn, align 1, !tbaa !44
  %i.po = getelementptr inbounds nuw i8, ptr %.5240315, i64 3
  store i8 %i.nr, ptr %i.po, align 1, !tbaa !44
  %i.pp = getelementptr inbounds nuw i8, ptr %.5316, i64 %i.ne ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.5240315, i64 %i.ne ; 2 uses
  %i.pr = add nuw nsw i32 %.0248314, 1            ; 2 uses
  %exitcond381.not = icmp eq i32 %i.pr, %i.b
  br i1 %exitcond381.not, label %._crit_edge317, label %bb.o, !llvm.loop !121

._crit_edge317:                                   ; preds = %bb.r
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.nh
  %i.pt = add nuw nsw i32 %.0249320, 1            ; 2 uses
  %exitcond382.not = icmp eq i32 %i.pt, %i.c
  br i1 %exitcond382.not, label %.loopexit, label %.preheader278, !llvm.loop !122

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge297, %._crit_edge303, %._crit_edge310, %._crit_edge317, %._crit_edge326.split, %._crit_edge326.split.us.us, %._crit_edge338.split, %._crit_edge338.split.us.us, %bb.e, %.preheader288.lr.ph, %.preheader286, %bb.c, %.preheader283.lr.ph, %.preheader281, %bb.n, %.preheader278.lr.ph, %bb.j, %.preheader276.lr.ph, %.preheader275, %.preheader.lr.ph, %bb.m
  ret void
}

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare zeroext i16 @lv_color_to_u16(i24) local_unnamed_addr #2

declare void @lv_draw_sw_mask_radius_init(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @lv_memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lv_draw_sw_mask_apply(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_sw_transform(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i24 @lv_color_make(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @lv_image_decoder_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_image_decoder_close(ptr noundef) local_unnamed_addr #2

declare void @lv_area_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_area_align(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @lv_draw_buf_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lv_draw_buf_goto_xy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 64}
!9 = !{!"_lv_draw_image_dsc_t", !10, i64 0, !12, i64 64, !17, i64 72, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !18, i64 108, !15, i64 116, !6, i64 119, !6, i64 120, !5, i64 121, !14, i64 121, !14, i64 121, !12, i64 128, !19, i64 136, !20, i64 144, !12, i64 160}
!10 = !{!"", !11, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 24, !14, i64 32, !14, i64 34, !15, i64 36, !6, i64 39, !5, i64 40, !5, i64 42, !16, i64 48, !12, i64 56}
!11 = !{!"p1 _ZTS9_lv_obj_t", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS11_lv_layer_t", !12, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2}
!16 = !{!"long", !6, i64 0}
!17 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 4, !5, i64 6, !5, i64 8, !5, i64 10}
!18 = !{!"", !5, i64 0, !5, i64 4}
!19 = !{!"p1 _ZTS20_lv_draw_image_sup_t", !12, i64 0}
!20 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!21 = !{!22, !23, i64 0}
!22 = !{!"_lv_layer_t", !23, i64 0, !24, i64 8, !13, i64 16, !13, i64 24, !12, i64 32, !20, i64 40, !20, i64 56, !20, i64 72, !5, i64 88, !25, i64 92, !5, i64 96, !26, i64 100, !6, i64 101}
!23 = !{!"p1 _ZTS14_lv_draw_buf_t", !12, i64 0}
!24 = !{!"p1 _ZTS15_lv_draw_task_t", !12, i64 0}
!25 = !{!"", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3}
!26 = !{!"_Bool", !6, i64 0}
!27 = !{!9, !12, i64 160}
!28 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 4, !29, i64 12, i64 4, !29}
!29 = !{!5, !5, i64 0}
!30 = !{!20, !5, i64 8}
!31 = !{!20, !5, i64 4}
!32 = !{!20, !5, i64 12}
!33 = !{!20, !5, i64 0}
!34 = !{!35, !23, i64 72}
!35 = !{!"_lv_image_decoder_dsc_t", !36, i64 0, !37, i64 8, !12, i64 16, !5, i64 24, !38, i64 32, !17, i64 56, !23, i64 72, !12, i64 80, !5, i64 88, !5, i64 92, !41, i64 96, !42, i64 104, !43, i64 112, !12, i64 120}
!36 = !{!"p1 _ZTS19_lv_image_decoder_t", !12, i64 0}
!37 = !{!"_lv_image_decoder_args_t", !26, i64 0, !26, i64 1, !26, i64 2, !26, i64 3, !26, i64 4}
!38 = !{!"", !12, i64 0, !39, i64 8, !40, i64 16}
!39 = !{!"p1 _ZTS12_lv_fs_drv_t", !12, i64 0}
!40 = !{!"p1 _ZTS19_lv_fs_file_cache_t", !12, i64 0}
!41 = !{!"p1 omnipotent char", !12, i64 0}
!42 = !{!"p1 _ZTS11_lv_cache_t", !12, i64 0}
!43 = !{!"p1 _ZTS17_lv_cache_entry_t", !12, i64 0}
!44 = !{!6, !6, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = !{i64 0, i64 8, !49, i64 8, i64 4, !29, i64 12, i64 4, !29, i64 16, i64 4, !29, i64 24, i64 8, !50, i64 32, i64 2, !51, i64 34, i64 2, !51, i64 36, i64 1, !44, i64 37, i64 1, !44, i64 38, i64 1, !44, i64 39, i64 1, !44, i64 40, i64 4, !44, i64 48, i64 8, !52, i64 56, i64 8, !53, i64 64, i64 8, !53, i64 72, i64 8, !44, i64 80, i64 4, !44, i64 84, i64 4, !29, i64 88, i64 4, !29, i64 92, i64 4, !29, i64 96, i64 4, !29, i64 100, i64 4, !29, i64 104, i64 4, !29, i64 108, i64 4, !29, i64 112, i64 4, !29, i64 116, i64 1, !44, i64 117, i64 1, !44, i64 118, i64 1, !44, i64 119, i64 1, !44, i64 120, i64 1, !44, i64 121, i64 1, !44, i64 128, i64 8, !53, i64 136, i64 8, !54, i64 144, i64 4, !29, i64 148, i64 4, !29, i64 152, i64 4, !29, i64 156, i64 4, !29, i64 160, i64 8, !53}
!49 = !{!11, !11, i64 0}
!50 = !{!13, !13, i64 0}
!51 = !{!14, !14, i64 0}
!52 = !{!16, !16, i64 0}
!53 = !{!12, !12, i64 0}
!54 = !{!19, !19, i64 0}
!55 = !{!9, !5, i64 88}
!56 = !{!9, !5, i64 92}
!57 = !{!9, !5, i64 96}
!58 = !{!9, !5, i64 84}
!59 = !{!60, !41, i64 16}
!60 = !{!"_lv_draw_buf_t", !17, i64 0, !5, i64 12, !41, i64 16, !12, i64 24, !61, i64 32}
!61 = !{!"p1 _ZTS23_lv_draw_buf_handlers_t", !12, i64 0}
!62 = !{!9, !6, i64 120}
!63 = !{!64, !6, i64 32}
!64 = !{!"_lv_draw_sw_blend_dsc_t", !12, i64 0, !12, i64 8, !5, i64 16, !5, i64 20, !12, i64 24, !6, i64 32, !15, i64 33, !41, i64 40, !5, i64 48, !12, i64 56, !5, i64 64, !5, i64 68}
!65 = !{!64, !5, i64 68}
!66 = !{!64, !5, i64 16}
!67 = !{!64, !41, i64 40}
!68 = !{!64, !12, i64 56}
!69 = !{!64, !5, i64 64}
!70 = !{!64, !12, i64 8}
!71 = !{i64 0, i64 1, !44, i64 1, i64 1, !44, i64 2, i64 1, !44}
!72 = !{!64, !5, i64 48}
!73 = !{!64, !12, i64 0}
!74 = !{!9, !6, i64 119}
!75 = !{!9, !12, i64 128}
!76 = !{!64, !12, i64 24}
!77 = !{!64, !5, i64 20}
!78 = distinct !{!78, !46}
!79 = distinct !{!79, !46}
!80 = distinct !{!80, !46}
!81 = distinct !{!81, !46}
!82 = distinct !{!82, !46}
!83 = distinct !{!83, !46}
!84 = distinct !{!84, !46}
!85 = distinct !{!85, !46}
!86 = distinct !{!86, !46}
!87 = distinct !{!87, !46, !88, !89}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = !{!"llvm.loop.unroll.runtime.disable"}
!90 = !{!"branch_weights", i32 4, i32 12}
!91 = distinct !{!91, !46, !88, !89}
!92 = distinct !{!92, !46, !89, !88}
!93 = distinct !{!93, !46}
!94 = !{!95}
!95 = distinct !{!95, !96}
!96 = distinct !{!96, !"LVerDomain"}
!97 = !{!98}
!98 = distinct !{!98, !96}
!99 = distinct !{!99, !46, !88, !89}
!100 = distinct !{!100, !46, !88}
!101 = distinct !{!101, !46}
!102 = distinct !{!102, !46, !88, !89}
!103 = distinct !{!103, !46, !88, !89}
!104 = distinct !{!104, !46, !89, !88}
!105 = distinct !{!105, !46}
!106 = !{!107}
!107 = distinct !{!107, !108}
!108 = distinct !{!108, !"LVerDomain"}
!109 = !{!110}
!110 = distinct !{!110, !108}
!111 = distinct !{!111, !46, !88, !89}
!112 = distinct !{!112, !46, !88}
!113 = distinct !{!113, !46}
!114 = distinct !{!114, !46}
!115 = distinct !{!115, !116}
!116 = !{!"llvm.loop.unroll.disable"}
!117 = distinct !{!117, !46}
!118 = distinct !{!118, !116}
!119 = distinct !{!119, !46}
!120 = distinct !{!120, !46}
!121 = distinct !{!121, !46}
!122 = distinct !{!122, !46}
end_hunk_0
