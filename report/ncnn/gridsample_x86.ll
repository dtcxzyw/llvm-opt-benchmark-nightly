Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gridsample_x86?download=true
inline.NumInlined: 346
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN4ncnnL41gridsample_nearest_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE.omp_outlined:bb.a
  store i32 %i.g, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.h = load i32, ptr %0, align 4, !tbaa !23     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !23
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !23
  %i.k = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not90 = icmp sgt i32 %i.k, %i.j
  br i1 %.not90, label %._crit_edge92.split, label %.noexc48.lr.ph

.noexc48.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20, !noalias !575
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !575
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !575
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !20, !noalias !576
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19, !noalias !576
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18, !noalias !576
  %factor.op.mul93 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !20, !noalias !577 ; 2 uses
  %i.w = load i32, ptr %6, align 4, !tbaa !23     ; 5 uses
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
  %i.ad = load i32, ptr %.02788.epil.init, align 4, !tbaa !23 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.c, label %._crit_edge.epilog-lcssa

bb.c:                                             ; preds = %.epil.preheader
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !42
  br label %._crit_edge.epilog-lcssa

._crit_edge.epilog-lcssa:                         ; preds = %bb.c, %.epil.preheader
  %i.ai = phi fast float [ %i.ah, %bb.c ], [ 0.000000e+00, %.epil.preheader ]
  store float %i.ai, ptr %.02887.epil.init, align 4, !tbaa !42
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
  %i.aj = load i32, ptr %.02788, align 4, !tbaa !23 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc48.new
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %.noexc48.new, %bb.d
  %i.ao = phi fast float [ %i.an, %bb.d ], [ 0.000000e+00, %.noexc48.new ]
  store float %i.ao, ptr %.02887, align 4, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %.02788, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.02887, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !23 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aw = phi fast float [ %i.av, %bb.f ], [ 0.000000e+00, %bb.e ]
  store float %i.aw, ptr %i.aq, align 4, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %.02788, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02887, i64 8 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.noexc48.new, !llvm.loop !574

._crit_edge92.split:                              ; preds = %._crit_edge, %.noexc48.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge92.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL44gridsample_2d_bicubic_apply_interpolation_p1ERKNS_3MatERS0_S3_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.h = load i32, ptr %0, align 4, !tbaa !23     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !23
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !23
  %i.k = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not141 = icmp sgt i32 %i.k, %i.j
  br i1 %.not141, label %._crit_edge143.split, label %.noexc84.lr.ph

