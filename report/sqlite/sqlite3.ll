Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3MemRealValueNoRC:bb.a
  %i.w = icmp eq ptr %i.v, @sqlite3RCStrUnref
  br i1 %i.w, label %sqlite3VdbeMemZeroTerminateIfAble.exit, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !684
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1093 ; 2 uses
  %.not18.not.i = icmp sgt i32 %i.y, %i.aa
  br i1 %.not18.not.i, label %.sink.split.sink.split.i, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

.sink.split.sink.split.i:                         ; preds = %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge, %bb.i
  %.sink24.i = phi ptr [ %.sink24.i.pre, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.c, %bb.i ]
  %.sink.i = phi i32 [ %i.t, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.aa, %bb.i ]
  %i.ab = sext i32 %.sink.i to i64
  %i.ac = getelementptr inbounds i8, ptr %.sink24.i, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !733
  br label %sqlite3VdbeMemZeroTerminateIfAble.exit

sqlite3VdbeMemZeroTerminateIfAble.exit:           ; preds = %bb.h, %.sink.split.sink.split.i
  %i.ad = load i16, ptr %i.h, align 4, !tbaa !686
  %i.ae = or i16 %i.ad, 512
  store i16 %i.ae, ptr %i.h, align 4, !tbaa !686
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !762
  br label %bb.j

bb.j:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit, %bb.d
  %i.af = phi ptr [ %.pre, %sqlite3VdbeMemZeroTerminateIfAble.exit ], [ %i.c, %bb.d ]
  %i.ag = call fastcc i32 @sqlite3AtoF(ptr noundef %i.af, ptr noundef nonnull %i.a), !inline_history !3924 ; 0 uses
  br label %sqlite3MemRealValueRC.exit

sqlite3VdbeMemZeroTerminateIfAble.exit.thread:    ; preds = %bb.h, %bb.i, %bb.e, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1093
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit.thread
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !782
  br label %sqlite3MemRealValueRC.exit

bb.l:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit.thread
  %i.ak = call fastcc i32 @sqlite3MemRealValueRCSlowPath(ptr noundef nonnull %0, ptr noundef nonnull %i.a), !inline_history !3924 ; 0 uses
  br label %sqlite3MemRealValueRC.exit

sqlite3MemRealValueRC.exit:                       ; preds = %bb.b, %bb.j, %bb.k, %bb.l
  %i.al = load double, ptr %i.a, align 8, !tbaa !782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret double %i.al
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3MemRealValueRC(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !762  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %1, align 8, !tbaa !782
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.e = load i8, ptr %i.d, align 2, !tbaa !787
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.d, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !686  ; 2 uses
  %i.i = and i16 %i.h, 512
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.j = zext i16 %i.h to i32                     ; 2 uses
  %i.k = and i32 %i.j, 24578
  %.not.i = icmp eq i32 %i.k, 2
  br i1 %.not.i, label %bb.f, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %i.j, 4096
  %.not17.i = icmp eq i32 %i.l, 0
  br i1 %.not17.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1100 ; 2 uses
  %i.o = icmp eq ptr %i.n, @sqlite3_free
  br i1 %i.o, label %sqlite3_msize.exit.i, label %bb.h

sqlite3_msize.exit.i:                             ; preds = %bb.g
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.q = tail call i32 %i.p(ptr noundef nonnull %i.b) #58, !inline_history !79
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1093 ; 2 uses
  %i.t = add nsw i32 %i.s, 1
  %.not19.i = icmp ult i32 %i.q, %i.t
  br i1 %.not19.i, label %thread-pre-split.i, label %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge

sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge: ; preds = %sqlite3_msize.exit.i
  %.sink24.i.pre = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %.sink.split.sink.split.i

thread-pre-split.i:                               ; preds = %sqlite3_msize.exit.i
  %.pr.i = load ptr, ptr %i.m, align 8, !tbaa !1100
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %bb.g
  %i.u = phi ptr [ %.pr.i, %thread-pre-split.i ], [ %i.n, %bb.g ]
  %i.v = icmp eq ptr %i.u, @sqlite3RCStrUnref
  br i1 %i.v, label %sqlite3VdbeMemZeroTerminateIfAble.exit, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !684
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1093 ; 2 uses
  %.not18.not.i = icmp sgt i32 %i.x, %i.z
  br i1 %.not18.not.i, label %.sink.split.sink.split.i, label %sqlite3VdbeMemZeroTerminateIfAble.exit.thread

.sink.split.sink.split.i:                         ; preds = %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge, %bb.i
  %.sink24.i = phi ptr [ %.sink24.i.pre, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.b, %bb.i ]
  %.sink.i = phi i32 [ %i.s, %sqlite3_msize.exit.i..sink.split.sink.split.i_crit_edge ], [ %i.z, %bb.i ]
  %i.aa = sext i32 %.sink.i to i64
  %i.ab = getelementptr inbounds i8, ptr %.sink24.i, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !733
  br label %sqlite3VdbeMemZeroTerminateIfAble.exit

sqlite3VdbeMemZeroTerminateIfAble.exit:           ; preds = %bb.h, %.sink.split.sink.split.i
  %i.ac = load i16, ptr %i.g, align 4, !tbaa !686
  %i.ad = or i16 %i.ac, 512
  store i16 %i.ad, ptr %i.g, align 4, !tbaa !686
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !762
  br label %bb.j

bb.j:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit, %bb.d
  %i.ae = phi ptr [ %.pre, %sqlite3VdbeMemZeroTerminateIfAble.exit ], [ %i.b, %bb.d ]
  %i.af = tail call fastcc i32 @sqlite3AtoF(ptr noundef %i.ae, ptr noundef %1)
  br label %bb.m

sqlite3VdbeMemZeroTerminateIfAble.exit.thread:    ; preds = %bb.h, %bb.i, %bb.e, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !1093
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit.thread
  store double 0.000000e+00, ptr %1, align 8, !tbaa !782
  br label %bb.m

bb.l:                                             ; preds = %sqlite3VdbeMemZeroTerminateIfAble.exit.thread
  %i.aj = tail call fastcc i32 @sqlite3MemRealValueRCSlowPath(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.af, %bb.j ], [ 0, %bb.k ], [ %i.aj, %bb.l ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @sqlite3MemRealValueRCSlowPath(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) unnamed_addr #5 {
bb.a:
  store double 0.000000e+00, ptr %1, align 8, !tbaa !782
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !787
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !762  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1093
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3DbStrNDup.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !683
  %i.k = add nsw i64 %i.i, 1
  %i.l = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.j, i64 noundef %i.k), !inline_history !217 ; 5 uses
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %sqlite3DbStrNDup.exit.thread, label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.f, i64 range(i64 -2147483648, 4294967296) %i.i, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store i8 0, ptr %i.m, align 1, !tbaa !733
  %i.n = tail call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %i.l, ptr noundef nonnull %1)
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !683
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.o, ptr noundef nonnull %i.l)
  br label %sqlite3DbStrNDup.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1093 ; 3 uses
  %i.r = and i32 %i.q, -2                         ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !683  ; 2 uses
  %i.u = ashr i32 %i.q, 1
  %i.v = add nsw i32 %i.u, 2
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %.not.i58 = icmp eq ptr %i.t, null
  br i1 %.not.i58, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.t, i64 noundef %i.w), !inline_history !43
  br label %sqlite3DbMallocRaw.exit

bb.f:                                             ; preds = %bb.d
  %i.y = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.w), !inline_history !43
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.x, %bb.e ], [ %i.y, %bb.f ] ; 6 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %sqlite3DbStrNDup.exit.thread, label %bb.g

bb.g:                                             ; preds = %sqlite3DbMallocRaw.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !762 ; 2 uses
  %i.ab = load i8, ptr %i.a, align 2, !tbaa !787
  %i.ac = icmp eq i8 %i.ab, 2
  %2 = add nsw i32 %i.r, -1                       ; 2 uses
  %i.ad = icmp sgt i32 %i.q, 1                    ; 2 uses
  br i1 %i.ac, label %.preheader, label %.preheader64

.preheader64:                                     ; preds = %bb.g
  br i1 %i.ad, label %.lr.ph, label %sqlite3DbFree.exit60

.preheader:                                       ; preds = %bb.g
  br i1 %i.ad, label %.lr.ph74, label %sqlite3DbFree.exit60

