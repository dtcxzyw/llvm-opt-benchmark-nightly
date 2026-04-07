inline.NumInlined: 108
inline.NumDeleted: 88
begin_hunk_0_@_ZN6duckdb16VectorOperations7TryCastERNS_15CastFunctionSetERNS_20GetCastFunctionInputERNS_6VectorES6_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb:bb.a
  %i.v = load ptr, ptr %.sroa.024.0, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sroa.024.0) #6, !inline_history !40
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionLocalStateESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN6duckdb18FunctionLocalStateESt14default_deleteIS1_EED2Ev.exit16: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb18FunctionLocalStateEEclEPS1_.exit.i15
end_hunk_0
begin_hunk_1_@_ZN6duckdb16VectorOperations7TryCastERNS_15CastFunctionSetERNS_20GetCastFunctionInputERNS_6VectorES6_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #6, !inline_history !41
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit

_ZN6duckdb13BoundCastInfoD2Ev.exit:               ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionLocalStateESt14default_deleteIS1_EED2Ev.exit16, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i
end_hunk_1
begin_hunk_2_@_ZN6duckdb16VectorOperations7TryCastERNS_15CastFunctionSetERNS_20GetCastFunctionInputERNS_6VectorES6_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb:bb.a
  %i.ad = load ptr, ptr %.sroa.024.0, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.sroa.024.0) #6, !inline_history !40
  br label %_ZNSt10unique_ptrIN6duckdb18FunctionLocalStateESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN6duckdb18FunctionLocalStateESt14default_deleteIS1_EED2Ev.exit19: ; preds = %.thread, %bb.e, %_ZNKSt14default_deleteIN6duckdb18FunctionLocalStateEEclEPS1_.exit.i18
end_hunk_2
begin_hunk_3_@_ZN6duckdb16VectorOperations7TryCastERNS_15CastFunctionSetERNS_20GetCastFunctionInputERNS_6VectorES6_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb:bb.a
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #6, !inline_history !41
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit22

_ZN6duckdb13BoundCastInfoD2Ev.exit22:             ; preds = %_ZNSt10unique_ptrIN6duckdb18FunctionLocalStateESt14default_deleteIS1_EED2Ev.exit19, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i21
end_hunk_3
begin_hunk_4_@_ZN6duckdb16VectorOperations14DefaultTryCastERNS_6VectorES2_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12BindCastInfoEEclEPS1_.exit.i.i.i.i.i.i.i

end_hunk_4
begin_hunk_5_@_ZN6duckdb16VectorOperations14DefaultTryCastERNS_6VectorES2_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #6, !inline_history !48
  br label %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12BindCastInfoEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !49

_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.c, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
end_hunk_5
begin_hunk_6_@_ZN6duckdb15CastFunctionSetD2Ev
define linkonce_odr void @_ZN6duckdb15CastFunctionSetD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12BindCastInfoEEclEPS1_.exit.i.i.i.i.i.i

end_hunk_6
begin_hunk_7_@_ZN6duckdb15CastFunctionSetD2Ev:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #6, !inline_history !51
  br label %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12BindCastInfoEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !49

_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
end_hunk_7
begin_hunk_8_@_ZN6duckdb16VectorOperations11DefaultCastERNS_6VectorES2_mb:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12BindCastInfoEEclEPS1_.exit.i.i.i.i.i.i.i.i

end_hunk_8
begin_hunk_9_@_ZN6duckdb16VectorOperations11DefaultCastERNS_6VectorES2_mb:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #6, !inline_history !52
  br label %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12BindCastInfoEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !49

_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb16BindCastFunctionEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb16BindCastFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
end_hunk_9
begin_hunk_10_@_ZN6duckdb16VectorOperations7TryCastERNS_13ClientContextERNS_6VectorES4_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb:bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERNS_13ClientContextE(ptr noundef nonnull align 1 %0)
  %i.b = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb8DBConfig16GetCastFunctionsEv(ptr noundef nonnull align 8 dereferenceable(1360) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  store ptr %0, ptr %7, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 -1, ptr %i.c, align 8, !tbaa !35
  %i.d = call noundef zeroext i1 @_ZN6duckdb16VectorOperations7TryCastERNS_15CastFunctionSetERNS_20GetCastFunctionInputERNS_6VectorES6_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
end_hunk_10
begin_hunk_11_@_ZN6duckdb16VectorOperations4CastERNS_13ClientContextERNS_6VectorES4_mb:bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERNS_13ClientContextE(ptr noundef nonnull align 1 %0)
  %i.b = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb8DBConfig16GetCastFunctionsEv(ptr noundef nonnull align 8 dereferenceable(1360) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  store ptr %0, ptr %5, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 -1, ptr %i.c, align 8, !tbaa !35
  %i.d = call noundef zeroext i1 @_ZN6duckdb16VectorOperations7TryCastERNS_15CastFunctionSetERNS_20GetCastFunctionInputERNS_6VectorES6_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %3, ptr noundef null, i1 noundef zeroext %4, i1 noundef zeroext false) ; 0 uses
end_hunk_11
begin_hunk_12_@_ZdlPv
!37 = !{!8, !9, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !6, i64 0}
!40 = distinct !{null, null}
!41 = distinct !{null, null, null}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIN6duckdb16BindCastFunctionESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTSN6duckdb16BindCastFunctionE", !9, i64 0}
!45 = !{!43, !44, i64 8}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTSN6duckdb12BindCastInfoE", !9, i64 0}
!48 = distinct !{ptr @_ZN6duckdb15CastFunctionSetD2Ev, null, null, null, null, null, null, null}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{null, null, null, null, null, null, null}
!52 = distinct !{ptr @_ZN6duckdb16VectorOperations14DefaultTryCastERNS_6VectorES2_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb, ptr @_ZN6duckdb15CastFunctionSetD2Ev, null, null, null, null, null, null, null}
!53 = !{!54, !19, i64 0}
!54 = !{!"_ZTSN6duckdb12optional_ptrINS_13ClientContextELb1EEE", !19, i64 0}
end_hunk_12
