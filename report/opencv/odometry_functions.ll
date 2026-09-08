Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/odometry_functions?download=true
inline.NumInlined: 1901
inline.NumDeleted: 586
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN2cv18calcICPLsmMatricesERKNS_3MatES2_S2_S2_S2_RS0_S3_NS_21OdometryTransformTypeE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  call void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %14, i32 noundef %.04.i, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(32) %15)
  %i.h = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !54   ; 5 uses
  %i.m = load i32, ptr %1, align 8, !tbaa !80
  %i.n = and i32 %i.m, 4095
  %i.o = icmp eq i32 %i.n, 6
  br i1 %i.o, label %bb.o, label %bb.j

bb.h:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %common.resume

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv18calcICPLsmMatricesERKNS_3MatES2_S2_S2_S2_RS0_S3_NS_21OdometryTransformTypeE, ptr noundef nonnull @.str.1, i32 noundef 886) #23
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.n:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %16, align 8, !tbaa !49    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.w = load i64, ptr %i.u, align 8, !tbaa !19
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.r, %bb.m ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %common.resume

bb.o:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.aa = sext i32 %i.l to i64                    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.ab, ptr %18, align 8, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.not.i.i = icmp ugt i32 %i.l, 264
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !93
  br i1 %.not.i.i, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread:      ; preds = %bb.o
  %i.ad = icmp slt i32 %i.l, 0
  %i.ae = shl nuw nsw i64 %i.aa, 2
  %i.af = select i1 %i.ad, i64 -1, i64 %i.ae
  %i.ag = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #24 ; 2 uses
  store ptr %i.ag, ptr %18, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %scevgep.i299 = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1116) %scevgep.i299, i8 0, i64 1116, i1 false), !tbaa !23
  store ptr %scevgep.i299, ptr %19, align 8, !tbaa !226
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.aa, ptr %i.ah, align 8, !tbaa !227
  br label %bb.p

_ZN2cv10AutoBufferIfLm264EEC2Em.exit:             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %scevgep.i = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1116) %scevgep.i, i8 0, i64 1116, i1 false), !tbaa !23
  store ptr %scevgep.i, ptr %19, align 8, !tbaa !226
  %i.ai = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.not.i.i161 = icmp samesign ugt i32 %i.l, 93
  store i64 %i.aa, ptr %i.ai, align 8, !tbaa !227
  br i1 %.not.i.i161, label %bb.p, label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EEC2Em.exit

bb.p:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %scevgep.i302.a = phi ptr [ %scevgep.i299, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread ], [ %scevgep.i, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ]
  %i.aj = phi ptr [ %i.ag, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit.thread ], [ %i.ab, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ]
  %i.ak = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aa, i64 12) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0       ; 3 uses
  %i.an = select i1 %i.al, i64 -1, i64 %i.am
  %i.ao = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #24
          to label %.noexc unwind label %bb.q     ; 3 uses

.noexc:                                           ; preds = %bb.p
  %i.ap = add nsw i64 %i.am, -12
  %i.aq = urem i64 %i.ap, 12
  %i.ar = sub nsw i64 %i.am, %i.aq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ao, i8 0, i64 %i.ar, i1 false), !tbaa !23
  store ptr %i.ao, ptr %19, align 8, !tbaa !226
  br label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EEC2Em.exit

