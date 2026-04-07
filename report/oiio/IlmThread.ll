begin_hunk_0_@_ZN33OpenImageIO_v3_1_IlmThread__3_3_56Thread5startEv:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #16, !inline_history !21
  br label %_ZNSt6threadC2IMN33OpenImageIO_v3_1_IlmThread__3_3_56ThreadEFvvEJPS2_EvEEOT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN33OpenImageIO_v3_1_IlmThread__3_3_56Thread5startEv:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #16, !inline_history !21
  br label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit8.i

_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit8.i: ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i7.i, %bb.c
end_hunk_1
begin_hunk_2_@_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN33OpenImageIO_v3_1_IlmThread__3_3_56ThreadEFvvEPS4_EEEEE6_M_runEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !22
  %.unpack.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !23 ; 3 uses
  %.elt2.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.unpack3.i.i.i.i = load i64, ptr %.elt2.i.i.i.i, align 8, !tbaa !23
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack3.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
end_hunk_2
begin_hunk_3_@_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN33OpenImageIO_v3_1_IlmThread__3_3_56ThreadEFvvEPS4_EEEEE6_M_runEv:bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !7
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !24
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN33OpenImageIO_v3_1_IlmThread__3_3_56ThreadEFvvEPS3_EEEclEv.exit

bb.c:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN33OpenImageIO_v3_1_IlmThread__3_3_56ThreadEFvvEPS4_EEEEE6_M_runEv:bb.a

_ZNSt6thread8_InvokerISt5tupleIJMN33OpenImageIO_v3_1_IlmThread__3_3_56ThreadEFvvEPS3_EEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.d), !inline_history !25
  ret void
}

end_hunk_4
begin_hunk_5_@_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN33OpenImageIO_v3_1_IlmThread__3_3_56ThreadEFvvEPS4_EEEEE6_M_runEv:bb.a
!18 = !{!"_ZTSSt10_Head_baseILm0EMN33OpenImageIO_v3_1_IlmThread__3_3_56ThreadEFvvELb0EE", !5, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSNSt6thread6_StateE", !16, i64 0}
!21 = distinct !{null, null, null}
!22 = !{!15, !15, i64 0}
!23 = !{!5, !5, i64 0}
!24 = !{}
!25 = distinct !{null, null, null, null}
end_hunk_5
