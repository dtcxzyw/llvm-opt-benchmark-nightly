Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Error?download=true
inline.NumInlined: 3716
inline.NumDeleted: 1352
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZL23wrongNumberOfArgsStringB5cxx11mSt8optionalImEmPKcb:bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit182
  %i.lu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.160, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit186 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit186: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i183
  ret void

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %bb.b
  %.pn38 = phi { ptr, i32 } [ %i.f, %bb.b ], [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %.pn32.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134 ], [ %.pn27.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ]
  %i.lv = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.b
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.bp
  %i.lx = load i64, ptr %i.b, align 8, !tbaa !51
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.ly) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  resume { ptr, i32 } %.pn38
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_14UnknownRequireE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !70   ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 33, ptr %i.a, align 8, !tbaa !158
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !50
  %i.g = load i64, ptr %i.a, align 8, !tbaa !158  ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.f, ptr noundef nonnull align 1 dereferenceable(33) @.str.164, i64 33, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

common.resume:                                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  resume { ptr, i32 } %i.v

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  %i.j = load ptr, ptr %2, align 8, !tbaa !50, !noalias !853
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !69, !alias.scope !854
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.l, align 8, !tbaa !70, !alias.scope !854
  store i8 0, ptr %i.k, align 8, !tbaa !51, !alias.scope !854
  %i.m = add i64 %i.c, 17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.m)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !70, !alias.scope !854
  %i.o = add i64 %i.n, -4611686018427387887
  %i.p = icmp ult i64 %i.o, 17
  br i1 %i.p, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.c
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.165, i64 noundef 17)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.r = load i64, ptr %i.l, align 8, !tbaa !70, !alias.scope !854
  %i.s = sub i64 4611686018427387903, %i.r
  %i.t = icmp ult i64 %i.s, %i.c
  br i1 %i.t, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.cont.i.i unwind label %bb.d

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.j, i64 noundef %i.c)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %0, align 8, !tbaa !50, !alias.scope !854 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.k
  br i1 %i.x, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.k, align 8, !tbaa !51, !alias.scope !854
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #34
  br label %common.resume

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.noexc.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_30IncorrectGenericParameterCountE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  %i.c = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !70   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.e, ptr %i.a, align 8, !tbaa !158
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !50
  %i.h = load i64, ptr %i.a, align 8, !tbaa !158
  store i64 %i.h, ptr %i.b, align 8, !tbaa !51
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !51
  store i8 %i.j, ptr %i.i, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !158  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 12 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !70
  %i.m = load ptr, ptr %3, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !310  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !310
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !311
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !311
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit65, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = load i64, ptr %i.l, align 8, !tbaa !70
  %i.z = icmp eq i64 %i.y, 4611686018427387903
  br i1 %i.z, label %.loopexit204.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.166, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !310 ; 3 uses
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !310 ; 3 uses
  %.not154176 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not154176, label %._crit_edge.thread284, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.sroa.02.0.copyload.peel = load ptr, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %.sroa.02.0.copyload.peel)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp299.loopexit.split-lp

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56.peel
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %i.ag = load i64, ptr %i.l, align 8, !tbaa !70
  %i.ah = sub i64 4611686018427387903, %i.ag
  %i.ai = icmp ult i64 %i.ah, %i.af
  br i1 %i.ai, label %.loopexit197, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.f
  %i.aj = load ptr, ptr %4, align 8, !tbaa !50
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.aj, i64 noundef %i.af)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.al = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ae
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !51
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %.not154.peel = icmp eq ptr %i.ap, %i.ac
  br i1 %.not154.peel, label %._crit_edge.thread, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !311 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !311 ; 2 uses
  %.not155179 = icmp eq ptr %i.ar, %i.at
  br i1 %.not155179, label %._crit_edge184, label %.lr.ph183.thread

._crit_edge.thread284:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !311 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !311 ; 2 uses
  %.not155179285 = icmp eq ptr %i.av, %i.ax
  br i1 %.not155179285, label %._crit_edge184, label %.lr.ph183.thread286

.lr.ph183.thread286:                              ; preds = %._crit_edge.thread284
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.0.copyload.peel287 = load ptr, ptr %i.av, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit69.peel

._crit_edge.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !311 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !311 ; 2 uses
  %.not155179280 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not155179280, label %._crit_edge184, label %.lr.ph183.thread

.lr.ph183.thread:                                 ; preds = %._crit_edge, %._crit_edge.thread
  %i.be = phi ptr [ %i.bb, %._crit_edge.thread ], [ %i.ar, %._crit_edge ] ; 2 uses
  %i.bf = phi ptr [ %i.bd, %._crit_edge.thread ], [ %i.at, %._crit_edge ]
  %i.bg = load i64, ptr %i.l, align 8, !tbaa !70
  %i.bh = and i64 %i.bg, -2
  %i.bi = icmp eq i64 %i.bh, 4611686018427387902
  br i1 %i.bi, label %.loopexit204.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66.peel: ; preds = %.lr.ph183.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.0.copyload.peel282 = load ptr, ptr %i.be, align 8
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.167, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit69.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit69.peel: ; preds = %.lr.ph183.thread286, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66.peel
  %.sroa.0.0.copyload.peel283 = phi ptr [ %.sroa.0.0.copyload.peel282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66.peel ], [ %.sroa.0.0.copyload.peel287, %.lr.ph183.thread286 ]
  %i.bm = phi ptr [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66.peel ], [ %i.az, %.lr.ph183.thread286 ] ; 6 uses
  %i.bn = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66.peel ], [ %i.ay, %.lr.ph183.thread286 ] ; 2 uses
  %i.bo = phi ptr [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66.peel ], [ %i.av, %.lr.ph183.thread286 ]
  %i.bp = phi ptr [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66.peel ], [ %i.ax, %.lr.ph183.thread286 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %.sroa.0.0.copyload.peel283)
          to label %bb.g unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit69.peel
  %i.bq = load i64, ptr %i.bn, align 8, !tbaa !70 ; 2 uses
  %i.br = load i64, ptr %i.l, align 8, !tbaa !70
  %i.bs = sub i64 4611686018427387903, %i.br
  %i.bt = icmp ult i64 %i.bs, %i.bq
  br i1 %i.bt, label %.loopexit212, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70.peel: ; preds = %bb.g
  %i.bu = load ptr, ptr %5, align 8, !tbaa !50
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bu, i64 noundef %i.bq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73.peel unwind label %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70.peel
  %i.bw = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bm
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73.peel
  %i.by = load i64, ptr %i.bm, align 8, !tbaa !51
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %.not155.peel = icmp eq ptr %i.ca, %i.bp
  br i1 %.not155.peel, label %._crit_edge184, label %.peel.next202

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0151.0177 = phi ptr [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %.sroa.0151.0177, align 8
  %i.cb = load i64, ptr %i.l, align 8, !tbaa !70
  %i.cc = and i64 %i.cb, -2
  %i.cd = icmp eq i64 %i.cc, 4611686018427387902
  br i1 %i.cd, label %.loopexit204.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53: ; preds = %.peel.next
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.167, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %.sroa.02.0.copyload)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp299.loopexit.split-lp

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56
  %i.cf = load i64, ptr %i.ad, align 8, !tbaa !70 ; 2 uses
  %i.cg = load i64, ptr %i.l, align 8, !tbaa !70
  %i.ch = sub i64 4611686018427387903, %i.cg
  %i.ci = icmp ult i64 %i.ch, %i.cf
  br i1 %i.ci, label %.loopexit197, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit197:                                     ; preds = %bb.h, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc57 unwind label %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %.loopexit197
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.h
  %i.cj = load ptr, ptr %4, align 8, !tbaa !50
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.cj, i64 noundef %i.cf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cl = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ae
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cn = load i64, ptr %i.ae, align 8, !tbaa !51
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0151.0177, i64 24 ; 2 uses
  %.not154 = icmp eq ptr %i.cp, %i.ac
  br i1 %.not154, label %._crit_edge, label %.peel.next, !llvm.loop !855

.loopexit.split-lp.loopexit.split-lp299.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit56.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit197
  %lpad.loopexit.split-lp324 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ae
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp
  %i.cs = load i64, ptr %i.ae, align 8, !tbaa !51
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp299.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  %.pn39 = phi { ptr, i32 } [ %lpad.loopexit.split-lp324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp299.loopexit.split-lp ], [ %lpad.loopexit.split-lp324, %.loopexit.split-lp165.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.loopexit.split-lp.loopexit.split-lp

._crit_edge184:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.peel, %._crit_edge.thread284, %._crit_edge.thread, %._crit_edge
  %i.cu = load i64, ptr %i.l, align 8, !tbaa !70
  %i.cv = icmp eq i64 %i.cu, 4611686018427387903
  br i1 %i.cv, label %.loopexit204.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62: ; preds = %._crit_edge184
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.168, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit65_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit65_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !132
  %.pre217 = load ptr, ptr %i.o, align 8, !tbaa !133
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit65

.peel.next202:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %.sroa.0147.0180 = phi ptr [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.peel ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.0147.0180, align 8
  %i.cx = load i64, ptr %i.l, align 8, !tbaa !70
  %i.cy = and i64 %i.cx, -2
  %i.cz = icmp eq i64 %i.cy, 4611686018427387902
  br i1 %i.cz, label %.loopexit204.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66

.loopexit204.invoke:                              ; preds = %.peel.next, %.peel.next202, %.lr.ph183.thread, %._crit_edge184, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.loopexit204.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit204.cont:                                ; preds = %.loopexit204.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66: ; preds = %.peel.next202
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.167, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %.sroa.0.0.copyload)
          to label %bb.i unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit69
  %i.db = load i64, ptr %i.bn, align 8, !tbaa !70 ; 2 uses
  %i.dc = load i64, ptr %i.l, align 8, !tbaa !70
  %i.dd = sub i64 4611686018427387903, %i.dc
  %i.de = icmp ult i64 %i.dd, %i.db
  br i1 %i.de, label %.loopexit212, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70

.loopexit212:                                     ; preds = %bb.i, %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc71 unwind label %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp

.noexc71:                                         ; preds = %.loopexit212
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70: ; preds = %bb.i
  %i.df = load ptr, ptr %5, align 8, !tbaa !50
  %i.dg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.df, i64 noundef %i.db)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73 unwind label %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70
  %i.dh = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bm
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73
  %i.dj = load i64, ptr %i.bm, align 8, !tbaa !51
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0147.0180, i64 24 ; 2 uses
  %.not155 = icmp eq ptr %i.dl, %i.bp
  br i1 %.not155, label %._crit_edge184, label %.peel.next202, !llvm.loop !856

.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit69.peel
  %lpad.loopexit.split-lp312 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70.peel, %.loopexit212
  %lpad.loopexit.split-lp315 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.bm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp
  %i.do = load i64, ptr %i.bm, align 8, !tbaa !51
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %lpad.loopexit.split-lp312, %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp315, %.loopexit.split-lp157.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i53, %.loopexit204.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i66.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit.split-lp319 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit65_crit_edge, %bb.d
  %i.dq = phi ptr [ %.pre217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit65_crit_edge ], [ %i.p, %bb.d ]
  %i.dr = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i62._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit65_crit_edge ], [ %i.p, %bb.d ]
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = sdiv exact i64 %i.du, 24
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !869
  %.not = icmp eq i64 %i.dv, %i.dx
  br i1 %.not, label %bb.u, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.dy = load ptr, ptr %3, align 8, !tbaa !50, !noalias !870
end_hunk_0
begin_hunk_1_@_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_30IncorrectGenericParameterCountE:bb.a

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::ToStringOptions", align 8 ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %2, i8 0, i64 7, i1 false)
  store i8 1, ptr %i.a, align 1, !tbaa !291
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.b, align 8, !tbaa !292
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr @_ZN4FInt37LuauTableTypeMaximumStringifierLengthE, align 8, !tbaa !295
  %i.e = sext i32 %i.d to i64
  store i64 %i.e, ptr %i.c, align 8, !tbaa !296
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i32, ptr @_ZN4FInt32LuauTypeMaximumStringifierLengthE, align 8, !tbaa !295
  %i.h = sext i32 %i.g to i64
  store i64 %i.h, ptr %i.f, align 8, !tbaa !297
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 5, ptr %i.i, align 8, !tbaa !298
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.k, ptr %i.j, align 8, !tbaa !299
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 1, ptr %i.l, align 8, !tbaa !300
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !265
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.q, ptr %i.p, align 8, !tbaa !301
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 1, ptr %i.r, align 8, !tbaa !302
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !265
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i8 0, i64 56, i1 false)
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarERNS_15ToStringOptionsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(192) %2)
          to label %_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarEONS_15ToStringOptionsE.exit unwind label %bb.i

