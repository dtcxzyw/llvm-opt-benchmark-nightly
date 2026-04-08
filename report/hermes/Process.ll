inline.NumInlined: 277
inline.NumDeleted: 153
begin_hunk_0_@_ZN4llvh3sys7Process28FixupStandardFileDescriptorsEv:bb.a

bb.b:                                             ; preds = %bb.c, %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.b = call noundef i32 @fstat(i32 noundef 0, ptr noundef nonnull %0) #18 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.b, label %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread, !llvm.loop !55

_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit: ; preds = %bb.b
  %i.f = icmp slt i32 %i.b, 0
end_hunk_0
begin_hunk_1_@_ZN4llvh3sys7Process28FixupStandardFileDescriptorsEv:bb.a
bb.e:                                             ; preds = %.preheader
  %i.j = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %.preheader, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread", !llvm.loop !56

"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit": ; preds = %.preheader
  %i.l = icmp sgt i32 %i.h, -1
end_hunk_1
begin_hunk_2_@_ZN4llvh3sys7Process28FixupStandardFileDescriptorsEv:bb.a

bb.h:                                             ; preds = %bb.i, %bb.g
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.p = call noundef i32 @fstat(i32 noundef 1, ptr noundef nonnull %0) #18 ; 2 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.i, label %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.1

end_hunk_2
begin_hunk_3_@_ZN4llvh3sys7Process28FixupStandardFileDescriptorsEv:bb.a
bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  %i.t = icmp eq i32 %i.s, 4
  br i1 %i.t, label %bb.h, label %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.1, !llvm.loop !55

_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.1: ; preds = %bb.i, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.1
  %i.u = phi i32 [ %.pre86, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.1 ], [ %i.s, %bb.i ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvh3sys7Process28FixupStandardFileDescriptorsEv:bb.a
bb.l:                                             ; preds = %.preheader.1
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 4
  br i1 %i.ad, label %.preheader.1, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread", !llvm.loop !56

bb.m:                                             ; preds = %bb.k, %.critedge.1, %bb.j
  %.2.1 = phi i32 [ %.2, %bb.j ], [ %.128.1, %bb.k ], [ 1, %.critedge.1 ] ; 4 uses
end_hunk_4
begin_hunk_5_@_ZN4llvh3sys7Process28FixupStandardFileDescriptorsEv:bb.a

bb.n:                                             ; preds = %bb.o, %bb.m
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.ae = call noundef i32 @fstat(i32 noundef 2, ptr noundef nonnull %0) #18 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.o, label %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.2

end_hunk_5
begin_hunk_6_@_ZN4llvh3sys7Process28FixupStandardFileDescriptorsEv:bb.a
bb.o:                                             ; preds = %bb.n
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 4
  br i1 %i.ai, label %bb.n, label %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.2, !llvm.loop !55

_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread.2: ; preds = %bb.o, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.2
  %i.aj = phi i32 [ %.pre87, %_ZN4llvh3sys16RetryAfterSignalIiDoFiiP4statEJiS3_EEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.2 ], [ %i.ah, %bb.o ] ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4llvh3sys7Process28FixupStandardFileDescriptorsEv:bb.a
bb.r:                                             ; preds = %.preheader.2
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.as = icmp eq i32 %i.ar, 4
  br i1 %i.as, label %.preheader.2, label %"_ZN4llvh3sys16RetryAfterSignalIiZNS0_7Process28FixupStandardFileDescriptorsEvE3$_0JEEEDTclfp0_spfp1_EERKT_RKT0_DpRKT1_.exit.thread", !llvm.loop !56

.critedge18:                                      ; preds = %bb.q, %.critedge.2, %bb.p
  %.2.2 = phi i32 [ %.2.1, %bb.p ], [ %.128.2, %bb.q ], [ 2, %.critedge.2 ]
end_hunk_7
begin_hunk_8_@_ZN4llvh3sys7Process18StandardOutColumnsEv:bb.a
  br i1 %.not.i, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 10) #18
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %select.unfold.i, label %_ZL10getColumnsi.exit
end_hunk_8
begin_hunk_9_@_ZN4llvh3sys7Process18StandardErrColumnsEv:bb.a
  br i1 %.not.i, label %select.unfold.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 10) #18
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %select.unfold.i, label %_ZL10getColumnsi.exit
end_hunk_9
begin_hunk_10_@_ZN4llvh15optional_detail15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEaSEOS7_:bb.a
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !57

bb.d:                                             ; preds = %bb.c
  switch i64 %i.k, label %bb.f [
end_hunk_10
begin_hunk_11_@llvm.experimental.noalias.scope.decl
!52 = distinct !{!52, !53, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!53 = distinct !{!53, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!54 = !{!"branch_weights", i32 1, i32 1048575}
!55 = distinct !{!55, !42}
!56 = distinct !{!56, !42}
!57 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_11
