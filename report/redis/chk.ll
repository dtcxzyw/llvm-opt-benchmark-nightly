Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/chk?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@tryPromoteAndKickout:bb.a
  %exitcond.not.i = icmp eq i32 %i.bg, 16
  br i1 %exitcond.not.i, label %kickout.exit, label %bb.f, !llvm.loop !1

.split.loop.exit70.i.split.loop.exit79:           ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  br label %.split.loop.exit70.i

.split.loop.exit70.i:                             ; preds = %bb.g, %.split.loop.exit70.i.split.loop.exit79
  %.lcssa.i = phi ptr [ %i.bh, %.split.loop.exit70.i.split.loop.exit79 ], [ %i.ay, %bb.g ] ; 3 uses
  store i64 %.sroa.0.057.i, ptr %.lcssa.i, align 8, !tbaa !22
  %.sroa.5.0..0.3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i16 %.sroa.5.058.i, ptr %.sroa.5.0..0.3.sroa_idx.i, align 8, !tbaa !36
  %.sroa.7.0..0.3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.0..0.3.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.7.i, i64 6, i1 false), !tbaa.struct !43
  br label %kickout.exit

kickout.exit:                                     ; preds = %bb.f, %bb.i, %.split.loop.exit70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.d, %kickout.exit
  %.2 = phi i32 [ %spec.select47.1, %kickout.exit ], [ -1, %bb.d ], [ %.04155.lcssa.wide, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i64 @checkLobbyEntries(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly byval(%struct.fpAndIdx) align 8 captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i16, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !22
  %i.d = load ptr, ptr %0, align 8, !tbaa !28
  %sext = shl i64 %i.c, 32
  %i.e = ashr exact i64 %sext, 32
  %i.f = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i16, ptr %i.g, align 2, !tbaa !48
  %.not = icmp eq i16 %i.h, %i.b
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 34
  %i.j = load i8, ptr %i.i, align 2, !tbaa !49    ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.02435.lcssa.wide = phi i32 [ 0, %bb.b ], [ 1, %bb.g ] ; 3 uses
  %.lcssa37 = phi ptr [ %i.f, %bb.b ], [ %i.w, %bb.g ]
  %.lcssa = phi i8 [ %i.j, %bb.b ], [ %i.aa, %bb.g ]
  %i.l = getelementptr inbounds nuw i8, ptr %.lcssa37, i64 34
  %i.m = zext i8 %.lcssa to i64
  %i.n = add i64 %2, %i.m                         ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %i.n to i8
  br label %.thread.sink.split

bb.e:                                             ; preds = %bb.c
  %i.q = tail call i32 @tryPromoteAndKickout(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.fpAndIdx) align 8 %1, i64 noundef %i.n, i32 noundef %.02435.lcssa.wide) ; 2 uses
  %.not26 = icmp eq i32 %i.q, -1
  br i1 %.not26, label %.thread.sink.split, label %.thread

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28
  %sext.1 = shl i64 %i.s, 32
  %i.v = ashr exact i64 %sext.1, 32
  %i.w = getelementptr inbounds [40 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i16, ptr %i.x, align 2, !tbaa !48
  %.not.1 = icmp eq i16 %i.y, %i.b
  br i1 %.not.1, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 34
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !49   ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %.thread, label %bb.c

.thread.sink.split:                               ; preds = %bb.e, %bb.d
  %.sink = phi i8 [ %i.p, %bb.d ], [ 16, %bb.e ]
  store i8 %.sink, ptr %i.l, align 2, !tbaa !49
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.f, %bb.g, %bb.e
  %spec.select27 = phi i32 [ -1, %bb.g ], [ %i.q, %bb.e ], [ -1, %bb.f ], [ -1, %.thread.sink.split ]
  %spec.select = phi i32 [ -1, %bb.g ], [ %.02435.lcssa.wide, %bb.e ], [ -1, %bb.f ], [ %.02435.lcssa.wide, %.thread.sink.split ]
  %.sroa.5.0.insert.ext = zext i32 %spec.select27 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %spec.select to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @chkDecayCounter(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  switch i64 %2, label %bb.c [
    i64 0, label %._crit_edge
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = zext i8 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4144
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.a
  %i.d = load double, ptr %i.c, align 8, !tbaa !32
  %i.e = tail call i32 @rand() #17
  %i.f = sitofp i32 %i.e to double
  %i.g = fdiv double %i.f, f0x41DFFFFFFFC00000
  %i.h = fcmp olt double %i.g, %i.d
  %i.i = sext i1 %i.h to i8
  %.037 = add i8 %1, %i.i
  br label %._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.j = zext i8 %1 to i64                        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2088
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load double, ptr %i.l, align 8, !tbaa !32 ; 2 uses
  %i.n = fptoui double %i.m to i64
  %i.o = icmp ult i64 %2, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = uitofp i64 %2 to double
  %i.q = fdiv double %i.p, %i.m
  %i.r = tail call i32 @rand() #17
  %i.s = sitofp i32 %i.r to double
  %i.t = fdiv double %i.s, f0x41DFFFFFFFC00000
  %i.u = fcmp olt double %i.t, %i.q
  %i.v = sext i1 %i.u to i8
  %.138 = add i8 %1, %i.v
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.j
  %i.y = load double, ptr %i.x, align 8, !tbaa !32 ; 2 uses
  %i.z = fptoui double %i.y to i64
  %.not = icmp uge i64 %2, %i.z
  %.not42 = icmp eq i8 %1, 0
  %or.cond = or i1 %.not, %.not42
  br i1 %or.cond, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aa = zext i8 %1 to i32
  %i.ab = uitofp i64 %2 to double
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.041 = phi i32 [ %i.aa, %.lr.ph ], [ %.1, %bb.f ] ; 2 uses
  %.03540 = phi i32 [ 0, %.lr.ph ], [ %.136, %bb.f ] ; 3 uses
  %i.ac = sub nsw i32 %.041, %.03540
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = add nuw nsw i32 %i.ad, %.03540          ; 3 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !32
  %i.ai = fadd double %i.ah, %i.ab
  %i.aj = fcmp ult double %i.ai, %i.y             ; 2 uses
  %i.ak = add nuw nsw i32 %i.ae, 1
  %.136 = select i1 %i.aj, i32 %i.ak, i32 %.03540 ; 3 uses
  %.1 = select i1 %i.aj, i32 %.041, i32 %i.ae     ; 2 uses
  %i.al = icmp slt i32 %.136, %.1
  br i1 %i.al, label %bb.f, label %._crit_edge.loopexit, !llvm.loop !2

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.am = trunc i32 %.136 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d, %bb.e, %bb.a, %bb.b
  %.4 = phi i8 [ %1, %bb.a ], [ %.037, %bb.b ], [ %.138, %bb.d ], [ 0, %bb.e ], [ %i.am, %._crit_edge.loopexit ]
  ret i8 %.4
}

; Function Attrs: nounwind uwtable
define dso_local ptr @chkTopKUpdate(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %.sroa.6.i139 = alloca { ptr, i64 }, align 8    ; 4 uses
  %.sroa.6.i = alloca { ptr, i64 }, align 8       ; 4 uses
  %4 = alloca %struct.fpAndIdx, align 8           ; 9 uses
  %5 = alloca %struct.fpAndIdx, align 8           ; 14 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.bq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6216 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !42
  %i.d = add i64 %i.c, %3
  store i64 %i.d, ptr %i.b, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.e = sext i32 %2 to i64                       ; 5 uses
  %i.f = tail call i64 @XXH3_64bits_withSeed(ptr noundef readonly captures(none) %1, i64 noundef %i.e, i64 noundef 0) #19, !noalias !62 ; 4 uses
  %i.g = trunc i64 %i.f to i16                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %i.g, ptr %i.h, align 8, !tbaa !38, !alias.scope !62
  %i.i = lshr i64 %i.f, 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6228
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31, !noalias !62
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  %i.m = zext i32 %i.l to i64
  %i.n = and i64 %i.i, %i.m                       ; 3 uses
  store i64 %i.n, ptr %5, align 8, !tbaa !22, !alias.scope !62
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = trunc i64 %i.f to i32
  %i.q = and i32 %i.p, 65535
  %i.r = mul i32 %i.q, 1540483477
  %i.s = xor i32 %i.r, %i.o
  %i.t = and i32 %i.s, %i.l
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !22, !alias.scope !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i16, ptr %i.w, align 8              ; 5 uses
  %i.y = load i64, ptr %4, align 8, !tbaa !22
  %i.z = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %sext.i = shl i64 %i.y, 32
  %i.aa = ashr exact i64 %sext.i, 32
  %i.ab = getelementptr inbounds [40 x i8], ptr %i.z, i64 %i.aa ; 5 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %.not.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !41
  %i.af = icmp eq i16 %i.ae, %i.x
  br i1 %i.af, label %checkHeavyEntries.exit.thread214, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %spec.select49.1.i = phi i32 [ 1, %bb.c ], [ 0, %bb.b ]
  %.344.ph.i = phi i32 [ -1, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !40 ; 2 uses
  %.not.1.i = icmp eq i64 %i.ah, 0
  br i1 %.not.1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !41
  %i.ak = icmp eq i16 %i.aj, %i.x
  br i1 %i.ak, label %checkHeavyEntries.exit.thread214, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.344.ph.1.i = phi i32 [ %.344.ph.i, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %.3.ph.1.i = phi i32 [ %.344.ph.i, %bb.e ], [ %spec.select49.1.i, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !22
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28
  %sext.1.i = shl i64 %i.am, 32
  %i.ap = ashr exact i64 %sext.1.i, 32
  %i.aq = getelementptr inbounds [40 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !40 ; 2 uses
  %.not.197.i = icmp eq i64 %i.ar, 0
  br i1 %.not.197.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i16, ptr %i.as, align 8, !tbaa !41
  %i.au = icmp eq i16 %i.at, %i.x
  br i1 %i.au, label %checkHeavyEntries.exit.thread214, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.av = icmp eq i32 %.344.ph.1.i, -1            ; 2 uses
  %spec.select.198.i = select i1 %i.av, i32 1, i32 %.344.ph.1.i
  %spec.select49.199.i = select i1 %i.av, i32 0, i32 %.3.ph.1.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.344.ph.1100.i = phi i32 [ %spec.select.198.i, %bb.h ], [ %.344.ph.1.i, %bb.g ] ; 4 uses
  %.3.ph.1101.i = phi i32 [ %spec.select49.199.i, %bb.h ], [ %.3.ph.1.i, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !40 ; 2 uses
  %.not.1.1.i = icmp eq i64 %i.ax, 0
  br i1 %.not.1.1.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !41
  %i.ba = icmp eq i16 %i.az, %i.x
  br i1 %i.ba, label %checkHeavyEntries.exit.thread214, label %.thread68.i

bb.k:                                             ; preds = %bb.i
  %i.bb = icmp eq i32 %.344.ph.1100.i, -1         ; 2 uses
  %spec.select232 = select i1 %i.bb, i32 1, i32 %.3.ph.1101.i
  %spec.select233 = select i1 %i.bb, i32 1, i32 %.344.ph.1100.i
  br label %checkHeavyEntries.exit

.thread68.i:                                      ; preds = %bb.j
  %i.bc = icmp eq i32 %.344.ph.1100.i, -1
  br i1 %i.bc, label %bb.l, label %checkHeavyEntries.exit

checkHeavyEntries.exit.thread214:                 ; preds = %bb.c, %bb.e, %bb.g, %bb.j
  %.03787.lcssa.i = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.g ], [ 1, %bb.j ]
  %.084.lcssa.wide.i = phi i32 [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.g ], [ 1, %bb.j ]
  %.lcssa91.i = phi ptr [ %i.ab, %bb.c ], [ %i.ag, %bb.e ], [ %i.aq, %bb.g ], [ %i.aw, %bb.j ]
  %.lcssa.i = phi i64 [ %i.ac, %bb.c ], [ %i.ah, %bb.e ], [ %i.ar, %bb.g ], [ %i.ax, %bb.j ]
  %i.bd = add i64 %.lcssa.i, %3
  store i64 %i.bd, ptr %.lcssa91.i, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %checkLobbyEntries.exit

checkHeavyEntries.exit:                           ; preds = %bb.k, %.thread68.i
  %.3.ph.1.1108.i = phi i32 [ %.3.ph.1101.i, %.thread68.i ], [ %spec.select232, %bb.k ] ; 2 uses
  %.344.ph.1.1107.i = phi i32 [ %.344.ph.1100.i, %.thread68.i ], [ %spec.select233, %bb.k ] ; 2 uses
  %i.be = zext nneg i32 %.344.ph.1.1107.i to i64  ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.be
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !28
  %sext48.i = shl i64 %i.bg, 32
  %i.bj = ashr exact i64 %sext48.i, 32
  %i.bk = getelementptr inbounds [40 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = sext i32 %.3.ph.1.1108.i to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i16 %i.x, ptr %i.bn, align 8, !tbaa !41
  store i64 %3, ptr %i.bm, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %checkLobbyEntries.exit

bb.l:                                             ; preds = %.thread68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.sroa.0.0.copyload = load i64, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %sext.i122 = shl i64 %.sroa.0.0.copyload, 32
  %i.bo = ashr exact i64 %sext.i122, 32
  %i.bp = getelementptr inbounds [40 x i8], ptr %i.z, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !48
  %.not.i = icmp eq i16 %i.br, %.sroa.6.0.copyload
  br i1 %.not.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 34
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !49  ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.r, %bb.m
  %.02435.lcssa.wide.i = phi i32 [ 0, %bb.m ], [ 1, %bb.r ] ; 3 uses
  %.lcssa37.i = phi ptr [ %i.bp, %bb.m ], [ %i.ce, %bb.r ]
  %.lcssa.i128 = phi i8 [ %i.bt, %bb.m ], [ %i.ci, %bb.r ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.lcssa37.i, i64 34
  %i.bw = zext i8 %.lcssa.i128 to i64
  %i.bx = add i64 %3, %i.bw                       ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bz = trunc nuw nsw i64 %i.bx to i8
  br label %.thread.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.ca = tail call i32 @tryPromoteAndKickout(ptr noundef nonnull readonly %0, ptr noundef nonnull byval(%struct.fpAndIdx) align 8 %5, i64 noundef %i.bx, i32 noundef %.02435.lcssa.wide.i) ; 2 uses
  %.not26.i = icmp eq i32 %i.ca, -1
  br i1 %.not26.i, label %.thread.sink.split.i, label %checkLobbyEntries.exit

bb.q:                                             ; preds = %bb.m, %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !28
  %sext.1.i123 = shl i64 %.sroa.5.0.copyload, 32
  %i.cd = ashr exact i64 %sext.1.i123, 32
  %i.ce = getelementptr inbounds [40 x i8], ptr %i.cc, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !48
  %.not.1.i124 = icmp eq i16 %i.cg, %.sroa.6.0.copyload
  br i1 %.not.1.i124, label %bb.r, label %.preheader.preheader

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 34
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !49  ; 2 uses
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %.preheader.preheader, label %bb.n

.thread.sink.split.i:                             ; preds = %bb.p, %bb.o
  %.sink.i = phi i8 [ %i.bz, %bb.o ], [ 16, %bb.p ]
  store i8 %.sink.i, ptr %i.bv, align 2, !tbaa !49
  br label %checkLobbyEntries.exit

.preheader.preheader:                             ; preds = %bb.r, %bb.q
  %i.ck = load ptr, ptr %0, align 8, !tbaa !28
  %sext = shl nuw i64 %i.n, 32
  %i.cl = ashr exact i64 %sext, 32
  %i.cm = getelementptr inbounds [40 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 34
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !47
  %.not114 = icmp eq i8 %i.co, 0
  br i1 %.not114, label %bb.s, label %.preheader.1

bb.s:                                             ; preds = %.preheader.1, %.preheader.preheader
  %.0103178.lcssa.wide = phi i32 [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ] ; 2 uses
  %.lcssa183 = phi ptr [ %i.cm, %.preheader.preheader ], [ %i.cw, %.preheader.1 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.lcssa183, i64 34 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.lcssa183, i64 32
  store i16 %i.g, ptr %i.cq, align 8, !tbaa !46
  %i.cr = icmp ult i64 %3, 16
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cs = trunc nuw nsw i64 %3 to i8
  store i8 %i.cs, ptr %i.cp, align 2, !tbaa !47
  br label %chkHeapifyDown.exit

bb.u:                                             ; preds = %bb.s
  %i.ct = tail call i32 @tryPromoteAndKickout(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.fpAndIdx) align 8 %5, i64 noundef %3, i32 noundef %.0103178.lcssa.wide) ; 2 uses
end_hunk_0
begin_hunk_1_@chkTopKUpdate:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i139)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i139, ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i64 16, i1 false), !tbaa.struct !23
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge46.i145, %bb.bl
  %.039.i143 = phi i64 [ 0, %bb.bl ], [ %.1.i144, %._crit_edge46.i145 ]
  %.1.i144 = phi i64 [ %.0.i141, %bb.bl ], [ %.2.i146, %._crit_edge46.i145 ] ; 4 uses
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr %i.jh, i64 %.039.i143
  %i.ku = getelementptr inbounds nuw [24 x i8], ptr %i.jh, i64 %.1.i144 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kt, ptr noundef nonnull align 8 dereferenceable(24) %i.ku, i64 24, i1 false)
  %i.kv = icmp ult i64 %i.kj, %.1.i144
  br i1 %i.kv, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kw = shl nuw i64 %.1.i144, 1                 ; 2 uses
  %i.kx = or disjoint i64 %i.kw, 1                ; 3 uses
  %i.ky = add nuw i64 %i.kw, 2                    ; 3 uses
  %i.kz = icmp ult i64 %i.ky, %i.kg
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.jh, i64 %i.kx
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !20 ; 3 uses
  br i1 %i.kz, label %bb.bo, label %._crit_edge46.i145

bb.bo:                                            ; preds = %bb.bn
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.jh, i64 %i.ky
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !20 ; 2 uses
  %i.le = icmp ugt i64 %i.lb, %i.ld
  %spec.select45.i148 = select i1 %i.le, i64 %i.ky, i64 %i.kx
  %i.lf = tail call i64 @llvm.umin.i64(i64 %i.lb, i64 %i.ld)
  br label %._crit_edge46.i145

._crit_edge46.i145:                               ; preds = %bb.bo, %bb.bn
  %i.lg = phi i64 [ %i.lf, %bb.bo ], [ %i.lb, %bb.bn ]
  %.2.i146 = phi i64 [ %spec.select45.i148, %bb.bo ], [ %i.kx, %bb.bn ]
  %i.lh = icmp ult i64 %i.lg, %i.kr
  br i1 %i.lh, label %bb.bm, label %bb.bp, !llvm.loop !0

bb.bp:                                            ; preds = %._crit_edge46.i145, %bb.bm
  store i64 %i.kr, ptr %i.ku, align 8
  %.sroa.6.0..sroa_idx2.i147 = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i147, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i139, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i139)
  br label %chkHeapifyDown.exit

chkHeapifyDown.exit:                              ; preds = %.thread161, %select.unfold, %bb.t, %bb.v, %bb.bp, %._crit_edge.i140, %sdsAllocSize.exit138, %bb.aw, %._crit_edge.i, %bb.ap, %chkCheckExistInHeap.exit, %bb.ad, %checkLobbyEntries.exit
  %.0 = phi ptr [ null, %bb.ad ], [ null, %checkLobbyEntries.exit ], [ %i.ii, %bb.bp ], [ null, %bb.aw ], [ null, %chkCheckExistInHeap.exit ], [ null, %bb.ap ], [ null, %._crit_edge.i ], [ %i.ii, %sdsAllocSize.exit138 ], [ %i.ii, %._crit_edge.i140 ], [ null, %bb.v ], [ null, %bb.t ], [ null, %select.unfold ], [ null, %.thread161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.bq

bb.bq:                                            ; preds = %bb.a, %chkHeapifyDown.exit
  %.1 = phi ptr [ %.0, %chkHeapifyDown.exit ], [ null, %bb.a ]
  ret ptr %.1
}

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @cmpchkHeapBucket(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !20
  %i.b = load i64, ptr %1, align 8, !tbaa !20
  %i.c = tail call i32 @llvm.ucmp.i32.i64(i64 %i.b, i64 %i.a)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @chkTopKList(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6224 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !30
  %i.c = sext i32 %i.b to i64
  %i.d = mul nsw i64 %i.c, 24
  %i.e = tail call noalias ptr @zmalloc(i64 noundef %i.d) #20 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = load i32, ptr %i.a, align 8, !tbaa !30
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = mul nsw i64 %i.i, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.e, ptr align 8 %i.g, i64 %i.j, i1 false)
  tail call void @qsort(ptr noundef %i.e, i64 noundef %i.i, i64 noundef 24, ptr noundef nonnull @cmpchkHeapBucket) #17
  ret ptr %i.e
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @chkTopKGetMemoryUsage(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #14

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = distinct !{!2, !24}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{i32 1, !"ThinLTO", i32 0}
!10 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!11 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"long", !13, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"", !16, i64 0, !18, i64 8, !16, i64 16}
!20 = !{!19, !16, i64 0}
!21 = !{!18, !18, i64 0}
!22 = !{!16, !16, i64 0}
!23 = !{i64 0, i64 8, !21, i64 8, i64 8, !22}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"double", !13, i64 0}
!26 = !{!"chkTopK", !13, i64 0, !17, i64 16, !16, i64 24, !13, i64 32, !13, i64 2088, !13, i64 4144, !25, i64 6200, !25, i64 6208, !16, i64 6216, !14, i64 6224, !14, i64 6228}
!27 = !{!26, !16, i64 24}
!28 = !{!17, !17, i64 0}
!29 = !{!26, !17, i64 16}
!30 = !{!26, !14, i64 6224}
!31 = !{!26, !14, i64 6228}
!32 = !{!25, !25, i64 0}
!33 = !{!19, !18, i64 8}
!34 = !{!13, !13, i64 0}
!35 = !{!"short", !13, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"", !13, i64 0, !35, i64 16}
!38 = !{!37, !35, i64 16}
!39 = !{!"", !16, i64 0, !35, i64 8}
!40 = !{!39, !16, i64 0}
!41 = !{!39, !35, i64 8}
!42 = !{!26, !16, i64 6216}
!43 = !{}
!44 = !{!"", !35, i64 0, !13, i64 2}
!45 = !{!"", !13, i64 0, !44, i64 32}
!46 = !{!45, !35, i64 32}
!47 = !{!45, !13, i64 34}
!48 = !{!44, !35, i64 0}
!49 = !{!44, !13, i64 2}
!50 = distinct !{!50, !24}
!51 = !{!"branch_weights", i32 4000000, i32 4001}
!52 = !{!26, !25, i64 6200}
!53 = !{!26, !25, i64 6208}
!54 = distinct !{!54, !24}
!57 = distinct !{!57, !24}
!59 = !{!19, !16, i64 16}
!60 = distinct !{!60, i1 false, !"generateItemFpAndIdxs"}
!61 = distinct !{!61, !60, !"generateItemFpAndIdxs: argument 0"}
!62 = !{!61}
end_hunk_1
