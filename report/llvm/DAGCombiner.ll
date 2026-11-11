Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DAGCombiner?download=true
inline.NumInlined: 30678
inline.NumDeleted: 6200
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZN4llvm11SmallVectorIlLj8EEC2EmRKl:bb.a
  store i64 %i.d, ptr %.06.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !367
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !2541

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %bb.b
  %.06.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.f, %bb.b ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.l = icmp ult i64 %i.h, 56
  br i1 %i.l, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 %i.d, ptr %.06.i.i.i.i.i.i.i.i, align 8, !tbaa !367
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 8
  store i64 %i.d, ptr %i.m, align 8, !tbaa !367
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 16
  store i64 %i.d, ptr %i.n, align 8, !tbaa !367
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 24
  store i64 %i.d, ptr %i.o, align 8, !tbaa !367
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 32
  store i64 %i.d, ptr %i.p, align 8, !tbaa !367
  %i.q = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 40
  store i64 %i.d, ptr %i.q, align 8, !tbaa !367
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 48
  store i64 %i.d, ptr %i.r, align 8, !tbaa !367
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 56
  store i64 %i.d, ptr %i.s, align 8, !tbaa !367
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.t, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2542

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i:            ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i
  store i64 %i.d, ptr %i.a, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %.lr.ph.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.u, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %1, 2
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %.lr.ph.i.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.v, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i.2 = icmp eq i64 %1, 3
  br i1 %.not.i.i.i.i.i.i.i.2, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %.lr.ph.i.i.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.d, ptr %i.w, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %1, 4
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %.lr.ph.i.i.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.i.i.4:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.d, ptr %i.x, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i.4 = icmp eq i64 %1, 5
  br i1 %.not.i.i.i.i.i.i.i.4, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %.lr.ph.i.i.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.i.i.5:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.d, ptr %i.y, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i.5 = icmp eq i64 %1, 6
  br i1 %.not.i.i.i.i.i.i.i.5, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %.lr.ph.i.i.i.i.i.i.i.6

.lr.ph.i.i.i.i.i.i.i.6:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.d, ptr %i.z, align 8, !tbaa !367
  %.not.i.i.i.i.i.i.i.6 = icmp eq i64 %1, 7
  br i1 %.not.i.i.i.i.i.i.i.6, label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit, label %.lr.ph.i.i.i.i.i.i.i.7

.lr.ph.i.i.i.i.i.i.i.7:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.6
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.d, ptr %i.aa, align 8, !tbaa !367
  br label %_ZN4llvm15SmallVectorImplIlE6assignEml.exit

_ZN4llvm15SmallVectorImplIlE6assignEml.exit:      ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i.i.6, %.lr.ph.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.i
  %storemerge = trunc i64 %1 to i32
  store i32 %storemerge, ptr %i.b, align 8, !tbaa !76
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZZN12_GLOBAL__N_111DAGCombiner16mergeTruncStoresEPN4llvm11StoreSDNodeEENK3$_0clEb"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %1) unnamed_addr #27 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2546, !nonnull !53, !align !831
  %i.b = load i32, ptr %i.a, align 4, !tbaa !198  ; 4 uses
  %.not1932 = icmp eq i32 %i.b, 0                 ; 2 uses
  br i1 %1, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  br i1 %.not1932, label %.thread, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2547, !nonnull !53, !align !197
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2548, !nonnull !53, !align !831
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198
  %i.i = lshr i32 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2549, !nonnull !53, !align !197
  %i.l = load i64, ptr %i.k, align 8, !tbaa !367
  %i.m = zext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph34
  %indvars.iv41 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next42, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv41
  %i.o = load i64, ptr %i.n, align 8, !tbaa !367
  %i.p = trunc nuw i64 %indvars.iv41 to i32
  %i.q = mul i32 %i.i, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = add nsw i64 %i.l, %i.r
  %.not20 = icmp eq i64 %i.o, %i.s                ; 2 uses
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %.not19 = icmp ne i64 %indvars.iv.next42, %i.m
  %or.cond.not = select i1 %.not20, i1 %.not19, i1 false
  br i1 %or.cond.not, label %bb.b, label %.thread, !llvm.loop !2543

bb.c:                                             ; preds = %bb.a
  br i1 %.not1932, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2547, !nonnull !53, !align !197
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2548, !nonnull !53, !align !831
  %i.y = load i32, ptr %i.x, align 4, !tbaa !198
  %i.z = lshr i32 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !2549, !nonnull !53, !align !197
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !367
  %i.ad = zext i32 %i.b to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.029.in = phi i32 [ %i.b, %.lr.ph ], [ %.029, %bb.d ]
  %.029 = add i32 %.029.in, -1                    ; 2 uses
  %i.ae = zext i32 %.029 to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !367
  %i.ah = trunc nuw i64 %indvars.iv to i32
  %i.ai = mul i32 %i.z, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add nsw i64 %i.ac, %i.aj
  %.not18 = icmp eq i64 %i.ag, %i.ak              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp ne i64 %indvars.iv.next, %i.ad
  %or.cond49.not = select i1 %.not18, i1 %.not, i1 false
  br i1 %or.cond49.not, label %bb.d, label %.thread, !llvm.loop !2544