_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarEONS_15ToStringOptionsE.exit: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !164  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !163  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarEONS_15ToStringOptionsE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.w, %_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarEONS_15ToStringOptionsE.exit ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !51
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.y
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !11

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.v, align 8, !tbaa !164
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarEONS_15ToStringOptionsE.exit
  %i.af = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.w, %_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarEONS_15ToStringOptionsE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !303
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !83 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZN4Luau15ToStringOptionsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.an, align 8, !tbaa !76
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !77
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !79
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #32, !inline_history !12
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !79
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #32, !inline_history !12
  br label %_ZN4Luau15ToStringOptionsD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i1.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.aq, %bb.f ], [ %i.ba, %bb.g ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.h, label %_ZN4Luau15ToStringOptionsD2Ev.exit, !prof !35

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #32
  br label %_ZN4Luau15ToStringOptionsD2Ev.exit

_ZN4Luau15ToStringOptionsD2Ev.exit:               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @_ZN4Luau15ToStringNameMapD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau15ToStringOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %i.bc
}

declare void @_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarERNS_15ToStringOptionsE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_27UnknownPropButFoundLikePropE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.b, ptr noundef nonnull align 1 dereferenceable(13) @.str.174, i64 13, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 13, ptr %i.c, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.d, align 1, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !152
  %.not = icmp eq i64 %i.f, 1
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.175, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !153  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %.not178226 = icmp eq ptr %i.j, %i.k
  br i1 %.not178226, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.l, ptr %4, align 8, !tbaa !69
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !70   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.u, ptr %i.a, align 8, !tbaa !158
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i47.peel, label %._crit_edge.i.i46.peel

.noexc.i47.peel:                                  ; preds = %.lr.ph
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc48.peel unwind label %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc48.peel:                                    ; preds = %.noexc.i47.peel
  store ptr %i.w, ptr %4, align 8, !tbaa !50
  %i.x = load i64, ptr %i.a, align 8, !tbaa !158
  store i64 %i.x, ptr %i.l, align 8, !tbaa !51
  br label %._crit_edge.i.i46.peel

._crit_edge.i.i46.peel:                           ; preds = %.noexc48.peel, %.lr.ph
  %i.y = phi ptr [ %i.w, %.noexc48.peel ], [ %i.l, %.lr.ph ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52.peel
  ]

bb.c:                                             ; preds = %._crit_edge.i.i46.peel
  %i.z = load i8, ptr %i.s, align 1, !tbaa !51
  store i8 %i.z, ptr %i.y, align 1, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52.peel

bb.d:                                             ; preds = %._crit_edge.i.i46.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52.peel: ; preds = %bb.d, %bb.c, %._crit_edge.i.i46.peel
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !158 ; 2 uses
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !70
  %i.ab = load ptr, ptr %4, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store i8 0, ptr %i.ac, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.pre = load ptr, ptr %4, align 8, !tbaa !50, !noalias !902
  %.pre249 = load i64, ptr %i.m, align 8, !tbaa !70, !noalias !902 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  store ptr %i.n, ptr %6, align 8, !tbaa !69, !alias.scope !903
  store i64 0, ptr %i.o, align 8, !tbaa !70, !alias.scope !903
  store i8 0, ptr %i.n, align 8, !tbaa !51, !alias.scope !903
  %i.ad = add i64 %.pre249, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ad)
          to label %bb.e unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52.peel
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !70, !alias.scope !903
  %i.af = icmp eq i64 %i.ae, 4611686018427387903
  br i1 %i.af, label %.invoke.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i56.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i56.peel: ; preds = %bb.e
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i57.peel unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i57.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i56.peel
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !70, !alias.scope !903
  %i.ai = sub i64 4611686018427387903, %i.ah
  %i.aj = icmp ult i64 %i.ai, %.pre249
  br i1 %i.aj, label %.invoke.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i58.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i58.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i57.peel
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %.pre, i64 noundef %.pre249)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit63.peel unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit63.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i58.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.al = load i64, ptr %i.o, align 8, !tbaa !70, !noalias !904
  %i.am = icmp eq i64 %i.al, 4611686018427387903
  br i1 %i.am, label %.loopexit240, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64.peel: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit63.peel
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %.noexc66.peel unwind label %.loopexit.split-lp185.loopexit.split-lp.loopexit.split-lp, !noalias !904 ; 6 uses

.noexc66.peel:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64.peel
  store ptr %i.p, ptr %5, align 8, !tbaa !69, !alias.scope !904
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %.noexc66.peel
  store ptr %i.ao, ptr %5, align 8, !tbaa !50, !alias.scope !904
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !51
  store i64 %i.ar, ptr %i.p, align 8, !tbaa !51, !alias.scope !904
  %.phi.trans.insert.i.peel = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i.peel = load i64, ptr %.phi.trans.insert.i.peel, align 8, !tbaa !70
  br label %bb.g

bb.f:                                             ; preds = %.noexc66.peel
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !70 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.p, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.av, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  %i.aw = phi i64 [ %i.at, %bb.f ], [ %.pre.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.aw, ptr %i.q, align 8, !tbaa !70, !alias.scope !904
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !50
  store i64 0, ptr %i.ax, align 8, !tbaa !70
  store i8 0, ptr %i.ap, align 8, !tbaa !51
  %i.ay = load i64, ptr %i.q, align 8, !tbaa !70  ; 2 uses
  %i.az = load i64, ptr %i.c, align 8, !tbaa !70
  %i.ba = sub i64 4611686018427387903, %i.az
  %i.bb = icmp ult i64 %i.ba, %i.ay
  br i1 %i.bb, label %.loopexit244, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.g
  %i.bc = load ptr, ptr %5, align 8, !tbaa !50
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bc, i64 noundef %i.ay)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp190.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.be = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.p
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.bg = load i64, ptr %i.p, align 8, !tbaa !51
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel
  %i.bi = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.n
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.bk = load i64, ptr %i.n, align 8, !tbaa !51
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.bm = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.l
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.peel
  %i.bo = load i64, ptr %i.l, align 8, !tbaa !51
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bq = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.j) #37 ; 2 uses
  %.not178.peel = icmp eq ptr %i.bq, %i.k
  br i1 %.not178.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !50, !noalias !905
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !70, !noalias !905 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bv, ptr %7, align 8, !tbaa !69, !alias.scope !906
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.bw, align 8, !tbaa !70, !alias.scope !906
  store i8 0, ptr %i.bv, align 8, !tbaa !51, !alias.scope !906
  %i.bx = add i64 %i.bu, 5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bx)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !70, !alias.scope !906
  %i.bz = add i64 %i.by, -4611686018427387899
  %i.ca = icmp ult i64 %i.bz, 5
  br i1 %i.ca, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.h
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.121, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cc = load i64, ptr %i.bw, align 8, !tbaa !70, !alias.scope !906
  %i.cd = sub i64 4611686018427387903, %i.cc
  %i.ce = icmp ult i64 %i.cd, %i.bu
  br i1 %i.ce, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.cont.i.i unwind label %bb.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.bs, i64 noundef %i.bu)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %._crit_edge
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %7, align 8, !tbaa !50, !alias.scope !906 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bv
  br i1 %i.ci, label %.body, label %.body.sink.split

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.sroa.0173.0227 = phi ptr [ %i.eq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.peel ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0173.0227, i64 32
  store ptr %i.l, ptr %4, align 8, !tbaa !69
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !50 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0173.0227, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !70 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.cm, ptr %i.a, align 8, !tbaa !158
  %i.cn = icmp ugt i64 %i.cm, 15
  br i1 %i.cn, label %.noexc.i47, label %._crit_edge.i.i46

.noexc.i47:                                       ; preds = %.peel.next
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc48 unwind label %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc48:                                         ; preds = %.noexc.i47
  store ptr %i.co, ptr %4, align 8, !tbaa !50
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !158
  store i64 %i.cp, ptr %i.l, align 8, !tbaa !51
  br label %._crit_edge.i.i46

._crit_edge.i.i46:                                ; preds = %.noexc48, %.peel.next
  %i.cq = phi ptr [ %i.co, %.noexc48 ], [ %i.l, %.peel.next ] ; 2 uses
  switch i64 %i.cm, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i46
  %i.cr = load i8, ptr %i.ck, align 1, !tbaa !51
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !51
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.ck, i64 %i.cm, i1 false)
  br label %bb.l

.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i47, %.noexc.i47.peel
  %lpad.loopexit.split-lp348 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

bb.l:                                             ; preds = %._crit_edge.i.i46, %bb.j, %bb.k
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !158 ; 2 uses
  store i64 %i.cs, ptr %i.m, align 8, !tbaa !70
  %i.ct = load ptr, ptr %4, align 8, !tbaa !50
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  store i8 0, ptr %i.cu, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.cv = load i64, ptr %i.c, align 8, !tbaa !70
  %i.cw = and i64 %i.cv, -2
  %i.cx = icmp eq i64 %i.cw, 4611686018427387902
  br i1 %i.cx, label %.loopexit234, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49

.loopexit234:                                     ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %.loopexit234
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49: ; preds = %bb.l
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.167, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49, %.loopexit234
  %lpad.loopexit.split-lp350 = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.cz = load ptr, ptr %4, align 8, !tbaa !50, !noalias !907
  %i.da = load i64, ptr %i.m, align 8, !tbaa !70, !noalias !907 ; 3 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !69, !alias.scope !908
  store i64 0, ptr %i.o, align 8, !tbaa !70, !alias.scope !908
  store i8 0, ptr %i.n, align 8, !tbaa !51, !alias.scope !908
  %i.db = add i64 %i.da, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.db)
          to label %bb.m unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52
  %i.dc = load i64, ptr %i.o, align 8, !tbaa !70, !alias.scope !908
  %i.dd = icmp eq i64 %i.dc, 4611686018427387903
  br i1 %i.dd, label %.invoke.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i56: ; preds = %bb.m
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i57 unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i57: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i56
  %i.df = load i64, ptr %i.o, align 8, !tbaa !70, !alias.scope !908
  %i.dg = sub i64 4611686018427387903, %i.df
  %i.dh = icmp ult i64 %i.dg, %i.da
  br i1 %i.dh, label %.invoke.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i58

.invoke.i.i59:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i57, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i57.peel, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.cont.i.i60 unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp

.cont.i.i60:                                      ; preds = %.invoke.i.i59
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i57
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.cz, i64 noundef %i.da)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit63 unwind label %.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp180.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i58.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i56.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit52.peel, %.invoke.i.i59
  %lpad.loopexit.split-lp353 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %6, align 8, !tbaa !50, !alias.scope !908 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.n
  br i1 %i.dk, label %.body61, label %.body61.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit63: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i58
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.dl = load i64, ptr %i.o, align 8, !tbaa !70, !noalias !909
  %i.dm = icmp eq i64 %i.dl, 4611686018427387903
  br i1 %i.dm, label %.loopexit240, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64

.loopexit240:                                     ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit63, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit63.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc65 unwind label %.loopexit.split-lp185.loopexit.split-lp.loopexit.split-lp, !noalias !909

.noexc65:                                         ; preds = %.loopexit240
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit63
  %i.dn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %.noexc66 unwind label %.loopexit.split-lp185.loopexit.split-lp.loopexit.split-lp, !noalias !909 ; 6 uses

.noexc66:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64
  store ptr %i.p, ptr %5, align 8, !tbaa !69, !alias.scope !909
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !50 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 5 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %.noexc66
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !70 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_17DeprecatedApiUsedE:bb.a
  %.pre.i10 = load i64, ptr %.phi.trans.insert.i9, align 8, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.h
  %i.ba = phi i64 [ %i.aw, %bb.h ], [ %.pre.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !70, !alias.scope !964
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !50
  store i64 0, ptr %i.bb, align 8, !tbaa !70
  store i8 0, ptr %i.at, align 8, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.bd = add i64 %i.ba, -4611686018427387895
  %i.be = icmp ult i64 %i.bd, 9
  br i1 %i.be, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc17 unwind label %bb.o, !noalias !965

.noexc17:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13: ; preds = %bb.i
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.193, i64 noundef 9)
          to label %.noexc18 unwind label %bb.o, !noalias !965 ; 6 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !69, !alias.scope !965
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

bb.k:                                             ; preds = %.noexc18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !70 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %.noexc18
  store ptr %i.bh, ptr %0, align 8, !tbaa !50, !alias.scope !965
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !51
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !51, !alias.scope !965
  %.phi.trans.insert.i15 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.pre.i16 = load i64, ptr %.phi.trans.insert.i15, align 8, !tbaa !70
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.k
  %i.bp = phi i64 [ %i.bl, %bb.k ], [ %.pre.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !70, !alias.scope !965
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !50
  store i64 0, ptr %i.bq, align 8, !tbaa !70
  store i8 0, ptr %i.bi, align 8, !tbaa !51
  %i.bs = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ar
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.l
  %i.bu = load i64, ptr %i.ar, align 8, !tbaa !51
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.bw = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.x
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.by = load i64, ptr %i.x, align 8, !tbaa !51
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  %i.ca = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.d
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !51
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.g
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i13, %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ar
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.o
  %i.cj = load i64, ptr %i.ar, align 8, !tbaa !51
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.n ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.cg, %bb.o ] ; 2 uses
  %i.cl = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.x
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.cn = load i64, ptr %i.x, align 8, !tbaa !51
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %i.cp = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.d
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.cr = load i64, ptr %i.d, align 8, !tbaa !51
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_25ModuleHasCyclicDependencyE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !329
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329
  %i.f = icmp eq ptr %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  br i1 %i.f, label %.noexc.i, label %.noexc.i20

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 33, ptr %i.b, align 8, !tbaa !158
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !50
  %i.j = load i64, ptr %i.b, align 8, !tbaa !158  ; 3 uses
  store i64 %i.j, ptr %i.g, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.i, ptr noundef nonnull align 1 dereferenceable(33) @.str.194, i64 33, i1 false)
  store i64 %i.j, ptr %i.h, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %.loopexit

