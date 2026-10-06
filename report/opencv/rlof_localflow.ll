Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rlof_localflow?download=true
inline.NumInlined: 1717
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK2cv7optflow3plk3ica14TrackerInvokerclERKNS_5RangeE:bb.a
bb.h:                                             ; preds = %bb.g
  %i.co = load i8, ptr %i.aw, align 8, !tbaa !160, !range !25, !noundef !26
  %i.cp = trunc nuw i8 %i.co to i1
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !389 ; 2 uses
  br i1 %i.cp, label %.sink.split, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cq = load ptr, ptr %i.av, align 8, !tbaa !389
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.pre.sink = phi ptr [ %i.cq, %bb.i ], [ %.pre, %bb.h ] ; 2 uses
  %.sink = phi float [ 2.000000e+00, %bb.i ], [ %i.ch, %bb.h ]
  %i.cr = getelementptr inbounds [8 x i8], ptr %.pre.sink, i64 %indvars.iv374
  %i.cs = load <2 x float>, ptr %i.cr, align 4, !tbaa !48
  %i.ct = insertelement <2 x float> poison, float %.sink, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x float> %i.cs, %i.cu
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  %i.cw = phi ptr [ %.pre, %bb.h ], [ %.pre.sink, %.sink.split ]
  %.sroa.0241.0 = phi <2 x float> [ %i.cl, %bb.h ], [ %i.cv, %.sink.split ] ; 2 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %indvars.iv374
  store <2 x float> %.sroa.0241.0, ptr %i.cx, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.cy = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.cl)
  %i.cz = fptosi <2 x float> %i.cy to <2 x i32>
  store <2 x i32> %i.cz, ptr %8, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.da = load i32, ptr %i.o, align 8, !tbaa !153 ; 4 uses
  %i.db = mul nsw i32 %i.da, %i.da
  store i32 %i.db, ptr %i.b, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i32 0, ptr %10, align 4, !tbaa !76
  store i32 0, ptr %i.ax, align 4, !tbaa !77
  store i32 %i.da, ptr %i.ay, align 4, !tbaa !50
  store i32 %i.da, ptr %i.az, align 4, !tbaa !51
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.dc = load i32, ptr %i.ba, align 8, !tbaa !158
  %i.dd = load i32, ptr %i.bb, align 4, !tbaa !152
  %i.de = load i32, ptr %i.o, align 8, !tbaa !153
  %i.df = invoke fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr noundef nonnull align 8 dereferenceable(208) %i.n, i32 noundef %i.dc, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.dd, i32 noundef %i.de)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %i.df, label %bb.o, label %bb.at

bb.m:                                             ; preds = %bb.j
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.au

bb.n:                                             ; preds = %bb.k
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.au

bb.o:                                             ; preds = %bb.l
  %i.di = load i32, ptr %i.o, align 8, !tbaa !153
  %i.dj = sitofp i32 %i.di to float
  %i.dk = load <2 x float>, ptr %3, align 8, !tbaa !48
  %i.dl = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fsub <2 x float> %i.dm, %i.dk           ; 4 uses
  store <2 x float> %i.dn, ptr %3, align 8, !tbaa !48
  %i.do = fadd <2 x float> %i.cl, %i.dn           ; 3 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0
  %i.dq = call float @llvm.floor.f32(float %i.dp)
  %i.dr = extractelement <2 x float> %i.do, i64 1
  %i.ds = call float @llvm.floor.f32(float %i.dr)
  %i.dt = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.ds, i64 1
  %i.dv = fptosi <2 x float> %i.du to <2 x i32>   ; 4 uses
  %i.dw = extractelement <2 x i32> %i.dv, i64 0   ; 2 uses
  store <2 x i32> %i.dv, ptr %8, align 8, !tbaa !46
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dy = load i32, ptr %i.bc, align 4, !tbaa !43
  %i.dz = load i32, ptr %2, align 8, !tbaa !29
  %i.ea = sub nsw i32 %i.dy, %i.dz
  %i.eb = icmp sle i32 %i.ea, %i.dw
  %i.ec = extractelement <2 x i32> %i.dv, i64 1   ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 0
  %or.cond = or i1 %i.ed, %i.eb
  br i1 %or.cond, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = load i32, ptr %i.bd, align 8, !tbaa !44
  %i.ef = load i32, ptr %i.f, align 4, !tbaa !30  ; 3 uses
  %i.eg = xor i32 %i.ef, -1                       ; 2 uses
  %i.eh = add i32 %i.ee, %i.eg
  %.not = icmp sgt i32 %i.eh, %i.ec
  br i1 %.not, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.ei = load i32, ptr %i.at, align 8, !tbaa !156
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.s, label %bb.at

bb.s:                                             ; preds = %bb.r
  %i.ek = load ptr, ptr %i.bh, align 8, !tbaa !150 ; 2 uses
  %.not186 = icmp eq ptr %i.ek, null
  br i1 %.not186, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %indvars.iv374
  store i8 3, ptr %i.el, align 1, !tbaa !39
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.em = load ptr, ptr %i.be, align 8, !tbaa !151 ; 2 uses
  %.not187 = icmp eq ptr %i.em, null
  br i1 %.not187, label %bb.at, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %indvars.iv374
  store float 0.000000e+00, ptr %i.en, align 4, !tbaa !48
  br label %bb.at

bb.w:                                             ; preds = %bb.q
  %i.eo = uitofp <2 x i32> %i.dv to <2 x float>
  %i.ep = fsub <2 x float> %i.do, %i.eo           ; 3 uses
  %i.eq = fsub <2 x float> splat (float 1.000000e+00), %i.ep ; 3 uses
  %i.er = extractelement <2 x float> %i.eq, i64 0
  %i.es = extractelement <2 x float> %i.eq, i64 1 ; 2 uses
  %i.et = fmul float %i.er, %i.es
  %i.eu = fmul float %i.et, 1.638400e+04
  %i.ev = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ew = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ev) ; 2 uses
  %i.ex = extractelement <2 x float> %i.ep, i64 0
  %i.ey = fmul float %i.ex, %i.es
  %i.ez = fmul float %i.ey, 1.638400e+04
  %i.fa = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fb = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fa) ; 2 uses
  %shift = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.eq, %shift
  %i.fc = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fd = fmul float %i.fc, 1.638400e+04
  %i.fe = insertelement <4 x float> poison, float %i.fd, i64 0
  %i.ff = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fe) ; 2 uses
  %i.fg = add i32 %i.ew, %i.fb
  %i.fh = add i32 %i.fg, %i.ff
  %i.fi = sub i32 16384, %i.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !48
  %.sroa.033.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.032.0.copyload = load i64, ptr %8, align 8, !tbaa !46
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_RfS7_S7_NS_6Point_IiEE(i32 noundef %i.ew, i32 noundef %i.fb, i32 noundef %i.ff, i32 noundef %i.fi, i64 %.sroa.033.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.h, ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i64 %.sroa.032.0.copyload)
  %i.fj = load float, ptr %i.c, align 4, !tbaa !48 ; 3 uses
  %i.fk = load float, ptr %i.e, align 4, !tbaa !48 ; 4 uses
  %i.fl = load float, ptr %i.d, align 4, !tbaa !48 ; 3 uses
  %i.fm = fneg float %i.fl
  %i.fn = fadd float %i.fj, %i.fk
  %i.fo = fsub float %i.fj, %i.fk
  %i.fp = fmul float %i.fl, 4.000000e+00
  %i.fq = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fs = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.fp, i64 1
  %i.fu = fmul <2 x float> %i.fr, %i.ft
  %i.fv = insertelement <2 x float> poison, float %i.fj, i64 0 ; 2 uses
  %i.fw = insertelement <2 x float> %i.fv, float %i.fo, i64 1 ; 2 uses
  %i.fx = insertelement <2 x float> %i.fw, float %i.fk, i64 0
  %i.fy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fx, <2 x float> %i.fu) ; 2 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 1
  %i.ga = call noundef float @sqrtf(float noundef %i.fz) #20
  %i.gb = fsub float %i.fn, %i.ga
  %i.gc = load i32, ptr %i.b, align 4, !tbaa !46
  %i.gd = shl nsw i32 %i.gc, 1
  %i.ge = sitofp i32 %i.gd to float
  %i.gf = fdiv float %i.gb, %i.ge                 ; 2 uses
  %i.gg = load ptr, ptr %i.be, align 8, !tbaa !151 ; 2 uses
  %.not166 = icmp eq ptr %i.gg, null
  %i.gh = trunc i64 %.sroa.033.0.copyload to i32  ; 2 uses
  br i1 %.not166, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %indvars.iv374
  store float %i.gf, ptr %i.gi, align 4, !tbaa !48
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gj = load float, ptr %i.bf, align 4, !tbaa !159
  %i.gk = fcmp olt float %i.gf, %i.gj
  %i.gl = extractelement <2 x float> %i.fy, i64 0 ; 2 uses
  %i.gm = fcmp olt float %i.gl, f0x34000000
  %or.cond4 = select i1 %i.gk, i1 true, i1 %i.gm
  br i1 %or.cond4, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.gn = load i32, ptr %i.at, align 8, !tbaa !156
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.gp = load ptr, ptr %i.bh, align 8, !tbaa !150 ; 2 uses
  %.not185 = icmp eq ptr %i.gp, null
  br i1 %.not185, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 %indvars.iv374
  store i8 0, ptr %i.gq, align 1, !tbaa !39
  br label %.thread

bb.ac:                                            ; preds = %bb.y
  %i.gr = load i32, ptr %i.bg, align 4, !tbaa !154
  %i.gs = icmp sgt i32 %i.gr, 0
  br i1 %i.gs, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.ac
  %i.gt = fdiv float 1.000000e+00, %i.gl
  %i.gu = fadd <2 x float> %.sroa.0241.0, %i.dn
  %i.gv = icmp sgt i32 %i.ef, 0
  %i.gw = mul i32 %i.aa, %i.gh                    ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, 0
  %wide.trip.count372 = zext nneg i32 %i.ef to i64
  %wide.trip.count = zext nneg i32 %i.gw to i64
  %i.gy = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = insertelement <2 x float> %i.fv, float %i.fk, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %bb.as
  %.0135357 = phi i32 [ 0, %.lr.ph ], [ %i.mq, %bb.as ] ; 3 uses
  %.sroa.0235.0356 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.lx, %bb.as ]
  %.sroa.6.0355 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.lz, %bb.as ]
  %.sroa.0241.1354 = phi <2 x float> [ %i.gu, %.lr.ph ], [ %i.lt, %bb.as ] ; 4 uses
  %i.hb = trunc i32 %.0135357 to i8
  %i.hc = load ptr, ptr %i.bh, align 8, !tbaa !150
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %indvars.iv374
  store i8 %i.hb, ptr %i.hd, align 1, !tbaa !39
  %.sroa.0241.0.vec.extract = extractelement <2 x float> %.sroa.0241.1354, i64 0
  %.sroa.0241.4.vec.extract258 = extractelement <2 x float> %.sroa.0241.1354, i64 1
  %i.he = call float @llvm.floor.f32(float %.sroa.0241.0.vec.extract)
  %i.hf = call float @llvm.floor.f32(float %.sroa.0241.4.vec.extract258)
  %i.hg = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hh = insertelement <2 x float> %i.hg, float %i.hf, i64 1
  %i.hi = fptosi <2 x float> %i.hh to <2 x i32>   ; 3 uses
  %i.hj = extractelement <2 x i32> %i.hi, i64 0   ; 3 uses
  %i.hk = icmp slt i32 %i.hj, 0
  br i1 %i.hk, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hl = load i32, ptr %i.bi, align 4, !tbaa !43
  %i.hm = sub nsw i32 %i.hl, %i.gh
  %i.hn = icmp sle i32 %i.hm, %i.hj
  %i.ho = extractelement <2 x i32> %i.hi, i64 1   ; 3 uses
  %i.hp = icmp slt i32 %i.ho, 0
  %or.cond7 = or i1 %i.hp, %i.hn
  br i1 %or.cond7, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hq = load i32, ptr %i.bj, align 8, !tbaa !44
  %i.hr = add i32 %i.hq, %i.eg
  %.not167 = icmp sgt i32 %i.hr, %i.ho
  br i1 %.not167, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.hs = load i32, ptr %i.at, align 8, !tbaa !156
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.hu = load ptr, ptr %i.bh, align 8, !tbaa !150 ; 2 uses
  %.not184 = icmp eq ptr %i.hu, null
  br i1 %.not184, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 %indvars.iv374
  store i8 3, ptr %i.hv, align 1, !tbaa !39
  br label %.thread

