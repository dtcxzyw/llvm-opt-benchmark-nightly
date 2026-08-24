Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86_avx512bf16?download=true
inline.NumInlined: 24
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4ncnnL13linear_coeffsEiiPiPfi:bb.a
  br i1 %i.bz, label %middle.block93, label %vector.body87, !llvm.loop !48

middle.block93:                                   ; preds = %vector.body87
  %cmp.n94 = icmp eq i64 %n.vec78, %wide.trip.count40
  br i1 %cmp.n94, label %._crit_edge, label %vec.epilog.iter.check98

vec.epilog.iter.check98:                          ; preds = %middle.block93
  %min.epilog.iters.check99 = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check99, label %.lr.ph.split.us.preheader, label %vec.epilog.ph100, !prof !46

vec.epilog.ph100:                                 ; preds = %vector.main.loop.iter.check75, %vec.epilog.iter.check98
  %vec.epilog.resume.val95 = phi i64 [ %n.vec78, %vec.epilog.iter.check98 ], [ 0, %vector.main.loop.iter.check75 ] ; 2 uses
  %n.vec101 = and i64 %wide.trip.count40, 2147483644 ; 3 uses
  %broadcast.splatinsert102 = insertelement <4 x i32> poison, i32 %i.bb, i64 0
  %broadcast.splat103 = shufflevector <4 x i32> %broadcast.splatinsert102, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert104 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat105 = shufflevector <4 x i32> %broadcast.splatinsert104, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <4 x double> poison, double %i.a, i64 0
  %broadcast.splat107 = shufflevector <4 x double> %broadcast.splatinsert106, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert108 = insertelement <4 x double> poison, double %i.b, i64 0
  %broadcast.splat109 = shufflevector <4 x double> %broadcast.splatinsert108, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ca = trunc nuw nsw i64 %vec.epilog.resume.val95 to i32
  %broadcast.splatinsert110 = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat111 = shufflevector <4 x i32> %broadcast.splatinsert110, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction112 = or disjoint <4 x i32> %broadcast.splat111, <i32 0, i32 1, i32 2, i32 3>
  %i.cb = fdiv fast <4 x double> splat (double 1.000000e+00), %broadcast.splat109
  br label %vec.epilog.vector.body113

vec.epilog.vector.body113:                        ; preds = %vec.epilog.vector.body113, %vec.epilog.ph100
  %index114 = phi i64 [ %vec.epilog.resume.val95, %vec.epilog.ph100 ], [ %index.next117, %vec.epilog.vector.body113 ] ; 3 uses
  %vec.ind115 = phi <4 x i32> [ %induction112, %vec.epilog.ph100 ], [ %vec.ind.next118, %vec.epilog.vector.body113 ] ; 2 uses
  %i.cc = uitofp nneg <4 x i32> %vec.ind115 to <4 x double>
  %i.cd = fadd fast <4 x double> %i.cc, splat (double 5.000000e-01)
  %i.ce = fmul fast <4 x double> %i.cd, %broadcast.splat107
  %i.cf = fmul fast <4 x double> %i.ce, %i.cb
  %i.cg = fadd fast <4 x double> %i.cf, splat (double -5.000000e-01)
  %i.ch = fptrunc <4 x double> %i.cg to <4 x float> ; 2 uses
  %i.ci = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.ch)
  %i.cj = fptosi <4 x float> %i.ci to <4 x i32>   ; 3 uses
  %i.ck = sitofp fast <4 x i32> %i.cj to <4 x float>
  %i.cl = fsub fast <4 x float> %i.ch, %i.ck
  %i.cm = icmp slt <4 x i32> %i.cj, zeroinitializer
  %i.cn = select nsz <4 x i1> %i.cm, <4 x float> zeroinitializer, <4 x float> %i.cl
  %i.co = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cj, <4 x i32> zeroinitializer) ; 2 uses
  %i.cp = icmp slt <4 x i32> %i.co, %broadcast.splat103 ; 2 uses
  %i.cq = select nsz <4 x i1> %i.cp, <4 x float> %i.cn, <4 x float> splat (float 1.000000e+00) ; 2 uses
  %i.cr = select <4 x i1> %i.cp, <4 x i32> %i.co, <4 x i32> %broadcast.splat105
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index114
  store <4 x i32> %i.cr, ptr %i.cs, align 4, !tbaa !18
  %i.ct = fsub fast <4 x float> splat (float 1.000000e+00), %i.cq
  %i.cu = shl nuw nsw i64 %index114, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 %i.cu
  %interleaved.vec116 = shufflevector <4 x float> %i.ct, <4 x float> %i.cq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec116, ptr %i.cv, align 4, !tbaa !24
  %index.next117 = add nuw i64 %index114, 4       ; 2 uses
  %vec.ind.next118 = add <4 x i32> %vec.ind115, splat (i32 4)
  %i.cw = icmp eq i64 %index.next117, %n.vec101
  br i1 %i.cw, label %vec.epilog.middle.block119, label %vec.epilog.vector.body113, !llvm.loop !49

