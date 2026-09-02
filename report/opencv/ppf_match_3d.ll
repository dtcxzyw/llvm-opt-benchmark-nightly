Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ppf_match_3d?download=true
inline.NumInlined: 998
inline.NumDeleted: 359
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cv12ppf_match_3d13PPF3DDetector10trainModelERKNS_3MatE:bb.a

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %10, align 8, !tbaa !50    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !51
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.av

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store i64 0, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store i64 0, ptr %13, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store i64 0, ptr %14, align 8
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(208) %1)
  invoke void @_ZN2cv12ppf_match_3d14computeBboxStdENS_3MatERNS_3VecIfLi2EEES4_S4_(ptr noundef nonnull align 8 %15, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #26
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !53
  %i.m = load float, ptr %12, align 8, !tbaa !53
  %i.n = fsub float %i.l, %i.m                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !53
  %i.q = load float, ptr %13, align 8, !tbaa !53
  %i.r = fsub float %i.p, %i.q                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !53
  %i.u = load float, ptr %14, align 8, !tbaa !53
  %i.v = fsub float %i.t, %i.u                    ; 2 uses
  %i.w = fmul float %i.r, %i.r
  %i.x = call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.w)
  %i.y = call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.x)
  %sqrt = call float @llvm.sqrt.f32(float %i.y)
  %i.z = fpext float %sqrt to double
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !41
  %i.ac = fmul double %i.ab, %i.z
  %i.ad = fptrunc double %i.ac to float           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.ae = load double, ptr %i.aa, align 8, !tbaa !41
  %i.af = fptrunc double %i.ae to float
  invoke void @_ZN2cv12ppf_match_3d22samplePCByQuantizationENS_3MatERNS_3VecIfLi2EEES4_S4_fi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %16, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, float noundef %i.af, i32 noundef 0)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #26
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !54 ; 2 uses
  %i.ai = mul nsw i32 %i.ah, %i.ah
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = invoke noundef ptr @_ZN2cv12ppf_match_3d15hashtableCreateEmPFmjE(i64 noundef %i.aj, ptr noundef null)
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.ag, align 8, !tbaa !54 ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef %i.am, i32 noundef 5, i32 noundef 5)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ao = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.an, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.l unwind label %bb.q       ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.ap = load i32, ptr %i.ag, align 8, !tbaa !54 ; 5 uses
  %i.aq = mul nsw i32 %i.ap, %i.ap
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = call noalias ptr @calloc(i64 noundef %i.ar, i64 noundef 12) #30
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !44
  %i.au = icmp sgt i32 %i.ap, 0
  br i1 %i.au, label %.lr.ph155, label %.._crit_edge156.split_crit_edge

.._crit_edge156.split_crit_edge:                  ; preds = %bb.l
  %.pre = fpext float %i.ad to double
  br label %._crit_edge156.split

.lr.ph155:                                        ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = fpext float %i.ad to double             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bx = zext nneg i32 %i.ap to i64              ; 3 uses
  br label %.lr.ph

