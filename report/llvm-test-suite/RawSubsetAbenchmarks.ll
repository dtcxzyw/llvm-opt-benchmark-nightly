Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/RawSubsetAbenchmarks?download=true
inline.NumInlined: 161
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE:bb.a
  %i.dn = shufflevector <2 x double> %i.dc, <2 x double> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.do = shufflevector <2 x double> %i.db, <2 x double> %i.dd, <2 x i32> <i32 1, i32 2>
  %i.dp = fadd <2 x double> %i.dn, %i.do
  %i.dq = shufflevector <2 x double> %i.db, <2 x double> %i.de, <2 x i32> <i32 0, i32 2>
  %i.dr = fsub <2 x double> %i.dp, %i.dq
  %i.ds = shufflevector <2 x double> %i.dc, <2 x double> %i.de, <2 x i32> <i32 0, i32 3>
  %i.dt = fsub <2 x double> %i.dr, %i.ds
  %i.du = fmul <2 x double> %i.dt, splat (double 5.000000e-01)
  %i.dv = fmul double %i.cs, -5.000000e-01        ; 2 uses
  %i.dw = fmul double %i.cj, %i.dv
  %i.dx = extractelement <2 x double> %i.da, i64 0
  %i.dy = extractelement <2 x double> %i.da, i64 1
  %i.dz = fneg double %i.cj
  %i.ea = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.dz, i64 1
  %i.ec = fmul <2 x double> %i.dm, %i.eb
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.da, <2 x double> %i.ec)
  %shift = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.dd
  %foldExtExtBinop158 = fadd <2 x double> %foldExtExtBinop, %i.de
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.dx, double %i.dw)
  %i.ef = fadd double %i.co, %i.cp
  %i.eg = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.ef, i64 1
  %i.ei = shufflevector <2 x double> %i.cm, <2 x double> <double f0x3BC79CA10C924223, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ej = fadd <2 x double> %i.eh, %i.ei
  %i.ek = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %foldExtExtBinop158, <2 x i32> <i32 0, i32 2>
  %i.el = fdiv <2 x double> %i.ek, %i.ej          ; 2 uses
  %i.em = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x double> %i.em, %i.ed          ; 2 uses
  %shift160 = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop161 = fadd <2 x double> %i.en, %shift160
  %shift163 = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop164 = fadd <2 x double> %shift163, %foldExtExtBinop161
  %i.eo = extractelement <2 x double> %foldExtExtBinop164, i64 0
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bn
  store double %i.eo, ptr %i.ep, align 8, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !139
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL13BM_COUPLE_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ADomain, align 8            ; 12 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 7)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !144
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !42
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43
  %i.o = trunc i64 %i.n to i32
  call void @_ZN7ADomainC2Eii(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef %i.o, i32 noundef 3)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !57   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !58   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !59   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !60   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !61   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !62  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !39
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 16, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.af = phi i64 [ %i.ae, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.e

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.c
  %.not.i.not419 = icmp eq i64 %i.af, 0
  br i1 %.not.i.not419, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader411.lr.ph, !prof !52

.preheader411.lr.ph:                              ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %i.ag = icmp sge i32 %i.y, %i.aa
  %i.ah = icmp sge i32 %i.u, %i.w
  %i.ai = icmp sge i32 %i.q, %i.s
  %brmerge = select i1 %i.ag, i1 true, i1 %i.ah
  %brmerge426 = select i1 %brmerge, i1 true, i1 %i.ai
  br i1 %brmerge426, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader411.preheader

.preheader411.preheader:                          ; preds = %.preheader411.lr.ph
  %i.aj = add nsw i32 %i.s, 2
  %i.ak = add nsw i32 %i.w, 2
  %i.al = add nsw i32 %i.s, 1
  %i.am = add nsw i32 %i.w, 1
  %i.an = sext i32 %i.q to i64
  %i.ao = sext i32 %i.u to i64
  %i.ap = sext i32 %i.al to i64
  %i.aq = sext i32 %i.aj to i64
  %i.ar = sext i32 %i.y to i64
  %i.as = sext i32 %i.am to i64
  %i.at = sext i32 %i.ak to i64
  br label %.preheader411

.preheader411:                                    ; preds = %.preheader411.preheader, %._crit_edge417
  %.sroa.0398.0420 = phi i64 [ %i.bb, %._crit_edge417 ], [ %i.af, %.preheader411.preheader ]
  br label %.preheader

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %._crit_edge417, %.preheader411.lr.ph, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.e

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55 ; 2 uses
  %.not.i138 = icmp eq ptr %i.av, null
  br i1 %.not.i138, label %_ZN7ADomainD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.av) #10
  br label %_ZN7ADomainD2Ev.exit

_ZN7ADomainD2Ev.exit:                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55 ; 2 uses
  %.not.i299 = icmp eq ptr %i.ay, null
  br i1 %.not.i299, label %_ZN7ADomainD2Ev.exit300, label %bb.an

.preheader:                                       ; preds = %.preheader411, %._crit_edge415
  %indvars.iv433 = phi i64 [ %i.ar, %.preheader411 ], [ %indvars.iv.next434, %._crit_edge415 ] ; 3 uses
  %i.az = mul nsw i64 %indvars.iv433, %i.as
  %i.ba = mul nsw i64 %indvars.iv433, %i.at
  br label %.lr.ph

._crit_edge417:                                   ; preds = %._crit_edge415
  %i.bb = add nsw i64 %.sroa.0398.0420, -1        ; 2 uses
  %.not.i.not = icmp eq i64 %i.bb, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.preheader411, !prof !47

