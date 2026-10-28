Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_backup_archiver?download=true
inline.NumInlined: 114
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@warn_or_exit_horribly:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.d = load i32, ptr %i.c, align 8
  %.not30 = icmp eq i32 %i.d, 1
  br i1 %.not30, label %bb.e, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load i32, ptr %i.e, align 8
  %.not = icmp eq i32 %i.f, 2
  br i1 %.not, label %bb.e, label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.h = load i32, ptr %i.g, align 8
  %.not31 = icmp eq i32 %i.h, 3
  br i1 %.not31, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.str.82.sink = phi ptr [ @.str.81, %bb.c ], [ @.str.80, %bb.b ], [ @.str.82, %bb.d ]
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 2, i32 noundef 0, ptr noundef nonnull %.str.82.sink) #19
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 9 uses
  %.not32 = icmp eq ptr %i.j, null
  br i1 %.not32, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.l = load ptr, ptr %i.k, align 8
  %.not33 = icmp eq ptr %i.j, %i.l
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not34 = icmp eq ptr %i.t, null
  %spec.select = select i1 %.not34, ptr @.str.84, ptr %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not35 = icmp eq ptr %i.v, null
  %i.w = select i1 %.not35, ptr @.str.85, ptr %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not36 = icmp eq ptr %i.y, null
  %i.z = select i1 %.not36, ptr @.str.86, ptr %i.y
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 2, i32 noundef 0, ptr noundef nonnull @.str.83, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r, ptr noundef nonnull %spec.select, ptr noundef nonnull %i.w, ptr noundef nonnull %i.z) #19
  %.pre = load ptr, ptr %i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aa = phi ptr [ %.pre, %bb.g ], [ %i.j, %bb.f ], [ null, %bb.e ]
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.aa, ptr %i.ad, align 8
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @pg_log_generic_v(i32 noundef 4, i32 noundef 0, ptr noundef %1, ptr noundef nonnull %2) #19
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !9
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @exit_nicely(i32 noundef 1) #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

