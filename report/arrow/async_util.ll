inline.NumInlined: 1792
inline.NumDeleted: 1060
begin_hunk_0_@_ZN5arrow4util18AsyncTaskScheduler4MakeENS_8internal6FnOnceIFNS_6StatusEPS1_EEENS3_IFvRKS4_EEENS_9StopTokenE:bb.a
  %5 = alloca %"struct.arrow::Future<>::WrapResultOnComplete::Callback", align 8 ; 7 uses
  %6 = alloca %"class.std::__shared_ptr", align 8 ; 6 uses
  %7 = alloca %"class.std::unique_ptr.140", align 8 ; 7 uses
  %8 = alloca %"struct.arrow::Future<>::ThenOnComplete", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %10 = alloca %"class.std::unique_ptr.140", align 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow4util18AsyncTaskScheduler4MakeENS_8internal6FnOnceIFNS_6StatusEPS1_EEENS3_IFvRKS4_EEENS_9StopTokenE:bb.a
  br label %_ZNK5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl10OnFinishedEv.exit

_ZNK5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl10OnFinishedEv.exit: ; preds = %bb.h, %bb.j, %bb.k
  %i.aw = ptrtoint ptr %i.b to i64                ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
end_hunk_1
begin_hunk_2_@_ZN5arrow4util18AsyncTaskScheduler4MakeENS_8internal6FnOnceIFNS_6StatusEPS1_EEENS3_IFvRKS4_EEENS_9StopTokenE:bb.a
          to label %bb.m unwind label %bb.o, !noalias !75

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %6, align 8, !tbaa !26, !noalias !75 ; 4 uses
  store ptr null, ptr %6, align 8, !tbaa !26, !noalias !75
  store ptr %i.ax, ptr %0, align 8, !tbaa !26, !alias.scope !75
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !16, !noalias !75 ; 6 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !16, !alias.scope !75
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !26, !noalias !75 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !75
end_hunk_2
begin_hunk_3_@_ZN5arrow4util18AsyncTaskScheduler4MakeENS_8internal6FnOnceIFNS_6StatusEPS1_EEENS3_IFvRKS4_EEENS_9StopTokenE:bb.a

_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !75
  store i64 %i.aw, ptr %8, align 8, !tbaa !77, !noalias !69
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ax, ptr %i.bk, align 8, !tbaa !79, !noalias !69
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr %i.ba, ptr %i.bl, align 8, !tbaa !16, !noalias !69
  %.not.i.i.i.i.i15 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i15, label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i, label %bb.p

end_hunk_3
begin_hunk_4_@_ZN5arrow4util18AsyncTaskScheduler4MakeENS_8internal6FnOnceIFNS_6StatusEPS1_EEENS3_IFvRKS4_EEENS_9StopTokenE:bb.a

bb.r:                                             ; preds = %bb.p
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4, !noalias !69 ; 0 uses
  %.val.i.i.i.i.i.i.pre.i = load i64, ptr %8, align 8, !tbaa !77, !noalias !69
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i

_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i: ; preds = %bb.r, %bb.q, %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i
  %.val.i.i.i.i.i.i.i = phi i64 [ %i.aw, %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i ], [ %i.aw, %bb.q ], [ %.val.i.i.i.i.i.i.pre.i, %bb.r ] ; 2 uses
  %.val.i = load ptr, ptr %14, align 16, !tbaa !79, !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !69
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !69
  store i64 %.val.i.i.i.i.i.i.i, ptr %5, align 8, !tbaa !77, !noalias !69
  store ptr null, ptr %8, align 8, !tbaa !77, !noalias !69
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ax, ptr %i.br, align 8, !tbaa !79, !noalias !69
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.bl, align 8, !tbaa !16, !noalias !69
  store ptr %i.ba, ptr %i.bs, align 8, !tbaa !16, !noalias !69
  store ptr null, ptr %i.bk, align 8, !tbaa !79, !noalias !69
  %i.bt = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27
          to label %bb.s unwind label %bb.u, !noalias !69 ; 5 uses

