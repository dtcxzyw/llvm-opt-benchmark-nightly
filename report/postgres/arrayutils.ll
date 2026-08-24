Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/arrayutils?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mda_get_prod:bb.a
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2                      ; 2 uses
  %i.n = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %i.o = sub nsw i64 %i.n, %i.m
  %diff.check = icmp ugt i64 %i.o, -32
  %i.p = add i64 %i.m, %i.b
  %i.q = add i64 %i.n, %i.a
  %i.r = sub i64 %i.q, %i.p
  %diff.check12 = icmp ugt i64 %i.r, -32
  %conflict.rdx = or i1 %diff.check, %diff.check12
  br i1 %conflict.rdx, label %.lr.ph.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 3 uses
  %i.s = sub nsw i64 %i.h, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = sub i64 %i.h, %index                     ; 2 uses
  %i.u = shl i64 %i.t, 32
  %i.v = add i64 %i.u, 4294967296
  %i.w = ashr exact i64 %i.v, 32                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -28
  %wide.load = load <4 x i32>, ptr %i.y, align 4
  %wide.load13 = load <4 x i32>, ptr %i.z, align 4
  %i.aa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.w ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -12
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -28
  %wide.load14 = load <4 x i32>, ptr %i.ab, align 4
  %wide.load15 = load <4 x i32>, ptr %i.ac, align 4
  %i.ad = mul <4 x i32> %wide.load14, %wide.load
  %i.ae = mul <4 x i32> %wide.load15, %wide.load13
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.t ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -12
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -28
  store <4 x i32> %i.ad, ptr %i.ag, align 4
  store <4 x i32> %i.ae, ptr %i.ah, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader17

