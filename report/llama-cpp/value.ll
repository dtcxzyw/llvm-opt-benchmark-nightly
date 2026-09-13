Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/value?download=true
inline.NumInlined: 7081
inline.NumDeleted: 2279
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@"_ZNSt17_Function_handlerIFSt10shared_ptrIN5jinja7value_tEERKNS1_9func_argsEEZNKS1_13value_array_t12get_builtinsB5cxx11EvE4$_10E9_M_invokeERKSt9_Any_dataS6_":bb.a
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #35, !noalias !1998, !inline_history !1978
  %i.hr = load ptr, ptr %i.hi, align 8, !tbaa !68, !noalias !1998
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !1998
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #35, !noalias !1998, !inline_history !1978
  br label %"_ZSt10__invoke_rISt10shared_ptrIN5jinja7value_tEERZNKS1_13value_array_t12get_builtinsB5cxx11EvE4$_10JRKNS1_9func_argsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

bb.bd:                                            ; preds = %bb.bb
  %i.hu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62, !noalias !1998
  %.not.i.i.i103.i.i.i = icmp eq i8 %i.hu, 0
  br i1 %.not.i.i.i103.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hv = add nsw i32 %i.hm, -1
  store i32 %i.hv, ptr %i.hj, align 8, !tbaa !63, !noalias !1998
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.hw = atomicrmw volatile add ptr %i.hj, i32 -1 acq_rel, align 4, !noalias !1998
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i105.i.i.i = phi i32 [ %i.hm, %bb.be ], [ %i.hw, %bb.bf ]
  %i.hx = icmp eq i32 %.0.i.i.i.i105.i.i.i, 1
  br i1 %i.hx, label %bb.bg, label %"_ZSt10__invoke_rISt10shared_ptrIN5jinja7value_tEERZNKS1_13value_array_t12get_builtinsB5cxx11EvE4$_10JRKNS1_9func_argsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit", !prof !79

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hi) #35, !noalias !1998, !inline_history !1977
  br label %"_ZSt10__invoke_rISt10shared_ptrIN5jinja7value_tEERZNKS1_13value_array_t12get_builtinsB5cxx11EvE4$_10JRKNS1_9func_argsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

