inline.NumInlined: 5869
inline.NumDeleted: 2271
begin_hunk_0_@_ZN5arrow12LocaleExistsEPKc:bb.a
          catch ptr @_ZTISt13runtime_error        ; 3 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.c = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #30
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = extractvalue { ptr, i32 } %i.a, 0
  %i.f = call ptr @__cxa_begin_catch(ptr %i.e) #30 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %bb.d ]
  ret i1 %.0

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt6localeC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #9

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11LocaleGuardC2EPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31 ; 3 uses
  invoke void @_ZN5arrow11LocaleGuard4ImplC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !698
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow11LocaleGuard4ImplC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.std::locale", align 8       ; 2 uses
  %3 = alloca %"class.std::locale", align 8       ; 7 uses
  %4 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !474
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt6localeC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt6locale6globalERKS_(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #30
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.b, %bb.d ] ; 3 uses
  %.04 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.d = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #30
  %i.e = icmp eq i32 %.04, %i.d
  br i1 %i.e, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.f = call ptr @__cxa_begin_catch(ptr %.0) #30 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull @.str.2, i32 noundef 672, i32 noundef 1)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA32_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(32) @.str.91)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIPKcEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(2) @.str.59)
          to label %bb.k unwind label %bb.n       ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k, %bb.c
  ret void

bb.m:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %4) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn9 = phi { ptr, i32 } [ %i.k, %bb.n ], [ %i.j, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.f
  %.merged = phi { ptr, i32 } [ %.pn, %bb.f ], [ %i.l, %bb.p ], [ %.pn9, %bb.o ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #30
  resume { ptr, i32 } %.merged

bb.r:                                             ; preds = %bb.o
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #35
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow11LocaleGuardD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::locale", align 8       ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !698    ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow11LocaleGuard4ImplESt14default_deleteIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  invoke void @_ZNSt6locale6globalERKS_(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNKSt14default_deleteIN5arrow11LocaleGuard4ImplEEclEPS2_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  call void @__clang_call_terminate(ptr %i.c) #35
  unreachable

_ZNKSt14default_deleteIN5arrow11LocaleGuard4ImplEEclEPS2_.exit.i: ; preds = %bb.b
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #30
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #32
  br label %_ZNSt10unique_ptrIN5arrow11LocaleGuard4ImplESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow11LocaleGuard4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow11LocaleGuard4ImplEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11EnvVarGuardC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.arrow::Result.185", align 8 ; 16 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %6 = alloca %"class.arrow::util::ArrowLog", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !26
  %i.c = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !29   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.e, ptr %i.a, align 8, !tbaa !48
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !32
  %i.h = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.h, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !25
  store i8 %i.j, ptr %i.i, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !29
  %i.m = load ptr, ptr %0, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 0, ptr %i.q, align 8, !tbaa !29
  store i8 0, ptr %i.p, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZN5arrow8internal9GetEnvVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.185") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = load ptr, ptr %3, align 8, !tbaa !39
  %i.s = icmp eq ptr %i.r, null
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.t, align 8, !tbaa !700
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !26, !alias.scope !711
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !32, !noalias !711 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !29, !noalias !711 ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  store ptr %i.w, ptr %4, align 8, !tbaa !32, !alias.scope !711
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !25, !noalias !711
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !25, !alias.scope !711
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !29, !noalias !711
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.ae = phi ptr [ %i.v, %bb.f ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 6 uses
  %i.af = phi i64 [ %i.aa, %bb.f ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !29, !alias.scope !711
  store ptr %i.x, ptr %i.u, align 8, !tbaa !32, !noalias !711
  store i64 0, ptr %i.ag, align 8, !tbaa !29, !noalias !711
  store i8 0, ptr %i.x, align 8, !tbaa !25, !noalias !711
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !32  ; 6 uses
  %i.aj = icmp eq ptr %i.ai, %i.p
  %i.ak = icmp eq ptr %i.ae, %i.v                 ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.ak, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.ak, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.al = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.al)
  %.not21.i = icmp eq ptr %4, %i.o
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %8, !prof !193

8:                                                ; preds = %bb.h
  switch i64 %i.af, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %8
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !25
  store i8 %i.am, ptr %i.ai, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ae, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %8
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !29 ; 2 uses
  store i64 %i.an, ptr %i.q, align 8, !tbaa !29
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ae, ptr %i.o, align 8, !tbaa !32
  store i64 %i.af, ptr %i.q, align 8, !tbaa !29
  %i.aq = load i64, ptr %i.v, align 8, !tbaa !25
  store i64 %i.aq, ptr %i.p, align 8, !tbaa !25
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ar = load i64, ptr %i.p, align 8, !tbaa !25
  store ptr %i.ae, ptr %i.o, align 8, !tbaa !32
  store i64 %i.af, ptr %i.q, align 8, !tbaa !29
  %i.as = load i64, ptr %i.v, align 8, !tbaa !25
  store i64 %i.as, ptr %i.p, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ai, ptr %4, align 8, !tbaa !32
  store i64 %i.ar, ptr %i.v, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.v, ptr %4, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %9 = phi ptr [ %i.ai, %bb.k ], [ %i.v, %bb.l ], [ %i.ae, %bb.h ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.ah, align 8, !tbaa !29
  store i8 0, ptr %9, align 1, !tbaa !25
  %i.at = load ptr, ptr %4, align 8, !tbaa !32    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.v
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.av = load i64, ptr %i.v, align 8, !tbaa !25
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.n:                                             ; preds = %bb.d
  store i8 0, ptr %i.t, align 8, !tbaa !700
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN5arrow8internal9SetEnvVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.p unwind label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.ay = load ptr, ptr %5, align 8, !tbaa !39
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN5arrow6StatusD2Ev.exit, label %bb.q, !prof !66

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN5arrow4util8ArrowLogC1EPKciNS0_13ArrowLogLevelE(ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull @.str.2, i32 noundef 695, i32 noundef 3)
          to label %bb.r unwind label %bb.ac

bb.r:                                             ; preds = %bb.q
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA24_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(24) @.str.47)
          to label %bb.s unwind label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA19_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 1 dereferenceable(19) @.str.48)
          to label %bb.t unwind label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA40_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 1 dereferenceable(40) @.str.49)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA2_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull align 1 dereferenceable(2) @.str.50)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA11_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 1 dereferenceable(11) @.str.51)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsIA3_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull align 1 dereferenceable(3) @.str.52)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow4util12ArrowLogBaselsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.critedge unwind label %bb.af ; 0 uses

