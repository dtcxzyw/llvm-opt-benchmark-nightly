Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/proto?download=true
inline.NumInlined: 127
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@logicalrep_read_update:bb.a
  %or.cond8 = icmp eq i32 %i.h, 75
  br i1 %or.cond8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @logicalrep_read_tuple(ptr noundef %0, ptr noundef %2)
  store i8 1, ptr %1, align 1
  %i.i = tail call i32 @pq_getmsgbyte(ptr noundef %0) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %1, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.in = phi i32 [ %i.i, %bb.d ], [ %i.b, %bb.e ]
  %sext27 = shl i32 %.0.in, 24                    ; 2 uses
  %.not = icmp eq i32 %sext27, 1308622848
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = ashr exact i32 %sext27, 24
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.15, i32 noundef %i.j) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 517, ptr noundef nonnull @__func__.logicalrep_read_update) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @logicalrep_read_tuple(ptr noundef %0, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @logicalrep_write_delete(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  tail call void @enlargeStringInfo(ptr noundef %0, i32 noundef 1) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !167
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !167 ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i8 68, ptr %i.e, align 1, !noalias !167
  %i.f = add i32 %i.c, 1
  store i32 %i.f, ptr %i.b, align 8, !alias.scope !167
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 4) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.g = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !168
  %i.i = load i32, ptr %i.b, align 8, !alias.scope !168 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  store i32 %i.g, ptr %i.k, align 1, !noalias !168
  %i.l = add i32 %i.i, 4
  store i32 %i.l, ptr %i.b, align 8, !alias.scope !168
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = load i32, ptr %i.m, align 8
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 4) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = load ptr, ptr %0, align 8, !alias.scope !169
  %i.q = load i32, ptr %i.b, align 8, !alias.scope !169 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  store i32 %i.o, ptr %i.s, align 1, !noalias !169
  %i.t = add i32 %i.q, 4
  store i32 %i.t, ptr %i.b, align 8, !alias.scope !169
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 130
  %i.x = load i8, ptr %i.w, align 2
  %i.y = icmp eq i8 %i.x, 102
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 1) #8
  %. = select i1 %i.y, i8 79, i8 75
  %i.z = load ptr, ptr %0, align 8
  %i.aa = load i32, ptr %i.b, align 8             ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  store i8 %., ptr %i.ac, align 1, !noalias !5
  %storemerge = add i32 %i.aa, 1
  store i32 %storemerge, ptr %i.b, align 8
  %i.ad = getelementptr i8, ptr %2, i64 64
  %.val = load ptr, ptr %i.ad, align 8
  tail call fastcc void @logicalrep_write_tuple(ptr noundef nonnull %0, ptr %.val, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5, i32 noundef %6)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @logicalrep_read_delete(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pq_getmsgint(ptr noundef %0, i32 noundef 4) #8
  %i.b = tail call i32 @pq_getmsgbyte(ptr noundef %0) #8 ; 2 uses
  %i.c = and i32 %i.b, 251
  %or.cond.not = icmp eq i32 %i.c, 75
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sext = shl i32 %i.b, 24
  %i.d = ashr exact i32 %sext, 24
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.16, i32 noundef %i.d) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 572, ptr noundef nonnull @__func__.logicalrep_read_delete) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @logicalrep_read_tuple(ptr noundef %0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @logicalrep_write_truncate(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  tail call void @enlargeStringInfo(ptr noundef %0, i32 noundef 1) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !181 ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i8 84, ptr %i.e, align 1, !noalias !181
  %i.f = add i32 %i.c, 1
  store i32 %i.f, ptr %i.b, align 8, !alias.scope !181
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 4) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.g = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !182
  %i.i = load i32, ptr %i.b, align 8, !alias.scope !182 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  store i32 %i.g, ptr %i.k, align 1, !noalias !182
  %i.l = add i32 %i.i, 4
  store i32 %i.l, ptr %i.b, align 8, !alias.scope !182
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 4) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.m = tail call i32 @llvm.bswap.i32(i32 %2)
  %i.n = load ptr, ptr %0, align 8, !alias.scope !183
  %i.o = load i32, ptr %i.b, align 8, !alias.scope !183 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %i.p
  store i32 %i.m, ptr %i.q, align 1, !noalias !183
  %i.r = add i32 %i.o, 4
  store i32 %i.r, ptr %i.b, align 8, !alias.scope !183
  %spec.select = zext i1 %4 to i8                 ; 2 uses
  %i.s = or disjoint i8 %spec.select, 2
  %.1 = select i1 %5, i8 %i.s, i8 %spec.select
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 1) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.t = load ptr, ptr %0, align 8, !alias.scope !184
  %i.u = load i32, ptr %i.b, align 8, !alias.scope !184 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 %i.v
  store i8 %.1, ptr %i.w, align 1, !noalias !184
  %i.x = add i32 %i.u, 1
  store i32 %i.x, ptr %i.b, align 8, !alias.scope !184
  %i.y = icmp sgt i32 %2, 0
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 4) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !185
  %i.ad = load i32, ptr %i.b, align 8, !alias.scope !185 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae
  store i32 %i.ab, ptr %i.af, align 1, !noalias !185
  %i.ag = add i32 %i.ad, 4
  store i32 %i.ag, ptr %i.b, align 8, !alias.scope !185
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !180

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @logicalrep_read_truncate(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pq_getmsgint(ptr noundef %0, i32 noundef 4) #8 ; 2 uses
  %i.b = tail call i32 @pq_getmsgint(ptr noundef %0, i32 noundef 1) #8
  %i.c = trunc i32 %i.b to i8                     ; 2 uses
  %i.d = and i8 %i.c, 1
  store i8 %i.d, ptr %1, align 1
  %3 = lshr i8 %i.c, 1
  %i.e = and i8 %3, 1
  store i8 %i.e, ptr %2, align 1
  %i.f = icmp sgt i32 %i.a, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi ptr [ %i.h, %.lr.ph ], [ null, %bb.a ]
  %.01112 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]
  %i.g = tail call i32 @pq_getmsgint(ptr noundef %0, i32 noundef 4) #8
  %i.h = tail call ptr @lappend_oid(ptr noundef %.013, i32 noundef %i.g) #8 ; 2 uses
  %i.i = add nuw nsw i32 %.01112, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.i, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !186

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %i.h, %.lr.ph ]
  ret ptr %.0.lcssa
}

