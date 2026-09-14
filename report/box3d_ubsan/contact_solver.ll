Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/contact_solver?download=true
inline.NumInlined: 529
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@b3SolveContacts_Mesh:bb.a
  br i1 %i.cg, label %bb.n, label %bb.m, !prof !11, !nosanitize !10

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @81, i64 %i.aj, i64 %i.ca) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ch = phi ptr [ %3, %bb.k ], [ %i.by, %bb.l ] ; 12 uses
  %i.ci = icmp ne ptr %i.ch, null, !nosanitize !10
  %i.cj = ptrtoint ptr %i.ch to i64, !nosanitize !10 ; 2 uses
  %i.ck = and i64 %i.cj, 3, !nosanitize !10
  %i.cl = icmp eq i64 %i.ck, 0, !nosanitize !10
  %i.cm = and i1 %i.ci, %i.cl, !nosanitize !10
  br i1 %i.cm, label %bb.p, label %bb.o, !prof !11, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @82, i64 %i.cj) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.p:                                             ; preds = %bb.n
  %.sroa.0651.0.copyload = load <2 x float>, ptr %i.ch, align 4 ; 2 uses
  %.sroa.10656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %.sroa.10656.0.copyload = load float, ptr %.sroa.10656.0..sroa_idx, align 4, !tbaa !107 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 12 ; 2 uses
  %.sroa.0639.0.copyload = load <2 x float>, ptr %i.cn, align 4 ; 2 uses
  %.sroa.16648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 20 ; 2 uses
  %.sroa.16648.0.copyload = load float, ptr %.sroa.16648.0..sroa_idx, align 4, !tbaa !107 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 36
  %.sroa.0637.0.copyload = load <2 x float>, ptr %i.co, align 4 ; 6 uses
  %.sroa.4638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 44
  %.sroa.4638.0.copyload = load <2 x float>, ptr %.sroa.4638.0..sroa_idx, align 4 ; 5 uses
  %i.cp = icmp eq i32 %i.bj, -1
  br i1 %i.cp, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = sext i32 %i.bj to i64                   ; 2 uses
  %i.cr = getelementptr inbounds [56 x i8], ptr %i.u, i64 %i.cq
  %i.cs = mul nsw i64 %i.cq, 56
  %i.ct = add i64 %i.cs, %i.aj, !nosanitize !10   ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 0
  %i.cv = xor i1 %i.ak, %i.cu
  %i.cw = icmp uge i64 %i.ct, %i.aj, !nosanitize !10
  %i.cx = icmp slt i32 %i.bj, 0
  %i.cy = xor i1 %i.cx, %i.cw
  %i.cz = and i1 %i.cv, %i.cy, !nosanitize !10
  br i1 %i.cz, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @83, i64 %i.aj, i64 %i.ct) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.da = phi ptr [ %3, %bb.p ], [ %i.cr, %bb.q ] ; 12 uses
  %i.db = icmp ne ptr %i.da, null, !nosanitize !10
  %i.dc = ptrtoint ptr %i.da to i64, !nosanitize !10 ; 2 uses
  %i.dd = and i64 %i.dc, 3, !nosanitize !10
  %i.de = icmp eq i64 %i.dd, 0, !nosanitize !10
  %i.df = and i1 %i.db, %i.de, !nosanitize !10
  br i1 %i.df, label %bb.u, label %bb.t, !prof !11, !nosanitize !10

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @84, i64 %i.dc) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.u:                                             ; preds = %bb.s
  %.sroa.0623.0.copyload = load <2 x float>, ptr %i.da, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !107 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 12 ; 2 uses
  %.sroa.0612.0.copyload = load <2 x float>, ptr %i.dg, align 4 ; 2 uses
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 20 ; 2 uses
  %.sroa.16.0.copyload = load float, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !107 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  %.sroa.0610.0.copyload = load <2 x float>, ptr %i.dh, align 4 ; 6 uses
  %.sroa.4611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 44
  %.sroa.4611.0.copyload = load <2 x float>, ptr %.sroa.4611.0..sroa_idx, align 4 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.sroa.0606.0.copyload = load <2 x float>, ptr %i.di, align 4 ; 2 uses
  %.sroa.2607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %.sroa.2607.0.copyload = load float, ptr %.sroa.2607.0..sroa_idx, align 4
  %.sroa.0604.0.copyload = load <2 x float>, ptr %i.dj, align 4 ; 2 uses
  %.sroa.2605.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %.sroa.2605.0.copyload = load float, ptr %.sroa.2605.0..sroa_idx, align 4
  %foldExtExtBinop = fsub <2 x float> %.sroa.0606.0.copyload, %.sroa.0604.0.copyload
  %i.dk = shufflevector <2 x float> %.sroa.0606.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dl = insertelement <2 x float> %i.dk, float %.sroa.2607.0.copyload, i64 0
  %i.dm = shufflevector <2 x float> %.sroa.0604.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dn = insertelement <2 x float> %i.dm, float %.sroa.2605.0.copyload, i64 0
  %i.do = fsub <2 x float> %i.dl, %i.dn
  %.sroa.41134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 108
  %.sroa.41134.0.copyload = load float, ptr %.sroa.41134.0..sroa_idx, align 4, !tbaa !107 ; 2 uses
  %.sroa.61136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 112
  %.sroa.61136.0.copyload = load float, ptr %.sroa.61136.0..sroa_idx, align 8, !tbaa !107
  %i.dp = getelementptr inbounds nuw i8, ptr %i.at, i64 152
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !117 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.at, i64 160
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !208 ; 2 uses
  %i.dt = icmp sgt i32 %i.bf, 0
  br i1 %i.dt, label %.lr.ph2574, label %._crit_edge2575

