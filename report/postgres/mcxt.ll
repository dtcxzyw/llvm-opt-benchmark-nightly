Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/mcxt?download=true
inline.NumInlined: 43
inline.NumDeleted: 8
begin_hunk_0_@pstrdup
define dso_local ptr @pstrdup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @CurrentMemoryContext, align 8 ; 3 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #23
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr %i.g(ptr noundef %i.a, i64 noundef %i.c, i32 noundef 0) #18, !inline_history !35 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull readonly align 1 %0, i64 %i.c, i1 false)
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define dso_local ptr @pnstrdup(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strnlen(ptr noundef %0, i64 noundef %1) #23 ; 3 uses
  %i.b = add i64 %i.a, 1
  %i.c = load ptr, ptr @CurrentMemoryContext, align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr %i.g(ptr noundef %i.c, i64 noundef %i.b, i32 noundef 0) #18, !inline_history !15 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %0, i64 %i.a, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.i, align 1
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local ptr @pchomp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23 ; 2 uses
  %.not6 = icmp eq i64 %i.a, 0
  br i1 %.not6, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.07 = phi i64 [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 %.07
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 10
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.f = add i64 %.07, -1                         ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !36

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.07, %.lr.ph ]
  %i.g = tail call i64 @strnlen(ptr noundef nonnull readonly %0, i64 noundef %.0.lcssa) #23 ; 3 uses
  %i.h = add i64 %i.g, 1
  %i.i = load ptr, ptr @CurrentMemoryContext, align 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call ptr %i.m(ptr noundef %i.i, i64 noundef %i.h, i32 noundef 0) #18, !inline_history !37 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull readonly align 1 %0, i64 %i.g, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.g
  store i8 0, ptr %i.o, align 1
  ret ptr %i.n
}

; Function Attrs: cold noreturn nounwind uwtable
define internal void @BogusFree(ptr noundef %0) #11 {
bb.a:
  %i.a = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.b = getelementptr i8, ptr %0, i64 -8
  %.val = load i64, ptr %i.b, align 8
  %i.c = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, ptr noundef %0, i64 noundef %.val) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 312, ptr noundef nonnull @__func__.BogusFree) #18
  unreachable
}

; Function Attrs: cold noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @BogusRealloc(ptr noundef %0, i64 %1, i32 %2) #11 {
bb.a:
  %i.a = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.b = getelementptr i8, ptr %0, i64 -8
  %.val = load i64, ptr %i.b, align 8
  %i.c = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11, ptr noundef %0, i64 noundef %.val) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 319, ptr noundef nonnull @__func__.BogusRealloc) #18
  unreachable
}

; Function Attrs: cold noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @BogusGetChunkContext(ptr noundef %0) #11 {
bb.a:
  %i.a = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.b = getelementptr i8, ptr %0, i64 -8
  %.val = load i64, ptr %i.b, align 8
  %i.c = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.12, ptr noundef %0, i64 noundef %.val) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 327, ptr noundef nonnull @__func__.BogusGetChunkContext) #18
  unreachable
}

; Function Attrs: cold noreturn nounwind uwtable
define internal noundef i64 @BogusGetChunkSpace(ptr noundef %0) #11 {
bb.a:
  %i.a = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.b = getelementptr i8, ptr %0, i64 -8
  %.val = load i64, ptr %i.b, align 8
  %i.c = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.13, ptr noundef %0, i64 noundef %.val) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 335, ptr noundef nonnull @__func__.BogusGetChunkSpace) #18
  unreachable
}

declare ptr @AllocSetAlloc(ptr noundef, i64 noundef, i32 noundef) #1

declare void @AllocSetFree(ptr noundef) #1

declare ptr @AllocSetRealloc(ptr noundef, i64 noundef, i32 noundef) #1

declare void @AllocSetReset(ptr noundef) #1

declare void @AllocSetDelete(ptr noundef) #1

declare ptr @AllocSetGetChunkContext(ptr noundef) #1

declare i64 @AllocSetGetChunkSpace(ptr noundef) #1

declare zeroext i1 @AllocSetIsEmpty(ptr noundef) #1

declare void @AllocSetStats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare ptr @GenerationAlloc(ptr noundef, i64 noundef, i32 noundef) #1

declare void @GenerationFree(ptr noundef) #1

declare ptr @GenerationRealloc(ptr noundef, i64 noundef, i32 noundef) #1

declare void @GenerationReset(ptr noundef) #1

declare void @GenerationDelete(ptr noundef) #1

declare ptr @GenerationGetChunkContext(ptr noundef) #1

declare i64 @GenerationGetChunkSpace(ptr noundef) #1

declare zeroext i1 @GenerationIsEmpty(ptr noundef) #1

declare void @GenerationStats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare ptr @SlabAlloc(ptr noundef, i64 noundef, i32 noundef) #1

declare void @SlabFree(ptr noundef) #1

