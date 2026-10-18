Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingPrimary?download=true
inline.NumInlined: 186
inline.NumDeleted: 59
begin_hunk_0_@_ZNK16OpenColorIO_v2_514GradingPrimary8validateENS_12GradingStyleE:bb.a
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.q
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !27
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %.pn49 = phi { ptr, i32 } [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.thread ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ]
  call void @__cxa_free_exception(ptr %i.ac) #10
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %bb.r, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn49, %bb.r ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43 ], [ %i.ae, %bb.p ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ac

bb.t:                                             ; preds = %bb.k, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.an = load double, ptr %i.am, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !20
  %i.aq = fsub double %i.an, %i.ap
  %i.ar = fcmp olt double %i.aq, f0x3F847A5B0FF10ECC
  br i1 %i.ar, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.as = tail call ptr @__cxa_allocate_exception(i64 16) #10 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull @.str.4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #11
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.as) #10
  br label %bb.ac

bb.x:                                             ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = load double, ptr %i.au, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !17
  %i.ay = fcmp ogt double %i.av, %i.ax
  br i1 %i.ay, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.az = tail call ptr @__cxa_allocate_exception(i64 16) #10 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull @.str.5)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #11
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.az) #10
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  ret void

bb.ac:                                            ; preds = %bb.aa, %bb.w, %bb.s, %bb.j
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.j ], [ %.pn.pn, %bb.s ], [ %i.at, %bb.w ], [ %i.ba, %bb.aa ]
  resume { ptr, i32 } %.pn17.pn.pn

