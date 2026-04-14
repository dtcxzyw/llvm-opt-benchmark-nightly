inline.NumInlined: 1901
inline.NumDeleted: 927
begin_hunk_0_@_ZN5arrow2io16RandomAccessFile9ReadAsyncERKNS0_9IOContextEll:bb.a
  store ptr %i.aw, ptr %i.cf, align 8, !tbaa !197, !alias.scope !219, !noalias !210
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.cg, align 8, !tbaa !26, !alias.scope !219, !noalias !210
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i64 %3, ptr %i.ch, align 8, !noalias !210
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %4, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !210
end_hunk_0
begin_hunk_1_@_ZN5arrow2io16RandomAccessFile9ReadAsyncERKNS0_9IOContextEll:bb.a
  store ptr null, ptr %i.cg, align 8, !tbaa !26, !noalias !210
  store ptr %i.ay, ptr %i.da, align 8, !tbaa !26, !noalias !210
  store ptr null, ptr %i.cf, align 8, !tbaa !197, !noalias !210
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !noalias !210
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  store ptr %i.ce, ptr %i.dc, align 8, !tbaa !59, !noalias !210
end_hunk_1
begin_hunk_2_@_ZN5arrow2io16RandomAccessFile9ReadAsyncERKNS0_9IOContextEll:bb.a

bb.ae:                                            ; preds = %_ZN5arrow10WeakFutureISt10shared_ptrINS_6BufferEEEC2ERKNS_6FutureIS3_EE.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false), !noalias !210
  %21 = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !noalias !210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false), !noalias !210
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureISt10shared_ptrINS_6BufferEEEEZNS_2io16RandomAccessFile9ReadAsyncERKNSD_9IOContextEllE3$_0EEEE", i64 16), ptr %i.de, align 8, !tbaa !30, !noalias !210
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.aw, ptr %i.df, align 8, !tbaa !197, !noalias !210
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  store ptr %i.ay, ptr %i.dg, align 8, !tbaa !26, !noalias !210
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  store ptr %i.ce, ptr %i.dh, align 8, !tbaa !59, !noalias !210
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 56
end_hunk_2
