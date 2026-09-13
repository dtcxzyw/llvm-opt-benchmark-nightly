Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsopt?download=true
inline.NumInlined: 36
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@FixWhiteMisalignment:bb.a
  %i.k = call i32 @_cmsEndPointsBySpace(i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.g) #9
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %PatchLUT.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 @_cmsEndPointsBySpace(i32 noundef %2, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %i.f) #9
  %.not38 = icmp eq i32 %i.l, 0
  br i1 %.not38, label %PatchLUT.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32
  %i.o = load i32, ptr %i.g, align 4, !tbaa !18
  %.not39 = icmp eq i32 %i.n, %i.o
  br i1 %.not39, label %bb.d, label %PatchLUT.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = load i32, ptr %i.f, align 4, !tbaa !18
  %.not40 = icmp eq i32 %i.q, %i.r
  br i1 %.not40, label %bb.e, label %PatchLUT.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !64
  call void @cmsPipelineEval16(ptr noundef %i.s, ptr noundef nonnull %i.e, ptr noundef nonnull %0) #9
  %i.t = load i32, ptr %i.f, align 4, !tbaa !18   ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !64
  %.not17.i = icmp eq i32 %i.t, 0
  br i1 %.not17.i, label %PatchLUT.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %wide.trip.count.i = zext i32 %i.t to i64
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %PatchLUT.exit, label %.lr.ph.i, !llvm.loop !112

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.w = load i16, ptr %i.v, align 2, !tbaa !45   ; 2 uses
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !45   ; 2 uses
  %i.aa = zext i16 %i.z to i32
  %i.ab = add nsw i32 %i.x, -61441
  %i.ac = sub nsw i32 %i.ab, %i.aa
  %i.ad = icmp ult i32 %i.ac, -122881
  br i1 %i.ad, label %PatchLUT.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq i16 %i.w, %i.z
  br i1 %.not.i, label %bb.f, label %WhitesAreEqual.exit

WhitesAreEqual.exit:                              ; preds = %bb.g
  %i.ae = call i32 (ptr, i32, ...) @cmsPipelineCheckAndRetreiveStages(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1668707188, i32 noundef 1668052340, i32 noundef 1668707188, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #9
  %.not42 = icmp eq i32 %i.ae, 0
  br i1 %.not42, label %bb.h, label %bb.k

bb.h:                                             ; preds = %WhitesAreEqual.exit
  %i.af = call i32 (ptr, i32, ...) @cmsPipelineCheckAndRetreiveStages(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 1668707188, i32 noundef 1668052340, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #9
  %.not43 = icmp eq i32 %i.af, 0
  br i1 %.not43, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ag = call i32 (ptr, i32, ...) @cmsPipelineCheckAndRetreiveStages(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 1668052340, i32 noundef 1668707188, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #9
  %.not44 = icmp eq i32 %i.ag, 0
  br i1 %.not44, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = call i32 (ptr, i32, ...) @cmsPipelineCheckAndRetreiveStages(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1668052340, ptr noundef nonnull %i.i) #9
  %.not45 = icmp eq i32 %i.ah, 0
  br i1 %.not45, label %PatchLUT.exit, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %WhitesAreEqual.exit
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !23  ; 2 uses
  %.not46 = icmp eq ptr %i.ai, null
  br i1 %.not46, label %.preheader58, label %bb.l

.preheader58:                                     ; preds = %bb.k
  %i.aj = load i32, ptr %i.g, align 4, !tbaa !18  ; 2 uses
  %.not72 = icmp eq i32 %i.aj, 0
  br i1 %.not72, label %.loopexit59, label %.lr.ph65

.lr.ph65:                                         ; preds = %.preheader58
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.al = zext i32 %i.aj to i64
  %i.am = shl nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 2 %i.ak, i64 %i.am, i1 false), !tbaa !45
  br label %.loopexit59

bb.l:                                             ; preds = %bb.k
  %i.an = call ptr @_cmsStageGetPtrToCurveSet(ptr noundef nonnull %i.ai) #9
  %i.ao = load i32, ptr %i.g, align 4, !tbaa !18
  %.not71 = icmp eq i32 %i.ao, 0
  br i1 %.not71, label %.loopexit59, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.l ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load i16, ptr %i.as, align 2, !tbaa !45
  %i.au = call zeroext i16 @cmsEvalToneCurve16(ptr noundef %i.aq, i16 noundef zeroext %i.at) #9
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  store i16 %i.au, ptr %i.av, align 2, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.g, align 4, !tbaa !18
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.ay, label %.lr.ph, label %.loopexit59, !llvm.loop !113

.loopexit59:                                      ; preds = %.lr.ph, %.lr.ph65, %bb.l, %.preheader58
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !23  ; 2 uses
  %.not47 = icmp eq ptr %i.az, null
  br i1 %.not47, label %.preheader, label %bb.m

.preheader:                                       ; preds = %.loopexit59
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !18  ; 3 uses
  %.not74 = icmp eq i32 %i.ba, 0
  br i1 %.not74, label %.loopexit, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.bc = zext i32 %i.ba to i64
  %i.bd = shl nuw nsw i64 %i.bc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr align 2 %i.bb, i64 %i.bd, i1 false), !tbaa !45
  br label %.loopexit

bb.m:                                             ; preds = %.loopexit59
  %i.be = call ptr @_cmsStageGetPtrToCurveSet(ptr noundef nonnull %i.az) #9
  %i.bf = load i32, ptr %i.f, align 4, !tbaa !18
  %.not73 = icmp eq i32 %i.bf, 0
  br i1 %.not73, label %.loopexit, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.m, %bb.o
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.o ], [ 0, %bb.m ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv82
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50
  %i.bi = call ptr @cmsReverseToneCurve(ptr noundef %i.bh) #9 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv82
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !45 ; 2 uses
  br i1 %i.bj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph67
  %i.bn = call zeroext i16 @cmsEvalToneCurve16(ptr noundef nonnull %i.bi, i16 noundef zeroext %i.bm) #9
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.bi) #9
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph67, %bb.n
  %.sink = phi i16 [ %i.bn, %bb.n ], [ %i.bm, %.lr.ph67 ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv82
  store i16 %.sink, ptr %i.bo, align 2, !tbaa !45
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.bp = load i32, ptr %i.f, align 4, !tbaa !18  ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %indvars.iv.next83, %i.bq
  br i1 %i.br, label %.lr.ph67, label %.loopexit, !llvm.loop !114

.loopexit:                                        ; preds = %bb.o, %.lr.ph69, %bb.m, %.preheader
  %i.bs = phi i32 [ %i.ba, %.lr.ph69 ], [ 0, %.preheader ], [ 0, %bb.m ], [ %i.bp, %bb.o ] ; 3 uses
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !23  ; 4 uses
  %i.bu = load i32, ptr %i.g, align 4, !tbaa !18  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !35 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !42 ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !34
  %.not.i48 = icmp eq i32 %i.ca, 1668052340
  br i1 %.not.i48, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !117
  call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %i.cb, i32 noundef 3, ptr noundef nonnull @.str) #9
  br label %PatchLUT.exit