bb.s:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i
  store ptr null, ptr %5, align 8, !tbaa !77, !noalias !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false), !noalias !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_IFNS_6StatusEPSF_EEENS1_IFvRKSG_EEENS_9StopTokenEE3$_0NSA_17PassthruOnFailureISP_EEEEEEEE", i64 16), ptr %i.bt, align 8, !tbaa !19, !noalias !69
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.val.i.i.i.i.i.i.i, ptr %i.bu, align 8, !tbaa !77, !noalias !69
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %i.ax, ptr %i.bv, align 8, !tbaa !79, !noalias !69
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store ptr %i.ba, ptr %i.bw, align 8, !tbaa !16, !noalias !69
  store ptr %i.bt, ptr %4, align 8, !tbaa !80, !noalias !69
end_hunk_4
begin_hunk_5_@_ZN5arrow6FutureINS_8internal5EmptyEE14DoMarkFinishedENS_6ResultIS2_EE:bb.a
  unreachable

_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit.i: ; preds = %bb.d, %.noexc
  %i.j = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow6FutureINS_8internal5EmptyEE14DoMarkFinishedENS_6ResultIS2_EE:bb.a
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit:   ; preds = %bb.h, %bb.i, %bb.j
  %i.u = load ptr, ptr %0, align 8, !tbaa !79     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !88
end_hunk_6
begin_hunk_7_@_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE:bb.a
  store ptr %0, ptr %5, align 8, !tbaa !228
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.r, ptr %i.bf, align 8, !tbaa !225
  %.val.i.i = load ptr, ptr %i.be, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.bg = ptrtoint ptr %5 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE:bb.a
          to label %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i unwind label %bb.ag

_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i: ; preds = %bb.au, %bb.at
  %i.bz = load ptr, ptr %i.be, align 8, !tbaa !79
  invoke void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bz)
          to label %bb.av unwind label %bb.ag

bb.av:                                            ; preds = %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEptEv.exit15.i.i
  %i.ca = load ptr, ptr %i.be, align 8, !tbaa !79
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !25
  invoke fastcc void @_ZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl14OnTaskFinishedERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
end_hunk_8
begin_hunk_9_@_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !26     ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !16
  %i.c = icmp eq ptr %i.a, null
end_hunk_9
begin_hunk_10_@"_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_6FnOnceIFNS_6StatusEPS6_EEENS7_IFvRKS8_EEENS_9StopTokenEE3$_0NS3_17PassthruOnFailureISH_EEED2Ev":bb.a
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %.val = load ptr, ptr %0, align 8, !tbaa !77    ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %"_ZZN5arrow4util18AsyncTaskScheduler4MakeENS_8internal6FnOnceIFNS_6StatusEPS1_EEENS3_IFvRKS4_EEENS_9StopTokenEEN3$_0D2Ev.exit", label %_ZNKSt14default_deleteIN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplEEclEPS3_.exit.i.i

end_hunk_10
begin_hunk_11_@"_ZN5arrow6FutureINS_8internal5EmptyEE20WrapResultOnComplete8CallbackINS3_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_6FnOnceIFNS_6StatusEPS8_EEENS9_IFvRKSA_EEENS_9StopTokenEE3$_0NS3_17PassthruOnFailureISJ_EEEEED2Ev":bb.a
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !tbaa !77  ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %"_ZN5arrow6FutureINS_8internal5EmptyEE14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_6FnOnceIFNS_6StatusEPS6_EEENS7_IFvRKS8_EEENS_9StopTokenEE3$_0NS3_17PassthruOnFailureISH_EEED2Ev.exit", label %_ZNKSt14default_deleteIN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplEEclEPS3_.exit.i.i.i

end_hunk_11
begin_hunk_12_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_IFNS_6StatusEPSF_EEENS1_IFvRKSG_EEENS_9StopTokenEE3$_0NSA_17PassthruOnFailureISP_EEEEEEED2Ev":bb.a
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !77 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i, label %"_ZN5arrow6FutureINS_8internal5EmptyEE20WrapResultOnComplete8CallbackINS3_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_6FnOnceIFNS_6StatusEPS8_EEENS9_IFvRKSA_EEENS_9StopTokenEE3$_0NS3_17PassthruOnFailureISJ_EEEEED2Ev.exit", label %_ZNKSt14default_deleteIN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplEEclEPS3_.exit.i.i.i.i

