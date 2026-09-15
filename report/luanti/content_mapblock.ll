Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_mapblock?download=true
inline.NumInlined: 881
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN21MapblockMeshGenerator16drawSignlikeNodeEv:bb.a
  %i.fm = fsub nsz double 4.375000e+00, %i.fl
  %i.fn = fptrunc nsz double %i.fm to float       ; 2 uses
  store float %i.fn, ptr %i.ag, align 4, !tbaa !120
  store float %i.ah, ptr %i.fj, align 4, !tbaa !45
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.fn, ptr %i.am, align 8, !tbaa !120
  store float %i.ah, ptr %i.fo, align 16, !tbaa !45
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.fi, ptr %i.ap, align 4, !tbaa !120
  store float %i.ad, ptr %i.fp, align 4, !tbaa !45
  br label %.split74.us

.split.us75.preheader:                            ; preds = %bb.a
  %i.fq = fpext nsz float %i.ad to double         ; 2 uses
  %i.fr = fadd nsz double %i.fq, f0x3CB34DB9C7DE44A8
  %i.fs = fptrunc nsz double %i.fr to float       ; 2 uses
  %i.ft = fmul nsz double %i.fq, f0x3C91A62633145C07
  %i.fu = fadd nsz double %i.ft, -4.375000e+00
  %i.fv = fptrunc nsz double %i.fu to float       ; 2 uses
  store float %i.fs, ptr %2, align 16, !tbaa !120
  store float %i.fv, ptr %i.ae, align 4, !tbaa !117
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.fs, ptr %i.ag, align 4, !tbaa !120
  store float %i.fv, ptr %i.fw, align 16, !tbaa !117
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.fy = fpext nsz float %i.ah to double         ; 2 uses
  %i.fz = fadd nsz double %i.fy, f0x3CB34DB9C7DE44A8
  %i.ga = fptrunc nsz double %i.fz to float       ; 2 uses
  %i.gb = fmul nsz double %i.fy, f0x3C91A62633145C07
  %i.gc = fadd nsz double %i.gb, -4.375000e+00
  %i.gd = fptrunc nsz double %i.gc to float       ; 2 uses
  store float %i.ga, ptr %i.am, align 8, !tbaa !120
  store float %i.gd, ptr %i.fx, align 4, !tbaa !117
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.ga, ptr %i.ap, align 4, !tbaa !120
  store float %i.gd, ptr %i.ge, align 8, !tbaa !117
  br label %.split74.us

.split.us.preheader:                              ; preds = %bb.a
  %i.gf = fpext nsz float %i.ad to double         ; 2 uses
  %i.gg = fsub nsz double f0x3CB34DB9C7DE44A8, %i.gf
  %i.gh = fptrunc nsz double %i.gg to float       ; 2 uses
  %i.gi = fmul nsz double %i.gf, f0x3C91A62633145C07
  %i.gj = fadd nsz double %i.gi, 4.375000e+00
  %i.gk = fptrunc nsz double %i.gj to float       ; 2 uses
  store float %i.gh, ptr %2, align 16, !tbaa !120
  store float %i.gk, ptr %i.ae, align 4, !tbaa !117
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.gh, ptr %i.ag, align 4, !tbaa !120
  store float %i.gk, ptr %i.gl, align 16, !tbaa !117
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.gn = fpext nsz float %i.ah to double         ; 2 uses
  %i.go = fsub nsz double f0x3CB34DB9C7DE44A8, %i.gn
  %i.gp = fptrunc nsz double %i.go to float       ; 2 uses
  %i.gq = fmul nsz double %i.gn, f0x3C91A62633145C07
  %i.gr = fadd nsz double %i.gq, 4.375000e+00
  %i.gs = fptrunc nsz double %i.gr to float       ; 2 uses
  store float %i.gp, ptr %i.am, align 8, !tbaa !120
  store float %i.gs, ptr %i.gm, align 4, !tbaa !117
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.gp, ptr %i.ap, align 4, !tbaa !120
  store float %i.gs, ptr %i.gt, align 8, !tbaa !117
  br label %.split74.us