vec.epilog.middle.block119:                       ; preds = %vec.epilog.vector.body113
  %cmp.n120 = icmp eq i64 %n.vec101, %wide.trip.count40
  br i1 %cmp.n120, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check96, %vec.epilog.iter.check98, %vec.epilog.middle.block119
  %indvars.iv37.ph = phi i64 [ 0, %iter.check96 ], [ %n.vec78, %vec.epilog.iter.check98 ], [ %n.vec101, %vec.epilog.middle.block119 ]
  %i.cx = fdiv fast double 1.000000e+00, %i.b
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %.lr.ph.split.us ], [ %indvars.iv37.ph, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv37 to i32
  %i.cz = uitofp nneg i32 %i.cy to double
  %i.da = fadd fast double %i.cz, 5.000000e-01
  %i.db = fmul fast double %i.da, %i.a
  %i.dc = fmul fast double %i.db, %i.cx
  %i.dd = fadd fast double %i.dc, -5.000000e-01
  %.028.us = fptrunc double %i.dd to float        ; 2 uses
  %i.de = tail call fast float @llvm.floor.f32(float %.028.us)
  %i.df = fptosi float %i.de to i32               ; 3 uses
  %i.dg = sitofp fast i32 %i.df to float
  %i.dh = fsub fast float %.028.us, %i.dg
  %i.di = icmp slt i32 %i.df, 0
  %.129.us = select nsz i1 %i.di, float 0.000000e+00, float %i.dh
  %.0.us = tail call i32 @llvm.smax.i32(i32 %i.df, i32 0) ; 2 uses
  %.not33.us = icmp slt i32 %.0.us, %i.bb         ; 2 uses
  %.2.us = select nsz i1 %.not33.us, float %.129.us, float 1.000000e+00 ; 2 uses
  %.1.us = select i1 %.not33.us, i32 %.0.us, i32 %i.bc
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv37
  store i32 %.1.us, ptr %i.dj, align 4, !tbaa !18
  %i.dk = fsub fast float 1.000000e+00, %.2.us
  %.idx43 = shl nuw nsw i64 %indvars.iv37, 3
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 %.idx43 ; 2 uses
  store float %i.dk, ptr %i.dl, align 4, !tbaa !24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store float %.2.us, ptr %i.dm, align 4, !tbaa !24
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !50

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %vec.epilog.middle.block, %middle.block93, %vec.epilog.middle.block119, %.thread, %bb.b
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader ] ; 4 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv to i32
  %i.do = uitofp nneg i32 %i.dn to double
  %i.dp = fmul fast double %i.e, %i.do
  %i.dq = fmul fast double %i.dp, %i.ba
  %.028 = fptrunc double %i.dq to float           ; 2 uses
  %i.dr = tail call fast float @llvm.floor.f32(float %.028)
  %i.ds = fptosi float %i.dr to i32               ; 3 uses
  %i.dt = sitofp fast i32 %i.ds to float
  %i.du = fsub fast float %.028, %i.dt
  %i.dv = icmp slt i32 %i.ds, 0
  %.129 = select nsz i1 %i.dv, float 0.000000e+00, float %i.du
  %.0 = tail call i32 @llvm.smax.i32(i32 %i.ds, i32 0) ; 2 uses
  %.not33 = icmp slt i32 %.0, %i.i                ; 2 uses
  %.2 = select nsz i1 %.not33, float %.129, float 1.000000e+00 ; 2 uses
  %.1 = select i1 %.not33, i32 %.0, i32 %i.j
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %.1, ptr %i.dw, align 4, !tbaa !18
  %i.dx = fsub fast float 1.000000e+00, %.2
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  store float %i.dx, ptr %i.dy, align 4, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store float %.2, ptr %i.dz, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !51
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !18     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 %i.g, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i32 1, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.h = load i32, ptr %0, align 4, !tbaa !18     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !18
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !18
  %i.k = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not115 = icmp sgt i32 %i.k, %i.j
  br i1 %.not115, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !18     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph118.split.preheader, label %._crit_edge119

.lr.ph118.split.preheader:                        ; preds = %.lr.ph118
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph118.split

