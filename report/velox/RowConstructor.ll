inline.NumInlined: 444
inline.NumDeleted: 284
begin_hunk_0_@_ZN8facebook5velox4exec31RowConstructorCallToSpecialForm11resolveTypeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EE:._crit_edge.i.i
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.8", align 16 ; 7 uses
  %6 = alloca %"class.std::vector", align 8       ; 7 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec31RowConstructorCallToSpecialForm11resolveTypeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EE:._crit_edge.i.i
  br i1 %.not.i.i.i.i.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr null, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %7, align 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !28, !alias.scope !25
  br label %.loopexit

end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec31RowConstructorCallToSpecialForm11resolveTypeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EE:._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #23
          to label %.noexc15 unwind label %bb.t   ; 3 uses

.noexc15:                                         ; preds = %bb.f
  store ptr %i.ag, ptr %7, align 8, !tbaa !11, !alias.scope !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !28, !alias.scope !25
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox4exec31RowConstructorCallToSpecialForm11resolveTypeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EE:._crit_edge.i.i
  br i1 %i.at, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !34

.loopexit:                                        ; preds = %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.thread.i
  %i.au = phi ptr [ null, %.thread.i ], [ %i.as, %_ZSt10_ConstructISt10shared_ptrIKN8facebook5velox4TypeEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ]
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.au, ptr %8, align 8, !tbaa !7, !alias.scope !25
  invoke void @_ZN8facebook5velox3ROWESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EES1_ISt10shared_ptrIKNS0_4TypeEESaISD_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %_ZNSt12__shared_ptrIKN8facebook5velox7RowTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.u

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox4exec31RowConstructorCallToSpecialForm11resolveTypeERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaIS7_EE:._crit_edge.i.i
  store <2 x ptr> %i.aw, ptr %0, align 8, !tbaa !33
  store ptr null, ptr %5, align 16, !tbaa !36
  %i.ax = load ptr, ptr %7, align 8, !tbaa !11    ; 3 uses
  %i.ay = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN8facebook5velox4TypeEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

end_hunk_4
