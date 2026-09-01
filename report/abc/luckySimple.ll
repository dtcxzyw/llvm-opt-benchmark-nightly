Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/luckySimple?download=true
inline.NumInlined: 15
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@fillInSwapArray:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.al
  store i32 %i.ak, ptr %i.ar, align 4, !tbaa !14
  store i32 %.04858.i.us, ptr %i.as, align 4, !tbaa !17
  %i.at = sext i32 %i.ai to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.at
  store i32 %i.an, ptr %i.au, align 4, !tbaa !17
  %i.av = sext i32 %i.an to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %i.ai, ptr %i.ax, align 4, !tbaa !14
  %i.ay = icmp sgt i32 %i.c, %.04858.i.us
  br i1 %i.ay, label %.lr.ph60.i.us, label %.loopexit.us

.lr.ph60.i.us:                                    ; preds = %bb.c, %.lr.ph60.i.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph60.i.us ], [ %i.ad, %bb.c ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16
  %i.bb = sub nsw i32 0, %i.ba
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !16
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  %i.bc = icmp samesign ult i32 %.04858.i.us, %indvars
  br i1 %i.bc, label %.lr.ph60.i.us, label %.loopexit.us, !llvm.loop !18

.loopexit.us:                                     ; preds = %.lr.ph60.i.us, %bb.c
  %i.bd = load i32, ptr %i.ar, align 4, !tbaa !14
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !30
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.be, i64 %indvars.iv.next44
  %.lcssa55. = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bd)
  %i.bg = add nsw i32 %.lcssa55., -1
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !17
  br label %.lr.ph.i13.preheader.us

.loopexit16:                                      ; preds = %bb.b, %bb.a, %setSwapInfoPtr.exit
  tail call void @free(ptr noundef %i.g) #13
  tail call void @free(ptr noundef nonnull %i.i) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i32 -2147483648, 2147483647) i32 @oneBitPosition(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.08 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.b = shl nuw i32 1, %.08
  %i.c = and i32 %i.b, %0
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.d = add nuw nsw i32 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.07 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %.08, %.lr.ph ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @fillInFlipArray(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 2 uses
  %.not12 = icmp slt i32 %i.b, 1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %oneBitPosition.exit
  %i.e = phi i32 [ %i.b, %.lr.ph ], [ %i.r, %oneBitPosition.exit ]
  %.014 = phi i32 [ 0, %.lr.ph ], [ %i.g, %oneBitPosition.exit ]
  %.01113 = phi i32 [ 1, %.lr.ph ], [ %i.q, %oneBitPosition.exit ] ; 5 uses
  %i.f = lshr i32 %.01113, 1
  %i.g = xor i32 %i.f, %.01113                    ; 2 uses
  %i.h = xor i32 %i.g, %.014
  %i.i = load i32, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %oneBitPosition.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.08.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]  ; 3 uses
  %i.k = shl nuw i32 1, %.08.i
  %i.l = and i32 %i.k, %i.h
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.c, label %oneBitPosition.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = add nuw nsw i32 %.08.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.m, %i.i
  br i1 %exitcond.not.i, label %oneBitPosition.exit, label %.lr.ph.i, !llvm.loop !31

oneBitPosition.exit:                              ; preds = %.lr.ph.i, %bb.c, %bb.b
  %.07.i = phi i32 [ -1, %bb.b ], [ %.08.i, %.lr.ph.i ], [ -1, %bb.c ]
  %i.n = sub nuw nsw i32 %i.e, %.01113
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.o
  store i32 %.07.i, ptr %i.p, align 4, !tbaa !17
  %i.q = add nuw nsw i32 %.01113, 1
  %i.r = load i32, ptr %i.a, align 4, !tbaa !32   ; 2 uses
  %.not.not = icmp slt i32 %.01113, %i.r
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %oneBitPosition.exit, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @setPermInfoPtr(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #12 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.b, align 8, !tbaa !35
  store i32 %0, ptr %i.a, align 8, !tbaa !25
  %notmask = shl nsw i32 -1, %0                   ; 2 uses
  %i.c = xor i32 %notmask, -1                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %i.c, ptr %i.d, align 4, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !36
  %or.cond5.i = icmp ult i32 %0, 2
  br i1 %or.cond5.i, label %factorial.exit, label %tailrecurse.i.preheader

tailrecurse.i.preheader:                          ; preds = %bb.a
  %i.f = add i32 %0, -1                           ; 2 uses
  %min.iters.check = icmp ult i32 %0, 9
  br i1 %min.iters.check, label %tailrecurse.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %tailrecurse.i.preheader
  %n.vec = and i32 %i.f, -8                       ; 3 uses
  %i.g = sub i32 %0, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.h = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i32> [ %i.h, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi27 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.j, %vector.body ]
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 -4)
  %i.i = mul <4 x i32> %vec.phi, %vec.ind         ; 2 uses
  %i.j = mul <4 x i32> %vec.phi27, %step.add      ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 -8)
  %i.k = icmp eq i32 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.j, %i.i
  %i.l = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.f, %n.vec
  br i1 %cmp.n, label %factorial.exit.loopexit, label %tailrecurse.i.preheader40