.lr.ph118.split:                                  ; preds = %.lr.ph118.split.preheader, %._crit_edge114
  %i.t = phi i32 [ %i.p, %.lr.ph118.split.preheader ], [ %i.am, %._crit_edge114 ] ; 2 uses
  %indvars.iv138 = phi i64 [ %i.r, %.lr.ph118.split.preheader ], [ %indvars.iv.next139, %._crit_edge114 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !29     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !39
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv138, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph113.preheader, label %._crit_edge114

.lr.ph113.preheader:                              ; preds = %.lr.ph118.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !27
  %i.ae = load ptr, ptr %4, align 8, !tbaa !29
  %i.af = load i32, ptr %i.n, align 4, !tbaa !39
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv138, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !34
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !18
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph113

._crit_edge114:                                   ; preds = %._crit_edge, %.lr.ph118.split
  %i.am = phi i32 [ %i.t, %.lr.ph118.split ], [ %i.gi, %._crit_edge ]
  %indvars.iv.next139 = add nsw i64 %indvars.iv138, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next139 to i32
  %exitcond141.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond141.not, label %._crit_edge119, label %.lr.ph118.split, !llvm.loop !52

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph113.preheader ], [ %i.db, %._crit_edge ] ; 4 uses
  %indvars.iv135 = phi i64 [ 0, %.lr.ph113.preheader ], [ %indvars.iv.next136, %._crit_edge ] ; 2 uses
  %.078110 = phi ptr [ %i.ad, %.lr.ph113.preheader ], [ %34, %._crit_edge ] ; 3 uses
  %.079109 = phi ptr [ %i.ak, %.lr.ph113.preheader ], [ %i.gh, %._crit_edge ] ; 8 uses
  %.079109162 = ptrtoaddr ptr %.079109 to i64     ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv135
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !18
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 9 uses
  %i.au = load float, ptr %.078110, align 4, !tbaa !24 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.078110, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !24 ; 6 uses
  %i.ax = icmp sgt i32 %i.an, 15
  br i1 %i.ax, label %.lr.ph, label %.preheader98

.lr.ph:                                           ; preds = %.lr.ph113
  %i.ay = insertelement <16 x float> poison, float %i.au, i64 0
  %i.az = shufflevector <16 x float> %i.ay, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ba = insertelement <16 x float> poison, float %i.aw, i64 0
  %i.bb = shufflevector <16 x float> %i.ba, <16 x float> poison, <16 x i32> zeroinitializer
  br label %bb.c

.preheader98.loopexit:                            ; preds = %bb.c
  %i.bc = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader98

.preheader98:                                     ; preds = %.preheader98.loopexit, %.lr.ph113
  %i.bd = phi i32 [ %i.an, %.lr.ph113 ], [ %i.by, %.preheader98.loopexit ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph113 ], [ %i.bc, %.preheader98.loopexit ] ; 3 uses
  %i.be = or disjoint i32 %.0.lcssa, 7
  %i.bf = icmp slt i32 %i.be, %i.bd
  br i1 %i.bf, label %.lr.ph101, label %.preheader97

.lr.ph101:                                        ; preds = %.preheader98
  %i.bg = insertelement <8 x float> poison, float %i.au, i64 0
  %i.bh = shufflevector <8 x float> %i.bg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bi = insertelement <8 x float> poison, float %i.aw, i64 0
  %i.bj = shufflevector <8 x float> %i.bi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bk = zext nneg i32 %.0.lcssa to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.bl = phi i32 [ %i.an, %.lr.ph ], [ %i.by, %bb.c ]
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.bn = load <16 x bfloat>, ptr %i.bm, align 1, !tbaa !53
  %i.bo = fpext fast <16 x bfloat> %i.bn to <16 x float>
  %i.bp = sext i32 %i.bl to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bp
  %i.br = load <16 x bfloat>, ptr %i.bq, align 1, !tbaa !53
  %i.bs = fpext fast <16 x bfloat> %i.br to <16 x float>
  %i.bt = fmul fast <16 x float> %i.az, %i.bo
  %i.bu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bs, <16 x float> nofpclass(nan inf) %i.bb, <16 x float> nofpclass(nan inf) %i.bt)
  %i.bv = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bu)
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.079109, i64 %indvars.iv
  store <16 x bfloat> %i.bv, ptr %i.bw, align 1, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 16 ; 3 uses
  %i.bx = or disjoint i64 %indvars.iv.next, 15
  %i.by = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.c, label %.preheader98.loopexit, !llvm.loop !54

.preheader97.loopexit:                            ; preds = %bb.d
  %i.cb = trunc nuw nsw i64 %indvars.iv.next127 to i32
  br label %.preheader97