._crit_edge156.split:                             ; preds = %._crit_edge, %.._crit_edge156.split_crit_edge
  %.pre-phi = phi double [ %.pre, %.._crit_edge156.split_crit_edge ], [ %i.bb, %._crit_edge ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bz, ptr %i.ca, align 8, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.pre-phi, ptr %i.cb, align 8, !tbaa !55
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.ak, ptr %i.cc, align 8, !tbaa !45
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i32 %i.ap, ptr %i.cd, align 8, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.ce, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.ar unwind label %bb.as     ; 0 uses

bb.m:                                             ; preds = %bb.g
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #26
  br label %bb.au

bb.n:                                             ; preds = %bb.h
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.o:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.p:                                             ; preds = %bb.j
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn82 = phi { ptr, i32 } [ %i.ck, %bb.q ], [ %i.cj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.at

.lr.ph:                                           ; preds = %.lr.ph155, %._crit_edge
  %indvars.iv158 = phi i64 [ 0, %.lr.ph155 ], [ %indvars.iv.next159, %._crit_edge ] ; 5 uses
  %i.cl = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.cm = load i64, ptr %i.aw, align 8, !tbaa !58
  %i.cn = mul i64 %i.cm, %indvars.iv158
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cn ; 4 uses
  %i.cp = load <2 x float>, ptr %i.co, align 4, !tbaa !53
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.ct = load <2 x float>, ptr %i.cs, align 4, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !53
  %i.cw = fpext <2 x float> %i.cp to <2 x double> ; 2 uses
  %i.cx = fpext float %i.cr to double             ; 2 uses
  %i.cy = fpext <2 x float> %i.ct to <2 x double> ; 5 uses
  %i.cz = fpext float %i.cv to double             ; 3 uses
  %i.da = mul nuw nsw i64 %indvars.iv158, %i.bx
  %i.db = trunc nuw nsw i64 %indvars.iv158 to i32
  %i.dc = extractelement <2 x double> %i.cy, i64 0
  %i.dd = extractelement <2 x double> %i.cy, i64 1
  %27 = shufflevector <2 x double> %i.cw, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %28 = insertelement <3 x double> %27, double %i.cx, i64 2
  %i.de = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.df = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.s

._crit_edge:                                      ; preds = %bb.aq
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %i.bx
  br i1 %exitcond162.not, label %._crit_edge156.split, label %.lr.ph, !llvm.loop !121

bb.s:                                             ; preds = %.lr.ph, %bb.aq
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aq ] ; 4 uses
  %.not = icmp eq i64 %indvars.iv158, %indvars.iv
  br i1 %.not, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.dh = load i64, ptr %i.aw, align 8, !tbaa !58
  %i.di = mul i64 %i.dh, %indvars.iv
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !53
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.do = load float, ptr %i.dn, align 4, !tbaa !53
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !53
  %i.dr = load float, ptr %i.dj, align 4, !tbaa !53
  %i.ds = fpext float %i.dr to double             ; 3 uses
  %i.dt = load <2 x float>, ptr %i.dk, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.du = fpext <2 x float> %i.dt to <2 x double> ; 4 uses
  %29 = insertelement <3 x double> poison, double %i.ds, i64 0
  %30 = shufflevector <2 x double> %i.du, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %31 = shufflevector <3 x double> %29, <3 x double> %30, <3 x i32> <i32 0, i32 3, i32 4>
  %32 = fsub <3 x double> %31, %28                ; 4 uses
  %i.dv = extractelement <3 x double> %32, i64 0  ; 2 uses
  %i.dw = call double @llvm.fmuladd.f64(double %i.dv, double %i.dv, double 0.000000e+00)
  %i.dx = extractelement <3 x double> %32, i64 1  ; 2 uses
  %i.dy = call double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double %i.dw)
  %33 = extractelement <3 x double> %32, i64 2    ; 2 uses
  %i.dz = call double @llvm.fmuladd.f64(double %33, double %33, double %i.dy)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.dz) ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  store double %sqrt.i, ptr %i.az, align 8, !tbaa !36
  %i.ea = fcmp ugt double %sqrt.i, f0x3E80000000000000
  br i1 %i.ea, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eb = fpext float %i.dq to double             ; 2 uses
  %i.ec = fpext float %i.do to double             ; 2 uses
  %i.ed = fpext float %i.dm to double             ; 2 uses
  %i.ee = fdiv double 1.000000e+00, %sqrt.i
  %34 = insertelement <3 x double> poison, double %i.ee, i64 0
  %35 = shufflevector <3 x double> %34, <3 x double> poison, <3 x i32> zeroinitializer
  %36 = fmul <3 x double> %32, %35                ; 3 uses
  %i.ef = insertelement <2 x double> %i.cy, double %i.ed, i64 1
  %i.eg = shufflevector <3 x double> %36, <3 x double> poison, <2 x i32> zeroinitializer
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eg, <2 x double> zeroinitializer)
  %i.ei = insertelement <2 x double> %i.df, double %i.ec, i64 1
  %i.ej = shufflevector <3 x double> %36, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ej, <2 x double> %i.eh)
  %i.el = insertelement <2 x double> %i.de, double %i.eb, i64 1
  %37 = shufflevector <3 x double> %36, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.em = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %37, <2 x double> %i.ek) ; 2 uses
  %i.en = extractelement <2 x double> %i.em, i64 0
  %i.eo = call noundef double @acos(double noundef %i.en) #26 ; 2 uses
  store double %i.eo, ptr %19, align 8, !tbaa !36
  %i.ep = extractelement <2 x double> %i.em, i64 1
  %i.eq = call noundef double @acos(double noundef %i.ep) #26 ; 2 uses
  store double %i.eq, ptr %i.ax, align 8, !tbaa !36
  %i.er = call double @llvm.fmuladd.f64(double %i.dc, double %i.ed, double 0.000000e+00)
  %i.es = call double @llvm.fmuladd.f64(double %i.dd, double %i.ec, double %i.er)
  %i.et = call noundef double @llvm.fmuladd.f64(double %i.cz, double %i.eb, double %i.es)
  %i.eu = call noundef double @acos(double noundef %i.et) #26 ; 2 uses
  store double %i.eu, ptr %i.ay, align 8, !tbaa !36
  %i.ev = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.eq, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ex = phi double [ %i.eu, %bb.u ], [ 0.000000e+00, %bb.t ]
  %i.ey = phi <2 x double> [ %i.ew, %bb.u ], [ zeroinitializer, %bb.t ]
  %i.ez = load double, ptr %i.ba, align 8, !tbaa !42 ; 2 uses
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = fdiv <2 x double> %i.ey, %i.fb          ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0
  %i.fe = fptosi double %i.fd to i32
  %i.ff = extractelement <2 x double> %i.fc, i64 1
  %i.fg = fptosi double %i.ff to i32
  %i.fh = fdiv double %i.ex, %i.ez
  %i.fi = fptosi double %i.fh to i32
  %i.fj = fdiv double %sqrt.i, %i.bb
  %i.fk = fptosi double %i.fj to i32
  %i.fl = mul i32 %i.fe, -1789642873              ; 2 uses
  %i.fm = call i32 @llvm.fshl.i32(i32 %i.fl, i32 %i.fl, i32 11)
  %i.fn = mul i32 %i.fm, 718793509
  %i.fo = xor i32 %i.fn, -1914584186
  %i.fp = add i32 %i.fo, -1162247668              ; 2 uses
  %i.fq = mul i32 %i.fg, 718793509                ; 2 uses
  %i.fr = call i32 @llvm.fshl.i32(i32 %i.fq, i32 %i.fq, i32 11)
  %i.fs = mul i32 %i.fr, -1789642873
  %i.ft = xor i32 %i.fs, 68777331
  %i.fu = add i32 %i.fp, %i.ft
  %i.fv = mul i32 %i.fp, 3
  %i.fw = add i32 %i.fv, 1390208809
  %i.fx = mul i32 %i.fu, 3
  %i.fy = add i32 %i.fx, 944331445                ; 3 uses
  %i.fz = mul i32 %i.fi, 1713515327               ; 2 uses
  %i.ga = call i32 @llvm.fshl.i32(i32 %i.fz, i32 %i.fz, i32 11)
  %i.gb = mul i32 %i.ga, 1107688271
  %i.gc = xor i32 %i.fw, %i.gb
  %i.gd = add i32 %i.gc, %i.fy                    ; 2 uses
  %i.ge = call i32 @llvm.fshl.i32(i32 %i.fy, i32 %i.fy, i32 17)
  %i.gf = mul i32 %i.fk, 1107688271               ; 2 uses
  %i.gg = call i32 @llvm.fshl.i32(i32 %i.gf, i32 %i.gf, i32 11)
  %i.gh = mul i32 %i.gg, 1713515327
  %i.gi = xor i32 %i.ge, %i.gh
  %i.gj = add i32 %i.gi, %i.gd
  %i.gk = mul i32 %i.gd, 3
  %i.gl = add i32 %i.gk, 1390208809
  %i.gm = mul i32 %i.gj, 3
  %i.gn = add i32 %i.gm, 944331445
  %i.go = xor i32 %i.gn, 16                       ; 2 uses
  %i.gp = add i32 %i.gl, %i.go                    ; 3 uses
  %i.gq = add i32 %i.gp, %i.go                    ; 2 uses
  %i.gr = lshr i32 %i.gp, 16
  %i.gs = xor i32 %i.gr, %i.gp
  %i.gt = mul i32 %i.gs, -2048144789              ; 2 uses
  %i.gu = lshr i32 %i.gt, 13
  %i.gv = xor i32 %i.gu, %i.gt
  %i.gw = mul i32 %i.gv, -1028477387              ; 2 uses
  %i.gx = lshr i32 %i.gw, 16
  %i.gy = xor i32 %i.gx, %i.gw
  %i.gz = lshr i32 %i.gq, 16
  %i.ha = xor i32 %i.gz, %i.gq
  %i.hb = mul i32 %i.ha, -2048144789              ; 2 uses
  %i.hc = lshr i32 %i.hb, 13
  %i.hd = xor i32 %i.hc, %i.hb
  %i.he = mul i32 %i.hd, -1028477387              ; 2 uses
  %i.hf = lshr i32 %i.he, 16
  %i.hg = xor i32 %i.hf, %i.he
  %i.hh = add i32 %i.hg, %i.gy                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store <2 x double> %i.cw, ptr %20, align 16, !tbaa !36, !alias.scope !135
  store double %i.cx, ptr %i.bc, align 16, !tbaa !36, !alias.scope !135
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store <2 x double> %i.cy, ptr %21, align 16, !tbaa !36, !alias.scope !136
  store double %i.cz, ptr %i.bd, align 16, !tbaa !36, !alias.scope !136
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 72, i1 false), !tbaa !36
  invoke fastcc void @_ZN2cv12ppf_match_3dL18computeTransformRTERKNS_3VecIdLi3EEES4_RNS_4MatxIdLi3ELi3EEERS2_(ptr noundef nonnull readonly align 8 dereferenceable(24) %20, ptr noundef nonnull readonly align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.v
  %i.hi = load double, ptr %i.bf, align 8, !tbaa !36, !noalias !137
  %i.hj = load double, ptr %i.be, align 8, !tbaa !36, !noalias !137
  %i.hk = call double @llvm.fmuladd.f64(double %i.hj, double %i.ds, double 0.000000e+00)
  %i.hl = extractelement <2 x double> %i.du, i64 0 ; 2 uses
  %i.hm = call double @llvm.fmuladd.f64(double %i.hi, double %i.hl, double %i.hk)
  %i.hn = load <2 x double>, ptr %i.bg, align 8, !tbaa !36, !noalias !137
  %38 = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %39 = insertelement <2 x double> %38, double %i.ds, i64 1
  %i.ho = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hm, i64 0
  %i.hp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %39, <2 x double> %i.ho) ; 2 uses
  %i.hq = load double, ptr %i.bh, align 8, !tbaa !36, !noalias !137
  %i.hr = extractelement <2 x double> %i.hp, i64 1
  %i.hs = call double @llvm.fmuladd.f64(double %i.hq, double %i.hl, double %i.hr)
  %i.ht = load double, ptr %i.bi, align 8, !tbaa !36, !noalias !137
  %40 = extractelement <2 x double> %i.du, i64 1
  %i.hu = call double @llvm.fmuladd.f64(double %i.ht, double %40, double %i.hs)
  %i.hv = load double, ptr %i.bj, align 8, !tbaa !36, !noalias !138
  %i.hw = extractelement <2 x double> %i.hp, i64 0
  %i.hx = fadd double %i.hw, %i.hv
  %i.hy = load double, ptr %i.bk, align 8, !tbaa !36, !noalias !138
  %i.hz = fadd double %i.hu, %i.hy                ; 2 uses
  %i.ia = fneg double %i.hz
  %i.ib = call double @atan2(double noundef %i.ia, double noundef %i.hx) #26 ; 4 uses
  %i.ic = fcmp uno double %i.ib, 0.000000e+00
  br i1 %i.ic, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.noexc
  %i.id = call double @sin(double noundef %i.ib) #26
  %i.ie = fmul double %i.hz, %i.id
  %i.if = fcmp olt double %i.ie, 0.000000e+00
  %.neg.i = fneg double %i.ib
  %i.ig = select i1 %i.if, double %i.ib, double %.neg.i
  %i.ih = fptrunc double %i.ig to float
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.noexc
  %.09.i = phi float [ %i.ih, %bb.w ], [ 0.000000e+00, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.ii = add nuw nsw i64 %indvars.iv, %i.da      ; 4 uses
  %i.ij = load ptr, ptr %i.at, align 8, !tbaa !44
  %i.ik = getelementptr inbounds nuw [12 x i8], ptr %i.ij, i64 %i.ii ; 4 uses
  store i32 %i.hh, ptr %i.ik, align 4, !tbaa !139
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  store i32 %i.db, ptr %i.il, align 4, !tbaa !61
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.in = trunc nuw i64 %i.ii to i32              ; 2 uses
  store i32 %i.in, ptr %i.im, align 4, !tbaa !62
  %i.io = invoke noundef i32 @_ZN2cv12ppf_match_3d21hashtableInsertHashedEPNS0_8HSHTBL_iEjPv(ptr noundef %i.ak, i32 noundef %i.hh, ptr noundef nonnull %i.ik)
          to label %bb.y unwind label %bb.ag      ; 0 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store <4 x i32> <i32 1124024326, i32 1, i32 1, i32 4>, ptr %23, align 16, !tbaa !63
  store i32 153, ptr %i.bl, align 16, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.bn, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc111 unwind label %bb.ah

.noexc111:                                        ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bo, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 4, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0)
          to label %.noexc112 unwind label %bb.ah

