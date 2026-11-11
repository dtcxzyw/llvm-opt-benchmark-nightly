Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hpeldsp?download=true
inline.NumInlined: 64
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@put_pixels16_y2_8_c:bb.a
  %i.as = and i32 %i.ar, 2139062143
  %i.at = sub i32 %i.ap, %i.as
  %i.au = getelementptr i8, ptr %i.ak, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !19
  %indvars.iv.next.i.i11 = add nuw nsw i64 %indvars.iv.i.i10, 1 ; 2 uses
  %exitcond.not.i.i12 = icmp eq i64 %indvars.iv.next.i.i11, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i12, label %put_pixels8_y2_8_c.exit13, label %.lr.ph.i.i9, !llvm.loop !1

put_pixels8_y2_8_c.exit13:                        ; preds = %.lr.ph.i.i9, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_pixels16_xy2_8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  tail call void @put_pixels8_xy2_8_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @put_pixels8_xy2_8_c(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_pixels8_8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %3, 3                       ; 3 uses
  %i.b = icmp ult i32 %3, 4
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %3, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.01013 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 3 uses
  %.01112 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.c = load i32, ptr %.01112, align 1, !tbaa !18
  store i32 %i.c, ptr %.01013, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %.01112, i64 4
  %i.e = load i32, ptr %i.d, align 1, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %.01013, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !19
  %i.g = getelementptr inbounds i8, ptr %.01112, i64 %2 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.01013, i64 %2 ; 3 uses
  %i.i = load i32, ptr %i.g, align 1, !tbaa !18
  store i32 %i.i, ptr %i.h, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 1, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !19
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 %2 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %2 ; 3 uses
  %i.o = load i32, ptr %i.m, align 1, !tbaa !18
  store i32 %i.o, ptr %i.n, align 4, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load i32, ptr %i.p, align 1, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !19
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %2 ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 %2 ; 3 uses
  %i.u = load i32, ptr %i.s, align 1, !tbaa !18
  store i32 %i.u, ptr %i.t, align 4, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 1, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !19
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 %2 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 %2 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.01013.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
  %.01112.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.01013.epil = phi ptr [ %i.af, %.lr.ph.epil ], [ %.01013.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.01112.epil = phi ptr [ %i.ae, %.lr.ph.epil ], [ %.01112.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aa = load i32, ptr %.01112.epil, align 1, !tbaa !18
  store i32 %i.aa, ptr %.01013.epil, align 4, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %.01112.epil, i64 4
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %.01013.epil, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !19
  %i.ae = getelementptr inbounds i8, ptr %.01112.epil, i64 %2
  %i.af = getelementptr inbounds i8, ptr %.01013.epil, i64 %2
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !30

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_pixels8_x2_8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %put_pixels8_l2_8.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.c = mul nsw i64 %indvars.iv.i, %2            ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 1, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.g = load i32, ptr %i.f, align 1, !tbaa !18   ; 2 uses
  %i.h = or i32 %i.g, %i.e
  %i.i = xor i32 %i.g, %i.e
  %i.j = lshr i32 %i.i, 1
  %i.k = and i32 %i.j, 2139062143
  %i.l = sub i32 %i.h, %i.k
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !19
  %i.n = getelementptr i8, ptr %i.d, i64 4
  %i.o = load i32, ptr %i.n, align 1, !tbaa !18   ; 2 uses
  %i.p = getelementptr i8, ptr %i.f, i64 4
  %i.q = load i32, ptr %i.p, align 1, !tbaa !18   ; 2 uses
  %i.r = or i32 %i.q, %i.o
  %i.s = xor i32 %i.q, %i.o
  %i.t = lshr i32 %i.s, 1
  %i.u = and i32 %i.t, 2139062143
  %i.v = sub i32 %i.r, %i.u
  %i.w = getelementptr i8, ptr %i.m, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %put_pixels8_l2_8.exit, label %.lr.ph.i, !llvm.loop !1

put_pixels8_l2_8.exit:                            ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_pixels8_y2_8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 %2
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %put_pixels8_l2_8.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.c = mul nsw i64 %indvars.iv.i, %2            ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 1, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.g = load i32, ptr %i.f, align 1, !tbaa !18   ; 2 uses
  %i.h = or i32 %i.g, %i.e
  %i.i = xor i32 %i.g, %i.e
  %i.j = lshr i32 %i.i, 1
  %i.k = and i32 %i.j, 2139062143
  %i.l = sub i32 %i.h, %i.k
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !19
  %i.n = getelementptr i8, ptr %i.d, i64 4
  %i.o = load i32, ptr %i.n, align 1, !tbaa !18   ; 2 uses
  %i.p = getelementptr i8, ptr %i.f, i64 4
  %i.q = load i32, ptr %i.p, align 1, !tbaa !18   ; 2 uses
  %i.r = or i32 %i.q, %i.o
  %i.s = xor i32 %i.q, %i.o
  %i.t = lshr i32 %i.s, 1
  %i.u = and i32 %i.t, 2139062143
  %i.v = sub i32 %i.r, %i.u
  %i.w = getelementptr i8, ptr %i.m, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %put_pixels8_l2_8.exit, label %.lr.ph.i, !llvm.loop !1

put_pixels8_l2_8.exit:                            ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_pixels8_xy2_8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = add nuw nsw i32 %3, 1
  %i.c = sext i32 %i.b to i64
  %i.d = mul nsw i64 %2, %i.c
  %i.e = sub nsw i64 4, %i.d
  %4 = zext nneg i32 %3 to i64
  %i.f = mul nsw i64 %2, %4
  %i.g = sub nsw i64 4, %i.f
  br i1 %i.a, label %.lr.ph.preheader, label %.split67

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = load i32, ptr %1, align 1, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i32, ptr %i.i, align 1, !tbaa !18   ; 2 uses
  %i.k = and i32 %i.h, 50529027
  %i.l = and i32 %i.j, 50529027
  %i.m = add nuw nsw i32 %i.k, 33686018
  %i.n = add nuw nsw i32 %i.m, %i.l
  %i.o = lshr i32 %i.h, 2
  %i.p = and i32 %i.o, 1061109567
  %i.q = lshr i32 %i.j, 2
  %i.r = and i32 %i.q, 1061109567
  %narrow = add nuw nsw i32 %i.r, %i.p
  %.15357 = getelementptr inbounds i8, ptr %1, i64 %2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader, %bb.b
  %.15362 = phi ptr [ %.15357, %.lr.ph.preheader ], [ %.153, %bb.b ] ; 3 uses
  %.061 = phi i32 [ %narrow, %.lr.ph.preheader ], [ %narrow56, %bb.b ]
  %.04860 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.ap, %bb.b ]
  %.04959 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ba, %bb.b ]
  %.158 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.az, %bb.b ] ; 2 uses
  %i.s = load i32, ptr %.15362, align 1, !tbaa !18 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.15362, i64 1
  %i.u = load i32, ptr %i.t, align 1, !tbaa !18   ; 2 uses
  %i.v = and i32 %i.s, 50529027
  %i.w = and i32 %i.u, 50529027
  %i.x = add nuw nsw i32 %i.w, %i.v               ; 2 uses
  %i.y = lshr i32 %i.s, 2
  %i.z = and i32 %i.y, 1061109567
  %i.aa = lshr i32 %i.u, 2
  %i.ab = and i32 %i.aa, 1061109567
  %narrow55 = add nuw nsw i32 %i.ab, %i.z         ; 2 uses
  %i.ac = add nuw i32 %narrow55, %.061
  %i.ad = add nuw nsw i32 %i.x, %.04860
  %i.ae = lshr i32 %i.ad, 2
  %i.af = and i32 %i.ae, 252645135
  %i.ag = add i32 %i.ac, %i.af
  store i32 %i.ag, ptr %.158, align 4, !tbaa !19
  %i.ah = getelementptr inbounds i8, ptr %.15362, i64 %2 ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.158, i64 %2 ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 1, !tbaa !18 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !18 ; 2 uses
  %i.am = and i32 %i.aj, 50529027
  %i.an = and i32 %i.al, 50529027
  %i.ao = add nuw nsw i32 %i.am, 33686018
  %i.ap = add nuw nsw i32 %i.ao, %i.an            ; 2 uses
  %i.aq = lshr i32 %i.aj, 2
  %i.ar = and i32 %i.aq, 1061109567
  %i.as = lshr i32 %i.al, 2
  %i.at = and i32 %i.as, 1061109567
  %narrow56 = add nuw nsw i32 %i.at, %i.ar        ; 2 uses
  %i.au = add nuw i32 %narrow56, %narrow55
  %i.av = add nuw nsw i32 %i.ap, %i.x
  %i.aw = lshr i32 %i.av, 2
  %i.ax = and i32 %i.aw, 117901063
  %i.ay = add i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.ai, align 4, !tbaa !19
  %i.az = getelementptr inbounds i8, ptr %i.ai, i64 %2 ; 2 uses
  %i.ba = add nuw nsw i32 %.04959, 2              ; 2 uses
  %.153 = getelementptr inbounds i8, ptr %i.ah, i64 %2 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %3
  br i1 %i.bb, label %bb.b, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.b
  %i.bc = getelementptr inbounds i8, ptr %.153, i64 %i.e ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.g
  %i.be = load i32, ptr %i.bc, align 1, !tbaa !18 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !18 ; 2 uses
  %i.bh = and i32 %i.be, 50529027
  %i.bi = and i32 %i.bg, 50529027
  %i.bj = add nuw nsw i32 %i.bh, 33686018
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %i.bl = lshr i32 %i.be, 2
  %i.bm = and i32 %i.bl, 1061109567
  %i.bn = lshr i32 %i.bg, 2
  %i.bo = and i32 %i.bn, 1061109567
  %narrow.1 = add nuw nsw i32 %i.bo, %i.bm
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.pn = phi ptr [ %i.bc, %._crit_edge ], [ %i.ce, %bb.c ]
  %.061.1 = phi i32 [ %narrow.1, %._crit_edge ], [ %narrow56.1, %bb.c ]
  %.04860.1 = phi i32 [ %i.bk, %._crit_edge ], [ %i.cm, %bb.c ]
  %.04959.1 = phi i32 [ 0, %._crit_edge ], [ %i.cx, %bb.c ]
  %.158.1 = phi ptr [ %i.bd, %._crit_edge ], [ %i.cw, %bb.c ] ; 2 uses
  %.15362.1 = getelementptr inbounds i8, ptr %.pn, i64 %2 ; 3 uses
  %i.bp = load i32, ptr %.15362.1, align 1, !tbaa !18 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.15362.1, i64 1
  %i.br = load i32, ptr %i.bq, align 1, !tbaa !18 ; 2 uses
  %i.bs = and i32 %i.bp, 50529027
  %i.bt = and i32 %i.br, 50529027
  %i.bu = add nuw nsw i32 %i.bt, %i.bs            ; 2 uses
  %i.bv = lshr i32 %i.bp, 2
  %i.bw = and i32 %i.bv, 1061109567
  %i.bx = lshr i32 %i.br, 2
  %i.by = and i32 %i.bx, 1061109567
  %narrow55.1 = add nuw nsw i32 %i.by, %i.bw      ; 2 uses
  %i.bz = add nuw i32 %narrow55.1, %.061.1
  %i.ca = add nuw nsw i32 %i.bu, %.04860.1
  %i.cb = lshr i32 %i.ca, 2
  %i.cc = and i32 %i.cb, 252645135
  %i.cd = add i32 %i.bz, %i.cc
  store i32 %i.cd, ptr %.158.1, align 4, !tbaa !19
  %i.ce = getelementptr inbounds i8, ptr %.15362.1, i64 %2 ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.158.1, i64 %2 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 1, !tbaa !18 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !18 ; 2 uses
  %i.cj = and i32 %i.cg, 50529027
  %i.ck = and i32 %i.ci, 50529027
  %i.cl = add nuw nsw i32 %i.cj, 33686018
  %i.cm = add nuw nsw i32 %i.cl, %i.ck            ; 2 uses
  %i.cn = lshr i32 %i.cg, 2
  %i.co = and i32 %i.cn, 1061109567
  %i.cp = lshr i32 %i.ci, 2
  %i.cq = and i32 %i.cp, 1061109567
  %narrow56.1 = add nuw nsw i32 %i.cq, %i.co      ; 2 uses
  %i.cr = add nuw i32 %narrow56.1, %narrow55.1
  %i.cs = add nuw nsw i32 %i.cm, %i.bu
  %i.ct = lshr i32 %i.cs, 2
  %i.cu = and i32 %i.ct, 117901063
  %i.cv = add i32 %i.cr, %i.cu
  store i32 %i.cv, ptr %i.cf, align 4, !tbaa !19
  %i.cw = getelementptr inbounds i8, ptr %i.cf, i64 %2
  %i.cx = add nuw nsw i32 %.04959.1, 2            ; 2 uses
  %i.cy = icmp slt i32 %i.cx, %3
  br i1 %i.cy, label %bb.c, label %.split67, !llvm.loop !31