tailrecurse.i.preheader40:                        ; preds = %tailrecurse.i.preheader, %middle.block
  %.tr7.i.ph = phi i32 [ %0, %tailrecurse.i.preheader ], [ %i.g, %middle.block ]
  %accumulator.tr6.i.ph = phi i32 [ 1, %tailrecurse.i.preheader ], [ %i.l, %middle.block ]
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.preheader40, %tailrecurse.i
  %.tr7.i = phi i32 [ %i.m, %tailrecurse.i ], [ %.tr7.i.ph, %tailrecurse.i.preheader40 ] ; 3 uses
  %accumulator.tr6.i = phi i32 [ %i.n, %tailrecurse.i ], [ %accumulator.tr6.i.ph, %tailrecurse.i.preheader40 ]
  %i.m = add nsw i32 %.tr7.i, -1
  %i.n = mul i32 %accumulator.tr6.i, %.tr7.i      ; 2 uses
  %or.cond.i = icmp ult i32 %.tr7.i, 3
  br i1 %or.cond.i, label %factorial.exit.loopexit, label %tailrecurse.i, !llvm.loop !38

factorial.exit.loopexit:                          ; preds = %tailrecurse.i, %middle.block
  %.lcssa = phi i32 [ %i.l, %middle.block ], [ %i.n, %tailrecurse.i ]
  %i.o = add nsw i32 %.lcssa, -1
  br label %factorial.exit

factorial.exit:                                   ; preds = %factorial.exit.loopexit, %bb.a
  %accumulator.tr.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.o, %factorial.exit.loopexit ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %accumulator.tr.lcssa.i, ptr %i.p, align 4, !tbaa !23
  %i.q = zext nneg i32 %i.c to i64                ; 6 uses
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #12 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !33
  %i.u = sext i32 %accumulator.tr.lcssa.i to i64
  %i.v = shl nsw i64 %i.u, 2
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #12
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !30
  tail call void @fillInSwapArray(ptr noundef nonnull %i.a)
  %.not12.i = icmp eq i32 %0, 0
  br i1 %.not12.i, label %fillInFlipArray.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %factorial.exit
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %.lr.ph.i.us.preheader, label %.lr.ph.i.preheader25

.lr.ph.i.preheader25:                             ; preds = %.lr.ph.i.preheader
  %umax = tail call i32 @llvm.umax.i32(i32 %i.c, i32 1)
  %1 = add nuw i32 %umax, 1
  %wide.trip.count = zext i32 %1 to i64
  %min.iters.check29 = icmp samesign ugt i32 %notmask, -9
  br i1 %min.iters.check29, label %.lr.ph.i.preheader38, label %vector.ph30

vector.ph30:                                      ; preds = %.lr.ph.i.preheader25
  %n.vec31 = and i64 %i.q, 2147483640             ; 3 uses
  %i.z = or disjoint i64 %n.vec31, 1
  %invariant.gep = getelementptr [4 x i8], ptr %i.s, i64 %i.q
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next34, %vector.body32 ] ; 2 uses
  %.neg = xor i64 %index33, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.neg ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.ab = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> splat (i32 -1), ptr %i.aa, align 4, !tbaa !17
  store <4 x i32> splat (i32 -1), ptr %i.ab, align 4, !tbaa !17
  %index.next34 = add nuw i64 %index33, 8         ; 2 uses
  %i.ac = icmp eq i64 %index.next34, %n.vec31
  br i1 %i.ac, label %middle.block35, label %vector.body32, !llvm.loop !39

middle.block35:                                   ; preds = %vector.body32
  %cmp.n36 = icmp eq i64 %n.vec31, %i.q
  br i1 %cmp.n36, label %fillInFlipArray.exit, label %.lr.ph.i.preheader38