bb.aj:                                            ; preds = %bb.af
  %i.hw = uitofp <2 x i32> %i.hi to <2 x float>
  %i.hx = fsub <2 x float> %.sroa.0241.1354, %i.hw ; 3 uses
  %i.hy = fsub <2 x float> splat (float 1.000000e+00), %i.hx ; 3 uses
  %i.hz = extractelement <2 x float> %i.hy, i64 0
  %i.ia = extractelement <2 x float> %i.hy, i64 1 ; 2 uses
  %i.ib = fmul float %i.hz, %i.ia
  %i.ic = fmul float %i.ib, 1.638400e+04
  %i.id = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.ie = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.id) ; 2 uses
  %i.if = extractelement <2 x float> %i.hx, i64 0
  %i.ig = fmul float %i.if, %i.ia
  %i.ih = fmul float %i.ig, 1.638400e+04
  %i.ii = insertelement <4 x float> poison, float %i.ih, i64 0
  %i.ij = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ii) ; 2 uses
  %shift419 = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop420 = fmul <2 x float> %shift419, %i.hy
  %i.ik = extractelement <2 x float> %foldExtExtBinop420, i64 0
  %i.il = fmul float %i.ik, 1.638400e+04
  %i.im = insertelement <4 x float> poison, float %i.il, i64 0
  %i.in = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.im) ; 2 uses
  %i.io = add i32 %i.ie, %i.ij
  %i.ip = add i32 %i.io, %i.in
  %i.iq = sub i32 16384, %i.ip
  br i1 %i.gv, label %.lr.ph342, label %._crit_edge343

.lr.ph342:                                        ; preds = %bb.aj
  %i.ir = mul nuw nsw i32 %i.aa, %i.hj
  %i.is = load i32, ptr %i.bk, align 4, !tbaa !72
  %i.it = icmp slt i32 %i.is, 2
  %i.iu = load ptr, ptr %i.bl, align 8, !tbaa !79 ; 3 uses
  %i.iv = zext nneg i32 %i.ir to i64              ; 2 uses
  %i.iw = load i32, ptr %i.bo, align 4, !tbaa !72
  %i.ix = icmp slt i32 %i.iw, 2
  %i.iy = load ptr, ptr %i.bp, align 8, !tbaa !79
  %i.iz = load i64, ptr %i.bq, align 8
  %i.ja = load i32, ptr %i.br, align 4, !tbaa !72
  %i.jb = icmp slt i32 %i.ja, 2
  %i.jc = load ptr, ptr %i.bs, align 8, !tbaa !79
  %i.jd = load i64, ptr %i.bt, align 8
  br i1 %i.gx, label %.lr.ph342.split.us.preheader, label %._crit_edge343

.lr.ph342.split.us.preheader:                     ; preds = %.lr.ph342
  %i.je = zext nneg i32 %i.ho to i64
  br label %.lr.ph342.split.us

.lr.ph342.split.us:                               ; preds = %.lr.ph342.split.us.preheader, %._crit_edge.us
  %indvars.iv369 = phi i64 [ 0, %.lr.ph342.split.us.preheader ], [ %indvars.iv.next370, %._crit_edge.us ] ; 4 uses
  %i.jf = phi <2 x float> [ zeroinitializer, %.lr.ph342.split.us.preheader ], [ %i.lk, %._crit_edge.us ]
  br i1 %i.it, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph342.split.us
  %i.jg = add nuw nsw i64 %indvars.iv369, %i.je   ; 2 uses
  %i.jh = load i64, ptr %i.bm, align 8, !tbaa !84 ; 2 uses
  %i.ji = mul i64 %i.jh, %i.jg
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.ji
  %i.jk = load i64, ptr %i.bn, align 8, !tbaa !84
  %i.jl = mul i64 %i.jk, %i.iv                    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jl
  %i.jn = add nuw nsw i64 %i.jg, 1
  %i.jo = mul i64 %i.jh, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jl
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us

bb.al:                                            ; preds = %.lr.ph342.split.us
  %i.jr = load i64, ptr %i.bm, align 8, !tbaa !84
  %i.js = mul i64 %i.jr, %i.iv
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.js ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us:             ; preds = %bb.al, %bb.ak
  %.0.i306.us = phi ptr [ %i.jt, %bb.al ], [ %i.jm, %bb.ak ] ; 2 uses
  %.0.i218.us = phi ptr [ %i.jt, %bb.al ], [ %i.jq, %bb.ak ] ; 2 uses
  %i.ju = mul i64 %i.iz, %indvars.iv369
  %.0.i220.us.idx = select i1 %i.ix, i64 0, i64 %i.ju
  %.0.i220.us = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.0.i220.us.idx
  %i.jv = mul i64 %i.jd, %indvars.iv369
  %.0.i221.us.idx = select i1 %i.jb, i64 0, i64 %i.jv
  %.0.i221.us = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.0.i221.us.idx
  br label %bb.am