.noexc84.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20, !noalias !585
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !585
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !585
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !20, !noalias !586
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19, !noalias !586
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18, !noalias !586
  %factor.op.mul144 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !20, !noalias !587
  %i.w = load i32, ptr %6, align 4, !tbaa !23     ; 2 uses
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
  %.059140 = phi i32 [ 0, %.noexc84 ], [ %i.ha, %bb.ai ]
  %.060139 = phi ptr [ %i.v, %.noexc84 ], [ %i.gz, %bb.ai ] ; 19 uses
  %.061138 = phi ptr [ %i.ab, %.noexc84 ], [ %i.gy, %bb.ai ] ; 2 uses
  %i.ac = load float, ptr %.060139, align 4, !tbaa !42 ; 5 uses
  %i.ad = fadd fast float %i.ac, 1.000000e+00     ; 4 uses
  %i.ae = fsub fast float 1.000000e+00, %i.ac     ; 3 uses
  %i.af = fmul fast float %i.ad, %i.ad
  %7 = fmul fast float %i.ad, 7.500000e-01
  %8 = fmul fast float %i.ad, 6.000000e+00
  %9 = fsub fast float 3.750000e+00, %7
  %reass.mul.i = fmul fast float %i.af, %9
  %10 = fsub fast float 3.000000e+00, %8
  %i.ag = fadd fast float %reass.mul.i, %10       ; 5 uses
  %i.ah = fmul fast float %i.ac, %i.ac
  %i.ai = fmul fast float %i.ac, 1.250000e+00
  %reass.add26.i = fadd fast float %i.ai, -2.250000e+00
  %reass.mul27.i = fmul fast float %i.ah, %reass.add26.i
  %i.aj = fadd fast float %reass.mul27.i, 1.000000e+00 ; 5 uses
  %i.ak = fmul fast float %i.ae, %i.ae
  %i.al = fmul fast float %i.ae, 1.250000e+00
  %i.am = fadd fast float %i.al, -2.250000e+00
  %i.an = fmul fast float %i.ak, %i.am            ; 2 uses
  %i.ao = fadd fast float %i.an, 1.000000e+00     ; 4 uses
  %i.ap = fadd fast float %i.aj, %i.an
  %i.aq = fadd fast float %i.ap, %i.ag            ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.060139, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !42 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.060139, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !23 ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !42
  %i.az = fmul fast float %i.ay, %i.ag
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ba = phi float [ %i.az, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.060139, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !42
  %i.bh = fmul fast float %i.bg, %i.aj
  %i.bi = fadd fast float %i.bh, %i.ba
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bj = phi float [ %i.bi, %bb.f ], [ %i.ba, %bb.e ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.060139, i64 16
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !23 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, -1
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = zext nneg i32 %i.bl to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !42
  %i.bq = fmul fast float %i.bp, %i.ao
  %i.br = fadd fast float %i.bq, %i.bj
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bs = phi float [ %i.br, %bb.h ], [ %i.bj, %bb.g ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.060139, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, -1
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = zext nneg i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !42
  %i.bz = fmul fast float %i.by, %i.aq
  %i.ca = fsub fast float %i.bs, %i.bz
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cb = phi float [ %i.ca, %bb.j ], [ %i.bs, %bb.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.060139, i64 24
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !23 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, -1
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !42
  %i.ci = fmul fast float %i.ch, %i.ag
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cj = phi float [ %i.ci, %bb.l ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.060139, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !23 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, -1
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = zext nneg i32 %i.cl to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !42
  %i.cq = fmul fast float %i.cp, %i.aj
  %i.cr = fadd fast float %i.cq, %i.cj
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cs = phi float [ %i.cr, %bb.n ], [ %i.cj, %bb.m ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.060139, i64 32
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !23 ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, -1
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cw = zext nneg i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cw
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !42
  %i.cz = fmul fast float %i.cy, %i.ao
  %i.da = fadd fast float %i.cz, %i.cs
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.db = phi float [ %i.da, %bb.p ], [ %i.cs, %bb.o ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.060139, i64 36
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !23 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, -1
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.df = zext nneg i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !42
  %i.di = fmul fast float %i.dh, %i.aq
  %i.dj = fsub fast float %i.db, %i.di
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dk = phi float [ %i.dj, %bb.r ], [ %i.db, %bb.q ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.060139, i64 40
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !23 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, -1
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.do = zext nneg i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !42
  %i.dr = fmul fast float %i.dq, %i.ag
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ds = phi float [ %i.dr, %bb.t ], [ 0.000000e+00, %bb.s ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.060139, i64 44
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !23 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, -1
  br i1 %i.dv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dw = zext nneg i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !42
  %i.dz = fmul fast float %i.dy, %i.aj
  %i.ea = fadd fast float %i.dz, %i.ds
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eb = phi float [ %i.ea, %bb.v ], [ %i.ds, %bb.u ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.060139, i64 48
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !23 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, -1
  br i1 %i.ee, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ef = zext nneg i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !42
  %i.ei = fmul fast float %i.eh, %i.ao
  %i.ej = fadd fast float %i.ei, %i.eb
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ek = phi float [ %i.ej, %bb.x ], [ %i.eb, %bb.w ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.060139, i64 52
  %i.em = load i32, ptr %i.el, align 4, !tbaa !23 ; 2 uses
  %i.en = icmp sgt i32 %i.em, -1
  br i1 %i.en, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.eo
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !42
  %i.er = fmul fast float %i.eq, %i.aq
  %i.es = fsub fast float %i.ek, %i.er
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.et = phi float [ %i.es, %bb.z ], [ %i.ek, %bb.y ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.060139, i64 56
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !23 ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, -1
  br i1 %i.ew, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ex = zext nneg i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !42
  %i.fa = fmul fast float %i.ez, %i.ag
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fb = phi float [ %i.fa, %bb.ab ], [ 0.000000e+00, %bb.aa ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.060139, i64 60
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !23 ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, -1
  br i1 %i.fe, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ff = zext nneg i32 %i.fd to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !42
  %i.fi = fmul fast float %i.fh, %i.aj
  %i.fj = fadd fast float %i.fi, %i.fb
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fk = phi float [ %i.fj, %bb.ad ], [ %i.fb, %bb.ac ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.060139, i64 64
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !23 ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, -1
  br i1 %i.fn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fo = zext nneg i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.fo
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !42
  %i.fr = fmul fast float %i.fq, %i.ao
  %i.fs = fadd fast float %i.fr, %i.fk
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ft = phi float [ %i.fs, %bb.af ], [ %i.fk, %bb.ae ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.060139, i64 68
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !23 ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, -1
  br i1 %i.fw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fx = zext nneg i32 %i.fv to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.fx
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !42
  %i.ga = fmul fast float %i.fz, %i.aq
  %i.gb = fsub fast float %i.ft, %i.ga
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gc = phi float [ %i.gb, %bb.ah ], [ %i.ft, %bb.ag ]
  %i.gd = fadd fast float %i.as, 1.000000e+00     ; 4 uses
  %i.ge = fsub fast float 1.000000e+00, %i.as     ; 3 uses
  %i.gf = fmul fast float %i.gd, %i.gd
  %11 = fmul fast float %i.gd, 7.500000e-01
  %12 = fmul fast float %i.gd, 6.000000e+00
  %13 = fsub fast float 3.750000e+00, %11
  %reass.mul.i85 = fmul fast float %i.gf, %13
  %14 = fsub fast float 3.000000e+00, %12
  %i.gg = fadd fast float %reass.mul.i85, %14     ; 2 uses
  %i.gh = fmul fast float %i.as, %i.as
  %i.gi = fmul fast float %i.as, 1.250000e+00
  %reass.add26.i86 = fadd fast float %i.gi, -2.250000e+00
  %reass.mul27.i87 = fmul fast float %i.gh, %reass.add26.i86
  %i.gj = fadd fast float %reass.mul27.i87, 1.000000e+00 ; 2 uses
  %i.gk = fmul fast float %i.ge, %i.ge
  %i.gl = fmul fast float %i.ge, 1.250000e+00
  %i.gm = fadd fast float %i.gl, -2.250000e+00
  %i.gn = fmul fast float %i.gk, %i.gm            ; 2 uses
  %i.go = fadd fast float %i.gn, 1.000000e+00
  %i.gp = fadd fast float %i.gj, %i.gn
  %i.gq = fadd fast float %i.gp, %i.gg
  %i.gr = fmul fast float %i.cb, %i.gg
  %i.gs = fmul fast float %i.dk, %i.gj
  %i.gt = fadd fast float %i.gs, %i.gr
  %i.gu = fmul fast float %i.et, %i.go
  %i.gv = fadd fast float %i.gt, %i.gu
  %i.gw = fmul fast float %i.gq, %i.gc
  %i.gx = fsub fast float %i.gv, %i.gw
  store float %i.gx, ptr %.061138, align 4, !tbaa !42
  %i.gy = getelementptr inbounds nuw i8, ptr %.061138, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %.060139, i64 72
  %i.ha = add nuw nsw i32 %.059140, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ha, %i.w
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !584

._crit_edge143.split:                             ; preds = %._crit_edge, %.noexc84.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge143.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL45gridsample_3d_bilinear_apply_interpolation_p1ERKNS_3MatERS0_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !23     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !23
  %i.h = load i32, ptr %0, align 4, !tbaa !23     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !23
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !23
  %i.k = load i32, ptr %i.a, align 4, !tbaa !23   ; 2 uses
  %.not148 = icmp sgt i32 %i.k, %i.j
  br i1 %.not148, label %._crit_edge150.split, label %.noexc106.lr.ph

.noexc106.lr.ph:                                  ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20, !noalias !595
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !595
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18, !noalias !595
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !20, !noalias !596
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19, !noalias !596
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !18, !noalias !596
  %factor.op.mul151 = mul i64 %i.s, %i.u
  %i.v = load ptr, ptr %5, align 8, !tbaa !20, !noalias !597
  %i.w = load i32, ptr %6, align 4, !tbaa !23     ; 2 uses
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
  %.079146 = phi i32 [ 0, %.noexc106 ], [ %i.dk, %bb.s ]
  %.080145 = phi ptr [ %i.v, %.noexc106 ], [ %i.dj, %bb.s ] ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.080145, i64 32
  %i.ad = load i32, ptr %.080145, align 4, !tbaa !23 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ai = phi fast float [ %i.ah, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.080145, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !23 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !42
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ap = phi fast float [ %i.ao, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.080145, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !23 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, -1
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = zext nneg i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aw = phi fast float [ %i.av, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.080145, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !23 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !42
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bd = phi fast float [ %i.bc, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.080145, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !23 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bk = phi fast float [ %i.bj, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.080145, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !23 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, -1
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !42
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.br = phi fast float [ %i.bq, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.080145, i64 24
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !23 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !42
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.by = phi fast float [ %i.bx, %bb.p ], [ 0.000000e+00, %bb.o ]
end_hunk_0