.noexc.i20:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 26, ptr %i.a, align 8, !tbaa !158
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !50
  %i.m = load i64, ptr %i.a, align 8, !tbaa !158  ; 3 uses
  store i64 %i.m, ptr %i.g, align 8, !tbaa !51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.l, ptr noundef nonnull align 1 dereferenceable(26) @.str.195, i64 26, i1 false)
  store i64 %i.m, ptr %i.h, align 8, !tbaa !70
  %i.n = load ptr, ptr %0, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.p = load ptr, ptr %2, align 8, !tbaa !329    ; 5 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !329  ; 3 uses
  %.not4250 = icmp eq ptr %i.p, %i.q
  br i1 %.not4250, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %.noexc.i20
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !260   ; 3 uses
  %.not.peel = icmp eq ptr %.pre, null
  br i1 %.not.peel, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.t = load ptr, ptr %.pre, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %.pre, ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.c unwind label %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.r, align 8, !tbaa !70   ; 2 uses
  %i.x = load i64, ptr %i.h, align 8, !tbaa !70
  %i.y = sub i64 4611686018427387903, %i.x
  %i.z = icmp ult i64 %i.y, %i.w
  br i1 %i.z, label %.loopexit62, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.c
  %i.aa = load ptr, ptr %3, align 8, !tbaa !50
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.aa, i64 noundef %i.w)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.ac = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.s
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.ae = load i64, ptr %i.s, align 8, !tbaa !51
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33.peel

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !70 ; 2 uses
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !70
  %i.aj = sub i64 4611686018427387903, %i.ai
  %i.ak = icmp ult i64 %i.aj, %i.ah
  br i1 %i.ak, label %.loopexit66.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30.peel: ; preds = %bb.d
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !50
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.al, i64 noundef %i.ah)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %.not42.peel = icmp eq ptr %i.an, %i.q
  br i1 %.not42.peel, label %.loopexit, label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33
  %.sroa.037.051 = phi ptr [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33.peel ] ; 4 uses
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !70
  %i.ap = and i64 %i.ao, -4
  %i.aq = icmp eq i64 %i.ap, 4611686018427387900
  br i1 %i.aq, label %.loopexit66.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.peel.next
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.196, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30, %.loopexit66.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30.peel
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.as = load ptr, ptr %1, align 8, !tbaa !260   ; 3 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.037.051)
          to label %bb.f unwind label %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.aw = load i64, ptr %i.r, align 8, !tbaa !70  ; 2 uses
  %i.ax = load i64, ptr %i.h, align 8, !tbaa !70
  %i.ay = sub i64 4611686018427387903, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.aw
  br i1 %i.az, label %.loopexit62, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit62:                                      ; preds = %bb.f, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc25 unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp

.noexc25:                                         ; preds = %.loopexit62
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.ba = load ptr, ptr %3, align 8, !tbaa !50
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ba, i64 noundef %i.aw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bc = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.s
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.be = load i64, ptr %i.s, align 8, !tbaa !51
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33

.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit62
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.s
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp
  %i.bi = load i64, ptr %i.s, align 8, !tbaa !51
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp59.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.loopexit.split-lp

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.037.051, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !70 ; 2 uses
  %i.bm = load i64, ptr %i.h, align 8, !tbaa !70
  %i.bn = sub i64 4611686018427387903, %i.bm
  %i.bo = icmp ult i64 %i.bn, %i.bl
  br i1 %i.bo, label %.loopexit66.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30

.loopexit66.invoke:                               ; preds = %.peel.next, %bb.g, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.loopexit66.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit66.cont:                                 ; preds = %.loopexit66.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30: ; preds = %bb.g
  %i.bp = load ptr, ptr %.sroa.037.051, align 8, !tbaa !50
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bp, i64 noundef %i.bl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.037.051, i64 32 ; 2 uses
  %.not42 = icmp eq ptr %i.br, %i.q
  br i1 %.not42, label %.loopexit, label %.peel.next, !llvm.loop !966

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bs = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.g
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %.loopexit.split-lp
  %i.bu = load i64, ptr %i.g, align 8, !tbaa !51
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit33.peel, %.noexc.i20, %.noexc.i
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_25CyclicModuleGraphTooLargeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = load i64, ptr %2, align 8, !tbaa !169    ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.b = icmp ult i64 %i.a, 10
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.029.i.i = phi i32 [ %i.j, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.i, %bb.g ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = icmp ult i64 %.02328.i.i, 100
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.e = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.i = udiv i64 %.02328.i.i, 10000
  %i.j = add i32 %.029.i.i, 4                     ; 2 uses
  %i.k = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.k, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !13

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %i.h, %bb.f ], [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ 1, %bb.a ], [ %i.j, %bb.g ]
  %i.l = zext i32 %.022.i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !69, !alias.scope !974
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.l, i8 noundef signext 0)
  %i.n = load ptr, ptr %4, align 8, !tbaa !50, !alias.scope !974 ; 4 uses
  %i.o = icmp ugt i64 %i.a, 99
  br i1 %i.o, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !70, !alias.scope !974
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.r, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.v, %.lr.ph.i4.i ], [ %i.a, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.af, %.lr.ph.i4.i ], [ %i.s, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.t = urem i64 %.020.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = udiv i64 %.020.i.i, 100                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !51, !noalias !974
  %i.z = zext i32 %.01819.i.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.z
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !51
  %i.ab = load i8, ptr %i.w, align 2, !tbaa !51, !noalias !974
  %i.ac = add i32 %.01819.i.i, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ad
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !51
  %i.af = add i32 %.01819.i.i, -2
  %i.ag = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ag, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.a, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.v, %.lr.ph.i4.i ] ; 3 uses
  %i.ah = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !51, !noalias !974
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !51
  %i.an = load i8, ptr %i.aj, align 2, !tbaa !51, !noalias !974
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ao = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ap = or disjoint i8 %i.ao, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.ap, %bb.i ], [ %i.an, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.n, align 1, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.197, i64 noundef 34)
          to label %.noexc unwind label %bb.r, !noalias !975 ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !69, !alias.scope !975
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !70 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.as, ptr %3, align 8, !tbaa !50, !alias.scope !975
  %i.az = load i64, ptr %i.at, align 8, !tbaa !51
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !51, !alias.scope !975
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.ba = phi i64 [ %i.aw, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !70, !alias.scope !975
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !50
  store i64 0, ptr %i.bb, align 8, !tbaa !70
  store i8 0, ptr %i.at, align 8, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !70, !noalias !976
  %i.be = add i64 %i.bd, -4611686018427387817
  %i.bf = icmp ult i64 %i.be, 87
  br i1 %i.bf, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc32 unwind label %bb.s, !noalias !976

.noexc32:                                         ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.k
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.198, i64 noundef 87)
          to label %.noexc33 unwind label %bb.s, !noalias !976 ; 6 uses

.noexc33:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !69, !alias.scope !976
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !50 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

bb.m:                                             ; preds = %.noexc33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !70 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %.noexc33
  store ptr %i.bi, ptr %0, align 8, !tbaa !50, !alias.scope !976
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !51
  store i64 %i.bp, ptr %i.bh, align 8, !tbaa !51, !alias.scope !976
  %.phi.trans.insert.i30 = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.pre.i31 = load i64, ptr %.phi.trans.insert.i30, align 8, !tbaa !70
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.m
  %i.bq = phi i64 [ %i.bm, %bb.m ], [ %.pre.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !70, !alias.scope !976
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !50
  store i64 0, ptr %i.br, align 8, !tbaa !70
  store i8 0, ptr %i.bj, align 8, !tbaa !51
  %i.bt = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.ar
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.n
  %i.bv = load i64, ptr %i.ar, align 8, !tbaa !51
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  %i.bx = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.m
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bz = load i64, ptr %i.m, align 8, !tbaa !51
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cb = load i32, ptr @_ZN4FInt32LuauCyclicSccWarningDisplayLimitE, align 8, !tbaa !295
  %i.cc = sext i32 %i.cb to i64
  %i.cd = load i64, ptr %2, align 8, !tbaa !158
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.cc) ; 4 uses
  %.not79 = icmp eq i64 %.sroa.speculated, 0
  br i1 %.not79, label %._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !260   ; 3 uses
  %.not23.peel = icmp eq ptr %.pre, null
  br i1 %.not23.peel, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !164
  %i.ci = load ptr, ptr %.pre, align 8, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %.pre, ptr noundef nonnull align 8 dereferenceable(32) %i.ch)
          to label %bb.p unwind label %.loopexit.split-lp89.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o
  %i.cl = load i64, ptr %i.cf, align 8, !tbaa !70 ; 2 uses
  %i.cm = load i64, ptr %i.bs, align 8, !tbaa !70
  %i.cn = sub i64 4611686018427387903, %i.cm
  %i.co = icmp ult i64 %i.cn, %i.cl
  br i1 %i.co, label %.loopexit92, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.p
  %i.cp = load ptr, ptr %5, align 8, !tbaa !50
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cp, i64 noundef %i.cl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.cr = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cg
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.ct = load i64, ptr %i.cg, align 8, !tbaa !51
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58.peel

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %i.cv = load ptr, ptr %i.ce, align 8, !tbaa !164 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !70 ; 2 uses
  %i.cy = load i64, ptr %i.bs, align 8, !tbaa !70
  %i.cz = sub i64 4611686018427387903, %i.cy
  %i.da = icmp ult i64 %i.cz, %i.cx
  br i1 %i.da, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55.peel: ; preds = %bb.q
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !50
  %i.dc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.db, i64 noundef %i.cx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51.peel
  %exitcond.peel.not = icmp eq i64 %.sroa.speculated, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !163
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !164
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 5
  %i.dl = icmp ult i64 %.sroa.speculated, %i.dk
  br i1 %i.dl, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit62

bb.r:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.l
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.ar
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.s
  %i.dq = load i64, ptr %i.ar, align 8, !tbaa !51
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.r
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.r ], [ %i.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.dn, %bb.s ]
  %i.ds = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.m
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.du = load i64, ptr %i.m, align 8, !tbaa !51
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58
  %.078 = phi i64 [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58.peel ] ; 3 uses
  %i.dw = load i64, ptr %i.bs, align 8, !tbaa !70
  %i.dx = and i64 %i.dw, -2
  %i.dy = icmp eq i64 %i.dx, 4611686018427387902
  br i1 %i.dy, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44: ; preds = %.peel.next
  %i.dz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.167, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44
  %i.ea = load ptr, ptr %1, align 8, !tbaa !260   ; 3 uses
  %.not23 = icmp eq ptr %i.ea, null
  br i1 %.not23, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.eb = load ptr, ptr %i.ce, align 8, !tbaa !164
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %.078
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !79
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8
  invoke void %i.ef(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %i.ec)
          to label %bb.u unwind label %.loopexit.split-lp89.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.eg = load i64, ptr %i.cf, align 8, !tbaa !70 ; 2 uses
  %i.eh = load i64, ptr %i.bs, align 8, !tbaa !70
  %i.ei = sub i64 4611686018427387903, %i.eh
  %i.ej = icmp ult i64 %i.ei, %i.eg
  br i1 %i.ej, label %.loopexit92, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit92:                                      ; preds = %bb.u, %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc47 unwind label %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %.loopexit92
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.u
  %i.ek = load ptr, ptr %5, align 8, !tbaa !50
  %i.el = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ek, i64 noundef %i.eg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.em = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.cg
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.eo = load i64, ptr %i.cg, align 8, !tbaa !51
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58

.loopexit.split-lp89.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit92
  %lpad.loopexit.split-lp145 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.cg
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp
  %i.es = load i64, ptr %i.cg, align 8, !tbaa !51
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp89.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %.pn24 = phi { ptr, i32 } [ %lpad.loopexit.split-lp145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp89.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp145, %.loopexit.split-lp68.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.loopexit.split-lp

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.eu = load ptr, ptr %i.ce, align 8, !tbaa !164
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %.078 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !70 ; 2 uses
  %i.ey = load i64, ptr %i.bs, align 8, !tbaa !70
  %i.ez = sub i64 4611686018427387903, %i.ey
  %i.fa = icmp ult i64 %i.ez, %i.ex
  br i1 %i.fa, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55: ; preds = %bb.v
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !50
  %i.fc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fb, i64 noundef %i.ex)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.fd = add nuw i64 %.078, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fd, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !973

bb.w:                                             ; preds = %._crit_edge
  %i.fe = load i64, ptr %i.bs, align 8, !tbaa !70
  %i.ff = add i64 %i.fe, -4611686018427387899
  %i.fg = icmp ult i64 %i.ff, 5
  br i1 %i.fg, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59

