Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/sx_function?download=true
inline.NumInlined: 11328
inline.NumDeleted: 2796
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !177
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !161 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !176  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.e, ptr %i.a, align 8, !tbaa !178
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !161
  %i.h = load i64, ptr %i.a, align 8, !tbaa !178
  store i64 %i.h, ptr %i.b, align 8, !tbaa !162
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !162
  store i8 %i.j, ptr %i.i, align 1, !tbaa !162
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !178  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !176
  %i.m = load ptr, ptr %.016, align 8, !tbaa !161
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1136

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #30
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #31
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @remainder(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @erf(double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minnum.f64(double, double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cosh(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asinh(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acosh(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atanh(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZN6casadi6erfinvEd(double noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = fcmp ult double %0, 1.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oeq double %0, 1.000000e+00
  %i.c = select i1 %i.b, double +inf, double +qnan
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp ugt double %0, -1.000000e+00
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = fcmp oeq double %0, -1.000000e+00
  %i.f = select i1 %i.e, double -inf, double +qnan
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = fcmp olt double %0, f0xBFE6666666666666
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = fadd nnan ninf double %0, 1.000000e+00
  %i.i = fmul nnan double %i.h, 5.000000e-01
  %i.j = tail call double @log(double noundef %i.i) #28
  %i.k = fneg double %i.j
  %i.l = tail call double @sqrt(double noundef %i.k) #28 ; 4 uses
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double f0x3FFA42F34D0301D7, double f0x400B6FC13E8A6585)
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.l, double f0xBFF9FF9DF367E38B)
  %i.o = insertelement <2 x double> <double poison, double f0x3FFA316E01655ACE>, double %i.n, i64 0
  %i.p = insertelement <2 x double> poison, double %i.l, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> %i.q, <2 x double> <double f0xBFFF888FFFF9054B, double f0x400C59E294B52E4B>) ; 2 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = fneg double %i.s
  %i.u = extractelement <2 x double> %i.r, i64 1
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.l, double 1.000000e+00)
  %i.w = fdiv double %i.t, %i.v
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.x = fcmp olt double %0, f0x3FE6666666666666
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = fmul double %0, %0                       ; 6 uses
  %i.z = tail call nnan double @llvm.fmuladd.f64(double %i.y, double f0xBFC1FD52E9286F82, double f0x3FED449B6C715C28)
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double %i.y, double f0xBFFA535A1FCAE55B)
  %i.ab = insertelement <2 x double> <double poison, double f0xBFD50FEF0607ABF1>, double %i.aa, i64 0
  %i.ac = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ad, <2 x double> <double f0x3FEC5BF883814BBC, double f0x3F890BF01AA717A9>) ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 0
  %i.ag = fmul double %0, %i.af
  %i.ah = extractelement <2 x double> %i.ae, i64 1
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.y, double f0x3FF7155790BE315C)
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.y, double f0xC000F270054B995C)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.y, double 1.000000e+00)
  %i.al = fdiv double %i.ag, %i.ak
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = fsub ninf double 1.000000e+00, %0
  %i.an = fmul double %i.am, 5.000000e-01
  %i.ao = tail call double @log(double noundef %i.an) #28
  %i.ap = fneg double %i.ao
  %i.aq = tail call double @sqrt(double noundef %i.ap) #28
  %i.ar = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.aq, i64 0 ; 2 uses
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> <double f0x3FFA42F34D0301D7, double 0.000000e+00>, <2 x double> <double f0x400B6FC13E8A6585, double f0x3FFA316E01655ACE>)
  %i.at = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.at, <2 x double> <double f0xBFF9FF9DF367E38B, double f0x400C59E294B52E4B>)
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.at, <2 x double> <double f0xBFFF888FFFF9054B, double 1.000000e+00>) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = extractelement <2 x double> %i.av, i64 1
  %i.ay = fdiv double %i.aw, %i.ax
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.040 = phi double [ %i.al, %bb.h ], [ %i.ay, %bb.i ] ; 4 uses
  %i.az = tail call double @erf(double noundef %.040) #28
  %i.ba = fsub double %i.az, %0
  %i.bb = fneg double %.040
  %i.bc = fmul double %.040, %i.bb
  %i.bd = tail call double @exp(double noundef %i.bc) #28
  %i.be = fmul double %i.bd, f0x3FF20DD750429B6D
  %i.bf = fdiv double %i.ba, %i.be
  %i.bg = fsub double %.040, %i.bf                ; 4 uses
  %i.bh = tail call double @erf(double noundef %i.bg) #28
  %i.bi = fsub double %i.bh, %0
  %i.bj = fneg double %i.bg
  %i.bk = fmul double %i.bg, %i.bj
  %i.bl = tail call double @exp(double noundef %i.bk) #28
  %i.bm = fmul double %i.bl, f0x3FF20DD750429B6D
  %i.bn = fdiv double %i.bi, %i.bm
  %i.bo = fsub double %i.bg, %i.bn
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.d, %bb.b
  %.0 = phi double [ %i.c, %bb.b ], [ %i.f, %bb.d ], [ %i.w, %bb.f ], [ %i.bo, %bb.j ]
  ret double %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef double @_ZN6casadi7printmeEdd(double noundef %0, double noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv() ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !371
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv() ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.353, i64 noundef 3) ; 0 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, double noundef %1)
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.354, i64 noundef 3) ; 0 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv() ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.n = getelementptr i8, ptr %i.m, i64 -24      ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 16, ptr %i.q, align 8, !tbaa !373
  %i.r = load i64, ptr %i.n, align 8
  %i.s = getelementptr inbounds i8, ptr %i.l, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !371
  %i.v = and i32 %i.u, -261
  %i.w = or disjoint i32 %i.v, 256
  store i32 %i.w, ptr %i.t, align 8, !tbaa !372
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv()
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, double noundef %0) ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !67
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !212
  %.not.i1.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 67
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !162
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ae)
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef signext i8 %i.al(ptr noundef nonnull align 8 dereferenceable(570) %i.ae, i8 noundef signext 10), !inline_history !4
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.ai, %bb.c ], [ %i.am, %bb.d ]
  %i.an = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i8 noundef signext %.0.i.i.i)
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an) ; 0 uses
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi4uoutEv() ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !67
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i32 %i.g, ptr %i.au, align 8, !tbaa !371
  ret double %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log1p(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @expm1(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #18

declare noundef i32 @_ZNK6casadi8FunctionclEPPKdPPdPxS4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6casadi16operation_getterINS_13SmoothCheckerEbEET0_x(i64 noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = trunc i64 %0 to i32
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 4, label %bb.c
    i32 5, label %bb.c
    i32 6, label %bb.c
    i32 7, label %bb.c
    i32 8, label %bb.c
    i32 9, label %bb.c
    i32 10, label %bb.c
    i32 11, label %bb.c
    i32 12, label %bb.c
    i32 13, label %bb.c
    i32 14, label %bb.c
    i32 15, label %bb.c
    i32 16, label %bb.c
    i32 17, label %bb.c
    i32 18, label %bb.c
    i32 96, label %bb.c
    i32 95, label %bb.c
    i32 94, label %bb.c
    i32 93, label %bb.c
    i32 91, label %bb.c
    i32 90, label %bb.c
    i32 89, label %bb.c
    i32 88, label %bb.c
    i32 87, label %bb.c
    i32 86, label %bb.c
    i32 85, label %bb.c
    i32 29, label %bb.c
    i32 84, label %bb.c
    i32 83, label %bb.c
    i32 82, label %bb.c
    i32 33, label %bb.c
    i32 34, label %bb.c
    i32 35, label %bb.c
    i32 36, label %bb.c
    i32 37, label %bb.c
    i32 38, label %bb.c
    i32 39, label %bb.c
    i32 40, label %bb.c
    i32 41, label %bb.c
    i32 42, label %bb.c
    i32 43, label %bb.c
    i32 44, label %bb.c
    i32 45, label %bb.c
    i32 46, label %bb.c
    i32 47, label %bb.c
    i32 48, label %bb.c
    i32 49, label %bb.c
    i32 50, label %bb.c
    i32 51, label %bb.c
    i32 52, label %bb.c
    i32 53, label %bb.c
    i32 54, label %bb.c
    i32 55, label %bb.c
    i32 56, label %bb.c
    i32 57, label %bb.c
    i32 58, label %bb.c
    i32 59, label %bb.c
    i32 60, label %bb.c
    i32 61, label %bb.c
    i32 62, label %bb.c
    i32 63, label %bb.c
    i32 64, label %bb.c
end_hunk_0
