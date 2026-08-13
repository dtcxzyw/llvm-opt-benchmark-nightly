inline.NumInlined: 20
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@img_draw_core:bb.a
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
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %7 = alloca %struct.lv_area_t, align 8          ; 12 uses
  store i64 %0, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %1, ptr %i.b, align 8
  %i.c = call i32 @lv_area_get_width(ptr noundef nonnull %7) #6 ; 31 uses
  %i.d = call i32 @lv_area_get_height(ptr noundef nonnull %7) #6 ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 116
  %.sroa.0130.0.copyload = load i8, ptr %i.e, align 4, !tbaa !44 ; 16 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 117 ; 3 uses
  %i.f = load i8, ptr %.sroa.10.0..sroa_idx, align 1, !tbaa !44 ; 14 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 118
  %.sroa.15.0.copyload = load i8, ptr %.sroa.15.0..sroa_idx, align 2, !tbaa !44 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 119
  %i.h = load i8, ptr %i.g, align 1, !tbaa !74    ; 5 uses
  %i.i = zext i8 %i.h to i32                      ; 12 uses
  %i.j = xor i8 %i.h, -1                          ; 4 uses
  switch i32 %5, label %bb.f [
    i32 20, label %bb.b
    i32 18, label %bb.b
    i32 27, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 1
  %i.k = zext i16 %.sroa.10.0.copyload to i24
  %i.l = shl nuw i24 %i.k, 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31
  %i.o = load i32, ptr %7, align 8, !tbaa !33
  %i.p = sdiv i32 %4, 2
  %.sroa.0130.0.insert.ext135 = zext i8 %.sroa.0130.0.copyload to i24
  %.sroa.0130.0.insert.insert137 = or disjoint i24 %i.l, %.sroa.0130.0.insert.ext135
  %i.q = call zeroext i16 @lv_color_to_u16(i24 %.sroa.0130.0.insert.insert137) #6 ; 3 uses
  %i.r = icmp ugt i8 %i.h, -4
  br i1 %i.r, label %.preheader281, label %bb.c

.preheader281:                                    ; preds = %bb.b
  %i.s = icmp sgt i32 %i.d, 0
  %i.t = icmp sgt i32 %i.c, 0
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %.preheader280.preheader.a, label %.loopexit

.preheader280.preheader.a:                        ; preds = %.preheader281
  %i.u = zext nneg i32 %i.c to i64                ; 5 uses
  %min.iters.check508 = icmp ult i32 %i.c, 4
  %min.iters.check510 = icmp ult i32 %i.c, 16
  %8 = and i64 %i.u, 12
  %n.vec512 = and i64 %i.u, 2147483632            ; 5 uses
  %9 = shl nuw nsw i64 %n.vec512, 1
  %10 = trunc nuw nsw i64 %n.vec512 to i32
  %broadcast.splatinsert513 = insertelement <8 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat514 = shufflevector <8 x i16> %broadcast.splatinsert513, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n520 = icmp eq i64 %n.vec512, %i.u
  %min.epilog.iters.check527 = icmp eq i64 %8, 0
  %n.vec529 = and i64 %i.u, 2147483644            ; 4 uses
  %11 = shl nuw nsw i64 %n.vec529, 1
  %12 = trunc nuw nsw i64 %n.vec529 to i32
  %broadcast.splatinsert530 = insertelement <4 x i16> poison, i16 %i.q, i64 0
  %broadcast.splat531 = shufflevector <4 x i16> %broadcast.splatinsert530, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n537 = icmp eq i64 %n.vec529, %i.u
  br label %iter.check524

iter.check524:                                    ; preds = %.preheader280.preheader.a, %._crit_edge310
  %.0243313 = phi ptr [ %.lcssa445, %._crit_edge310 ], [ %3, %.preheader280.preheader.a ] ; 5 uses
  %.0247312 = phi i32 [ %14, %._crit_edge310 ], [ 0, %.preheader280.preheader.a ]
  br i1 %min.iters.check508, label %vec.epilog.scalar.ph525.preheader, label %vector.main.loop.iter.check509

vector.main.loop.iter.check509:                   ; preds = %iter.check524
  br i1 %min.iters.check510, label %vec.epilog.ph528, label %vector.ph511

vector.ph511:                                     ; preds = %vector.main.loop.iter.check509
  %i.v = getelementptr i8, ptr %.0243313, i64 %9  ; 2 uses
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph511
  %index516 = phi i64 [ 0, %vector.ph511 ], [ %index.next518, %vector.body515 ] ; 2 uses
  %i.w = shl i64 %index516, 1
  %next.gep517 = getelementptr i8, ptr %.0243313, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep517, i64 16
  store <8 x i16> %broadcast.splat514, ptr %next.gep517, align 2, !tbaa !51
  store <8 x i16> %broadcast.splat514, ptr %i.x, align 2, !tbaa !51
  %index.next518 = add nuw i64 %index516, 16      ; 2 uses
  %i.y = icmp eq i64 %index.next518, %n.vec512
  br i1 %i.y, label %middle.block519, label %vector.body515, !llvm.loop !87

middle.block519:                                  ; preds = %vector.body515
  br i1 %cmp.n520, label %._crit_edge310, label %vec.epilog.iter.check526

vec.epilog.iter.check526:                         ; preds = %middle.block519
  br i1 %min.epilog.iters.check527, label %vec.epilog.scalar.ph525.preheader, label %vec.epilog.ph528, !prof !90

vec.epilog.ph528:                                 ; preds = %vector.main.loop.iter.check509, %vec.epilog.iter.check526
  %vec.epilog.resume.val521 = phi i64 [ %n.vec512, %vec.epilog.iter.check526 ], [ 0, %vector.main.loop.iter.check509 ]
  %i.z = getelementptr i8, ptr %.0243313, i64 %11 ; 2 uses
  br label %vec.epilog.vector.body532

vec.epilog.vector.body532:                        ; preds = %vec.epilog.vector.body532, %vec.epilog.ph528
  %index533 = phi i64 [ %vec.epilog.resume.val521, %vec.epilog.ph528 ], [ %index.next535, %vec.epilog.vector.body532 ] ; 2 uses
  %i.aa = shl i64 %index533, 1
  %next.gep534 = getelementptr i8, ptr %.0243313, i64 %i.aa
  store <4 x i16> %broadcast.splat531, ptr %next.gep534, align 2, !tbaa !51
  %index.next535 = add nuw i64 %index533, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next535, %n.vec529
  br i1 %i.ab, label %vec.epilog.middle.block536, label %vec.epilog.vector.body532, !llvm.loop !91

vec.epilog.middle.block536:                       ; preds = %vec.epilog.vector.body532
  br i1 %cmp.n537, label %._crit_edge310, label %vec.epilog.scalar.ph525.preheader

vec.epilog.scalar.ph525.preheader:                ; preds = %iter.check524, %vec.epilog.iter.check526, %vec.epilog.middle.block536
  %.1244309.ph = phi ptr [ %.0243313, %iter.check524 ], [ %i.v, %vec.epilog.iter.check526 ], [ %i.z, %vec.epilog.middle.block536 ]
  %.0250308.ph = phi i32 [ 0, %iter.check524 ], [ %10, %vec.epilog.iter.check526 ], [ %12, %vec.epilog.middle.block536 ]
  br label %vec.epilog.scalar.ph525

vec.epilog.scalar.ph525:                          ; preds = %vec.epilog.scalar.ph525.preheader, %vec.epilog.scalar.ph525
  %.1244309 = phi ptr [ %i.ac, %vec.epilog.scalar.ph525 ], [ %.1244309.ph, %vec.epilog.scalar.ph525.preheader ] ; 2 uses
  %.0250308 = phi i32 [ %13, %vec.epilog.scalar.ph525 ], [ %.0250308.ph, %vec.epilog.scalar.ph525.preheader ]
  store i16 %i.q, ptr %.1244309, align 2, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %.1244309, i64 2 ; 2 uses
  %13 = add nuw nsw i32 %.0250308, 1              ; 2 uses
  %exitcond379.not = icmp eq i32 %13, %i.c
  br i1 %exitcond379.not, label %._crit_edge310, label %vec.epilog.scalar.ph525, !llvm.loop !92

._crit_edge310:                                   ; preds = %vec.epilog.scalar.ph525, %vec.epilog.middle.block536, %middle.block519
  %.lcssa445 = phi ptr [ %i.z, %vec.epilog.middle.block536 ], [ %i.v, %middle.block519 ], [ %i.ac, %vec.epilog.scalar.ph525 ]
  %14 = add nuw nsw i32 %.0247312, 1              ; 2 uses
  %exitcond380.not = icmp eq i32 %14, %i.d
  br i1 %exitcond380.not, label %.loopexit, label %iter.check524, !llvm.loop !93

bb.c:                                             ; preds = %bb.b
  %i.ad = lshr i8 %.sroa.0130.0.copyload, 3
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = mul nuw nsw i32 %i.i, %i.ae             ; 2 uses
  %i.ag = lshr i8 %i.f, 2
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.i, %i.ah             ; 2 uses
  %i.aj = lshr i8 %.sroa.15.0.copyload, 3
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = mul nuw nsw i32 %i.ak, %i.i             ; 2 uses
  %i.am = icmp sgt i32 %i.d, 0
  br i1 %i.am, label %.preheader283.lr.ph, label %.loopexit

.preheader283.lr.ph:                              ; preds = %bb.c
  %i.an = icmp sgt i32 %i.c, 0
  %i.ao = zext i8 %i.j to i32                     ; 4 uses
  %i.ap = sext i32 %i.p to i64                    ; 2 uses
  br i1 %i.an, label %.preheader283.preheader, label %.loopexit

.preheader283.preheader:                          ; preds = %.preheader283.lr.ph
  %i.aq = mul i32 %i.n, %4
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %2, i64 %i.ar
  %i.at = shl i32 %i.o, 1
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  %wide.trip.count376 = zext nneg i32 %i.c to i64 ; 3 uses
  %i.aw = add i64 %i.a, %i.ar
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = mul nsw i64 %i.ap, -2
  %min.iters.check487 = icmp ult i32 %i.c, 8
  %n.vec489 = and i64 %wide.trip.count376, 2147483640 ; 4 uses
  %i.az = shl nuw nsw i64 %n.vec489, 1
  %broadcast.splatinsert490.a = insertelement <8 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat491.a = shufflevector <8 x i32> %broadcast.splatinsert490.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert492.a = insertelement <8 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat493.a = shufflevector <8 x i32> %broadcast.splatinsert492.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert494 = insertelement <8 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat495 = shufflevector <8 x i32> %broadcast.splatinsert494, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert496 = insertelement <8 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat497 = shufflevector <8 x i32> %broadcast.splatinsert496, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n504 = icmp eq i64 %n.vec489, %wide.trip.count376
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.preheader, %._crit_edge303
  %indvar483 = phi i64 [ 0, %.preheader283.preheader ], [ %indvar.next484, %._crit_edge303 ] ; 2 uses
  %.1242307 = phi ptr [ %i.av, %.preheader283.preheader ], [ %i.cx, %._crit_edge303 ] ; 3 uses
  %.2245306 = phi ptr [ %3, %.preheader283.preheader ], [ %.lcssa446, %._crit_edge303 ] ; 5 uses
  %.0251305 = phi i32 [ 0, %.preheader283.preheader ], [ %i.cy, %._crit_edge303 ]
  br i1 %min.iters.check487, label %scalar.ph486.preheader, label %vector.memcheck481

vector.memcheck481:                               ; preds = %.preheader283
  %i.ba = mul i64 %i.ay, %indvar483
  %i.bb = sub i64 %i.ba, %i.ax
  %.2245306482 = ptrtoaddr ptr %.2245306 to i64
  %i.bc = add i64 %i.bb, %.2245306482
  %i.bd = add i64 %i.bc, -1
  %diff.check485 = icmp ult i64 %i.bd, 15
  br i1 %diff.check485, label %scalar.ph486.preheader, label %vector.ph488

vector.ph488:                                     ; preds = %vector.memcheck481
  %i.be = getelementptr i8, ptr %.2245306, i64 %i.az ; 2 uses
  br label %vector.body498

vector.body498:                                   ; preds = %vector.body498, %vector.ph488
  %index499 = phi i64 [ 0, %vector.ph488 ], [ %index.next502, %vector.body498 ] ; 3 uses
  %i.bf = shl i64 %index499, 1
  %next.gep500 = getelementptr i8, ptr %.2245306, i64 %i.bf
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.1242307, i64 %index499
  %wide.load501 = load <8 x i16>, ptr %i.bg, align 2, !tbaa !51 ; 3 uses
  %i.bh = lshr <8 x i16> %wide.load501, splat (i16 11)
  %i.bi = zext nneg <8 x i16> %i.bh to <8 x i32>
  %i.bj = mul nuw nsw <8 x i32> %broadcast.splat491.a, %i.bi
  %i.bk = add nuw nsw <8 x i32> %i.bj, %broadcast.splat493.a
  %i.bl = shl nuw nsw <8 x i32> %i.bk, splat (i32 3)
  %i.bm = and <8 x i32> %i.bl, splat (i32 63488)
  %i.bn = lshr <8 x i16> %wide.load501, splat (i16 5)
  %.inner = and <8 x i16> %i.bn, splat (i16 63)
  %i.bo = zext nneg <8 x i16> %.inner to <8 x i32>
  %i.bp = mul nuw nsw <8 x i32> %broadcast.splat491.a, %i.bo
  %i.bq = add nuw nsw <8 x i32> %i.bp, %broadcast.splat495
  %i.br = lshr <8 x i32> %i.bq, splat (i32 3)
  %i.bs = and <8 x i32> %i.br, splat (i32 2016)
  %.inner540 = and <8 x i16> %wide.load501, splat (i16 31)
  %i.bt = zext nneg <8 x i16> %.inner540 to <8 x i32>
  %i.bu = mul nuw nsw <8 x i32> %broadcast.splat491.a, %i.bt
  %i.bv = add nuw nsw <8 x i32> %i.bu, %broadcast.splat497
  %i.bw = lshr <8 x i32> %i.bv, splat (i32 8)
  %i.bx = or disjoint <8 x i32> %i.bm, %i.bw
  %i.by = add nuw nsw <8 x i32> %i.bx, %i.bs
  %i.bz = trunc <8 x i32> %i.by to <8 x i16>
  store <8 x i16> %i.bz, ptr %next.gep500, align 2, !tbaa !51
  %index.next502 = add nuw i64 %index499, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next502, %n.vec489
  br i1 %i.ca, label %middle.block503, label %vector.body498, !llvm.loop !94

middle.block503:                                  ; preds = %vector.body498
  br i1 %cmp.n504, label %._crit_edge303, label %scalar.ph486.preheader

scalar.ph486.preheader:                           ; preds = %vector.memcheck481, %.preheader283, %middle.block503
  %indvars.iv373.ph = phi i64 [ 0, %vector.memcheck481 ], [ 0, %.preheader283 ], [ %n.vec489, %middle.block503 ]
  %.3246302.ph = phi ptr [ %.2245306, %vector.memcheck481 ], [ %.2245306, %.preheader283 ], [ %i.be, %middle.block503 ]
  br label %scalar.ph486

scalar.ph486:                                     ; preds = %scalar.ph486.preheader, %scalar.ph486
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %scalar.ph486 ], [ %indvars.iv373.ph, %scalar.ph486.preheader ] ; 2 uses
  %.3246302 = phi ptr [ %i.cw, %scalar.ph486 ], [ %.3246302.ph, %scalar.ph486.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.1242307, i64 %indvars.iv373
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !51
  %i.cd = zext i16 %i.cc to i32                   ; 3 uses
  %i.ce = lshr i32 %i.cd, 11
  %i.cf = mul nuw nsw i32 %i.ce, %i.ao
  %i.cg = add nuw nsw i32 %i.cf, %i.al
  %i.ch = shl nuw nsw i32 %i.cg, 3
  %i.ci = and i32 %i.ch, 63488
  %i.cj = lshr i32 %i.cd, 5
  %i.ck = and i32 %i.cj, 63
  %i.cl = mul nuw nsw i32 %i.ck, %i.ao
  %i.cm = add nuw nsw i32 %i.cl, %i.ai
  %i.cn = lshr i32 %i.cm, 3
  %i.co = and i32 %i.cn, 2016
  %i.cp = and i32 %i.cd, 31
  %i.cq = mul nuw nsw i32 %i.cp, %i.ao
  %i.cr = add nuw nsw i32 %i.cq, %i.af
  %i.cs = lshr i32 %i.cr, 8
  %i.ct = or disjoint i32 %i.ci, %i.cs
  %i.cu = add nuw nsw i32 %i.ct, %i.co
  %i.cv = trunc i32 %i.cu to i16
  store i16 %i.cv, ptr %.3246302, align 2, !tbaa !51
  %i.cw = getelementptr inbounds nuw i8, ptr %.3246302, i64 2 ; 2 uses
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %._crit_edge303, label %scalar.ph486, !llvm.loop !95

._crit_edge303:                                   ; preds = %scalar.ph486, %middle.block503
  %.lcssa446 = phi ptr [ %i.be, %middle.block503 ], [ %i.cw, %scalar.ph486 ]
  %i.cx = getelementptr inbounds [2 x i8], ptr %.1242307, i64 %i.ap
  %i.cy = add nuw nsw i32 %.0251305, 1            ; 2 uses
  %exitcond378.not = icmp eq i32 %i.cy, %i.d
  %indvar.next484 = add i64 %indvar483, 1
  br i1 %exitcond378.not, label %.loopexit, label %.preheader283, !llvm.loop !96

bb.d:                                             ; preds = %bb.a
  %i.cz = load i16, ptr %.sroa.10.0..sroa_idx, align 1
  %i.da = zext i16 %i.cz to i24
  %i.db = shl nuw i24 %i.da, 8
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !31
  %i.de = load i32, ptr %7, align 8, !tbaa !33
  %i.df = sdiv i32 %4, 2
  %.sroa.0130.0.insert.ext = zext i8 %.sroa.0130.0.copyload to i24
  %.sroa.0130.0.insert.insert = or disjoint i24 %i.db, %.sroa.0130.0.insert.ext
  %i.dg = call zeroext i16 @lv_color_to_u16(i24 %.sroa.0130.0.insert.insert) #6 ; 3 uses
  %i.dh = icmp ugt i8 %i.h, -4
  br i1 %i.dh, label %.preheader286, label %bb.e

.preheader286:                                    ; preds = %bb.d
  %i.di = icmp sgt i32 %i.d, 0
  %i.dj = icmp sgt i32 %i.c, 0
  %or.cond347 = select i1 %i.di, i1 %i.dj, i1 false
  br i1 %or.cond347, label %.preheader285.preheader.a, label %.loopexit

.preheader285.preheader.a:                        ; preds = %.preheader286
  %i.dk = zext nneg i32 %i.c to i64               ; 5 uses
  %min.iters.check458 = icmp ult i32 %i.c, 4
  %min.iters.check459 = icmp ult i32 %i.c, 16
  %15 = and i64 %i.dk, 12
  %n.vec461 = and i64 %i.dk, 2147483632           ; 5 uses
  %16 = shl nuw nsw i64 %n.vec461, 1
  %17 = trunc nuw nsw i64 %n.vec461 to i32
  %broadcast.splatinsert462 = insertelement <8 x i16> poison, i16 %i.dg, i64 0
  %broadcast.splat463 = shufflevector <8 x i16> %broadcast.splatinsert462, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n469 = icmp eq i64 %n.vec461, %i.dk
  %min.epilog.iters.check = icmp eq i64 %15, 0
  %n.vec472 = and i64 %i.dk, 2147483644           ; 4 uses
  %18 = shl nuw nsw i64 %n.vec472, 1
  %19 = trunc nuw nsw i64 %n.vec472 to i32
  %broadcast.splatinsert473 = insertelement <4 x i16> poison, i16 %i.dg, i64 0
  %broadcast.splat474 = shufflevector <4 x i16> %broadcast.splatinsert473, <4 x i16> poison, <4 x i32> zeroinitializer
  %cmp.n478 = icmp eq i64 %n.vec472, %i.dk
  br label %iter.check

iter.check:                                       ; preds = %.preheader285.preheader.a, %._crit_edge297
  %.0257300 = phi ptr [ %.lcssa447, %._crit_edge297 ], [ %3, %.preheader285.preheader.a ] ; 5 uses
  %.0261299 = phi i32 [ %21, %._crit_edge297 ], [ 0, %.preheader285.preheader.a ]
  br i1 %min.iters.check458, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check459, label %vec.epilog.ph, label %vector.ph460

vector.ph460:                                     ; preds = %vector.main.loop.iter.check
  %i.dl = getelementptr i8, ptr %.0257300, i64 %16 ; 2 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph460
  %index465 = phi i64 [ 0, %vector.ph460 ], [ %index.next467, %vector.body464 ] ; 2 uses
  %i.dm = shl i64 %index465, 1
  %next.gep466 = getelementptr i8, ptr %.0257300, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep466, i64 16
  store <8 x i16> %broadcast.splat463, ptr %next.gep466, align 2, !tbaa !51
  store <8 x i16> %broadcast.splat463, ptr %i.dn, align 2, !tbaa !51
  %index.next467 = add nuw i64 %index465, 16      ; 2 uses
  %i.do = icmp eq i64 %index.next467, %n.vec461
  br i1 %i.do, label %middle.block468, label %vector.body464, !llvm.loop !97

middle.block468:                                  ; preds = %vector.body464
  br i1 %cmp.n469, label %._crit_edge297, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block468
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !90

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec461, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.dp = getelementptr i8, ptr %.0257300, i64 %18 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index475 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next477, %vec.epilog.vector.body ] ; 2 uses
  %i.dq = shl i64 %index475, 1
  %next.gep476 = getelementptr i8, ptr %.0257300, i64 %i.dq
  store <4 x i16> %broadcast.splat474, ptr %next.gep476, align 2, !tbaa !51
  %index.next477 = add nuw i64 %index475, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next477, %n.vec472
  br i1 %i.dr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n478, label %._crit_edge297, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1258296.ph = phi ptr [ %.0257300, %iter.check ], [ %i.dl, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ]
  %.0262295.ph = phi i32 [ 0, %iter.check ], [ %17, %vec.epilog.iter.check ], [ %19, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.1258296 = phi ptr [ %i.ds, %vec.epilog.scalar.ph ], [ %.1258296.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0262295 = phi i32 [ %20, %vec.epilog.scalar.ph ], [ %.0262295.ph, %vec.epilog.scalar.ph.preheader ]
  store i16 %i.dg, ptr %.1258296, align 2, !tbaa !51
  %i.ds = getelementptr inbounds nuw i8, ptr %.1258296, i64 2 ; 2 uses
  %20 = add nuw nsw i32 %.0262295, 1              ; 2 uses
  %exitcond371.not = icmp eq i32 %20, %i.c
  br i1 %exitcond371.not, label %._crit_edge297, label %vec.epilog.scalar.ph, !llvm.loop !99

._crit_edge297:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block468
  %.lcssa447 = phi ptr [ %i.dp, %vec.epilog.middle.block ], [ %i.dl, %middle.block468 ], [ %i.ds, %vec.epilog.scalar.ph ]
  %21 = add nuw nsw i32 %.0261299, 1              ; 2 uses
  %exitcond372.not = icmp eq i32 %21, %i.d
  br i1 %exitcond372.not, label %.loopexit, label %iter.check, !llvm.loop !100

bb.e:                                             ; preds = %bb.d
  %i.dt = lshr i8 %.sroa.0130.0.copyload, 3
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = mul nuw nsw i32 %i.i, %i.du             ; 2 uses
  %i.dw = lshr i8 %i.f, 2
  %i.dx = zext nneg i8 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.i, %i.dx             ; 2 uses
  %i.dz = lshr i8 %.sroa.15.0.copyload, 3
  %i.ea = zext nneg i8 %i.dz to i32
  %i.eb = mul nuw nsw i32 %i.ea, %i.i             ; 2 uses
  %i.ec = icmp sgt i32 %i.d, 0
  br i1 %i.ec, label %.preheader288.lr.ph, label %.loopexit

.preheader288.lr.ph:                              ; preds = %bb.e
  %i.ed = icmp sgt i32 %i.c, 0
  %i.ee = zext i8 %i.j to i32                     ; 4 uses
  %i.ef = sext i32 %i.df to i64                   ; 2 uses
  br i1 %i.ed, label %.preheader288.preheader, label %.loopexit

.preheader288.preheader:                          ; preds = %.preheader288.lr.ph
  %i.eg = mul i32 %i.dd, %4
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %2, i64 %i.eh
  %i.ej = shl i32 %i.de, 1
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ei, i64 %i.ek
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %i.em = add i64 %i.a, %i.eh
  %i.en = add i64 %i.em, %i.ek
  %i.eo = mul nsw i64 %i.ef, -2
  %min.iters.check = icmp ult i32 %i.c, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 4 uses
  %i.ep = shl nuw nsw i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert450 = insertelement <8 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat451 = shufflevector <8 x i32> %broadcast.splatinsert450, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert452 = insertelement <8 x i32> poison, i32 %i.dy, i64 0
  %broadcast.splat453 = shufflevector <8 x i32> %broadcast.splatinsert452, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert454 = insertelement <8 x i32> poison, i32 %i.dv, i64 0
  %broadcast.splat455 = shufflevector <8 x i32> %broadcast.splatinsert454, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader288.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.1254294 = phi ptr [ %i.el, %.preheader288.preheader ], [ %i.gv, %._crit_edge ] ; 3 uses
  %.2259293 = phi ptr [ %3, %.preheader288.preheader ], [ %.lcssa448, %._crit_edge ] ; 5 uses
  %.0265292 = phi i32 [ 0, %.preheader288.preheader ], [ %i.gw, %._crit_edge ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader288
  %i.eq = mul i64 %i.eo, %indvar
  %i.er = sub i64 %i.eq, %i.en
  %.2259293449 = ptrtoaddr ptr %.2259293 to i64
  %i.es = add i64 %i.er, %.2259293449
  %i.et = add i64 %i.es, -1
  %diff.check = icmp ult i64 %i.et, 15
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.eu = getelementptr i8, ptr %.2259293, i64 %i.ep ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ev = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.2259293, i64 %i.ev
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %.1254294, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ew, align 2, !tbaa !51
  %i.ex = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load) ; 3 uses
  %i.ey = lshr <8 x i16> %i.ex, splat (i16 11)
  %i.ez = zext nneg <8 x i16> %i.ey to <8 x i32>
  %i.fa = mul nuw nsw <8 x i32> %broadcast.splat, %i.ez
  %i.fb = add nuw nsw <8 x i32> %i.fa, %broadcast.splat451
  %i.fc = shl nuw nsw <8 x i32> %i.fb, splat (i32 3)
  %i.fd = and <8 x i32> %i.fc, splat (i32 63488)
  %i.fe = lshr <8 x i16> %i.ex, splat (i16 5)
  %i.ff = and <8 x i16> %i.fe, splat (i16 63)
  %i.fg = zext nneg <8 x i16> %i.ff to <8 x i32>
  %i.fh = mul nuw nsw <8 x i32> %broadcast.splat, %i.fg
  %i.fi = add nuw nsw <8 x i32> %i.fh, %broadcast.splat453
  %i.fj = lshr <8 x i32> %i.fi, splat (i32 3)
  %i.fk = and <8 x i32> %i.fj, splat (i32 2016)
  %i.fl = and <8 x i16> %i.ex, splat (i16 31)
  %i.fm = zext nneg <8 x i16> %i.fl to <8 x i32>
  %i.fn = mul nuw nsw <8 x i32> %broadcast.splat, %i.fm
  %i.fo = add nuw nsw <8 x i32> %i.fn, %broadcast.splat455
  %i.fp = lshr <8 x i32> %i.fo, splat (i32 8)
  %i.fq = or disjoint <8 x i32> %i.fd, %i.fp
  %i.fr = add nuw nsw <8 x i32> %i.fq, %i.fk
  %i.fs = trunc <8 x i32> %i.fr to <8 x i16>
  %i.ft = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.fs)
  store <8 x i16> %i.ft, ptr %next.gep, align 2, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader288, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader288 ], [ %n.vec, %middle.block ]
  %.3260291.ph = phi ptr [ %.2259293, %vector.memcheck ], [ %.2259293, %.preheader288 ], [ %i.eu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.3260291 = phi ptr [ %i.gu, %scalar.ph ], [ %.3260291.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %.1254294, i64 %indvars.iv
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !51
  %i.fx = call noundef i16 @llvm.bswap.i16(i16 %i.fw) ; 3 uses
  %i.fy = lshr i16 %i.fx, 11
  %i.fz = zext nneg i16 %i.fy to i32
  %i.ga = mul nuw nsw i32 %i.fz, %i.ee
  %i.gb = add nuw nsw i32 %i.ga, %i.eb
  %i.gc = shl nuw nsw i32 %i.gb, 3
  %i.gd = and i32 %i.gc, 63488
  %i.ge = lshr i16 %i.fx, 5
  %i.gf = and i16 %i.ge, 63
  %i.gg = zext nneg i16 %i.gf to i32
  %i.gh = mul nuw nsw i32 %i.gg, %i.ee
  %i.gi = add nuw nsw i32 %i.gh, %i.dy
  %i.gj = lshr i32 %i.gi, 3
  %i.gk = and i32 %i.gj, 2016
  %i.gl = and i16 %i.fx, 31
  %i.gm = zext nneg i16 %i.gl to i32
  %i.gn = mul nuw nsw i32 %i.gm, %i.ee
  %i.go = add nuw nsw i32 %i.gn, %i.dv
  %i.gp = lshr i32 %i.go, 8
  %i.gq = or disjoint i32 %i.gd, %i.gp
  %i.gr = add nuw nsw i32 %i.gq, %i.gk
  %i.gs = trunc i32 %i.gr to i16
  %i.gt = call noundef i16 @llvm.bswap.i16(i16 %i.gs)
  store i16 %i.gt, ptr %.3260291, align 2, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %.3260291, i64 2 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !102

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa448 = phi ptr [ %i.eu, %middle.block ], [ %i.gu, %scalar.ph ]
  %i.gv = getelementptr inbounds [2 x i8], ptr %.1254294, i64 %i.ef
  %i.gw = add nuw nsw i32 %.0265292, 1            ; 2 uses
  %exitcond370.not = icmp eq i32 %i.gw, %i.d
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond370.not, label %.loopexit, label %.preheader288, !llvm.loop !103

bb.f:                                             ; preds = %bb.a
  %i.gx = icmp eq i32 %5, 16                      ; 2 uses
  %i.gy = add i32 %5, -15
  %or.cond5 = icmp ult i32 %i.gy, 3
  br i1 %or.cond5, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.gz = call zeroext i8 @lv_color_format_get_size(i32 noundef %5) #6 ; 3 uses
  %i.ha = zext i8 %i.gz to i32                    ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !31
  %i.hd = mul nsw i32 %i.hc, %4
  %i.he = load i32, ptr %7, align 8, !tbaa !33
  %i.hf = mul i32 %i.he, %i.ha
  %i.hg = add i32 %i.hf, %i.hd
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 %i.hh ; 3 uses
  %i.hj = icmp ugt i8 %i.h, -4
  br i1 %i.hj, label %.preheader275, label %bb.j

.preheader275:                                    ; preds = %bb.g
  %i.hk = icmp sgt i32 %i.d, 0
  br i1 %i.hk, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader275
  %i.hl = icmp sgt i32 %i.c, 0
  %i.hm = zext i8 %i.gz to i64                    ; 16 uses
  %i.hn = mul i32 %i.c, %i.ha
  %i.ho = sub i32 %4, %i.hn
  %i.hp = zext i32 %i.ho to i64
  br i1 %i.hl, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %i.gx, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %22 = add nsw i32 %i.c, -1
  %xtraiter = and i32 %i.c, 3                     ; 3 uses
  %i.hq = icmp ult i32 %22, 3
  %unroll_iter = and i32 %i.c, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod562.a = icmp ne i32 %xtraiter, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %23 = add nsw i32 %i.c, -1
  %xtraiter564 = and i32 %i.c, 3                  ; 3 uses
  %i.hr = icmp ult i32 %23, 3
  %unroll_iter570 = and i32 %i.c, 2147483644
  %lcmp.mod566.not = icmp eq i32 %xtraiter564, 0
  %lcmp.mod569 = icmp ne i32 %xtraiter564, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge338.split.us.us
  %.0344.us = phi ptr [ %i.jd, %._crit_edge338.split.us.us ], [ %i.hi, %.preheader.us.preheader ] ; 2 uses
  %.0235343.us = phi ptr [ %.lcssa, %._crit_edge338.split.us.us ], [ %3, %.preheader.us.preheader ] ; 2 uses
  %.0264342.us = phi i32 [ %i.je, %._crit_edge338.split.us.us ], [ 0, %.preheader.us.preheader ]
  br i1 %i.hr, label %.epil.preheader563, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.1337.us.us = phi ptr [ %i.is, %.preheader.us.new ], [ %.0344.us, %.preheader.us ] ; 2 uses
  %.1236336.us.us = phi ptr [ %i.it, %.preheader.us.new ], [ %.0235343.us, %.preheader.us ] ; 5 uses
  %niter571 = phi i32 [ %niter571.next.3, %.preheader.us.new ], [ 0, %.preheader.us ]
  store i8 %.sroa.0130.0.copyload, ptr %.1236336.us.us, align 1, !tbaa !44
  %i.hs = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 1
  store i8 %i.f, ptr %i.hs, align 1, !tbaa !44
  %i.ht = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.ht, align 1, !tbaa !44
  %i.hu = getelementptr inbounds nuw i8, ptr %.1337.us.us, i64 3
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !44
  %i.hw = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 3
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !44
  %i.hx = getelementptr inbounds nuw i8, ptr %.1337.us.us, i64 %i.hm ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.1236336.us.us, i64 %i.hm ; 5 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.hy, align 1, !tbaa !44
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1
  store i8 %i.f, ptr %i.hz, align 1, !tbaa !44
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.ia, align 1, !tbaa !44
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 3
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !44
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 3
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !44
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hm ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hm ; 5 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.if, align 1, !tbaa !44
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  store i8 %i.f, ptr %i.ig, align 1, !tbaa !44
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.ih, align 1, !tbaa !44
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 3
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !44
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 3
  store i8 %i.ij, ptr %i.ik, align 1, !tbaa !44
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hm ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hm ; 5 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.im, align 1, !tbaa !44
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  store i8 %i.f, ptr %i.in, align 1, !tbaa !44
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.io, align 1, !tbaa !44
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 3
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !44
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 3
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !44
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.hm ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.hm ; 3 uses
  %niter571.next.3 = add nuw nsw i32 %niter571, 4 ; 2 uses
  %niter571.ncmp.3 = icmp eq i32 %niter571.next.3, %unroll_iter570
  br i1 %niter571.ncmp.3, label %._crit_edge338.split.us.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !104

._crit_edge338.split.us.us.unr-lcssa:             ; preds = %.preheader.us.new
  br i1 %lcmp.mod566.not, label %._crit_edge338.split.us.us, label %.epil.preheader563

.epil.preheader563:                               ; preds = %._crit_edge338.split.us.us.unr-lcssa, %.preheader.us
  %.1337.us.us.epil.init = phi ptr [ %.0344.us, %.preheader.us ], [ %i.is, %._crit_edge338.split.us.us.unr-lcssa ]
  %.1236336.us.us.epil.init = phi ptr [ %.0235343.us, %.preheader.us ], [ %i.it, %._crit_edge338.split.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod569)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader563
  %.1337.us.us.epil = phi ptr [ %.1337.us.us.epil.init, %.epil.preheader563 ], [ %i.iz, %bb.h ] ; 3 uses
  %.1236336.us.us.epil = phi ptr [ %.1236336.us.us.epil.init, %.epil.preheader563 ], [ %i.ja, %bb.h ] ; 5 uses
  %epil.iter565 = phi i32 [ 0, %.epil.preheader563 ], [ %epil.iter565.next, %bb.h ]
  store i8 %.sroa.0130.0.copyload, ptr %.1236336.us.us.epil, align 1, !tbaa !44
  %i.iu = getelementptr inbounds nuw i8, ptr %.1236336.us.us.epil, i64 1
  store i8 %i.f, ptr %i.iu, align 1, !tbaa !44
  %i.iv = getelementptr inbounds nuw i8, ptr %.1236336.us.us.epil, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.iv, align 1, !tbaa !44
  %i.iw = getelementptr inbounds nuw i8, ptr %.1337.us.us.epil, i64 3
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !44
  %i.iy = getelementptr inbounds nuw i8, ptr %.1236336.us.us.epil, i64 3
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !44
  %i.iz = getelementptr inbounds nuw i8, ptr %.1337.us.us.epil, i64 %i.hm
  %i.ja = getelementptr inbounds nuw i8, ptr %.1236336.us.us.epil, i64 %i.hm ; 2 uses
  %epil.iter565.next = add i32 %epil.iter565, 1   ; 2 uses
  %epil.iter565.cmp.not = icmp eq i32 %epil.iter565.next, %xtraiter564
  br i1 %epil.iter565.cmp.not, label %._crit_edge338.split.us.us, label %bb.h, !llvm.loop !105

._crit_edge338.split.us.us:                       ; preds = %bb.h, %._crit_edge338.split.us.us.unr-lcssa
  %i.jb = phi ptr [ %i.il, %._crit_edge338.split.us.us.unr-lcssa ], [ %.1337.us.us.epil, %bb.h ]
  %.lcssa = phi ptr [ %i.it, %._crit_edge338.split.us.us.unr-lcssa ], [ %i.ja, %bb.h ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.hm
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.hp
  %i.je = add nuw nsw i32 %.0264342.us, 1         ; 2 uses
  %exitcond390.not = icmp eq i32 %i.je, %i.d
  br i1 %exitcond390.not, label %.loopexit, label %.preheader.us, !llvm.loop !107

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge338.split
  %.0235343 = phi ptr [ %.lcssa543, %._crit_edge338.split ], [ %3, %.preheader.preheader ] ; 2 uses
  %.0264342 = phi i32 [ %i.ju, %._crit_edge338.split ], [ 0, %.preheader.preheader ]
  br i1 %i.hq, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.1236336 = phi ptr [ %i.jq, %.preheader.new ], [ %.0235343, %.preheader ] ; 4 uses
  %niter = phi i32 [ %niter.next.3, %.preheader.new ], [ 0, %.preheader ]
  store i8 %.sroa.0130.0.copyload, ptr %.1236336, align 1, !tbaa !44
  %i.jf = getelementptr inbounds nuw i8, ptr %.1236336, i64 1
  store i8 %i.f, ptr %i.jf, align 1, !tbaa !44
  %i.jg = getelementptr inbounds nuw i8, ptr %.1236336, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.jg, align 1, !tbaa !44
  %i.jh = getelementptr inbounds nuw i8, ptr %.1236336, i64 %i.hm ; 4 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.jh, align 1, !tbaa !44
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store i8 %i.f, ptr %i.ji, align 1, !tbaa !44
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.jj, align 1, !tbaa !44
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.hm ; 4 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.jk, align 1, !tbaa !44
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  store i8 %i.f, ptr %i.jl, align 1, !tbaa !44
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.jm, align 1, !tbaa !44
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.hm ; 4 uses
  store i8 %.sroa.0130.0.copyload, ptr %i.jn, align 1, !tbaa !44
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  store i8 %i.f, ptr %i.jo, align 1, !tbaa !44
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.jp, align 1, !tbaa !44
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.hm ; 3 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge338.split.unr-lcssa, label %.preheader.new, !llvm.loop !104

._crit_edge338.split.unr-lcssa:                   ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge338.split, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge338.split.unr-lcssa, %.preheader
  %.1236336.epil.init = phi ptr [ %.0235343, %.preheader ], [ %i.jq, %._crit_edge338.split.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod562.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.1236336.epil = phi ptr [ %.1236336.epil.init, %.epil.preheader ], [ %i.jt, %bb.i ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  store i8 %.sroa.0130.0.copyload, ptr %.1236336.epil, align 1, !tbaa !44
  %i.jr = getelementptr inbounds nuw i8, ptr %.1236336.epil, i64 1
  store i8 %i.f, ptr %i.jr, align 1, !tbaa !44
  %i.js = getelementptr inbounds nuw i8, ptr %.1236336.epil, i64 2
  store i8 %.sroa.15.0.copyload, ptr %i.js, align 1, !tbaa !44
  %i.jt = getelementptr inbounds nuw i8, ptr %.1236336.epil, i64 %i.hm ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge338.split, label %bb.i, !llvm.loop !108

._crit_edge338.split:                             ; preds = %bb.i, %._crit_edge338.split.unr-lcssa
  %.lcssa543 = phi ptr [ %i.jq, %._crit_edge338.split.unr-lcssa ], [ %i.jt, %bb.i ]
  %i.ju = add nuw nsw i32 %.0264342, 1            ; 2 uses
  %exitcond388.not.a = icmp eq i32 %i.ju, %i.d
  br i1 %exitcond388.not.a, label %.loopexit, label %.preheader, !llvm.loop !107

bb.j:                                             ; preds = %bb.g
  %i.jv = zext i8 %.sroa.0130.0.copyload to i32
  %i.jw = mul nuw nsw i32 %i.i, %i.jv             ; 2 uses
  %i.jx = zext i8 %i.f to i32
  %i.jy = mul nuw nsw i32 %i.i, %i.jx             ; 2 uses
  %i.jz = zext i8 %.sroa.15.0.copyload to i32
  %i.ka = mul nuw nsw i32 %i.i, %i.jz             ; 2 uses
  %i.kb = icmp sgt i32 %i.d, 0
  br i1 %i.kb, label %.preheader276.lr.ph, label %.loopexit

.preheader276.lr.ph:                              ; preds = %bb.j
  %i.kc = icmp sgt i32 %i.c, 0
  %i.kd = zext i8 %i.j to i32                     ; 6 uses
  %i.ke = zext i8 %i.gz to i64                    ; 4 uses
  %i.kf = mul i32 %i.c, %i.ha
  %i.kg = sub i32 %4, %i.kf
  %i.kh = zext i32 %i.kg to i64                   ; 2 uses
  br i1 %i.kc, label %.preheader276.lr.ph.split, label %.loopexit

.preheader276.lr.ph.split:                        ; preds = %.preheader276.lr.ph
  br i1 %i.gx, label %.preheader276.us, label %.preheader276

.preheader276.us:                                 ; preds = %.preheader276.lr.ph.split, %._crit_edge326.split.us.us
  %.2332.us = phi ptr [ %i.lk, %._crit_edge326.split.us.us ], [ %i.hi, %.preheader276.lr.ph.split ]
  %.2237331.us = phi ptr [ %i.li, %._crit_edge326.split.us.us ], [ %3, %.preheader276.lr.ph.split ]
  %.0256330.us = phi i32 [ %i.ll, %._crit_edge326.split.us.us ], [ 0, %.preheader276.lr.ph.split ]
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader276.us
  %.3325.us.us = phi ptr [ %.2332.us, %.preheader276.us ], [ %i.lh, %bb.k ] ; 5 uses
  %.3238324.us.us = phi ptr [ %.2237331.us, %.preheader276.us ], [ %i.li, %bb.k ] ; 5 uses
  %.0255323.us.us = phi i32 [ 0, %.preheader276.us ], [ %i.lj, %bb.k ]
  %i.ki = load i8, ptr %.3325.us.us, align 1, !tbaa !44
  %i.kj = zext i8 %i.ki to i32
  %i.kk = mul nuw nsw i32 %i.kj, %i.kd
  %i.kl = add nuw nsw i32 %i.kk, %i.jw
  %i.km = lshr i32 %i.kl, 8
  %i.kn = trunc i32 %i.km to i8
  store i8 %i.kn, ptr %.3238324.us.us, align 1, !tbaa !44
  %i.ko = getelementptr inbounds nuw i8, ptr %.3325.us.us, i64 1
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !44
  %i.kq = zext i8 %i.kp to i32
  %i.kr = mul nuw nsw i32 %i.kq, %i.kd
  %i.ks = add nuw nsw i32 %i.kr, %i.jy
  %i.kt = lshr i32 %i.ks, 8
  %i.ku = trunc i32 %i.kt to i8
  %i.kv = getelementptr inbounds nuw i8, ptr %.3238324.us.us, i64 1
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !44
  %i.kw = getelementptr inbounds nuw i8, ptr %.3325.us.us, i64 2
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !44
  %i.ky = zext i8 %i.kx to i32
  %i.kz = mul nuw nsw i32 %i.ky, %i.kd
  %i.la = add nuw nsw i32 %i.kz, %i.ka
  %i.lb = lshr i32 %i.la, 8
  %i.lc = trunc i32 %i.lb to i8
  %i.ld = getelementptr inbounds nuw i8, ptr %.3238324.us.us, i64 2
  store i8 %i.lc, ptr %i.ld, align 1, !tbaa !44
  %i.le = getelementptr inbounds nuw i8, ptr %.3325.us.us, i64 3
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !44
  %i.lg = getelementptr inbounds nuw i8, ptr %.3238324.us.us, i64 3
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !44
  %i.lh = getelementptr inbounds nuw i8, ptr %.3325.us.us, i64 %i.ke ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.3238324.us.us, i64 %i.ke ; 2 uses
  %i.lj = add nuw nsw i32 %.0255323.us.us, 1      ; 2 uses
  %exitcond385.not.a = icmp eq i32 %i.lj, %i.c
  br i1 %exitcond385.not.a, label %._crit_edge326.split.us.us, label %bb.k, !llvm.loop !109

._crit_edge326.split.us.us:                       ; preds = %bb.k
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.kh
  %i.ll = add nuw nsw i32 %.0256330.us, 1         ; 2 uses
  %exitcond386.not.a = icmp eq i32 %i.ll, %i.d
  br i1 %exitcond386.not.a, label %.loopexit, label %.preheader276.us, !llvm.loop !110

.preheader276:                                    ; preds = %.preheader276.lr.ph.split, %._crit_edge326.split
  %.2332 = phi ptr [ %i.ml, %._crit_edge326.split ], [ %i.hi, %.preheader276.lr.ph.split ]
  %.2237331 = phi ptr [ %i.mj, %._crit_edge326.split ], [ %3, %.preheader276.lr.ph.split ]
  %.0256330 = phi i32 [ %i.mm, %._crit_edge326.split ], [ 0, %.preheader276.lr.ph.split ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader276, %bb.l
  %.3325 = phi ptr [ %.2332, %.preheader276 ], [ %i.mi, %bb.l ] ; 4 uses
  %.3238324 = phi ptr [ %.2237331, %.preheader276 ], [ %i.mj, %bb.l ] ; 4 uses
  %.0255323 = phi i32 [ 0, %.preheader276 ], [ %i.mk, %bb.l ]
  %i.lm = load i8, ptr %.3325, align 1, !tbaa !44
  %i.ln = zext i8 %i.lm to i32
  %i.lo = mul nuw nsw i32 %i.ln, %i.kd
  %i.lp = add nuw nsw i32 %i.lo, %i.jw
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = trunc i32 %i.lq to i8
  store i8 %i.lr, ptr %.3238324, align 1, !tbaa !44
  %i.ls = getelementptr inbounds nuw i8, ptr %.3325, i64 1
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !44
  %i.lu = zext i8 %i.lt to i32
  %i.lv = mul nuw nsw i32 %i.lu, %i.kd
  %i.lw = add nuw nsw i32 %i.lv, %i.jy
  %i.lx = lshr i32 %i.lw, 8
  %i.ly = trunc i32 %i.lx to i8
  %i.lz = getelementptr inbounds nuw i8, ptr %.3238324, i64 1
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !44
  %i.ma = getelementptr inbounds nuw i8, ptr %.3325, i64 2
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !44
  %i.mc = zext i8 %i.mb to i32
  %i.md = mul nuw nsw i32 %i.mc, %i.kd
  %i.me = add nuw nsw i32 %i.md, %i.ka
  %i.mf = lshr i32 %i.me, 8
  %i.mg = trunc i32 %i.mf to i8
  %i.mh = getelementptr inbounds nuw i8, ptr %.3238324, i64 2
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !44
  %i.mi = getelementptr inbounds nuw i8, ptr %.3325, i64 %i.ke ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.3238324, i64 %i.ke ; 2 uses
  %i.mk = add nuw nsw i32 %.0255323, 1            ; 2 uses
  %exitcond383.not = icmp eq i32 %i.mk, %i.c
  br i1 %exitcond383.not, label %._crit_edge326.split, label %bb.l, !llvm.loop !109

._crit_edge326.split:                             ; preds = %bb.l
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.kh
  %i.mm = add nuw nsw i32 %.0256330, 1            ; 2 uses
  %exitcond384.not.a = icmp eq i32 %i.mm, %i.d
  br i1 %exitcond384.not.a, label %.loopexit, label %.preheader276, !llvm.loop !110

bb.m:                                             ; preds = %bb.f
  %i.mn = icmp eq i32 %5, 26
  br i1 %i.mn, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.mo = call zeroext i8 @lv_color_format_get_size(i32 noundef 26) #6 ; 2 uses
  %i.mp = zext i8 %.sroa.0130.0.copyload to i32
  %i.mq = mul nuw nsw i32 %i.i, %i.mp
  %i.mr = zext i8 %i.f to i32
  %i.ms = mul nuw nsw i32 %i.i, %i.mr
  %i.mt = zext i8 %.sroa.15.0.copyload to i32
  %i.mu = mul nuw nsw i32 %i.i, %i.mt
  %i.mv = icmp sgt i32 %i.d, 0
  br i1 %i.mv, label %.preheader278.lr.ph, label %.loopexit

.preheader278.lr.ph:                              ; preds = %bb.n
  %i.mw = zext i8 %i.mo to i32                    ; 2 uses
  %i.mx = icmp sgt i32 %i.c, 0
  %i.my = zext i8 %i.j to i32                     ; 3 uses
  %i.mz = zext i8 %i.mo to i64                    ; 2 uses
  %i.na = mul i32 %i.c, %i.mw
  %i.nb = sub i32 %4, %i.na
  %i.nc = zext i32 %i.nb to i64
  br i1 %i.mx, label %.preheader278.preheader, label %.loopexit

.preheader278.preheader:                          ; preds = %.preheader278.lr.ph
  %i.nd = load i32, ptr %7, align 8, !tbaa !33
  %i.ne = mul i32 %i.nd, %i.mw
  %i.nf = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !31
  %i.nh = mul nsw i32 %i.ng, %4
  %i.ni = add i32 %i.ne, %i.nh
  %i.nj = zext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 %i.nj
  br label %.preheader278

.preheader278:                                    ; preds = %.preheader278.preheader, %._crit_edge317
  %.4322 = phi ptr [ %i.pn, %._crit_edge317 ], [ %i.nk, %.preheader278.preheader ]
  %.4239321 = phi ptr [ %i.pl, %._crit_edge317 ], [ %3, %.preheader278.preheader ]
  %.0249320 = phi i32 [ %i.po, %._crit_edge317 ], [ 0, %.preheader278.preheader ]
  br label %bb.o

bb.o:                                             ; preds = %.preheader278, %bb.r
  %.5316 = phi ptr [ %.4322, %.preheader278 ], [ %i.pk, %bb.r ] ; 8 uses
  %.5240315 = phi ptr [ %.4239321, %.preheader278 ], [ %i.pl, %bb.r ] ; 7 uses
  %.0248314 = phi i32 [ 0, %.preheader278 ], [ %i.pm, %bb.r ]
  %i.nl = getelementptr inbounds nuw i8, ptr %.5316, i64 3
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !44  ; 4 uses
  %.not = icmp eq i8 %i.nm, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.nn = zext i8 %i.nm to i32                    ; 3 uses
  %.rhs.trunc = zext i8 %i.nm to i16
  %i.no = udiv i16 -256, %.rhs.trunc
  %.zext = zext i16 %i.no to i32                  ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.5316, i64 2
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !44
  %i.nr = zext i8 %i.nq to i32
  %i.ns = mul nuw nsw i32 %i.nr, %.zext
  %i.nt = lshr i32 %i.ns, 8
  %i.nu = getelementptr inbounds nuw i8, ptr %.5316, i64 1
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !44
  %i.nw = zext i8 %i.nv to i32
  %i.nx = mul nuw nsw i32 %i.nw, %.zext
  %i.ny = lshr i32 %i.nx, 8
  %i.nz = load i8, ptr %.5316, align 1, !tbaa !44
  %i.oa = zext i8 %i.nz to i32
  %i.ob = mul nuw nsw i32 %i.oa, %.zext
  %i.oc = lshr i32 %i.ob, 8
  %i.od = and i32 %i.nt, 255
  %i.oe = mul nuw nsw i32 %i.od, %i.my
  %i.of = add nuw nsw i32 %i.oe, %i.mu
  %i.og = lshr i32 %i.of, 8
  %i.oh = and i32 %i.ny, 255
  %i.oi = mul nuw nsw i32 %i.oh, %i.my
  %i.oj = add nuw nsw i32 %i.oi, %i.ms
  %i.ok = lshr i32 %i.oj, 8
  %i.ol = and i32 %i.oc, 255
  %i.om = mul nuw nsw i32 %i.ol, %i.my
  %i.on = add nuw nsw i32 %i.om, %i.mq
  %i.oo = lshr i32 %i.on, 8
  %i.op = and i32 %i.oo, 255
  %i.oq = mul nuw nsw i32 %i.op, %i.nn
  %i.or = lshr i32 %i.oq, 8
  %i.os = trunc nuw i32 %i.or to i8
  store i8 %i.os, ptr %.5240315, align 1, !tbaa !44
  %i.ot = and i32 %i.ok, 255
  %i.ou = mul nuw nsw i32 %i.ot, %i.nn
  %i.ov = lshr i32 %i.ou, 8
  %i.ow = trunc nuw i32 %i.ov to i8
  %i.ox = getelementptr inbounds nuw i8, ptr %.5240315, i64 1
  store i8 %i.ow, ptr %i.ox, align 1, !tbaa !44
  %i.oy = and i32 %i.og, 255
  %i.oz = mul nuw nsw i32 %i.oy, %i.nn
  %i.pa = lshr i32 %i.oz, 8
  %i.pb = trunc nuw i32 %i.pa to i8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.pc = load i8, ptr %.5316, align 1, !tbaa !44
  store i8 %i.pc, ptr %.5240315, align 1, !tbaa !44
  %i.pd = getelementptr inbounds nuw i8, ptr %.5316, i64 1
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !44
  %i.pf = getelementptr inbounds nuw i8, ptr %.5240315, i64 1
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !44
  %i.pg = getelementptr inbounds nuw i8, ptr %.5316, i64 2
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !44
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink = phi i8 [ %i.ph, %bb.q ], [ %i.pb, %bb.p ]
  %i.pi = getelementptr inbounds nuw i8, ptr %.5240315, i64 2
  store i8 %.sink, ptr %i.pi, align 1, !tbaa !44
  %i.pj = getelementptr inbounds nuw i8, ptr %.5240315, i64 3
  store i8 %i.nm, ptr %i.pj, align 1, !tbaa !44
  %i.pk = getelementptr inbounds nuw i8, ptr %.5316, i64 %i.mz ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.5240315, i64 %i.mz ; 2 uses
  %i.pm = add nuw nsw i32 %.0248314, 1            ; 2 uses
  %exitcond381.not = icmp eq i32 %i.pm, %i.c
  br i1 %exitcond381.not, label %._crit_edge317, label %bb.o, !llvm.loop !111

._crit_edge317:                                   ; preds = %bb.r
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.nc
  %i.po = add nuw nsw i32 %.0249320, 1            ; 2 uses
  %exitcond382.not = icmp eq i32 %i.po, %i.d
  br i1 %exitcond382.not, label %.loopexit, label %.preheader278, !llvm.loop !112

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
!94 = distinct !{!94, !46, !88, !89}
!95 = distinct !{!95, !46, !88}
!96 = distinct !{!96, !46}
!97 = distinct !{!97, !46, !88, !89}
!98 = distinct !{!98, !46, !88, !89}
!99 = distinct !{!99, !46, !89, !88}
!100 = distinct !{!100, !46}
!101 = distinct !{!101, !46, !88, !89}
!102 = distinct !{!102, !46, !88}
!103 = distinct !{!103, !46}
!104 = distinct !{!104, !46}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = distinct !{!107, !46}
!108 = distinct !{!108, !106}
!109 = distinct !{!109, !46}
!110 = distinct !{!110, !46}
!111 = distinct !{!111, !46}
!112 = distinct !{!112, !46}
end_hunk_0