.invoke:                                          ; preds = %.peel.next, %bb.v, %bb.w, %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i59: ; preds = %bb.w
  %i.fh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.199, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !50    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.bh
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %.loopexit.split-lp
end_hunk_2
begin_hunk_3_@_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_17MissingPropertiesE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !51
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.cz = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.s
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.db = load i64, ptr %i.s, align 8, !tbaa !51
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  %i.dd = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.d
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.df = load i64, ptr %i.d, align 8, !tbaa !51
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  %i.dh = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !51
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !174
  switch i32 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit [
    i32 0, label %bb.u
    i32 1, label %bb.v
  ]

bb.p:                                             ; preds = %bb.a
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.r:                                             ; preds = %bb.f
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.k, %.critedge.i
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i44, %bb.m
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.t
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !51
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.s
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.s ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.ds, %bb.t ] ; 2 uses
  %i.dy = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !51
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ed = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.s
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %i.ef = load i64, ptr %i.s, align 8, !tbaa !51
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dp, %bb.q ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ] ; 2 uses
  %i.eh = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.d
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.ej = load i64, ptr %i.d, align 8, !tbaa !51
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.p
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.do, %bb.p ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ]
  %i.el = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !51
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.eq = load i64, ptr %i.co, align 8, !tbaa !70
  %i.er = add i64 %i.eq, -4611686018427387887
  %i.es = icmp ult i64 %i.er, 17
  br i1 %i.es, label %.loopexit166.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i84.invoke

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.et = load i64, ptr %i.co, align 8, !tbaa !70
  %i.eu = and i64 %i.et, -16
  %i.ev = icmp eq i64 %i.eu, 4611686018427387888
  br i1 %i.ev, label %.loopexit166.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i84.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i84.invoke: ; preds = %bb.v, %bb.u
  %i.ew = phi ptr [ @.str.217, %bb.u ], [ @.str.218, %bb.v ]
  %i.ex = phi i64 [ 17, %bb.u ], [ 16, %bb.v ]
  %i.ey = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.ew, i64 noundef %i.ex)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i84.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !163
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !164
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = icmp ugt i64 %i.ff, 32
  br i1 %i.fg, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit91

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.fh = load i64, ptr %i.co, align 8, !tbaa !70
  %i.fi = icmp eq i64 %i.fh, 4611686018427387903
  br i1 %i.fi, label %.loopexit166.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i88: ; preds = %bb.w
  %i.fj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.138, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.fk = load i64, ptr %i.co, align 8, !tbaa !70
  %i.fl = icmp eq i64 %i.fk, 4611686018427387903
  br i1 %i.fl, label %.loopexit166.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit91
  %i.fm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.144, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i92
  %i.fn = load ptr, ptr %i.fa, align 8, !tbaa !163
  %i.fo = load ptr, ptr %i.ez, align 8, !tbaa !164 ; 3 uses
  %.not161 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not161, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95._crit_edge, label %.critedge.peel

.critedge.peel:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95.preheader
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 8 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  %i.ft = load ptr, ptr %i.fo, align 8, !tbaa !50, !noalias !1051
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !70, !noalias !1051 ; 3 uses
  store ptr %i.fp, ptr %9, align 8, !tbaa !69, !alias.scope !1052
  store i64 0, ptr %i.fq, align 8, !tbaa !70, !alias.scope !1052
  store i8 0, ptr %i.fp, align 8, !tbaa !51, !alias.scope !1052
  %i.fw = add i64 %i.fv, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.fw)
          to label %bb.x unwind label %.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.critedge.peel
  %i.fx = load i64, ptr %i.fq, align 8, !tbaa !70, !alias.scope !1052
  %i.fy = icmp eq i64 %i.fx, 4611686018427387903
  br i1 %i.fy, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel: ; preds = %bb.x
  %i.fz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel unwind label %.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel
  %i.ga = load i64, ptr %i.fq, align 8, !tbaa !70, !alias.scope !1052
  %i.gb = sub i64 4611686018427387903, %i.ga
  %i.gc = icmp ult i64 %i.gb, %i.fv
  br i1 %i.gc, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel
  %i.gd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ft, i64 noundef %i.fv)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.peel unwind label %.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  %i.ge = load i64, ptr %i.fq, align 8, !tbaa !70, !noalias !1053
  %i.gf = icmp eq i64 %i.ge, 4611686018427387903
  br i1 %i.gf, label %.loopexit169, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i104.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i104.peel: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.peel
  %i.gg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %.noexc110.peel unwind label %.loopexit.split-lp136.loopexit.split-lp.loopexit.split-lp, !noalias !1053 ; 6 uses

.noexc110.peel:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i104.peel
  store ptr %i.fr, ptr %8, align 8, !tbaa !69, !alias.scope !1053
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !50 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 5 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.peel: ; preds = %.noexc110.peel
  store ptr %i.gh, ptr %8, align 8, !tbaa !50, !alias.scope !1053
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !51
  store i64 %i.gk, ptr %i.fr, align 8, !tbaa !51, !alias.scope !1053
  %.phi.trans.insert.i106.peel = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.pre.i107.peel = load i64, ptr %.phi.trans.insert.i106.peel, align 8, !tbaa !70
  br label %bb.z

bb.y:                                             ; preds = %.noexc110.peel
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !70 ; 3 uses
  %i.gn = icmp ult i64 %i.gm, 16
  call void @llvm.assume(i1 %i.gn)
  %i.go = add nuw nsw i64 %i.gm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fr, ptr noundef nonnull align 8 dereferenceable(1) %i.gi, i64 %i.go, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.peel
  %i.gp = phi i64 [ %i.gm, %bb.y ], [ %.pre.i107.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105.peel ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 %i.gp, ptr %i.fs, align 8, !tbaa !70, !alias.scope !1053
  store ptr %i.gi, ptr %i.gg, align 8, !tbaa !50
  store i64 0, ptr %i.gq, align 8, !tbaa !70
  store i8 0, ptr %i.gi, align 8, !tbaa !51
  %i.gr = load i64, ptr %i.fs, align 8, !tbaa !70 ; 2 uses
  %i.gs = load i64, ptr %i.co, align 8, !tbaa !70
  %i.gt = sub i64 4611686018427387903, %i.gs
  %i.gu = icmp ult i64 %i.gt, %i.gr
  br i1 %i.gu, label %.loopexit173, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.peel: ; preds = %bb.z
  %i.gv = load ptr, ptr %8, align 8, !tbaa !50
  %i.gw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.gv, i64 noundef %i.gr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.peel
  %i.gx = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.fr
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.gz = load i64, ptr %i.fr, align 8, !tbaa !51
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115.peel
  %i.hb = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.fp
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.peel
  %i.hd = load i64, ptr %i.fp, align 8, !tbaa !51
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.hf = load ptr, ptr %i.fa, align 8, !tbaa !163
  %i.hg = load ptr, ptr %i.ez, align 8, !tbaa !164
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = ptrtoint ptr %i.hg to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = icmp ugt i64 %i.hj, 32
  br i1 %i.hk, label %.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95._crit_edge

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120
  %.0160 = phi i64 [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120.peel ] ; 3 uses
  %i.hl = load i64, ptr %i.co, align 8, !tbaa !70
  %i.hm = and i64 %i.hl, -2
  %i.hn = icmp eq i64 %i.hm, 4611686018427387902
  br i1 %i.hn, label %.loopexit166.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i96: ; preds = %.peel.next
  %i.ho = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.167, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i84.invoke, %.loopexit166.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i88
  %lpad.loopexit.split-lp252 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i96
  %i.hp = load ptr, ptr %i.fa, align 8, !tbaa !163
  %i.hq = load ptr, ptr %i.ez, align 8, !tbaa !164 ; 2 uses
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = ashr exact i64 %i.ht, 5
  %i.hv = add nsw i64 %i.hu, -1
  %i.hw = icmp eq i64 %.0160, %i.hv
  br i1 %i.hw, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit99
  %i.hx = load i64, ptr %i.co, align 8, !tbaa !70
  %i.hy = and i64 %i.hx, -4
  %i.hz = icmp eq i64 %i.hy, 4611686018427387900
  br i1 %i.hz, label %.loopexit166.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100

.loopexit166.invoke:                              ; preds = %.peel.next, %bb.aa, %bb.u, %bb.v, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit91
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.loopexit166.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit166.cont:                                ; preds = %.loopexit166.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100: ; preds = %bb.aa
  %i.ia = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.219, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100..critedge_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100..critedge_crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100
  %.pre = load ptr, ptr %i.ez, align 8, !tbaa !164
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100..critedge_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit99
  %i.ib = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i100..critedge_crit_edge ], [ %i.hq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit99 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %.0160 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !50, !noalias !1054
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !70, !noalias !1054 ; 3 uses
  store ptr %i.fp, ptr %9, align 8, !tbaa !69, !alias.scope !1055
  store i64 0, ptr %i.fq, align 8, !tbaa !70, !alias.scope !1055
  store i8 0, ptr %i.fp, align 8, !tbaa !51, !alias.scope !1055
  %i.ig = add i64 %i.if, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ig)
          to label %bb.ab unwind label %.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %.critedge
  %i.ih = load i64, ptr %i.fq, align 8, !tbaa !70, !alias.scope !1055
  %i.ii = icmp eq i64 %i.ih, 4611686018427387903
  br i1 %i.ii, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ab
  %i.ij = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ik = load i64, ptr %i.fq, align 8, !tbaa !70, !alias.scope !1055
  %i.il = sub i64 4611686018427387903, %i.ik
  %i.im = icmp ult i64 %i.il, %i.if
  br i1 %i.im, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.peel, %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.cont.i.i unwind label %.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.in = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.id, i64 noundef %i.if)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp131.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel, %.critedge.peel, %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %9, align 8, !tbaa !50, !alias.scope !1055 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.fp
  br i1 %i.ip, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.iq = load i64, ptr %i.fq, align 8, !tbaa !70, !noalias !1056
  %i.ir = icmp eq i64 %i.iq, 4611686018427387903
  br i1 %i.ir, label %.loopexit169, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i104

.loopexit169:                                     ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.peel
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc109 unwind label %.loopexit.split-lp136.loopexit.split-lp.loopexit.split-lp, !noalias !1056

.noexc109:                                        ; preds = %.loopexit169
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i104: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.is = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %.noexc110 unwind label %.loopexit.split-lp136.loopexit.split-lp.loopexit.split-lp, !noalias !1056 ; 6 uses

.noexc110:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i104
  store ptr %i.fr, ptr %8, align 8, !tbaa !69, !alias.scope !1056
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !50 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 5 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

bb.ac:                                            ; preds = %.noexc110
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !70 ; 3 uses
  %i.iy = icmp ult i64 %i.ix, 16
  call void @llvm.assume(i1 %i.iy)
  %i.iz = add nuw nsw i64 %i.ix, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fr, ptr noundef nonnull align 8 dereferenceable(1) %i.iu, i64 %i.iz, i1 false)
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %.noexc110
  store ptr %i.it, ptr %8, align 8, !tbaa !50, !alias.scope !1056
  %i.ja = load i64, ptr %i.iu, align 8, !tbaa !51
  store i64 %i.ja, ptr %i.fr, align 8, !tbaa !51, !alias.scope !1056
  %.phi.trans.insert.i106 = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %.pre.i107 = load i64, ptr %.phi.trans.insert.i106, align 8, !tbaa !70
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.ac
  %i.jb = phi i64 [ %i.ix, %bb.ac ], [ %.pre.i107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i64 %i.jb, ptr %i.fs, align 8, !tbaa !70, !alias.scope !1056
  store ptr %i.iu, ptr %i.is, align 8, !tbaa !50
  store i64 0, ptr %i.jc, align 8, !tbaa !70
  store i8 0, ptr %i.iu, align 8, !tbaa !51
  %i.jd = load i64, ptr %i.fs, align 8, !tbaa !70 ; 2 uses
  %i.je = load i64, ptr %i.co, align 8, !tbaa !70
  %i.jf = sub i64 4611686018427387903, %i.je
  %i.jg = icmp ult i64 %i.jf, %i.jd
  br i1 %i.jg, label %.loopexit173, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112

.loopexit173:                                     ; preds = %bb.ad, %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc113 unwind label %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp

.noexc113:                                        ; preds = %.loopexit173
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112: ; preds = %bb.ad
  %i.jh = load ptr, ptr %8, align 8, !tbaa !50
  %i.ji = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.jh, i64 noundef %i.jd)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112
  %i.jj = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.fr
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.jl = load i64, ptr %i.fr, align 8, !tbaa !51
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115
  %i.jn = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.fp
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %i.jp = load i64, ptr %i.fp, align 8, !tbaa !51
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit120: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.jr = add nuw i64 %.0160, 1                   ; 2 uses
  %i.js = load ptr, ptr %i.fa, align 8, !tbaa !163
end_hunk_3
begin_hunk_4_@_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_27SwappedGenericTypeParameterE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.aq
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jn, %bb.aq ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ]
  %i.ki = load ptr, ptr %12, align 8, !tbaa !50   ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.ex
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.kk = load i64, ptr %i.ex, align 8, !tbaa !51
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %common.resume