.lr.ph.i.preheader38:                             ; preds = %.lr.ph.i.preheader25, %middle.block35
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.i.preheader25 ], [ %i.z, %middle.block35 ]
  br label %.lr.ph.i

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %2 = shl nuw i32 1, %0
  %wide.trip.count20 = zext i32 %2 to i64
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %oneBitPosition.exit.i.loopexit.us
  %indvars.iv17 = phi i64 [ 1, %.lr.ph.i.us.preheader ], [ %indvars.iv.next18, %oneBitPosition.exit.i.loopexit.us ] ; 3 uses
  %.014.i.us = phi i32 [ 0, %.lr.ph.i.us.preheader ], [ %i.af, %oneBitPosition.exit.i.loopexit.us ]
  %i.ad = trunc nuw nsw i64 %indvars.iv17 to i32  ; 2 uses
  %i.ae = lshr i32 %i.ad, 1
  %i.af = xor i32 %i.ae, %i.ad                    ; 2 uses
  %i.ag = xor i32 %i.af, %.014.i.us
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.us, %bb.b
  %.08.i.i.us = phi i32 [ %i.aj, %bb.b ], [ 0, %.lr.ph.i.us ] ; 3 uses
  %i.ah = shl nuw i32 1, %.08.i.i.us
  %i.ai = and i32 %i.ah, %i.ag
  %.not.i.i.us = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.us, label %bb.b, label %oneBitPosition.exit.i.loopexit.us

bb.b:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = add nuw nsw i32 %.08.i.i.us, 1          ; 2 uses
  %exitcond.not.i.i.us = icmp eq i32 %i.aj, %0
  br i1 %exitcond.not.i.i.us, label %oneBitPosition.exit.i.loopexit.us, label %.lr.ph.i.i.us, !llvm.loop !31

oneBitPosition.exit.i.loopexit.us:                ; preds = %bb.b, %.lr.ph.i.i.us
  %.07.i.i.ph.us = phi i32 [ -1, %bb.b ], [ %.08.i.i.us, %.lr.ph.i.i.us ]
  %i.ak = sub nuw nsw i64 %i.q, %indvars.iv17
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ak
  store i32 %.07.i.i.ph.us, ptr %i.al, align 4, !tbaa !17
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next18, %wide.trip.count20
  br i1 %exitcond22.not, label %fillInFlipArray.exit, label %.lr.ph.i.us, !llvm.loop !34

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader38, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i ], [ %indvars.iv.ph, %.lr.ph.i.preheader38 ] ; 2 uses
  %i.am = sub nuw nsw i64 %i.q, %indvars.iv
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.am
  store i32 -1, ptr %i.an, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %fillInFlipArray.exit, label %.lr.ph.i, !llvm.loop !40

fillInFlipArray.exit:                             ; preds = %.lr.ph.i, %oneBitPosition.exit.i.loopexit.us, %middle.block35, %factorial.exit
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @freePermInfoPtr(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  tail call void @free(ptr noundef %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.d) #13
  tail call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @simpleMinimal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  tail call void @Kit_TruthCopy_64bit(ptr noundef %1, ptr noundef %0, i32 noundef %4) #13
  tail call void @Kit_TruthNot_64bit(ptr noundef %0, i32 noundef %4) #13
  %i.a = tail call i32 @memCompare(ptr noundef %0, ptr noundef %1, i32 noundef %4) #13
  %i.b = icmp eq i32 %i.a, -1
  %..i = select i1 %i.b, ptr %0, ptr %1
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %..i, i32 noundef %4) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %minWord3.exit
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next, %minWord3.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17
  tail call void @Kit_TruthSwapAdjacentVars_64bit(ptr noundef %0, i32 noundef %4, i32 noundef %i.j) #13
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  tail call void @Kit_TruthSwapAdjacentVars_64bit(ptr noundef %1, i32 noundef %4, i32 noundef %i.m) #13
  %i.n = tail call i32 @memCompare(ptr noundef %0, ptr noundef %1, i32 noundef %4) #13
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @memCompare(ptr noundef %0, ptr noundef %2, i32 noundef %4) #13
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %minWord3.exit

bb.d:                                             ; preds = %bb.c
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %0, i32 noundef %4) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.r = tail call i32 @memCompare(ptr noundef %1, ptr noundef %2, i32 noundef %4) #13
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.f, label %minWord3.exit

bb.f:                                             ; preds = %bb.e
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %1, i32 noundef %4) #13
  br label %minWord3.exit

minWord3.exit:                                    ; preds = %bb.c, %bb.e, %bb.f
  %i.t = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !41

._crit_edge:                                      ; preds = %minWord3.exit, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !32   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph69, label %._crit_edge70

