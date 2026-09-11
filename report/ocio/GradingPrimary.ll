Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingPrimary?download=true
inline.NumInlined: 186
inline.NumDeleted: 59
begin_hunk_0_@_ZNK16OpenColorIO_v2_514GradingPrimary8validateENS_12GradingStyleE:bb.a

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %bb.l
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN16OpenColorIO_v2_5lsERSoRKNS_11GradingRGBME(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.m unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.1, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %bb.m
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.y, double noundef 1.000000e-02)
          to label %_ZNSolsEd.exit33 unwind label %bb.p

_ZNSolsEd.exit33:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZNSolsEd.exit33
  %i.ac = call ptr @__cxa_allocate_exception(i64 16) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.ad = load ptr, ptr %5, align 8, !tbaa !26
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef %i.ad)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #11
          to label %bb.ad unwind label %bb.q

bb.p:                                             ; preds = %_ZNSolsEd.exit33, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %bb.m, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %.0 = phi i1 [ false, %bb.o ], [ true, %bb.n ]  ; 2 uses
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.q
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !27
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %.0, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br i1 %.0, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn43 = phi { ptr, i32 } [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ]
  call void @__cxa_free_exception(ptr %i.ac) #10
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.r, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn43, %bb.r ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.ae, %bb.p ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ]
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
  %4 = load <2 x double>, ptr %i.n, align 8, !tbaa !34 ; 3 uses
  %5 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %4)
  %i.p = fmul double %5, 6.250000e+00
  %i.q = fdiv double %i.p, 1.023000e+03
  %i.r = load <2 x double>, ptr %3, align 8, !tbaa !34 ; 2 uses
  %6 = shufflevector <2 x double> %i.r, <2 x double> %4, <2 x i32> <i32 0, i32 3>
  %7 = shufflevector <2 x double> %4, <2 x double> %i.r, <2 x i32> <i32 1, i32 3>
  %i.s = fadd <2 x double> %6, %7
  %i.t = fmul <2 x double> %i.s, splat (double 6.250000e+00)
  %i.u = fdiv <2 x double> %i.t, splat (double 1.023000e+03)
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.w = insertelement <4 x double> %i.v, double %i.q, i64 2
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13 ; 3 uses
  %i.ac = load double, ptr %i.x, align 8, !tbaa !11
  %i.ad = load <2 x double>, ptr %i.m, align 8, !tbaa !34 ; 2 uses
  %i.ae = insertelement <2 x double> %i.ad, double %i.ab, i64 1
  %i.af = insertelement <2 x double> %i.ad, double %i.ab, i64 0
  %i.ag = fmul <2 x double> %i.ae, %i.af
  %i.ah = fdiv <2 x double> splat (double 1.000000e+00), %i.ag ; 2 uses
  %i.ai = load <2 x double>, ptr %i.z, align 8, !tbaa !34 ; 3 uses
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ak = extractelement <2 x double> %i.ai, i64 1
  %i.al = fmul double %i.ak, %i.o
  %i.am = insertelement <4 x double> %i.w, double %i.al, i64 3
  %i.an = fptrunc <4 x double> %i.am to <4 x float>
  store <4 x float> %i.an, ptr %0, align 8, !tbaa !33
  %i.ao = insertelement <2 x double> %i.ai, double %i.ac, i64 0
  %i.ap = fmul <2 x double> %i.ao, %i.aj
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> %i.ah, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ar = fptrunc <4 x double> %i.aq to <4 x float>
  %i.as = extractelement <2 x double> %i.ah, i64 0
  %i.at = fptrunc double %i.as to float
  store <4 x float> %i.ar, ptr %i.y, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.av = load double, ptr %i.au, align 8, !tbaa !12
  %i.aw = fmul double %i.ab, %i.av
  %i.ax = fdiv double 1.000000e+00, %i.aw
  %i.ay = fptrunc double %i.ax to float
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ay, ptr %i.az, align 8, !tbaa !33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !13 ; 3 uses
  %i.bc = load <2 x double>, ptr %3, align 8, !tbaa !34 ; 2 uses
  %i.bd = insertelement <2 x double> %i.bc, double %i.bb, i64 1
  %i.be = insertelement <2 x double> %i.bc, double %i.bb, i64 0
  %i.bf = fadd <2 x double> %i.bd, %i.be
  %i.bg = fmul <2 x double> %i.bf, splat (double 6.250000e+00)
  %i.bh = fdiv <2 x double> %i.bg, splat (double 1.023000e+03)
  %i.bi = fptrunc <2 x double> %i.bh to <2 x float>
  %i.bj = fneg <2 x float> %i.bi
  store <2 x float> %i.bj, ptr %0, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !12
  %i.bm = fadd double %i.bb, %i.bl
  %i.bn = fmul double %i.bm, 6.250000e+00
  %i.bo = fdiv double %i.bn, 1.023000e+03
  %i.bp = fptrunc double %i.bo to float
  %i.bq = fneg float %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bq, ptr %i.br, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !13 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !12
  %i.bw = fmul double %i.bt, %i.bv                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.by = fcmp oeq double %i.bw, 0.000000e+00
  %i.bz = fdiv double 1.000000e+00, %i.bw
  %i.ca = select i1 %i.by, double 1.000000e+00, double %i.bz
  %i.cb = load double, ptr %i.m, align 8, !tbaa !10
  %i.cc = load <2 x double>, ptr %i.l, align 8, !tbaa !34 ; 2 uses
  %i.cd = insertelement <2 x double> %i.cc, double %i.bt, i64 1
  %i.ce = insertelement <2 x double> %i.cc, double %i.bt, i64 0
  %i.cf = fmul <2 x double> %i.cd, %i.ce          ; 2 uses
  %i.cg = fcmp oeq <2 x double> %i.cf, zeroinitializer
  %i.ch = fdiv <2 x double> splat (double 1.000000e+00), %i.cf
  %i.ci = select <2 x i1> %i.cg, <2 x double> splat (double 1.000000e+00), <2 x double> %i.ch
  %i.cj = insertelement <4 x double> poison, double %i.ca, i64 2
  %i.ck = shufflevector <2 x double> %i.ci, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cp = load <2 x double>, ptr %i.co, align 8, !tbaa !34 ; 3 uses
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cr = extractelement <2 x double> %i.cp, i64 1
  %i.cs = fmul double %i.cr, %i.cb                ; 2 uses
  %i.ct = fptrunc double %i.cs to float
  %i.cu = insertelement <4 x double> %i.cj, double %i.cs, i64 3
  %i.cv = shufflevector <4 x double> %i.ck, <4 x double> %i.cu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cw = fptrunc <4 x double> %i.cv to <4 x float>
  store <4 x float> %i.cw, ptr %i.bx, align 4, !tbaa !33
  %i.cx = insertelement <2 x double> %i.cp, double %i.cm, i64 0
  %i.cy = fmul <2 x double> %i.cx, %i.cq
  %i.cz = fptrunc <2 x double> %i.cy to <2 x float>
  store <2 x float> %i.cz, ptr %i.cn, align 4, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge207, %bb.d, %bb.c
  %i.da = phi float [ %.pre209, %._crit_edge207 ], [ %i.ct, %bb.d ], [ %i.at, %bb.c ]
  %i.db = fcmp oeq float %i.da, 1.000000e+00
  br i1 %i.db, label %bb.f, label %.thread210

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !33
  %i.de = fcmp oeq float %i.dd, 1.000000e+00
  br i1 %i.de, label %bb.g, label %.thread210