bb.am:                                            ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us, %bb.an
  %indvars.iv = phi i64 [ 0, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us ], [ %indvars.iv.next, %bb.an ] ; 5 uses
  %.0336.us = phi ptr [ %.0.i221.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us ], [ %i.ll, %bb.an ] ; 3 uses
  %i.jw = phi <2 x float> [ %i.jf, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit219.us ], [ %i.lk, %bb.an ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.0336.us, i64 2
  %i.jy = load i16, ptr %.0336.us, align 2, !tbaa !86 ; 2 uses
  %i.jz = icmp eq i16 %i.jy, 0
  %i.ka = load i16, ptr %i.jx, align 2, !tbaa !86 ; 2 uses
  %i.kb = icmp eq i16 %i.ka, 0
  %or.cond408 = select i1 %i.jz, i1 %i.kb, i1 false
  br i1 %or.cond408, label %bb.an, label %._crit_edge

._crit_edge:                                      ; preds = %bb.am
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i306.us, i64 %indvars.iv
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !39
  %i.ke = zext i8 %i.kd to i32
  %i.kf = mul nsw i32 %i.ie, %i.ke
  %i.kg = add nuw nsw i64 %indvars.iv, %i.bv      ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.0.i306.us, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !39
  %i.kj = zext i8 %i.ki to i32
  %i.kk = mul nsw i32 %i.ij, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i218.us, i64 %indvars.iv
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !39
  %i.kn = zext i8 %i.km to i32
  %i.ko = mul nsw i32 %i.in, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i218.us, i64 %i.kg
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !39
  %i.kr = zext i8 %i.kq to i32
  %i.ks = mul nsw i32 %i.iq, %i.kr
  %i.kt = add i32 %i.kf, 256
  %i.ku = add i32 %i.kt, %i.kk
  %i.kv = add i32 %i.ku, %i.ko
end_hunk_0
begin_hunk_1_@_ZNK2cv7optflow5beplk3ica14TrackerInvokerclERKNS_5RangeE:bb.a
  %.0.i356.us.idx = select i1 %i.gv, i64 0, i64 %i.ja
  %.0.i356.us = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.0.i356.us.idx
  %i.jb = mul i64 %i.ii, %indvars.iv692
  %.0.i357.us.idx = select i1 %i.gy, i64 0, i64 %i.jb
  %.0.i357.us = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.0.i357.us.idx
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit355.us, %bb.al
  %indvars.iv = phi i64 [ 0, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit355.us ], [ %indvars.iv.next, %bb.al ] ; 5 uses
  %.0250575.us = phi ptr [ %.0.i357.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit355.us ], [ %i.ll, %bb.al ] ; 3 uses
  %.sroa.18149.1569.us = phi float [ %.sroa.18149.0586.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit355.us ], [ %.sroa.18149.2.us, %bb.al ] ; 2 uses
  %.sroa.12145.1568.us = phi float [ %.sroa.12145.0585.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit355.us ], [ %.sroa.12145.2.us, %bb.al ] ; 2 uses
  %i.jc = phi <2 x float> [ %i.il, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit355.us ], [ %i.lj, %bb.al ] ; 2 uses
  %i.jd = phi <4 x float> [ %i.ik, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit355.us ], [ %i.lk, %bb.al ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.0250575.us, i64 2
  %i.jf = load i16, ptr %.0250575.us, align 2, !tbaa !86 ; 2 uses
  %i.jg = icmp eq i16 %i.jf, 0
  %i.jh = load i16, ptr %i.je, align 2, !tbaa !86 ; 2 uses
  %i.ji = icmp eq i16 %i.jh, 0
  %or.cond754 = select i1 %i.jg, i1 %i.ji, i1 false
  br i1 %or.cond754, label %bb.al, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ak
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.i514.us, i64 %indvars.iv
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !39
  %i.jl = zext i8 %i.jk to i16
  %i.jm = shl nuw nsw i16 %i.jl, 5
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %.0.i356.us, i64 %indvars.iv
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !86 ; 4 uses
  %i.jp = sub i16 %i.jm, %i.jo
  %i.jq = add nuw nsw i64 %indvars.iv, %i.bu      ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i514.us, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !39
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i354.us, i64 %indvars.iv
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !39
  %i.jv = getelementptr inbounds nuw i8, ptr %.0.i354.us, i64 %i.jq
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !39
  %i.jx = sext i16 %i.jp to i32                   ; 2 uses
  %i.jy = sext i16 %i.jf to i32                   ; 4 uses
  %i.jz = mul nsw i32 %i.jx, %i.jy
  %i.ka = sitofp i32 %i.jz to float
  %i.kb = sext i16 %i.jh to i32                   ; 4 uses
  %i.kc = mul nsw i32 %i.kb, %i.jx
  %i.kd = sitofp i32 %i.kc to float
  %i.ke = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kf = insertelement <2 x float> %i.ke, float %i.kd, i64 1
  %i.kg = fadd <2 x float> %i.jc, %i.kf
  %i.kh = zext i8 %i.js to i16
  %i.ki = shl nuw nsw i16 %i.kh, 5
  %i.kj = sub i16 %i.ki, %i.jo
  %i.kk = zext i8 %i.ju to i16
  %i.kl = shl nuw nsw i16 %i.kk, 5
  %i.km = sub i16 %i.kl, %i.jo
  %i.kn = zext i8 %i.jw to i16
  %i.ko = shl nuw nsw i16 %i.kn, 5
  %i.kp = sub i16 %i.ko, %i.jo
  %i.kq = sext i16 %i.kj to i32                   ; 2 uses
  %i.kr = mul nsw i32 %i.kq, %i.jy
  %i.ks = sitofp i32 %i.kr to float
  %i.kt = fadd float %.sroa.12145.1568.us, %i.ks
  %i.ku = sext i16 %i.km to i32                   ; 2 uses
  %i.kv = mul nsw i32 %i.ku, %i.jy
  %i.kw = sitofp i32 %i.kv to float
  %i.kx = fadd float %.sroa.18149.1569.us, %i.kw
  %i.ky = sext i16 %i.kp to i32                   ; 2 uses
  %i.kz = mul nsw i32 %i.ky, %i.jy
  %i.la = mul nsw i32 %i.kq, %i.kb
  %i.lb = mul nsw i32 %i.ku, %i.kb
  %i.lc = mul nsw i32 %i.ky, %i.kb
  %i.ld = insertelement <4 x i32> poison, i32 %i.lb, i64 0
  %i.le = insertelement <4 x i32> %i.ld, i32 %i.kz, i64 1
  %i.lf = insertelement <4 x i32> %i.le, i32 %i.la, i64 2
  %i.lg = insertelement <4 x i32> %i.lf, i32 %i.lc, i64 3
  %i.lh = sitofp <4 x i32> %i.lg to <4 x float>
  %i.li = fadd <4 x float> %i.jd, %i.lh
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge
  %.sroa.12145.2.us = phi float [ %.sroa.12145.1568.us, %bb.ak ], [ %i.kt, %._crit_edge ] ; 3 uses
  %.sroa.18149.2.us = phi float [ %.sroa.18149.1569.us, %bb.ak ], [ %i.kx, %._crit_edge ] ; 3 uses
  %i.lj = phi <2 x float> [ %i.jc, %bb.ak ], [ %i.kg, %._crit_edge ] ; 3 uses
  %i.lk = phi <4 x float> [ %i.jd, %bb.ak ], [ %i.li, %._crit_edge ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.0250575.us, i64 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.ak, !llvm.loop !392

._crit_edge.us:                                   ; preds = %bb.al
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 2 uses
  %exitcond696.not = icmp eq i64 %indvars.iv.next693, %wide.trip.count695
  br i1 %exitcond696.not, label %._crit_edge594.loopexit, label %.lr.ph593.split.us, !llvm.loop !393

bb.am:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.lm = load i32, ptr %i.at, align 8, !tbaa !172 ; 2 uses
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %bb.an, label %thread-pre-split

bb.an:                                            ; preds = %bb.am
  %i.lo = load ptr, ptr %i.bt, align 8, !tbaa !166 ; 2 uses
  %.not312 = icmp eq ptr %i.lo, null
  br i1 %.not312, label %.thread521, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 %indvars.iv698
  store i8 3, ptr %i.lp, align 1, !tbaa !39
  %.pr.pre = load i32, ptr %i.at, align 8, !tbaa !172
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.ao, %bb.am
  %i.lq = phi i32 [ %i.lm, %bb.am ], [ %.pr.pre, %bb.ao ]
  %i.lr = icmp sgt i32 %i.lq, 0
  br i1 %i.lr, label %bb.ap, label %.thread521

bb.ap:                                            ; preds = %thread-pre-split
  %i.ls = load ptr, ptr %i.av, align 8, !tbaa !397
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %indvars.iv698
  store <2 x float> %.sroa.0423.0, ptr %i.lt, align 4, !tbaa !48
  br label %.thread521

._crit_edge594.loopexit:                          ; preds = %._crit_edge.us
  %i.lu = fmul <2 x float> %i.lj, splat (float f0x35800000) ; 3 uses
  %i.lv = extractelement <4 x float> %i.lk, i64 1
  %i.lw = fmul float %i.lv, f0x35800000
  %i.lx = shufflevector <4 x float> %i.lk, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ly = insertelement <2 x float> %i.lx, float %.sroa.12145.2.us, i64 0
  %i.lz = fmul <2 x float> %i.ly, splat (float f0x35800000)
  %i.ma = insertelement <4 x float> poison, float %.sroa.18149.2.us, i64 0
  %i.mb = shufflevector <4 x float> %i.ma, <4 x float> %i.lk, <2 x i32> <i32 0, i32 4>
  %i.mc = fmul <2 x float> %i.mb, splat (float f0x35800000)
  %i.md = extractelement <4 x float> %i.lk, i64 3
  %i.me = fmul float %i.md, f0x35800000
  %i.mf = extractelement <2 x float> %i.lu, i64 0
  %i.mg = fadd float %i.mf, %i.lw
  %i.mh = extractelement <2 x float> %i.lu, i64 1
  %i.mi = fadd float %i.mh, %i.me
  br label %._crit_edge594

._crit_edge594:                                   ; preds = %.lr.ph593, %._crit_edge594.loopexit, %.preheader
  %.sroa.24153.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.mg, %._crit_edge594.loopexit ], [ 0.000000e+00, %.lr.ph593 ]
  %.sroa.24.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.mi, %._crit_edge594.loopexit ], [ 0.000000e+00, %.lr.ph593 ]
  %i.mj = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.lu, %._crit_edge594.loopexit ], [ zeroinitializer, %.lr.ph593 ] ; 4 uses
  %i.mk = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.mc, %._crit_edge594.loopexit ], [ zeroinitializer, %.lr.ph593 ] ; 2 uses
  %i.ml = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.lz, %._crit_edge594.loopexit ], [ zeroinitializer, %.lr.ph593 ] ; 2 uses
  %i.mm = insertelement <2 x float> poison, float %.sroa.24153.0.lcssa, i64 0
  %i.mn = insertelement <2 x float> %i.mm, float %.sroa.24.0.lcssa, i64 1
  %i.mo = fsub <2 x float> %i.mn, %i.mk
  %i.mp = fsub <2 x float> %i.ml, %i.mj           ; 2 uses
  %i.mq = fsub <2 x float> %i.mk, %i.mj           ; 2 uses
  %i.mr = fneg <2 x float> %i.mj
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mt = fneg <2 x float> %i.mp
  %i.mu = fsub <2 x float> %i.mo, %i.ml           ; 2 uses
  %i.mv = fneg <2 x float> %i.mu
  %i.mw = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mx = fmul <2 x float> %i.hg, %i.mw
  %i.my = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.mu, <2 x float> %i.mx) ; 10 uses
  %i.mz = shufflevector <2 x float> %i.mt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.na = fmul <2 x float> %i.hg, %i.mz
  %i.nb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.mp, <2 x float> %i.na) ; 10 uses
  %i.nc = fneg <2 x float> %i.mq
  %i.nd = shufflevector <2 x float> %i.nc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ne = fmul <2 x float> %i.hg, %i.nd
  %i.nf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.mq, <2 x float> %i.ne) ; 10 uses
  %i.ng = fmul <2 x float> %i.hg, %i.ms
  %i.nh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.mj, <2 x float> %i.ng) ; 10 uses
  %i.ni = extractelement <2 x float> %i.nf, i64 1 ; 2 uses
  %i.nj = fneg float %i.ni
  %i.nk = extractelement <2 x float> %i.my, i64 0 ; 2 uses
  %i.nl = fmul float %i.nk, %i.nj
  %i.nm = extractelement <2 x float> %i.nf, i64 0 ; 2 uses
  %i.nn = extractelement <2 x float> %i.my, i64 1 ; 2 uses
  %i.no = call float @llvm.fmuladd.f32(float %i.nm, float %i.nn, float %i.nl)
  %i.np = fdiv float 1.000000e+00, %i.no          ; 2 uses
  %i.nq = fmul float %i.np, 5.000000e-01
  %i.nr = extractelement <2 x float> %i.nh, i64 0 ; 2 uses
  %i.ns = fmul float %i.nr, %i.nn
  %i.nt = extractelement <2 x float> %i.nb, i64 1 ; 2 uses
  %i.nu = call float @llvm.fmuladd.f32(float %i.nm, float %i.nt, float %i.ns)
  %i.nv = extractelement <2 x float> %i.nb, i64 0
  %i.nw = fneg float %i.nv                        ; 2 uses
  %i.nx = call float @llvm.fmuladd.f32(float %i.nw, float %i.ni, float %i.nu)
  %i.ny = fneg float %i.nk
  %i.nz = extractelement <2 x float> %i.nh, i64 1 ; 2 uses
  %i.oa = call float @llvm.fmuladd.f32(float %i.ny, float %i.nz, float %i.nx)
  %i.ob = fmul float %i.oa, %i.nq                 ; 4 uses
  %i.oc = fmul float %i.nz, %i.nw
  %i.od = call float @llvm.fmuladd.f32(float %i.nt, float %i.nr, float %i.oc)
  %i.oe = fneg float %i.od
  %i.of = fmul float %i.np, %i.oe
  %i.og = call float @llvm.fmuladd.f32(float %i.ob, float %i.ob, float %i.of) ; 2 uses
  %i.oh = fcmp ult float %i.og, 0.000000e+00
  br i1 %i.oh, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge594
  %i.oi = call noundef float @sqrtf(float noundef %i.og) #20 ; 2 uses
  %i.oj = fneg float %i.ob
  %i.ok = insertelement <2 x float> poison, float %i.oi, i64 0
  %i.ol = insertelement <2 x float> %i.ok, float %i.oj, i64 1
  %i.om = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.on = insertelement <2 x float> %i.om, float %i.oi, i64 1
  %i.oo = fsub <2 x float> %i.ol, %i.on           ; 8 uses
  %i.op = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oq = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.or = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.op, <2 x float> %i.oo, <2 x float> %i.oq)
  %i.os = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ot = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ou = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.os, <2 x float> %i.oo, <2 x float> %i.ot)
  %i.ov = fneg <2 x float> %i.ou
  %i.ow = fdiv <2 x float> %i.ov, %i.or           ; 6 uses
  %i.ox = shufflevector <2 x float> %i.oo, <2 x float> %i.ow, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.oy = fcmp ole <4 x float> %i.ox, splat (float 1.000000e+00)
  %11 = fcmp oge <4 x float> %i.ox, zeroinitializer
  %12 = and <4 x i1> %11, %i.oy                   ; 2 uses
  %13 = shufflevector <4 x i1> %12, <4 x i1> poison, <2 x i32> <i32 2, i32 3>
  %14 = shufflevector <4 x i1> %12, <4 x i1> poison, <2 x i32> <i32 0, i32 1>
  %15 = select <2 x i1> %13, <2 x i1> %14, <2 x i1> zeroinitializer ; 2 uses
  %i.oz = extractelement <2 x i1> %15, i64 1
  br i1 %i.oz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.pa = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pb = fadd <2 x float> %i.pa, <float 2.000000e-03, float -2.000000e-03> ; 2 uses
  %i.pc = shufflevector <2 x float> %i.pb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0> ; 2 uses
  %i.pd = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pe = fadd <2 x float> %i.pd, <float -2.000000e-03, float 2.000000e-03> ; 2 uses
  %i.pf = shufflevector <2 x float> %i.pe, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.pg = shufflevector <2 x float> %i.my, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ph = shufflevector <2 x float> %i.nb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pi = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pj = shufflevector <2 x float> %i.nh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pk = fmul <4 x float> %i.pg, %i.pc
  %i.pl = shufflevector <2 x float> %i.my, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.pm = shufflevector <2 x float> %i.pb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0> ; 2 uses
  %i.pn = fmul <4 x float> %i.pl, %i.pm
  %i.po = fmul <4 x float> %i.ph, %i.pc
  %i.pp = shufflevector <2 x float> %i.nb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.pq = fmul <4 x float> %i.pp, %i.pm
  %i.pr = shufflevector <2 x float> %i.pe, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.ps = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pn, <4 x float> %i.pr, <4 x float> %i.pq)
  %i.pt = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.pu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pt, <4 x float> %i.pr, <4 x float> %i.ps)
  %i.pv = shufflevector <2 x float> %i.nh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.pw = fadd <4 x float> %i.pv, %i.pu
  %i.px = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pk, <4 x float> %i.pf, <4 x float> %i.po)
  %i.py = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pi, <4 x float> %i.pf, <4 x float> %i.px)
  %i.pz = fadd <4 x float> %i.pj, %i.py
  %i.qa = fcmp oge <4 x float> %i.pw, zeroinitializer
  %i.qb = fcmp ole <4 x float> %i.pz, zeroinitializer
  %i.qc = shufflevector <4 x i1> %i.qb, <4 x i1> %i.qa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.qd = freeze <8 x i1> %i.qc
  %i.qe = bitcast <8 x i1> %i.qd to i8
  %i.qf = icmp eq i8 %i.qe, -1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.qg = phi i1 [ false, %bb.aq ], [ %i.qf, %bb.ar ] ; 2 uses
  %16 = extractelement <2 x i1> %15, i64 0
  br i1 %16, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as
  %i.qh = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qi = fadd <2 x float> %i.qh, <float 2.000000e-03, float -2.000000e-03> ; 2 uses
  %i.qj = shufflevector <2 x float> %i.qi, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0> ; 2 uses
  %i.qk = shufflevector <2 x float> %i.oo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ql = fadd <2 x float> %i.qk, <float -2.000000e-03, float 2.000000e-03> ; 2 uses
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1> ; 2 uses
  %i.qn = shufflevector <2 x float> %i.my, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qo = shufflevector <2 x float> %i.nb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qp = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qq = shufflevector <2 x float> %i.nh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qr = fmul <4 x float> %i.qn, %i.qj
  %i.qs = shufflevector <2 x float> %i.my, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.qt = shufflevector <2 x float> %i.qi, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0> ; 2 uses
  %i.qu = fmul <4 x float> %i.qs, %i.qt
  %i.qv = fmul <4 x float> %i.qo, %i.qj
  %i.qw = shufflevector <2 x float> %i.nb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.qx = fmul <4 x float> %i.qw, %i.qt
  %i.qy = shufflevector <2 x float> %i.ql, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0> ; 2 uses
  %i.qz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qu, <4 x float> %i.qy, <4 x float> %i.qx)
  %i.ra = shufflevector <2 x float> %i.nf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.rb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ra, <4 x float> %i.qy, <4 x float> %i.qz)
  %i.rc = shufflevector <2 x float> %i.nh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.rd = fadd <4 x float> %i.rc, %i.rb
  %i.re = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qr, <4 x float> %i.qm, <4 x float> %i.qv)
  %i.rf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qp, <4 x float> %i.qm, <4 x float> %i.re)
  %i.rg = fadd <4 x float> %i.qq, %i.rf
  %i.rh = fcmp oge <4 x float> %i.rd, zeroinitializer
  %i.ri = fcmp ole <4 x float> %i.rg, zeroinitializer
  %i.rj = shufflevector <4 x i1> %i.ri, <4 x i1> %i.rh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rk = freeze <8 x i1> %i.rj
  %i.rl = bitcast <8 x i1> %i.rk to i8
  %i.rm = icmp eq i8 %i.rl, -1                    ; 3 uses
  %brmerge = or i1 %i.rm, %i.qg
  br i1 %brmerge, label %.thread.split.loop.exit, label %bb.au

