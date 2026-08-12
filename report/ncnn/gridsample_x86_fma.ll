inline.NumInlined: 684
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN4ncnnL41gridsample_nearest_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE.omp_outlined:bb.a
  store i32 0, ptr %i.d, align 4, !tbaa !29
  %i.h = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !29
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !29
  %i.k = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not90 = icmp sgt i32 %i.k, %i.j
  br i1 %.not90, label %._crit_edge92.split, label %.noexc48.lr.ph

.noexc48.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !24, !noalias !672
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !672
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !672
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !24, !noalias !675
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21, !noalias !675
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !675
  %factor.op.mul93 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !24, !noalias !678 ; 2 uses
  %i.w = load i32, ptr %6, align 4, !tbaa !29     ; 5 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc48.preheader, label %._crit_edge92.split

.noexc48.preheader:                               ; preds = %.noexc48.lr.ph
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  %xtraiter = and i32 %i.w, 1
  %i.aa = icmp eq i32 %i.w, 1
  %unroll_iter = and i32 %i.w, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod102 = trunc i32 %i.w to i1
  br label %.noexc48

.noexc48:                                         ; preds = %.noexc48.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.y, %.noexc48.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  %.reass94 = mul i64 %factor.op.mul93, %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass94 ; 2 uses
  br i1 %i.aa, label %.epil.preheader, label %.noexc48.new

._crit_edge.unr-lcssa:                            ; preds = %bb.g
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.noexc48
  %.02788.epil.init = phi ptr [ %i.v, %.noexc48 ], [ %i.ax, %._crit_edge.unr-lcssa ]
  %.02887.epil.init = phi ptr [ %i.ac, %.noexc48 ], [ %i.ay, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod102)
  %i.ad = load i32, ptr %.02788.epil.init, align 4, !tbaa !29 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.c, label %._crit_edge.epilog-lcssa

bb.c:                                             ; preds = %.epil.preheader
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !66
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.c, %.epil.preheader
  %i.ai = phi fast float [ %i.ah, %bb.c ], [ 0.000000e+00, %.epil.preheader ]
  store float %i.ai, ptr %.02887.epil.init, align 4, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %._crit_edge.epilog-lcssa
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond96.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond96.not, label %._crit_edge92.split, label %.noexc48

.noexc48.new:                                     ; preds = %.noexc48, %bb.g
  %.02788 = phi ptr [ %i.ax, %bb.g ], [ %i.v, %.noexc48 ] ; 3 uses
  %.02887 = phi ptr [ %i.ay, %bb.g ], [ %i.ac, %.noexc48 ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %bb.g ], [ 0, %.noexc48 ]
  %i.aj = load i32, ptr %.02788, align 4, !tbaa !29 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc48.new
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %.noexc48.new, %bb.d
  %i.ao = phi fast float [ %i.an, %bb.d ], [ 0.000000e+00, %.noexc48.new ]
  store float %i.ao, ptr %.02887, align 4, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %.02788, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.02887, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !29 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = phi fast float [ %i.av, %bb.f ], [ 0.000000e+00, %bb.e ]
  store float %i.aw, ptr %i.aq, align 4, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %.02788, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02887, i64 8 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.noexc48.new, !llvm.loop !681

._crit_edge92.split:                              ; preds = %._crit_edge, %.noexc48.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge92.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL44gridsample_2d_bicubic_apply_interpolation_p1ERKNS_3MatERS0_S3_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !29     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !29
  %i.h = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !29
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !29
  %i.k = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not141 = icmp sgt i32 %i.k, %i.j
  br i1 %.not141, label %._crit_edge143.split, label %.noexc84.lr.ph

.noexc84.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !24, !noalias !682
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !682
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !682
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !24, !noalias !685
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21, !noalias !685
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !685
  %factor.op.mul144 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !24, !noalias !688
  %i.w = load i32, ptr %6, align 4, !tbaa !29     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc84.preheader, label %._crit_edge143.split

.noexc84.preheader:                               ; preds = %.noexc84.lr.ph
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  br label %.noexc84