bb.bh:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  %i.hz = load ptr, ptr %9, align 8, !tbaa !59, !noalias !1998 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.ah
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i.i: ; preds = %bb.bh
  %i.ib = load i64, ptr %i.ah, align 8, !tbaa !62, !noalias !1998
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #38, !noalias !1998, !inline_history !1977
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35, !noalias !1998
  br label %bb.bu

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  %i.ie = load ptr, ptr %11, align 8, !tbaa !59, !noalias !1998 ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.ao
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i.i.i: ; preds = %bb.bi
  %i.ig = load i64, ptr %i.ao, align 8, !tbaa !62, !noalias !1998
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #38, !noalias !1998, !inline_history !1977
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i.i.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35, !noalias !1998
  br label %bb.bt

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i.i.i
  %i.ii = landingpad { ptr, i32 }
          cleanup
  %i.ij = load ptr, ptr %13, align 8, !tbaa !59, !noalias !1998 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.av
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i.i.i: ; preds = %bb.bj
  %i.il = load i64, ptr %i.av, align 8, !tbaa !62, !noalias !1998
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #38, !noalias !1998, !inline_history !1977
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i.i.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35, !noalias !1998
  br label %bb.bs

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i.i
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bl:                                            ; preds = %bb.r
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bm:                                            ; preds = %_ZNSt15__new_allocatorISt10shared_ptrIN5jinja7value_tEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i, %bb.s
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.aa, %bb.z, %bb.y
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.bn:                                            ; preds = %bb.ab
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.bo:                                            ; preds = %_ZN5jinja6is_valISt10shared_ptrINS_13value_tuple_tEEEEbRKS1_INS_7value_tEE.exit.thread.i.i.i
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.bo, %bb.bn, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i, %.body.i.i.i.i.i.i74.i.i.i, %.body.i.i.i.i.i.i.i.i.i
  %.pn36.pn.i.i.i = phi { ptr, i32 } [ %i.du, %.body.i.i.i.i.i.i.i.i.i ], [ %i.eh, %.body.i.i.i.i.i.i74.i.i.i ], [ %i.ir, %bb.bo ], [ %i.iq, %bb.bn ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5jinja7value_tEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #35, !noalias !1998, !inline_history !1977
  br label %bb.bp

bb.bp:                                            ; preds = %.body.i.i.i, %bb.bm
  %.pn36.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn36.pn.i.i.i, %.body.i.i.i ], [ %i.ip, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35, !noalias !1998
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bl
  %.pn36.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn36.pn.pn.i.i.i, %bb.bp ], [ %i.io, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35, !noalias !1998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35, !noalias !1998
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bk
  %.pn36.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn36.pn.pn.pn.i.i.i, %bb.bq ], [ %i.in, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35, !noalias !1998
  call void @_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #35, !noalias !1998, !inline_history !1977
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i.i.i
  %.pn36.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn36.pn.pn.pn.pn.i.i.i, %bb.br ], [ %i.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35, !noalias !1998
  call void @_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #35, !noalias !1998, !inline_history !1977
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i.i.i
  %.pn36.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn36.pn.pn.pn.pn.pn.i.i.i, %bb.bs ], [ %i.id, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35, !noalias !1998
  call void @_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #35, !noalias !1998, !inline_history !1977
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i
  %.pn36.pn.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn36.pn.pn.pn.pn.pn.pn.i.i.i, %bb.bt ], [ %i.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35, !noalias !1998
  call void @_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35, !noalias !1998, !inline_history !1977
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !1998
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.pn45.pn.i.i.i = phi { ptr, i32 } [ %.pn4510.i.i.i, %bb.m ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn36.pn.pn.pn.pn.pn.pn.pn.i.i.i, %bb.bu ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  resume { ptr, i32 } %.pn45.pn.i.i.i

bb.bw:                                            ; preds = %bb.k
  unreachable

"_ZSt10__invoke_rISt10shared_ptrIN5jinja7value_tEERZNKS1_13value_array_t12get_builtinsB5cxx11EvE4$_10JRKNS1_9func_argsEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit101.i.i.i, %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i104.i.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !1998
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt10shared_ptrIN5jinja7value_tEERKNS1_9func_argsEEZNKS1_13value_array_t12get_builtinsB5cxx11EvE4$_10E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK5jinja13value_array_t12get_builtinsB5cxx11EvE4$_10E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZNK5jinja13value_array_t12get_builtinsB5cxx11EvE4$_10E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5jinja13value_array_t12get_builtinsB5cxx11EvE4$_10E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZNK5jinja13value_array_t12get_builtinsB5cxx11EvE4$_10E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZNK5jinja13value_array_t12get_builtinsB5cxx11EvE4$_10", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !61
  br label %"_ZNSt14_Function_base13_Base_managerIZNK5jinja13value_array_t12get_builtinsB5cxx11EvE4$_10E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK5jinja13value_array_t12get_builtinsB5cxx11EvE4$_10E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZNK5jinja13value_array_t12get_builtinsB5cxx11EvE4$_10E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 captures(none) %3) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph50

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEET_SM_SM_T0_.exit"
  %i.j = icmp eq i64 %i.dh, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph50, !llvm.loop !2001

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa46 = phi i64 [ %i.d, %.lr.ph ], [ %i.ez, %bb.b ] ; 2 uses
  %.lcssa44 = phi i64 [ %i.c, %.lr.ph ], [ %i.ey, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.k = add nsw i64 %.lcssa46, -2
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit14.i.i.i, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ag, %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit14.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.o = getelementptr inbounds [16 x i8], ptr %0, i64 %.09.i.i.i ; 2 uses
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr null, ptr %i.m, align 8, !tbaa !60
  store <2 x ptr> %i.p, ptr %8, align 16, !tbaa !61
  store ptr null, ptr %7, align 8, !tbaa !53
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_T0_SN_T1_T2_"(ptr nonnull %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa46, ptr nofreeobj noundef align 8 dereferenceable(16) %8, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !60   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.r, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !66
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #35, !inline_history !2002
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #35, !inline_history !2002
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.h ], [ %i.ae, %bb.i ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.j, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !79

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #35
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.ag = add nsw i64 %.09.i.i.i, -1
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !60  ; 8 uses
  %.not.i.i10.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i10.i.i.i, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit14.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ai, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !66
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #35, !inline_history !2002
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #35, !inline_history !2002
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit14.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i11.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i11.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i13.i.i.i = phi i32 [ %i.al, %bb.n ], [ %i.av, %bb.o ]
  %i.aw = icmp eq i32 %.0.i.i.i.i13.i.i.i, 1
  br i1 %i.aw, label %bb.p, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit14.i.i.i, !prof !79

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #35
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit14.i.i.i

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit14.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i12.i.i.i, %bb.l, %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_RT0_.exit.i.i", label %bb.c, !llvm.loop !2003

common.resume:                                    ; preds = %bb.ak, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.ax, %bb.q ], [ %i.de, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #35
  call void @_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %common.resume

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_RT0_.exit.i.i": ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit14.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %10 = icmp sgt i64 %.lcssa44, 16
  br i1 %10, label %.lr.ph.i8.i.preheader, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_T0_.exit"

.lr.ph.i8.i.preheader:                            ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_RT0_.exit.i.i"
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_RT0_.exit"
  %.sroa.0.05.i.i = phi ptr [ %i.ba, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_RT0_.exit" ], [ %storemerge25.lcssa, %.lr.ph.i8.i.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !61
  store ptr null, ptr %i.bb, align 8, !tbaa !60
  store <2 x ptr> %i.bc, ptr %4, align 16, !tbaa !61
  store ptr null, ptr %i.ba, align 8, !tbaa !53
  %i.bd = load <2 x ptr>, ptr %0, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 8 uses
  store <2 x ptr> %i.bd, ptr %i.ba, align 8, !tbaa !61
  %.not.i.i.i.i.i10 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i10, label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i8.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bf, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !66
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #35, !inline_history !2004
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #35, !inline_history !2004
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i11 = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i11, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i12

bb.v:                                             ; preds = %bb.t
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i12

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i12: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i13 = phi i32 [ %i.bi, %bb.u ], [ %i.bs, %bb.v ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i.i13, 1
  br i1 %i.bt, label %bb.w, label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit.i, !prof !79

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i12
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #35
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i12, %bb.s, %.lr.ph.i8.i
  %i.bu = ptrtoint ptr %i.ba to i64
  %i.bv = sub i64 %i.bu, %i.a                     ; 2 uses
  %i.bw = ashr exact i64 %i.bv, 4
  %i.bx = load <2 x ptr>, ptr %4, align 16, !tbaa !61
  store ptr null, ptr %i.ay, align 8, !tbaa !60
  store <2 x ptr> %i.bx, ptr %5, align 16, !tbaa !61
  store ptr null, ptr %4, align 16, !tbaa !53
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_T0_SN_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bw, ptr nofreeobj noundef align 8 dereferenceable(16) %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %9)
          to label %bb.x unwind label %bb.ak

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit.i
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i14 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i14, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bz, align 8, !tbaa !65
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !66
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !68
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #35, !inline_history !2005
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !68
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #35, !inline_history !2005
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i = phi i32 [ %i.cc, %bb.ab ], [ %i.cm, %bb.ac ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cn, label %bb.ad, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !79

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #35
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.z, %bb.x
  %i.co = load ptr, ptr %i.ay, align 8, !tbaa !60 ; 8 uses
  %.not.i.i2.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i2.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_RT0_.exit", label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cp, align 8, !tbaa !65
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !66
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !68
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #35, !inline_history !2005
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #35, !inline_history !2005
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_RT0_.exit"

bb.ag:                                            ; preds = %bb.ae
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i3.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i3.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

bb.ai:                                            ; preds = %bb.ag
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i5.i = phi i32 [ %i.cs, %bb.ah ], [ %i.dc, %bb.ai ]
  %i.dd = icmp eq i32 %.0.i.i.i.i5.i, 1
  br i1 %i.dd, label %bb.aj, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_RT0_.exit", !prof !79

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #35
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_RT0_.exit"

bb.ak:                                            ; preds = %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #35
  call void @_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_RT0_.exit": ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.df = icmp sgt i64 %i.bv, 16
  br i1 %i.df, label %.lr.ph.i8.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_T0_.exit", !llvm.loop !2006

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_T0_.exit": ; preds = %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_RT0_.exit", %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_RT0_.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %.loopexit

.lr.ph50:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2549 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.02648 = phi i64 [ %i.dh, %bb.b ], [ %2, %.lr.ph ]
  %i.dg = phi i64 [ %i.ez, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dh = add nsw i64 %.02648, -1                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.di = lshr i64 %i.dg, 1
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.di ; 9 uses
  %i.dk = getelementptr inbounds i8, ptr %storemerge2549, i64 -16 ; 8 uses
  %i.dl = call fastcc noundef zeroext i1 @"_ZZZNK5jinja13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS_9func_argsEENKUlRKSt10shared_ptrINS_7value_tEES9_E_clES9_S9_"(ptr noundef nonnull readonly align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dj)
  br i1 %i.dl, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %.lr.ph50
  %i.dm = call fastcc noundef zeroext i1 @"_ZZZNK5jinja13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS_9func_argsEENKUlRKSt10shared_ptrINS_7value_tEES9_E_clES9_S9_"(ptr noundef nonnull readonly align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dk)
  br i1 %i.dm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dn = load ptr, ptr %i.dj, align 8, !tbaa !201
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !60
  %i.dq = load <2 x ptr>, ptr %0, align 8, !tbaa !61
  store ptr %i.dn, ptr %0, align 8, !tbaa !201
  store <2 x ptr> %i.dq, ptr %i.dj, align 8, !tbaa !61
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i"

bb.an:                                            ; preds = %bb.al
  %i.dr = call fastcc noundef zeroext i1 @"_ZZZNK5jinja13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS_9func_argsEENKUlRKSt10shared_ptrINS_7value_tEES9_E_clES9_S9_"(ptr noundef nonnull readonly align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dk)
  %i.ds = load ptr, ptr %0, align 8, !tbaa !201   ; 2 uses
  br i1 %i.dr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !201
  store ptr %i.dt, ptr %0, align 8, !tbaa !201
  store ptr %i.ds, ptr %i.dk, align 8, !tbaa !201
  %i.du = getelementptr inbounds i8, ptr %storemerge2549, i64 -8 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !60
  %i.dw = load ptr, ptr %i.g, align 8, !tbaa !60
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !60
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i"

bb.ap:                                            ; preds = %bb.an
  %i.dx = load ptr, ptr %i.f, align 8, !tbaa !201
  store ptr %i.dx, ptr %0, align 8, !tbaa !201
  store ptr %i.ds, ptr %i.f, align 8, !tbaa !201
  %i.dy = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !60
  store ptr %i.dz, ptr %i.h, align 8, !tbaa !60
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i"

bb.aq:                                            ; preds = %.lr.ph50
  %i.ea = call fastcc noundef zeroext i1 @"_ZZZNK5jinja13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS_9func_argsEENKUlRKSt10shared_ptrINS_7value_tEES9_E_clES9_S9_"(ptr noundef nonnull readonly align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dk)
  br i1 %i.ea, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.eb = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.ed = load <2 x ptr>, ptr %0, align 8, !tbaa !61
  store ptr %i.eb, ptr %0, align 8, !tbaa !201
  store <2 x ptr> %i.ed, ptr %i.f, align 8, !tbaa !61
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i"

bb.as:                                            ; preds = %bb.aq
  %i.ee = call fastcc noundef zeroext i1 @"_ZZZNK5jinja13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS_9func_argsEENKUlRKSt10shared_ptrINS_7value_tEES9_E_clES9_S9_"(ptr noundef nonnull readonly align 8 dereferenceable(32) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dk)
  %i.ef = load ptr, ptr %0, align 8, !tbaa !201   ; 2 uses
  br i1 %i.ee, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.eg = load ptr, ptr %i.dk, align 8, !tbaa !201
  store ptr %i.eg, ptr %0, align 8, !tbaa !201
  store ptr %i.ef, ptr %i.dk, align 8, !tbaa !201
  %i.eh = getelementptr inbounds i8, ptr %storemerge2549, i64 -8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !60
  %i.ej = load ptr, ptr %i.g, align 8, !tbaa !60
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !60
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i"

bb.au:                                            ; preds = %bb.as
  %i.ek = load ptr, ptr %i.dj, align 8, !tbaa !201
  store ptr %i.ek, ptr %0, align 8, !tbaa !201
  store ptr %i.ef, ptr %i.dj, align 8, !tbaa !201
  %i.el = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !60
  %i.en = load ptr, ptr %i.g, align 8, !tbaa !60
  store ptr %i.en, ptr %i.el, align 8, !tbaa !60
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i": ; preds = %bb.au, %bb.at, %bb.ar, %bb.ap, %bb.ao, %bb.am
  %.sink = phi ptr [ %i.em, %bb.au ], [ %i.ei, %bb.at ], [ %i.ec, %bb.ar ], [ %i.dy, %bb.ap ], [ %i.dv, %bb.ao ], [ %i.dp, %bb.am ]
  store ptr %.sink, ptr %i.g, align 8, !tbaa !60
  br label %bb.av

bb.av:                                            ; preds = %bb.ay, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i"
  %.sroa.010.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i" ], [ %i.ep, %bb.ay ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2549, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_SM_T0_.exit.i" ], [ %.sroa.0.1.i.i, %bb.ay ]
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %bb.av
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %bb.av ], [ %i.ep, %bb.aw ] ; 10 uses
  %i.eo = call fastcc noundef zeroext i1 @"_ZZZNK5jinja13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS_9func_argsEENKUlRKSt10shared_ptrINS_7value_tEES9_E_clES9_S9_"(ptr noundef nonnull readonly align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %0)
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.eo, label %bb.aw, label %.preheader.i.i, !llvm.loop !2007

.preheader.i.i:                                   ; preds = %bb.aw, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.aw ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %i.eq = call fastcc noundef zeroext i1 @"_ZZZNK5jinja13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS_9func_argsEENKUlRKSt10shared_ptrINS_7value_tEES9_E_clES9_S9_"(ptr noundef nonnull readonly align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.0.1.i.i)
  br i1 %i.eq, label %.preheader.i.i, label %bb.ax, !llvm.loop !2008

bb.ax:                                            ; preds = %.preheader.i.i
  %i.er = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.er, label %bb.ay, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEET_SM_SM_T0_.exit"

bb.ay:                                            ; preds = %bb.ax
  %i.es = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !201
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.eu = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !60
  %i.ew = load <2 x ptr>, ptr %.sroa.0.1.i.i, align 8, !tbaa !61
  store ptr %i.ev, ptr %i.eu, align 8, !tbaa !60
  store <2 x ptr> %i.ew, ptr %.sroa.010.1.i.i, align 8, !tbaa !61
  store ptr %i.es, ptr %.sroa.0.1.i.i, align 8, !tbaa !201
  br label %bb.av, !llvm.loop !2009

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEET_SM_SM_T0_.exit": ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_T0_T1_"(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2549, i64 noundef %i.dh, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %3)
  %i.ex = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ey = sub i64 %i.ex, %i.a                     ; 2 uses
  %i.ez = ashr exact i64 %i.ey, 4                 ; 3 uses
  %i.fa = icmp sgt i64 %i.ez, 16
  br i1 %i.fa, label %bb.b, label %.loopexit, !llvm.loop !2001

.loopexit:                                        ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEET_SM_SM_T0_.exit", %bb.a, %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_SM_SM_T0_.exit"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5jinja7value_tEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZZNKS3_13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS3_9func_argsEEUlRKS5_SJ_E_EEEvT_T0_SN_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofreeobj noundef nonnull align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef readonly byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 captures(none) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr", align 8   ; 6 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit
  %.040 = phi i64 [ %spec.select, %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.040, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g
  %i.i = call fastcc noundef zeroext i1 @"_ZZZNK5jinja13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS_9func_argsEENKUlRKSt10shared_ptrINS_7value_tEES9_E_clES9_S9_"(ptr noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.h)
  %spec.select = select i1 %i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.j = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.k = getelementptr inbounds [16 x i8], ptr %0, i64 %.040 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !60   ; 8 uses
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !61
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.o, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !66
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #35, !inline_history !32
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #35, !inline_history !32
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.g, label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit, !prof !79

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #35
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit

_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit:  ; preds = %.lr.ph, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.ad = icmp slt i64 %spec.select, %i.b
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !2010

._crit_edge:                                      ; preds = %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit ] ; 5 uses
  %i.ae = and i64 %2, 1
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.h, label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit29

bb.h:                                             ; preds = %._crit_edge
  %i.ag = add nsw i64 %2, -2
  %i.ah = ashr exact i64 %i.ag, 1
  %i.ai = icmp eq i64 %.0.lcssa, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit29

bb.i:                                             ; preds = %bb.h
  %i.aj = shl nsw i64 %.0.lcssa, 1
  %i.ak = or disjoint i64 %i.aj, 1                ; 5 uses
  %i.al = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load <2 x ptr>, ptr %i.al, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !60 ; 8 uses
  store <2 x ptr> %i.ao, ptr %i.am, align 8, !tbaa !61
  %.not.i.i.i.i25 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i25, label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aq, align 8, !tbaa !65
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !66
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #35, !inline_history !32
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #35, !inline_history !32
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit29

bb.l:                                             ; preds = %bb.j
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i26 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i27

bb.n:                                             ; preds = %bb.l
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i27: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i28 = phi i32 [ %i.at, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i28, 1
  br i1 %i.be, label %bb.o, label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit29, !prof !79

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i27
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #35
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit29

_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit29: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i27, %bb.k, %bb.i, %bb.h, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.h ], [ %i.ak, %bb.i ], [ %i.ak, %bb.k ], [ %i.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i27 ], [ %i.ak, %bb.o ] ; 3 uses
  %i.bf = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  store ptr %i.bf, ptr %5, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !60
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !60
  store ptr null, ptr %3, align 8, !tbaa !53
  %i.bj = icmp sgt i64 %.1, %1
  br i1 %i.bj, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit29, %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit.i
  %.023.i = phi i64 [ %.0924.i, %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit.i ], [ %.1, %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit29 ] ; 3 uses
  %.0924.in.i = add nsw i64 %.023.i, -1
  %.0924.i = sdiv i64 %.0924.in.i, 2              ; 4 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %0, i64 %.0924.i ; 3 uses
  %i.bl = invoke fastcc noundef zeroext i1 @"_ZZZNK5jinja13value_array_t12get_builtinsB5cxx11EvENK4$_10clERKNS_9func_argsEENKUlRKSt10shared_ptrINS_7value_tEES9_E_clES9_S9_"(ptr noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %.lr.ph.i
  br i1 %i.bl, label %bb.p, label %.critedge.i.loopexit

bb.p:                                             ; preds = %.noexc
  %i.bm = getelementptr inbounds [16 x i8], ptr %0, i64 %.023.i ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load <2 x ptr>, ptr %i.bk, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !60 ; 8 uses
  store <2 x ptr> %i.bo, ptr %i.bm, align 8, !tbaa !61
  %.not.i.i.i.i.i30 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i30, label %_ZNSt10shared_ptrIN5jinja7value_tEEaSEOS2_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bq, align 8, !tbaa !65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !66
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !68
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"struct.jinja::hasher") align 8 %2, ptr noundef nonnull align 8 dereferenceable(184) %i.m) #35, !inline_history !2269
  %i.q = load i64, ptr %i.i, align 8, !tbaa !179  ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %._crit_edge5.i.i.i.i, label %.preheader.i.i.i.i

._crit_edge5.i.i.i.i:                             ; preds = %bb.e
  %.pre.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !180
  br label %_ZNKSt8__detail15_Hash_code_baseISt10shared_ptrIN5jinja7value_tEESt4pairIKS4_S4_ENS_10_Select1stENS2_12value_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS7_Lb0EEEm.exit

.preheader.i.i.i.i:                               ; preds = %bb.e
  %i.r = icmp ult i64 %i.q, 8
  br i1 %i.r, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %scevgep.i.i.i.i = getelementptr i8, ptr %2, i64 %i.q
  %i.s = sub nuw nsw i64 8, %i.q
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i, i8 0, i64 %i.s, i1 false), !tbaa !62
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.preheader.i.i.i.i, %.preheader.i.i.i.i
  %i.t = load i64, ptr %2, align 8
  %i.u = load i64, ptr %i.j, align 8, !tbaa !180
  %i.v = xor i64 %i.u, %i.t
  %i.w = mul i64 %i.v, 1099511628211
  br label %_ZNKSt8__detail15_Hash_code_baseISt10shared_ptrIN5jinja7value_tEESt4pairIKS4_S4_ENS_10_Select1stENS2_12value_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS7_Lb0EEEm.exit

_ZNKSt8__detail15_Hash_code_baseISt10shared_ptrIN5jinja7value_tEESt4pairIKS4_S4_ENS_10_Select1stENS2_12value_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS7_Lb0EEEm.exit: ; preds = %._crit_edge5.i.i.i.i, %._crit_edge.i.i.i.i
  %i.x = phi i64 [ %.pre.i.i.i.i, %._crit_edge5.i.i.i.i ], [ %i.w, %._crit_edge.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.y = urem i64 %i.x, %1                        ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !211 ; 2 uses
  %.not27 = icmp eq ptr %i.aa, null
  br i1 %.not27, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseISt10shared_ptrIN5jinja7value_tEESt4pairIKS4_S4_ENS_10_Select1stENS2_12value_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS7_Lb0EEEm.exit
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !188
  store ptr %i.ab, ptr %.02530, align 8, !tbaa !189
  store ptr %.02530, ptr %i.g, align 8, !tbaa !188
  store ptr %i.g, ptr %i.z, align 8, !tbaa !211
  %i.ac = load ptr, ptr %.02530, align 8, !tbaa !189
  %.not28 = icmp eq ptr %i.ac, null
  br i1 %.not28, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.ad, align 8, !tbaa !211
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseISt10shared_ptrIN5jinja7value_tEESt4pairIKS4_S4_ENS_10_Select1stENS2_12value_hasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb0EE15_M_bucket_indexERKNS_16_Hash_node_valueIS7_Lb0EEEm.exit
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !189
  store ptr %i.ae, ptr %.02530, align 8, !tbaa !189
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !211
  store ptr %.02530, ptr %i.af, align 8, !tbaa !189
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.1 = phi i64 [ %.031, %bb.h ], [ %i.y, %bb.g ], [ %i.y, %bb.f ]
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !2270

._crit_edge:                                      ; preds = %bb.i, %_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.ag = load ptr, ptr %0, align 8, !tbaa !190   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !191
  %i.al = shl i64 %i.ak, 3
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.al) #38
  br label %_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt10shared_ptrIN5jinja7value_tEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stENS1_17value_equivalenceENS1_12value_hasherENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.am, align 8, !tbaa !191
  store ptr %.0.i, ptr %0, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKSt10shared_ptrIN5jinja7value_tEES6_ELb0EEEEE18_M_deallocate_nodeEPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !66
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !2272
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !2272
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !79

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZNSt4pairIKSt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !66
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #35, !inline_history !2272
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #35, !inline_history !2272
  br label %_ZNSt4pairIKSt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i2.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt4pairIKSt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit, !prof !79

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #35
  br label %_ZNSt4pairIKSt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit

_ZNSt4pairIKSt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 40) #38
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SN_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::pair.181", align 8    ; 7 uses
  %6 = alloca %"struct.std::pair.181", align 16   ; 8 uses
  %7 = alloca %"struct.std::pair.181", align 8    ; 7 uses
  %8 = alloca %"struct.std::pair.181", align 16   ; 8 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SN_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph55

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEESK_SK_SK_SN_.exit"
  %i.l = icmp eq i64 %i.fn, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph55, !llvm.loop !2273

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa50 = phi i64 [ %i.d, %.lr.ph ], [ %i.jl, %bb.b ] ; 2 uses
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.jk, %bb.b ]
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.m = add nsw i64 %.lcssa50, -2
  %i.n = lshr i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit20.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.n, %._crit_edge ], [ %i.bd, %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit20.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.t = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.w = load <2 x ptr>, ptr %i.u, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.v, ptr %8, align 16, !tbaa !61
  store <2 x ptr> %i.w, ptr %i.r, align 16, !tbaa !61
  store <4 x ptr> splat (ptr null), ptr %7, align 8, !tbaa !61
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SN_SN_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa50, ptr nofreeobj noundef align 8 dereferenceable(32) %8, ptr %3, ptr %4)
          to label %bb.d unwind label %bb.ac

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !60   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.y, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !66
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #35, !inline_history !2274
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #35, !inline_history !2274
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.h ], [ %i.al, %bb.i ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.j, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !79

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #35
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.f, %bb.d
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !60  ; 8 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ao, align 8, !tbaa !65
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !66
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !68
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #35, !inline_history !2274
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !68
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #35, !inline_history !2274
  br label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i2.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i2.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i4.i.i.i.i = phi i32 [ %i.ar, %bb.n ], [ %i.bb, %bb.o ]
  %i.bc = icmp eq i32 %.0.i.i.i.i4.i.i.i.i, 1
  br i1 %i.bc, label %bb.p, label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i.i.i, !prof !79

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #35
  br label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i.i.i

_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i.i, %bb.l, %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bd = add nsw i64 %.010.i.i.i, -1
  %i.be = load ptr, ptr %i.p, align 8, !tbaa !60  ; 8 uses
  %.not.i.i.i11.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i11.i.i.i, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i15.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bf, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !66
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #35, !inline_history !2274
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #35, !inline_history !2274
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i15.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i12.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i12.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i14.i.i.i = phi i32 [ %i.bi, %bb.t ], [ %i.bs, %bb.u ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i14.i.i.i, 1
  br i1 %i.bt, label %bb.v, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i15.i.i.i, !prof !79

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #35
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i15.i.i.i

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i15.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i13.i.i.i, %bb.r, %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i.i.i
  %i.bu = load ptr, ptr %i.o, align 8, !tbaa !60  ; 8 uses
  %.not.i.i1.i16.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i16.i.i.i, label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit20.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i15.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bv, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !66
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #35, !inline_history !2274
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  tail call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #35, !inline_history !2274
  br label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit20.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i2.i17.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i2.i17.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = add nsw i32 %i.by, -1
  store i32 %i.ch, ptr %i.bv, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i18.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ci = atomicrmw volatile add ptr %i.bv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i18.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i18.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i4.i19.i.i.i = phi i32 [ %i.by, %bb.z ], [ %i.ci, %bb.aa ]
  %i.cj = icmp eq i32 %.0.i.i.i.i4.i19.i.i.i, 1
  br i1 %i.cj, label %bb.ab, label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit20.i.i.i, !prof !79

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i18.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #35
  br label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit20.i.i.i

_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit20.i.i.i: ; preds = %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i18.i.i.i, %bb.x, %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_RSN_.exit.i.i", label %bb.c, !llvm.loop !2275

common.resume:                                    ; preds = %bb.bc, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %bb.ac ], [ %i.fk, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

bb.ac:                                            ; preds = %bb.c
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #35
  call void @_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %common.resume

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_RSN_.exit.i.i": ; preds = %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %9 = icmp sgt i64 %.lcssa, 32
  br i1 %9, label %.lr.ph.i9.i.preheader, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SN_.exit"

.lr.ph.i9.i.preheader:                            ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_RSN_.exit.i.i"
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_RSN_.exit"
  %.sroa.0.05.i.i = phi ptr [ %i.cq, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_RSN_.exit" ], [ %storemerge26.lcssa, %.lr.ph.i9.i.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cs, %i.a                     ; 2 uses
  %i.cu = ashr exact i64 %i.ct, 5
  %i.cv = load <2 x ptr>, ptr %i.cq, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  %i.cw = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !61
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i8 0, i64 16, i1 false)
  %i.cx = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_EaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %0) #35 ; 0 uses
  store <2 x ptr> %i.cv, ptr %6, align 16, !tbaa !61
  store <2 x ptr> %i.cw, ptr %i.co, align 16, !tbaa !61
  store <4 x ptr> splat (ptr null), ptr %5, align 8, !tbaa !61
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SN_SN_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.cu, ptr nofreeobj noundef align 8 dereferenceable(32) %6, ptr %3, ptr %4)
          to label %bb.ad unwind label %bb.bc

