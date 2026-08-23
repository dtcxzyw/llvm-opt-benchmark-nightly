Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/msatClause?download=true
inline.NumInlined: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Msat_ClauseCreate:bb.a
  %i.ba = icmp eq i32 %.1108, 3
  br i1 %i.ba, label %.lr.ph129.epil.preheader, label %.lr.ph129.preheader.new

.lr.ph129.preheader.new:                          ; preds = %.lr.ph129.preheader
  %i.bb = and i64 %wide.trip.count139, 2147483646
  %i.bc = add nsw i64 %i.bb, -4
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129, %.lr.ph129.preheader.new
  %indvars.iv136 = phi i64 [ 2, %.lr.ph129.preheader.new ], [ %indvars.iv.next137.1, %.lr.ph129 ] ; 4 uses
  %.0127 = phi i32 [ 1, %.lr.ph129.preheader.new ], [ %spec.select119.1, %.lr.ph129 ]
  %.0100126 = phi i32 [ %i.az, %.lr.ph129.preheader.new ], [ %spec.select.1, %.lr.ph129 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph129.preheader.new ], [ %niter.next.1, %.lr.ph129 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv136
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !11
  %i.bf = ashr i32 %i.be, 1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !11 ; 2 uses
  %i.bj = icmp slt i32 %.0100126, %i.bi
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0100126, i32 %i.bi) ; 2 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv136 to i32
  %spec.select119 = select i1 %i.bj, i32 %i.bk, i32 %.0127
  %indvars.iv.next137 = or disjoint i64 %indvars.iv136, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next137
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !11
  %i.bn = ashr i32 %i.bm, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !11 ; 2 uses
  %i.br = icmp slt i32 %spec.select, %i.bq
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.bq) ; 2 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv.next137 to i32
  %spec.select119.1 = select i1 %i.br, i32 %i.bs, i32 %spec.select119 ; 3 uses
  %indvars.iv.next137.1 = add nuw nsw i64 %indvars.iv136, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.bc
  br i1 %niter.ncmp.1, label %._crit_edge130.loopexit.unr-lcssa, label %.lr.ph129, !llvm.loop !32

._crit_edge130.loopexit.unr-lcssa:                ; preds = %.lr.ph129
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge130.loopexit, label %.lr.ph129.epil.preheader

.lr.ph129.epil.preheader:                         ; preds = %._crit_edge130.loopexit.unr-lcssa, %.lr.ph129.preheader
  %indvars.iv136.epil.init = phi i64 [ 2, %.lr.ph129.preheader ], [ %indvars.iv.next137.1, %._crit_edge130.loopexit.unr-lcssa ] ; 2 uses
  %.0127.epil.init = phi i32 [ 1, %.lr.ph129.preheader ], [ %spec.select119.1, %._crit_edge130.loopexit.unr-lcssa ]
  %.0100126.epil.init = phi i32 [ %i.az, %.lr.ph129.preheader ], [ %spec.select.1, %._crit_edge130.loopexit.unr-lcssa ]
  %lcmp.mod149 = trunc i32 %.1108 to i1
  tail call void @llvm.assume(i1 %lcmp.mod149)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv136.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !11
  %i.bv = ashr i32 %i.bu, 1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !11
  %i.bz = icmp slt i32 %.0100126.epil.init, %i.by
  %i.ca = trunc nuw nsw i64 %indvars.iv136.epil.init to i32
  %spec.select119.epil = select i1 %i.bz, i32 %i.ca, i32 %.0127.epil.init
  br label %._crit_edge130.loopexit

._crit_edge130.loopexit:                          ; preds = %._crit_edge130.loopexit.unr-lcssa, %.lr.ph129.epil.preheader
  %spec.select119.lcssa = phi i32 [ %spec.select119.1, %._crit_edge130.loopexit.unr-lcssa ], [ %spec.select119.epil, %.lr.ph129.epil.preheader ]
  %i.cb = zext nneg i32 %spec.select119.lcssa to i64
  br label %._crit_edge130