.critedge:                                        ; preds = %bb.as
  br i1 %i.qg, label %.thread.split.loop.exit813, label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge594, %bb.ae, %.critedge
  %i.rn = phi <2 x float> [ %i.nh, %._crit_edge594 ], [ %i.nh, %.critedge ], [ zeroinitializer, %bb.ae ], [ %i.nh, %bb.at ]
  %i.ro = phi <2 x float> [ %i.nf, %._crit_edge594 ], [ %i.nf, %.critedge ], [ zeroinitializer, %bb.ae ], [ %i.nf, %bb.at ]
  %i.rp = phi <2 x float> [ %i.my, %._crit_edge594 ], [ %i.my, %.critedge ], [ zeroinitializer, %bb.ae ], [ %i.my, %bb.at ]
  %i.rq = phi <2 x float> [ %i.nb, %._crit_edge594 ], [ %i.nb, %.critedge ], [ zeroinitializer, %bb.ae ], [ %i.nb, %bb.at ]
  %i.rr = phi <2 x i32> [ %i.hm, %._crit_edge594 ], [ %i.hm, %.critedge ], [ %i.hj, %bb.ae ], [ %i.hm, %bb.at ]
  %i.rs = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rt = fmul <2 x float> %i.rs, %i.rq
  %i.ru = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rv = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rw = fmul <2 x float> %i.ru, %i.rv
  %i.rx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rp, <2 x float> %i.rw, <2 x float> %i.rt)
  %i.ry = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ro, <2 x float> %i.ry, <2 x float> %i.rx)
  %i.sa = fadd <2 x float> %i.rn, %i.rz           ; 6 uses
  %i.sb = fpext <2 x float> %i.sa to <2 x double> ; 4 uses
  %i.sc = fmul <2 x double> %i.sb, splat (double f0x3FE6666666666666)
  %i.sd = fptrunc <2 x double> %i.sc to <2 x float>
  %i.se = fadd <2 x float> %i.hk, %i.sd           ; 2 uses
  %i.sf = shufflevector <2 x float> %i.se, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sg = fsub <2 x float> %i.se, %i.dn           ; 2 uses
  %i.sh = shufflevector <2 x float> %i.sg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.si = load ptr, ptr %i.av, align 8, !tbaa !397 ; 2 uses
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.si, i64 %indvars.iv698
  store <2 x float> %i.sh, ptr %i.sj, align 4, !tbaa !48
  %foldExtExtBinop783 = fmul <2 x double> %i.sb, %i.sb
  %i.sk = extractelement <2 x double> %foldExtExtBinop783, i64 0
  %i.sl = extractelement <2 x double> %i.sb, i64 1 ; 2 uses
  %i.sm = call noundef double @llvm.fmuladd.f64(double %i.sl, double %i.sl, double %i.sk)
  %i.sn = load double, ptr %i.bs, align 8, !tbaa !171
  %i.so = fcmp ugt double %i.sm, %i.sn
  br i1 %i.so, label %bb.av, label %.thread521

.thread.split.loop.exit:                          ; preds = %bb.at
  %17 = extractelement <2 x float> %i.ow, i64 0
  %18 = extractelement <2 x float> %i.ow, i64 1
  %.mux.le = select i1 %i.rm, float %17, float %18
  %19 = extractelement <2 x float> %i.oo, i64 0
  %20 = extractelement <2 x float> %i.oo, i64 1
  %.mux778.le = select i1 %i.rm, float %19, float %20
  br label %.thread

.thread.split.loop.exit813:                       ; preds = %.critedge
  %21 = extractelement <2 x float> %i.ow, i64 1
  %22 = extractelement <2 x float> %i.oo, i64 1
  br label %.thread

.thread:                                          ; preds = %.thread.split.loop.exit813, %.thread.split.loop.exit
  %.pn648 = phi float [ %.mux.le, %.thread.split.loop.exit ], [ %21, %.thread.split.loop.exit813 ]
  %.pn650 = phi float [ %.mux778.le, %.thread.split.loop.exit ], [ %22, %.thread.split.loop.exit813 ]
  %i.sp = insertelement <2 x float> poison, float %.pn648, i64 0
  %i.sq = insertelement <2 x float> %i.sp, float %.pn650, i64 1
  %i.sr = fadd <2 x float> %i.sq, %i.hn
  %i.ss = fsub <2 x float> %i.sr, %.sroa.0423.1639
  %i.st = fadd <2 x float> %.sroa.0423.1639, %i.ss
  %i.su = fsub <2 x float> %i.st, %i.dm
  %i.sv = load ptr, ptr %i.av, align 8, !tbaa !397
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.sv, i64 %indvars.iv698
  store <2 x float> %i.su, ptr %i.sw, align 4, !tbaa !48
  br label %.thread521

bb.av:                                            ; preds = %bb.au
  %.not297 = icmp eq i32 %.0274644, 0
  br i1 %.not297, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.sx = extractelement <2 x float> %i.sa, i64 1
  %i.sy = fsub float %i.sx, %.sroa.0410.0643
  %i.sz = call noundef float @llvm.fabs.f32(float %i.sy)
  %i.ta = fpext float %i.sz to double
  %i.tb = fcmp olt double %i.ta, 1.000000e-02
  br i1 %i.tb, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.tc = extractelement <2 x float> %i.sa, i64 0
  %i.td = fsub float %i.tc, %.sroa.6.0642
  %i.te = call noundef float @llvm.fabs.f32(float %i.td)
  %i.tf = fpext float %i.te to double
  %i.tg = fcmp olt double %i.tf, 1.000000e-02
  br i1 %i.tg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.th = getelementptr inbounds [8 x i8], ptr %i.si, i64 %indvars.iv698
  %i.ti = fmul <2 x float> %i.sa, splat (float 3.500000e-01)
  %i.tj = fsub <2 x float> %i.sg, %i.ti
  %i.tk = shufflevector <2 x float> %i.tj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.tk, ptr %i.th, align 4, !tbaa !48
  br label %.thread521

bb.az:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.tl = add nuw nsw i32 %.0274644, 1            ; 2 uses
  %exitcond697.not = icmp eq i32 %i.tl, %i.gp
  %i.tm = extractelement <2 x float> %i.sa, i64 0
  %i.tn = extractelement <2 x float> %i.sa, i64 1
  br i1 %exitcond697.not, label %.thread521, label %bb.ad, !llvm.loop !394

.thread521:                                       ; preds = %bb.az, %bb.au, %bb.an, %bb.ac, %bb.ap, %bb.ay, %thread-pre-split, %.thread, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.r, %bb.v, %bb.u, %bb.l, %.thread521
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %indvars.iv.next699 = add nsw i64 %indvars.iv698, 1 ; 2 uses
  %i.to = load i32, ptr %i.ap, align 4, !tbaa !101
  %i.tp = sext i32 %i.to to i64
  %i.tq = icmp slt i64 %indvars.iv.next699, %i.tp
  br i1 %i.tq, label %bb.g, label %_ZNSt6vectorIsSaIsEED2Ev.exit, !llvm.loop !395

bb.bb:                                            ; preds = %bb.n, %bb.m
  %.pn298.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dg, %bb.n ], [ %i.df, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread533, %.thread528
  %.pn298.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn531 = phi { ptr, i32 } [ %i.by, %.thread528 ], [ %.pn298.pn.pn.pn.pn.pn.pn, %bb.bb ], [ %i.bz, %.thread533 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ag) #22
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit373

_ZNSt6vectorIsSaIsEED2Ev.exit373:                 ; preds = %bb.f, %bb.bc, %bb.e
  %.pn298.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.e ], [ %i.bx, %bb.f ], [ %.pn298.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn531, %bb.bc ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn298.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7optflow4rlof6radial14TrackerInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv7optflow4rlof6radial14TrackerInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Point_.8", align 8      ; 7 uses
  %3 = alloca %"class.cv::Size_", align 8         ; 8 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %8 = alloca %"class.cv::Point_", align 8        ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 11 uses
  %10 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 16 uses
  %13 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !179  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !181
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !186  ; 2 uses
  %.sroa.4.0.insert.ext = zext i32 %i.n to i64    ; 2 uses
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0890.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.4.0.insert.ext
  store i64 %.sroa.0890.0.insert.insert, ptr %3, align 8, !tbaa !46
  %i.o = add i32 %i.n, 15
  %i.p = and i32 %i.o, -16                        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %i.p, i32 noundef %i.p, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1056833530, ptr %5, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.r, align 8, !tbaa !33
  store i64 4294967297, ptr %i.q, align 8, !tbaa !46
  %i.s = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.t = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i unwind label %bb.e ; 0 uses

_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.u = load i32, ptr %i.f, align 8, !tbaa !34
  %i.v = lshr i32 %i.u, 5
  %i.w = and i32 %i.v, 127
  %i.x = add nuw nsw i32 %i.w, 1                  ; 8 uses
  %i.y = shl nuw nsw i32 %i.x, 6
  %i.z = mul nsw i32 %i.p, %i.p
  %i.aa = mul i32 %i.x, %i.z                      ; 2 uses
  %i.ab = mul i32 %i.aa, 3
  %i.ac = zext nneg i32 %i.ab to i64
  %.not.i.i.i.i = icmp ne i32 %i.p, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 1                ; 4 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #23
          to label %.noexc731 unwind label %bb.f  ; 6 uses

.noexc731:                                        ; preds = %_ZNSt6vectorIsSaIsEE17_S_check_init_lenEmRKS0_.exit.i
  store i16 0, ptr %i.ae, align 2, !tbaa !86
  %i.af = getelementptr i8, ptr %i.ae, i64 2
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ad, -2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.af, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %.sroa.8884.0.insert.ext885 = zext i32 %i.p to i64
  %.sroa.0879.0.insert.insert883 = mul nuw i64 %.sroa.8884.0.insert.ext885, 4294967297 ; 2 uses
  %i.ag = shl nuw nsw i32 %i.x, 5
  %i.ah = add nsw i32 %i.ag, -29
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %6, i64 %.sroa.0879.0.insert.insert883, i32 noundef %i.ah, ptr noundef nonnull %i.ae, i64 noundef 0)
          to label %bb.c unwind label %.thread927

bb.c:                                             ; preds = %.noexc731
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.ai = add nsw i32 %i.y, -29
  %i.aj = zext nneg i32 %i.aa to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.aj
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i64 %.sroa.0879.0.insert.insert883, i32 noundef %i.ai, ptr noundef nonnull %i.ak, i64 noundef 0)
          to label %bb.d unwind label %.thread932

bb.d:                                             ; preds = %bb.c
  %i.al = load i32, ptr %1, align 4, !tbaa !100   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !101
  %i.ao = icmp slt i32 %i.al, %i.an
  br i1 %i.ao, label %.lr.ph1052, label %_ZNSt6vectorIsSaIsEED2Ev.exit