._crit_edge415:                                   ; preds = %._crit_edge
  %indvars.iv.next434 = add nsw i64 %indvars.iv433, 1 ; 2 uses
  %lftr.wideiv436 = trunc i64 %indvars.iv.next434 to i32
  %exitcond437.not = icmp eq i32 %i.aa, %lftr.wideiv436
  br i1 %exitcond437.not, label %._crit_edge417, label %.preheader, !llvm.loop !140

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv428 = phi i64 [ %i.ao, %.preheader ], [ %indvars.iv.next429, %._crit_edge ] ; 3 uses
  %i.bc = add nsw i64 %indvars.iv428, %i.az
  %i.bd = mul nsw i64 %i.bc, %i.ap
  %i.be = add nsw i64 %indvars.iv428, %i.ba
  %i.bf = mul nsw i64 %i.be, %i.aq
  %invariant.gep = getelementptr [16 x i8], ptr %i.i, i64 %i.bf
  br label %bb.f

._crit_edge:                                      ; preds = %bb.am
  %indvars.iv.next429 = add nsw i64 %indvars.iv428, 1 ; 2 uses
  %lftr.wideiv431 = trunc i64 %indvars.iv.next429 to i32
  %exitcond432.not = icmp eq i32 %i.w, %lftr.wideiv431
  br i1 %exitcond432.not, label %._crit_edge415, label %.lr.ph, !llvm.loop !141

bb.f:                                             ; preds = %.lr.ph, %bb.am
  %indvars.iv = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next, %bb.am ] ; 3 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bg = add nsw i64 %indvars.iv, %i.bd          ; 4 uses
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.bg
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.bg ; 2 uses
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.bg ; 2 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bg ; 2 uses
  %i.bl = load <2 x double>, ptr %gep, align 8
  %i.bm = load <2 x double>, ptr %i.bh, align 8
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> %i.bl, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.bo = fmul <4 x double> %i.bn, splat (double f0x406E56FD83BA6863) ; 5 uses
  %i.bp = extractelement <4 x double> %i.bo, i64 2 ; 2 uses
  %i.bq = fmul double %i.bp, %i.bp
  %i.br = extractelement <4 x double> %i.bo, i64 1 ; 2 uses
  %i.bs = call double @llvm.fmuladd.f64(double %i.br, double %i.br, double %i.bq)
  %i.bt = extractelement <4 x double> %i.bo, i64 0 ; 2 uses
  %i.bu = call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.bs)
  %i.bv = extractelement <4 x double> %i.bo, i64 3 ; 2 uses
  %i.bw = call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.bu)
  %i.bx = fadd double %i.bw, f0x38E09D8792FB4C49
  %i.by = call double @llvm.sqrt.f64(double %i.bx) ; 2 uses
  %i.bz = fmul double %i.by, 2.080000e-01
  %i.ca = fmul double %i.bz, 5.000000e-01         ; 2 uses
  %i.cb = call double @sin(double noundef %i.ca) #9, !tbaa !8
  %i.cc = call double @cos(double noundef %i.ca) #9, !tbaa !8 ; 4 uses
  %i.cd = load <2 x double>, ptr %i.bi, align 8   ; 9 uses
  %i.ce = load <2 x double>, ptr %i.bj, align 8   ; 7 uses
  %i.cf = load <2 x double>, ptr %i.bk, align 8   ; 7 uses
  %i.cg = fdiv double 1.000000e+00, %i.by
  %i.ch = insertelement <4 x double> poison, double %i.cg, i64 0
  %i.ci = shufflevector <4 x double> %i.ch, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cj = fmul <4 x double> %i.bo, %i.ci          ; 14 uses
  %i.ck = extractelement <4 x double> %i.cj, i64 1 ; 6 uses
  %i.cl = shufflevector <4 x double> %i.cj, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.cm = fmul <2 x double> %i.cl, %i.cl          ; 2 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 0
  %i.co = call double @llvm.fmuladd.f64(double %i.ck, double %i.ck, double %i.cn) ; 2 uses
  %i.cp = extractelement <4 x double> %i.cj, i64 0 ; 6 uses
  %i.cq = extractelement <2 x double> %i.cm, i64 1
  %i.cr = call double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %i.cq) ; 2 uses
  %i.cs = shufflevector <4 x double> %i.cj, <4 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ct = fmul <2 x double> %i.ce, %i.cs          ; 2 uses
  %i.cu = shufflevector <4 x double> %i.cj, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.cv = fmul <2 x double> %i.ce, %i.cu
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cx = fsub <2 x double> %i.ct, %i.cw          ; 2 uses
  %i.cy = fadd <2 x double> %i.ct, %i.cw          ; 2 uses
  %i.cz = shufflevector <2 x double> %i.cx, <2 x double> %i.cy, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.da = extractelement <2 x double> %i.cy, i64 1 ; 4 uses
  %i.db = extractelement <2 x double> %i.cx, i64 0 ; 3 uses
  %i.dc = fcmp uno double %i.db, 0.000000e+00     ; 2 uses
  br i1 %i.dc, label %bb.g, label %bb.i, !prof !145

bb.g:                                             ; preds = %bb.f
  %i.dd = fcmp uno double %i.da, 0.000000e+00
  br i1 %i.dd, label %bb.h, label %bb.i, !prof !145