.critedge:                                        ; preds = %bb.y
  %i.bh = load ptr, ptr %7, align 8, !tbaa !32    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %.critedge32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %.critedge
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !25
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #32
  br label %.critedge32

.critedge32:                                      ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.pr = load ptr, ptr %5, align 8, !tbaa !39
  %.not.i36 = icmp eq ptr %.pr, null
  br i1 %.not.i36, label %_ZN5arrow6StatusD2Ev.exit, label %bb.z, !prof !453

bb.z:                                             ; preds = %.critedge32
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.p, %.critedge32, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.bm = load ptr, ptr %3, align 8, !tbaa !39
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.aa, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !66

bb.aa:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i: ; preds = %bb.aa
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !25
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #32
  %.pr.pre.i = load ptr, ptr %3, align 8, !tbaa !39
  %i.bu = icmp eq ptr %.pr.pre.i, null
  br i1 %i.bu, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !69

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.aa, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.ab:                                            ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ac:                                            ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ae:                                            ; preds = %bb.x
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.af:                                            ; preds = %bb.y
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %7, align 8, !tbaa !32    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.af
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !25
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.by, %bb.ae ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.bz, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.bx, %bb.ad ]
  call void @_ZN5arrow4util8ArrowLogD1Ev(ptr noundef nonnull align 8 dereferenceable(17) %6) #30
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ac, %bb.ag
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ag ], [ %i.bw, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.cf = load ptr, ptr %5, align 8, !tbaa !39
  %.not.i40 = icmp eq ptr %i.cf, null
  br i1 %.not.i40, label %bb.aj, label %bb.ai, !prof !66

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ab, %bb.ah, %bb.ai
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.ab ], [ %.pn.pn.pn, %bb.ah ], [ %.pn.pn.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #30
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.m
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.aj ], [ %i.ax, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.cg = load ptr, ptr %i.o, align 8, !tbaa !32  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.p
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.ak
  %i.ci = load i64, ptr %i.p, align 8, !tbaa !25
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  %i.ck = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
end_hunk_0
