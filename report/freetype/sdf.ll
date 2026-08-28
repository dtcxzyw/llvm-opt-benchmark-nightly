Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sdf?download=true
inline.NumInlined: 97
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@bsdf_init_distance_map:bb.a
  %or.cond = and i1 %i.bb, %i.bc
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split135
  %i.bd = load i8, ptr %i.ae, align 1, !tbaa !108
  %.not118 = icmp eq i8 %i.bd, 0
  %i.be = load i32, ptr %i.af, align 8, !tbaa !48
  %. = select i1 %.not118, i32 %i.aq, i32 %i.as
  %i.bf = mul nsw i32 %i.be, %.
  %i.bg = trunc nuw nsw i64 %i.ba to i32          ; 2 uses
  %i.bh = lshr i32 %i.bg, 3
  %i.bi = add nsw i32 %i.bf, %i.bh
  %i.bj = and i32 %i.bg, 7
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds i8, ptr %i.s, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !79
  %i.bn = lshr exact i32 128, %i.bj
  %i.bo = zext i8 %i.bm to i32
  %i.bp = and i32 %i.bn, %i.bo
  %.not119 = icmp ne i32 %i.bp, 0
  %i.bq = sext i1 %.not119 to i8
  %i.br = getelementptr inbounds nuw i8, ptr %gep183, i64 24
  store i8 %i.bq, ptr %i.br, align 8, !tbaa !109
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split135, %bb.e
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %i.ai
  br i1 %exitcond163.not, label %._crit_edge134, label %.lr.ph.split135, !llvm.loop !106

._crit_edge134.loopexit187.unr-lcssa:             ; preds = %.lr.ph.split135.us
  br i1 %lcmp.mod193.not, label %._crit_edge134, label %.lr.ph.split135.us.epil.preheader

.lr.ph.split135.us.epil.preheader:                ; preds = %._crit_edge134.loopexit187.unr-lcssa, %.lr.ph.split135.us.preheader
  %indvars.iv154.epil.init = phi i64 [ 0, %.lr.ph.split135.us.preheader ], [ %indvars.iv.next155.7, %._crit_edge134.loopexit187.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod194)
  br label %.lr.ph.split135.us.epil

.lr.ph.split135.us.epil:                          ; preds = %.lr.ph.split135.us.epil, %.lr.ph.split135.us.epil.preheader
  %indvars.iv154.epil = phi i64 [ %indvars.iv.next155.epil, %.lr.ph.split135.us.epil ], [ %indvars.iv154.epil.init, %.lr.ph.split135.us.epil.preheader ] ; 2 uses
  %epil.iter192 = phi i64 [ %epil.iter192.next, %.lr.ph.split135.us.epil ], [ 0, %.lr.ph.split135.us.epil.preheader ]
  %gep181.epil = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep182, i64 %indvars.iv154.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %gep181.epil, i8 0, i64 32, i1 false)
  %indvars.iv.next155.epil = add nuw nsw i64 %indvars.iv154.epil, 1
  %epil.iter192.next = add i64 %epil.iter192, 1   ; 2 uses
  %epil.iter192.cmp.not = icmp eq i64 %epil.iter192.next, %xtraiter191
  br i1 %epil.iter192.cmp.not, label %._crit_edge134, label %.lr.ph.split135.us.epil, !llvm.loop !111

._crit_edge134:                                   ; preds = %._crit_edge134.loopexit187.unr-lcssa, %.lr.ph.split135.us.epil, %bb.f
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %.loopexit, label %.preheader, !llvm.loop !113

.preheader128:                                    ; preds = %.preheader128.preheader, %._crit_edge
  %indvars.iv149 = phi i64 [ 0, %.preheader128.preheader ], [ %indvars.iv.next150, %._crit_edge ] ; 3 uses
  %i.bs = mul nuw nsw i64 %indvars.iv149, %i.y
  %i.bt = sub nsw i64 %indvars.iv149, %i.z        ; 3 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  %.not = icmp slt i64 %i.bt, %i.aa
  %i.bv = and i1 %i.bu, %.not
  %i.bw = trunc nsw i64 %i.bt to i32              ; 2 uses
  %i.bx = xor i32 %i.bw, -1
  %i.by = add i32 %i.h, %i.bx
  %.fr = freeze i1 %i.bv
  %invariant.gep178 = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.bs ; 10 uses
  br i1 %.fr, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.preheader128
  br i1 %i.ab, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ]
  %gep = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep178, i64 %indvars.iv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %gep, i8 0, i64 32, i1 false)
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep178, i64 %indvars.iv
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %gep.1, i8 0, i64 32, i1 false)
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep178, i64 %indvars.iv
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %gep.2, i8 0, i64 32, i1 false)
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep178, i64 %indvars.iv
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.cb, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %gep.3, i8 0, i64 32, i1 false)
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep178, i64 %indvars.iv
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %gep.4, i8 0, i64 32, i1 false)
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep178, i64 %indvars.iv
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.cd, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %gep.5, i8 0, i64 32, i1 false)
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep178, i64 %indvars.iv
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.ce, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %gep.6, i8 0, i64 32, i1 false)
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep178, i64 %indvars.iv
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.cf, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %gep.7, i8 0, i64 32, i1 false)
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit188.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !114

.lr.ph.split:                                     ; preds = %.preheader128, %bb.h
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %bb.h ], [ 0, %.preheader128 ] ; 3 uses
  %gep179 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep178, i64 %indvars.iv143 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %gep179, i8 0, i64 32, i1 false)
  %i.cg = sub nsw i64 %indvars.iv143, %i.w        ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, -1
  %i.ci = icmp slt i64 %i.cg, %i.x
  %or.cond138 = and i1 %i.ch, %i.ci
  br i1 %or.cond138, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  %i.cj = load i8, ptr %i.v, align 1, !tbaa !108
  %.not115 = icmp eq i8 %i.cj, 0
  %.pn116 = select i1 %.not115, i32 %i.bw, i32 %i.by
  %.pn = mul nsw i32 %.pn116, %i.d
  %i.ck = sext i32 %.pn to i64
  %i.cl = getelementptr i8, ptr %i.s, i64 %i.cg
  %i.cm = getelementptr i8, ptr %i.cl, i64 %i.ck
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !79
  %i.co = getelementptr inbounds nuw i8, ptr %gep179, i64 24
  store i8 %i.cn, ptr %i.co, align 8, !tbaa !109
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split, %bb.g
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next144, %i.y
  br i1 %exitcond148.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !114