bb.q:                                             ; preds = %.loopexit
  switch i32 %i.bu, label %bb.x [
    i32 4, label %bb.r
    i32 3, label %bb.t
    i32 1, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.cd = load <4 x i16>, ptr %i.c, align 16, !tbaa !45
  %i.ce = uitofp <4 x i16> %i.cd to <4 x double>
  %i.cf = load <4 x i32>, ptr %i.cc, align 8, !tbaa !18
  %i.cg = uitofp <4 x i32> %i.cf to <4 x double>
  %i.ch = fmul nnan <4 x double> %i.ce, %i.cg
  %i.ci = fdiv <4 x double> %i.ch, splat (double 6.553500e+04) ; 2 uses
  %i.cj = call <4 x double> @llvm.floor.v4f64(<4 x double> %i.ci)
  %i.ck = fptosi <4 x double> %i.cj to <4 x i32>  ; 2 uses
  %3 = sitofp <4 x i32> %i.ck to <4 x double>
  %i.cl = fcmp une <4 x double> %i.ci, %3
  %i.cm = freeze <4 x i1> %i.cl
  %i.cn = bitcast <4 x i1> %i.cm to i4
  %.not96 = icmp eq i4 %i.cn, 0
  br i1 %.not96, label %bb.s, label %PatchLUT.exit

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 140
  %i.cp = load <4 x i32>, ptr %i.co, align 4, !tbaa !18
  %i.cq = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cr = mul nsw <4 x i32> %i.cq, %i.ck
  %i.cs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cr)
  br label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.ct = load i16, ptr %i.c, align 16, !tbaa !45
  %i.cu = uitofp i16 %i.ct to double
  %i.cv = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !18
  %i.cx = uitofp i32 %i.cw to double
  %i.cy = fmul nnan double %i.cu, %i.cx
  %i.cz = fdiv double %i.cy, 6.553500e+04         ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.by, i64 84
  %i.dc = call double @llvm.floor.f64(double %i.cz)
  %i.dd = fptosi double %i.dc to i32              ; 2 uses
  %i.de = load <2 x i16>, ptr %i.da, align 2, !tbaa !45
  %i.df = uitofp <2 x i16> %i.de to <2 x double>
  %i.dg = load <2 x i32>, ptr %i.db, align 4, !tbaa !18
  %i.dh = uitofp <2 x i32> %i.dg to <2 x double>
  %i.di = fmul nnan <2 x double> %i.df, %i.dh
  %i.dj = fdiv <2 x double> %i.di, splat (double 6.553500e+04) ; 2 uses
  %i.dk = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.dj)
  %i.dl = fptosi <2 x double> %i.dk to <2 x i32>  ; 2 uses
  %4 = sitofp i32 %i.dd to double
  %i.dm = fcmp une double %i.cz, %4
  %5 = sitofp <2 x i32> %i.dl to <2 x double>
  %i.dn = fcmp une <2 x double> %i.dj, %5         ; 2 uses
  %i.do = extractelement <2 x i1> %i.dn, i64 0
  %or.cond82.i = select i1 %i.dm, i1 true, i1 %i.do
  %i.dp = extractelement <2 x i1> %i.dn, i64 1
  %or.cond84.i = select i1 %or.cond82.i, i1 true, i1 %i.dp
  br i1 %or.cond84.i, label %PatchLUT.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %i.by, i64 140
  %i.dr = getelementptr inbounds nuw i8, ptr %i.by, i64 148
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !18
  %i.dt = mul nsw i32 %i.ds, %i.dd
  %i.du = load <2 x i32>, ptr %i.dq, align 4, !tbaa !18
  %i.dv = shufflevector <2 x i32> %i.du, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = mul nsw <2 x i32> %i.dv, %i.dl          ; 2 uses
  %i.dx = extractelement <2 x i32> %i.dw, i64 0
  %i.dy = add nsw i32 %i.dx, %i.dt
  %i.dz = extractelement <2 x i32> %i.dw, i64 1
  %i.ea = add nsw i32 %i.dy, %i.dz
  br label %bb.y

bb.v:                                             ; preds = %bb.q
  %i.eb = load i16, ptr %i.c, align 16, !tbaa !45
  %i.ec = uitofp i16 %i.eb to double
  %i.ed = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !18
  %i.ef = uitofp i32 %i.ee to double
  %i.eg = fmul nnan double %i.ec, %i.ef
  %i.eh = fdiv double %i.eg, 6.553500e+04         ; 2 uses
  %i.ei = call double @llvm.floor.f64(double %i.eh)
  %i.ej = fptosi double %i.ei to i32              ; 2 uses
  %6 = sitofp i32 %i.ej to double
  %i.ek = fcmp une double %i.eh, %6
  br i1 %i.ek, label %PatchLUT.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.el = getelementptr inbounds nuw i8, ptr %i.by, i64 140
  %i.em = load i32, ptr %i.el, align 4, !tbaa !18
  %i.en = mul nsw i32 %i.em, %i.ej
  br label %bb.y

bb.x:                                             ; preds = %bb.q
  %i.eo = load ptr, ptr %i.bt, align 8, !tbaa !117
  call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %i.eo, i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef %i.bu) #9
  br label %PatchLUT.exit

bb.y:                                             ; preds = %bb.w, %bb.u, %bb.s
  %.0.i = phi i32 [ %i.cs, %bb.s ], [ %i.ea, %bb.u ], [ %i.en, %bb.w ]
  %i.ep = icmp sgt i32 %i.bs, 0
  br i1 %i.ep, label %.lr.ph.preheader.i49, label %PatchLUT.exit