declare ptr @lappend_oid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @logicalrep_write_message(ptr noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4, i64 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  tail call void @enlargeStringInfo(ptr noundef %0, i32 noundef 1) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !197
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !197 ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i8 77, ptr %i.e, align 1, !noalias !197
  %i.f = add i32 %i.c, 1
  store i32 %i.f, ptr %i.b, align 8, !alias.scope !197
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 4) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.g = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !198
  %i.i = load i32, ptr %i.b, align 8, !alias.scope !198 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  store i32 %i.g, ptr %i.k, align 1, !noalias !198
  %i.l = add i32 %i.i, 4
  store i32 %i.l, ptr %i.b, align 8, !alias.scope !198
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %spec.select = zext i1 %3 to i8
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 1) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.m = load ptr, ptr %0, align 8, !alias.scope !199
  %i.n = load i32, ptr %i.b, align 8, !alias.scope !199 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  store i8 %spec.select, ptr %i.p, align 1, !noalias !199
  %i.q = add i32 %i.n, 1
  store i32 %i.q, ptr %i.b, align 8, !alias.scope !199
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 8) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.r = tail call i64 @llvm.bswap.i64(i64 %2)
  %i.s = load ptr, ptr %0, align 8, !alias.scope !200
  %i.t = load i32, ptr %i.b, align 8, !alias.scope !200 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  store i64 %i.r, ptr %i.v, align 1, !noalias !200
  %i.w = add i32 %i.t, 8
  store i32 %i.w, ptr %i.b, align 8, !alias.scope !200
  tail call void @pq_sendstring(ptr noundef nonnull %0, ptr noundef %4) #8
  %i.x = trunc i64 %5 to i32                      ; 2 uses
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 4) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.z = load ptr, ptr %0, align 8, !alias.scope !201
  %i.aa = load i32, ptr %i.b, align 8, !alias.scope !201 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  store i32 %i.y, ptr %i.ac, align 1, !noalias !201
  %i.ad = add i32 %i.aa, 4
  store i32 %i.ad, ptr %i.b, align 8, !alias.scope !201
  tail call void @pq_sendbytes(ptr noundef nonnull %0, ptr noundef %6, i32 noundef %i.x) #8
  ret void
}