bb.ad:                                            ; preds = %.lr.ph.i9.i
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.cz, align 8, !tbaa !65
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !66
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #35, !inline_history !2276
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !68
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #35, !inline_history !2276
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i = phi i32 [ %i.dc, %bb.ah ], [ %i.dm, %bb.ai ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dn, label %bb.aj, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !79

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #35
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.af, %bb.ad
  %i.do = load ptr, ptr %i.cn, align 8, !tbaa !60 ; 8 uses
  %.not.i.i1.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i1.i.i, label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.dp, align 8, !tbaa !65
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !66
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !68
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  tail call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #35, !inline_history !2276
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !68
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #35, !inline_history !2276
  br label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i2.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i2.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i4.i.i = phi i32 [ %i.ds, %bb.an ], [ %i.ec, %bb.ao ]
  %i.ed = icmp eq i32 %.0.i.i.i.i4.i.i, 1
  br i1 %i.ed, label %bb.ap, label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i, !prof !79

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #35
  br label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i

_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i, %bb.al, %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ee = load ptr, ptr %i.cm, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i3.i, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i7.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.ef, align 8, !tbaa !65
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !66
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !68
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  tail call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #35, !inline_history !2276
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !68
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #35, !inline_history !2276
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i7.i

bb.as:                                            ; preds = %bb.aq
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i4.i = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i.i4.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5.i

bb.au:                                            ; preds = %bb.as
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i6.i = phi i32 [ %i.ei, %bb.at ], [ %i.es, %bb.au ]
  %i.et = icmp eq i32 %.0.i.i.i.i.i6.i, 1
  br i1 %i.et, label %bb.av, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i7.i, !prof !79

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #35
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i7.i

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i7.i: ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i5.i, %bb.ar, %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit.i
  %i.eu = load ptr, ptr %i.cl, align 8, !tbaa !60 ; 8 uses
  %.not.i.i1.i8.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i1.i8.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_RSN_.exit", label %bb.aw

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i7.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 4 uses
  %i.ew = load atomic i64, ptr %i.ev acquire, align 8 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 4294967297
  %i.ey = trunc i64 %i.ew to i32                  ; 2 uses
  br i1 %i.ex, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.ev, align 8, !tbaa !65
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i32 0, ptr %i.ez, align 4, !tbaa !66
  %i.fa = load ptr, ptr %i.eu, align 8, !tbaa !68
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  tail call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #35, !inline_history !2276
  %i.fd = load ptr, ptr %i.eu, align 8, !tbaa !68
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  tail call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #35, !inline_history !2276
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_RSN_.exit"

end_hunk_1
begin_hunk_2_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SN_T1_":bb.a
  %i.fx = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = select i1 %i.fy, i32 2, i32 3
  %i.ga = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fp, i32 noundef %i.fz)
  br i1 %i.ga, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit.i.i", %.split.i.i
  %.val31.val.i.i = load i8, ptr %3, align 1, !tbaa !118, !range !109, !noundef !97
  %i.gb = trunc nuw i8 %.val31.val.i.i to i1
  br i1 %i.gb, label %.split43.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit36.i.i"

