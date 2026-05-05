inline.NumInlined: 3211
inline.NumDeleted: 1159
begin_hunk_0_@_ZN5arrow3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNS1_9IOContextE:bb.a
  store ptr %i.e, ptr %i.cj, align 8, !tbaa !432, !noalias !417
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.ck, align 8, !tbaa !13, !noalias !417
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i64 %1, ptr %i.cl, align 8, !noalias !417
  %.sroa.12.24..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %3, ptr %.sroa.12.24..sroa_idx, align 8, !noalias !417
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNS1_9IOContextE:bb.a
  store ptr null, ptr %i.ck, align 8, !tbaa !13, !noalias !417
  store ptr %i.b, ptr %i.cu, align 8, !tbaa !13, !noalias !417
  store ptr null, ptr %i.cj, align 8, !tbaa !432, !noalias !417
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !417
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.bw, ptr %i.cw, align 8, !tbaa !433, !noalias !417
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNS1_9IOContextE:bb.a

bb.ag:                                            ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false), !noalias !417
  %14 = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !417
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false), !noalias !417
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt10shared_ptrINS_6BufferEEE20WrapResultOnComplete8CallbackINSC_14ThenOnCompleteIZNS_3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNSH_9IOContextEE3$_0NSC_17PassthruOnFailureISN_EEEEEEEE", i64 16), ptr %i.cy, align 8, !tbaa !22, !noalias !417
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc16ReadMessageAsyncElilPNS_2io16RandomAccessFileERKNS1_9IOContextE:bb.a
  store ptr %i.e, ptr %i.da, align 8, !tbaa !432, !noalias !417
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.b, ptr %i.db, align 8, !tbaa !13, !noalias !417
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store ptr %i.bw, ptr %i.dc, align 8, !tbaa !433, !noalias !417
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
end_hunk_3