.noexc112:                                        ; preds = %.noexc111
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i64 0, ptr %i.bq, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !67
  store ptr %23, ptr %i.bp, align 8, !tbaa !68
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %.noexc112
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.body

bb.aa:                                            ; preds = %.noexc112
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %22, ptr noundef nonnull align 8 dereferenceable(208) %23, i32 noundef 1, i32 noundef 1)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !140
  store i32 %i.in, ptr %4, align 4, !tbaa !142, !noalias !140
  %i.iq = trunc i64 %i.ii to i32
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.br, align 4, !tbaa !143, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !140
  store i64 9223372034707292160, ptr %5, align 8, !noalias !140
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %i.an, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
          to label %bb.ac unwind label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !144
  store i64 9223372034707292160, ptr %2, align 8, !noalias !144
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !144
  store i32 0, ptr %3, align 4, !tbaa !142, !noalias !144
  store i32 4, ptr %i.bs, align 4, !tbaa !143, !noalias !144
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !144
  store i64 0, ptr %i.bu, align 8
  store i32 -1040121856, ptr %24, align 8, !tbaa !67
  store ptr %25, ptr %i.bt, align 8, !tbaa !68
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.ae unwind label %bb.al

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.is = load ptr, ptr %i.bv, align 8, !tbaa !57
  %i.it = load i64, ptr %i.bw, align 8, !tbaa !58
  %i.iu = mul i64 %i.it, %i.ii
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store float %.09.i, ptr %i.iw, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.aq

bb.af:                                            ; preds = %bb.v
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.ap

