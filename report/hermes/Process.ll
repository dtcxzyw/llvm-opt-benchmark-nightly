inline.NumInlined: 277
inline.NumDeleted: 153
begin_hunk_0_@_ZN4llvh3sys7Process28FixupStandardFileDescriptorsEv:bb.a
  %.not15.2 = icmp eq i32 %i.aj, 9
  br i1 %.not15.2, label %.thread105, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread"

bb.p:                                             ; preds = %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.2
  %.not16.2 = icmp eq i32 %.pre86, 0
  br i1 %.not16.2, label %.critedge18, label %.thread105

.thread105:                                       ; preds = %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.2, %bb.p
  %i.ak = icmp slt i32 %.2.1, 0
  br i1 %i.ak, label %.preheader.2, label %.critedge.2

.preheader.2:                                     ; preds = %.thread105, %bb.r
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.al = tail call noundef i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.15, i32 noundef 2) #17 ; 4 uses
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.r, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.2"

"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.2": ; preds = %.preheader.2
  %i.an = icmp sgt i32 %i.al, -1
  br i1 %i.an, label %.critedge.2, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.sink.split"

.critedge.2:                                      ; preds = %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.2", %.thread105
  %.127.2 = phi i32 [ %.2.1, %.thread105 ], [ %i.al, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.2" ] ; 4 uses
  %i.ao = icmp eq i32 %.127.2, 2
  br i1 %i.ao, label %.critedge18, label %bb.q

bb.q:                                             ; preds = %.critedge.2
  %i.ap = tail call i32 @dup2(i32 noundef %.127.2, i32 noundef 2) #17
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.sink.split", label %.critedge18

bb.r:                                             ; preds = %.preheader.2
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.as = icmp eq i32 %i.ar, 4
  br i1 %i.as, label %.preheader.2, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread", !llvm.loop !57

.critedge18:                                      ; preds = %bb.q, %.critedge.2, %bb.p
  %.2.2 = phi i32 [ %.2.1, %bb.p ], [ %.127.2, %bb.q ], [ 2, %.critedge.2 ]
  %.sroa.4.1.2 = phi i1 [ %.sroa.4.1.1, %bb.p ], [ %.sroa.4.1.1, %bb.q ], [ true, %.critedge.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #20
  br label %bb.s

"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.sink.split": ; preds = %bb.f, %bb.k, %bb.q, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit", %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.1", %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.2"
  %.sroa.4.06379.ph = phi i1 [ %.sroa.4.1.1, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.2" ], [ false, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit" ], [ %.sroa.4.1, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.1" ], [ false, %bb.f ], [ %.sroa.4.1, %bb.k ], [ %.sroa.4.1.1, %bb.q ]
  %.2.ph.ph = phi i32 [ %i.al, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.2" ], [ %i.h, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit" ], [ %i.w, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.1" ], [ %i.h, %bb.f ], [ %.127.1, %bb.k ], [ %.127.2, %bb.q ]
  %.pre87 = load i32, ptr %i.a, align 4, !tbaa !3
  br label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread"

"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread": ; preds = %bb.e, %bb.l, %bb.r, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.sink.split", %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.1, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.2
  %.sroa.4.06379 = phi i1 [ %.sroa.4.1.1, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.2 ], [ %.sroa.4.1, %bb.l ], [ false, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread ], [ %.sroa.4.1, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.1 ], [ %.sroa.4.1.1, %bb.r ], [ %.sroa.4.06379.ph, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.sink.split" ], [ false, %bb.e ]
  %.2.ph = phi i32 [ %.2.1, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.2 ], [ -1, %bb.l ], [ -1, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread ], [ %.2, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.1 ], [ -1, %bb.r ], [ %.2.ph.ph, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.sink.split" ], [ -1, %bb.e ]
  %.sroa.024.1.ph = phi i32 [ %i.aj, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.2 ], [ %i.ac, %bb.l ], [ %i.g, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread ], [ %i.u, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.1 ], [ %i.ar, %bb.r ], [ %.pre87, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.sink.split" ], [ %i.j, %bb.e ]
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #20
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br label %bb.s

bb.s:                                             ; preds = %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread", %.critedge18
  %.sroa.4.051 = phi i1 [ %.sroa.4.1.2, %.critedge18 ], [ %.sroa.4.06379, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread" ]
  %.4 = phi i32 [ %.2.2, %.critedge18 ], [ %.2.ph, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread" ] ; 2 uses
  %.sroa.024.2 = phi i32 [ 0, %.critedge18 ], [ %.sroa.024.1.ph, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread" ]
  %.sroa.5.2 = phi ptr [ %i.at, %.critedge18 ], [ %i.au, %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread" ]
  %i.av = icmp slt i32 %.4, 0
  %or.cond.not = or i1 %.sroa.4.051, %i.av
  br i1 %or.cond.not, label %_ZN12_GLOBAL__N_18FDCloserD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = tail call i32 @close(i32 noundef %.4) #17 ; 0 uses
  br label %_ZN12_GLOBAL__N_18FDCloserD2Ev.exit

_ZN12_GLOBAL__N_18FDCloserD2Ev.exit:              ; preds = %bb.s, %bb.t
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.024.2, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.5.2, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, ptr } @_ZN4llvh3sys7Process25SafelyCloseFileDescriptorEi(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %2 = alloca %struct.__sigset_t, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = call i32 @sigfillset(ptr noundef nonnull %1) #17
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #20
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.f = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %2) #17 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.c
  %i.g = call i32 @close(i32 noundef %0) #17
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %.thread

.thread:                                          ; preds = %.critedge
  %i.i = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %2, ptr noundef null) #17
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.j = tail call ptr @__errno_location() #20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 2 uses
  %i.l = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %2, ptr noundef null) #17
  %.not9 = icmp eq i32 %i.k, 0
  %spec.select = select i1 %.not9, i32 %i.l, i32 %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread, %bb.c
  %.sroa.0.0 = phi i32 [ %spec.select, %bb.d ], [ %i.f, %bb.c ], [ %i.i, %.thread ]
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.5.1 = phi ptr [ %i.e, %bb.b ], [ %i.m, %bb.e ]
  %.sroa.0.1 = phi i32 [ %i.d, %bb.b ], [ %.sroa.0.0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.5.1, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys7Process21StandardInIsUserInputEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @isatty(i32 noundef 0) #17
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys7Process25FileDescriptorIsDisplayedEi(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @isatty(i32 noundef %0) #17
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys7Process22StandardOutIsDisplayedEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @isatty(i32 noundef 1) #17
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys7Process22StandardErrIsDisplayedEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @isatty(i32 noundef 2) #17
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, -2147483648) i32 @_ZN4llvh3sys7Process18StandardOutColumnsEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %struct.winsize, align 2            ; 4 uses
  %i.a = tail call i32 @isatty(i32 noundef 1) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZL10getColumnsi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.5) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 10) #17, !inline_history !58
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %select.unfold.i, label %_ZL10getColumnsi.exit

select.unfold.i:                                  ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.f = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, ptr noundef nonnull %0) #17
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %i.i to i32
  %.0.i = select i1 %i.g, i32 %i.j, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br label %_ZL10getColumnsi.exit

_ZL10getColumnsi.exit:                            ; preds = %select.unfold.i, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.i, %select.unfold.i ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, -2147483648) i32 @_ZN4llvh3sys7Process18StandardErrColumnsEv() local_unnamed_addr #0 align 2 {
bb.a:
  %0 = alloca %struct.winsize, align 2            ; 4 uses
  %i.a = tail call i32 @isatty(i32 noundef 2) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZL10getColumnsi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.5) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 10) #17, !inline_history !58
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %select.unfold.i, label %_ZL10getColumnsi.exit

select.unfold.i:                                  ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.f = call i32 (i32, i64, ...) @ioctl(i32 noundef 2, i64 noundef 21523, ptr noundef nonnull %0) #17
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %i.i to i32
  %.0.i = select i1 %i.g, i32 %i.j, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br label %_ZL10getColumnsi.exit

_ZL10getColumnsi.exit:                            ; preds = %select.unfold.i, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %.0.i, %select.unfold.i ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys7Process23FileDescriptorHasColorsEi(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @isatty(i32 noundef %0) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZL17terminalHasColorsi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.6) #17 ; 16 uses
  %.not.not.not.i = icmp eq ptr %i.b, null
  br i1 %.not.not.not.i, label %_ZL17terminalHasColorsi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 3 uses
  switch i64 %i.c, label %_ZN4llvh12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i [
    i64 4, label %_ZNK4llvh9StringRef6equalsES0_.exit17.i
    i64 6, label %_ZNK4llvh9StringRef6equalsES0_.exit16.i
    i64 5, label %_ZNK4llvh9StringRef6equalsES0_.exit.i
  ]

_ZNK4llvh9StringRef6equalsES0_.exit17.i:          ; preds = %bb.c
  %i.d = load i32, ptr %i.b, align 1
  %i.e = icmp ne i32 %i.d, 1769172577
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZL17terminalHasColorsi.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit35.thread136.i

_ZNK4llvh9StringRef6equalsES0_.exit16.i:          ; preds = %bb.c
  %i.h = load i32, ptr %i.b, align 1
  %i.i = xor i32 %i.h, 2003269987
  %i.j = getelementptr i8, ptr %i.b, i64 4
  %i.k = load i16, ptr %i.j, align 1
  %i.l = zext i16 %i.k to i32
  %i.m = xor i32 %i.l, 28265
  %i.n = or i32 %i.i, %i.m
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZL17terminalHasColorsi.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i

_ZNK4llvh9StringRef6equalsES0_.exit.i:            ; preds = %bb.c
  %i.r = load i32, ptr %i.b, align 1
  %i.s = xor i32 %i.r, 1970170220
  %i.t = getelementptr i8, ptr %i.b, i64 4
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = xor i32 %i.v, 120
  %i.x = or i32 %i.s, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZL17terminalHasColorsi.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit27.i

_ZN4llvh12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i: ; preds = %bb.c
  %.not.i23.i = icmp ult i64 %i.c, 6
  br i1 %.not.i23.i, label %_ZL17terminalHasColorsi.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit.i:       ; preds = %_ZN4llvh12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit16.i
  %i.ab = load i32, ptr %i.b, align 1
  %i.ac = xor i32 %i.ab, 1701995379
  %i.ad = getelementptr i8, ptr %i.b, i64 4
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = zext i16 %i.ae to i32
  %i.ag = xor i32 %i.af, 28261
  %i.ah = or i32 %i.ac, %i.ag
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZL17terminalHasColorsi.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit27.i

_ZNK4llvh9StringRef10startswithES0_.exit27.i:     ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i
  %i.al = load i32, ptr %i.b, align 1
  %i.am = xor i32 %i.al, 1919251576
  %i.an = getelementptr i8, ptr %i.b, i64 4
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = xor i32 %i.ap, 109
  %i.ar = or i32 %i.am, %i.aq
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZL17terminalHasColorsi.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit31.i

_ZNK4llvh9StringRef10startswithES0_.exit31.i:     ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit27.i
  %i.av = load i32, ptr %i.b, align 1
  %i.aw = xor i32 %i.av, 808547446
  %i.ax = getelementptr i8, ptr %i.b, i64 4
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = xor i32 %i.az, 48
  %i.bb = or i32 %i.aw, %i.ba
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZL17terminalHasColorsi.exit, label %_ZNK4llvh9StringRef10startswithES0_.exit35.i

_ZNK4llvh9StringRef10startswithES0_.exit35.i:     ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit31.i
  %i.bf = load i32, ptr %i.b, align 1
  %i.bg = icmp ne i32 %i.bf, 1953921138
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZL17terminalHasColorsi.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit.i

_ZNK4llvh9StringRef10startswithES0_.exit35.thread136.i: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit17.i
  %i.bj = load i32, ptr %i.b, align 1
  %i.bk = icmp ne i32 %i.bj, 1953921138
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br label %_ZL17terminalHasColorsi.exit

_ZNK4llvh9StringRef8endswithES0_.exit.i:          ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit35.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -5 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = xor i32 %i.bp, 1869377379
  %i.br = getelementptr i8, ptr %i.bo, i64 4
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i32
  %i.bu = xor i32 %i.bt, 114
  %i.bv = or i32 %i.bq, %i.bu
  %i.bw = icmp ne i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  br label %_ZL17terminalHasColorsi.exit

_ZL17terminalHasColorsi.exit:                     ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.i, %_ZNK4llvh9StringRef10startswithES0_.exit35.thread136.i, %_ZNK4llvh9StringRef10startswithES0_.exit35.i, %_ZNK4llvh9StringRef10startswithES0_.exit31.i, %_ZNK4llvh9StringRef10startswithES0_.exit27.i, %_ZNK4llvh9StringRef10startswithES0_.exit.i, %_ZN4llvh12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit.i, %_ZNK4llvh9StringRef6equalsES0_.exit16.i, %_ZNK4llvh9StringRef6equalsES0_.exit17.i, %bb.b, %bb.a
  %i.bz = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %_ZN4llvh12StringSwitchIbbE4CaseENS_13StringLiteralEb.exit.i ], [ true, %_ZNK4llvh9StringRef10startswithES0_.exit35.i ], [ %i.by, %_ZNK4llvh9StringRef8endswithES0_.exit.i ], [ true, %_ZNK4llvh9StringRef6equalsES0_.exit17.i ], [ true, %_ZNK4llvh9StringRef6equalsES0_.exit16.i ], [ true, %_ZNK4llvh9StringRef6equalsES0_.exit.i ], [ true, %_ZNK4llvh9StringRef10startswithES0_.exit.i ], [ true, %_ZNK4llvh9StringRef10startswithES0_.exit27.i ], [ true, %_ZNK4llvh9StringRef10startswithES0_.exit31.i ], [ %i.bm, %_ZNK4llvh9StringRef10startswithES0_.exit35.thread136.i ]
  ret i1 %i.bz
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys7Process20StandardOutHasColorsEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4llvh3sys7Process23FileDescriptorHasColorsEi(i32 noundef 1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys7Process20StandardErrHasColorsEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4llvh3sys7Process23FileDescriptorHasColorsEi(i32 noundef 2)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh3sys7Process18UseANSIEscapeCodesEb(i1 noundef zeroext %0) local_unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4llvh3sys7Process15ColorNeedsFlushEv() local_unnamed_addr #4 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4llvh3sys7Process11OutputColorEcbb(i8 noundef signext %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = zext i1 %2 to i64
  %i.b = getelementptr inbounds nuw [160 x i8], ptr @_ZL10colorcodes, i64 %i.a
  %i.c = zext i1 %1 to i64
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %i.c
  %i.e = and i8 %0, 7
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [10 x i8], ptr %i.d, i64 %i.f
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4llvh3sys7Process10OutputBoldEb(i1 noundef zeroext %0) local_unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4llvh3sys7Process13OutputReverseEv() local_unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.2
}

end_hunk_0
