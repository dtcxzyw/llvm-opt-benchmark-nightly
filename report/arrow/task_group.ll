inline.NumInlined: 647
inline.NumDeleted: 375
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEE:bb.a
  %5 = alloca %"class.arrow::StopToken", align 8  ; 6 uses
  %6 = alloca %"class.arrow::internal::FnOnce.61", align 8 ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 11 uses
  %8 = alloca %class.anon.51, align 8             ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZNK5arrow9StopToken15IsStopRequestedEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEE:bb.a
  %i.z = atomicrmw add ptr %i.y, i32 1 acquire, align 4 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41, !noalias !138 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.l

end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEE:bb.a
  unreachable

_ZNSt12__shared_ptrIN5arrow8internal9TaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.n
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !40, !noalias !138 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.an = load i64, ptr %1, align 8, !tbaa !88    ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !88
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9StopTokenC2ERKS0_.exit, label %bb.o

end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEE:bb.a

bb.q:                                             ; preds = %bb.o
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow9StopTokenC2ERKS0_.exit

_ZN5arrow9StopTokenC2ERKS0_.exit:                 ; preds = %_ZNSt12__shared_ptrIN5arrow8internal9TaskGroupELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 0, ptr %2, align 8, !tbaa !142, !noalias !144
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 -1, i64 24, i1 false), !noalias !144
  store ptr %i.al, ptr %4, align 8, !tbaa !147, !noalias !144
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ba, align 8, !tbaa !13, !noalias !144
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %i.an, ptr %i.bb, align 8, !tbaa !88, !noalias !144
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ao, ptr %i.bc, align 8, !tbaa !7, !noalias !144
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEE:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false), !noalias !144
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplIZNS0_12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS1_IFNS_6StatusEvEEEEUlvE_EE, i64 16), ptr %i.be, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.al, ptr %i.bf, align 8, !tbaa !147
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.ac, ptr %i.bg, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %i.an, ptr %i.bh, align 8, !tbaa !88
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.ao, ptr %i.bi, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 40
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS0_12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS1_IFNS_6StatusEvEEEEUlvE_E6invokeEv:bb.a
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val5.i = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.b = getelementptr inbounds nuw i8, ptr %.val5.i, i64 52
  %i.c = load atomic i8, ptr %i.b acquire, align 1, !range !70, !noundef !71
  %i.d = trunc nuw i8 %i.c to i1
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS0_12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS1_IFNS_6StatusEvEEEEUlvE_E6invokeEv:bb.a

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.i, %_ZN5arrow6StatusD2Ev.exit.i
  %i.af = phi ptr [ %i.ae, %_ZN5arrow6StatusD2Ev.exit9.i ], [ %i.k, %_ZN5arrow6StatusD2Ev.exit.i ]
  %.val4.i = load ptr, ptr %i.a, align 8, !tbaa !147 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit11.i, label %bb.o, !prof !72

end_hunk_7
begin_hunk_8_@_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS0_12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS1_IFNS_6StatusEvEEEEUlvE_E6invokeEv:bb.a
  resume { ptr, i32 } %.pn.i

_ZZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEENUlvE_clEv.exit: ; preds = %bb.a, %_ZN5arrow6StatusD2Ev.exit11.i
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !147
  call fastcc void @_ZN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroup11OneTaskDoneEv(ptr noundef nonnull align 8 dereferenceable(176) %.val.i)
  ret void
}
end_hunk_8
begin_hunk_9_@llvm.umin.i64
!139 = distinct !{!139, !140, !"_ZNSt23enable_shared_from_thisIN5arrow8internal9TaskGroupEE16shared_from_thisEv: argument 0"}
!140 = distinct !{!140, !"_ZNSt23enable_shared_from_thisIN5arrow8internal9TaskGroupEE16shared_from_thisEv"}
!141 = distinct !{!141, !129}
!142 = !{!143, !4, i64 0}
!143 = !{!"_ZTSN5arrow8internal9TaskHintsE", !4, i64 0, !79, i64 8, !79, i64 16, !79, i64 24}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZN5arrow8internal8Executor5SpawnIZNS0_12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEEUlvE_EES6_OT_: argument 0"}
!146 = distinct !{!146, !"_ZN5arrow8internal8Executor5SpawnIZNS0_12_GLOBAL__N_117ThreadedTaskGroup10AppendRealENS0_6FnOnceIFNS_6StatusEvEEEEUlvE_EES6_OT_"}
!147 = !{!148, !68, i64 0}
!148 = !{!"_ZTSSt12__shared_ptrIN5arrow8internal12_GLOBAL__N_117ThreadedTaskGroupELN9__gnu_cxx12_Lock_policyE2EE", !68, i64 0, !11, i64 8}
!149 = !{!150, !150, i64 0}
!150 = !{!"p1 _ZTSN5arrow8internal6FnOnceIFvvEE4ImplE", !10, i64 0}
!151 = !{!152}
end_hunk_9