.lr.ph74:                                         ; preds = %.preheader, %bb.h
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.h ], [ 0, %.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv90 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !733
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv88
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !733
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733
  %.not55 = icmp eq i8 %i.ai, 0
  br i1 %.not55, label %bb.h, label %sqlite3DbFree.exit60.loopexit.split.loop.exit104

bb.h:                                             ; preds = %.lr.ph74
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 2 ; 2 uses
  %indvars94 = trunc i64 %indvars.iv.next91 to i32 ; 2 uses
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %3 = icmp sgt i32 %2, %indvars94
  br i1 %3, label %.lr.ph74, label %sqlite3DbFree.exit60, !llvm.loop !3925

.lr.ph:                                           ; preds = %.preheader64, %bb.i
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.i ], [ 0, %.preheader64 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.preheader64 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %indvars.iv83 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !733
  %.not54 = icmp eq i8 %i.ak, 0
  br i1 %.not54, label %bb.i, label %sqlite3DbFree.exit60.loopexit98.split.loop.exit101

bb.i:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !733
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i, i64 %indvars.iv
  store i8 %i.am, ptr %i.an, align 1, !tbaa !733
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %indvars86 = trunc i64 %indvars.iv.next84 to i32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %4 = icmp sgt i32 %2, %indvars86
  br i1 %4, label %.lr.ph, label %sqlite3DbFree.exit60, !llvm.loop !3926

sqlite3DbFree.exit60.loopexit.split.loop.exit104: ; preds = %.lr.ph74
  %i.ao = trunc nuw nsw i64 %indvars.iv90 to i32
  br label %sqlite3DbFree.exit60

sqlite3DbFree.exit60.loopexit98.split.loop.exit101: ; preds = %.lr.ph
  %i.ap = trunc nuw nsw i64 %indvars.iv83 to i32
  br label %sqlite3DbFree.exit60

sqlite3DbFree.exit60:                             ; preds = %bb.i, %bb.h, %sqlite3DbFree.exit60.loopexit98.split.loop.exit101, %sqlite3DbFree.exit60.loopexit.split.loop.exit104, %.preheader64, %.preheader
  %.248 = phi i32 [ 0, %.preheader64 ], [ 0, %.preheader ], [ %indvars94, %bb.h ], [ %i.ao, %sqlite3DbFree.exit60.loopexit.split.loop.exit104 ], [ %i.ap, %sqlite3DbFree.exit60.loopexit98.split.loop.exit101 ], [ %indvars86, %bb.i ]
  %.2 = phi i64 [ 0, %.preheader64 ], [ 0, %.preheader ], [ %indvars.iv.next89, %bb.h ], [ %indvars.iv88, %sqlite3DbFree.exit60.loopexit.split.loop.exit104 ], [ %indvars.iv, %sqlite3DbFree.exit60.loopexit98.split.loop.exit101 ], [ %indvars.iv.next, %bb.i ]
  %i.aq = and i64 %.2, 4294967295
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !733
  %i.as = tail call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %.0.i, ptr noundef nonnull %1)
  %i.at = icmp slt i32 %.248, %i.r
  %spec.store.select = select i1 %i.at, i32 -100, i32 %i.as
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !683
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.au, ptr noundef nonnull %.0.i)
  br label %sqlite3DbStrNDup.exit.thread

sqlite3DbStrNDup.exit.thread:                     ; preds = %bb.b, %bb.c, %sqlite3DbMallocRaw.exit, %sqlite3DbFree.exit60, %sqlite3DbFree.exit
  %.051 = phi i32 [ 0, %sqlite3DbMallocRaw.exit ], [ %i.n, %sqlite3DbFree.exit ], [ %spec.store.select, %sqlite3DbFree.exit60 ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.051
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @memIntValue(ptr nofree noundef readonly captures(none) %0) unnamed_addr #34 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i64 0, ptr %i.a, align 8, !tbaa !565
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !762
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1093
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.g = load i8, ptr %i.f, align 2, !tbaa !787
  %i.h = call fastcc i32 @sqlite3Atoi64(ptr noundef %i.c, ptr noundef nonnull %i.a, i32 noundef %i.e, i8 noundef zeroext %i.g) ; 0 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i64 %i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 4) i32 @sqlite3Atoi64(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #19 {
bb.a:
  %i.a = zext i8 %3 to i32                        ; 3 uses
  %i.b = icmp eq i8 %3, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %2, -2                           ; 2 uses
  %i.d = sub nsw i32 3, %i.a                      ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.c
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b
  %narrow = sub nsw i32 3, %i.a
  %i.f = sext i32 %narrow to i64
  %i.g = sext i32 %i.c to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !733
  %.not184.not.not = icmp ne i8 %i.i, 0           ; 2 uses
  br i1 %.not184.not.not, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 3 uses
  %i.j = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.j, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !3927

.critedge.loopexit:                               ; preds = %bb.c, %.lr.ph
  %.090.lcssa.ph.in = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv, %.lr.ph ]
  %.090.lcssa.ph = trunc i64 %.090.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.b
  %.090.lcssa = phi i32 [ %i.d, %bb.b ], [ %.090.lcssa.ph, %.critedge.loopexit ]
  %.lcssa119 = phi i1 [ false, %bb.b ], [ %.not184.not.not, %.critedge.loopexit ]
  %i.k = xor i32 %.090.lcssa, 1
  %i.l = and i32 %i.a, 1
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.critedge
  %.096 = phi ptr [ %i.n, %.critedge ], [ %0, %bb.a ] ; 3 uses
  %.094 = phi i32 [ 2, %.critedge ], [ 1, %bb.a ] ; 7 uses
  %.089 = phi i1 [ %.lcssa119, %.critedge ], [ false, %bb.a ] ; 2 uses
  %.pn.in = phi i32 [ %i.k, %.critedge ], [ %2, %bb.a ]
  %.pn = sext i32 %.pn.in to i64
  %.087 = getelementptr inbounds i8, ptr %0, i64 %.pn ; 7 uses
  %i.o = icmp ult ptr %.096, %.087
  br i1 %i.o, label %.lr.ph126, label %.critedge110

.lr.ph126:                                        ; preds = %bb.d
  %i.p = zext nneg i32 %.094 to i64               ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph126, %bb.f
  %.197125 = phi ptr [ %.096, %.lr.ph126 ], [ %i.v, %bb.f ] ; 5 uses
  %i.q = load i8, ptr %.197125, align 1, !tbaa !733 ; 2 uses
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = and i8 %i.t, 1
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %.critedge2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.197125, i64 %i.p ; 3 uses
  %i.w = icmp ult ptr %i.v, %.087
  br i1 %i.w, label %bb.e, label %.critedge110, !llvm.loop !3928

.critedge2:                                       ; preds = %bb.e
  switch i8 %i.q, label %.critedge110 [
    i8 45, label %bb.g
    i8 43, label %bb.h
  ]

bb.g:                                             ; preds = %.critedge2
  %i.x = getelementptr inbounds nuw i8, ptr %.197125, i64 %i.p
  br label %.critedge110

bb.h:                                             ; preds = %.critedge2
  %i.y = getelementptr inbounds nuw i8, ptr %.197125, i64 %i.p
  br label %.critedge110

.critedge110:                                     ; preds = %bb.f, %bb.d, %.critedge2, %bb.g, %bb.h
  %.2 = phi ptr [ %i.x, %bb.g ], [ %i.y, %bb.h ], [ %.197125, %.critedge2 ], [ %.096, %bb.d ], [ %i.v, %bb.f ] ; 4 uses
  %.not104 = phi i1 [ false, %bb.g ], [ true, %bb.h ], [ true, %.critedge2 ], [ true, %bb.d ], [ true, %bb.f ] ; 5 uses
  %i.z = icmp ult ptr %.2, %.087
  br i1 %i.z, label %.lr.ph129, label %.critedge4

.lr.ph129:                                        ; preds = %.critedge110
  %i.aa = zext nneg i32 %.094 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph129, %bb.j
  %.3128 = phi ptr [ %.2, %.lr.ph129 ], [ %i.ad, %bb.j ] ; 3 uses
  %i.ab = load i8, ptr %.3128, align 1, !tbaa !733
  %i.ac = icmp eq i8 %i.ab, 48
  br i1 %i.ac, label %bb.j, label %.critedge4

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.3128, i64 %i.aa ; 3 uses
  %i.ae = icmp ult ptr %i.ad, %.087
  br i1 %i.ae, label %bb.i, label %.critedge4, !llvm.loop !3929

.critedge4:                                       ; preds = %bb.i, %bb.j, %.critedge110
  %.3.lcssa = phi ptr [ %.2, %.critedge110 ], [ %i.ad, %bb.j ], [ %.3128, %bb.i ] ; 8 uses
  %.not143 = icmp ult ptr %.3.lcssa, %.087
  br i1 %.not143, label %.lr.ph135.preheader, label %.critedge6.thread