.split43.i.i:                                     ; preds = %bb.bd
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.gd = getelementptr inbounds i8, ptr %storemerge2653, i64 -16
  %i.ge = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = select i1 %i.gf, i32 2, i32 3
  %i.gh = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gc, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gd, i32 noundef %i.gg)
  br i1 %i.gh, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i", label %bb.be

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit36.i.i": ; preds = %bb.bd
  %i.gi = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = select i1 %i.gj, i32 2, i32 3
  %i.gl = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fp, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fq, i32 noundef %i.gk)
  br i1 %i.gl, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i", label %bb.be

bb.be:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit36.i.i", %.split43.i.i
  %.val29.val.i.i = load i8, ptr %3, align 1, !tbaa !118, !range !109, !noundef !97
  %i.gm = trunc nuw i8 %.val29.val.i.i to i1
  br i1 %i.gm, label %.split44.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit38.i.i"

.split44.i.i:                                     ; preds = %bb.be
  %i.gn = getelementptr inbounds i8, ptr %storemerge2653, i64 -16
  %i.go = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = select i1 %i.gp, i32 2, i32 3
  %i.gr = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gn, i32 noundef %i.gq)
  br i1 %i.gr, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i", label %bb.bf

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit38.i.i": ; preds = %bb.be
  %i.gs = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.gt = trunc nuw i8 %i.gs to i1
  %i.gu = select i1 %i.gt, i32 2, i32 3
  %i.gv = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fq, i32 noundef %i.gu)
  br i1 %i.gv, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i", label %bb.bf

