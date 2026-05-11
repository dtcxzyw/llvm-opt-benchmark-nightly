inline.NumInlined: 3211
inline.NumDeleted: 1159
begin_hunk_0_@_ZNK5arrow3ipc7Message11SerializeToEPNS_2io12OutputStreamERKNS0_15IpcWriteOptionsEPl:bb.a
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
end_hunk_0
begin_hunk_1_@_ZNK5arrow3ipc7Message11SerializeToEPNS_2io12OutputStreamERKNS0_15IpcWriteOptionsEPl:bb.a
_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNK5arrow3ipc7Message8metadataEv.exit
  %i.m = load ptr, ptr %6, align 8, !tbaa !27     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !27
  store ptr null, ptr %6, align 8, !tbaa !27
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNS1_9IOContextE:bb.a
  %12 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %13 = alloca %"class.arrow::Future.68", align 8 ; 7 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !394 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  store i32 1, ptr %i.c, align 8, !tbaa !19, !noalias !399
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !21, !noalias !399
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIZN5arrow3ipc16ReadMessageAsyncElilPNS0_2io16RandomAccessFileERKNS2_9IOContextEE5StateSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !22, !noalias !399
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false), !noalias !399
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %_ZNSt12__shared_ptrIN5arrow3ipc28AssignMessageDecoderListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.p ; 6 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNS1_9IOContextE:bb.a
          to label %bb.aa unwind label %bb.ac, !noalias !423

bb.aa:                                            ; preds = %bb.z
  %i.bw = load ptr, ptr %8, align 8, !tbaa !424, !noalias !423 ; 4 uses
  store ptr null, ptr %8, align 8, !tbaa !424, !noalias !423
  store ptr %i.bw, ptr %0, align 8, !tbaa !424, !alias.scope !423
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !13, !noalias !423 ; 6 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !13, !alias.scope !423
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !424, !noalias !423 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29, !noalias !423
end_hunk_3
begin_hunk_4_@_ZN5arrow3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNS1_9IOContextE:bb.a
_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEE4MakeEv.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29, !noalias !423
  store i32 %2, ptr %10, align 8, !tbaa !427, !noalias !417
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.cj, align 8, !tbaa !432, !noalias !417
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.ck, align 8, !tbaa !13, !noalias !417
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i64 %1, ptr %i.cl, align 8, !noalias !417
  %.sroa.12.24..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %3, ptr %.sroa.12.24..sroa_idx, align 8, !noalias !417
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store ptr %i.bw, ptr %i.cm, align 8, !tbaa !433, !noalias !417
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  store ptr %i.bz, ptr %i.cn, align 8, !tbaa !13, !noalias !417
  %.not.i.i.i.i.i45 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i45, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit.i, label %bb.ad

end_hunk_4
begin_hunk_5_@_ZN5arrow3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNS1_9IOContextE:bb.a
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit.i

_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit.i: ; preds = %bb.af, %bb.ae, %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEE4MakeEv.exit.i
  %.val.i = load ptr, ptr %13, align 8, !tbaa !433, !noalias !417
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !417
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !417
  store i32 %2, ptr %7, align 8, !tbaa !427, !noalias !417
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.ct, align 8, !tbaa !432, !noalias !417
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.ck, align 8, !tbaa !13, !noalias !417
  store ptr %i.b, ptr %i.cu, align 8, !tbaa !13, !noalias !417
  store ptr null, ptr %i.cj, align 8, !tbaa !432, !noalias !417
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !417
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.bw, ptr %i.cw, align 8, !tbaa !433, !noalias !417
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr null, ptr %i.cn, align 8, !tbaa !13, !noalias !417
  store ptr %i.bz, ptr %i.cx, align 8, !tbaa !13, !noalias !417
  store ptr null, ptr %i.cm, align 8, !tbaa !433, !noalias !417
  %i.cy = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28
          to label %bb.ag unwind label %bb.ai, !noalias !417 ; 8 uses

end_hunk_5
begin_hunk_6_@_ZN5arrow3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNS1_9IOContextE:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %2, ptr %i.da, align 8, !tbaa !427, !noalias !417
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.e, ptr %i.db, align 8, !tbaa !432, !noalias !417
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.b, ptr %i.dc, align 8, !tbaa !13, !noalias !417
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store ptr %i.bw, ptr %i.dd, align 8, !tbaa !433, !noalias !417
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  store ptr %i.bz, ptr %i.de, align 8, !tbaa !13, !noalias !417
  store ptr %i.cy, ptr %6, align 8, !tbaa !435, !noalias !417
end_hunk_6
begin_hunk_7_@_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ENS_6ResultIS4_EE:bb.a
  unreachable

_ZN5arrow6ResultISt10shared_ptrINS_3ipc7MessageEEEC2IS4_vEEONS0_IT_EE.exit.i: ; preds = %bb.u, %_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.bf = load ptr, ptr %0, align 8, !tbaa !433   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 40 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !11 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !424    ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !433
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !13
  %i.c = icmp eq ptr %i.a, null