_ZN2cv10AutoBufferINS_7Point3_IfEELm93EEC2Em.exit: ; preds = %.noexc, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %scevgep.i301 = phi ptr [ %scevgep.i302.a, %.noexc ], [ %scevgep.i, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ] ; 2 uses
  %i.as = phi ptr [ %i.aj, %.noexc ], [ %i.ab, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ] ; 2 uses
  %i.at = phi ptr [ %i.ao, %.noexc ], [ %scevgep.i, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55 ; 2 uses
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !54  ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EEC2Em.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !96
  %i.ba = icmp slt i32 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !71
  %i.bm = load double, ptr %i.bj, align 8, !tbaa !71
  %i.bn = load double, ptr %i.bi, align 8, !tbaa !71
  %i.bo = load double, ptr %i.bh, align 8, !tbaa !71
  %i.bp = load double, ptr %i.bg, align 8, !tbaa !71
  %i.bq = load double, ptr %i.bf, align 8, !tbaa !71
  %i.br = load double, ptr %i.be, align 8, !tbaa !71
  %i.bs = load double, ptr %i.z, align 8, !tbaa !71
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !71
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !71
  %i.bx = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.by = load double, ptr %i.bx, align 8, !tbaa !71
  %i.bz = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !71
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !96
  %i.cd = icmp slt i32 %i.cc, 2
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !55
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !96
  %i.cj = icmp slt i32 %i.ci, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !55
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 128
  %wide.trip.count = zext nneg i32 %i.aw to i64
  %.pre = load i64, ptr %i.bd, align 8
  %.pre284 = load i64, ptr %i.cg, align 8
  %.pre285 = load i64, ptr %i.cm, align 8
  %i.cn = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.bm, i64 1
  %i.cp = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.bo, i64 1
  %i.cr = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.bn, i64 1
  %i.ct = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.bl, i64 1
  br label %bb.r

._crit_edge:                                      ; preds = %bb.r, %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EEC2Em.exit
  %.0130.lcssa = phi double [ 0.000000e+00, %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EEC2Em.exit ], [ %i.fo, %bb.r ]
  %i.cv = sitofp i32 %i.l to double
  %i.cw = fdiv double %.0130.lcssa, %i.cv
  %i.cx = call double @sqrt(double noundef %i.cw) #22
  %i.cy = zext nneg i32 %.04.i to i64             ; 15 uses
  %i.cz = shl nuw nsw i64 %i.cy, 3                ; 3 uses
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #24
          to label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit unwind label %bb.s ; 12 uses

bb.q:                                             ; preds = %bb.p
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit183

bb.r:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  %.0130233 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.fo, %bb.r ]
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv ; 4 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !20
  %i.dk = sext i32 %i.df to i64
  %i.dl = mul i64 %.pre, %i.dk
  %.sink.idx.i = select i1 %i.ba, i64 0, i64 %i.dl
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sink.idx.i
  %i.dm = sext i32 %i.dd to i64
  %i.dn = getelementptr inbounds [16 x i8], ptr %.sink.i, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = sext i32 %i.dj to i64                   ; 2 uses
  %i.dr = mul i64 %.pre284, %i.dq
  %.sink.idx.i163 = select i1 %i.cd, i64 0, i64 %i.dr
  %.sink.i164 = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sink.idx.i163
  %i.ds = sext i32 %i.dh to i64                   ; 2 uses
  %i.dt = getelementptr inbounds [16 x i8], ptr %.sink.i164, i64 %i.ds ; 3 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !23
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !23
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !23
  %i.dz = mul i64 %.pre285, %i.dq
  %.sink.idx.i165 = select i1 %i.cj, i64 0, i64 %i.dz
  %.sink.i166 = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sink.idx.i165
  %i.ea = getelementptr inbounds [16 x i8], ptr %.sink.i166, i64 %i.ds ; 3 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !23
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !23
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !23
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %indvars.iv ; 2 uses
  %i.eh = load float, ptr %i.do, align 4, !tbaa !23
  %i.ei = load float, ptr %i.dn, align 4, !tbaa !23
  %i.ej = load float, ptr %i.dp, align 4, !tbaa !23
  %i.ek = fpext float %i.eh to double             ; 2 uses
  %i.el = fpext float %i.ei to double             ; 2 uses
  %i.em = fpext float %i.ej to double             ; 2 uses
  %i.en = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x double> %i.cs, %i.eo
  %i.eq = insertelement <2 x double> poison, double %i.el, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.es = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.cq, <2 x double> %i.ep)
  %i.et = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.co, <2 x double> %i.es)
  %i.ew = fadd <2 x double> %i.ev, %i.cu
  %i.ex = fptrunc <2 x double> %i.ew to <2 x float> ; 3 uses
  %i.ey = fmul double %i.bw, %i.ek
  %i.ez = call double @llvm.fmuladd.f64(double %i.el, double %i.bu, double %i.ey)
  %i.fa = call double @llvm.fmuladd.f64(double %i.em, double %i.by, double %i.ez)
  %i.fb = fadd double %i.ca, %i.fa
  %i.fc = fptrunc double %i.fb to float           ; 2 uses
  %i.fd = extractelement <2 x float> %i.ex, i64 0
  %i.fe = fsub float %i.eb, %i.fd
  %i.ff = extractelement <2 x float> %i.ex, i64 1
  %i.fg = fsub float %i.ed, %i.ff
  %i.fh = fsub float %i.ef, %i.fc
  store <2 x float> %i.ex, ptr %i.eg, align 4, !tbaa !23
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store float %i.fc, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !23
  %i.fi = fmul float %i.dw, %i.fg
  %i.fj = call float @llvm.fmuladd.f32(float %i.du, float %i.fe, float %i.fi)
  %i.fk = call float @llvm.fmuladd.f32(float %i.dy, float %i.fh, float %i.fj) ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  store float %i.fk, ptr %i.fl, align 4, !tbaa !23
  %i.fm = fmul float %i.fk, %i.fk
  %i.fn = fpext float %i.fm to double
  %i.fo = fadd double %.0130233, %i.fn            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !209

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %._crit_edge
  store double 0.000000e+00, ptr %i.da, align 8, !tbaa !71
  %20 = getelementptr i8, ptr %i.da, i64 8
  %21 = shl nuw nsw i64 %i.cy, 3
  %.idx.i.i.i.i.i.i.i = add nsw i64 %21, -8
  call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !71
  %22 = load i32, ptr %i.k, align 8, !tbaa !54    ; 2 uses
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %.lr.ph238, label %.preheader

