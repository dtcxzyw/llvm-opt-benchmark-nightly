inline.NumInlined: 1185
inline.NumDeleted: 671
begin_hunk_0_@_ZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
  br label %bb.aa

bb.q:                                             ; preds = %.lr.ph, %"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev.exit"
  %.sroa.026.030 = phi ptr [ %i.w, %.lr.ph ], [ %i.bv, %"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev.exit" ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.030) ]
  store ptr %i.u, ptr %5, align 8, !tbaa !100
  store ptr %i.r, ptr %i.z, align 8, !tbaa !46
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
end_hunk_0
begin_hunk_1_@_ZN5arrow11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %bb.c ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.07.i.i.i.i.i) ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %i.q = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !103
end_hunk_1
begin_hunk_2_@_ZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EE:bb.a
  br label %bb.aa

bb.p:                                             ; preds = %.lr.ph, %_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_D2Ev.exit
  %.sroa.017.020 = phi ptr [ %i.ah, %.lr.ph ], [ %i.cs, %_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_D2Ev.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.020) ]
  %i.bj = load ptr, ptr %i.x, align 8, !tbaa !46  ; 2 uses
  %i.bk = load <2 x ptr>, ptr %5, align 16, !tbaa !103
  store <2 x ptr> %i.bk, ptr %6, align 16, !tbaa !103
end_hunk_2
begin_hunk_3_@_ZN5arrow18ConcreteFutureImpl22DoMarkFinishedOrFailedENS_11FutureStateE:bb.a
  %i.ao = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #25 ; 0 uses
  br label %bb.w

_ZNSt11unique_lockISt5mutexED2Ev.exit16:          ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i8 %1, ptr %i.ap seq_cst, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
end_hunk_3
begin_hunk_4_@_ZN5arrow18ConcreteFutureImpl22DoMarkFinishedOrFailedENS_11FutureStateE:bb.a
  br i1 %i.av, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit16, %bb.n
  %.sroa.023.032 = phi ptr [ %i.aw, %bb.n ], [ %i.as, %_ZNSt11unique_lockISt5mutexED2Ev.exit16 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.023.032) ]
  invoke void @_ZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEb(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.023.032, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.o

end_hunk_4
begin_hunk_5_@_ZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEb:bb.a
  br label %common.resume

_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread11: ; preds = %bb.a, %bb.b, %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !51, !nonnull !27, !noundef !27
  %i.av = load i64, ptr %1, align 8, !tbaa !33
  %i.aw = inttoptr i64 %i.av to ptr               ; 6 uses
  store ptr null, ptr %1, align 8, !tbaa !33
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_E6invokeEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !51, !nonnull !27, !noundef !27
  %i.d = load i64, ptr %i.b, align 8, !tbaa !33
  %i.e = inttoptr i64 %i.d to ptr                 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !33
end_hunk_6
begin_hunk_7_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEE6invokeES4_":bb.a
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !103, !nonnull !27, !noundef !27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr %.val, align 8, !tbaa !75
end_hunk_7
begin_hunk_8_@_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_clESG_:bb.a
  %.024 = phi i64 [ %i.ar, %_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !145
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !120
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.024 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51
  invoke void @_ZN5arrow18ConcreteFutureImpl6DoWaitEv(ptr noundef nonnull align 8 dereferenceable(160) %i.af)
          to label %bb.d unwind label %bb.h
end_hunk_8
begin_hunk_9_@_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_clESG_:bb.a
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !103 ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.024 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  %i.ak = icmp eq ptr %i.aj, %i.ai
  br i1 %i.ak, label %_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit, label %bb.e, !prof !58

end_hunk_9
begin_hunk_10_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEE6invokeES4_":bb.a
  br i1 %i.j, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKR5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE10ValueOrDieEv.exit.i.i, %.critedge.i.i.i.i.i
  %.sroa.01.06.i.i.i.i.i = phi ptr [ %i.m, %.critedge.i.i.i.i.i ], [ %.val.i.i, %_ZNKR5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE10ValueOrDieEv.exit.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.06.i.i.i.i.i) ]
  %i.k = load ptr, ptr %.sroa.01.06.i.i.i.i.i, align 8, !tbaa !75, !noalias !278
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge.i.i.i.i.i, label %bb.b
end_hunk_10
begin_hunk_11_@llvm.experimental.noalias.scope.decl
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_11