.lr.ph2574:                                       ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.at, i64 104
  %.sroa.01133.0.copyload = load float, ptr %i.du, align 8, !tbaa !107
  %.sroa.09.4.vec.extract13.i.i = extractelement <2 x float> %.sroa.0610.0.copyload, i64 1
  %.sroa.09.4.vec.extract13.i.i736 = extractelement <2 x float> %.sroa.0637.0.copyload, i64 1
  %i.dv = fmul float %.sroa.01133.0.copyload, %.sroa.41134.0.copyload
  %i.dw = fcmp ogt float %i.ds, 0.000000e+00
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 124
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 148
  %i.dx = getelementptr inbounds nuw i8, ptr %i.at, i64 116
  %.sroa.6.0..sroa_idx1129 = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 140
  %wide.trip.count3645 = zext nneg i32 %i.bf to i64
  %i.dy = insertelement <2 x float> poison, float %.sroa.16.0.copyload, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %.sroa.16648.0.copyload, i64 1
  %i.ea = insertelement <2 x float> poison, float %.sroa.35.0.copyload, i64 0 ; 2 uses
  %i.eb = insertelement <2 x float> %i.ea, float %.sroa.111145.0.copyload, i64 1
  %i.ec = insertelement <2 x float> poison, float %.sroa.351199.0.copyload, i64 0
  %i.ed = insertelement <2 x float> %i.ec, float %.sroa.111175.0.copyload, i64 1
  %i.ee = extractelement <2 x float> %i.bt, i64 0
  %i.ef = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eh = extractelement <2 x float> %i.bo, i64 0
  %i.ei = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ek = insertelement <2 x float> poison, float %.sroa.23.0.copyload, i64 0 ; 2 uses
  %i.el = insertelement <2 x float> %i.ek, float %.sroa.231187.0.copyload, i64 1 ; 2 uses
  %i.em = insertelement <2 x float> %i.ea, float %.sroa.351199.0.copyload, i64 1 ; 3 uses
  %i.en = insertelement <2 x float> poison, float %.sroa.111175.0.copyload, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %.sroa.23.0.copyload, i64 1
  %i.ep = insertelement <2 x float> poison, float %.sroa.111145.0.copyload, i64 0 ; 2 uses
  %i.eq = insertelement <2 x float> %i.ep, float %.sroa.231187.0.copyload, i64 1 ; 2 uses
  %i.er = insertelement <2 x float> %i.ek, float %.sroa.111175.0.copyload, i64 1
  %i.es = shufflevector <2 x float> %i.bt, <2 x float> %i.bs, <2 x i32> <i32 3, i32 1>
  %i.et = shufflevector <2 x float> %i.bv, <2 x float> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.eu = shufflevector <2 x float> %i.bo, <2 x float> %i.bn, <2 x i32> <i32 3, i32 1>
  %i.ev = shufflevector <2 x float> %i.bu, <2 x float> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.ew = insertelement <2 x float> %i.ep, float %.sroa.111175.0.copyload, i64 1
  %i.ex = shufflevector <2 x float> %.sroa.4611.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ey = shufflevector <2 x float> %.sroa.4611.0.copyload, <2 x float> %.sroa.0610.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ez = shufflevector <2 x float> %.sroa.0610.0.copyload, <2 x float> %.sroa.4611.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.fa = shufflevector <2 x float> %.sroa.4638.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fb = shufflevector <2 x float> %.sroa.4638.0.copyload, <2 x float> %.sroa.0637.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fc = shufflevector <2 x float> %.sroa.0637.0.copyload, <2 x float> %.sroa.4638.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.fd = shufflevector <2 x float> %.sroa.4611.0.copyload, <2 x float> %.sroa.4638.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fe = shufflevector <2 x float> %.sroa.0610.0.copyload, <2 x float> %.sroa.0637.0.copyload, <2 x i32> <i32 0, i32 2>
  %shift4650 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph2574, %bb.aq
  %indvars.iv3642 = phi i64 [ 0, %.lr.ph2574 ], [ %indvars.iv.next3643, %bb.aq ] ; 3 uses
  %.sroa.10656.02572 = phi float [ %.sroa.10656.0.copyload, %.lr.ph2574 ], [ %.sroa.10656.2, %bb.aq ] ; 2 uses
  %.sroa.0651.02571 = phi <2 x float> [ %.sroa.0651.0.copyload, %.lr.ph2574 ], [ %.sroa.0651.2, %bb.aq ] ; 2 uses
  %.sroa.0639.02569 = phi <2 x float> [ %.sroa.0639.0.copyload, %.lr.ph2574 ], [ %.sroa.0639.3, %bb.aq ] ; 2 uses
  %.sroa.10.02568 = phi float [ %.sroa.10.0.copyload, %.lr.ph2574 ], [ %.sroa.10.2, %bb.aq ] ; 2 uses
  %.sroa.0623.02567 = phi <2 x float> [ %.sroa.0623.0.copyload, %.lr.ph2574 ], [ %.sroa.0623.2, %bb.aq ] ; 2 uses
  %.sroa.0612.02565 = phi <2 x float> [ %.sroa.0612.0.copyload, %.lr.ph2574 ], [ %.sroa.0612.3, %bb.aq ] ; 2 uses
  %i.ff = phi <2 x float> [ %i.dz, %.lr.ph2574 ], [ %i.wn, %bb.aq ] ; 2 uses
  %i.fg = load ptr, ptr %i.at, align 8, !tbaa !118 ; 3 uses
  %i.fh = getelementptr inbounds nuw [308 x i8], ptr %i.fg, i64 %indvars.iv3642 ; 21 uses
  %i.fi = mul nuw nsw i64 %indvars.iv3642, 308
  %i.fj = ptrtoint ptr %i.fg to i64, !nosanitize !10 ; 3 uses
  %i.fk = add i64 %i.fi, %i.fj, !nosanitize !10   ; 3 uses
  %i.fl = icmp ne ptr %i.fg, null, !nosanitize !10 ; 2 uses
  %i.fm = icmp eq i64 %i.fk, 0
  %i.fn = xor i1 %i.fl, %i.fm
  %i.fo = icmp uge i64 %i.fk, %i.fj, !nosanitize !10
  %i.fp = and i1 %i.fn, %i.fo, !nosanitize !10
  br i1 %i.fp, label %bb.x, label %bb.w, !prof !11, !nosanitize !10

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @85, i64 %i.fj, i64 %i.fk) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.x:                                             ; preds = %bb.v
  %i.fq = ptrtoint ptr %i.fh to i64, !nosanitize !10 ; 5 uses
  %i.fr = and i64 %i.fq, 3, !nosanitize !10
  %i.fs = icmp eq i64 %i.fr, 0, !nosanitize !10
  %i.ft = and i1 %i.fl, %i.fs
  br i1 %i.ft, label %bb.z, label %bb.y, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @86, i64 %i.fq) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %bb.x
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 192
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !127 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 196 ; 2 uses
  %.sroa.6563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 204
  %.sroa.6563.0.copyload = load float, ptr %.sroa.6563.0..sroa_idx, align 4, !tbaa !107 ; 4 uses
  %i.fx = icmp sgt i32 %i.fv, 0
  br i1 %i.fx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z
  %.sroa.0560.0.copyload = load <2 x float>, ptr %i.fw, align 4 ; 3 uses
  %.sroa.0.4.vec.extract.i762 = extractelement <2 x float> %.sroa.0560.0.copyload, i64 1 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fv to i64
  %i.fy = shufflevector <2 x float> %.sroa.0560.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fz = insertelement <2 x float> %i.fy, float %.sroa.6563.0.copyload, i64 0 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ai ] ; 4 uses
  %.sroa.10656.12554 = phi float [ %.sroa.10656.02572, %.lr.ph ], [ %6, %bb.ai ] ; 2 uses
  %.sroa.0651.12553 = phi <2 x float> [ %.sroa.0651.02571, %.lr.ph ], [ %15, %bb.ai ] ; 3 uses
  %.sroa.0639.12551 = phi <2 x float> [ %.sroa.0639.02569, %.lr.ph ], [ %i.lm, %bb.ai ] ; 4 uses
  %.sroa.10.12550 = phi float [ %.sroa.10.02568, %.lr.ph ], [ %i.lv, %bb.ai ] ; 2 uses
  %.sroa.0623.12549 = phi <2 x float> [ %.sroa.0623.02567, %.lr.ph ], [ %i.lt, %bb.ai ] ; 3 uses
  %.sroa.0612.12547 = phi <2 x float> [ %.sroa.0612.02565, %.lr.ph ], [ %i.me, %bb.ai ] ; 4 uses
  %i.ga = phi <2 x float> [ %i.ff, %.lr.ph ], [ %i.mh, %bb.ai ] ; 5 uses
  %i.gb = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.ml, %bb.ai ]
  %exitcond.not = icmp eq i64 %indvars.iv, 5
  br i1 %exitcond.not, label %bb.ab, label %bb.ac, !prof !89, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_out_of_bounds_abort(ptr nonnull @87, i64 5) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ac:                                            ; preds = %bb.aa
  %i.gc = getelementptr inbounds nuw [48 x i8], ptr %i.fh, i64 %indvars.iv ; 9 uses
  %i.gd = mul nuw nsw i64 %indvars.iv, 48
  %i.ge = add i64 %i.gd, %i.fq, !nosanitize !10   ; 2 uses
  %.not734 = icmp ult i64 %i.ge, %i.fq, !nosanitize !10
  br i1 %.not734, label %bb.ad, label %bb.ae, !prof !89, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @88, i64 %i.fq, i64 %i.ge) #10, !nosanitize !10
  unreachable, !nosanitize !10