end_hunk_12
begin_hunk_13_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_IFNS_6StatusEPSF_EEENS1_IFvRKSG_EEENS_9StopTokenEE3$_0NSA_17PassthruOnFailureISP_EEEEEEED0Ev":bb.a
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %bb.a
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !77 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_IFNS_6StatusEPSF_EEENS1_IFvRKSG_EEENS_9StopTokenEE3$_0NSA_17PassthruOnFailureISP_EEEEEEED2Ev.exit", label %_ZNKSt14default_deleteIN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplEEclEPS3_.exit.i.i.i.i.i

end_hunk_13
begin_hunk_14_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_IFNS_6StatusEPSF_EEENS1_IFvRKSG_EEENS_9StopTokenEE3$_0NSA_17PassthruOnFailureISP_EEEEEEE6invokeES4_":bb.a
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !25
  store ptr null, ptr %i.f, align 8, !tbaa !16
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !25
  store ptr null, ptr %i.d, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr null, ptr %2, align 8, !tbaa !88, !alias.scope !284
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2)
end_hunk_14
begin_hunk_15_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_IFNS_6StatusEPSF_EEENS1_IFvRKSG_EEENS_9StopTokenEE3$_0NSA_17PassthruOnFailureISP_EEEEEEE6invokeES4_":bb.a

bb.o:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !77 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !77
  %.not.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %"_ZZN5arrow4util18AsyncTaskScheduler4MakeENS_8internal6FnOnceIFNS_6StatusEPS1_EEENS3_IFvRKS4_EEENS_9StopTokenEEN3$_0D2Ev.exit.i.i", label %_ZNKSt14default_deleteIN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplEEclEPS3_.exit.i.i.i.i

end_hunk_15
begin_hunk_16_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZNS_4util18AsyncTaskScheduler4MakeENS1_IFNS_6StatusEPSF_EEENS1_IFvRKSG_EEENS_9StopTokenEE3$_0NSA_17PassthruOnFailureISP_EEEEEEE6invokeES4_":bb.a
  %i.an = load <2 x ptr>, ptr %i.al, align 8, !tbaa !25
  store ptr null, ptr %i.am, align 8, !tbaa !16
  store <2 x ptr> %i.an, ptr %4, align 16, !tbaa !25
  store ptr null, ptr %i.al, align 8, !tbaa !79
  invoke fastcc void @"_ZNK5arrow6detail14ContinueFutureclINS_6FutureINS_8internal5EmptyEE17PassthruOnFailureIZNS_4util18AsyncTaskScheduler4MakeENS4_6FnOnceIFNS_6StatusEPS9_EEENSA_IFvRKSB_EEENS_9StopTokenEE3$_0EEJSG_ENS_6ResultIS5_EES6_EENSt9enable_ifIXaaaaaantsr3std7is_voidIT1_EE5valuentsr9is_futureISP_EE5valuesrT2_8is_emptyntsr3std7is_sameISP_SB_EE5valueEvE4typeESQ_OT_DpOT0_"(ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(9) %.val)
          to label %bb.p unwind label %bb.q

end_hunk_16
begin_hunk_17_@_ZN5arrow4util12ThrottleImplD2Ev:bb.a
  %1 = alloca %"class.arrow::Status", align 8     ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow4util12ThrottleImplE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %.not.i.i.not = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b

end_hunk_17
begin_hunk_18_@_ZN5arrow4util12ThrottleImpl10TryAcquireEi:bb.a

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %.not.i.i5.not = icmp eq ptr %i.d, null
  br i1 %.not.i.i5.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store ptr %i.d, ptr %0, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 3 uses
end_hunk_18
begin_hunk_19_@_ZN5arrow4util12ThrottleImpl5PauseEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 1, ptr %i.c, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !79
  %.not.i.i2.not = icmp eq ptr %i.e, null
  br i1 %.not.i.i2.not, label %bb.c, label %bb.u