.split67:                                         ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_pixels4_8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %3, 7                       ; 3 uses
  %i.b = icmp ult i32 %3, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %3, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0811 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 2 uses
  %.0910 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.c = load i32, ptr %.0910, align 1, !tbaa !18
  store i32 %i.c, ptr %.0811, align 4, !tbaa !19
  %i.d = getelementptr inbounds i8, ptr %.0910, i64 %2 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.0811, i64 %2 ; 2 uses
  %i.f = load i32, ptr %i.d, align 1, !tbaa !18
  store i32 %i.f, ptr %i.e, align 4, !tbaa !19
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %2 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %2 ; 2 uses
  %i.i = load i32, ptr %i.g, align 1, !tbaa !18
  store i32 %i.i, ptr %i.h, align 4, !tbaa !19
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %2 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %2 ; 2 uses
  %i.l = load i32, ptr %i.j, align 1, !tbaa !18
  store i32 %i.l, ptr %i.k, align 4, !tbaa !19
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 %2 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %2 ; 2 uses
  %i.o = load i32, ptr %i.m, align 1, !tbaa !18
  store i32 %i.o, ptr %i.n, align 4, !tbaa !19
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %2 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %2 ; 2 uses
  %i.r = load i32, ptr %i.p, align 1, !tbaa !18
  store i32 %i.r, ptr %i.q, align 4, !tbaa !19
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %2 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 %2 ; 2 uses
  %i.u = load i32, ptr %i.s, align 1, !tbaa !18
  store i32 %i.u, ptr %i.t, align 4, !tbaa !19
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %2 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %2 ; 2 uses
  %i.x = load i32, ptr %i.v, align 1, !tbaa !18
  store i32 %i.x, ptr %i.w, align 4, !tbaa !19
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %2 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %2 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !32

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0811.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.z, %._crit_edge.loopexit.unr-lcssa ]
end_hunk_0
begin_hunk_1_@put_no_rnd_pixels16_x2_8_c:bb.a
  %i.al = getelementptr i8, ptr %i.ab, i64 4
  %i.am = load i32, ptr %i.al, align 1, !tbaa !18 ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 4
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !18 ; 2 uses
  %i.ap = and i32 %i.ao, %i.am
  %i.aq = xor i32 %i.ao, %i.am
  %i.ar = lshr i32 %i.aq, 1
  %i.as = and i32 %i.ar, 2139062143
  %i.at = add i32 %i.as, %i.ap
  %i.au = getelementptr i8, ptr %i.ak, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !19
  %indvars.iv.next.i.i11 = add nuw nsw i64 %indvars.iv.i.i10, 1 ; 2 uses
  %exitcond.not.i.i12 = icmp eq i64 %indvars.iv.next.i.i11, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i12, label %put_no_rnd_pixels8_x2_8_c.exit13, label %.lr.ph.i.i9, !llvm.loop !3

put_no_rnd_pixels8_x2_8_c.exit13:                 ; preds = %.lr.ph.i.i9, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_no_rnd_pixels16_y2_8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 %2
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.preheader.i.i, label %put_no_rnd_pixels8_y2_8_c.exit13

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %3 to i64  ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.c = mul nsw i64 %indvars.iv.i.i, %2          ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 1, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.g = load i32, ptr %i.f, align 1, !tbaa !18   ; 2 uses
  %i.h = and i32 %i.g, %i.e
  %i.i = xor i32 %i.g, %i.e
  %i.j = lshr i32 %i.i, 1
  %i.k = and i32 %i.j, 2139062143
  %i.l = add i32 %i.k, %i.h
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !19
  %i.n = getelementptr i8, ptr %i.d, i64 4
  %i.o = load i32, ptr %i.n, align 1, !tbaa !18   ; 2 uses
  %i.p = getelementptr i8, ptr %i.f, i64 4
  %i.q = load i32, ptr %i.p, align 1, !tbaa !18   ; 2 uses
  %i.r = and i32 %i.q, %i.o
  %i.s = xor i32 %i.q, %i.o
  %i.t = lshr i32 %i.s, 1
  %i.u = and i32 %i.t, 2139062143
  %i.v = add i32 %i.u, %i.r
  %i.w = getelementptr i8, ptr %i.m, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i.i7, label %.lr.ph.i.i, !llvm.loop !3