.lr.ph135.preheader:                              ; preds = %.critedge4
  %i.af = zext nneg i32 %.094 to i64
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %bb.k
  %indvars.iv152 = phi i64 [ 0, %.lr.ph135.preheader ], [ %indvars.iv.next153, %bb.k ] ; 3 uses
  %.093133 = phi i64 [ 0, %.lr.ph135.preheader ], [ %i.an, %bb.k ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %indvars.iv152
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !733
  %i.ai = sext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ult i32 %i.aj, 10
  br i1 %i.ak, label %bb.k, label %.critedge6

bb.k:                                             ; preds = %.lr.ph135
  %i.al = mul i64 %.093133, 10
  %i.am = zext nneg i32 %i.aj to i64
  %i.an = add i64 %i.al, %i.am                    ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, %i.af ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.3.lcssa, i64 %indvars.iv.next153
  %.not144 = icmp ult ptr %i.ao, %.087
  br i1 %.not144, label %.lr.ph135, label %.critedge6, !llvm.loop !3930

.critedge6:                                       ; preds = %.lr.ph135, %bb.k
  %.093.lcssa.ph = phi i64 [ %.093133, %.lr.ph135 ], [ %i.an, %bb.k ] ; 2 uses
  %.191.lcssa.ph.in = phi i64 [ %indvars.iv152, %.lr.ph135 ], [ %indvars.iv.next153, %bb.k ]
  %.lcssa116.ph = phi i1 [ %.089, %.lr.ph135 ], [ true, %bb.k ] ; 2 uses
  %.191.lcssa.ph = trunc i64 %.191.lcssa.ph.in to i32 ; 2 uses
  %i.ap = icmp slt i64 %.093.lcssa.ph, 0
  br i1 %i.ap, label %bb.l, label %.critedge6.thread

bb.l:                                             ; preds = %.critedge6
  %i.aq = select i1 %.not104, i64 9223372036854775807, i64 -9223372036854775808
  br label %bb.m

.critedge6.thread:                                ; preds = %.critedge4, %.critedge6
  %.lcssa116175 = phi i1 [ %.lcssa116.ph, %.critedge6 ], [ true, %.critedge4 ]
  %.191.lcssa173 = phi i32 [ %.191.lcssa.ph, %.critedge6 ], [ 0, %.critedge4 ]
  %.093.lcssa171 = phi i64 [ %.093.lcssa.ph, %.critedge6 ], [ 0, %.critedge4 ] ; 2 uses
  %i.ar = sub nsw i64 0, %.093.lcssa171
  %spec.select183 = select i1 %.not104, i64 %.093.lcssa171, i64 %i.ar
  br label %bb.m

bb.m:                                             ; preds = %.critedge6.thread, %bb.l
  %.sink = phi i64 [ %spec.select183, %.critedge6.thread ], [ %i.aq, %bb.l ]
  %.lcssa116174 = phi i1 [ %.lcssa116175, %.critedge6.thread ], [ %.lcssa116.ph, %bb.l ]
  %.191.lcssa172 = phi i32 [ %.191.lcssa173, %.critedge6.thread ], [ %.191.lcssa.ph, %bb.l ] ; 4 uses
  store i64 %.sink, ptr %1, align 8, !tbaa !565
  %i.as = icmp eq i32 %.191.lcssa172, 0
  %i.at = icmp eq ptr %.2, %.3.lcssa
  %or.cond = and i1 %i.as, %i.at
  br i1 %or.cond, label %.loopexit, label %bb.n

end_hunk_0
begin_hunk_1_@sqlite3ExprCodeTarget:bb.a

.backedge:                                        ; preds = %bb.e, %bb.e, %bb.ga
  %.0531.be.in = getelementptr inbounds nuw i8, ptr %.0531868, i64 16
  %.0531.be = load ptr, ptr %.0531.be.in, align 8, !tbaa !796 ; 2 uses
  %i.aeo = icmp eq ptr %.0531.be, null
  br i1 %i.aeo, label %.thread, label %.lr.ph.splitthread-pre-split, !llvm.loop !4855

.split1342.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1344 = phi ptr [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868, %bb.e ] ; 3 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.us-phi1344, i64 64 ; 2 uses
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !733 ; 3 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %.us-phi1344, i64 48 ; 2 uses
  %i.aes = load i16, ptr %i.aer, align 8, !tbaa !2001 ; 3 uses
  %i.aet = sext i16 %i.aes to i64                 ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %.us-phi1344, i64 44 ; 2 uses
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !2072
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeq, i64 54
  %i.aex = load i16, ptr %i.aew, align 2, !tbaa !1150
  %i.aey = sext i16 %i.aex to i32
  %i.aez = add nsw i32 %i.aey, 1
  %i.afa = mul nsw i32 %i.aez, %i.aev
  %i.afb = tail call fastcc signext i16 @sqlite3TableColumnToStorage(ptr noundef %i.aeq, i16 noundef signext %i.aes)
  %i.afc = sext i16 %i.afb to i32
  %i.afd = add nsw i32 %i.afc, 1
  %i.afe = add i32 %i.afd, %i.afa
  %i.aff = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 159, i32 noundef %i.afe, i32 noundef %2) ; 0 uses
  %i.afg = load i32, ptr %i.aeu, align 4, !tbaa !2072
  %.not590 = icmp eq i32 %i.afg, 0
  %i.afh = select i1 %.not590, ptr @.str.685, ptr @.str.684
  %i.afi = load i16, ptr %i.aer, align 8, !tbaa !2001
  %i.afj = icmp slt i16 %i.afi, 0
  br i1 %i.afj, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %.split1342.us
  %i.afk = load ptr, ptr %i.aep, align 8, !tbaa !733
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 8
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !1149
  %i.afn = getelementptr inbounds [16 x i8], ptr %i.afm, i64 %i.aet
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !1153
  br label %bb.gc

bb.gc:                                            ; preds = %.split1342.us, %bb.gb
  %i.afp = phi ptr [ %i.afo, %bb.gb ], [ @.str.600, %.split1342.us ]
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef %i.h, ptr noundef nonnull @.str.683, i32 noundef %2, ptr noundef nonnull %i.afh, ptr noundef %i.afp)
  %i.afq = icmp sgt i16 %i.aes, -1
  br i1 %i.afq, label %bb.gd, label %codeVectorCompare.exit

bb.gd:                                            ; preds = %bb.gc
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aeq, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !1149
  %i.aft = getelementptr inbounds nuw [16 x i8], ptr %i.afs, i64 %i.aet
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 9
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !1716
  %i.afw = icmp eq i8 %i.afv, 69
  br i1 %i.afw, label %bb.ge, label %codeVectorCompare.exit

bb.ge:                                            ; preds = %bb.gd
  %i.afx = tail call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef %i.h, i32 noundef 89, i32 noundef %2) ; 0 uses
  br label %codeVectorCompare.exit

.split1346.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.686)
  br label %codeVectorCompare.exit

.split1349.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1351 = phi ptr [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868, %bb.e ] ; 5 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 5 uses
  %i.afz = load i16, ptr %i.afy, align 1
  %i.aga = getelementptr inbounds nuw i8, ptr %.us-phi1351, i64 56
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !2218 ; 6 uses
  %.not587 = icmp eq ptr %i.agb, null
  br i1 %.not587, label %bb.gj, label %bb.gf

bb.gf:                                            ; preds = %.split1349.us
  %i.agc = load i8, ptr %i.agb, align 8, !tbaa !2170
  %.not588 = icmp eq i8 %i.agc, 0
  br i1 %.not588, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agb, i64 16
  %i.age = load i32, ptr %i.agd, align 8, !tbaa !2166
  %i.agf = getelementptr inbounds nuw i8, ptr %.us-phi1351, i64 50
  %i.agg = load i16, ptr %i.agf, align 2, !tbaa !2007
  %i.agh = sext i16 %i.agg to i32
  %i.agi = add nsw i32 %i.age, %i.agh
  br label %codeVectorCompare.exit

bb.gh:                                            ; preds = %bb.gf
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agb, i64 1
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !2174
  %.not589 = icmp eq i8 %i.agk, 0
  br i1 %.not589, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agb, i64 12
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !2173
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agb, i64 32
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !2167
  %i.agp = getelementptr inbounds nuw i8, ptr %.us-phi1351, i64 50
  %i.agq = load i16, ptr %i.agp, align 2, !tbaa !2007
  %i.agr = sext i16 %i.agq to i64
  %i.ags = getelementptr inbounds [32 x i8], ptr %i.ago, i64 %i.agr
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 24
  %i.agu = load i32, ptr %i.agt, align 8, !tbaa !2169
  %i.agv = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 96, i32 noundef %i.agm, i32 noundef %i.agu, i32 noundef %2) ; 0 uses
  br label %codeVectorCompare.exit

