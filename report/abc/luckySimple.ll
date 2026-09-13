Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/luckySimple?download=true
inline.NumInlined: 15
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@setPermInfoPtr:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.i ], [ %indvars.iv.ph, %.lr.ph.i.preheader38 ] ; 2 uses
  %i.an = sub nuw nsw i64 %i.q, %indvars.iv
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.an
  store i32 -1, ptr %i.ao, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count21
  br i1 %exitcond.not, label %fillInFlipArray.exit, label %.lr.ph.i, !llvm.loop !38

fillInFlipArray.exit:                             ; preds = %.lr.ph.i, %oneBitPosition.exit.i.loopexit.us, %middle.block35, %factorial.exit
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @freePermInfoPtr(ptr noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %minWord3.exit
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next, %minWord3.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17
  tail call void @Kit_TruthSwapAdjacentVars_64bit(ptr noundef %0, i32 noundef %4, i32 noundef %i.j) #13
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !24
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
  %i.v = load i32, ptr %i.u, align 4, !tbaa !25   ; 2 uses
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
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.next76
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !17
  tail call void @Kit_TruthChangePhase_64bit(ptr noundef %0, i32 noundef %4, i32 noundef %i.ad) #13
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !26
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
  %i.an = load i32, ptr %i.c, align 4, !tbaa !20  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph65.preheader, label %.loopexit

.lr.ph65.preheader:                               ; preds = %minWord3.exit61
  %i.ap = zext nneg i32 %i.an to i64
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %minWord3.exit62
  %indvars.iv72 = phi i64 [ %i.ap, %.lr.ph65.preheader ], [ %indvars.iv.next73, %minWord3.exit62 ] ; 2 uses
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1 ; 3 uses
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next73
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !17
  tail call void @Kit_TruthSwapAdjacentVars_64bit(ptr noundef %0, i32 noundef %4, i32 noundef %i.as) #13
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !24
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
  %i.a = sext i32 %4 to i64
  %i.b = shl nsw i64 %i.a, 2
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #12 ; 9 uses
  %i.d = icmp sgt i32 %4, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.e = icmp ult i32 %4, 4
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.0184 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.u, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %.0184, ptr %i.f, align 4, !tbaa !17
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !17
  %i.i = add nsw i32 %i.h, %.0184                 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  store i32 %i.i, ptr %i.j, align 4, !tbaa !17
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %i.m = add nsw i32 %i.l, %i.i                   ; 2 uses
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.1
  store i32 %i.m, ptr %i.n, align 4, !tbaa !17
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  %i.q = add nsw i32 %i.p, %i.m                   ; 2 uses
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.2
  store i32 %i.q, ptr %i.r, align 4, !tbaa !17
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.t = load i32, ptr %i.s, align 4, !tbaa !17
  %i.u = add nsw i32 %i.t, %i.q                   ; 2 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !44

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0184.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod261 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod261)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %.0184.epil = phi i32 [ %.0184.epil.init, %.lr.ph.epil.preheader ], [ %i.y, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.epil
  store i32 %.0184.epil, ptr %i.v, align 4, !tbaa !17
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil
  %i.x = load i32, ptr %i.w, align 4, !tbaa !17
  %i.y = add nsw i32 %i.x, %.0184.epil
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !45

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.not = icmp eq i32 %7, 0                       ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  tail call void @Kit_TruthCopy_64bit(ptr noundef %1, ptr noundef %0, i32 noundef %6) #13
  tail call void @Kit_TruthNot_64bit(ptr noundef %0, i32 noundef %6) #13
  %i.z = tail call i32 @memCompare(ptr noundef %0, ptr noundef %1, i32 noundef %6) #13
  %i.aa = icmp eq i32 %i.z, -1
  %..i = select i1 %i.aa, ptr %0, ptr %1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.sink = phi ptr [ %..i, %bb.b ], [ %0, %._crit_edge ]
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %.sink, i32 noundef %6) #13
  %i.ab = shl i32 %4, 1                           ; 5 uses
  %i.ac = or disjoint i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 2                    ; 4 uses
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #12 ; 6 uses
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.ae) #12 ; 7 uses
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ae) #12 ; 8 uses
  store i32 2, ptr %i.ah, align 4, !tbaa !17
  %.not165185 = icmp slt i32 %4, 1                ; 2 uses
  br i1 %.not165185, label %.preheader178, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %bb.c
  %i.ai = zext nneg i32 %4 to i64                 ; 4 uses
  %i.aj = zext nneg i32 %4 to i64
  %i.ak = add nsw i64 %i.aj, -1                   ; 2 uses
  %xtraiter262 = and i64 %i.ai, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph188.epil.preheader, label %.lr.ph188.preheader.new