bb.ag:                                            ; preds = %bb.x
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ah:                                            ; preds = %.noexc111, %bb.y
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %bb.aa
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ab
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %bb.ac
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ad
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn91.pn = phi { ptr, i32 } [ %i.jd, %bb.al ], [ %i.jc, %bb.ak ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #26
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91.pn, %bb.am ], [ %i.jb, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #26
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.pn91.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn, %bb.an ], [ %i.ja, %bb.ai ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #26
  br label %.body

.body:                                            ; preds = %bb.ah, %bb.z, %bb.ao
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn, %bb.ao ], [ %i.iz, %bb.ah ], [ %i.ip, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ag, %.body, %bb.af
  %.pn91.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iy, %bb.ag ], [ %.pn91.pn.pn.pn.pn, %.body ], [ %i.ix, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.at

bb.aq:                                            ; preds = %bb.s, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bx
  br i1 %exitcond.not, label %._crit_edge, label %bb.s, !llvm.loop !134

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev:bb.a
  store i32 0, ptr %i.j, align 4, !tbaa !86
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !178
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !178
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !79
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #28
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d6Pose3DEEES4_EvT_S6_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !85
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !86
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !179
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26, !inline_history !179
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #26
  br label %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !5

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !92
  br label %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEESaIS4_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #28
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv3PtrINS0_12ppf_match_3d13PoseCluster3DEEES4_EvT_S6_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(521) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef %3, double noundef %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Matx.23", align 8       ; 5 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %11 = alloca %"class.cv::Matx.24", align 8      ; 5 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %16 = alloca %"class.cv::Matx.20", align 8      ; 8 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::Matx.23", align 8      ; 5 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %20 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %21 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %23 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %24 = alloca %"class.cv::Matx.24", align 8      ; 5 uses
  %25 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %26 = alloca %"class.cv::Matx.23", align 8      ; 5 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %30 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %32 = alloca %"class.cv::Matx.24", align 8      ; 5 uses
  %33 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %35 = alloca %"class.std::allocator", align 1   ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %37 = alloca %"class.std::allocator", align 1   ; 4 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.std::allocator", align 1   ; 3 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %41 = alloca %"class.std::allocator", align 1   ; 3 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %43 = alloca %"class.std::allocator", align 1   ; 3 uses
  %44 = alloca %"class.std::vector.10", align 8   ; 16 uses
  %45 = alloca %"class.cv::Vec.2", align 8        ; 6 uses
  %46 = alloca %"class.cv::Vec.2", align 8        ; 6 uses
  %47 = alloca %"class.cv::Vec.2", align 8        ; 6 uses
  %48 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %49 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 4 uses
  %51 = alloca %"class.cv::Vec", align 8          ; 8 uses
  %52 = alloca %"class.cv::Matx.20", align 16     ; 13 uses
  %53 = alloca %"class.cv::Matx.20", align 8      ; 14 uses
  %54 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %55 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %56 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %57 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %58 = alloca %"class.cv::Matx.20", align 8      ; 6 uses
  %59 = alloca %"class.cv::Matx.6", align 8       ; 9 uses
  %60 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %61 = alloca %"class.cv::Vec", align 16         ; 6 uses
  %62 = alloca %"class.cv::Matx.6", align 16      ; 13 uses
  %63 = alloca %"class.cv::Matx.6", align 8       ; 6 uses
  %64 = alloca %"class.cv::Matx.20", align 8      ; 10 uses
  %65 = alloca %"class.cv::Vec", align 8          ; 5 uses
  %66 = alloca %"class.cv::Matx.6", align 16      ; 12 uses
  %67 = alloca %"struct.cv::Ptr", align 16        ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load i8, ptr %i.a, align 8, !tbaa !37, !range !108, !noundef !109
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 152) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull @__FUNCTION__._ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd, ptr noundef nonnull align 1 dereferenceable(1) %37)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %39)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv9ExceptionC1ENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_i(ptr noundef nonnull align 8 dereferenceable(148) %i.d, i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %38, i32 noundef 428)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN2cv9ExceptionE, ptr nonnull @_ZN2cv9ExceptionD1Ev) #29
          to label %bb.co unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.g:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0119 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %38, align 8, !tbaa !50    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.k = load i64, ptr %i.i, align 8, !tbaa !51
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.1120 = phi i1 [ true, %bb.g ], [ %.0119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0119, %bb.h ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.f, %bb.g ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.h ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #26
  %i.m = load ptr, ptr %36, align 8, !tbaa !50    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !51
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.r = load ptr, ptr %34, align 8, !tbaa !50    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.thread: ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  %i.v = load ptr, ptr %34, align 8, !tbaa !50    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.thread
  %i.y = load i64, ptr %i.w, align 8, !tbaa !51
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #28
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !69
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !51
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  br i1 %.1120, label %bb.i, label %bb.cn

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  br i1 %.1120, label %bb.i, label %bb.cn

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188.thread
  %.pn.pn.pn341.ph = phi { ptr, i32 } [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread348 ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %.pn.pn.pn341 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %.pn.pn.pn341.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.d) #26
  br label %bb.cn

bb.j:                                             ; preds = %bb.a
  %i.af = load i32, ptr %1, align 8, !tbaa !46
  %i.ag = and i32 %i.af, 4095
  %i.ah = icmp eq i32 %i.ag, 5
  br i1 %i.ah, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %41)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @__FUNCTION__._ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd, ptr noundef nonnull @.str.1, i32 noundef 431) #29
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

bb.o:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %40, align 8, !tbaa !50   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.o
  %i.an = load i64, ptr %i.al, align 8, !tbaa !51
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.n
  %.pn143 = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ], [ %i.aj, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #26
  br label %bb.cn

bb.p:                                             ; preds = %bb.j
  %i.ap = fcmp ole double %3, 1.000000e+00
  %i.aq = fcmp ogt double %3, 0.000000e+00
  %or.cond = and i1 %i.ap, %i.aq
  br i1 %or.cond, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @__FUNCTION__._ZN2cv12ppf_match_3d13PPF3DDetector5matchERKNS_3MatERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS8_EEdd, ptr noundef nonnull @.str.1, i32 noundef 432) #29
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

bb.u:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %42, align 8, !tbaa !50   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %bb.u
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !51
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194, %bb.t
  %.pn145 = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194 ], [ %i.as, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #26
  br label %bb.cn

bb.v:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !43
  %i.bb = insertelement <2 x double> poison, double %3, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = fdiv <2 x double> <double 1.000000e+00, double f0x401921FB54442D18>, %i.bc ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  %i.bf = fptosi double %i.be to i32              ; 4 uses
  store i32 %i.bf, ptr %i.ay, align 4, !tbaa !35
  %i.bg = extractelement <2 x double> %i.bd, i64 1
  %i.bh = tail call double @llvm.floor.f64(double %i.bg)
  %i.bi = fptosi double %i.bh to i32              ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !55
  %i.bl = fptrunc double %i.bk to float
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  store i64 0, ptr %45, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #26
  store i64 0, ptr %46, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  store i64 0, ptr %47, align 8
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %48, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv12ppf_match_3d14computeBboxStdENS_3MatERNS_3VecIfLi2EEES4_S4_(ptr noundef nonnull align 8 %48, ptr noundef nonnull align 4 dereferenceable(8) %45, ptr noundef nonnull align 4 dereferenceable(8) %46, ptr noundef nonnull align 4 dereferenceable(8) %47)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.bo = fptrunc double %4 to float
  invoke void @_ZN2cv12ppf_match_3d22samplePCByQuantizationENS_3MatERNS_3VecIfLi2EEES4_S4_fi(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %49, ptr noundef nonnull align 8 %50, ptr noundef nonnull align 4 dereferenceable(8) %45, ptr noundef nonnull align 4 dereferenceable(8) %46, ptr noundef nonnull align 4 dereferenceable(8) %47, float noundef %i.bo, i32 noundef 0)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %bb.y
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #26
  %i.bp = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 5 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !54 ; 2 uses
  %i.br = sdiv i32 %i.bq, %i.bf                   ; 2 uses
  %i.bs = add nsw i32 %i.br, 4
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  %i.bu = icmp slt i32 %i.br, -4
  br i1 %i.bu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #29
          to label %.noexc unwind label %bb.ah

.noexc:                                           ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 5 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !110
  %i.bx = load ptr, ptr %44, align 8, !tbaa !79
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 4
  %i.cc = icmp ult i64 %i.cb, %i.bt
  br i1 %i.cc, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.ab
  %i.cd = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !80
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.bz
  %i.ch = shl nuw nsw i64 %i.bt, 4
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #31
          to label %.noexc197 unwind label %bb.ah ; 4 uses

.noexc197:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i
  %i.cj = load ptr, ptr %44, align 8, !tbaa !79   ; 5 uses
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !80 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cj, %i.ck
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc197, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %i.ci, %.noexc197 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %i.cj, %.noexc197 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.cm = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !89, !alias.scope !206, !noalias !205
  store ptr null, ptr %i.cl, align 8, !tbaa !83, !alias.scope !206, !noalias !205
  store <2 x ptr> %i.cm, ptr %.012.i.i.i.i, align 8, !tbaa !89, !alias.scope !205, !noalias !206
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !98, !alias.scope !206, !noalias !205
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.ck
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc197
  %.not.i8.i = icmp eq ptr %i.cj, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.cp = load ptr, ptr %i.bv, align 8, !tbaa !110
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cj to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.cs) #28
  br label %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.ci, ptr %44, align 8, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store ptr %i.ct, ptr %i.cd, align 8, !tbaa !80
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.bt
  store ptr %i.cu, ptr %i.bv, align 8, !tbaa !110
  %.pre = load i32, ptr %i.bp, align 8, !tbaa !54
  br label %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit: ; preds = %bb.ab, %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.cv = phi i32 [ %i.bq, %bb.ab ], [ %.pre, %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE13_M_deallocateEPS4_m.exit.i ] ; 2 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph390, label %._crit_edge