bb.gj:                                            ; preds = %bb.gh, %.split1349.us
  %i.agw = getelementptr inbounds nuw i8, ptr %.us-phi1351, i64 44
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !2072
  %i.agy = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 20, i32 noundef %i.agx, i32 noundef 0, i32 noundef %2)
  %i.agz = load i16, ptr %i.afy, align 1
  %i.aha = and i16 %i.agz, -129
  store i16 %i.aha, ptr %i.afy, align 1
  %i.ahb = getelementptr inbounds nuw i8, ptr %.us-phi1351, i64 16
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !796
  tail call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.ahc, i32 noundef %2)
  %i.ahd = and i16 %i.afz, 128
  %i.ahe = load i16, ptr %i.afy, align 1
  %i.ahf = and i16 %i.ahe, -129
  %i.ahg = or disjoint i16 %i.ahf, %i.ahd
  store i16 %i.ahg, ptr %i.afy, align 1
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ahi = load i32, ptr %i.ahh, align 8, !tbaa !703
  %i.ahj = load ptr, ptr %i.h, align 8, !tbaa !679
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 103
  %i.ahl = load i8, ptr %i.ahk, align 1, !tbaa !918
  %.not.i.i.i666 = icmp eq i8 %i.ahl, 0
  br i1 %.not.i.i.i666, label %bb.gk, label %sqlite3VdbeJumpHere.exit668

bb.gk:                                            ; preds = %bb.gj
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !702
  %i.aho = sext i32 %i.agy to i64
  %i.ahp = getelementptr inbounds [32 x i8], ptr %i.ahn, i64 %i.aho
  br label %sqlite3VdbeJumpHere.exit668

sqlite3VdbeJumpHere.exit668:                      ; preds = %bb.gj, %bb.gk
  %.0.i.i.i667 = phi ptr [ %i.ahp, %bb.gk ], [ @sqlite3VdbeGetOp.dummy, %bb.gj ]
  %i.ahq = getelementptr inbounds nuw i8, ptr %.0.i.i.i667, i64 8
  store i32 %i.ahi, ptr %i.ahq, align 8, !tbaa !927
  br label %codeVectorCompare.exit

.split1353.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1354 = phi i32 [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ]
  %.us-phi1355 = phi ptr [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868, %bb.e ] ; 2 uses
  store i32 %.us-phi1354, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  %i.ahr = load ptr, ptr %0, align 8, !tbaa !980  ; 4 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.us-phi1355, i64 32
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !733 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 8 ; 2 uses
  %i.ahv = load i32, ptr %i.aht, align 8, !tbaa !570 ; 3 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 4 uses
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !1881
  %i.ahy = add nsw i32 %i.ahx, -1                 ; 4 uses
  store i32 %i.ahy, ptr %i.ahw, align 4, !tbaa !1881
  %i.ahz = getelementptr inbounds nuw i8, ptr %.us-phi1355, i64 16
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !796 ; 2 uses
  %.not584 = icmp eq ptr %i.aia, null             ; 2 uses
  br i1 %.not584, label %bb.go, label %sqlite3ExprDup.exit

sqlite3ExprDup.exit:                              ; preds = %.split1353.us
  %i.aib = tail call fastcc ptr @exprDup(ptr noundef %i.ahr, ptr noundef nonnull readonly %i.aia, i32 noundef 0, ptr noundef null), !inline_history !301 ; 6 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahr, i64 103
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !918
  %.not585 = icmp eq i8 %i.aid, 0
  br i1 %.not585, label %bb.gn, label %bb.gl

bb.gl:                                            ; preds = %sqlite3ExprDup.exit
  %.not.i670 = icmp eq ptr %i.aib, null
  br i1 %.not.i670, label %sqlite3ExprDelete.exit, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  tail call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.ahr, ptr noundef %i.aib), !inline_history !3
  br label %sqlite3ExprDelete.exit

bb.gn:                                            ; preds = %sqlite3ExprDup.exit
  %i.aie = call fastcc i32 @exprCodeVector(ptr noundef nonnull %0, ptr noundef %i.aib, ptr noundef %i.c)
  tail call fastcc void @sqlite3ExprToRegister(ptr noundef %i.aib, i32 noundef %i.aie)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i64 72, i1 false)
  store i8 54, ptr %6, align 8, !tbaa !1828
  %i.aif = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.aib, ptr %i.aif, align 8, !tbaa !796
  store i32 0, ptr %i.c, align 4, !tbaa !570
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %.split1353.us
  %.0526 = phi ptr [ %6, %bb.gn ], [ null, %.split1353.us ]
  %.0 = phi ptr [ %i.aib, %bb.gn ], [ null, %.split1353.us ] ; 2 uses
  %i.aig = add nsw i32 %i.ahv, -1                 ; 2 uses
  %i.aih = icmp sgt i32 %i.ahv, 1
  br i1 %i.aih, label %.lr.ph872, label %._crit_edge

.lr.ph872:                                        ; preds = %bb.go
  %i.aii = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aij = getelementptr inbounds nuw i8, ptr %i.h, i64 144 ; 3 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.h, i64 148
  %i.ail = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.aim = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.gp

bb.gp:                                            ; preds = %.lr.ph872, %sqlite3VdbeResolveLabel.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph872 ], [ %indvars.iv.next, %sqlite3VdbeResolveLabel.exit ] ; 2 uses
  %.1871 = phi ptr [ %.0526, %.lr.ph872 ], [ %.2, %sqlite3VdbeResolveLabel.exit ]
  %i.ain = getelementptr inbounds nuw [24 x i8], ptr %i.ahu, i64 %indvars.iv ; 2 uses
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !1998 ; 2 uses
  br i1 %.not584, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  store ptr %i.aio, ptr %i.aii, align 8, !tbaa !1288
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %.2 = phi ptr [ %.1871, %bb.gq ], [ %i.aio, %bb.gp ] ; 2 uses
  %i.aip = load i32, ptr %i.ahw, align 4, !tbaa !1881 ; 2 uses
  %i.aiq = add nsw i32 %i.aip, -1                 ; 2 uses
  store i32 %i.aiq, ptr %i.ahw, align 4, !tbaa !1881
  call void @sqlite3ExprIfFalse(ptr noundef nonnull %0, ptr noundef %.2, i32 noundef %i.aiq, i32 noundef 16)
  %i.air = getelementptr inbounds nuw i8, ptr %i.ain, i64 24
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !1998
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.ais, i32 noundef %2)
  %i.ait = load i32, ptr %i.aij, align 8, !tbaa !703 ; 3 uses
  %i.aiu = load i32, ptr %i.aik, align 4, !tbaa !1164
  %.not.i.i671 = icmp sgt i32 %i.aiu, %i.ait
  br i1 %.not.i.i671, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aiv = call fastcc i32 @growOp3(ptr noundef nonnull %i.h, i32 noundef 9, i32 noundef 0, i32 noundef %i.ahy, i32 noundef 0), !inline_history !288 ; 0 uses
  br label %sqlite3VdbeGoto.exit

bb.gt:                                            ; preds = %bb.gr
  %i.aiw = add nsw i32 %i.ait, 1
  store i32 %i.aiw, ptr %i.aij, align 8, !tbaa !703
  %i.aix = load ptr, ptr %i.ail, align 8, !tbaa !702
  %i.aiy = sext i32 %i.ait to i64
  %i.aiz = getelementptr inbounds [32 x i8], ptr %i.aix, i64 %i.aiy ; 6 uses
  store i8 9, ptr %i.aiz, align 8, !tbaa !929
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiz, i64 2
  store i16 0, ptr %i.aja, align 2, !tbaa !930
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiz, i64 4
  store i32 0, ptr %i.ajb, align 4, !tbaa !926
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8
  store i32 %i.ahy, ptr %i.ajc, align 8, !tbaa !927
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiz, i64 12
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aiz, i64 1
  store i8 0, ptr %i.aje, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ajd, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeGoto.exit

sqlite3VdbeGoto.exit:                             ; preds = %bb.gs, %bb.gt
  %i.ajf = load ptr, ptr %i.aim, align 8, !tbaa !1194 ; 4 uses
  %i.ajg = sub i32 0, %i.aip                      ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajf, i64 80
  %i.aji = load i32, ptr %i.ajh, align 8, !tbaa !2195
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajf, i64 76
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !1881
  %i.ajl = add nsw i32 %i.ajk, %i.aji
  %i.ajm = icmp slt i32 %i.ajl, 0
  br i1 %i.ajm, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %sqlite3VdbeGoto.exit
  call fastcc void @resizeResolveLabel(ptr noundef nonnull %i.ajf, ptr noundef nonnull readonly %i.h, i32 noundef %i.ajg), !inline_history !2196
  br label %sqlite3VdbeResolveLabel.exit