.lr.ph188.preheader.new:                          ; preds = %.lr.ph188.preheader
  %unroll_iter266 = and i64 %i.ai, 2147483646
  br label %.lr.ph188

.lr.ph191.preheader.unr-lcssa:                    ; preds = %.lr.ph188
  %lcmp.mod264.not = icmp eq i64 %xtraiter262, 0
  br i1 %lcmp.mod264.not, label %.lr.ph191.preheader, label %.lr.ph188.epil.preheader

.lr.ph188.epil.preheader:                         ; preds = %.lr.ph191.preheader.unr-lcssa, %.lr.ph188.preheader
  %indvars.iv217.epil.init = phi i64 [ 1, %.lr.ph188.preheader ], [ %indvars.iv.next218.1, %.lr.ph191.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod265 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod265)
  %i.am = getelementptr [4 x i8], ptr %3, i64 %indvars.iv217.epil.init
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !17
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !25
  %i.au = add nsw i32 %i.at, 1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv217.epil.init
  store i32 %i.au, ptr %i.av, align 4, !tbaa !17
  br label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %.lr.ph191.preheader.unr-lcssa, %.lr.ph188.epil.preheader
  %i.aw = zext nneg i32 %4 to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.aw ; 3 uses
  %xtraiter268 = and i64 %i.ai, 1
  %i.ax = icmp eq i64 %i.ak, 0
  br i1 %i.ax, label %.lr.ph191.epil.preheader, label %.lr.ph191.preheader.new

.lr.ph191.preheader.new:                          ; preds = %.lr.ph191.preheader
  %unroll_iter272 = and i64 %i.ai, 2147483646
  br label %.lr.ph191

.lr.ph188:                                        ; preds = %.lr.ph188, %.lr.ph188.preheader.new
  %indvars.iv217 = phi i64 [ 1, %.lr.ph188.preheader.new ], [ %indvars.iv.next218.1, %.lr.ph188 ] ; 4 uses
  %niter267 = phi i64 [ 0, %.lr.ph188.preheader.new ], [ %niter267.next.1, %.lr.ph188 ]
  %i.ay = getelementptr [4 x i8], ptr %3, i64 %indvars.iv217
  %i.az = getelementptr i8, ptr %i.ay, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !17
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !25
  %i.bg = add nsw i32 %i.bf, 1
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv217
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !17
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next218
  %i.bj = getelementptr i8, ptr %i.bi, i64 -4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !17
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !52
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !25
  %i.bq = add nsw i32 %i.bp, 1
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next218
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !17
  %indvars.iv.next218.1 = add nuw nsw i64 %indvars.iv217, 2 ; 2 uses
  %niter267.next.1 = add nuw i64 %niter267, 2     ; 2 uses
  %niter267.ncmp.1 = icmp eq i64 %niter267.next.1, %unroll_iter266
  br i1 %niter267.ncmp.1, label %.lr.ph191.preheader.unr-lcssa, label %.lr.ph188, !llvm.loop !46

.preheader178.loopexit.unr-lcssa:                 ; preds = %.lr.ph191
  %lcmp.mod270.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod270.not, label %.preheader178, label %.lr.ph191.epil.preheader

.lr.ph191.epil.preheader:                         ; preds = %.preheader178.loopexit.unr-lcssa, %.lr.ph191.preheader
  %indvars.iv222.epil.init = phi i64 [ 1, %.lr.ph191.preheader ], [ %indvars.iv.next223.1, %.preheader178.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod271 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod271)
  %i.bs = getelementptr [4 x i8], ptr %3, i64 %indvars.iv222.epil.init
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !17
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %5, i64 %i.bv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !52
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20
  %i.ca = add nsw i32 %i.bz, 1
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv222.epil.init
  store i32 %i.ca, ptr %gep.epil, align 4, !tbaa !17
  br label %.preheader178

.preheader178:                                    ; preds = %.lr.ph191.epil.preheader, %.preheader178.loopexit.unr-lcssa, %bb.c
  %.not167192 = icmp slt i32 %i.ab, 0
  br i1 %.not167192, label %.preheader177, label %.lr.ph194.preheader