.lr.ph.preheader.i.i7:                            ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %2
  br label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i.i9, %.lr.ph.preheader.i.i7
  %indvars.iv.i.i10 = phi i64 [ 0, %.lr.ph.preheader.i.i7 ], [ %indvars.iv.next.i.i11, %.lr.ph.i.i9 ] ; 2 uses
  %i.aa = mul nsw i64 %indvars.iv.i.i10, %2       ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !18 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.aa ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !18 ; 2 uses
  %i.af = and i32 %i.ae, %i.ac
  %i.ag = xor i32 %i.ae, %i.ac
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = and i32 %i.ah, 2139062143
  %i.aj = add i32 %i.ai, %i.af
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 %i.aa ; 2 uses
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !19
  %i.al = getelementptr i8, ptr %i.ab, i64 4
  %i.am = load i32, ptr %i.al, align 1, !tbaa !18 ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 4
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !18 ; 2 uses
  %i.ap = and i32 %i.ao, %i.am
  %i.aq = xor i32 %i.ao, %i.am
  %i.ar = lshr i32 %i.aq, 1
  %i.as = and i32 %i.ar, 2139062143
  %i.at = add i32 %i.as, %i.ap
  %i.au = getelementptr i8, ptr %i.ak, i64 4
  store i32 %i.at, ptr %i.au, align 4, !tbaa !19
  %indvars.iv.next.i.i11 = add nuw nsw i64 %indvars.iv.i.i10, 1 ; 2 uses
  %exitcond.not.i.i12 = icmp eq i64 %indvars.iv.next.i.i11, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i12, label %put_no_rnd_pixels8_y2_8_c.exit13, label %.lr.ph.i.i9, !llvm.loop !3

put_no_rnd_pixels8_y2_8_c.exit13:                 ; preds = %.lr.ph.i.i9, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_no_rnd_pixels16_xy2_8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  tail call void @put_no_rnd_pixels8_xy2_8_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @put_no_rnd_pixels8_xy2_8_c(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_no_rnd_pixels8_x2_8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %put_no_rnd_pixels8_l2_8.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.c = mul nsw i64 %indvars.iv.i, %2            ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 1, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.g = load i32, ptr %i.f, align 1, !tbaa !18   ; 2 uses
  %i.h = and i32 %i.g, %i.e
  %i.i = xor i32 %i.g, %i.e
  %i.j = lshr i32 %i.i, 1
  %i.k = and i32 %i.j, 2139062143
  %i.l = add i32 %i.k, %i.h
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !19
  %i.n = getelementptr i8, ptr %i.d, i64 4
  %i.o = load i32, ptr %i.n, align 1, !tbaa !18   ; 2 uses
  %i.p = getelementptr i8, ptr %i.f, i64 4
  %i.q = load i32, ptr %i.p, align 1, !tbaa !18   ; 2 uses
  %i.r = and i32 %i.q, %i.o
  %i.s = xor i32 %i.q, %i.o
  %i.t = lshr i32 %i.s, 1
  %i.u = and i32 %i.t, 2139062143
  %i.v = add i32 %i.u, %i.r
  %i.w = getelementptr i8, ptr %i.m, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %put_no_rnd_pixels8_l2_8.exit, label %.lr.ph.i, !llvm.loop !3

put_no_rnd_pixels8_l2_8.exit:                     ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_no_rnd_pixels8_y2_8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 %2
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %put_no_rnd_pixels8_l2_8.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.c = mul nsw i64 %indvars.iv.i, %2            ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 1, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.g = load i32, ptr %i.f, align 1, !tbaa !18   ; 2 uses
  %i.h = and i32 %i.g, %i.e
  %i.i = xor i32 %i.g, %i.e
  %i.j = lshr i32 %i.i, 1
  %i.k = and i32 %i.j, 2139062143
  %i.l = add i32 %i.k, %i.h
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !19
  %i.n = getelementptr i8, ptr %i.d, i64 4
  %i.o = load i32, ptr %i.n, align 1, !tbaa !18   ; 2 uses
  %i.p = getelementptr i8, ptr %i.f, i64 4
  %i.q = load i32, ptr %i.p, align 1, !tbaa !18   ; 2 uses
  %i.r = and i32 %i.q, %i.o
  %i.s = xor i32 %i.q, %i.o
  %i.t = lshr i32 %i.s, 1
  %i.u = and i32 %i.t, 2139062143
  %i.v = add i32 %i.u, %i.r
  %i.w = getelementptr i8, ptr %i.m, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %put_no_rnd_pixels8_l2_8.exit, label %.lr.ph.i, !llvm.loop !3

put_no_rnd_pixels8_l2_8.exit:                     ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_no_rnd_pixels8_xy2_8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = add nuw nsw i32 %3, 1
  %i.c = sext i32 %i.b to i64
  %i.d = mul nsw i64 %2, %i.c
  %i.e = sub nsw i64 4, %i.d
  %4 = zext nneg i32 %3 to i64
  %i.f = mul nsw i64 %2, %4
  %i.g = sub nsw i64 4, %i.f
  br i1 %i.a, label %.lr.ph.preheader, label %.split67

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = load i32, ptr %1, align 1, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i32, ptr %i.i, align 1, !tbaa !18   ; 2 uses
  %i.k = and i32 %i.h, 50529027
  %i.l = and i32 %i.j, 50529027
  %i.m = add nuw nsw i32 %i.k, 16843009
  %i.n = add nuw nsw i32 %i.m, %i.l
  %i.o = lshr i32 %i.h, 2
  %i.p = and i32 %i.o, 1061109567
  %i.q = lshr i32 %i.j, 2
  %i.r = and i32 %i.q, 1061109567
  %narrow = add nuw nsw i32 %i.r, %i.p
  %.15357 = getelementptr inbounds i8, ptr %1, i64 %2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader, %bb.b
  %.15362 = phi ptr [ %.15357, %.lr.ph.preheader ], [ %.153, %bb.b ] ; 3 uses
  %.061 = phi i32 [ %narrow, %.lr.ph.preheader ], [ %narrow56, %bb.b ]
  %.04860 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.ap, %bb.b ]
  %.04959 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ba, %bb.b ]
  %.158 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.az, %bb.b ] ; 2 uses
  %i.s = load i32, ptr %.15362, align 1, !tbaa !18 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.15362, i64 1
  %i.u = load i32, ptr %i.t, align 1, !tbaa !18   ; 2 uses
  %i.v = and i32 %i.s, 50529027
  %i.w = and i32 %i.u, 50529027
  %i.x = add nuw nsw i32 %i.w, %i.v               ; 2 uses
  %i.y = lshr i32 %i.s, 2
  %i.z = and i32 %i.y, 1061109567
  %i.aa = lshr i32 %i.u, 2
  %i.ab = and i32 %i.aa, 1061109567
  %narrow55 = add nuw nsw i32 %i.ab, %i.z         ; 2 uses
  %i.ac = add nuw i32 %narrow55, %.061
  %i.ad = add nuw nsw i32 %i.x, %.04860
  %i.ae = lshr i32 %i.ad, 2
  %i.af = and i32 %i.ae, 252645135
  %i.ag = add i32 %i.ac, %i.af
  store i32 %i.ag, ptr %.158, align 4, !tbaa !19
  %i.ah = getelementptr inbounds i8, ptr %.15362, i64 %2 ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.158, i64 %2 ; 2 uses
  %i.aj = load i32, ptr %i.ah, align 1, !tbaa !18 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.al = load i32, ptr %i.ak, align 1, !tbaa !18 ; 2 uses
  %i.am = and i32 %i.aj, 50529027
  %i.an = and i32 %i.al, 50529027
  %i.ao = add nuw nsw i32 %i.am, 16843009
  %i.ap = add nuw nsw i32 %i.ao, %i.an            ; 2 uses
  %i.aq = lshr i32 %i.aj, 2
  %i.ar = and i32 %i.aq, 1061109567
  %i.as = lshr i32 %i.al, 2
  %i.at = and i32 %i.as, 1061109567
  %narrow56 = add nuw nsw i32 %i.at, %i.ar        ; 2 uses
  %i.au = add nuw i32 %narrow56, %narrow55
  %i.av = add nuw nsw i32 %i.ap, %i.x
  %i.aw = lshr i32 %i.av, 2
  %i.ax = and i32 %i.aw, 117901063
  %i.ay = add i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.ai, align 4, !tbaa !19
  %i.az = getelementptr inbounds i8, ptr %i.ai, i64 %2 ; 2 uses
  %i.ba = add nuw nsw i32 %.04959, 2              ; 2 uses
  %.153 = getelementptr inbounds i8, ptr %i.ah, i64 %2 ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %3
  br i1 %i.bb, label %bb.b, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.b
  %i.bc = getelementptr inbounds i8, ptr %.153, i64 %i.e ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.g
  %i.be = load i32, ptr %i.bc, align 1, !tbaa !18 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !18 ; 2 uses
  %i.bh = and i32 %i.be, 50529027
  %i.bi = and i32 %i.bg, 50529027
  %i.bj = add nuw nsw i32 %i.bh, 16843009
  %i.bk = add nuw nsw i32 %i.bj, %i.bi
  %i.bl = lshr i32 %i.be, 2
  %i.bm = and i32 %i.bl, 1061109567
  %i.bn = lshr i32 %i.bg, 2
  %i.bo = and i32 %i.bn, 1061109567
  %narrow.1 = add nuw nsw i32 %i.bo, %i.bm
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.pn = phi ptr [ %i.bc, %._crit_edge ], [ %i.ce, %bb.c ]
  %.061.1 = phi i32 [ %narrow.1, %._crit_edge ], [ %narrow56.1, %bb.c ]
  %.04860.1 = phi i32 [ %i.bk, %._crit_edge ], [ %i.cm, %bb.c ]
  %.04959.1 = phi i32 [ 0, %._crit_edge ], [ %i.cx, %bb.c ]
  %.158.1 = phi ptr [ %i.bd, %._crit_edge ], [ %i.cw, %bb.c ] ; 2 uses
  %.15362.1 = getelementptr inbounds i8, ptr %.pn, i64 %2 ; 3 uses
  %i.bp = load i32, ptr %.15362.1, align 1, !tbaa !18 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.15362.1, i64 1
  %i.br = load i32, ptr %i.bq, align 1, !tbaa !18 ; 2 uses
  %i.bs = and i32 %i.bp, 50529027
  %i.bt = and i32 %i.br, 50529027
  %i.bu = add nuw nsw i32 %i.bt, %i.bs            ; 2 uses
  %i.bv = lshr i32 %i.bp, 2
  %i.bw = and i32 %i.bv, 1061109567
  %i.bx = lshr i32 %i.br, 2
  %i.by = and i32 %i.bx, 1061109567
  %narrow55.1 = add nuw nsw i32 %i.by, %i.bw      ; 2 uses
  %i.bz = add nuw i32 %narrow55.1, %.061.1
  %i.ca = add nuw nsw i32 %i.bu, %.04860.1
  %i.cb = lshr i32 %i.ca, 2
  %i.cc = and i32 %i.cb, 252645135
  %i.cd = add i32 %i.bz, %i.cc
  store i32 %i.cd, ptr %.158.1, align 4, !tbaa !19
  %i.ce = getelementptr inbounds i8, ptr %.15362.1, i64 %2 ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.158.1, i64 %2 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 1, !tbaa !18 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !18 ; 2 uses
  %i.cj = and i32 %i.cg, 50529027
  %i.ck = and i32 %i.ci, 50529027
  %i.cl = add nuw nsw i32 %i.cj, 16843009
  %i.cm = add nuw nsw i32 %i.cl, %i.ck            ; 2 uses
  %i.cn = lshr i32 %i.cg, 2
  %i.co = and i32 %i.cn, 1061109567
  %i.cp = lshr i32 %i.ci, 2
  %i.cq = and i32 %i.cp, 1061109567
  %narrow56.1 = add nuw nsw i32 %i.cq, %i.co      ; 2 uses
  %i.cr = add nuw i32 %narrow56.1, %narrow55.1
  %i.cs = add nuw nsw i32 %i.cm, %i.bu
  %i.ct = lshr i32 %i.cs, 2
  %i.cu = and i32 %i.ct, 117901063
  %i.cv = add i32 %i.cr, %i.cu
  store i32 %i.cv, ptr %i.cf, align 4, !tbaa !19
  %i.cw = getelementptr inbounds i8, ptr %i.cf, i64 %2
  %i.cx = add nuw nsw i32 %.04959.1, 2            ; 2 uses
  %i.cy = icmp slt i32 %i.cx, %3
  br i1 %i.cy, label %bb.c, label %.split67, !llvm.loop !52

