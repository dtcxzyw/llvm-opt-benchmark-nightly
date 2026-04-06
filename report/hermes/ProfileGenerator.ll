begin_hunk_0
inline.NumInlined: 1041
inline.NumDeleted: 583
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  br label %_ZN6hermes2vm12_GLOBAL__N_116ProfileGeneratorD2Ev.exit

bb.c:                                             ; preds = %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i, %.lr.ph153.i
  %.sroa.098.0156.i = phi ptr [ %i.ac, %.lr.ph153.i ], [ %i.co, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 6 uses
  %.sroa.854.0152.i = phi ptr [ undef, %.lr.ph153.i ], [ %.sroa.854.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  %.sroa.11.0151.i = phi i32 [ undef, %.lr.ph153.i ], [ %.sroa.11.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  %.sroa.1261.0150.i = phi i64 [ undef, %.lr.ph153.i ], [ %.sroa.1261.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  %.sroa.16.0147.i = phi i64 [ undef, %.lr.ph153.i ], [ %.sroa.16.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  %.sroa.17.0146.i = phi i64 [ undef, %.lr.ph153.i ], [ %.sroa.17.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  %.sroa.052.sroa.8.0145.i = phi i32 [ undef, %.lr.ph153.i ], [ %.sroa.052.sroa.8.1.lcssa.i, %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13, !noalias !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.098.0156.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.bh, align 8, !tbaa !47, !noalias !12
  %i.bi = sdiv i64 %.sroa.0.0.copyload.i, 1000
  store i64 %i.bi, ptr %i.h, align 8, !tbaa !47, !noalias !12
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13, !noalias !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !12
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.098.0156.i, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.098.0156.i, i64 24 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !48, !noalias !12 ; 3 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !51, !noalias !12 ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.thread.i: ; preds = %._crit_edge.i
  %i.cb = load i64, ptr %i.h, align 8, !tbaa !47, !noalias !12
  %i.cc = load i64, ptr %.sroa.098.0156.i, align 8, !tbaa !47, !noalias !12
  %i.cd = load ptr, ptr %12, align 8, !tbaa !53, !noalias !12
  %i.ce = load ptr, ptr %i.an, align 8, !tbaa !57, !noalias !12
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !58, !noalias !12
end_hunk_3
begin_hunk_4_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
  br label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i

_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.i: ; preds = %._crit_edge.i
  call void @_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE17_M_realloc_insertIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.098.0156.i, ptr noundef nonnull align 8 dereferenceable(24) %12), !noalias !12
  %.pre169.i = load ptr, ptr %12, align 8, !tbaa !53, !noalias !12 ; 3 uses
  %.not.i.i.i32.i = icmp eq ptr %.pre169.i, null
  br i1 %.not.i.i.i32.i, label %_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i, label %bb.f
end_hunk_4
begin_hunk_5_@_ZN6hermes2vm15generateProfileERKNS0_16SamplingProfilerERKSt6vectorINS1_10StackTraceESaIS5_EE:_ZNSt10unique_ptrISt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt14default_deleteIS8_EED2Ev.exit.i
_ZNSt6vectorISt7variantIJN8facebook6hermes17sampling_profiler34ProfileSampleCallStackSuspendFrameENS3_41ProfileSampleCallStackNativeFunctionFrameENS3_39ProfileSampleCallStackHostFunctionFrameENS3_37ProfileSampleCallStackJSFunctionFrameEEESaIS8_EED2Ev.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.i, %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EE12emplace_backIJRmRKmS_ISt7variantIJNS2_34ProfileSampleCallStackSuspendFrameENS2_41ProfileSampleCallStackNativeFunctionFrameENS2_39ProfileSampleCallStackHostFunctionFrameENS2_37ProfileSampleCallStackJSFunctionFrameEEESaISF_EEEEERS3_DpOT_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13, !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13, !noalias !12
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.098.0156.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.co, %i.ab
  br i1 %.not.i, label %_ZNSt6vectorIN8facebook6hermes17sampling_profiler13ProfileSampleESaIS3_EED2Ev.exit.loopexit.i, label %bb.c

end_hunk_5
