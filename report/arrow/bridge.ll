begin_hunk_0
; Function Attrs: mustprogress uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_12_GLOBAL__N_124AsyncRecordBatchIterator5StateEEE20WrapResultOnComplete8CallbackINSE_14ThenOnCompleteIZNS_30CreateAsyncDeviceStreamHandlerEP29ArrowAsyncDeviceStreamHandlerPNS0_8ExecutorEmSt8functionIFNS_6ResultIS9_INS_13MemoryManagerEEEEilEEE3$_0NSE_17PassthruOnFailureIST_EEEEEEE6invokeES4_"(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.692", align 16 ; 11 uses
  %3 = alloca %"class.std::allocator.362", align 1 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
end_hunk_0
begin_hunk_1
_ZNO5arrow6ResultISt8functionIFNS_6FutureINS_23RecordBatchWithMetadataEEEvEEE11ValueUnsafeEv.exit.thread.i.i.i.i.i: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !2999
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZNSt8functionIFN5arrow6FutureINS0_23RecordBatchWithMetadataEEEvEEC2EOS5_.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r, %.thread.i.i.i.i
end_hunk_1
begin_hunk_2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false), !noalias !3044
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !2999
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !noalias !2999
  %.sroa.0.0.copyload.i.i.pre.i.i.i.i.i.i = load <2 x i64>, ptr %2, align 16, !tbaa !39, !noalias !2999
  br label %_ZNSt8functionIFN5arrow6FutureINS0_23RecordBatchWithMetadataEEEvEEC2EOS5_.exit.i.i.i.i.i.i

_ZNSt8functionIFN5arrow6FutureINS0_23RecordBatchWithMetadataEEEvEEC2EOS5_.exit.i.i.i.i.i.i: ; preds = %bb.s, %_ZNO5arrow6ResultISt8functionIFNS_6FutureINS_23RecordBatchWithMetadataEEEvEEE11ValueUnsafeEv.exit.thread.i.i.i.i.i
  %i.bs = phi ptr [ %.pre.i.i.i.i, %_ZNO5arrow6ResultISt8functionIFNS_6FutureINS_23RecordBatchWithMetadataEEEvEEE11ValueUnsafeEv.exit.thread.i.i.i.i.i ], [ %i.bp, %bb.s ] ; 2 uses
  %i.bt = phi ptr [ null, %_ZNO5arrow6ResultISt8functionIFNS_6FutureINS_23RecordBatchWithMetadataEEEvEEE11ValueUnsafeEv.exit.thread.i.i.i.i.i ], [ %i.bq, %bb.s ] ; 2 uses
  %i.bu = phi ptr [ %i.bo, %_ZNO5arrow6ResultISt8functionIFNS_6FutureINS_23RecordBatchWithMetadataEEEvEEE11ValueUnsafeEv.exit.thread.i.i.i.i.i ], [ %i.br, %bb.s ]
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = phi <2 x i64> [ zeroinitializer, %_ZNO5arrow6ResultISt8functionIFNS_6FutureINS_23RecordBatchWithMetadataEEEvEEE11ValueUnsafeEv.exit.thread.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.pre.i.i.i.i.i.i, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 16, i1 false), !tbaa.struct !547, !noalias !2999
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !39, !noalias !2999
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !235, !noalias !2999 ; 3 uses
  store ptr %i.bx, ptr %i.bv, align 16, !tbaa !235, !noalias !2999
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !235, !noalias !2999
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 16, !tbaa !235, !noalias !2999
end_hunk_2