.lr.ph238:                                        ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %24 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %25 = load i32, ptr %24, align 4, !tbaa !96
  %26 = icmp slt i32 %25, 2
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = getelementptr inbounds nuw i8, ptr %3, i64 128
  %30 = icmp eq i32 %7, 2
  switch i32 %7, label %bb.u [
    i32 4, label %.lr.ph238.split
    i32 1, label %.lr.ph238.split
    i32 2, label %.lr.ph238.split
  ]

.lr.ph238.split:                                  ; preds = %.lr.ph238, %.lr.ph238, %.lr.ph238
  %31 = getelementptr inbounds nuw i8, ptr %5, i64 128
  %32 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %33 = load ptr, ptr %32, align 8, !tbaa !55     ; 3 uses
  %34 = load i64, ptr %31, align 8, !tbaa !56     ; 3 uses
  %wide.trip.count259 = zext nneg i32 %22 to i64
  %cond = icmp eq i32 %7, 4
  %35 = add i64 %34, 8
  %36 = shl nuw nsw i64 %i.cy, 3                  ; 2 uses
  %scevgep307 = getelementptr i8, ptr %i.da, i64 %36 ; 2 uses
  %.sroa.0.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx332 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.16.i.16.i.16..sroa_idx330 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx333 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.16.i.16.i.16..sroa_idx331 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  %.sroa.0.i.32.i.32.i.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  %.sroa.0.i.40.i.40.i.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 40
  %37 = getelementptr i8, ptr %33, i64 %36
  %38 = add nsw i64 %i.cy, -1
  br label %bb.t

.preheader:                                       ; preds = %bb.aa, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 3 uses
  %i.fs = add nsw i64 %i.cy, -2
  br label %bb.af

