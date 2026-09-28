Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/dispersioncorrection?download=true
inline.NumInlined: 318
inline.NumDeleted: 199
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN20DispersionCorrection24setInteractionParametersEPNS_17InteractionParamsERK19interaction_const_tPKc:bb.a
  store float %i.bh, ptr %i.ax, align 8, !tbaa !275
  %i.bi = load float, ptr %i.bg, align 4, !tbaa !111
  %i.bj = fpext float %i.bi to double
  %i.bk = extractelement <2 x double> %i.bd, i64 1
  %i.bl = call double @llvm.fmuladd.f64(double %i.bj, double -1.200000e+01, double %i.bk)
  %i.bm = fptrunc double %i.bl to float           ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.bm, ptr %i.bn, align 4, !tbaa !276
  %i.bo = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bm, i64 1
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  br i1 %i.ag, label %bb.p, label %._crit_edge111

._crit_edge111:                                   ; preds = %bb.o
  %.phi.trans.insert112 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load <2 x float>, ptr %.phi.trans.insert112, align 8, !tbaa !111
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = fmul double %i.am, %i.ao
  %i.bt = insertelement <2 x double> poison, double %i.an, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bs, i64 1
  %i.bv = fdiv <2 x double> <double -1.000000e+00, double 1.000000e+00>, %i.bu
  %i.bw = fptrunc <2 x double> %i.bv to <2 x float> ; 2 uses
  store <2 x float> %i.bw, ptr %i.br, align 8, !tbaa !111
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge111, %bb.p, %bb.n
  %i.bx = phi <2 x float> [ %i.bq, %._crit_edge111 ], [ %i.bw, %bb.p ], [ %i.bp, %bb.n ]
  %i.by = fpext <2 x float> %i.bx to <2 x double>
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !131
  call fastcc void @_ZL15integrate_tablePKffiiiPdS1_(ptr noundef %i.x, float noundef %i.v, i32 noundef 0, i32 noundef %i.ah, i32 noundef %i.af, ptr noundef %i.a, ptr noundef %i.b)
  %i.bz = load double, ptr %i.a, align 8, !tbaa !131
  %i.ca = load double, ptr %i.b, align 8, !tbaa !131
  call fastcc void @_ZL15integrate_tablePKffiiiPdS1_(ptr noundef %i.x, float noundef %i.v, i32 noundef 4, i32 noundef %i.ah, i32 noundef %i.af, ptr noundef %i.a, ptr noundef %i.b)
  %i.cb = load double, ptr %i.a, align 8, !tbaa !131
  %i.cc = load double, ptr %i.b, align 8, !tbaa !131
  %i.cd = insertelement <2 x double> poison, double %i.am, i64 0 ; 2 uses
  %i.ce = insertelement <2 x double> %i.cd, double %i.ao, i64 1
  %i.cf = fmul <2 x double> %i.ce, <double 3.000000e+00, double 9.000000e+00>
  %i.cg = fmul double %i.ao, 3.000000e+00
  %i.ch = fmul <2 x double> %i.by, splat (double f0x402921FB54442D18)
  %i.ci = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x double> %i.ci, %i.ch
  %i.ck = fdiv <2 x double> %i.cj, splat (double 3.000000e+00)
  %i.cl = fadd <2 x double> %i.ck, zeroinitializer
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = fptrunc <4 x double> %i.cm to <4 x float>
  %i.co = fpext <4 x float> %i.cn to <4 x double>
  %i.cp = shufflevector <4 x double> %i.co, <4 x double> <double poison, double poison, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cq = insertelement <4 x double> poison, double %i.bz, i64 0
  %i.cr = insertelement <4 x double> %i.cq, double %i.cb, i64 1
  %i.cs = insertelement <4 x double> %i.cr, double %i.ca, i64 2
  %i.ct = insertelement <4 x double> %i.cs, double %i.cc, i64 3
  %i.cu = fsub <4 x double> %i.cp, %i.ct
  %i.cv = fptrunc <4 x double> %i.cu to <4 x float>
  %i.cw = insertelement <4 x double> poison, double %i.am, i64 2
  %i.cx = insertelement <4 x double> %i.cw, double %i.cg, i64 3
  %i.cy = shufflevector <2 x double> %i.cf, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x double> %i.cy, <4 x double> %i.cx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.da = fdiv <4 x double> <double f0x402921FB54442D18, double f0x402921FB54442D18, double f0x403921FB54442D18, double f0x404921FB54442D18>, %i.cz ; 2 uses
  %i.db = fpext <4 x float> %i.cv to <4 x double> ; 2 uses
  %i.dc = fsub <4 x double> %i.db, %i.da
  %i.dd = fadd <4 x double> %i.da, %i.db
  %i.de = shufflevector <4 x double> %i.dc, <4 x double> %i.dd, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.w

