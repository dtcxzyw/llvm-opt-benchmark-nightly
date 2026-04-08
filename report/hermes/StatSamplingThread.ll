inline.NumInlined: 114
inline.NumDeleted: 86
begin_hunk_0_@_ZN6hermes2vm18StatSamplingThreadC2ENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #11, !inline_history !34
  br label %_ZNSt6threadC2IMN6hermes2vm18StatSamplingThreadEFvvEJPS3_EvEEOT_DpOT0_.exit

_ZNSt6threadC2IMN6hermes2vm18StatSamplingThreadEFvvEJPS3_EvEEOT_DpOT0_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm18StatSamplingThread3runEv:bb.a
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %i.c = load i8, ptr %0, align 8, !tbaa !7, !range !35, !noundef !36
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph

end_hunk_1
begin_hunk_2_@_ZN6hermes2vm18StatSamplingThread3runEv:bb.a
  %.neg.i.i.i.i.i = mul nsw i64 %i.l, -1000000000
  %i.m = add i64 %.neg.i.i.i.i.i, %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store i64 %i.l, ptr %1, align 8, !tbaa !37
  store i64 %i.m, ptr %i.h, align 8, !tbaa !39
  %i.n = call i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %1) #11 ; 0 uses
  %i.o = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.p = load i8, ptr %0, align 8, !tbaa !7, !range !35, !noundef !36
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, !llvm.loop !40

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.preheader
  %i.r = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 0 uses
end_hunk_2
begin_hunk_3_@_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN6hermes2vm18StatSamplingThreadEFvvEPS5_EEEEE6_M_runEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !42
  %.unpack.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !43 ; 3 uses
  %.elt2.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.unpack3.i.i.i.i = load i64, ptr %.elt2.i.i.i.i, align 8, !tbaa !43
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.unpack3.i.i.i.i ; 2 uses
  %i.e = and i64 %.unpack.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
end_hunk_3
begin_hunk_4_@_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN6hermes2vm18StatSamplingThreadEFvvEPS5_EEEEE6_M_runEv:bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.g = getelementptr i8, ptr %i.f, i64 %.unpack.i.i.i.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load ptr, ptr %i.h, align 8, !nosanitize !36
  br label %_ZNSt6thread8_InvokerISt5tupleIJMN6hermes2vm18StatSamplingThreadEFvvEPS4_EEEclEv.exit

bb.c:                                             ; preds = %bb.a
end_hunk_4
begin_hunk_5_@_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN6hermes2vm18StatSamplingThreadEFvvEPS5_EEEEE6_M_runEv:bb.a

_ZNSt6thread8_InvokerISt5tupleIJMN6hermes2vm18StatSamplingThreadEFvvEPS4_EEEclEv.exit: ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(184) %i.d) #11, !inline_history !44
  ret void
}

end_hunk_5
begin_hunk_6_@pthread_cond_clockwait
!31 = !{!"_ZTSSt10_Head_baseILm0EMN6hermes2vm18StatSamplingThreadEFvvELb0EE", !5, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSNSt6thread6_StateE", !29, i64 0}
!34 = distinct !{null, null, null}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!38, !15, i64 0}
!38 = !{!"_ZTS8timespec", !15, i64 0, !15, i64 8}
!39 = !{!38, !15, i64 8}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!28, !28, i64 0}
!43 = !{!5, !5, i64 0}
!44 = distinct !{null, null, null, null}
end_hunk_6