.lr.ph194.preheader:                              ; preds = %.preheader178
  %i.cb = zext nneg i32 %i.ab to i64
  %i.cc = shl nuw nsw i64 %i.cb, 2
  %i.cd = or disjoint i64 %i.cc, 4                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ag, i8 0, i64 %i.cd, i1 false), !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.af, i8 0, i64 %i.cd, i1 false), !tbaa !17
  br label %.preheader177

.lr.ph191:                                        ; preds = %.lr.ph191, %.lr.ph191.preheader.new
  %indvars.iv222 = phi i64 [ 1, %.lr.ph191.preheader.new ], [ %indvars.iv.next223.1, %.lr.ph191 ] ; 4 uses
  %niter273 = phi i64 [ 0, %.lr.ph191.preheader.new ], [ %niter273.next.1, %.lr.ph191 ]
  %i.ce = getelementptr [4 x i8], ptr %3, i64 %indvars.iv222
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !17
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !52
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !20
  %i.cm = add nsw i32 %i.cl, 1
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv222
  store i32 %i.cm, ptr %gep, align 4, !tbaa !17
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %i.cn = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.next223
  %i.co = getelementptr i8, ptr %i.cn, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !17
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !52
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !20
  %i.cv = add nsw i32 %i.cu, 1
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next223
  store i32 %i.cv, ptr %gep.1, align 4, !tbaa !17
  %indvars.iv.next223.1 = add nuw nsw i64 %indvars.iv222, 2 ; 2 uses
  %niter273.next.1 = add nuw i64 %niter273, 2     ; 2 uses
  %niter273.ncmp.1 = icmp eq i64 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.preheader178.loopexit.unr-lcssa, label %.lr.ph191, !llvm.loop !47

.preheader177:                                    ; preds = %.lr.ph194.preheader, %.preheader178
  %.not174 = icmp eq i32 %8, 0
  %i.cw = sext i32 %i.ab to i64                   ; 4 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cw ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.cw
  %i.cz = add nuw i32 %4, 1                       ; 2 uses
  %9 = zext i32 %4 to i64
  %wide.trip.count233 = zext i32 %i.cz to i64
  %wide.trip.count238 = zext i32 %i.cz to i64
  br label %bb.d

bb.d:                                             ; preds = %.preheader177, %bb.w
  br i1 %.not165185, label %._crit_edge202, label %.lr.ph198

.lr.ph198:                                        ; preds = %bb.d, %minWord3.exit
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %minWord3.exit ], [ 1, %bb.d ] ; 5 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv230
  %i.db = load i32, ptr %i.da, align 4, !tbaa !17
  %.not173 = icmp eq i32 %i.db, 0
  br i1 %.not173, label %minWord3.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph198
  br i1 %.not174, label %bb.f, label %._crit_edge243

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr [4 x i8], ptr %3, i64 %indvars.iv230
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !17
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %minWord3.exit, label %._crit_edge243

._crit_edge243:                                   ; preds = %bb.e, %bb.f
  %i.dg = add nsw i64 %indvars.iv230, -1          ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !17
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %5, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !52 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv230
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !17 ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge243
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !25
  %i.dr = sub nsw i32 %i.dq, %i.dn
  %i.ds = sext i32 %i.dr to i64
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge243, %bb.g
  %i.dt = phi i64 [ %i.ds, %bb.g ], [ 0, %._crit_edge243 ] ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dg
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !17 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !26
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dt
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !17
  %i.ea = add nsw i32 %i.dz, %i.dv
  tail call void @Kit_TruthChangePhase_64bit(ptr noundef %0, i32 noundef %6, i32 noundef %i.ea) #13
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eb = load ptr, ptr %i.dw, align 8, !tbaa !26
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.dt
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !17
  %i.ee = add nsw i32 %i.ed, %i.dv
  tail call void @Kit_TruthChangePhase_64bit(ptr noundef %1, i32 noundef %6, i32 noundef %i.ee) #13
  %i.ef = tail call i32 @memCompare(ptr noundef %0, ptr noundef %1, i32 noundef %6) #13
  %i.eg = icmp slt i32 %i.ef, 1
  br i1 %i.eg, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.eh = tail call i32 @memCompare(ptr noundef %0, ptr noundef %2, i32 noundef %6) #13
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.k, label %minWord3.exit