.preheader97:                                     ; preds = %.preheader97.loopexit, %.preheader98
  %i.cc = phi i32 [ %i.bd, %.preheader98 ], [ %i.cx, %.preheader97.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader98 ], [ %i.cb, %.preheader97.loopexit ] ; 3 uses
  %i.cd = or disjoint i32 %.1.lcssa, 3
  %i.ce = icmp slt i32 %i.cd, %i.cc
  br i1 %i.ce, label %.lr.ph104, label %.preheader

.lr.ph104:                                        ; preds = %.preheader97
  %i.cf = insertelement <4 x float> poison, float %i.au, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = zext nneg i32 %.1.lcssa to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph101, %bb.d
  %indvars.iv126 = phi i64 [ %i.bk, %.lr.ph101 ], [ %indvars.iv.next127, %bb.d ] ; 3 uses
  %i.ck = phi i32 [ %i.bd, %.lr.ph101 ], [ %i.cx, %bb.d ]
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv126 ; 2 uses
  %i.cm = load <8 x bfloat>, ptr %i.cl, align 1, !tbaa !53
  %i.cn = fpext fast <8 x bfloat> %i.cm to <8 x float>
  %i.co = sext i32 %i.ck to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.co
  %i.cq = load <8 x bfloat>, ptr %i.cp, align 1, !tbaa !53
  %i.cr = fpext fast <8 x bfloat> %i.cq to <8 x float>
  %i.cs = fmul fast <8 x float> %i.bh, %i.cn
  %i.ct = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cr, <8 x float> nofpclass(nan inf) %i.bj, <8 x float> nofpclass(nan inf) %i.cs)
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.079109, i64 %indvars.iv126
  %i.cv = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ct)
  store <8 x bfloat> %i.cv, ptr %i.cu, align 1, !tbaa !53
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 8 ; 3 uses
  %i.cw = or disjoint i64 %indvars.iv.next127, 7
  %i.cx = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.d, label %.preheader97.loopexit, !llvm.loop !55

.preheader.loopexit:                              ; preds = %bb.e
  %i.da = trunc nuw i64 %indvars.iv.next130 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader97
  %i.db = phi i32 [ %i.cc, %.preheader97 ], [ %i.fn, %.preheader.loopexit ] ; 11 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader97 ], [ %i.da, %.preheader.loopexit ] ; 6 uses
  %i.dc = icmp slt i32 %.2.lcssa, %i.db
  br i1 %i.dc, label %.preheader.._crit_edge_crit_edge, label %._crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %9 = zext i32 %.2.lcssa to i64                  ; 8 uses
  %10 = xor i32 %.2.lcssa, -1
  %11 = add i32 %i.db, %10                        ; 3 uses
  %12 = zext i32 %11 to i64
  %13 = add nuw nsw i64 %12, 1                    ; 5 uses
  %min.iters.check = icmp ult i32 %11, 7
  br i1 %min.iters.check, label %.lr.ph108.preheader, label %iter.check