end_hunk_19
begin_hunk_20_@_ZN5arrow4util12ThrottleImpl14NotifyUnlockedEOSt11unique_lockISt5mutexE:bb.a
  %2 = alloca %"class.arrow::Future", align 8     ; 7 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.b, ptr %2, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  store ptr null, ptr %i.d, align 8, !tbaa !16
  store ptr %i.e, ptr %i.c, align 8, !tbaa !16
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !110, !range !101, !noundef !102
  %i.h = trunc nuw i8 %i.g to i1
end_hunk_20
begin_hunk_21_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EE:bb.a
  br label %_ZNSt23enable_shared_from_thisIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE14weak_from_thisEv.exit

_ZNSt23enable_shared_from_thisIN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImplEE14weak_from_thisEv.exit: ; preds = %bb.n, %bb.p, %bb.q
  %.val21 = load ptr, ptr %4, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.r unwind label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i ; 3 uses
end_hunk_21
begin_hunk_22_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEib:bb.a
  store i32 %2, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 %i.a, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.k = load i64, ptr %1, align 8, !tbaa !225
  store i64 %i.k, ptr %i.j, align 8
  store ptr null, ptr %1, align 8, !tbaa !225
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !157, !noalias !341 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_22
begin_hunk_23_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEib:bb.a
.noexc7:                                          ; preds = %bb.e
  %i.aa = extractvalue { i64, ptr } %i.f, 0
  %i.ab = extractvalue { i64, ptr } %i.f, 1
  %6 = load i64, ptr %i.j, align 8
  store ptr null, ptr %i.j, align 8
  %7 = load ptr, ptr %i.n, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow4util18AsyncTaskScheduler4TaskE, i64 16), ptr %i.z, align 8, !tbaa !19, !noalias !346
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @_ZN5arrow4util7tracing4SpanC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) #26, !noalias !346, !inline_history !349
end_hunk_23
begin_hunk_24_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEib:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ad, ptr noundef nonnull align 8 dereferenceable(5) %4, i64 5, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %6, ptr %i.ae, align 8, !tbaa !225, !noalias !346
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.y, ptr %i.af, align 8, !tbaa !350, !noalias !346
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %7, ptr %i.ag, align 8, !tbaa !16, !noalias !346
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i64 %i.aa, ptr %i.ah, align 8, !tbaa !352, !noalias !346
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 56
end_hunk_24
begin_hunk_25_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEib:bb.a
bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %8 = load ptr, ptr %i.j, align 8                ; 3 uses
  %.not.i = icmp eq ptr %8, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util18AsyncTaskScheduler4TaskEEclEPS3_.exit.i: ; preds = %bb.h
  %i.ax = load ptr, ptr %8, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26, !inline_history !244
  br label %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.e
end_hunk_25
begin_hunk_26_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv:bb.a

bb.j:                                             ; preds = %bb.i
  %i.al = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
end_hunk_26
begin_hunk_27_@_ZN5arrow4util12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl13ContinueTasksEv:bb.a
  br i1 %i.am, label %_ZNSt11unique_lockISt5mutexE4lockEv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = load ptr, ptr %3, align 8, !tbaa !79
  invoke void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aw)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.ax = load ptr, ptr %3, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !88
end_hunk_27
begin_hunk_28_@_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_EclEv:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !79, !noalias !410 ; 3 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !79, !alias.scope !411, !noalias !400
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16, !noalias !410 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !16, !noalias !410
  store ptr %i.m, ptr %i.k, align 8, !tbaa !16, !alias.scope !411, !noalias !400
  store ptr null, ptr %i.i, align 8, !tbaa !79, !noalias !410
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !400
  store ptr %i.n, ptr %2, align 8, !noalias !400