bb.k:                                             ; preds = %bb.j
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %0, i32 noundef %6) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.ej = tail call i32 @memCompare(ptr noundef %1, ptr noundef %2, i32 noundef %6) #13
  %i.ek = icmp slt i32 %i.ej, 1
  br i1 %i.ek, label %minWord3.exit.sink.split, label %minWord3.exit

bb.m:                                             ; preds = %bb.h
  %i.el = tail call i32 @memCompare(ptr noundef %0, ptr noundef %2, i32 noundef %6) #13
  %i.em = icmp slt i32 %i.el, 1
  br i1 %i.em, label %minWord3.exit.sink.split, label %minWord3.exit

minWord3.exit.sink.split:                         ; preds = %bb.m, %bb.l
  %.sink255 = phi ptr [ %1, %bb.l ], [ %0, %bb.m ]
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %.sink255, i32 noundef %6) #13
  br label %minWord3.exit

minWord3.exit:                                    ; preds = %minWord3.exit.sink.split, %bb.m, %bb.l, %bb.j, %bb.f, %.lr.ph198
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %.lr.ph201, label %.lr.ph198, !llvm.loop !48

.lr.ph201:                                        ; preds = %minWord3.exit, %minWord3.exit175
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %minWord3.exit175 ], [ 1, %minWord3.exit ] ; 3 uses
  %i.en = add nuw nsw i64 %indvars.iv235, %9      ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !17
  %.not172 = icmp eq i32 %i.ep, 0
  br i1 %.not172, label %minWord3.exit175, label %bb.n

bb.n:                                             ; preds = %.lr.ph201
  %i.eq = add nsw i64 %indvars.iv235, -1          ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !17 ; 2 uses
  %i.et = icmp eq i32 %i.es, 1
  br i1 %i.et, label %minWord3.exit175, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eu = sext i32 %i.es to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %5, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !52 ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.en
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !17 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !20 ; 2 uses
  %i.fb = icmp eq i32 %i.ey, %i.fa
  br i1 %i.fb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !24
  %i.fe = xor i32 %i.ey, -1
  %i.ff = add i32 %i.fa, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.1 = phi i32 [ %i.fi, %bb.p ], [ 0, %bb.o ]
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eq
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !17
  %i.fl = add nsw i32 %i.fk, %.1                  ; 2 uses
  tail call void @Kit_TruthSwapAdjacentVars_64bit(ptr noundef %0, i32 noundef %6, i32 noundef %i.fl) #13
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @Kit_TruthSwapAdjacentVars_64bit(ptr noundef %1, i32 noundef %6, i32 noundef %i.fl) #13
  %i.fm = tail call i32 @memCompare(ptr noundef %0, ptr noundef %1, i32 noundef %6) #13
  %i.fn = icmp slt i32 %i.fm, 1
  br i1 %i.fn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.fo = tail call i32 @memCompare(ptr noundef %0, ptr noundef %2, i32 noundef %6) #13
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %bb.t, label %minWord3.exit175

bb.t:                                             ; preds = %bb.s
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %0, i32 noundef %6) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.fq = tail call i32 @memCompare(ptr noundef %1, ptr noundef %2, i32 noundef %6) #13
  %i.fr = icmp slt i32 %i.fq, 1
  br i1 %i.fr, label %minWord3.exit175.sink.split, label %minWord3.exit175

bb.v:                                             ; preds = %bb.q
  %i.fs = tail call i32 @memCompare(ptr noundef %0, ptr noundef %2, i32 noundef %6) #13
  %i.ft = icmp slt i32 %i.fs, 1
  br i1 %i.ft, label %minWord3.exit175.sink.split, label %minWord3.exit175

minWord3.exit175.sink.split:                      ; preds = %bb.v, %bb.u
  %.sink256 = phi ptr [ %1, %bb.u ], [ %0, %bb.v ]
  tail call void @Kit_TruthCopy_64bit(ptr noundef %2, ptr noundef %.sink256, i32 noundef %6) #13
  br label %minWord3.exit175

minWord3.exit175:                                 ; preds = %minWord3.exit175.sink.split, %bb.v, %bb.u, %bb.s, %bb.n, %.lr.ph201
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge202, label %.lr.ph201, !llvm.loop !49