.split74.us:                                      ; preds = %bb.a, %.split.us111.preheader, %.split.us105.preheader, %.split.us99.preheader, %.split.us93.preheader, %.split.us87.preheader, %.split.us81.preheader, %.split.us75.preheader, %.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i16 0, ptr %3, align 2, !tbaa !41
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.gu, align 2, !tbaa !42
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 0, ptr %i.gv, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %2, ptr noundef nonnull align 2 dereferenceable(6) %3, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef %2, float noundef %3, i1 noundef zeroext %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 27 uses
  %6 = alloca %"class.core::vector3d", align 2    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.b = load float, ptr %i.a, align 4, !tbaa !159 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.c = fneg nsz float %i.b
  %i.d = fpext nsz float %i.b to double           ; 3 uses
  %i.e = fmul nsz double %i.d, 2.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !160
  %i.h = fpext nsz float %i.g to double
  %i.i = tail call nsz double @llvm.fmuladd.f64(double %i.e, double %i.h, double -5.000000e+00)
  %i.j = fptrunc nsz double %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float 0.000000e+00, ptr %i.o, align 16, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 44
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.s = load i8, ptr %i.r, align 4, !tbaa !161, !range !106, !noundef !107
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !162  ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !162
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i16, ptr %i.x, align 8, !tbaa !154
  %i.z = sext i16 %i.y to i32
  %i.aa = shl nsw i32 %i.z, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !153
  %i.ad = sext i16 %i.ac to i32
  %i.ae = shl nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !163
  %i.ah = zext i16 %i.ag to i32
  %i.ai = shl i32 %i.ah, 24
  %i.aj = or i32 %i.aa, %i.ae
  %i.ak = or i32 %i.aj, %i.ai
  %i.al = or i32 %i.ak, %i.v
  %i.am = mul i32 %i.al, 1103515245
  %i.an = add i32 %i.am, 12345
  %i.ao = sdiv i32 %i.an, 65536
  %i.ap = and i32 %i.ao, 15
  %i.aq = uitofp nsz nneg i32 %i.ap to double
  %i.ar = fmul nnan nsz double %i.aq, 6.250000e-02
  %i.as = fmul nnan nsz double %i.ar, 1.250000e-01
  %i.at = fmul nnan nsz double %i.as, -1.000000e+01
  %i.au = fptrunc nsz double %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 468
  store float %i.au, ptr %i.av, align 4, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %wide.trip.count = select i1 %4, i64 2, i64 4   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 2         ; 2 uses
  br i1 %4, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %wide.trip.count, 4
  br label %bb.e

.preheader91.unr-lcssa:                           ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader91, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader91.unr-lcssa, %bb.c
  %indvars.iv.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.3, %.preheader91.unr-lcssa ]
  %lcmp.mod126 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv.epil
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !45
  %i.az = fadd nsz float %3, %i.ay
  store float %i.az, ptr %i.ax, align 4, !tbaa !45
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %.preheader91, label %bb.d, !llvm.loop !228