._crit_edge.loopexit188.unr-lcssa:                ; preds = %.lr.ph.split.us
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit188.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit188.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod190)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.split.us.epil ], [ %indvars.iv.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %gep.epil = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep178, i64 %indvars.iv.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %gep.epil, i8 0, i64 32, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !115

._crit_edge:                                      ; preds = %._crit_edge.loopexit188.unr-lcssa, %.lr.ph.split.us.epil, %bb.h
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.loopexit, label %.preheader128, !llvm.loop !116

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge134, %.preheader129, %.preheader128.lr.ph, %.preheader127, %.preheader.lr.ph, %bb.d, %bb.c, %bb.a, %bb.b
  %.0103 = phi i32 [ 7, %bb.d ], [ 6, %bb.a ], [ 0, %.preheader127 ], [ 6, %bb.c ], [ 6, %bb.b ], [ 0, %.preheader.lr.ph ], [ 0, %.preheader129 ], [ 0, %.preheader128.lr.ph ], [ 0, %._crit_edge134 ], [ 0, %._crit_edge ]
  ret i32 %.0103
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 7) i32 @bsdf_approximate_edge(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.FT_Vector_, align 8         ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !85     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %.preheader58

.preheader58:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !105  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !104  ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.i = phi i32 [ %i.ho, %._crit_edge ], [ %i.c, %.preheader.lr.ph ]
  %i.j = phi i32 [ %i.hp, %._crit_edge ], [ %i.g, %.preheader.lr.ph ] ; 2 uses
  %i.k = phi i32 [ %i.hq, %._crit_edge ], [ %i.g, %.preheader.lr.ph ] ; 3 uses
  %.03763 = phi i32 [ %.pre-phi, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 7 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre66 = add nuw nsw i32 %.03763, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.m = icmp ne i32 %.03763, 0                   ; 4 uses
  %or.cond115.not.i = xor i1 %i.m, true
  %i.n = add nuw nsw i32 %.03763, 1               ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %i.o = phi i32 [ %i.j, %.lr.ph ], [ %i.hl, %bb.ab ]
  %i.p = phi i32 [ %i.k, %.lr.ph ], [ %i.hl, %bb.ab ] ; 13 uses
  %.03659 = phi i32 [ 0, %.lr.ph ], [ %i.hm, %bb.ab ] ; 6 uses
  %i.q = mul nsw i32 %i.p, %.03763
  %i.r = add nsw i32 %i.q, %.03659
  %i.s = load ptr, ptr %0, align 8, !tbaa !85
  %i.t = sext i32 %i.r to i64                     ; 5 uses
  %i.u = getelementptr inbounds [32 x i8], ptr %i.s, i64 %i.t ; 9 uses
  %i.v = load i32, ptr %i.b, align 4, !tbaa !105  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = load i8, ptr %i.w, align 8, !tbaa !109
  switch i8 %i.x, label %bsdf_is_edge.exit.thread48 [
    i8 0, label %bsdf_is_edge.exit.thread45
    i8 -1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %.not108.i = icmp sgt i32 %.03763, %i.v         ; 3 uses
  %or.cond116.i = or i1 %.not108.i, %or.cond115.not.i
  br i1 %or.cond116.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i32 0, %i.p
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !109
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bsdf_is_edge.exit.thread48, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]      ; 2 uses
  %i.ae = icmp slt i32 %i.n, %i.v                 ; 3 uses
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = add nuw nsw i32 %.0.i, 1
  %i.ag = zext nneg i32 %i.p to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !109
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bsdf_is_edge.exit.thread48, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ %i.af, %bb.f ], [ %.0.i, %bb.e ] ; 2 uses
  %i.al = icmp ne i32 %.03659, 0                  ; 3 uses
  %i.am = icmp slt i32 %.03763, %i.v              ; 2 uses
  %or.cond123.i = and i1 %i.al, %i.am
  br i1 %or.cond123.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = add nuw nsw i32 %.1.i, 1
  %i.ao = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !109
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bsdf_is_edge.exit.thread48.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.i = phi i32 [ %i.an, %bb.h ], [ %.1.i, %bb.g ] ; 2 uses
  %i.ar = add nuw nsw i32 %.03659, 1
  %i.as = icmp slt i32 %i.ar, %i.p                ; 3 uses
  %or.cond126.i = and i1 %i.as, %i.am
  br i1 %or.cond126.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = add nuw nsw i32 %.2.i, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.av = load i8, ptr %i.au, align 8, !tbaa !109
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bsdf_is_edge.exit.thread48, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3.i = phi i32 [ %i.at, %bb.j ], [ %.2.i, %bb.i ] ; 2 uses
  %or.cond129.i = and i1 %i.m, %i.al
  %or.cond129.not.i = xor i1 %or.cond129.i, true
  %or.cond130.i = or i1 %.not108.i, %or.cond129.not.i
  br i1 %or.cond130.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = add nuw nsw i32 %.3.i, 1
  %i.ay = sub nsw i32 0, %i.p
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !109
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bsdf_is_edge.exit.thread48.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4.i = phi i32 [ %i.ax, %bb.l ], [ %.3.i, %bb.k ] ; 2 uses
  %or.cond132.i = and i1 %i.m, %i.as
  %or.cond132.not.i = xor i1 %or.cond132.i, true
  %or.cond133.i = or i1 %.not108.i, %or.cond132.not.i
  br i1 %or.cond133.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = add nuw nsw i32 %.4.i, 1
  %i.bf = sub nsw i32 0, %i.p
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [32 x i8], ptr %i.u, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !109
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bsdf_is_edge.exit.thread48, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5.i = phi i32 [ %i.be, %bb.n ], [ %.4.i, %bb.m ] ; 2 uses
  %or.cond138.i = and i1 %i.al, %i.ae
  br i1 %or.cond138.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = add nuw nsw i32 %.5.i, 1
  %i.bm = zext nneg i32 %i.p to i64
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !109
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bsdf_is_edge.exit.thread48.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.6.i = phi i32 [ %i.bl, %bb.p ], [ %.5.i, %bb.o ]
  %or.cond142.i = and i1 %i.as, %i.ae
  br i1 %or.cond142.i, label %bb.r, label %bsdf_is_edge.exit.thread48

bb.r:                                             ; preds = %bb.q
  %i.br = zext nneg i32 %i.p to i64
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !109
  %i.bv = icmp ne i8 %i.bu, 0
  %.not114.i.not = icmp eq i32 %.6.i, 7
  %or.cond = select i1 %i.bv, i1 %.not114.i.not, i1 false
  br i1 %or.cond, label %bsdf_is_edge.exit.thread45, label %bsdf_is_edge.exit.thread48

bsdf_is_edge.exit.thread48.thread:                ; preds = %bb.p, %bb.l, %bb.h
  %i.bw = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  br label %bb.s

bsdf_is_edge.exit.thread48:                       ; preds = %bb.b, %bb.r, %bb.n, %bb.j, %bb.f, %bb.d, %bb.q
  %i.by = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ca = icmp eq i32 %.03659, 0
  br i1 %i.ca, label %compute_edge_distance.exit, label %bb.s

bb.s:                                             ; preds = %bsdf_is_edge.exit.thread48.thread, %bsdf_is_edge.exit.thread48
  %i.cb = phi ptr [ %i.bx, %bsdf_is_edge.exit.thread48.thread ], [ %i.bz, %bsdf_is_edge.exit.thread48 ] ; 2 uses
  %i.cc = phi ptr [ %i.bw, %bsdf_is_edge.exit.thread48.thread ], [ %i.by, %bsdf_is_edge.exit.thread48 ] ; 2 uses
  %i.cd = add nsw i32 %i.p, -1                    ; 2 uses
  %i.ce = icmp slt i32 %.03659, %i.cd
  %or.cond.not78.i = and i1 %i.m, %i.ce
  %i.cf = add nsw i32 %i.v, -1
  %.not.i = icmp slt i32 %.03763, %i.cf
  %or.cond74.i = select i1 %or.cond.not78.i, i1 %.not.i, i1 false
  br i1 %or.cond74.i, label %bb.t, label %compute_edge_distance.exit

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds [32 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.ch = sub nsw i32 0, %i.p
  %i.ci = xor i32 %i.p, -1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [32 x i8], ptr %i.cg, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !109
  %i.cn = zext i8 %i.cm to i64
  %.neg.i = mul nsw i64 %i.cn, -256               ; 2 uses
  %i.co = sext i32 %i.ch to i64
  %i.cp = getelementptr inbounds [32 x i8], ptr %i.cg, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !109
  %i.cs = zext i8 %i.cr to i64
  %i.ct = sub nsw i32 1, %i.p
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [32 x i8], ptr %i.cg, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !109
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 8                ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cg, i64 -8
  %i.db = load i8, ptr %i.da, align 8, !tbaa !109
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !109
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8                ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !109
  %i.dj = zext i8 %i.di to i64
  %i.dk = zext nneg i32 %i.cd to i64
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !109
  %i.do = zext i8 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 8                ; 2 uses
  %i.dq = zext nneg i32 %i.p to i64
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !109
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr i8, ptr %i.dr, i64 56
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !109
end_hunk_0
begin_hunk_1_@edt8:bb.a
  %i.au = icmp slt i32 %i.at, 32769
  br i1 %i.au, label %compare_neighbor.exit33.us.thread.i, label %bb.j

bb.j:                                             ; preds = %compare_neighbor.exit32.us.i, %compare_neighbor.exit32.us.thread81.i
  %i.av = phi i32 [ %i.ah, %compare_neighbor.exit32.us.thread81.i ], [ %i.at, %compare_neighbor.exit32.us.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !117
  %i.ay = add nsw i32 %i.ax, -65536
  %i.az = icmp slt i32 %i.ay, %i.av
  br i1 %i.az, label %bb.k, label %compare_neighbor.exit33.us.thread83.i

compare_neighbor.exit33.us.thread83.i:            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !123
  %i.bb = load <2 x i64>, ptr %8, align 16, !tbaa !90
  %i.bc = add nsw <2 x i64> %i.bb, <i64 65536, i64 -65536>
  store <2 x i64> %i.bc, ptr %8, align 16, !tbaa !90
  %i.bd = call i64 @FT_Vector_Length(ptr noundef nonnull %8) #12
  %i.be = trunc i64 %i.bd to i32                  ; 3 uses
  %i.bf = load i32, ptr %gep86.i, align 8, !tbaa !117 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, %i.be
  br i1 %i.bg, label %bb.l, label %compare_neighbor.exit33.us.i

bb.l:                                             ; preds = %bb.k
  store i32 %i.be, ptr %gep86.i, align 8, !tbaa !117
  %i.bh = getelementptr inbounds nuw i8, ptr %gep86.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit33.us.i

compare_neighbor.exit33.us.thread.i:              ; preds = %compare_neighbor.exit32.us.i, %compare_neighbor.exit32.us.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  br label %compare_neighbor.exit34.us.i

compare_neighbor.exit33.us.i:                     ; preds = %bb.l, %bb.k
  %i.bi = phi i32 [ %i.be, %bb.l ], [ %i.bf, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.bj = icmp slt i32 %i.bi, 32769
  br i1 %i.bj, label %compare_neighbor.exit34.us.i, label %bb.m

bb.m:                                             ; preds = %compare_neighbor.exit33.us.i, %compare_neighbor.exit33.us.thread83.i
  %i.bk = phi i32 [ %i.av, %compare_neighbor.exit33.us.thread83.i ], [ %i.bi, %compare_neighbor.exit33.us.i ]
  %i.bl = getelementptr inbounds i8, ptr %gep86.i, i64 -32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !117
  %i.bn = add nsw i32 %i.bm, -65536
  %i.bo = icmp slt i32 %i.bn, %i.bk
  br i1 %i.bo, label %bb.n, label %compare_neighbor.exit34.us.i

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds i8, ptr %gep86.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !123
  %i.bq = load i64, ptr %7, align 8, !tbaa !54
  %i.br = add nsw i64 %i.bq, -65536
  store i64 %i.br, ptr %7, align 8, !tbaa !54
  %i.bs = call i64 @FT_Vector_Length(ptr noundef nonnull %7) #12
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bu = load i32, ptr %gep86.i, align 8, !tbaa !117
  %i.bv = icmp sgt i32 %i.bu, %i.bt
  br i1 %i.bv, label %bb.o, label %compare_neighbor.exit34.us.i

bb.o:                                             ; preds = %bb.n
  store i32 %i.bt, ptr %gep86.i, align 8, !tbaa !117
  %i.bw = getelementptr inbounds nuw i8, ptr %gep86.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit34.us.i

compare_neighbor.exit34.us.i:                     ; preds = %bb.o, %bb.n, %bb.m, %compare_neighbor.exit33.us.i, %compare_neighbor.exit33.us.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %._crit_edge.us.i, label %bb.c, !llvm.loop !124

bb.p:                                             ; preds = %._crit_edge.us.i, %compare_neighbor.exit35.us.i
  %indvars.iv53.i = phi i64 [ %i.m, %._crit_edge.us.i ], [ %indvars.iv.next54.i, %compare_neighbor.exit35.us.i ] ; 3 uses
  %gep88.i = getelementptr [32 x i8], ptr %invariant.gep87.i, i64 %indvars.iv53.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.bx = load i32, ptr %gep88.i, align 8, !tbaa !117 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 32769
  br i1 %i.by, label %compare_neighbor.exit35.us.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %gep88.i, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !117
  %i.cb = add nsw i32 %i.ca, -65536
  %i.cc = icmp slt i32 %i.cb, %i.bx
  br i1 %i.cc, label %bb.r, label %compare_neighbor.exit35.us.i

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %gep88.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !123
  %i.ce = load i64, ptr %6, align 8, !tbaa !54
  %i.cf = add nsw i64 %i.ce, 65536
  store i64 %i.cf, ptr %6, align 8, !tbaa !54
  %i.cg = call i64 @FT_Vector_Length(ptr noundef nonnull %6) #12
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = load i32, ptr %gep88.i, align 8, !tbaa !117
  %i.cj = icmp sgt i32 %i.ci, %i.ch
  br i1 %i.cj, label %bb.s, label %compare_neighbor.exit35.us.i

bb.s:                                             ; preds = %bb.r
  store i32 %i.ch, ptr %gep88.i, align 8, !tbaa !117
  %i.ck = getelementptr inbounds nuw i8, ptr %gep88.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit35.us.i

compare_neighbor.exit35.us.i:                     ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %indvars.iv.next54.i = add nsw i64 %indvars.iv53.i, -1
  %i.cl = icmp sgt i64 %indvars.iv53.i, 0
  br i1 %i.cl, label %bb.p, label %._crit_edge40.us.i.loopexit, !llvm.loop !125

._crit_edge40.us.i.loopexit:                      ; preds = %compare_neighbor.exit35.us.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %first_pass.exit, label %.preheader.us.i, !llvm.loop !126

._crit_edge.us.i:                                 ; preds = %compare_neighbor.exit34.us.i
  %invariant.gep87.i = getelementptr [32 x i8], ptr %i.a, i64 %i.o
  br label %bb.p

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.cm = icmp eq i32 %i.c, 2
  br i1 %i.cm, label %.preheader.preheader.i, label %first_pass.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %i.cn = zext nneg i32 %i.k to i64
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  %invariant.gep = getelementptr [32 x i8], ptr %i.a, i64 %i.cn
  br label %.preheader.i

.preheader.i:                                     ; preds = %compare_neighbor.exit35.i, %.preheader.preheader.i
  %indvars.iv45.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next46.i, %compare_neighbor.exit35.i ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv45.i, 6
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.co = load i32, ptr %gep, align 8, !tbaa !117 ; 2 uses
  %i.cp = icmp slt i32 %i.co, 32769
  br i1 %i.cp, label %compare_neighbor.exit35.i, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.cq = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !117
  %i.cs = add nsw i32 %i.cr, -65536
  %i.ct = icmp slt i32 %i.cs, %i.co
  br i1 %i.ct, label %bb.u, label %compare_neighbor.exit35.i

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %gep, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false), !tbaa.struct !123
  %i.cv = load i64, ptr %6, align 8, !tbaa !54
  %i.cw = add nsw i64 %i.cv, 65536
  store i64 %i.cw, ptr %6, align 8, !tbaa !54
  %i.cx = call i64 @FT_Vector_Length(ptr noundef nonnull %6) #12
  %i.cy = trunc i64 %i.cx to i32                  ; 2 uses
  %i.cz = load i32, ptr %gep, align 8, !tbaa !117
  %i.da = icmp sgt i32 %i.cz, %i.cy
  br i1 %i.da, label %bb.v, label %compare_neighbor.exit35.i

bb.v:                                             ; preds = %bb.u
  store i32 %i.cy, ptr %gep, align 8, !tbaa !117
  %i.db = getelementptr inbounds nuw i8, ptr %gep, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit35.i

compare_neighbor.exit35.i:                        ; preds = %bb.v, %bb.u, %bb.t, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next46.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %first_pass.exit, label %.preheader.i, !llvm.loop !126

first_pass.exit:                                  ; preds = %compare_neighbor.exit35.i, %._crit_edge40.us.i.loopexit, %.preheader.lr.ph.split.i
  %.pr = load i32, ptr %i.d, align 4, !tbaa !105  ; 2 uses
  %i.dc = load ptr, ptr %0, align 8, !tbaa !85    ; 2 uses
  %i.dd = add nsw i32 %.pr, -2                    ; 2 uses
  %i.de = icmp sgt i32 %.pr, 1
  br i1 %i.de, label %.preheader.lr.ph.i5, label %second_pass.exit

.preheader.lr.ph.i5:                              ; preds = %first_pass.exit
  %i.df = load i32, ptr %i.b, align 8, !tbaa !104 ; 5 uses
  %i.dg = icmp sgt i32 %i.df, 2
  %i.dh = sext i32 %i.df to i64                   ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dj = add nsw i32 %i.df, -2                   ; 2 uses
  br i1 %i.dg, label %.preheader.us.preheader.i17, label %.preheader.lr.ph.split.i6

.preheader.us.preheader.i17:                      ; preds = %.preheader.lr.ph.i5
  %i.dk = add nsw i32 %i.df, -1
  %i.dl = zext nneg i32 %i.dj to i64
  %i.dm = zext nneg i32 %i.dd to i64
  %wide.trip.count.i18 = zext nneg i32 %i.dk to i64
  br label %.preheader.us.i19

.preheader.us.i19:                                ; preds = %._crit_edge40.us.i25.loopexit, %.preheader.us.preheader.i17
  %indvars.iv54.i = phi i64 [ %i.dm, %.preheader.us.preheader.i17 ], [ %indvars.iv.next55.i, %._crit_edge40.us.i25.loopexit ] ; 3 uses
  %i.dn = mul nsw i64 %indvars.iv54.i, %i.dh
  %invariant.gep78.i = getelementptr [32 x i8], ptr %i.dc, i64 %i.dn ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %compare_neighbor.exit34.us.i21, %.preheader.us.i19
  %indvars.iv48.i20 = phi i64 [ 1, %.preheader.us.i19 ], [ %indvars.iv.next49.i22, %compare_neighbor.exit34.us.i21 ] ; 2 uses
  %gep79.i = getelementptr [32 x i8], ptr %invariant.gep78.i, i64 %indvars.iv48.i20 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.do = load i32, ptr %gep79.i, align 8, !tbaa !117 ; 3 uses
  %i.dp = icmp slt i32 %i.do, 32769
  br i1 %i.dp, label %compare_neighbor.exit.us.thread.i33, label %bb.x

compare_neighbor.exit.us.thread.i33:              ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  br label %compare_neighbor.exit32.us.thread.i32

bb.x:                                             ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %gep79.i, i64 %i.dh ; 6 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -32
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !117
  %i.dt = add nsw i32 %i.ds, -65536
  %i.du = icmp slt i32 %i.dt, %i.do
  br i1 %i.du, label %bb.y, label %compare_neighbor.exit.us.thread73.i

compare_neighbor.exit.us.thread73.i:              ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds i8, ptr %i.dq, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !123
  %i.dw = load <2 x i64>, ptr %5, align 16, !tbaa !90
  %i.dx = add nsw <2 x i64> %i.dw, <i64 -65536, i64 65536>
  store <2 x i64> %i.dx, ptr %5, align 16, !tbaa !90
  %i.dy = call i64 @FT_Vector_Length(ptr noundef nonnull %5) #12
  %i.dz = trunc i64 %i.dy to i32                  ; 3 uses
  %i.ea = load i32, ptr %gep79.i, align 8, !tbaa !117 ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, %i.dz
  br i1 %i.eb, label %bb.z, label %compare_neighbor.exit.us.i31

bb.z:                                             ; preds = %bb.y
  store i32 %i.dz, ptr %gep79.i, align 8, !tbaa !117
  %i.ec = getelementptr inbounds nuw i8, ptr %gep79.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit.us.i31

compare_neighbor.exit.us.i31:                     ; preds = %bb.z, %bb.y
  %i.ed = phi i32 [ %i.dz, %bb.z ], [ %i.ea, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.ee = icmp slt i32 %i.ed, 32769
  br i1 %i.ee, label %compare_neighbor.exit32.us.thread.i32, label %bb.aa

bb.aa:                                            ; preds = %compare_neighbor.exit.us.i31, %compare_neighbor.exit.us.thread73.i
  %i.ef = phi i32 [ %i.do, %compare_neighbor.exit.us.thread73.i ], [ %i.ed, %compare_neighbor.exit.us.i31 ] ; 2 uses
  %i.eg = load i32, ptr %i.dq, align 8, !tbaa !117
  %i.eh = add nsw i32 %i.eg, -65536
  %i.ei = icmp slt i32 %i.eh, %i.ef
  br i1 %i.ei, label %bb.ab, label %compare_neighbor.exit32.us.thread74.i

compare_neighbor.exit32.us.thread74.i:            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false), !tbaa.struct !123
  %i.ek = load i64, ptr %i.di, align 8, !tbaa !55
  %i.el = add nsw i64 %i.ek, 65536
  store i64 %i.el, ptr %i.di, align 8, !tbaa !55
  %i.em = call i64 @FT_Vector_Length(ptr noundef nonnull %4) #12
  %i.en = trunc i64 %i.em to i32                  ; 3 uses
  %i.eo = load i32, ptr %gep79.i, align 8, !tbaa !117 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, %i.en
  br i1 %i.ep, label %bb.ac, label %compare_neighbor.exit32.us.i29

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.en, ptr %gep79.i, align 8, !tbaa !117
  %i.eq = getelementptr inbounds nuw i8, ptr %gep79.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit32.us.i29

compare_neighbor.exit32.us.thread.i32:            ; preds = %compare_neighbor.exit.us.i31, %compare_neighbor.exit.us.thread.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  br label %compare_neighbor.exit33.us.thread.i30

compare_neighbor.exit32.us.i29:                   ; preds = %bb.ac, %bb.ab
  %i.er = phi i32 [ %i.en, %bb.ac ], [ %i.eo, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.es = icmp slt i32 %i.er, 32769
  br i1 %i.es, label %compare_neighbor.exit33.us.thread.i30, label %bb.ad

bb.ad:                                            ; preds = %compare_neighbor.exit32.us.i29, %compare_neighbor.exit32.us.thread74.i
  %i.et = phi i32 [ %i.ef, %compare_neighbor.exit32.us.thread74.i ], [ %i.er, %compare_neighbor.exit32.us.i29 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !117
  %i.ew = add nsw i32 %i.ev, -65536
  %i.ex = icmp slt i32 %i.ew, %i.et
  br i1 %i.ex, label %bb.ae, label %compare_neighbor.exit33.us.thread76.i

compare_neighbor.exit33.us.thread76.i:            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i64 16, i1 false), !tbaa.struct !123
  %i.ez = load <2 x i64>, ptr %3, align 16, !tbaa !90
  %i.fa = add nsw <2 x i64> %i.ez, splat (i64 65536)
  store <2 x i64> %i.fa, ptr %3, align 16, !tbaa !90
  %i.fb = call i64 @FT_Vector_Length(ptr noundef nonnull %3) #12
  %i.fc = trunc i64 %i.fb to i32                  ; 3 uses
  %i.fd = load i32, ptr %gep79.i, align 8, !tbaa !117 ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, %i.fc
  br i1 %i.fe, label %bb.af, label %compare_neighbor.exit33.us.i28

bb.af:                                            ; preds = %bb.ae
  store i32 %i.fc, ptr %gep79.i, align 8, !tbaa !117
  %i.ff = getelementptr inbounds nuw i8, ptr %gep79.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit33.us.i28

compare_neighbor.exit33.us.thread.i30:            ; preds = %compare_neighbor.exit32.us.i29, %compare_neighbor.exit32.us.thread.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  br label %compare_neighbor.exit34.us.i21

compare_neighbor.exit33.us.i28:                   ; preds = %bb.af, %bb.ae
  %i.fg = phi i32 [ %i.fc, %bb.af ], [ %i.fd, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.fh = icmp slt i32 %i.fg, 32769
  br i1 %i.fh, label %compare_neighbor.exit34.us.i21, label %bb.ag

bb.ag:                                            ; preds = %compare_neighbor.exit33.us.i28, %compare_neighbor.exit33.us.thread76.i
  %i.fi = phi i32 [ %i.et, %compare_neighbor.exit33.us.thread76.i ], [ %i.fg, %compare_neighbor.exit33.us.i28 ]
  %i.fj = getelementptr inbounds i8, ptr %gep79.i, i64 -32
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !117
  %i.fl = add nsw i32 %i.fk, -65536
  %i.fm = icmp slt i32 %i.fl, %i.fi
  br i1 %i.fm, label %bb.ah, label %compare_neighbor.exit34.us.i21

bb.ah:                                            ; preds = %bb.ag
  %i.fn = getelementptr inbounds i8, ptr %gep79.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i64 16, i1 false), !tbaa.struct !123
  %i.fo = load i64, ptr %2, align 8, !tbaa !54
  %i.fp = add nsw i64 %i.fo, -65536
  store i64 %i.fp, ptr %2, align 8, !tbaa !54
  %i.fq = call i64 @FT_Vector_Length(ptr noundef nonnull %2) #12
  %i.fr = trunc i64 %i.fq to i32                  ; 2 uses
  %i.fs = load i32, ptr %gep79.i, align 8, !tbaa !117
  %i.ft = icmp sgt i32 %i.fs, %i.fr
  br i1 %i.ft, label %bb.ai, label %compare_neighbor.exit34.us.i21

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.fr, ptr %gep79.i, align 8, !tbaa !117
  %i.fu = getelementptr inbounds nuw i8, ptr %gep79.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit34.us.i21

compare_neighbor.exit34.us.i21:                   ; preds = %bb.ai, %bb.ah, %bb.ag, %compare_neighbor.exit33.us.i28, %compare_neighbor.exit33.us.thread.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %indvars.iv.next49.i22 = add nuw nsw i64 %indvars.iv48.i20, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next49.i22, %wide.trip.count.i18
  br i1 %exitcond.not.i23, label %.lr.ph39.us.i26, label %bb.w, !llvm.loop !127

.lr.ph39.us.i26:                                  ; preds = %compare_neighbor.exit34.us.i21, %compare_neighbor.exit35.us.i27
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %compare_neighbor.exit35.us.i27 ], [ %i.dl, %compare_neighbor.exit34.us.i21 ] ; 3 uses
  %gep81.i = getelementptr [32 x i8], ptr %invariant.gep78.i, i64 %indvars.iv51.i ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.fv = load i32, ptr %gep81.i, align 8, !tbaa !117 ; 2 uses
  %i.fw = icmp slt i32 %i.fv, 32769
  br i1 %i.fw, label %compare_neighbor.exit35.us.i27, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph39.us.i26
  %i.fx = getelementptr inbounds nuw i8, ptr %gep81.i, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !117
  %i.fz = add nsw i32 %i.fy, -65536
  %i.ga = icmp slt i32 %i.fz, %i.fv
  br i1 %i.ga, label %bb.ak, label %compare_neighbor.exit35.us.i27

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %gep81.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !tbaa.struct !123
  %i.gc = load i64, ptr %1, align 8, !tbaa !54
  %i.gd = add nsw i64 %i.gc, 65536
  store i64 %i.gd, ptr %1, align 8, !tbaa !54
  %i.ge = call i64 @FT_Vector_Length(ptr noundef nonnull %1) #12
  %i.gf = trunc i64 %i.ge to i32                  ; 2 uses
  %i.gg = load i32, ptr %gep81.i, align 8, !tbaa !117
  %i.gh = icmp sgt i32 %i.gg, %i.gf
  br i1 %i.gh, label %bb.al, label %compare_neighbor.exit35.us.i27

bb.al:                                            ; preds = %bb.ak
  store i32 %i.gf, ptr %gep81.i, align 8, !tbaa !117
  %i.gi = getelementptr inbounds nuw i8, ptr %gep81.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit35.us.i27

compare_neighbor.exit35.us.i27:                   ; preds = %bb.al, %bb.ak, %bb.aj, %.lr.ph39.us.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i, -1
  %i.gj = icmp sgt i64 %indvars.iv51.i, 0
  br i1 %i.gj, label %.lr.ph39.us.i26, label %._crit_edge40.us.i25.loopexit, !llvm.loop !128

._crit_edge40.us.i25.loopexit:                    ; preds = %compare_neighbor.exit35.us.i27
  %indvars.iv.next55.i = add nsw i64 %indvars.iv54.i, -1
  %i.gk = icmp sgt i64 %indvars.iv54.i, 0
  br i1 %i.gk, label %.preheader.us.i19, label %second_pass.exit, !llvm.loop !129

.preheader.lr.ph.split.i6:                        ; preds = %.preheader.lr.ph.i5
  %i.gl = icmp eq i32 %i.df, 2
  br i1 %i.gl, label %.preheader.preheader.i7, label %second_pass.exit

.preheader.preheader.i7:                          ; preds = %.preheader.lr.ph.split.i6
  %i.gm = zext nneg i32 %i.dj to i64
  %i.gn = zext nneg i32 %i.dd to i64
  %invariant.gep79 = getelementptr [32 x i8], ptr %i.dc, i64 %i.gm
  br label %.preheader.i8

.preheader.i8:                                    ; preds = %compare_neighbor.exit35.i13, %.preheader.preheader.i7
  %indvars.iv45.i9 = phi i64 [ %i.gn, %.preheader.preheader.i7 ], [ %indvars.iv.next46.i16, %compare_neighbor.exit35.i13 ] ; 3 uses
  %i.go = mul nsw i64 %indvars.iv45.i9, %i.dh
  %gep80 = getelementptr [32 x i8], ptr %invariant.gep79, i64 %i.go ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.gp = load i32, ptr %gep80, align 8, !tbaa !117 ; 2 uses
  %i.gq = icmp slt i32 %i.gp, 32769
  br i1 %i.gq, label %compare_neighbor.exit35.i13, label %bb.am

bb.am:                                            ; preds = %.preheader.i8
  %i.gr = getelementptr inbounds nuw i8, ptr %gep80, i64 32
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !117
  %i.gt = add nsw i32 %i.gs, -65536
  %i.gu = icmp slt i32 %i.gt, %i.gp
  br i1 %i.gu, label %bb.an, label %compare_neighbor.exit35.i13

bb.an:                                            ; preds = %bb.am
  %i.gv = getelementptr inbounds nuw i8, ptr %gep80, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i64 16, i1 false), !tbaa.struct !123
  %i.gw = load i64, ptr %1, align 8, !tbaa !54
  %i.gx = add nsw i64 %i.gw, 65536
  store i64 %i.gx, ptr %1, align 8, !tbaa !54
  %i.gy = call i64 @FT_Vector_Length(ptr noundef nonnull %1) #12
  %i.gz = trunc i64 %i.gy to i32                  ; 2 uses
  %i.ha = load i32, ptr %gep80, align 8, !tbaa !117
  %i.hb = icmp sgt i32 %i.ha, %i.gz
  br i1 %i.hb, label %bb.ao, label %compare_neighbor.exit35.i13

bb.ao:                                            ; preds = %bb.an
  store i32 %i.gz, ptr %gep80, align 8, !tbaa !117
  %i.hc = getelementptr inbounds nuw i8, ptr %gep80, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !123
  br label %compare_neighbor.exit35.i13

compare_neighbor.exit35.i13:                      ; preds = %bb.ao, %bb.an, %bb.am, %.preheader.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %indvars.iv.next46.i16 = add nsw i64 %indvars.iv45.i9, -1
  %i.hd = icmp sgt i64 %indvars.iv45.i9, 0
  br i1 %i.hd, label %.preheader.i8, label %second_pass.exit, !llvm.loop !129

second_pass.exit:                                 ; preds = %compare_neighbor.exit35.i13, %._crit_edge40.us.i25.loopexit, %bb.b, %.preheader.lr.ph.split.i6, %first_pass.exit, %bb.a
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %._crit_edge40.us.i25.loopexit ], [ 0, %first_pass.exit ], [ 0, %bb.b ], [ 0, %.preheader.lr.ph.split.i6 ], [ 0, %compare_neighbor.exit35.i13 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 7) i32 @finalize_sdf(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 3 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !104
  %.not = icmp eq i32 %i.b, %i.g
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %.not46 = icmp eq i32 %i.c, %i.i
  br i1 %.not46, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !130
  %i.l = shl i32 %i.k, 16                         ; 3 uses
  %i.m = icmp sgt i32 %i.c, 0
  br i1 %i.m, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.n = icmp sgt i32 %i.b, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.p = sext i32 %i.l to i64
  br i1 %i.n, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = zext nneg i32 %i.b to i64                ; 2 uses
  %wide.trip.count54 = zext nneg i32 %i.c to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv51 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next52, %._crit_edge ] ; 2 uses
  %i.r = mul nuw nsw i64 %indvars.iv51, %i.q
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.s = add nuw nsw i64 %indvars.iv, %i.r        ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %i.s ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !117  ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.l)
  %.037 = select i1 %i.w, i32 %i.l, i32 %i.x      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !109
  %i.aa = icmp ult i8 %i.z, 127
  %i.ab = load i8, ptr %i.o, align 4, !tbaa !131
  %.not47 = icmp eq i8 %i.ab, 0
  %i.ac = xor i1 %i.aa, %.not47
  %i.ad = sub nsw i32 0, %.037
  %i.ae = select i1 %i.ac, i32 %.037, i32 %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = tail call i64 @FT_DivFix(i64 noundef %i.af, i64 noundef %i.p) #12
  %i.ah = trunc i64 %i.ag to i32                  ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 2 uses
  %i.ak = lshr i32 %i.aj, 9
  %i.al = icmp sgt i32 %i.ah, 0
  %i.am = icmp samesign ugt i32 %i.aj, 65535
  %or.cond.i = select i1 %i.al, i1 %i.am, i1 false
  %spec.store.select4.i = select i1 %or.cond.i, i32 127, i32 %i.ak ; 2 uses
  %i.an = tail call i32 @llvm.umin.i32(i32 %spec.store.select4.i, i32 128)
  %i.ao = sub nsw i32 0, %i.an
  %.p.i = select i1 %i.ai, i32 %i.ao, i32 %spec.store.select4.i
  %i.ap = trunc i32 %.p.i to i8
  %i.aq = xor i8 %i.ap, -128
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.s
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %.loopexit, label %.preheader, !llvm.loop !133