.lr.ph.preheader.i49:                             ; preds = %bb.y
  %i.eq = sext i32 %.0.i to i64                   ; 5 uses
  %wide.trip.count.i50 = zext nneg i32 %i.bs to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i50, 3     ; 3 uses
  %i.er = icmp ult i32 %i.bs, 4
  br i1 %i.er, label %.lr.ph.i51.epil.preheader, label %.lr.ph.preheader.i49.new

.lr.ph.preheader.i49.new:                         ; preds = %.lr.ph.preheader.i49
  %unroll_iter = and i64 %wide.trip.count.i50, 2147483644
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.i51, %.lr.ph.preheader.i49.new
  %indvars.iv.i52 = phi i64 [ 0, %.lr.ph.preheader.i49.new ], [ %indvars.iv.next.i53.3, %.lr.ph.i51 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i49.new ], [ %niter.next.3, %.lr.ph.i51 ]
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i52
  %i.et = load i16, ptr %i.es, align 8, !tbaa !45
  %i.eu = load ptr, ptr %i.bw, align 8, !tbaa !43
  %i.ev = getelementptr [2 x i8], ptr %i.eu, i64 %indvars.iv.i52
  %i.ew = getelementptr [2 x i8], ptr %i.ev, i64 %i.eq
  store i16 %i.et, ptr %i.ew, align 2, !tbaa !45
  %indvars.iv.next.i53 = or disjoint i64 %indvars.iv.i52, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next.i53
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !45
  %i.ez = load ptr, ptr %i.bw, align 8, !tbaa !43
  %i.fa = getelementptr [2 x i8], ptr %i.ez, i64 %indvars.iv.next.i53
  %i.fb = getelementptr [2 x i8], ptr %i.fa, i64 %i.eq
  store i16 %i.ey, ptr %i.fb, align 2, !tbaa !45
  %indvars.iv.next.i53.1 = or disjoint i64 %indvars.iv.i52, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next.i53.1
  %i.fd = load i16, ptr %i.fc, align 4, !tbaa !45
  %i.fe = load ptr, ptr %i.bw, align 8, !tbaa !43
  %i.ff = getelementptr [2 x i8], ptr %i.fe, i64 %indvars.iv.next.i53.1
  %i.fg = getelementptr [2 x i8], ptr %i.ff, i64 %i.eq
  store i16 %i.fd, ptr %i.fg, align 2, !tbaa !45
  %indvars.iv.next.i53.2 = or disjoint i64 %indvars.iv.i52, 3 ; 2 uses
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.next.i53.2
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !45
  %i.fj = load ptr, ptr %i.bw, align 8, !tbaa !43
  %i.fk = getelementptr [2 x i8], ptr %i.fj, i64 %indvars.iv.next.i53.2
  %i.fl = getelementptr [2 x i8], ptr %i.fk, i64 %i.eq
  store i16 %i.fi, ptr %i.fl, align 2, !tbaa !45
  %indvars.iv.next.i53.3 = add nuw nsw i64 %indvars.iv.i52, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %PatchLUT.exit.loopexit.unr-lcssa, label %.lr.ph.i51, !llvm.loop !115

PatchLUT.exit.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i51
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %PatchLUT.exit, label %.lr.ph.i51.epil.preheader

.lr.ph.i51.epil.preheader:                        ; preds = %PatchLUT.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i49
  %indvars.iv.i52.epil.init = phi i64 [ 0, %.lr.ph.preheader.i49 ], [ %indvars.iv.next.i53.3, %PatchLUT.exit.loopexit.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod98)
  br label %.lr.ph.i51.epil

.lr.ph.i51.epil:                                  ; preds = %.lr.ph.i51.epil, %.lr.ph.i51.epil.preheader
  %indvars.iv.i52.epil = phi i64 [ %indvars.iv.i52.epil.init, %.lr.ph.i51.epil.preheader ], [ %indvars.iv.next.i53.epil, %.lr.ph.i51.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i51.epil.preheader ], [ %epil.iter.next, %.lr.ph.i51.epil ]
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i52.epil
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !45
  %i.fo = load ptr, ptr %i.bw, align 8, !tbaa !43
  %i.fp = getelementptr [2 x i8], ptr %i.fo, i64 %indvars.iv.i52.epil
  %i.fq = getelementptr [2 x i8], ptr %i.fp, i64 %i.eq
  store i16 %i.fn, ptr %i.fq, align 2, !tbaa !45
  %indvars.iv.next.i53.epil = add nuw nsw i64 %indvars.iv.i52.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %PatchLUT.exit, label %.lr.ph.i51.epil, !llvm.loop !116

PatchLUT.exit:                                    ; preds = %.lr.ph.i, %bb.f, %PatchLUT.exit.loopexit.unr-lcssa, %.lr.ph.i51.epil, %bb.e, %bb.y, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.j, %bb.d, %bb.c, %bb.b, %bb.a
  %.034 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.j ], [ 1, %PatchLUT.exit.loopexit.unr-lcssa ], [ 0, %bb.a ], [ 1, %bb.p ], [ 1, %bb.r ], [ 1, %bb.t ], [ 1, %bb.v ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %bb.e ], [ 1, %.lr.ph.i51.epil ], [ 1, %bb.f ], [ 1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.034
}

declare ptr @_cmsStageGetPtrToCurveSet(ptr noundef) local_unnamed_addr #1

declare i32 @cmsIsToneCurveLinear(ptr noundef) local_unnamed_addr #1

declare void @cmsPipelineEvalFloat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_cmsMallocZero(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @Eval16nop1D(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %1, ptr nofree readnone captures(none) %2) #6 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !45
  store i16 %i.a, ptr %1, align 2, !tbaa !45
  ret void
}