.preheader91:                                     ; preds = %bb.d, %.preheader91.unr-lcssa
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !165
  %i.bc = fadd nsz float %2, %i.bb
  %i.bd = fpext nsz float %i.bc to double
  %i.be = fmul nsz double %i.bd, f0x3F91DF46A2529D39
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.be) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !120 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bj = load float, ptr %i.k, align 8, !tbaa !45
  %i.bk = fpext nsz float %i.c to double          ; 2 uses
  %i.bl = fpext nsz float %i.bj to double         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %cos.i, i64 0 ; 2 uses
  %i.bo = insertelement <2 x double> %i.bn, double %sin.i, i64 1 ; 3 uses
  %i.bp = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bq = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.d, i64 1 ; 2 uses
  %i.bs = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %7 = load float, ptr %i.bi, align 8, !tbaa !45  ; 2 uses
  %i.bv = load float, ptr %i.bh, align 4, !tbaa !117
  %8 = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bw = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = insertelement <2 x float> <float poison, float -5.000000e+00>, float %i.j, i64 0
  %i.by = fadd nsz <2 x float> %i.bw, %i.bx       ; 9 uses
  %i.bz = extractelement <2 x float> %i.by, i64 0 ; 3 uses
  %i.ca = load <4 x float>, ptr %i.bm, align 4, !tbaa !45
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cc = fpext <2 x float> %i.cb to <2 x double> ; 3 uses
  %i.cd = fneg nsz <2 x double> %i.cc
  %i.ce = shufflevector <2 x double> %i.bp, <2 x double> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cf = fmul nsz <2 x double> %i.bo, %i.ce
  %i.cg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.bs, <2 x double> %i.cf)
  %i.ch = fptrunc <2 x double> %i.cg to <2 x float>
  %9 = insertelement <2 x float> poison, float %7, i64 0 ; 2 uses
  %i.ci = insertelement <2 x float> %9, float %i.bg, i64 1
  %i.cj = fadd nsz <2 x float> %i.ci, %i.ch       ; 9 uses
  %i.ck = shufflevector <2 x float> %i.by, <2 x float> %i.cj, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  store float %i.bz, ptr %i.bt, align 16, !tbaa !117
  %i.cl = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = fmul nsz <2 x double> %i.cl, %i.cc
  %i.cn = insertelement <2 x double> poison, double %i.d, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cq, <2 x double> %i.cm)
  %i.cs = fptrunc <2 x double> %i.cr to <2 x float>
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fadd nsz <2 x float> %10, %i.cs         ; 6 uses
  %i.cu = insertelement <2 x double> %i.cc, double %i.bl, i64 0
  %i.cv = fneg nsz <2 x double> %i.cu
  %i.cw = fmul nsz <2 x double> %i.cq, %i.cv
  %i.cx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.cl, <2 x double> %i.cw)
  %i.cy = fptrunc <2 x double> %i.cx to <2 x float>
  %i.cz = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = fadd nsz <2 x float> %i.da, %i.cy       ; 10 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> %i.ck, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.dd, ptr %5, align 16, !tbaa !44
  %i.de = shufflevector <2 x float> %i.ct, <2 x float> %i.by, <4 x i32> <i32 0, i32 poison, i32 3, i32 1>
  %i.df = shufflevector <4 x float> %i.de, <4 x float> %i.dc, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  store <4 x float> %i.df, ptr %i.bm, align 4, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !45
  %i.di = fpext nsz float %i.dh to double         ; 2 uses
  %i.dj = fneg nsz double %i.di
  %i.dk = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.dj, i64 1
  %i.dm = fmul nsz <2 x double> %i.bo, %i.dl
  %i.dn = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.bs, <2 x double> %i.dm) ; 2 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 1
  %i.dr = fptrunc nsz double %i.dq to float
  %i.ds = extractelement <2 x double> %i.dp, i64 0
  %i.dt = fptrunc nsz double %i.ds to float
  %i.du = fadd nsz float %i.bg, %i.dr             ; 5 uses
  %i.dv = insertelement <2 x float> %i.by, float %i.du, i64 0 ; 2 uses
  store <2 x float> %i.dv, ptr %i.p, align 4, !tbaa !44
  %i.dw = fadd nsz float %7, %i.dt                ; 5 uses
  store float %i.dw, ptr %i.dg, align 4, !tbaa !45
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !40
  %i.ea = tail call noundef zeroext i8 @_ZNK7MapNode14getWallMountedEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4) %i.dx, ptr noundef %i.dz)
  switch i8 %i.ea, label %.loopexit [
    i8 5, label %.preheader.split.us114.preheader
    i8 0, label %.preheader.split.us.preheader
    i8 2, label %.preheader.split.us96.preheader
    i8 3, label %.preheader.split.us102.preheader
    i8 4, label %.preheader.split.us108.preheader
  ]

bb.e:                                             ; preds = %bb.e, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.e ]
  %i.eb = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !45
  %i.ee = fadd nsz float %3, %i.ed
  store float %i.ee, ptr %i.ec, align 8, !tbaa !45
  %i.ef = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20 ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !45
  %i.ei = fadd nsz float %3, %i.eh
  store float %i.ei, ptr %i.eg, align 4, !tbaa !45
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 2 uses
  %i.el = load float, ptr %i.ek, align 16, !tbaa !45
  %i.em = fadd nsz float %3, %i.el
  store float %i.em, ptr %i.ek, align 16, !tbaa !45
  %i.en = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 44 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !45
  %i.eq = fadd nsz float %3, %i.ep
  store float %i.eq, ptr %i.eo, align 4, !tbaa !45
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader91.unr-lcssa, label %bb.e, !llvm.loop !229