bb.gv:                                            ; preds = %sqlite3VdbeGoto.exit
  %i.ajn = load i32, ptr %i.aij, align 8, !tbaa !703
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajf, i64 88
  %i.ajp = load ptr, ptr %i.ajo, align 8, !tbaa !1216
  %i.ajq = sext i32 %i.ajg to i64
  %i.ajr = getelementptr inbounds [4 x i8], ptr %i.ajp, i64 %i.ajq
  store i32 %i.ajn, ptr %i.ajr, align 4, !tbaa !570
  br label %sqlite3VdbeResolveLabel.exit

sqlite3VdbeResolveLabel.exit:                     ; preds = %bb.gu, %bb.gv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %7 = trunc nuw i64 %indvars.iv.next to i32
  %8 = icmp sgt i32 %i.aig, %7
  br i1 %8, label %bb.gp, label %._crit_edge, !llvm.loop !4856

._crit_edge:                                      ; preds = %sqlite3VdbeResolveLabel.exit, %bb.go
  %i.ajs = and i32 %i.ahv, 1
  %.not586 = icmp eq i32 %i.ajs, 0
  br i1 %.not586, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %._crit_edge
  %i.ajt = sext i32 %i.aig to i64
  %i.aju = getelementptr inbounds [24 x i8], ptr %i.ahu, i64 %i.ajt
  %i.ajv = load ptr, ptr %i.aju, align 8, !tbaa !1998
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %i.ajv, i32 noundef %2)
  br label %bb.gy

bb.gx:                                            ; preds = %._crit_edge
  %i.ajw = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 77, i32 noundef 0, i32 noundef %2) ; 0 uses
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.not.i673 = icmp eq ptr %.0, null
  br i1 %.not.i673, label %sqlite3ExprDelete.exit674, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.ahr, ptr noundef %.0), !inline_history !3
  br label %sqlite3ExprDelete.exit674

sqlite3ExprDelete.exit674:                        ; preds = %bb.gy, %bb.gz
  call fastcc void @setDoNotMergeFlagOnCopy(ptr noundef %i.h)
  call fastcc void @sqlite3VdbeResolveLabel(ptr noundef %i.h, i32 noundef %i.ahy)
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.gm, %bb.gl, %sqlite3ExprDelete.exit674
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %codeVectorCompare.exit

.split1357.us:                                    ; preds = %bb.e, %.lr.ph.split.us
  %.us-phi1358 = phi i32 [ undef, %.lr.ph.split.us ], [ %i.y, %bb.e ]
  %.us-phi1359 = phi ptr [ %.0531868.us, %.lr.ph.split.us ], [ %.0531868, %bb.e ] ; 2 uses
  store i32 %.us-phi1358, ptr %i.e, align 4
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !2184
  %.not581 = icmp eq ptr %i.ajy, null
  br i1 %.not581, label %bb.ha, label %bb.hc

bb.ha:                                            ; preds = %.split1357.us
  %i.ajz = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.aka = load i8, ptr %i.ajz, align 2, !tbaa !2015
  %.not582 = icmp eq i8 %i.aka, 0
  br i1 %.not582, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.687)
  br label %.critedge

bb.hc:                                            ; preds = %bb.ha, %.split1357.us
  %i.akb = getelementptr inbounds nuw i8, ptr %.us-phi1359, i64 1 ; 3 uses
  %i.akc = load i8, ptr %i.akb, align 1, !tbaa !2002 ; 2 uses
  %i.akd = icmp eq i8 %i.akc, 2
  br i1 %i.akd, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.ake = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !2049 ; 2 uses
  %.not.i675 = icmp eq ptr %i.akf, null
  %..i = select i1 %.not.i675, ptr %0, ptr %i.akf
  %i.akg = getelementptr inbounds nuw i8, ptr %..i, i64 39 ; 2 uses
  %i.akh = load i16, ptr %i.akg, align 1
  %i.aki = or i16 %i.akh, 2
  store i16 %i.aki, ptr %i.akg, align 1
  %.pr = load i8, ptr %i.akb, align 1, !tbaa !2002
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.akj = phi i8 [ %.pr, %bb.hd ], [ %i.akc, %bb.hc ]
  %i.akk = icmp eq i8 %i.akj, 4
  br i1 %i.akk, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.akl = tail call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef %i.h, i32 noundef 72, i32 noundef 0, i32 noundef 4) ; 0 uses
  br label %codeVectorCompare.exit

bb.hg:                                            ; preds = %bb.he
  %i.akm = getelementptr inbounds nuw i8, ptr %.us-phi1359, i64 16
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !796
  %i.ako = call fastcc i32 @sqlite3ExprCodeTemp(ptr noundef nonnull %0, ptr noundef %i.akn, ptr noundef %i.c)
  %i.akp = load ptr, ptr %i.ajx, align 8, !tbaa !2184
  %.not583 = icmp eq ptr %i.akp, null
  %i.akq = select i1 %.not583, i32 1, i32 1811
  %i.akr = load i8, ptr %i.akb, align 1, !tbaa !2002
  %i.aks = sext i8 %i.akr to i32
  %i.akt = tail call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef %i.h, i32 noundef 72, i32 noundef %i.akq, i32 noundef %i.aks, i32 noundef %i.ako) ; 0 uses
  br label %codeVectorCompare.exit

codeVectorCompare.exit:                           ; preds = %bb.fr, %bb.fq, %sqlite3ReleaseTempRange.exit, %.thread751, %bb.do, %bb.dn, %bb.ct, %bb.cs, %bb.cl, %sqlite3VdbeJumpHere.exit681, %bb.az, %sqlite3ExprVectorSize.exit732, %bb.p, %bb.gg, %bb.gi, %sqlite3VdbeJumpHere.exit668, %bb.gc, %bb.gd, %bb.ge, %bb.dm, %sqlite3VdbeAddOp3.exit637, %sqlite3VdbeAddOp2.exit646, %sqlite3VdbeAddOp3.exit, %sqlite3VdbeJumpHere.exit, %bb.hf, %bb.hg, %sqlite3ExprDelete.exit, %.split1346.us, %sqlite3VdbeJumpHere.exit660, %.split1308.us, %.split1290.us
  %.1543 = phi i32 [ %2, %bb.p ], [ %2, %bb.hg ], [ %2, %.split1290.us ], [ %i.agi, %bb.gg ], [ %2, %bb.dm ], [ %2, %bb.ct ], [ %2, %.split1308.us ], [ %2, %sqlite3VdbeJumpHere.exit660 ], [ %2, %.thread751 ], [ %2, %sqlite3ReleaseTempRange.exit ], [ %2, %bb.do ], [ %2, %sqlite3VdbeAddOp3.exit637 ], [ %2, %.split1346.us ], [ %2, %bb.gc ], [ %2, %sqlite3ExprDelete.exit ], [ %2, %bb.hf ], [ %2, %bb.cl ], [ %2, %sqlite3VdbeJumpHere.exit ], [ %2, %sqlite3VdbeAddOp3.exit ], [ %2, %sqlite3VdbeAddOp2.exit646 ], [ %2, %bb.ge ], [ %2, %bb.gd ], [ %2, %bb.gi ], [ %2, %sqlite3VdbeJumpHere.exit668 ], [ %2, %sqlite3ExprVectorSize.exit732 ], [ %2, %bb.az ], [ %2, %sqlite3VdbeJumpHere.exit681 ], [ %2, %bb.cs ], [ %2, %bb.dn ], [ %2, %bb.fq ], [ %2, %bb.fr ] ; 3 uses
  %i.aku = load i32, ptr %i.c, align 4, !tbaa !570 ; 2 uses
  %.not.i676 = icmp eq i32 %i.aku, 0
  br i1 %.not.i676, label %sqlite3ReleaseTempReg.exit, label %bb.hh

bb.hh:                                            ; preds = %codeVectorCompare.exit
  %i.akv = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.akw = load i8, ptr %i.akv, align 1, !tbaa !2137 ; 3 uses
  %i.akx = icmp ult i8 %i.akw, 8
  br i1 %i.akx, label %bb.hi, label %sqlite3ReleaseTempReg.exit

bb.hi:                                            ; preds = %bb.hh
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.akz = add nuw nsw i8 %i.akw, 1
  store i8 %i.akz, ptr %i.akv, align 1, !tbaa !2137
  %i.ala = zext nneg i8 %i.akw to i64
  %i.alb = getelementptr inbounds nuw [4 x i8], ptr %i.aky, i64 %i.ala
  store i32 %i.aku, ptr %i.alb, align 4, !tbaa !570
  br label %sqlite3ReleaseTempReg.exit

