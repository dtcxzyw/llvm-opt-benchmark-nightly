inline.NumInlined: 1207
inline.NumDeleted: 497
begin_hunk_0_@_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl6ReadAtEllPh:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.j = call noundef zeroext i1 @_ZN5arrow2io8internal11LibHdfsShim8HasPreadEv(ptr noundef nonnull align 8 dereferenceable(312) %i.i)
  br i1 %i.j, label %11, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl6ReadAtEllPh:bb.a
  %i.ag = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #27 ; 0 uses
  resume { ptr, i32 } %.pn30

11:                                               ; preds = %bb.e
  %12 = icmp sgt i64 %3, 0
  br i1 %12, label %.lr.ph, label %.thread75

.lr.ph:                                           ; preds = %11
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.u
  %.085 = phi i64 [ %2, %.lr.ph ], [ %i.av, %bb.u ] ; 2 uses
  %.01884 = phi ptr [ %4, %.lr.ph ], [ %i.at, %bb.u ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl6ReadAtEllPh:bb.a
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.06182, i64 2147483647)
  %i.ah = trunc nuw nsw i64 %.sroa.speculated to i32
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.aj = load ptr, ptr %13, align 8, !tbaa !56
  %i.ak = load ptr, ptr %14, align 8, !tbaa !57
  %i.al = call noundef i32 @_ZN5arrow2io8internal11LibHdfsShim5PreadEP13hdfs_internalP17hdfsFile_internallPvi(ptr noundef nonnull align 8 dereferenceable(312) %i.ai, ptr noundef %i.aj, ptr noundef %i.ak, i64 noundef %.085, ptr noundef %.01884, i32 noundef %i.ah) ; 2 uses
  switch i32 %i.al, label %bb.u [
    i32 -1, label %bb.r
end_hunk_2
begin_hunk_3_@_ZN5arrow2io16HdfsReadableFile20HdfsReadableFileImpl6ReadAtEllPh:bb.a
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %bb.q, label %.thread75

.thread75:                                        ; preds = %bb.u, %bb.q, %11
  %.058.lcssa = phi i64 [ 0, %11 ], [ %.05883, %bb.q ], [ %i.au, %bb.u ]
  store ptr null, ptr %0, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.058.lcssa, ptr %i.ay, align 8, !tbaa !101
end_hunk_3
begin_hunk_4_@_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5WriteEPKhl:bb.a
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, label %5

5:                                                ; preds = %bb.b
  call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #31
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.b
  %i.g = icmp sgt i64 %3, 0
  br i1 %i.g, label %.lr.ph, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge
end_hunk_4
begin_hunk_5_@_ZN5arrow2io16HdfsOutputStream20HdfsOutputStreamImpl5WriteEPKhl:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.034 = phi ptr [ %2, %.lr.ph ], [ %i.t, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
  %.02833 = phi i64 [ %3, %.lr.ph ], [ %i.u, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl11GetChildrenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_SaIS8_EE:bb.a
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.024.027 = phi ptr [ %.pre28, %.lr.ph ], [ %i.aa, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.024.027) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.027, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !348  ; 6 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !351
end_hunk_6
begin_hunk_7_@_ZN5arrow2io16HadoopFileSystem20HadoopFileSystemImpl13ListDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_12HdfsPathInfoESaISC_EE:bb.a
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.g, i64 %indvars.iv
  %i.af = load ptr, ptr %3, align 8, !tbaa !341
  %i.ag = getelementptr [136 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = getelementptr [136 x i8], ptr %i.ag, i64 %i.ac ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call fastcc void @_ZN5arrow2ioL11SetPathInfoEPK12hdfsFileInfoPNS0_12HdfsPathInfoE(ptr noundef %i.ae, ptr noundef nonnull %i.ah)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
end_hunk_7
