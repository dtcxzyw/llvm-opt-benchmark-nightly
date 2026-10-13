Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/status_macros_test?download=true
inline.NumInlined: 3533
inline.NumDeleted: 1046
begin_hunk_0_@_ZN12_GLOBAL__N_135ReturnIfError_WorksWithBuilder_Test8TestBodyEv:bb.a
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  %i.dv = load ptr, ptr %27, align 8, !tbaa !51   ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i42, label %_ZN7testing7MessageD2Ev.exit44, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43: ; preds = %bb.bi
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(128) %i.dv) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit44

_ZN7testing7MessageD2Ev.exit44:                   ; preds = %bb.bi, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.bn

bb.bj:                                            ; preds = %bb.be
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit47

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit41
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bh
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #20
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn15 = phi { ptr, i32 } [ %i.eb, %bb.bl ], [ %i.ea, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  %i.ec = load ptr, ptr %27, align 8, !tbaa !51   ; 3 uses
  %.not.i.i45 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i45, label %_ZN7testing7MessageD2Ev.exit47, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46: ; preds = %bb.bm
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(128) %i.ec) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit47

_ZN7testing7MessageD2Ev.exit47:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46, %bb.bm, %bb.bj
  %.pn15.pn = phi { ptr, i32 } [ %i.dz, %bb.bj ], [ %.pn15, %bb.bm ], [ %.pn15, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #20
  br label %bb.bp

bb.bn:                                            ; preds = %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit, %_ZN7testing7MessageD2Ev.exit44
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !45 ; 4 uses
  %.not.i.i48 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i48, label %_ZN7testing15AssertionResultD2Ev.exit52, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !49 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49: ; preds = %bb.bo
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !30
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i50

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i50: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i49
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit52

_ZN7testing15AssertionResultD2Ev.exit52:          ; preds = %bb.bn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  ret void

bb.bp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit47, %.body
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %_ZN7testing7MessageD2Ev.exit47 ], [ %.pn13, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacrosD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.164", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  store i64 %i.c, ptr %1, align 8, !tbaa !81
  store ptr null, ptr %i.a, align 8, !tbaa !81
  invoke void @_ZN4absl12lts_2026052613StatusBuilder7DestroyESt10unique_ptrINS1_3RepESt14default_deleteIS3_EE(ptr noundef nonnull align 8 %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !81     ; 3 uses
  %.not.i1.i = icmp eq ptr %i.d, null
  br i1 %.not.i1.i, label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i: ; preds = %bb.b
  call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.d) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 448) #22
  br label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #21
  unreachable

_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit:   ; preds = %bb.b, %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_164ReturnIfError_IfInputIsBuilderDoesNotEagerlyConvertToStatus_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_164ReturnIfError_IfInputIsBuilderDoesNotEagerlyConvertToStatus_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_164ReturnIfError_IfInputIsBuilderDoesNotEagerlyConvertToStatus_TestE, i64 16), ptr %i.a, align 8, !tbaa !18
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_164ReturnIfError_IfInputIsBuilderDoesNotEagerlyConvertToStatus_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_164ReturnIfError_IfInputIsBuilderDoesNotEagerlyConvertToStatus_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.164", align 8 ; 5 uses
  %2 = alloca %"class.std::unique_ptr.164", align 8 ; 5 uses
  %3 = alloca %"class.std::unique_ptr.164", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::Status", align 8 ; 7 uses
  %5 = alloca %"class.absl::lts_20260526::Status", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20260526::StatusBuilder", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20260526::status_macro_internal::StatusAdaptorForMacros", align 8 ; 12 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %9 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %11 = alloca %"class.absl::lts_20260526::Status", align 8 ; 8 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr @.str.133, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !1017
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !1019
  %i.a = tail call noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef 9, i64 5, ptr nonnull @.str.134, i64 61, ptr nonnull @.str.2), !noalias !1019 ; 2 uses
  store i64 61, ptr %6, align 8, !tbaa !77, !alias.scope !1018, !noalias !1017
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.2, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !76, !alias.scope !1018, !noalias !1017
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1019
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.thread.i, label %bb.b

_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.thread.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1019
  store ptr null, ptr %i.c, align 8, !tbaa !81, !alias.scope !1018, !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !1017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 16, i1 false), !tbaa.struct !99, !noalias !1017
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %.critedge.i

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %4, align 8, !tbaa !32, !noalias !1019
  store i64 55, ptr %5, align 8, !tbaa !32, !noalias !1019
  %i.e = invoke noundef ptr @_ZN4absl12lts_2026052613StatusBuilder11InitRepImplENS0_6StatusE(ptr noundef nonnull align 8 %4)
          to label %bb.c unwind label %.body.i.i, !noalias !1019 ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %4, align 8, !tbaa !32, !noalias !1019 ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %i.f to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %bb.f unwind label %bb.e, !noalias !1019

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #21, !noalias !1019
  unreachable

