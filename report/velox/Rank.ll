Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Rank?download=true
inline.NumInlined: 9654
inline.NumDeleted: 2513
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8facebook5velox9functions6window20registerRankInternalILNS2_8RankTypeE2EdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_:bb.a
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ei) #26
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev.exit39

_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev.exit39: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit.i36, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.ap:                                            ; preds = %bb.b, %bb.a
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.body:                                            ; preds = %bb.c
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.body, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.ej, %bb.ap ], [ %i.ek, %.body ]
  call void @_ZN8facebook5velox4exec24FunctionSignatureBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.au

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZZN8facebook5velox9functions6window20registerRankInternalILNS2_8RankTypeE2EdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ENUlRKSt6vectorINS0_4exec17WindowFunctionArgESaISF_EERKSt10shared_ptrIKNS0_4TypeEEbPNS0_6memory10MemoryPoolEPNS0_19HashStringAllocatorERKNS0_4core11QueryConfigEE_D2Ev.exit44

bb.ar:                                            ; preds = %bb.x
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %i.bh, align 8, !tbaa !63 ; 2 uses
  %.not.i40 = icmp eq ptr %i.en, null
  br i1 %.not.i40, label %.body21, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eo = invoke noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %.body21 unwind label %bb.at   ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #28
  unreachable

.body21:                                          ; preds = %bb.as, %bb.ar, %bb.v, %.body48
  %.pn14 = phi { ptr, i32 } [ %eh.lpad-body49, %.body48 ], [ %i.em, %bb.as ], [ %eh.lpad-body49, %bb.v ], [ %i.em, %bb.ar ] ; 2 uses
  call void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #24
  %i.er = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.ap
  br i1 %i.es, label %_ZZN8facebook5velox9functions6window20registerRankInternalILNS2_8RankTypeE2EdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ENUlRKSt6vectorINS0_4exec17WindowFunctionArgESaISF_EERKSt10shared_ptrIKNS0_4TypeEEbPNS0_6memory10MemoryPoolEPNS0_19HashStringAllocatorERKNS0_4core11QueryConfigEE_D2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42: ; preds = %.body21
  %i.et = load i64, ptr %i.ap, align 8, !tbaa !28
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #26
  br label %_ZZN8facebook5velox9functions6window20registerRankInternalILNS2_8RankTypeE2EdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ENUlRKSt6vectorINS0_4exec17WindowFunctionArgESaISF_EERKSt10shared_ptrIKNS0_4TypeEEbPNS0_6memory10MemoryPoolEPNS0_19HashStringAllocatorERKNS0_4core11QueryConfigEE_D2Ev.exit44