declare ptr @SlabRealloc(ptr noundef, i64 noundef, i32 noundef) #1

declare void @SlabReset(ptr noundef) #1

declare void @SlabDelete(ptr noundef) #1

declare ptr @SlabGetChunkContext(ptr noundef) #1

declare i64 @SlabGetChunkSpace(ptr noundef) #1

declare zeroext i1 @SlabIsEmpty(ptr noundef) #1

declare void @SlabStats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

declare void @AlignedAllocFree(ptr noundef) #1

declare ptr @AlignedAllocRealloc(ptr noundef, i64 noundef, i32 noundef) #1

declare ptr @AlignedAllocGetChunkContext(ptr noundef) #1

declare i64 @AlignedAllocGetChunkSpace(ptr noundef) #1

declare ptr @BumpAlloc(ptr noundef, i64 noundef, i32 noundef) #1

declare void @BumpFree(ptr noundef) #1

declare ptr @BumpRealloc(ptr noundef, i64 noundef, i32 noundef) #1

declare void @BumpReset(ptr noundef) #1

declare void @BumpDelete(ptr noundef) #1

declare ptr @BumpGetChunkContext(ptr noundef) #1

declare i64 @BumpGetChunkSpace(ptr noundef) #1

declare zeroext i1 @BumpIsEmpty(ptr noundef) #1

declare void @BumpStats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @MemoryContextStatsPrint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
bb.a:
  %i.a = alloca [110 x i8], align 16              ; 13 uses
  %i.b = load i32, ptr %1, align 4                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(9) @.str.17) #23
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %.031.ph = phi ptr [ %i.d, %bb.a ], [ %i.f, %bb.b ]
  store i8 0, ptr %i.a, align 16
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #23
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @.str.18, i64 3, i1 false) #18
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #23 ; 3 uses
  %i.l = trunc i64 %i.k to i32                    ; 7 uses
  %i.m = icmp sgt i32 %i.j, 100                   ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @pg_mbcliplen(ptr noundef nonnull %i.f, i32 noundef %i.j, i32 noundef 100) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.026 = phi i32 [ %i.n, %bb.d ], [ %i.j, %bb.c ] ; 9 uses
  %i.o = icmp sgt i32 %.026, 0
  br i1 %i.o, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.e
  %i.p = zext nneg i32 %.026 to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %.026, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.q = add nsw i32 %.026, -1
  %i.r = add i32 %i.q, %i.l
  %i.s = icmp slt i32 %i.r, %i.l
  br i1 %i.s, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check50 = icmp ult i32 %.026, 32
  br i1 %min.iters.check50, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.p, 28
  %n.vec = and i64 %i.p, 2147483616               ; 5 uses
  %i.u = trunc nuw nsw i64 %n.vec to i32          ; 2 uses
  %i.v = sub nsw i32 %.026, %i.u
  %i.w = add i32 %i.l, %i.u                       ; 2 uses
  %i.x = getelementptr i8, ptr %i.f, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = add i64 %i.k, %index
  %next.gep = getelementptr i8, ptr %i.f, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1
  %wide.load51 = load <16 x i8>, ptr %i.z, align 1
  %4 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load, <16 x i8> splat (i8 32))
  %5 = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load51, <16 x i8> splat (i8 32))
  %sext63.a = shl i64 %i.y, 32
  %i.aa = ashr exact i64 %sext63.a, 32
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <16 x i8> %4, ptr %i.ab, align 1
  store <16 x i8> %5, ptr %i.ac, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.p, 2147483644             ; 4 uses
  %i.ae = trunc nuw nsw i64 %n.vec54 to i32       ; 2 uses
  %i.af = sub nsw i32 %.026, %i.ae
  %i.ag = add i32 %i.l, %i.ae                     ; 2 uses
  %i.ah = getelementptr i8, ptr %i.f, i64 %n.vec54
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 3 uses
  %i.ai = add i64 %i.k, %index55
  %next.gep56 = getelementptr i8, ptr %i.f, i64 %index55
  %wide.load57 = load <4 x i8>, ptr %next.gep56, align 1
  %6 = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %wide.load57, <4 x i8> splat (i8 32))
  %sext64 = shl i64 %i.ai, 32
  %i.aj = ashr exact i64 %sext64, 32
  %i.ak = getelementptr inbounds i8, ptr %i.a, i64 %i.aj
  store <4 x i8> %6, ptr %i.ak, align 1
  %index.next58 = add nuw i64 %index55, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next58, %n.vec54
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %n.vec54, %i.p
  br i1 %cmp.n59, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.144.ph = phi i32 [ %.026, %iter.check ], [ %.026, %vector.scevcheck ], [ %i.v, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %.02743.ph = phi i32 [ %i.l, %iter.check ], [ %i.l, %vector.scevcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  %.13042.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.scevcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.144 = phi i32 [ %i.am, %.lr.ph ], [ %.144.ph, %.lr.ph.preheader ] ; 2 uses
  %.02743 = phi i32 [ %i.ap, %.lr.ph ], [ %.02743.ph, %.lr.ph.preheader ] ; 2 uses
  %.13042 = phi ptr [ %i.an, %.lr.ph ], [ %.13042.ph, %.lr.ph.preheader ] ; 2 uses
  %i.am = add nsw i32 %.144, -1
  %i.an = getelementptr inbounds nuw i8, ptr %.13042, i64 1
  %i.ao = load i8, ptr %.13042, align 1
  %spec.store.select = tail call i8 @llvm.umax.i8(i8 %i.ao, i8 32)
  %i.ap = add i32 %.02743, 1                      ; 2 uses
  %i.aq = sext i32 %.02743 to i64
  %i.ar = getelementptr inbounds i8, ptr %i.a, i64 %i.aq
  store i8 %spec.store.select, ptr %i.ar, align 1
  %i.as = icmp samesign ugt i32 %.144, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.e
  %.027.lcssa = phi i32 [ %i.l, %bb.e ], [ %i.ag, %vec.epilog.middle.block ], [ %i.w, %middle.block ], [ %i.ap, %.lr.ph ]
  %i.at = sext i32 %.027.lcssa to i64
  %i.au = getelementptr inbounds i8, ptr %i.a, i64 %i.at
  store i8 0, ptr %i.au, align 1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr = getelementptr inbounds i8, ptr %i.a, i64 %strlen
  store i32 3026478, ptr %endptr, align 1
  br label %bb.g

bb.g:                                             ; preds = %.thread, %._crit_edge, %bb.f
  %.03141 = phi ptr [ %.031.ph, %.thread ], [ %i.d, %._crit_edge ], [ %i.d, %bb.f ] ; 2 uses
  br i1 %3, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.g
  %i.av = icmp sgt i32 %i.b, 1
  br i1 %i.av, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %.preheader, %.lr.ph46
  %.12845 = phi i32 [ %i.ay, %.lr.ph46 ], [ 1, %.preheader ]
  %i.aw = load ptr, ptr @stderr, align 8
  %i.ax = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.14) #18 ; 0 uses
  %i.ay = add nuw nsw i32 %.12845, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %i.b
  br i1 %exitcond.not, label %._crit_edge47, label %.lr.ph46, !llvm.loop !41

._crit_edge47:                                    ; preds = %.lr.ph46, %.preheader
  %i.az = load ptr, ptr @stderr, align 8
  %i.ba = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.20, ptr noundef %.03141, ptr noundef %2, ptr noundef nonnull %i.a) #18 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bb = tail call zeroext i1 @errstart(i32 noundef 16, ptr noundef null) #18
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = tail call i32 @errhidestmt(i1 noundef zeroext true) #18 ; 0 uses
  %i.bd = tail call i32 @errhidecontext(i1 noundef zeroext true) #18 ; 0 uses
  %i.be = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.21, i32 noundef %i.b, ptr noundef %.03141, ptr noundef %2, ptr noundef nonnull %i.a) #18 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef 1093, ptr noundef nonnull @__func__.MemoryContextStatsPrint) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %._crit_edge47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare zeroext i1 @stack_is_too_deep() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