bb.bf:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit38.i.i", %.split44.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i"

bb.bg:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit.i.i", %.split.i.i
  %.val27.val.i.i = load i8, ptr %3, align 1, !tbaa !118, !range !109, !noundef !97
  %i.gw = trunc nuw i8 %.val27.val.i.i to i1
  br i1 %i.gw, label %.split45.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit40.i.i"

.split45.i.i:                                     ; preds = %bb.bg
  %i.gx = getelementptr inbounds i8, ptr %storemerge2653, i64 -16
  %i.gy = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.gz = trunc nuw i8 %i.gy to i1
  %i.ha = select i1 %i.gz, i32 2, i32 3
  %i.hb = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gx, i32 noundef %i.ha)
  br i1 %i.hb, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i", label %bb.bh

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit40.i.i": ; preds = %bb.bg
  %i.hc = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = select i1 %i.hd, i32 2, i32 3
  %i.hf = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fq, i32 noundef %i.he)
  br i1 %i.hf, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i", label %bb.bh

bb.bh:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit40.i.i", %.split45.i.i
  %.val.val.i.i = load i8, ptr %3, align 1, !tbaa !118, !range !109, !noundef !97
  %i.hg = trunc nuw i8 %.val.val.i.i to i1
  br i1 %i.hg, label %.split46.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit42.i.i"

