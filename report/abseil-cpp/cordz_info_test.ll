Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cordz_info_test?download=true
inline.NumInlined: 3095
inline.NumDeleted: 1152
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_142CordzInfoTest_TrackUntrackTailFirstV2_Test8TestBodyEv:bb.a
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.eq:                                            ; preds = %bb.em
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #21
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.pn117 = phi { ptr, i32 } [ %i.jm, %bb.eq ], [ %i.jl, %bb.ep ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  %i.jn = load ptr, ptr %38, align 8, !tbaa !78   ; 3 uses
  %.not.i.i249 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i249, label %_ZN7testing7MessageD2Ev.exit251, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250: ; preds = %bb.er
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !31
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(128) %i.jn) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit251

_ZN7testing7MessageD2Ev.exit251:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250, %bb.er, %bb.eo
  %.pn117.pn = phi { ptr, i32 } [ %i.jk, %bb.eo ], [ %.pn117, %bb.er ], [ %.pn117, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #21
  br label %bb.fa

bb.es:                                            ; preds = %bb.eg, %_ZN7testing7MessageD2Ev.exit248
  %i.jr = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !72 ; 4 uses
  %.not.i.i252 = icmp eq ptr %i.js, null
  br i1 %.not.i.i252, label %_ZN7testing15AssertionResultD2Ev.exit256, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !76 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %i.jv = icmp eq ptr %i.jt, %i.ju
  br i1 %i.jv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253: ; preds = %bb.et
  %i.jw = load i64, ptr %i.ju, align 8, !tbaa !57
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jx) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i253
  call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef 32) #23
  br label %_ZN7testing15AssertionResultD2Ev.exit256

_ZN7testing15AssertionResultD2Ev.exit256:         ; preds = %bb.es, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  br label %bb.eu

bb.eu:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit222, %_ZN7testing15AssertionResultD2Ev.exit178, %_ZN7testing15AssertionResultD2Ev.exit256
  %i.jy = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = atomicrmw sub ptr %i.jz, i32 2 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.ka, 2
  br i1 %.not.i.i.i, label %bb.ev, label %_ZN4absl12lts_2026052612TestCordDataD2Ev.exit, !prof !100

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.jy)
          to label %_ZN4absl12lts_2026052612TestCordDataD2Ev.exit unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #22
  unreachable

_ZN4absl12lts_2026052612TestCordDataD2Ev.exit:    ; preds = %bb.eu, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.ex

bb.ex:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit146, %_ZN4absl12lts_2026052612TestCordDataD2Ev.exit
  %i.kd = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = atomicrmw sub ptr %i.ke, i32 2 acq_rel, align 4
  %.not.i.i.i257 = icmp eq i32 %i.kf, 2
  br i1 %.not.i.i.i257, label %bb.ey, label %_ZN4absl12lts_2026052612TestCordDataD2Ev.exit258, !prof !100

bb.ey:                                            ; preds = %bb.ex
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.kd)
          to label %_ZN4absl12lts_2026052612TestCordDataD2Ev.exit258 unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.kg = landingpad { ptr, i32 }
          catch ptr null
  %i.kh = extractvalue { ptr, i32 } %i.kg, 0
  call void @__clang_call_terminate(ptr %i.kh) #22
  unreachable