.lr.ph69:                                         ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = zext nneg i32 %i.v to i64
  br label %bb.g

.loopexit:                                        ; preds = %minWord3.exit62, %minWord3.exit61
  %i.aa = icmp sgt i64 %indvars.iv75, 1
  br i1 %i.aa, label %bb.g, label %._crit_edge70, !llvm.loop !42

bb.g:                                             ; preds = %.lr.ph69, %.loopexit
  %indvars.iv75 = phi i64 [ %i.z, %.lr.ph69 ], [ %indvars.iv.next76, %.loopexit ] ; 2 uses
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, -1 ; 3 uses
  tail call void @Kit_TruthSwapAdjacentVars_64bit(ptr noundef %0, i32 noundef %4, i32 noundef 0) #13
  tail call void @Kit_TruthSwapAdjacentVars_64bit(ptr noundef %1, i32 noundef %4, i32 noundef 0) #13
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next76
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !17
  tail call void @Kit_TruthChangePhase_64bit(ptr noundef %0, i32 noundef %4, i32 noundef %i.ad) #13
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next76
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !17
  tail call void @Kit_TruthChangePhase_64bit(ptr noundef %1, i32 noundef %4, i32 noundef %i.ag) #13
  %i.ah = tail call i32 @memCompare(ptr noundef %0, ptr noundef %1, i32 noundef %4) #13
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aj = tail call i32 @memCompare(ptr noundef %0, ptr noundef %2, i32 noundef %4) #13
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %minWord3.exit61

bb.i:                                             ; preds = %bb.h
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %0, i32 noundef %4) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.al = tail call i32 @memCompare(ptr noundef %1, ptr noundef %2, i32 noundef %4) #13
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.k, label %minWord3.exit61

bb.k:                                             ; preds = %bb.j
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %1, i32 noundef %4) #13
  br label %minWord3.exit61

minWord3.exit61:                                  ; preds = %bb.h, %bb.j, %bb.k
  %i.an = load i32, ptr %i.c, align 4, !tbaa !23  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph65.preheader, label %.loopexit

.lr.ph65.preheader:                               ; preds = %minWord3.exit61
  %i.ap = zext nneg i32 %i.an to i64
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %minWord3.exit62
  %indvars.iv72 = phi i64 [ %i.ap, %.lr.ph65.preheader ], [ %indvars.iv.next73, %minWord3.exit62 ] ; 2 uses
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1 ; 3 uses
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next73
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !17
  tail call void @Kit_TruthSwapAdjacentVars_64bit(ptr noundef %0, i32 noundef %4, i32 noundef %i.as) #13
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next73
  %i.av = load i32, ptr %i.au, align 4, !tbaa !17
  tail call void @Kit_TruthSwapAdjacentVars_64bit(ptr noundef %1, i32 noundef %4, i32 noundef %i.av) #13
  %i.aw = tail call i32 @memCompare(ptr noundef %0, ptr noundef %1, i32 noundef %4) #13
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph65
  %i.ay = tail call i32 @memCompare(ptr noundef %0, ptr noundef %2, i32 noundef %4) #13
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.m, label %minWord3.exit62

bb.m:                                             ; preds = %bb.l
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %0, i32 noundef %4) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph65
  %i.ba = tail call i32 @memCompare(ptr noundef %1, ptr noundef %2, i32 noundef %4) #13
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %bb.o, label %minWord3.exit62

bb.o:                                             ; preds = %bb.n
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %1, i32 noundef %4) #13
  br label %minWord3.exit62

minWord3.exit62:                                  ; preds = %bb.l, %bb.n, %bb.o
  %i.bc = icmp samesign ugt i64 %indvars.iv72, 1
  br i1 %i.bc, label %.lr.ph65, label %.loopexit, !llvm.loop !43

._crit_edge70:                                    ; preds = %.loopexit, %._crit_edge
  tail call void @Kit_TruthCopy_64bit(ptr noundef %0, ptr noundef %2, i32 noundef %4) #13
  ret void
}

declare void @Kit_TruthCopy_64bit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @Kit_TruthNot_64bit(ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @Kit_TruthSwapAdjacentVars_64bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare void @Kit_TruthChangePhase_64bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @simpleMinimalGroups(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #7 {
bb.a:
  %i.a = sext i32 %4 to i64                       ; 2 uses
  %i.b = shl nsw i64 %i.a, 2
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #12 ; 9 uses
  %i.d = icmp sgt i32 %4, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

end_hunk_0