.split46.i.i:                                     ; preds = %bb.bh
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.hi = getelementptr inbounds i8, ptr %storemerge2653, i64 -16
  %i.hj = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.hk = trunc nuw i8 %i.hj to i1
  %i.hl = select i1 %i.hk, i32 2, i32 3
  %i.hm = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.hh, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.hi, i32 noundef %i.hl)
  br i1 %i.hm, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i", label %bb.bi

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit42.i.i": ; preds = %bb.bh
  %i.hn = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.ho = trunc nuw i8 %i.hn to i1
  %i.hp = select i1 %i.ho, i32 2, i32 3
  %i.hq = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fp, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.fq, i32 noundef %i.hp)
  br i1 %i.hq, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i", label %bb.bi

bb.bi:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit42.i.i", %.split46.i.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i": ; preds = %bb.bi, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit42.i.i", %.split46.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit40.i.i", %.split45.i.i, %bb.bf, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit38.i.i", %.split44.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit36.i.i", %.split43.i.i
  %.sink69.i.i = phi ptr [ %i.fq, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit38.i.i" ], [ %i.fp, %bb.bi ], [ %i.f, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit40.i.i" ], [ %i.fp, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit36.i.i" ], [ %i.f, %bb.bf ], [ %i.fp, %.split43.i.i ], [ %i.fq, %.split44.i.i ], [ %i.f, %.split45.i.i ], [ %i.fq, %.split46.i.i ], [ %i.fq, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit42.i.i" ] ; 5 uses
  %i.hr = load ptr, ptr %0, align 8, !tbaa !201
  %i.hs = getelementptr inbounds nuw i8, ptr %.sink69.i.i, i64 8
  %i.ht = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.hu = load <2 x ptr>, ptr %.sink69.i.i, align 8, !tbaa !61
  store ptr %i.ht, ptr %i.hs, align 8, !tbaa !60
  store <2 x ptr> %i.hu, ptr %0, align 8, !tbaa !61
  store ptr %i.hr, ptr %.sink69.i.i, align 8, !tbaa !201
  %i.hv = getelementptr inbounds nuw i8, ptr %.sink69.i.i, i64 16 ; 2 uses
  %i.hw = load ptr, ptr %i.i, align 8, !tbaa !201
  %i.hx = getelementptr inbounds nuw i8, ptr %.sink69.i.i, i64 24
  %i.hy = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.hz = load <2 x ptr>, ptr %i.hv, align 8, !tbaa !61
  store ptr %i.hy, ptr %i.hx, align 8, !tbaa !60
  store <2 x ptr> %i.hz, ptr %i.i, align 8, !tbaa !61
  store ptr %i.hw, ptr %i.hv, align 8, !tbaa !201
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bo, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i"
  %.sroa.013.0.i.i = phi ptr [ %storemerge2653, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i" ], [ %.sroa.013.1.i.i, %bb.bo ]
  %.sroa.016.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SK_SN_.exit.i" ], [ %i.ji, %bb.bo ]
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %bb.bj
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %bb.bj ], [ %i.ik, %bb.bl ] ; 14 uses
  %.val9.val.i.i = load i8, ptr %3, align 1, !tbaa !118, !range !109, !noundef !97
  %i.ia = trunc nuw i8 %.val9.val.i.i to i1
  br i1 %i.ia, label %.split.i15.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit.i13.i"