bb.av:                                            ; preds = %bb.a
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.km, ptr %0, align 8, !tbaa !69
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.kn, align 8, !tbaa !70
  store i8 0, ptr %i.km, align 8, !tbaa !51
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_19OptionalValueAccessE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = load ptr, ptr %2, align 8, !tbaa !189
  call void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.227, i64 noundef 15)
          to label %.noexc unwind label %bb.g, !noalias !1103 ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !69, !alias.scope !1103
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !70   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.d, ptr %3, align 8, !tbaa !50, !alias.scope !1103
  %i.k = load i64, ptr %i.e, align 8, !tbaa !51
  store i64 %i.k, ptr %i.c, align 8, !tbaa !51, !alias.scope !1103
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !70
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !70, !alias.scope !1103
  store ptr %i.e, ptr %i.b, align 8, !tbaa !50
  store i64 0, ptr %i.m, align 8, !tbaa !70
  store i8 0, ptr %i.e, align 8, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %i.o = add i64 %i.l, -4611686018427387890
  %i.p = icmp ult i64 %i.o, 14
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc7 unwind label %bb.h, !noalias !1104

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.c
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.228, i64 noundef 14)
          to label %.noexc8 unwind label %bb.h, !noalias !1104 ; 6 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !69, !alias.scope !1104
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !50   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

bb.e:                                             ; preds = %.noexc8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !70   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %.noexc8
  store ptr %i.s, ptr %0, align 8, !tbaa !50, !alias.scope !1104
  %i.z = load i64, ptr %i.t, align 8, !tbaa !51
  store i64 %i.z, ptr %i.r, align 8, !tbaa !51, !alias.scope !1104
  %.phi.trans.insert.i5 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i6 = load i64, ptr %.phi.trans.insert.i5, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4, %bb.e
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %.pre.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !70, !alias.scope !1104
  store ptr %i.t, ptr %i.q, align 8, !tbaa !50
  store i64 0, ptr %i.ab, align 8, !tbaa !70
  store i8 0, ptr %i.t, align 8, !tbaa !51
  %i.ad = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.c
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  %i.af = load i64, ptr %i.c, align 8, !tbaa !51
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.ah = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !51
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.g:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.c
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.h
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !51
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.g
  %.pn = phi { ptr, i32 } [ %i.am, %bb.g ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.an, %bb.h ]
  %i.as = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.av = load i64, ptr %i.at, align 8, !tbaa !51
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_20MissingUnionPropertyE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !noalias !1128
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70, !noalias !1128 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !69, !alias.scope !1129
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !70, !alias.scope !1129
  store i8 0, ptr %i.e, align 8, !tbaa !51, !alias.scope !1129
  %i.g = add i64 %i.d, 5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !70, !alias.scope !1129
  %i.i = add i64 %i.h, -4611686018427387899
  %i.j = icmp ult i64 %i.i, 5
  br i1 %i.j, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.121, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !70, !alias.scope !1129
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.d
  br i1 %i.n, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !50, !alias.scope !1129 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.e, align 8, !tbaa !51, !alias.scope !1129
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #34
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %common.resume.op = phi { ptr, i32 } [ %.pn22.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.u = load i64, ptr %i.f, align 8, !tbaa !70, !noalias !1130
  %i.v = add i64 %i.u, -4611686018427387886
  %i.w = icmp ult i64 %i.v, 18
  br i1 %i.w, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc unwind label %bb.n, !noalias !1130

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.229, i64 noundef 18)
          to label %.noexc29 unwind label %bb.n, !noalias !1130 ; 6 uses

.noexc29:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !69, !alias.scope !1130
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !50   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.noexc29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !70 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc29
  store ptr %i.z, ptr %3, align 8, !tbaa !50, !alias.scope !1130
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !51
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !51, !alias.scope !1130
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !70
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !70, !alias.scope !1130
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !50
  store i64 0, ptr %i.ai, align 8, !tbaa !70
  store i8 0, ptr %i.aa, align 8, !tbaa !51
  %i.ak = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.e
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.f
  %i.am = load i64, ptr %i.e, align 8, !tbaa !51
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !330 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !330 ; 3 uses
  %.not138 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not138, label %._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %i.ax)
          to label %bb.g unwind label %.loopexit.split-lp146.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.ay = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %.noexc48.peel unwind label %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp, !noalias !1131 ; 6 uses

.noexc48.peel:                                    ; preds = %bb.g
  store ptr %i.as, ptr %6, align 8, !tbaa !69, !alias.scope !1131
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !50 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.peel: ; preds = %.noexc48.peel
  store ptr %i.az, ptr %6, align 8, !tbaa !50, !alias.scope !1131
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !51
  store i64 %i.bc, ptr %i.as, align 8, !tbaa !51, !alias.scope !1131
  %.phi.trans.insert.i46.peel = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.pre.i47.peel = load i64, ptr %.phi.trans.insert.i46.peel, align 8, !tbaa !70
  br label %bb.i

bb.h:                                             ; preds = %.noexc48.peel
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !70 ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %i.bg = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bg, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.peel
  %i.bh = phi i64 [ %i.be, %bb.h ], [ %.pre.i47.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.peel ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.bh, ptr %i.at, align 8, !tbaa !70, !alias.scope !1131
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !50
  store i64 0, ptr %i.bi, align 8, !tbaa !70
  store i8 0, ptr %i.ba, align 8, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %i.bj = load i64, ptr %i.at, align 8, !tbaa !70, !noalias !1132
  %i.bk = icmp eq i64 %i.bj, 4611686018427387903
  br i1 %i.bk, label %.loopexit154, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49.peel: ; preds = %bb.i
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %.noexc54.peel unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp, !noalias !1132 ; 6 uses

.noexc54.peel:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49.peel
  store ptr %i.au, ptr %5, align 8, !tbaa !69, !alias.scope !1132
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 5 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.peel: ; preds = %.noexc54.peel
  store ptr %i.bm, ptr %5, align 8, !tbaa !50, !alias.scope !1132
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !51
  store i64 %i.bp, ptr %i.au, align 8, !tbaa !51, !alias.scope !1132
  %.phi.trans.insert.i51.peel = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.pre.i52.peel = load i64, ptr %.phi.trans.insert.i51.peel, align 8, !tbaa !70
  br label %bb.k

bb.j:                                             ; preds = %.noexc54.peel
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !70 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.bt, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.peel
  %i.bu = phi i64 [ %i.br, %bb.j ], [ %.pre.i52.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.peel ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bu, ptr %i.av, align 8, !tbaa !70, !alias.scope !1132
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !50
  store i64 0, ptr %i.bv, align 8, !tbaa !70
  store i8 0, ptr %i.bn, align 8, !tbaa !51
  %i.bw = load i64, ptr %i.av, align 8, !tbaa !70 ; 2 uses
  %i.bx = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.by = sub i64 4611686018427387903, %i.bx
  %i.bz = icmp ult i64 %i.by, %i.bw
  br i1 %i.bz, label %.loopexit158, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.k
  %i.ca = load ptr, ptr %5, align 8, !tbaa !50
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.ca, i64 noundef %i.bw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.cc = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.au
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.ce = load i64, ptr %i.au, align 8, !tbaa !51
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.peel
  %i.cg = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.as
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.peel
  %i.ci = load i64, ptr %i.as, align 8, !tbaa !51
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.peel
  %i.ck = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aw
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.peel
  %i.cm = load i64, ptr %i.aw, align 8, !tbaa !51
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %.not.peel = icmp eq ptr %i.co, %i.ar
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1133)
  %i.cp = load ptr, ptr %3, align 8, !tbaa !50, !noalias !1133
  %i.cq = load i64, ptr %i.aj, align 8, !tbaa !70, !noalias !1133 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.cr, ptr %9, align 8, !tbaa !69, !alias.scope !1134
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !70, !alias.scope !1134
  store i8 0, ptr %i.cr, align 8, !tbaa !51, !alias.scope !1134
  %i.ct = add i64 %i.cq, 14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ct)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !70, !alias.scope !1134
  %i.cv = sub i64 4611686018427387903, %i.cu
  %i.cw = icmp ult i64 %i.cv, %i.cq
  br i1 %i.cw, label %.invoke.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34: ; preds = %bb.l
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.cp, i64 noundef %i.cq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i35 unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !70, !alias.scope !1134
  %i.cz = add i64 %i.cy, -4611686018427387890
  %i.da = icmp ult i64 %i.cz, 14
  br i1 %i.da, label %.invoke.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i36

.invoke.i.i37:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i35, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.cont.i.i38 unwind label %bb.m

.cont.i.i38:                                      ; preds = %.invoke.i.i37
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i35
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.230, i64 noundef 14)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i36, %.invoke.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i34, %._crit_edge
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %9, align 8, !tbaa !50, !alias.scope !1134 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cr
  br i1 %i.de, label %.body, label %.body.sink.split

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.e
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.n
  %i.di = load i64, ptr %i.e, align 8, !tbaa !51
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.sroa.0114.0139 = phi ptr [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.peel ] ; 2 uses
  %i.dk = load ptr, ptr %.sroa.0114.0139, align 8, !tbaa !194
  %i.dl = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.dm = and i64 %i.dl, -2
  %i.dn = icmp eq i64 %i.dm, 4611686018427387902
  br i1 %i.dn, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i42

.loopexit:                                        ; preds = %.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %.loopexit
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i42: ; preds = %.peel.next
  %i.do = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.167, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i42, %.loopexit
  %lpad.loopexit.split-lp251 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %i.dk)
          to label %bb.o unwind label %.loopexit.split-lp146.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %i.dp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %.noexc48 unwind label %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp, !noalias !1135 ; 6 uses

.noexc48:                                         ; preds = %bb.o
  store ptr %i.as, ptr %6, align 8, !tbaa !69, !alias.scope !1135
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !50 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 5 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

bb.p:                                             ; preds = %.noexc48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !70 ; 3 uses
  %i.dv = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i64 %i.du, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.dr, i64 %i.dw, i1 false)
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %.noexc48
  store ptr %i.dq, ptr %6, align 8, !tbaa !50, !alias.scope !1135
  %i.dx = load i64, ptr %i.dr, align 8, !tbaa !51
  store i64 %i.dx, ptr %i.as, align 8, !tbaa !51, !alias.scope !1135
  %.phi.trans.insert.i46 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.pre.i47 = load i64, ptr %.phi.trans.insert.i46, align 8, !tbaa !70
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %bb.p
  %i.dy = phi i64 [ %i.du, %bb.p ], [ %.pre.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i64 %i.dy, ptr %i.at, align 8, !tbaa !70, !alias.scope !1135
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !50
  store i64 0, ptr %i.dz, align 8, !tbaa !70
  store i8 0, ptr %i.dr, align 8, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %i.ea = load i64, ptr %i.at, align 8, !tbaa !70, !noalias !1136
  %i.eb = icmp eq i64 %i.ea, 4611686018427387903
  br i1 %i.eb, label %.loopexit154, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49

.loopexit154:                                     ; preds = %bb.q, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc53 unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp, !noalias !1136

.noexc53:                                         ; preds = %.loopexit154
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49: ; preds = %bb.q
  %i.ec = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %.noexc54 unwind label %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp, !noalias !1136 ; 6 uses

.noexc54:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49
  store ptr %i.au, ptr %5, align 8, !tbaa !69, !alias.scope !1136
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !50 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 5 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

bb.r:                                             ; preds = %.noexc54
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !70 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add nuw nsw i64 %i.eh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.ee, i64 %i.ej, i1 false)
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %.noexc54
  store ptr %i.ed, ptr %5, align 8, !tbaa !50, !alias.scope !1136
  %i.ek = load i64, ptr %i.ee, align 8, !tbaa !51
  store i64 %i.ek, ptr %i.au, align 8, !tbaa !51, !alias.scope !1136
  %.phi.trans.insert.i51 = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.pre.i52 = load i64, ptr %.phi.trans.insert.i51, align 8, !tbaa !70
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.r
  %i.el = phi i64 [ %i.eh, %bb.r ], [ %.pre.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.el, ptr %i.av, align 8, !tbaa !70, !alias.scope !1136
  store ptr %i.ee, ptr %i.ec, align 8, !tbaa !50
  store i64 0, ptr %i.em, align 8, !tbaa !70
  store i8 0, ptr %i.ee, align 8, !tbaa !51
  %i.en = load i64, ptr %i.av, align 8, !tbaa !70 ; 2 uses
  %i.eo = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.ep = sub i64 4611686018427387903, %i.eo
  %i.eq = icmp ult i64 %i.ep, %i.en
  br i1 %i.eq, label %.loopexit158, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit158:                                     ; preds = %bb.s, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc56 unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %.loopexit158
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.s
  %i.er = load ptr, ptr %5, align 8, !tbaa !50
  %i.es = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.er, i64 noundef %i.en)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.et = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.au
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ev = load i64, ptr %i.au, align 8, !tbaa !51
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  %i.ex = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.as
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.ez = load i64, ptr %i.as, align 8, !tbaa !51
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.fb = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.aw
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.fd = load i64, ptr %i.aw, align 8, !tbaa !51
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0114.0139, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ff, %i.ar
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !1123