iter.check:                                       ; preds = %.preheader.._crit_edge_crit_edge
  %14 = add i32 %i.db, %.2.lcssa
  %15 = sub i32 %.2.lcssa, %i.db
  %min.iters.check.a = icmp ult i32 %15, %14
  br i1 %min.iters.check.a, label %.lr.ph108.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %16 = shl nuw nsw i64 %9, 1
  %17 = add i64 %16, %.079109162
  %18 = shl nsw i64 %i.as, 1                      ; 2 uses
  %i.dd = add i64 %i.al, %18
  %19 = add i32 %i.db, %.2.lcssa
  %20 = zext i32 %19 to i64
  %i.de = shl nuw nsw i64 %20, 1
  %21 = add i64 %i.dd, %i.de
  %i.df = sub i64 %21, %17
  %diff.check = icmp ugt i64 %i.df, -64
  %22 = add i64 %i.al, %18
  %i.dg = sub i64 %22, %.079109162
  %diff.check163 = icmp ugt i64 %i.dg, -64
  %conflict.rdx = or i1 %diff.check, %diff.check163
  br i1 %conflict.rdx, label %.lr.ph108.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check164 = icmp ult i32 %11, 31
  br i1 %min.iters.check164, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dh = and i64 %13, 24
  %n.vec = and i64 %13, 8589934560                ; 4 uses
  %i.di = add nuw nsw i64 %n.vec, %9
  %broadcast.splatinsert = insertelement <32 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <32 x float> %broadcast.splatinsert, <32 x float> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert165.a = insertelement <32 x float> poison, float %i.aw, i64 0
  %broadcast.splat166.a = shufflevector <32 x float> %broadcast.splatinsert165.a, <32 x float> poison, <32 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = add nuw i64 %index, %9                  ; 3 uses
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.dj
  %wide.load = load <32 x i16>, ptr %i.dk, align 2, !tbaa !56
  %i.dl = zext <32 x i16> %wide.load to <32 x i32>
  %i.dm = shl nuw <32 x i32> %i.dl, splat (i32 16)
  %i.dn = bitcast <32 x i32> %i.dm to <32 x float>
  %i.do = fmul fast <32 x float> %broadcast.splat, %i.dn
  %23 = trunc nuw i64 %i.dj to i32
  %24 = add nsw i32 %i.db, %23
  %25 = zext nneg i32 %24 to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %25
  %wide.load167 = load <32 x i16>, ptr %i.dp, align 2, !tbaa !56
  %i.dq = zext <32 x i16> %wide.load167 to <32 x i32>
  %i.dr = shl nuw <32 x i32> %i.dq, splat (i32 16)
  %i.ds = bitcast <32 x i32> %i.dr to <32 x float>
  %i.dt = fmul fast <32 x float> %broadcast.splat166.a, %i.ds
  %i.du = fadd fast <32 x float> %i.dt, %i.do
  %i.dv = bitcast <32 x float> %i.du to <32 x i32>
  %i.dw = lshr <32 x i32> %i.dv, splat (i32 16)
  %i.dx = trunc nuw <32 x i32> %i.dw to <32 x i16>
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.079109, i64 %i.dj
  store <32 x i16> %i.dx, ptr %i.dy, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %13, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph108.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec168 = and i64 %13, 8589934584             ; 3 uses
  %i.ea = add nuw nsw i64 %n.vec168, %9
  %broadcast.splatinsert169 = insertelement <8 x float> poison, float %i.au, i64 0
  %broadcast.splat170 = shufflevector <8 x float> %broadcast.splatinsert169, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x float> poison, float %i.aw, i64 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index173 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next176, %vec.epilog.vector.body ] ; 2 uses
  %i.eb = add nuw i64 %index173, %9               ; 3 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.eb
  %wide.load174 = load <8 x i16>, ptr %i.ec, align 2, !tbaa !56
  %i.ed = zext <8 x i16> %wide.load174 to <8 x i32>
  %i.ee = shl nuw <8 x i32> %i.ed, splat (i32 16)
  %i.ef = bitcast <8 x i32> %i.ee to <8 x float>
  %i.eg = fmul fast <8 x float> %broadcast.splat170, %i.ef
  %26 = trunc nuw i64 %i.eb to i32
  %27 = add nsw i32 %i.db, %26
  %28 = zext nneg i32 %27 to i64
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %28
  %wide.load175 = load <8 x i16>, ptr %i.eh, align 2, !tbaa !56
  %i.ei = zext <8 x i16> %wide.load175 to <8 x i32>
  %i.ej = shl nuw <8 x i32> %i.ei, splat (i32 16)
  %i.ek = bitcast <8 x i32> %i.ej to <8 x float>
  %i.el = fmul fast <8 x float> %broadcast.splat172, %i.ek
  %i.em = fadd fast <8 x float> %i.el, %i.eg
  %i.en = bitcast <8 x float> %i.em to <8 x i32>
  %i.eo = lshr <8 x i32> %i.en, splat (i32 16)
  %i.ep = trunc nuw <8 x i32> %i.eo to <8 x i16>
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %.079109, i64 %i.eb
  store <8 x i16> %i.ep, ptr %i.eq, align 2, !tbaa !56
  %index.next176 = add nuw i64 %index173, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next176, %n.vec168
  br i1 %i.er, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n177 = icmp eq i64 %13, %n.vec168
  br i1 %cmp.n177, label %._crit_edge, label %.lr.ph108.preheader

.lr.ph108.preheader:                              ; preds = %vector.memcheck, %iter.check, %.preheader.._crit_edge_crit_edge, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv132.ph = phi i64 [ %9, %.preheader.._crit_edge_crit_edge ], [ %9, %iter.check ], [ %9, %vector.memcheck ], [ %i.di, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ]
  br label %.lr.ph108