common.resume:                                    ; preds = %.body.i.i, %.body.i, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.pn, %bb.al ], [ %i.k, %.body.i.i ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

.body.i.i:                                        ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20, !noalias !1019
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #20, !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !1019
  br label %common.resume

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1019
  store ptr %i.e, ptr %i.l, align 8, !tbaa !81, !alias.scope !1018, !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !1019
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 440
  store i32 2, ptr %i.m, align 8, !tbaa !1031, !noalias !1017
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !1017
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 16, i1 false), !tbaa.struct !99, !noalias !1017
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr null, ptr %i.n, align 8, !tbaa !101, !alias.scope !1032, !noalias !1017
  %i.o = invoke noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #23
          to label %.noexc.i.i.i.i unwind label %bb.h, !noalias !1033 ; 8 uses

.noexc.i.i.i.i:                                   ; preds = %bb.f
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3RepC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(446) %i.o, ptr noundef nonnull align 8 dereferenceable(446) %i.e)
          to label %_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.i unwind label %bb.g, !noalias !1034

bb.g:                                             ; preds = %.noexc.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 448) #22, !noalias !1034
  br label %.body.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.h, %bb.g
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.p, %bb.g ]
  call void @_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #20, !noalias !1017
  br label %.body.i

_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.i: ; preds = %.noexc.i.i.i.i
  store ptr %i.o, ptr %i.n, align 8, !tbaa !81, !alias.scope !1032, !noalias !1017
  %i.r = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !1017
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %.critedge.i, label %bb.j

bb.i:                                             ; preds = %bb.l, %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i

.body12.i:                                        ; preds = %bb.n, %bb.i
  %eh.lpad-body13.i = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.ae, %bb.n ]
  call void @_ZN4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacrosD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #20
  br label %.body.i

bb.j:                                             ; preds = %_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 424
  %i.v = load i8, ptr %i.u, align 8, !tbaa !83, !range !43, !noalias !1017, !noundef !44
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.o)
          to label %.noexc.i unwind label %bb.i, !noalias !1017

.noexc.i:                                         ; preds = %bb.k
  %.pre.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !81, !noalias !1017
  br label %bb.l

bb.l:                                             ; preds = %.noexc.i, %bb.j
  %i.x = phi ptr [ %.pre.i.i.i, %.noexc.i ], [ %i.o, %bb.j ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !86, !noalias !1017, !nonnull !44, !align !87
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 1 dereferenceable(8) @.str.135, i64 noundef 7)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA8_cEEOS1_RKT_.exit.i unwind label %bb.i, !noalias !1017 ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA8_cEEOS1_RKT_.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1017
  %i.ab = load ptr, ptr %i.n, align 8, !noalias !1035
  %i.ac = ptrtoint ptr %i.ab to i64
  %.sroa.0.0.copyload.i.i = load i64, ptr %7, align 8, !tbaa !77, !noalias !1035
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !76, !noalias !1035
  store i64 %i.ac, ptr %3, align 8, !tbaa !81, !noalias !1035
  store ptr null, ptr %i.n, align 8, !tbaa !81, !noalias !1035
  invoke void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %11, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 %3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA8_cEEOS1_RKT_.exit.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !81, !noalias !1035 ; 3 uses
  %.not.i3.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i3.i.i, label %_ZN4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacrosD2Ev.exit.i, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i.i: ; preds = %bb.m
  call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.ad) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 448) #22
  br label %_ZN4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacrosD2Ev.exit.i

bb.n:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA8_cEEOS1_RKT_.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  br label %.body12.i

_ZN4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacrosD2Ev.exit.i: ; preds = %bb.m, %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !1017
  br label %bb.q

.critedge.i:                                      ; preds = %_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.i, %_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.thread.i
  %i.af = phi ptr [ null, %_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.thread.i ], [ %i.o, %_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.i ]
  %i.ag = phi ptr [ %i.d, %_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.thread.i ], [ %i.n, %_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.i ]
  %i.ah = phi ptr [ %i.c, %_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.thread.i ], [ %i.l, %_ZNK4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacroscvbEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !1017
  %i.ai = ptrtoint ptr %i.af to i64
  store i64 %i.ai, ptr %2, align 8, !tbaa !81, !noalias !1017
  store ptr null, ptr %i.ag, align 8, !tbaa !81, !noalias !1017
  invoke void @_ZN4absl12lts_2026052613StatusBuilder7DestroyESt10unique_ptrINS1_3RepESt14default_deleteIS3_EE(ptr noundef nonnull align 8 %2)
          to label %bb.o unwind label %bb.p, !noalias !1017

bb.o:                                             ; preds = %.critedge.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !81, !noalias !1017 ; 3 uses
  %.not.i1.i.i16.i = icmp eq ptr %i.aj, null
  br i1 %.not.i1.i.i16.i, label %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit.i.i18.i, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i.i17.i

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i.i17.i: ; preds = %bb.o
  call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.aj) #20, !noalias !1017
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 448) #22, !noalias !1017
  br label %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit.i.i18.i

bb.p:                                             ; preds = %.critedge.i
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #21, !noalias !1017
  unreachable

_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit.i.i18.i: ; preds = %bb.o, %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !1017
  store i64 1, ptr %11, align 8, !tbaa !32, !alias.scope !1036
  br label %bb.q

