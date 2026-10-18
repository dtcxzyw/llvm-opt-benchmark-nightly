Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dtfilter_cpu?download=true
inline.NumInlined: 1511
inline.NumDeleted: 353
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZNK2cv8ximgproc11DTFilterCPU16FilterIC_horPassINS_3VecIfLi3EEEEclERKNS_5RangeE:bb.a
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !158    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %i.f = sext i32 %i.a to i64                     ; 2 uses
  %i.g = mul i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !159
  %i.k = icmp slt i32 %i.a, %i.j
  br i1 %i.k, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !186
  br label %bb.b

._crit_edge112:                                   ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph111, %._crit_edge
  %i.q = phi ptr [ %.pre, %.lr.ph111 ], [ %i.bv, %._crit_edge ] ; 3 uses
  %indvars.iv114 = phi i64 [ %i.f, %.lr.ph111 ], [ %indvars.iv.next115, %._crit_edge ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !209
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54
  %i.v = mul i64 %i.u, %indvars.iv114
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 8 uses
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !877, !nonnull !70, !align !71 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !209
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !54
  %i.ac = mul i64 %i.ab, %indvars.iv114
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac ; 3 uses
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !878, !nonnull !70, !align !71 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !209
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !54
  %i.aj = mul i64 %i.ai, %indvars.iv114
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.h, align 4
  store float 0.000000e+00, ptr %.sroa.10.0..sroa_idx.i, align 4
  %i.an = icmp sgt i32 %i.am, 1
  br i1 %i.an, label %.lr.ph.preheader.i, label %_ZN2cv8ximgproc11DTFilterCPU18integrateSparseRowINS_3VecIfLi3EEES4_EEvPKT_PKfPT0_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.ao = add nsw i32 %i.am, -1
  %wide.trip.count.i = zext nneg i32 %i.ao to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %.sroa.10.028.i = phi float [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.bb, %.lr.ph.i ]
  %i.ap = phi <2 x float> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.bj, %.lr.ph.i ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !53
  %i.as = fmul float %i.ar, 5.000000e-01          ; 2 uses
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %indvars.iv.next.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !53
  %i.az = fadd float %i.av, %i.ay
  %i.ba = fmul float %i.as, %i.az
  %i.bb = fadd float %.sroa.10.028.i, %i.ba       ; 2 uses
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv.next.i ; 2 uses
  %i.bd = load <2 x float>, ptr %i.at, align 4, !tbaa !53
  %i.be = load <2 x float>, ptr %i.aw, align 4, !tbaa !53
  %i.bf = fadd <2 x float> %i.bd, %i.be
  %i.bg = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.bh, %i.bf
  %i.bj = fadd <2 x float> %i.ap, %i.bi           ; 2 uses
  store <2 x float> %i.bj, ptr %i.bc, align 4
  %.sroa.10.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store float %i.bb, ptr %.sroa.10.0..sroa_idx24.i, align 4
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv8ximgproc11DTFilterCPU18integrateSparseRowINS_3VecIfLi3EEES4_EEvPKT_PKfPT0_i.exit, label %.lr.ph.i, !llvm.loop !864

_ZN2cv8ximgproc11DTFilterCPU18integrateSparseRowINS_3VecIfLi3EEES4_EEvPKT_PKfPT0_i.exit: ; preds = %.lr.ph.i, %bb.b
  %i.bk = getelementptr inbounds i8, ptr %i.w, i64 -12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false)
  %i.bl = load ptr, ptr %i.l, align 8, !tbaa !186, !nonnull !70, !align !71
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !51
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [12 x i8], ptr %i.w, i64 %i.bo ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i64 12, i1 false)
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !186, !nonnull !70, !align !71 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !51
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2cv8ximgproc11DTFilterCPU13getRightBoundEPfif.exit, %_ZN2cv8ximgproc11DTFilterCPU18integrateSparseRowINS_3VecIfLi3EEES4_EEvPKT_PKfPT0_i.exit
  %i.bv = phi ptr [ %i.br, %_ZN2cv8ximgproc11DTFilterCPU18integrateSparseRowINS_3VecIfLi3EEES4_EEvPKT_PKfPT0_i.exit ], [ %i.fe, %_ZN2cv8ximgproc11DTFilterCPU13getRightBoundEPfif.exit ]
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.bw = load i32, ptr %i.i, align 4, !tbaa !159
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next115, %i.bx
  br i1 %i.by, label %bb.b, label %._crit_edge112, !llvm.loop !865

