Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/EmbeddedBuiltinDefinitions?download=true
inline.NumInlined: 66
inline.NumDeleted: 35
begin_hunk_0_@_ZN4Luau26getBuiltinDefinitionSourceB5cxx11Ev:.noexc.i
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 2073, ptr %i.a, align 8, !tbaa !25
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  %i.d = load i64, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2073) %i.c, ptr noundef nonnull align 1 dereferenceable(2073) @.str, i64 2073, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.g = load i64, ptr %i.e, align 8, !tbaa !18
  %i.h = add i64 %i.g, -4611686018427387071
  %i.i = icmp ult i64 %i.h, 833
  br i1 %i.i, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.noexc.i
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.60, i64 noundef 833)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !18
  %i.l = add i64 %i.k, -4611686018427385953
  %i.m = icmp ult i64 %i.l, 1951
  br i1 %i.m, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.61, i64 noundef 1951)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit9 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6
  %i.o = load i64, ptr %i.e, align 8, !tbaa !18
  %i.p = add i64 %i.o, -4611686018427387263
  %i.q = icmp ult i64 %i.p, 641
  br i1 %i.q, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit9
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.62, i64 noundef 641)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i10
  %i.s = load i64, ptr %i.e, align 8, !tbaa !18
  %i.t = add i64 %i.s, -4611686018427387466
  %i.u = icmp ult i64 %i.t, 438
  br i1 %i.u, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.63, i64 noundef 438)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14
  %i.w = load i64, ptr %i.e, align 8, !tbaa !18
  %i.x = add i64 %i.w, -4611686018427387080
  %i.y = icmp ult i64 %i.x, 824
  br i1 %i.y, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.64, i64 noundef 824)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18
  %i.aa = load i64, ptr %i.e, align 8, !tbaa !18
  %i.ab = add i64 %i.aa, -4611686018427387567
  %i.ac = icmp ult i64 %i.ab, 337
  br i1 %i.ac, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.65, i64 noundef 337)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !18
  %i.af = add i64 %i.ae, -4611686018427387502
  %i.ag = icmp ult i64 %i.af, 402
  br i1 %i.ag, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.66, i64 noundef 402)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26
  %i.ai = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !22, !range !23, !noundef !24
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load i8, ptr @_ZN5FFlag18LuauIntegerLibraryE, align 8, !range !23
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond = select i1 %i.aj, i1 %i.al, i1 false
  %i.am = load i64, ptr %i.e, align 8, !tbaa !18  ; 2 uses
  br i1 %or.cond, label %bb.a, label %bb.c

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29
  %i.an = add i64 %i.am, -4611686018427385917
  %i.ao = icmp ult i64 %i.an, 1987
  br i1 %i.ao, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.invoke

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.invoke, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i10, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.b
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.as = load i64, ptr %i.b, align 8, !tbaa !17
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit29
  %i.au = add i64 %i.am, -4611686018427386062
  %i.av = icmp ult i64 %i.au, 1842
  br i1 %i.av, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.invoke: ; preds = %bb.a, %bb.c
  %i.aw = phi ptr [ @.str.68, %bb.c ], [ @.str.67, %bb.a ]
  %i.ax = phi i64 [ 1842, %bb.c ], [ 1987, %bb.a ]
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.aw, i64 noundef %i.ax)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i34.invoke
  %i.az = load i64, ptr %i.e, align 8, !tbaa !18
  %i.ba = add i64 %i.az, -4611686018427386834
  %i.bb = icmp ult i64 %i.ba, 1070
  br i1 %i.bb, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33
  %i.bc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.69, i64 noundef 1070)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i38
  %i.bd = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !22, !range !23, !noundef !24
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = load i8, ptr @_ZN5FFlag18LuauIntegerLibraryE, align 8, !range !23
  %i.bg = trunc nuw i8 %i.bf to i1
  %or.cond52 = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond52, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit45

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !18
  %i.bi = add i64 %i.bh, -4611686018427385585
  %i.bj = icmp ult i64 %i.bi, 2319
  br i1 %i.bj, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i42: ; preds = %bb.d
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.70, i64 noundef 2319)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit45 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit41
  %i.bl = load i8, ptr @_ZN5FFlag27DebugLuauUserDefinedClassesE, align 8, !tbaa !22, !range !23, !noundef !24
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = load i8, ptr @_ZN5FFlag41LuauAllowGlobalDeclarationToBeCalledClassE, align 8, !range !23
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond54 = select i1 %i.bm, i1 %i.bo, i1 false
  br i1 %or.cond54, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit49

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit45
  %i.bp = load i64, ptr %i.e, align 8, !tbaa !18
  %i.bq = add i64 %i.bp, -4611686018427387779
  %i.br = icmp ult i64 %i.bq, 125
  br i1 %i.br, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46

.invoke:                                          ; preds = %.noexc.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit25, %bb.a, %bb.e, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit33, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #8
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46: ; preds = %bb.e
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.77, i64 noundef 125)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit49 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit45
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ap
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau31getTypeFunctionDefinitionSourceB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11.invoke:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.a, align 8, !tbaa !17
  %i.c = load i8, ptr @_ZN5FFlag23LuauUdtfTypeIsSubtypeOfE, align 8, !tbaa !22, !range !23, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1                  ; 3 uses
  %i.e = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !range !23
  %i.f = trunc nuw i8 %i.e to i1                  ; 3 uses
  %or.cond = select i1 %i.d, i1 %i.f, i1 false    ; 2 uses
  %spec.select = select i1 %or.cond, ptr @.str.71, ptr @.str.72
  %spec.select24 = select i1 %or.cond, i64 2138, i64 2126
  %.str.73..str.74 = select i1 %i.f, ptr @.str.73, ptr @.str.74
  %. = select i1 %i.f, i64 2085, i64 2073
  %i.g = select i1 %i.d, ptr %spec.select, ptr %.str.73..str.74
  %i.h = select i1 %i.d, i64 %spec.select24, i64 %.
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.g, i64 noundef %i.h)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.a ; 0 uses

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11.invoke, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19.invoke
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.a, align 8, !tbaa !17
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i11.invoke
  %i.o = load i8, ptr @_ZN5FFlag16LuauIntegerType2E, align 8, !tbaa !22, !range !23, !noundef !24
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.r = add i64 %i.q, -4611686018427387051
  %i.s = icmp ult i64 %i.r, 853
  br i1 %i.s, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19.invoke

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.t = add i64 %i.q, -4611686018427387070
  %i.u = icmp ult i64 %i.t, 834
  br i1 %i.u, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19.invoke

.invoke:                                          ; preds = %bb.c, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.79) #8
          to label %.cont unwind label %bb.a

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19.invoke: ; preds = %bb.c, %bb.b
  %i.v = phi ptr [ @.str.75, %bb.b ], [ @.str.76, %bb.c ]
  %i.w = phi i64 [ 853, %bb.b ], [ 834, %bb.c ]
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.v, i64 noundef %i.w)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18 unwind label %bb.a ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19.invoke
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !14, i64 8, !5, i64 16}
!16 = !{!15, !11, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!15, !14, i64 8}
!19 = !{!"bool", !5, i64 0}
!20 = !{!"p1 _ZTSN4Luau6FValueIbEE", !10, i64 0}
!21 = !{!"_ZTSN4Luau6FValueIbEE", !19, i64 0, !19, i64 1, !11, i64 8, !20, i64 16, !6, i64 24}
!22 = !{!21, !19, i64 0}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!14, !14, i64 0}
end_hunk_0