.loopexit:                                        ; preds = %._crit_edge, %bb.c, %.preheader.lr.ph, %bb.a, %bb.b
  %.040 = phi i32 [ 6, %bb.a ], [ 6, %bb.b ], [ 0, %.preheader.lr.ph ], [ 0, %bb.c ], [ 0, %._crit_edge ]
  ret i32 %.040
}

declare i64 @FT_Vector_Length(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Vector_NormLen(ptr noundef) local_unnamed_addr #4

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #4

declare hidden i32 @FT_SqrtFixed(i32 noundef) local_unnamed_addr #4

declare i32 @FT_Outline_Get_Orientation(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sdf_generate_with_overlaps(i64 range(i64 0, 281474976710656) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %4 = alloca %struct.SDF_Shape_, align 8         ; 5 uses
  %.fr201 = freeze i64 %0                         ; 3 uses
  %.sroa.0129.0.extract.trunc = trunc i64 %.fr201 to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = icmp ne ptr %1, null
  %i.c = icmp ne ptr %3, null
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.ak

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !99     ; 8 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134  ; 2 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49   ; 2 uses
  %i.i = load i32, ptr %3, align 8, !tbaa !47     ; 2 uses
  %.not155174 = icmp eq ptr %i.f, null
  br i1 %.not155174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0143176 = phi ptr [ %i.l, %.lr.ph ], [ %i.f, %bb.c ]
  %.0148175 = phi i32 [ %i.j, %.lr.ph ], [ 0, %bb.c ]
  %i.j = add nuw nsw i32 %.0148175, 1             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0143176, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !135  ; 2 uses
  %.not155 = icmp eq ptr %i.l, null
  br i1 %.not155, label %._crit_edge, label %.lr.ph, !llvm.loop !138

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0148.lcssa = phi i32 [ 0, %bb.c ], [ %i.j, %.lr.ph ] ; 7 uses
  %i.m = zext i32 %.0148.lcssa to i64             ; 8 uses
  %i.n = call ptr @ft_mem_realloc(ptr noundef nonnull %i.d, i64 noundef 40, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 10 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !23
  %.not156 = icmp eq i32 %i.o, 0
  br i1 %.not156, label %bb.d, label %.thread

bb.d:                                             ; preds = %._crit_edge
  %i.p = call ptr @ft_mem_realloc(ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #12 ; 9 uses
  %i.q = load i32, ptr %i.a, align 4, !tbaa !23
  %.not157 = icmp eq i32 %i.q, 0
  br i1 %.not157, label %.preheader170, label %.loopexit

.preheader170:                                    ; preds = %bb.d
  %.not199 = icmp eq i32 %.0148.lcssa, 0          ; 2 uses
  br i1 %.not199, label %._crit_edge182, label %.lr.ph181

.lr.ph181:                                        ; preds = %.preheader170
end_hunk_1
begin_hunk_2_@sdf_generate_subdivision:bb.a
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !23
  %.not164.i = icmp eq i32 %i.bn, 0
  br i1 %.not164.i, label %bb.n, label %sdf_generate_bounding_box.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = load i32, ptr %i.bg, align 4, !tbaa !49 ; 5 uses
  %i.bp = load i32, ptr %4, align 8, !tbaa !47    ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !46 ; 2 uses
  %i.bs = icmp eq i32 %i.bo, 0
  %i.bt = icmp eq i32 %i.bp, 0
  %or.cond5.i = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond5.i, label %.loopexit.sink.split.i, label %.preheader221.i

.preheader221.i:                                  ; preds = %bb.n
  %.0140238.i = load ptr, ptr %i.f, align 8, !tbaa !139 ; 2 uses
  %.not165239.i = icmp eq ptr %.0140238.i, null
  br i1 %.not165239.i, label %.preheader.i, label %.lr.ph241.i

.lr.ph241.i:                                      ; preds = %.preheader221.i
  %i.bu = zext nneg i32 %3 to i64                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i23.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cb = and i64 %.fr251.i, 4294967295
  %i.cc = icmp eq i64 %i.cb, 1
  %.not172.i = icmp samesign ult i64 %.fr251.i, 1099511627776
  %i.cd = sext i32 %i.bo to i64
  %i.ce = sext i32 %i.bp to i64
  br label %bb.q

.preheader.i:                                     ; preds = %._crit_edge.i13, %.preheader221.i
  %i.cf = icmp sgt i32 %i.bp, 0
  br i1 %i.cf, label %.lr.ph248.i, label %sdf_generate_bounding_box.exit

.lr.ph248.i:                                      ; preds = %.preheader.i
  %.not166.i = icmp eq i32 %1, 0
  %spec.select.i = select i1 %.not166.i, i8 -1, i8 1 ; 2 uses
  %i.cg = icmp sgt i32 %i.bo, 0
  %i.ch = zext nneg i32 %i.bb to i64              ; 2 uses
  br i1 %i.cg, label %.lr.ph248.split.i, label %sdf_generate_bounding_box.exit

.lr.ph248.split.i:                                ; preds = %.lr.ph248.i
  %i.ci = and i64 %.fr251.i, 1095216660480
  %.not167.i = icmp eq i64 %i.ci, 0
  %i.cj = zext nneg i32 %i.bo to i64              ; 4 uses
  %wide.trip.count279.i = zext nneg i32 %i.bp to i64 ; 2 uses
  br i1 %.not167.i, label %.lr.ph245.us.i, label %.lr.ph245.i

.lr.ph245.us.i:                                   ; preds = %.lr.ph248.split.i, %._crit_edge246.split.us.us.i
  %indvars.iv276.i = phi i64 [ %indvars.iv.next277.i, %._crit_edge246.split.us.us.i ], [ 0, %.lr.ph248.split.i ] ; 2 uses
  %i.ck = mul nuw nsw i64 %indvars.iv276.i, %i.cj
  br label %bb.o

bb.o:                                             ; preds = %.thread.i14, %.lr.ph245.us.i
  %indvars.iv272.i = phi i64 [ %indvars.iv.next273.i, %.thread.i14 ], [ 0, %.lr.ph245.us.i ] ; 2 uses
  %.1243.us.us.i = phi i8 [ %.2.us.us304.i, %.thread.i14 ], [ %spec.select.i, %.lr.ph245.us.i ]
  %i.cl = add nuw nsw i64 %indvars.iv272.i, %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i8, ptr %i.cn, align 4, !tbaa !162 ; 2 uses
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %.thread.i14, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.pre283.i = load i32, ptr %i.cm, align 4, !tbaa !164
  %spec.select312.i = call i32 @llvm.smin.i32(i32 %.pre283.i, i32 %i.bb)
  br label %.thread.i14

.thread.i14:                                      ; preds = %bb.p, %bb.o
  %.2.us.us304.i = phi i8 [ %.1243.us.us.i, %bb.o ], [ %i.co, %bb.p ] ; 2 uses
  %i.cq = phi i32 [ %i.bb, %bb.o ], [ %spec.select312.i, %bb.p ]
  %i.cr = sext i8 %.2.us.us304.i to i32
  %i.cs = mul nsw i32 %i.cq, %i.cr                ; 2 uses
  store i32 %i.cs, ptr %i.cm, align 4, !tbaa !164
  %i.ct = sext i32 %i.cs to i64
  %i.cu = call i64 @FT_DivFix(i64 noundef %i.ct, i64 noundef %i.ch) #12
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %i.cw = icmp slt i32 %i.cv, 0
  %i.cx = call i32 @llvm.abs.i32(i32 %i.cv, i1 true) ; 2 uses
  %i.cy = lshr i32 %i.cx, 9
  %i.cz = icmp sgt i32 %i.cv, 0
  %i.da = icmp samesign ugt i32 %i.cx, 65535
  %or.cond.i.us.us.i = select i1 %i.cz, i1 %i.da, i1 false
  %spec.store.select4.i.us.us.i = select i1 %or.cond.i.us.us.i, i32 127, i32 %i.cy ; 2 uses
  %i.db = call i32 @llvm.umin.i32(i32 %spec.store.select4.i.us.us.i, i32 128)
  %i.dc = sub nsw i32 0, %i.db
  %.p.i.us.us.i = select i1 %i.cw, i32 %i.dc, i32 %spec.store.select4.i.us.us.i
  %i.dd = trunc i32 %.p.i.us.us.i to i8
  %i.de = xor i8 %i.dd, -128
  %i.df = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cl
  store i8 %i.de, ptr %i.df, align 1, !tbaa !79
  %indvars.iv.next273.i = add nuw nsw i64 %indvars.iv272.i, 1 ; 2 uses
  %exitcond275.not.i = icmp eq i64 %indvars.iv.next273.i, %i.cj
  br i1 %exitcond275.not.i, label %._crit_edge246.split.us.us.i, label %bb.o, !llvm.loop !165

._crit_edge246.split.us.us.i:                     ; preds = %.thread.i14
  %indvars.iv.next277.i = add nuw nsw i64 %indvars.iv276.i, 1 ; 2 uses
  %exitcond280.not.i = icmp eq i64 %indvars.iv.next277.i, %wide.trip.count279.i
  br i1 %exitcond280.not.i, label %sdf_generate_bounding_box.exit, label %.lr.ph245.us.i, !llvm.loop !166

bb.q:                                             ; preds = %._crit_edge.i13, %.lr.ph241.i
  %.0140240.i = phi ptr [ %.0140238.i, %.lr.ph241.i ], [ %.0140.i, %._crit_edge.i13 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0140240.i, i64 16
  %.0148234.i = load ptr, ptr %i.dg, align 8, !tbaa !158 ; 2 uses
  %.not168235.i = icmp eq ptr %.0148234.i, null
  br i1 %.not168235.i, label %._crit_edge.i13, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.q, %._crit_edge228.i
  %.0148236.i = phi ptr [ %.0148.i, %._crit_edge228.i ], [ %.0148234.i, %bb.q ] ; 13 uses
  %.0148175.sroa.0.0.copyload.i = load i64, ptr %.0148236.i, align 8 ; 4 uses
  %.0148175.sroa.5.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 8 ; 4 uses
  %.0148175.sroa.5.0.copyload.i = load i64, ptr %.0148175.sroa.5.0..0148.sroa_idx.i, align 8 ; 4 uses
  %.0148175.sroa.7.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 16 ; 4 uses
  %.0148175.sroa.7.0.copyload.i = load i64, ptr %.0148175.sroa.7.0..0148.sroa_idx.i, align 8 ; 2 uses
  %.0148175.sroa.8.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 24 ; 4 uses
  %.0148175.sroa.8.0.copyload.i = load i64, ptr %.0148175.sroa.8.0..0148.sroa_idx.i, align 8 ; 2 uses
  %.0148175.sroa.9.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 32 ; 3 uses
  %.0148175.sroa.9.0.copyload.i = load i64, ptr %.0148175.sroa.9.0..0148.sroa_idx.i, align 8 ; 4 uses
  %.0148175.sroa.11.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 40 ; 3 uses
  %.0148175.sroa.11.0.copyload.i = load i64, ptr %.0148175.sroa.11.0..0148.sroa_idx.i, align 8 ; 4 uses
  %.0148175.sroa.13.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 48 ; 2 uses
  %.0148175.sroa.14.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 56 ; 2 uses
  %.0148175.sroa.15.0..0148.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0148236.i, i64 64 ; 2 uses
  %.0148175.sroa.15.0.copyload.i = load i32, ptr %.0148175.sroa.15.0..0148.sroa_idx.i, align 8
  switch i32 %.0148175.sroa.15.0.copyload.i, label %get_control_box.exit.i [
    i32 3, label %.critedge.i.i
    i32 2, label %.critedge4.i.i
    i32 1, label %bb.r
  ]

.critedge.i.i:                                    ; preds = %.lr.ph.i12
  %.0148175.sroa.14.0.copyload.i = load i64, ptr %.0148175.sroa.14.0..0148.sroa_idx.i, align 8 ; 2 uses
  %.0148175.sroa.13.0.copyload.i = load i64, ptr %.0148175.sroa.13.0..0148.sroa_idx.i, align 8 ; 2 uses
  %i.dh = call i64 @llvm.smin.i64(i64 %.0148175.sroa.9.0.copyload.i, i64 %.0148175.sroa.13.0.copyload.i)
  %i.di = call i64 @llvm.smax.i64(i64 %.0148175.sroa.9.0.copyload.i, i64 %.0148175.sroa.13.0.copyload.i)
  %i.dj = call i64 @llvm.smin.i64(i64 %.0148175.sroa.11.0.copyload.i, i64 %.0148175.sroa.14.0.copyload.i)
  %i.dk = call i64 @llvm.smax.i64(i64 %.0148175.sroa.11.0.copyload.i, i64 %.0148175.sroa.14.0.copyload.i)
  br label %.critedge4.i.i

.critedge4.i.i:                                   ; preds = %.critedge.i.i, %.lr.ph.i12
  %i.dl = phi i64 [ %i.dk, %.critedge.i.i ], [ %.0148175.sroa.11.0.copyload.i, %.lr.ph.i12 ]
  %i.dm = phi i64 [ %i.dj, %.critedge.i.i ], [ %.0148175.sroa.11.0.copyload.i, %.lr.ph.i12 ]
  %i.dn = phi i64 [ %i.di, %.critedge.i.i ], [ %.0148175.sroa.9.0.copyload.i, %.lr.ph.i12 ]
  %i.do = phi i64 [ %i.dh, %.critedge.i.i ], [ %.0148175.sroa.9.0.copyload.i, %.lr.ph.i12 ]
  %i.dp = call i64 @llvm.smin.i64(i64 %.0148175.sroa.0.0.copyload.i, i64 %i.do)
  %i.dq = call i64 @llvm.smax.i64(i64 %.0148175.sroa.0.0.copyload.i, i64 %i.dn)
  %i.dr = call i64 @llvm.smin.i64(i64 %.0148175.sroa.5.0.copyload.i, i64 %i.dm)
  %i.ds = call i64 @llvm.smax.i64(i64 %.0148175.sroa.5.0.copyload.i, i64 %i.dl)
  br label %bb.r

bb.r:                                             ; preds = %.critedge4.i.i, %.lr.ph.i12
  %i.dt = phi i64 [ %i.ds, %.critedge4.i.i ], [ %.0148175.sroa.5.0.copyload.i, %.lr.ph.i12 ]
  %i.du = phi i64 [ %i.dr, %.critedge4.i.i ], [ %.0148175.sroa.5.0.copyload.i, %.lr.ph.i12 ]
  %i.dv = phi i64 [ %i.dq, %.critedge4.i.i ], [ %.0148175.sroa.0.0.copyload.i, %.lr.ph.i12 ]
  %i.dw = phi i64 [ %i.dp, %.critedge4.i.i ], [ %.0148175.sroa.0.0.copyload.i, %.lr.ph.i12 ]
  %i.dx = call i64 @llvm.smin.i64(i64 %.0148175.sroa.7.0.copyload.i, i64 %i.dw)
  %i.dy = call i64 @llvm.smax.i64(i64 %.0148175.sroa.7.0.copyload.i, i64 %i.dv)
  %i.dz = call i64 @llvm.smin.i64(i64 %.0148175.sroa.8.0.copyload.i, i64 %i.du)
  %i.ea = call i64 @llvm.smax.i64(i64 %.0148175.sroa.8.0.copyload.i, i64 %i.dt)
  %i.eb = add nsw i64 %i.dx, -63
  %i.ec = sdiv i64 %i.eb, 64
  %i.ed = add nsw i64 %i.dy, 63
  %i.ee = sdiv i64 %i.ed, 64
  %i.ef = add nsw i64 %i.dz, -63
  %i.eg = sdiv i64 %i.ef, 64
  %i.eh = add nsw i64 %i.ea, 63
  %i.ei = sdiv i64 %i.eh, 64
  %i.ej = trunc i64 %i.eg to i32
  %i.ek = trunc i64 %i.ec to i32
  br label %get_control_box.exit.i

get_control_box.exit.i:                           ; preds = %bb.r, %.lr.ph.i12
  %.sroa.0.0.i = phi i32 [ 0, %.lr.ph.i12 ], [ %i.ek, %bb.r ]
  %.sroa.7.0.i = phi i32 [ 0, %.lr.ph.i12 ], [ %i.ej, %bb.r ]
  %.sroa.9.0.i = phi i64 [ 0, %.lr.ph.i12 ], [ %i.ee, %bb.r ]
  %.sroa.11.0.i = phi i64 [ 0, %.lr.ph.i12 ], [ %i.ei, %bb.r ]
  %i.el = add nsw i64 %.sroa.9.0.i, %i.bu         ; 2 uses
  %i.em = add nsw i64 %.sroa.11.0.i, %i.bu        ; 2 uses
  %i.en = sub i32 %.sroa.7.0.i, %3
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = icmp sgt i64 %i.em, %i.eo
  br i1 %i.ep, label %.lr.ph227.i, label %._crit_edge228.i

.lr.ph227.i:                                      ; preds = %get_control_box.exit.i
  %i.eq = sub i32 %.sroa.0.0.i, %3
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = icmp sgt i64 %i.el, %i.er
  br i1 %i.es, label %.lr.ph.us.i, label %._crit_edge228.i

.lr.ph.us.i:                                      ; preds = %.lr.ph227.i, %._crit_edge.us.i
  %indvars.iv262.i = phi i64 [ %indvars.iv.next263.i, %._crit_edge.us.i ], [ %i.eo, %.lr.ph227.i ] ; 5 uses
  %i.et = icmp sgt i64 %indvars.iv262.i, -1
  %.not170.us.i = icmp slt i64 %indvars.iv262.i, %i.ce
  %or.cond174.us.i = select i1 %i.et, i1 %.not170.us.i, i1 false
  %i.eu = shl nsw i64 %indvars.iv262.i, 6
  %i.ev = or disjoint i64 %i.eu, 32               ; 5 uses
  %i.ew = shl nuw nsw i64 %i.ev, 10               ; 2 uses
  %or.cond174.fr.us.i = freeze i1 %or.cond174.us.i
  br i1 %or.cond174.fr.us.i, label %.lr.ph.split.us.us.preheader.i, label %._crit_edge.us.i

.lr.ph.split.us.us.preheader.i:                   ; preds = %.lr.ph.us.i
  %i.ex = trunc nsw i64 %indvars.iv262.i to i32   ; 2 uses
  %i.ey = xor i32 %i.ex, -1
  %i.ez = add i32 %i.bp, %i.ey
  %.0146.pn.us.i = select i1 %.not172.i, i32 %i.ez, i32 %i.ex
  %.pn.us.i = mul nsw i32 %.0146.pn.us.i, %i.bo
  br label %.lr.ph.split.us.us.i

._crit_edge.us.i:                                 ; preds = %bb.as, %.lr.ph.us.i
  %indvars.iv.next263.i = add nsw i64 %indvars.iv262.i, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next263.i, %i.em
  br i1 %exitcond39.not, label %._crit_edge228.i, label %.lr.ph.us.i, !llvm.loop !167

.lr.ph.split.us.us.i:                             ; preds = %bb.as, %.lr.ph.split.us.us.preheader.i
  %indvars.iv.i = phi i64 [ %i.er, %.lr.ph.split.us.us.preheader.i ], [ %indvars.iv.next.i, %bb.as ] ; 5 uses
  %i.fa = icmp sgt i64 %indvars.iv.i, -1
  %.not169.us.us.i = icmp slt i64 %indvars.iv.i, %i.cd
  %or.cond173.us.us.i = and i1 %i.fa, %.not169.us.us.i
  br i1 %or.cond173.us.us.i, label %bb.s, label %bb.as

bb.s:                                             ; preds = %.lr.ph.split.us.us.i
  %i.fb = shl nuw nsw i64 %indvars.iv.i, 6
  %i.fc = or disjoint i64 %i.fb, 32               ; 6 uses
  %i.fd = load i32, ptr %.0148175.sroa.15.0..0148.sroa_idx.i, align 8, !tbaa !141
  switch i32 %i.fd, label %.loopexit.sink.split.i [
    i32 1, label %bb.aj
    i32 2, label %bb.ab
    i32 3, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %.sroa.069.0.copyload.i.i.us.us.i = load i64, ptr %.0148236.i, align 8, !tbaa !90 ; 4 uses
  %.sroa.773.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.5.0..0148.sroa_idx.i, align 8, !tbaa !90 ; 4 uses
  %.sroa.063.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.9.0..0148.sroa_idx.i, align 8, !tbaa !90 ; 3 uses
  %.sroa.666.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.11.0..0148.sroa_idx.i, align 8, !tbaa !90 ; 3 uses
  %.sroa.060.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.13.0..0148.sroa_idx.i, align 8, !tbaa !90 ; 2 uses
  %.sroa.5.0.copyload.i22.i.us.us.i = load i64, ptr %.0148175.sroa.14.0..0148.sroa_idx.i, align 8, !tbaa !90 ; 2 uses
  %.sroa.058.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.7.0..0148.sroa_idx.i, align 8, !tbaa !90
  %.sroa.459.0.copyload.i.i.us.us.i = load i64, ptr %.0148175.sroa.8.0..0148.sroa_idx.i, align 8, !tbaa !90
  %i.fe = sub nsw i64 %.sroa.063.0.copyload.i.i.us.us.i, %.sroa.060.0.copyload.i.i.us.us.i
  %i.ff = mul nsw i64 %i.fe, 3
  %i.fg = sub nsw i64 %i.ff, %.sroa.069.0.copyload.i.i.us.us.i
  %i.fh = add nsw i64 %i.fg, %.sroa.058.0.copyload.i.i.us.us.i ; 4 uses
  %i.fi = sub nsw i64 %.sroa.666.0.copyload.i.i.us.us.i, %.sroa.5.0.copyload.i22.i.us.us.i
  %i.fj = mul nsw i64 %i.fi, 3
  %i.fk = sub nsw i64 %i.fj, %.sroa.773.0.copyload.i.i.us.us.i
  %i.fl = add nsw i64 %i.fk, %.sroa.459.0.copyload.i.i.us.us.i ; 4 uses
  %i.fm = shl nsw i64 %.sroa.063.0.copyload.i.i.us.us.i, 1
  %i.fn = sub nsw i64 %.sroa.069.0.copyload.i.i.us.us.i, %i.fm
  %i.fo = add nsw i64 %i.fn, %.sroa.060.0.copyload.i.i.us.us.i ; 2 uses
  %i.fp = mul nsw i64 %i.fo, 3                    ; 3 uses
  %i.fq = shl nsw i64 %.sroa.666.0.copyload.i.i.us.us.i, 1
  %i.fr = sub nsw i64 %.sroa.773.0.copyload.i.i.us.us.i, %i.fq
  %i.fs = add nsw i64 %i.fr, %.sroa.5.0.copyload.i22.i.us.us.i ; 2 uses
  %i.ft = mul nsw i64 %i.fs, 3                    ; 3 uses
  %i.fu = sub nsw i64 %.sroa.063.0.copyload.i.i.us.us.i, %.sroa.069.0.copyload.i.i.us.us.i
  %i.fv = mul nsw i64 %i.fu, 3                    ; 3 uses
  %i.fw = sub nsw i64 %.sroa.666.0.copyload.i.i.us.us.i, %.sroa.773.0.copyload.i.i.us.us.i
  %i.fx = mul nsw i64 %i.fw, 3                    ; 3 uses
  %i.fy = mul nsw i64 %i.fo, 6
  %i.fz = mul nsw i64 %i.fs, 6
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %bb.t
  %i.ga = phi i64 [ 0, %bb.t ], [ %i.ih, %bb.y ]
  %i.gb = phi i64 [ 0, %bb.t ], [ %i.ii, %bb.y ]
  %indvars.iv.i24.i.us.us.i = phi i32 [ 0, %bb.t ], [ %indvars.iv.next.i28.i.us.us.i, %bb.y ] ; 2 uses
  %.0115142.i.i.us.us.i = phi i32 [ 2147483647, %bb.t ], [ %.2.i25.i.us.us.i, %bb.y ]
  %.0116141.i.i.us.us.i = phi i32 [ 0, %bb.t ], [ %.2118.i.i.us.us.i, %bb.y ]
  %.0120140.i.i.us.us.i = phi i32 [ 0, %bb.t ], [ %.2122.i.i.us.us.i, %bb.y ]
  %i.gc = shl nuw nsw i32 %indvars.iv.i24.i.us.us.i, 14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %bb.u
  %i.gd = phi i64 [ %i.ga, %bb.u ], [ %i.ih, %bb.x ]
  %i.ge = phi i64 [ %i.gb, %bb.u ], [ %i.ii, %bb.x ]
  %.0139.i.i.us.us.i = phi i32 [ %i.gc, %bb.u ], [ %i.kw, %bb.x ] ; 5 uses
  %.0113138.i.i.us.us.i = phi i16 [ 0, %bb.u ], [ %i.kx, %bb.x ] ; 2 uses
  %.1137.i.i.us.us.i = phi i32 [ %.0115142.i.i.us.us.i, %bb.u ], [ %.2.i25.i.us.us.i, %bb.x ] ; 2 uses
  %.1117136.i.i.us.us.i = phi i32 [ %.0116141.i.i.us.us.i, %bb.u ], [ %.2118.i.i.us.us.i, %bb.x ]
  %.1121135.i.i.us.us.i = phi i32 [ %.0120140.i.i.us.us.i, %bb.u ], [ %.2122.i.i.us.us.i, %bb.x ]
  %i.gf = zext nneg i32 %.0139.i.i.us.us.i to i64 ; 5 uses
  %i.gg = mul nuw nsw i64 %i.gf, %i.gf
  %i.gh = add nuw nsw i64 %i.gg, 32768
  %i.gi = lshr i64 %i.gh, 16                      ; 5 uses
  %i.gj = shl nuw nsw i64 %i.gf, 16
  %i.gk = mul i64 %i.gj, %i.gi
  %i.gl = add i64 %i.gk, 2147483648
  %i.gm = lshr i64 %i.gl, 32                      ; 2 uses
  %i.gn = mul i64 %i.gm, %i.fh                    ; 2 uses
  %i.go = ashr i64 %i.gn, 63
  %i.gp = add i64 %i.gn, 32768
  %i.gq = add i64 %i.gp, %i.go
  %i.gr = ashr i64 %i.gq, 16
  %i.gs = mul i64 %i.gi, %i.fp                    ; 2 uses
  %i.gt = ashr i64 %i.gs, 63
  %i.gu = add i64 %i.gs, 32768
  %i.gv = add i64 %i.gu, %i.gt
  %i.gw = ashr i64 %i.gv, 16
  %i.gx = mul i64 %i.fv, %i.gf                    ; 2 uses
  %i.gy = ashr i64 %i.gx, 63
  %i.gz = add i64 %i.gx, 32768
  %i.ha = add i64 %i.gz, %i.gy
  %i.hb = ashr i64 %i.ha, 16
  %i.hc = add i64 %i.hb, %.sroa.069.0.copyload.i.i.us.us.i
  %i.hd = add i64 %i.hc, %i.gw
  %i.he = add i64 %i.hd, %i.gr                    ; 2 uses
  %i.hf = mul i64 %i.gm, %i.fl                    ; 2 uses
  %i.hg = ashr i64 %i.hf, 63
  %i.hh = add i64 %i.hf, 32768
  %i.hi = add i64 %i.hh, %i.hg
  %i.hj = ashr i64 %i.hi, 16
  %i.hk = mul i64 %i.gi, %i.ft                    ; 2 uses
  %i.hl = ashr i64 %i.hk, 63
  %i.hm = add i64 %i.hk, 32768
  %i.hn = add i64 %i.hm, %i.hl
  %i.ho = ashr i64 %i.hn, 16
  %i.hp = mul i64 %i.fx, %i.gf                    ; 2 uses
  %i.hq = ashr i64 %i.hp, 63
  %i.hr = add i64 %i.hp, 32768
  %i.hs = add i64 %i.hr, %i.hq
  %i.ht = ashr i64 %i.hs, 16
  %i.hu = add i64 %i.ht, %.sroa.773.0.copyload.i.i.us.us.i
  %i.hv = add i64 %i.hu, %i.ho
  %i.hw = add i64 %i.hv, %i.hj                    ; 2 uses
  %i.hx = sub nsw i64 %i.he, %i.fc
  %i.hy = shl nsw i64 %i.hx, 10
  store i64 %i.hy, ptr %7, align 8, !tbaa !54
  %i.hz = sub nsw i64 %i.hw, %i.ev
  %i.ia = shl nsw i64 %i.hz, 10
  store i64 %i.ia, ptr %i.bv, align 8, !tbaa !55
  %i.ib = call i64 @FT_Vector_Length(ptr noundef nonnull %7) #12
  %i.ic = trunc i64 %i.ib to i32                  ; 2 uses
  %i.id = icmp sgt i32 %.1137.i.i.us.us.i, %i.ic
  br i1 %i.id, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ie = trunc nuw nsw i64 %i.gi to i32
  %i.if = shl nsw i64 %i.hw, 10
  %i.ig = shl nsw i64 %i.he, 10
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ih = phi i64 [ %i.if, %bb.w ], [ %i.gd, %bb.v ] ; 3 uses
  %i.ii = phi i64 [ %i.ig, %bb.w ], [ %i.ge, %bb.v ] ; 3 uses
  %.2122.i.i.us.us.i = phi i32 [ %.0139.i.i.us.us.i, %bb.w ], [ %.1121135.i.i.us.us.i, %bb.v ] ; 4 uses
  %.2118.i.i.us.us.i = phi i32 [ %i.ie, %bb.w ], [ %.1117136.i.i.us.us.i, %bb.v ] ; 3 uses
  %.2.i25.i.us.us.i = phi i32 [ %i.ic, %bb.w ], [ %.1137.i.i.us.us.i, %bb.v ] ; 3 uses
  %i.ij = mul nuw nsw i64 %i.gi, 3                ; 2 uses
  %i.ik = mul i64 %i.ij, %i.fh                    ; 2 uses
  %i.il = ashr i64 %i.ik, 63
  %i.im = add i64 %i.ik, 32768
  %i.in = add i64 %i.im, %i.il
  %i.io = ashr i64 %i.in, 16
  %i.ip = shl nuw nsw i32 %.0139.i.i.us.us.i, 1
  %i.iq = zext nneg i32 %i.ip to i64              ; 2 uses
  %i.ir = mul i64 %i.fp, %i.iq                    ; 2 uses
  %i.is = ashr i64 %i.ir, 63
  %i.it = add i64 %i.ir, 32768
  %i.iu = add i64 %i.it, %i.is
  %i.iv = ashr i64 %i.iu, 16
  %i.iw = add i64 %i.iv, %i.fv
  %i.ix = add i64 %i.iw, %i.io                    ; 3 uses
  %i.iy = mul i64 %i.ij, %i.fl                    ; 2 uses
  %i.iz = ashr i64 %i.iy, 63
  %i.ja = add i64 %i.iy, 32768
  %i.jb = add i64 %i.ja, %i.iz
  %i.jc = ashr i64 %i.jb, 16
  %i.jd = mul i64 %i.ft, %i.iq                    ; 2 uses
  %i.je = ashr i64 %i.jd, 63
  %i.jf = add i64 %i.jd, 32768
  %i.jg = add i64 %i.jf, %i.je
  %i.jh = ashr i64 %i.jg, 16
  %i.ji = add i64 %i.jh, %i.fx
  %i.jj = add i64 %i.ji, %i.jc                    ; 3 uses
  %i.jk = mul nuw nsw i32 %.0139.i.i.us.us.i, 6
  %i.jl = zext nneg i32 %i.jk to i64              ; 2 uses
  %i.jm = mul i64 %i.fh, %i.jl                    ; 2 uses
  %i.jn = ashr i64 %i.jm, 63
  %i.jo = add i64 %i.jm, 32768
  %i.jp = add i64 %i.jo, %i.jn
  %i.jq = ashr i64 %i.jp, 16
  %i.jr = add nsw i64 %i.jq, %i.fy
  %i.js = mul i64 %i.fl, %i.jl                    ; 2 uses
  %i.jt = ashr i64 %i.js, 63
  %i.ju = add i64 %i.js, 32768
  %i.jv = add i64 %i.ju, %i.jt
  %i.jw = ashr i64 %i.jv, 16
  %i.jx = add nsw i64 %i.jw, %i.fz
  %i.jy = load i64, ptr %7, align 8, !tbaa !54
  %i.jz = sdiv i64 %i.jy, 1024                    ; 3 uses
  store i64 %i.jz, ptr %7, align 8, !tbaa !54
end_hunk_2