.loopexit.split-lp146.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.g
  %lpad.loopexit.split-lp255 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i49.peel, %.loopexit154
  %lpad.loopexit.split-lp258 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit158
  %lpad.loopexit.split-lp261 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.au
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp
  %i.fi = load i64, ptr %i.au, align 8, !tbaa !51
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  %.pn22 = phi { ptr, i32 } [ %lpad.loopexit.split-lp261, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %lpad.loopexit.split-lp258, %.loopexit.split-lp118.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp261, %.loopexit.split-lp123.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fk = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.as
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.fm = load i64, ptr %i.as, align 8, !tbaa !51
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %lpad.loopexit.split-lp255, %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ] ; 2 uses
  %i.fo = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.aw
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.fq = load i64, ptr %i.aw, align 8, !tbaa !51
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %.loopexit.split-lp146.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn22.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp146.loopexit.split-lp.loopexit.split-lp ], [ %.pn22.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.loopexit.split-lp

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i36
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.fs = load ptr, ptr %2, align 8, !tbaa !199
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.fs)
          to label %bb.t unwind label %bb.ac

bb.t:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %i.ft = load i64, ptr %i.cs, align 8, !tbaa !70, !noalias !1137 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !70, !noalias !1137 ; 4 uses
  %i.fw = add i64 %i.fv, %i.ft                    ; 2 uses
  %i.fx = load ptr, ptr %9, align 8, !tbaa !50, !noalias !1137 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.cr
  br i1 %i.fy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78: ; preds = %bb.t
  %i.fz = icmp ult i64 %i.ft, 16
  call void @llvm.assume(i1 %i.fz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.t
  %i.ga = load i64, ptr %i.cr, align 8, !tbaa !51, !noalias !1137
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78
  %i.gb = phi i64 [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78 ]
  %i.gc = icmp ugt i64 %i.fw, %i.gb
  br i1 %i.gc, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.gd = load ptr, ptr %10, align 8, !tbaa !50, !noalias !1137
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.u
  %i.gg = icmp ult i64 %i.fv, 16
  call void @llvm.assume(i1 %i.gg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.u
  %i.gh = load i64, ptr %i.ge, align 8, !tbaa !51, !noalias !1137
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.gi = phi i64 [ %i.gh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i = icmp ugt i64 %i.fw, %i.gi
  br i1 %.not.i, label %bb.w, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.gj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef %i.fx, i64 noundef %i.ft)
          to label %.noexc79 unwind label %bb.ad, !noalias !1137 ; 5 uses

.noexc79:                                         ; preds = %.critedge.i
  %i.gk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.gk, ptr %8, align 8, !tbaa !69, !alias.scope !1137
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !50 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 5 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.v:                                             ; preds = %.noexc79
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !70 ; 2 uses
  %i.gq = icmp ult i64 %i.gp, 16
  call void @llvm.assume(i1 %i.gq)
  %i.gr = add nuw nsw i64 %i.gp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gk, ptr noundef nonnull align 8 dereferenceable(1) %i.gm, i64 %i.gr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i: ; preds = %.noexc79
  store ptr %i.gl, ptr %8, align 8, !tbaa !50, !alias.scope !1137
  %i.gs = load i64, ptr %i.gm, align 8, !tbaa !51
  store i64 %i.gs, ptr %i.gk, align 8, !tbaa !51, !alias.scope !1137
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i, %bb.v
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !70
  %i.gv = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !70, !alias.scope !1137
  store ptr %i.gm, ptr %i.gj, align 8, !tbaa !50
  store i64 0, ptr %i.gt, align 8, !tbaa !70
  store i8 0, ptr %i.gm, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.gw = sub i64 4611686018427387903, %i.ft
  %i.gx = icmp ult i64 %i.gw, %i.fv
  br i1 %i.gx, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i77

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc80 unwind label %bb.ad, !noalias !1137

.noexc80:                                         ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i77: ; preds = %bb.w
  %i.gy = load ptr, ptr %10, align 8, !tbaa !50, !noalias !1137
  %i.gz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.gy, i64 noundef %i.fv)
          to label %.noexc81 unwind label %bb.ad, !noalias !1137 ; 5 uses

.noexc81:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i77
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ha, ptr %8, align 8, !tbaa !69, !alias.scope !1137
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !50 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 16 ; 5 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i

bb.y:                                             ; preds = %.noexc81
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !70 ; 2 uses
  %i.hg = icmp ult i64 %i.hf, 16
  call void @llvm.assume(i1 %i.hg)
  %i.hh = add nuw nsw i64 %i.hf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ha, ptr noundef nonnull align 8 dereferenceable(1) %i.hc, i64 %i.hh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i: ; preds = %.noexc81
  store ptr %i.hb, ptr %8, align 8, !tbaa !50, !alias.scope !1137
  %i.hi = load i64, ptr %i.hc, align 8, !tbaa !51
  store i64 %i.hi, ptr %i.ha, align 8, !tbaa !51, !alias.scope !1137
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16.i, %bb.y
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !70
  %i.hl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.hk, ptr %i.hl, align 8, !tbaa !70, !alias.scope !1137
  store ptr %i.hc, ptr %i.gz, align 8, !tbaa !50
  store i64 0, ptr %i.hj, align 8, !tbaa !70
  store i8 0, ptr %i.hc, align 8, !tbaa !51
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.hm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !70, !noalias !1138
  %i.ho = icmp eq i64 %i.hn, 4611686018427387903
  br i1 %i.ho, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i82

bb.z:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc87 unwind label %bb.ae, !noalias !1138

.noexc87:                                         ; preds = %bb.z
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i82: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.hp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.116, i64 noundef 1)
          to label %.noexc88 unwind label %bb.ae, !noalias !1138 ; 6 uses

.noexc88:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i82
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.hq, ptr %0, align 8, !tbaa !69, !alias.scope !1138
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !50 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 5 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

bb.aa:                                            ; preds = %.noexc88
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !70 ; 3 uses
  %i.hw = icmp ult i64 %i.hv, 16
  call void @llvm.assume(i1 %i.hw)
  %i.hx = add nuw nsw i64 %i.hv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hq, ptr noundef nonnull align 8 dereferenceable(1) %i.hs, i64 %i.hx, i1 false)
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %.noexc88
  store ptr %i.hr, ptr %0, align 8, !tbaa !50, !alias.scope !1138
  %i.hy = load i64, ptr %i.hs, align 8, !tbaa !51
  store i64 %i.hy, ptr %i.hq, align 8, !tbaa !51, !alias.scope !1138
  %.phi.trans.insert.i84 = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.pre.i85 = load i64, ptr %.phi.trans.insert.i84, align 8, !tbaa !70
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, %bb.aa
  %i.hz = phi i64 [ %i.hv, %bb.aa ], [ %.pre.i85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83 ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hz, ptr %i.ib, align 8, !tbaa !70, !alias.scope !1138
  store ptr %i.hs, ptr %i.hp, align 8, !tbaa !50
  store i64 0, ptr %i.ia, align 8, !tbaa !70
  store i8 0, ptr %i.hs, align 8, !tbaa !51
  %i.ic = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_23UninhabitedTypeFunctionE:bb.a
  store i8 0, ptr %i.fg, align 8, !tbaa !51, !alias.scope !1243
  %i.fi = add i64 %i.ev, 43
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.fi)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !70, !alias.scope !1243
  %i.fk = add i64 %i.fj, -4611686018427387861
  %i.fl = icmp ult i64 %i.fk, 43
  br i1 %i.fl, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ab
  %i.fm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.243, i64 noundef 43)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.ac ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.fn = load i64, ptr %i.fh, align 8, !tbaa !70, !alias.scope !1243
  %i.fo = sub i64 4611686018427387903, %i.fn
  %i.fp = icmp ult i64 %i.fo, %i.ev
  br i1 %i.fp, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.cont.i.i unwind label %bb.ac

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.fq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %.pre, i64 noundef %i.ev)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.ac ; 0 uses

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %9, align 8, !tbaa !50, !alias.scope !1243 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.fg
  br i1 %i.ft, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.fu = load i64, ptr %i.fh, align 8, !tbaa !70 ; 2 uses
  %i.fv = load i64, ptr %i.cu, align 8, !tbaa !70
  %i.fw = sub i64 4611686018427387903, %i.fv
  %i.fx = icmp ult i64 %i.fw, %i.fu
  br i1 %i.fx, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i221

bb.ad:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc222 unwind label %bb.ak

.noexc222:                                        ; preds = %bb.ad
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i221: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.fy = load ptr, ptr %9, align 8, !tbaa !50
  %i.fz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fy, i64 noundef %i.fu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit224 unwind label %bb.ak ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i221
  %i.ga = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fg
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit224
  %i.gc = load i64, ptr %i.fg, align 8, !tbaa !51
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit224, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.loopexit717

bb.ae:                                            ; preds = %.noexc.i, %bb.l
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

bb.af:                                            ; preds = %bb.p
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i195, %bb.s
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = load ptr, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.bt
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.ag
  %i.gj = load i64, ptr %i.bt, align 8, !tbaa !51
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %bb.af
  %.pn108 = phi { ptr, i32 } [ %i.gf, %bb.af ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %i.gg, %bb.ag ] ; 2 uses
  %i.gl = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.bg
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %i.gn = load i64, ptr %i.bg, align 8, !tbaa !51
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231, %bb.ae
  %.pn108.pn = phi { ptr, i32 } [ %i.ge, %bb.ae ], [ %.pn108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231 ], [ %.pn108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %common.resume

bb.ah:                                            ; preds = %bb.w
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

bb.ai:                                            ; preds = %bb.x
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.aa
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = load ptr, ptr %7, align 8, !tbaa !50    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.ds
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.aj
  %i.gu = load i64, ptr %i.ds, align 8, !tbaa !51
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234, %bb.ai
  %.pn118 = phi { ptr, i32 } [ %i.gq, %bb.ai ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %i.gr, %bb.aj ] ; 2 uses
  %i.gw = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !51
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %bb.ah
  %.pn118.pn = phi { ptr, i32 } [ %i.gp, %bb.ah ], [ %.pn118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %.pn118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %.loopexit.split-lp724

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i221, %bb.ad
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.fg
  br i1 %i.hd, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ak, %bb.ac
  %.sink = phi ptr [ %i.fs, %bb.ac ], [ %i.hc, %bb.ak ]
  %.pn121.ph = phi { ptr, i32 } [ %i.fr, %bb.ac ], [ %i.hb, %bb.ak ]
  %i.he = load i64, ptr %i.fg, align 8, !tbaa !51
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.hf) #34
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ak, %bb.ac
  %.pn121 = phi { ptr, i32 } [ %i.fr, %bb.ac ], [ %i.hb, %bb.ak ], [ %.pn121.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.loopexit.split-lp724

bb.al:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.hg = load i64, ptr %i.cu, align 8, !tbaa !70
  %i.hh = add i64 %i.hg, -4611686018427387886
  %i.hi = icmp ult i64 %i.hh, 18
  br i1 %i.hi, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i243

.invoke:                                          ; preds = %.peel.next, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.cont unwind label %.loopexit.split-lp724.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i243: ; preds = %bb.al
  %i.hj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.244, i64 noundef 18)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp724.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i243
  %i.hk = load ptr, ptr %i.dd, align 8, !tbaa !330 ; 3 uses
  %i.hl = load ptr, ptr %i.de, align 8, !tbaa !330 ; 3 uses
  %.not703744 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not703744, label %._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit249.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit249.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.ho)
          to label %bb.am unwind label %.loopexit.split-lp773.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit249.peel
  %i.hp = load i64, ptr %i.hm, align 8, !tbaa !70 ; 2 uses
  %i.hq = load i64, ptr %i.cu, align 8, !tbaa !70
  %i.hr = sub i64 4611686018427387903, %i.hq
  %i.hs = icmp ult i64 %i.hr, %i.hp
  br i1 %i.hs, label %.loopexit777, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250.peel: ; preds = %bb.am
  %i.ht = load ptr, ptr %10, align 8, !tbaa !50
  %i.hu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ht, i64 noundef %i.hp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253.peel unwind label %.loopexit.split-lp729.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250.peel
  %i.hv = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.hn
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253.peel
  %i.hx = load i64, ptr %i.hn, align 8, !tbaa !51
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %.not703.peel = icmp eq ptr %i.hz, %i.hl
  br i1 %.not703.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !1241 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !1241 ; 2 uses
  %.not704747 = icmp eq ptr %i.ib, %i.id
  br i1 %.not704747, label %.loopexit717, label %.lr.ph750

.lr.ph750:                                        ; preds = %._crit_edge
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.ao

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  %.sroa.0686.0745 = phi ptr [ %i.iw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256.peel ] ; 2 uses
  %i.ih = load ptr, ptr %.sroa.0686.0745, align 8, !tbaa !194
  %i.ii = load i64, ptr %i.cu, align 8, !tbaa !70
  %i.ij = and i64 %i.ii, -2
  %i.ik = icmp eq i64 %i.ij, 4611686018427387902
  br i1 %i.ik, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i246: ; preds = %.peel.next
  %i.il = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.167, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit249 unwind label %.loopexit.split-lp724.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp724.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i246, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i243
  %lpad.loopexit.split-lp1141 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp724

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i246
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.ih)
          to label %bb.an unwind label %.loopexit.split-lp773.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit249
  %i.im = load i64, ptr %i.hm, align 8, !tbaa !70 ; 2 uses
  %i.in = load i64, ptr %i.cu, align 8, !tbaa !70
  %i.io = sub i64 4611686018427387903, %i.in
  %i.ip = icmp ult i64 %i.io, %i.im
  br i1 %i.ip, label %.loopexit777, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250