declare void @pg_log_generic_v(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @TocIDRequired(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @buildTocEntryArrays(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %bb.d, label %getTocEntryByDumpId.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.f = load i32, ptr %i.e, align 4
  %.not.i = icmp sgt i32 %1, %i.f
  br i1 %.not.i, label %getTocEntryByDumpId.exit.thread, label %getTocEntryByDumpId.exit

getTocEntryByDumpId.exit:                         ; preds = %bb.d
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = zext nneg i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %getTocEntryByDumpId.exit.thread, label %bb.e

bb.e:                                             ; preds = %getTocEntryByDumpId.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.l = load i32, ptr %i.k, align 8
  br label %getTocEntryByDumpId.exit.thread

getTocEntryByDumpId.exit.thread:                  ; preds = %bb.c, %bb.d, %getTocEntryByDumpId.exit, %bb.e
  %.0 = phi i32 [ %i.l, %bb.e ], [ 0, %getTocEntryByDumpId.exit ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @WriteOffset(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 %i.b(ptr noundef %0, i32 noundef %2) #19 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = trunc i64 %1 to i32
  %i.f = and i32 %i.e, 255
  %i.g = tail call i32 %i.d(ptr noundef nonnull %0, i32 noundef %i.f) #19 ; 0 uses
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = trunc i64 %1 to i32
  %i.j = lshr i32 %i.i, 8
  %i.k = and i32 %i.j, 255
  %i.l = tail call i32 %i.h(ptr noundef nonnull %0, i32 noundef %i.k) #19 ; 0 uses
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = trunc i64 %1 to i32
  %i.o = lshr i32 %i.n, 16
  %i.p = and i32 %i.o, 255
  %i.q = tail call i32 %i.m(ptr noundef nonnull %0, i32 noundef %i.p) #19 ; 0 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = trunc i64 %1 to i32
  %i.t = lshr i32 %i.s, 24
  %i.u = tail call i32 %i.r(ptr noundef nonnull %0, i32 noundef %i.t) #19 ; 0 uses
  %i.v = lshr i64 %1, 32
  %i.w = load ptr, ptr %i.a, align 8
  %i.x = trunc nuw i64 %i.v to i32
  %i.y = and i32 %i.x, 255
  %i.z = tail call i32 %i.w(ptr noundef nonnull %0, i32 noundef %i.y) #19 ; 0 uses
  %i.aa = lshr i64 %1, 40
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = trunc nuw nsw i64 %i.aa to i32
  %i.ad = and i32 %i.ac, 255
  %i.ae = tail call i32 %i.ab(ptr noundef nonnull %0, i32 noundef %i.ad) #19 ; 0 uses
  %i.af = lshr i64 %1, 48
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = trunc nuw nsw i64 %i.af to i32
  %i.ai = and i32 %i.ah, 255
  %i.aj = tail call i32 %i.ag(ptr noundef nonnull %0, i32 noundef %i.ai) #19 ; 0 uses
  %i.ak = lshr i64 %1, 56
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = trunc nuw nsw i64 %i.ak to i32
  %i.an = tail call i32 %i.al(ptr noundef nonnull %0, i32 noundef %i.am) #19 ; 0 uses
  ret i64 9
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 256) i32 @ReadOffset(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  store i64 0, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i32 %i.b, 67328
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 65536
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0) #19, !inline_history !13
  %i.h = icmp eq i32 %i.g, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015.i = phi i1 [ %i.h, %bb.c ], [ true, %bb.b ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %.not22.i = icmp eq i64 %i.j, 0
  br i1 %.not22.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.021.i = phi i32 [ 0, %.lr.ph.i ], [ %i.q, %bb.e ] ; 2 uses
  %.01620.i = phi i32 [ 0, %.lr.ph.i ], [ %i.r, %bb.e ]
  %.01719.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.e ]
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef nonnull %0) #19, !inline_history !13
  %i.n = and i32 %i.m, 255                        ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  %i.o = shl i32 %i.n, %.021.i
  %i.p = select i1 %.not.i, i32 0, i32 %i.o
  %.1.i = add i32 %i.p, %.01719.i                 ; 4 uses
  %i.q = add i32 %.021.i, 8
  %i.r = add i32 %.01620.i, 1                     ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = load i64, ptr %i.i, align 8
  %i.u = icmp ugt i64 %i.t, %i.s
  br i1 %i.u, label %bb.e, label %ReadInt.exit, !llvm.loop !1

ReadInt.exit:                                     ; preds = %bb.e
  %i.v = sub i32 0, %.1.i
  %spec.select.i = select i1 %.015.i, i32 %.1.i, i32 %i.v ; 2 uses
  %i.w = icmp slt i32 %spec.select.i, 0
  br i1 %i.w, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %ReadInt.exit
  %i.x = icmp eq i32 %.1.i, 0
  br i1 %i.x, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = zext nneg i32 %spec.select.i to i64
  store i64 %i.y, ptr %1, align 8
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %0) #19 ; 2 uses
  %i.ac = and i32 %i.ab, 255                      ; 3 uses
  %trunc = trunc i32 %i.ab to i8
  %trunc.off = add i8 %trunc, -1
  %switch = icmp ult i8 %trunc.off, 3
  br i1 %switch, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %.not26 = icmp eq i64 %i.ae, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph

bb.i:                                             ; preds = %bb.h
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.87, i32 noundef %i.ac) #19
  tail call void @exit_nicely(i32 noundef 1) #20
  unreachable

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %.025 = phi i32 [ %i.ao, %bb.m ], [ 0, %.preheader ] ; 3 uses
  %i.af = icmp ult i32 %.025, 8
  %i.ag = load ptr, ptr %i.z, align 8
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %0) #19 ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nuw nsw i32 %.025, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl i64 %i.ai, %i.ak
  %i.am = load i64, ptr %1, align 8
  %i.an = or i64 %i.al, %i.am
  store i64 %i.an, ptr %1, align 8
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.88) #19
  tail call void @exit_nicely(i32 noundef 1) #20
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.ao = add i32 %.025, 1                        ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load i64, ptr %i.ad, align 8
  %i.ar = icmp ugt i64 %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph, label %.loopexit, !llvm.loop !53