_ZZN8facebook5velox9functions6window20registerRankInternalILNS2_8RankTypeE2EdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ENUlRKSt6vectorINS0_4exec17WindowFunctionArgESaISF_EERKSt10shared_ptrIKNS0_4TypeEEbPNS0_6memory10MemoryPoolEPNS0_19HashStringAllocatorERKNS0_4core11QueryConfigEE_D2Ev.exit44: ; preds = %.body21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42, %bb.aq
  %.pn14.pn = phi { ptr, i32 } [ %i.el, %bb.aq ], [ %.pn14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i42 ], [ %.pn14, %.body21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #24
  br label %bb.au

bb.au:                                            ; preds = %_ZZN8facebook5velox9functions6window20registerRankInternalILNS2_8RankTypeE2EdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ENUlRKSt6vectorINS0_4exec17WindowFunctionArgESaISF_EERKSt10shared_ptrIKNS0_4TypeEEbPNS0_6memory10MemoryPoolEPNS0_19HashStringAllocatorERKNS0_4core11QueryConfigEE_D2Ev.exit44, %.loopexit
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %_ZZN8facebook5velox9functions6window20registerRankInternalILNS2_8RankTypeE2EdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ENUlRKSt6vectorINS0_4exec17WindowFunctionArgESaISF_EERKSt10shared_ptrIKNS0_4TypeEEbPNS0_6memory10MemoryPoolEPNS0_19HashStringAllocatorERKNS0_4core11QueryConfigEE_D2Ev.exit44 ], [ %.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn14.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #4 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #4 align 2

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.4() #5 section ".text.startup" comdat($_ZN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5folly18threadlocal_detail10StaticMetaINS_10TLRefCountEvE6uniqueE, align 8
  tail call void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN5folly6detail14UniqueInstanceC1ITtTpTyENS_18threadlocal_detail10StaticMetaEJNS_10TLRefCountEEJvEEENS_5tag_tIJT_IJDpT0_DpT1_EEEEENS6_IJS9_EEENS6_IJSB_EEEE3arg) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly6detail5thunk4makeINS0_14UniqueInstance5ValueEJEEEPvDpT0_() #4 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail14UniqueInstance7enforceERNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_19shared_mutex_detail18PolicySuppressTSANEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  %i.a = and i32 %2, 12
  %i.b = icmp eq i32 %i.a, 12
  %.pre13 = load i32, ptr %1, align 4, !tbaa !55  ; 2 uses
  %i.c = and i32 %.pre13, %2
  %i.d = icmp eq i32 %i.c, 12
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 12)
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %1, align 4, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.g = phi i32 [ %.pre, %._crit_edge ], [ %.pre13, %bb.a ]
  %i.h = and i32 %i.g, %2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = xor i32 %2, -1                           ; 2 uses
  %i.j = atomicrmw and ptr %0, i32 %i.i seq_cst, align 4 ; 2 uses
  %i.k = and i32 %i.j, %2
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef i32 @_ZN5folly6detail13futexWakeImplEPKSt6atomicIjEij(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 2147483647, i32 noundef %2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = and i32 %i.j, %i.i
  store i32 %i.m, ptr %1, align 4, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(233) ptr @_ZN8facebook5velox4exec24FunctionSignatureBuilder10returnTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::exec::TypeSignature", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN8facebook5velox4exec18parseTypeSignatureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.facebook::velox::exec::TypeSignature") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !69, !range !70, !noundef !71
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt19_Optional_base_implIN8facebook5velox4exec13TypeSignatureESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(112) %i.a) #24
  br label %_ZNSt19_Optional_base_implIN8facebook5velox4exec13TypeSignatureESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i

_ZNSt19_Optional_base_implIN8facebook5velox4exec13TypeSignatureESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_ZN8facebook5velox4exec13TypeSignatureC2EOS2_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(97) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt19_Optional_base_implIN8facebook5velox4exec13TypeSignatureESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i
  store i8 1, ptr %i.b, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !73, !range !70, !noundef !71
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 0, ptr %i.e, align 8, !tbaa !73
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #26, !inline_history !74
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %.noexc.i
  %.0.i.i3.i = phi ptr [ %i.r, %.noexc.i ], [ %i.o, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i.i3.i)
          to label %.noexc.i unwind label %bb.e, !inline_history !3

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 104 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !4

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #28, !inline_history !79
  unreachable

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i: ; preds = %.noexc.i
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !77
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.u = phi ptr [ %.pre.i, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i ], [ %i.o, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !80
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #26, !inline_history !74
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.aa = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #26, !inline_history !74
  br label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit

_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit:  ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret ptr %0

bb.g:                                             ; preds = %_ZNSt19_Optional_base_implIN8facebook5velox4exec13TypeSignatureESt14_Optional_baseIS3_Lb0ELb0EEE8_M_resetEv.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4exec13TypeSignatureD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.af
}

declare void @_ZN8facebook5velox4exec24FunctionSignatureBuilder5buildEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(233)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !58
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !224
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !224
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec24FunctionSignatureBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(233) dereferenceable(233) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.g) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78   ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i2.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %.noexc.i
  %.0.i3.i.i = phi ptr [ %i.o, %.noexc.i ], [ %i.l, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i3.i.i)
          to label %.noexc.i unwind label %bb.d, !inline_history !225

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.noexc.i
  %.pr.i = load ptr, ptr %i.k, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.l, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #26, !inline_history !81
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #28, !inline_history !81
  unreachable

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit.i, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.y = load i8, ptr %i.x, align 8, !tbaa !69, !range !70, !noundef !71
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %_ZNSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(112) %i.aa) #24
  br label %_ZNSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit, %bb.e
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #24
  %i.ab = load ptr, ptr %0, align 8, !tbaa !37    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !38
  %i.ag = shl i64 %i.af, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ag) #26
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN8facebook5velox4exec13TypeSignatureELb0ELb0EED2Ev.exit, %bb.f
  ret void
}