_ZN4absl12lts_2026052612TestCordDataD2Ev.exit258: ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN4absl12lts_2026052613cord_internal11CordzHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.fa:                                            ; preds = %_ZN7testing7MessageD2Ev.exit251, %bb.ei
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %_ZN7testing7MessageD2Ev.exit251 ], [ %i.jb, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  br label %bb.fb

bb.fb:                                            ; preds = %bb.bf, %bb.bv, %bb.cl, %bb.db, %bb.dr, %bb.eh, %bb.fa, %bb.be
  %.pn117.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.be ], [ %.pn117.pn.pn, %bb.fa ], [ %i.do, %bb.bf ], [ %.pn111.pn.pn, %bb.eh ], [ %.pn105.pn.pn, %bb.dr ], [ %.pn99.pn.pn, %bb.db ], [ %.pn93.pn.pn, %bb.cl ], [ %.pn87.pn.pn, %bb.bv ]
  call void @_ZN4absl12lts_2026052612TestCordDataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #21
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.bd
  %.pn117.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn, %bb.fb ], [ %i.dm, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.fd

bb.fd:                                            ; preds = %bb.al, %bb.bc, %bb.fc, %bb.v
  %.pn117.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aw, %bb.v ], [ %.pn117.pn.pn.pn.pn.pn, %bb.fc ], [ %.pn81.pn.pn, %bb.bc ], [ %.pn75.pn.pn, %bb.al ]
  call void @_ZN4absl12lts_2026052612TestCordDataD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #21
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.u
  %.pn117.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn.pn.pn.pn, %bb.fd ], [ %i.av, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.t
  %.pn117.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fe ], [ %.pn69.pn.pn, %bb.t ]
  call void @_ZN4absl12lts_2026052613cord_internal11CordzHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn117.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052613cord_internal12_GLOBAL__N_126CordzInfoTest_StackV2_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052613cord_internal12_GLOBAL__N_126CordzInfoTest_StackV2_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_126CordzInfoTest_StackV2_TestE, i64 16), ptr %i.a, align 8, !tbaa !31
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #23
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_126CordzInfoTest_StackV2_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_126CordzInfoTest_StackV2_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20260526::TestCordData", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.197", align 8 ; 9 uses
  %6 = alloca %"class.testing::PolymorphicMatcher.198", align 8 ; 6 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #25 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 2, ptr %i.b, align 4, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 17, ptr %i.c, align 4, !tbaa !48
  store ptr %i.a, ptr %1, align 8, !tbaa !51
  store i64 100, ptr %i.a, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %i.d, i8 1, i64 100, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 1, ptr %i.e, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.a, ptr %i.f, align 8, !tbaa !56
  invoke void @_ZN4absl12lts_2026052613cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 9, i64 noundef 1)
          to label %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i unwind label %bb.n

_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !57
  %i.h = add nsw i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #24
          to label %bb.b unwind label %bb.ak      ; 10 uses

bb.b:                                             ; preds = %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 400 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.j, i8 0, i64 400, i1 false)
  %i.l = invoke noundef i32 @_ZN4absl12lts_2026052613GetStackTraceEPPvii(ptr noundef nonnull %i.j, i32 noundef 50, i32 noundef 1)
          to label %bb.c unwind label %.thread101 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = icmp ugt i32 %i.l, 50
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i64 %i.m, -50                    ; 3 uses
  %.not.i59 = icmp eq i64 %i.o, 0
  br i1 %.not.i59, label %_ZNSt6vectorIPvSaIS0_EE6resizeEm.exit30, label %9

9:                                                ; preds = %bb.d
  %10 = icmp ugt i64 %i.o, 1152921504606846925
  br i1 %10, label %bb.e, label %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i65

bb.e:                                             ; preds = %9
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #26
          to label %.noexc73 unwind label %.thread101

.noexc73:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i65: ; preds = %9
  %.sroa.speculated.i.i66 = call i64 @llvm.umax.i64(i64 %i.o, i64 50)
  %i.p = add nuw nsw i64 %.sroa.speculated.i.i66, 50 ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #24
          to label %.noexc74 unwind label %.thread101 ; 6 uses

.noexc74:                                         ; preds = %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i65
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 400
  store ptr null, ptr %i.s, align 8, !tbaa !148
  %i.t = add nsw i64 %i.m, -51                    ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33.i69, label %_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i67

_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i67: ; preds = %.noexc74
  %i.v = getelementptr i8, ptr %i.r, i64 408
  %.idx.i.i.i.i.i31.i68 = shl nuw nsw i64 %i.t, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %.idx.i.i.i.i.i31.i68, i1 false), !tbaa !148
  br label %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33.i69

_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33.i69: ; preds = %.noexc74, %_ZSt6fill_nIPPvmS0_ET_S2_T0_RKT1_.exit.loopexit.i.i.i30.i67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.r, ptr noundef nonnull align 8 dereferenceable(400) %i.j, i64 400, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 400) #23
  %i.w = getelementptr [8 x i8], ptr %i.r, i64 %i.m
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  br label %_ZNSt6vectorIPvSaIS0_EE6resizeEm.exit30

bb.f:                                             ; preds = %bb.c
  %.not = icmp eq i32 %i.l, 50
  br i1 %.not, label %_ZNSt6vectorIPvSaIS0_EE6resizeEm.exit30, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.m, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  br label %_ZNSt6vectorIPvSaIS0_EE6resizeEm.exit30