sqlite3ReleaseTempReg.exit:                       ; preds = %codeVectorCompare.exit, %bb.hh, %bb.hi
  %i.alc = load i32, ptr %i.d, align 4, !tbaa !570 ; 2 uses
  %.not.i677 = icmp eq i32 %i.alc, 0
  br i1 %.not.i677, label %.critedge, label %bb.hj

bb.hj:                                            ; preds = %sqlite3ReleaseTempReg.exit
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.ale = load i8, ptr %i.ald, align 1, !tbaa !2137 ; 3 uses
  %i.alf = icmp ult i8 %i.ale, 8
  br i1 %i.alf, label %bb.hk, label %.critedge

bb.hk:                                            ; preds = %bb.hj
  %i.alg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.alh = add nuw nsw i8 %i.ale, 1
  store i8 %i.alh, ptr %i.ald, align 1, !tbaa !2137
  %i.ali = zext nneg i8 %i.ale to i64
  %i.alj = getelementptr inbounds nuw [4 x i8], ptr %i.alg, i64 %i.ali
  store i32 %i.alc, ptr %i.alj, align 4, !tbaa !570
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.aj, %bb.ai, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fg, %bb.ei, %bb.eb, %bb.dz, %bb.l, %bb.m, %bb.k, %bb.i, %bb.o, %bb.g, %bb.hk, %bb.hj, %sqlite3ReleaseTempReg.exit, %bb.fs, %.split1325.us, %bb.dy, %bb.dk, %bb.dl, %bb.ah, %sqlite3TableColumnAffinity.exit.thread, %sqlite3TableColumnAffinity.exit, %bb.ac, %bb.ad, %bb.ab, %bb.y, %bb.v, %bb.ag, %bb.hb, %.split1361.us, %.split1338.us, %.split1334.us, %bb.fz, %.split1278.us, %.split1274.us, %.split1270.us, %.split1266.us, %.split1262.us, %.split1258.us, %.split1254.us, %.split1250.us, %.split1246.us
  %.7 = phi i32 [ %2, %bb.aj ], [ %.1543, %bb.hk ], [ %i.ym, %bb.dz ], [ 0, %.split1325.us ], [ %2, %.split1246.us ], [ %2, %.split1250.us ], [ %2, %.split1254.us ], [ %2, %.split1258.us ], [ %2, %.split1262.us ], [ %2, %.split1266.us ], [ %2, %.split1270.us ], [ %i.gh, %.split1274.us ], [ %2, %.split1278.us ], [ %i.ej, %bb.ag ], [ %i.yc, %bb.dy ], [ %i.ao, %bb.g ], [ %2, %bb.dk ], [ %i.aea, %bb.fz ], [ %2, %.split1334.us ], [ %2, %.split1338.us ], [ %2, %.split1361.us ], [ 0, %bb.hb ], [ %i.dq, %bb.ac ], [ %i.cg, %sqlite3TableColumnAffinity.exit ], [ %2, %bb.ah ], [ %i.cg, %sqlite3TableColumnAffinity.exit.thread ], [ %i.dj, %bb.v ], [ 0, %bb.y ], [ %i.dq, %bb.ab ], [ %2, %bb.ad ], [ %2, %bb.dl ], [ %i.acw, %bb.fs ], [ %.1543, %sqlite3ReleaseTempReg.exit ], [ %.1543, %bb.hj ], [ %2, %bb.l ], [ %2, %bb.m ], [ %2, %bb.k ], [ %2, %bb.i ], [ %2, %bb.o ], [ %2, %bb.fm ], [ %2, %bb.fl ], [ %2, %bb.fk ], [ %2, %bb.fj ], [ %2, %bb.fi ], [ %2, %bb.fg ], [ %i.zs, %bb.ei ], [ %i.yu, %bb.eb ], [ %2, %bb.ai ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  ret i32 %.7
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sqlite3ExprSkipCollateAndLikely(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) unnamed_addr #14 {
bb.a:
  %.not9 = icmp eq ptr %0, null
  br i1 %.not9, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.010 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.010, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !795  ; 2 uses
  %i.c = and i32 %i.b, 532480
  %.not7 = icmp eq i32 %i.c, 0
  br i1 %.not7, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = and i32 %i.b, 524288
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.010, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !733
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %.010, align 8, !tbaa !1828
  %i.i = icmp eq i8 %i.h, 114
  br i1 %i.i, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.010, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.1.in = phi ptr [ %i.g, %bb.c ], [ %i.j, %bb.e ]
  %.1 = load ptr, ptr %.1.in, align 8, !tbaa !792 ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !348

.critedge:                                        ; preds = %.lr.ph, %bb.d, %bb.f, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ %.010, %bb.d ], [ %.010, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef i32 @sqlite3IndexedExprLookup(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.Walker, align 8             ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.05685 = load ptr, ptr %i.a, align 8, !tbaa !2223 ; 2 uses
  %.not86 = icmp eq ptr %.05685, null
  br i1 %.not86, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
end_hunk_1
begin_hunk_2_@jsonExtractFunc:bb.a
bb.bv:                                            ; preds = %jsonAppendSeparator.exit111
  call fastcc void @jsonStringExpandAndAppend(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i32 noundef 4), !inline_history !1971
  br label %bb.by

bb.bw:                                            ; preds = %jsonAppendSeparator.exit111
  %i.gz = load ptr, ptr %i.p, align 8, !tbaa !1925
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gw
  store i32 1819047278, ptr %i.ha, align 1
  %i.hb = load i64, ptr %i.r, align 8, !tbaa !1936
  %i.hc = add i64 %i.hb, 4
  store i64 %i.hc, ptr %i.r, align 8, !tbaa !1936
  br label %bb.by

bb.bx:                                            ; preds = %bb.bo
  call fastcc void @jsonBadPathError(ptr noundef %0, ptr noundef %.0.i.i, i32 noundef %.0)
  br label %sqlite3_result_subtype.exit

bb.by:                                            ; preds = %jsonAppendSeparator.exit, %bb.bd, %bb.be, %bb.bc, %bb.bi, %bb.bb, %bb.bh, %bb.bv, %bb.bw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !5733

._crit_edge:                                      ; preds = %bb.by
  br i1 %.not, label %sqlite3_result_subtype.exit, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge
  %i.hd = load i64, ptr %i.r, align 8, !tbaa !1936 ; 3 uses
  %i.he = load i64, ptr %i.q, align 8, !tbaa !1926
  %.not.i114 = icmp ult i64 %i.hd, %i.he
  br i1 %.not.i114, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 93), !inline_history !279
  br label %jsonAppendChar.exit115

bb.cb:                                            ; preds = %bb.bz
  %i.hf = load ptr, ptr %i.p, align 8, !tbaa !1925
  %i.hg = add nuw i64 %i.hd, 1
  store i64 %i.hg, ptr %i.r, align 8, !tbaa !1936
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hd
  store i8 93, ptr %i.hh, align 1, !tbaa !733
  br label %jsonAppendChar.exit115

jsonAppendChar.exit115:                           ; preds = %bb.ca, %bb.cb
  call fastcc void @jsonReturnString(ptr noundef %3, ptr noundef null, ptr noundef null)
  %i.hi = and i32 %i.m, 16
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %bb.cc, label %sqlite3_result_subtype.exit

bb.cc:                                            ; preds = %jsonAppendChar.exit115
  %i.hk = load ptr, ptr %i.h, align 8, !tbaa !735 ; 3 uses
  %.not.i116 = icmp eq ptr %i.hk, null
  br i1 %.not.i116, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !1103
  %i.hn = and i32 %i.hm, 16777216
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !732
  %i.hr = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.21, ptr noundef %i.hq), !inline_history !1950 ; 0 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.hs, align 4, !tbaa !570
  %i.ht = load ptr, ptr %0, align 8, !tbaa !761
  %i.hu = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.ht, ptr noundef nonnull %i.a, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1951 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3_result_subtype.exit

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %i.hv = load ptr, ptr %0, align 8, !tbaa !761   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 23
  store i8 74, ptr %i.hw, align 1, !tbaa !1096
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 20 ; 2 uses
  %i.hy = load i16, ptr %i.hx, align 4, !tbaa !686
  %i.hz = or i16 %i.hy, 2048
  store i16 %i.hz, ptr %i.hx, align 4, !tbaa !686
  br label %sqlite3_result_subtype.exit