declare noundef zeroext i1 @_ZN8facebook5velox4exec22registerWindowFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISt10shared_ptrINS1_17FunctionSignatureEESaISD_EENS1_14WindowFunction8MetadataESt8functionIFSt10unique_ptrISG_St14default_deleteISG_EERKSA_INS1_17WindowFunctionArgESaISN_EERKSB_IKNS0_4TypeEEbPNS0_6memory10MemoryPoolEPNS0_19HashStringAllocatorERKNS0_4core11QueryConfigEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef align 8, i64, ptr noundef align 8) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !48     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !58
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !226
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !226
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !48
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEES5_EvT_S7_RSaIT0_E.exit, %bb.h
  ret void
}

declare void @_ZN8facebook5velox4exec18parseTypeSignatureERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.facebook::velox::exec::TypeSignature") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec13TypeSignatureD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !73, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.a, align 8, !tbaa !73
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i12, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %.noexc
  %.0.i.i3 = phi ptr [ %i.n, %.noexc ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i.i3)
          to label %.noexc unwind label %bb.c, !inline_history !227

.noexc:                                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i3, i64 104 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i1, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit, label %.lr.ph, !llvm.loop !4

bb.c:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #28, !inline_history !81
  unreachable

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit: ; preds = %.noexc
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.q = phi ptr [ %.pre, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #26
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit
  %i.z = load i64, ptr %i.x, align 8, !tbaa !28
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(105) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !73, !range !70, !noundef !71
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.b, align 8, !tbaa !73
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26, !inline_history !74
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %.noexc.i
  %.0.i.i3.i = phi ptr [ %i.o, %.noexc.i ], [ %i.l, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i.i3.i)
          to label %.noexc.i unwind label %bb.c, !inline_history !3

.noexc.i:                                         ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 104 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !4

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28, !inline_history !79
  unreachable

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i: ; preds = %.noexc.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !77
  br label %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.r = phi ptr [ %.pre.i, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.loopexit.i ], [ %i.l, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !80
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #26, !inline_history !74
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !28
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #26, !inline_history !74
  br label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit

_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit:  ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec13TypeSignatureC2EOS2_(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  %i.b = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !61

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !28
  store i8 %i.k, ptr %i.j, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !73
  %i.s = load i8, ptr %i.q, align 8, !tbaa !73, !range !70, !noundef !71
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !24
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29   ; 8 uses
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %bb.h, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %.noexc.i.i.i.i.i.i.i.i, label %bb.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw i64 %i.y, 1                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.noexc6.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, !prof !61

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc8 unwind label %bb.m

.noexc8:                                          ; preds = %.noexc6.i.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #25
          to label %.noexc9 unwind label %bb.m    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.p, align 8, !tbaa !27
  store i64 %i.y, ptr %i.v, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc9, %bb.g
  %i.ae = phi ptr [ %i.ad, %.noexc9 ], [ %i.v, %bb.g ] ; 3 uses
  switch i64 %i.y, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.af = load i8, ptr %i.w, align 1, !tbaa !28
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !28
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.y, ptr %i.ag, align 8, !tbaa !29
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev:bb.a

bb.b:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #26
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureES3_EvT_S5_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #28
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec13TypeSignatureC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  %i.b = load ptr, ptr %1, align 8, !tbaa !27     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !61

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !28
  store i8 %i.k, ptr %i.j, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i8 0, ptr %i.r, align 8, !tbaa !73
  %i.s = load i8, ptr %i.q, align 8, !tbaa !73, !range !70, !noundef !71
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.g, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !24
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29   ; 8 uses
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %bb.h, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %.noexc.i.i.i.i.i.i.i.i, label %bb.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw i64 %i.y, 1                     ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.noexc6.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, !prof !61

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc8 unwind label %bb.m

.noexc8:                                          ; preds = %.noexc6.i.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #25
          to label %.noexc9 unwind label %bb.m    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.ad, ptr %i.p, align 8, !tbaa !27
  store i64 %i.y, ptr %i.v, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc9, %bb.g
  %i.ae = phi ptr [ %i.ad, %.noexc9 ], [ %i.v, %bb.g ] ; 3 uses
  switch i64 %i.y, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.af = load i8, ptr %i.w, align 1, !tbaa !28
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !28
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.y, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 0, ptr %i.ah, align 1, !tbaa !28
  store i8 1, ptr %i.r, align 8, !tbaa !73
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !90, !range !70, !noundef !71
  store i8 %i.ak, ptr %i.ai, align 8, !tbaa !90
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.al, %bb.l ]
  %i.an = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.a
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !28
  %i.aq = add i64 %i.ap, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %0) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !73, !range !70, !noundef !71
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.a, align 8, !tbaa !73
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26, !inline_history !234
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %.not.i.i1.i1 = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i1.i1, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %.noexc.i
  %.0.i.i.i2 = phi ptr [ %i.n, %.noexc.i ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 2 uses
  invoke void @_ZSt8_DestroyIN8facebook5velox4exec13TypeSignatureEEvPT_(ptr noundef %.0.i.i.i2)
          to label %.noexc.i unwind label %bb.c, !inline_history !235

.noexc.i:                                         ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i2, i64 104 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.n, %i.m
  br i1 %.not.i.i1.i, label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.loopexit, label %.lr.ph, !llvm.loop !4

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.loopexit: ; preds = %.noexc.i
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i

_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.loopexit, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.o = phi ptr [ %.pre, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i.loopexit ], [ %i.k, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #28, !inline_history !236
  unreachable

bb.d:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !80
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.v) #26, !inline_history !234
  br label %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i

_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPN8facebook5velox4exec13TypeSignatureEEvT_S5_.exit.i
  %i.w = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !28
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #26, !inline_history !234
  br label %_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit

_ZN8facebook5velox4exec13TypeSignatureD2Ev.exit:  ; preds = %_ZNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !237
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !55   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !237
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i ], [ %i.b, %bb.a ] ; 8 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !240 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i, i64 88 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !28
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !28
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #26
  br label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i

_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !28
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #26
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 120) #26
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit, label %.lr.ph.i, !llvm.loop !238

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, %bb.a
  %i.v = load ptr, ptr %0, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !38
  %i.y = shl i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFSt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERKSt6vectorINS3_17WindowFunctionArgESaIS9_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEEZNS2_9functions6window20registerRankInternalILNSV_8RankTypeE0ElEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES15_EUlSD_SJ_bSM_SO_SS_E_E9_M_invokeERKSt9_Any_dataSD_SJ_ObOSM_OSO_SS_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #25, !noalias !252 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !52, !noalias !252 ; 2 uses
  %i.c = load <2 x ptr>, ptr %3, align 8, !tbaa !53, !noalias !252
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERZNS2_9functions6window20registerRankInternalILNS9_8RankTypeE0ElEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_EUlRKSt6vectorINS3_17WindowFunctionArgESaISL_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEE_JSP_SV_bSY_S10_S14_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES18_E4typeEOS19_DpOS1A_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !252
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !55, !noalias !252
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !55, !noalias !252
  br label %_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERZNS2_9functions6window20registerRankInternalILNS9_8RankTypeE0ElEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_EUlRKSt6vectorINS3_17WindowFunctionArgESaISL_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEE_JSP_SV_bSY_S10_S14_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES18_E4typeEOS19_DpOS1A_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4, !noalias !252 ; 0 uses
  br label %_ZSt10__invoke_rISt10unique_ptrIN8facebook5velox4exec14WindowFunctionESt14default_deleteIS4_EERZNS2_9functions6window20registerRankInternalILNS9_8RankTypeE0ElEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_EUlRKSt6vectorINS3_17WindowFunctionArgESaISL_EERKSt10shared_ptrIKNS2_4TypeEEbPNS2_6memory10MemoryPoolEPNS2_19HashStringAllocatorERKNS2_4core11QueryConfigEE_JSP_SV_bSY_S10_S14_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES18_E4typeEOS19_DpOS1A_.exit
end_hunk_1
