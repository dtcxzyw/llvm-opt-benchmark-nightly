begin_hunk_0
  store ptr %i.e, ptr %i.cj, align 8, !tbaa !416, !noalias !402
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.ck, align 8, !tbaa !13, !noalias !402
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store i64 %1, ptr %i.cl, align 8, !noalias !402
  %.sroa.12.24..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %3, ptr %.sroa.12.24..sroa_idx, align 8, !noalias !402
end_hunk_0
begin_hunk_1
  store ptr null, ptr %i.ck, align 8, !tbaa !13, !noalias !402
  store ptr %i.b, ptr %i.cu, align 8, !tbaa !13, !noalias !402
  store ptr null, ptr %i.cj, align 8, !tbaa !416, !noalias !402
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !402
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.bw, ptr %i.cw, align 8, !tbaa !417, !noalias !402
end_hunk_1
begin_hunk_2

bb.ag:                                            ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !noalias !402
  %.sroa.10.24.copyload.i.i.i = load <2 x i64>, ptr %i.cv, align 8, !noalias !402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false), !noalias !402
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNSH_9IOContextEE3$_0NSC_17PassthruOnFailureISN_EEEEEEEE", i64 16), ptr %i.cy, align 8, !tbaa !22, !noalias !402
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
end_hunk_2
begin_hunk_3
  store ptr %i.e, ptr %i.da, align 8, !tbaa !416, !noalias !402
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.b, ptr %i.db, align 8, !tbaa !13, !noalias !402
  %14 = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store <2 x i64> %.sroa.10.24.copyload.i.i.i, ptr %14, align 8, !noalias !402
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store ptr %i.bw, ptr %i.dc, align 8, !tbaa !417, !noalias !402
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
end_hunk_3