.lr.ph:                                           ; preds = %_ZN2cv8ximgproc11DTFilterCPU18integrateSparseRowINS_3VecIfLi3EEES4_EEvPKT_PKfPT0_i.exit, %_ZN2cv8ximgproc11DTFilterCPU13getRightBoundEPfif.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cv8ximgproc11DTFilterCPU13getRightBoundEPfif.exit ], [ 0, %_ZN2cv8ximgproc11DTFilterCPU18integrateSparseRowINS_3VecIfLi3EEES4_EEvPKT_PKfPT0_i.exit ] ; 3 uses
  %.059108 = phi i64 [ %indvars.iv.i62, %_ZN2cv8ximgproc11DTFilterCPU13getRightBoundEPfif.exit ], [ 0, %_ZN2cv8ximgproc11DTFilterCPU18integrateSparseRowINS_3VecIfLi3EEES4_EEvPKT_PKfPT0_i.exit ]
  %.061106 = phi i64 [ %indvars.iv.i64, %_ZN2cv8ximgproc11DTFilterCPU13getRightBoundEPfif.exit ], [ 0, %_ZN2cv8ximgproc11DTFilterCPU18integrateSparseRowINS_3VecIfLi3EEES4_EEvPKT_PKfPT0_i.exit ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !53 ; 2 uses
  %i.cb = load float, ptr %i.o, align 8, !tbaa !185 ; 3 uses
  %i.cc = fsub float %i.ca, %i.cb                 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i63, %bb.c ], [ %.059108, %.lr.ph ] ; 6 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv.i62
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !53 ; 2 uses
  %i.cf = fcmp olt float %i.ce, %i.cc
  %indvars.iv.next.i63 = add nsw i64 %indvars.iv.i62, 1
  br i1 %i.cf, label %bb.c, label %_ZN2cv8ximgproc11DTFilterCPU12getLeftBoundEPfif.exit.preheader, !llvm.loop !1

_ZN2cv8ximgproc11DTFilterCPU12getLeftBoundEPfif.exit.preheader: ; preds = %bb.c
  %i.cg = fadd float %i.ca, %i.cb                 ; 2 uses
  br label %_ZN2cv8ximgproc11DTFilterCPU12getLeftBoundEPfif.exit

_ZN2cv8ximgproc11DTFilterCPU12getLeftBoundEPfif.exit: ; preds = %_ZN2cv8ximgproc11DTFilterCPU12getLeftBoundEPfif.exit.preheader, %_ZN2cv8ximgproc11DTFilterCPU12getLeftBoundEPfif.exit
  %indvars.iv.i64 = phi i64 [ %indvars.iv.next.i65, %_ZN2cv8ximgproc11DTFilterCPU12getLeftBoundEPfif.exit ], [ %.061106, %_ZN2cv8ximgproc11DTFilterCPU12getLeftBoundEPfif.exit.preheader ] ; 6 uses
  %indvars.iv.next.i65 = add nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv.next.i65
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !53
  %i.cj = fcmp olt float %i.ci, %i.cg
  br i1 %i.cj, label %_ZN2cv8ximgproc11DTFilterCPU12getLeftBoundEPfif.exit, label %_ZN2cv8ximgproc11DTFilterCPU13getRightBoundEPfif.exit, !llvm.loop !2