.thread:                                          ; preds = %bb.d, %bb.b, %bb.c, %.preheader
  %.2 = phi i1 [ true, %bb.c ], [ %.not20, %bb.b ], [ true, %.preheader ], [ %.not18, %bb.d ]
  ret i1 %.2
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG8getStoreENS_7SDValueERKNS_5SDLocES1_S1_NS_18MachinePointerInfoENS_5AlignENS_17MachineMemOperand5FlagsERKNS_9AAMDNodesE(ptr noundef nonnull align 8 dereferenceable(920), ptr, i32, ptr noundef nonnull align 8 dereferenceable(12), ptr, i32, ptr noundef byval(%"class.llvm::SDValue") align 8, ptr noundef byval(%"struct.llvm::MachinePointerInfo") align 8, i8, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11StoreSDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !43
  %i.g = load i32, ptr %i.a, align 8, !tbaa !76
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !76
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE6insertEllS1_(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::IntervalMap<long, std::monostate, 8, llvm::IntervalMapHalfOpenInfo<long>>::iterator", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !732
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !733  ; 23 uses
  switch i32 %i.d, label %.lr.ph.i [
    i32 8, label %.lr.ph.i.preheader.i.i
    i32 0, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2556)
  store ptr %0, ptr %3, align 8, !tbaa !743, !alias.scope !2556
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !43, !alias.scope !2556
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !76, !alias.scope !2556
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 4, ptr %i.h, align 4, !tbaa !77, !alias.scope !2556
  call void @_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE14const_iterator8treeFindEl(ptr noundef nonnull align 8 dereferenceable(88) %3, i64 noundef %1)
  br label %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE4findEl.exit

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %0, ptr %3, align 8, !tbaa !743, !alias.scope !2557
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !43, !alias.scope !2557
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 4, ptr %i.l, align 4, !tbaa !77, !alias.scope !2557
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !367, !noalias !2556
  %.not5.i.i.i = icmp sgt i64 %i.n, %1
  br i1 %.not5.i.i.i, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.preheader.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !367, !noalias !2556
  %.not5.i.i.i.1 = icmp sgt i64 %i.p, %1
  br i1 %.not5.i.i.i.1, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !367, !noalias !2556
  %.not5.i.i.i.2 = icmp sgt i64 %i.r, %1
  br i1 %.not5.i.i.i.2, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !367, !noalias !2556
  %.not5.i.i.i.3 = icmp sgt i64 %i.t, %1
  br i1 %.not5.i.i.i.3, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !367, !noalias !2556
  %.not5.i.i.i.4 = icmp sgt i64 %i.v, %1
  br i1 %.not5.i.i.i.4, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.i.i.i.4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load i64, ptr %i.w, align 8, !tbaa !367, !noalias !2556
  %.not5.i.i.i.5 = icmp sgt i64 %i.x, %1
  br i1 %.not5.i.i.i.5, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i, label %.lr.ph.i.i.i.6

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i.5
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load i64, ptr %i.y, align 8, !tbaa !367, !noalias !2556
  %.not5.i.i.i.6 = icmp sgt i64 %i.z, %1
  br i1 %.not5.i.i.i.6, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i, label %.lr.ph.i.i.i.7

.lr.ph.i.i.i.7:                                   ; preds = %.lr.ph.i.i.i.6
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !367, !noalias !2556
  %.not5.i.i.i.7 = icmp sgt i64 %i.ab, %1
  %spec.select = select i1 %.not5.i.i.i.7, i64 30064771080, i64 34359738376
  br label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i

_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i: ; preds = %.lr.ph.i.i.i.7, %.lr.ph.i.i.i.6, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.1, %.lr.ph.i.preheader.i.i
  %.pre-phi.i = phi i64 [ 8, %.lr.ph.i.preheader.i.i ], [ 17179869192, %.lr.ph.i.i.i.4 ], [ 4294967304, %.lr.ph.i.i.i.1 ], [ %spec.select, %.lr.ph.i.i.i.7 ], [ 8589934600, %.lr.ph.i.i.i.2 ], [ 21474836488, %.lr.ph.i.i.i.5 ], [ 12884901896, %.lr.ph.i.i.i.3 ], [ 25769803784, %.lr.ph.i.i.i.6 ]
  store ptr %0, ptr %i.j, align 8, !alias.scope !2556
  %.sroa.3.0..sroa_idx.i.i7.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.pre-phi.i, ptr %.sroa.3.0..sroa_idx.i.i7.i.i.i, align 8, !alias.scope !2556
  store i32 1, ptr %i.k, align 8, !tbaa !76, !alias.scope !2556
  br label %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE4findEl.exit

_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE4findEl.exit: ; preds = %bb.c, %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i
  %i.ac = phi ptr [ %i.f, %bb.c ], [ %i.j, %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i ]
  %i.ad = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread.loopexit.i.i ]
  call void @_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8iterator6insertEllS1_(ptr noundef nonnull align 8 dereferenceable(88) %3, i64 noundef %1, i64 noundef %2)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.ac
  br i1 %i.af, label %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE14const_iteratorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE4findEl.exit
  call void @free(ptr noundef %i.ae) #36
  br label %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE14const_iteratorD2Ev.exit

_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE14const_iteratorD2Ev.exit: ; preds = %_ZN4llvm11IntervalMapIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE4findEl.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.o

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !367
  %.not5.i = icmp sgt i64 %i.ai, %1
  br i1 %.not5.i, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit, label %.lr.ph.i, !llvm.loop !12

_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.split.loop.exit: ; preds = %.lr.ph.i
  %i.aj = trunc nuw i64 %indvars.iv to i32
  br label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit

_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit: ; preds = %bb.e, %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.split.loop.exit
  %.0.lcssa.i = phi i32 [ %i.aj, %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.split.loop.exit ], [ %i.d, %bb.e ] ; 16 uses
  %cond.i = icmp eq i32 %.0.lcssa.i, 0
  br i1 %cond.i, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit
  %i.ak = add i32 %.0.lcssa.i, -1
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !367
  %i.ap = icmp eq i64 %i.ao, %1
  br i1 %i.ap, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %.not39.i = icmp eq i32 %.0.lcssa.i, %i.d
  br i1 %.not39.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = zext i32 %.0.lcssa.i to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aq ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !367
  %i.at = icmp eq i64 %2, %i.as
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !367
  store i64 %i.av, ptr %i.an, align 8, !tbaa !367
  %i.aw = add i32 %.0.lcssa.i, 1                  ; 8 uses
  %.not10.i.i.i.i.i = icmp eq i32 %i.d, %i.aw
  br i1 %.not10.i.i.i.i.i, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj8EE5eraseEjj.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.ax = xor i32 %.0.lcssa.i, -1
  %i.ay = add i32 %i.d, %i.ax                     ; 3 uses
  %min.iters.check = icmp ult i32 %i.ay, 40
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader36, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.az = add i32 %i.d, -2
  %i.ba = icmp ult i32 %i.az, %.0.lcssa.i
  %i.bb = add i32 %i.d, -1
  %i.bc = icmp ult i32 %i.bb, %i.aw
  %i.bd = or i1 %i.ba, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.preheader36, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.be = zext i32 %.0.lcssa.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 4                ; 3 uses
  %i.bg = getelementptr i8, ptr %0, i64 %i.bf
  %i.bh = add i32 %i.d, -2
  %i.bi = sub i32 %i.bh, %.0.lcssa.i
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 4                ; 2 uses
  %i.bl = add nuw nsw i64 %i.bf, %i.bk            ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = zext i32 %i.aw to i64
  %i.bp = shl nuw nsw i64 %i.bo, 4                ; 3 uses
  %i.bq = getelementptr i8, ptr %0, i64 %i.bp
  %i.br = add nuw nsw i64 %i.bk, %i.bp            ; 2 uses
  %i.bs = getelementptr i8, ptr %0, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = getelementptr i8, ptr %0, i64 %i.bf
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %i.bw = getelementptr i8, ptr %0, i64 %i.bl
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %i.by = getelementptr i8, ptr %0, i64 %i.bp
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = getelementptr i8, ptr %0, i64 %i.br
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %bound0 = icmp ult ptr %i.bg, %i.bt
  %bound1 = icmp ult ptr %i.bq, %i.bn
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %i.bv, %i.cb
  %bound132 = icmp ult ptr %i.bz, %i.bx
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %i.ay, -2                      ; 4 uses
  %i.cc = add i32 %i.aw, %n.vec
  %i.cd = add i32 %.0.lcssa.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ce = add i32 %i.aw, %index                   ; 2 uses
  %i.cf = add i32 %i.ce, 1
  %i.cg = add i32 %.0.lcssa.i, %index             ; 2 uses
  %i.ch = add i32 %i.cg, 1
  %i.ci = zext i32 %i.ce to i64
  %i.cj = zext i32 %i.cf to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ci
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cj
  %i.cm = zext i32 %i.cg to i64
  %i.cn = zext i32 %i.ch to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cm
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cn
  %wide.load = load <2 x i64>, ptr %i.ck, align 8
  %wide.load34 = load <2 x i64>, ptr %i.cl, align 8
  store <2 x i64> %wide.load, ptr %i.co, align 8
  store <2 x i64> %wide.load34, ptr %i.cp, align 8
  %index.next = add nuw i32 %index, 2             ; 2 uses
  %i.cq = icmp eq i32 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !2554

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj8EE5eraseEjj.exit.i, label %.lr.ph.i.i.i.i.i.preheader36

.lr.ph.i.i.i.i.i.preheader36:                     ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i32 [ %i.aw, %vector.memcheck ], [ %i.aw, %vector.scevcheck ], [ %i.aw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %middle.block ] ; 5 uses
  %.0911.i.i.i.i.i.ph = phi i32 [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %vector.scevcheck ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ] ; 3 uses
  %i.cr = sub i32 %i.d, %.012.i.i.i.i.i.ph
  %.neg = add i32 %.012.i.i.i.i.i.ph, 1
  %xtraiter = and i32 %i.cr, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader36
  %i.cs = zext i32 %.012.i.i.i.i.i.ph to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cs
  %i.cu = zext i32 %.0911.i.i.i.i.i.ph to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cu
  %i.cw = load <2 x i64>, ptr %i.ct, align 8, !tbaa !367
  store <2 x i64> %i.cw, ptr %i.cv, align 8, !tbaa !367
  %i.cx = add i32 %.012.i.i.i.i.i.ph, 1
  %i.cy = add i32 %.0911.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader36
  %.012.i.i.i.i.i.unr = phi i32 [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader36 ], [ %i.cx, %.lr.ph.i.i.i.i.i.prol ]
  %.0911.i.i.i.i.i.unr = phi i32 [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader36 ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %i.cz = icmp eq i32 %i.d, %.neg
  br i1 %i.cz, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj8EE5eraseEjj.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i32 [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.0911.i.i.i.i.i = phi i32 [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.da = zext i32 %.012.i.i.i.i.i to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.da
  %i.dc = zext i32 %.0911.i.i.i.i.i to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.dc
  %i.de = load <2 x i64>, ptr %i.db, align 8, !tbaa !367
  store <2 x i64> %i.de, ptr %i.dd, align 8, !tbaa !367
  %i.df = add i32 %.012.i.i.i.i.i, 1
  %i.dg = add i32 %.0911.i.i.i.i.i, 1
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.dh
  %i.dj = zext i32 %i.dg to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.dj
  %i.dl = load <2 x i64>, ptr %i.di, align 8, !tbaa !367
  store <2 x i64> %i.dl, ptr %i.dk, align 8, !tbaa !367
  %i.dm = add i32 %.012.i.i.i.i.i, 2              ; 2 uses
  %i.dn = add i32 %.0911.i.i.i.i.i, 2
  %.not.i.i.i.i.i.1 = icmp eq i32 %i.dm, %i.d
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj8EE5eraseEjj.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2555

_ZN4llvm15IntervalMapImpl8NodeBaseISt4pairIllESt9monostateLj8EE5eraseEjj.exit.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %bb.i
  %i.do = add i32 %i.d, -1
  br label %_ZN4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE10insertFromERjjllS2_.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  store i64 %2, ptr %i.an, align 8, !tbaa !367
  br label %_ZN4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE10insertFromERjjllS2_.exit

bb.k:                                             ; preds = %bb.f
  %i.dp = icmp eq i32 %.0.lcssa.i, 8
  br i1 %i.dp, label %_ZN4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE10insertFromERjjllS2_.exit, label %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread

_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread: ; preds = %bb.b, %bb.k, %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit
  %.0.lcssa.i13 = phi i32 [ 0, %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit ], [ %.0.lcssa.i, %bb.k ], [ %i.d, %bb.b ] ; 9 uses
  %i.dq = icmp eq i32 %.0.lcssa.i13, %i.d
  br i1 %i.dq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread
  %i.dr = zext i32 %i.d to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.dr ; 2 uses
  store i64 %1, ptr %i.ds, align 8, !tbaa !367
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %2, ptr %i.dt, align 8, !tbaa !367
  %i.du = add i32 %i.d, 1
  br label %_ZN4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE10insertFromERjjllS2_.exit

bb.m:                                             ; preds = %_ZNK4llvm15IntervalMapImpl8LeafNodeIlSt9monostateLj8ENS_23IntervalMapHalfOpenInfoIlEEE8findFromEjjl.exit.thread
  %i.dv = zext i32 %.0.lcssa.i13 to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.dv ; 4 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !367
  %i.dy = icmp eq i64 %2, %i.dx
  br i1 %i.dy, label %bb.n, label %.lr.ph.preheader.i.i.i

end_hunk_0