end_hunk_28
begin_hunk_29_@_ZN5arrow4util18AsyncTaskScheduler10SimpleTaskIZNS0_12_GLOBAL__N_131ThrottledAsyncTaskSchedulerImpl10SubmitTaskESt10unique_ptrINS1_4TaskESt14default_deleteIS6_EEibEUlvE_EclEv:bb.a
_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i: ; preds = %bb.m, %_ZNSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EE5resetEPS3_.exit.i, %bb.j
  store ptr null, ptr %0, align 8, !tbaa !88, !alias.scope !400
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.ar, align 8, !tbaa !79, !alias.scope !400
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.as, align 8, !tbaa !16, !alias.scope !400
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !400
end_hunk_29
begin_hunk_30_@_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEv:bb.a
  %3 = alloca %"struct.arrow::Future<>::WrapResultOnComplete::Callback.278", align 8 ; 8 uses
  %4 = alloca %"class.std::__shared_ptr", align 8 ; 6 uses
  %5 = alloca %"class.std::unique_ptr.140", align 8 ; 7 uses
  %6 = alloca %"struct.arrow::Future<>::ThenOnComplete.277", align 8 ; 8 uses
  %7 = alloca %"class.arrow::Result.155", align 8 ; 13 uses
  %8 = alloca %"class.arrow::Future", align 16    ; 7 uses
  %9 = alloca %"class.arrow::Future", align 16    ; 8 uses
end_hunk_30
begin_hunk_31_@_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEv:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !25, !noalias !479
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !79, !noalias !479 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !16, !noalias !479
  store <2 x ptr> %i.k, ptr %8, align 16, !tbaa !25, !alias.scope !479
  store ptr null, ptr %i.h, align 8, !tbaa !79, !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !449  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
end_hunk_31
begin_hunk_32_@_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEv:bb.a
          to label %bb.e unwind label %bb.g, !noalias !486

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %4, align 8, !tbaa !26, !noalias !486 ; 4 uses
  store ptr null, ptr %4, align 8, !tbaa !26, !noalias !486
  store ptr %i.q, ptr %9, align 16, !tbaa !26, !alias.scope !486
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !16, !noalias !486 ; 6 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !16, !alias.scope !486
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !26, !noalias !486 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !486
end_hunk_32
begin_hunk_33_@_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEv:bb.a

_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !486
  store ptr %i.n, ptr %6, align 8, !tbaa !449, !noalias !480
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.ad, align 8, !tbaa !16, !noalias !480
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.ae, align 8, !tbaa !79, !noalias !480
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.af, align 8, !tbaa !16, !noalias !480
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i, label %bb.h

end_hunk_33
begin_hunk_34_@_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEv:bb.a

bb.j:                                             ; preds = %bb.h
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4, !noalias !480 ; 0 uses
  %.val.i.pre = load ptr, ptr %8, align 16, !tbaa !79, !noalias !480
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i

_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i: ; preds = %bb.j, %bb.i, %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i
end_hunk_34
begin_hunk_35_@_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEv:bb.a
  store ptr %i.p, ptr %i.al, align 8, !tbaa !16, !noalias !480
  store ptr null, ptr %6, align 8, !tbaa !449, !noalias !480
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.am, align 8, !tbaa !79, !noalias !480
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.af, align 8, !tbaa !16, !noalias !480
  store ptr %i.t, ptr %i.an, align 8, !tbaa !16, !noalias !480
  store ptr null, ptr %i.ae, align 8, !tbaa !79, !noalias !480
  %i.ao = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %bb.k unwind label %bb.m, !noalias !480 ; 6 uses

end_hunk_35
begin_hunk_36_@_ZZN5arrow4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEN11WrapperTaskclEv:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.p, ptr %i.aq, align 8, !tbaa !16, !noalias !480
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.q, ptr %i.ar, align 8, !tbaa !79, !noalias !480
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.t, ptr %i.as, align 8, !tbaa !16, !noalias !480
  store ptr %i.ao, ptr %2, align 8, !tbaa !80, !noalias !480
end_hunk_36
begin_hunk_37_@_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZZNS_4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINSE_18AsyncTaskScheduler4TaskESt14default_deleteISJ_EEEN11WrapperTaskclEvEUlvE_NSA_17PassthruOnFailureISO_EEEEEEE6invokeES4_:bb.a
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !25
  store ptr null, ptr %i.g, align 8, !tbaa !16
  store <2 x ptr> %i.h, ptr %3, align 16, !tbaa !25
  store ptr null, ptr %i.e, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %.val1.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !449, !noalias !498