_ZN2cv8ximgproc11DTFilterCPU13getRightBoundEPfif.exit: ; preds = %_ZN2cv8ximgproc11DTFilterCPU12getLeftBoundEPfif.exit
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv.i64
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !53
  %i.cm = shl i64 %indvars.iv.i62, 32
  %sext = add i64 %i.cm, -4294967296
  %i.cn = ashr exact i64 %sext, 32                ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !53
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %indvars.iv.i64
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !53
  %i.cs = getelementptr inbounds [12 x i8], ptr %i.w, i64 %i.cn ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !53, !noalias !879
  %i.cv = getelementptr inbounds [12 x i8], ptr %i.w, i64 %indvars.iv.i62 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !53, !noalias !880
  %i.cy = getelementptr inbounds [12 x i8], ptr %i.w, i64 %indvars.iv.i64 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !53, !noalias !881
  %i.db = getelementptr i8, ptr %i.cy, i64 12
  %i.dc = getelementptr i8, ptr %i.cy, i64 20
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !53, !noalias !882
  %i.de = getelementptr inbounds [12 x i8], ptr %i.h, i64 %indvars.iv.i64 ; 2 uses
  %i.df = getelementptr inbounds [12 x i8], ptr %i.h, i64 %indvars.iv.i62 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53, !noalias !883
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load float, ptr %i.di, align 4, !tbaa !53, !noalias !883
  %i.dk = fsub float %i.dh, %i.dj
  %i.dl = fmul float %i.cb, 2.000000e+00
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !884, !nonnull !70, !align !71 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !249
  %i.dp = icmp slt i32 %i.do, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !209
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 128
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = mul i64 %i.dt, %indvars.iv
  %.sink.idx.i = select i1 %i.dp, i64 0, i64 %i.du
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sink.idx.i
  %i.dv = getelementptr inbounds [12 x i8], ptr %.sink.i, i64 %indvars.iv114 ; 2 uses
  %i.dw = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.ce, i64 1
  %i.dy = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.cc, i64 1
  %i.ea = fsub <2 x float> %i.dx, %i.dz           ; 2 uses
  %i.eb = load <2 x float>, ptr %i.cs, align 4, !tbaa !53, !noalias !879
  %i.ec = shufflevector <2 x float> %i.ea, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.ed = insertelement <3 x float> %i.ec, float 1.000000e+00, i64 0
  %i.ee = insertelement <3 x float> poison, float %i.dl, i64 0
  %i.ef = insertelement <3 x float> %i.ee, float %i.cr, i64 1
  %i.eg = insertelement <3 x float> %i.ef, float %i.cp, i64 2
  %i.eh = fdiv <3 x float> %i.ed, %i.eg           ; 5 uses
  %i.ei = shufflevector <3 x float> %i.eh, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ej = fmul <2 x float> %i.ei, %i.eb
  %2 = load <2 x float>, ptr %i.cv, align 4, !tbaa !53, !noalias !880
  %3 = fmul <2 x float> %i.ea, splat (float 5.000000e-01) ; 3 uses
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = load <2 x float>, ptr %i.cy, align 4, !tbaa !53, !noalias !881
  %5 = load <2 x float>, ptr %i.db, align 4, !tbaa !53, !noalias !882
  %6 = shufflevector <3 x float> %i.eh, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.el = fmul <2 x float> %6, %5
  %7 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = shufflevector <3 x float> %i.eh, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %9 = fsub <2 x float> splat (float 2.000000e+00), %8 ; 3 uses
  %i.em = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.en = fmul <2 x float> %i.em, %2
  %10 = fadd <2 x float> %i.ej, %i.en
  %11 = fmul <2 x float> %4, %10
  %12 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x float> %12, %i.ek
  %i.eo = insertelement <2 x float> poison, float %i.da, i64 0
  %14 = insertelement <2 x float> %i.eo, float %i.cx, i64 1
  %i.ep = fmul <2 x float> %9, %14
  %15 = insertelement <2 x float> poison, float %i.dd, i64 0
  %16 = insertelement <2 x float> %15, float %i.cu, i64 1
  %i.eq = fmul <2 x float> %8, %16
  %i.er = fadd <2 x float> %13, %i.el
  %17 = fadd <2 x float> %i.eq, %i.ep
  %i.es = fmul <2 x float> %7, %i.er
  %18 = fmul <2 x float> %3, %17                  ; 2 uses
  %i.et = load <2 x float>, ptr %i.de, align 4, !tbaa !53, !noalias !883
  %i.eu = load <2 x float>, ptr %i.df, align 4, !tbaa !53, !noalias !883
  %i.ev = fsub <2 x float> %i.et, %i.eu
  %i.ew = fadd <2 x float> %11, %i.ev
  %19 = extractelement <2 x float> %18, i64 1
  %i.ex = fadd float %19, %i.dk
  %i.ey = fadd <2 x float> %i.es, %i.ew
  %20 = extractelement <2 x float> %18, i64 0
  %i.ez = fadd float %20, %i.ex
  %i.fa = shufflevector <3 x float> %i.eh, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.fa, %i.ey
  %i.fc = extractelement <3 x float> %i.eh, i64 0
  %i.fd = fmul float %i.fc, %i.ez
  store <2 x float> %i.fb, ptr %i.dv, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store float %i.fd, ptr %.sroa.5.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fe = load ptr, ptr %i.l, align 8, !tbaa !186, !nonnull !70, !align !71 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !51
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp slt i64 %indvars.iv.next, %i.fh
  br i1 %i.fi, label %.lr.ph, label %._crit_edge, !llvm.loop !876
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc11DTFilterCPU16FilterRF_horPassINS_3VecIfLi3EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc11DTFilterCPU16FilterRF_horPassINS_3VecIfLi3EEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !158    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !159  ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph52, label %._crit_edge53

