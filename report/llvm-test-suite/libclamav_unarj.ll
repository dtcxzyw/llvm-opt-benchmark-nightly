inline.NumInlined: 28
inline.NumDeleted: 13
begin_hunk_0_@fill_buf:bb.a
  %i.p = or i32 %i.d, %i.o
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i16 %i.q, ptr %i.a, align 2, !tbaa !48
  %i.r = add i32 %i.k, -1
  store i32 %i.r, ptr %i.j, align 4, !tbaa !46
  %i.s = load i32, ptr %0, align 8, !tbaa !45
  %i.t = tail call i32 @cli_readn(i32 noundef %i.s, ptr noundef nonnull %i.i, i32 noundef 1) #11
  %.not22.peel = icmp eq i32 %i.t, 1
  br i1 %.not22.peel, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 8, ptr %i.f, align 8, !tbaa !50
  %i.u = icmp sgt i32 %i.n, 8
  br i1 %i.u, label %.lr.ph.split, label %._crit_edge.loopexit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = icmp sgt i32 %i.n, 8
  br i1 %i.v, label %.peel.next, label %._crit_edge.split.us

.peel.next:                                       ; preds = %.lr.ph.split.us, %.peel.next
  %.027.us = phi i32 [ %i.w, %.peel.next ], [ %i.n, %.lr.ph.split.us ] ; 2 uses
  %i.w = add nsw i32 %.027.us, -8                 ; 2 uses
  %i.x = icmp samesign ugt i32 %.027.us, 16
  br i1 %i.x, label %.peel.next, label %._crit_edge.split.us, !llvm.loop !69