.split67:                                         ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_pixels16_8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.i, label %avg_pixels8_8_c.exit12

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.016.i = phi i32 [ %i.t, %.lr.ph.i ], [ 0, %bb.a ]
  %.01215.i = phi ptr [ %i.s, %.lr.ph.i ], [ %0, %bb.a ] ; 4 uses
  %.01314.i = phi ptr [ %i.r, %.lr.ph.i ], [ %1, %bb.a ] ; 3 uses
  %i.b = load i32, ptr %.01215.i, align 4, !tbaa !19 ; 2 uses
  %i.c = load i32, ptr %.01314.i, align 1, !tbaa !18 ; 2 uses
  %i.d = or i32 %i.c, %i.b
  %i.e = xor i32 %i.c, %i.b
  %i.f = lshr i32 %i.e, 1
  %i.g = and i32 %i.f, 2139062143
  %i.h = sub i32 %i.d, %i.g
  store i32 %i.h, ptr %.01215.i, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %.01215.i, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01314.i, i64 4
  %i.l = load i32, ptr %i.k, align 1, !tbaa !18   ; 2 uses
  %i.m = or i32 %i.l, %i.j
  %i.n = xor i32 %i.l, %i.j
  %i.o = lshr i32 %i.n, 1
  %i.p = and i32 %i.o, 2139062143
  %i.q = sub i32 %i.m, %i.p
  store i32 %i.q, ptr %i.i, align 4, !tbaa !19
  %i.r = getelementptr inbounds i8, ptr %.01314.i, i64 %2
  %i.s = getelementptr inbounds i8, ptr %.01215.i, i64 %2
  %i.t = add nuw nsw i32 %.016.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.t, %3
  br i1 %exitcond.not.i, label %avg_pixels8_8_c.exit, label %.lr.ph.i, !llvm.loop !4

avg_pixels8_8_c.exit:                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %avg_pixels8_8_c.exit, %.lr.ph.i7
  %.016.i8 = phi i32 [ %i.ao, %.lr.ph.i7 ], [ 0, %avg_pixels8_8_c.exit ]
  %.01215.i9 = phi ptr [ %i.an, %.lr.ph.i7 ], [ %i.u, %avg_pixels8_8_c.exit ] ; 4 uses
  %.01314.i10 = phi ptr [ %i.am, %.lr.ph.i7 ], [ %i.v, %avg_pixels8_8_c.exit ] ; 3 uses
  %i.w = load i32, ptr %.01215.i9, align 4, !tbaa !19 ; 2 uses
  %i.x = load i32, ptr %.01314.i10, align 1, !tbaa !18 ; 2 uses
  %i.y = or i32 %i.x, %i.w
  %i.z = xor i32 %i.x, %i.w
  %i.aa = lshr i32 %i.z, 1
  %i.ab = and i32 %i.aa, 2139062143
  %i.ac = sub i32 %i.y, %i.ab
  store i32 %i.ac, ptr %.01215.i9, align 4, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %.01215.i9, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !19 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01314.i10, i64 4
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !18 ; 2 uses
  %i.ah = or i32 %i.ag, %i.ae
  %i.ai = xor i32 %i.ag, %i.ae
  %i.aj = lshr i32 %i.ai, 1
  %i.ak = and i32 %i.aj, 2139062143
  %i.al = sub i32 %i.ah, %i.ak
  store i32 %i.al, ptr %i.ad, align 4, !tbaa !19
end_hunk_1
begin_hunk_2_@avg_pixels16_y2_8_c:bb.a
  %i.at = or i32 %i.aq, %i.ao
  %i.au = xor i32 %i.aq, %i.ao
  %i.av = lshr i32 %i.au, 1
  %i.aw = and i32 %i.av, 2139062143
  %i.ax = sub i32 %i.at, %i.aw                    ; 2 uses
  %i.ay = or i32 %i.ax, %i.as
  %i.az = xor i32 %i.ax, %i.as
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %i.ba, 2139062143
  %i.bc = sub i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ar, align 4, !tbaa !19
  %i.bd = getelementptr i8, ptr %i.an, i64 4
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !18 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ap, i64 4
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !18 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ar, i64 4      ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !19 ; 2 uses
  %i.bj = or i32 %i.bg, %i.be
  %i.bk = xor i32 %i.bg, %i.be
  %i.bl = lshr i32 %i.bk, 1
  %i.bm = and i32 %i.bl, 2139062143
  %i.bn = sub i32 %i.bj, %i.bm                    ; 2 uses
  %i.bo = or i32 %i.bn, %i.bi
  %i.bp = xor i32 %i.bn, %i.bi
  %i.bq = lshr i32 %i.bp, 1
  %i.br = and i32 %i.bq, 2139062143
  %i.bs = sub i32 %i.bo, %i.br
  store i32 %i.bs, ptr %i.bh, align 4, !tbaa !19
  %indvars.iv.next.i.i11 = add nuw nsw i64 %indvars.iv.i.i10, 1 ; 2 uses
  %exitcond.not.i.i12 = icmp eq i64 %indvars.iv.next.i.i11, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i12, label %avg_pixels8_y2_8_c.exit13, label %.lr.ph.i.i9, !llvm.loop !5