.lr.ph1052:                                       ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_ZNK2cv7optflow4rlof3ica14TrackerInvokerclERKNS_5RangeE:bb.a
bb.ba:                                            ; preds = %.lr.ph558, %._crit_edge543
  %indvars.iv603 = phi i64 [ 0, %.lr.ph558 ], [ %indvars.iv.next604, %._crit_edge543 ] ; 5 uses
  %.2244555 = phi float [ %.1243, %.lr.ph558 ], [ %.3.lcssa, %._crit_edge543 ] ; 2 uses
  %.2272550 = phi float [ %.1271, %.lr.ph558 ], [ %.3273.lcssa, %._crit_edge543 ] ; 2 uses
  %i.of = phi <2 x float> [ zeroinitializer, %.lr.ph558 ], [ %i.oy, %._crit_edge543 ] ; 2 uses
  %i.og = phi <2 x float> [ %i.in, %.lr.ph558 ], [ %i.oz, %._crit_edge543 ] ; 2 uses
  br i1 %i.nm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.oh = load i64, ptr %i.bj, align 8, !tbaa !84
  %i.oi = mul i64 %i.oh, %i.no
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.oi ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit392

bb.bc:                                            ; preds = %bb.ba
  %i.ok = add nuw nsw i64 %indvars.iv603, %i.ob   ; 2 uses
  %i.ol = load i64, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %i.om = mul i64 %i.ol, %i.ok
  %i.on = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.om
  %i.oo = load i64, ptr %i.bk, align 8, !tbaa !84
  %i.op = mul i64 %i.oo, %i.no                    ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.op
  %i.or = add nuw nsw i64 %i.ok, 1
  %i.os = mul i64 %i.ol, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.op
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit392

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit392:                ; preds = %bb.bb, %bb.bc
  %.0.i389493 = phi ptr [ %i.oj, %bb.bb ], [ %i.oq, %bb.bc ] ; 2 uses
  %.0.i391 = phi ptr [ %i.oj, %bb.bb ], [ %i.ou, %bb.bc ] ; 2 uses
  %i.ov = mul i64 %i.ns, %indvars.iv603
  %.0.i393.idx = select i1 %i.nq, i64 0, i64 %i.ov
  %.0.i393 = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.0.i393.idx
  %i.ow = mul i64 %i.oa, %indvars.iv603
  %.0.i397.idx = select i1 %i.ny, i64 0, i64 %i.ow
  %.0.i397 = getelementptr inbounds nuw i8, ptr %i.nz, i64 %.0.i397.idx
  br i1 %i.gl, label %.lr.ph542.preheader, label %._crit_edge543

.lr.ph542.preheader:                              ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit392
  %i.ox = mul i64 %i.nw, %indvars.iv603
  %.0.i395.idx = select i1 %i.nu, i64 0, i64 %i.ox
  %.0.i395 = getelementptr inbounds nuw i8, ptr %i.nv, i64 %.0.i395.idx
  br label %.lr.ph542

._crit_edge543:                                   ; preds = %bb.bo, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit392
  %.3273.lcssa = phi float [ %.2272550, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit392 ], [ %.5275, %bb.bo ] ; 2 uses
  %.3.lcssa = phi float [ %.2244555, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit392 ], [ %.6, %bb.bo ] ; 2 uses
  %i.oy = phi <2 x float> [ %i.of, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit392 ], [ %i.rr, %bb.bo ] ; 2 uses
  %i.oz = phi <2 x float> [ %i.og, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit392 ], [ %i.rq, %bb.bo ] ; 2 uses
  %indvars.iv.next604 = add nuw nsw i64 %indvars.iv603, 1 ; 2 uses
  %exitcond607.not = icmp eq i64 %indvars.iv.next604, %wide.trip.count606
  br i1 %exitcond607.not, label %._crit_edge559.loopexit, label %bb.ba, !llvm.loop !435

.lr.ph542:                                        ; preds = %.lr.ph542.preheader, %bb.bo
  %indvars.iv598 = phi i64 [ 0, %.lr.ph542.preheader ], [ %indvars.iv.next599, %bb.bo ] ; 6 uses
  %.0236540 = phi ptr [ %.0.i395, %.lr.ph542.preheader ], [ %i.rs, %bb.bo ] ; 2 uses
  %.3539 = phi float [ %.2244555, %.lr.ph542.preheader ], [ %.6, %bb.bo ] ; 4 uses
  %.3273534 = phi float [ %.2272550, %.lr.ph542.preheader ], [ %.5275, %bb.bo ] ; 3 uses
  %i.pa = phi <2 x float> [ %i.og, %.lr.ph542.preheader ], [ %i.rq, %bb.bo ] ; 3 uses
  %i.pb = phi <2 x float> [ %i.of, %.lr.ph542.preheader ], [ %i.rr, %bb.bo ] ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.0.i397, i64 %indvars.iv598
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !39
  %i.pe = icmp eq i8 %i.pd, 0
  br i1 %i.pe, label %bb.bo, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph542
  %i.pf = getelementptr inbounds nuw i8, ptr %.0.i389493, i64 %indvars.iv598
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !39
  %i.ph = zext i8 %i.pg to i32
  %i.pi = mul nsw i32 %i.hx, %i.ph
  %i.pj = add nuw nsw i64 %indvars.iv598, %i.cj   ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.0.i389493, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !39
  %i.pm = zext i8 %i.pl to i32
  %i.pn = mul nsw i32 %i.ic, %i.pm
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i391, i64 %indvars.iv598
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !39
  %i.pq = zext i8 %i.pp to i32
  %i.pr = mul nsw i32 %i.ig, %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %.0.i391, i64 %i.pj
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !39
  %i.pu = zext i8 %i.pt to i32
  %i.pv = mul nsw i32 %i.ij, %i.pu
  %i.pw = add i32 %i.pi, 256
  %i.px = add i32 %i.pw, %i.pn
  %i.py = add i32 %i.px, %i.pr
  %i.pz = add i32 %i.py, %i.pv
  %i.qa = ashr i32 %i.pz, 9
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %.0.i393, i64 %indvars.iv598
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !86
  %i.qd = sext i16 %i.qc to i32
  %i.qe = sub nsw i32 %i.qa, %i.qd                ; 5 uses
  %i.qf = sitofp i32 %i.qe to float               ; 4 uses
  %i.qg = fcmp olt float %.3539, %i.qf
  %i.qh = fadd float %i.go, %.3539
  %.4 = select i1 %i.qg, float %i.qh, float %.3539 ; 3 uses
  %i.qi = fcmp ogt float %.4, %i.qf
  %i.qj = fsub float %.4, %i.go
  %.5 = select i1 %i.qi, float %i.qj, float %.4   ; 2 uses
  %i.qk = icmp slt i32 %i.qe, 0
  %i.ql = call i32 @llvm.abs.i32(i32 %i.qe, i1 true)
  %i.qm = uitofp nneg i32 %i.ql to float          ; 3 uses
  %i.qn = fcmp olt float %i.nj, %i.qm             ; 2 uses
  br i1 %i.qn, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.qo = fcmp olt float %i.ni, %i.qm             ; 2 uses
  %i.qp = icmp sgt i32 %i.qe, -1
  %or.cond7 = and i1 %i.qp, %i.qo
  br i1 %or.cond7, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.qq = load float, ptr %i.cf, align 4, !tbaa !211
  %i.qr = fsub float %i.qf, %i.nj
  %i.qs = fmul float %i.qr, %i.qq
  %i.qt = fptosi float %i.qs to i32
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %or.cond9 = and i1 %i.qk, %i.qo
  br i1 %or.cond9, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.qu = load float, ptr %i.cf, align 4, !tbaa !211
  %i.qv = fadd float %i.nj, %i.qf
  %i.qw = fmul float %i.qv, %i.qu
  %i.qx = fptosi float %i.qw to i32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bd, %bb.bf, %bb.bh, %bb.bg
  %.0234 = phi i32 [ %i.qe, %bb.bg ], [ %i.qt, %bb.bf ], [ %i.qx, %bb.bh ], [ 0, %bb.bd ]
  %i.qy = load <2 x i16>, ptr %.0236540, align 2, !tbaa !86
  %i.qz = sitofp <2 x i16> %i.qy to <2 x float>   ; 5 uses
  %i.ra = sitofp i32 %.0234 to float
  %i.rb = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rc = insertelement <2 x float> poison, float %i.ra, i64 0
  %i.rd = shufflevector <2 x float> %i.rc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.re = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rd, <2 x float> %i.rb, <2 x float> %i.pb) ; 2 uses
  br i1 %i.ik, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.rf = load float, ptr %i.cf, align 4, !tbaa !211 ; 3 uses
  %i.rg = fcmp ogt float %i.ni, %i.qm
  br i1 %i.rg, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.qn, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.rh = fmul float %i.rf, f0x3C23D70A
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ri = fmul float %i.rf, %i.rf
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bj, %bb.bl, %bb.bm
  %.0 = phi float [ %i.ri, %bb.bm ], [ %i.rh, %bb.bl ], [ 1.000000e+00, %bb.bj ] ; 2 uses
  %foldExtExtBinop662 = fmul nnan <2 x float> %i.qz, %i.qz
  %i.rj = extractelement <2 x float> %foldExtExtBinop662, i64 0
  %i.rk = call float @llvm.fmuladd.f32(float %i.rj, float %.0, float %.3273534)
  %i.rl = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rm = fmul nnan <2 x float> %i.rl, %i.qz
  %i.rn = insertelement <2 x float> poison, float %.0, i64 0
  %i.ro = shufflevector <2 x float> %i.rn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rm, <2 x float> %i.ro, <2 x float> %i.pa)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bi, %bb.bn, %.lr.ph542
  %.5275 = phi float [ %.3273534, %.lr.ph542 ], [ %i.rk, %bb.bn ], [ %.3273534, %bb.bi ] ; 2 uses
  %.6 = phi float [ %.3539, %.lr.ph542 ], [ %.5, %bb.bn ], [ %.5, %bb.bi ] ; 2 uses
  %i.rq = phi <2 x float> [ %i.pa, %.lr.ph542 ], [ %i.rp, %bb.bn ], [ %i.pa, %bb.bi ] ; 2 uses
  %i.rr = phi <2 x float> [ %i.pb, %.lr.ph542 ], [ %i.re, %bb.bn ], [ %i.re, %bb.bi ] ; 2 uses
  %indvars.iv.next599 = add nuw nsw i64 %indvars.iv598, 1 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.0236540, i64 4
  %exitcond602.not = icmp eq i64 %indvars.iv.next599, %wide.trip.count601
  br i1 %exitcond602.not, label %._crit_edge543, label %.lr.ph542, !llvm.loop !436

bb.bp:                                            ; preds = %._crit_edge559
  %i.rt = fmul float %.2272.lcssa, f0x35800000    ; 4 uses
  %i.ru = fmul <2 x float> %i.oe, splat (float f0x35800000) ; 3 uses
  %i.rv = extractelement <2 x float> %i.ru, i64 1 ; 3 uses
  %i.rw = fadd float %i.rt, %i.rv
  %i.rx = fsub float %i.rt, %i.rv                 ; 2 uses
  %i.ry = extractelement <2 x float> %i.ru, i64 0 ; 4 uses
  %i.rz = fneg float %i.ry
  %i.sa = fmul float %i.ry, %i.rz
  %i.sb = call float @llvm.fmuladd.f32(float %i.rt, float %i.rv, float %i.sa)
  %i.sc = fmul float %i.ry, 4.000000e+00
  %i.sd = fmul float %i.ry, %i.sc
  %i.se = call float @llvm.fmuladd.f32(float %i.rx, float %i.rx, float %i.sd)
  %i.sf = call noundef float @sqrtf(float noundef %i.se) #20
  %i.sg = fsub float %i.rw, %i.sf
  %i.sh = fdiv float %i.sg, %i.gq
  %i.si = fdiv float 1.000000e+00, %i.sb          ; 2 uses
  %i.sj = load float, ptr %i.cg, align 4, !tbaa !224
  %i.sk = fcmp olt float %i.sh, %i.sj
  %i.sl = call float @llvm.fabs.f32(float %i.si)
  %i.sm = fcmp olt float %i.sl, f0x34000000
  %or.cond514 = select i1 %i.sk, i1 true, i1 %i.sm
  br i1 %or.cond514, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  %i.sn = load i32, ptr %i.aq, align 8, !tbaa !221 ; 2 uses
  %i.so = icmp eq i32 %i.sn, 0
  br i1 %i.so, label %bb.br, label %thread-pre-split495