.lr.ph.preheader17:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.preheader ], [ %i.s, %middle.block ] ; 6 uses
  %i.aj = and i64 %indvars.iv.ph, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aj, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader17
  %i.ak = shl i64 %indvars.iv.ph, 32
  %sext.prol = ashr exact i64 %i.ak, 32
  %i.al = or disjoint i64 %sext.prol, 1           ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds [4 x i8], ptr %1, i64 %i.al
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = mul i32 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store i32 %i.aq, ptr %i.ar, align 4
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader17
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader17 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.as = icmp eq i64 %indvars.iv.ph, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.at = shl i64 %indvars.iv, 32
  %sext = add i64 %i.at, 4294967296
  %i.au = ashr exact i64 %sext, 32                ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %2, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = getelementptr inbounds [4 x i8], ptr %1, i64 %i.au
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = mul i32 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.az, ptr %i.ba, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bb = shl i64 %indvars.iv.next, 32
  %sext.1 = add i64 %i.bb, 4294967296
  %i.bc = ashr exact i64 %sext.1, 32              ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bc
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = mul i32 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store i32 %i.bh, ptr %i.bi, align 4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2
  %.not.1 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mda_get_offset_values(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = add i32 %0, -1                           ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b
  store i32 0, ptr %i.c, align 4
  %i.d = add i32 %0, -2                           ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %.lr.ph24.preheader, label %._crit_edge25

.lr.ph24.preheader:                               ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  br label %.lr.ph24

.lr.ph24:                                         ; preds = %.lr.ph24.preheader, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph24.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv29 = phi i64 [ %i.f, %.lr.ph24.preheader ], [ %indvars.iv.next30, %._crit_edge ] ; 5 uses
  %indvars.iv = phi i32 [ %i.a, %.lr.ph24.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv29
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -1                         ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv29 ; 4 uses
  store i32 %i.i, ptr %i.j, align 4
  %i.k = trunc i64 %indvars.iv29 to i32
  %i.l = add i32 %i.k, 1
  %i.m = icmp slt i32 %i.l, %0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph24
  %i.n = sext i32 %indvars.iv to i64              ; 4 uses
  %i.o = and i32 %indvar, 1
  %lcmp.mod.not.not = icmp eq i32 %i.o, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.q, -1
  %i.s = getelementptr inbounds [4 x i8], ptr %2, i64 %i.n
  %i.t = load i32, ptr %i.s, align 4
  %i.u = mul i32 %i.r, %i.t
  %i.v = sub i32 %i.i, %i.u                       ; 2 uses
  store i32 %i.v, ptr %i.j, align 4
  %indvars.iv.next27.prol = add nsw i64 %i.n, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv26.unr = phi i64 [ %i.n, %.lr.ph.preheader ], [ %indvars.iv.next27.prol, %.lr.ph.prol ]
  %storemerge20.unr = phi i32 [ %i.i, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %i.w = icmp eq i32 %indvar, 0
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv26 = phi i64 [ %indvars.iv.next27.1, %.lr.ph ], [ %indvars.iv26.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %storemerge20 = phi i32 [ %i.ak, %.lr.ph ], [ %storemerge20.unr, %.lr.ph.prol.loopexit ]
  %i.x = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv26
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add i32 %i.y, -1
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv26
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = mul i32 %i.z, %i.ab
  %i.ad = sub i32 %storemerge20, %i.ac            ; 2 uses
  store i32 %i.ad, ptr %i.j, align 4
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next27
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add i32 %i.af, -1
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next27
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = mul i32 %i.ag, %i.ai
  %i.ak = sub i32 %i.ad, %i.aj                    ; 2 uses
  store i32 %i.ak, ptr %i.j, align 4
  %indvars.iv.next27.1 = add nsw i64 %indvars.iv26, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next27.1 to i32
  %exitcond.not.1 = icmp eq i32 %0, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph24
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, -1
  %i.al = icmp sgt i64 %indvars.iv29, 0
  %indvars.iv.next = add i32 %indvars.iv, -1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.al, label %.lr.ph24, label %._crit_edge25, !llvm.loop !15

._crit_edge25:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 2147483647) i32 @mda_next_tuple(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %0, -1                       ; 3 uses
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, 1
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.c
  %i.h = load i32, ptr %i.g, align 4
  %i.i = srem i32 %i.f, %i.h                      ; 2 uses
  store i32 %i.i, ptr %i.d, align 4
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %.critedge24, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %i.q, %bb.c ], [ %i.i, %bb.b ]
  %.027 = phi i32 [ %3, %bb.c ], [ %i.b, %bb.b ]  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %3 = add nsw i32 %.027, -1                      ; 3 uses
  %4 = zext nneg i32 %3 to i64                    ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add i32 %i.m, 1
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = srem i32 %i.n, %i.p                      ; 2 uses
  store i32 %i.q, ptr %i.l, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.critedge24, label %.lr.ph, !llvm.loop !16

.critedge24:                                      ; preds = %bb.c, %bb.b
  %i.r = load i32, ptr %1, align 4
  %.not23 = icmp eq i32 %i.r, 0
  %. = sext i1 %.not23 to i32
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.critedge24, %bb.a
  %.021 = phi i32 [ %., %.critedge24 ], [ -1, %bb.a ], [ %.027, %.lr.ph ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ArrayGetIntegerTypmods(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4
  %.not = icmp eq i32 %i.c, 2275
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.e = tail call i32 @errcode(i32 noundef 352845954) #8 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 242, ptr noundef nonnull @__func__.ArrayGetIntegerTypmods) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %.not12 = icmp eq i32 %i.h, 1
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.j = tail call i32 @errcode(i32 noundef 352845954) #8 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 247, ptr noundef nonnull @__func__.ArrayGetIntegerTypmods) #8
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = tail call zeroext i1 @array_contains_nulls(ptr noundef nonnull %0) #8
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.n = tail call i32 @errcode(i32 noundef 67108994) #8 ; 0 uses
  %i.o = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 252, ptr noundef nonnull @__func__.ArrayGetIntegerTypmods) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @deconstruct_array_builtin(ptr noundef nonnull %0, i32 noundef 2275, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef %1) #8
  %i.p = load i32, ptr %1, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = call ptr @palloc(i64 noundef %i.r) #8    ; 2 uses
  %i.t = load i32, ptr %1, align 4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.g ] ; 3 uses
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = call i32 @pg_strtoint32(ptr noundef %i.y) #8
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %i.z, ptr %i.aa, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %1, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.ae = load ptr, ptr %i.a, align 8
  call void @pfree(ptr noundef %i.ae) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %i.s
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @array_contains_nulls(ptr noundef) local_unnamed_addr #3

declare void @deconstruct_array_builtin(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @palloc(i64 noundef) local_unnamed_addr #3

declare i32 @pg_strtoint32(ptr noundef) local_unnamed_addr #3

declare void @pfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !5, !9}
!12 = distinct !{!12, !5, !9, !10}
!13 = distinct !{!13, !5, !9}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
end_hunk_0