.lr.ph390:                                        ; preds = %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %49, i64 128 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %52, i64 24 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %52, i64 40 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %52, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %52, i64 56
  %i.dh = getelementptr inbounds nuw i8, ptr %52, i64 64 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %53, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %53, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %53, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %53, i64 56
  %i.dp = getelementptr inbounds nuw i8, ptr %53, i64 64
  %i.dq = mul i32 %i.bn, %i.bi
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.du = fpext float %i.bl to double
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dy = sitofp i32 %i.bi to double              ; 2 uses
  %.not391 = icmp eq i32 %i.bn, 0
  %i.dz = icmp slt i32 %i.bi, 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ep = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.eq = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.fh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.fk = getelementptr inbounds nuw i8, ptr %15, i64 128
  %i.fl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %64, i64 40
  %i.fr = getelementptr inbounds nuw i8, ptr %64, i64 56
  %i.fs = getelementptr inbounds nuw i8, ptr %64, i64 64
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %62, i64 32
  %i.gh = getelementptr inbounds nuw i8, ptr %62, i64 64
  %i.gi = getelementptr inbounds nuw i8, ptr %62, i64 96
  %i.gj = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %62, i64 48
  %i.gl = getelementptr inbounds nuw i8, ptr %62, i64 80
  %i.gm = getelementptr inbounds nuw i8, ptr %62, i64 112
  %i.gn = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %59, i64 32
  %i.gp = getelementptr inbounds nuw i8, ptr %66, i64 32
  %i.gq = getelementptr inbounds nuw i8, ptr %66, i64 48
  %i.gr = getelementptr inbounds nuw i8, ptr %59, i64 64
  %i.gs = getelementptr inbounds nuw i8, ptr %66, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %66, i64 80
  %i.gu = getelementptr inbounds nuw i8, ptr %59, i64 96
  %i.gv = getelementptr inbounds nuw i8, ptr %66, i64 96
  %i.gw = getelementptr inbounds nuw i8, ptr %66, i64 112
  %i.gx = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.gz = sext i32 %i.bf to i64
  %wide.trip.count = zext i32 %i.bi to i64        ; 2 uses
  %brmerge = select i1 %.not391, i1 true, i1 %i.dz
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ha = icmp eq i32 %i.bi, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod452 = trunc i32 %i.bi to i1
  br label %bb.ai

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit
  %.lcssa = phi i32 [ %i.cv, %_ZNSt6vectorIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE7reserveEm.exit ], [ %i.xp, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.hb = sdiv i32 %.lcssa, %i.bf
  invoke void @_ZN2cv12ppf_match_3d13PPF3DDetector12clusterPosesERSt6vectorINS_3PtrINS0_6Pose3DEEESaIS5_EEiS8_(ptr noundef nonnull align 8 dereferenceable(521) %0, ptr noundef nonnull align 8 dereferenceable(24) %44, i32 noundef %i.hb, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.cb unwind label %bb.cj

bb.ad:                                            ; preds = %bb.v
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ae:                                            ; preds = %bb.w
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #26
  br label %bb.cm

bb.af:                                            ; preds = %bb.x
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ag:                                            ; preds = %bb.y
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #26
  br label %bb.cl

bb.ah:                                            ; preds = %_ZNSt12_Vector_baseIN2cv3PtrINS0_12ppf_match_3d6Pose3DEEESaIS4_EE11_M_allocateEm.exit.i, %bb.aa
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ai:                                            ; preds = %.lr.ph390, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv402 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next403, %_ZNSt12__shared_ptrIN2cv12ppf_match_3d6Pose3DELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.hh = load ptr, ptr %i.cx, align 8, !tbaa !57
  %i.hi = load i64, ptr %i.cy, align 8, !tbaa !58
  %i.hj = mul i64 %i.hi, %indvars.iv402
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 20
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  %i.hp = load float, ptr %i.hk, align 4, !tbaa !53
  %i.hq = fpext float %i.hp to double             ; 2 uses
  %i.hr = load <2 x float>, ptr %i.hl, align 4, !tbaa !53
  %i.hs = fpext <2 x float> %i.hr to <2 x double> ; 2 uses
  %i.ht = load <2 x float>, ptr %i.hm, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %52, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %53, i8 0, i64 72, i1 false)
  %i.hu = call noalias ptr @calloc(i64 noundef %i.dr, i64 noundef 4) #30 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  store double %i.hq, ptr %54, align 8, !tbaa !36, !alias.scope !207
  store <2 x double> %i.hs, ptr %i.ds, align 8, !tbaa !36, !alias.scope !207
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  %i.hv = fpext <2 x float> %i.ht to <2 x double> ; 5 uses
  store <2 x double> %i.hv, ptr %55, align 16, !tbaa !36, !alias.scope !208
  %i.hw = fpext float %i.ho to double             ; 3 uses
  store double %i.hw, ptr %i.dt, align 16, !tbaa !36, !alias.scope !208
  invoke fastcc void @_ZN2cv12ppf_match_3dL18computeTransformRTERKNS_3VecIdLi3EEES4_RNS_4MatxIdLi3ELi3EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(72) %52, ptr noundef nonnull align 8 dereferenceable(24) %51)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  %i.hx = load i32, ptr %i.bp, align 8, !tbaa !54
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.lr.ph371, label %.preheader354

.lr.ph371:                                        ; preds = %bb.aj
  %i.hz = load double, ptr %i.cz, align 8
  %i.ia = load double, ptr %i.da, align 8
  %i.ib = and i64 %indvars.iv402, 4294967295
  %i.ic = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.id = extractelement <2 x double> %i.hv, i64 0
  %i.ie = extractelement <2 x double> %i.hv, i64 1
  %i.if = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  br label %bb.al