bb.r:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load float, ptr %i.df, align 8, !tbaa !262
  %i.dg = fpext float %.pre to double             ; 3 uses
  %i.dh = fmul double %i.dg, %i.dg
  %i.di = fmul double %i.dh, %i.dg                ; 5 uses
  %i.dj = fmul double %i.di, %i.di
  %i.dk = fmul double %i.di, %i.dj                ; 2 uses
  %i.dl = fmul double %i.dk, 9.000000e+00
  %i.dm = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.dk, i64 1
  %i.do = fmul <2 x double> %i.dn, splat (double 3.000000e+00)
  %i.dp = fdiv <2 x double> <double f0x402921FB54442D18, double f0x404921FB54442D18>, %i.do
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  %i.dr = insertelement <4 x double> %i.dq, double %i.dl, i64 1
  %i.ds = insertelement <4 x double> %i.dr, double %i.di, i64 2 ; 2 uses
  %i.dt = fsub <4 x double> <double 0.000000e+00, double poison, double poison, double 0.000000e+00>, %i.ds
  %i.du = fdiv <4 x double> <double poison, double f0x402921FB54442D18, double f0x403921FB54442D18, double poison>, %i.ds
  %i.dv = shufflevector <4 x double> %i.dt, <4 x double> %i.du, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.dw = fadd <4 x double> %i.dv, <double -0.000000e+00, double 0.000000e+00, double 0.000000e+00, double -0.000000e+00>
  br label %bb.w

bb.s:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA75_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(75) @.str, i8 noundef zeroext 2)
  %i.dx = load i32, ptr %1, align 8, !tbaa !264
  %i.dy = invoke noundef ptr @_Z17enumValueToString15VanDerWaalsType(i32 noundef %i.dx)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 489, ptr noundef nonnull @.str.8, ptr noundef %i.dy) #18
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.x

bb.w:                                             ; preds = %bb.r, %bb.q
  %i.ea = phi <4 x double> [ %i.dw, %bb.r ], [ %i.de, %bb.q ]
  %i.eb = fptrunc <4 x double> %i.ea to <4 x float>
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ed = fmul <4 x float> %i.eb, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01>
  store <4 x float> %i.ed, ptr %i.ec, align 8, !tbaa !111
  ret void

bb.x:                                             ; preds = %bb.v, %bb.k
  %.pn = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.dz, %bb.v ]
  resume { ptr, i32 } %.pn
}