bb.h:                                             ; preds = %bb.g
  %i.de = extractelement <2 x double> %i.ce, i64 0
  %i.df = extractelement <2 x double> %i.ce, i64 1
  %i.dg = extractelement <4 x double> %i.cj, i64 2
  %i.dh = call noundef { double, double } @__muldc3(double noundef %i.ck, double noundef %i.dg, double noundef %i.de, double noundef %i.df) #9 ; 2 uses
  %i.di = extractvalue { double, double } %i.dh, 0
  %i.dj = extractvalue { double, double } %i.dh, 1
  %i.dk = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.dj, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.dm = phi <2 x double> [ %i.cz, %bb.f ], [ %i.cz, %bb.g ], [ %i.dl, %bb.h ]
  %i.dn = shufflevector <4 x double> %i.cj, <4 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.do = fmul <2 x double> %i.dn, %i.cf          ; 2 uses
  %i.dp = shufflevector <4 x double> %i.cj, <4 x double> poison, <2 x i32> <i32 3, i32 3> ; 3 uses
  %i.dq = fmul <2 x double> %i.dp, %i.cf
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ds = fsub <2 x double> %i.do, %i.dr          ; 2 uses
  %i.dt = fadd <2 x double> %i.do, %i.dr          ; 3 uses
  %i.du = shufflevector <2 x double> %i.ds, <2 x double> %i.dt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dv = extractelement <2 x double> %i.ds, i64 0 ; 3 uses
  %i.dw = fcmp uno double %i.dv, 0.000000e+00     ; 2 uses
  br i1 %i.dw, label %bb.j, label %bb.l, !prof !145

bb.j:                                             ; preds = %bb.i
  %i.dx = extractelement <2 x double> %i.dt, i64 1
  %i.dy = fcmp uno double %i.dx, 0.000000e+00
  br i1 %i.dy, label %bb.k, label %bb.l, !prof !145

bb.k:                                             ; preds = %bb.j
  %i.dz = extractelement <2 x double> %i.cf, i64 0
  %i.ea = extractelement <2 x double> %i.cf, i64 1
  %i.eb = extractelement <4 x double> %i.cj, i64 3
  %i.ec = call noundef { double, double } @__muldc3(double noundef %i.cp, double noundef %i.eb, double noundef %i.dz, double noundef %i.ea) #9 ; 2 uses
  %i.ed = extractvalue { double, double } %i.ec, 0
  %i.ee = extractvalue { double, double } %i.ec, 1
  %i.ef = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.ee, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %i.eh = phi <2 x double> [ %i.du, %bb.i ], [ %i.du, %bb.j ], [ %i.eg, %bb.k ]
  %i.ei = fadd <2 x double> %i.dm, %i.eh
  %i.ej = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x double> %i.ek, %i.cd
  %i.em = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.eo = fmul <2 x double> %i.en, %i.ei          ; 4 uses
  %i.ep = fmul <2 x double> %i.eo, zeroinitializer ; 2 uses
  %i.eq = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.er = fsub <2 x double> %i.ep, %i.eq          ; 2 uses
  %i.es = fadd <2 x double> %i.ep, %i.eq          ; 2 uses
  %i.et = shufflevector <2 x double> %i.er, <2 x double> %i.es, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eu = extractelement <2 x double> %i.er, i64 0
  %i.ev = fcmp uno double %i.eu, 0.000000e+00
  br i1 %i.ev, label %bb.m, label %bb.o, !prof !145

bb.m:                                             ; preds = %bb.l
  %i.ew = extractelement <2 x double> %i.es, i64 1
  %i.ex = fcmp uno double %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.n, label %bb.o, !prof !145

bb.n:                                             ; preds = %bb.m
  %i.ey = extractelement <2 x double> %i.eo, i64 0
  %i.ez = extractelement <2 x double> %i.eo, i64 1
  %i.fa = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.ey, double noundef %i.ez) #9 ; 2 uses
  %i.fb = extractvalue { double, double } %i.fa, 0
  %i.fc = extractvalue { double, double } %i.fa, 1
  %i.fd = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.fc, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.ff = phi <2 x double> [ %i.et, %bb.l ], [ %i.et, %bb.m ], [ %i.fe, %bb.n ]
  %i.fg = fsub <2 x double> %i.el, %i.ff
  store <2 x double> %i.fg, ptr %i.bi, align 8
  %i.fh = call double @llvm.fmuladd.f64(double %i.co, double %i.cc, double %i.cr)
  %i.fi = extractelement <2 x double> %i.dt, i64 1 ; 3 uses
  br i1 %i.dw, label %bb.p, label %bb.r, !prof !145

bb.p:                                             ; preds = %bb.o
  %i.fj = fcmp uno double %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.q, label %bb.r, !prof !145

bb.q:                                             ; preds = %bb.p
  %i.fk = extractelement <2 x double> %i.cf, i64 0
  %i.fl = extractelement <2 x double> %i.cf, i64 1
  %i.fm = extractelement <4 x double> %i.cj, i64 3
  %i.fn = call noundef { double, double } @__muldc3(double noundef %i.cp, double noundef %i.fm, double noundef %i.fk, double noundef %i.fl) #9 ; 2 uses
  %i.fo = extractvalue { double, double } %i.fn, 0
  %i.fp = extractvalue { double, double } %i.fn, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %i.fq = phi double [ %i.dv, %bb.o ], [ %i.dv, %bb.p ], [ %i.fo, %bb.q ] ; 2 uses
  %i.fr = phi double [ %i.fi, %bb.o ], [ %i.fi, %bb.p ], [ %i.fp, %bb.q ] ; 2 uses
  %i.fs = extractelement <4 x double> %i.cj, i64 2 ; 2 uses
  %i.ft = fneg double %i.fs                       ; 2 uses
  %i.fu = shufflevector <4 x double> %i.cj, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.fv = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.fw = shufflevector <4 x double> %i.cj, <4 x double> poison, <2 x i32> <i32 2, i32 1>
  %i.fx = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x double> %i.fw, %i.fx          ; 2 uses
  %i.fz = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x double> %i.fu, %i.ga          ; 2 uses
  %i.gc = fadd <2 x double> %i.fy, %i.gb          ; 2 uses
  %i.gd = fsub <2 x double> %i.fy, %i.gb          ; 2 uses
  %i.ge = shufflevector <2 x double> %i.gc, <2 x double> %i.gd, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gf = extractelement <2 x double> %i.gc, i64 0
  %i.gg = fcmp uno double %i.gf, 0.000000e+00
  br i1 %i.gg, label %bb.s, label %bb.u, !prof !145