bb.s:                                             ; preds = %._crit_edge
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %.lr.ph238.split, %bb.aa
  %indvars.iv256 = phi i64 [ 0, %.lr.ph238.split ], [ %indvars.iv.next257, %bb.aa ] ; 4 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv256 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !20
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !20
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv256
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !23 ; 2 uses
  %i.gb = call noundef float @llvm.fabs.f32(float %i.ga)
  %i.gc = fpext float %i.gb to double
  %i.gd = fadd double %i.cx, %i.gc                ; 2 uses
  %i.ge = fcmp ogt double %i.gd, f0x3CB0000000000000
  %i.gf = fdiv double 1.000000e+00, %i.gd
  %i.gg = select i1 %i.ge, double %i.gf, double 1.000000e+00 ; 2 uses
  %i.gh = load i64, ptr %29, align 8
  %i.gi = sext i32 %i.fy to i64
  %i.gj = mul i64 %i.gh, %i.gi
  %.sink.idx.i167 = select i1 %26, i64 0, i64 %i.gj
  %.sink.i168 = getelementptr inbounds nuw i8, ptr %28, i64 %.sink.idx.i167
  %i.gk = sext i32 %i.fw to i64
  %i.gl = getelementptr inbounds [16 x i8], ptr %.sink.i168, i64 %i.gk ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !23
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.go = getelementptr inbounds nuw [12 x i8], ptr %i.at, i64 %indvars.iv256 ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !229, !noalias !230
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gr = load <2 x float>, ptr %i.gn, align 4, !tbaa !23 ; 2 uses
  %i.gs = load <2 x float>, ptr %i.gq, align 4, !tbaa !23, !noalias !230 ; 2 uses
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gu = insertelement <2 x float> %i.gt, float %i.gp, i64 1
  %i.gv = fpext <2 x float> %i.gs to <2 x double> ; 5 uses
  %i.gw = fpext <2 x float> %i.gu to <2 x double> ; 4 uses
  %i.gx = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = insertelement <2 x float> %i.gx, float %i.gm, i64 1
  %i.gz = fpext <2 x float> %i.gy to <2 x double>
  %i.ha = fpext <2 x float> %i.gr to <2 x double>
  %i.hb = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hd = fmul <2 x double> %i.hc, %i.gz          ; 8 uses
  %i.he = fmul <2 x double> %i.hc, %i.ha          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  br i1 %cond, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i, label %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i: ; preds = %bb.t
  %i.hf = fneg <2 x double> %i.he
  %i.hg = extractelement <2 x double> %i.hd, i64 1 ; 2 uses
  %i.hh = fneg double %i.hg
  %i.hi = extractelement <2 x double> %i.gv, i64 0
  %i.hj = fmul double %i.hi, %i.hh
  %i.hk = extractelement <2 x double> %i.he, i64 0 ; 2 uses
  %i.hl = extractelement <2 x double> %i.gw, i64 1
  %i.hm = call double @llvm.fmuladd.f64(double %i.hl, double %i.hk, double %i.hj)
  %i.hn = fmul <2 x double> %i.hf, %i.gw
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.hd, <2 x double> %i.hn)
  store <2 x double> %i.ho, ptr %.sroa.0.i, align 16
  store double %i.hm, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx331, align 16
  store double %i.hg, ptr %.sroa.0.i.24.i.24.i.24..sroa_idx, align 8
  store double %i.hk, ptr %.sroa.0.i.32.i.32.i.32..sroa_idx, align 16
  %i.hp = extractelement <2 x double> %i.hd, i64 0
  store double %i.hp, ptr %.sroa.0.i.40.i.40.i.40..sroa_idx, align 8
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph238
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc171 unwind label %bb.ab

.noexc171:                                        ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cvL15getTransformDimENS_21OdometryTransformTypeE, ptr noundef nonnull @.str.18, i32 noundef 29) #23
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.noexc171
  unreachable

bb.w:                                             ; preds = %.noexc171
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %i.hr = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !19
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit180

