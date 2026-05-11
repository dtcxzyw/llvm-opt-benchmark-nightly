inline.NumInlined: 1185
inline.NumDeleted: 671
begin_hunk_0_@_ZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
  %2 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %3 = alloca %"struct.arrow::Future<>::WrapStatusyOnComplete::Callback", align 8 ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %class.anon, align 8                ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
  %i.o = ptrtoint ptr %i.a to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !91 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 8 uses
  store i32 1, ptr %i.s, align 8, !tbaa !53, !noalias !96
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  store i32 1, ptr %i.t, align 4, !tbaa !55, !noalias !96
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !10, !noalias !96
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 40, i1 false), !noalias !96
  store i64 %i.q, ptr %i.v, align 8, !tbaa !97, !noalias !96
end_hunk_1
begin_hunk_2_@_ZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_2
begin_hunk_3_@_ZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a

bb.q:                                             ; preds = %.lr.ph, %"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev.exit"
  %.sroa.026.030 = phi ptr [ %i.w, %.lr.ph ], [ %i.bs, %"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev.exit" ] ; 2 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r
end_hunk_3
begin_hunk_4_@_ZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
  br label %_ZNSt10shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateEC2ERKSB_.exit

_ZNSt10shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateEC2ERKSB_.exit: ; preds = %bb.r, %bb.s
  %i.av = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !46  ; 4 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i21, label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit, label %bb.t

end_hunk_4
begin_hunk_5_@_ZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
  store ptr %i.r, ptr %i.aa, align 8, !tbaa !46
  store ptr %i.av, ptr %i.ab, align 8, !tbaa !51
  store ptr %i.aw, ptr %i.ac, align 8, !tbaa !46
  %i.bc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %bb.w unwind label %bb.z       ; 6 uses

end_hunk_5
begin_hunk_6_@_ZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bi) #24, !inline_history !103
  br label %"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev.exit"

bb.y:                                             ; preds = %bb.w
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.bn = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i.i5.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i5.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i
end_hunk_6
begin_hunk_7_@_ZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bn) #24, !inline_history !103
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i

bb.z:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i: ; preds = %bb.z, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i, %bb.y
end_hunk_7
begin_hunk_8_@_ZN5arrow6FutureINS_8internal5EmptyEE12MakeFinishedIS2_vEES3_NS_6StatusE:bb.a
  br i1 %i.b, label %bb.b, label %bb.c, !prof !81

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !75, !alias.scope !104
  br label %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit

bb.c:                                             ; preds = %bb.a
end_hunk_8
begin_hunk_9_@_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv:bb.a
  %2 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.a = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #23
          to label %bb.b unwind label %bb.d       ; 5 uses

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.a, i8 0, i64 160, i1 false), !noalias !110
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow18ConcreteFutureImplE, i64 16), ptr %i.a, align 8, !tbaa !10, !noalias !110
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false), !noalias !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.c) #24, !noalias !110
  store ptr %i.a, ptr %2, align 8, !tbaa !12, !alias.scope !107
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  invoke void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load <2 x ptr>, ptr %1, align 16, !tbaa !113
  store ptr null, ptr %1, align 16, !tbaa !114
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !113
  %.pre = load ptr, ptr %2, align 8, !tbaa !114   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.not.i = icmp eq ptr %.pre, null
end_hunk_9
begin_hunk_10_@_ZN5arrow11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %i.q = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !113
  store <2 x ptr> %i.q, ptr %.08.i.i.i.i.i, align 8, !tbaa !113
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

end_hunk_10
begin_hunk_11_@_ZN5arrow11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
.noexc:                                           ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46, !alias.scope !123 ; 3 uses
  %i.ad = load <2 x ptr>, ptr %0, align 8, !tbaa !113, !alias.scope !123
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i, label %bb.h

end_hunk_11
begin_hunk_12_@_ZN5arrow11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
bb.k:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEEE", i64 16), ptr %i.aj, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x ptr> %i.ad, ptr %i.ak, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !123
  %i.al = ptrtoint ptr %i.aj to i64
  store i64 %i.al, ptr %2, align 8, !tbaa !33, !noalias !123
