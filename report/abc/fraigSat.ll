Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraigSat?download=true
inline.NumInlined: 24
inline.NumDeleted: 6
begin_hunk_0_@Fraig_NodeComparePhase
declare i32 @Fraig_NodeComparePhase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @Fraig_ManCheckMiter(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #10
  store ptr null, ptr %i.a, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !26   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = xor i64 %i.l, 1
  %i.n = inttoptr i64 %i.m to ptr
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !58

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 3 uses
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq ptr %i.p, %i.k
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @Fraig_ManAllocCounterExample(ptr noundef nonnull %0) #10
  store ptr %i.s, ptr %i.a, align 8, !tbaa !57
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.t = tail call ptr @Fraig_ManSaveCounterExample(ptr noundef nonnull %0, ptr noundef %i.p) #10 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !57
  %i.u = icmp eq ptr %i.t, null
  %. = sext i1 %i.u to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.h, %bb.g
  %.018 = phi i32 [ 0, %bb.g ], [ %., %bb.h ], [ 1, %bb.c ], [ 1, %bb.d ]
  ret i32 %.018
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @Fraig_ManAllocCounterExample(ptr noundef) local_unnamed_addr #2

declare ptr @Fraig_ManSaveCounterExample(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Fraig_MarkTfi_rec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !59
  %i.d = load i32, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.f = phi i32 [ %i.y, %tailrecurse ], [ %i.d, %bb.a ]
  %i.g = phi ptr [ %i.w, %tailrecurse ], [ %i.b, %bb.a ]
  %.tr1012 = phi ptr [ %i.u, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %accumulator.tr11 = phi i32 [ %i.v, %tailrecurse ], [ 0, %bb.a ] ; 2 uses
  store i32 %i.f, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %.tr1012, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !61
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %._crit_edge.loopexit, label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.tr1012, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, -2
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call i32 @Fraig_MarkTfi_rec(ptr noundef nonnull %0, ptr noundef %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1012, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !63
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.s, -2
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = add i32 %i.p, %accumulator.tr11          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !59
  %i.y = load i32, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %tailrecurse
  %accumulator.tr.lcssa.ph = phi i32 [ %i.v, %tailrecurse ], [ %accumulator.tr11, %.lr.ph ]
  %.0.ph = phi i32 [ 0, %tailrecurse ], [ 1, %.lr.ph ]
  %i.aa = add i32 %.0.ph, %accumulator.tr.lcssa.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %accumulator.ret.tr = phi i32 [ 0, %bb.a ], [ %i.aa, %._crit_edge.loopexit ]
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Fraig_MarkTfi2_rec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.f = phi i32 [ %i.ab, %tailrecurse ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = phi i32 [ %i.aa, %tailrecurse ], [ %i.c, %bb.a ]
  %i.h = phi ptr [ %i.z, %tailrecurse ], [ %i.b, %bb.a ]
  %.tr1522 = phi ptr [ %i.x, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %accumulator.tr21 = phi i32 [ %i.y, %tailrecurse ], [ 0, %bb.a ] ; 3 uses
  %i.i = add nsw i32 %i.f, -1
  %i.j = icmp eq i32 %i.g, %i.i
  store i32 %i.f, ptr %i.h, align 8, !tbaa !59
  br i1 %i.j, label %.loopexit.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.tr1522, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !61
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %.loopexit.loopexit, label %tailrecurse

tailrecurse:                                      ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1522, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, -2
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = tail call i32 @Fraig_MarkTfi2_rec(ptr noundef nonnull %0, ptr noundef %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1522, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, -2
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = add i32 %i.s, %accumulator.tr21          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !59  ; 2 uses
  %i.ab = load i32, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %.lr.ph, %bb.b, %tailrecurse
  %accumulator.tr20.ph = phi i32 [ %i.y, %tailrecurse ], [ %accumulator.tr21, %bb.b ], [ %accumulator.tr21, %.lr.ph ]
  %.0.ph = phi i32 [ 0, %tailrecurse ], [ 1, %bb.b ], [ 1, %.lr.ph ]
  %i.ad = add i32 %.0.ph, %accumulator.tr20.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %accumulator.ret.tr = phi i32 [ 0, %bb.a ], [ %i.ad, %.loopexit.loopexit ]
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Fraig_MarkTfi3_rec(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.f = phi i32 [ %i.aa, %tailrecurse ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = phi i32 [ %i.z, %tailrecurse ], [ %i.c, %bb.a ]
  %i.h = phi ptr [ %i.y, %tailrecurse ], [ %i.b, %bb.a ]
  %.tr1522 = phi ptr [ %i.x, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %accumulator.tr21 = phi i32 [ %2, %tailrecurse ], [ -1, %bb.a ] ; 3 uses
  %i.i = add nsw i32 %i.f, -1
  %i.j = icmp eq i32 %i.g, %i.i
  store i32 %i.f, ptr %i.h, align 8, !tbaa !59
  br i1 %i.j, label %.loopexit.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.tr1522, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !61
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %.loopexit.loopexit, label %tailrecurse

tailrecurse:                                      ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1522, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, -2
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = tail call i32 @Fraig_MarkTfi3_rec(ptr noundef nonnull %0, ptr noundef %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1522, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, -2
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %2 = and i32 %i.s, %accumulator.tr21            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !59   ; 2 uses
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !60  ; 2 uses
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %.lr.ph, %bb.b, %tailrecurse
  %accumulator.tr20.ph = phi i32 [ %2, %tailrecurse ], [ %accumulator.tr21, %bb.b ], [ %accumulator.tr21, %.lr.ph ]
  %.0.ph = phi i32 [ 1, %tailrecurse ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  %3 = and i32 %.0.ph, %accumulator.tr20.ph
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %accumulator.ret.tr = phi i32 [ 1, %bb.a ], [ %3, %.loopexit.loopexit ]
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nofree nounwind uwtable
define void @Fraig_VarsStudy(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !60
  %i.d = tail call i32 @Fraig_MarkTfi_rec(ptr noundef %0, ptr noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !31
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !59
  %i.l = load i32, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = add nsw i32 %i.l, 1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !60
  %i.p = tail call i32 @Fraig_MarkTfi2_rec(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.p) ; 0 uses
  %i.r = load i32, ptr %i.a, align 8, !tbaa !60
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.a, align 8, !tbaa !60
  %i.t = tail call i32 @Fraig_MarkTfi3_rec(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %.not = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not, i32 45, i32 43
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.u) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @Fraig_ManCreateSolver(ptr noundef) local_unnamed_addr #2

declare i32 @Msat_SolverReadVarNum(ptr noundef) local_unnamed_addr #2

declare i32 @Msat_SolverAddVar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @Fraig_OrderVariables(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((16, 20)) %1, ptr nofree noundef captures(none) initializes((16, 20)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = tail call i32 @Msat_IntVecReadSize(ptr noundef %i.g) #10
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !64
  tail call void @Msat_IntVecFill(ptr noundef %i.i, i32 noundef %i.h, i32 noundef 0) #10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 8 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  tail call void @Msat_IntVecClear(ptr noundef %i.k) #10
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.m = load i32, ptr %1, align 8, !tbaa !41
  tail call void @Msat_IntVecPush(ptr noundef %i.l, i32 noundef %i.m) #10
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.o = load i32, ptr %1, align 8, !tbaa !41
  tail call void @Msat_IntVecWriteEntry(ptr noundef %i.n, i32 noundef %i.o, i32 noundef 1) #10
  %i.p = load i32, ptr %i.c, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.p, ptr %i.q, align 8, !tbaa !59
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.s = load i32, ptr %2, align 8, !tbaa !41
  tail call void @Msat_IntVecPush(ptr noundef %i.r, i32 noundef %i.s) #10
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.u = load i32, ptr %2, align 8, !tbaa !41
  tail call void @Msat_IntVecWriteEntry(ptr noundef %i.t, i32 noundef %i.u, i32 noundef 1) #10
  %i.v = load i32, ptr %i.c, align 8, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.v, ptr %i.w, align 8, !tbaa !59
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.y = tail call i32 @Msat_IntVecReadSize(ptr noundef %i.x) #10
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph70, label %._crit_edge

.lr.ph70:                                         ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 38 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph70, %.loopexit
  %.06269 = phi i32 [ 0, %.lr.ph70 ], [ %i.iq, %.loopexit ] ; 2 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.af = call i32 @Msat_IntVecReadEntry(ptr noundef %i.ae, i32 noundef %.06269) #10
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = sext i32 %i.af to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30 ; 10 uses
  %i.am = call i32 @Fraig_NodeIsAnd(ptr noundef %i.al) #10
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 8 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.aq = call i32 @Fraig_NodeIsMuxType(ptr noundef nonnull %i.al) #10
  %.not63 = icmp eq i32 %i.aq, 0
  br i1 %.not63, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = call ptr @Fraig_NodeVecAlloc(i32 noundef 4) #10 ; 2 uses
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !65
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = and i64 %i.au, -2
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !62
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, -2
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = call i32 @Fraig_NodeVecPushUnique(ptr noundef %i.ar, ptr noundef %i.bb) #10 ; 0 uses
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !65
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, -2
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, -2
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = call i32 @Fraig_NodeVecPushUnique(ptr noundef %i.bd, ptr noundef %i.bm) #10 ; 0 uses
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !65
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !63
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = and i64 %i.br, -2
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !62
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = and i64 %i.bw, -2
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = call i32 @Fraig_NodeVecPushUnique(ptr noundef %i.bo, ptr noundef %i.by) #10 ; 0 uses
  %i.ca = load ptr, ptr %i.an, align 8, !tbaa !65
  %i.cb = load ptr, ptr %i.bp, align 8, !tbaa !63
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = and i64 %i.cc, -2
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !63
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = and i64 %i.ch, -2
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = call i32 @Fraig_NodeVecPushUnique(ptr noundef %i.ca, ptr noundef %i.cj) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.cl = call ptr @Fraig_NodeRecognizeMux(ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10
  %i.cm = load i32, ptr %i.al, align 8, !tbaa !41
  %i.cn = load i32, ptr %i.cl, align 8, !tbaa !41
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = and i64 %i.cp, -2
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !41 ; 2 uses
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.cu = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cv = and i64 %i.cu, -2
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !41 ; 2 uses
  %i.cy = trunc i64 %i.cp to i32
  %i.cz = and i32 %i.cy, 1
  %i.da = trunc i64 %i.cu to i32
  %i.db = and i32 %i.da, 1
  %i.dc = load ptr, ptr %i.ab, align 8, !tbaa !45
  call void @Msat_IntVecClear(ptr noundef %i.dc) #10
  %i.dd = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.de = shl nsw i32 %i.cn, 1                    ; 3 uses
  %i.df = or disjoint i32 %i.de, 1                ; 2 uses
  call void @Msat_IntVecPush(ptr noundef %i.dd, i32 noundef %i.df) #10
  %i.dg = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.dh = shl nsw i32 %i.cs, 1
  %i.di = or disjoint i32 %i.cz, %i.dh            ; 3 uses
end_hunk_0