.noexc84:                                         ; preds = %.noexc84.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.y, %.noexc84.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 16 uses
  %.reass145 = mul i64 %factor.op.mul144, %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass145
  br label %bb.c

._crit_edge:                                      ; preds = %bb.ai
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond148.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond148.not, label %._crit_edge143.split, label %.noexc84

bb.c:                                             ; preds = %.noexc84, %bb.ai
  %.057140 = phi ptr [ %i.ab, %.noexc84 ], [ %i.hc, %bb.ai ] ; 2 uses
  %.058139 = phi ptr [ %i.v, %.noexc84 ], [ %i.hd, %bb.ai ] ; 19 uses
  %.059138 = phi i32 [ 0, %.noexc84 ], [ %i.he, %bb.ai ]
  %i.ac = load float, ptr %.058139, align 4, !tbaa !66 ; 5 uses
  %i.ad = fadd fast float %i.ac, 1.000000e+00     ; 4 uses
  %i.ae = fsub fast float 1.000000e+00, %i.ac     ; 3 uses
  %i.af = fmul fast float %i.ad, %i.ad
  %i.ag = fmul fast float %i.ad, 7.500000e-01
  %7 = fsub fast float 3.750000e+00, %i.ag
  %8 = fmul fast float %i.af, %7
  %reass.mul.i.a = fmul fast float %i.ad, 6.000000e+00
  %i.ah = fsub fast float %8, %reass.mul.i.a
  %i.ai = fadd fast float %i.ah, 3.000000e+00     ; 5 uses
  %i.aj = fmul fast float %i.ac, %i.ac
  %i.ak = fmul fast float %i.ac, 1.250000e+00
  %reass.add26.i = fadd fast float %i.ak, -2.250000e+00
  %reass.mul27.i = fmul fast float %i.aj, %reass.add26.i
  %i.al = fadd fast float %reass.mul27.i, 1.000000e+00 ; 5 uses
  %i.am = fmul fast float %i.ae, %i.ae
  %i.an = fmul fast float %i.ae, 1.250000e+00
  %i.ao = fadd fast float %i.an, -2.250000e+00
  %i.ap = fmul fast float %i.am, %i.ao            ; 2 uses
  %i.aq = fadd fast float %i.ap, 1.000000e+00     ; 4 uses
  %i.ar = fadd fast float %i.al, %i.ap
  %i.as = fadd fast float %i.ar, %i.ai            ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.058139, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !66 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.058139, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !29 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = zext nneg i32 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !66
  %i.bb = fmul fast float %i.ba, %i.ai
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bc = phi float [ %i.bb, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.058139, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !66
  %i.bj = fmul fast float %i.bi, %i.al
  %i.bk = fadd fast float %i.bj, %i.bc
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bl = phi float [ %i.bk, %bb.f ], [ %i.bc, %bb.e ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.058139, i64 16
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !29 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !66
  %i.bs = fmul fast float %i.br, %i.aq
  %i.bt = fadd fast float %i.bs, %i.bl
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bu = phi float [ %i.bt, %bb.h ], [ %i.bl, %bb.g ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.058139, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !29 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, -1
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !66
  %i.cb = fmul fast float %i.ca, %i.as
  %i.cc = fsub fast float %i.bu, %i.cb
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cd = phi float [ %i.cc, %bb.j ], [ %i.bu, %bb.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.058139, i64 24
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !29 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, -1
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = zext nneg i32 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !66
  %i.ck = fmul fast float %i.cj, %i.ai
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cl = phi float [ %i.ck, %bb.l ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.058139, i64 28
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !66
  %i.cs = fmul fast float %i.cr, %i.al
  %i.ct = fadd fast float %i.cs, %i.cl
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cu = phi float [ %i.ct, %bb.n ], [ %i.cl, %bb.m ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.058139, i64 32
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !29 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, -1
  br i1 %i.cx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !66
  %i.db = fmul fast float %i.da, %i.aq
  %i.dc = fadd fast float %i.db, %i.cu
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dd = phi float [ %i.dc, %bb.p ], [ %i.cu, %bb.o ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.058139, i64 36
  %i.df = load i32, ptr %i.de, align 4, !tbaa !29 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, -1
  br i1 %i.dg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = zext nneg i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !66
  %i.dk = fmul fast float %i.dj, %i.as
  %i.dl = fsub fast float %i.dd, %i.dk
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dm = phi float [ %i.dl, %bb.r ], [ %i.dd, %bb.q ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.058139, i64 40
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !29 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !66
  %i.dt = fmul fast float %i.ds, %i.ai
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.du = phi float [ %i.dt, %bb.t ], [ 0.000000e+00, %bb.s ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.058139, i64 44
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !29 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, -1
  br i1 %i.dx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dy = zext nneg i32 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !66
  %i.eb = fmul fast float %i.ea, %i.al
  %i.ec = fadd fast float %i.eb, %i.du
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ed = phi float [ %i.ec, %bb.v ], [ %i.du, %bb.u ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.058139, i64 48
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !29 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, -1
  br i1 %i.eg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eh = zext nneg i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.eh
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !66
  %i.ek = fmul fast float %i.ej, %i.aq
  %i.el = fadd fast float %i.ek, %i.ed
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.em = phi float [ %i.el, %bb.x ], [ %i.ed, %bb.w ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.058139, i64 52
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !29 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, -1
  br i1 %i.ep, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eq = zext nneg i32 %i.eo to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !66
  %i.et = fmul fast float %i.es, %i.as
  %i.eu = fsub fast float %i.em, %i.et
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ev = phi float [ %i.eu, %bb.z ], [ %i.em, %bb.y ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.058139, i64 56
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !29 ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, -1
  br i1 %i.ey, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ez = zext nneg i32 %i.ex to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !66
  %i.fc = fmul fast float %i.fb, %i.ai
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fd = phi float [ %i.fc, %bb.ab ], [ 0.000000e+00, %bb.aa ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.058139, i64 60
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !29 ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, -1
  br i1 %i.fg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fh = zext nneg i32 %i.ff to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !66
  %i.fk = fmul fast float %i.fj, %i.al
  %i.fl = fadd fast float %i.fk, %i.fd
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fm = phi float [ %i.fl, %bb.ad ], [ %i.fd, %bb.ac ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.058139, i64 64
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !29 ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, -1
  br i1 %i.fp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fq = zext nneg i32 %i.fo to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !66
  %i.ft = fmul fast float %i.fs, %i.aq
  %i.fu = fadd fast float %i.ft, %i.fm
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fv = phi float [ %i.fu, %bb.af ], [ %i.fm, %bb.ae ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.058139, i64 68
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !29 ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, -1
  br i1 %i.fy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !66
  %i.gc = fmul fast float %i.gb, %i.as
  %i.gd = fsub fast float %i.fv, %i.gc
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ge = phi float [ %i.gd, %bb.ah ], [ %i.fv, %bb.ag ]
  %i.gf = fadd fast float %i.au, 1.000000e+00     ; 4 uses
  %i.gg = fsub fast float 1.000000e+00, %i.au     ; 3 uses
  %i.gh = fmul fast float %i.gf, %i.gf
  %i.gi = fmul fast float %i.gf, 7.500000e-01
  %9 = fsub fast float 3.750000e+00, %i.gi
  %10 = fmul fast float %i.gh, %9
  %reass.mul.i85 = fmul fast float %i.gf, 6.000000e+00
  %i.gj = fsub fast float %10, %reass.mul.i85
  %i.gk = fadd fast float %i.gj, 3.000000e+00     ; 2 uses
  %i.gl = fmul fast float %i.au, %i.au
  %i.gm = fmul fast float %i.au, 1.250000e+00
  %reass.add26.i86 = fadd fast float %i.gm, -2.250000e+00
  %reass.mul27.i87 = fmul fast float %i.gl, %reass.add26.i86
  %i.gn = fadd fast float %reass.mul27.i87, 1.000000e+00 ; 2 uses
  %i.go = fmul fast float %i.gg, %i.gg
  %i.gp = fmul fast float %i.gg, 1.250000e+00
  %i.gq = fadd fast float %i.gp, -2.250000e+00
  %i.gr = fmul fast float %i.go, %i.gq            ; 2 uses
  %i.gs = fadd fast float %i.gr, 1.000000e+00
  %i.gt = fadd fast float %i.gn, %i.gr
  %i.gu = fadd fast float %i.gt, %i.gk
  %i.gv = fmul fast float %i.cd, %i.gk
  %i.gw = fmul fast float %i.dm, %i.gn
  %i.gx = fadd fast float %i.gv, %i.gw
  %i.gy = fmul fast float %i.ev, %i.gs
  %i.gz = fadd fast float %i.gy, %i.gx
  %i.ha = fmul fast float %i.gu, %i.ge
  %i.hb = fsub fast float %i.gz, %i.ha
  store float %i.hb, ptr %.057140, align 4, !tbaa !66
  %i.hc = getelementptr inbounds nuw i8, ptr %.057140, i64 4
  %i.hd = getelementptr inbounds nuw i8, ptr %.058139, i64 72
  %i.he = add nuw nsw i32 %.059138, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.he, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !691

._crit_edge143.split:                             ; preds = %._crit_edge, %.noexc84.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge143.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL45gridsample_3d_bilinear_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !29     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !29
  %i.h = load i32, ptr %0, align 4, !tbaa !29     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !29
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !29
  %i.k = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %.not148 = icmp sgt i32 %i.k, %i.j
  br i1 %.not148, label %._crit_edge150.split, label %.noexc106.lr.ph

.noexc106.lr.ph:                                  ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !24, !noalias !692
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21, !noalias !692
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20, !noalias !692
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !24, !noalias !695
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21, !noalias !695
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !695
  %factor.op.mul151 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !24, !noalias !698
  %i.w = load i32, ptr %6, align 4, !tbaa !29     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.noexc106.preheader, label %._crit_edge150.split

.noexc106.preheader:                              ; preds = %.noexc106.lr.ph
  %i.y = sext i32 %i.k to i64
  %i.z = add nsw i32 %i.j, 1
  br label %.noexc106

.noexc106:                                        ; preds = %.noexc106.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.y, %.noexc106.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 8 uses
  %.reass152 = mul i64 %factor.op.mul151, %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass152
  br label %bb.c

._crit_edge:                                      ; preds = %bb.s
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond154.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond154.not, label %._crit_edge150.split, label %.noexc106

bb.c:                                             ; preds = %.noexc106, %bb.s
  %.078147 = phi ptr [ %i.ab, %.noexc106 ], [ %i.di, %bb.s ] ; 2 uses
  %.079146 = phi ptr [ %i.v, %.noexc106 ], [ %i.dj, %bb.s ] ; 12 uses
  %.080145 = phi i32 [ 0, %.noexc106 ], [ %i.dk, %bb.s ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.079146, i64 32
  %i.ad = load i32, ptr %.079146, align 4, !tbaa !29 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ai = phi fast float [ %i.ah, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.079146, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ap = phi fast float [ %i.ao, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.079146, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !29 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !66
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aw = phi fast float [ %i.av, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.079146, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !66
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bd = phi fast float [ %i.bc, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.079146, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !66
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bk = phi fast float [ %i.bj, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.079146, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !66
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.br = phi fast float [ %i.bq, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.079146, i64 24
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !29 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !66
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.by = phi fast float [ %i.bx, %bb.p ], [ 0.000000e+00, %bb.o ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.079146, i64 28
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !29 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, -1
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !66
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.cf = phi fast float [ %i.ce, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.cg = load float, ptr %i.ac, align 4, !tbaa !66 ; 5 uses
  %i.ch = fsub fast float 1.000000e+00, %i.cg     ; 4 uses
  %i.ci = fmul fast float %i.ch, %i.ai
  %i.cj = fmul fast float %i.cg, %i.ap
end_hunk_0