bb.br:                                            ; preds = %bb.bq
  %i.sp = load ptr, ptr %i.ch, align 8, !tbaa !216 ; 2 uses
  %.not329 = icmp eq ptr %i.sp, null
  br i1 %.not329, label %.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.sq = getelementptr inbounds i8, ptr %i.sp, i64 %indvars.iv608
  store i8 0, ptr %i.sq, align 1, !tbaa !39
  %.pr496.pre = load i32, ptr %i.aq, align 8, !tbaa !221
  br label %thread-pre-split495

thread-pre-split495:                              ; preds = %bb.bs, %bb.bq
  %i.sr = phi i32 [ %i.sn, %bb.bq ], [ %.pr496.pre, %bb.bs ]
  %i.ss = icmp sgt i32 %i.sr, 0
  br i1 %i.ss, label %bb.bt, label %.thread

bb.bt:                                            ; preds = %thread-pre-split495
  %i.st = load ptr, ptr %i.as, align 8, !tbaa !440
  %i.su = getelementptr inbounds [8 x i8], ptr %i.st, i64 %indvars.iv608
  store <2 x float> %.sroa.0425.0, ptr %i.su, align 4, !tbaa !48
  br label %.thread

bb.bu:                                            ; preds = %bb.bp, %._crit_edge559
  %.6276 = phi float [ %i.rt, %bb.bp ], [ %.2272.lcssa, %._crit_edge559 ] ; 2 uses
  %.1247 = phi float [ %i.si, %bb.bp ], [ %.0246573, %._crit_edge559 ] ; 2 uses
  %i.sv = phi <2 x float> [ %i.ru, %bb.bp ], [ %i.oe, %._crit_edge559 ] ; 3 uses
  %i.sw = fneg <2 x float> %i.od
  %i.sx = shufflevector <2 x float> %i.sw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sy = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sz = insertelement <2 x float> %i.sy, float %.6276, i64 1
  %i.ta = fmul <2 x float> %i.sz, %i.sx
  %i.tb = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tb, <2 x float> %i.od, <2 x float> %i.ta)
  %i.td = insertelement <2 x float> poison, float %.1247, i64 0
  %i.te = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tf = fmul <2 x float> %i.te, %i.tc           ; 2 uses
  %i.tg = fcmp ord <2 x float> %i.tf, zeroinitializer
  %i.th = select <2 x i1> %i.tg, <2 x float> %i.tf, <2 x float> zeroinitializer ; 6 uses
  %i.ti = fpext <2 x float> %i.th to <2 x double>
  %i.tj = fmul <2 x double> %i.ti, splat (double f0x3FE6666666666666)
  %i.tk = fptrunc <2 x double> %i.tj to <2 x float>
  %i.tl = fadd <2 x float> %.sroa.0425.1567, %i.tk ; 2 uses
  %i.tm = fsub <2 x float> %i.tl, %i.eb           ; 2 uses
  %i.tn = load ptr, ptr %i.as, align 8, !tbaa !440 ; 2 uses
  %i.to = getelementptr inbounds [8 x i8], ptr %i.tn, i64 %indvars.iv608
  store <2 x float> %i.tm, ptr %i.to, align 4, !tbaa !48
  br i1 %i.ik, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tp = extractelement <2 x float> %i.th, i64 0
  %i.tq = fsub float %i.tp, %.sroa.0412.0569
  %i.tr = call noundef float @llvm.fabs.f32(float %i.tq)
  %i.ts = fpext float %i.tr to double
  %i.tt = fcmp olt double %i.ts, 1.000000e-02
  br i1 %i.tt, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.tu = extractelement <2 x float> %i.th, i64 1
  %i.tv = fsub float %i.tu, %.sroa.6.0568
  %i.tw = call noundef float @llvm.fabs.f32(float %i.tv)
  %i.tx = fpext float %i.tw to double
  %i.ty = fcmp olt double %i.tx, 1.000000e-02
  br i1 %i.ty, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.tz = getelementptr inbounds [8 x i8], ptr %i.tn, i64 %indvars.iv608
  %i.ua = fmul <2 x float> %i.th, splat (float 5.000000e-01)
  %i.ub = fsub <2 x float> %i.tm, %i.ua
  store <2 x float> %i.ub, ptr %i.tz, align 4, !tbaa !48
  br label %.thread

bb.by:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %i.uc = add nuw nsw i32 %.0245574, 1            ; 2 uses
  %i.ud = load i32, ptr %i.be, align 4, !tbaa !220
  %i.ue = icmp slt i32 %i.uc, %i.ud
  %i.uf = extractelement <2 x float> %i.th, i64 0
  %i.ug = extractelement <2 x float> %i.th, i64 1
  br i1 %i.ue, label %bb.y, label %.thread, !llvm.loop !437

.thread:                                          ; preds = %bb.by, %bb.br, %bb.ac, %_ZNK2cv7MatExprcvNS_3MatEEv.exit, %bb.bx, %bb.bt, %thread-pre-split495, %thread-pre-split, %bb.ag
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bz

bb.bz:                                            ; preds = %bb.r, %bb.v, %bb.u, %bb.l, %.thread
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %indvars.iv.next609 = add nsw i64 %indvars.iv608, 1 ; 2 uses
  %i.uh = load i32, ptr %i.am, align 4, !tbaa !101
  %i.ui = sext i32 %i.uh to i64
  %i.uj = icmp slt i64 %indvars.iv.next609, %i.ui
  br i1 %i.uj, label %bb.g, label %_ZNSt6vectorIsSaIsEED2Ev.exit, !llvm.loop !438