bb.s:                                             ; preds = %bb.r
  %i.gh = extractelement <2 x double> %i.gd, i64 1
  %i.gi = fcmp uno double %i.gh, 0.000000e+00
  br i1 %i.gi, label %bb.t, label %bb.u, !prof !145

bb.t:                                             ; preds = %bb.s
  %i.gj = call noundef { double, double } @__muldc3(double noundef %i.ck, double noundef %i.ft, double noundef %i.fq, double noundef %i.fr) #9 ; 2 uses
  %i.gk = extractvalue { double, double } %i.gj, 0
  %i.gl = extractvalue { double, double } %i.gj, 1
  %i.gm = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gl, i64 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.go = phi <2 x double> [ %i.ge, %bb.r ], [ %i.ge, %bb.s ], [ %i.gn, %bb.t ]
  %i.gp = fadd double %i.cc, -1.000000e+00
  %i.gq = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gs = fmul <2 x double> %i.gr, %i.go
  %i.gt = fmul <2 x double> %i.cd, %i.cs          ; 2 uses
  %i.gu = fmul <2 x double> %i.cd, %i.cu
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gw = fadd <2 x double> %i.gt, %i.gv          ; 2 uses
  %i.gx = fsub <2 x double> %i.gt, %i.gv          ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gw, <2 x double> %i.gx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gz = extractelement <2 x double> %i.gw, i64 0
  %i.ha = fcmp uno double %i.gz, 0.000000e+00
  br i1 %i.ha, label %bb.v, label %bb.x, !prof !145

bb.v:                                             ; preds = %bb.u
  %i.hb = extractelement <2 x double> %i.gx, i64 1
  %i.hc = fcmp uno double %i.hb, 0.000000e+00
  br i1 %i.hc, label %bb.w, label %bb.x, !prof !145

bb.w:                                             ; preds = %bb.v
  %i.hd = extractelement <2 x double> %i.cd, i64 0
  %i.he = extractelement <2 x double> %i.cd, i64 1
  %i.hf = call noundef { double, double } @__muldc3(double noundef %i.ck, double noundef %i.ft, double noundef %i.hd, double noundef %i.he) #9 ; 2 uses
  %i.hg = extractvalue { double, double } %i.hf, 0
  %i.hh = extractvalue { double, double } %i.hf, 1
  %i.hi = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hj = insertelement <2 x double> %i.hi, double %i.hh, i64 1
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %i.hk = phi <2 x double> [ %i.gy, %bb.u ], [ %i.gy, %bb.v ], [ %i.hj, %bb.w ]
  %i.hl = fmul <2 x double> %i.en, %i.hk          ; 4 uses
  %i.hm = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x double> %i.ce, %i.hn
  %i.hp = fadd <2 x double> %i.ho, %i.gs
  %i.hq = fmul <2 x double> %i.hl, zeroinitializer ; 2 uses
  %i.hr = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hs = fsub <2 x double> %i.hq, %i.hr          ; 2 uses
  %i.ht = fadd <2 x double> %i.hq, %i.hr          ; 2 uses
  %i.hu = shufflevector <2 x double> %i.hs, <2 x double> %i.ht, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.hv = extractelement <2 x double> %i.hs, i64 0
  %i.hw = fcmp uno double %i.hv, 0.000000e+00
  br i1 %i.hw, label %bb.y, label %bb.aa, !prof !145

bb.y:                                             ; preds = %bb.x
  %i.hx = extractelement <2 x double> %i.ht, i64 1
  %i.hy = fcmp uno double %i.hx, 0.000000e+00
  br i1 %i.hy, label %bb.z, label %bb.aa, !prof !145

bb.z:                                             ; preds = %bb.y
  %i.hz = extractelement <2 x double> %i.hl, i64 0
  %i.ia = extractelement <2 x double> %i.hl, i64 1
  %i.ib = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.hz, double noundef %i.ia) #9 ; 2 uses
  %i.ic = extractvalue { double, double } %i.ib, 0
  %i.id = extractvalue { double, double } %i.ib, 1
  %i.ie = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.id, i64 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z
  %i.ig = phi <2 x double> [ %i.hu, %bb.x ], [ %i.hu, %bb.y ], [ %i.if, %bb.z ]
  %i.ih = fsub <2 x double> %i.hp, %i.ig
  store <2 x double> %i.ih, ptr %i.bj, align 8
  %i.ii = call double @llvm.fmuladd.f64(double %i.cr, double %i.cc, double %i.co)
  br i1 %i.dc, label %bb.ab, label %bb.ad, !prof !145

bb.ab:                                            ; preds = %bb.aa
  %i.ij = fcmp uno double %i.da, 0.000000e+00
  br i1 %i.ij, label %bb.ac, label %bb.ad, !prof !145