sqlite3_result_subtype.exit:                      ; preds = %bb.h, %bb.d, %sqlite3_value_text.exit, %bb.bp, %bb.cf, %bb.ce, %bb.ao, %bb.bx, %._crit_edge, %jsonAppendChar.exit115
  %i.ia = load i8, ptr %i.s, align 8, !tbaa !1927
  %.not.i118 = icmp eq i8 %i.ia, 0
  br i1 %.not.i118, label %bb.cg, label %bb.cn

bb.cg:                                            ; preds = %sqlite3_result_subtype.exit
  %i.ib = load ptr, ptr %i.p, align 8, !tbaa !1925
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -8 ; 5 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !1666 ; 2 uses
  %i.ie = icmp ugt i64 %i.id, 1
  br i1 %i.ie, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.if = add i64 %i.id, -1
  store i64 %i.if, ptr %i.ic, align 8, !tbaa !1666
  br label %bb.cn

bb.ci:                                            ; preds = %bb.cg
  %i.ig = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i.i119 = icmp eq i32 %i.ig, 0
  br i1 %.not.i.i.i119, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ih = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i120 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i120, label %sqlite3_mutex_enter.exit.i.i.i121, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.ii(ptr noundef nonnull %i.ih) #58, !inline_history !1953
  br label %sqlite3_mutex_enter.exit.i.i.i121

sqlite3_mutex_enter.exit.i.i.i121:                ; preds = %bb.ck, %bb.cj
  %i.ij = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ik = call i32 %i.ij(ptr noundef nonnull %i.ic) #58, !inline_history !276
  %i.il = sext i32 %i.ik to i64
  %i.im = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.in = sub nsw i64 %i.im, %i.il
  store i64 %i.in, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.io = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ip = add nsw i64 %i.io, -1
  store i64 %i.ip, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.iq(ptr noundef nonnull %i.ic) #58, !inline_history !1954
  %i.ir = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i122 = icmp eq ptr %i.ir, null
  br i1 %.not.i4.i.i.i122, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i121
  %i.is = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.is(ptr noundef nonnull %i.ir) #58, !inline_history !1955
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ci
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.it(ptr noundef nonnull %i.ic) #58, !inline_history !1954
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %sqlite3_mutex_enter.exit.i.i.i121, %bb.ch, %sqlite3_result_subtype.exit
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1925
  store i64 100, ptr %i.q, align 8, !tbaa !1926
  store i64 0, ptr %i.r, align 8, !tbaa !1936
  store i8 1, ptr %i.s, align 8, !tbaa !1927
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !1977 ; 2 uses
  %i.iw = icmp ugt i32 %i.iv, 1
  br i1 %i.iw, label %bb.co, label %sqlite3DbFree.exit.i

bb.co:                                            ; preds = %bb.cn
  %i.ix = add i32 %i.iv, -1
  store i32 %i.ix, ptr %i.iu, align 4, !tbaa !1977
  br label %jsonParseFree.exit

sqlite3DbFree.exit.i:                             ; preds = %bb.cn
  call fastcc void @jsonParseReset(ptr noundef nonnull %i.f)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !1961
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.iz, ptr noundef nonnull %i.f)
  br label %jsonParseFree.exit

jsonParseFree.exit:                               ; preds = %sqlite3DbFree.exit.i, %bb.co, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @jsonObjectFunc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 4 uses
  %3 = alloca %struct.JsonString, align 8         ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.b = and i32 %1, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %jsonAppendChar.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.c, align 4, !tbaa !570
  %i.d = load ptr, ptr %0, align 8, !tbaa !761
  %i.e = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.d, ptr noundef nonnull @.str.1454, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1104 ; 0 uses
  br label %sqlite3_result_subtype.exit

jsonAppendChar.exit:                              ; preds = %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !1970
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 0, ptr %i.f, align 1, !tbaa !1969
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 34 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !1925
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 100, ptr %i.i, align 8, !tbaa !1926
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 1, ptr %i.k, align 8, !tbaa !1927
  store i64 1, ptr %i.j, align 8, !tbaa !1936
  store i8 123, ptr %i.g, align 2, !tbaa !733
  %i.l = icmp sgt i32 %1, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %jsonAppendChar.exit, %jsonAppendChar.exit23
  %indvars.iv = phi i64 [ %indvars.iv.next, %jsonAppendChar.exit23 ], [ 0, %jsonAppendChar.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !761
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i16, ptr %i.o, align 4, !tbaa !686
  %i.q = and i16 %i.p, 63
  %i.r = zext nneg i16 %i.q to i64
  %i.s = shl nuw i64 1, %i.r
  %i.t = and i64 %i.s, 1125899907104772
  %.not17.not = icmp eq i64 %i.t, 0
  br i1 %.not17.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.u, align 4, !tbaa !570
  %i.v = load ptr, ptr %0, align 8, !tbaa !761
  %i.w = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.v, ptr noundef nonnull @.str.1455, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1104 ; 0 uses
  %i.x = load i8, ptr %i.k, align 8, !tbaa !1927
  %.not.i18 = icmp eq i8 %i.x, 0
  br i1 %.not.i18, label %bb.d, label %sqlite3_result_subtype.exit

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !1925
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 5 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1666 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = add i64 %i.aa, -1
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !1666
  br label %sqlite3_result_subtype.exit

bb.f:                                             ; preds = %bb.d
  %i.ad = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.af(ptr noundef nonnull %i.ae) #58, !inline_history !1953
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.h, %bb.g
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ah = call i32 %i.ag(ptr noundef nonnull %i.z) #58, !inline_history !276
  %i.ai = sext i32 %i.ah to i64
  %i.aj = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ak = sub nsw i64 %i.aj, %i.ai
  store i64 %i.ak, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.am = add nsw i64 %i.al, -1
  store i64 %i.am, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.an(ptr noundef nonnull %i.z) #58, !inline_history !1954
  %i.ao = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i4.i.i.i, label %sqlite3_result_subtype.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.ap(ptr noundef nonnull %i.ao) #58, !inline_history !1955
  br label %sqlite3_result_subtype.exit

bb.j:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.aq(ptr noundef nonnull %i.z) #58, !inline_history !1954
  br label %sqlite3_result_subtype.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ar = load i64, ptr %i.j, align 8, !tbaa !1936 ; 4 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %jsonAppendSeparator.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !1925
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ar  ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !733
  %i.ax = and i8 %i.aw, -33
  %or.cond.i = icmp eq i8 %i.ax, 91
  br i1 %or.cond.i, label %jsonAppendSeparator.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %i.i, align 8, !tbaa !1926
  %.not.i.i = icmp ult i64 %i.ar, %i.ay
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 44), !inline_history !454
  br label %jsonAppendSeparator.exit

bb.o:                                             ; preds = %bb.m
  %i.az = add nuw i64 %i.ar, 1
  store i64 %i.az, ptr %i.j, align 8, !tbaa !1936
  store i8 44, ptr %i.au, align 1, !tbaa !733
  br label %jsonAppendSeparator.exit

jsonAppendSeparator.exit:                         ; preds = %bb.k, %bb.l, %bb.n, %bb.o
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !761, !nonnull !1254, !noundef !1254 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !686 ; 2 uses
  %i.bd = and i16 %i.bc, 514
  %i.be = icmp eq i16 %i.bd, 514
  br i1 %i.be, label %bb.p, label %bb.r

bb.p:                                             ; preds = %jsonAppendSeparator.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 22
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !787
  %i.bh = icmp eq i8 %i.bg, 1
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !762
  br label %sqlite3_value_text.exit

bb.r:                                             ; preds = %bb.p, %jsonAppendSeparator.exit
  %i.bk = and i16 %i.bc, 1
  %.not9.i.i = icmp eq i16 %i.bk, 0
  br i1 %.not9.i.i, label %bb.s, label %sqlite3_value_text.exit