end_hunk_12
begin_hunk_13_@_ZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EE:bb.a
bb.p:                                             ; preds = %.lr.ph, %_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_D2Ev.exit
  %.sroa.017.020 = phi ptr [ %i.ah, %.lr.ph ], [ %i.cs, %_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_D2Ev.exit ] ; 2 uses
  %i.bj = load ptr, ptr %i.x, align 8, !tbaa !46  ; 2 uses
  %i.bk = load <2 x ptr>, ptr %5, align 16, !tbaa !113
  store <2 x ptr> %i.bk, ptr %6, align 16, !tbaa !113
  %.not.i.i.i11 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i11, label %_ZNSt10shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateEC2ERKSG_.exit, label %bb.q

end_hunk_13
begin_hunk_14_@_ZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EE:bb.a
  store ptr %i.cb, ptr %i.ap, align 8, !tbaa !46
  store ptr %i.by, ptr %i.aq, align 8, !tbaa !51
  store ptr %i.bx, ptr %i.ar, align 8, !tbaa !46
  store <4 x ptr> splat (ptr null), ptr %6, align 16, !tbaa !113
  %i.cc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %bb.w unwind label %bb.z       ; 6 uses

end_hunk_14
begin_hunk_15_@_ZN5arrow10FutureImplD2Ev:bb.a

_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIvPFvPvEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113
  invoke void %i.s(ptr noundef nonnull %i.q)
          to label %_ZNSt10unique_ptrIvPFvPvEED2Ev.exit unwind label %bb.d

end_hunk_15
begin_hunk_16_@_ZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEb:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %i.l = load <2 x ptr>, ptr %0, align 8, !tbaa !113
  store <2 x ptr> %i.l, ptr %3, align 16, !tbaa !113
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit, label %bb.c

end_hunk_16
begin_hunk_17_@_ZN5arrow8internal8Executor5SpawnIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS5_14CallbackRecordEbEUlvE_EENS_6StatusEOT_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !113
  store <2 x ptr> %i.e, ptr %5, align 16, !tbaa !113
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_C2EOS8_.exit, label %bb.b

end_hunk_17
begin_hunk_18_@_ZN5arrow6FutureINS_8internal5EmptyEE20InitializeFromResultENS_6ResultIS2_EE:bb.a
.noexc:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 8 uses
  %i.i = load <2 x ptr>, ptr %0, align 8, !tbaa !113
  %i.j = load <2 x ptr>, ptr %2, align 16, !tbaa !113
  store <2 x ptr> %i.j, ptr %0, align 8, !tbaa !113
  store <2 x ptr> %i.i, ptr %2, align 16, !tbaa !113
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.c

end_hunk_18
begin_hunk_19_@_ZN5arrow6FutureINS_8internal5EmptyEE20InitializeFromResultENS_6ResultIS2_EE:bb.a
  %i.bb = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !113 ; 2 uses
  store ptr %i.aw, ptr %i.bd, align 8, !tbaa !113
  %.not.i.i.i.i.i13 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i13, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit.i
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !113
  invoke void %i.bf(ptr noundef nonnull %i.be)
          to label %bb.u unwind label %bb.t

end_hunk_19
begin_hunk_20_@_ZN5arrow6FutureINS_8internal5EmptyEE20InitializeFromResultENS_6ResultIS2_EE:bb.a
  unreachable

bb.u:                                             ; preds = %bb.s, %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit.i
  store ptr @_ZZN5arrow6FutureINS_8internal5EmptyEE9SetResultENS_6ResultIS2_EEENUlPvE_8__invokeES6_, ptr %i.bc, align 8, !tbaa !113
  %i.bi = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.v, !prof !81
end_hunk_20
begin_hunk_21_@_ZNSt10shared_ptrIN5arrow10FutureImplEEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS2_E4typeEOSF_:bb.a
  call void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %i.c = load <2 x ptr>, ptr %0, align 8, !tbaa !113
  %i.d = load <2 x ptr>, ptr %2, align 16, !tbaa !113
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !113
  store <2 x ptr> %i.c, ptr %2, align 16, !tbaa !113
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit, label %bb.b