.preheader354:                                    ; preds = %.loopexit, %bb.aj
  br i1 %brmerge, label %._crit_edge383, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader354, %._crit_edge.us
  %.080382.us = phi i32 [ %i.jb, %._crit_edge.us ], [ 0, %.preheader354 ] ; 4 uses
  %.0127381.us = phi i32 [ %.2129.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %.0130380.us = phi i32 [ %.2132.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %.0133379.us = phi i32 [ %.2135.us.lcssa, %._crit_edge.us ], [ 0, %.preheader354 ] ; 2 uses
  %i.ig = mul i32 %.080382.us, %i.bi              ; 3 uses
  br i1 %i.ha, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv398 = phi i64 [ %indvars.iv.next399.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %.1128374.us = phi i32 [ %.2129.us.1, %.preheader.us.new ], [ %.0127381.us, %.preheader.us ] ; 2 uses
  %.1131373.us = phi i32 [ %.2132.us.1, %.preheader.us.new ], [ %.0130380.us, %.preheader.us ]
  %.1134372.us = phi i32 [ %.2135.us.1, %.preheader.us.new ], [ %.0133379.us, %.preheader.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.ih = trunc nuw nsw i64 %indvars.iv398 to i32 ; 2 uses
  %i.ii = add i32 %i.ig, %i.ih
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.ij ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !63 ; 2 uses
  %i.im = icmp ugt i32 %i.il, %.1128374.us        ; 2 uses
  %.2132.us = select i1 %i.im, i32 %i.ih, i32 %.1131373.us
  %.2129.us = call i32 @llvm.umax.i32(i32 %i.il, i32 %.1128374.us) ; 2 uses
  store i32 0, ptr %i.ik, align 4, !tbaa !63
  %i.in = trunc i64 %indvars.iv398 to i32
  %i.io = or disjoint i32 %i.in, 1                ; 2 uses
  %i.ip = add i32 %i.ig, %i.io
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.iq ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !63 ; 2 uses
  %i.it = icmp ugt i32 %i.is, %.2129.us           ; 2 uses
  %i.iu = or i1 %i.it, %i.im
  %.2135.us.1 = select i1 %i.iu, i32 %.080382.us, i32 %.1134372.us ; 3 uses
  %.2132.us.1 = select i1 %i.it, i32 %i.io, i32 %.2132.us ; 3 uses
  %.2129.us.1 = call i32 @llvm.umax.i32(i32 %i.is, i32 %.2129.us) ; 3 uses
  store i32 0, ptr %i.ir, align 4, !tbaa !63
  %indvars.iv.next399.1 = add nuw nsw i64 %indvars.iv398, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !187

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv398.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next399.1, %._crit_edge.us.unr-lcssa ]
  %.1128374.us.epil.init = phi i32 [ %.0127381.us, %.preheader.us ], [ %.2129.us.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
  %.1131373.us.epil.init = phi i32 [ %.0130380.us, %.preheader.us ], [ %.2132.us.1, %._crit_edge.us.unr-lcssa ]
  %.1134372.us.epil.init = phi i32 [ %.0133379.us, %.preheader.us ], [ %.2135.us.1, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod452)
  %i.iv = trunc nuw nsw i64 %indvars.iv398.epil.init to i32 ; 2 uses
  %i.iw = add i32 %i.ig, %i.iv
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.ix ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !63 ; 2 uses
  %i.ja = icmp ugt i32 %i.iz, %.1128374.us.epil.init ; 2 uses
  %.2135.us.epil = select i1 %i.ja, i32 %.080382.us, i32 %.1134372.us.epil.init
  %.2132.us.epil = select i1 %i.ja, i32 %i.iv, i32 %.1131373.us.epil.init
  %.2129.us.epil = call i32 @llvm.umax.i32(i32 %i.iz, i32 %.1128374.us.epil.init)
  store i32 0, ptr %i.iy, align 4, !tbaa !63
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %.2135.us.lcssa = phi i32 [ %.2135.us.1, %._crit_edge.us.unr-lcssa ], [ %.2135.us.epil, %.epil.preheader ] ; 2 uses
  %.2132.us.lcssa = phi i32 [ %.2132.us.1, %._crit_edge.us.unr-lcssa ], [ %.2132.us.epil, %.epil.preheader ] ; 2 uses
  %.2129.us.lcssa = phi i32 [ %.2129.us.1, %._crit_edge.us.unr-lcssa ], [ %.2129.us.epil, %.epil.preheader ] ; 2 uses
  %i.jb = add nuw i32 %.080382.us, 1              ; 2 uses
  %exitcond401.not = icmp eq i32 %i.jb, %i.bn
  br i1 %exitcond401.not, label %._crit_edge383.loopexit, label %.preheader.us, !llvm.loop !188

bb.ak:                                            ; preds = %bb.ai
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  br label %bb.ca

bb.al:                                            ; preds = %.lr.ph371, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph371 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.not = icmp eq i64 %i.ib, %indvars.iv
  br i1 %.not, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jd = load ptr, ptr %i.cx, align 8, !tbaa !57
  %i.je = load i64, ptr %i.cy, align 8, !tbaa !58
  %i.jf = mul i64 %i.je, %indvars.iv
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jf ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load float, ptr %i.jg, align 4, !tbaa !53
  %i.jj = fpext float %i.ji to double             ; 3 uses
  %68 = fsub double %i.jj, %i.hq                  ; 3 uses
  %i.jk = load <2 x float>, ptr %i.jh, align 4, !tbaa !53
  %i.jl = fpext <2 x float> %i.jk to <2 x double> ; 4 uses
  %i.jm = fsub <2 x double> %i.jl, %i.hs          ; 3 uses
  %69 = call double @llvm.fmuladd.f64(double %68, double %68, double 0.000000e+00)
  %i.jn = extractelement <2 x double> %i.jm, i64 0 ; 2 uses
  %i.jo = call double @llvm.fmuladd.f64(double %i.jn, double %i.jn, double %69)
  %i.jp = extractelement <2 x double> %i.jm, i64 1 ; 2 uses
  %i.jq = call double @llvm.fmuladd.f64(double %i.jp, double %i.jp, double %i.jo)
  %sqrt.i = call double @llvm.sqrt.f64(double %i.jq) ; 3 uses
  %i.jr = fcmp ugt double %sqrt.i, f0x3E80000000000000
  br i1 %i.jr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 20
  %i.jt = load float, ptr %i.js, align 4, !tbaa !53
  %i.ju = fpext float %i.jt to double             ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !53
  %i.jx = fpext float %i.jw to double             ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !53
  %i.ka = fpext float %i.jz to double             ; 2 uses
  %i.kb = fdiv double 1.000000e+00, %sqrt.i
  %70 = insertelement <3 x double> poison, double %68, i64 0
  %71 = shufflevector <2 x double> %i.jm, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %72 = shufflevector <3 x double> %70, <3 x double> %71, <3 x i32> <i32 0, i32 3, i32 4>
  %73 = insertelement <3 x double> poison, double %i.kb, i64 0
  %74 = shufflevector <3 x double> %73, <3 x double> poison, <3 x i32> zeroinitializer
  %75 = fmul <3 x double> %72, %74                ; 3 uses
  %i.kc = insertelement <2 x double> %i.hv, double %i.ka, i64 1
  %i.kd = shufflevector <3 x double> %75, <3 x double> poison, <2 x i32> zeroinitializer
  %i.ke = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.kd, <2 x double> zeroinitializer)
  %i.kf = insertelement <2 x double> %i.if, double %i.jx, i64 1
  %i.kg = shufflevector <3 x double> %75, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.kg, <2 x double> %i.ke)
  %i.ki = insertelement <2 x double> %i.ic, double %i.ju, i64 1
  %76 = shufflevector <3 x double> %75, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.kj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %76, <2 x double> %i.kh) ; 2 uses
  %i.kk = extractelement <2 x double> %i.kj, i64 0
  %i.kl = call noundef double @acos(double noundef %i.kk) #26
  %i.km = extractelement <2 x double> %i.kj, i64 1
  %i.kn = call noundef double @acos(double noundef %i.km) #26
  %i.ko = call double @llvm.fmuladd.f64(double %i.id, double %i.ka, double 0.000000e+00)
  %i.kp = call double @llvm.fmuladd.f64(double %i.ie, double %i.jx, double %i.ko)
  %i.kq = call noundef double @llvm.fmuladd.f64(double %i.hw, double %i.ju, double %i.kp)
  %i.kr = call noundef double @acos(double noundef %i.kq) #26
  %i.ks = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.kt = insertelement <2 x double> %i.ks, double %i.kr, i64 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sroa.6309.0 = phi double [ %i.kn, %bb.an ], [ 0.000000e+00, %bb.am ]
  %i.ku = phi <2 x double> [ %i.kt, %bb.an ], [ zeroinitializer, %bb.am ]
  %i.kv = load double, ptr %i.az, align 8, !tbaa !43 ; 2 uses
  %i.kw = load double, ptr %i.dd, align 16, !tbaa !36, !noalias !209
  %i.kx = load double, ptr %i.dc, align 8, !tbaa !36, !noalias !209
  %i.ky = call double @llvm.fmuladd.f64(double %i.kx, double %i.jj, double 0.000000e+00)
  %i.kz = extractelement <2 x double> %i.jl, i64 0 ; 2 uses
  %i.la = call double @llvm.fmuladd.f64(double %i.kw, double %i.kz, double %i.ky)
  %i.lb = load <2 x double>, ptr %i.de, align 8, !tbaa !36, !noalias !209
  %77 = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %78 = insertelement <2 x double> %77, double %i.jj, i64 1
  %i.lc = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.la, i64 0
  %i.ld = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> %78, <2 x double> %i.lc) ; 2 uses
  %i.le = load double, ptr %i.dg, align 8, !tbaa !36, !noalias !209
  %i.lf = extractelement <2 x double> %i.ld, i64 1
  %i.lg = call double @llvm.fmuladd.f64(double %i.le, double %i.kz, double %i.lf)
  %i.lh = load double, ptr %i.dh, align 16, !tbaa !36, !noalias !209
  %79 = extractelement <2 x double> %i.jl, i64 1
  %i.li = call double @llvm.fmuladd.f64(double %i.lh, double %79, double %i.lg)
  %i.lj = extractelement <2 x double> %i.ld, i64 0
  %i.lk = fadd double %i.lj, %i.hz
  %i.ll = fadd double %i.li, %i.ia                ; 2 uses
  %i.lm = fneg double %i.ll
  %i.ln = call double @atan2(double noundef %i.lm, double noundef %i.lk) #26 ; 4 uses
  %i.lo = fcmp uno double %i.ln, 0.000000e+00
  br i1 %i.lo, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lp = insertelement <2 x double> poison, double %i.kv, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = fdiv <2 x double> %i.ku, %i.lq          ; 2 uses
  %i.ls = extractelement <2 x double> %i.lr, i64 0
  %i.lt = fptosi double %i.ls to i32
  %i.lu = mul i32 %i.lt, -1789642873              ; 2 uses
  %i.lv = call i32 @llvm.fshl.i32(i32 %i.lu, i32 %i.lu, i32 11)
  %i.lw = mul i32 %i.lv, 718793509
  %i.lx = xor i32 %i.lw, -1914584186
  %i.ly = add i32 %i.lx, -1162247668              ; 2 uses
  %i.lz = mul i32 %i.ly, 3
  %i.ma = add i32 %i.lz, 1390208809
  %i.mb = extractelement <2 x double> %i.lr, i64 1
  %i.mc = fptosi double %i.mb to i32
  %i.md = mul i32 %i.mc, 1713515327               ; 2 uses
  %i.me = call i32 @llvm.fshl.i32(i32 %i.md, i32 %i.md, i32 11)
  %i.mf = mul i32 %i.me, 1107688271
  %i.mg = xor i32 %i.ma, %i.mf
  %i.mh = fdiv double %.sroa.6309.0, %i.kv
  %i.mi = fptosi double %i.mh to i32
  %i.mj = mul i32 %i.mi, 718793509                ; 2 uses
  %i.mk = call i32 @llvm.fshl.i32(i32 %i.mj, i32 %i.mj, i32 11)
  %i.ml = mul i32 %i.mk, -1789642873
  %i.mm = xor i32 %i.ml, 68777331
  %i.mn = add i32 %i.ly, %i.mm
  %i.mo = mul i32 %i.mn, 3
  %i.mp = add i32 %i.mo, 944331445                ; 3 uses
  %i.mq = add i32 %i.mg, %i.mp                    ; 2 uses
  %i.mr = mul i32 %i.mq, 3
  %i.ms = add i32 %i.mr, 1390208809
  %i.mt = call i32 @llvm.fshl.i32(i32 %i.mp, i32 %i.mp, i32 17)
  %i.mu = fdiv double %sqrt.i, %i.du
  %i.mv = fptosi double %i.mu to i32
  %i.mw = mul i32 %i.mv, 1107688271               ; 2 uses
  %i.mx = call i32 @llvm.fshl.i32(i32 %i.mw, i32 %i.mw, i32 11)
  %i.my = mul i32 %i.mx, 1713515327
  %i.mz = xor i32 %i.mt, %i.my
  %i.na = add i32 %i.mz, %i.mq
  %i.nb = mul i32 %i.na, 3
  %i.nc = add i32 %i.nb, 944331445
  %i.nd = xor i32 %i.nc, 16                       ; 2 uses
  %i.ne = add i32 %i.ms, %i.nd                    ; 3 uses
  %i.nf = add i32 %i.ne, %i.nd                    ; 2 uses
  %i.ng = lshr i32 %i.nf, 16
  %i.nh = xor i32 %i.ng, %i.nf
  %i.ni = mul i32 %i.nh, -2048144789              ; 2 uses
  %i.nj = lshr i32 %i.ni, 13
  %i.nk = xor i32 %i.nj, %i.ni
  %i.nl = mul i32 %i.nk, -1028477387              ; 2 uses
  %i.nm = lshr i32 %i.nl, 16
  %i.nn = xor i32 %i.nm, %i.nl
  %i.no = lshr i32 %i.ne, 16
  %i.np = xor i32 %i.no, %i.ne
  %i.nq = mul i32 %i.np, -2048144789              ; 2 uses
  %i.nr = lshr i32 %i.nq, 13
  %i.ns = xor i32 %i.nr, %i.nq
  %i.nt = mul i32 %i.ns, -1028477387              ; 2 uses
  %i.nu = lshr i32 %i.nt, 16
  %i.nv = xor i32 %i.nu, %i.nt
  %i.nw = add i32 %i.nn, %i.nv
  %i.nx = call double @sin(double noundef %i.ln) #26
  %i.ny = fmul double %i.ll, %i.nx
  %i.nz = fcmp olt double %i.ny, 0.000000e+00
  %i.oa = fneg double %i.ln
  %.0125 = select i1 %i.nz, double %i.oa, double %i.ln
  %i.ob = load ptr, ptr %i.dv, align 8, !tbaa !45
  %i.oc = invoke noundef ptr @_ZN2cv12ppf_match_3d24hashtableGetBucketHashedEPNS0_8HSHTBL_iEj(ptr noundef %i.ob, i32 noundef %i.nw)
          to label %.preheader353 unwind label %bb.ar ; 2 uses

