Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetInstrInfo?download=true
inline.NumInlined: 2985
inline.NumDeleted: 1468
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm15SmallVectorImplINS_8RegisterEEaSEOS2_:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 4) #27
  br label %_ZSt4moveIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !553

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.b, align 4, !tbaa !154
  store i32 %i.z, ptr %i.y, align 4, !tbaa !154
  br label %_ZSt4moveIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit34

_ZSt4moveIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit34: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !98
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !29
  %.idx39 = shl nuw nsw i64 %.026, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 4 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit: ; preds = %_ZSt4moveIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !98
  store i32 0, ptr %i.m, align 8, !tbaa !98
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN4llvm8RegisterES2_ET0_T_S4_S3_.exit, %_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplINS_8RegisterEE12assignRemoteEOS2_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo26getMachineCombinerPatternsERNS_12MachineInstrERNS_15SmallVectorImplIjEEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 zeroext %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = load ptr, ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 584
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false) #27, !inline_history !554
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 584
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext true) #27, !inline_history !554
  br i1 %i.i, label %bb.c, label %_ZNK4llvm15TargetInstrInfo24isReassociationCandidateERKNS_12MachineInstrERb.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 624
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.k) #27, !inline_history !554
  br i1 %i.o, label %_ZNK4llvm15TargetInstrInfo24isReassociationCandidateERKNS_12MachineInstrERb.exit, label %_ZNK4llvm15TargetInstrInfo24isReassociationCandidateERKNS_12MachineInstrERb.exit.thread

_ZNK4llvm15TargetInstrInfo24isReassociationCandidateERKNS_12MachineInstrERb.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 632
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #27, !inline_history !554
  br i1 %i.s, label %bb.d, label %_ZNK4llvm15TargetInstrInfo24isReassociationCandidateERKNS_12MachineInstrERb.exit.thread

bb.d:                                             ; preds = %_ZNK4llvm15TargetInstrInfo24isReassociationCandidateERKNS_12MachineInstrERb.exit
  %i.t = load i8, ptr %i.a, align 1, !tbaa !184, !range !25, !noundef !26
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !98   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !149
  %.not.i = icmp ult i32 %i.w, %i.y               ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !153

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 1)
  %.pre15 = load i32, ptr %i.v, align 8, !tbaa !98
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.g:                                             ; preds = %bb.e
  %i.z = zext i32 %i.w to i64
  %i.aa = load ptr, ptr %2, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z
  store i32 1, ptr %i.ab, align 1
  %i.ac = load i32, ptr %i.v, align 8, !tbaa !98
  %i.ad = add i32 %i.ac, 1                        ; 2 uses
  store i32 %i.ad, ptr %i.v, align 8, !tbaa !98
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.f, %bb.g
  %i.ae = phi i32 [ %.pre15, %bb.f ], [ %i.ad, %bb.g ] ; 2 uses
  %i.af = load i32, ptr %i.x, align 4, !tbaa !149
  %.not.i9 = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i9, label %bb.i, label %bb.h, !prof !153

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 3)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit10

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %i.ag = zext i32 %i.ae to i64
  %i.ah = load ptr, ptr %2, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ag
  store i32 3, ptr %i.ai, align 1
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !98
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.v, align 8, !tbaa !98
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit10

bb.j:                                             ; preds = %bb.d
  br i1 %.not.i, label %bb.l, label %bb.k, !prof !153

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
  %.pre = load i32, ptr %i.v, align 8, !tbaa !98
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit12

bb.l:                                             ; preds = %bb.j
  %i.al = zext i32 %i.w to i64
  %i.am = load ptr, ptr %2, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.al
  store i32 0, ptr %i.an, align 1
  %i.ao = load i32, ptr %i.v, align 8, !tbaa !98
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  store i32 %i.ap, ptr %i.v, align 8, !tbaa !98
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit12

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit12: ; preds = %bb.k, %bb.l
  %i.aq = phi i32 [ %.pre, %bb.k ], [ %i.ap, %bb.l ] ; 2 uses
  %i.ar = load i32, ptr %i.x, align 4, !tbaa !149
  %.not.i13 = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i13, label %bb.n, label %bb.m, !prof !153

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit12
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 2)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit10

bb.n:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit12
  %i.as = zext i32 %i.aq to i64
  %i.at = load ptr, ptr %2, align 8, !tbaa !29
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.as
  store i32 2, ptr %i.au, align 1
  %i.av = load i32, ptr %i.v, align 8, !tbaa !98
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.v, align 8, !tbaa !98
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit10