.preheader.split.us114.preheader:                 ; preds = %.preheader91
  %i.er = fpext <2 x float> %i.by to <2 x double> ; 5 uses
  %i.es = fpext <2 x float> %i.cj to <2 x double> ; 3 uses
  %i.et = extractelement <2 x double> %i.es, i64 0
  %i.eu = fneg nsz double %i.et
  %i.ev = extractelement <2 x double> %i.er, i64 0
  %i.ew = tail call nsz double @llvm.fmuladd.f64(double %i.ev, double f0x3C91A62633145C07, double %i.eu)
  %i.ex = fptrunc nsz double %i.ew to float
  %i.ey = extractelement <2 x float> %i.db, i64 0
  %i.ez = fpext nsz float %i.ey to double         ; 2 uses
  %i.fa = fpext nsz float %i.ex to double         ; 2 uses
  %i.fb = fneg nsz double %i.fa
  %i.fc = tail call nsz double @llvm.fmuladd.f64(double %i.ez, double f0x3C91A62633145C07, double %i.fb)
  %i.fd = fmul nsz double %i.fa, f0x3C91A62633145C07
  %i.fe = fadd nsz double %i.fd, %i.ez
  %i.ff = insertelement <4 x double> poison, double %i.fc, i64 0
  %i.fg = insertelement <4 x double> %i.ff, double %i.fe, i64 1
  %i.fh = fpext <2 x float> %i.ct to <2 x double> ; 3 uses
  %i.fi = fmul nsz <2 x double> %i.es, <double f0x3C91A62633145C07, double 1.000000e+00>
  %i.fj = extractelement <2 x float> %i.db, i64 1
  %i.fk = fpext nsz float %i.fj to double         ; 2 uses
  %i.fl = shufflevector <2 x double> %i.es, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x double> <double poison, double poison, double -0.000000e+00, double poison>, <4 x double> %i.fl, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.fn = shufflevector <2 x double> %i.er, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fo = shufflevector <4 x double> %i.fm, <4 x double> %i.fn, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.fp = insertelement <4 x double> %i.fo, double %i.fk, i64 3
  %i.fq = fneg nsz <2 x double> %i.fh
  %i.fr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.fq) ; 2 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 1
  %i.ft = fptrunc nsz double %i.fs to float
  %i.fu = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.dw, i64 1
  %i.fw = fpext <2 x float> %i.fv to <2 x double> ; 2 uses
  %i.fx = fneg nsz <2 x double> %i.fw
  %i.fy = insertelement <2 x double> %i.er, double %i.fk, i64 0
  %i.fz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.fx) ; 2 uses
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.gb = shufflevector <2 x double> %i.fw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gc = fpext nsz float %i.du to double         ; 2 uses
  %i.gd = shufflevector <2 x double> %i.fr, <2 x double> %i.fz, <2 x i32> <i32 0, i32 3>
  %i.ge = fptrunc <2 x double> %i.gd to <2 x float>
  %i.gf = fpext <2 x float> %i.ge to <2 x double> ; 3 uses
  %i.gg = fneg nsz <2 x double> %i.gf             ; 2 uses
  %i.gh = shufflevector <2 x double> %i.er, <2 x double> %i.gg, <2 x i32> <i32 0, i32 2>
  %i.gi = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> <double 1.000000e+00, double f0x3C91A62633145C07>, <2 x double> %i.gh)
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x double> %i.fg, <4 x double> %i.gj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gl = fptrunc <4 x double> %i.gk to <4 x float>
  store <4 x float> %i.gl, ptr %5, align 16, !tbaa !44
  %i.gm = shufflevector <2 x double> %i.gf, <2 x double> %i.fh, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gn = shufflevector <4 x double> %i.gm, <4 x double> %i.ga, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.go = shufflevector <4 x double> %i.gn, <4 x double> %i.gb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gp = fmul nsz <4 x double> %i.go, <double f0x3C91A62633145C07, double f0x3C91A62633145C07, double 1.000000e+00, double f0x3C91A62633145C07>
  %i.gq = fadd nsz <4 x double> %i.gp, %i.fp
  %i.gr = fptrunc <4 x double> %i.gq to <4 x float>
  store <4 x float> %i.gr, ptr %i.bt, align 16, !tbaa !44
  %i.gs = extractelement <2 x double> %i.gg, i64 1
  %i.gt = tail call nsz double @llvm.fmuladd.f64(double %i.gc, double f0x3C91A62633145C07, double %i.gs)
  %i.gu = shufflevector <2 x double> %i.fh, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gv = insertelement <4 x double> %i.gu, double %i.gt, i64 1
  %i.gw = shufflevector <2 x double> %i.gf, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x double> %i.gv, <4 x double> %i.gw, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.gy = shufflevector <4 x double> %i.gx, <4 x double> %i.gb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gz = fmul nsz <4 x double> %i.gy, <double f0x3C91A62633145C07, double 1.000000e+00, double f0x3C91A62633145C07, double f0x3C91A62633145C07>
  %i.ha = shufflevector <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x double> %i.fn, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.hb = insertelement <4 x double> %i.ha, double %i.gc, i64 2
  %i.hc = shufflevector <4 x double> %i.hb, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hd = fadd nsz <4 x double> %i.gz, %i.hc
  %i.he = fptrunc <4 x double> %i.hd to <4 x float>
  store <4 x float> %i.he, ptr %i.bu, align 16, !tbaa !44
  br label %.loopexit