.preheader353:                                    ; preds = %bb.ap
  %.not184368 = icmp eq ptr %i.oc, null
  br i1 %.not184368, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader353
  %i.od = load ptr, ptr %i.dw, align 8, !tbaa !57
  %i.oe = load i64, ptr %i.dx, align 8, !tbaa !58
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph, %bb.aq
  %.0124369 = phi ptr [ %i.oc, %.lr.ph ], [ %i.pd, %bb.aq ] ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.0124369, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !212 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !61
  %i.oj = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !62
  %i.ol = sext i32 %i.ok to i64
  %i.om = mul i64 %i.oe, %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load float, ptr %i.oo, align 4, !tbaa !53
  %i.oq = fpext float %i.op to double
  %i.or = fadd double %.0125, %i.oq
  %i.os = fadd double %i.or, f0x401921FB54442D18
  %i.ot = fmul double %i.os, %i.dy
  %i.ou = fdiv double %i.ot, f0x402921FB54442D18
  %i.ov = fptosi double %i.ou to i32
  %i.ow = mul nsw i32 %i.oi, %i.bi
  %i.ox = add nsw i32 %i.ow, %i.ov
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.oy ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !63
  %i.pb = add i32 %i.pa, 1
  store i32 %i.pb, ptr %i.oz, align 4, !tbaa !63
  %i.pc = getelementptr inbounds nuw i8, ptr %.0124369, i64 16
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !213 ; 2 uses
  %.not184 = icmp eq ptr %i.pd, null
  br i1 %.not184, label %.loopexit, label %bb.aq, !llvm.loop !191