_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i: ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, i8 0, i64 48, i1 false), !tbaa !71
  br i1 %30, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  %i.hw = extractelement <2 x double> %i.he, i64 0
  %i.hx = extractelement <2 x double> %i.gv, i64 0
  %i.hy = extractelement <2 x double> %i.gw, i64 1
  %i.hz = extractelement <2 x double> %i.hd, i64 1
  %i.ia = fneg double %i.hz
  %i.ib = fmul double %i.hx, %i.ia
  %i.ic = call double @llvm.fmuladd.f64(double %i.hy, double %i.hw, double %i.ib)
  %i.id = shufflevector <2 x double> %i.he, <2 x double> %i.hd, <2 x i32> <i32 0, i32 2>
  %i.ie = fneg <2 x double> %i.id
  %i.if = shufflevector <2 x double> %i.gv, <2 x double> %i.gw, <2 x i32> <i32 1, i32 3>
  %i.ig = fmul <2 x double> %i.if, %i.ie
  %i.ih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.hd, <2 x double> %i.ig)
  store <2 x double> %i.ih, ptr %.sroa.0.i, align 16
  store double %i.ic, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx332, i8 0, i64 24, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.i
  %i.ii = shufflevector <2 x double> %i.hd, <2 x double> %i.he, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ii, ptr %.sroa.0.i, align 16
  %i.ij = extractelement <2 x double> %i.hd, i64 0
  store double %i.ij, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx330, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.24.i.24.i.24..sroa_idx333, i8 0, i64 24, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i
  %.04.i20.i = phi i64 [ 24, %bb.y ], [ 24, %bb.x ], [ 48, %_ZN2cvL15getTransformDimENS_21OdometryTransformTypeE.exit.thread.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.da, ptr noundef nonnull align 16 dereferenceable(1) %.sroa.0.i, i64 %.04.i20.i, i1 false), !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.ik = fpext float %i.ga to double
  br label %bb.ac

bb.aa:                                            ; preds = %.loopexit324
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count259
  br i1 %exitcond260.not, label %.preheader, label %bb.t, !llvm.loop !212

bb.ab:                                            ; preds = %bb.u
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit180

bb.ac:                                            ; preds = %bb.z, %.loopexit324
  %indvars.iv246 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next247, %.loopexit324 ] ; 11 uses
  %i.im = mul i64 %34, %indvars.iv246
  %i.in = getelementptr inbounds nuw i8, ptr %33, i64 %i.im ; 4 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv246 ; 6 uses
  %i.ip = sub nsw i64 %i.cy, %indvars.iv246       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ip, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ac
  %i.iq = mul i64 %34, %indvars.iv246
  %scevgep305 = getelementptr i8, ptr %37, i64 %i.iq ; 2 uses
  %i.ir = mul i64 %35, %indvars.iv246
  %scevgep = getelementptr i8, ptr %33, i64 %i.ir ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep307
  %bound1 = icmp ult ptr %i.io, %scevgep305
  %found.conflict = and i1 %bound0, %bound1
  %bound0307 = icmp ult ptr %scevgep, %scevgep307
  %bound1308 = icmp ult ptr %i.da, %scevgep305
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx = or i1 %found.conflict, %found.conflict309
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ip, -4                      ; 3 uses
  %i.is = add i64 %indvars.iv246, %n.vec
  %i.it = load double, ptr %i.io, align 8, !tbaa !71, !alias.scope !231
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.it, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iu = add nuw i64 %indvars.iv246, %index      ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %wide.load = load <2 x double>, ptr %i.iv, align 8, !tbaa !71, !alias.scope !232
  %wide.load310 = load <2 x double>, ptr %i.iw, align 8, !tbaa !71, !alias.scope !232
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.iu ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16 ; 2 uses
  %wide.load311 = load <2 x double>, ptr %i.ix, align 8, !tbaa !71, !alias.scope !233, !noalias !234
  %wide.load312 = load <2 x double>, ptr %i.iy, align 8, !tbaa !71, !alias.scope !233, !noalias !234
  %i.iz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load311)
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load310, <2 x double> %wide.load312)
  store <2 x double> %i.iz, ptr %i.ix, align 8, !tbaa !71, !alias.scope !233, !noalias !234
  store <2 x double> %i.ja, ptr %i.iy, align 8, !tbaa !71, !alias.scope !233, !noalias !234
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ip, %n.vec
  br i1 %cmp.n, label %.loopexit324, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.ac, %middle.block
  %indvars.iv248.ph = phi i64 [ %indvars.iv246, %vector.memcheck ], [ %indvars.iv246, %bb.ac ], [ %i.is, %middle.block ] ; 6 uses
  %i.jc = sub i64 %i.cy, %indvars.iv248.ph
  %xtraiter = and i64 %i.jc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.jd = load double, ptr %i.io, align 8, !tbaa !71
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv248.ph
  %i.jf = load double, ptr %i.je, align 8, !tbaa !71
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv248.ph ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !71
  %i.ji = call double @llvm.fmuladd.f64(double %i.jd, double %i.jf, double %i.jh)
  store double %i.ji, ptr %i.jg, align 8, !tbaa !71
  %indvars.iv.next249.prol = add nuw nsw i64 %indvars.iv248.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv248.unr = phi i64 [ %indvars.iv248.ph, %scalar.ph.preheader ], [ %indvars.iv.next249.prol, %scalar.ph.prol ]
  %i.jj = icmp eq i64 %indvars.iv248.ph, %38
  br i1 %i.jj, label %.loopexit324, label %scalar.ph

