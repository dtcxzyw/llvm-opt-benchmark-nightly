inline.NumInlined: 1790
inline.NumDeleted: 565
begin_hunk_0_@_ZN4llvh3sys2fsL18copy_file_internalEii:bb.a
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.loopexit, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.b, %.loopexit
  %.01426.be = phi i32 [ %i.l, %bb.b ], [ %i.f, %.loopexit ]
  br label %.preheader, !llvm.loop !147

.thread:                                          ; preds = %.loopexit, %bb.a
  %.115 = phi i32 [ %i.c, %bb.a ], [ %i.f, %.loopexit ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.a) #33
  %i.m = icmp slt i32 %.115, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread.thread, %.thread
  %i.n = tail call ptr @__errno_location() #31
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.e

bb.d:                                             ; preds = %.thread
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.3.0 = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ]
  %.sroa.0.0 = phi i32 [ %i.o, %bb.c ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs9copy_fileERKNS_5TwineEi(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 438) ; 2 uses
  %i.c = extractvalue { i32, ptr } %i.b, 0        ; 2 uses
  %.not22.i = icmp eq i32 %i.c, 0
  br i1 %.not22.i, label %bb.b, label %_ZN4llvh3sys2fs15openFileForReadERKNS_5TwineERiNS1_9OpenFlagsEPNS_15SmallVectorImplIcEE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.e = tail call fastcc { i32, ptr } @_ZN4llvh3sys2fsL18copy_file_internalEii(i32 noundef %i.d, i32 noundef %1) ; 2 uses
  %i.f = extractvalue { i32, ptr } %i.e, 0
  %i.g = tail call i32 @close(i32 noundef %i.d) #30 ; 0 uses
  br label %_ZN4llvh3sys2fs15openFileForReadERKNS_5TwineERiNS1_9OpenFlagsEPNS_15SmallVectorImplIcEE.exit

_ZN4llvh3sys2fs15openFileForReadERKNS_5TwineERiNS1_9OpenFlagsEPNS_15SmallVectorImplIcEE.exit: ; preds = %bb.a, %bb.b
  %.pn = phi { i32, ptr } [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.f, %bb.b ], [ %i.c, %bb.a ]
  %.sroa.4.0 = extractvalue { i32, ptr } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs12md5_contentsEi(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr") align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::MD5", align 4         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZN4llvh3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152) %2) #30
  %i.a = call noalias noundef nonnull dereferenceable(4096) ptr @_Znwm(i64 noundef 4096) #32 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  %i.b = call i64 @read(i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 4096) #30 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi i64 [ %i.g, %.lr.ph ], [ %i.b, %bb.a ]
  %i.f = and i64 %i.e, 2147483647
  call void @_ZN4llvh3MD56updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr nonnull %i.a, i64 %i.f) #30
  %i.g = call i64 @read(i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 4096) #30 ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !148

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i32 [ %i.c, %bb.a ], [ %i.h, %.lr.ph ]
  %i.j = icmp slt i32 %.lcssa, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.k = tail call ptr @__errno_location() #31
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = or i8 %i.o, 1
  store i8 %i.p, ptr %i.n, align 8
  store i32 %i.l, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !149
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.c:                                             ; preds = %._crit_edge
  call void @_ZN4llvh3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152) %2, ptr noundef nonnull align 1 dereferenceable(16) %0) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = and i8 %i.r, -2
  store i8 %i.s, ptr %i.q, align 8
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.c, %bb.b
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4096) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