declare void @pq_sendbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @logicalrep_write_rel(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @enlargeStringInfo(ptr noundef %0, i32 noundef 1) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !222
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !222 ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i8 82, ptr %i.e, align 1, !noalias !222
  %i.f = add i32 %i.c, 1
  store i32 %i.f, ptr %i.b, align 8, !alias.scope !222
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 4) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.g = tail call i32 @llvm.bswap.i32(i32 %1)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !223
  %i.i = load i32, ptr %i.b, align 8, !alias.scope !223 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  store i32 %i.g, ptr %i.k, align 1, !noalias !223
  %i.l = add i32 %i.i, 4
  store i32 %i.l, ptr %i.b, align 8, !alias.scope !223
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = load i32, ptr %i.m, align 8
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 4) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = load ptr, ptr %0, align 8, !alias.scope !224
  %i.q = load i32, ptr %i.b, align 8, !alias.scope !224 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 %i.r
  store i32 %i.o, ptr %i.s, align 1, !noalias !224
  %i.t = add i32 %i.q, 4
  store i32 %i.t, ptr %i.b, align 8, !alias.scope !224
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = icmp eq i32 %i.x, 11
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 1) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.z = load ptr, ptr %0, align 8, !alias.scope !225
  %i.aa = load i32, ptr %i.b, align 8, !alias.scope !225 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !noalias !225
  %i.ad = add i32 %i.aa, 1
  store i32 %i.ad, ptr %i.b, align 8, !alias.scope !225
  br label %logicalrep_write_namespace.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = tail call ptr @get_namespace_name(i32 noundef %i.x) #8 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.45, i32 noundef %i.x) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1040, ptr noundef nonnull @__func__.logicalrep_write_namespace) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @pq_sendstring(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) #8
  br label %logicalrep_write_namespace.exit

logicalrep_write_namespace.exit:                  ; preds = %bb.d, %bb.g
  %i.ai = load ptr, ptr %i.u, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  tail call void @pq_sendstring(ptr noundef nonnull %0, ptr noundef nonnull %i.aj) #8
  %i.ak = load ptr, ptr %i.u, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 130
  %i.am = load i8, ptr %i.al, align 2
  tail call void @enlargeStringInfo(ptr noundef nonnull %0, i32 noundef 1) #8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.an = load ptr, ptr %0, align 8, !alias.scope !226
  %i.ao = load i32, ptr %i.b, align 8, !alias.scope !226 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap
  store i8 %i.am, ptr %i.aq, align 1, !noalias !226
  %i.ar = add i32 %i.ao, 1
  store i32 %i.ar, ptr %i.b, align 8, !alias.scope !226
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.at = load ptr, ptr %i.as, align 8            ; 7 uses
  %i.au = load i32, ptr %i.at, align 8            ; 7 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %logicalrep_write_namespace.exit
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.aw = icmp eq i32 %4, 115
  %wide.trip.count71.i = zext nneg i32 %i.au to i64 ; 3 uses
  %i.ax = shl nuw nsw i64 %wide.trip.count71.i, 3
  %i.ay = getelementptr i8, ptr %i.at, i64 %i.ax  ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 32     ; 6 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 123
  %i.bb = load i8, ptr %i.ba, align 1, !range !4, !noundef !5
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  br i1 %i.aw, label %.lr.ph.split.us.split.us.preheader.i, label %.lr.ph.split.us.split.preheader.i
end_hunk_0