.loopexit777:                                     ; preds = %bb.an, %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc251 unwind label %.loopexit.split-lp729.loopexit.split-lp.loopexit.split-lp

.noexc251:                                        ; preds = %.loopexit777
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250: ; preds = %bb.an
  %i.iq = load ptr, ptr %10, align 8, !tbaa !50
  %i.ir = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.iq, i64 noundef %i.im)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253 unwind label %.loopexit.split-lp729.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250
  %i.is = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.hn
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253
  %i.iu = load i64, ptr %i.hn, align 8, !tbaa !51
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0686.0745, i64 8 ; 2 uses
  %.not703 = icmp eq ptr %i.iw, %i.hl
  br i1 %.not703, label %._crit_edge, label %.peel.next, !llvm.loop !1189

.loopexit.split-lp773.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit249.peel
  %lpad.loopexit.split-lp1144 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

.loopexit.split-lp729.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i250.peel, %.loopexit777
  %lpad.loopexit.split-lp1147 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.hn
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %.loopexit.split-lp729.loopexit.split-lp.loopexit.split-lp
  %i.iz = load i64, ptr %i.hn, align 8, !tbaa !51
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %.loopexit.split-lp729.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp773.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
  %.pn114 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1147, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %lpad.loopexit.split-lp1144, %.loopexit.split-lp773.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1147, %.loopexit.split-lp729.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %.loopexit.split-lp724

bb.ao:                                            ; preds = %.lr.ph750, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %.sroa.0682.0748 = phi ptr [ %i.ib, %.lr.ph750 ], [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ] ; 2 uses
  %i.jb = load ptr, ptr %.sroa.0682.0748, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %i.jb)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.jc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.167, i64 noundef 2)
          to label %.noexc263 unwind label %bb.au, !noalias !1244 ; 6 uses

.noexc263:                                        ; preds = %bb.ap
  store ptr %i.ie, ptr %11, align 8, !tbaa !69, !alias.scope !1244
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !50 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 5 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

bb.aq:                                            ; preds = %.noexc263
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !70 ; 3 uses
  %i.ji = icmp ult i64 %i.jh, 16
  call void @llvm.assume(i1 %i.ji)
  %i.jj = add nuw nsw i64 %i.jh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ie, ptr noundef nonnull align 8 dereferenceable(1) %i.je, i64 %i.jj, i1 false)
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %.noexc263
  store ptr %i.jd, ptr %11, align 8, !tbaa !50, !alias.scope !1244
  %i.jk = load i64, ptr %i.je, align 8, !tbaa !51
  store i64 %i.jk, ptr %i.ie, align 8, !tbaa !51, !alias.scope !1244
  %.phi.trans.insert.i261 = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %.pre.i262 = load i64, ptr %.phi.trans.insert.i261, align 8, !tbaa !70
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260, %bb.aq
  %i.jl = phi i64 [ %i.jh, %bb.aq ], [ %.pre.i262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store i64 %i.jl, ptr %i.if, align 8, !tbaa !70, !alias.scope !1244
  store ptr %i.je, ptr %i.jc, align 8, !tbaa !50
  store i64 0, ptr %i.jm, align 8, !tbaa !70
  store i8 0, ptr %i.je, align 8, !tbaa !51
  %i.jn = load i64, ptr %i.if, align 8, !tbaa !70 ; 2 uses
  %i.jo = load i64, ptr %i.cu, align 8, !tbaa !70
  %i.jp = sub i64 4611686018427387903, %i.jo
  %i.jq = icmp ult i64 %i.jp, %i.jn
  br i1 %i.jq, label %bb.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i265

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc266 unwind label %.loopexit.split-lp719.loopexit.split-lp.loopexit.split-lp

.noexc266:                                        ; preds = %bb.as
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i265: ; preds = %bb.ar
  %i.jr = load ptr, ptr %11, align 8, !tbaa !50
  %i.js = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.jr, i64 noundef %i.jn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit268 unwind label %.loopexit.split-lp719.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i265
  %i.jt = load ptr, ptr %11, align 8, !tbaa !50   ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.ie
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit268
  %i.jv = load i64, ptr %i.ie, align 8, !tbaa !51
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit268, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269
  %i.jx = load ptr, ptr %12, align 8, !tbaa !50   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.ig
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
  %i.jz = load i64, ptr %i.ig, align 8, !tbaa !51
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0682.0748, i64 8 ; 2 uses
  %.not704 = icmp eq ptr %i.kb, %i.id
  br i1 %.not704, label %.loopexit717, label %bb.ao

bb.at:                                            ; preds = %bb.ao
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280

bb.au:                                            ; preds = %bb.ap
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277
end_hunk_5
begin_hunk_6_@_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_23UninhabitedTypeFunctionE:bb.a
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ps = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !70 ; 2 uses
  %i.pu = load i64, ptr %i.mi, align 8, !tbaa !70
  %i.pv = sub i64 4611686018427387903, %i.pu
  %i.pw = icmp ult i64 %i.pv, %i.pt
  br i1 %i.pw, label %bb.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i320

bb.bs:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc321 unwind label %bb.ca

.noexc321:                                        ; preds = %bb.bs
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i320: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.px = load ptr, ptr %15, align 8, !tbaa !50
  %i.py = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.px, i64 noundef %i.pt)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit323 unwind label %bb.ca ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i320
  %i.pz = load ptr, ptr %15, align 8, !tbaa !50   ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.qb = icmp eq ptr %i.pz, %i.qa
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit323
  %i.qc = load i64, ptr %i.qa, align 8, !tbaa !51
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit323, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324
  %i.qe = load ptr, ptr %18, align 8, !tbaa !50   ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.qg = icmp eq ptr %i.qe, %i.qf
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326
  %i.qh = load i64, ptr %i.qf, align 8, !tbaa !51
  %i.qi = add i64 %i.qh, 1
  call void @_ZdlPvm(ptr noundef %i.qe, i64 noundef %i.qi) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.qj = load ptr, ptr %16, align 8, !tbaa !50   ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.nk
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329
  %i.ql = load i64, ptr %i.nk, align 8, !tbaa !51
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330
  %i.qn = load ptr, ptr %17, align 8, !tbaa !50   ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.qp = icmp eq ptr %i.qn, %i.qo
  br i1 %i.qp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332
  %i.qq = load i64, ptr %i.qo, align 8, !tbaa !51
  %i.qr = add i64 %i.qq, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %.loopexit

bb.bt:                                            ; preds = %.noexc.i285, %bb.aw
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

bb.bu:                                            ; preds = %bb.ba
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i294, %bb.bd
  %i.qu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qv = load ptr, ptr %13, align 8, !tbaa !50   ; 2 uses
  %i.qw = icmp eq ptr %i.qv, %i.lh
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336: ; preds = %bb.bv
  %i.qx = load i64, ptr %i.lh, align 8, !tbaa !51
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336, %bb.bu
  %.pn125 = phi { ptr, i32 } [ %i.qt, %bb.bu ], [ %i.qu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336 ], [ %i.qu, %bb.bv ] ; 2 uses
  %i.qz = load ptr, ptr %14, align 8, !tbaa !50   ; 2 uses
  %i.ra = icmp eq ptr %i.qz, %i.ku
  br i1 %i.ra, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
  %i.rb = load i64, ptr %i.ku, align 8, !tbaa !51
  %i.rc = add i64 %i.rb, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339, %bb.bt
  %.pn125.pn = phi { ptr, i32 } [ %i.qs, %bb.bt ], [ %.pn125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339 ], [ %.pn125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %common.resume

bb.bw:                                            ; preds = %bb.bh
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353

bb.bx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i307, %bb.bj
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

bb.by:                                            ; preds = %bb.bl
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i315, %bb.bq, %.critedge.i
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i320, %bb.bs
  %i.rh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ri = load ptr, ptr %15, align 8, !tbaa !50   ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %bb.ca
  %i.rl = load i64, ptr %i.rj, align 8, !tbaa !51
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342, %bb.bz
  %.pn135 = phi { ptr, i32 } [ %i.rg, %bb.bz ], [ %i.rh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342 ], [ %i.rh, %bb.ca ] ; 2 uses
  %i.rn = load ptr, ptr %18, align 8, !tbaa !50   ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.rp = icmp eq ptr %i.rn, %i.ro
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  %i.rq = load i64, ptr %i.ro, align 8, !tbaa !51
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.rn, i64 noundef %i.rr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %bb.by
  %.pn135.pn = phi { ptr, i32 } [ %i.rf, %bb.by ], [ %.pn135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.pn135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.rs = load ptr, ptr %16, align 8, !tbaa !50   ; 2 uses
  %i.rt = icmp eq ptr %i.rs, %i.nk
  br i1 %i.rt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347
  %i.ru = load i64, ptr %i.nk, align 8, !tbaa !51
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348, %bb.bx
  %.pn135.pn.pn = phi { ptr, i32 } [ %i.re, %bb.bx ], [ %.pn135.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348 ], [ %.pn135.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ] ; 2 uses
  %i.rw = load ptr, ptr %17, align 8, !tbaa !50   ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ry = icmp eq ptr %i.rw, %i.rx
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350
  %i.rz = load i64, ptr %i.rx, align 8, !tbaa !51
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.sa) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351, %bb.bw
  %.pn135.pn.pn.pn = phi { ptr, i32 } [ %i.rd, %bb.bw ], [ %.pn135.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351 ], [ %.pn135.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %.loopexit.split-lp708

bb.cb:                                            ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit306
  %.not701751 = icmp eq ptr %i.mu, %i.mt
  br i1 %.not701751, label %._crit_edge756, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit357.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit357.peel: ; preds = %bb.cb
  %i.sb = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.sd = load ptr, ptr %i.mu, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef %i.sd)
          to label %bb.cc unwind label %.loopexit.split-lp789.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit357.peel
  %i.se = load i64, ptr %i.sb, align 8, !tbaa !70 ; 2 uses
  %i.sf = load i64, ptr %i.mi, align 8, !tbaa !70
  %i.sg = sub i64 4611686018427387903, %i.sf
  %i.sh = icmp ult i64 %i.sg, %i.se
  br i1 %i.sh, label %.loopexit793, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358.peel: ; preds = %bb.cc
  %i.si = load ptr, ptr %19, align 8, !tbaa !50
  %i.sj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.si, i64 noundef %i.se)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit361.peel unwind label %.loopexit.split-lp713.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit361.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358.peel
  %i.sk = load ptr, ptr %19, align 8, !tbaa !50   ; 2 uses
  %i.sl = icmp eq ptr %i.sk, %i.sc
  br i1 %i.sl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit361.peel
  %i.sm = load i64, ptr %i.sc, align 8, !tbaa !51
  %i.sn = add i64 %i.sm, 1
  call void @_ZdlPvm(ptr noundef %i.sk, i64 noundef %i.sn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit361.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.so = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 2 uses
  %.not701.peel = icmp eq ptr %i.so, %i.mt
  br i1 %.not701.peel, label %._crit_edge756, label %.peel.next782

._crit_edge756:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364.peel, %bb.cb
  %i.sp = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !1241 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !1241 ; 2 uses
  %.not702757 = icmp eq ptr %i.sq, %i.ss
  br i1 %.not702757, label %.loopexit, label %.lr.ph760

.lr.ph760:                                        ; preds = %._crit_edge756
  %i.st = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.su = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  br label %bb.ce

.peel.next782:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364
  %.sroa.0674.0752 = phi ptr [ %i.tl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364 ], [ %i.so, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364.peel ] ; 2 uses
  %i.sw = load ptr, ptr %.sroa.0674.0752, align 8, !tbaa !194
  %i.sx = load i64, ptr %i.mi, align 8, !tbaa !70
  %i.sy = and i64 %i.sx, -2
  %i.sz = icmp eq i64 %i.sy, 4611686018427387902
  br i1 %i.sz, label %.loopexit784, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i354

.loopexit784:                                     ; preds = %.peel.next782
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc355 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc355:                                        ; preds = %.loopexit784
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i354: ; preds = %.peel.next782
  %i.ta = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.167, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit357 unwind label %.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp708.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i354, %.loopexit784
  %lpad.loopexit.split-lp1130 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp708

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i354
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef %i.sw)
          to label %bb.cd unwind label %.loopexit.split-lp789.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit357
  %i.tb = load i64, ptr %i.sb, align 8, !tbaa !70 ; 2 uses
  %i.tc = load i64, ptr %i.mi, align 8, !tbaa !70
  %i.td = sub i64 4611686018427387903, %i.tc
  %i.te = icmp ult i64 %i.td, %i.tb
  br i1 %i.te, label %.loopexit793, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358

.loopexit793:                                     ; preds = %bb.cd, %bb.cc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc359 unwind label %.loopexit.split-lp713.loopexit.split-lp.loopexit.split-lp