declare void @_ZN4llvh3MD5C1Ev(ptr noundef nonnull align 4 dereferenceable(152)) unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare void @_ZN4llvh3MD56updateENS_8ArrayRefIhEE(ptr noundef nonnull align 4 dereferenceable(152), ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #9

declare void @_ZN4llvh3MD55finalERNS0_9MD5ResultE(ptr noundef nonnull align 4 dereferenceable(152), ptr noundef nonnull align 1 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs12md5_contentsERKNS_5TwineE(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 2, i32 noundef 1, i32 noundef 0, i32 noundef 438) ; 2 uses
  %i.c = extractvalue { i32, ptr } %i.b, 0        ; 2 uses
  %.not22.i = icmp eq i32 %i.c, 0
  br i1 %.not22.i, label %.critedge, label %_ZN4llvh3sys2fs15openFileForReadERKNS_5TwineERiNS1_9OpenFlagsEPNS_15SmallVectorImplIcEE.exit

_ZN4llvh3sys2fs15openFileForReadERKNS_5TwineERiNS1_9OpenFlagsEPNS_15SmallVectorImplIcEE.exit: ; preds = %bb.a
  %i.d = extractvalue { i32, ptr } %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 8
  store i32 %i.c, ptr %0, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !149
  br label %bb.b

.critedge:                                        ; preds = %bb.a
  %i.h = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  tail call void @_ZN4llvh3sys2fs12md5_contentsEi(ptr dead_on_unwind writable sret(%"class.llvh::ErrorOr") align 8 %0, i32 noundef %i.h)
  %i.i = tail call i32 @close(i32 noundef %i.h) #30 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvh3sys2fs15openFileForReadERKNS_5TwineERiNS1_9OpenFlagsEPNS_15SmallVectorImplIcEE.exit, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs6existsERKNS1_17basic_file_statusE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %spec.select = icmp ugt i32 %i.b, 1
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs12status_knownERKNS1_17basic_file_statusE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = icmp ne i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 10) i32 @_ZN4llvh3sys2fs13get_file_typeERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(18) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %stat.lstat.i = select i1 %1, ptr @stat, ptr @lstat
  %i.f = call noundef i32 %stat.lstat.i(ptr noundef %i.e, ptr noundef nonnull %3) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !152
  %4 = lshr i32 %i.h, 12
  %i.i = and i32 %4, 15
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  %i.k = icmp ult i32 %i.j, 12
  br i1 %i.k, label %switch.lookup, label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

switch.lookup:                                    ; preds = %bb.b
  %i.l = zext nneg i32 %i.j to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK4llvh3sys2fs15directory_entry6statusEv, i64 %i.l
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %switch.lookup, %bb.a
  %.sroa.025.0.i = phi i32 [ 0, %bb.a ], [ %switch.load, %switch.lookup ], [ 9, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.m = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.m) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i32 %.sroa.025.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs12is_directoryERKNS1_17basic_file_statusE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = icmp eq i32 %i.b, 3
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs12is_directoryERKNS_5TwineERb(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = call noundef i32 @stat(ptr noundef %i.e, ptr noundef nonnull %3) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !152
  %i.l = and i32 %i.k, 61440
  %cond = icmp eq i32 %i.l, 16384
  %spec.select = zext i1 %cond to i8
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.10.0 = phi i8 [ %spec.select, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.m, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.n) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  store i8 %.sroa.10.0, ptr %1, align 1, !tbaa !143
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, %bb.d
  %.sroa.4.0 = phi ptr [ %.sroa.427.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ], [ %i.p, %bb.d ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.025.0.i, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs15is_regular_fileERKNS1_17basic_file_statusE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = icmp eq i32 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs15is_regular_fileERKNS_5TwineERb(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = call noundef i32 @stat(ptr noundef %i.e, ptr noundef nonnull %3) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !152
  %i.l = and i32 %i.k, 61440
  %switch.selectcmp = icmp eq i32 %i.l, 32768
  %switch.select = zext i1 %switch.selectcmp to i8
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.10.0 = phi i8 [ %switch.select, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.m, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.n) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  store i8 %.sroa.10.0, ptr %1, align 1, !tbaa !143
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, %bb.d
  %.sroa.4.0 = phi ptr [ %.sroa.427.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ], [ %i.p, %bb.d ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.025.0.i, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs15is_symlink_fileERKNS1_17basic_file_statusE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = icmp eq i32 %i.b, 4
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs15is_symlink_fileERKNS_5TwineERb(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = call noundef i32 @lstat(ptr noundef %i.e, ptr noundef nonnull %3) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !152
  %i.l = and i32 %i.k, 61440
  %switch.selectcmp = icmp eq i32 %i.l, 40960
  %switch.select = zext i1 %switch.selectcmp to i8
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.10.0 = phi i8 [ %switch.select, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.m, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.n = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.n) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  store i8 %.sroa.10.0, ptr %1, align 1, !tbaa !143
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, %bb.d
  %.sroa.4.0 = phi ptr [ %.sroa.427.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ], [ %i.p, %bb.d ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.025.0.i, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs8is_otherERKNS1_17basic_file_statusE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %spec.select = icmp ugt i32 %i.b, 3
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs8is_otherERKNS_5TwineERb(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = call noundef i32 @stat(ptr noundef %i.e, ptr noundef nonnull %3) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !152
  %4 = lshr i32 %i.k, 12
  %5 = and i32 %4, 15
  %i.l = add nsw i32 %5, -4
  %switch.and = and i32 %i.l, -5
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  %i.m = zext i1 %switch.selectcmp to i8
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.10.0 = phi i8 [ %i.m, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.n, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.o = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.o) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  store i8 %.sroa.10.0, ptr %1, align 1, !tbaa !143
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, %bb.d
  %.sroa.4.0 = phi ptr [ %.sroa.427.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ], [ %i.q, %bb.d ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.025.0.i, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs15directory_entry16replace_filenameERKNS_5TwineENS1_9file_typeENS1_17basic_file_statusE(ptr noundef nonnull align 8 captures(address) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef %2, ptr noundef readonly byval(%"class.llvh::sys::fs::basic_file_status") align 8 captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.llvh::SmallString.11", align 8 ; 11 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.b = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = tail call fastcc noundef i64 @_ZN12_GLOBAL__N_115parent_path_endEN4llvh9StringRefENS0_3sys4path5StyleE(ptr %i.b, i64 %i.d, i32 noundef 2) ; 2 uses
  %i.f = icmp eq i64 %i.e, -1                     ; 2 uses
  %.sroa.speculated9.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e)
  %.sroa.4.0.i = select i1 %i.f, i64 0, i64 %.sroa.speculated9.i ; 5 uses
  %.sroa.07.0.i = select i1 %i.f, ptr null, ptr %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 128, ptr %i.i, align 4, !tbaa !39
  %i.j = icmp ugt i64 %.sroa.4.0.i, 128
  br i1 %i.j, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull %i.g, i64 noundef %.sroa.4.0.i, i64 noundef 1) #30
  %.pre7.pre.i.i.i = load i32, ptr %i.h, align 8, !tbaa !38
  %i.k = zext i32 %.pre7.pre.i.i.i to i64
  %.pre = load ptr, ptr %4, align 8, !tbaa !36
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i = icmp samesign eq i64 %.sroa.4.0.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.l = phi ptr [ %.pre, %.thread.i ], [ %i.g, %bb.b ]
  %.pre7.i.i4.i = phi i64 [ %i.k, %.thread.i ], [ 0, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.pre7.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %.sroa.07.0.i, i64 %.sroa.4.0.i, i1 false)
  %.pre.i.i.i = load i32, ptr %i.h, align 8, !tbaa !38
  br label %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit

_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit: ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ 0, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.o = trunc i64 %.sroa.4.0.i to i32
  %i.p = add i32 %i.n, %i.o
  store i32 %i.p, ptr %i.h, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 257, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i16 257, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i16 257, ptr %i.s, align 8
  call void @_ZN4llvh3sys4path6appendERNS_15SmallVectorImplIcEENS1_5StyleERKNS_5TwineES8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(18) %5, ptr noundef nonnull align 8 dereferenceable(18) %6, ptr noundef nonnull align 8 dereferenceable(18) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.t = load ptr, ptr %4, align 8, !tbaa !36     ; 3 uses
  %i.u = load i32, ptr %i.h, align 8, !tbaa !38   ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %.not.i.i = icmp eq ptr %i.t, null
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !71, !alias.scope !161
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !47, !alias.scope !161
  store i8 0, ptr %i.w, align 8, !tbaa !12, !alias.scope !161
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.e:                                             ; preds = %_ZN4llvh11SmallStringILj128EEC2ENS_9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !161
  store i64 %i.v, ptr %i.a, align 8, !tbaa !10, !noalias !161
  %i.y = icmp ugt i32 %i.u, 15
  br i1 %i.y, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #30 ; 2 uses
  store ptr %i.z, ptr %8, align 8, !tbaa !44, !alias.scope !161
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !161
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !12, !alias.scope !161
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %i.z, %bb.f ], [ %i.w, %bb.e ] ; 2 uses
  switch i32 %i.u, label %bb.h [
    i32 1, label %bb.g
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = load i8, ptr %i.t, align 1, !tbaa !12
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !10, !noalias !161 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !47, !alias.scope !161
  %i.af = load ptr, ptr %8, align 8, !tbaa !44, !alias.scope !161
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !161
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !44    ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  %i.ak = load ptr, ptr %8, align 8, !tbaa !44    ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.am = icmp eq ptr %i.ak, %i.al                ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.am, label %bb.i, label %.thread.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.am, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !47 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %.not21.i = icmp eq ptr %8, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.j, !prof !63

bb.j:                                             ; preds = %bb.i
  switch i64 %i.ao, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.ak, align 1, !tbaa !12
  store i8 %i.aq, ptr %i.ah, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ak, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !47 ; 2 uses
  store i64 %i.ar, ptr %i.c, align 8, !tbaa !47
  %i.as = load ptr, ptr %0, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1, !tbaa !12
end_hunk_0
begin_hunk_1_@_ZN4llvh3sys2fs6accessERKNS_5TwineENS1_10AccessModeE:bb.a
  %.sroa.56.1 = phi ptr [ %i.l, %bb.d ], [ %i.r, %bb.g ], [ %i.s, %.critedge ]
  %i.t = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.t) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.05.1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.56.1, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs11can_executeERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(18) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, ptr } @_ZN4llvh3sys2fs6accessERKNS_5TwineENS1_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 noundef 2)
  %i.b = extractvalue { i32, ptr } %i.a, 0
  %.not = icmp eq i32 %i.b, 0
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys2fs10equivalentENS1_11file_statusES2_(ptr noundef readonly byval(%"class.llvh::sys::fs::file_status") align 8 captures(none) %0, ptr noundef readonly byval(%"class.llvh::sys::fs::file_status") align 8 captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !108
  %i.e = icmp eq i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.g, %i.i
  %i.k = select i1 %i.e, i1 %i.j, i1 false
  ret i1 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs10equivalentERKNS_5TwineES4_Rb(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %4 = alloca %struct.stat, align 8               ; 5 uses
  %5 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %6 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.f = call noundef i32 @stat(ptr noundef %i.e, ptr noundef nonnull %6) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.a
  %i.j = load i64, ptr %6, align 8, !tbaa !180
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !181
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.2440.0 = phi i64 [ %i.l, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.1738.0 = phi i64 [ %i.j, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.m, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.n = load ptr, ptr %5, align 8, !tbaa !36     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.n) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 128, ptr %i.r, align 4, !tbaa !39
  %i.s = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 8 dereferenceable(16) %3) #30
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.u = call noundef i32 @stat(ptr noundef %i.t, ptr noundef nonnull %4) #30, !callees !106, !inline_history !107
  %.not.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i4, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr @__errno_location() #31
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit25

_ZN4llvh3sys2fsL11typeForModeEj.exit.i14:         ; preds = %bb.d
  %i.y = load i64, ptr %4, align 8, !tbaa !180
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !181
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit25

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit25: ; preds = %bb.e, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14
  %.sroa.17.0 = phi i64 [ %i.y, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14 ], [ 0, %bb.e ]
  %.sroa.24.0 = phi i64 [ %i.aa, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14 ], [ 0, %bb.e ]
  %.sroa.025.0.i7 = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14 ], [ %i.w, %bb.e ] ; 2 uses
  %.sroa.427.0.i8 = phi ptr [ %i.ab, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i14 ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.ac = load ptr, ptr %3, align 8, !tbaa !36    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.p
  br i1 %i.ad, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit25
  call void @free(ptr noundef %i.ac) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit25, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.not45 = icmp eq i32 %.sroa.025.0.i7, 0
  br i1 %.not45, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3
  %i.ae = icmp eq i64 %.sroa.1738.0, %.sroa.17.0
  %i.af = icmp eq i64 %.sroa.2440.0, %.sroa.24.0
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = zext i1 %i.ag to i8
  store i8 %i.ah, ptr %2, align 1, !tbaa !143
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, %bb.g
  %.sroa.041.0 = phi i32 [ %.sroa.025.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ], [ %.sroa.025.0.i7, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3 ], [ 0, %bb.g ]
  %.sroa.6.0 = phi ptr [ %.sroa.427.0.i, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit ], [ %.sroa.427.0.i8, %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit3 ], [ %i.ai, %bb.g ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.041.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.6.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc { i32, ptr } @_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE(i32 noundef %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %2) unnamed_addr #14 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__errno_location() #31
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31 ; 2 uses
  %i.d = icmp eq i32 %i.b, 2
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 65535, ptr %.sroa.520.0..sroa_idx, align 4
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.621.0..sroa_idx, i8 0, i64 24, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i32 65535, ptr %.sroa.516.0..sroa_idx, align 4
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.617.0..sroa_idx, i8 0, i64 24, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !152  ; 2 uses
  %i.g = and i32 %i.f, 4095
  %3 = lshr i32 %i.f, 12
  %i.h = and i32 %3, 15
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  %i.j = icmp ult i32 %i.i, 12
  br i1 %i.j, label %switch.lookup, label %_ZN4llvh3sys2fsL11typeForModeEj.exit

switch.lookup:                                    ; preds = %bb.e
  %i.k = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK4llvh3sys2fs15directory_entry6statusEv, i64 %i.k
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN4llvh3sys2fsL11typeForModeEj.exit

_ZN4llvh3sys2fsL11typeForModeEj.exit:             ; preds = %bb.e, %switch.lookup
  %.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 9, %bb.e ]
  %i.l = load i64, ptr %1, align 8, !tbaa !180
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !184
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i64, ptr %i.p, align 8, !tbaa !185
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !186
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load <2 x i32>, ptr %i.r, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = load <2 x i64>, ptr %i.m, align 8, !tbaa !10
  store i64 %i.o, ptr %2, align 8
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  store <2 x i32> %i.u, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.t, ptr %.sroa.7.0..sroa_idx, align 8
  store i32 %.0.i, ptr %.sroa.8.0..sroa_idx, align 8
  store i32 %i.g, ptr %.sroa.9.0..sroa_idx, align 4
  store i64 %i.l, ptr %.sroa.10.0..sroa_idx, align 8
  %i.w = shufflevector <2 x i64> %i.v, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.w, ptr %.sroa.11.0..sroa_idx, align 8
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %_ZN4llvh3sys2fsL11typeForModeEj.exit
  %.sroa.025.0 = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit ], [ 2, %bb.c ], [ %i.b, %bb.d ]
  %.sroa.427.0 = phi ptr [ %i.x, %_ZN4llvh3sys2fsL11typeForModeEj.exit ], [ %i.c, %bb.c ], [ %i.c, %bb.d ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.025.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.427.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs6statusEiRNS1_11file_statusE(i32 noundef %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %1) local_unnamed_addr #15 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #30
  %i.b = call fastcc { i32, ptr } @_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE(i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret { i32, ptr } %i.b
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs14setPermissionsERKNS_5TwineENS1_5permsE(ptr noundef nonnull align 8 dereferenceable(18) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.c, align 4, !tbaa !39
  %i.d = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = call i32 @chmod(ptr noundef %i.e, i32 noundef %1) #30
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]
  %.sroa.3.0 = phi ptr [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  %i.k = load ptr, ptr %2, align 8, !tbaa !36     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef %i.k) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs32setLastAccessAndModificationTimeEiNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESA_(i32 noundef %0, i64 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %struct.timespec], align 16    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = sdiv i64 %1, 1000000000
  %i.b = srem i64 %1, 1000000000
  store i64 %i.a, ptr %3, align 16, !tbaa !10
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !10
  %i.c = sdiv i64 %2, 1000000000
  %i.d = srem i64 %2, 1000000000
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.c, ptr %i.e, align 16, !tbaa !10
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  %i.f = call i32 @futimens(i32 noundef %0, ptr noundef nonnull %3) #30
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__errno_location() #31
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi ptr [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  %.sroa.0.0 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare i32 @futimens(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE(ptr noundef nonnull align 8 captures(none) dereferenceable(20) initializes((8, 16)) %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = select i1 %i.a, i32 1, i32 2
  %i.c = icmp eq i32 %3, 0
  %i.d = select i1 %i.c, i32 1, i32 3
  %i.e = load i64, ptr %0, align 8, !tbaa !187
  %i.f = tail call ptr @mmap(ptr noundef null, i64 noundef %i.e, i32 noundef %i.d, i32 noundef %i.b, i32 noundef %1, i64 noundef %2) #30 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !190
  %i.h = icmp eq ptr %i.f, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__errno_location() #31
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.3.0 = phi ptr [ %i.k, %bb.b ], [ %i.l, %bb.c ]
  %.sroa.0.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs18mapped_file_regionC2EiNS2_7mapmodeEmmRSt10error_code(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %5) unnamed_addr #0 align 2 {
bb.a:
  store i64 %3, ptr %0, align 8, !tbaa !187
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !190
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 8, !tbaa !191
  %i.c = icmp eq i32 %2, 1
  %i.d = select i1 %i.c, i32 1, i32 2
  %i.e = icmp eq i32 %2, 0
  %i.f = select i1 %i.e, i32 1, i32 3
  %i.g = tail call ptr @mmap(ptr noundef null, i64 noundef %3, i32 noundef %i.f, i32 noundef %i.d, i32 noundef %1, i64 noundef %4) #30 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !190
  %i.h = icmp eq ptr %i.g, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE.exit, label %_ZN4llvh3sys2fs18mapped_file_region4initEimNS2_7mapmodeE.exit.thread

end_hunk_1
begin_hunk_2_@_ZN4llvh3sys2fs6detail28directory_iterator_constructERNS2_12DirIterStateENS_9StringRefEb:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aj, i8 0, i64 36, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 76
  store i32 65535, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !166
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  %i.ao = load ptr, ptr %9, align 8, !tbaa !44    ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap                ; 2 uses
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  br i1 %i.aq, label %bb.g, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  br i1 %i.aq, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %.not21.i.i = icmp eq ptr %9, %i.ak
  br i1 %.not21.i.i, label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit, label %bb.h, !prof !63

bb.h:                                             ; preds = %bb.g
  switch i64 %i.as, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !12
  store i8 %i.au, ptr %i.al, align 1, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ao, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !47
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !12
  %.pre.i.i8 = load ptr, ptr %9, align 8, !tbaa !44
  br label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bb = load <2 x i64>, ptr %i.ba, align 8, !tbaa !12
  store <2 x i64> %i.bb, ptr %i.az, align 8, !tbaa !12
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bc = load i64, ptr %i.am, align 8, !tbaa !12
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !12
  store <2 x i64> %i.bf, ptr %i.be, align 8, !tbaa !12
  %.not.i.i7 = icmp eq ptr %i.al, null
  br i1 %.not.i.i7, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.al, ptr %9, align 8, !tbaa !44
  store i64 %i.bc, ptr %i.ap, align 8, !tbaa !12
  br label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ap, ptr %9, align 8, !tbaa !44
  br label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit

_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit:     ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.k, %bb.l
  %i.bg = phi ptr [ %i.al, %bb.k ], [ %i.ap, %bb.l ], [ %i.ao, %bb.g ], [ %.pre.i.i8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !47
  store i8 0, ptr %i.bg, align 1, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false)
  %i.bj = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN4llvh3sys2fs15directory_entryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !12
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #33
  br label %_ZN4llvh3sys2fs15directory_entryD2Ev.exit

_ZN4llvh3sys2fs15directory_entryD2Ev.exit:        ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.bo = call { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_incrementERNS2_12DirIterStateE(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bp = extractvalue { i32, ptr } %i.bo, 0
  %i.bq = extractvalue { i32, ptr } %i.bo, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvh3sys2fs15directory_entryD2Ev.exit, %bb.e
  %.sroa.09.0 = phi i32 [ %i.s, %bb.e ], [ %i.bp, %_ZN4llvh3sys2fs15directory_entryD2Ev.exit ]
  %.sroa.310.0 = phi ptr [ %i.t, %bb.e ], [ %i.bq, %_ZN4llvh3sys2fs15directory_entryD2Ev.exit ]
  %i.br = load ptr, ptr %4, align 8, !tbaa !36    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.a
  br i1 %i.bs, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.br) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.09.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.310.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs6detail28directory_iterator_incrementERNS2_12DirIterStateE(ptr noundef nonnull align 8 captures(address) dereferenceable(88) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvh::sys::fs::directory_entry", align 8 ; 12 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::sys::fs::basic_file_status", align 8 ; 3 uses
  %i.a = tail call ptr @__errno_location() #31    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.c = load i64, ptr %0, align 8, !tbaa !192
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @readdir(ptr noundef %i.d) #30 ; 2 uses
  %cond24 = icmp eq ptr %i.e, null
  br i1 %cond24, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %.critedge, %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.h = insertvalue { i32, ptr } poison, i32 %i.f, 0
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %i.i = phi ptr [ %i.u, %.critedge ], [ %i.e, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 19 ; 4 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !13
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #29 ; 2 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !19
  switch i64 %i.k, label %.thread [
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.l = load i8, ptr %i.j, align 1, !tbaa !12
  %i.m = icmp eq i8 %i.l, 46
  br i1 %i.m, label %.critedge, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.n = load i8, ptr %i.j, align 1, !tbaa !12
  %i.o = icmp eq i8 %i.n, 46
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %i.r = icmp eq i8 %i.q, 46
  br i1 %i.r, label %.critedge, label %.thread

.critedge:                                        ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.s = load i64, ptr %0, align 8, !tbaa !192
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call ptr @readdir(ptr noundef %i.t) #30 ; 2 uses
  %cond = icmp eq ptr %i.u, null
  br i1 %cond, label %tailrecurse._crit_edge, label %.lr.ph

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 5, ptr %i.w, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.x, align 1, !tbaa !43
  store ptr %2, ptr %3, align 8, !tbaa !12
  %i.y = getelementptr i8, ptr %i.i, i64 18
  %.val = load i8, ptr %i.y, align 2, !tbaa !195
  %5 = and i8 %.val, 15
  %switch.tableidx = add nsw i8 %5, -1            ; 2 uses
  %i.z = icmp ult i8 %switch.tableidx, 12
  br i1 %i.z, label %switch.lookup, label %_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit

switch.lookup:                                    ; preds = %.thread
  %i.aa = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK4llvh3sys2fs15directory_entry6statusEv, i64 %i.aa
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit

_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit:       ; preds = %.thread, %switch.lookup
  %.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 9, %.thread ]
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  store i32 65535, ptr %i.ab, align 4, !tbaa !198
  call void @_ZN4llvh3sys2fs15directory_entry16replace_filenameERKNS_5TwineENS1_9file_typeENS1_17basic_file_statusE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef %.0.i.i, ptr noundef nonnull byval(%"class.llvh::sys::fs::basic_file_status") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.h

bb.f:                                             ; preds = %tailrecurse._crit_edge
  %i.ad = load i64, ptr %0, align 8, !tbaa !192   ; 2 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = tail call i32 @closedir(ptr noundef nonnull %i.ae) ; 0 uses
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %bb.f
  store i64 0, ptr %0, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.ai, ptr %1, align 8, !tbaa !71
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i8 0, i64 36, i1 false)
  store i32 65535, ptr %i.ak, align 4, !tbaa !198
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not21.i.i.i = icmp eq ptr %1, %i.al
  br i1 %.not21.i.i.i, label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, !prof !63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.an, align 8, !tbaa !47
  store i8 0, ptr %i.am, align 1, !tbaa !12
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !44
  br label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i

_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ao = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  store i64 0, ptr %i.ag, align 8, !tbaa !47
  store i8 0, ptr %i.ao, align 1, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i64 48, i1 false)
  %i.ar = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ai
  br i1 %i.as, label %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i
  %i.at = load i64, ptr %i.ai, align 8, !tbaa !12
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #33
  br label %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit

_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit: ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit, %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit, %bb.b
  %.pn = phi { i32, ptr } [ { i32 0, ptr poison }, %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit ], [ %i.h, %bb.b ], [ { i32 0, ptr poison }, %_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit ]
  %.pn15 = phi ptr [ %i.av, %_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE.exit ], [ %i.g, %bb.b ], [ %i.ac, %_ZN4llvh3sys2fsL10direntTypeEP6dirent.exit ]
  %.fca.1.insert.merged = insertvalue { i32, ptr } %.pn, ptr %.pn15, 1
  ret { i32, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs6detail27directory_iterator_destructERNS2_12DirIterStateE(ptr noundef nonnull align 8 captures(address) dereferenceable(88) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.llvh::sys::fs::directory_entry", align 8 ; 12 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !192    ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = tail call i32 @closedir(ptr noundef nonnull %i.b) ; 0 uses
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 36, i1 false)
  store i32 65535, ptr %i.h, align 4, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not21.i.i = icmp eq ptr %1, %i.i
  br i1 %.not21.i.i, label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, !prof !63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8, !tbaa !47
  store i8 0, ptr %i.j, align 1, !tbaa !12
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !44
  br label %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit

_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.l = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  store i64 0, ptr %i.f, align 8, !tbaa !47
  store i8 0, ptr %i.l, align 1, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  %i.o = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.e
  br i1 %i.p, label %_ZN4llvh3sys2fs15directory_entryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit
  %i.q = load i64, ptr %i.e, align 8, !tbaa !12
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #33
  br label %_ZN4llvh3sys2fs15directory_entryD2Ev.exit

_ZN4llvh3sys2fs15directory_entryD2Ev.exit:        ; preds = %_ZN4llvh3sys2fs15directory_entryaSEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  %.fca.1.insert = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %i.s, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #10

declare ptr @readdir(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh3sys2fs15directory_entry6statusEv(ptr dead_on_unwind noalias writable sret(%"class.llvh::ErrorOr.33") align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %3 = alloca %struct.stat, align 8               ; 8 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 4, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.b, align 1, !tbaa !43
  store ptr %1, ptr %4, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i8, ptr %i.c, align 4, !tbaa !194, !range !145, !noundef !146
  %i.e = trunc nuw i8 %i.d to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 128, ptr %i.h, align 4, !tbaa !39
  %i.i = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %4, ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %stat.lstat.i = select i1 %i.e, ptr @stat, ptr @lstat
  %i.k = call noundef i32 %stat.lstat.i(ptr noundef %i.j, ptr noundef nonnull %3) #30, !callees !106, !inline_history !107
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__errno_location() #31
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.o = icmp eq i32 %i.m, 2
  %spec.select = zext i1 %i.o to i32
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !152  ; 2 uses
  %i.r = and i32 %i.q, 4095
  %5 = lshr i32 %i.q, 12
  %i.s = and i32 %5, 15
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  %i.u = icmp ult i32 %i.t, 12
  br i1 %i.u, label %switch.lookup, label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i

switch.lookup:                                    ; preds = %bb.c
  %i.v = zext nneg i32 %i.t to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK4llvh3sys2fs15directory_entry6statusEv, i64 %i.v
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN4llvh3sys2fsL11typeForModeEj.exit.i

_ZN4llvh3sys2fsL11typeForModeEj.exit.i:           ; preds = %bb.c, %switch.lookup
  %.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 9, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !184
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.z = load i64, ptr %i.y, align 8, !tbaa !185
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ab = load <2 x i32>, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !186
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  %i.af = inttoptr i64 %i.z to ptr
  br label %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit

_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit: ; preds = %bb.b, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i
  %.sroa.10.0 = phi i64 [ %i.ad, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.11.0 = phi i32 [ %.0.i.i, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %spec.select, %bb.b ]
  %.sroa.13.0 = phi i32 [ %i.r, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 65535, %bb.b ]
  %.sroa.7.0 = phi ptr [ %i.af, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ null, %bb.b ]
  %.sroa.04.0 = phi i64 [ %i.x, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ 0, %bb.b ]
  %.sroa.025.0.i = phi i32 [ 0, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.m, %bb.b ] ; 2 uses
  %.sroa.427.0.i = phi ptr [ %i.ae, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ %i.n, %bb.b ]
  %i.ag = phi <2 x i32> [ %i.ab, %_ZN4llvh3sys2fsL11typeForModeEj.exit.i ], [ zeroinitializer, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ah = load ptr, ptr %2, align 8, !tbaa !36    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.f
  br i1 %i.ai, label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit
  call void @free(ptr noundef %i.ah) #30
  br label %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit

_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit: ; preds = %_ZN4llvh3sys2fsL10fillStatusEiRK4statRNS1_11file_statusE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not = icmp eq i32 %.sroa.025.0.i, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8             ; 2 uses
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  %i.al = or i8 %i.ak, 1
  store i8 %i.al, ptr %i.aj, align 8
  store i32 %.sroa.025.0.i, ptr %0, align 8, !tbaa !3
  br label %bb.f

.critedge:                                        ; preds = %_ZN4llvh3sys2fs6statusERKNS_5TwineERNS1_11file_statusEb.exit
  %i.am = and i8 %i.ak, -2
  store i8 %i.am, ptr %i.aj, align 8
  store i64 %.sroa.04.0, ptr %0, align 8, !tbaa !10
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i32> %i.ag, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !3
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !10
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !165
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !166
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge
  %.sroa.427.0.i.sink = phi ptr [ %.sroa.7.0, %.critedge ], [ %.sroa.427.0.i, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.427.0.i.sink, ptr %i.an, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.llvh::SmallString.11", align 8 ; 8 uses
  %switch.selectcmp.i = icmp eq i32 %3, 2
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.selectcmp26.i = icmp eq i32 %3, 3
  %switch.select27.i = select i1 %switch.selectcmp26.i, i32 2, i32 %switch.select.i ; 4 uses
  %i.a = and i32 %4, 2                            ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  %spec.select24.i = select i1 %.not.i, i32 %2, i32 3
  switch i32 %spec.select24.i, label %_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = or disjoint i32 %switch.select27.i, 192
  br label %_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = or disjoint i32 %switch.select27.i, 576
  br label %_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit

bb.d:                                             ; preds = %bb.a
  %i.d = or disjoint i32 %switch.select27.i, 64
  br label %_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit

_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1.i = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %switch.select27.i, %bb.a ]
  %i.e = shl nuw nsw i32 %i.a, 9
  %i.f = shl i32 %4, 16
  %i.g = and i32 %i.f, 524288
  %i.h = or disjoint i32 %i.g, %i.e
  %spec.select25.i = xor i32 %i.h, 524288
  %.3.i = or i32 %.1.i, %spec.select25.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 128, ptr %i.k, align 4, !tbaa !39
  %i.l = call { ptr, i64 } @_ZNK4llvh5Twine25toNullTerminatedStringRefERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(16) %6) #30
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = tail call ptr @__errno_location() #31    ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZN4llvh3sys2fsL15nativeOpenFlagsENS1_19CreationDispositionENS1_9OpenFlagsENS1_10FileAccessE.exit
  store i32 0, ptr %i.n, align 4, !tbaa !3
  %i.o = call noundef i32 (ptr, i32, ...) @open(ptr noundef %i.m, i32 noundef %.3.i, i32 noundef %5) #30 ; 3 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.f, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_2fs8openFileERKNS_5TwineERiNS2_19CreationDispositionENS2_10FileAccessENS2_9OpenFlagsEjE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit"

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.n, align 4, !tbaa !3
  %i.r = icmp eq i32 %i.q, 4
  br i1 %i.r, label %bb.e, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_2fs8openFileERKNS_5TwineERiNS2_19CreationDispositionENS2_10FileAccessENS2_9OpenFlagsEjE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread", !llvm.loop !199

"_ZN4llvh3sys16RetryAfterSignalIiZNS0_2fs8openFileERKNS_5TwineERiNS2_19CreationDispositionENS2_10FileAccessENS2_9OpenFlagsEjE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread": ; preds = %bb.f
  store i32 -1, ptr %1, align 4, !tbaa !3
  br label %bb.g

"_ZN4llvh3sys16RetryAfterSignalIiZNS0_2fs8openFileERKNS_5TwineERiNS2_19CreationDispositionENS2_10FileAccessENS2_9OpenFlagsEjE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit": ; preds = %bb.e
  store i32 %i.o, ptr %1, align 4, !tbaa !3
  %i.s = icmp slt i32 %i.o, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_2fs8openFileERKNS_5TwineERiNS2_19CreationDispositionENS2_10FileAccessENS2_9OpenFlagsEjE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread", %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_2fs8openFileERKNS_5TwineERiNS2_19CreationDispositionENS2_10FileAccessENS2_9OpenFlagsEjE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit"
  %i.t = load i32, ptr %i.n, align 4, !tbaa !3
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  br label %bb.i

bb.h:                                             ; preds = %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_2fs8openFileERKNS_5TwineERiNS2_19CreationDispositionENS2_10FileAccessENS2_9OpenFlagsEjE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit"
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.04.0 = phi i32 [ %i.t, %bb.g ], [ 0, %bb.h ]
  %.sroa.3.0 = phi ptr [ %i.u, %bb.g ], [ %i.v, %bb.h ]
  %i.w = load ptr, ptr %6, align 8, !tbaa !36     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.w) #30
  br label %_ZN4llvh11SmallVectorIcLj128EED2Ev.exit

_ZN4llvh11SmallVectorIcLj128EED2Ev.exit:          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.04.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh3sys2fs14openNativeFileERKNS_5TwineENS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr dead_on_unwind noalias writable sret(%"class.llvh::Expected") align 8 captures(none) initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.llvh::Error", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.b = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) ; 2 uses
  %i.c = extractvalue { i32, ptr } %i.b, 0        ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN4llvh5ErrorD2Ev.exit

_ZN4llvh5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.d = extractvalue { i32, ptr } %i.b, 1
  call void @_ZN4llvh16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Error") align 8 %6, i32 %i.c, ptr %i.d) #30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.h = load ptr, ptr %6, align 8, !tbaa !203, !noalias !200
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = and i64 %i.i, -2
  %i.k = inttoptr i64 %i.j to ptr
  store ptr %i.k, ptr %0, align 8, !tbaa !206, !alias.scope !200
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, -2
  store i8 %i.n, ptr %i.l, align 8
  %i.o = load i32, ptr %i.a, align 4, !tbaa !3
  store i32 %i.o, ptr %0, align 8, !tbaa !3
end_hunk_2