.loopexit324:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.jk = load double, ptr %i.io, align 8, !tbaa !71
  %i.jl = fmul double %i.gg, %i.jk
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv246 ; 2 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !71
  %i.jo = call double @llvm.fmuladd.f64(double %i.jl, double %i.ik, double %i.jn)
  store double %i.jo, ptr %i.jm, align 8, !tbaa !71
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next247, %i.cy
  br i1 %exitcond255.not, label %bb.aa, label %bb.ac, !llvm.loop !218

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv248 = phi i64 [ %indvars.iv.next249.1, %scalar.ph ], [ %indvars.iv248.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.jp = load double, ptr %i.io, align 8, !tbaa !71
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv248
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !71
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv248 ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !71
  %i.ju = call double @llvm.fmuladd.f64(double %i.jp, double %i.jr, double %i.jt)
  store double %i.ju, ptr %i.js, align 8, !tbaa !71
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.jv = load double, ptr %i.io, align 8, !tbaa !71
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next249
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !71
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %indvars.iv.next249 ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !71
  %i.ka = call double @llvm.fmuladd.f64(double %i.jv, double %i.jx, double %i.jz)
  store double %i.ka, ptr %i.jy, align 8, !tbaa !71
  %indvars.iv.next249.1 = add nuw nsw i64 %indvars.iv248, 2 ; 2 uses
  %exitcond252.not.1 = icmp eq i64 %indvars.iv.next249.1, %i.cy
  br i1 %exitcond252.not.1, label %.loopexit324, label %scalar.ph, !llvm.loop !219

.loopexit:                                        ; preds = %.lr.ph241.split.prol.loopexit, %.lr.ph241.split, %.lr.ph241.split.us, %middle.block321, %bb.af
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %i.cy
  br i1 %exitcond277.not, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.af, !llvm.loop !220

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.loopexit
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.cz) #25
  %i.kb = load ptr, ptr %19, align 8, !tbaa !226  ; 3 uses
  %.not.i.i172 = icmp eq ptr %i.kb, %scevgep.i301
  %i.kc = icmp eq ptr %i.kb, null
  %or.cond.i = or i1 %.not.i.i172, %i.kc
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.kb) #25
  br label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit

_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.kd = load ptr, ptr %18, align 8, !tbaa !92   ; 3 uses
  %.not.i.i173 = icmp eq ptr %i.kd, %i.ab
  %i.ke = icmp eq ptr %i.kd, null
  %or.cond.i174 = or i1 %.not.i.i173, %i.ke
  br i1 %or.cond.i174, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.kd) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  ret void