._crit_edge.split.us:                             ; preds = %.peel.next, %.lr.ph.split.us
  %.lcssa35 = phi i32 [ %i.n, %.lr.ph.split.us ], [ %i.w, %.peel.next ]
  store i8 0, ptr %i.i, align 4, !tbaa !49
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %bb.c, %bb.f
  %.027 = phi i32 [ %i.aa, %bb.f ], [ %i.n, %bb.c ] ; 2 uses
  %i.y = load i8, ptr %i.i, align 4, !tbaa !49
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %.027, -8                   ; 3 uses
  %i.ab = shl i32 %i.z, %i.aa
  %i.ac = load i16, ptr %i.a, align 2, !tbaa !48
  %i.ad = trunc i32 %i.ab to i16
  %i.ae = or i16 %i.ac, %i.ad
  store i16 %i.ae, ptr %i.a, align 2, !tbaa !48
  %i.af = load i32, ptr %i.j, align 4, !tbaa !46  ; 2 uses
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr %i.j, align 4, !tbaa !46
  %i.ah = load i32, ptr %0, align 8, !tbaa !45
  %i.ai = tail call i32 @cli_readn(i32 noundef %i.ah, ptr noundef nonnull %i.i, i32 noundef 1) #11
  %.not22 = icmp eq i32 %i.ai, 1
  br i1 %.not22, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %.lr.ph.split
  store i8 0, ptr %i.i, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store i32 8, ptr %i.f, align 8, !tbaa !50
  %i.aj = icmp samesign ugt i32 %.027, 16
  br i1 %i.aj, label %.lr.ph.split, label %._crit_edge.loopexit, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %bb.f, %bb.c
  %.lcssa37 = phi i32 [ %i.n, %bb.c ], [ %i.aa, %bb.f ]
  %.pre = load i16, ptr %i.a, align 2, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %._crit_edge.split.us, %bb.a
  %i.ak = phi i16 [ %i.e, %bb.a ], [ %i.q, %._crit_edge.split.us ], [ %.pre, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ %1, %bb.a ], [ %.lcssa35, %._crit_edge.split.us ], [ %.lcssa37, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.g, %bb.a ], [ 8, %._crit_edge.split.us ], [ 8, %._crit_edge.loopexit ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.am = load i8, ptr %i.al, align 4, !tbaa !49
  %i.an = zext i8 %i.am to i32
  %i.ao = sub nsw i32 %.lcssa, %.0.lcssa          ; 2 uses
  store i32 %i.ao, ptr %i.f, align 8, !tbaa !50
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc nuw nsw i32 %i.ap to i16
  %i.ar = or i16 %i.ak, %i.aq
  store i16 %i.ar, ptr %i.a, align 2, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %._crit_edge
  %.019 = phi i32 [ 0, %._crit_edge ], [ -123, %bb.b ], [ -123, %bb.d ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_pt_len(ptr noundef nonnull %0, i32 noundef range(i32 -1, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 4 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !48
  %i.c = lshr i16 %i.b, 11                        ; 2 uses
  %i.d = tail call fastcc i32 @fill_buf(ptr noundef nonnull %0, i32 noundef 5) ; 0 uses
  %i.e = icmp eq i16 %i.c, 0
  %i.f = getelementptr i8, ptr %0, i64 12814      ; 5 uses
  br i1 %i.e, label %.preheader, label %.preheader56

.preheader56:                                     ; preds = %bb.a
  %i.g = tail call i16 @llvm.umin.i16(i16 %i.c, i16 19)
  %i.h = zext nneg i16 %i.g to i32
  %i.i = sext i32 %1 to i64
  %scevgep70 = getelementptr i8, ptr %i.f, i64 %i.i
  %indvars.iv.next = add nsw i32 %1, 1
  %indvars.iv.next.1 = add nsw i32 %1, 2
  %indvars.iv.next.2 = add nsw i32 %1, 3
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.j = load i16, ptr %i.a, align 2, !tbaa !48
  %i.k = tail call fastcc i32 @fill_buf(ptr noundef nonnull %0, i32 noundef 5) ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.f, i8 0, i64 19, i1 false), !tbaa !20
  %i.l = lshr i16 %i.j, 11
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.l, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 32 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12834
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12850
  store <8 x i16> %broadcast.splat, ptr %i.m, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.n, align 2, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12866
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12882
  store <8 x i16> %broadcast.splat, ptr %i.o, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.p, align 2, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12898
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12914
  store <8 x i16> %broadcast.splat, ptr %i.q, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.r, align 2, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12930
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12946
  store <8 x i16> %broadcast.splat, ptr %i.s, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.t, align 2, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12962
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12978
  store <8 x i16> %broadcast.splat, ptr %i.u, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.v, align 2, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12994
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 13010
  store <8 x i16> %broadcast.splat, ptr %i.w, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.x, align 2, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 13026
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 13042
  store <8 x i16> %broadcast.splat, ptr %i.y, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.z, align 2, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 13058
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 13074
  store <8 x i16> %broadcast.splat, ptr %i.aa, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.ab, align 2, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 13090
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 13106
  store <8 x i16> %broadcast.splat, ptr %i.ac, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.ad, align 2, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 13122
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 13138
  store <8 x i16> %broadcast.splat, ptr %i.ae, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.af, align 2, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 13154
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13170
  store <8 x i16> %broadcast.splat, ptr %i.ag, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.ah, align 2, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 13186
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 13202
  store <8 x i16> %broadcast.splat, ptr %i.ai, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.aj, align 2, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 13218
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 13234
  store <8 x i16> %broadcast.splat, ptr %i.ak, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.al, align 2, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 13250
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 13266
  store <8 x i16> %broadcast.splat, ptr %i.am, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.an, align 2, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 13282
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 13298
  store <8 x i16> %broadcast.splat, ptr %i.ao, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.ap, align 2, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 13314
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 13330
  store <8 x i16> %broadcast.splat, ptr %i.aq, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.ar, align 2, !tbaa !8
  br label %.loopexit

.preheader52:                                     ; preds = %.loopexit53
  %i.as = icmp slt i32 %.4, 19
  br i1 %i.as, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %.preheader52
  %i.at = zext nneg i32 %.4 to i64
  %scevgep72 = getelementptr i8, ptr %i.f, i64 %i.at
  %narrow = sub i32 19, %.4
  %i.au = zext i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep72, i8 0, i64 %i.au, i1 false), !tbaa !20
  br label %._crit_edge

bb.b:                                             ; preds = %.preheader56, %.loopexit53
  %.24863 = phi i32 [ 0, %.preheader56 ], [ %.4, %.loopexit53 ] ; 3 uses
  %i.av = load i16, ptr %i.a, align 2, !tbaa !48  ; 2 uses
  %i.aw = lshr i16 %i.av, 13                      ; 2 uses
  %i.ax = icmp eq i16 %i.aw, 7
  br i1 %i.ax, label %.preheader54, label %.loopexit55

.preheader54:                                     ; preds = %bb.b
  %i.ay = zext i16 %i.av to i32                   ; 2 uses
  %i.az = and i32 %i.ay, 4096
  %.not57 = icmp eq i32 %i.az, 0
  br i1 %.not57, label %.loopexit55.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader54, %.lr.ph
  %.059 = phi i32 [ %i.ba, %.lr.ph ], [ 4096, %.preheader54 ]
  %.04558 = phi i16 [ %i.bb, %.lr.ph ], [ 7, %.preheader54 ]
  %i.ba = lshr i32 %.059, 1                       ; 2 uses
  %i.bb = add i16 %.04558, 1                      ; 2 uses
  %i.bc = and i32 %i.ba, %i.ay
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %.loopexit55, label %.lr.ph, !llvm.loop !73

.loopexit55:                                      ; preds = %.lr.ph, %bb.b
  %.1 = phi i16 [ %i.aw, %bb.b ], [ %i.bb, %.lr.ph ]
  %.1.fr = freeze i16 %.1                         ; 3 uses
  %i.bd = sext i16 %.1.fr to i32
  %2 = add nsw i32 %i.bd, -3
  %i.be = icmp slt i16 %.1.fr, 6
  %spec.select = select i1 %i.be, i32 3, i32 %2
  %3 = trunc i16 %.1.fr to i8
  br label %.loopexit55.thread

.loopexit55.thread:                               ; preds = %.loopexit55, %.preheader54
  %.189 = phi i8 [ 7, %.preheader54 ], [ %3, %.loopexit55 ]
  %4 = phi i32 [ 4, %.preheader54 ], [ %spec.select, %.loopexit55 ]
  %i.bf = tail call fastcc i32 @fill_buf(ptr noundef %0, i32 noundef %4) ; 0 uses
  %i.bg = add nsw i32 %.24863, 1                  ; 2 uses
  %i.bh = sext i32 %.24863 to i64
  %i.bi = getelementptr inbounds i8, ptr %i.f, i64 %i.bh
  store i8 %.189, ptr %i.bi, align 1, !tbaa !20
  %i.bj = icmp eq i32 %i.bg, %1
  br i1 %i.bj, label %bb.c, label %.loopexit53

bb.c:                                             ; preds = %.loopexit55.thread
  %i.bk = load i16, ptr %i.a, align 2, !tbaa !48
  %i.bl = lshr i16 %i.bk, 14                      ; 3 uses
  %i.bm = tail call fastcc i32 @fill_buf(ptr noundef nonnull %0, i32 noundef 2) ; 0 uses
  %.not68 = icmp eq i16 %i.bl, 0
  br i1 %.not68, label %.loopexit53, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %bb.c
  %i.bn = add nsw i16 %i.bl, -1                   ; 2 uses
  %i.bo = sub i32 17, %.24863
  %i.bp = zext i32 %i.bo to i64
  %i.bq = zext nneg i16 %i.bn to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bq)
  %i.br = add nuw nsw i64 %umin, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep70, i8 0, i64 %i.br, i1 false), !tbaa !20
  %.not1 = icmp eq i16 %i.bn, 0
  br i1 %.not1, label %.loopexit53, label %.lr.ph61.1