_ZNK4llvm15TargetInstrInfo24isReassociationCandidateERKNS_12MachineInstrERb.exit.thread: ; preds = %bb.b, %bb.c, %_ZNK4llvm15TargetInstrInfo24isReassociationCandidateERKNS_12MachineInstrERb.exit
  %i.ax = call noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo35getAccumulatorReassociationPatternsERNS_12MachineInstrERNS_15SmallVectorImplIjEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit10

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit10: ; preds = %bb.n, %bb.m, %bb.i, %bb.h, %_ZNK4llvm15TargetInstrInfo24isReassociationCandidateERKNS_12MachineInstrERb.exit.thread
  %.0 = phi i1 [ true, %bb.i ], [ %i.ax, %_ZNK4llvm15TargetInstrInfo24isReassociationCandidateERKNS_12MachineInstrERb.exit.thread ], [ true, %bb.h ], [ true, %bb.m ], [ true, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo19isThroughputPatternEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #13 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZNK4llvm15TargetInstrInfo20getCombinerObjectiveEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #13 align 2 {
bb.a:
  %cond = icmp eq i32 %1, 4
  %. = select i1 %cond, i32 0, i32 2
  ret i32 %.
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %2, i1 noundef zeroext false) #27 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 584
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false) #27 ; 6 uses
  %or.cond = and i1 %i.d, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !187  ; 7 uses
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 616
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %i.j) #27
  %.sroa.0.0.extract.trunc = trunc i64 %i.n to i32 ; 4 uses
  %i.o = select i1 %i.d, i32 %i.j, i32 %.sroa.0.0.extract.trunc ; 7 uses
  %i.p = select i1 %i.d, i32 %.sroa.0.0.extract.trunc, i32 %i.j ; 13 uses
  %.not = xor i1 %i.d, true                       ; 3 uses
  %or.cond3 = and i1 %i.h, %.not                  ; 4 uses
  switch i32 %1, label %bb.c [
    i32 0, label %4
    i32 2, label %5
    i32 1, label %bb.f
    i32 3, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

4:                                                ; preds = %bb.b
  br i1 %or.cond3, label %bb.j, label %bb.d

bb.d:                                             ; preds = %4
  %spec.select = select i1 %i.h, i32 %i.j, i32 %i.p
  %spec.select96 = select i1 %i.d, i32 %spec.select, i32 %.sroa.0.0.extract.trunc
  br label %bb.j

5:                                                ; preds = %bb.b
  br i1 %or.cond3, label %bb.j, label %bb.e

bb.e:                                             ; preds = %5
  %spec.select95 = select i1 %i.h, i32 %.sroa.0.0.extract.trunc, i32 %i.o
  %spec.select97 = select i1 %i.d, i32 %spec.select95, i32 %i.j
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  br i1 %or.cond3, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %or.cond22 = or i1 %i.h, %.not                  ; 2 uses
  %spec.select98 = select i1 %or.cond22, i32 %i.p, i32 %i.o
  %spec.select99 = select i1 %or.cond22, i32 %i.o, i32 %i.p
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  br i1 %or.cond3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond30 = or i1 %i.h, %.not                  ; 2 uses
  %spec.select100 = select i1 %or.cond30, i32 %i.o, i32 %i.p
  %spec.select101 = select i1 %or.cond30, i32 %i.p, i32 %i.o
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.g, %bb.e, %bb.d, %4, %5, %bb.f, %bb.h
  %.sroa.093.1 = phi i32 [ %i.p, %bb.e ], [ %i.p, %bb.h ], [ %i.p, %bb.f ], [ %i.o, %4 ], [ %spec.select100, %bb.i ], [ %i.p, %bb.d ], [ %i.o, %5 ], [ %spec.select98, %bb.g ], [ %i.j, %bb.a ]
  %.sroa.14.1 = phi i32 [ %spec.select97, %bb.e ], [ %i.p, %bb.h ], [ %i.p, %bb.f ], [ %i.p, %4 ], [ %spec.select101, %bb.i ], [ %spec.select96, %bb.d ], [ %i.p, %5 ], [ %spec.select99, %bb.g ], [ %i.j, %bb.a ]
  %.sroa.14.0.insert.ext = zext i32 %.sroa.14.1 to i64
  %.sroa.14.0.insert.shift = shl nuw i64 %.sroa.14.0.insert.ext, 32
  %.sroa.093.0.insert.ext = zext i32 %.sroa.093.1 to i64
  %.sroa.093.0.insert.insert = or disjoint i64 %.sroa.14.0.insert.shift, %.sroa.093.0.insert.ext
  ret i64 %.sroa.093.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4llvm15TargetInstrInfo28getReassociateOperandIndicesERKNS_12MachineInstrEjRSt5arrayIjLm5EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(20) %3) unnamed_addr #10 align 2 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) @constinit, i64 20, i1 false), !tbaa.struct !555
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) @constinit.13, i64 20, i1 false), !tbaa.struct !555
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) @constinit.14, i64 20, i1 false), !tbaa.struct !555
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) @constinit.15, i64 20, i1 false), !tbaa.struct !555
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm15TargetInstrInfo14reassociateOpsERNS_12MachineInstrES2_jRNS_15SmallVectorImplIPS1_EES6_NS_8ArrayRefIjEERNS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.16") align 8 captures(none) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #3 align 2 {
bb.a:
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %14 = alloca %"struct.std::pair.344", align 4   ; 5 uses
  %i.a = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #27 ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !318  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !346, !nonnull !26, !align !55 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(344) %i.e) #27 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54, !nonnull !26, !align !55
  %i.l = tail call noundef ptr @_ZNK4llvm12MachineInstr21getRegClassConstraintEjPKNS_15TargetInstrInfoEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef 0, ptr noundef %i.i, ptr noundef nonnull %i.k) #27 ; 6 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !357    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 5 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !154
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152  ; 2 uses
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !154
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !152  ; 3 uses
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !154
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !154
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !71 ; 4 uses
  %i.aj = load i32, ptr %i.s, align 8
  %i.ak = lshr i32 %i.aj, 8
  %i.al = and i32 %i.ak, 4095                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !71 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !71 ; 5 uses
  %i.aq = load i32, ptr %i.ac, align 8
  %i.ar = lshr i32 %i.aq, 8
  %i.as = and i32 %i.ar, 4095                     ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !71 ; 5 uses
  %i.av = load i32, ptr %i.ag, align 8
  %i.aw = lshr i32 %i.av, 8
  %i.ax = and i32 %i.aw, 4095                     ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !71 ; 3 uses
  %i.ba = icmp slt i32 %i.ai, 0
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = tail call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.c, i32 %i.ai, ptr noundef %i.l, i32 noundef 0) #27 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bc = icmp slt i32 %i.an, 0
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = tail call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.c, i32 %i.an, ptr noundef %i.l, i32 noundef 0) #27 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.be = icmp slt i32 %i.ap, 0
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = tail call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.c, i32 %i.ap, ptr noundef %i.l, i32 noundef 0) #27 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bg = icmp slt i32 %i.au, 0
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = tail call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.c, i32 %i.au, ptr noundef %i.l, i32 noundef 0) #27 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bi = icmp slt i32 %i.az, 0
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.c, i32 %i.az, ptr noundef %i.l, i32 noundef 0) #27 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = tail call i32 @_ZN4llvm19MachineRegisterInfo21createVirtualRegisterEPKNS_15MCRegisterClassENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(520) %i.c, ptr noundef %i.l, ptr nonnull @.str.12, i64 0) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  store i32 %i.bk, ptr %14, align 4, !tbaa !154
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  store i32 0, ptr %i.bl, align 4, !tbaa !348
  %i.bm = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIS2_JjEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(4) %i.bl), !noalias !572 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.bn = load ptr, ptr %0, align 8, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 584
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false) #27, !inline_history !573 ; 6 uses
  %i.br = load ptr, ptr %0, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 584
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %2, i1 noundef zeroext false) #27, !inline_history !573 ; 6 uses
  %or.cond.i = and i1 %i.bq, %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !187 ; 7 uses
  br i1 %or.cond.i, label %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %0, align 8, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 616
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call i64 %i.bz(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %i.bw) #27, !inline_history !573
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ca to i32 ; 4 uses
  %i.cb = select i1 %i.bq, i32 %i.bw, i32 %.sroa.0.0.extract.trunc.i ; 7 uses
  %i.cc = select i1 %i.bq, i32 %.sroa.0.0.extract.trunc.i, i32 %i.bw ; 13 uses
  %.not.i = xor i1 %i.bq, true                    ; 3 uses
  %or.cond3.i = and i1 %i.bu, %.not.i             ; 4 uses
  switch i32 %3, label %bb.m [
    i32 0, label %15
    i32 2, label %16
    i32 1, label %bb.p
    i32 3, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

15:                                               ; preds = %bb.l
  br i1 %or.cond3.i, label %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit, label %bb.n

bb.n:                                             ; preds = %15
  %spec.select.i = select i1 %i.bu, i32 %i.bw, i32 %i.cc
  %spec.select96.i = select i1 %i.bq, i32 %spec.select.i, i32 %.sroa.0.0.extract.trunc.i
  br label %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit

16:                                               ; preds = %bb.l
  br i1 %or.cond3.i, label %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit, label %bb.o

bb.o:                                             ; preds = %16
  %spec.select95.i = select i1 %i.bu, i32 %.sroa.0.0.extract.trunc.i, i32 %i.cb
  %spec.select97.i = select i1 %i.bq, i32 %spec.select95.i, i32 %i.bw
  br label %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond3.i, label %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %or.cond22.i = or i1 %i.bu, %.not.i             ; 2 uses
  %spec.select98.i = select i1 %or.cond22.i, i32 %i.cc, i32 %i.cb
  %spec.select99.i = select i1 %or.cond22.i, i32 %i.cb, i32 %i.cc
  br label %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit

bb.r:                                             ; preds = %bb.l
  br i1 %or.cond3.i, label %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %or.cond30.i = or i1 %i.bu, %.not.i             ; 2 uses
  %spec.select100.i = select i1 %or.cond30.i, i32 %i.cb, i32 %i.cc
  %spec.select101.i = select i1 %or.cond30.i, i32 %i.cc, i32 %i.cb
  br label %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit

_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit: ; preds = %bb.k, %15, %bb.n, %16, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.sroa.093.1.i = phi i32 [ %i.cc, %bb.o ], [ %i.cc, %bb.r ], [ %i.cc, %bb.p ], [ %i.cb, %15 ], [ %spec.select100.i, %bb.s ], [ %i.cc, %bb.n ], [ %i.cb, %16 ], [ %spec.select98.i, %bb.q ], [ %i.bw, %bb.k ]
  %.sroa.14.1.i = phi i32 [ %spec.select97.i, %bb.o ], [ %i.cc, %bb.r ], [ %i.cc, %bb.p ], [ %i.cc, %15 ], [ %spec.select101.i, %bb.s ], [ %spec.select96.i, %bb.n ], [ %i.cc, %16 ], [ %spec.select99.i, %bb.q ], [ %i.bw, %bb.k ]
  %.sroa.14.0.insert.ext.i = zext i32 %.sroa.14.1.i to i64
  %i.cd = load i32, ptr %i.s, align 8             ; 2 uses
  %i.ce = lshr i32 %i.cd, 26
  %i.cf = lshr i32 %i.cd, 24
  %.lobit.i = and i32 %i.cf, 1
  %i.cg = xor i32 %.lobit.i, 1
  %i.ch = and i32 %i.cg, %i.ce                    ; 2 uses
  %i.ci = trunc nuw i32 %i.ch to i1
  %i.cj = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ck = lshr i32 %i.cj, 26
  %i.cl = lshr i32 %i.cj, 24
  %.lobit.i119 = and i32 %i.cl, 1
  %i.cm = xor i32 %.lobit.i119, 1
  %i.cn = and i32 %i.cm, %i.ck
  %i.co = trunc nuw nsw i32 %i.cn to i8           ; 3 uses
  %i.cp = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.cq = lshr i32 %i.cp, 26
  %i.cr = lshr i32 %i.cp, 24
  %.lobit.i120 = and i32 %i.cr, 1
  %i.cs = xor i32 %.lobit.i120, 1
  %i.ct = and i32 %i.cs, %i.cq
  %i.cu = trunc nuw nsw i32 %i.ct to i8           ; 3 uses
  switch i32 %3, label %bb.t [
    i32 0, label %_ZL16mustSwapOperandsj.exit.thread
    i32 2, label %bb.u
    i32 1, label %bb.v
    i32 3, label %bb.v
  ]

bb.t:                                             ; preds = %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit
  unreachable

bb.u:                                             ; preds = %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit
  br label %_ZL16mustSwapOperandsj.exit.thread

_ZL16mustSwapOperandsj.exit.thread:               ; preds = %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit, %bb.u
  %.sroa.5.0.i.ph = phi i1 [ true, %bb.u ], [ false, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ]
  br label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit, %_ZL16mustSwapOperandsj.exit.thread
  %.sroa.0194.0.extract.trunc254 = phi i1 [ %.sroa.5.0.i.ph, %_ZL16mustSwapOperandsj.exit.thread ], [ true, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ], [ true, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ]
  %.0248 = phi i32 [ %i.ax, %_ZL16mustSwapOperandsj.exit.thread ], [ %i.as, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ], [ %i.as, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ]
  %.sroa.0224.0 = phi i32 [ %i.au, %_ZL16mustSwapOperandsj.exit.thread ], [ %i.ap, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ], [ %i.ap, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ]
  %.0247 = phi i32 [ %i.as, %_ZL16mustSwapOperandsj.exit.thread ], [ %i.ax, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ], [ %i.ax, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ]
  %.sroa.0230.0 = phi i32 [ %i.ap, %_ZL16mustSwapOperandsj.exit.thread ], [ %i.au, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ], [ %i.au, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ]
  %.0244 = phi i8 [ %i.co, %_ZL16mustSwapOperandsj.exit.thread ], [ %i.cu, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ], [ %i.cu, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ]
  %.0243 = phi i8 [ %i.cu, %_ZL16mustSwapOperandsj.exit.thread ], [ %i.co, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ], [ %i.co, %_ZNK4llvm15TargetInstrInfo23getReassociationOpcodesEjRKNS_12MachineInstrES3_.exit ]
  switch i32 %3, label %bb.z [
    i32 0, label %bb.aa
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  unreachable

bb.aa:                                            ; preds = %bb.v, %bb.y, %bb.x, %bb.w
  %.0113.in = phi ptr [ %i.z, %bb.y ], [ %i.n, %bb.w ], [ %i.z, %bb.x ], [ %i.n, %bb.v ]
  %.0112.in = phi ptr [ %i.n, %bb.y ], [ %i.z, %bb.w ], [ %i.n, %bb.x ], [ %i.z, %bb.v ]
  %.0111.in = phi ptr [ %i.ad, %bb.y ], [ %i.ad, %bb.w ], [ %i.t, %bb.x ], [ %i.t, %bb.v ]
  %.0110.in = phi ptr [ %i.t, %bb.y ], [ %i.t, %bb.w ], [ %i.ad, %bb.x ], [ %i.ad, %bb.v ]
  %.0111 = load i32, ptr %.0111.in, align 4, !tbaa !154
  %.0112 = load i32, ptr %.0112.in, align 4, !tbaa !154
  %.0113 = load i32, ptr %.0113.in, align 4, !tbaa !154
  %.0110 = load i32, ptr %.0110.in, align 4, !tbaa !154
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !99
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !71 ; 3 uses
  %i.da = icmp ugt i64 %i.cz, 7
  br i1 %i.da, label %bb.ab, label %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.db = and i64 %i.cz, 7
  %.not.i.i = icmp eq i64 %i.db, 3
  %i.dc = and i64 %i.cz, -8
  %i.dd = inttoptr i64 %i.dc to ptr               ; 14 uses
  br i1 %.not.i.i, label %bb.ac, label %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 7
  %i.df = load i8, ptr %i.de, align 1, !tbaa !349, !range !25, !noundef !26
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.di = load i32, ptr %i.dd, align 8, !tbaa !157
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !350, !range !25, !noundef !26
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 5
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !351, !range !25, !noundef !26
  %narrow.i.i.i.i.i.i.i = add nuw nsw i8 %i.do, %i.dm
  %i.dp = zext nneg i8 %narrow.i.i.i.i.i.i.i to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !352, !range !25, !noundef !26
  %i.dt = zext nneg i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !353
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.i.i.ph.ph = phi ptr [ %i.dv, %bb.ad ], [ null, %bb.ac ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 10
  %i.dx = load i8, ptr %i.dw, align 2, !tbaa !354, !range !25, !noundef !26
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.af, label %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit

bb.af:                                            ; preds = %bb.ae
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.ea = load i32, ptr %i.dd, align 8, !tbaa !157
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.ee = load i8, ptr %i.ed, align 4, !tbaa !350, !range !25, !noundef !26
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dd, i64 5
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !351, !range !25, !noundef !26
  %narrow.i.i.i.i.i.i.i.i.i = add nuw nsw i8 %i.eg, %i.ee
  %i.eh = zext nneg i8 %narrow.i.i.i.i.i.i.i.i.i to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dd, i64 6
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !352, !range !25, !noundef !26
  %i.el = getelementptr inbounds nuw i8, ptr %i.dd, i64 7
  %i.em = load i8, ptr %i.el, align 1, !tbaa !349, !range !25, !noundef !26
  %narrow.i.i.i.i.i.i.i.i = add nuw nsw i8 %i.em, %i.ek
  %i.en = zext nneg i8 %narrow.i.i.i.i.i.i.i.i to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !355, !range !25, !noundef !26
  %i.er = zext nneg i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.er
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = add i64 %i.et, 7
  %i.ev = and i64 %i.eu, -8
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !356
  br label %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit

_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit: ; preds = %bb.ab, %bb.aa, %bb.ae, %bb.af
  %.1.i.i262 = phi ptr [ %.1.i.i.ph.ph, %bb.ae ], [ null, %bb.aa ], [ %.1.i.i.ph.ph, %bb.af ], [ null, %bb.ab ] ; 2 uses
  %.1.i4.i = phi ptr [ null, %bb.ae ], [ null, %bb.aa ], [ %i.ex, %bb.af ], [ null, %bb.ab ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !319
  %i.fa = sub nsw i64 0, %.sroa.14.0.insert.ext.i
  %i.fb = getelementptr inbounds [32 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr %i.cx, i1 noundef zeroext true) #27 ; 11 uses
  %.not.i.i121 = icmp eq ptr %.1.i.i262, null
  br i1 %.not.i.i121, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit
  call void @_ZN4llvm12MachineInstr13setPCSectionsERNS_15MachineFunctionEPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(80) %i.fc, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull %.1.i.i262) #27
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm10MIMetadataC2ERKNS_12MachineInstrE.exit, %bb.ag
  %.not8.i.i = icmp eq ptr %.1.i4.i, null
  br i1 %.not8.i.i, label %"_ZZNK4llvm15TargetInstrInfo14reassociateOpsERNS_12MachineInstrES2_jRNS_15SmallVectorImplIPS1_EES6_NS_8ArrayRefIjEERNS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEEENK3$_0clERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescESA_.exit", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4llvm12MachineInstr21setDeactivationSymbolERNS_15MachineFunctionEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(80) %i.fc, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull %.1.i4.i) #27
  br label %"_ZZNK4llvm15TargetInstrInfo14reassociateOpsERNS_12MachineInstrES2_jRNS_15SmallVectorImplIPS1_EES6_NS_8ArrayRefIjEERNS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEEENK3$_0clERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescESA_.exit"

"_ZZNK4llvm15TargetInstrInfo14reassociateOpsERNS_12MachineInstrES2_jRNS_15SmallVectorImplIPS1_EES6_NS_8ArrayRefIjEERNS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEEENK3$_0clERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescESA_.exit": ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.fd, align 8, !tbaa !321, !alias.scope !574
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %i.bk, ptr %i.fe, align 4, !tbaa !71, !alias.scope !574
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i8 0, i64 16, i1 false), !alias.scope !574
  store i32 16777216, ptr %13, align 8, !alias.scope !574
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fc, ptr noundef nonnull align 8 dereferenceable(1065) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  %i.fg = load ptr, ptr %i.p, align 8, !tbaa !152 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fi = load i24, ptr %i.fh, align 8
  %i.fj = zext i24 %i.fi to i64
  %i.fk = call noundef i32 @_ZNK4llvm12MachineInstr22getNumExplicitOperandsEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #27
  %i.fl = zext i32 %i.fk to i64
  %..i.i = call i64 @llvm.umin.i64(i64 %i.fl, i64 %i.fj) ; 2 uses
  %.idx = shl nuw nsw i64 %..i.i, 5
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.idx
  %.not267 = icmp eq i64 %..i.i, 0
  br i1 %.not267, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZZNK4llvm15TargetInstrInfo14reassociateOpsERNS_12MachineInstrES2_jRNS_15SmallVectorImplIPS1_EES6_NS_8ArrayRefIjEERNS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_jEEEEENK3$_0clERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescESA_.exit"
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 8
end_hunk_0