._crit_edge130:                                   ; preds = %._crit_edge130.loopexit, %bb.l
  %.0.lcssa = phi i64 [ 1, %bb.l ], [ %i.cb, %._crit_edge130.loopexit ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0.lcssa
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !11
  %i.cf = load i32, ptr %i.at, align 4, !tbaa !11
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.0.lcssa
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !11
  %i.ch = load i32, ptr %i.aj, align 4
  %i.ci = lshr i32 %i.ch, 3
  %i.cj = and i32 %i.ci, 16383
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ck
  store float 0.000000e+00, ptr %i.cl, align 4
  tail call void @Msat_SolverClaBumpActivity(ptr noundef nonnull %0, ptr noundef nonnull %i.ag) #13
  %i.cm = icmp sgt i32 %.1108, 0
  br i1 %i.cm, label %.lr.ph134.preheader, label %.loopexit

.lr.ph134.preheader:                              ; preds = %._crit_edge130
  %wide.trip.count144 = zext nneg i32 %.1108 to i64
  br label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %.lr.ph134
  %indvars.iv141 = phi i64 [ 0, %.lr.ph134.preheader ], [ %indvars.iv.next142, %.lr.ph134 ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv141
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !11
  tail call void @Msat_SolverVarBumpActivity(ptr noundef nonnull %0, i32 noundef %i.co) #13
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.loopexit, label %.lr.ph134, !llvm.loop !33

.loopexit:                                        ; preds = %.lr.ph134, %._crit_edge130, %bb.k
  %i.cp = tail call ptr @Msat_SolverReadWatchedArray(ptr noundef nonnull %0) #13 ; 2 uses
  %i.cq = load i32, ptr %i.ap, align 4, !tbaa !11
  %i.cr = xor i32 %i.cq, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !34
  tail call void @Msat_ClauseVecPush(ptr noundef %i.cu, ptr noundef nonnull %i.ag) #13
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !11
  %i.cx = xor i32 %i.cw, 1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !34
  tail call void @Msat_ClauseVecPush(ptr noundef %i.da, ptr noundef nonnull %i.ag) #13
  store ptr %i.ag, ptr %3, align 8, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.f, %bb.i, %.loopexit, %bb.j
  %.1110 = phi i32 [ %.1108, %bb.i ], [ %i.ab, %bb.j ], [ 1, %.loopexit ], [ 1, %bb.f ], [ 1, %bb.d ]
  ret i32 %.1110
}

declare ptr @Msat_SolverReadAssignsArray(ptr noundef) local_unnamed_addr #1

declare i32 @Msat_IntVecReadSize(ptr noundef) local_unnamed_addr #1

declare ptr @Msat_IntVecReadArray(ptr noundef) local_unnamed_addr #1

declare ptr @Msat_SolverReadSeenArray(ptr noundef) local_unnamed_addr #1

declare void @Msat_IntVecSort(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Msat_SolverIncrementSeenId(ptr noundef) local_unnamed_addr #1

declare void @Msat_IntVecShrink(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Msat_SolverEnqueue(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Msat_MmStepEntryFetch(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Msat_SolverReadMem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @Msat_SolverReadDecisionLevelArray(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Msat_ClauseWriteActivity(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 16383
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  store float %1, ptr %i.g, align 4
  ret void
}

declare void @Msat_SolverClaBumpActivity(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Msat_SolverVarBumpActivity(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Msat_SolverReadWatchedArray(ptr noundef) local_unnamed_addr #1

declare void @Msat_ClauseVecPush(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Msat_ClauseFree(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @Msat_SolverReadWatchedArray(ptr noundef %0) #13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11
  %i.d = xor i32 %i.c, 1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34   ; 3 uses
  %i.h = tail call i32 @Msat_ClauseVecReadSize(ptr noundef %i.g) #13 ; 2 uses
  %i.i = tail call ptr @Msat_ClauseVecReadArray(ptr noundef %i.g) #13 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %.not.i = icmp eq ptr %i.k, %1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %.not.i, label %.preheader.i, label %bb.c, !llvm.loop !35

.preheader.i:                                     ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.m = add nsw i32 %i.h, -1
  %i.n = icmp sgt i32 %i.m, %i.l
  br i1 %i.n, label %.lr.ph.preheader.i, label %Msat_ClauseRemoveWatch.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.o = shl nuw nsw i64 %indvars.iv.i, 3
  %scevgep.i = getelementptr nuw i8, ptr %i.i, i64 %i.o ; 2 uses
  %scevgep15.i = getelementptr i8, ptr %scevgep.i, i64 8
  %i.p = add i32 %i.h, -2
  %i.q = sub i32 %i.p, %i.l
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %scevgep15.i, i64 %i.t, i1 false), !tbaa !8
  br label %Msat_ClauseRemoveWatch.exit

Msat_ClauseRemoveWatch.exit:                      ; preds = %.preheader.i, %.lr.ph.preheader.i
  %i.u = tail call ptr @Msat_ClauseVecPop(ptr noundef %i.g) #13 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !11
  %i.x = xor i32 %i.w, 1
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 3 uses
  %i.ab = tail call i32 @Msat_ClauseVecReadSize(ptr noundef %i.aa) #13 ; 2 uses
  %i.ac = tail call ptr @Msat_ClauseVecReadArray(ptr noundef %i.aa) #13 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %Msat_ClauseRemoveWatch.exit
  %indvars.iv.i12 = phi i64 [ %indvars.iv.next.i14, %bb.d ], [ 0, %Msat_ClauseRemoveWatch.exit ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i12
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8
  %.not.i13 = icmp eq ptr %i.ae, %1
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i12, 1
  br i1 %.not.i13, label %.preheader.i15, label %bb.d, !llvm.loop !35

.preheader.i15:                                   ; preds = %bb.d
  %i.af = trunc nuw nsw i64 %indvars.iv.i12 to i32 ; 2 uses
  %i.ag = add nsw i32 %i.ab, -1
  %i.ah = icmp sgt i32 %i.ag, %i.af
  br i1 %i.ah, label %.lr.ph.preheader.i16, label %Msat_ClauseRemoveWatch.exit19

.lr.ph.preheader.i16:                             ; preds = %.preheader.i15
  %i.ai = shl nuw nsw i64 %indvars.iv.i12, 3
  %scevgep.i17 = getelementptr nuw i8, ptr %i.ac, i64 %i.ai ; 2 uses
  %scevgep15.i18 = getelementptr i8, ptr %scevgep.i17, i64 8
  %i.aj = add i32 %i.ab, -2
  %i.ak = sub i32 %i.aj, %i.af
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i17, ptr noundef nonnull align 8 dereferenceable(1) %scevgep15.i18, i64 %i.an, i1 false), !tbaa !8
  br label %Msat_ClauseRemoveWatch.exit19

Msat_ClauseRemoveWatch.exit19:                    ; preds = %.preheader.i15, %.lr.ph.preheader.i16
  %i.ao = tail call ptr @Msat_ClauseVecPop(ptr noundef %i.aa) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %Msat_ClauseRemoveWatch.exit19, %bb.a
  %i.ap = tail call ptr @Msat_SolverReadMem(ptr noundef %0) #13
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = lshr i32 %i.ar, 17
  tail call void @Msat_MmStepEntryRecycle(ptr noundef %i.ap, ptr noundef %1, i32 noundef %i.as) #13
  ret void
}

; Function Attrs: nounwind uwtable
define void @Msat_ClauseRemoveWatch(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Msat_ClauseVecReadSize(ptr noundef %0) #13 ; 2 uses
  %i.b = tail call ptr @Msat_ClauseVecReadArray(ptr noundef %0) #13 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %.not = icmp eq ptr %i.d, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !35

.preheader:                                       ; preds = %bb.b
  %i.e = trunc nuw nsw i64 %indvars.iv to i32
  %i.f = add nsw i32 %i.a, -1
  %i.g = icmp sgt i32 %i.f, %i.e
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.h = shl nuw nsw i64 %indvars.iv, 3           ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.b, i64 %i.h
  %i.i = getelementptr i8, ptr %i.b, i64 %i.h
  %scevgep15 = getelementptr i8, ptr %i.i, i64 8
  %i.j = add i32 %i.a, -2
  %i.k = trunc i64 %indvars.iv to i32
  %i.l = sub i32 %i.j, %i.k
  %i.m = zext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep15, i64 %i.o, i1 false), !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  %i.p = tail call ptr @Msat_ClauseVecPop(ptr noundef %0) #13 ; 0 uses
  ret void
}

declare void @Msat_MmStepEntryRecycle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @Msat_ClauseReadLearned(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 1
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 16384) i32 @Msat_ClauseReadSize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = lshr i32 %i.b, 3
  %i.d = and i32 %i.c, 16383
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @Msat_ClauseReadLits(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @Msat_ClauseReadMark(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = lshr i32 %i.b, 1
  %i.d = and i32 %i.c, 1
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @Msat_ClauseReadNum(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !30
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @Msat_ClauseReadTypeA(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 1
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Msat_ClauseSetMark(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = shl i32 %1, 1
  %i.d = and i32 %i.c, 2
  %i.e = and i32 %i.b, -3
  %i.f = or disjoint i32 %i.e, %i.d
  store i32 %i.f, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Msat_ClauseSetNum(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @Msat_ClauseSetTypeA(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = shl i32 %1, 2
  %i.d = and i32 %i.c, 4
  %i.e = and i32 %i.b, -5
  %i.f = or disjoint i32 %i.e, %i.d
  store i32 %i.f, ptr %i.a, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Msat_ClauseIsLocked(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Msat_SolverReadReasonArray(ptr noundef %0) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11
  %i.d = ashr i32 %i.c, 1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.h = icmp eq ptr %i.g, %1
  %i.i = zext i1 %i.h to i32
  ret i32 %i.i
}

declare ptr @Msat_SolverReadReasonArray(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define float @Msat_ClauseReadActivity(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 16383
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %.0.copyload = load float, ptr %i.g, align 4
  ret float %.0.copyload
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @Msat_ClausePropagate(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = xor i32 %1, 1                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  %i.d = icmp eq i32 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11   ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !11
  store i32 %i.a, ptr %i.e, align 4, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 5 uses
  %i.h = ashr i32 %i.g, 1
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %2, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11
  %i.l = icmp eq i32 %i.k, %i.g
  br i1 %i.l, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = and i32 %i.n, 131064
  %i.p = icmp samesign ugt i32 %i.o, 16
  br i1 %i.p, label %.preheader, label %.sink.split

.preheader:                                       ; preds = %bb.d
  %i.q = lshr i32 %i.n, 3
  %i.r = and i32 %i.q, 16383                      ; 2 uses
  %.not3336 = icmp samesign ugt i32 %i.r, 2
  br i1 %.not3336, label %.lr.ph.preheader, label %.sink.split

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph, !llvm.loop !36

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !11   ; 3 uses
  %i.u = ashr i32 %i.t, 1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %2, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !11
  %i.y = xor i32 %i.x, %i.t
  %.not = icmp eq i32 %i.y, 1
  br i1 %.not, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %i.t, ptr %i.aa, align 4, !tbaa !11
  store i32 %i.a, ptr %i.z, align 4, !tbaa !11
end_hunk_0