.body.i:                                          ; preds = %.body12.i, %.body.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body13.i, %.body12.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !1017
  call void @_ZN4absl12lts_2026052613StatusBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !1017
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit.i.i18.i, %_ZN4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacrosD2Ev.exit.i
  %i.am = phi ptr [ %i.ah, %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit.i.i18.i ], [ %i.l, %_ZN4absl12lts_2026052621status_macro_internal22StatusAdaptorForMacrosD2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !1017
  %14 = load ptr, ptr %i.am, align 8, !noalias !1017
  %i.an = ptrtoint ptr %14 to i64
  store i64 %i.an, ptr %1, align 8, !tbaa !81, !noalias !1017
  store ptr null, ptr %i.am, align 8, !tbaa !81, !noalias !1017
  invoke void @_ZN4absl12lts_2026052613StatusBuilder7DestroyESt10unique_ptrINS1_3RepESt14default_deleteIS3_EE(ptr noundef nonnull align 8 %1)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ao = load ptr, ptr %1, align 8, !tbaa !81, !noalias !1017 ; 3 uses
  %.not.i1.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i1.i.i, label %"_ZZN12_GLOBAL__N_164ReturnIfError_IfInputIsBuilderDoesNotEagerlyConvertToStatus_Test8TestBodyEvENK3$_0clEv.exit", label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i22.i

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i22.i: ; preds = %bb.r
  call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.ao) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 448) #22
  br label %"_ZZN12_GLOBAL__N_164ReturnIfError_IfInputIsBuilderDoesNotEagerlyConvertToStatus_Test8TestBodyEvENK3$_0clEv.exit"

bb.s:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #21
  unreachable

"_ZZN12_GLOBAL__N_164ReturnIfError_IfInputIsBuilderDoesNotEagerlyConvertToStatus_Test8TestBodyEvENK3$_0clEv.exit": ; preds = %bb.r, %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !1017
  %i.ar = load i64, ptr %11, align 8, !tbaa !32   ; 3 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %bb.u, label %bb.t

bb.t:                                             ; preds = %"_ZZN12_GLOBAL__N_164ReturnIfError_IfInputIsBuilderDoesNotEagerlyConvertToStatus_Test8TestBodyEvENK3$_0clEv.exit"
  %i.at = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !54
  br label %bb.v

bb.u:                                             ; preds = %"_ZZN12_GLOBAL__N_164ReturnIfError_IfInputIsBuilderDoesNotEagerlyConvertToStatus_Test8TestBodyEvENK3$_0clEv.exit"
  %i.ay = and i64 %i.ar, 2
  %.not.i = icmp eq i64 %i.ay, 0                  ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 0, i64 27
  %spec.select1.i = select i1 %.not.i, ptr null, ptr @_ZN4absl12lts_202605266Status16kMovedFromStringE
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0.0.i = phi i64 [ %spec.select.i, %bb.u ], [ %i.ax, %bb.t ]
  %.sroa.4.0.i = phi ptr [ %spec.select1.i, %bb.u ], [ %i.av, %bb.t ]
  store i64 %.sroa.0.0.i, ptr %10, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.4.0.i, ptr %i.az, align 8
  invoke void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPKcEEEclISt17basic_string_viewIcSt11char_traitsIcEEEENS_15AssertionResultES4_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.47, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ba = load i64, ptr %11, align 8, !tbaa !32   ; 2 uses
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %_ZN4absl12lts_202605266StatusD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = inttoptr i64 %i.ba to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bc)
          to label %_ZN4absl12lts_202605266StatusD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #21
  unreachable

_ZN4absl12lts_202605266StatusD2Ev.exit:           ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.bf = load i8, ptr %8, align 8, !tbaa !42, !range !43, !noundef !44
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.aj, label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.al

bb.aa:                                            ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !45 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ac, %bb.ab
  %i.bl = phi ptr [ %i.bk, %bb.ac ], [ @.str.76, %bb.ab ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 589, ptr noundef %i.bl)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.bm = load ptr, ptr %12, align 8, !tbaa !51   ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i7, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ae
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(128) %i.bm) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.aj

bb.af:                                            ; preds = %bb.aa
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit10

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.ah ], [ %i.br, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.bt = load ptr, ptr %12, align 8, !tbaa !51   ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i8, label %_ZN7testing7MessageD2Ev.exit10, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9: ; preds = %bb.ai
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(128) %i.bt) #20, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit10

_ZN7testing7MessageD2Ev.exit10:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9, %bb.ai, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %i.bq, %bb.af ], [ %.pn, %bb.ai ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i9 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #20
  br label %bb.al

bb.aj:                                            ; preds = %_ZN4absl12lts_202605266StatusD2Ev.exit, %_ZN7testing7MessageD2Ev.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !45 ; 4 uses
  %.not.i.i11 = icmp eq ptr %i.by, null
  br i1 %.not.i.i11, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !49 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ak
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !30
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #22
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 32) #22
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.aj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret void

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit10, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit10 ], [ %i.bh, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_134ReturnIfError_WorksWithLambda_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
end_hunk_0