bb.ac:                                            ; preds = %bb.ab
  %i.ik = extractelement <2 x double> %i.ce, i64 0
  %i.il = extractelement <2 x double> %i.ce, i64 1
  %i.im = call noundef { double, double } @__muldc3(double noundef %i.ck, double noundef %i.fs, double noundef %i.ik, double noundef %i.il) #9 ; 2 uses
  %i.in = extractvalue { double, double } %i.im, 0 ; 2 uses
  %i.io = extractvalue { double, double } %i.im, 1 ; 2 uses
  %i.ip = insertelement <2 x double> poison, double %i.in, i64 0
  %i.iq = insertelement <2 x double> %i.ip, double %i.io, i64 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.ir = phi double [ %i.db, %bb.aa ], [ %i.db, %bb.ab ], [ %i.in, %bb.ac ]
  %i.is = phi double [ %i.da, %bb.aa ], [ %i.da, %bb.ab ], [ %i.io, %bb.ac ]
  %i.it = phi <2 x double> [ %i.cz, %bb.aa ], [ %i.cz, %bb.ab ], [ %i.iq, %bb.ac ] ; 2 uses
  %i.iu = extractelement <4 x double> %i.cj, i64 3
  %i.iv = fneg double %i.iu                       ; 2 uses
  %i.iw = fmul <2 x double> %i.dn, %i.it          ; 2 uses
  %i.ix = fmul <2 x double> %i.dp, %i.it
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.iz = fadd <2 x double> %i.iw, %i.iy          ; 2 uses
  %i.ja = fsub <2 x double> %i.iw, %i.iy          ; 2 uses
  %i.jb = shufflevector <2 x double> %i.iz, <2 x double> %i.ja, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.jc = extractelement <2 x double> %i.iz, i64 0
  %i.jd = fcmp uno double %i.jc, 0.000000e+00
  br i1 %i.jd, label %bb.ae, label %bb.ag, !prof !145

bb.ae:                                            ; preds = %bb.ad
  %i.je = extractelement <2 x double> %i.ja, i64 1
  %i.jf = fcmp uno double %i.je, 0.000000e+00
  br i1 %i.jf, label %bb.af, label %bb.ag, !prof !145

bb.af:                                            ; preds = %bb.ae
  %i.jg = call noundef { double, double } @__muldc3(double noundef %i.cp, double noundef %i.iv, double noundef %i.ir, double noundef %i.is) #9 ; 2 uses
  %i.jh = extractvalue { double, double } %i.jg, 0
  %i.ji = extractvalue { double, double } %i.jg, 1
  %i.jj = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.jk = insertelement <2 x double> %i.jj, double %i.ji, i64 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.jl = phi <2 x double> [ %i.jb, %bb.ad ], [ %i.jb, %bb.ae ], [ %i.jk, %bb.af ]
  %i.jm = fmul <2 x double> %i.gr, %i.jl
  %i.jn = fmul <2 x double> %i.cd, %i.dn          ; 2 uses
  %i.jo = fmul <2 x double> %i.cd, %i.dp
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jq = fadd <2 x double> %i.jn, %i.jp          ; 2 uses
  %i.jr = fsub <2 x double> %i.jn, %i.jp          ; 2 uses
  %i.js = shufflevector <2 x double> %i.jq, <2 x double> %i.jr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.jt = extractelement <2 x double> %i.jq, i64 0
  %i.ju = fcmp uno double %i.jt, 0.000000e+00
  br i1 %i.ju, label %bb.ah, label %bb.aj, !prof !145

bb.ah:                                            ; preds = %bb.ag
  %i.jv = extractelement <2 x double> %i.jr, i64 1
  %i.jw = fcmp uno double %i.jv, 0.000000e+00
  br i1 %i.jw, label %bb.ai, label %bb.aj, !prof !145

bb.ai:                                            ; preds = %bb.ah
  %i.jx = extractelement <2 x double> %i.cd, i64 0
  %i.jy = extractelement <2 x double> %i.cd, i64 1
  %i.jz = call noundef { double, double } @__muldc3(double noundef %i.cp, double noundef %i.iv, double noundef %i.jx, double noundef %i.jy) #9 ; 2 uses
  %i.ka = extractvalue { double, double } %i.jz, 0
  %i.kb = extractvalue { double, double } %i.jz, 1
  %i.kc = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kd = insertelement <2 x double> %i.kc, double %i.kb, i64 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ai
  %i.ke = phi <2 x double> [ %i.js, %bb.ag ], [ %i.js, %bb.ah ], [ %i.kd, %bb.ai ]
  %i.kf = fmul <2 x double> %i.en, %i.ke          ; 4 uses
  %i.kg = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ki = fmul <2 x double> %i.cf, %i.kh
  %i.kj = fadd <2 x double> %i.ki, %i.jm
  %i.kk = fmul <2 x double> %i.kf, zeroinitializer ; 2 uses
  %i.kl = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.km = fsub <2 x double> %i.kk, %i.kl          ; 2 uses
  %i.kn = fadd <2 x double> %i.kk, %i.kl          ; 2 uses
  %i.ko = shufflevector <2 x double> %i.km, <2 x double> %i.kn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.kp = extractelement <2 x double> %i.km, i64 0
  %i.kq = fcmp uno double %i.kp, 0.000000e+00
  br i1 %i.kq, label %bb.ak, label %bb.am, !prof !145

bb.ak:                                            ; preds = %bb.aj
  %i.kr = extractelement <2 x double> %i.kn, i64 1
  %i.ks = fcmp uno double %i.kr, 0.000000e+00
  br i1 %i.ks, label %bb.al, label %bb.am, !prof !145

bb.al:                                            ; preds = %bb.ak
  %i.kt = extractelement <2 x double> %i.kf, i64 0
  %i.ku = extractelement <2 x double> %i.kf, i64 1
  %i.kv = call noundef { double, double } @__muldc3(double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef %i.kt, double noundef %i.ku) #9 ; 2 uses
  %i.kw = extractvalue { double, double } %i.kv, 0
  %i.kx = extractvalue { double, double } %i.kv, 1
  %i.ky = insertelement <2 x double> poison, double %i.kw, i64 0
  %i.kz = insertelement <2 x double> %i.ky, double %i.kx, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.la = phi <2 x double> [ %i.ko, %bb.aj ], [ %i.ko, %bb.ak ], [ %i.kz, %bb.al ]
  %i.lb = fsub <2 x double> %i.kj, %i.la
  store <2 x double> %i.lb, ptr %i.bk, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !142