bb.ad:                                            ; preds = %bb.o, %bb.f
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_11GradingRGBME(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2 align 2

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_523GradingPrimaryPreRender6updateENS_12GradingStyleENS_18TransformDirectionERKNS_14GradingPrimaryE(ptr nofree noundef nonnull align 8 dereferenceable(82) initializes((81, 82)) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 dereferenceable(272) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.b = load double, ptr %i.a, align 8, !tbaa !16
  %i.c = fcmp oeq double %i.b, 1.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.e = load double, ptr %i.d, align 8
  %i.f = fcmp oeq double %i.e, f0xFFEFFFFFFFFFFFFF
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.h = load double, ptr %i.g, align 8
  %i.i = fcmp oeq double %i.h, f0x7FEFFFFFFFFFFFFF
  %narrow = select i1 %or.cond, i1 %i.i, i1 false ; 3 uses
  %i.j = zext i1 %narrow to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 3 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !31
  switch i32 %1, label %bb.an [
    i32 0, label %bb.b
    i32 1, label %bb.n
    i32 2, label %bb.ab
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  switch i32 %2, label %._crit_edge207 [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

._crit_edge207:                                   ; preds = %bb.b
  %.phi.trans.insert208 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre209 = load float, ptr %.phi.trans.insert208, align 8, !tbaa !33
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load double, ptr %i.l, align 8, !tbaa !10
  %i.p = load <2 x double>, ptr %3, align 8, !tbaa !34 ; 2 uses
  %i.q = load <2 x double>, ptr %i.n, align 8, !tbaa !34 ; 3 uses
  %i.r = shufflevector <2 x double> %i.p, <2 x double> %i.q, <2 x i32> <i32 0, i32 3>
  %i.s = shufflevector <2 x double> %i.q, <2 x double> %i.p, <2 x i32> <i32 1, i32 3>
  %i.t = fadd <2 x double> %i.r, %i.s
  %i.u = fmul <2 x double> %i.t, splat (double 6.250000e+00)
  %i.v = fdiv <2 x double> %i.u, splat (double 1.023000e+03)
  %i.w = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.q)
  %i.x = fmul double %i.w, 6.250000e+00
  %i.y = fdiv double %i.x, 1.023000e+03
  %i.z = shufflevector <2 x double> %i.v, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aa = insertelement <4 x double> %i.z, double %i.y, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 3 uses
  %i.ag = load double, ptr %i.ab, align 8, !tbaa !11
  %i.ah = load <2 x double>, ptr %i.ad, align 8, !tbaa !34 ; 3 uses
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = extractelement <2 x double> %i.ah, i64 1
  %i.ak = fmul double %i.aj, %i.o
  %i.al = insertelement <4 x double> %i.aa, double %i.ak, i64 3
  %i.am = fptrunc <4 x double> %i.al to <4 x float>
  store <4 x float> %i.am, ptr %0, align 8, !tbaa !33
  %i.an = insertelement <2 x double> %i.ah, double %i.ag, i64 0
  %i.ao = fmul <2 x double> %i.an, %i.ai
  %i.ap = load <2 x double>, ptr %i.m, align 8, !tbaa !34 ; 2 uses
  %i.aq = insertelement <2 x double> %i.ap, double %i.af, i64 1
  %i.ar = insertelement <2 x double> %i.ap, double %i.af, i64 0
  %i.as = fmul <2 x double> %i.aq, %i.ar
  %i.at = fdiv <2 x double> splat (double 1.000000e+00), %i.as ; 2 uses
  %i.au = shufflevector <2 x double> %i.ao, <2 x double> %i.at, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.av = fptrunc <4 x double> %i.au to <4 x float>
  %i.aw = extractelement <2 x double> %i.at, i64 0
  %i.ax = fptrunc double %i.aw to float
  store <4 x float> %i.av, ptr %i.ac, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.az = load double, ptr %i.ay, align 8, !tbaa !12
  %i.ba = fmul double %i.af, %i.az
  %i.bb = fdiv double 1.000000e+00, %i.ba
  %i.bc = fptrunc double %i.bb to float
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.bc, ptr %i.bd, align 8, !tbaa !33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %4 = load <2 x double>, ptr %3, align 8, !tbaa !34 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = load <2 x double>, ptr %5, align 8, !tbaa !34 ; 3 uses
  %6 = shufflevector <2 x double> %4, <2 x double> %i.be, <2 x i32> <i32 0, i32 3>
  %7 = shufflevector <2 x double> %i.be, <2 x double> %4, <2 x i32> <i32 1, i32 3>
  %i.bf = fadd <2 x double> %6, %7
  %i.bg = fmul <2 x double> %i.bf, splat (double 6.250000e+00)
  %i.bh = fdiv <2 x double> %i.bg, splat (double 1.023000e+03)
  %i.bi = fptrunc <2 x double> %i.bh to <2 x float>
  %i.bj = fneg <2 x float> %i.bi
  store <2 x float> %i.bj, ptr %0, align 8, !tbaa !33
  %8 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.be)
  %i.bk = fmul double %8, 6.250000e+00
  %i.bl = fdiv double %i.bk, 1.023000e+03
  %i.bm = fptrunc double %i.bl to float
  %i.bn = fneg float %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bn, ptr %i.bo, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !13 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bs = load double, ptr %i.br, align 8, !tbaa !12
  %i.bt = fmul double %i.bq, %i.bs                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bv = fcmp oeq double %i.bt, 0.000000e+00
  %i.bw = fdiv double 1.000000e+00, %i.bt
  %i.bx = select i1 %i.bv, double 1.000000e+00, double %i.bw
  %i.by = load double, ptr %i.m, align 8, !tbaa !10
  %i.bz = load <2 x double>, ptr %i.l, align 8, !tbaa !34 ; 2 uses
  %i.ca = insertelement <2 x double> %i.bz, double %i.bq, i64 1
  %i.cb = insertelement <2 x double> %i.bz, double %i.bq, i64 0
  %i.cc = fmul <2 x double> %i.ca, %i.cb          ; 2 uses
  %i.cd = fcmp oeq <2 x double> %i.cc, zeroinitializer
  %i.ce = fdiv <2 x double> splat (double 1.000000e+00), %i.cc
  %i.cf = select <2 x i1> %i.cd, <2 x double> splat (double 1.000000e+00), <2 x double> %i.ce
  %i.cg = insertelement <4 x double> poison, double %i.bx, i64 2
  %i.ch = shufflevector <2 x double> %i.cf, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cm = load <2 x double>, ptr %i.cl, align 8, !tbaa !34 ; 3 uses
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.co = extractelement <2 x double> %i.cm, i64 1
  %i.cp = fmul double %i.co, %i.by                ; 2 uses
  %i.cq = fptrunc double %i.cp to float
  %i.cr = insertelement <4 x double> %i.cg, double %i.cp, i64 3
  %i.cs = shufflevector <4 x double> %i.ch, <4 x double> %i.cr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ct = fptrunc <4 x double> %i.cs to <4 x float>
  store <4 x float> %i.ct, ptr %i.bu, align 4, !tbaa !33
  %i.cu = insertelement <2 x double> %i.cm, double %i.cj, i64 0
  %i.cv = fmul <2 x double> %i.cu, %i.cn
  %i.cw = fptrunc <2 x double> %i.cv to <2 x float>
  store <2 x float> %i.cw, ptr %i.ck, align 4, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge207, %bb.d, %bb.c
  %i.cx = phi float [ %.pre209, %._crit_edge207 ], [ %i.cq, %bb.d ], [ %i.ax, %bb.c ]
  %i.cy = fcmp oeq float %i.cx, 1.000000e+00
  br i1 %i.cy, label %bb.f, label %.thread210

bb.f:                                             ; preds = %bb.e
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.da = load float, ptr %i.cz, align 4, !tbaa !33
  %i.db = fcmp oeq float %i.da, 1.000000e+00
  br i1 %i.db, label %bb.g, label %.thread210

.thread210:                                       ; preds = %bb.f, %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.dc, align 8, !tbaa !35
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.de = load double, ptr %i.dd, align 8, !tbaa !15
  %i.df = tail call double @llvm.fmuladd.f64(double %i.de, double 5.000000e-01, double 5.000000e-01)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.df, ptr %i.dg, align 8, !tbaa !36
  br label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.di = load float, ptr %i.dh, align 8, !tbaa !33
  %i.dj = fcmp oeq float %i.di, 1.000000e+00      ; 2 uses
  %i.dk = zext i1 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.dk, ptr %i.dl, align 8, !tbaa !35
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !15
  %i.do = tail call double @llvm.fmuladd.f64(double %i.dn, double 5.000000e-01, double 5.000000e-01)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.do, ptr %i.dp, align 8, !tbaa !36
  %or.cond198 = select i1 %narrow, i1 %i.dj, i1 false
  br i1 %or.cond198, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.dq = load float, ptr %0, align 8, !tbaa !33
  %i.dr = fcmp oeq float %i.dq, 0.000000e+00
  br i1 %i.dr, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !33
  %i.du = fcmp oeq float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !33
  %i.dx = fcmp oeq float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !33
  %i.ea = fcmp oeq float %i.dz, 1.000000e+00
  br i1 %i.ea, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !33
  %i.ed = fcmp oeq float %i.ec, 1.000000e+00
  br i1 %i.ed, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !33
  %i.eg = fcmp oeq float %i.ef, 1.000000e+00
  br label %.sink.split

bb.n:                                             ; preds = %bb.a
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  switch i32 %2, label %._crit_edge204 [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

._crit_edge204:                                   ; preds = %bb.n
  %.phi.trans.insert205 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre206 = load float, ptr %.phi.trans.insert205, align 4, !tbaa !33
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.el = load double, ptr %i.ek, align 8, !tbaa !13 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.en = load <2 x double>, ptr %i.eh, align 8, !tbaa !34 ; 2 uses
  %i.eo = insertelement <2 x double> %i.en, double %i.el, i64 1
  %i.ep = insertelement <2 x double> %i.en, double %i.el, i64 0
  %i.eq = fadd <2 x double> %i.eo, %i.ep
  %i.er = fptrunc <2 x double> %i.eq to <2 x float>
  store <2 x float> %i.er, ptr %i.em, align 8, !tbaa !33
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.et = load double, ptr %i.es, align 8, !tbaa !12
  %i.eu = fadd double %i.el, %i.et
  %i.ev = fptrunc double %i.eu to float
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ev, ptr %i.ew, align 8, !tbaa !33
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !13 ; 3 uses
  %i.ez = load double, ptr %i.ei, align 8, !tbaa !10
  %i.fa = fadd double %i.ey, %i.ez
  %i.fb = fptrunc double %i.fa to float
  %exp2f201 = tail call float @exp2f(float %i.fb) #10
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %exp2f201, ptr %i.fc, align 4, !tbaa !33
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !11
  %i.ff = fadd double %i.ey, %i.fe
  %i.fg = fptrunc double %i.ff to float
  %exp2f202 = tail call float @exp2f(float %i.fg) #10
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %exp2f202, ptr %i.fh, align 8, !tbaa !33
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !12
  %i.fk = fadd double %i.ey, %i.fj
  %i.fl = fptrunc double %i.fk to float
  %exp2f203 = tail call float @exp2f(float %i.fl) #10
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %exp2f203, ptr %i.fm, align 4, !tbaa !33
  %i.fn = load double, ptr %i.ej, align 8, !tbaa !10
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !11
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ft = load <2 x double>, ptr %i.fs, align 8, !tbaa !34 ; 3 uses
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fv = extractelement <2 x double> %i.ft, i64 1
  %i.fw = fmul double %i.fv, %i.fn
  %i.fx = fptrunc double %i.fw to float           ; 2 uses
  store float %i.fx, ptr %i.fo, align 4, !tbaa !33
  %i.fy = insertelement <2 x double> %i.ft, double %i.fq, i64 0
  %i.fz = fmul <2 x double> %i.fy, %i.fu
  %i.ga = fptrunc <2 x double> %i.fz to <2 x float>
  store <2 x float> %i.ga, ptr %i.fr, align 8, !tbaa !33
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !13 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ge = load <2 x double>, ptr %i.eh, align 8, !tbaa !34 ; 2 uses
  %i.gf = insertelement <2 x double> %i.ge, double %i.gc, i64 1
  %i.gg = insertelement <2 x double> %i.ge, double %i.gc, i64 0
  %i.gh = fadd <2 x double> %i.gf, %i.gg
  %i.gi = fptrunc <2 x double> %i.gh to <2 x float>
  %i.gj = fneg <2 x float> %i.gi
  store <2 x float> %i.gj, ptr %i.gd, align 8, !tbaa !33
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !12
  %i.gm = fadd double %i.gc, %i.gl
  %i.gn = fptrunc double %i.gm to float
  %i.go = fneg float %i.gn
end_hunk_0