bb.ae:                                            ; preds = %bb.ac
  %.sroa.6541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.sroa.6541.0.copyload = load float, ptr %.sroa.6541.0..sroa_idx, align 4, !tbaa !107 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %.sroa.0538.0.copyload = load <2 x float>, ptr %i.gc, align 4 ; 8 uses
  %.sroa.0535.0.copyload = load <2 x float>, ptr %i.gf, align 4 ; 8 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !107 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.gh = fmul <2 x float> %i.ex, %.sroa.0535.0.copyload
  %i.gi = fmul float %.sroa.09.4.vec.extract13.i.i, %.sroa.6.0.copyload
  %shift = shufflevector <2 x float> %.sroa.0535.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4642 = fmul <2 x float> %.sroa.4611.0.copyload, %shift
  %i.gj = fmul <2 x float> %i.ey, %.sroa.0535.0.copyload ; 2 uses
  %i.gk = shufflevector <2 x float> %.sroa.0535.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gl = insertelement <2 x float> %i.gk, float %.sroa.6.0.copyload, i64 0 ; 2 uses
  %i.gm = fmul <2 x float> %.sroa.0610.0.copyload, %i.gl ; 2 uses
  %i.gn = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.go = insertelement <2 x float> %i.gn, float %i.gi, i64 0
  %i.gp = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gq = shufflevector <2 x float> %foldExtExtBinop4642, <2 x float> %i.gp, <2 x i32> <i32 0, i32 3>
  %i.gr = fsub <2 x float> %i.go, %i.gq
  %i.gs = insertelement <2 x float> %i.gk, float %.sroa.6.0.copyload, i64 1
  %i.gt = fmul <2 x float> %i.ex, %i.gs
  %i.gu = fsub <2 x float> %i.gj, %i.gm
  %i.gv = fadd <2 x float> %i.gh, %i.gr           ; 2 uses
  %i.gw = fmul <2 x float> %i.fa, %.sroa.0538.0.copyload
  %i.gx = fmul float %.sroa.09.4.vec.extract13.i.i736, %.sroa.6541.0.copyload
  %shift4644 = shufflevector <2 x float> %.sroa.0538.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4645 = fmul <2 x float> %.sroa.4638.0.copyload, %shift4644
  %i.gy = fmul <2 x float> %i.fb, %.sroa.0538.0.copyload ; 2 uses
  %i.gz = shufflevector <2 x float> %.sroa.0538.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ha = insertelement <2 x float> %i.gz, float %.sroa.6541.0.copyload, i64 0 ; 2 uses
  %i.hb = fmul <2 x float> %.sroa.0637.0.copyload, %i.ha ; 2 uses
  %i.hc = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hd = insertelement <2 x float> %i.hc, float %i.gx, i64 0
  %i.he = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hf = shufflevector <2 x float> %foldExtExtBinop4645, <2 x float> %i.he, <2 x i32> <i32 0, i32 3>
  %i.hg = fsub <2 x float> %i.hd, %i.hf
  %i.hh = insertelement <2 x float> %i.gz, float %.sroa.6541.0.copyload, i64 1
  %i.hi = fmul <2 x float> %i.fa, %i.hh
  %i.hj = fsub <2 x float> %i.gy, %i.hb
  %i.hk = fadd <2 x float> %i.gw, %i.hg           ; 2 uses
  %i.hl = fadd <2 x float> %i.gt, %i.gu           ; 2 uses
  %i.hm = fmul <2 x float> %.sroa.0610.0.copyload, %i.hl
  %i.hn = fmul <2 x float> %i.ez, %i.gv
  %i.ho = fsub <2 x float> %i.hm, %i.hn
  %i.hp = fmul <2 x float> %i.ho, splat (float 2.000000e+00)
  %i.hq = fadd <2 x float> %i.gl, %i.hp
  %i.hr = fadd <2 x float> %i.hi, %i.hj           ; 2 uses
  %i.hs = fmul <2 x float> %.sroa.0637.0.copyload, %i.hr
  %i.ht = fmul <2 x float> %i.fc, %i.hk
  %i.hu = fsub <2 x float> %i.hs, %i.ht
  %i.hv = fmul <2 x float> %i.hu, splat (float 2.000000e+00)
  %i.hw = fadd <2 x float> %i.ha, %i.hv
  %i.hx = fsub <2 x float> %i.hq, %i.hw
  %i.hy = fadd <2 x float> %i.do, %i.hx
  %i.hz = fmul <2 x float> %i.fz, %i.hy           ; 2 uses
  %i.ia = shufflevector <2 x float> %i.gv, <2 x float> %i.hk, <2 x i32> <i32 0, i32 2>
  %i.ib = fmul <2 x float> %i.fd, %i.ia
  %i.ic = shufflevector <2 x float> %i.hl, <2 x float> %i.hr, <2 x i32> <i32 1, i32 3>
  %i.id = fmul <2 x float> %i.fe, %i.ic
  %i.ie = fsub <2 x float> %i.ib, %i.id
  %i.if = fmul <2 x float> %i.ie, splat (float 2.000000e+00)
  %i.ig = shufflevector <2 x float> %.sroa.0535.0.copyload, <2 x float> %.sroa.0538.0.copyload, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ih = fadd <2 x float> %i.ig, %i.if           ; 2 uses
  %shift4647 = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4648 = fsub <2 x float> %i.ih, %shift4647
  %foldExtExtBinop4651 = fadd <2 x float> %shift4650, %foldExtExtBinop4648
  %i.ii = extractelement <2 x float> %foldExtExtBinop4651, i64 0
  %i.ij = fmul float %.sroa.0.4.vec.extract.i762, %i.ii
  %i.ik = extractelement <2 x float> %i.hz, i64 1
  %i.il = fadd float %i.ik, %i.ij
  %i.im = extractelement <2 x float> %i.hz, i64 0
  %i.in = fadd float %i.im, %i.il
  %i.io = load float, ptr %i.gg, align 4, !tbaa !135
  %i.ip = fadd float %i.in, %i.io                 ; 3 uses
  %i.iq = fcmp ogt float %i.ip, 0.000000e+00
  br i1 %i.iq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ir = fmul float %i.ae, %i.ip
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  br i1 %2, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.is = fmul float %i.dv, %i.ip                 ; 2 uses
  %i.it = fcmp ogt float %i.is, %i.al
  %i.iu = select i1 %i.it, float %i.is, float %i.al
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.0712 = phi float [ 0.000000e+00, %bb.af ], [ %.sroa.61136.0.copyload, %bb.ah ], [ 0.000000e+00, %bb.ag ]
  %.0711 = phi float [ 1.000000e+00, %bb.af ], [ %.sroa.41134.0.copyload, %bb.ah ], [ 1.000000e+00, %bb.ag ]
  %.0710 = phi float [ %i.ir, %bb.af ], [ %i.iu, %bb.ah ], [ 0.000000e+00, %bb.ag ]
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gc, i64 32 ; 2 uses
  %i.ix = shufflevector <2 x float> %.sroa.0535.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iy = insertelement <2 x float> %i.ix, float %.sroa.6.0.copyload, i64 1
  %i.iz = fmul <2 x float> %.sroa.0612.12547, %i.iy
  %i.ja = shufflevector <2 x float> %.sroa.0612.12547, <2 x float> %i.ga, <2 x i32> <i32 1, i32 2>
  %i.jb = fmul <2 x float> %i.ja, %.sroa.0535.0.copyload
  %i.jc = fsub <2 x float> %i.iz, %i.jb
  %i.jd = shufflevector <2 x float> %.sroa.0623.12549, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.je = insertelement <2 x float> %i.jd, float %.sroa.10.12550, i64 0
  %i.jf = fadd <2 x float> %i.je, %i.jc
  %i.jg = shufflevector <2 x float> %.sroa.0538.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jh = insertelement <2 x float> %i.jg, float %.sroa.6541.0.copyload, i64 1
  %i.ji = fmul <2 x float> %.sroa.0639.12551, %i.jh
  %i.jj = shufflevector <2 x float> %.sroa.0639.12551, <2 x float> %i.ga, <2 x i32> <i32 1, i32 3>
  %i.jk = fmul <2 x float> %i.jj, %.sroa.0538.0.copyload
  %i.jl = fsub <2 x float> %i.ji, %i.jk
  %i.jm = shufflevector <2 x float> %.sroa.0651.12553, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jn = insertelement <2 x float> %i.jm, float %.sroa.10656.12554, i64 0
  %i.jo = fadd <2 x float> %i.jn, %i.jl
  %i.jp = fsub <2 x float> %i.jf, %i.jo
  %i.jq = fmul <2 x float> %i.fz, %i.jp           ; 2 uses
  %i.jr = shufflevector <2 x float> %.sroa.0535.0.copyload, <2 x float> %.sroa.0538.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.js = fmul <2 x float> %i.ga, %i.jr
  %i.jt = shufflevector <2 x float> %.sroa.0612.12547, <2 x float> %.sroa.0639.12551, <2 x i32> <i32 0, i32 2>
  %i.ju = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.jv = insertelement <2 x float> %i.ju, float %.sroa.6541.0.copyload, i64 1 ; 3 uses
  %i.jw = fmul <2 x float> %i.jt, %i.jv
  %i.jx = fsub <2 x float> %i.js, %i.jw
  %i.jy = shufflevector <2 x float> %.sroa.0623.12549, <2 x float> %.sroa.0651.12553, <2 x i32> <i32 1, i32 3>
  %i.jz = fadd <2 x float> %i.jy, %i.jx           ; 2 uses
  %shift4653 = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4654 = fsub <2 x float> %i.jz, %shift4653
  %i.ka = extractelement <2 x float> %foldExtExtBinop4654, i64 0
  %i.kb = fmul float %.sroa.0.4.vec.extract.i762, %i.ka
  %i.kc = extractelement <2 x float> %i.jq, i64 1
  %i.kd = fadd float %i.kc, %i.kb
  %i.ke = extractelement <2 x float> %i.jq, i64 0
  %i.kf = fadd float %i.ke, %i.kd
  %i.kg = fmul float %i.kf, %.0711
  %i.kh = fadd float %i.kg, %.0710
  %i.ki = load float, ptr %i.iv, align 4, !tbaa !136
  %i.kj = fneg float %i.ki
  %i.kk = fmul float %i.kh, %i.kj
  %i.kl = load float, ptr %i.iw, align 4, !tbaa !133 ; 3 uses
  %i.km = fmul float %.0712, %i.kl
  %i.kn = fsub float %i.kk, %i.km
  %i.ko = fadd float %i.kl, %i.kn                 ; 2 uses
  %i.kp = fcmp ogt float %i.ko, 0.000000e+00
  %i.kq = select i1 %i.kp, float %i.ko, float 0.000000e+00 ; 5 uses
  %i.kr = fsub float %i.kq, %i.kl                 ; 2 uses
  store float %i.kq, ptr %i.iw, align 4, !tbaa !133
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gc, i64 36 ; 2 uses
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !134
  %i.ku = fadd float %i.kq, %i.kt
  store float %i.ku, ptr %i.ks, align 4, !tbaa !134
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gc, i64 44
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !138
  %4 = fmul float %.sroa.6563.0.copyload, %i.kr   ; 3 uses
  %5 = fmul float %i.bl, %4
  %6 = fsub float %.sroa.10656.12554, %5          ; 2 uses
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %9 = fmul <2 x float> %i.ig, %8
  %10 = fmul <2 x float> %i.jr, %8
  %11 = insertelement <2 x float> poison, float %i.kr, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x float> %.sroa.0560.0.copyload, %12 ; 4 uses
  %14 = fmul <2 x float> %i.ej, %13
  %15 = fsub <2 x float> %.sroa.0651.12553, %14   ; 2 uses
  %16 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kx = fmul <2 x float> %i.jv, %16
  %i.ky = fsub <2 x float> %9, %i.kx              ; 3 uses
  %17 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kz = fmul <2 x float> %i.jv, %17
  %i.la = fsub <2 x float> %i.kz, %10             ; 3 uses
  %i.lb = fmul <2 x float> %i.jr, %16
  %i.lc = fmul <2 x float> %i.ig, %17
  %i.ld = fsub <2 x float> %i.lb, %i.lc           ; 3 uses
  %i.le = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lf = fmul <2 x float> %i.bn, %i.le
  %i.lg = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lh = fmul <2 x float> %i.bo, %i.lg
  %i.li = fadd <2 x float> %i.lf, %i.lh
  %i.lj = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lk = fmul <2 x float> %i.bu, %i.lj
  %i.ll = fadd <2 x float> %i.lk, %i.li
  %i.lm = fsub <2 x float> %.sroa.0639.12551, %i.ll ; 2 uses
  %i.ln = fmul <2 x float> %i.ew, %i.ky
  %i.lo = fmul <2 x float> %i.el, %i.la
  %i.lp = fadd <2 x float> %i.ln, %i.lo
  %i.lq = fmul <2 x float> %i.em, %i.ld
  %i.lr = fadd <2 x float> %i.lq, %i.lp           ; 2 uses
  %i.ls = fmul <2 x float> %i.eg, %13
  %i.lt = fadd <2 x float> %.sroa.0623.12549, %i.ls ; 2 uses
  %i.lu = fmul float %i.bq, %4
  %i.lv = fadd float %.sroa.10.12550, %i.lu       ; 2 uses
  %i.lw = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = fmul <2 x float> %i.bs, %i.lw
  %i.ly = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lz = fmul <2 x float> %i.bt, %i.ly
  %i.ma = fadd <2 x float> %i.lx, %i.lz
  %i.mb = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mc = fmul <2 x float> %i.bv, %i.mb
  %i.md = fadd <2 x float> %i.mc, %i.ma
  %i.me = fadd <2 x float> %.sroa.0612.12547, %i.md ; 2 uses
  %i.mf = fadd <2 x float> %i.ga, %i.lr
  %i.mg = fsub <2 x float> %i.ga, %i.lr
  %i.mh = shufflevector <2 x float> %i.mf, <2 x float> %i.mg, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mi = fmul float %i.kq, %i.kw
  %i.mj = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.mk = insertelement <2 x float> %i.mj, float %i.kq, i64 1
  %i.ml = fadd <2 x float> %i.gb, %i.mk           ; 2 uses
  %exitcond3641.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond3641.not, label %._crit_edge, label %bb.aa, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.ai, %bb.z
  %.sroa.0612.1.lcssa = phi <2 x float> [ %.sroa.0612.02565, %bb.z ], [ %i.me, %bb.ai ] ; 3 uses
  %.sroa.0623.1.lcssa = phi <2 x float> [ %.sroa.0623.02567, %bb.z ], [ %i.lt, %bb.ai ] ; 3 uses
  %.sroa.10.1.lcssa = phi float [ %.sroa.10.02568, %bb.z ], [ %i.lv, %bb.ai ] ; 3 uses
  %.sroa.0639.1.lcssa = phi <2 x float> [ %.sroa.0639.02569, %bb.z ], [ %i.lm, %bb.ai ] ; 3 uses
  %.sroa.0651.1.lcssa = phi <2 x float> [ %.sroa.0651.02571, %bb.z ], [ %15, %bb.ai ] ; 3 uses
  %.sroa.10656.1.lcssa = phi float [ %.sroa.10656.02572, %bb.z ], [ %6, %bb.ai ] ; 3 uses
  %i.mm = phi <2 x float> [ %i.ff, %bb.z ], [ %i.mh, %bb.ai ] ; 5 uses
  %i.mn = phi <2 x float> [ zeroinitializer, %bb.z ], [ %i.ml, %bb.ai ] ; 3 uses
  br i1 %2, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %shift4656 = shufflevector <2 x float> %i.mm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4657 = fsub <2 x float> %i.mm, %shift4656
  %i.mo = extractelement <2 x float> %foldExtExtBinop4657, i64 0
  %.sroa.0328.0.copyload = load <2 x float>, ptr %i.fw, align 4 ; 2 uses
  %i.mp = fsub <2 x float> %.sroa.0612.1.lcssa, %.sroa.0639.1.lcssa
  %i.mq = fmul <2 x float> %i.mp, %.sroa.0328.0.copyload ; 2 uses
  %shift4659 = shufflevector <2 x float> %i.mq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4660 = fadd <2 x float> %i.mq, %shift4659
  %i.mr = extractelement <2 x float> %foldExtExtBinop4660, i64 0
  %i.ms = fmul float %i.mo, %.sroa.6563.0.copyload
  %i.mt = fadd float %i.ms, %i.mr
  %i.mu = extractelement <2 x float> %i.mn, i64 0
  %i.mv = fmul float %i.dq, %i.mu                 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.fh, i64 256
  %i.mx = getelementptr inbounds nuw i8, ptr %i.fh, i64 260 ; 2 uses
  %i.my = load float, ptr %i.mw, align 4, !tbaa !139
  %i.mz = load float, ptr %i.mx, align 4, !tbaa !141 ; 2 uses
  %i.na = fmul float %i.mt, %i.my
  %i.nb = fsub float %i.mz, %i.na                 ; 3 uses
  %i.nc = fneg float %i.mv                        ; 2 uses
  %i.nd = fcmp olt float %i.nb, %i.nc
  %i.ne = fcmp olt float %i.mv, %i.nb
  %i.nf = select i1 %i.ne, float %i.mv, float %i.nb
  %i.ng = select i1 %i.nd, float %i.nc, float %i.nf ; 2 uses
  store float %i.ng, ptr %i.mx, align 4, !tbaa !141
  %i.nh = fsub float %i.ng, %i.mz                 ; 2 uses
  %i.ni = fmul float %.sroa.6563.0.copyload, %i.nh
  %i.nj = insertelement <2 x float> poison, float %i.nh, i64 0
  %i.nk = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nl = fmul <2 x float> %.sroa.0328.0.copyload, %i.nk ; 7 uses
  %foldExtExtBinop4662 = fmul <2 x float> %i.bn, %i.nl
  %i.nm = extractelement <2 x float> %i.nl, i64 1 ; 2 uses
  %i.nn = fmul float %i.eh, %i.nm
  %i.no = fmul <2 x float> %i.eu, %i.nl           ; 2 uses
  %i.np = fmul <2 x float> %i.eq, %i.nl
  %i.nq = fmul <2 x float> %i.eo, %i.nl
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ns = fadd <2 x float> %i.nr, %i.np
  %i.nt = insertelement <2 x float> poison, float %i.ni, i64 0
  %i.nu = shufflevector <2 x float> %i.nt, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.nv = fmul <2 x float> %i.em, %i.nu
  %i.nw = fadd <2 x float> %i.nv, %i.ns           ; 2 uses
  %foldExtExtBinop4664 = fmul <2 x float> %i.bs, %i.nl
  %i.nx = fmul float %i.ee, %i.nm
  %i.ny = fmul <2 x float> %i.es, %i.nl           ; 2 uses
  %i.nz = fmul <2 x float> %i.bu, %i.nu
  %i.oa = fmul <2 x float> %i.bv, %i.nu
  %i.ob = shufflevector <2 x float> %i.no, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.oc = shufflevector <2 x float> %foldExtExtBinop4662, <2 x float> %i.ob, <2 x i32> <i32 0, i32 3>
  %i.od = insertelement <2 x float> %i.no, float %i.nn, i64 0
  %i.oe = fadd <2 x float> %i.oc, %i.od
  %i.of = fadd <2 x float> %i.nz, %i.oe
  %i.og = fsub <2 x float> %.sroa.0639.1.lcssa, %i.of ; 3 uses
  %i.oh = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.oi = shufflevector <2 x float> %foldExtExtBinop4664, <2 x float> %i.oh, <2 x i32> <i32 0, i32 3>
  %i.oj = insertelement <2 x float> %i.ny, float %i.nx, i64 0
  %i.ok = fadd <2 x float> %i.oi, %i.oj
  %i.ol = fadd <2 x float> %i.oa, %i.ok
  %i.om = fadd <2 x float> %.sroa.0612.1.lcssa, %i.ol ; 3 uses
  %i.on = fadd <2 x float> %i.mm, %i.nw
  %i.oo = fsub <2 x float> %i.mm, %i.nw           ; 2 uses
  %i.op = shufflevector <2 x float> %i.on, <2 x float> %i.oo, <2 x i32> <i32 0, i32 3> ; 4 uses
  br i1 %i.dw, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.oq = getelementptr inbounds nuw i8, ptr %i.fh, i64 288 ; 3 uses
  %i.or = fsub <2 x float> %i.om, %i.og           ; 3 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !107
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !107
  %i.os = insertelement <2 x float> poison, float %.sroa.5.0.copyload, i64 0
  %i.ot = insertelement <2 x float> %i.os, float %.sroa.8.0.copyload, i64 1
  %i.ou = fmul <2 x float> %i.or, %i.ot           ; 2 uses
  %shift4666 = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4667 = fadd <2 x float> %i.ou, %shift4666
  %i.ov = extractelement <2 x float> %foldExtExtBinop4667, i64 0
  %shift4669 = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4670 = fsub <2 x float> %i.op, %shift4669 ; 2 uses
  %i.ow = extractelement <2 x float> %foldExtExtBinop4670, i64 0
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !107
  %i.ox = fmul float %i.ow, %.sroa.11.0.copyload
  %i.oy = fadd float %i.ov, %i.ox
  %.sroa.0236.0.copyload = load <2 x float>, ptr %i.oq, align 4 ; 2 uses
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 296 ; 3 uses
  %.sroa.5238.0.copyload = load float, ptr %.sroa.5238.0..sroa_idx, align 4, !tbaa !107 ; 2 uses
  %i.oz = load <2 x float>, ptr %i.dx, align 4, !tbaa !107
  %i.pa = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pb = fmul <2 x float> %i.pa, %i.oz
  %i.pc = load <2 x float>, ptr %.sroa.6.0..sroa_idx1129, align 8, !tbaa !107
  %i.pd = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pe = fmul <2 x float> %i.pd, %i.pc
  %i.pf = fadd <2 x float> %i.pb, %i.pe
  %i.pg = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !107
  %i.ph = shufflevector <2 x float> %foldExtExtBinop4670, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pi = fmul <2 x float> %i.ph, %i.pg
  %i.pj = fadd <2 x float> %i.pf, %i.pi
  %i.pk = fsub <2 x float> %.sroa.0236.0.copyload, %i.pj ; 5 uses
  %i.pl = fsub float %.sroa.5238.0.copyload, %i.oy ; 5 uses
  store <2 x float> %i.pk, ptr %i.oq, align 4
  store float %i.pl, ptr %.sroa.5238.0..sroa_idx, align 4, !tbaa !107
  %i.pm = extractelement <2 x float> %i.mn, i64 1
  %i.pn = fmul float %i.ds, %i.pm                 ; 3 uses
  %i.po = fmul <2 x float> %i.pk, %i.pk           ; 2 uses
  %shift4672 = shufflevector <2 x float> %i.po, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4673 = fadd <2 x float> %i.po, %shift4672
  %i.pp = extractelement <2 x float> %foldExtExtBinop4673, i64 0
  %i.pq = fmul float %i.pl, %i.pl
  %i.pr = fadd float %i.pq, %i.pp                 ; 2 uses
  %i.ps = fmul float %i.pn, %i.pn
  %i.pt = fadd float %i.ps, f0x34000000
  %i.pu = fcmp ogt float %i.pr, %i.pt
  br i1 %i.pu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %sqrt = call float @llvm.sqrt.f32(float %i.pr)
  %i.pv = fdiv float %i.pn, %sqrt                 ; 2 uses
  %i.pw = insertelement <2 x float> poison, float %i.pv, i64 0
  %i.px = shufflevector <2 x float> %i.pw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.py = fmul <2 x float> %i.pk, %i.px           ; 2 uses
  %i.pz = fmul float %i.pv, %i.pl                 ; 2 uses
  store <2 x float> %i.py, ptr %i.oq, align 4
  store float %i.pz, ptr %.sroa.5238.0..sroa_idx, align 4, !tbaa !107
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %.sroa.2206.0.copyload = phi float [ %i.pl, %bb.ak ], [ %i.pz, %bb.al ]
  %.sroa.0205.0.copyload = phi <2 x float> [ %i.pk, %bb.ak ], [ %i.py, %bb.al ]
  %i.qa = fsub float %.sroa.2206.0.copyload, %.sroa.5238.0.copyload
  %i.qb = fsub <2 x float> %.sroa.0205.0.copyload, %.sroa.0236.0.copyload ; 4 uses
  %i.qc = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qd = insertelement <2 x float> poison, float %i.qa, i64 0
  %i.qe = shufflevector <2 x float> %i.qd, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.qf = fmul <2 x float> %i.bu, %i.qe
  %i.qg = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qh = fmul <2 x float> %i.bn, %i.qg
  %i.qi = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.qj = fmul <2 x float> %i.bo, %i.qi
  %i.qk = fadd <2 x float> %i.qh, %i.qj
  %i.ql = fadd <2 x float> %i.qf, %i.qk
  %i.qm = fsub <2 x float> %i.og, %i.ql
  %i.qn = fmul <2 x float> %i.eq, %i.qb
  %i.qo = fmul <2 x float> %i.er, %i.qc
  %i.qp = fadd <2 x float> %i.qo, %i.qn
  %i.qq = fmul <2 x float> %i.em, %i.qe
  %i.qr = fadd <2 x float> %i.qq, %i.qp           ; 2 uses
  %i.qs = fmul <2 x float> %i.bv, %i.qe
  %i.qt = fmul <2 x float> %i.bs, %i.qg
  %i.qu = fmul <2 x float> %i.bt, %i.qi
  %i.qv = fadd <2 x float> %i.qt, %i.qu
  %i.qw = fadd <2 x float> %i.qs, %i.qv
  %i.qx = fadd <2 x float> %i.om, %i.qw
  %i.qy = fadd <2 x float> %i.op, %i.qr
  %i.qz = fsub <2 x float> %i.op, %i.qr
  %i.ra = shufflevector <2 x float> %i.qy, <2 x float> %i.qz, <2 x i32> <i32 0, i32 3>
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.sroa.0612.2 = phi <2 x float> [ %i.qx, %bb.am ], [ %i.om, %bb.aj ] ; 4 uses
  %.sroa.0639.2 = phi <2 x float> [ %i.qm, %bb.am ], [ %i.og, %bb.aj ] ; 4 uses
  %i.rb = phi <2 x float> [ %i.ra, %bb.am ], [ %i.op, %bb.aj ] ; 4 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.fh, i64 208
  %.sroa.0160.0.copyload = load <2 x float>, ptr %i.rc, align 4 ; 4 uses
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 216
  %.sroa.5162.0.copyload = load float, ptr %.sroa.5162.0..sroa_idx, align 4, !tbaa !107 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.fh, i64 220
  %.sroa.0157.0.copyload = load <2 x float>, ptr %i.rd, align 4 ; 4 uses
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 228
  %.sroa.5159.0.copyload = load float, ptr %.sroa.5159.0..sroa_idx, align 4, !tbaa !107 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.fh, i64 232
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 240
  %.sroa.5156.0.copyload = load float, ptr %.sroa.5156.0..sroa_idx, align 4, !tbaa !107 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.fh, i64 244
  %.sroa.0154.0.copyload = load <2 x float>, ptr %i.re, align 4 ; 6 uses
  %.sroa.0151.0.copyload = load <2 x float>, ptr %i.rf, align 4 ; 6 uses
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 252
  %.sroa.5153.0.copyload = load float, ptr %.sroa.5153.0..sroa_idx, align 4, !tbaa !107 ; 3 uses
  %i.rg = shufflevector <2 x float> %.sroa.0154.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i992 = extractelement <2 x float> %.sroa.0154.0.copyload, i64 0
  %i.rh = shufflevector <2 x float> %.sroa.0151.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i1008 = extractelement <2 x float> %.sroa.0151.0.copyload, i64 0
  %i.ri = getelementptr inbounds nuw i8, ptr %i.fh, i64 300
  %i.rj = fmul <2 x float> %.sroa.0612.2, %i.rh   ; 2 uses
  %shift4675 = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4676 = fsub <2 x float> %i.rj, %shift4675
  %i.rk = extractelement <2 x float> %foldExtExtBinop4676, i64 0
  %i.rl = fadd float %.sroa.10.1.lcssa, %i.rk
  %i.rm = fmul <2 x float> %.sroa.0639.2, %i.rg   ; 2 uses
  %shift4678 = shufflevector <2 x float> %i.rm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4679 = fsub <2 x float> %i.rm, %shift4678
  %i.rn = extractelement <2 x float> %foldExtExtBinop4679, i64 0
  %i.ro = fadd float %.sroa.10656.1.lcssa, %i.rn
  %i.rp = fsub float %i.rl, %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.fh, i64 264
  %i.rr = load <2 x float>, ptr %i.rq, align 4    ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.fh, i64 272
  %i.rt = load <2 x float>, ptr %i.rs, align 4    ; 2 uses
end_hunk_0