.preheader.split.us108.preheader:                 ; preds = %.preheader91
  %i.hf = fpext <2 x float> %i.db to <2 x double> ; 3 uses
  %i.hg = extractelement <2 x float> %i.ct, i64 0
  %i.hh = extractelement <2 x float> %i.cj, i64 1
  %i.hi = fpext nsz float %i.hg to double         ; 2 uses
  %i.hj = fpext nsz float %i.hh to double         ; 2 uses
  %i.hk = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hl = fpext nsz float %i.dw to double         ; 2 uses
  %i.hm = fpext <2 x float> %i.dv to <2 x double> ; 5 uses
  %i.hn = fpext nsz float %i.bz to double         ; 3 uses
  %i.ho = shufflevector <2 x float> %i.cj, <2 x float> %i.ct, <2 x i32> <i32 0, i32 3>
  %i.hp = fpext <2 x float> %i.ho to <2 x double> ; 3 uses
  %i.hq = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = insertelement <2 x double> %i.hp, double %i.hi, i64 1
  %i.ht = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.hs)
  %i.hu = fptrunc <2 x double> %i.ht to <2 x float>
  %i.hv = fpext <2 x float> %i.hu to <2 x double> ; 3 uses
  %i.hw = fneg nsz <2 x double> %i.hv             ; 2 uses
  %i.hx = extractelement <2 x double> %i.hw, i64 0
  %i.hy = extractelement <2 x double> %i.hf, i64 0
  %i.hz = tail call nsz double @llvm.fmuladd.f64(double %i.hy, double f0x3C91A62633145C07, double %i.hx)
  %i.ia = extractelement <2 x double> %i.hw, i64 1
  %i.ib = tail call nsz double @llvm.fmuladd.f64(double %i.hj, double f0x3C91A62633145C07, double %i.ia)
  %i.ic = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.id = insertelement <2 x double> %i.ic, double %i.hi, i64 1
  %i.ie = fmul nsz <2 x double> %i.id, splat (double f0x3C91A62633145C07) ; 2 uses
  %i.if = insertelement <2 x double> %i.hk, double %i.hn, i64 1 ; 2 uses
  %i.ig = fadd nsz <2 x double> %i.ie, %i.if
  %i.ih = fsub nsz <2 x double> %i.ie, %i.if
  %i.ii = insertelement <4 x double> poison, double %i.hz, i64 0
  %i.ij = fmul nsz <2 x double> %i.hp, splat (double f0x3C91A62633145C07)
  %i.ik = insertelement <2 x double> %i.hm, double %i.hn, i64 0
  %i.il = fsub nsz <2 x double> %i.ij, %i.ik      ; 2 uses
  %i.im = shufflevector <2 x double> %i.il, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.in = shufflevector <2 x double> %i.ig, <2 x double> %i.ih, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.io = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ip = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.iq = insertelement <2 x double> %i.ip, double %i.hl, i64 1
  %i.ir = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.iq)
  %i.is = fptrunc <2 x double> %i.ir to <2 x float>
  %i.it = fpext <2 x float> %i.is to <2 x double> ; 3 uses
  %i.iu = fneg nsz <2 x double> %i.it             ; 2 uses
  %i.iv = extractelement <2 x double> %i.iu, i64 0
  %i.iw = extractelement <2 x double> %i.hf, i64 1
  %i.ix = tail call nsz double @llvm.fmuladd.f64(double %i.iw, double f0x3C91A62633145C07, double %i.iv)
  %i.iy = shufflevector <2 x double> %i.hv, <2 x double> %i.it, <2 x i32> <i32 0, i32 2>
  %i.iz = fmul nsz <2 x double> %i.iy, splat (double f0x3C91A62633145C07)
  %i.ja = fadd nsz <2 x double> %i.iz, %i.hf
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jc = shufflevector <4 x double> %i.ii, <4 x double> %i.jb, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.jd = shufflevector <4 x double> %i.jc, <4 x double> %i.im, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.je = insertelement <4 x double> %i.jd, double %i.ib, i64 3
  %i.jf = fptrunc <4 x double> %i.je to <4 x float>
  store <4 x float> %i.jf, ptr %5, align 16, !tbaa !44
  %i.jg = insertelement <4 x double> %i.in, double %i.ix, i64 2
  %i.jh = shufflevector <4 x double> %i.jg, <4 x double> %i.jb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ji = fptrunc <4 x double> %i.jh to <4 x float>
  store <4 x float> %i.ji, ptr %i.bt, align 16, !tbaa !44
  %i.jj = extractelement <2 x double> %i.hm, i64 0
  %i.jk = extractelement <2 x double> %i.iu, i64 1
  %i.jl = tail call nsz double @llvm.fmuladd.f64(double %i.jj, double f0x3C91A62633145C07, double %i.jk)
  %i.jm = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jn = insertelement <2 x double> %i.jm, double %i.hl, i64 1
  %i.jo = fmul nsz <2 x double> %i.jn, splat (double f0x3C91A62633145C07) ; 2 uses
  %i.jp = fadd nsz <2 x double> %i.jo, %i.hm
  %i.jq = fsub nsz <2 x double> %i.jo, %i.hm
  %i.jr = shufflevector <2 x double> %i.il, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.js = insertelement <4 x double> %i.jr, double %i.jl, i64 1
  %i.jt = shufflevector <2 x double> %i.jp, <2 x double> %i.jq, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.ju = shufflevector <4 x double> %i.js, <4 x double> %i.jt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jv = fptrunc <4 x double> %i.ju to <4 x float>
  store <4 x float> %i.jv, ptr %i.bu, align 16, !tbaa !44
  br label %.loopexit

.preheader.split.us102.preheader:                 ; preds = %.preheader91
  %i.jw = extractelement <2 x float> %i.db, i64 0
  %i.jx = fpext nsz float %i.jw to double         ; 2 uses
  %i.jy = fpext nsz float %i.bz to double         ; 2 uses
  %i.jz = fmul nsz double %i.jy, f0x3C91A62633145C07 ; 2 uses
  %i.ka = fsub nsz double %i.jz, %i.jx
  %i.kb = fptrunc nsz double %i.ka to float
  %i.kc = insertelement <2 x float> %i.cj, float %i.kb, i64 0
  %i.kd = fpext <2 x float> %i.kc to <2 x double> ; 3 uses
  %i.ke = extractelement <2 x double> %i.kd, i64 1
  %i.kf = fsub nsz double %i.jz, %i.ke
  %i.kg = fptrunc nsz double %i.kf to float
end_hunk_0