declare void @_Z29makeDispersionCorrectionTableP8_IO_FILERK19interaction_const_tfPKc(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(137), float noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_Z17enumValueToString15VanDerWaalsType(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL15integrate_tablePKffiiiPdS1_(ptr nofree noundef readonly captures(none) %0, float noundef %1, i32 noundef range(i32 0, 5) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef nonnull writeonly captures(none) %5, ptr nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #11 {
bb.a:
  %i.a = fpext float %1 to double
  %i.b = fdiv double 1.000000e+00, %i.a           ; 6 uses
  %i.c = icmp slt i32 %3, %4
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = fmul double %i.b, %i.b                   ; 3 uses
  %i.e = fmul double %i.b, %i.d                   ; 3 uses
  %i.f = fmul double %i.d, 2.000000e+00
  %i.g = fmul double %i.d, 3.000000e+00
  %i.h = fmul double %i.b, 3.000000e+00
  %i.i = fmul double %i.e, 2.500000e-01           ; 2 uses
  %i.j = insertelement <2 x double> poison, double %i.e, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fdiv <2 x double> %i.k, <double 3.000000e+00, double 5.000000e+00> ; 3 uses
  %i.m = fdiv double %i.e, 6.000000e+00           ; 2 uses
  %i.n = sext i32 %3 to i64
  %i.o = zext nneg i32 %2 to i64
  %wide.trip.count = sext i32 %4 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.p = insertelement <2 x double> poison, double %i.f, i64 0
  %i.q = extractelement <2 x double> %i.l, i64 0
  %i.r = extractelement <2 x double> %i.l, i64 1
  %i.s = insertelement <2 x double> poison, double %i.i, i64 0
  %i.t = insertelement <2 x double> poison, double %i.b, i64 0
  %i.u = insertelement <2 x double> poison, double %i.m, i64 1
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.v = fmul <2 x double> %i.cw, splat (double f0x402921FB54442D18)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.w = phi <2 x double> [ zeroinitializer, %bb.a ], [ %i.v, %._crit_edge.loopexit ]
  %i.x = icmp eq i32 %2, 0
  %i.y = select i1 %i.x, double 6.000000e+00, double 1.200000e+01
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.aa, %i.w           ; 2 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 1
  store double %i.ac, ptr %5, align 8, !tbaa !131
  %i.ad = extractelement <2 x double> %i.ab, i64 0
  store double %i.ad, ptr %6, align 8, !tbaa !131
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.n, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ae = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.cw, %bb.b ]
  %i.af = trunc nsw i64 %indvars.iv to i32
  %i.ag = sitofp i32 %i.af to double
  %i.ah = fmul double %i.b, %i.ag                 ; 4 uses
  %i.ai = fmul double %i.g, %i.ah                 ; 2 uses
  %i.aj = fmul double %i.h, %i.ah
  %.idx = shl i64 %indvars.iv, 5
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 3 uses
  %i.ak = load float, ptr %gep, align 4, !tbaa !111
  %i.al = getelementptr i8, ptr %gep, i64 4
  %i.am = getelementptr i8, ptr %gep, i64 12
  %i.an = load float, ptr %i.am, align 4, !tbaa !111
  %7 = fpext float %i.an to double                ; 2 uses
  %i.ao = fmul double %i.ai, 2.500000e-01
  %i.ap = fadd double %i.r, %i.ao
  %i.aq = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = fdiv <2 x double> %i.ar, <double 3.000000e+00, double 5.000000e+00> ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 0
  %i.au = fadd double %i.i, %i.at
  %i.av = extractelement <2 x double> %i.as, i64 1
  %i.aw = fadd double %i.m, %i.av
  %i.ax = fpext float %i.ak to double
  %i.ay = load <2 x float>, ptr %i.al, align 4, !tbaa !111
  %i.az = fpext <2 x float> %i.ay to <2 x double> ; 2 uses
  %i.ba = insertelement <2 x double> %i.l, double %i.au, i64 0
  %i.bb = insertelement <2 x double> %i.p, double %i.aj, i64 1
  %i.bc = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.bb, %i.bd          ; 4 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0
  %i.bg = fmul double %i.bf, 5.000000e-01
  %i.bh = fadd double %i.q, %i.bg
  %i.bi = fdiv <2 x double> %i.be, splat (double 3.000000e+00)
  %i.bj = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bk = fmul <2 x double> %i.bj, <double 5.000000e-01, double 2.500000e-01>
  %i.bl = fadd <2 x double> %i.ba, %i.bk
  %i.bm = insertelement <2 x double> %i.t, double %i.ah, i64 1 ; 2 uses
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bo = fmul <2 x double> %i.bm, %i.bn
  %i.bp = fmul <2 x double> %i.bn, %i.bo          ; 4 uses
  %i.bq = fdiv <2 x double> %i.bp, <double 3.000000e+00, double 1.000000e+00>
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bs = extractelement <2 x double> %i.bp, i64 0 ; 2 uses
  %i.bt = fmul double %i.bs, 2.500000e-01
  %i.bu = fmul <2 x double> %i.az, <double 1.000000e+00, double 2.000000e+00>
  %i.bv = fadd double %i.bs, %i.bh
  %i.bw = insertelement <2 x double> %i.s, double %i.ap, i64 1
  %i.bx = fadd <2 x double> %i.bw, %i.bi
  %i.by = fmul <2 x double> %i.bp, splat (double 5.000000e-01)
  %i.bz = fadd <2 x double> %i.bx, %i.by
  %i.ca = fmul <2 x double> %i.bz, %i.bu          ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 0
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.bv, double %i.cb)
  %i.cd = fadd <2 x double> %i.bl, %i.br
  %i.ce = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cf = insertelement <2 x double> %i.ce, double %i.cc, i64 1
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.az, <2 x double> %i.cd, <2 x double> %i.cf)
  %i.ch = fmul double %7, 3.000000e+00
  %i.ci = extractelement <2 x double> %i.be, i64 1
  %i.cj = fmul double %i.ci, 2.500000e-01
  %i.ck = insertelement <2 x double> %i.bj, double %i.cj, i64 0
  %i.cl = fdiv <2 x double> %i.ck, <double 1.000000e+00, double 5.000000e+00>
  %i.cm = insertelement <2 x double> %i.u, double %i.aw, i64 0
  %i.cn = fadd <2 x double> %i.cm, %i.cl
  %i.co = extractelement <2 x double> %i.bp, i64 1
  %i.cp = fdiv double %i.co, 3.000000e+00
  %i.cq = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.bt, i64 1
  %i.cs = fadd <2 x double> %i.cn, %i.cr
  %i.ct = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %7, i64 1
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cs, <2 x double> %i.cg)
  %i.cw = fadd <2 x double> %i.ae, %i.cv          ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !277
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #10