bb.s:                                             ; preds = %bb.r
  %i.bl = call fastcc ptr @valueToText(ptr noundef nonnull %i.ba, i8 noundef zeroext 1), !inline_history !947
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !761
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.q, %bb.r, %bb.s
  %i.bm = phi ptr [ %i.ba, %bb.q ], [ %i.ba, %bb.r ], [ %.pre, %bb.s ] ; 6 uses
  %.0.i.i = phi ptr [ %i.bj, %bb.q ], [ null, %bb.r ], [ %i.bl, %bb.s ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.bo = load i16, ptr %i.bn, align 4, !tbaa !686 ; 2 uses
  %i.bp = and i16 %i.bo, 2
  %.not.i.i20 = icmp eq i16 %i.bp, 0
  br i1 %.not.i.i20, label %.thread.i.i, label %bb.t

bb.t:                                             ; preds = %sqlite3_value_text.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 22
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !787
  %i.bs = icmp eq i8 %i.br, 1
  br i1 %i.bs, label %bb.u, label %.thread.i.i

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !1093
  br label %sqlite3_value_bytes.exit

.thread.i.i:                                      ; preds = %bb.t, %sqlite3_value_text.exit
  %i.bv = zext i16 %i.bo to i32                   ; 3 uses
  %i.bw = and i32 %i.bv, 16
  %.not20.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not20.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.thread.i.i
  %i.bx = and i32 %i.bv, 1024
  %.not22.i.i = icmp eq i32 %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !1093 ; 2 uses
  br i1 %.not22.i.i, label %sqlite3_value_bytes.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = load i32, ptr %i.bm, align 8, !tbaa !733
  %i.cb = add nsw i32 %i.ca, %i.bz
  br label %sqlite3_value_bytes.exit

bb.x:                                             ; preds = %.thread.i.i
  %i.cc = and i32 %i.bv, 1
  %.not21.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not21.i.i, label %bb.y, label %sqlite3_value_bytes.exit

bb.y:                                             ; preds = %bb.x
  %i.cd = call fastcc i32 @valueBytes(ptr noundef nonnull %i.bm, i8 noundef zeroext 1), !inline_history !89
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y
  %.0.i.i21 = phi i32 [ %i.bu, %bb.u ], [ %i.bz, %bb.v ], [ %i.cb, %bb.w ], [ 0, %bb.x ], [ %i.cd, %bb.y ]
  call fastcc void @jsonAppendString(ptr noundef nonnull %3, ptr noundef %.0.i.i, i32 noundef %.0.i.i21)
  %i.ce = load i64, ptr %i.j, align 8, !tbaa !1936 ; 3 uses
  %i.cf = load i64, ptr %i.i, align 8, !tbaa !1926
  %.not.i22 = icmp ult i64 %i.ce, %i.cf
  br i1 %.not.i22, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %sqlite3_value_bytes.exit
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 58), !inline_history !279
  br label %jsonAppendChar.exit23

bb.aa:                                            ; preds = %sqlite3_value_bytes.exit
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !1925
  %i.ch = add nuw i64 %i.ce, 1
  store i64 %i.ch, ptr %i.j, align 8, !tbaa !1936
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 58, ptr %i.ci, align 1, !tbaa !733
  br label %jsonAppendChar.exit23

jsonAppendChar.exit23:                            ; preds = %bb.z, %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !761
  call fastcc void @jsonAppendSqlValue(ptr noundef %3, ptr noundef %i.ck)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %4 = trunc nuw i64 %indvars.iv.next to i32
  %5 = icmp sgt i32 %1, %4
  br i1 %5, label %.lr.ph, label %._crit_edge, !llvm.loop !5734

._crit_edge:                                      ; preds = %jsonAppendChar.exit23
  %.pre29 = load i64, ptr %i.j, align 8, !tbaa !1936 ; 2 uses
  %.pre30 = load i64, ptr %i.i, align 8, !tbaa !1926
  %i.cl = icmp ult i64 %.pre29, %.pre30
  br i1 %i.cl, label %._crit_edge.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  call fastcc void @jsonAppendCharExpand(ptr noundef nonnull %3, i8 noundef signext 125), !inline_history !279
  br label %jsonAppendChar.exit25

._crit_edge.thread:                               ; preds = %jsonAppendChar.exit, %._crit_edge
  %i.cm = phi i64 [ %.pre29, %._crit_edge ], [ 1, %jsonAppendChar.exit ] ; 2 uses
  %i.cn = load ptr, ptr %i.h, align 8, !tbaa !1925
  %i.co = add nuw i64 %i.cm, 1
  store i64 %i.co, ptr %i.j, align 8, !tbaa !1936
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 125, ptr %i.cp, align 1, !tbaa !733
  br label %jsonAppendChar.exit25

jsonAppendChar.exit25:                            ; preds = %bb.ab, %._crit_edge.thread
  call fastcc void @jsonReturnString(ptr noundef %3, ptr noundef null, ptr noundef null)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !735 ; 3 uses
  %.not.i26 = icmp eq ptr %i.cr, null
  br i1 %.not.i26, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %jsonAppendChar.exit25
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !1103
  %i.cu = and i32 %i.ct, 16777216
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !732
  %i.cy = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 200, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.21, ptr noundef %i.cx), !inline_history !1950 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.cz, align 4, !tbaa !570
  %i.da = load ptr, ptr %0, align 8, !tbaa !761
  %i.db = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.da, ptr noundef nonnull %i.a, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1951 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3_result_subtype.exit

bb.ae:                                            ; preds = %bb.ac, %jsonAppendChar.exit25
  %i.dc = load ptr, ptr %0, align 8, !tbaa !761   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 23
  store i8 74, ptr %i.dd, align 1, !tbaa !1096
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 20 ; 2 uses
  %i.df = load i16, ptr %i.de, align 4, !tbaa !686
  %i.dg = or i16 %i.df, 2048
  store i16 %i.dg, ptr %i.de, align 4, !tbaa !686
  br label %sqlite3_result_subtype.exit

sqlite3_result_subtype.exit:                      ; preds = %bb.j, %bb.i, %sqlite3_mutex_enter.exit.i.i.i, %bb.e, %bb.c, %bb.ae, %bb.ad, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @jsonPatchFunc(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !761
  %i.b = tail call fastcc ptr @jsonParseFuncArg(ptr noundef %0, ptr noundef %i.a, i32 noundef 1) ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %jsonParseFree.exit21, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !761
  %i.f = tail call fastcc ptr @jsonParseFuncArg(ptr noundef %0, ptr noundef %i.e, i32 noundef 0) ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %jsonParseFree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc i32 @jsonMergePatch(ptr noundef %i.b, i32 noundef 0, ptr noundef %i.f, i32 noundef 0, i32 noundef 0)
  switch i32 %i.g, label %bb.n [
    i32 0, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @jsonReturnParse(ptr noundef %0, ptr noundef %i.b)
  br label %sqlite3_result_error_nomem.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !761    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.j = load i16, ptr %i.i, align 4, !tbaa !686
  %i.k = and i16 %i.j, -28672
  %.not.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.h), !inline_history !1101
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !761
  br label %sqlite3VdbeMemSetNull.exit.i

bb.g:                                             ; preds = %bb.e
  store i16 1, ptr %i.i, align 4, !tbaa !686
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.g, %bb.f
  %i.l = phi ptr [ %.pre.i, %bb.f ], [ %i.h, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.m, align 4, !tbaa !570
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !683  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 103 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !918
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.h, label %sqlite3_result_error_nomem.exit

bb.h:                                             ; preds = %sqlite3VdbeMemSetNull.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.t = load i8, ptr %i.s, align 8, !tbaa !919
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.i, label %sqlite3_result_error_nomem.exit

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.p, align 1, !tbaa !918
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 220
  %i.w = load i32, ptr %i.v, align 4, !tbaa !920
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 400
  store atomic volatile i32 1, ptr %i.y monotonic, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 408 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !921
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !921
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 412
  store i16 0, ptr %i.ac, align 4, !tbaa !922
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 344 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !768 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ae, null
  br i1 %.not.i3.i, label %sqlite3_result_error_nomem.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.125), !inline_history !75
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !768 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 7, ptr %i.ag, align 8, !tbaa !779
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.l ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !780
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !780
  %i.ak = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.ak, align 8, !tbaa !779
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 224
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not16.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i, !llvm.loop !36

bb.m:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.al, align 4, !tbaa !570
  %i.am = load ptr, ptr %0, align 8, !tbaa !761
  %i.an = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.am, ptr noundef nonnull @.str.645, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1104 ; 0 uses
  br label %sqlite3_result_error_nomem.exit

bb.n:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.ao, align 4, !tbaa !570
  %i.ap = load ptr, ptr %0, align 8, !tbaa !761
  %i.aq = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.ap, ptr noundef nonnull @.str.619, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1104 ; 0 uses
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.d, %bb.m, %bb.n, %sqlite3VdbeMemSetNull.exit.i, %bb.h, %bb.k, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !1977 ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  br i1 %i.at, label %bb.o, label %sqlite3DbFree.exit.i

bb.o:                                             ; preds = %sqlite3_result_error_nomem.exit
  %i.au = add i32 %i.as, -1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !1977
  br label %jsonParseFree.exit

sqlite3DbFree.exit.i:                             ; preds = %sqlite3_result_error_nomem.exit
  tail call fastcc void @jsonParseReset(ptr noundef nonnull %i.f)
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1961
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.aw, ptr noundef nonnull %i.f)
end_hunk_2