.loopexit:                                        ; preds = %bb.m, %bb.d, %.preheader, %bb.f, %ReadInt.exit, %bb.g
  %.022 = phi i32 [ 3, %bb.f ], [ 1, %ReadInt.exit ], [ 2, %bb.g ], [ %i.ac, %.preheader ], [ 3, %bb.d ], [ %i.ac, %bb.m ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ReadInt(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 65536
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0) #19
  %i.g = icmp eq i32 %i.f, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.015 = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not22 = icmp eq i64 %i.i, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.021 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  %.01620 = phi i32 [ 0, %.lr.ph ], [ %i.q, %bb.d ]
  %.01719 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.d ]
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.k(ptr noundef nonnull %0) #19
  %i.m = and i32 %i.l, 255                        ; 2 uses
  %.not = icmp eq i32 %i.m, 0
  %i.n = shl i32 %i.m, %.021
  %i.o = select i1 %.not, i32 0, i32 %i.n
  %.1 = add i32 %i.o, %.01719                     ; 2 uses
  %i.p = add i32 %.021, 8
  %i.q = add i32 %.01620, 1                       ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = load i64, ptr %i.h, align 8
  %i.t = icmp ugt i64 %i.s, %i.r
  br i1 %i.t, label %bb.d, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.017.lcssa = phi i32 [ 0, %bb.c ], [ %.1, %bb.d ] ; 2 uses
  %i.u = sub i32 0, %.017.lcssa
  %spec.select = select i1 %.015, i32 %.017.lcssa, i32 %i.u
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteInt(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 %i.c(ptr noundef %0, i32 noundef 1) #19 ; 0 uses
  %i.e = sub i32 0, %1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 %i.c(ptr noundef %0, i32 noundef 0) #19 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.013 = phi i32 [ %i.e, %bb.b ], [ %1, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.018 = phi i32 [ 0, %.lr.ph ], [ %i.n, %bb.e ]
  %.117 = phi i32 [ %.013, %.lr.ph ], [ %i.m, %bb.e ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = and i32 %.117, 255
  %i.l = tail call i32 %i.j(ptr noundef nonnull %0, i32 noundef %i.k) #19 ; 0 uses
  %i.m = ashr i32 %.117, 8
  %i.n = add i32 %.018, 1                         ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = load i64, ptr %i.g, align 8              ; 2 uses
  %i.q = icmp ugt i64 %i.p, %i.o
  br i1 %i.q, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !2

._crit_edge.loopexit:                             ; preds = %bb.e
  %i.r = add i64 %i.p, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.lcssa = phi i64 [ 1, %bb.d ], [ %i.r, %._crit_edge.loopexit ]
  ret i64 %.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i64 @WriteStr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = icmp slt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef 1) #19, !inline_history !14 ; 0 uses
  %i.g = sub i32 0, %i.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef 0) #19, !inline_history !14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.013.i = phi i32 [ %i.g, %bb.c ], [ %i.b, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %WriteInt.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.018.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %bb.e ]
  %.117.i = phi i32 [ %i.n, %.lr.ph.i ], [ %.013.i, %bb.e ] ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = and i32 %.117.i, 255
  %i.m = tail call i32 %i.k(ptr noundef nonnull %0, i32 noundef %i.l) #19, !inline_history !14 ; 0 uses
  %i.n = ashr i32 %.117.i, 8
  %i.o = add i32 %.018.i, 1                       ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = load i64, ptr %i.i, align 8              ; 2 uses
  %i.r = icmp ugt i64 %i.q, %i.p
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !2

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.s = add i64 %i.q, 1
  br label %WriteInt.exit

WriteInt.exit:                                    ; preds = %bb.e, %._crit_edge.loopexit.i
  %.lcssa.i = phi i64 [ 1, %bb.e ], [ %i.s, %._crit_edge.loopexit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.u = load ptr, ptr %i.t, align 8
  %sext = shl i64 %i.a, 32
  %i.v = ashr exact i64 %sext, 32                 ; 2 uses
  tail call void %i.u(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.v) #19
  %i.w = add i64 %.lcssa.i, %i.v
  br label %WriteInt.exit19

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call i32 %i.y(ptr noundef %0, i32 noundef 1) #19, !inline_history !14 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %.not.i13 = icmp eq i64 %i.ab, 0
  br i1 %.not.i13, label %WriteInt.exit19, label %.lr.ph.i14.preheader

.lr.ph.i14.preheader:                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %0, i32 noundef 1) #19, !inline_history !14 ; 0 uses
  %i.ae = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.af = icmp ugt i64 %i.ae, 1
  br i1 %i.af, label %.lr.ph.i14, label %._crit_edge.loopexit.i17

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.preheader, %.lr.ph.i14
  %.018.i15 = phi i32 [ %i.ai, %.lr.ph.i14 ], [ 1, %.lr.ph.i14.preheader ]
  %i.ag = load ptr, ptr %i.x, align 8
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %0, i32 noundef 0) #19, !inline_history !14 ; 0 uses
  %i.ai = add i32 %.018.i15, 1                    ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.al = icmp ugt i64 %i.ak, %i.aj
  br i1 %i.al, label %.lr.ph.i14, label %._crit_edge.loopexit.i17, !llvm.loop !3

._crit_edge.loopexit.i17:                         ; preds = %.lr.ph.i14, %.lr.ph.i14.preheader
  %.lcssa = phi i64 [ %i.ae, %.lr.ph.i14.preheader ], [ %i.ak, %.lr.ph.i14 ]
  %i.am = add i64 %.lcssa, 1
  br label %WriteInt.exit19

WriteInt.exit19:                                  ; preds = %._crit_edge.loopexit.i17, %bb.f, %WriteInt.exit
  %.0 = phi i64 [ %i.w, %WriteInt.exit ], [ 1, %bb.f ], [ %i.am, %._crit_edge.loopexit.i17 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @ReadStr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
end_hunk_0