avg_pixels8_y2_8_c.exit13:                        ; preds = %.lr.ph.i.i9, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_pixels16_xy2_8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  tail call void @avg_pixels8_xy2_8_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @avg_pixels8_xy2_8_c(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_pixels8_8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.016 = phi i32 [ %i.t, %.lr.ph ], [ 0, %bb.a ]
  %.01215 = phi ptr [ %i.s, %.lr.ph ], [ %0, %bb.a ] ; 4 uses
  %.01314 = phi ptr [ %i.r, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.b = load i32, ptr %.01215, align 4, !tbaa !19 ; 2 uses
  %i.c = load i32, ptr %.01314, align 1, !tbaa !18 ; 2 uses
  %i.d = or i32 %i.c, %i.b
  %i.e = xor i32 %i.c, %i.b
  %i.f = lshr i32 %i.e, 1
  %i.g = and i32 %i.f, 2139062143
  %i.h = sub i32 %i.d, %i.g
  store i32 %i.h, ptr %.01215, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %.01215, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01314, i64 4
  %i.l = load i32, ptr %i.k, align 1, !tbaa !18   ; 2 uses
  %i.m = or i32 %i.l, %i.j
  %i.n = xor i32 %i.l, %i.j
  %i.o = lshr i32 %i.n, 1
  %i.p = and i32 %i.o, 2139062143
  %i.q = sub i32 %i.m, %i.p
  store i32 %i.q, ptr %i.i, align 4, !tbaa !19
  %i.r = getelementptr inbounds i8, ptr %.01314, i64 %2
  %i.s = getelementptr inbounds i8, ptr %.01215, i64 %2
  %i.t = add nuw nsw i32 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_pixels8_x2_8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %avg_pixels8_l2_8.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.c = mul nsw i64 %indvars.iv.i, %2            ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 1, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.g = load i32, ptr %i.f, align 1, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19   ; 2 uses
  %i.j = or i32 %i.g, %i.e
  %i.k = xor i32 %i.g, %i.e
  %i.l = lshr i32 %i.k, 1
  %i.m = and i32 %i.l, 2139062143
  %i.n = sub i32 %i.j, %i.m                       ; 2 uses
  %i.o = or i32 %i.n, %i.i
  %i.p = xor i32 %i.n, %i.i
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 2139062143
  %i.s = sub i32 %i.o, %i.r
  store i32 %i.s, ptr %i.h, align 4, !tbaa !19
  %i.t = getelementptr i8, ptr %i.d, i64 4
  %i.u = load i32, ptr %i.t, align 1, !tbaa !18   ; 2 uses
  %i.v = getelementptr i8, ptr %i.f, i64 4
  %i.w = load i32, ptr %i.v, align 1, !tbaa !18   ; 2 uses
  %i.x = getelementptr i8, ptr %i.h, i64 4        ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19   ; 2 uses
  %i.z = or i32 %i.w, %i.u
  %i.aa = xor i32 %i.w, %i.u
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = and i32 %i.ab, 2139062143
  %i.ad = sub i32 %i.z, %i.ac                     ; 2 uses
  %i.ae = or i32 %i.ad, %i.y
  %i.af = xor i32 %i.ad, %i.y
  %i.ag = lshr i32 %i.af, 1
  %i.ah = and i32 %i.ag, 2139062143
  %i.ai = sub i32 %i.ae, %i.ah
  store i32 %i.ai, ptr %i.x, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %avg_pixels8_l2_8.exit, label %.lr.ph.i, !llvm.loop !5

avg_pixels8_l2_8.exit:                            ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_pixels8_y2_8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 %2
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.preheader.i, label %avg_pixels8_l2_8.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.c = mul nsw i64 %indvars.iv.i, %2            ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 1, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.g = load i32, ptr %i.f, align 1, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19   ; 2 uses
  %i.j = or i32 %i.g, %i.e
  %i.k = xor i32 %i.g, %i.e
  %i.l = lshr i32 %i.k, 1
  %i.m = and i32 %i.l, 2139062143
  %i.n = sub i32 %i.j, %i.m                       ; 2 uses
  %i.o = or i32 %i.n, %i.i
  %i.p = xor i32 %i.n, %i.i
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 2139062143
  %i.s = sub i32 %i.o, %i.r
  store i32 %i.s, ptr %i.h, align 4, !tbaa !19
  %i.t = getelementptr i8, ptr %i.d, i64 4
  %i.u = load i32, ptr %i.t, align 1, !tbaa !18   ; 2 uses
  %i.v = getelementptr i8, ptr %i.f, i64 4
  %i.w = load i32, ptr %i.v, align 1, !tbaa !18   ; 2 uses
  %i.x = getelementptr i8, ptr %i.h, i64 4        ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19   ; 2 uses
  %i.z = or i32 %i.w, %i.u
  %i.aa = xor i32 %i.w, %i.u
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = and i32 %i.ab, 2139062143
  %i.ad = sub i32 %i.z, %i.ac                     ; 2 uses
  %i.ae = or i32 %i.ad, %i.y
  %i.af = xor i32 %i.ad, %i.y
  %i.ag = lshr i32 %i.af, 1
  %i.ah = and i32 %i.ag, 2139062143
  %i.ai = sub i32 %i.ae, %i.ah
  store i32 %i.ai, ptr %i.x, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %avg_pixels8_l2_8.exit, label %.lr.ph.i, !llvm.loop !5

avg_pixels8_l2_8.exit:                            ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_pixels8_xy2_8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = add nuw nsw i32 %3, 1
  %i.c = sext i32 %i.b to i64
  %i.d = mul nsw i64 %2, %i.c
  %i.e = sub nsw i64 4, %i.d
  %4 = zext nneg i32 %3 to i64
  %i.f = mul nsw i64 %2, %4
  %i.g = sub nsw i64 4, %i.f
  br i1 %i.a, label %.lr.ph.preheader, label %.split69

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = load i32, ptr %1, align 1, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i32, ptr %i.i, align 1, !tbaa !18   ; 2 uses
  %i.k = and i32 %i.h, 50529027
  %i.l = and i32 %i.j, 50529027
  %i.m = add nuw nsw i32 %i.k, 33686018
  %i.n = add nuw nsw i32 %i.m, %i.l
  %i.o = lshr i32 %i.h, 2
  %i.p = and i32 %i.o, 1061109567
  %i.q = lshr i32 %i.j, 2
  %i.r = and i32 %i.q, 1061109567
  %narrow = add nuw nsw i32 %i.r, %i.p
  %.15559 = getelementptr inbounds i8, ptr %1, i64 %2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader, %bb.b
  %.15564 = phi ptr [ %.15559, %.lr.ph.preheader ], [ %.155, %bb.b ] ; 3 uses
  %.063 = phi i32 [ %narrow, %.lr.ph.preheader ], [ %narrow58, %bb.b ]
  %.05062 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.av, %bb.b ]
  %.05161 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bm, %bb.b ]
  %.160 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.bl, %bb.b ] ; 3 uses
  %i.s = load i32, ptr %.15564, align 1, !tbaa !18 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.15564, i64 1
  %i.u = load i32, ptr %i.t, align 1, !tbaa !18   ; 2 uses
  %i.v = and i32 %i.s, 50529027
  %i.w = and i32 %i.u, 50529027
  %i.x = add nuw nsw i32 %i.w, %i.v               ; 2 uses
  %i.y = lshr i32 %i.s, 2
  %i.z = and i32 %i.y, 1061109567
  %i.aa = lshr i32 %i.u, 2
  %i.ab = and i32 %i.aa, 1061109567
  %narrow57 = add nuw nsw i32 %i.ab, %i.z         ; 2 uses
  %i.ac = load i32, ptr %.160, align 4, !tbaa !19 ; 2 uses
  %i.ad = add nuw i32 %narrow57, %.063
  %i.ae = add nuw nsw i32 %i.x, %.05062
  %i.af = lshr i32 %i.ae, 2
  %i.ag = and i32 %i.af, 252645135
  %i.ah = add i32 %i.ad, %i.ag                    ; 2 uses
  %i.ai = or i32 %i.ah, %i.ac
  %i.aj = xor i32 %i.ah, %i.ac
  %i.ak = lshr i32 %i.aj, 1
  %i.al = and i32 %i.ak, 2139062143
  %i.am = sub i32 %i.ai, %i.al
  store i32 %i.am, ptr %.160, align 4, !tbaa !19
  %i.an = getelementptr inbounds i8, ptr %.15564, i64 %2 ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %.160, i64 %2 ; 3 uses
  %i.ap = load i32, ptr %i.an, align 1, !tbaa !18 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !18 ; 2 uses
  %i.as = and i32 %i.ap, 50529027
  %i.at = and i32 %i.ar, 50529027
  %i.au = add nuw nsw i32 %i.as, 33686018
  %i.av = add nuw nsw i32 %i.au, %i.at            ; 2 uses
  %i.aw = lshr i32 %i.ap, 2
  %i.ax = and i32 %i.aw, 1061109567
  %i.ay = lshr i32 %i.ar, 2
  %i.az = and i32 %i.ay, 1061109567
  %narrow58 = add nuw nsw i32 %i.az, %i.ax        ; 2 uses
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !19 ; 2 uses
  %i.bb = add nuw i32 %narrow58, %narrow57
  %i.bc = add nuw nsw i32 %i.av, %i.x
  %i.bd = lshr i32 %i.bc, 2
  %i.be = and i32 %i.bd, 117901063
  %i.bf = add i32 %i.bb, %i.be                    ; 2 uses
  %i.bg = or i32 %i.bf, %i.ba
  %i.bh = xor i32 %i.bf, %i.ba
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = and i32 %i.bi, 2139062143
  %i.bk = sub i32 %i.bg, %i.bj
  store i32 %i.bk, ptr %i.ao, align 4, !tbaa !19
  %i.bl = getelementptr inbounds i8, ptr %i.ao, i64 %2 ; 2 uses
  %i.bm = add nuw nsw i32 %.05161, 2              ; 2 uses
  %.155 = getelementptr inbounds i8, ptr %i.an, i64 %2 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %3
  br i1 %i.bn, label %bb.b, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.b
  %i.bo = getelementptr inbounds i8, ptr %.155, i64 %i.e ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.g
  %i.bq = load i32, ptr %i.bo, align 1, !tbaa !18 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bs = load i32, ptr %i.br, align 1, !tbaa !18 ; 2 uses
  %i.bt = and i32 %i.bq, 50529027
  %i.bu = and i32 %i.bs, 50529027
  %i.bv = add nuw nsw i32 %i.bt, 33686018
  %i.bw = add nuw nsw i32 %i.bv, %i.bu
  %i.bx = lshr i32 %i.bq, 2
  %i.by = and i32 %i.bx, 1061109567
  %i.bz = lshr i32 %i.bs, 2
  %i.ca = and i32 %i.bz, 1061109567
  %narrow.1 = add nuw nsw i32 %i.ca, %i.by
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.pn = phi ptr [ %i.bo, %._crit_edge ], [ %i.cw, %bb.c ]
  %.063.1 = phi i32 [ %narrow.1, %._crit_edge ], [ %narrow58.1, %bb.c ]
  %.05062.1 = phi i32 [ %i.bw, %._crit_edge ], [ %i.de, %bb.c ]
  %.05161.1 = phi i32 [ 0, %._crit_edge ], [ %i.dv, %bb.c ]
  %.160.1 = phi ptr [ %i.bp, %._crit_edge ], [ %i.du, %bb.c ] ; 3 uses
  %.15564.1 = getelementptr inbounds i8, ptr %.pn, i64 %2 ; 3 uses
  %i.cb = load i32, ptr %.15564.1, align 1, !tbaa !18 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.15564.1, i64 1
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !18 ; 2 uses
  %i.ce = and i32 %i.cb, 50529027
  %i.cf = and i32 %i.cd, 50529027
  %i.cg = add nuw nsw i32 %i.cf, %i.ce            ; 2 uses
  %i.ch = lshr i32 %i.cb, 2
  %i.ci = and i32 %i.ch, 1061109567
  %i.cj = lshr i32 %i.cd, 2
  %i.ck = and i32 %i.cj, 1061109567
  %narrow57.1 = add nuw nsw i32 %i.ck, %i.ci      ; 2 uses
  %i.cl = load i32, ptr %.160.1, align 4, !tbaa !19 ; 2 uses
  %i.cm = add nuw i32 %narrow57.1, %.063.1
  %i.cn = add nuw nsw i32 %i.cg, %.05062.1
  %i.co = lshr i32 %i.cn, 2
  %i.cp = and i32 %i.co, 252645135
  %i.cq = add i32 %i.cm, %i.cp                    ; 2 uses
  %i.cr = or i32 %i.cq, %i.cl
  %i.cs = xor i32 %i.cq, %i.cl
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = and i32 %i.ct, 2139062143
  %i.cv = sub i32 %i.cr, %i.cu
  store i32 %i.cv, ptr %.160.1, align 4, !tbaa !19
  %i.cw = getelementptr inbounds i8, ptr %.15564.1, i64 %2 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.160.1, i64 %2 ; 3 uses
  %i.cy = load i32, ptr %i.cw, align 1, !tbaa !18 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.da = load i32, ptr %i.cz, align 1, !tbaa !18 ; 2 uses
  %i.db = and i32 %i.cy, 50529027
  %i.dc = and i32 %i.da, 50529027
  %i.dd = add nuw nsw i32 %i.db, 33686018
  %i.de = add nuw nsw i32 %i.dd, %i.dc            ; 2 uses
  %i.df = lshr i32 %i.cy, 2
  %i.dg = and i32 %i.df, 1061109567
  %i.dh = lshr i32 %i.da, 2
  %i.di = and i32 %i.dh, 1061109567
  %narrow58.1 = add nuw nsw i32 %i.di, %i.dg      ; 2 uses
  %i.dj = load i32, ptr %i.cx, align 4, !tbaa !19 ; 2 uses
  %i.dk = add nuw i32 %narrow58.1, %narrow57.1
  %i.dl = add nuw nsw i32 %i.de, %i.cg
  %i.dm = lshr i32 %i.dl, 2
  %i.dn = and i32 %i.dm, 117901063
  %i.do = add i32 %i.dk, %i.dn                    ; 2 uses
  %i.dp = or i32 %i.do, %i.dj
  %i.dq = xor i32 %i.do, %i.dj
  %i.dr = lshr i32 %i.dq, 1
  %i.ds = and i32 %i.dr, 2139062143
  %i.dt = sub i32 %i.dp, %i.ds
  store i32 %i.dt, ptr %i.cx, align 4, !tbaa !19
  %i.du = getelementptr inbounds i8, ptr %i.cx, i64 %2
  %i.dv = add nuw nsw i32 %.05161.1, 2            ; 2 uses
  %i.dw = icmp slt i32 %i.dv, %3
  br i1 %i.dw, label %bb.c, label %.split69, !llvm.loop !53