.lr.ph52:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !894, !nonnull !70, !align !71 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !209
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.j = load i64, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !895, !nonnull !70, !align !71 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !209
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.p = load i64, ptr %i.o, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !189
  %i.s = icmp sgt i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !51   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1                     ; 2 uses
  %i.w = add i32 %i.u, -2                         ; 2 uses
  %i.x = zext i32 %i.w to i64                     ; 5 uses
  %i.y = sext i32 %i.a to i64
  %wide.trip.count64 = sext i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.u to i64
  %i.z = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.w, 7
  %n.vec = and i64 %i.z, 8589934584               ; 3 uses
  %i.aa = sub nsw i64 %i.x, %n.vec
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br label %bb.b

._crit_edge53:                                    ; preds = %._crit_edge49, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph52, %._crit_edge49
  %indvars.iv61 = phi i64 [ %i.y, %.lr.ph52 ], [ %indvars.iv.next62, %._crit_edge49 ] ; 3 uses
  %i.ab = mul i64 %i.j, %indvars.iv61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ab ; 4 uses
  %i.ad = mul i64 %i.p, %indvars.iv61
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ad ; 4 uses
  br i1 %i.s, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge49

.lr.ph.preheader:                                 ; preds = %bb.c
  br i1 %min.iters.check, label %.lr.ph.preheader77, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.af = sub i64 %i.x, %index
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -12 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -28 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ah, align 4, !tbaa !53 ; 2 uses
  %wide.load73 = load <4 x float>, ptr %i.ai, align 4, !tbaa !53 ; 2 uses
  %i.aj = fmul <4 x float> %wide.load, %wide.load
  %i.ak = fmul <4 x float> %wide.load73, %wide.load73
  store <4 x float> %i.aj, ptr %i.ah, align 4, !tbaa !53
  store <4 x float> %i.ak, ptr %i.ai, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !885

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph45.preheader, label %.lr.ph.preheader77