end_hunk_37
begin_hunk_38_@_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackINSA_14ThenOnCompleteIZZNS_4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINSE_18AsyncTaskScheduler4TaskESt14default_deleteISJ_EEEN11WrapperTaskclEvEUlvE_NSA_17PassthruOnFailureISO_EEEEEEE6invokeES4_:bb.a
  %i.ba = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !25
  store ptr null, ptr %i.az, align 8, !tbaa !16
  store <2 x ptr> %i.ba, ptr %4, align 16, !tbaa !25
  store ptr null, ptr %i.ay, align 8, !tbaa !79
  invoke fastcc void @_ZNK5arrow6detail14ContinueFutureclINS_6FutureINS_8internal5EmptyEE17PassthruOnFailureIZZNS_4util12_GLOBAL__N_118AsyncTaskGroupImpl7AddTaskESt10unique_ptrINS8_18AsyncTaskScheduler4TaskESt14default_deleteISD_EEEN11WrapperTaskclEvEUlvE_EEJRKNS_6StatusEENS_6ResultIS5_EES6_EENSt9enable_ifIXaaaaaantsr3std7is_voidIT1_EE5valuentsr9is_futureISQ_EE5valuesrT2_8is_emptyntsr3std7is_sameISQ_SK_EE5valueEvE4typeESR_OT_DpOT0_(ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(9) %.val)
          to label %bb.r unwind label %bb.s

end_hunk_38
begin_hunk_39_@llvm.smin.i32
!74 = distinct !{!74, !"_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv"}
!75 = !{!73, !70}
!76 = distinct !{null, null, null, null}
!77 = !{!78, !78, i64 0}
!78 = !{!"p1 _ZTSN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImplE", !10, i64 0}
!79 = !{!35, !27, i64 0}
!80 = !{!81, !81, i64 0}
!81 = !{!"p1 _ZTSN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE4ImplE", !10, i64 0}
!82 = distinct !{null, null, null, null, null}
end_hunk_39
begin_hunk_40_@llvm.smin.i32
!225 = !{!226, !226, i64 0}
!226 = !{!"p1 _ZTSN5arrow4util18AsyncTaskScheduler4TaskE", !10, i64 0}
!227 = distinct !{null}
!228 = !{!229, !78, i64 0}
!229 = !{!"_ZTSZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEEUlvE_", !78, i64 0, !230, i64 8}
!230 = !{!"_ZTSSt10unique_ptrIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EE", !231, i64 0}
!231 = !{!"_ZTSSt15__uniq_ptr_dataIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_ELb1ELb1EE", !232, i64 0}
!232 = !{!"_ZTSSt15__uniq_ptr_implIN5arrow4util18AsyncTaskScheduler4TaskESt14default_deleteIS3_EE", !233, i64 0}
end_hunk_40
begin_hunk_41_@llvm.smin.i32
!267 = distinct !{!267, !268, !"_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEENUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISG_SK_SL_EEbT_NS0_15CallbackOptionsEEUlvE_JEESN_St14__invoke_otherOT0_DpOT1_: argument 0"}
!268 = distinct !{!268, !"_ZSt13__invoke_implIN5arrow6FutureINS0_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZZNS0_4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS7_18AsyncTaskScheduler4TaskESt14default_deleteISC_EEENUlvE_clEvEUlRKNS0_6StatusEE_EERZNKS4_14TryAddCallbackISG_SK_SL_EEbT_NS0_15CallbackOptionsEEUlvE_JEESN_St14__invoke_otherOT0_DpOT1_"}
!269 = distinct !{null, null, null, null, null}
!270 = !{!271, !78, i64 0}
!271 = !{!"_ZTSZZN5arrow4util12_GLOBAL__N_122AsyncTaskSchedulerImpl12DoSubmitTaskESt10unique_ptrINS0_18AsyncTaskScheduler4TaskESt14default_deleteIS5_EEENUlvE_clEvEUlRKNS_6StatusEE_", !78, i64 0, !230, i64 8}
!272 = !{!273, !273, i64 0}
!273 = !{!"p1 _ZTSSt9type_info", !10, i64 0}
!274 = distinct !{null, null, null, null}
end_hunk_41