declare ptr @_cmsCalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_cmsFree(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_cmsDupMem(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_cmsEndPointsBySpace(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @cmsPipelineEval16(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @cmsPipelineCheckAndRetreiveStages(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

declare zeroext i16 @cmsEvalToneCurve16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare ptr @cmsReverseToneCurve(ptr noundef) local_unnamed_addr #1

declare void @cmsFreeToneCurve(ptr noundef) local_unnamed_addr #1

declare void @cmsSignalError(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #5

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @OptimizeByJoiningCurves(ptr nofree noundef captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) #0 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 5 uses
  %i.b = alloca [16 x float], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 6 uses
  %i.d = load i32, ptr %2, align 4, !tbaa !18
  %i.e = tail call i32 @_cmsFormatterIsFloat(i32 noundef %i.d) #9
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %.loopexit156

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %3, align 4, !tbaa !18
  %i.g = tail call i32 @_cmsFormatterIsFloat(i32 noundef %i.f) #9
  %.not117 = icmp eq i32 %i.g, 0
  br i1 %.not117, label %bb.c, label %.loopexit156

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @cmsPipelineGetPtrToFirstStage(ptr noundef %i.c) #9 ; 2 uses
  %.not118157 = icmp eq ptr %i.h, null
  br i1 %.not118157, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.0100158 = phi ptr [ %i.j, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.i = tail call i32 @cmsStageType(ptr noundef nonnull %.0100158) #9
  %.not128 = icmp eq i32 %i.i, 1668707188
  br i1 %.not128, label %bb.d, label %.loopexit156

bb.d:                                             ; preds = %.lr.ph
  %i.j = tail call ptr @cmsStageNext(ptr noundef nonnull %.0100158) #9 ; 2 uses
  %.not118 = icmp eq ptr %i.j, null
  br i1 %.not118, label %._crit_edge, label %.lr.ph, !llvm.loop !118

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 10 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  %i.q = tail call ptr @cmsPipelineAlloc(ptr noundef %i.l, i32 noundef %i.n, i32 noundef %i.p) #9 ; 11 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit156, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.t = load i32, ptr %i.m, align 8, !tbaa !32
  %i.u = tail call ptr @_cmsCalloc(ptr noundef %i.s, i32 noundef %i.t, i32 noundef 8) #9 ; 8 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread146, label %.preheader155

.preheader155:                                    ; preds = %bb.e
  %i.w = load i32, ptr %i.m, align 8, !tbaa !32
  %.not176 = icmp eq i32 %i.w, 0
  br i1 %.not176, label %.preheader153.preheader, label %.lr.ph160
end_hunk_0
begin_hunk_1_@OptimizeByComputingLinearization:bb.a

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.025.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.bf, %middle.block ]
  %.01724.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.bg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.025.i = phi i32 [ %.1.i, %scalar.ph ], [ %.025.i.ph, %scalar.ph.preheader ]
  %.01724.i = phi i32 [ %spec.select.i, %scalar.ph ], [ %.01724.i.ph, %scalar.ph.preheader ]
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !45 ; 2 uses
  %i.bj = icmp eq i16 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %spec.select.i = add i32 %.01724.i, %i.bk       ; 2 uses
  %i.bl = icmp eq i16 %i.bi, -1
  %i.bm = zext i1 %i.bl to i32
  %.1.i = add i32 %.025.i, %i.bm                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !129

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.bg, %middle.block ], [ %spec.select.i, %scalar.ph ] ; 2 uses
  %.1.i.lcssa = phi i32 [ %i.bf, %middle.block ], [ %.1.i, %scalar.ph ] ; 2 uses
  %i.bn = icmp eq i32 %spec.select.i.lcssa, 1
  %i.bo = icmp eq i32 %.1.i.lcssa, 1
  %or.cond.i = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond.i, label %IsDegenerated.exit.thread228, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.bp = udiv i32 %i.an, 20                      ; 2 uses
  %i.bq = icmp ugt i32 %spec.select.i.lcssa, %i.bp
  %.not238 = icmp ugt i32 %.1.i.lcssa, %i.bp
  %or.cond239 = select i1 %i.bq, i1 true, i1 %.not238
  br i1 %or.cond239, label %.critedge191, label %IsDegenerated.exit.thread228

IsDegenerated.exit.thread228:                     ; preds = %bb.l, %._crit_edge.i, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !130

.loopexit:                                        ; preds = %IsDegenerated.exit.thread228, %bb.j, %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 13 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !32
  %.not270.a = icmp eq i32 %i.bs, 0
  br i1 %.not270.a, label %.preheader243.preheader, label %.lr.ph250

.preheader243.preheader:                          ; preds = %bb.m, %.loopexit
  %.ph = phi i32 [ 0, %.loopexit ], [ %i.bu, %bb.m ]
  br label %.preheader243

.lr.ph250:                                        ; preds = %.loopexit
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.bu = load i32, ptr %i.br, align 8, !tbaa !32 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp samesign ult i64 %indvars.iv.next282, %i.bv
  br i1 %i.bw, label %bb.n, label %.preheader243.preheader, !llvm.loop !131

bb.n:                                             ; preds = %.lr.ph250, %bb.m
  %indvars.iv281 = phi i64 [ 0, %.lr.ph250 ], [ %indvars.iv.next282, %bb.m ] ; 2 uses
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.by = tail call ptr @cmsBuildTabulatedToneCurve16(ptr noundef %i.bx, i32 noundef 4096, ptr noundef null) #9 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv281
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !50
  %i.ca = icmp eq ptr %i.by, null
  br i1 %i.ca, label %.critedge191, label %bb.m

.preheader243:                                    ; preds = %.preheader243.backedge, %.preheader243.preheader
  %i.cb = phi i32 [ %.ph, %.preheader243.preheader ], [ %.be, %.preheader243.backedge ] ; 3 uses
  %indvars.iv294 = phi i64 [ 0, %.preheader243.preheader ], [ %indvars.iv294.be, %.preheader243.backedge ] ; 4 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv294 to i32
  %i.cd = uitofp nneg i32 %i.cc to float
  %i.ce = fdiv float %i.cd, 4.095000e+03          ; 2 uses
  %.not271.a = icmp eq i32 %i.cb, 0
  br i1 %.not271.a, label %._crit_edge, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %.preheader243
  %wide.trip.count287 = zext i32 %i.cb to i64     ; 3 uses
  %min.iters.check365 = icmp ult i32 %i.cb, 8
  br i1 %min.iters.check365, label %.lr.ph252.preheader438, label %vector.ph366

vector.ph366:                                     ; preds = %.lr.ph252.preheader
  %n.vec367 = and i64 %wide.trip.count287, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ce, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph366
  %index369 = phi i64 [ 0, %vector.ph366 ], [ %index.next370, %vector.body368 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index369 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <4 x float> %broadcast.splat, ptr %i.cf, align 16, !tbaa !52
  store <4 x float> %broadcast.splat, ptr %i.cg, align 16, !tbaa !52
  %index.next370 = add nuw i64 %index369, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next370, %n.vec367
  br i1 %i.ch, label %middle.block371, label %vector.body368, !llvm.loop !132

middle.block371:                                  ; preds = %vector.body368
  %cmp.n372 = icmp eq i64 %n.vec367, %wide.trip.count287
  br i1 %cmp.n372, label %._crit_edge, label %.lr.ph252.preheader438

.lr.ph252.preheader438:                           ; preds = %.lr.ph252.preheader, %middle.block371
  %indvars.iv284.ph = phi i64 [ 0, %.lr.ph252.preheader ], [ %n.vec367, %middle.block371 ]
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader438, %.lr.ph252
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %.lr.ph252 ], [ %indvars.iv284.ph, %.lr.ph252.preheader438 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv284
  store float %i.ce, ptr %i.ci, align 4, !tbaa !52
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge, label %.lr.ph252, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph252, %middle.block371, %.preheader243
  call void @cmsPipelineEvalFloat(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.p) #9
  %i.cj = load i32, ptr %i.br, align 8, !tbaa !32 ; 3 uses
  %.not272 = icmp eq i32 %i.cj, 0
  br i1 %.not272, label %._crit_edge256.thread, label %.lr.ph255

.lr.ph255:                                        ; preds = %._crit_edge
  %wide.trip.count292 = zext i32 %i.cj to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph255, %bb.s
  %indvars.iv289 = phi i64 [ 0, %.lr.ph255 ], [ %indvars.iv.next290, %bb.s ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv289
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !50
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !65 ; 2 uses
  %.not186 = icmp eq ptr %i.cn, null
  br i1 %.not186, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv289
  %i.cp = load float, ptr %i.co, align 4, !tbaa !52
  %i.cq = fpext float %i.cp to double
  %i.cr = fmul double %i.cq, 6.553500e+04
  %i.cs = fadd double %i.cr, 5.000000e-01         ; 3 uses
  %i.ct = fcmp ugt double %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.q, label %_cmsQuickSaturateWord.exit

bb.q:                                             ; preds = %bb.p
  %i.cu = fcmp ult double %i.cs, 6.553500e+04
  br i1 %i.cu, label %bb.r, label %_cmsQuickSaturateWord.exit

bb.r:                                             ; preds = %bb.q
  %i.cv = fadd double %i.cs, -3.276700e+04
  %i.cw = fadd double %i.cv, f0x4238000000000000
  %i.cx = bitcast double %i.cw to i64
  %i.cy = lshr i64 %i.cx, 16
  %i.cz = trunc i64 %i.cy to i16
  %i.da = add i16 %i.cz, 32767
  br label %_cmsQuickSaturateWord.exit

_cmsQuickSaturateWord.exit:                       ; preds = %bb.p, %bb.q, %bb.r
  %.0.i = phi i16 [ %i.da, %bb.r ], [ 0, %bb.p ], [ -1, %bb.q ]
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %indvars.iv294
  store i16 %.0.i, ptr %i.db, align 2, !tbaa !45
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %_cmsQuickSaturateWord.exit
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %._crit_edge256, label %bb.o, !llvm.loop !134

._crit_edge256:                                   ; preds = %bb.s
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond297.not = icmp eq i64 %indvars.iv.next295, 4096
  br i1 %exitcond297.not, label %.lr.ph259, label %.preheader243.backedge

.preheader243.backedge:                           ; preds = %._crit_edge256, %._crit_edge256.thread
  %.be = phi i32 [ %i.cj, %._crit_edge256 ], [ 0, %._crit_edge256.thread ]
  %indvars.iv294.be = phi i64 [ %indvars.iv.next295, %._crit_edge256 ], [ %indvars.iv.next295335, %._crit_edge256.thread ]
  br label %.preheader243, !llvm.loop !135

._crit_edge256.thread:                            ; preds = %._crit_edge
  %indvars.iv.next295335 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond297.not336 = icmp eq i64 %indvars.iv.next295335, 4096
  br i1 %exitcond297.not336, label %.preheader240, label %.preheader243.backedge

.preheader240:                                    ; preds = %._crit_edge256.thread, %SlopeLimiting.exit
  %i.dc = load i32, ptr %i.br, align 8, !tbaa !32
  %.not429 = icmp eq i32 %i.dc, 0
  br i1 %.not429, label %.critedge._crit_edge, label %.lr.ph357

.lr.ph259:                                        ; preds = %._crit_edge256, %SlopeLimiting.exit
  %indvars.iv298 = phi i64 [ %indvars.iv.next299, %SlopeLimiting.exit ], [ 0, %._crit_edge256 ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv298
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !50 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !147 ; 3 uses
  %i.dh = uitofp i32 %i.dg to double
  %i.di = call double @llvm.fmuladd.f64(double %i.dh, double 2.000000e-02, double 5.000000e-01)
  %i.dj = call double @llvm.floor.f64(double %i.di)
  %i.dk = fptosi double %i.dj to i32              ; 7 uses
  %i.dl = xor i32 %i.dk, -1
  %i.dm = add i32 %i.dg, %i.dl                    ; 4 uses
  %i.dn = call i32 @cmsIsToneCurveDescending(ptr noundef %i.de) #9
  %.not.i198 = icmp eq i32 %i.dn, 0               ; 2 uses
  %..i199 = select i1 %.not.i198, double 0.000000e+00, double 6.553500e+04
  %.38.i = select i1 %.not.i198, double 6.553500e+04, double 0.000000e+00
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !65 ; 6 uses
  %5 = sext i32 %i.dk to i64
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %5
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !45
  %i.ds = uitofp i16 %i.dr to double              ; 2 uses
  %i.dt = fsub double %i.ds, %..i199
  %6 = sitofp i32 %i.dk to double                 ; 3 uses
  %i.du = fdiv double %i.dt, %6                   ; 3 uses
  %i.dv = fneg double %i.du
  %i.dw = call double @llvm.fmuladd.f64(double %i.dv, double %6, double %i.ds) ; 2 uses
  %7 = icmp sgt i32 %i.dk, 0
  br i1 %7, label %.lr.ph.preheader.i, label %._crit_edge.i200

.lr.ph.preheader.i:                               ; preds = %.lr.ph259
  %wide.trip.count.i201 = zext nneg i32 %i.dk to i64 ; 3 uses
  %min.iters.check392 = icmp ult i32 %i.dk, 8
  br i1 %min.iters.check392, label %.lr.ph.i202.preheader, label %vector.ph393

vector.ph393:                                     ; preds = %.lr.ph.preheader.i
  %n.vec394 = and i64 %wide.trip.count.i201, 2147483640 ; 3 uses
  %broadcast.splatinsert395.a = insertelement <8 x double> poison, double %i.du, i64 0
  %broadcast.splat396.a = shufflevector <8 x double> %broadcast.splatinsert395.a, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert397 = insertelement <8 x double> poison, double %i.dw, i64 0
  %broadcast.splat398 = shufflevector <8 x double> %broadcast.splatinsert397, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph393
  %index400 = phi i64 [ 0, %vector.ph393 ], [ %index.next404, %vector.body399 ] ; 2 uses
  %vec.ind401 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph393 ], [ %vec.ind.next405, %vector.body399 ] ; 2 uses
  %i.dx = uitofp nneg <8 x i32> %vec.ind401 to <8 x double>
  %i.dy = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dx, <8 x double> %broadcast.splat396.a, <8 x double> %broadcast.splat398)
  %i.dz = fadd <8 x double> %i.dy, splat (double 5.000000e-01) ; 3 uses
  %i.ea = fcmp ugt <8 x double> %i.dz, zeroinitializer
  %i.eb = fcmp oge <8 x double> %i.dz, splat (double 6.553500e+04)
  %i.ec = fadd <8 x double> %i.dz, splat (double -3.276700e+04)
  %i.ed = fadd <8 x double> %i.ec, splat (double f0x4238000000000000)
  %i.ee = bitcast <8 x double> %i.ed to <8 x i64>
  %i.ef = lshr <8 x i64> %i.ee, splat (i64 16)
  %i.eg = trunc <8 x i64> %i.ef to <8 x i16>
  %i.eh = add <8 x i16> %i.eg, splat (i16 32767)
  %predphi402 = select <8 x i1> %i.eb, <8 x i16> splat (i16 -1), <8 x i16> %i.eh
  %predphi403 = select <8 x i1> %i.ea, <8 x i16> %predphi402, <8 x i16> zeroinitializer
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %index400
  store <8 x i16> %predphi403, ptr %i.ei, align 2, !tbaa !45
  %index.next404 = add nuw i64 %index400, 8       ; 2 uses
  %vec.ind.next405 = add <8 x i32> %vec.ind401, splat (i32 8)
  %i.ej = icmp eq i64 %index.next404, %n.vec394
  br i1 %i.ej, label %middle.block406, label %vector.body399, !llvm.loop !136

middle.block406:                                  ; preds = %vector.body399
  %cmp.n407 = icmp eq i64 %n.vec394, %wide.trip.count.i201
  br i1 %cmp.n407, label %._crit_edge.i200, label %.lr.ph.i202.preheader

.lr.ph.i202.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block406
  %indvars.iv.i203.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec394, %middle.block406 ]
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202.preheader, %_cmsQuickSaturateWord.exit.i
  %indvars.iv.i203 = phi i64 [ %indvars.iv.next.i204, %_cmsQuickSaturateWord.exit.i ], [ %indvars.iv.i203.ph, %.lr.ph.i202.preheader ] ; 3 uses
  %i.ek = trunc nuw nsw i64 %indvars.iv.i203 to i32
  %i.el = uitofp nneg i32 %i.ek to double
  %i.em = call double @llvm.fmuladd.f64(double %i.el, double %i.du, double %i.dw)
  %i.en = fadd double %i.em, 5.000000e-01         ; 3 uses
  %i.eo = fcmp ugt double %i.en, 0.000000e+00
  br i1 %i.eo, label %bb.t, label %_cmsQuickSaturateWord.exit.i

bb.t:                                             ; preds = %.lr.ph.i202
  %i.ep = fcmp ult double %i.en, 6.553500e+04
  br i1 %i.ep, label %bb.u, label %_cmsQuickSaturateWord.exit.i

bb.u:                                             ; preds = %bb.t
  %i.eq = fadd double %i.en, -3.276700e+04
  %i.er = fadd double %i.eq, f0x4238000000000000
  %i.es = bitcast double %i.er to i64
  %i.et = lshr i64 %i.es, 16
  %i.eu = trunc i64 %i.et to i16
  %i.ev = add i16 %i.eu, 32767
  br label %_cmsQuickSaturateWord.exit.i

_cmsQuickSaturateWord.exit.i:                     ; preds = %bb.u, %bb.t, %.lr.ph.i202
  %.0.i.i = phi i16 [ %i.ev, %bb.u ], [ 0, %.lr.ph.i202 ], [ -1, %bb.t ]
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %indvars.iv.i203
  store i16 %.0.i.i, ptr %i.ew, align 2, !tbaa !45
  %indvars.iv.next.i204 = add nuw nsw i64 %indvars.iv.i203, 1 ; 2 uses
  %exitcond.not.i205 = icmp eq i64 %indvars.iv.next.i204, %wide.trip.count.i201
  br i1 %exitcond.not.i205, label %._crit_edge.i200, label %.lr.ph.i202, !llvm.loop !137

._crit_edge.i200:                                 ; preds = %_cmsQuickSaturateWord.exit.i, %middle.block406, %.lr.ph259
  %i.ex = sext i32 %i.dm to i64                   ; 4 uses
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !45
  %i.fa = uitofp i16 %i.ez to double              ; 2 uses
  %i.fb = fsub double %.38.i, %i.fa
  %i.fc = fdiv double %i.fb, %6                   ; 3 uses
  %i.fd = sitofp i32 %i.dm to double
  %i.fe = fneg double %i.fc
  %i.ff = call double @llvm.fmuladd.f64(double %i.fe, double %i.fd, double %i.fa) ; 2 uses
  %i.fg = load i32, ptr %i.df, align 8, !tbaa !147 ; 3 uses
  %i.fh = icmp slt i32 %i.dm, %i.fg
  br i1 %i.fh, label %.lr.ph44.i.preheader, label %SlopeLimiting.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i200
  %i.fi = add i32 %i.fg, %i.dk
  %i.fj = sub i32 %i.fi, %i.dg                    ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %min.iters.check375 = icmp ult i32 %i.fj, 7
  br i1 %min.iters.check375, label %.lr.ph44.i.preheader437, label %vector.ph376

vector.ph376:                                     ; preds = %.lr.ph44.i.preheader
  %n.vec377 = and i64 %i.fl, 8589934584           ; 3 uses
  %i.fm = add nsw i64 %n.vec377, %i.ex
  %broadcast.splatinsert378.a = insertelement <8 x double> poison, double %i.fc, i64 0
  %broadcast.splat379.a = shufflevector <8 x double> %broadcast.splatinsert378.a, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert380.a = insertelement <8 x double> poison, double %i.ff, i64 0
  %broadcast.splat381.a = shufflevector <8 x double> %broadcast.splatinsert380.a, <8 x double> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert382 = insertelement <8 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat383 = shufflevector <8 x i32> %broadcast.splatinsert382, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat383, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.gep = getelementptr [2 x i8], ptr %i.dp, i64 %i.ex
  br label %vector.body384

vector.body384:                                   ; preds = %vector.body384, %vector.ph376
  %index385 = phi i64 [ 0, %vector.ph376 ], [ %index.next387, %vector.body384 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph376 ], [ %vec.ind.next, %vector.body384 ] ; 2 uses
  %i.fn = sitofp <8 x i32> %vec.ind to <8 x double>
  %i.fo = call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.fn, <8 x double> %broadcast.splat379.a, <8 x double> %broadcast.splat381.a)
  %i.fp = fadd <8 x double> %i.fo, splat (double 5.000000e-01) ; 3 uses
  %i.fq = fcmp ugt <8 x double> %i.fp, zeroinitializer
  %i.fr = fcmp oge <8 x double> %i.fp, splat (double 6.553500e+04)
  %i.fs = fadd <8 x double> %i.fp, splat (double -3.276700e+04)
  %i.ft = fadd <8 x double> %i.fs, splat (double f0x4238000000000000)
  %i.fu = bitcast <8 x double> %i.ft to <8 x i64>
  %i.fv = lshr <8 x i64> %i.fu, splat (i64 16)
  %i.fw = trunc <8 x i64> %i.fv to <8 x i16>
  %i.fx = add <8 x i16> %i.fw, splat (i16 32767)
  %predphi = select <8 x i1> %i.fr, <8 x i16> splat (i16 -1), <8 x i16> %i.fx
  %predphi386 = select <8 x i1> %i.fq, <8 x i16> %predphi, <8 x i16> zeroinitializer
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index385
  store <8 x i16> %predphi386, ptr %gep, align 2, !tbaa !45
  %index.next387 = add nuw i64 %index385, 8       ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.fy = icmp eq i64 %index.next387, %n.vec377
  br i1 %i.fy, label %middle.block388, label %vector.body384, !llvm.loop !138

middle.block388:                                  ; preds = %vector.body384
  %cmp.n389 = icmp eq i64 %i.fl, %n.vec377
  br i1 %cmp.n389, label %SlopeLimiting.exit, label %.lr.ph44.i.preheader437

.lr.ph44.i.preheader437:                          ; preds = %.lr.ph44.i.preheader, %middle.block388
  %indvars.iv47.i.ph = phi i64 [ %i.ex, %.lr.ph44.i.preheader ], [ %i.fm, %middle.block388 ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader437, %_cmsQuickSaturateWord.exit40.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %_cmsQuickSaturateWord.exit40.i ], [ %indvars.iv47.i.ph, %.lr.ph44.i.preheader437 ] ; 3 uses
  %i.fz = trunc nsw i64 %indvars.iv47.i to i32
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = call double @llvm.fmuladd.f64(double %i.ga, double %i.fc, double %i.ff)
  %i.gc = fadd double %i.gb, 5.000000e-01         ; 3 uses
  %i.gd = fcmp ugt double %i.gc, 0.000000e+00
  br i1 %i.gd, label %bb.v, label %_cmsQuickSaturateWord.exit40.i

bb.v:                                             ; preds = %.lr.ph44.i
  %i.ge = fcmp ult double %i.gc, 6.553500e+04
  br i1 %i.ge, label %bb.w, label %_cmsQuickSaturateWord.exit40.i

bb.w:                                             ; preds = %bb.v
  %i.gf = fadd double %i.gc, -3.276700e+04
  %i.gg = fadd double %i.gf, f0x4238000000000000
  %i.gh = bitcast double %i.gg to i64
  %i.gi = lshr i64 %i.gh, 16
  %i.gj = trunc i64 %i.gi to i16
  %i.gk = add i16 %i.gj, 32767
  br label %_cmsQuickSaturateWord.exit40.i

_cmsQuickSaturateWord.exit40.i:                   ; preds = %bb.w, %bb.v, %.lr.ph44.i
  %.0.i39.i = phi i16 [ %i.gk, %bb.w ], [ 0, %.lr.ph44.i ], [ -1, %bb.v ]
  %i.gl = getelementptr inbounds [2 x i8], ptr %i.dp, i64 %indvars.iv47.i
  store i16 %.0.i39.i, ptr %i.gl, align 2, !tbaa !45
  %indvars.iv.next48.i = add nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next48.i to i32
  %exitcond50.not.i = icmp eq i32 %i.fg, %lftr.wideiv.i
  br i1 %exitcond50.not.i, label %SlopeLimiting.exit, label %.lr.ph44.i, !llvm.loop !139

SlopeLimiting.exit:                               ; preds = %_cmsQuickSaturateWord.exit40.i, %middle.block388, %._crit_edge.i200
  %indvars.iv.next299 = add nuw nsw i64 %indvars.iv298, 1 ; 2 uses
  %i.gm = load i32, ptr %i.br, align 8, !tbaa !32
  %i.gn = zext i32 %i.gm to i64
  %i.go = icmp samesign ult i64 %indvars.iv.next299, %i.gn
  br i1 %i.go, label %.lr.ph259, label %.preheader240, !llvm.loop !140

.backedge:                                        ; preds = %._crit_edge.i216
  br i1 %.not184, label %.critedge191, label %.backedge342

.backedge342:                                     ; preds = %.backedge, %IsDegenerated.exit222
  %indvars.iv301.be = add nuw nsw i64 %indvars.iv301356, 1 ; 2 uses
  %i.gp = load i32, ptr %i.br, align 8, !tbaa !32 ; 2 uses
  %i.gq = zext i32 %i.gp to i64
  %i.gr = icmp samesign ult i64 %indvars.iv301.be, %i.gq
  br i1 %i.gr, label %.lr.ph357, label %..critedge.preheader_crit_edge, !llvm.loop !141

..critedge.preheader_crit_edge:                   ; preds = %.backedge342
  %i.gs = icmp eq i32 %i.gp, 0
  br i1 %i.gs, label %.critedge._crit_edge, label %.lr.ph263

.lr.ph357:                                        ; preds = %.preheader240, %.backedge342
  %indvars.iv301356 = phi i64 [ %indvars.iv301.be, %.backedge342 ], [ 0, %.preheader240 ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv301356 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !50
  %i.gv = call i32 @cmsIsToneCurveLinear(ptr noundef %i.gu) #9 ; 0 uses
  %i.gw = load ptr, ptr %i.gt, align 8, !tbaa !50
  %i.gx = call i32 @cmsIsToneCurveMonotonic(ptr noundef %i.gw) #9
  %.not184 = icmp eq i32 %i.gx, 0                 ; 2 uses
  %i.gy = load ptr, ptr %i.gt, align 8, !tbaa !50 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !147 ; 4 uses
  %.not.i206 = icmp eq i32 %i.ha, 0
  br i1 %.not.i206, label %IsDegenerated.exit222, label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph357
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !65 ; 2 uses
  %wide.trip.count.i208 = zext i32 %i.ha to i64   ; 3 uses
  %min.iters.check410 = icmp ult i32 %i.ha, 8
  br i1 %min.iters.check410, label %scalar.ph409.preheader, label %vector.ph411

vector.ph411:                                     ; preds = %.lr.ph.i207
  %n.vec412 = and i64 %wide.trip.count.i208, 4294967288 ; 3 uses
  br label %vector.body413

vector.body413:                                   ; preds = %vector.body413, %vector.ph411
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next421, %vector.body413 ] ; 2 uses
  %vec.phi415.a = phi <4 x i32> [ zeroinitializer, %vector.ph411 ], [ %i.hp, %vector.body413 ]
  %vec.phi416.a = phi <4 x i32> [ zeroinitializer, %vector.ph411 ], [ %i.hq, %vector.body413 ]
  %vec.phi417 = phi <4 x i32> [ zeroinitializer, %vector.ph411 ], [ %i.hj, %vector.body413 ]
  %vec.phi418 = phi <4 x i32> [ zeroinitializer, %vector.ph411 ], [ %i.hk, %vector.body413 ]
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %index414 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %wide.load419 = load <4 x i16>, ptr %i.hd, align 2, !tbaa !45 ; 2 uses
  %wide.load420 = load <4 x i16>, ptr %i.he, align 2, !tbaa !45 ; 2 uses
  %i.hf = icmp eq <4 x i16> %wide.load419, zeroinitializer
  %i.hg = icmp eq <4 x i16> %wide.load420, zeroinitializer
  %i.hh = zext <4 x i1> %i.hf to <4 x i32>
  %i.hi = zext <4 x i1> %i.hg to <4 x i32>
  %i.hj = add <4 x i32> %vec.phi417, %i.hh        ; 2 uses
  %i.hk = add <4 x i32> %vec.phi418, %i.hi        ; 2 uses
  %i.hl = icmp eq <4 x i16> %wide.load419, splat (i16 -1)
  %i.hm = icmp eq <4 x i16> %wide.load420, splat (i16 -1)
  %i.hn = zext <4 x i1> %i.hl to <4 x i32>
  %i.ho = zext <4 x i1> %i.hm to <4 x i32>
  %i.hp = add <4 x i32> %vec.phi415.a, %i.hn      ; 2 uses
  %i.hq = add <4 x i32> %vec.phi416.a, %i.ho      ; 2 uses
  %index.next421 = add nuw i64 %index414, 8       ; 2 uses
  %i.hr = icmp eq i64 %index.next421, %n.vec412
  br i1 %i.hr, label %middle.block422, label %vector.body413, !llvm.loop !142

middle.block422:                                  ; preds = %vector.body413
  %bin.rdx423 = add <4 x i32> %i.hq, %i.hp
  %i.hs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx423) ; 2 uses
  %bin.rdx424 = add <4 x i32> %i.hk, %i.hj
  %i.ht = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx424) ; 2 uses
  %cmp.n425 = icmp eq i64 %n.vec412, %wide.trip.count.i208
  br i1 %cmp.n425, label %._crit_edge.i216, label %scalar.ph409.preheader

scalar.ph409.preheader:                           ; preds = %.lr.ph.i207, %middle.block422
  %indvars.iv.i209.ph = phi i64 [ 0, %.lr.ph.i207 ], [ %n.vec412, %middle.block422 ]
  %.025.i210.ph = phi i32 [ 0, %.lr.ph.i207 ], [ %i.hs, %middle.block422 ]
  %.01724.i211.ph = phi i32 [ 0, %.lr.ph.i207 ], [ %i.ht, %middle.block422 ]
  br label %scalar.ph409

scalar.ph409:                                     ; preds = %scalar.ph409.preheader, %scalar.ph409
  %indvars.iv.i209 = phi i64 [ %indvars.iv.next.i214, %scalar.ph409 ], [ %indvars.iv.i209.ph, %scalar.ph409.preheader ] ; 2 uses
  %.025.i210 = phi i32 [ %.1.i213, %scalar.ph409 ], [ %.025.i210.ph, %scalar.ph409.preheader ]
  %.01724.i211 = phi i32 [ %spec.select.i212, %scalar.ph409 ], [ %.01724.i211.ph, %scalar.ph409.preheader ]
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %indvars.iv.i209
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !45 ; 2 uses
  %i.hw = icmp eq i16 %i.hv, 0
  %i.hx = zext i1 %i.hw to i32
  %spec.select.i212 = add i32 %.01724.i211, %i.hx ; 2 uses
  %i.hy = icmp eq i16 %i.hv, -1
  %i.hz = zext i1 %i.hy to i32
  %.1.i213 = add i32 %.025.i210, %i.hz            ; 2 uses
  %indvars.iv.next.i214 = add nuw nsw i64 %indvars.iv.i209, 1 ; 2 uses
  %exitcond.not.i215 = icmp eq i64 %indvars.iv.next.i214, %wide.trip.count.i208
  br i1 %exitcond.not.i215, label %._crit_edge.i216, label %scalar.ph409, !llvm.loop !143
end_hunk_1