end_hunk_8
begin_hunk_9_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNSH_9IOContextEE3$_0NSC_17PassthruOnFailureISN_EEEEEEE6invokeES4_":bb.a
  %i.n = load <2 x ptr>, ptr %i.j, align 8, !tbaa !11
  store ptr null, ptr %i.m, align 8, !tbaa !13
  store <2 x ptr> %i.n, ptr %26, align 16, !tbaa !11
  store ptr null, ptr %i.j, align 8, !tbaa !433
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val5.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !13 ; 3 uses
end_hunk_9
begin_hunk_10_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNSH_9IOContextEE3$_0NSC_17PassthruOnFailureISN_EEEEEEE6invokeES4_":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29, !noalias !866
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29, !noalias !866
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.val29.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !432, !noalias !866
  %i.ar = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i.i, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !410, !noalias !866
  store ptr %i.v, ptr %13, align 16, !tbaa !16, !noalias !866
end_hunk_10
begin_hunk_11_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNSH_9IOContextEE3$_0NSC_17PassthruOnFailureISN_EEEEEEE6invokeES4_":bb.a

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit37.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29, !noalias !866
  %.val28.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !432, !noalias !866 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val28.i.i.i.i.i, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !410, !noalias !866
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
end_hunk_11
begin_hunk_12_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNSH_9IOContextEE3$_0NSC_17PassthruOnFailureISN_EEEEEEE6invokeES4_":bb.a
  %i.hf = load ptr, ptr %16, align 8, !tbaa !16, !noalias !866 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !53, !noalias !866 ; 2 uses
  %.val25.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !432, !noalias !866
  %i.hi = getelementptr inbounds nuw i8, ptr %.val25.i.i.i.i.i, i64 24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !410, !noalias !866 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
end_hunk_12
begin_hunk_13_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNSH_9IOContextEE3$_0NSC_17PassthruOnFailureISN_EEEEEEE6invokeES4_":bb.a

_ZN5arrow6StatusD2Ev.exit78.i.i.i.i.i:            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit20.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29, !noalias !866
  %.val22.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !432, !noalias !866
  store ptr null, ptr %24, align 8, !tbaa !27
  %i.jn = getelementptr inbounds nuw i8, ptr %24, i64 8
  invoke void @_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, ptr noundef nonnull align 8 dereferenceable(8) %.val22.i.i.i.i.i)
end_hunk_13
begin_hunk_14_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNSH_9IOContextEE3$_0NSC_17PassthruOnFailureISN_EEEEEEE6invokeES4_":bb.a
  %i.nj = load <2 x ptr>, ptr %i.nh, align 8, !tbaa !11
  store ptr null, ptr %i.ni, align 8, !tbaa !13
  store <2 x ptr> %i.nj, ptr %27, align 16, !tbaa !11
  store ptr null, ptr %i.nh, align 8, !tbaa !433
  invoke fastcc void @"_ZNK5arrow6detail14ContinueFutureclINS_6FutureISt10shared_ptrINS_6BufferEEE17PassthruOnFailureIZNS_3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNSA_9IOContextEE3$_0EEJRKNS_6StatusEENS_6ResultIS4_INS9_7MessageEEEENS3_ISN_EEEENSt9enable_ifIXaaaantsr3std7is_voidIT1_EE5valuentsr9is_futureISR_EE5valueoontsrT2_8is_emptysr3std7is_sameISR_SI_EE5valueEvE4typeESS_OT_DpOT0_"(ptr noundef %27, ptr noundef nonnull align 8 dereferenceable(24) %.val)
          to label %bb.ec unwind label %bb.ed

end_hunk_14
begin_hunk_15_@_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEE14DoMarkFinishedENS_6ResultIS4_EE:bb.a
  unreachable

_ZN5arrow6ResultISt10shared_ptrINS_3ipc7MessageEEEC2IS4_vEEONS0_IT_EE.exit.i: ; preds = %bb.d, %_ZNSt12__shared_ptrIN5arrow3ipc7MessageELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.p = load ptr, ptr %0, align 8, !tbaa !433    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEE14DoMarkFinishedENS_6ResultIS4_EE:bb.a
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_3ipc7MessageEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc7MessageEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc7MessageEEE7DestroyEv.exit.thread.i, %bb.p
  %i.at = load ptr, ptr %0, align 8, !tbaa !433   ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !27
end_hunk_16
begin_hunk_17_@llvm.umax.i64
!429 = !{!"_ZTSSt10shared_ptrIZN5arrow3ipc16ReadMessageAsyncElilPNS0_2io16RandomAccessFileERKNS2_9IOContextEE5StateE", !430, i64 0}
!430 = !{!"_ZTSSt12__shared_ptrIZN5arrow3ipc16ReadMessageAsyncElilPNS0_2io16RandomAccessFileERKNS2_9IOContextEE5StateLN9__gnu_cxx12_Lock_policyE2EE", !431, i64 0, !14, i64 8}
!431 = !{!"p1 _ZTSZN5arrow3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNS1_9IOContextEE5State", !10, i64 0}
!432 = !{!430, !431, i64 0}
!433 = !{!434, !425, i64 0}
!434 = !{!"_ZTSSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE", !425, i64 0, !14, i64 8}
!435 = !{!436, !436, i64 0}
!436 = !{!"p1 _ZTSN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE4ImplE", !10, i64 0}
!437 = distinct !{null, null, null, null, null}
end_hunk_17