_ZNSt6vectorIPvSaIS0_EE6resizeEm.exit30:          ; preds = %bb.g, %bb.f, %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33.i69, %bb.d
  %.sroa.25.3 = phi ptr [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.x, %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33.i69 ], [ %i.k, %bb.d ] ; 2 uses
  %.sroa.14.1 = phi ptr [ %i.k, %bb.f ], [ %i.y, %bb.g ], [ %i.w, %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33.i69 ], [ %i.k, %bb.d ]
  %.sroa.076.3 = phi ptr [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.r, %_ZSt27__uninitialized_default_n_aIPPvmS0_ET_S2_T0_RSaIT1_E.exit33.i69 ], [ %i.j, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.z = invoke { ptr, i64 } @_ZNK4absl12lts_2026052613cord_internal9CordzInfo8GetStackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.i)
          to label %bb.h unwind label %bb.o       ; 2 uses

bb.h:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE6resizeEm.exit30
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  invoke fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_111FormatStackB5cxx11ENS0_4SpanIKPvEE(ptr dead_on_unwind noalias writable align 8 %2, ptr %i.aa, i64 %i.ab)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ac = ptrtoint ptr %.sroa.14.1 to i64
  %i.ad = ptrtoint ptr %.sroa.076.3 to i64        ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  invoke fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_111FormatStackB5cxx11ENS0_4SpanIKPvEE(ptr dead_on_unwind noalias writable align 8 %3, ptr nonnull %.sroa.076.3, i64 %i.af)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN7testing9HasSubstrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_18PolymorphicMatcherINS_8internal16HasSubstrMatcherIS6_EEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::PolymorphicMatcher.198") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7testing8internal33MakePredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEENS0_29PredicateFormatterFromMatcherIT_EESD_(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::PredicateFormatterFromMatcher.197") align 8 %5, ptr noundef nonnull align 8 %6)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEclIS9_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.110, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %5, align 8, !tbaa !76    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !57
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #23
  br label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit

_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.al = load ptr, ptr %6, align 8, !tbaa !76    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !57
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #23
  br label %_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit

_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.aq = load i8, ptr %4, align 8, !tbaa !69, !range !70, !noundef !71
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.ac, label %bb.t

bb.n:                                             ; preds = %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit56

bb.o:                                             ; preds = %bb.h, %_ZNSt6vectorIPvSaIS0_EE6resizeEm.exit30
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.p:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.q:                                             ; preds = %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit36

bb.r:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit33

bb.s:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %5, align 8, !tbaa !76    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31: ; preds = %bb.s
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !57
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #23
  br label %_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit33

_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit33: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31, %bb.r
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31 ], [ %i.ax, %bb.s ] ; 2 uses
  %i.bd = load ptr, ptr %6, align 8, !tbaa !76    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit33
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !57
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #23
  br label %_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit36

_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit36: ; preds = %_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.q ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34 ], [ %.pn, %_ZN7testing8internal29PredicateFormatterFromMatcherINS_18PolymorphicMatcherINS0_16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEED2Ev.exit33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ah

bb.t:                                             ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i37, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.v, %bb.u
  %i.bl = phi ptr [ %i.bk, %bb.v ], [ @.str.66, %bb.u ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 276, ptr noundef %i.bl)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bm = load ptr, ptr %7, align 8, !tbaa !78    ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i38, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.x
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !31
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(128) %i.bm) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.x, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ac

bb.y:                                             ; preds = %bb.t
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit41

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn16 = phi { ptr, i32 } [ %i.bs, %bb.aa ], [ %i.br, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.bt = load ptr, ptr %7, align 8, !tbaa !78    ; 3 uses
  %.not.i.i39 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i39, label %_ZN7testing7MessageD2Ev.exit41, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40: ; preds = %bb.ab
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(128) %i.bt) #21, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit41

_ZN7testing7MessageD2Ev.exit41:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40, %bb.ab, %bb.y
  %.pn16.pn = phi { ptr, i32 } [ %i.bq, %bb.y ], [ %.pn16, %bb.ab ], [ %.pn16, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  br label %bb.ah

bb.ac:                                            ; preds = %_ZN7testing18PolymorphicMatcherINS_8internal16HasSubstrMatcherINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit, %_ZN7testing7MessageD2Ev.exit
end_hunk_0