._crit_edge202:                                   ; preds = %minWord3.exit175, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ag, i8 0, i64 %i.ae, i1 false)
  %i.fu = load i32, ptr %i.cx, align 4, !tbaa !17 ; 2 uses
  %i.fv = load i32, ptr %i.cy, align 4, !tbaa !17
  %i.fw = add nsw i32 %i.fv, -1
  %i.fx = icmp eq i32 %i.fu, %i.fw
  br i1 %i.fx, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %._crit_edge202, %.lr.ph205
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %.lr.ph205 ], [ %i.cw, %._crit_edge202 ] ; 2 uses
  %i.fy = phi ptr [ %i.ga, %.lr.ph205 ], [ %i.cx, %._crit_edge202 ]
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv240
  store i32 1, ptr %i.fz, align 4, !tbaa !17
  %indvars.iv.next241 = add nsw i64 %indvars.iv240, -1 ; 5 uses
  store i32 0, ptr %i.fy, align 4, !tbaa !17
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.af, i64 %indvars.iv.next241 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !17 ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv.next241
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !17
  %i.ge = add nsw i32 %i.gd, -1
  %i.gf = icmp eq i32 %i.gb, %i.ge
  br i1 %i.gf, label %.lr.ph205, label %._crit_edge206.loopexit, !llvm.loop !50

._crit_edge206.loopexit:                          ; preds = %.lr.ph205
  %i.gg = trunc nsw i64 %indvars.iv.next241 to i32
  br label %._crit_edge206

._crit_edge206:                                   ; preds = %._crit_edge206.loopexit, %._crit_edge202
  %.2.lcssa = phi i32 [ %i.ab, %._crit_edge202 ], [ %i.gg, %._crit_edge206.loopexit ]
  %.lcssa181 = phi i64 [ %i.cw, %._crit_edge202 ], [ %indvars.iv.next241, %._crit_edge206.loopexit ]
  %.lcssa180 = phi ptr [ %i.cx, %._crit_edge202 ], [ %i.ga, %._crit_edge206.loopexit ]
  %.lcssa = phi i32 [ %i.fu, %._crit_edge202 ], [ %i.gb, %._crit_edge206.loopexit ]
  %i.gh = icmp eq i32 %.2.lcssa, 0
  br i1 %i.gh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge206
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.lcssa181
  store i32 1, ptr %i.gi, align 4, !tbaa !17
  %i.gj = add nsw i32 %.lcssa, 1
  store i32 %i.gj, ptr %.lcssa180, align 4, !tbaa !17
  br label %bb.d

bb.x:                                             ; preds = %._crit_edge206
  %.not170 = icmp eq ptr %i.c, null
  br i1 %.not170, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.c) #13
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  tail call void @free(ptr noundef nonnull %i.af) #13
  tail call void @free(ptr noundef %i.ag) #13
  tail call void @free(ptr noundef nonnull %i.ah) #13
  tail call void @Kit_TruthCopy_64bit(ptr noundef %0, ptr noundef %2, i32 noundef %6) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare i32 @memCompare(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !18}
!1 = distinct !{!1, !18}
!2 = distinct !{!2, !18}
!3 = distinct !{!3, !18}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"", !9, i64 0, !9, i64 4}
!15 = !{!14, !9, i64 4}
!16 = !{!14, !9, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"", !9, i64 0, !13, i64 8, !9, i64 16, !9, i64 20, !13, i64 24, !9, i64 32, !9, i64 36}
!20 = !{!19, !9, i64 20}
!21 = !{!19, !9, i64 0}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!19, !13, i64 8}
!25 = !{!19, !9, i64 36}
!26 = !{!19, !13, i64 24}
!27 = !{!"", !12, i64 0, !13, i64 8, !9, i64 16, !9, i64 20, !9, i64 24}
!28 = !{!27, !9, i64 16}
!29 = !{!27, !13, i64 8}
!30 = !{!27, !12, i64 0}
!31 = !{!27, !9, i64 20}
!32 = !{!27, !9, i64 24}
!33 = distinct !{!33, !18, !22, !23}
!34 = distinct !{!34, !18, !23, !22}
!35 = distinct !{!35, !22, !23}
!36 = distinct !{!36, !23, !22}
!37 = distinct !{!37, !18, !22, !23}
!38 = distinct !{!38, !18, !23, !22}
!39 = !{!19, !9, i64 32}
!40 = !{!19, !9, i64 16}
!41 = distinct !{!41, !18}
!42 = distinct !{!42, !18}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !51}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!12, !12, i64 0}
end_hunk_0