.lr.ph61.1:                                       ; preds = %.lr.ph61.preheader
  %.not2 = icmp eq i16 %i.bl, 2
  %spec.select3 = select i1 %.not2, i32 %indvars.iv.next.1, i32 %indvars.iv.next.2
  br label %.loopexit53

.loopexit53:                                      ; preds = %.lr.ph61.1, %.lr.ph61.preheader, %bb.c, %.loopexit55.thread
  %.4 = phi i32 [ %i.bg, %.loopexit55.thread ], [ %1, %bb.c ], [ %indvars.iv.next, %.lr.ph61.preheader ], [ %spec.select3, %.lr.ph61.1 ] ; 5 uses
  %i.bs = icmp slt i32 %.4, %i.h
  br i1 %i.bs, label %bb.b, label %.preheader52, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph65, %.preheader52
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 12834
  tail call fastcc void @make_table(ptr noundef %0, i32 noundef 19, ptr noundef %i.f, i32 noundef 8, ptr noundef %i.bt, i32 noundef 256)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @make_table(ptr noundef nonnull captures(none) %0, i32 noundef range(i32 19, 511) %1, ptr noundef nonnull readonly captures(none) %2, i32 noundef range(i32 8, 13) %3, ptr noundef nonnull captures(none) %4, i32 noundef range(i32 256, 4097) %5) unnamed_addr #7 {