bb.ca:                                            ; preds = %bb.ay, %bb.af
  %.pn332.pn = phi { ptr, i32 } [ %.pn323, %bb.ay ], [ %.pn320, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.n
  %.pn332.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dv, %bb.n ], [ %.pn332.pn, %bb.ca ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.m
  %.pn332.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn332.pn.pn.pn.pn.pn.pn, %bb.cb ], [ %i.du, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.thread510, %.thread505
  %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn508 = phi { ptr, i32 } [ %i.cn, %.thread505 ], [ %.pn332.pn.pn.pn.pn.pn.pn.pn, %bb.cc ], [ %i.co, %.thread510 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #22
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit406

_ZNSt6vectorIsSaIsEED2Ev.exit406:                 ; preds = %bb.f, %bb.cd, %bb.e
  %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.e ], [ %i.cm, %bb.f ], [ %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn508, %bb.cd ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn332.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7optflow6berlof3ica14TrackerInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(140) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv7optflow6berlof3ica14TrackerInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Point_.8", align 8      ; 7 uses
  %3 = alloca %"class.cv::Size_", align 8         ; 8 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %6 = alloca %"class.cv::AutoBuffer", align 8    ; 10 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %9 = alloca %"class.cv::Point_", align 8        ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %11 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 16 uses
  %14 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 6 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %20 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !228  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !230  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !229  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !231
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !235  ; 2 uses
  %.sroa.4764.0.insert.ext = zext i32 %i.n to i64 ; 2 uses
  %.sroa.4764.0.insert.shift = shl nuw i64 %.sroa.4764.0.insert.ext, 32
  %.sroa.0763.0.insert.insert = or disjoint i64 %.sroa.4764.0.insert.shift, %.sroa.4764.0.insert.ext
  store i64 %.sroa.0763.0.insert.insert, ptr %3, align 8, !tbaa !46
  %i.o = add i32 %i.n, 15
  %i.p = and i32 %i.o, -16                        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %i.p, i32 noundef %i.p, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1056833530, ptr %5, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %i.r, align 8, !tbaa !33
  store i64 4294967297, ptr %i.q, align 8, !tbaa !46
end_hunk_2
begin_hunk_3_@_ZNK2cv7optflow6berlof3ica14TrackerInvokerclERKNS_5RangeE:bb.a
  %i.pu = add nuw nsw i64 %i.pn, 1
  %i.pv = mul i64 %i.po, %i.pu
  %i.pw = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.ps
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit600

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit600:                ; preds = %bb.bk, %bb.bl
  %.0.i597772 = phi ptr [ %i.pm, %bb.bk ], [ %i.pt, %bb.bl ] ; 2 uses
  %.0.i599 = phi ptr [ %i.pm, %bb.bk ], [ %i.px, %bb.bl ] ; 2 uses
  %i.py = mul i64 %i.ok, %indvars.iv1056
  %.0.i601.idx = select i1 %i.oi, i64 0, i64 %i.py
  %.0.i601 = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.0.i601.idx
  %i.pz = mul i64 %i.os, %indvars.iv1056
  %.0.i605.idx = select i1 %i.oq, i64 0, i64 %i.pz
  %.0.i605 = getelementptr inbounds nuw i8, ptr %i.or, i64 %.0.i605.idx
  br i1 %i.gv, label %.lr.ph933.preheader, label %._crit_edge934

.lr.ph933.preheader:                              ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit600
  %i.qa = mul i64 %i.oo, %indvars.iv1056
  %.0.i603.idx = select i1 %i.om, i64 0, i64 %i.qa
  %.0.i603 = getelementptr inbounds nuw i8, ptr %i.on, i64 %.0.i603.idx
  br label %.lr.ph933

._crit_edge934:                                   ; preds = %bb.bx, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit600
  %.3406.lcssa = phi float [ %.2405948, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit600 ], [ %.5408, %bb.bx ] ; 2 uses
  %.3389.lcssa = phi float [ %.2388950, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit600 ], [ %.4, %bb.bx ] ; 2 uses
  %i.qb = phi <2 x float> [ %i.pf, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit600 ], [ %i.tp, %bb.bx ] ; 2 uses
  %i.qc = phi <2 x float> [ %i.pg, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit600 ], [ %i.tq, %bb.bx ] ; 2 uses
  %i.qd = phi <2 x float> [ %i.ph, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit600 ], [ %i.tr, %bb.bx ] ; 2 uses
  %i.qe = phi <2 x float> [ %i.pi, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit600 ], [ %i.ts, %bb.bx ] ; 2 uses
  %i.qf = phi <2 x float> [ %i.pj, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit600 ], [ %i.tt, %bb.bx ] ; 2 uses
  %indvars.iv.next1057 = add nuw nsw i64 %indvars.iv1056, 1 ; 2 uses
  %exitcond1060.not = icmp eq i64 %indvars.iv.next1057, %wide.trip.count1059
  br i1 %exitcond1060.not, label %._crit_edge962.loopexit, label %bb.bj, !llvm.loop !448

.lr.ph933:                                        ; preds = %.lr.ph933.preheader, %bb.bx
  %indvars.iv1051 = phi i64 [ 0, %.lr.ph933.preheader ], [ %indvars.iv.next1052, %bb.bx ] ; 6 uses
  %.0373931 = phi ptr [ %.0.i603, %.lr.ph933.preheader ], [ %i.tu, %bb.bx ] ; 2 uses
  %.3389922 = phi float [ %.2388950, %.lr.ph933.preheader ], [ %.4, %bb.bx ] ; 3 uses
  %.3406920 = phi float [ %.2405948, %.lr.ph933.preheader ], [ %.5408, %bb.bx ] ; 3 uses
  %i.qg = phi <2 x float> [ %i.pf, %.lr.ph933.preheader ], [ %i.tp, %bb.bx ] ; 2 uses
  %i.qh = phi <2 x float> [ %i.pg, %.lr.ph933.preheader ], [ %i.tq, %bb.bx ] ; 2 uses
  %i.qi = phi <2 x float> [ %i.ph, %.lr.ph933.preheader ], [ %i.tr, %bb.bx ] ; 2 uses
  %i.qj = phi <2 x float> [ %i.pi, %.lr.ph933.preheader ], [ %i.ts, %bb.bx ] ; 3 uses
  %i.qk = phi <2 x float> [ %i.pj, %.lr.ph933.preheader ], [ %i.tt, %bb.bx ] ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0.i605, i64 %indvars.iv1051
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !39
  %i.qn = icmp eq i8 %i.qm, 0
  br i1 %i.qn, label %bb.bx, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph933
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %.0.i601, i64 %indvars.iv1051
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !86
  %i.qq = sext i16 %i.qp to i32                   ; 2 uses
  %i.qr = add nuw nsw i64 %indvars.iv1051, %i.co  ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %.0.i599, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !39  ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.0.i597772, i64 %i.qr
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !39  ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.0.i599, i64 %indvars.iv1051
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !39  ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.0.i597772, i64 %indvars.iv1051
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !39  ; 2 uses
  %i.ra = zext i8 %i.qv to i32
  %i.rb = insertelement <2 x i8> poison, i8 %i.qt, i64 0
  %i.rc = insertelement <2 x i8> %i.rb, i8 %i.qv, i64 1
  %i.rd = zext i8 %i.qt to i32
  %i.re = zext i8 %i.qz to i32
  %i.rf = insertelement <2 x i8> poison, i8 %i.qx, i64 0
  %i.rg = insertelement <2 x i8> %i.rf, i8 %i.qz, i64 1
  %i.rh = zext i8 %i.qx to i32
  %i.ri = shufflevector <2 x i8> %i.rc, <2 x i8> %i.rg, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.rj = zext <4 x i8> %i.ri to <4 x i32>
  %i.rk = shl nuw nsw <4 x i32> %i.rj, splat (i32 5)
  %i.rl = insertelement <4 x i32> poison, i32 %i.qq, i64 0
  %i.rm = shufflevector <4 x i32> %i.rl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.rn = sub nsw <4 x i32> %i.rk, %i.rm
  %i.ro = sitofp <4 x i32> %i.rn to <4 x float>   ; 3 uses
  %i.rp = mul nsw i32 %i.ir, %i.re
  %i.rq = mul nsw i32 %i.iv, %i.ra
  %i.rr = mul nsw i32 %i.iz, %i.rh
  %i.rs = mul nsw i32 %i.jc, %i.rd
  %i.rt = add i32 %i.rs, 256
  %i.ru = add i32 %i.rt, %i.rq
  %i.rv = add i32 %i.ru, %i.rr
  %i.rw = add i32 %i.rv, %i.rp
  %i.rx = ashr i32 %i.rw, 9
  %i.ry = sub nsw i32 %i.rx, %i.qq                ; 4 uses
  %i.rz = sitofp i32 %i.ry to float
  %i.sa = fcmp ogt float %.3389922, %i.rz
  %i.sb = select i1 %i.sa, float %i.gz, float %i.gy
  %i.sc = fadd float %.3389922, %i.sb             ; 2 uses
  %i.sd = icmp slt i32 %i.ry, 0
  %i.se = call i32 @llvm.abs.i32(i32 %i.ry, i1 true)
  %i.sf = uitofp nneg i32 %i.se to float          ; 3 uses
  %i.sg = fcmp olt float %i.ob, %i.sf             ; 2 uses
  br i1 %i.sg, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sh = fcmp olt float %i.oa, %i.sf             ; 2 uses
  %i.si = icmp sgt i32 %i.ry, -1
  %or.cond8 = and i1 %i.si, %i.sh
  br i1 %or.cond8, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.sj = load float, ptr %i.ck, align 4, !tbaa !227
  %i.sk = fsub <4 x float> %i.ro, %i.ov
  %i.sl = insertelement <4 x float> poison, float %i.sj, i64 0
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sn = fmul <4 x float> %i.sk, %i.sm
  br label %bb.br

bb.bp:                                            ; preds = %bb.bn
  %or.cond10 = and i1 %i.sd, %i.sh
  br i1 %or.cond10, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.so = load float, ptr %i.ck, align 4, !tbaa !227
  %i.sp = fadd <4 x float> %i.ov, %i.ro
  %i.sq = insertelement <4 x float> poison, float %i.so, i64 0
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ss = fmul <4 x float> %i.sp, %i.sr
  br label %bb.br

bb.br:                                            ; preds = %bb.bm, %bb.bp, %bb.bq, %bb.bo
  %i.st = phi <4 x float> [ %i.ro, %bb.bp ], [ %i.sn, %bb.bo ], [ %i.ss, %bb.bq ], [ zeroinitializer, %bb.bm ] ; 4 uses
  %i.su = load <2 x i16>, ptr %.0373931, align 2, !tbaa !86
  %i.sv = shufflevector <2 x i16> %i.su, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  %i.sw = sitofp <2 x i16> %i.sv to <2 x float>   ; 8 uses
  %i.sx = shufflevector <4 x float> %i.st, <4 x float> poison, <2 x i32> zeroinitializer
  %i.sy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sx, <2 x float> %i.sw, <2 x float> %i.qg) ; 2 uses
  %i.sz = shufflevector <4 x float> %i.st, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ta = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sz, <2 x float> %i.sw, <2 x float> %i.qh) ; 2 uses
  %i.tb = shufflevector <4 x float> %i.st, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.tc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tb, <2 x float> %i.sw, <2 x float> %i.qi) ; 2 uses
  %i.td = shufflevector <4 x float> %i.st, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.te = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.td, <2 x float> %i.sw, <2 x float> %i.qk) ; 2 uses
  br i1 %i.hg, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.tf = load float, ptr %i.ck, align 4, !tbaa !227 ; 3 uses
  %i.tg = fcmp ogt float %i.oa, %i.sf
  br i1 %i.tg, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.sg, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.th = fmul float %i.tf, f0x3C23D70A
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.ti = fmul float %i.tf, %i.tf
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bs, %bb.bu, %bb.bv
  %.0 = phi float [ %i.ti, %bb.bv ], [ %i.th, %bb.bu ], [ 1.000000e+00, %bb.bs ] ; 2 uses
  %shift1174 = shufflevector <2 x float> %i.sw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1175 = fmul nnan <2 x float> %shift1174, %i.sw
  %i.tj = extractelement <2 x float> %foldExtExtBinop1175, i64 0
  %i.tk = call float @llvm.fmuladd.f32(float %i.tj, float %.0, float %.3406920)
  %i.tl = fmul nnan <2 x float> %i.sw, %i.sw
  %i.tm = insertelement <2 x float> poison, float %.0, i64 0
  %i.tn = shufflevector <2 x float> %i.tm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.to = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.tn, <2 x float> %i.qj)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.br, %bb.bw, %.lr.ph933
  %.5408 = phi float [ %.3406920, %.lr.ph933 ], [ %i.tk, %bb.bw ], [ %.3406920, %bb.br ] ; 2 uses
  %.4 = phi float [ %.3389922, %.lr.ph933 ], [ %i.sc, %bb.bw ], [ %i.sc, %bb.br ] ; 2 uses
  %i.tp = phi <2 x float> [ %i.qg, %.lr.ph933 ], [ %i.sy, %bb.bw ], [ %i.sy, %bb.br ] ; 2 uses
  %i.tq = phi <2 x float> [ %i.qh, %.lr.ph933 ], [ %i.ta, %bb.bw ], [ %i.ta, %bb.br ] ; 2 uses
  %i.tr = phi <2 x float> [ %i.qi, %.lr.ph933 ], [ %i.tc, %bb.bw ], [ %i.tc, %bb.br ] ; 2 uses
  %i.ts = phi <2 x float> [ %i.qj, %.lr.ph933 ], [ %i.to, %bb.bw ], [ %i.qj, %bb.br ] ; 2 uses
  %i.tt = phi <2 x float> [ %i.qk, %.lr.ph933 ], [ %i.te, %bb.bw ], [ %i.te, %bb.br ] ; 2 uses
  %indvars.iv.next1052 = add nuw nsw i64 %indvars.iv1051, 1 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0373931, i64 4
  %exitcond1055.not = icmp eq i64 %indvars.iv.next1052, %wide.trip.count1054
  br i1 %exitcond1055.not, label %._crit_edge934, label %.lr.ph933, !llvm.loop !449

bb.by:                                            ; preds = %._crit_edge962
  %i.tv = fmul <2 x float> %i.pe, splat (float f0x37800000) ; 3 uses
  %i.tw = fmul float %.2405.lcssa, f0x37800000    ; 5 uses
  %i.tx = fneg float %i.tw
  %i.ty = fmul float %i.tw, %i.tx
  %i.tz = extractelement <2 x float> %i.tv, i64 0 ; 3 uses
  %i.ua = extractelement <2 x float> %i.tv, i64 1 ; 3 uses
  %i.ub = call float @llvm.fmuladd.f32(float %i.ua, float %i.tz, float %i.ty) ; 2 uses
  %i.uc = fadd float %i.ua, %i.tz
  %i.ud = fsub float %i.ua, %i.tz                 ; 2 uses
  %i.ue = fmul float %i.tw, 4.000000e+00
  %i.uf = fmul float %i.tw, %i.ue
  %i.ug = call float @llvm.fmuladd.f32(float %i.ud, float %i.ud, float %i.uf)
  %i.uh = call noundef float @sqrtf(float noundef %i.ug) #20
  %i.ui = fsub float %i.uc, %i.uh
  %i.uj = fdiv float %i.ui, %i.hb
  %i.uk = load float, ptr %i.cl, align 4, !tbaa !240
  %i.ul = fcmp olt float %i.uj, %i.uk
  %i.um = call float @llvm.fabs.f32(float %i.ub)
  %i.un = fcmp olt float %i.um, f0x34000000
  %or.cond869 = select i1 %i.ul, i1 true, i1 %i.un
  br i1 %or.cond869, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.uo = load i32, ptr %i.at, align 8, !tbaa !237 ; 2 uses
  %i.up = icmp eq i32 %i.uo, 0
  br i1 %i.up, label %bb.ca, label %thread-pre-split

bb.ca:                                            ; preds = %bb.bz
  %i.uq = load ptr, ptr %i.cm, align 8, !tbaa !232 ; 2 uses
  %.not499 = icmp eq ptr %i.uq, null
  br i1 %.not499, label %.thread848, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ur = getelementptr inbounds i8, ptr %i.uq, i64 %indvars.iv1061
  store i8 0, ptr %i.ur, align 1, !tbaa !39
  %.pr.pre = load i32, ptr %i.at, align 8, !tbaa !237
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.cb, %bb.bz
  %i.us = phi i32 [ %i.uo, %bb.bz ], [ %.pr.pre, %bb.cb ]
  %i.ut = icmp sgt i32 %i.us, 0
  br i1 %i.ut, label %bb.cc, label %.thread848

bb.cc:                                            ; preds = %thread-pre-split
  %i.uu = load ptr, ptr %i.av, align 8, !tbaa !453
  %i.uv = getelementptr inbounds [8 x i8], ptr %i.uu, i64 %indvars.iv1061
  store <2 x float> %.sroa.0685.0, ptr %i.uv, align 4, !tbaa !48
  br label %.thread848

bb.cd:                                            ; preds = %bb.by
  %i.uw = fdiv float 1.000000e+00, %i.ub
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge962
  %.6409 = phi float [ %i.tw, %bb.cd ], [ %.2405.lcssa, %._crit_edge962 ] ; 2 uses
  %.2392 = phi float [ %i.uw, %bb.cd ], [ %.0390992, %._crit_edge962 ] ; 2 uses
  %i.ux = phi <2 x float> [ %i.tv, %bb.cd ], [ %i.pe, %._crit_edge962 ] ; 2 uses
  %i.uy = fsub <2 x float> %i.pb, %i.pc
  %i.uz = shufflevector <2 x float> %i.pa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.va = extractelement <2 x float> %i.pa, i64 1
  %i.vb = extractelement <2 x float> %i.pa, i64 0 ; 2 uses
  %i.vc = fsub <2 x float> %i.pc, %i.pa           ; 5 uses
  %i.vd = fsub <2 x float> %i.uy, %i.pd
  %i.ve = shufflevector <2 x float> %i.pd, <2 x float> %i.vd, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.vf = fadd <4 x float> %i.ve, %i.uz           ; 3 uses
  %i.vg = fsub <4 x float> %i.ve, %i.uz           ; 3 uses
  %i.vh = shufflevector <4 x float> %i.vf, <4 x float> %i.vg, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.vi = extractelement <4 x float> %i.vg, i64 3 ; 2 uses
  %i.vj = fneg float %i.vi                        ; 4 uses
  %i.vk = fneg float %i.va                        ; 3 uses
  %i.vl = extractelement <4 x float> %i.vf, i64 0 ; 2 uses
  %i.vm = fneg float %i.vl                        ; 2 uses
  %i.vn = fmul float %i.vi, %i.vm
  %i.vo = extractelement <4 x float> %i.vf, i64 1 ; 3 uses
  %i.vp = extractelement <4 x float> %i.vg, i64 2 ; 3 uses
  %i.vq = call float @llvm.fmuladd.f32(float %i.vp, float %i.vo, float %i.vn)
  %i.vr = fdiv float 1.000000e+00, %i.vq          ; 2 uses
  %i.vs = fmul float %i.vr, 5.000000e-01
  %i.vt = fmul float %i.vo, %i.vb
  %i.vu = extractelement <2 x float> %i.vc, i64 1 ; 2 uses
  %i.vv = call float @llvm.fmuladd.f32(float %i.vp, float %i.vu, float %i.vt)
  %i.vw = extractelement <2 x float> %i.vc, i64 0 ; 2 uses
  %i.vx = call float @llvm.fmuladd.f32(float %i.vw, float %i.vj, float %i.vv)
  %i.vy = call float @llvm.fmuladd.f32(float %i.vl, float %i.vk, float %i.vx)
  %i.vz = fmul float %i.vy, %i.vs                 ; 4 uses
  %i.wa = fmul float %i.vw, %i.vk
  %i.wb = call float @llvm.fmuladd.f32(float %i.vu, float %i.vb, float %i.wa)
  %i.wc = fneg float %i.wb
  %i.wd = fmul float %i.vr, %i.wc
  %i.we = call float @llvm.fmuladd.f32(float %i.vz, float %i.vz, float %i.wd) ; 2 uses
  %i.wf = fcmp ogt float %i.we, 0.000000e+00
  br i1 %i.wf, label %bb.cf, label %.thread799