end_hunk_21
begin_hunk_22_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEE6invokeES4_":bb.a
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !113 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr %.val, align 8, !tbaa !75
end_hunk_22
begin_hunk_23_@_ZN5arrow6FutureINS_8internal5EmptyEE14DoMarkFinishedENS_6ResultIS2_EE:bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113  ; 2 uses
  store ptr %i.e, ptr %i.l, align 8, !tbaa !113
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit.i
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !113
  invoke void %i.n(ptr noundef nonnull %i.m)
          to label %bb.h unwind label %bb.g

end_hunk_23
begin_hunk_24_@_ZN5arrow6FutureINS_8internal5EmptyEE14DoMarkFinishedENS_6ResultIS2_EE:bb.a
  unreachable

bb.h:                                             ; preds = %bb.f, %_ZN5arrow6ResultINS_8internal5EmptyEEC2IS2_vEEONS0_IT_EE.exit.i
  store ptr @_ZZN5arrow6FutureINS_8internal5EmptyEE9SetResultENS_6ResultIS2_EEENUlPvE_8__invokeES6_, ptr %i.k, align 8, !tbaa !113
  %i.q = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.i, !prof !81
end_hunk_24
begin_hunk_25_@_ZN5arrow6FutureINS_8internal5EmptyEE14DoMarkFinishedENS_6ResultIS2_EE:bb.a
_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit:   ; preds = %bb.h, %bb.i, %bb.j
  %i.u = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.y = icmp eq ptr %i.x, null
  %. = select i1 %i.y, i8 1, i8 2, !prof !81
end_hunk_25
begin_hunk_26_@_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEEC2ES7_:bb.a
.noexc:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 8 uses
  %i.g = load <2 x ptr>, ptr %0, align 8, !tbaa !113
  %i.h = load <2 x ptr>, ptr %2, align 16, !tbaa !113
  store <2 x ptr> %i.h, ptr %0, align 8, !tbaa !113
  store <2 x ptr> %i.g, ptr %2, align 16, !tbaa !113
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.c

end_hunk_26
begin_hunk_27_@_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEEC2ES7_:bb.a
  %i.an = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !113 ; 2 uses
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !113
  %.not.i.i.i.i.i7 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i7, label %.thread, label %bb.j

.thread:                                          ; preds = %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEEC2IS6_vEEONS0_IT_EE.exit.i
  store ptr @_ZZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE9SetResultENS2_IS7_EEENUlPvE_8__invokeESA_, ptr %i.ao, align 8, !tbaa !113
  br label %bb.m

bb.j:                                             ; preds = %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEEC2IS6_vEEONS0_IT_EE.exit.i
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !113
  invoke void %i.ar(ptr noundef nonnull %i.aq)
          to label %bb.l unwind label %bb.k

end_hunk_27
begin_hunk_28_@_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEEC2ES7_:bb.a

bb.l:                                             ; preds = %bb.j
  %.pre = load ptr, ptr %4, align 8, !tbaa !75    ; 2 uses
  store ptr @_ZZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE9SetResultENS2_IS7_EEENUlPvE_8__invokeESA_, ptr %i.ao, align 8, !tbaa !113
  %i.au = icmp eq ptr %.pre, null
  br i1 %i.au, label %bb.m, label %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.thread.i, !prof !246

end_hunk_28
begin_hunk_29_@_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE4MakeEv:bb.a
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load <2 x ptr>, ptr %1, align 16, !tbaa !113
  store ptr null, ptr %1, align 16, !tbaa !114
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !113
  %.pre = load ptr, ptr %2, align 8, !tbaa !114   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %.not.i = icmp eq ptr %.pre, null
end_hunk_29
begin_hunk_30_@_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackIZNS_3AllIS9_EENS8_ISt6vectorINS_6ResultIT_EESaISH_EEEESE_INS8_ISG_EESaISL_EEEUlRKNSF_IS9_EEE_EEE6invokeES4_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113
  tail call void @_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_clESG_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(9) %i.c)
  ret void
}
end_hunk_30
begin_hunk_31_@_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_clESG_:bb.a
bb.d:                                             ; preds = %.lr.ph
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.024 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %i.ai
  br i1 %i.ak, label %_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit, label %bb.e, !prof !58
