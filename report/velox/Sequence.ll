inline.NumInlined: 938
inline.NumDeleted: 508
begin_hunk_0_@_ZN8facebook5velox9functions35registerVectorFunction_udf_sequenceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %common.resume

_ZN8facebook5velox9functions12_GLOBAL__N_110signaturesEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !7
  call void @_ZN8facebook5velox4exec24FunctionSignatureBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !7
  %i.tl = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %36, i64 24
  %i.tn = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 0, ptr %i.tn, align 8
  store ptr @_ZN8facebook5velox9functions12_GLOBAL__N_16createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_4exec17VectorFunctionArgESaISD_EERKNS0_4core11QueryConfigE, ptr %36, align 8, !tbaa !44
  store ptr @_ZNSt17_Function_handlerIFSt10shared_ptrIN8facebook5velox4exec14VectorFunctionEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS3_17VectorFunctionArgESaISF_EERKNS2_4core11QueryConfigEEPSO_E9_M_invokeERKSt9_Any_dataSD_SJ_SN_, ptr %i.tm, align 8, !tbaa !45
  store ptr @_ZNSt17_Function_handlerIFSt10shared_ptrIN8facebook5velox4exec14VectorFunctionEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS3_17VectorFunctionArgESaISF_EERKNS2_4core11QueryConfigEEPSO_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation, ptr %i.tl, align 8, !tbaa !48
  store <4 x i8> <i8 0, i8 1, i8 1, i8 0>, ptr %37, align 8, !tbaa !49
  %i.to = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 0, ptr %i.to, align 8, !tbaa !51
  %i.tp = getelementptr inbounds nuw i8, ptr %37, i64 16
  store ptr @.str, ptr %i.tp, align 8, !tbaa !53
  %i.tq = invoke noundef zeroext i1 @_ZN8facebook5velox4exec30registerStatefulVectorFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrINS1_17FunctionSignatureEESaISD_EESt8functionIFSB_INS1_14VectorFunctionEES9_RKSA_INS1_17VectorFunctionArgESaISJ_EERKNS0_4core11QueryConfigEEENS1_22VectorFunctionMetadataEb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %35, ptr noundef nonnull %36, ptr noundef nonnull byval(%"struct.facebook::velox::exec::VectorFunctionMetadata") align 8 %37, i1 noundef zeroext true)
          to label %bb.cx unwind label %bb.dh     ; 0 uses

bb.cx:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_110signaturesEv.exit
  %i.tr = load ptr, ptr %i.tl, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %i.tr, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ts = invoke noundef zeroext i1 %i.tr(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.cz ; 0 uses

bb.cz:                                            ; preds = %bb.cy
  %i.tt = landingpad { ptr, i32 }
          catch ptr null
  %i.tu = extractvalue { ptr, i32 } %i.tt, 0
  call void @__clang_call_terminate(ptr %i.tu) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.cx, %bb.cy
  %i.tv = load ptr, ptr %35, align 8, !tbaa !54   ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.tv, %i.tx
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.up, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i.i ], [ %i.tv, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !34 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph.i.i.i
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8 ; 4 uses
  %i.ub = load atomic i64, ptr %i.ua acquire, align 8 ; 2 uses
  %i.uc = icmp eq i64 %i.ub, 4294967297
  %i.ud = trunc i64 %i.ub to i32                  ; 2 uses
  br i1 %i.uc, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %i.ua, align 8, !tbaa !37
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 12
  store i32 0, ptr %i.ue, align 4, !tbaa !39
  %i.uf = load ptr, ptr %i.tz, align 8, !tbaa !40
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8
  call void %i.uh(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #20, !inline_history !58
  %i.ui = load ptr, ptr %i.tz, align 8, !tbaa !40
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #20, !inline_history !58
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i.i

bb.dc:                                            ; preds = %bb.da
  %i.ul = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ul, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.um = add nsw i32 %i.ud, -1
  store i32 %i.um, ptr %i.ua, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.de:                                            ; preds = %bb.dc
  %i.un = atomicrmw volatile add ptr %i.ua, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.de, %bb.dd
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ud, %bb.dd ], [ %i.un, %bb.de ]
  %i.uo = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.uo, label %bb.df, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i.i, !prof !43

bb.df:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tz) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i.i: ; preds = %bb.df, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.db, %.lr.ph.i.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.up, %i.tx
  br i1 %.not.i.i.i2, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !59

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %35, align 8, !tbaa !54
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.uq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.tv, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.uq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ur = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !61
  %i.ut = ptrtoint ptr %i.us to i64
  %i.uu = ptrtoint ptr %i.uq to i64
  %i.uv = sub i64 %i.ut, %i.uu
  call void @_ZdlPvm(ptr noundef nonnull %i.uq, i64 noundef %i.uv) #22
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit.i, %bb.dg
  ret void

bb.dh:                                            ; preds = %_ZN8facebook5velox9functions12_GLOBAL__N_110signaturesEv.exit
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ux = load ptr, ptr %i.tl, align 8, !tbaa !48 ; 2 uses
  %.not.i3 = icmp eq ptr %i.ux, null
  br i1 %.not.i3, label %common.resume, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.uy = invoke noundef zeroext i1 %i.ux(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef 3)
          to label %common.resume unwind label %bb.dj ; 0 uses

bb.dj:                                            ; preds = %bb.di
  %i.uz = landingpad { ptr, i32 }
          catch ptr null
  %i.va = extractvalue { ptr, i32 } %i.uz, 0
  call void @__clang_call_terminate(ptr %i.va) #23
  unreachable
}