.noexc359:                                        ; preds = %.loopexit793
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358: ; preds = %bb.cd
  %i.tf = load ptr, ptr %19, align 8, !tbaa !50
  %i.tg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.tf, i64 noundef %i.tb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit361 unwind label %.loopexit.split-lp713.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit361: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358
  %i.th = load ptr, ptr %19, align 8, !tbaa !50   ; 2 uses
  %i.ti = icmp eq ptr %i.th, %i.sc
  br i1 %i.ti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit361
  %i.tj = load i64, ptr %i.sc, align 8, !tbaa !51
  %i.tk = add i64 %i.tj, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0674.0752, i64 8 ; 2 uses
  %.not701 = icmp eq ptr %i.tl, %i.mt
  br i1 %.not701, label %._crit_edge756, label %.peel.next782, !llvm.loop !1200

.loopexit.split-lp789.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit357.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367

.loopexit.split-lp713.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i358.peel, %.loopexit793
  %lpad.loopexit.split-lp1135 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tm = load ptr, ptr %19, align 8, !tbaa !50   ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.sc
  br i1 %i.tn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365: ; preds = %.loopexit.split-lp713.loopexit.split-lp.loopexit.split-lp
  %i.to = load i64, ptr %i.sc, align 8, !tbaa !51
  %i.tp = add i64 %i.to, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367: ; preds = %.loopexit.split-lp713.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp789.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365
  %.pn131 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp789.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1135, %.loopexit.split-lp713.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %.loopexit.split-lp708

bb.ce:                                            ; preds = %.lr.ph760, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383
  %.sroa.0670.0758 = phi ptr [ %i.sq, %.lr.ph760 ], [ %i.uq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383 ] ; 2 uses
  %i.tq = load ptr, ptr %.sroa.0670.0758, align 8, !tbaa !280
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_11TypePackVarE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef %i.tq)
          to label %bb.cf unwind label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.tr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.167, i64 noundef 2)
          to label %.noexc372 unwind label %bb.ck, !noalias !1249 ; 6 uses

.noexc372:                                        ; preds = %bb.cf
  store ptr %i.st, ptr %20, align 8, !tbaa !69, !alias.scope !1249
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !50 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 16 ; 5 uses
  %i.tu = icmp eq ptr %i.ts, %i.tt
  br i1 %i.tu, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368

bb.cg:                                            ; preds = %.noexc372
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !70 ; 3 uses
  %i.tx = icmp ult i64 %i.tw, 16
  call void @llvm.assume(i1 %i.tx)
  %i.ty = add nuw nsw i64 %i.tw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.st, ptr noundef nonnull align 8 dereferenceable(1) %i.tt, i64 %i.ty, i1 false)
  br label %bb.ch

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368: ; preds = %.noexc372
  store ptr %i.ts, ptr %20, align 8, !tbaa !50, !alias.scope !1249
  %i.tz = load i64, ptr %i.tt, align 8, !tbaa !51
  store i64 %i.tz, ptr %i.st, align 8, !tbaa !51, !alias.scope !1249
  %.phi.trans.insert.i369 = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %.pre.i370 = load i64, ptr %.phi.trans.insert.i369, align 8, !tbaa !70
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368, %bb.cg
  %i.ua = phi i64 [ %i.tw, %bb.cg ], [ %.pre.i370, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i368 ]
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store i64 %i.ua, ptr %i.su, align 8, !tbaa !70, !alias.scope !1249
  store ptr %i.tt, ptr %i.tr, align 8, !tbaa !50
  store i64 0, ptr %i.ub, align 8, !tbaa !70
  store i8 0, ptr %i.tt, align 8, !tbaa !51
  %i.uc = load i64, ptr %i.su, align 8, !tbaa !70 ; 2 uses
  %i.ud = load i64, ptr %i.mi, align 8, !tbaa !70
  %i.ue = sub i64 4611686018427387903, %i.ud
  %i.uf = icmp ult i64 %i.ue, %i.uc
  br i1 %i.uf, label %bb.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i374

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc375 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc375:                                        ; preds = %bb.ci
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i374: ; preds = %bb.ch
  %i.ug = load ptr, ptr %20, align 8, !tbaa !50
  %i.uh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ug, i64 noundef %i.uc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit377 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit377: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i374
  %i.ui = load ptr, ptr %20, align 8, !tbaa !50   ; 2 uses
  %i.uj = icmp eq ptr %i.ui, %i.st
  br i1 %i.uj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit377
  %i.uk = load i64, ptr %i.st, align 8, !tbaa !51
  %i.ul = add i64 %i.uk, 1
  call void @_ZdlPvm(ptr noundef %i.ui, i64 noundef %i.ul) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378
  %i.um = load ptr, ptr %21, align 8, !tbaa !50   ; 2 uses
  %i.un = icmp eq ptr %i.um, %i.sv
  br i1 %i.un, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380
  %i.uo = load i64, ptr %i.sv, align 8, !tbaa !51
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %i.um, i64 noundef %i.up) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0670.0758, i64 8 ; 2 uses
  %.not702 = icmp eq ptr %i.uq, %i.ss
  br i1 %.not702, label %.loopexit, label %bb.ce

bb.cj:                                            ; preds = %bb.ce
  %i.ur = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_26MultipleNonviableOverloadsE:bb.a

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.a, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.v, %.lr.ph.i4.i ] ; 3 uses
  %i.ah = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !51, !noalias !1499
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !51
  %i.an = load i8, ptr %i.aj, align 2, !tbaa !51, !noalias !1499
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ao = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ap = or disjoint i8 %i.ao, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.ap, %bb.i ], [ %i.an, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.n, align 1, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !1500)
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.292, i64 noundef 47)
          to label %.noexc unwind label %bb.o, !noalias !1500 ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !69, !alias.scope !1500
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !50 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !70 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.as, ptr %3, align 8, !tbaa !50, !alias.scope !1500
  %i.az = load i64, ptr %i.at, align 8, !tbaa !51
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !51, !alias.scope !1500
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.ba = phi i64 [ %i.aw, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !70, !alias.scope !1500
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !50
  store i64 0, ptr %i.bb, align 8, !tbaa !70
  store i8 0, ptr %i.at, align 8, !tbaa !51
  call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.bd = add i64 %i.ba, -4611686018427387878
  %i.be = icmp ult i64 %i.bd, 26
  br i1 %i.be, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc7 unwind label %bb.p, !noalias !1501

.noexc7:                                          ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.k
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.293, i64 noundef 26)
          to label %.noexc8 unwind label %bb.p, !noalias !1501 ; 6 uses

.noexc8:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !69, !alias.scope !1501
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !50 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

bb.m:                                             ; preds = %.noexc8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !70 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %.noexc8
  store ptr %i.bh, ptr %0, align 8, !tbaa !50, !alias.scope !1501
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !51
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !51, !alias.scope !1501
  %.phi.trans.insert.i5 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.pre.i6 = load i64, ptr %.phi.trans.insert.i5, align 8, !tbaa !70
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4, %bb.m
  %i.bp = phi i64 [ %i.bl, %bb.m ], [ %.pre.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !70, !alias.scope !1501
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !50
  store i64 0, ptr %i.bq, align 8, !tbaa !70
  store i8 0, ptr %i.bi, align 8, !tbaa !51
  %i.bs = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ar
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.n
  %i.bu = load i64, ptr %i.ar, align 8, !tbaa !51
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.bw = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.m
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.by = load i64, ptr %i.m, align 8, !tbaa !51
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.o:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ar
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.p
  %i.ce = load i64, ptr %i.ar, align 8, !tbaa !51
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.o ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.cb, %bb.p ]
  %i.cg = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.m
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ci = load i64, ptr %i.m, align 8, !tbaa !51
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4Luau14ErrorConverterclB5cxx11ERKNS_21GenericBoundsMismatchE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.c, align 8, !tbaa !70
  store i8 0, ptr %i.b, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !193  ; 2 uses
  %.not171 = icmp eq ptr %i.f, %i.g
  br i1 %.not171, label %._crit_edge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %.pre)
          to label %bb.b unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %i.j = load i64, ptr %i.h, align 8, !tbaa !70   ; 2 uses
  %i.k = load i64, ptr %i.c, align 8, !tbaa !70
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %.loopexit185, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %bb.b
  %i.n = load ptr, ptr %4, align 8, !tbaa !50
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.n, i64 noundef %i.j)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp159.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.p = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.i
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  %i.r = load i64, ptr %i.i, align 8, !tbaa !51
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !193
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ugt i64 %i.x, 8
  br i1 %i.y, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.z, ptr %5, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %i.aa, align 8, !tbaa !70
  store i8 0, ptr %i.z, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !192
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !193 ; 2 uses
  %.not172 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not172, label %._crit_edge170, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54.peel: ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !194
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %i.ah)
          to label %bb.c unwind label %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54.peel
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !70 ; 2 uses
  %i.aj = load i64, ptr %i.aa, align 8, !tbaa !70
  %i.ak = sub i64 4611686018427387903, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ai
  br i1 %i.al, label %.loopexit200, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55.peel: ; preds = %bb.c
  %i.am = load ptr, ptr %6, align 8, !tbaa !50
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.am, i64 noundef %i.ai)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58.peel unwind label %.loopexit.split-lp149.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55.peel
  %i.ao = load ptr, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ag
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58.peel
  %i.aq = load i64, ptr %i.ag, align 8, !tbaa !51
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit58.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !192
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !193
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = icmp ugt i64 %i.aw, 8
  br i1 %i.ax, label %.peel.next190, label %._crit_edge170

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.027166 = phi i64 [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !70
  %i.az = add i64 %i.ay, -4611686018427387901
  %i.ba = icmp ult i64 %i.az, 3
  br i1 %i.ba, label %.loopexit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.loopexit:                                        ; preds = %.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc unwind label %.loopexit.split-lp154.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.peel.next
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.295, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp154.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp154.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %.loopexit
  %lpad.loopexit.split-lp300 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %.pre205 = load ptr, ptr %i.d, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.pre205, i64 %.027166
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !194
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.bd)
          to label %bb.d unwind label %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.be = load i64, ptr %i.h, align 8, !tbaa !70  ; 2 uses
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !70
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.be
  br i1 %i.bh, label %.loopexit185, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

.loopexit185:                                     ; preds = %bb.d, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc44 unwind label %.loopexit.split-lp159.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %.loopexit185
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.d
  %i.bi = load ptr, ptr %4, align 8, !tbaa !50
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bi, i64 noundef %i.be)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp159.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bk = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.i
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.bm = load i64, ptr %i.i, align 8, !tbaa !51
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bo = add nuw i64 %.027166, 1                 ; 2 uses
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !192
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !193
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3
  %i.bv = icmp ult i64 %i.bo, %i.bu
  br i1 %i.bv, label %.peel.next, label %._crit_edge, !llvm.loop !1502

.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.peel
  %lpad.loopexit.split-lp303 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

.loopexit.split-lp159.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel, %.loopexit185
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.i
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %.loopexit.split-lp159.loopexit.split-lp.loopexit.split-lp
  %i.by = load i64, ptr %i.i, align 8, !tbaa !51
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %.loopexit.split-lp159.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %.pn39 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %lpad.loopexit.split-lp303, %.loopexit.split-lp181.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp159.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.loopexit.split-lp154

._crit_edge170:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.peel, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !158 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !256 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.ca, ptr %12, align 8, !tbaa !69
  %i.cb = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.cc = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.cc, %i.cb
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge170
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.301) #35
          to label %.noexc49 unwind label %bb.ab

.noexc49:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %._crit_edge170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !158
  %i.cd = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.cd, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.f
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc50 unwind label %bb.ab  ; 2 uses

.noexc50:                                         ; preds = %.noexc.i.i.i
  store ptr %i.ce, ptr %12, align 8, !tbaa !50
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !158
  store i64 %i.cf, ptr %i.ca, align 8, !tbaa !51
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc50, %bb.f
  %i.cg = phi ptr [ %i.ce, %.noexc50 ], [ %i.ca, %bb.f ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.j
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ch = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !51
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !51
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.j

.peel.next190:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %.0167 = phi i64 [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.peel ] ; 2 uses
  %i.ci = load i64, ptr %i.aa, align 8, !tbaa !70
  %i.cj = add i64 %i.ci, -4611686018427387901
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.loopexit192, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51

.loopexit192:                                     ; preds = %.peel.next190
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #35
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %.loopexit192
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51: ; preds = %.peel.next190
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.296, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51, %.loopexit192
  %lpad.loopexit.split-lp292 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51
  %.pre207 = load ptr, ptr %i.ab, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.pre207, i64 %.0167
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !194
  invoke void @_ZN4Luau8toStringB5cxx11EPKNS_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %i.cn)
          to label %bb.i unwind label %.loopexit.split-lp197.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54
  %i.co = load i64, ptr %i.af, align 8, !tbaa !70 ; 2 uses
  %i.cp = load i64, ptr %i.aa, align 8, !tbaa !70
  %i.cq = sub i64 4611686018427387903, %i.cp
  %i.cr = icmp ult i64 %i.cq, %i.co
  br i1 %i.cr, label %.loopexit200, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i55

.loopexit200:                                     ; preds = %bb.i, %bb.c
end_hunk_7