bb.ar:                                            ; preds = %bb.ap
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit:                                        ; preds = %bb.aq, %.preheader353, %bb.ao, %bb.al
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pf = load i32, ptr %i.bp, align 8, !tbaa !54
  %i.pg = sext i32 %i.pf to i64
  %i.ph = icmp slt i64 %indvars.iv.next, %i.pg
  br i1 %i.ph, label %bb.al, label %.preheader354, !llvm.loop !192

._crit_edge383.loopexit:                          ; preds = %._crit_edge.us
  %i.pi = sitofp i32 %.2132.us.lcssa to double
  %i.pj = fmul nnan double %i.pi, f0x402921FB54442D18
  %i.pk = zext i32 %.2129.us.lcssa to i64
  br label %._crit_edge383

._crit_edge383:                                   ; preds = %.preheader354, %._crit_edge383.loopexit
  %.0133.lcssa = phi i32 [ 0, %.preheader354 ], [ %.2135.us.lcssa, %._crit_edge383.loopexit ] ; 2 uses
  %.0130.lcssa = phi double [ 0.000000e+00, %.preheader354 ], [ %i.pj, %._crit_edge383.loopexit ]
  %.0127.lcssa = phi i64 [ 0, %.preheader354 ], [ %i.pk, %._crit_edge383.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 0, i64 24, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %58, i8 0, i64 72, i1 false), !tbaa !36
  %i.pl = load double, ptr %i.db, align 16, !tbaa !36, !noalias !214 ; 2 uses
  %i.pm = load double, ptr %i.de, align 8, !tbaa !36, !noalias !214 ; 2 uses
  %i.pn = load double, ptr %i.dh, align 16, !tbaa !36, !noalias !214 ; 2 uses
  store double %i.pl, ptr %i.dn, align 8
  store double %i.pm, ptr %i.do, align 8
  store double %i.pn, ptr %i.dp, align 8, !tbaa !51
  %i.po = fneg double %i.pl
  %i.pp = fneg double %i.pm
  %i.pq = fneg double %i.pn
  %i.pr = load <2 x double>, ptr %52, align 16, !tbaa !36, !noalias !214 ; 3 uses
  %i.ps = load <2 x double>, ptr %i.dc, align 8, !tbaa !36, !noalias !214 ; 3 uses
  %i.pt = load <2 x double>, ptr %i.df, align 16, !tbaa !36, !noalias !214 ; 3 uses
  %i.pu = extractelement <2 x double> %i.pr, i64 0
  store double %i.pu, ptr %53, align 8
  %i.pv = extractelement <2 x double> %i.ps, i64 0
  store double %i.pv, ptr %i.di, align 8
  %i.pw = extractelement <2 x double> %i.pt, i64 0
  store double %i.pw, ptr %i.dj, align 8
  %i.px = extractelement <2 x double> %i.pr, i64 1
  store double %i.px, ptr %i.dk, align 8
  %i.py = extractelement <2 x double> %i.ps, i64 1
  store double %i.py, ptr %i.dl, align 8
  %i.pz = extractelement <2 x double> %i.pt, i64 1
  store double %i.pz, ptr %i.dm, align 8
  %i.qa = fneg <2 x double> %i.pr
  %i.qb = fneg <2 x double> %i.ps
  %i.qc = fneg <2 x double> %i.pt
  %i.qd = load <3 x double>, ptr %51, align 8, !tbaa !36, !noalias !215 ; 5 uses
  %i.qe = load double, ptr %i.cz, align 8, !tbaa !36, !noalias !215
  %i.qf = shufflevector <3 x double> %i.qd, <3 x double> poison, <2 x i32> zeroinitializer
  %i.qg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qa, <2 x double> %i.qf, <2 x double> zeroinitializer)
  %i.qh = shufflevector <3 x double> %i.qd, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qb, <2 x double> %i.qh, <2 x double> %i.qg)
  %i.qj = shufflevector <3 x double> %i.qd, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.qk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> %i.qj, <2 x double> %i.qi)
  %i.ql = extractelement <3 x double> %i.qd, i64 0
  %i.qm = call double @llvm.fmuladd.f64(double %i.po, double %i.ql, double 0.000000e+00)
  %i.qn = call double @llvm.fmuladd.f64(double %i.pp, double %i.qe, double %i.qm)
  %i.qo = extractelement <3 x double> %i.qd, i64 2
  %i.qp = call double @llvm.fmuladd.f64(double %i.pq, double %i.qo, double %i.qn)
  store <2 x double> %i.qk, ptr %56, align 16
  store double %i.qp, ptr %.sroa.6.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %59, i8 0, i64 128, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %26, i8 0, i64 96, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  store i32 -1056833530, ptr %27, align 8, !tbaa !67
  store ptr %53, ptr %i.eb, align 8, !tbaa !68
  store i64 12884901891, ptr %i.ea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  store i32 -1056833530, ptr %28, align 8, !tbaa !67
  store ptr %56, ptr %i.ed, align 8, !tbaa !68
  store i64 12884901889, ptr %i.ec, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
end_hunk_1