.lr.ph.preheader77:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.x, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader77, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader77 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !53 ; 2 uses
  %i.ao = fmul float %i.an, %i.an
  store float %i.ao, ptr %i.am, align 4, !tbaa !53
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %.lr.ph45.preheader, label %.lr.ph, !llvm.loop !886

.loopexit:                                        ; preds = %bb.b
  br i1 %i.v, label %.lr.ph45.preheader, label %._crit_edge49

.lr.ph45.preheader:                               ; preds = %.lr.ph, %middle.block, %.loopexit
  %i.ap = load <2 x float>, ptr %i.ac, align 4, !tbaa !53, !noalias !896
  %.phi.trans.insert67 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.pre68 = load float, ptr %.phi.trans.insert67, align 4, !tbaa !53, !noalias !896
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %.lr.ph45
  %i.aq = phi float [ %.pre68, %.lr.ph45.preheader ], [ %i.bg, %.lr.ph45 ]
  %indvars.iv55 = phi i64 [ 1, %.lr.ph45.preheader ], [ %indvars.iv.next56, %.lr.ph45 ] ; 3 uses
  %i.ar = phi <2 x float> [ %i.ap, %.lr.ph45.preheader ], [ %i.bf, %.lr.ph45 ]
  %i.as = getelementptr [4 x i8], ptr %i.ae, i64 %indvars.iv55
  %i.at = getelementptr i8, ptr %i.as, i64 -4
  %i.au = load float, ptr %i.at, align 4, !tbaa !53 ; 2 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %indvars.iv55 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !53, !noalias !896 ; 2 uses
  %i.ay = fsub float %i.aq, %i.ax
  %i.az = fmul float %i.au, %i.ay
  %i.ba = load <2 x float>, ptr %i.av, align 4, !tbaa !53, !noalias !896 ; 2 uses
  %i.bb = fsub <2 x float> %i.ar, %i.ba
  %i.bc = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %i.bb
  %i.bf = fadd <2 x float> %i.ba, %i.be           ; 2 uses
  store <2 x float> %i.bf, ptr %i.av, align 4, !tbaa !53
  %i.bg = fadd float %i.ax, %i.az                 ; 2 uses
  store float %i.bg, ptr %i.aw, align 4, !tbaa !53
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph48, label %.lr.ph45, !llvm.loop !889

.lr.ph48:                                         ; preds = %.lr.ph45, %.lr.ph48
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %.lr.ph48 ], [ %i.x, %.lr.ph45 ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv58
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !53 ; 2 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %indvars.iv58 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !53, !noalias !897
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !53, !noalias !897 ; 2 uses
  %i.bp = fsub float %i.bm, %i.bo
  %i.bq = fmul float %i.bi, %i.bp
  %i.br = load <2 x float>, ptr %i.bk, align 4, !tbaa !53, !noalias !897
  %i.bs = load <2 x float>, ptr %i.bj, align 4, !tbaa !53, !noalias !897 ; 2 uses
  %i.bt = fsub <2 x float> %i.br, %i.bs
  %i.bu = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bv, %i.bt
  %i.bx = fadd <2 x float> %i.bs, %i.bw
  store <2 x float> %i.bx, ptr %i.bj, align 4, !tbaa !53
  %i.by = fadd float %i.bo, %i.bq
  store float %i.by, ptr %i.bn, align 4, !tbaa !53
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, -1
  %.not72 = icmp eq i64 %indvars.iv58, 0
  br i1 %.not72, label %._crit_edge49, label %.lr.ph48, !llvm.loop !892

._crit_edge49:                                    ; preds = %.lr.ph48, %bb.c, %.loopexit
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge53, label %bb.b, !llvm.loop !893
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8ximgproc11DTFilterCPU17FilterRF_vertPassINS_3VecIfLi3EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv8ximgproc11DTFilterCPU17FilterRF_vertPassINS_3VecIfLi3EEEEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %1, align 4, !tbaa !49 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !49 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192, !nonnull !70, !align !71 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph61, label %._crit_edge74.split
end_hunk_0