; Function Attrs: mustprogress uwtable
define void @_ZN20DispersionCorrectionC2ERK10gmx_mtop_tRK10t_inputrecbRK19interaction_const_tPKc(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 12)) %0, ptr noundef nonnull align 8 dereferenceable(768) %1, ptr noundef nonnull align 8 dereferenceable(888) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(137) %4, ptr noundef %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.b = load i32, ptr %i.a, align 8, !tbaa !278
  store i32 %i.b, ptr %0, align 8, !tbaa !133
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.e = load <8 x i32>, ptr %i.d, align 8, !tbaa !120
  %i.f = shufflevector <8 x i32> %i.e, <8 x i32> poison, <2 x i32> <i32 0, i32 7>
  store <2 x i32> %i.f, ptr %i.c, align 4, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @_ZN20DispersionCorrection14TopologyParamsC1ERK10gmx_mtop_tRK10t_inputrecb(ptr noundef nonnull align 4 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(768) %1, ptr noundef nonnull align 8 dereferenceable(888) %2, i1 noundef zeroext %3)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.i = load i32, ptr %0, align 8, !tbaa !133
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not12 = icmp eq ptr %5, null
  br i1 %.not12, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN20DispersionCorrectionC1ERK10gmx_mtop_tRK10t_inputrecbRK19interaction_const_tPKcENK3$_0clEv", ptr noundef nonnull @.str, i32 noundef 513) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN20DispersionCorrection24setInteractionParametersEPNS_17InteractionParamsERK19interaction_const_tPKc(ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(137) %4, ptr noundef nonnull %5)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.a
  ret void

bb.h:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.e ]
  tail call void @_ZN20DispersionCorrection17InteractionParamsD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.h) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK20DispersionCorrection22correctFullInteractionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !133
  %i.b = add i32 %i.a, -3
  %spec.select = icmp ult i32 %i.b, 2
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define void @_ZNK20DispersionCorrection5printERKN3gmx8MDLoggerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::LogEntryWriter", align 8 ; 12 uses
  %3 = alloca %"class.gmx::LogEntryWriter", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.gmx::LogEntryWriter", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !111
  %i.c = fcmp oeq float %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = fcmp oeq float %i.e, 0.000000e+00
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !282    ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !121
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.l, align 8, !tbaa !285
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @.str.11, i64 noundef 58)
          to label %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit unwind label %bb.c ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextEPKc.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !287
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.c, !inline_history !279

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit
  %i.q = load ptr, ptr %2, align 8, !tbaa !119    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.j
  br i1 %i.r, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.s = load i64, ptr %i.j, align 8, !tbaa !120
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #17
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.g

bb.c:                                             ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %2, align 8, !tbaa !119    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %_ZN3gmx14LogEntryWriterD2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18: ; preds = %bb.c
  %i.x = load i64, ptr %i.j, align 8, !tbaa !120
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #17
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit20

_ZN3gmx14LogEntryWriterD2Ev.exit20:               ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
end_hunk_0