.split69:                                         ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_pixels4_8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %3, 1
  %i.b = icmp eq i32 %3, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %3, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0912 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.t, %.lr.ph ] ; 3 uses
  %.01011 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.s, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.c = load i32, ptr %.0912, align 4, !tbaa !19 ; 2 uses
  %i.d = load i32, ptr %.01011, align 1, !tbaa !18 ; 2 uses
  %i.e = or i32 %i.d, %i.c
  %i.f = xor i32 %i.d, %i.c
  %i.g = lshr i32 %i.f, 1
  %i.h = and i32 %i.g, 2139062143
  %i.i = sub i32 %i.e, %i.h
  store i32 %i.i, ptr %.0912, align 4, !tbaa !19
  %i.j = getelementptr inbounds i8, ptr %.01011, i64 %2 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.0912, i64 %2 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19   ; 2 uses
  %i.m = load i32, ptr %i.j, align 1, !tbaa !18   ; 2 uses
  %i.n = or i32 %i.m, %i.l
  %i.o = xor i32 %i.m, %i.l
  %i.p = lshr i32 %i.o, 1
  %i.q = and i32 %i.p, 2139062143
  %i.r = sub i32 %i.n, %i.q
  store i32 %i.r, ptr %i.k, align 4, !tbaa !19
end_hunk_2
begin_hunk_3_@avg_no_rnd_pixels16_x2_8_c:bb.a
  %i.j = and i32 %i.g, %i.e
  %i.k = xor i32 %i.g, %i.e
  %i.l = lshr i32 %i.k, 1
  %i.m = and i32 %i.l, 2139062143
  %i.n = add i32 %i.m, %i.j                       ; 2 uses
  %i.o = or i32 %i.n, %i.i
  %i.p = xor i32 %i.n, %i.i
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 2139062143
  %i.s = sub i32 %i.o, %i.r
  store i32 %i.s, ptr %i.h, align 4, !tbaa !19
  %i.t = getelementptr i8, ptr %i.d, i64 4
  %i.u = load i32, ptr %i.t, align 1, !tbaa !18   ; 2 uses
  %i.v = getelementptr i8, ptr %i.f, i64 4
  %i.w = load i32, ptr %i.v, align 1, !tbaa !18   ; 2 uses
  %i.x = getelementptr i8, ptr %i.h, i64 4        ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19   ; 2 uses
  %i.z = and i32 %i.w, %i.u
  %i.aa = xor i32 %i.w, %i.u
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = and i32 %i.ab, 2139062143
  %i.ad = add i32 %i.ac, %i.z                     ; 2 uses
  %i.ae = or i32 %i.ad, %i.y
  %i.af = xor i32 %i.ad, %i.y
  %i.ag = lshr i32 %i.af, 1
  %i.ah = and i32 %i.ag, 2139062143
  %i.ai = sub i32 %i.ae, %i.ah
  store i32 %i.ai, ptr %i.x, align 4, !tbaa !19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i.i7, label %.lr.ph.i.i, !llvm.loop !8