.preheader106.preheader:
  %i.a = alloca [17 x i16], align 16              ; 23 uses
  %i.b = alloca [17 x i16], align 16              ; 11 uses
  %i.c = alloca [18 x i16], align 16              ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %scevgep, i8 0, i64 32, i1 false), !tbaa !8
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %unroll_iter = and i64 %wide.trip.count, 508
  br label %.preheader106

.preheader106:                                    ; preds = %.preheader106, %.preheader106.preheader
  %indvars.iv = phi i64 [ 0, %.preheader106.preheader ], [ %indvars.iv.next.3, %.preheader106 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader106.preheader ], [ %niter.next.3, %.preheader106 ]
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.f ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !8
  %i.i = add i16 %i.h, 1
  store i16 %i.i, ptr %i.g, align 2, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load i16, ptr %i.n, align 2, !tbaa !8
  %i.p = add i16 %i.o, 1
  store i16 %i.p, ptr %i.n, align 2, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !20
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !8
  %i.w = add i16 %i.v, 1
  store i16 %i.w, ptr %i.u, align 2, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !20
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !8
  %i.ad = add i16 %i.ac, 1
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader106, !llvm.loop !75

.unr-lcssa:                                       ; preds = %.preheader106
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader106.epil.preheader

.preheader106.epil.preheader:                     ; preds = %.unr-lcssa
  %lcmp.mod35 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.preheader106.epil

.preheader106.epil:                               ; preds = %.preheader106.epil, %.preheader106.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.preheader106.epil.preheader ], [ %indvars.iv.next.epil, %.preheader106.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader106.epil.preheader ], [ %epil.iter.next, %.preheader106.epil ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !8
  %i.aj = add i16 %i.ai, 1
  store i16 %i.aj, ptr %i.ah, align 2, !tbaa !8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader106.epil, !llvm.loop !76

.epilog-lcssa:                                    ; preds = %.preheader106.epil, %.unr-lcssa
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.ak, align 2, !tbaa !8
  %i.al = load i16, ptr %scevgep, align 2, !tbaa !8
  %i.am = shl i16 %i.al, 15                       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i16 %i.am, ptr %i.an, align 4, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !8
  %i.aq = shl i16 %i.ap, 14
  %i.ar = add i16 %i.am, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.au = load i16, ptr %i.at, align 2, !tbaa !8
  %i.av = shl i16 %i.au, 13
  %i.aw = add i16 %i.ar, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i16 %i.aw, ptr %i.ax, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !8
  %i.ba = shl i16 %i.az, 12
  %i.bb = add i16 %i.aw, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !8
  %i.bf = shl i16 %i.be, 11
  %i.bg = add i16 %i.bb, %i.bf                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i16 %i.bg, ptr %i.bh, align 4, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !8
  %i.bk = shl i16 %i.bj, 10
  %i.bl = add i16 %i.bg, %i.bk                    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  store i16 %i.bl, ptr %i.bm, align 2, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !8
  %i.bp = shl i16 %i.bo, 9
  %i.bq = add i16 %i.bl, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i16 %i.bq, ptr %i.br, align 16, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bt = load i16, ptr %i.bs, align 16, !tbaa !8
  %i.bu = shl i16 %i.bt, 8
  %i.bv = add i16 %i.bq, %i.bu                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !8
  %i.bz = shl i16 %i.by, 7
  %i.ca = add i16 %i.bv, %i.bz                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 %i.ca, ptr %i.cb, align 4, !tbaa !8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !8
  %i.ce = shl i16 %i.cd, 6
  %i.cf = add i16 %i.ca, %i.ce                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !8
  %i.cj = shl i16 %i.ci, 5
  %i.ck = add i16 %i.cf, %i.cj                    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i16 %i.ck, ptr %i.cl, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !8
  %i.co = shl i16 %i.cn, 4
  %i.cp = add i16 %i.ck, %i.co                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !8
  %i.ct = shl i16 %i.cs, 3
  %i.cu = add i16 %i.cp, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i16 %i.cu, ptr %i.cv, align 4, !tbaa !8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.cx = load i16, ptr %i.cw, align 4, !tbaa !8
end_hunk_0