bb.af:                                            ; preds = %.preheader, %.loopexit
  %indvars.iv273 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next274, %.loopexit ] ; 8 uses
  %indvars.iv261 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next262, %.loopexit ] ; 8 uses
  %i.kf = xor i64 %indvars.iv273, -1
  %i.kg = add nsw i64 %i.kf, %i.cy                ; 3 uses
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 3 uses
  %i.kh = icmp samesign ult i64 %indvars.iv.next274, %i.cy
  br i1 %i.kh, label %.lr.ph241, label %.loopexit

.lr.ph241:                                        ; preds = %bb.af
  %i.ki = load i32, ptr %i.fp, align 4, !tbaa !96
  %.fr243 = freeze i32 %i.ki
  %i.kj = icmp slt i32 %.fr243, 2
  %i.kk = load ptr, ptr %i.fq, align 8, !tbaa !55 ; 6 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.kk, i64 %indvars.iv273 ; 5 uses
  br i1 %i.kj, label %.lr.ph241.split.us.preheader, label %.lr.ph241.split.preheader

.lr.ph241.split.preheader:                        ; preds = %.lr.ph241
  %i.kl = sub nsw i64 %indvars.iv273, %i.cy
  %i.km = and i64 %i.kl, 1
  %lcmp.mod328.not.not = icmp eq i64 %i.km, 0
  br i1 %lcmp.mod328.not.not, label %.lr.ph241.split.prol, label %.lr.ph241.split.prol.loopexit

.lr.ph241.split.prol:                             ; preds = %.lr.ph241.split.preheader
  %i.kn = load i64, ptr %i.fr, align 8            ; 2 uses
  %i.ko = mul i64 %i.kn, %indvars.iv273
  %.sink.i176.prol = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.ko
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sink.i176.prol, i64 %indvars.iv261
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !71
  %i.kr = mul i64 %i.kn, %indvars.iv261
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.kr
  store double %i.kq, ptr %gep.prol, align 8, !tbaa !71
  %indvars.iv.next264.prol = add nuw nsw i64 %indvars.iv261, 1
  br label %.lr.ph241.split.prol.loopexit

.lr.ph241.split.prol.loopexit:                    ; preds = %.lr.ph241.split.prol, %.lr.ph241.split.preheader
  %indvars.iv263.unr = phi i64 [ %indvars.iv261, %.lr.ph241.split.preheader ], [ %indvars.iv.next264.prol, %.lr.ph241.split.prol ]
  %i.ks = icmp eq i64 %i.fs, %indvars.iv273
  br i1 %i.ks, label %.loopexit, label %.lr.ph241.split

.lr.ph241.split.us.preheader:                     ; preds = %.lr.ph241
  %min.iters.check314 = icmp ult i64 %i.kg, 4
  br i1 %min.iters.check314, label %.lr.ph241.split.us.preheader325, label %vector.ph315

vector.ph315:                                     ; preds = %.lr.ph241.split.us.preheader
  %n.vec316 = and i64 %i.kg, -4                   ; 3 uses
  %i.kt = add i64 %indvars.iv261, %n.vec316
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv261
  br label %vector.body317