.split.i15.i:                                     ; preds = %bb.bk
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 16
  %i.ic = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.id = trunc nuw i8 %i.ic to i1
  %i.ie = select i1 %i.id, i32 2, i32 3
  %i.if = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ib, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.i, i32 noundef %i.ie)
  br i1 %i.if, label %bb.bl, label %.preheader

.preheader:                                       ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit.i13.i", %.split.i15.i
  br label %bb.bm

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit.i13.i": ; preds = %bb.bk
  %i.ig = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.ih = trunc nuw i8 %i.ig to i1
  %i.ii = select i1 %i.ih, i32 2, i32 3
  %i.ij = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.016.1.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %i.ii)
  br i1 %i.ij, label %bb.bl, label %.preheader

bb.bl:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit.i13.i", %.split.i15.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 32
  br label %bb.bk, !llvm.loop !2278

bb.bm:                                            ; preds = %.backedge, %.preheader
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.0.i.i, %.preheader ], [ %.sroa.013.1.i.i, %.backedge ] ; 5 uses
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -32 ; 6 uses
  %.val.val.i14.i = load i8, ptr %3, align 1, !tbaa !118, !range !109, !noundef !97
  %i.il = trunc nuw i8 %.val.val.i14.i to i1
  br i1 %i.il, label %.split19.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit12.i.i"

.split19.i.i:                                     ; preds = %bb.bm
  %i.im = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -16
  %i.in = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.io = trunc nuw i8 %i.in to i1
  %i.ip = select i1 %i.io, i32 2, i32 3
  %i.iq = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.im, i32 noundef %i.ip)
  br i1 %i.iq, label %.backedge, label %bb.bn

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit12.i.i": ; preds = %bb.bm
  %i.ir = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.is = trunc nuw i8 %i.ir to i1
  %i.it = select i1 %i.is, i32 2, i32 3
  %i.iu = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.013.1.i.i, i32 noundef %i.it)
  br i1 %i.iu, label %.backedge, label %bb.bn

.backedge:                                        ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit12.i.i", %.split19.i.i
  br label %bb.bm, !llvm.loop !2279

bb.bn:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit12.i.i", %.split19.i.i
  %i.iv = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
  br i1 %i.iv, label %bb.bo, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEESK_SK_SK_SN_.exit"