declare noundef zeroext i1 @_ZN8facebook5velox4exec30registerStatefulVectorFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrINS1_17FunctionSignatureEESaISD_EESt8functionIFSB_INS1_14VectorFunctionEES9_RKSA_INS1_17VectorFunctionArgESaISJ_EERKNS0_4core11QueryConfigEEENS1_22VectorFunctionMetadataEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef byval(%"struct.facebook::velox::exec::VectorFunctionMetadata") align 8, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_16createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_4exec17VectorFunctionArgESaISD_EERKNS0_4core11QueryConfigE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree nonnull readnone align 8 captures(none) %3) #0 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %i.a = load ptr, ptr %2, align 8, !tbaa !62     ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = icmp eq ptr %i.b, @_ZZN8facebook5velox8DateType3getEvE9kInstance
  br i1 %i.c, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.h, 64
  br i1 %i.i, label %_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIilEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = icmp eq ptr %i.k, @_ZZN8facebook5velox21IntervalYearMonthType3getEvE9kInstance
  br i1 %i.l, label %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIiiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIilEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIilEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  br label %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIiiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !69
  switch i8 %i.n, label %bb.d [
    i8 4, label %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIiiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp ugt i64 %i.s, 64
  br i1 %i.t, label %_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, label %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionINS1_9TimestampElEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.w = icmp eq ptr %i.v, @_ZZN8facebook5velox21IntervalYearMonthType3getEvE9kInstance
  br i1 %i.w, label %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIiiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionINS1_9TimestampElEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionINS1_9TimestampElEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26
  br label %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIiiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_16createERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS0_4exec17VectorFunctionArgESaISD_EERKNS0_4core11QueryConfigEE18veloxCheckFailArgs) #24
  unreachable

_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIiiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, %bb.b, %_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionINS1_9TimestampElEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIilEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sink58 = phi ptr [ getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions16SequenceFunctionINS1_9TimestampElEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionINS1_9TimestampElEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions16SequenceFunctionIllEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), %bb.b ], [ getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions16SequenceFunctionIiiEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), %_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions16SequenceFunctionIilEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIilEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions16SequenceFunctionINS1_9TimestampEiEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), %_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26 ]
  %.sink55 = phi ptr [ getelementptr inbounds inrange(-16, 72) ({ [11 x ptr] }, ptr @_ZTVN8facebook5velox9functions16SequenceFunctionINS0_9TimestampElEE, i32 0, i32 0, i32 2), %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionINS1_9TimestampElEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ getelementptr inbounds inrange(-16, 72) ({ [11 x ptr] }, ptr @_ZTVN8facebook5velox9functions16SequenceFunctionIllEE, i32 0, i32 0, i32 2), %bb.b ], [ getelementptr inbounds inrange(-16, 72) ({ [11 x ptr] }, ptr @_ZTVN8facebook5velox9functions16SequenceFunctionIiiEE, i32 0, i32 0, i32 2), %_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ getelementptr inbounds inrange(-16, 72) ({ [11 x ptr] }, ptr @_ZTVN8facebook5velox9functions16SequenceFunctionIilEE, i32 0, i32 0, i32 2), %_ZNSt12__shared_ptrIN8facebook5velox9functions16SequenceFunctionIilEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ getelementptr inbounds inrange(-16, 72) ({ [11 x ptr] }, ptr @_ZTVN8facebook5velox9functions16SequenceFunctionINS0_9TimestampEiEE, i32 0, i32 0, i32 2), %_ZNSt12__shared_ptrIKN8facebook5velox21IntervalYearMonthTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26 ]
  %i.x = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21, !noalias !74 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 1, ptr %i.y, align 8, !tbaa !37, !noalias !74
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 1, ptr %i.z, align 4, !tbaa !39, !noalias !74
  store ptr %.sink58, ptr %i.x, align 8, !tbaa !40, !noalias !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  store ptr %.sink55, ptr %i.aa, align 8, !tbaa !40, !noalias !74
  store ptr %i.aa, ptr %0, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.ab, align 8, !tbaa !34
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !39
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20, !inline_history !78
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20, !inline_history !78
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i, !prof !43

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !59

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !54
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !61
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #22
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(233) ptr @_ZN8facebook5velox4exec24FunctionSignatureBuilder10returnTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::exec::TypeSignature", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN8facebook5velox4exec18parseTypeSignatureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::exec::TypeSignature") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !79, !range !81, !noundef !74
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(112) %i.a) #20
  br label %_ZNSt19_Optional_base_implIN8facebook5velox4exec13TypeSignatureESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 8, !tbaa !79
  br label %_ZNSt19_Optional_base_implIN8facebook5velox4exec13TypeSignatureESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i

_ZNSt19_Optional_base_implIN8facebook5velox4exec13TypeSignatureESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.c, %bb.b
  invoke void @_ZN8facebook5velox4exec13TypeSignatureC2EOS2_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(97) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZNSt19_Optional_base_implIN8facebook5velox4exec13TypeSignatureESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i
  store i8 1, ptr %i.b, align 8, !tbaa !79
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !82, !range !81, !noundef !74
  %i.g = trunc nuw i8 %i.f to i1
  store i8 0, ptr %i.e, align 8, !tbaa !82
  br i1 %i.g, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !33   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #22, !inline_history !84
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !85   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %.noexc.i
  %.0.i.i3.i = phi ptr [ %i.r, %.noexc.i ], [ %i.o, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i.i3.i)
          to label %.noexc.i unwind label %bb.f, !inline_history !89

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 104 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !90

bb.f:                                             ; preds = %.lr.ph.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #23, !inline_history !91
  unreachable

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i: ; preds = %.noexc.i
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !85
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.u = phi ptr [ %.pre.i, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i ], [ %i.o, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !92
end_hunk_0