vector.body317:                                   ; preds = %vector.body317, %vector.ph315
  %index318 = phi i64 [ 0, %vector.ph315 ], [ %index.next320, %vector.body317 ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %index318
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 24
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !71
  store double %i.kx, ptr %invariant.gep, align 8, !tbaa !71
  %index.next320 = add nuw i64 %index318, 4       ; 2 uses
  %i.ky = icmp eq i64 %index.next320, %n.vec316
  br i1 %i.ky, label %middle.block321, label %vector.body317, !llvm.loop !221

middle.block321:                                  ; preds = %vector.body317
  %cmp.n322 = icmp eq i64 %i.kg, %n.vec316
  br i1 %cmp.n322, label %.loopexit, label %.lr.ph241.split.us.preheader325

.lr.ph241.split.us.preheader325:                  ; preds = %.lr.ph241.split.us.preheader, %middle.block321
  %indvars.iv268.ph = phi i64 [ %indvars.iv261, %.lr.ph241.split.us.preheader ], [ %i.kt, %middle.block321 ]
  br label %.lr.ph241.split.us

.lr.ph241.split.us:                               ; preds = %.lr.ph241.split.us.preheader325, %.lr.ph241.split.us
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %.lr.ph241.split.us ], [ %indvars.iv268.ph, %.lr.ph241.split.us.preheader325 ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv268
  %i.la = load double, ptr %i.kz, align 8, !tbaa !71
  store double %i.la, ptr %invariant.gep, align 8, !tbaa !71
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %i.cy
  br i1 %exitcond272.not, label %.loopexit, label %.lr.ph241.split.us, !llvm.loop !222

.lr.ph241.split:                                  ; preds = %.lr.ph241.split.prol.loopexit, %.lr.ph241.split
  %indvars.iv263 = phi i64 [ %indvars.iv.next264.1, %.lr.ph241.split ], [ %indvars.iv263.unr, %.lr.ph241.split.prol.loopexit ] ; 4 uses
  %i.lb = load i64, ptr %i.fr, align 8            ; 2 uses
  %i.lc = mul i64 %i.lb, %indvars.iv273
  %.sink.i176 = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.lc
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.sink.i176, i64 %indvars.iv263
  %i.le = load double, ptr %i.ld, align 8, !tbaa !71
  %i.lf = mul i64 %i.lb, %indvars.iv263
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.lf
  store double %i.le, ptr %gep, align 8, !tbaa !71
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 2 uses
  %i.lg = load i64, ptr %i.fr, align 8            ; 2 uses
  %i.lh = mul i64 %i.lg, %indvars.iv273
  %.sink.i176.1 = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.lh
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.sink.i176.1, i64 %indvars.iv.next264
  %i.lj = load double, ptr %i.li, align 8, !tbaa !71
  %i.lk = mul i64 %i.lg, %indvars.iv.next264
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.lk
  store double %i.lj, ptr %gep.1, align 8, !tbaa !71
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %exitcond267.not.1 = icmp eq i64 %indvars.iv.next264.1, %i.cy
  br i1 %exitcond267.not.1, label %.loopexit, label %.lr.ph241.split, !llvm.loop !223

_ZNSt6vectorIdSaIdEED2Ev.exit180:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.ab
  %.pn147.pn.pn.pn = phi { ptr, i32 } [ %i.il, %bb.ab ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.cz) #25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.s, %_ZNSt6vectorIdSaIdEED2Ev.exit180
  %.pn153.pn.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.s ], [ %.pn147.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit180 ] ; 2 uses
  %i.ll = load ptr, ptr %19, align 8, !tbaa !226  ; 3 uses
  %.not.i.i181 = icmp eq ptr %i.ll, %scevgep.i301
  %i.lm = icmp eq ptr %i.ll, null
  %or.cond.i182 = or i1 %.not.i.i181, %i.lm
  br i1 %or.cond.i182, label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit183, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.ll) #25
  br label %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit183

_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit183: ; preds = %bb.ah, %bb.ag, %bb.q
  %.pn153.pn.pn.pn.pn = phi { ptr, i32 } [ %i.db, %bb.q ], [ %.pn153.pn.pn.pn, %bb.ag ], [ %.pn153.pn.pn.pn, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.ln = load ptr, ptr %18, align 8, !tbaa !92   ; 3 uses
  %.not.i.i184 = icmp eq ptr %i.ln, %i.ab
  %i.lo = icmp eq ptr %i.ln, null
  %or.cond.i185 = or i1 %.not.i.i184, %i.lo
  br i1 %or.cond.i185, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit186, label %bb.ai

bb.ai:                                            ; preds = %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit183
  call void @_ZdaPv(ptr noundef nonnull %i.ln) #25
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit186

_ZN2cv10AutoBufferIfLm264EED2Ev.exit186:          ; preds = %_ZN2cv10AutoBufferINS_7Point3_IfEELm93EED2Ev.exit183, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %common.resume
end_hunk_0