end_hunk_31
begin_hunk_32_@_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE14DoMarkFinishedENS2_IS7_EE:bb.a
  %i.v = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !113  ; 2 uses
  store ptr %i.k, ptr %i.x, align 8, !tbaa !113
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEEC2IS6_vEEONS0_IT_EE.exit.i
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !113
  invoke void %i.z(ptr noundef nonnull %i.y)
          to label %bb.h unwind label %bb.g

end_hunk_32
begin_hunk_33_@_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE14DoMarkFinishedENS2_IS7_EE:bb.a
  unreachable

bb.h:                                             ; preds = %bb.f, %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEEC2IS6_vEEONS0_IT_EE.exit.i
  store ptr @_ZZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE9SetResultENS2_IS7_EEENUlPvE_8__invokeESA_, ptr %i.w, align 8, !tbaa !113
  %i.ac = load ptr, ptr %2, align 8, !tbaa !75    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.thread.i, !prof !81
end_hunk_33
begin_hunk_34_@_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE14DoMarkFinishedENS2_IS7_EE:bb.a
_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.thread.i, %bb.m
  %i.ax = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !113
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !75
  %i.bb = icmp eq ptr %i.ba, null
  %. = select i1 %i.bb, i8 1, i8 2, !prof !81
end_hunk_34
begin_hunk_35_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEE6invokeES4_":bb.a
  %3 = alloca %"class.arrow::Future", align 16    ; 9 uses
  %4 = alloca %"class.arrow::Future", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !113 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.b = load ptr, ptr %.val, align 8, !tbaa !75
  %i.c = icmp eq ptr %i.b, null
end_hunk_35
begin_hunk_36_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEE6invokeES4_":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load <2 x ptr>, ptr %i.d, align 8, !tbaa !113
  store ptr null, ptr %i.h, align 8, !tbaa !46
  store <2 x ptr> %i.i, ptr %3, align 16, !tbaa !113
  store ptr null, ptr %i.d, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
end_hunk_36
begin_hunk_37_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEE6invokeES4_":bb.a

bb.q:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load <2 x ptr>, ptr %i.d, align 8, !tbaa !113
  store ptr null, ptr %i.ao, align 8, !tbaa !46
  store <2 x ptr> %i.ap, ptr %4, align 16, !tbaa !113
  store ptr null, ptr %i.d, align 8, !tbaa !51
  invoke fastcc void @"_ZNK5arrow6detail14ContinueFutureclINS_6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS8_EEE17PassthruOnFailureIZNS_11AllFinishedERKS4_INS3_IS7_EESaISD_EEE3$_0EEJRKNS_6StatusEES8_SD_EENSt9enable_ifIXaaaaaantsr3std7is_voidIT1_EE5valuentsr9is_futureISO_EE5valuesrT2_8is_emptyntsr3std7is_sameISO_SK_EE5valueEvE4typeESP_OT_DpOT0_"(ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %.val)
          to label %bb.r unwind label %bb.s
end_hunk_37
begin_hunk_38_@llvm.umin.i64
!100 = !{!101, !102, i64 0}
!101 = !{!"_ZTSSt12__shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateLN9__gnu_cxx12_Lock_policyE2EE", !102, i64 0, !47, i64 8}
!102 = !{!"p1 _ZTSZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEE5State", !15, i64 0}
!103 = distinct !{null, ptr @_ZN5arrow10FutureImpl11AddCallbackENS_8internal6FnOnceIFvRKS0_EEENS_15CallbackOptionsE, null, null, null}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN5arrow8internal5Empty8ToResultENS_6StatusE: argument 0"}
!106 = distinct !{!106, !"_ZN5arrow8internal5Empty8ToResultENS_6StatusE"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN5arrow10FutureImpl4MakeEv: argument 0"}
!109 = distinct !{!109, !"_ZN5arrow10FutureImpl4MakeEv"}
!110 = !{!111, !108}
!111 = distinct !{!111, !112, !"_ZSt11make_uniqueIN5arrow18ConcreteFutureImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!112 = distinct !{!112, !"_ZSt11make_uniqueIN5arrow18ConcreteFutureImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!113 = !{!15, !15, i64 0}
!114 = !{!14, !14, i64 0}
!115 = distinct !{null, null}
!116 = distinct !{ptr @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
end_hunk_38