bb.an:                                            ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #10
  br label %_ZN7ADomainD2Ev.exit300

_ZN7ADomainD2Ev.exit300:                          ; preds = %bb.e, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  resume { ptr, i32 } %i.aw
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL10BM_FIR_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 2 uses
  tail call void @_Z8loopInitj(i32 noundef 8)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 20 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 32, !tbaa !42
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43
  %i.i = trunc i64 %i.h to i32
  %i.j = add i32 %i.i, -16                        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 16, !tbaa !40
  br label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.n, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not34 = icmp ne i64 %i.o, 0
  %i.p = icmp sgt i32 %i.j, 0
  %or.cond = select i1 %.not.i.not34, i1 %i.p, i1 false, !prof !56
  br i1 %or.cond, label %.preheader30.preheader, label %._crit_edge36.split, !prof !56

.preheader30.preheader:                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 4 uses
  %i.q = shl nuw nsw i64 %wide.trip.count, 3      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.q
  %i.r = getelementptr i8, ptr %i.e, i64 %i.q
  %scevgep41 = getelementptr i8, ptr %i.r, i64 120
  %min.iters.check = icmp ult i32 %i.j, 2
  %bound0 = icmp ult ptr %i.c, %scevgep41
  %bound1 = icmp ult ptr %i.e, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader30

.preheader30:                                     ; preds = %.preheader30.preheader, %._crit_edge
  %.sroa.025.035 = phi i64 [ %i.dn, %._crit_edge ], [ %i.o, %.preheader30.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.preheader.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader30, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader30 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 15 uses
  %wide.load = load <2 x double>, ptr %i.s, align 8, !tbaa !13, !alias.scope !151
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> splat (double 3.000000e+00), <2 x double> zeroinitializer)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load42 = load <2 x double>, ptr %i.v, align 8, !tbaa !13, !alias.scope !151
  %i.w = fsub <2 x double> %i.t, %wide.load42
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load43 = load <2 x double>, ptr %i.x, align 8, !tbaa !13, !alias.scope !151
  %i.y = fsub <2 x double> %i.w, %wide.load43
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %wide.load44 = load <2 x double>, ptr %i.z, align 8, !tbaa !13, !alias.scope !151
  %i.aa = fsub <2 x double> %i.y, %wide.load44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %wide.load45 = load <2 x double>, ptr %i.ab, align 8, !tbaa !13, !alias.scope !151
  %i.ac = fsub <2 x double> %i.aa, %wide.load45
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %wide.load46 = load <2 x double>, ptr %i.ad, align 8, !tbaa !13, !alias.scope !151
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load46, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ac)
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %wide.load47 = load <2 x double>, ptr %i.af, align 8, !tbaa !13, !alias.scope !151
  %i.ag = fsub <2 x double> %i.ae, %wide.load47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %wide.load48 = load <2 x double>, ptr %i.ah, align 8, !tbaa !13, !alias.scope !151
  %i.ai = fsub <2 x double> %i.ag, %wide.load48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %wide.load49 = load <2 x double>, ptr %i.aj, align 8, !tbaa !13, !alias.scope !151
  %i.ak = fsub <2 x double> %i.ai, %wide.load49
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %wide.load50 = load <2 x double>, ptr %i.al, align 8, !tbaa !13, !alias.scope !151
  %i.am = fsub <2 x double> %i.ak, %wide.load50
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %wide.load51 = load <2 x double>, ptr %i.an, align 8, !tbaa !13, !alias.scope !151
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load51, <2 x double> splat (double 3.000000e+00), <2 x double> %i.am)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %wide.load52 = load <2 x double>, ptr %i.ap, align 8, !tbaa !13, !alias.scope !151
  %i.aq = fsub <2 x double> %i.ao, %wide.load52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %wide.load53 = load <2 x double>, ptr %i.ar, align 8, !tbaa !13, !alias.scope !151
  %i.as = fsub <2 x double> %i.aq, %wide.load53
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %wide.load54 = load <2 x double>, ptr %i.at, align 8, !tbaa !13, !alias.scope !151
  %i.au = fsub <2 x double> %i.as, %wide.load54
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %wide.load55 = load <2 x double>, ptr %i.av, align 8, !tbaa !13, !alias.scope !151
  %i.aw = fsub <2 x double> %i.au, %wide.load55
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %wide.load56 = load <2 x double>, ptr %i.ax, align 8, !tbaa !13, !alias.scope !151
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load56, <2 x double> splat (double 3.000000e+00), <2 x double> %i.aw)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index
  store <2 x double> %i.ay, ptr %i.az, align 8, !tbaa !13, !alias.scope !152, !noalias !151
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader30, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader30 ]
  br label %.preheader