bb.e:                                             ; preds = %.lr.ph104, %bb.e
  %indvars.iv129 = phi i64 [ %i.cj, %.lr.ph104 ], [ %indvars.iv.next130, %bb.e ] ; 3 uses
  %i.es = phi i32 [ %i.cc, %.lr.ph104 ], [ %i.fn, %bb.e ]
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv129 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 1, !tbaa !53
  %i.ev = insertelement <2 x i64> poison, i64 %i.eu, i64 0
  %i.ew = bitcast <2 x i64> %i.ev to <8 x i16>
  %i.ex = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ew, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ey = bitcast <8 x i16> %i.ex to <4 x float>
  %i.ez = sext i32 %i.es to i64
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.et, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 1, !tbaa !53
  %i.fc = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %i.fd = bitcast <2 x i64> %i.fc to <8 x i16>
  %i.fe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ff = bitcast <8 x i16> %i.fe to <4 x float>
  %i.fg = fmul fast <4 x float> %i.cg, %i.ey
  %i.fh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ff, <4 x float> nofpclass(nan inf) %i.ci, <4 x float> nofpclass(nan inf) %i.fg)
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fj = call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fi)
  %i.fk = bitcast <8 x bfloat> %i.fj to <2 x i64>
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.079109, i64 %indvars.iv129
  %i.fm = extractelement <2 x i64> %i.fk, i64 0
  store i64 %i.fm, ptr %i.fl, align 1, !tbaa !53
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 4 ; 3 uses
  %i.fn = load i32, ptr %8, align 4, !tbaa !18    ; 3 uses
  %i.fo = trunc i64 %indvars.iv.next130 to i32
  %i.fp = or i32 %i.fo, 3
  %i.fq = icmp slt i32 %i.fp, %i.fn
  br i1 %i.fq, label %bb.e, label %.preheader.loopexit, !llvm.loop !61

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %.lr.ph108 ], [ %indvars.iv132.ph, %.lr.ph108.preheader ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv132
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !56
  %i.ft = zext i16 %i.fs to i32
  %i.fu = shl nuw i32 %i.ft, 16
  %i.fv = bitcast i32 %i.fu to float
  %i.fw = fmul fast float %i.au, %i.fv
  %29 = trunc nuw i64 %indvars.iv132 to i32
  %30 = add nsw i32 %i.db, %29
  %31 = zext nneg i32 %30 to i64
  %gep = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %31
  %i.fx = load i16, ptr %gep, align 2, !tbaa !56
  %i.fy = zext i16 %i.fx to i32
  %i.fz = shl nuw i32 %i.fy, 16
  %i.ga = bitcast i32 %i.fz to float
  %i.gb = fmul fast float %i.aw, %i.ga
  %i.gc = fadd fast float %i.gb, %i.fw
  %i.gd = bitcast float %i.gc to i32
  %i.ge = lshr i32 %i.gd, 16
  %i.gf = trunc nuw i32 %i.ge to i16
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %.079109, i64 %indvars.iv132
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !56
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %32 = trunc nuw i64 %indvars.iv.next133 to i32
  %33 = icmp sgt i32 %i.db, %32
  br i1 %33, label %.lr.ph108, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph108, %middle.block, %vec.epilog.middle.block, %.preheader
  %34 = getelementptr inbounds nuw i8, ptr %.078110, i64 8
  %35 = sext i32 %i.db to i64
  %i.gh = getelementptr inbounds [2 x i8], ptr %.079109, i64 %35
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.gi = load i32, ptr %6, align 4, !tbaa !18    ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next136, %i.gj
  br i1 %i.gk, label %.lr.ph113, label %._crit_edge114, !llvm.loop !63

._crit_edge119:                                   ; preds = %._crit_edge114, %.lr.ph118, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge119, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_ZN4ncnnL12cubic_coeffsEiiPiPfi(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) unnamed_addr #7 {
bb.a:
  %i.a = sitofp fast i32 %0 to double
  %i.b = sitofp fast i32 %1 to double
  %i.c = fdiv fast double %i.a, %i.b
  %.not = icmp eq i32 %4, 0                       ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %0, -1
  %i.e = sitofp fast i32 %i.d to double
  %i.f = add nsw i32 %1, -1
  %i.g = sitofp fast i32 %i.f to double
  %i.h = fdiv fast double %i.e, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.087 = phi nsz double [ %i.h, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.c
  %i.j = add nsw i32 %0, -2                       ; 3 uses
  %i.k = add nsw i32 %0, -1                       ; 3 uses
  %i.l = add nsw i32 %0, -3                       ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check105 = icmp ult i32 %1, 16
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <16 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat107 = shufflevector <16 x i32> %broadcast.splatinsert106, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert108 = insertelement <16 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat109 = shufflevector <16 x i32> %broadcast.splatinsert108, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert110 = insertelement <16 x double> poison, double %.087, i64 0
  %broadcast.splat111 = shufflevector <16 x double> %broadcast.splatinsert110, <16 x double> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind112 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next127, %vector.body ] ; 2 uses
  %i.n = uitofp nneg <16 x i32> %vec.ind112 to <16 x double> ; 2 uses
  %i.o = fadd fast <16 x double> %i.n, splat (double 5.000000e-01)
  %i.p = fmul fast <16 x double> %i.o, %broadcast.splat111
  %i.q = fadd fast <16 x double> %i.p, splat (double -5.000000e-01)
  %i.r = fmul fast <16 x double> %broadcast.splat111, %i.n
  %i.s = select i1 %.not, <16 x double> %i.q, <16 x double> %i.r
  %i.t = fptrunc <16 x double> %i.s to <16 x float> ; 2 uses
  %i.u = tail call fast <16 x float> @llvm.floor.v16f32(<16 x float> %i.t)
  %i.v = fptosi <16 x float> %i.u to <16 x i32>   ; 5 uses
  %i.w = sitofp fast <16 x i32> %i.v to <16 x float>
  %i.x = fsub fast <16 x float> %i.t, %i.w        ; 5 uses
  %i.y = shl nuw nsw <16 x i64> %vec.ind, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %3, <16 x i64> %i.y ; 6 uses
  %i.z = extractelement <16 x ptr> %wide.gep, i64 0
  %i.aa = fadd fast <16 x float> %i.x, splat (float 1.000000e+00) ; 4 uses
  %i.ab = fsub fast <16 x float> splat (float 1.000000e+00), %i.x ; 3 uses
  %i.ac = fmul fast <16 x float> %i.aa, %i.aa
  %i.ad = fmul fast <16 x float> %i.aa, splat (float 7.500000e-01)
  %i.ae = fsub fast <16 x float> splat (float 3.750000e+00), %i.ad
  %i.af = fmul fast <16 x float> %i.ac, %i.ae
  %i.ag = fmul fast <16 x float> %i.aa, splat (float 6.000000e+00)
  %i.ah = fsub fast <16 x float> %i.af, %i.ag
  %i.ai = fadd fast <16 x float> %i.ah, splat (float 3.000000e+00) ; 4 uses
  %i.aj = fmul fast <16 x float> %i.x, %i.x
  %i.ak = fmul fast <16 x float> %i.x, splat (float 1.250000e+00)
  %i.al = fadd fast <16 x float> %i.ak, splat (float -2.250000e+00)
  %i.am = fmul fast <16 x float> %i.aj, %i.al
  %i.an = fadd fast <16 x float> %i.am, splat (float 1.000000e+00) ; 4 uses
  %wide.gep113 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 4 ; 2 uses
  %i.ao = fmul fast <16 x float> %i.ab, %i.ab
  %i.ap = fmul fast <16 x float> %i.ab, splat (float 1.250000e+00)
  %i.aq = fadd fast <16 x float> %i.ap, splat (float -2.250000e+00)
  %i.ar = fmul fast <16 x float> %i.ao, %i.aq     ; 2 uses
  %i.as = fadd fast <16 x float> %i.ar, splat (float 1.000000e+00) ; 3 uses
  %wide.gep114 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 8 ; 2 uses
  %i.at = fadd fast <16 x float> %i.ar, %i.an
  %i.au = fadd fast <16 x float> %i.at, %i.ai     ; 3 uses
  %i.av = fneg fast <16 x float> %i.au            ; 3 uses
  %wide.gep115 = getelementptr inbounds nuw i8, <16 x ptr> %wide.gep, i64 12 ; 2 uses
  %i.aw = shufflevector <16 x float> %i.ai, <16 x float> %i.an, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ax = shufflevector <16 x float> %i.as, <16 x float> %i.av, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.aw, <32 x float> %i.ax, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec, ptr %i.z, align 4, !tbaa !24
  %i.ay = icmp sgt <16 x i32> %i.v, splat (i32 -1) ; 3 uses
  %i.az = fadd fast <16 x float> %i.an, %i.ai
  %i.ba = fadd fast <16 x float> %i.au, splat (float 1.000000e+00)
  %i.bb = icmp slt <16 x i32> %i.v, splat (i32 1) ; 4 uses
  %predphi = select <16 x i1> %i.ay, <16 x float> %i.az, <16 x float> %i.ba ; 2 uses
  %predphi116 = select <16 x i1> %i.ay, <16 x float> %i.as, <16 x float> %i.av ; 2 uses
  %predphi117 = select <16 x i1> %i.ay, <16 x float> %i.av, <16 x float> zeroinitializer ; 2 uses
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi, <16 x ptr> align 4 %wide.gep, <16 x i1> %i.bb), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi116, <16 x ptr> align 4 %wide.gep113, <16 x i1> %i.bb), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi117, <16 x ptr> align 4 %wide.gep114, <16 x i1> %i.bb), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> zeroinitializer, <16 x ptr> align 4 %wide.gep115, <16 x i1> %i.bb), !tbaa !24
  %i.bc = icmp sgt <16 x i32> %i.v, zeroinitializer ; 4 uses
  %predphi118 = select <16 x i1> %i.bc, <16 x float> %i.an, <16 x float> %predphi116
  %predphi121 = select <16 x i1> %i.bc, <16 x float> %i.ai, <16 x float> %predphi ; 3 uses
  %predphi122 = select <16 x i1> %i.bc, <16 x i32> %i.v, <16 x i32> splat (i32 1) ; 3 uses
  %i.bd = icmp eq <16 x i32> %predphi122, %broadcast.splat ; 4 uses
  %i.be = icmp sge <16 x i32> %predphi122, %broadcast.splat107
  %i.bf = fsub fast <16 x float> splat (float 1.000000e+00), %predphi121
  %i.bg = fsub fast <16 x float> %i.as, %i.au
  %i.bh = select fast <16 x i1> %i.bc, <16 x float> %i.bg, <16 x float> %predphi117
  %i.bi = select <16 x i1> %i.bd, <16 x i1> splat (i1 true), <16 x i1> %i.be ; 5 uses
  %predphi123 = select <16 x i1> %i.bd, <16 x float> %i.bh, <16 x float> %i.bf
  %predphi124 = select <16 x i1> %i.bd, <16 x float> %predphi118, <16 x float> %predphi121
  %predphi125 = select <16 x i1> %i.bd, <16 x float> %predphi121, <16 x float> zeroinitializer
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi123, <16 x ptr> align 4 %wide.gep115, <16 x i1> %i.bi), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi124, <16 x ptr> align 4 %wide.gep114, <16 x i1> %i.bi), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> %predphi125, <16 x ptr> align 4 %wide.gep113, <16 x i1> %i.bi), !tbaa !24
  tail call void @llvm.masked.scatter.v16f32.v16p0(<16 x float> zeroinitializer, <16 x ptr> align 4 %wide.gep, <16 x i1> %i.bi), !tbaa !24
  %predphi126 = select <16 x i1> %i.bi, <16 x i32> %broadcast.splat109, <16 x i32> %predphi122
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  store <16 x i32> %predphi126, ptr %i.bj, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %vec.ind.next127 = add <16 x i32> %vec.ind112, splat (i32 16)
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %n.vec128 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat134 = shufflevector <4 x i32> %broadcast.splatinsert133, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <4 x double> poison, double %.087, i64 0
  %broadcast.splat136 = shufflevector <4 x double> %broadcast.splatinsert135, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert137 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat138 = shufflevector <4 x i64> %broadcast.splatinsert137, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat138, <i64 0, i64 1, i64 2, i64 3>
  %i.bl = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert139 = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %broadcast.splat140 = shufflevector <4 x i32> %broadcast.splatinsert139, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction141 = or disjoint <4 x i32> %broadcast.splat140, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index142 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next162, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind143 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next163, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind144 = phi <4 x i32> [ %induction141, %vec.epilog.ph ], [ %vec.ind.next164, %vec.epilog.vector.body ] ; 2 uses
  %i.bm = uitofp nneg <4 x i32> %vec.ind144 to <4 x double> ; 2 uses
  %i.bn = fadd fast <4 x double> %i.bm, splat (double 5.000000e-01)
  %i.bo = fmul fast <4 x double> %i.bn, %broadcast.splat136
  %i.bp = fadd fast <4 x double> %i.bo, splat (double -5.000000e-01)
  %i.bq = fmul fast <4 x double> %broadcast.splat136, %i.bm
  %i.br = select i1 %.not, <4 x double> %i.bp, <4 x double> %i.bq
  %i.bs = fptrunc <4 x double> %i.br to <4 x float> ; 2 uses
  %i.bt = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.bs)
  %i.bu = fptosi <4 x float> %i.bt to <4 x i32>   ; 5 uses
  %i.bv = sitofp fast <4 x i32> %i.bu to <4 x float>
  %i.bw = fsub fast <4 x float> %i.bs, %i.bv      ; 5 uses
  %i.bx = shl nuw nsw <4 x i64> %vec.ind143, splat (i64 4)
  %wide.gep145 = getelementptr inbounds nuw i8, ptr %3, <4 x i64> %i.bx ; 6 uses
  %i.by = extractelement <4 x ptr> %wide.gep145, i64 0
  %i.bz = fadd fast <4 x float> %i.bw, splat (float 1.000000e+00) ; 4 uses
  %i.ca = fsub fast <4 x float> splat (float 1.000000e+00), %i.bw ; 3 uses
end_hunk_0