bb.cf:                                            ; preds = %bb.ce
  %i.wg = fneg float %i.vp                        ; 2 uses
  %i.wh = fneg float %i.vo                        ; 2 uses
  %i.wi = call noundef float @sqrtf(float noundef %i.we) #20 ; 2 uses
  %i.wj = fneg float %i.vz
  %i.wk = shufflevector <2 x float> %i.pa, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.wl = fneg <2 x float> %i.vc                  ; 3 uses
  %i.wm = shufflevector <2 x float> %i.wl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.wn = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.vm, i64 0
  %i.wo = insertelement <4 x float> %i.wn, float %i.wh, i64 3
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.wq = insertelement <4 x float> poison, float %i.wg, i64 0
  %i.wr = insertelement <4 x float> %i.wq, float %i.vj, i64 1
  %i.ws = shufflevector <4 x float> %i.wr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.wt = insertelement <2 x float> poison, float %i.wi, i64 0
  %i.wu = insertelement <2 x float> %i.wt, float %i.wj, i64 1
  %i.wv = insertelement <2 x float> poison, float %i.vz, i64 0
  %i.ww = insertelement <2 x float> %i.wv, float %i.wi, i64 1
  %i.wx = fsub <2 x float> %i.wu, %i.ww           ; 9 uses
  %i.wy = insertelement <2 x float> poison, float %i.vj, i64 0
  %i.wz = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xa = insertelement <2 x float> poison, float %i.vk, i64 0
  %i.xb = shufflevector <2 x float> %i.xa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wz, <2 x float> %i.wx, <2 x float> %i.xb)
  %i.xd = fneg <2 x float> %i.xc
  %i.xe = insertelement <2 x float> poison, float %i.wh, i64 0
  %i.xf = shufflevector <2 x float> %i.xe, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.xg = shufflevector <2 x float> %i.wl, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.xh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xf, <2 x float> %i.wx, <2 x float> %i.xg)
  %i.xi = fdiv <2 x float> %i.xd, %i.xh           ; 6 uses
  %i.xj = extractelement <2 x float> %i.wx, i64 1 ; 2 uses
  %i.xk = fcmp ole float %i.xj, 1.000000e+00
  %i.xl = shufflevector <2 x float> %i.xi, <2 x float> %i.wx, <4 x i32> <i32 1, i32 3, i32 1, i32 1>
  %i.xm = fadd <4 x float> %i.xl, <float -2.000000e-03, float -2.000000e-03, float 2.000000e-03, float -2.000000e-03> ; 3 uses
  %i.xn = shufflevector <2 x float> %i.wx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.xo = fadd <4 x float> %i.xn, <float -2.000000e-03, float -2.000000e-03, float -2.000000e-03, float 2.000000e-03> ; 5 uses
  %i.xp = fmul <4 x float> %i.xm, %i.wp           ; 3 uses
  %i.xq = shufflevector <4 x float> %i.xm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.xr = fmul <4 x float> %i.xq, %i.wm           ; 2 uses
  %i.xs = shufflevector <4 x float> %i.xo, <4 x float> %i.xp, <4 x i32> <i32 0, i32 7, i32 0, i32 3>
  %i.xt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xp, <4 x float> %i.xs, <4 x float> %i.xr)
  %i.xu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ws, <4 x float> %i.xo, <4 x float> %i.xt)
  %i.xv = fsub <4 x float> %i.xu, %i.uz
  %.fr = freeze <4 x float> %i.xv
  %i.xw = fcmp oge <4 x float> %.fr, zeroinitializer
  %i.xx = shufflevector <2 x float> %i.wx, <2 x float> %i.xi, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.xy = fcmp ole <4 x float> %i.xx, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.xz = fcmp oge <4 x float> %i.xx, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ya = shufflevector <4 x i1> %i.xy, <4 x i1> poison, <6 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yb = insertelement <6 x i1> %i.ya, i1 %i.xk, i64 1
  %i.yc = shufflevector <4 x i1> %i.xz, <4 x i1> poison, <2 x i32> <i32 poison, i32 3>
  %i.yd = extractelement <2 x float> %i.wx, i64 0 ; 2 uses
  %i.ye = fcmp ole float %i.yd, 1.000000e+00
  %i.yf = fcmp oge <2 x float> %i.xi, zeroinitializer ; 2 uses
  %i.yg = shufflevector <2 x i1> %i.yf, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %i.yh = shufflevector <2 x i1> %i.yg, <2 x i1> %i.yc, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yi = shufflevector <2 x float> %i.xi, <2 x float> %i.wx, <4 x i32> <i32 0, i32 2, i32 0, i32 0>
  %i.yj = fadd <4 x float> %i.yi, <float -2.000000e-03, float -2.000000e-03, float 2.000000e-03, float -2.000000e-03> ; 3 uses
  %i.yk = shufflevector <2 x float> %i.wx, <2 x float> poison, <4 x i32> zeroinitializer
  %i.yl = fadd <4 x float> %i.yk, <float -2.000000e-03, float -2.000000e-03, float -2.000000e-03, float 2.000000e-03> ; 5 uses
  %i.ym = fmul <4 x float> %i.yj, %i.wp           ; 4 uses
  %i.yn = shufflevector <4 x float> %i.yj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.yo = shufflevector <2 x float> %i.wl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.yp = fmul <4 x float> %i.yn, %i.yo           ; 2 uses
  %i.yq = shufflevector <4 x float> %i.yl, <4 x float> %i.ym, <4 x i32> <i32 0, i32 7, i32 0, i32 3>
  %i.yr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ym, <4 x float> %i.yq, <4 x float> %i.yp)
  %i.ys = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ws, <4 x float> %i.yl, <4 x float> %i.yr)
  %i.yt = fsub <4 x float> %i.ys, %i.uz
  %.fr1177 = freeze <4 x float> %i.yt
  %i.yu = fcmp oge <4 x float> %.fr1177, zeroinitializer
  %i.yv = shufflevector <4 x float> %i.yj, <4 x float> %i.xm, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.yw = fmul <2 x float> %i.yv, %i.xf           ; 2 uses
  %i.yx = fmul <2 x float> %i.yv, %i.xg
  %i.yy = shufflevector <4 x float> %i.yp, <4 x float> %i.xr, <8 x i32> <i32 2, i32 6, i32 0, i32 4, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.yz = shufflevector <2 x float> %i.yx, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.za = shufflevector <8 x float> %i.yy, <8 x float> %i.yz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.zb = shufflevector <4 x float> %i.ym, <4 x float> %i.xp, <4 x i32> <i32 2, i32 6, i32 poison, i32 4>
  %i.zc = shufflevector <4 x float> %i.yl, <4 x float> %i.xo, <4 x i32> <i32 3, i32 7, i32 0, i32 7> ; 2 uses
  %i.zd = shufflevector <2 x float> %i.yw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ze = shufflevector <4 x float> %i.zc, <4 x float> %i.zd, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 5>
  %i.zf = shufflevector <4 x float> %i.zb, <4 x float> %i.yl, <8 x i32> <i32 0, i32 1, i32 7, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zg = shufflevector <8 x float> %i.zf, <8 x float> %i.ze, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.zh = shufflevector <4 x float> %i.xo, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %i.zi = shufflevector <2 x float> %i.yw, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zj = shufflevector <8 x float> %i.zi, <8 x float> %i.zh, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 0, i32 15>
  %i.zk = shufflevector <4 x float> %i.zc, <4 x float> %i.ym, <8 x i32> <i32 0, i32 1, i32 4, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zl = shufflevector <8 x float> %i.zk, <8 x float> %i.zj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.zm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.zg, <8 x float> %i.zl, <8 x float> %i.za)
  %i.zn = insertelement <8 x float> poison, float %i.wg, i64 0
  %i.zo = insertelement <8 x float> %i.zn, float %i.vj, i64 1
  %i.zp = shufflevector <8 x float> %i.zo, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.zq = shufflevector <4 x float> %i.yl, <4 x float> %i.xo, <8 x i32> <i32 3, i32 7, i32 3, i32 7, i32 3, i32 7, i32 0, i32 4>
  %i.zr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.zp, <8 x float> %i.zq, <8 x float> %i.zm)
  %i.zs = fsub <8 x float> %i.zr, %i.wk
  %i.zt = fcmp ole <8 x float> %i.zs, zeroinitializer ; 2 uses
  %i.zu = shufflevector <8 x i1> %i.zt, <8 x i1> poison, <6 x i32> <i32 poison, i32 poison, i32 7, i32 3, i32 5, i32 1>
  %i.zv = shufflevector <6 x i1> %i.yb, <6 x i1> %i.zu, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.zw = shufflevector <8 x i1> %i.zv, <8 x i1> %i.yh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.zx = shufflevector <4 x i1> %i.xy, <4 x i1> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.zy = insertelement <6 x i1> %i.zx, i1 %i.ye, i64 1
  %i.zz = shufflevector <8 x i1> %i.zt, <8 x i1> poison, <6 x i32> <i32 poison, i32 poison, i32 6, i32 2, i32 4, i32 0>
  %i.aaa = shufflevector <4 x i1> %i.xz, <4 x i1> poison, <2 x i32> <i32 poison, i32 2>
  %i.aab = shufflevector <6 x i1> %i.zy, <6 x i1> %i.zz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison>
  %i.aac = shufflevector <2 x i1> %i.yf, <2 x i1> %i.aaa, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aad = shufflevector <8 x i1> %i.aab, <8 x i1> %i.aac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.aae = freeze <8 x i1> %i.zw                  ; 2 uses
  %i.aaf = shufflevector <8 x i1> %i.aae, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.aaf, %i.xw
  %i.aag = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aah = shufflevector <8 x i1> %i.aag, <8 x i1> %i.aae, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.aai = bitcast <8 x i1> %i.aah to i8
  %i.aaj = icmp eq i8 %i.aai, -1                  ; 3 uses
  %i.aak = freeze <8 x i1> %i.aad                 ; 2 uses
  %i.aal = shufflevector <8 x i1> %i.aak, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1172 = and <4 x i1> %i.aal, %i.yu
  %i.aam = shufflevector <4 x i1> %rdx.op1172, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aan = shufflevector <8 x i1> %i.aam, <8 x i1> %i.aak, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.aao = bitcast <8 x i1> %i.aan to i8
  %i.aap = icmp eq i8 %i.aao, -1
  %i.aaq = xor i1 %i.aaj, %i.aap
  br i1 %i.aaq, label %bb.cg, label %.thread799

.thread799:                                       ; preds = %bb.ce, %bb.cf, %bb.ai
  %.3838 = phi float [ %i.hl, %bb.ai ], [ %i.ik, %bb.cf ], [ %i.ik, %bb.ce ]
  %.5837 = phi float [ %.0386993, %bb.ai ], [ %.2388.lcssa, %bb.cf ], [ %.2388.lcssa, %bb.ce ]
  %.4394836 = phi float [ %.0390992, %bb.ai ], [ %.2392, %bb.cf ], [ %.2392, %bb.ce ] ; 2 uses
  %.8411834 = phi float [ %.0403990, %bb.ai ], [ %.6409, %bb.cf ], [ %.6409, %bb.ce ] ; 2 uses
end_hunk_3