.thread210:                                       ; preds = %bb.f, %bb.e
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.df, align 8, !tbaa !35
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !15
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double 5.000000e-01, double 5.000000e-01)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.di, ptr %i.dj, align 8, !tbaa !36
  br label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !33
  %i.dm = fcmp oeq float %i.dl, 1.000000e+00      ; 2 uses
  %i.dn = zext i1 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %i.dn, ptr %i.do, align 8, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !15
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double 5.000000e-01, double 5.000000e-01)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.dr, ptr %i.ds, align 8, !tbaa !36
  %or.cond198 = select i1 %narrow, i1 %i.dm, i1 false
  br i1 %or.cond198, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.dt = load float, ptr %0, align 8, !tbaa !33
  %i.du = fcmp oeq float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !33
  %i.dx = fcmp oeq float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !33
  %i.ea = fcmp oeq float %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !33
  %i.ed = fcmp oeq float %i.ec, 1.000000e+00
  br i1 %i.ed, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !33
  %i.eg = fcmp oeq float %i.ef, 1.000000e+00
  br i1 %i.eg, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !33
  %i.ej = fcmp oeq float %i.ei, 1.000000e+00
  br label %.sink.split

bb.n:                                             ; preds = %bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  switch i32 %2, label %._crit_edge204 [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

._crit_edge204:                                   ; preds = %bb.n
  %.phi.trans.insert205 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre206 = load float, ptr %.phi.trans.insert205, align 4, !tbaa !33
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eo = load double, ptr %i.en, align 8, !tbaa !13 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eq = load <2 x double>, ptr %i.ek, align 8, !tbaa !34 ; 2 uses
  %i.er = insertelement <2 x double> %i.eq, double %i.eo, i64 1
  %i.es = insertelement <2 x double> %i.eq, double %i.eo, i64 0
  %i.et = fadd <2 x double> %i.er, %i.es
  %i.eu = fptrunc <2 x double> %i.et to <2 x float>
  store <2 x float> %i.eu, ptr %i.ep, align 8, !tbaa !33
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !12
  %i.ex = fadd double %i.eo, %i.ew
  %i.ey = fptrunc double %i.ex to float
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ey, ptr %i.ez, align 8, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !13 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_523GradingPrimaryPreRender6updateENS_12GradingStyleENS_18TransformDirectionERKNS_14GradingPrimaryE:bb.a
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = fdiv <2 x double> %i.lq, %i.kd
  %i.ls = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.lt = shufflevector <2 x double> %i.ls, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lu = fadd <2 x double> %i.lt, %i.lr
  %i.lv = insertelement <2 x double> %i.lh, double %i.kz, i64 0
  %i.lw = fadd <2 x double> %i.lv, %i.lu
  %i.lx = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.ly = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lz = fsub <2 x double> %i.lw, %i.ly          ; 2 uses
  %i.ma = fcmp oeq <2 x double> %i.lz, zeroinitializer
  %i.mb = select <2 x i1> %i.ma, <2 x double> splat (double 1.000000e+00), <2 x double> %i.lz
  %i.mc = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.me = fdiv <2 x double> %i.md, %i.mb
  %i.mf = fptrunc <2 x double> %i.me to <2 x float>
  store <2 x float> %i.mf, ptr %i.lo, align 8, !tbaa !33
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !13 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mj = load <2 x double>, ptr %i.ke, align 8, !tbaa !34 ; 2 uses
  %i.mk = insertelement <2 x double> %i.mj, double %i.mh, i64 1
  %i.ml = insertelement <2 x double> %i.mj, double %i.mh, i64 0
  %i.mm = fmul <2 x double> %i.mk, %i.ml
  %i.mn = fdiv <2 x double> splat (double 1.000000e+00), %i.mm
  %i.mo = fptrunc <2 x double> %i.mn to <2 x float> ; 2 uses
  store <2 x float> %i.mo, ptr %i.mi, align 8, !tbaa !33
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !12
  %i.mr = fmul double %i.mh, %i.mq
  %i.ms = fdiv double 1.000000e+00, %i.mr
  %i.mt = fptrunc double %i.ms to float
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.mt, ptr %i.mu, align 8, !tbaa !33
  %i.mv = extractelement <2 x float> %i.mo, i64 0
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.mw = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !13 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.mz = load double, ptr %i.my, align 8, !tbaa !13 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.nb = load <2 x double>, ptr %i.jn, align 8, !tbaa !34 ; 2 uses
  %i.nc = insertelement <2 x double> %i.nb, double %i.mx, i64 1
  %i.nd = insertelement <2 x double> %i.nb, double %i.mx, i64 0
  %i.ne = fadd <2 x double> %i.nc, %i.nd
  %i.nf = insertelement <2 x double> poison, double %i.mz, i64 0
  %i.ng = shufflevector <2 x double> %i.nf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nh = fadd <2 x double> %i.ne, %i.ng
  %i.ni = load <2 x double>, ptr %i.jo, align 8, !tbaa !34 ; 2 uses
  %i.nj = fadd <2 x double> %i.nh, %i.ni
  %i.nk = fptrunc <2 x double> %i.nj to <2 x float>
  %i.nl = fneg <2 x float> %i.nk
  store <2 x float> %i.nl, ptr %i.na, align 8, !tbaa !33
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !12
  %i.no = fadd double %i.mx, %i.nn
  %i.np = fadd double %i.mz, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !12 ; 2 uses
  %i.ns = fadd double %i.nr, %i.np
  %i.nt = fptrunc double %i.ns to float
  %i.nu = fneg float %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.nu, ptr %i.nv, align 8, !tbaa !33
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !19 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !20 ; 3 uses
  %i.oa = fsub double %i.nx, %i.nz                ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.oc = insertelement <2 x double> poison, double %i.nx, i64 0
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.of = insertelement <2 x double> %i.oe, double %i.kb, i64 0
  %i.og = fdiv <2 x double> %i.od, %i.of
  %i.oh = fadd <2 x double> %i.ng, %i.ni
  %i.oi = insertelement <2 x double> poison, double %i.nz, i64 0
  %i.oj = shufflevector <2 x double> %i.oi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ok = fsub <2 x double> %i.oh, %i.oj
  %i.ol = fadd <2 x double> %i.og, %i.ok
  %i.om = insertelement <2 x double> poison, double %i.oa, i64 0
  %i.on = shufflevector <2 x double> %i.om, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oo = fdiv <2 x double> %i.ol, %i.on
  %i.op = fptrunc <2 x double> %i.oo to <2 x float>
  store <2 x float> %i.op, ptr %i.ob, align 4, !tbaa !33
  %i.oq = extractelement <2 x double> %i.kd, i64 1
  %i.or = fdiv double %i.nx, %i.oq
  %i.os = fadd double %i.mz, %i.nr
  %i.ot = fsub double %i.os, %i.nz
  %i.ou = fadd double %i.or, %i.ot
  %i.ov = fdiv double %i.ou, %i.oa
  %i.ow = fptrunc double %i.ov to float
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.ow, ptr %i.ox, align 4, !tbaa !33
  %i.oy = load double, ptr %i.ke, align 8, !tbaa !10
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pa = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !11
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.pd = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.pe = load <2 x double>, ptr %i.pd, align 8, !tbaa !34 ; 3 uses
  %i.pf = shufflevector <2 x double> %i.pe, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pg = extractelement <2 x double> %i.pe, i64 1
  %i.ph = fmul double %i.pg, %i.oy
  %i.pi = fptrunc double %i.ph to float           ; 2 uses
  store float %i.pi, ptr %i.oz, align 8, !tbaa !33
  %i.pj = insertelement <2 x double> %i.pe, double %i.pb, i64 0
  %i.pk = fmul <2 x double> %i.pj, %i.pf
  %i.pl = fptrunc <2 x double> %i.pk to <2 x float>
  store <2 x float> %i.pl, ptr %i.pc, align 4, !tbaa !33
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %bb.ad, %bb.ac
  %i.pm = phi float [ %.pre, %._crit_edge ], [ %i.pi, %bb.ad ], [ %i.mv, %bb.ac ]
  %i.pn = fcmp oeq float %i.pm, 1.000000e+00
  br i1 %i.pn, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.pp = load float, ptr %i.po, align 4, !tbaa !33
  %i.pq = fcmp oeq float %i.pp, 1.000000e+00
  br i1 %i.pq, label %bb.ag, label %.thread

.thread:                                          ; preds = %bb.af, %bb.ae
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.pr, align 8, !tbaa !35
  br label %.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pt = load float, ptr %i.ps, align 8, !tbaa !33
  %i.pu = fcmp oeq float %i.pt, 1.000000e+00      ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.pw = zext i1 %i.pu to i8
  store i8 %i.pw, ptr %i.pv, align 8, !tbaa !35
  %i.px = select i1 %narrow, i1 %i.pu, i1 false
  br i1 %i.px, label %bb.ah, label %.sink.split

bb.ah:                                            ; preds = %bb.ag
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pz = load float, ptr %i.py, align 4, !tbaa !33
  %i.qa = fcmp oeq float %i.pz, 1.000000e+00
  br i1 %i.qa, label %bb.ai, label %.sink.split

bb.ai:                                            ; preds = %bb.ah
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qc = load float, ptr %i.qb, align 8, !tbaa !33
  %i.qd = fcmp oeq float %i.qc, 1.000000e+00
  br i1 %i.qd, label %bb.aj, label %.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !33
  %i.qg = fcmp oeq float %i.qf, 1.000000e+00
  br i1 %i.qg, label %bb.ak, label %.sink.split

bb.ak:                                            ; preds = %bb.aj
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qi = load float, ptr %i.qh, align 8, !tbaa !33
  %i.qj = fcmp oeq float %i.qi, 0.000000e+00
  br i1 %i.qj, label %bb.al, label %.sink.split

bb.al:                                            ; preds = %bb.ak
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !33
  %i.qm = fcmp oeq float %i.ql, 0.000000e+00
  br i1 %i.qm, label %bb.am, label %.sink.split

bb.am:                                            ; preds = %bb.al
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.qo = load float, ptr %i.qn, align 8, !tbaa !33
  %i.qp = fcmp oeq float %i.qo, 0.000000e+00
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.ag, %.thread, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %.thread210
  %.sink.shrunk = phi i1 [ %i.jm, %bb.aa ], [ false, %.thread210 ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ %i.ej, %bb.m ], [ false, %bb.g ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ah ], [ %i.qp, %bb.am ], [ false, %bb.ag ], [ false, %.thread ]
  %.sink = zext i1 %.sink.shrunk to i8
  store i8 %.sink, ptr %i.k, align 1, !tbaa !31
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

declare double @exp2(double) local_unnamed_addr

declare float @exp2f(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"_ZTSN16OpenColorIO_v2_511GradingRGBME", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!10 = !{!9, !8, i64 0}
!11 = !{!9, !8, i64 8}
!12 = !{!9, !8, i64 16}
!13 = !{!9, !8, i64 24}
!14 = !{!"_ZTSN16OpenColorIO_v2_514GradingPrimaryE", !9, i64 0, !9, i64 32, !9, i64 64, !9, i64 96, !9, i64 128, !9, i64 160, !9, i64 192, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264}
!15 = !{!14, !8, i64 232}
!16 = !{!14, !8, i64 224}
!17 = !{!14, !8, i64 264}
!18 = !{!14, !8, i64 256}
!19 = !{!14, !8, i64 248}
!20 = !{!14, !8, i64 240}
!21 = !{!"any pointer", !4, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!24 = !{!"long", !4, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !4, i64 16}
!26 = !{!25, !22, i64 0}
!27 = !{!4, !4, i64 0}
!28 = !{!"_ZTSSt5arrayIfLm3EE", !4, i64 0}
!29 = !{!"bool", !4, i64 0}
!30 = !{!"_ZTSN16OpenColorIO_v2_523GradingPrimaryPreRenderE", !28, i64 0, !28, i64 12, !28, i64 24, !28, i64 36, !28, i64 48, !28, i64 60, !8, i64 72, !29, i64 80, !29, i64 81}
!31 = !{!30, !29, i64 81}
!32 = !{!"float", !4, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!8, !8, i64 0}
!35 = !{!30, !29, i64 80}
!36 = !{!30, !8, i64 72}
!37 = !{i8 0, i8 2}
!38 = !{}
!39 = !{!14, !8, i64 192}
!40 = !{!14, !8, i64 200}
end_hunk_1