bb.bo:                                            ; preds = %bb.bn
  %i.iw = load ptr, ptr %.sroa.016.1.i.i, align 8, !tbaa !201
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 8
  %i.iy = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -24
  %i.iz = load ptr, ptr %i.ix, align 8, !tbaa !60
  %i.ja = load <2 x ptr>, ptr %.sroa.013.1.i.i, align 8, !tbaa !61
  store ptr %i.iz, ptr %i.iy, align 8, !tbaa !60
  store <2 x ptr> %i.ja, ptr %.sroa.016.1.i.i, align 8, !tbaa !61
  store ptr %i.iw, ptr %.sroa.013.1.i.i, align 8, !tbaa !201
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 16 ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -16 ; 2 uses
  %i.jd = load ptr, ptr %i.jb, align 8, !tbaa !201
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 24
  %i.jf = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -8
  %i.jg = load ptr, ptr %i.je, align 8, !tbaa !60
  %i.jh = load <2 x ptr>, ptr %i.jc, align 8, !tbaa !61
  store ptr %i.jg, ptr %i.jf, align 8, !tbaa !60
  store <2 x ptr> %i.jh, ptr %i.jb, align 8, !tbaa !61
  store ptr %i.jd, ptr %i.jc, align 8, !tbaa !201
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 32
  br label %bb.bj, !llvm.loop !2280

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEESK_SK_SK_SN_.exit": ; preds = %bb.bn
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SN_T1_"(ptr %.sroa.016.1.i.i, ptr %storemerge2653, i64 noundef %i.fn, ptr nonnull %3, ptr nonnull %4)
  %i.jj = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.jk = sub i64 %i.jj, %i.a                     ; 2 uses
  %i.jl = ashr exact i64 %i.jk, 5                 ; 3 uses
  %i.jm = icmp sgt i64 %i.jl, 16
  br i1 %i.jm, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SN_.exit", !llvm.loop !2273

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_SN_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEESK_SK_SK_SN_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_SK_RSN_.exit", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SK_RSN_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairISt10shared_ptrIN5jinja7value_tEES6_ESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZZNKS4_14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS4_9func_argsEEUlRKT_RKT0_E_EEEvSK_SN_SN_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofreeobj noundef nonnull align 8 captures(none) dereferenceable(32) %3, ptr nofree readonly captures(none) %4, ptr nofree readonly captures(none) %5) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.std::pair.181", align 16   ; 7 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit"
  %.041 = phi i64 [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit" ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.041, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g ; 2 uses
  %.val.val = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.i = trunc nuw i8 %.val.val to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i8, ptr %5, align 1, !tbaa !118, !range !109, !noundef !97
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = select i1 %i.m, i32 2, i32 3
  %i.o = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.k, i32 noundef %i.n)
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit"

bb.c:                                             ; preds = %.lr.ph
  %i.p = load i8, ptr %5, align 1, !tbaa !118, !range !109, !noundef !97
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = select i1 %i.q, i32 2, i32 3
  %i.s = tail call noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i32 noundef %i.r)
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit": ; preds = %bb.b, %bb.c
  %.0.i.i = phi i1 [ %i.o, %bb.b ], [ %i.s, %bb.c ]
  %spec.select = select i1 %.0.i.i, i64 %i.g, i64 %i.e ; 4 uses
  %i.t = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select
  %i.u = getelementptr inbounds [32 x i8], ptr %0, i64 %.041
  %i.v = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_EaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #35 ; 0 uses
  %i.w = icmp slt i64 %spec.select, %i.b
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !2281

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESR_EEbS8_SB_.exit" ] ; 5 uses
  %i.x = and i64 %2, 1
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.z = add nsw i64 %2, -2
  %i.aa = ashr exact i64 %i.z, 1
  %i.ab = icmp eq i64 %.0.lcssa, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = shl nsw i64 %.0.lcssa, 1
  %i.ad = or disjoint i64 %i.ac, 1                ; 2 uses
  %i.ae = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ad
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa
  %i.ag = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_EaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #35 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %.1 = phi i64 [ %i.ad, %bb.e ], [ %.0.lcssa, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ai = load <2 x ptr>, ptr %3, align 8, !tbaa !61
  store <2 x ptr> %i.ai, ptr %6, align 16, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.am = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !61
  store <2 x ptr> %i.am, ptr %i.aj, align 16, !tbaa !61
  store <4 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !61
  %i.an = icmp sgt i64 %.1, %1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.010.i = phi i64 [ %.0911.i, %bb.g ], [ %.1, %bb.f ] ; 4 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ao = getelementptr inbounds [32 x i8], ptr %0, i64 %.0911.i ; 3 uses
  %.val.val.i = load i8, ptr %4, align 1, !tbaa !118, !range !109, !noundef !97
  %i.ap = trunc nuw i8 %.val.val.i to i1
  br i1 %i.ap, label %.split.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESM_EEbS8_RSB_.exit.i"

.split.i:                                         ; preds = %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load i8, ptr %5, align 1, !tbaa !118, !range !109, !noundef !97
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = select i1 %i.as, i32 2, i32 3
  %i.au = invoke noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aj, i32 noundef %i.at)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %.split.i
  br i1 %i.au, label %bb.g, label %.loopexit

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESM_EEbS8_RSB_.exit.i": ; preds = %.lr.ph.i
  %i.av = load i8, ptr %5, align 1, !tbaa !118, !range !109, !noundef !97
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = select i1 %i.aw, i32 2, i32 3
  %i.ay = invoke noundef zeroext i1 @_ZN5jinja13value_compareERKSt10shared_ptrINS_7value_tEES4_NS_16value_compare_opE(ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %6, i32 noundef %i.ax)
          to label %.noexc28 unwind label %bb.t

.noexc28:                                         ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZZNK5jinja14value_object_t12get_builtinsB5cxx11EvENK3$_7clERKNS2_9func_argsEEUlRKT_RKT0_E_EclINS_17__normal_iteratorIPSt4pairISt10shared_ptrINS2_7value_tEESL_ESt6vectorISM_SaISM_EEEESM_EEbS8_RSB_.exit.i"
  br i1 %i.ay, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.noexc28, %.noexc
  %i.az = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i
  %i.ba = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_EaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #35 ; 0 uses
  %i.bb = icmp sgt i64 %.0911.i, %1
  br i1 %i.bb, label %.lr.ph.i, label %.loopexit, !llvm.loop !2282

.loopexit:                                        ; preds = %bb.g, %.noexc28, %.noexc, %bb.f
  %.0.lcssa.i = phi i64 [ %.1, %bb.f ], [ %.010.i, %.noexc28 ], [ %.0911.i, %bb.g ], [ %.010.i, %.noexc ]
  %i.bc = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa.i
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_EaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %6) #35 ; 0 uses
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !60 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bf, align 8, !tbaa !65
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !66
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #35, !inline_history !23
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #35, !inline_history !23
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.bi, %bb.k ], [ %i.bs, %bb.l ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.m, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !79

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #35
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i, %.loopexit
  %i.bu = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 4 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 4294967297
  %i.by = trunc i64 %i.bw to i32                  ; 2 uses
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bv, align 8, !tbaa !65
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 0, ptr %i.bz, align 4, !tbaa !66
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #35, !inline_history !23
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bu) #35, !inline_history !23
  br label %_ZNSt4pairISt10shared_ptrIN5jinja7value_tEES3_ED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i2.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i2.i, label %bb.r, label %bb.q
end_hunk_2