.lr.ph.preheader.i.i7:                            ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i.i9, %.lr.ph.preheader.i.i7
  %indvars.iv.i.i10 = phi i64 [ 0, %.lr.ph.preheader.i.i7 ], [ %indvars.iv.next.i.i11, %.lr.ph.i.i9 ] ; 2 uses
  %i.am = mul nsw i64 %indvars.iv.i.i10, %2       ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !18 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.am ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !18 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aj, i64 %i.am ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !19 ; 2 uses
  %i.at = and i32 %i.aq, %i.ao
  %i.au = xor i32 %i.aq, %i.ao
  %i.av = lshr i32 %i.au, 1
  %i.aw = and i32 %i.av, 2139062143
  %i.ax = add i32 %i.aw, %i.at                    ; 2 uses
  %i.ay = or i32 %i.ax, %i.as
  %i.az = xor i32 %i.ax, %i.as
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %i.ba, 2139062143
  %i.bc = sub i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ar, align 4, !tbaa !19
  %i.bd = getelementptr i8, ptr %i.an, i64 4
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !18 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ap, i64 4
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !18 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ar, i64 4      ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !19 ; 2 uses
  %i.bj = and i32 %i.bg, %i.be
  %i.bk = xor i32 %i.bg, %i.be
  %i.bl = lshr i32 %i.bk, 1
  %i.bm = and i32 %i.bl, 2139062143
  %i.bn = add i32 %i.bm, %i.bj                    ; 2 uses
  %i.bo = or i32 %i.bn, %i.bi
  %i.bp = xor i32 %i.bn, %i.bi
  %i.bq = lshr i32 %i.bp, 1
  %i.br = and i32 %i.bq, 2139062143
  %i.bs = sub i32 %i.bo, %i.br
  store i32 %i.bs, ptr %i.bh, align 4, !tbaa !19
  %indvars.iv.next.i.i11 = add nuw nsw i64 %indvars.iv.i.i10, 1 ; 2 uses
  %exitcond.not.i.i12 = icmp eq i64 %indvars.iv.next.i.i11, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i12, label %avg_no_rnd_pixels8_x2_8_c.exit13, label %.lr.ph.i.i9, !llvm.loop !8

avg_no_rnd_pixels8_x2_8_c.exit13:                 ; preds = %.lr.ph.i.i9, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_no_rnd_pixels16_y2_8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 %2
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.preheader.i.i, label %avg_no_rnd_pixels8_y2_8_c.exit13

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %3 to i64  ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.c = mul nsw i64 %indvars.iv.i.i, %2          ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 1, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.g = load i32, ptr %i.f, align 1, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !19   ; 2 uses
  %i.j = and i32 %i.g, %i.e
  %i.k = xor i32 %i.g, %i.e
  %i.l = lshr i32 %i.k, 1
  %i.m = and i32 %i.l, 2139062143
  %i.n = add i32 %i.m, %i.j                       ; 2 uses
  %i.o = or i32 %i.n, %i.i
  %i.p = xor i32 %i.n, %i.i
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 2139062143
  %i.s = sub i32 %i.o, %i.r
  store i32 %i.s, ptr %i.h, align 4, !tbaa !19
  %i.t = getelementptr i8, ptr %i.d, i64 4
  %i.u = load i32, ptr %i.t, align 1, !tbaa !18   ; 2 uses
  %i.v = getelementptr i8, ptr %i.f, i64 4
  %i.w = load i32, ptr %i.v, align 1, !tbaa !18   ; 2 uses
  %i.x = getelementptr i8, ptr %i.h, i64 4        ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !19   ; 2 uses
  %i.z = and i32 %i.w, %i.u
  %i.aa = xor i32 %i.w, %i.u
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = and i32 %i.ab, 2139062143
  %i.ad = add i32 %i.ac, %i.z                     ; 2 uses
  %i.ae = or i32 %i.ad, %i.y
  %i.af = xor i32 %i.ad, %i.y
  %i.ag = lshr i32 %i.af, 1
  %i.ah = and i32 %i.ag, 2139062143
  %i.ai = sub i32 %i.ae, %i.ah
  store i32 %i.ai, ptr %i.x, align 4, !tbaa !19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i.i7, label %.lr.ph.i.i, !llvm.loop !8

.lr.ph.preheader.i.i7:                            ; preds = %.lr.ph.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %2
  br label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %.lr.ph.i.i9, %.lr.ph.preheader.i.i7
  %indvars.iv.i.i10 = phi i64 [ 0, %.lr.ph.preheader.i.i7 ], [ %indvars.iv.next.i.i11, %.lr.ph.i.i9 ] ; 2 uses
  %i.am = mul nsw i64 %indvars.iv.i.i10, %2       ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %i.ak, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !18 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.am ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !18 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aj, i64 %i.am ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !19 ; 2 uses
  %i.at = and i32 %i.aq, %i.ao
  %i.au = xor i32 %i.aq, %i.ao
  %i.av = lshr i32 %i.au, 1
  %i.aw = and i32 %i.av, 2139062143
  %i.ax = add i32 %i.aw, %i.at                    ; 2 uses
  %i.ay = or i32 %i.ax, %i.as
  %i.az = xor i32 %i.ax, %i.as
  %i.ba = lshr i32 %i.az, 1
  %i.bb = and i32 %i.ba, 2139062143
  %i.bc = sub i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ar, align 4, !tbaa !19
  %i.bd = getelementptr i8, ptr %i.an, i64 4
  %i.be = load i32, ptr %i.bd, align 1, !tbaa !18 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ap, i64 4
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !18 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ar, i64 4      ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !19 ; 2 uses
  %i.bj = and i32 %i.bg, %i.be
  %i.bk = xor i32 %i.bg, %i.be
  %i.bl = lshr i32 %i.bk, 1
  %i.bm = and i32 %i.bl, 2139062143
  %i.bn = add i32 %i.bm, %i.bj                    ; 2 uses
  %i.bo = or i32 %i.bn, %i.bi
  %i.bp = xor i32 %i.bn, %i.bi
  %i.bq = lshr i32 %i.bp, 1
  %i.br = and i32 %i.bq, 2139062143
  %i.bs = sub i32 %i.bo, %i.br
  store i32 %i.bs, ptr %i.bh, align 4, !tbaa !19
  %indvars.iv.next.i.i11 = add nuw nsw i64 %indvars.iv.i.i10, 1 ; 2 uses
  %exitcond.not.i.i12 = icmp eq i64 %indvars.iv.next.i.i11, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i12, label %avg_no_rnd_pixels8_y2_8_c.exit13, label %.lr.ph.i.i9, !llvm.loop !8