._crit_edge36.split:                              ; preds = %._crit_edge, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %i.be, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 17 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !13
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double 3.000000e+00, double 0.000000e+00)
  %i.be = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !13
  %i.bh = fsub double %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !13
  %i.bl = fsub double %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !13
  %i.bp = fsub double %i.bl, %i.bo
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load double, ptr %i.br, align 8, !tbaa !13
  %i.bt = fsub double %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !13
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double 3.000000e+00, double %i.bt)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !13
  %i.cb = fsub double %i.bx, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13
  %i.cf = fsub double %i.cb, %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !13
  %i.cj = fsub double %i.cf, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_RawSubsetAbenchmarks.cxx:bb.a
  %i.bp = load ptr, ptr %2, align 8, !tbaa !169
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %.noexc.i22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.bk, align 8, !tbaa !173
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 224
  store ptr @_ZL21BM_DEL_DOT_VEC_2D_RAWRN9benchmark5StateE, ptr %i.br, align 8, !tbaa !198
  %i.bs = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.bk)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.bt = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.bs, i64 noundef 2)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bu = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.bt, i64 noundef 1)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.bv = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.bu, i64 noundef 0)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bw = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.bv, i32 noundef 1)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bx = load ptr, ptr %2, align 8, !tbaa !169   ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bl
  br i1 %i.by, label %__cxx_global_var_init.6.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.bx) #10
  br label %__cxx_global_var_init.6.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i19: ; preds = %__cxx_global_var_init.4.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %common.resume.sink.split

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %.noexc.i22
  %.0.i23 = phi i1 [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.w ], [ true, %.noexc.i22 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !169   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bl
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i24: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cb) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br i1 %.0.i23, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i25: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br i1 %.0.i23, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.6.exit:                     ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  store ptr %i.bw, ptr @_ZL27benchmark_uniq_5_benchmark_, align 8, !tbaa !200
  %i.cd = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.ce, ptr %1, align 8, !tbaa !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ce, ptr noundef nonnull align 1 dereferenceable(13) @.str.9, i64 13, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.cf, align 8, !tbaa !171
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.cg, align 1, !tbaa !170
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %__cxx_global_var_init.6.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.cd, align 8, !tbaa !173
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 224
  store ptr @_ZL13BM_COUPLE_RAWRN9benchmark5StateE, ptr %i.ch, align 8, !tbaa !198
  %i.ci = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.cd)
          to label %bb.ae unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.cj = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.ci, i64 noundef 2)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.ck = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.cj, i64 noundef 1)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cl = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.ck, i64 noundef 0)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.cm = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.cl, i32 noundef 1)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = load ptr, ptr %1, align 8, !tbaa !169   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ce
  br i1 %i.co, label %__cxx_global_var_init.8.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.cn) #10
  br label %__cxx_global_var_init.8.exit

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %__cxx_global_var_init.6.exit
  %.0.i28 = phi i1 [ false, %bb.ah ], [ false, %bb.ag ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ true, %__cxx_global_var_init.6.exit ] ; 2 uses
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cq = load ptr, ptr %1, align 8, !tbaa !169   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ce
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i29: ; preds = %bb.aj
  call void @_ZdlPv(ptr noundef %i.cq) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br i1 %.0.i28, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i30: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br i1 %.0.i28, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.8.exit:                     ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  store ptr %i.cm, ptr @_ZL27benchmark_uniq_6_benchmark_, align 8, !tbaa !200
  %i.cs = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #11 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #9
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ct, ptr noundef nonnull align 1 dereferenceable(10) @.str.11, i64 10, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.cu, align 8, !tbaa !171
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.cv, align 2, !tbaa !170
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %__cxx_global_var_init.8.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.cs, align 8, !tbaa !173
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 224
  store ptr @_ZL10BM_FIR_RAWRN9benchmark5StateE, ptr %i.cw, align 8, !tbaa !198
  %i.cx = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.cs)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.cy = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.cx, i64 noundef 171)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.cz = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.cy, i64 noundef 5001)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.da = invoke noundef ptr @_ZN9benchmark8internal9Benchmark3ArgEl(ptr noundef nonnull align 8 dereferenceable(224) %i.cz, i64 noundef 44217)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.db = invoke noundef ptr @_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE(ptr noundef nonnull align 8 dereferenceable(224) %i.da, i32 noundef 1)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dc = load ptr, ptr %0, align 8, !tbaa !169   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ct
  br i1 %i.dd, label %__cxx_global_var_init.10.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %bb.ap
  call void @_ZdlPv(ptr noundef %i.dc) #10
  br label %__cxx_global_var_init.10.exit

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %__cxx_global_var_init.8.exit
  %.0.i33 = phi i1 [ false, %bb.ao ], [ false, %bb.an ], [ false, %bb.am ], [ false, %bb.al ], [ false, %bb.ak ], [ true, %__cxx_global_var_init.8.exit ] ; 2 uses
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.df = load ptr, ptr %0, align 8, !tbaa !169   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.ct
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i34: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.df) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br i1 %.0.i33, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i35: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  br i1 %.0.i33, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.10.exit:                    ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #9
  store ptr %i.db, ptr @_ZL27benchmark_uniq_7_benchmark_, align 8, !tbaa !200
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !44}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!"_ZTSN9benchmark8internal7SkippedE", !6, i64 0}
!17 = !{!"p1 long", !9, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !18, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !19, i64 0}
!21 = !{!"_ZTSSt6vectorIlSaIlEE", !20, i64 0}
!22 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!23 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !22, i64 0}
!24 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!25 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!26 = !{!"_ZTSSt18_Rb_tree_node_base", !24, i64 0, !25, i64 8, !25, i64 16, !25, i64 24}
!27 = !{!"_ZTSSt15_Rb_tree_header", !26, i64 0, !14, i64 32}
!28 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !23, i64 0, !27, i64 8}
!29 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !28, i64 0}
!30 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !29, i64 0}
!31 = !{!"p1 omnipotent char", !9, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !14, i64 8, !6, i64 16}
!34 = !{!"p1 _ZTSN9benchmark8internal11ThreadTimerE", !9, i64 0}
!35 = !{!"p1 _ZTSN9benchmark8internal13ThreadManagerE", !9, i64 0}
!36 = !{!"p1 _ZTSN9benchmark8internal23PerfCountersMeasurementE", !9, i64 0}
!37 = !{!"p1 _ZTSN9benchmark15ProfilerManagerE", !9, i64 0}
!38 = !{!"_ZTSN9benchmark5StateE", !14, i64 0, !14, i64 8, !14, i64 16, !15, i64 24, !15, i64 25, !16, i64 28, !21, i64 32, !14, i64 56, !30, i64 64, !33, i64 112, !7, i64 144, !7, i64 148, !34, i64 152, !35, i64 160, !36, i64 168, !37, i64 176}
!39 = !{!38, !16, i64 28}
!40 = !{!38, !14, i64 16}
!41 = !{!"branch_weights", i32 0, i32 -2147483648}
!42 = !{!18, !17, i64 0}
!43 = !{!14, !14, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 127, i32 255873}
!48 = !{!"p1 int", !9, i64 0}
!49 = !{!"_ZTS7ADomain", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !48, i64 72, !7, i64 80}
!50 = !{!49, !7, i64 36}
!51 = !{!49, !7, i64 40}
!52 = !{!"branch_weights", i32 1, i32 127}
!53 = !{!49, !7, i64 64}
!54 = !{!49, !7, i64 68}
!55 = !{!49, !48, i64 72}
!56 = !{!"branch_weights", i32 127, i32 129}
!57 = !{!49, !7, i64 12}
!58 = !{!49, !7, i64 24}
!59 = !{!49, !7, i64 16}
!60 = !{!49, !7, i64 28}
!61 = !{!49, !7, i64 20}
!62 = !{!49, !7, i64 32}
!63 = distinct !{!63, !44, !45, !46}
!64 = distinct !{!64, !73}
!65 = distinct !{!65, !44, !45}
!66 = distinct !{!66, i1 false, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !66}
!70 = distinct !{!70, !66}
!71 = distinct !{!71, !44, !45, !46}
!72 = distinct !{!72, !44, !45}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!67}
!75 = !{!68}
!76 = !{!69}
!77 = !{!67, !68, !70}
!78 = !{!70}
!79 = distinct !{!79, !44, !45, !46}
!80 = distinct !{!80, !44, !45}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = distinct !{!85, !81}
!86 = distinct !{!86, !81}
!87 = distinct !{!87, !81}
!88 = distinct !{!88, !44, !45, !46}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44, !45}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !44, !45, !46}
!95 = distinct !{!95, !44, !45}
!96 = distinct !{!96, !44}
!97 = distinct !{!97, !44}
!98 = !{!82}
!99 = !{!87, !86, !85, !84, !83}
!100 = !{!87}
!101 = !{!86}
!102 = !{!85}
!103 = !{!84}
!104 = !{!83}
!105 = !{!92}
!106 = !{!93}
!107 = distinct !{!107, i1 false, !"LVerDomain"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = distinct !{!110, !107}
!111 = distinct !{!111, !107}
!112 = distinct !{!112, !107}
!113 = distinct !{!113, !107}
!114 = distinct !{!114, !107}
!115 = distinct !{!115, !107}
!116 = distinct !{!116, !107}
!117 = distinct !{!117, !107}
!118 = distinct !{!118, !107}
!119 = distinct !{!119, !107}
!120 = distinct !{!120, !107}
!121 = distinct !{!121, !44, !45, !46}
!122 = distinct !{!122, !44, !45}
!123 = !{!108}
!124 = !{!109}
!125 = !{!110}
!126 = !{!111}
!127 = !{!112}
!128 = !{!113}
!129 = !{!114}
!130 = !{!115}
!131 = !{!116}
!132 = !{!117}
!133 = !{!118}
!134 = !{!119}
!135 = !{!120}
!136 = !{!108, !111, !109, !110, !112, !115, !113, !114, !116, !119, !117, !118}
!137 = distinct !{!137, !44, !45, !46}
!138 = distinct !{!138, !44, !46, !45}
!139 = distinct !{!139, !44}
!140 = distinct !{!140, !44}
!141 = distinct !{!141, !44}
!142 = distinct !{!142, !44}
!143 = !{!"p1 _ZTSSt7complexIdE", !9, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"branch_weights", i32 1, i32 1048575}
!146 = distinct !{!146, i1 false, !"LVerDomain"}
!147 = distinct !{!147, !146}
!148 = distinct !{!148, !146}
!149 = distinct !{!149, !44, !45, !46}
!150 = distinct !{!150, !44, !45}
!151 = !{!147}
!152 = !{!148}
!153 = distinct !{!153, !44, !45, !46}
!154 = distinct !{!154, !44, !46, !45}
!155 = distinct !{!155, !44}
!156 = distinct !{!156, !44, !45, !46}
!157 = distinct !{!157, !44}
!158 = distinct !{!158, !44, !46, !45}
!159 = !{!49, !7, i64 0}
!160 = !{!49, !7, i64 4}
!161 = !{!49, !7, i64 8}
!162 = !{!49, !7, i64 44}
!163 = !{!49, !7, i64 48}
!164 = !{!49, !7, i64 52}
!165 = !{!49, !7, i64 56}
!166 = !{!49, !7, i64 60}
!167 = !{!49, !7, i64 80}
!168 = !{!32, !31, i64 0}
!169 = !{!33, !31, i64 0}
!170 = !{!6, !6, i64 0}
!171 = !{!33, !14, i64 8}
!172 = !{!"vtable pointer", !5, i64 0}
!173 = !{!172, !172, i64 0}
!174 = !{!"_ZTSN9benchmark8internal21AggregationReportModeE", !6, i64 0}
!175 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!176 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !175, i64 0, !175, i64 8, !175, i64 16}
!177 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !176, i64 0}
end_hunk_1