declare i32 @pg_mbcliplen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umax.v16i8(<16 x i8>, <16 x i8>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umax.v4i8(<4 x i8>, <4 x i8>) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noinline noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind returns_twice }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{!0, !8}
!1 = distinct !{!1, !8}
!2 = distinct !{ptr @MemoryContextResetOnly, null}
!3 = distinct !{!3, !8}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = !{ptr @MemoryContextResetOnly}
!12 = !{!"branch_weights", i32 2002, i32 2000}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{ptr @repalloc}
!15 = !{ptr @palloc}
!16 = !{ptr @repalloc_extended}
!17 = distinct !{ptr @MemoryContextDeleteChildren, ptr @MemoryContextDelete, null, null}
!18 = distinct !{ptr @MemoryContextDeleteChildren, ptr @MemoryContextDelete, null}
!19 = distinct !{ptr @MemoryContextDelete, null, null}
!20 = distinct !{ptr @MemoryContextDelete, null}
!21 = distinct !{null}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{null, null}
!25 = distinct !{null}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8}
!32 = !{ptr @palloc0}
!33 = !{ptr @palloc_extended}
!34 = !{ptr @MemoryContextAlloc}
!35 = !{ptr @MemoryContextStrdup, ptr @MemoryContextAlloc}
!36 = distinct !{!36, !8}
!37 = !{ptr @pnstrdup, ptr @palloc}
!38 = distinct !{!38, !8, !42, !43}
!39 = distinct !{!39, !8, !42, !43}
!40 = distinct !{!40, !8, !42}
!41 = distinct !{!41, !8}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"branch_weights", i32 4, i32 28}
end_hunk_0