avg_no_rnd_pixels8_y2_8_c.exit13:                 ; preds = %.lr.ph.i.i9, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_no_rnd_pixels16_xy2_8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  tail call fastcc void @avg_no_rnd_pixels8_xy2_8_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @avg_no_rnd_pixels8_xy2_8_c(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @avg_no_rnd_pixels8_xy2_8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = add nuw nsw i32 %3, 1
  %i.c = sext i32 %i.b to i64
  %i.d = mul nsw i64 %2, %i.c
  %i.e = sub nsw i64 4, %i.d
  %4 = zext nneg i32 %3 to i64
  %i.f = mul nsw i64 %2, %4
  %i.g = sub nsw i64 4, %i.f
  br i1 %i.a, label %.lr.ph.preheader, label %.split69

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = load i32, ptr %1, align 1, !tbaa !18     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i32, ptr %i.i, align 1, !tbaa !18   ; 2 uses
  %i.k = and i32 %i.h, 50529027
  %i.l = and i32 %i.j, 50529027
  %i.m = add nuw nsw i32 %i.k, 16843009
  %i.n = add nuw nsw i32 %i.m, %i.l
  %i.o = lshr i32 %i.h, 2
  %i.p = and i32 %i.o, 1061109567
  %i.q = lshr i32 %i.j, 2
  %i.r = and i32 %i.q, 1061109567
  %narrow = add nuw nsw i32 %i.r, %i.p
  %.15559 = getelementptr inbounds i8, ptr %1, i64 %2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader, %bb.b
  %.15564 = phi ptr [ %.15559, %.lr.ph.preheader ], [ %.155, %bb.b ] ; 3 uses
  %.063 = phi i32 [ %narrow, %.lr.ph.preheader ], [ %narrow58, %bb.b ]
  %.05062 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.av, %bb.b ]
  %.05161 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bm, %bb.b ]
  %.160 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.bl, %bb.b ] ; 3 uses
  %i.s = load i32, ptr %.15564, align 1, !tbaa !18 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.15564, i64 1
  %i.u = load i32, ptr %i.t, align 1, !tbaa !18   ; 2 uses
  %i.v = and i32 %i.s, 50529027
  %i.w = and i32 %i.u, 50529027
  %i.x = add nuw nsw i32 %i.w, %i.v               ; 2 uses
  %i.y = lshr i32 %i.s, 2
  %i.z = and i32 %i.y, 1061109567
  %i.aa = lshr i32 %i.u, 2
  %i.ab = and i32 %i.aa, 1061109567
  %narrow57 = add nuw nsw i32 %i.ab, %i.z         ; 2 uses
  %i.ac = load i32, ptr %.160, align 4, !tbaa !19 ; 2 uses
  %i.ad = add nuw i32 %narrow57, %.063
  %i.ae = add nuw nsw i32 %i.x, %.05062
  %i.af = lshr i32 %i.ae, 2
  %i.ag = and i32 %i.af, 252645135
  %i.ah = add i32 %i.ad, %i.ag                    ; 2 uses
  %i.ai = or i32 %i.ah, %i.ac
  %i.aj = xor i32 %i.ah, %i.ac
  %i.ak = lshr i32 %i.aj, 1
  %i.al = and i32 %i.ak, 2139062143
  %i.am = sub i32 %i.ai, %i.al
  store i32 %i.am, ptr %.160, align 4, !tbaa !19
  %i.an = getelementptr inbounds i8, ptr %.15564, i64 %2 ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %.160, i64 %2 ; 3 uses
  %i.ap = load i32, ptr %i.an, align 1, !tbaa !18 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !18 ; 2 uses
  %i.as = and i32 %i.ap, 50529027
  %i.at = and i32 %i.ar, 50529027
  %i.au = add nuw nsw i32 %i.as, 16843009
  %i.av = add nuw nsw i32 %i.au, %i.at            ; 2 uses
  %i.aw = lshr i32 %i.ap, 2
  %i.ax = and i32 %i.aw, 1061109567
  %i.ay = lshr i32 %i.ar, 2
  %i.az = and i32 %i.ay, 1061109567
  %narrow58 = add nuw nsw i32 %i.az, %i.ax        ; 2 uses
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !19 ; 2 uses
  %i.bb = add nuw i32 %narrow58, %narrow57
  %i.bc = add nuw nsw i32 %i.av, %i.x
  %i.bd = lshr i32 %i.bc, 2
  %i.be = and i32 %i.bd, 117901063
  %i.bf = add i32 %i.bb, %i.be                    ; 2 uses
  %i.bg = or i32 %i.bf, %i.ba
  %i.bh = xor i32 %i.bf, %i.ba
  %i.bi = lshr i32 %i.bh, 1
  %i.bj = and i32 %i.bi, 2139062143
  %i.bk = sub i32 %i.bg, %i.bj
  store i32 %i.bk, ptr %i.ao, align 4, !tbaa !19
  %i.bl = getelementptr inbounds i8, ptr %i.ao, i64 %2 ; 2 uses
  %i.bm = add nuw nsw i32 %.05161, 2              ; 2 uses
  %.155 = getelementptr inbounds i8, ptr %i.an, i64 %2 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %3
  br i1 %i.bn, label %bb.b, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.b
  %i.bo = getelementptr inbounds i8, ptr %.155, i64 %i.e ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.g
  %i.bq = load i32, ptr %i.bo, align 1, !tbaa !18 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bs = load i32, ptr %i.br, align 1, !tbaa !18 ; 2 uses
  %i.bt = and i32 %i.bq, 50529027
  %i.bu = and i32 %i.bs, 50529027
  %i.bv = add nuw nsw i32 %i.bt, 16843009
  %i.bw = add nuw nsw i32 %i.bv, %i.bu
  %i.bx = lshr i32 %i.bq, 2
  %i.by = and i32 %i.bx, 1061109567
  %i.bz = lshr i32 %i.bs, 2
  %i.ca = and i32 %i.bz, 1061109567
  %narrow.1 = add nuw nsw i32 %i.ca, %i.by
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.pn = phi ptr [ %i.bo, %._crit_edge ], [ %i.cw, %bb.c ]
  %.063.1 = phi i32 [ %narrow.1, %._crit_edge ], [ %narrow58.1, %bb.c ]
  %.05062.1 = phi i32 [ %i.bw, %._crit_edge ], [ %i.de, %bb.c ]
  %.05161.1 = phi i32 [ 0, %._crit_edge ], [ %i.dv, %bb.c ]
  %.160.1 = phi ptr [ %i.bp, %._crit_edge ], [ %i.du, %bb.c ] ; 3 uses
  %.15564.1 = getelementptr inbounds i8, ptr %.pn, i64 %2 ; 3 uses
  %i.cb = load i32, ptr %.15564.1, align 1, !tbaa !18 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.15564.1, i64 1
  %i.cd = load i32, ptr %i.cc, align 1, !tbaa !18 ; 2 uses
  %i.ce = and i32 %i.cb, 50529027
  %i.cf = and i32 %i.cd, 50529027
  %i.cg = add nuw nsw i32 %i.cf, %i.ce            ; 2 uses
  %i.ch = lshr i32 %i.cb, 2
  %i.ci = and i32 %i.ch, 1061109567
  %i.cj = lshr i32 %i.cd, 2
  %i.ck = and i32 %i.cj, 1061109567
  %narrow57.1 = add nuw nsw i32 %i.ck, %i.ci      ; 2 uses
  %i.cl = load i32, ptr %.160.1, align 4, !tbaa !19 ; 2 uses
  %i.cm = add nuw i32 %narrow57.1, %.063.1
  %i.cn = add nuw nsw i32 %i.cg, %.05062.1
  %i.co = lshr i32 %i.cn, 2
  %i.cp = and i32 %i.co, 252645135
  %i.cq = add i32 %i.cm, %i.cp                    ; 2 uses
  %i.cr = or i32 %i.cq, %i.cl
  %i.cs = xor i32 %i.cq, %i.cl
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = and i32 %i.ct, 2139062143
  %i.cv = sub i32 %i.cr, %i.cu
  store i32 %i.cv, ptr %.160.1, align 4, !tbaa !19
  %i.cw = getelementptr inbounds i8, ptr %.15564.1, i64 %2 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.160.1, i64 %2 ; 3 uses
  %i.cy = load i32, ptr %i.cw, align 1, !tbaa !18 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.da = load i32, ptr %i.cz, align 1, !tbaa !18 ; 2 uses
  %i.db = and i32 %i.cy, 50529027
  %i.dc = and i32 %i.da, 50529027
  %i.dd = add nuw nsw i32 %i.db, 16843009
  %i.de = add nuw nsw i32 %i.dd, %i.dc            ; 2 uses
  %i.df = lshr i32 %i.cy, 2
  %i.dg = and i32 %i.df, 1061109567
  %i.dh = lshr i32 %i.da, 2
  %i.di = and i32 %i.dh, 1061109567
  %narrow58.1 = add nuw nsw i32 %i.di, %i.dg      ; 2 uses
  %i.dj = load i32, ptr %i.cx, align 4, !tbaa !19 ; 2 uses
  %i.dk = add nuw i32 %narrow58.1, %narrow57.1
  %i.dl = add nuw nsw i32 %i.de, %i.cg
  %i.dm = lshr i32 %i.dl, 2
  %i.dn = and i32 %i.dm, 117901063
  %i.do = add i32 %i.dk, %i.dn                    ; 2 uses
  %i.dp = or i32 %i.do, %i.dj
  %i.dq = xor i32 %i.do, %i.dj
  %i.dr = lshr i32 %i.dq, 1
  %i.ds = and i32 %i.dr, 2139062143
  %i.dt = sub i32 %i.dp, %i.ds
  store i32 %i.dt, ptr %i.cx, align 4, !tbaa !19
  %i.du = getelementptr inbounds i8, ptr %i.cx, i64 %2
  %i.dv = add nuw nsw i32 %.05161.1, 2            ; 2 uses
  %i.dw = icmp slt i32 %i.dv, %3
  br i1 %i.dw, label %bb.c, label %.split69, !llvm.loop !58

.split69:                                         ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = distinct !{!4, !20}
!5 = distinct !{!5, !20}
!6 = distinct !{!6, !20}
!7 = distinct !{!7, !20}
!8 = distinct !{!8, !20}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 1, !"override-stack-alignment", i32 16}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!14, !14, i64 0}
!19 = !{!15, !15, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!"short", !14, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_3
