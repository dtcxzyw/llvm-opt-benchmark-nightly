inline.NumInlined: 1040
inline.NumDeleted: 583
begin_hunk_0_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGeneratorD2Ev.exit

bb.c:                                             ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i, %.lr.ph153.i
  %.sroa.094.0144.i = phi ptr [ %i.ac, %.lr.ph153.i ], [ %i.cn, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13, !noalias !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.094.0144.i, i64 8
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  br i1 %.not105126.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i
  %.sroa.854.1.lcssa.i = phi ptr [ %i.bv, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ], [ %i.qw, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ]
  %i.by = load ptr, ptr %i.bf, align 8, !tbaa !41, !noalias !12 ; 8 uses
  %i.bz = load ptr, ptr %i.aj, align 16, !tbaa !42, !noalias !12
  %.not.i30.i = icmp eq ptr %i.by, %i.bz
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !53, !noalias !12
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %.sroa.854.1.lcssa.i, ptr %i.cg, align 8, !tbaa !56, !noalias !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store ptr %i.cd, ptr %i.ch, align 8, !tbaa !57, !noalias !12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 40
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  br i1 %.not.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i, label %bb.c

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i
  %.sroa.090.0127.i = phi ptr [ %i.qx, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE9push_backEOS8_.exit.i ], [ %i.bx, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EE7reserveEm.exit.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.i)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.090.0127.i, i64 16
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i, %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i
  %.sroa.658.1.i.i.i = phi i8 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i ], [ 1, %bb.ao ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i ] ; 2 uses
  %.sroa.555.1.i.i.i = phi ptr [ undef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i ], [ %i.lr, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i ], [ %.sroa.555.0.copyload57.i.i.i, %bb.ao ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i ] ; 2 uses
  %.sroa.053.1.i.i.i = phi i64 [ undef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i22.i.i.i ], [ %i.lt, %_ZN4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefESt17basic_string_viewIcSt11char_traitsIcEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S6_EEEES2_S6_S8_SB_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS2_S6_S8_SB_Lb0EEEbEOS2_DpOT_.exit.i.i.i ], [ %.sroa.053.0.copyload54.i.i.i, %bb.ao ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.thread.i.i.i ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_135getFunctionDefinitionSourceLocationEPNS_3hbc20BCProviderFromBufferEj.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.036.i.i, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !198, !noalias !67
  %.sroa.537.0.copyload41.i.i = load i32, ptr %.sroa.537.0..sroa_idx40.i.i, align 4, !tbaa !3, !noalias !67 ; 2 uses
  %.sroa.642.0.copyload46.i.i = load i32, ptr %.sroa.642.0..sroa_idx45.i.i, align 4, !tbaa !3, !noalias !67 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  unreachable

_ZN6hermes2vm12_GLOBAL__N_116ProfileGenerator17processStackFrameERKNS0_16SamplingProfiler10StackFrameE.exit.i: ; preds = %bb.bk, %bb.i, %bb.h, %bb.g
  %.sroa.052.sroa.8.2.i = phi i32 [ undef, %bb.g ], [ %.sroa.052.sroa.8.0.extract.trunc84.i, %bb.h ], [ %.sroa.052.sroa.8.0.extract.trunc82.i, %bb.i ], [ %.sroa.052.sroa.8.0.extract.trunc.i, %bb.bk ] ; 2 uses
  %.sroa.052.sroa.0.0.i = phi i32 [ %i.cq, %bb.g ], [ %.sroa.052.sroa.0.0.extract.trunc77.i, %bb.h ], [ %.sroa.052.sroa.0.0.extract.trunc76.i, %bb.i ], [ %.sroa.052.sroa.0.0.extract.trunc.i, %bb.bk ] ; 2 uses
  %.sroa.18.0.i = phi i8 [ 0, %bb.g ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.bk ] ; 2 uses
  %.sroa.17.2.i = phi i64 [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.431.1105.i.i, %bb.bk ] ; 2 uses
  %.sroa.16.2.i = phi i64 [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.033.0.insert.insert.i.i, %bb.bk ] ; 2 uses
  %.sroa.14.2.i = phi i8 [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.11.0.i.i, %bb.bk ] ; 2 uses
  %.sroa.13.2.i = phi ptr [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.10.0.i.i, %bb.bk ] ; 2 uses
  %.sroa.1261.2.i = phi i64 [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %.sroa.858.0.i.i, %bb.bk ] ; 2 uses
  %.sroa.11.2.i = phi i32 [ undef, %bb.g ], [ undef, %bb.h ], [ undef, %bb.i ], [ %i.pw, %bb.bk ] ; 2 uses
  %.sroa.854.2.i = phi ptr [ undef, %bb.g ], [ %i.ct, %bb.h ], [ %i.cw, %bb.i ], [ %.sroa.14.0.i.i, %bb.bk ] ; 2 uses
  %i.qb = load ptr, ptr %i.ao, align 8, !tbaa !56, !noalias !12 ; 14 uses
  %i.qc = load ptr, ptr %i.an, align 8, !tbaa !57, !noalias !12
  %.not.i.i.i = icmp eq ptr %i.qb, %i.qc
end_hunk_5
