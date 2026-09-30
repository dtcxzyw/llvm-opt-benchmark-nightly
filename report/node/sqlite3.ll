Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@pcache1Free:bb.a
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.aa(ptr noundef nonnull %.pr) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit15

sqlite3_mutex_leave.exit15:                       ; preds = %bb.g, %sqlite3_mutex_enter.exit13, %sqlite3_mutex_enter.exit13.thread
  %i.ab = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i16 = icmp eq i32 %i.ab, 0
  br i1 %.not.i16, label %bb.k, label %bb.h

bb.h:                                             ; preds = %sqlite3_mutex_leave.exit15
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.ad(ptr noundef nonnull %i.ac) #59, !inline_history !754
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.i, %bb.h
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.af = tail call i32 %i.ae(ptr noundef nonnull %0) #59, !inline_history !13
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.ai = sub nsw i64 %i.ah, %i.ag
  store i64 %i.ai, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.ak = add nsw i64 %i.aj, -1
  store i64 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.al(ptr noundef nonnull %0) #59, !inline_history !755
  %i.am = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.am, null
  br i1 %.not.i4.i, label %sqlite3_mutex_leave.exit, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.an(ptr noundef nonnull %i.am) #59, !inline_history !756
  br label %sqlite3_mutex_leave.exit

bb.k:                                             ; preds = %sqlite3_mutex_leave.exit15
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.ao(ptr noundef nonnull %0) #59, !inline_history !755
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.k, %bb.j, %sqlite3_mutex_enter.exit.i, %bb.e, %sqlite3_mutex_enter.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pcache1Alloc(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 92), align 4, !tbaa !1340
  %.not = icmp sgt i32 %0, %i.a
  br i1 %.not, label %sqlite3_mutex_leave.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 120), align 8, !tbaa !1826 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.c(ptr noundef nonnull %i.b) #59, !inline_history !570
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.b, %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 128), align 8, !tbaa !1345 ; 3 uses
  %.not14 = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not14, label %sqlite3StatusUp.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1347
  store ptr %i.e, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 128), align 8, !tbaa !1345
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 136), align 8, !tbaa !1341 ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 136), align 8, !tbaa !1341
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 100), align 4, !tbaa !1343
  %i.i = icmp sle i32 %i.f, %i.h
  %i.j = zext i1 %i.i to i32
  store atomic i32 %i.j, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 140) monotonic, align 4
  %i.k = sext i32 %0 to i64                       ; 2 uses
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 136), align 8, !tbaa !571
  %i.m = icmp slt i64 %i.l, %i.k
  br i1 %i.m, label %bb.e, label %sqlite3StatusHighwater.exit

bb.e:                                             ; preds = %bb.d
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 136), align 8, !tbaa !571
  br label %sqlite3StatusHighwater.exit

sqlite3StatusHighwater.exit:                      ; preds = %bb.d, %bb.e
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 8), align 8, !tbaa !571 ; 2 uses
  %i.o = add nsw i64 %i.n, 1                      ; 2 uses
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 8), align 8, !tbaa !571
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 88), align 8, !tbaa !571
  %.not24 = icmp slt i64 %i.n, %i.p
  br i1 %.not24, label %sqlite3StatusUp.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3StatusHighwater.exit
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 88), align 8, !tbaa !571
  br label %sqlite3StatusUp.exit

sqlite3StatusUp.exit:                             ; preds = %bb.f, %sqlite3StatusHighwater.exit, %sqlite3_mutex_enter.exit
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 120), align 8, !tbaa !1826 ; 2 uses
  %.not.i16 = icmp eq ptr %i.q, null
  br i1 %.not.i16, label %sqlite3_mutex_leave.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3StatusUp.exit
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.r(ptr noundef nonnull %i.q) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.g, %sqlite3StatusUp.exit
  br i1 %.not14, label %sqlite3_mutex_leave.exit.thread, label %sqlite3_mutex_leave.exit22

sqlite3_mutex_leave.exit.thread:                  ; preds = %bb.a, %sqlite3_mutex_leave.exit
  %i.s = sext i32 %0 to i64                       ; 3 uses
  %i.t = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.s) ; 4 uses
  %.not15 = icmp eq ptr %i.t, null
  br i1 %.not15, label %sqlite3_mutex_leave.exit22, label %bb.h

bb.h:                                             ; preds = %sqlite3_mutex_leave.exit.thread
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.v = tail call i32 %i.u(ptr noundef nonnull %i.t) #59, !inline_history !12
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 120), align 8, !tbaa !1826 ; 2 uses
  %.not.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i17, label %sqlite3_mutex_enter.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.x(ptr noundef nonnull %i.w) #59, !inline_history !570
  br label %sqlite3_mutex_enter.exit18

sqlite3_mutex_enter.exit18:                       ; preds = %bb.h, %bb.i
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 136), align 8, !tbaa !571
  %i.z = icmp slt i64 %i.y, %i.s
  br i1 %i.z, label %bb.j, label %sqlite3StatusHighwater.exit19

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit18
  store i64 %i.s, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 136), align 8, !tbaa !571
  br label %sqlite3StatusHighwater.exit19

sqlite3StatusHighwater.exit19:                    ; preds = %sqlite3_mutex_enter.exit18, %bb.j
  %i.aa = sext i32 %i.v to i64
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 16), align 8, !tbaa !571
  %i.ac = add nsw i64 %i.ab, %i.aa                ; 3 uses
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 16), align 8, !tbaa !571
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 96), align 8, !tbaa !571
  %i.ae = icmp sgt i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.k, label %sqlite3StatusUp.exit20

bb.k:                                             ; preds = %sqlite3StatusHighwater.exit19
  store i64 %i.ac, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 96), align 8, !tbaa !571
  br label %sqlite3StatusUp.exit20

sqlite3StatusUp.exit20:                           ; preds = %sqlite3StatusHighwater.exit19, %bb.k
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pcache1_g, i64 120), align 8, !tbaa !1826 ; 2 uses
  %.not.i21 = icmp eq ptr %i.af, null
  br i1 %.not.i21, label %sqlite3_mutex_leave.exit22, label %bb.l

bb.l:                                             ; preds = %sqlite3StatusUp.exit20
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ag(ptr noundef nonnull %i.af) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit22

sqlite3_mutex_leave.exit22:                       ; preds = %bb.l, %sqlite3StatusUp.exit20, %sqlite3_mutex_leave.exit.thread, %sqlite3_mutex_leave.exit
  %.1 = phi ptr [ %i.d, %sqlite3_mutex_leave.exit ], [ null, %sqlite3_mutex_leave.exit.thread ], [ %i.t, %sqlite3StatusUp.exit20 ], [ %i.t, %bb.l ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zeroPage(ptr nofree noundef captures(none) initializes((1, 3), (8, 9), (10, 12), (20, 24), (120, 136)) %0, i32 noundef range(i32 0, 256) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1008 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1081 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !1082  ; 2 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load i16, ptr %i.h, align 8, !tbaa !1051
  %i.j = and i16 %i.i, 12
  %.not = icmp eq i16 %i.j, 0
  %.pre = zext i8 %i.f to i64                     ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1076
  %i.n = sub i32 %i.m, %i.g
  %i.o = zext i32 %i.n to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.o, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.p = trunc nuw i32 %1 to i8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre ; 5 uses
  store i8 %i.p, ptr %i.q, align 1, !tbaa !741
  %2 = and i32 %1, 8
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 12, i32 8
  %i.r = add nuw nsw i32 %4, %i.g                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i32 0, ptr %i.s, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 7
  store i8 0, ptr %i.t, align 1, !tbaa !741
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1076
  %i.w = lshr i32 %i.v, 8
  %i.x = trunc i32 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  store i8 %i.x, ptr %i.y, align 1, !tbaa !741
  %i.z = load i32, ptr %i.u, align 8, !tbaa !1076
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !741
  %i.ac = load i32, ptr %i.u, align 8, !tbaa !1076
  %i.ad = sub i32 %i.ac, %i.r
  %i.ae = and i32 %i.ad, 65535
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !1732
  %i.ag = tail call fastcc i32 @decodeFlags(ptr noundef nonnull %0, i32 noundef %1) ; 0 uses
  %i.ah = trunc nuw nsw i32 %i.r to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !1739
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !665 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1132
  %i.ao = zext nneg i32 %i.r to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !1127
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1734
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.au, ptr %i.av, align 8, !tbaa !1740
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.aw, align 4, !tbaa !1741
  %i.ax = trunc i32 %i.ak to i16
  %i.ay = add i16 %i.ax, -1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !1126
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 0, ptr %i.ba, align 8, !tbaa !1742
  store i8 1, ptr %0, align 8, !tbaa !1743
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @decodeFlags(ptr nofree noundef captures(none) initializes((1, 3), (8, 9), (10, 12), (120, 136)) %0, i32 noundef range(i32 0, 256) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1081 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 37
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1710
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.d, ptr %i.e, align 1, !tbaa !1733
  %i.f = icmp samesign ugt i32 %1, 9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.g, align 2, !tbaa !1734
  store i8 1, ptr %i.h, align 8, !tbaa !1125
  %trunc = trunc nuw i32 %1 to i8
  switch i8 %trunc, label %bb.e [
    i8 13, label %bb.c
    i8 10, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.i, align 2, !tbaa !1735
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @cellSizePtrTableLeaf, ptr %i.j, align 8, !tbaa !1736
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @btreeParseCellPtr, ptr %i.k, align 8, !tbaa !1737
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.l, align 1, !tbaa !1738
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.o = load <2 x i16>, ptr %i.m, align 2, !tbaa !789
  store <2 x i16> %i.o, ptr %i.n, align 2, !tbaa !789
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.p, align 1, !tbaa !1738
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.q, align 2, !tbaa !1735
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @cellSizePtrIdxLeaf, ptr %i.r, align 8, !tbaa !1736
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @btreeParseCellPtrIndex, ptr %i.s, align 8, !tbaa !1737
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.v = load <2 x i16>, ptr %i.t, align 2, !tbaa !789
  store <2 x i16> %i.v, ptr %i.u, align 2, !tbaa !789
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.w, align 1, !tbaa !1738
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.x, align 2, !tbaa !1735
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @cellSizePtrIdxLeaf, ptr %i.y, align 8, !tbaa !1736
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @btreeParseCellPtrIndex, ptr %i.z, align 8, !tbaa !1737
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74652, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  store i8 4, ptr %i.g, align 2, !tbaa !1734
  store i8 0, ptr %i.h, align 8, !tbaa !1125
  switch i32 %1, label %bb.i [
    i32 2, label %bb.g
    i32 5, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.aa, align 1, !tbaa !1738
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.ab, align 2, !tbaa !1735
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @cellSizePtr, ptr %i.ac, align 8, !tbaa !1736
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @btreeParseCellPtrIndex, ptr %i.ad, align 8, !tbaa !1737
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ag = load <2 x i16>, ptr %i.ae, align 2, !tbaa !789
  store <2 x i16> %i.ag, ptr %i.af, align 2, !tbaa !789
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.ah, align 2, !tbaa !1735
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @cellSizePtrNoPayload, ptr %i.ai, align 8, !tbaa !1736
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @btreeParseCellPtrNoPayload, ptr %i.aj, align 8, !tbaa !1737
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ak, align 1, !tbaa !1738
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.an = load <2 x i16>, ptr %i.al, align 2, !tbaa !789
  store <2 x i16> %i.an, ptr %i.am, align 2, !tbaa !789
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !1738
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.ap, align 2, !tbaa !1735
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @cellSizePtr, ptr %i.aq, align 8, !tbaa !1736
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr @btreeParseCellPtrIndex, ptr %i.ar, align 8, !tbaa !1737
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74676, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.c, %bb.h, %bb.g, %bb.i, %bb.e
  %.0 = phi i32 [ 11, %bb.i ], [ 11, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i16 @cellSizePtrTableLeaf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #14 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !741     ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp slt i8 %i.a, 0
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i32 %i.b, 7
  %i.e = and i32 %i.d, 16256
  %.ptr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %.ptr, align 1, !tbaa !741  ; 2 uses
  %i.g = and i8 %i.f, 127
  %i.h = zext nneg i8 %i.g to i32
  %i.i = or disjoint i32 %i.e, %i.h               ; 2 uses
  %i.j = icmp slt i8 %i.f, 0
  br i1 %i.j, label %bb.c, label %.loopexit.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = shl nuw nsw i32 %i.i, 7
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %.ptr.1, align 1, !tbaa !741 ; 2 uses
  %i.m = and i8 %i.l, 127
  %i.n = zext nneg i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 2 uses
  %i.p = icmp slt i8 %i.l, 0
  br i1 %i.p, label %bb.d, label %.loopexit.loopexit
end_hunk_0
begin_hunk_1_@balance:bb.a
  %i.ali = load i32, ptr %i.ajj, align 4, !tbaa !576
  %i.alj = sub nsw i32 %i.ali, %.1514.i
  store i32 %i.alj, ptr %i.ajj, align 4, !tbaa !576
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ahi
  br i1 %exitcond.not, label %._crit_edge801.i, label %.lr.ph800.i.split, !llvm.loop !5016

._crit_edge801.i:                                 ; preds = %bb.dw, %bb.dh, %.preheader723.i
  %i.alk = add nuw nsw i64 %indvars.iv952.i, 1    ; 2 uses
  %i.all = trunc nuw nsw i64 %i.alk to i32
  br label %bb.ea

.split.us:                                        ; preds = %cachedCellSize.exit640.i, %cachedCellSize.exit640.i.us
  %.us-phi.in = phi i64 [ %indvars.iv231, %cachedCellSize.exit640.i.us ], [ %indvars.iv, %cachedCellSize.exit640.i ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  %.not614.i = icmp eq i64 %indvars.iv952.i, 0
  br i1 %.not614.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %.split.us
  %i.alm = getelementptr i8, ptr %i.ajh, i64 -4
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !576
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %.split.us
  %i.alo = phi i32 [ %i.aln, %bb.dx ], [ 0, %.split.us ]
  %.not615.i = icmp slt i32 %i.alo, %.us-phi
  br i1 %.not615.i, label %._crit_edge1073.i, label %bb.dz

._crit_edge1073.i:                                ; preds = %bb.dy
  %.pre1074.i = add nuw nsw i64 %indvars.iv952.i, 1
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 81179, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20)), !inline_history !5005
  br label %.thread705.i

bb.ea:                                            ; preds = %._crit_edge1073.i, %._crit_edge801.i
  %indvars.iv.next953.pre-phi.i = phi i64 [ %.pre1074.i, %._crit_edge1073.i ], [ %i.alk, %._crit_edge801.i ] ; 2 uses
  %.8545.ph.i = phi i32 [ %.5542.lcssa.i, %._crit_edge1073.i ], [ %i.all, %._crit_edge801.i ] ; 9 uses
  %i.alp = sext i32 %.8545.ph.i to i64
  %i.alq = icmp slt i64 %indvars.iv.next953.pre-phi.i, %i.alp
  br i1 %i.alq, label %.preheader724.i, label %bb.eb, !llvm.loop !5018

bb.eb:                                            ; preds = %bb.ea
  %i.alr = add i32 %.8545.ph.i, -1                ; 3 uses
  %.not609.i = icmp eq i8 %i.ug, 0                ; 2 uses
  %i.als = sub nsw i32 0, %i.aaz
  %i.alt = sext i32 %i.als to i64
  %i.alu = zext i32 %i.alr to i64                 ; 3 uses
  %i.alv = icmp sgt i32 %i.alr, 0
  br i1 %i.alv, label %.lr.ph, label %._crit_edge

bb.ec:                                            ; preds = %bb.ek
  %i.alw = trunc nuw i64 %i.ama to i32
  %i.alx = icmp sgt i32 %i.alw, 0
  br i1 %i.alx, label %.lr.ph, label %._crit_edge, !llvm.loop !5019

.lr.ph:                                           ; preds = %bb.eb, %bb.ec
  %indvars.iv972.i421 = phi i64 [ %i.ama, %bb.ec ], [ %i.alu, %bb.eb ] ; 5 uses
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv972.i421 ; 2 uses
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !576 ; 2 uses
  %i.ama = add nsw i64 %indvars.iv972.i421, -1    ; 4 uses
  %i.amb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ama ; 2 uses
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !576 ; 2 uses
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ama ; 3 uses
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !576 ; 2 uses
  %i.amf = sub nsw i32 %i.ame, %i.aaz             ; 2 uses
  %i.amg = sext i32 %i.amf to i64
  %i.amh = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %i.amg
  %i.ami = load i16, ptr %i.amh, align 2, !tbaa !789
  %.not.i644.i = icmp eq i16 %i.ami, 0
  br i1 %.not.i644.i, label %bb.ed, label %cachedCellSize.exit646.i

bb.ed:                                            ; preds = %.lr.ph
  %i.amj = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.amf), !inline_history !5005 ; 0 uses
  br label %cachedCellSize.exit646.i

cachedCellSize.exit646.i:                         ; preds = %bb.ed, %.lr.ph
  %i.amk = icmp eq i64 %indvars.iv972.i421, %i.alu
  %.neg.i = select i1 %i.amk, i32 0, i32 -2
  %i.aml = sext i32 %i.ame to i64                 ; 3 uses
  %i.amm = add nsw i64 %i.aml, %i.alt             ; 2 uses
  br i1 %.not609.i, label %cachedCellSize.exit646.split.us.i, label %cachedCellSize.exit646.split.i

cachedCellSize.exit646.split.us.i:                ; preds = %cachedCellSize.exit646.i, %bb.eg
  %indvars.iv966.i = phi i64 [ %indvars.iv.next967.i, %bb.eg ], [ %i.amm, %cachedCellSize.exit646.i ] ; 2 uses
  %indvars.iv964.i = phi i64 [ %indvars.iv.next965.i, %bb.eg ], [ %i.aml, %cachedCellSize.exit646.i ] ; 3 uses
  %.0511.us.i = phi i32 [ %.pre-phi1078.i, %bb.eg ], [ %i.alz, %cachedCellSize.exit646.i ] ; 3 uses
  %.0509.us.i = phi i32 [ %i.amy, %bb.eg ], [ %i.amc, %cachedCellSize.exit646.i ] ; 3 uses
  %indvars.iv.next965.i = add nsw i64 %indvars.iv964.i, -1 ; 3 uses
  %indvars237 = trunc i64 %indvars.iv.next965.i to i32 ; 3 uses
  %i.amn = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv.next965.i
  %i.amo = load i16, ptr %i.amn, align 2, !tbaa !789 ; 2 uses
  %.not.i647.us.i = icmp eq i16 %i.amo, 0
  br i1 %.not.i647.us.i, label %bb.ee, label %cachedCellSize.exit649.us.i

bb.ee:                                            ; preds = %cachedCellSize.exit646.split.us.i
  %i.amp = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %indvars237), !inline_history !5005
  br label %cachedCellSize.exit649.us.i

cachedCellSize.exit649.us.i:                      ; preds = %bb.ee, %cachedCellSize.exit646.split.us.i
  %.0.i648.us.i = phi i16 [ %i.amp, %bb.ee ], [ %i.amo, %cachedCellSize.exit646.split.us.i ]
  %i.amq = zext i16 %.0.i648.us.i to i32          ; 2 uses
  %i.amr = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv966.i
  %i.ams = load i16, ptr %i.amr, align 2, !tbaa !789
  %i.amt = zext i16 %i.ams to i32                 ; 2 uses
  %.not608.us.i = icmp eq i32 %.0511.us.i, 0
  br i1 %.not608.us.i, label %cachedCellSize.exit649.us._crit_edge.i, label %bb.ef

cachedCellSize.exit649.us._crit_edge.i:           ; preds = %cachedCellSize.exit649.us.i
  %.pre1077.i = add nuw nsw i32 %i.amt, 2
  br label %bb.eg

bb.ef:                                            ; preds = %cachedCellSize.exit649.us.i
  %i.amu = add i32 %.0511.us.i, 2
  %i.amv = add i32 %i.amu, %i.amt                 ; 2 uses
  %.neg715.us.i = add i32 %.0509.us.i, %.neg.i
  %i.amw = sub i32 %.neg715.us.i, %i.amq
  %i.amx = icmp sgt i32 %i.amv, %i.amw
  br i1 %i.amx, label %.thread678.i.loopexit.split.loop.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %cachedCellSize.exit649.us._crit_edge.i
  %.pre-phi1078.i = phi i32 [ %.pre1077.i, %cachedCellSize.exit649.us._crit_edge.i ], [ %i.amv, %bb.ef ] ; 2 uses
  %.neg716.us.i = add i32 %.0509.us.i, -2
  %i.amy = sub i32 %.neg716.us.i, %i.amq          ; 2 uses
  store i32 %indvars237, ptr %i.amd, align 4, !tbaa !576
  %indvars.iv.next967.i = add nsw i64 %indvars.iv966.i, -1
  %i.amz = icmp sgt i64 %indvars.iv964.i, 1
  br i1 %i.amz, label %cachedCellSize.exit646.split.us.i, label %.thread678.i, !llvm.loop !5020

cachedCellSize.exit646.split.i:                   ; preds = %cachedCellSize.exit646.i, %bb.ei
  %indvars.iv958.i = phi i64 [ %indvars.iv.next959.i, %bb.ei ], [ %i.amm, %cachedCellSize.exit646.i ] ; 2 uses
  %indvars.iv956.i = phi i64 [ %indvars.iv.next957.i, %bb.ei ], [ %i.aml, %cachedCellSize.exit646.i ] ; 3 uses
  %.0511.i = phi i32 [ %i.anh, %bb.ei ], [ %i.alz, %cachedCellSize.exit646.i ] ; 2 uses
  %.0509.i = phi i32 [ %i.ani, %bb.ei ], [ %i.amc, %cachedCellSize.exit646.i ] ; 2 uses
  %indvars.iv.next957.i = add nsw i64 %indvars.iv956.i, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next957.i to i32 ; 3 uses
  %i.ana = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv.next957.i
  %i.anb = load i16, ptr %i.ana, align 2, !tbaa !789 ; 2 uses
  %.not.i647.i = icmp eq i16 %i.anb, 0
  br i1 %.not.i647.i, label %bb.eh, label %cachedCellSize.exit649.i

bb.eh:                                            ; preds = %cachedCellSize.exit646.split.i
  %i.anc = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %indvars), !inline_history !5005
  br label %cachedCellSize.exit649.i

cachedCellSize.exit649.i:                         ; preds = %bb.eh, %cachedCellSize.exit646.split.i
  %.0.i648.i = phi i16 [ %i.anc, %bb.eh ], [ %i.anb, %cachedCellSize.exit646.split.i ]
  %.not608.i = icmp eq i32 %.0511.i, 0
  br i1 %.not608.i, label %bb.ei, label %.thread678.i.loopexit307.split.loop.exit

bb.ei:                                            ; preds = %cachedCellSize.exit649.i
  %i.and = getelementptr inbounds [2 x i8], ptr %i.aaq, i64 %indvars.iv958.i
  %i.ane = load i16, ptr %i.and, align 2, !tbaa !789
  %i.anf = zext i16 %i.ane to i32
  %i.ang = zext i16 %.0.i648.i to i32
  %i.anh = add nuw nsw i32 %i.anf, 2              ; 2 uses
  %.neg716.i = add i32 %.0509.i, -2
  %i.ani = sub i32 %.neg716.i, %i.ang             ; 2 uses
  store i32 %indvars, ptr %i.amd, align 4, !tbaa !576
  %indvars.iv.next959.i = add nsw i64 %indvars.iv958.i, -1
  %i.anj = icmp sgt i64 %indvars.iv956.i, 1
  br i1 %i.anj, label %cachedCellSize.exit646.split.i, label %.thread678.i, !llvm.loop !5020

.thread678.i.loopexit.split.loop.exit:            ; preds = %bb.ef
  %indvars238.le = trunc i64 %indvars.iv964.i to i32
  br label %.thread678.i

.thread678.i.loopexit307.split.loop.exit:         ; preds = %cachedCellSize.exit649.i
  %indvars236.le = trunc i64 %indvars.iv956.i to i32
  br label %.thread678.i

.thread678.i:                                     ; preds = %bb.ei, %bb.eg, %.thread678.i.loopexit307.split.loop.exit, %.thread678.i.loopexit.split.loop.exit
  %i.ank = phi i32 [ %indvars237, %bb.eg ], [ %indvars238.le, %.thread678.i.loopexit.split.loop.exit ], [ %indvars236.le, %.thread678.i.loopexit307.split.loop.exit ], [ %indvars, %bb.ei ]
  %.us-phi.i = phi i32 [ %i.amy, %bb.eg ], [ %.0509.us.i, %.thread678.i.loopexit.split.loop.exit ], [ %.0509.i, %.thread678.i.loopexit307.split.loop.exit ], [ %i.ani, %bb.ei ]
  %.us-phi805.i = phi i32 [ %.pre-phi1078.i, %bb.eg ], [ %.0511.us.i, %.thread678.i.loopexit.split.loop.exit ], [ %.0511.i, %.thread678.i.loopexit307.split.loop.exit ], [ %i.anh, %bb.ei ]
  store i32 %.us-phi805.i, ptr %i.aly, align 4, !tbaa !576
  store i32 %.us-phi.i, ptr %i.amb, align 4, !tbaa !576
  %.not610.i = icmp eq i64 %indvars.iv972.i421, 1
  br i1 %.not610.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %.thread678.i
  %i.anl = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv972.i421
  %i.anm = getelementptr i8, ptr %i.anl, i64 -8
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !576
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %.thread678.i
  %i.ano = phi i32 [ %i.ann, %bb.ej ], [ 0, %.thread678.i ]
  %.not611.i = icmp sgt i32 %i.ank, %i.ano
  br i1 %.not611.i, label %bb.ec, label %bb.el, !llvm.loop !5019

bb.el:                                            ; preds = %bb.ek
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 81223, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20)), !inline_history !5005
  br label %.thread705.i

._crit_edge:                                      ; preds = %bb.ec, %bb.eb
  %i.anp = load ptr, ptr %i.aba, align 8, !tbaa !1008
  %i.anq = load i8, ptr %i.anp, align 1, !tbaa !741 ; 2 uses
  %i.anr = zext i8 %i.anq to i32                  ; 3 uses
  %i.ans = icmp sgt i32 %.8545.ph.i, 0            ; 2 uses
  br i1 %i.ans, label %.lr.ph811.i, label %.._crit_edge823.i_crit_edge

.._crit_edge823.i_crit_edge:                      ; preds = %._crit_edge
  %.pre240 = and i32 %i.anr, 8
  br label %._crit_edge823.i

.lr.ph811.i:                                      ; preds = %._crit_edge
  %i.ant = sub nsw i32 %i.jp, %.1536.i
  %6 = and i32 %i.anr, 8                          ; 3 uses
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 12, i32 8
  %i.anu = getelementptr inbounds nuw i8, ptr %i.uj, i64 33
  %i.anv = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.anw = zext i32 %i.ant to i64
  %wide.trip.count982.i = zext nneg i32 %.8545.ph.i to i64 ; 6 uses
  br label %bb.em

bb.em:                                            ; preds = %bb.fa, %.lr.ph811.i
  %indvars.iv976.i = phi i64 [ 0, %.lr.ph811.i ], [ %indvars.iv.next977.i, %bb.fa ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #59
  %.not602.i = icmp samesign ugt i64 %indvars.iv976.i, %i.wm
  br i1 %.not602.i, label %bb.ew, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv976.i ; 2 uses
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !1752 ; 3 uses
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv976.i
  store ptr %i.any, ptr %i.anz, align 8, !tbaa !1752
  store ptr %i.any, ptr %i.k, align 8, !tbaa !1752
  store ptr null, ptr %i.anx, align 8, !tbaa !1752
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.any, i64 112 ; 2 uses
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !1029 ; 6 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 40
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !903 ; 5 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aob, i64 52
  %i.aof = load i16, ptr %i.aoe, align 4, !tbaa !902
  %i.aog = and i16 %i.aof, 4
  %.not.i650.i = icmp eq i16 %i.aog, 0
  br i1 %.not.i650.i, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aod, i64 32
  %i.aoi = load i32, ptr %i.aoh, align 8, !tbaa !1021
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aob, i64 48
  %i.aok = load i32, ptr %i.aoj, align 8, !tbaa !908
  %.not13.i.i95 = icmp ult i32 %i.aoi, %i.aok
  br i1 %.not13.i.i95, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aod, i64 128
  %i.aom = load i32, ptr %i.aol, align 8, !tbaa !1011
  %.not15.i.i96 = icmp eq i32 %i.aom, 0
  br i1 %.not15.i.i96, label %sqlite3PagerWrite.exit.i97, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aon = call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.aob), !inline_history !5021
  br label %sqlite3PagerWrite.exit.i97

bb.er:                                            ; preds = %bb.eo, %bb.en
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aod, i64 48
  %i.aop = load i32, ptr %i.aoo, align 8, !tbaa !1023 ; 2 uses
  %.not14.i.i99 = icmp eq i32 %i.aop, 0
  br i1 %.not14.i.i99, label %bb.es, label %sqlite3PagerWrite.exit.i97

bb.es:                                            ; preds = %bb.er
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aod, i64 184
  %i.aor = load i32, ptr %i.aoq, align 8, !tbaa !1024
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aod, i64 200
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !637
  %i.aou = trunc i64 %i.aot to i32
  %i.aov = icmp ugt i32 %i.aor, %i.aou
  br i1 %i.aov, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.aow = call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.aob), !inline_history !5021
  br label %sqlite3PagerWrite.exit.i97

bb.eu:                                            ; preds = %bb.es
  %i.aox = call fastcc i32 @pager_write(ptr noundef nonnull %i.aob), !inline_history !5021
  br label %sqlite3PagerWrite.exit.i97

sqlite3PagerWrite.exit.i97:                       ; preds = %bb.eu, %bb.et, %bb.er, %bb.eq, %bb.ep
  %.pr.i98 = phi i32 [ %i.aon, %bb.eq ], [ %i.aox, %bb.eu ], [ 0, %bb.ep ], [ %i.aow, %bb.et ], [ %i.aop, %bb.er ] ; 3 uses
  store i32 %.pr.i98, ptr %i.a, align 4, !tbaa !576
  %i.aoy = load ptr, ptr %i.aoa, align 8, !tbaa !1029
  %i.aoz = getelementptr i8, ptr %i.aoy, i64 56
  %.val.i = load i64, ptr %i.aoz, align 8, !tbaa !1356
  %i.apa = trunc i64 %.val.i to i32
  %i.apb = icmp eq i64 %indvars.iv976.i, %i.anw
  %i.apc = select i1 %i.apb, i32 2, i32 1
  %i.apd = icmp ne i32 %i.apc, %i.apa
  %i.ape = icmp eq i32 %.pr.i98, 0                ; 2 uses
  %or.cond3.i = select i1 %i.apd, i1 %i.ape, i1 false
  br i1 %or.cond3.i, label %.thread689.i, label %bb.ev

.thread689.i:                                     ; preds = %sqlite3PagerWrite.exit.i97
  %indvars979.le.i = trunc nuw nsw i64 %indvars.iv976.i to i32
  %i.apf = add nuw nsw i32 %indvars979.le.i, 1
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 81256, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20)), !inline_history !5005
  br label %.thread692.i

bb.ev:                                            ; preds = %sqlite3PagerWrite.exit.i97
  br i1 %i.ape, label %bb.fa, label %.thread692.loopexit.split.loop.exit1168.i

bb.ew:                                            ; preds = %bb.em
  %i.apg = load i32, ptr %i.h, align 4
  %i.aph = select i1 %.not609.i, i32 %i.apg, i32 1
  %i.api = call fastcc i32 @allocateBtreePage(ptr noundef %i.uj, ptr noundef %i.k, ptr noundef %i.h, i32 noundef %i.aph, i8 noundef zeroext 0), !inline_history !5005 ; 3 uses
  store i32 %i.api, ptr %i.a, align 4, !tbaa !576
  %.not604.i = icmp eq i32 %i.api, 0
  br i1 %.not604.i, label %bb.ex, label %.thread692.loopexit.split.loop.exit1171.i

bb.ex:                                            ; preds = %bb.ew
  %i.apj = load ptr, ptr %i.k, align 8, !tbaa !1752 ; 16 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 80
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !1008 ; 5 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apj, i64 72
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !1081 ; 4 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apj, i64 9
  %i.app = load i8, ptr %i.apo, align 1, !tbaa !1082 ; 2 uses
  %i.apq = zext i8 %i.app to i32                  ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apn, i64 40
  %i.aps = load i16, ptr %i.apr, align 8, !tbaa !1051
  %i.apt = and i16 %i.aps, 12
  %.not.i652.i = icmp eq i16 %i.apt, 0
  %.pre.i.i100 = zext i8 %i.app to i64            ; 2 uses
  br i1 %.not.i652.i, label %zeroPage.exit.i101, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apl, i64 %.pre.i.i100
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apn, i64 56
  %i.apw = load i32, ptr %i.apv, align 8, !tbaa !1076
  %i.apx = sub i32 %i.apw, %i.apq
  %i.apy = zext i32 %i.apx to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.apu, i8 0, i64 %i.apy, i1 false)
  br label %zeroPage.exit.i101

zeroPage.exit.i101:                               ; preds = %bb.ey, %bb.ex
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apl, i64 %.pre.i.i100 ; 5 uses
  store i8 %i.anq, ptr %i.apz, align 1, !tbaa !741
  %i.aqa = add nuw nsw i32 %8, %i.apq             ; 3 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apz, i64 1
  store i32 0, ptr %i.aqb, align 1
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apz, i64 7
  store i8 0, ptr %i.aqc, align 1, !tbaa !741
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apn, i64 56 ; 3 uses
  %i.aqe = load i32, ptr %i.aqd, align 8, !tbaa !1076
  %i.aqf = lshr i32 %i.aqe, 8
  %i.aqg = trunc i32 %i.aqf to i8
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.apz, i64 5
  store i8 %i.aqg, ptr %i.aqh, align 1, !tbaa !741
  %i.aqi = load i32, ptr %i.aqd, align 8, !tbaa !1076
  %i.aqj = trunc i32 %i.aqi to i8
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.apz, i64 6
  store i8 %i.aqj, ptr %i.aqk, align 1, !tbaa !741
  %i.aql = load i32, ptr %i.aqd, align 8, !tbaa !1076
  %i.aqm = sub i32 %i.aql, %i.aqa
  %i.aqn = and i32 %i.aqm, 65535
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.apj, i64 20
  store i32 %i.aqn, ptr %i.aqo, align 4, !tbaa !1732
  %i.aqp = call fastcc i32 @decodeFlags(ptr noundef nonnull %i.apj, i32 noundef range(i32 0, 256) %i.anr), !inline_history !5005 ; 0 uses
  %i.aqq = trunc nuw nsw i32 %i.aqa to i16
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.apj, i64 18
  store i16 %i.aqq, ptr %i.aqr, align 2, !tbaa !1739
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.apn, i64 52
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !665 ; 2 uses
  %i.aqu = zext i32 %i.aqt to i64
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.apl, i64 %i.aqu
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.apj, i64 88
  store ptr %i.aqv, ptr %i.aqw, align 8, !tbaa !1132
  %i.aqx = zext nneg i32 %i.aqa to i64
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.apl, i64 %i.aqx
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.apj, i64 96
  store ptr %i.aqy, ptr %i.aqz, align 8, !tbaa !1127
  %i.ara = getelementptr inbounds nuw i8, ptr %i.apj, i64 10
  %i.arb = load i8, ptr %i.ara, align 2, !tbaa !1734
  %i.arc = zext i8 %i.arb to i64
  %i.ard = getelementptr inbounds nuw i8, ptr %i.apl, i64 %i.arc
  %i.are = getelementptr inbounds nuw i8, ptr %i.apj, i64 104
  store ptr %i.ard, ptr %i.are, align 8, !tbaa !1740
  %i.arf = getelementptr inbounds nuw i8, ptr %i.apj, i64 12
  store i8 0, ptr %i.arf, align 4, !tbaa !1741
  %i.arg = trunc i32 %i.aqt to i16
  %i.arh = add i16 %i.arg, -1
  %i.ari = getelementptr inbounds nuw i8, ptr %i.apj, i64 26
  store i16 %i.arh, ptr %i.ari, align 2, !tbaa !1126
  %i.arj = getelementptr inbounds nuw i8, ptr %i.apj, i64 24
  store i16 0, ptr %i.arj, align 8, !tbaa !1742
  store i8 1, ptr %i.apj, align 8, !tbaa !1743
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv976.i
  store ptr %i.apj, ptr %i.ark, align 8, !tbaa !1752
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv976.i
  store i32 %i.ahh, ptr %i.arl, align 4, !tbaa !576
  %i.arm = load i8, ptr %i.anu, align 1, !tbaa !1070
  %.not605.i = icmp eq i8 %i.arm, 0
  br i1 %.not605.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %zeroPage.exit.i101
  %i.arn = getelementptr inbounds nuw i8, ptr %i.apj, i64 4
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !1080
  %i.arp = load i32, ptr %i.anv, align 4, !tbaa !1080
  call fastcc void @ptrmapPut(ptr noundef nonnull %i.uj, i32 noundef %i.aro, i8 noundef zeroext 5, i32 noundef %i.arp, ptr noundef %i.a), !inline_history !5005
  %i.arq = load i32, ptr %i.a, align 4, !tbaa !576 ; 2 uses
  %.not606.i = icmp eq i32 %i.arq, 0
  br i1 %.not606.i, label %bb.fa, label %.thread692.loopexit.split.loop.exit.i

.thread692.loopexit.split.loop.exit.i:            ; preds = %bb.ez
  %indvars979.le1178.i = trunc i64 %indvars.iv976.i to i32
  %i.arr = add nuw nsw i32 %indvars979.le1178.i, 1
  br label %.thread692.i

.thread692.loopexit.split.loop.exit1168.i:        ; preds = %bb.ev
  %indvars979.le1176.i = trunc nuw nsw i64 %indvars.iv976.i to i32
  %i.ars = add nuw nsw i32 %indvars979.le1176.i, 1
  br label %.thread692.i

.thread692.loopexit.split.loop.exit1171.i:        ; preds = %bb.ew
  %indvars979.le1180.i = trunc i64 %indvars.iv976.i to i32
  br label %.thread692.i

.thread692.i:                                     ; preds = %.thread692.loopexit.split.loop.exit1171.i, %.thread692.loopexit.split.loop.exit1168.i, %.thread692.loopexit.split.loop.exit.i, %.thread689.i
  %i.art = phi i32 [ 11, %.thread689.i ], [ %.pr.i98, %.thread692.loopexit.split.loop.exit1168.i ], [ %i.arq, %.thread692.loopexit.split.loop.exit.i ], [ %i.api, %.thread692.loopexit.split.loop.exit1171.i ]
  %.2498.ph.i = phi i32 [ %i.apf, %.thread689.i ], [ %i.ars, %.thread692.loopexit.split.loop.exit1168.i ], [ %i.arr, %.thread692.loopexit.split.loop.exit.i ], [ %indvars979.le1180.i, %.thread692.loopexit.split.loop.exit1171.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #59
  br label %.thread705.i

bb.fa:                                            ; preds = %bb.ez, %zeroPage.exit.i101, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #59
  %indvars.iv.next977.i = add nuw nsw i64 %indvars.iv976.i, 1 ; 2 uses
  %exitcond983.not.i = icmp eq i64 %indvars.iv.next977.i, %wide.trip.count982.i
  br i1 %exitcond983.not.i, label %.lr.ph814.i.preheader, label %bb.em, !llvm.loop !5022

.lr.ph814.i.preheader:                            ; preds = %bb.fa
  %xtraiter487 = and i64 %wide.trip.count982.i, 3 ; 3 uses
  %i.aru = icmp ult i32 %.8545.ph.i, 4
  br i1 %i.aru, label %.lr.ph814.i.epil.preheader, label %.lr.ph814.i.preheader.new

.lr.ph814.i.preheader.new:                        ; preds = %.lr.ph814.i.preheader
  %unroll_iter490 = and i64 %wide.trip.count982.i, 2147483644
  br label %.lr.ph814.i

.preheader721.i.unr-lcssa:                        ; preds = %.lr.ph814.i
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod488.not, label %.preheader721.i, label %.lr.ph814.i.epil.preheader

.lr.ph814.i.epil.preheader:                       ; preds = %.preheader721.i.unr-lcssa, %.lr.ph814.i.preheader
  %indvars.iv984.i.epil.init = phi i64 [ 0, %.lr.ph814.i.preheader ], [ %indvars.iv.next985.i.3, %.preheader721.i.unr-lcssa ]
  %lcmp.mod489 = icmp ne i64 %xtraiter487, 0
  call void @llvm.assume(i1 %lcmp.mod489)
  br label %.lr.ph814.i.epil

.lr.ph814.i.epil:                                 ; preds = %.lr.ph814.i.epil, %.lr.ph814.i.epil.preheader
  %indvars.iv984.i.epil = phi i64 [ %indvars.iv.next985.i.epil, %.lr.ph814.i.epil ], [ %indvars.iv984.i.epil.init, %.lr.ph814.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph814.i.epil ], [ 0, %.lr.ph814.i.epil.preheader ]
  %i.arv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv984.i.epil
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !1752
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 4
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !1080
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv984.i.epil
  store i32 %i.ary, ptr %i.arz, align 4, !tbaa !576
  %indvars.iv.next985.i.epil = add nuw nsw i64 %indvars.iv984.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter487
  br i1 %epil.iter.cmp.not, label %.preheader721.i, label %.lr.ph814.i.epil, !llvm.loop !5023

.preheader721.i:                                  ; preds = %.lr.ph814.i.epil, %.preheader721.i.unr-lcssa
  %.not1183.i = icmp eq i32 %.8545.ph.i, 1
  br i1 %.not1183.i, label %._crit_edge823.i, label %.lr.ph818.preheader.i.preheader

.lr.ph818.preheader.i.preheader:                  ; preds = %.preheader721.i
  %i.asa = add nsw i64 %wide.trip.count982.i, -2
  br label %.lr.ph818.preheader.i

.lr.ph814.i:                                      ; preds = %.lr.ph814.i, %.lr.ph814.i.preheader.new
  %indvars.iv984.i = phi i64 [ 0, %.lr.ph814.i.preheader.new ], [ %indvars.iv.next985.i.3, %.lr.ph814.i ] ; 6 uses
  %niter491 = phi i64 [ 0, %.lr.ph814.i.preheader.new ], [ %niter491.next.3, %.lr.ph814.i ]
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv984.i
  %i.asc = load ptr, ptr %i.asb, align 16, !tbaa !1752
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 4
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !1080
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv984.i
  store i32 %i.ase, ptr %i.asf, align 16, !tbaa !576
  %indvars.iv.next985.i = or disjoint i64 %indvars.iv984.i, 1 ; 2 uses
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next985.i
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !1752
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 4
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !1080
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next985.i
  store i32 %i.asj, ptr %i.ask, align 4, !tbaa !576
  %indvars.iv.next985.i.1 = or disjoint i64 %indvars.iv984.i, 2 ; 2 uses
  %i.asl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next985.i.1
  %i.asm = load ptr, ptr %i.asl, align 16, !tbaa !1752
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 4
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !1080
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next985.i.1
  store i32 %i.aso, ptr %i.asp, align 8, !tbaa !576
  %indvars.iv.next985.i.2 = or disjoint i64 %indvars.iv984.i, 3 ; 2 uses
  %i.asq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next985.i.2
  %i.asr = load ptr, ptr %i.asq, align 8, !tbaa !1752
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 4
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !1080
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next985.i.2
  store i32 %i.ast, ptr %i.asu, align 4, !tbaa !576
  %indvars.iv.next985.i.3 = add nuw nsw i64 %indvars.iv984.i, 4 ; 2 uses
  %niter491.next.3 = add i64 %niter491, 4         ; 2 uses
  %niter491.ncmp.3 = icmp eq i64 %niter491.next.3, %unroll_iter490
  br i1 %niter491.ncmp.3, label %.preheader721.i.unr-lcssa, label %.lr.ph814.i, !llvm.loop !5024

.lr.ph818.preheader.i:                            ; preds = %.lr.ph818.preheader.i.preheader, %bb.fc
  %indvars.iv998.i = phi i64 [ %indvars.iv.next999.i, %bb.fc ], [ 0, %.lr.ph818.preheader.i.preheader ] ; 6 uses
  %indvars.iv990.i = phi i64 [ %indvars.iv.next991.i, %bb.fc ], [ 1, %.lr.ph818.preheader.i.preheader ] ; 5 uses
  %i.asv = trunc nuw nsw i64 %indvars.iv998.i to i32 ; 2 uses
  %.phi.trans.insert1052.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv998.i
  %.pre1053.i = load ptr, ptr %.phi.trans.insert1052.i, align 8, !tbaa !1752 ; 2 uses
  %.phi.trans.insert1054.i = getelementptr inbounds nuw i8, ptr %.pre1053.i, i64 4 ; 2 uses
  %.pre1055.i = load i32, ptr %.phi.trans.insert1054.i, align 4, !tbaa !1080 ; 5 uses
  %i.asw = sub nsw i64 %indvars.iv998.i, %wide.trip.count982.i
  %i.asx = and i64 %i.asw, 1
  %lcmp.mod493.not.not = icmp eq i64 %i.asx, 0
  br i1 %lcmp.mod493.not.not, label %.lr.ph818.i.prol, label %.lr.ph818.i.prol.loopexit

.lr.ph818.i.prol:                                 ; preds = %.lr.ph818.preheader.i
  %i.asy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv990.i
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !1752
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 4
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !1080 ; 2 uses
  %i.atc = icmp ult i32 %i.atb, %.pre1055.i
  %i.atd = trunc nuw nsw i64 %indvars.iv990.i to i32
  %spec.select628.i.prol = select i1 %i.atc, i32 %i.atd, i32 %i.asv ; 2 uses
  %indvars.iv.next993.i.prol = add nuw nsw i64 %indvars.iv990.i, 1
  %i.ate = call i32 @llvm.umin.i32(i32 %i.atb, i32 %.pre1055.i)
  br label %.lr.ph818.i.prol.loopexit

.lr.ph818.i.prol.loopexit:                        ; preds = %.lr.ph818.i.prol, %.lr.ph818.preheader.i
  %spec.select628.i.lcssa.unr = phi i32 [ poison, %.lr.ph818.preheader.i ], [ %spec.select628.i.prol, %.lr.ph818.i.prol ]
  %.unr = phi i32 [ %.pre1055.i, %.lr.ph818.preheader.i ], [ %i.ate, %.lr.ph818.i.prol ]
  %indvars.iv992.i.unr = phi i64 [ %indvars.iv990.i, %.lr.ph818.preheader.i ], [ %indvars.iv.next993.i.prol, %.lr.ph818.i.prol ]
  %.0503816.i.unr = phi i32 [ %i.asv, %.lr.ph818.preheader.i ], [ %spec.select628.i.prol, %.lr.ph818.i.prol ]
  %i.atf = icmp eq i64 %i.asa, %indvars.iv998.i
  br i1 %i.atf, label %._crit_edge819.i, label %.lr.ph818.i

.lr.ph818.i:                                      ; preds = %.lr.ph818.i.prol.loopexit, %.lr.ph818.i
  %i.atg = phi i32 [ %i.atu, %.lr.ph818.i ], [ %.unr, %.lr.ph818.i.prol.loopexit ] ; 2 uses
  %indvars.iv992.i = phi i64 [ %indvars.iv.next993.i.1, %.lr.ph818.i ], [ %indvars.iv992.i.unr, %.lr.ph818.i.prol.loopexit ] ; 4 uses
  %.0503816.i = phi i32 [ %spec.select628.i.1, %.lr.ph818.i ], [ %.0503816.i.unr, %.lr.ph818.i.prol.loopexit ]
  %i.ath = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv992.i
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !1752
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 4
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !1080 ; 2 uses
  %i.atl = icmp ult i32 %i.atk, %i.atg
  %i.atm = trunc nuw nsw i64 %indvars.iv992.i to i32
  %spec.select628.i = select i1 %i.atl, i32 %i.atm, i32 %.0503816.i
  %indvars.iv.next993.i = add nuw nsw i64 %indvars.iv992.i, 1 ; 2 uses
  %i.atn = call i32 @llvm.umin.i32(i32 %i.atk, i32 %i.atg) ; 2 uses
  %i.ato = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next993.i
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !1752
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 4
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !1080 ; 2 uses
  %i.ats = icmp ult i32 %i.atr, %i.atn
  %i.att = trunc nuw nsw i64 %indvars.iv.next993.i to i32
  %spec.select628.i.1 = select i1 %i.ats, i32 %i.att, i32 %spec.select628.i ; 2 uses
  %indvars.iv.next993.i.1 = add nuw nsw i64 %indvars.iv992.i, 2 ; 2 uses
  %exitcond997.not.i.1 = icmp eq i64 %indvars.iv.next993.i.1, %wide.trip.count982.i
  %i.atu = call i32 @llvm.umin.i32(i32 %i.atr, i32 %i.atn)
  br i1 %exitcond997.not.i.1, label %._crit_edge819.i, label %.lr.ph818.i, !llvm.loop !5025

._crit_edge819.i:                                 ; preds = %.lr.ph818.i, %.lr.ph818.i.prol.loopexit
  %spec.select628.i.lcssa = phi i32 [ %spec.select628.i.lcssa.unr, %.lr.ph818.i.prol.loopexit ], [ %spec.select628.i.1, %.lr.ph818.i ] ; 2 uses
  %indvars.iv.next999.i = add nuw nsw i64 %indvars.iv998.i, 1 ; 2 uses
  %i.atv = zext i32 %spec.select628.i.lcssa to i64
  %.not601.i = icmp eq i64 %indvars.iv998.i, %i.atv
  br i1 %.not601.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %._crit_edge819.i
  %i.atw = sext i32 %spec.select628.i.lcssa to i64
  %i.atx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.atw
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !1752 ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 4 ; 2 uses
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !1080 ; 2 uses
  %i.aub = load i32, ptr @sqlite3PendingByte, align 4, !tbaa !576
  %i.auc = load i32, ptr %i.aaj, align 4, !tbaa !665
  %i.aud = udiv i32 %i.aub, %i.auc
  %i.aue = add i32 %i.aud, 1
  %i.auf = getelementptr inbounds nuw i8, ptr %.pre1053.i, i64 112 ; 2 uses
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !1029 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 52 ; 2 uses
  %i.aui = load i16, ptr %i.auh, align 4, !tbaa !902
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aty, i64 112 ; 2 uses
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !1029
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 52
  %i.aum = load i16, ptr %i.aul, align 4, !tbaa !902 ; 2 uses
  store i16 %i.aum, ptr %i.auh, align 4, !tbaa !902
  call fastcc void @sqlite3PcacheMove(ptr noundef %i.aug, i32 noundef %i.aue), !inline_history !5005
  %i.aun = load ptr, ptr %i.auj, align 8, !tbaa !1029 ; 2 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 52
  store i16 %i.aui, ptr %i.auo, align 4, !tbaa !902
  call fastcc void @sqlite3PcacheMove(ptr noundef %i.aun, i32 noundef %.pre1055.i), !inline_history !5005
  %i.aup = load ptr, ptr %i.auf, align 8, !tbaa !1029 ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 52
  store i16 %i.aum, ptr %i.auq, align 4, !tbaa !902
  call fastcc void @sqlite3PcacheMove(ptr noundef %i.aup, i32 noundef %i.aua), !inline_history !5005
  store i32 %i.aua, ptr %.phi.trans.insert1054.i, align 4, !tbaa !1080
  store i32 %.pre1055.i, ptr %i.atz, align 4, !tbaa !1080
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %._crit_edge819.i
  %indvars.iv.next991.i = add nuw nsw i64 %indvars.iv990.i, 1
  %exitcond1003.not.i = icmp eq i64 %indvars.iv.next999.i, %i.alu
  br i1 %exitcond1003.not.i, label %._crit_edge823.i, label %.lr.ph818.preheader.i, !llvm.loop !5026

._crit_edge823.i:                                 ; preds = %bb.fc, %.._crit_edge823.i_crit_edge, %.preheader721.i
  %.pre-phi = phi i32 [ %.pre240, %.._crit_edge823.i_crit_edge ], [ %6, %.preheader721.i ], [ %6, %bb.fc ]
  %i.aur = phi i1 [ false, %.._crit_edge823.i_crit_edge ], [ false, %.preheader721.i ], [ true, %bb.fc ]
  %i.aus = phi i32 [ -1, %.._crit_edge823.i_crit_edge ], [ 0, %.preheader721.i ], [ %i.alr, %bb.fc ] ; 2 uses
  %.0496.lcssa11331135.i = phi i32 [ 0, %.._crit_edge823.i_crit_edge ], [ 1, %.preheader721.i ], [ %.8545.ph.i, %bb.fc ] ; 16 uses
  %i.aut = sext i32 %i.aus to i64
  %i.auu = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aut
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !1752 ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 4
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !1080 ; 4 uses
  %i.auy = lshr i32 %i.aux, 24
  %i.auz = trunc nuw i32 %i.auy to i8
  store i8 %i.auz, ptr %.0528.i, align 1, !tbaa !741
  %i.ava = lshr i32 %i.aux, 16
  %i.avb = trunc i32 %i.ava to i8
  store i8 %i.avb, ptr %i.wa, align 1, !tbaa !741
  %i.avc = lshr i32 %i.aux, 8
  %i.avd = trunc i32 %i.avc to i8
  store i8 %i.avd, ptr %i.wb, align 1, !tbaa !741
  %i.ave = trunc i32 %i.aux to i8
  store i8 %i.ave, ptr %i.wc, align 1, !tbaa !741
  %i.avf = icmp ne i32 %.pre-phi, 0
  %.not579.i = icmp eq i32 %i.uy, %.0496.lcssa11331135.i
  %or.cond629.i = select i1 %i.avf, i1 true, i1 %.not579.i
  br i1 %or.cond629.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %._crit_edge823.i
  %i.avg = icmp sgt i32 %.0496.lcssa11331135.i, %i.uy
  %.0494.in.v.i = select i1 %i.avg, ptr %i.c, ptr %i.b
  %.0494.in.i = getelementptr inbounds nuw [8 x i8], ptr %.0494.in.v.i, i64 %i.wm
  %.0494.i = load ptr, ptr %.0494.in.i, align 8, !tbaa !1752
  %i.avh = getelementptr inbounds nuw i8, ptr %i.auv, i64 80
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !1008
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 8
  %i.avk = getelementptr inbounds nuw i8, ptr %.0494.i, i64 80
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !1008
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 8
  %i.avn = load i32, ptr %i.avm, align 1
  store i32 %i.avn, ptr %i.avj, align 1
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %._crit_edge823.i
  %i.avo = getelementptr inbounds nuw i8, ptr %i.uj, i64 33 ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !1070
  %.not580.i = icmp ne i8 %i.avp, 0
  %i.avq = icmp sgt i32 %i.ahh, 0
  %or.cond1182.i = select i1 %.not580.i, i1 %i.avq, i1 false
  br i1 %or.cond1182.i, label %.lr.ph841.i, label %.thread702.i

.lr.ph841.i:                                      ; preds = %bb.fe
  %i.avr = load ptr, ptr %i.c, align 16, !tbaa !1752 ; 4 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 12
  %i.avt = load i8, ptr %i.avs, align 4, !tbaa !1741
  %i.avu = zext i8 %i.avt to i32
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avr, i64 24
  %i.avw = load i16, ptr %i.avv, align 8, !tbaa !1742
  %i.avx = zext i16 %i.avw to i32
  %i.avy = add nuw nsw i32 %i.avx, %i.avu
  %i.avz = zext i1 %.not1048.i to i32
  %.not585.i = icmp eq i8 %i.aau, 0
  %i.awa = zext nneg i32 %.0496.lcssa11331135.i to i64
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fu, %.lr.ph841.i
  %i.awb = phi i32 [ %i.ahh, %.lr.ph841.i ], [ %i.ayy, %bb.fu ] ; 2 uses
  %indvars.iv1008.i = phi i64 [ 0, %.lr.ph841.i ], [ %indvars.iv.next1009.i, %bb.fu ] ; 7 uses
  %.0484839.i = phi i32 [ 0, %.lr.ph841.i ], [ %.1.lcssa.i, %bb.fu ] ; 2 uses
  %.0485838.i = phi i32 [ 0, %.lr.ph841.i ], [ %.2.ph.i, %bb.fu ] ; 3 uses
  %.0487837.i = phi i32 [ %i.avy, %.lr.ph841.i ], [ %.1488.lcssa.i, %bb.fu ] ; 3 uses
  %.0489836.i = phi ptr [ %i.avr, %.lr.ph841.i ], [ %.2491.ph.i, %bb.fu ]
  %.0492835.i = phi ptr [ %i.avr, %.lr.ph841.i ], [ %.1493.lcssa.i, %bb.fu ]
  %i.awc = load ptr, ptr %i.ap, align 8, !tbaa !2073
  %i.awd = getelementptr inbounds nuw [8 x i8], ptr %i.awc, i64 %indvars.iv1008.i
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !747 ; 7 uses
  %i.awf = zext i32 %.0487837.i to i64
  %i.awg = icmp eq i64 %indvars.iv1008.i, %i.awf
  br i1 %i.awg, label %.lr.ph828.preheader.i, label %._crit_edge829.i

.lr.ph828.preheader.i:                            ; preds = %bb.ff
  %i.awh = sext i32 %.0484839.i to i64
  br label %.lr.ph828.i

.lr.ph828.i:                                      ; preds = %.lr.ph828.i, %.lr.ph828.preheader.i
  %indvars.iv1004.i = phi i64 [ %i.awh, %.lr.ph828.preheader.i ], [ %indvars.iv.next1005.i, %.lr.ph828.i ]
  %.1488825.i = phi i32 [ %.0487837.i, %.lr.ph828.preheader.i ], [ %i.aws, %.lr.ph828.i ]
  %indvars.iv.next1005.i = add nsw i64 %indvars.iv1004.i, 1 ; 4 uses
  %i.awi = icmp slt i64 %indvars.iv.next1005.i, %i.awa
  %.in.v.i = select i1 %i.awi, ptr %i.c, ptr %i.b
  %.in.i = getelementptr inbounds [8 x i8], ptr %.in.v.i, i64 %indvars.iv.next1005.i
  %i.awj = load ptr, ptr %.in.i, align 8, !tbaa !1752 ; 3 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 24
  %i.awl = load i16, ptr %i.awk, align 8, !tbaa !1742
  %i.awm = zext i16 %i.awl to i32
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awj, i64 12
  %i.awo = load i8, ptr %i.awn, align 4, !tbaa !1741
  %i.awp = zext i8 %i.awo to i32
  %i.awq = add i32 %.1488825.i, %i.avz
  %i.awr = add i32 %i.awq, %i.awm
  %i.aws = add i32 %i.awr, %i.awp                 ; 3 uses
  %i.awt = zext i32 %i.aws to i64
  %i.awu = icmp eq i64 %indvars.iv1008.i, %i.awt
  br i1 %i.awu, label %.lr.ph828.i, label %._crit_edge829.loopexit.i, !llvm.loop !5027

._crit_edge829.loopexit.i:                        ; preds = %.lr.ph828.i
  %i.awv = trunc nsw i64 %indvars.iv.next1005.i to i32
  br label %._crit_edge829.i

._crit_edge829.i:                                 ; preds = %._crit_edge829.loopexit.i, %bb.ff
  %.1493.lcssa.i = phi ptr [ %.0492835.i, %bb.ff ], [ %i.awj, %._crit_edge829.loopexit.i ] ; 4 uses
  %.1488.lcssa.i = phi i32 [ %.0487837.i, %bb.ff ], [ %i.aws, %._crit_edge829.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.0484839.i, %bb.ff ], [ %i.awv, %._crit_edge829.loopexit.i ] ; 3 uses
  %i.aww = sext i32 %.0485838.i to i64
  %i.awx = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aww
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !576
  %i.awz = zext i32 %i.awy to i64
  %i.axa = icmp eq i64 %indvars.iv1008.i, %i.awz
  br i1 %i.axa, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %._crit_edge829.i
  %i.axb = add nsw i32 %.0485838.i, 1             ; 3 uses
  %i.axc = sext i32 %i.axb to i64
  %i.axd = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.axc
  %i.axe = load ptr, ptr %i.axd, align 8, !tbaa !1752 ; 2 uses
  br i1 %i.abb, label %bb.fh, label %bb.fu

bb.fh:                                            ; preds = %bb.fg, %._crit_edge829.i
  %.1490.i = phi ptr [ %i.axe, %bb.fg ], [ %.0489836.i, %._crit_edge829.i ] ; 9 uses
  %.1486.i = phi i32 [ %i.axb, %bb.fg ], [ %.0485838.i, %._crit_edge829.i ] ; 2 uses
  %.not582.i = icmp slt i32 %.1.lcssa.i, %.0496.lcssa11331135.i
  br i1 %.not582.i, label %bb.fi, label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.axf = getelementptr inbounds nuw i8, ptr %.1490.i, i64 4
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !1080
  %i.axh = sext i32 %.1.lcssa.i to i64
  %i.axi = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.axh
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !576
  %.not583.i = icmp eq i32 %i.axg, %i.axj
  br i1 %.not583.i, label %bb.fj, label %bb.fl

bb.fj:                                            ; preds = %bb.fi
  %i.axk = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 80
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !1008
  %.not584.i = icmp ult ptr %i.awe, %i.axl
  br i1 %.not584.i, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.axm = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 88
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !1132
  %i.axo = icmp ult ptr %i.awe, %i.axn
  br i1 %i.axo, label %bb.fu, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fh
  br i1 %.not585.i, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.axp = load i32, ptr %i.awe, align 1
  %i.axq = call i32 @llvm.bswap.i32(i32 %i.axp)
  %i.axr = getelementptr inbounds nuw i8, ptr %.1490.i, i64 4
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !1080
  call fastcc void @ptrmapPut(ptr noundef %i.uj, i32 noundef %i.axq, i8 noundef zeroext 5, i32 noundef %i.axs, ptr noundef %i.a), !inline_history !5005
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.axt = load ptr, ptr %i.aq, align 8, !tbaa !2074
  %i.axu = getelementptr inbounds nuw [2 x i8], ptr %i.axt, i64 %indvars.iv1008.i
  %i.axv = load i16, ptr %i.axu, align 2, !tbaa !789 ; 2 uses
  %.not.i653.i = icmp eq i16 %i.axv, 0
  br i1 %.not.i653.i, label %bb.fo, label %cachedCellSize.exit655.i

bb.fo:                                            ; preds = %bb.fn
  %i.axw = trunc nuw nsw i64 %indvars.iv1008.i to i32
  %i.axx = call fastcc zeroext i16 @computeCellSize(ptr noundef nonnull readonly %2, i32 noundef %i.axw), !inline_history !5005
  br label %cachedCellSize.exit655.i

cachedCellSize.exit655.i:                         ; preds = %bb.fo, %bb.fn
  %.0.i654.i = phi i16 [ %i.axx, %bb.fo ], [ %i.axv, %bb.fn ]
  %i.axy = getelementptr inbounds nuw i8, ptr %.1490.i, i64 16
  %i.axz = load i16, ptr %i.axy, align 8, !tbaa !1828
  %i.aya = icmp ugt i16 %.0.i654.i, %i.axz
  %.pre1059.i = load i32, ptr %i.a, align 4, !tbaa !576 ; 2 uses
  br i1 %i.aya, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %cachedCellSize.exit655.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #59
  %.not.i656.i = icmp eq i32 %.pre1059.i, 0
  br i1 %.not.i656.i, label %bb.fq, label %ptrmapPutOvflPtr.exit.i92

bb.fq:                                            ; preds = %bb.fp
  %i.ayb = getelementptr inbounds nuw i8, ptr %.1490.i, i64 128
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !1737
  call void %i.ayc(ptr noundef nonnull %.1490.i, ptr noundef %i.awe, ptr noundef nonnull %1) #59, !inline_history !5028
  %i.ayd = load i16, ptr %i.at, align 4, !tbaa !1833 ; 2 uses
  %i.aye = zext i16 %i.ayd to i32
  %i.ayf = load i32, ptr %i.au, align 8, !tbaa !1830
  %i.ayg = icmp ugt i32 %i.ayf, %i.aye
  br i1 %i.ayg, label %bb.fr, label %ptrmapPutOvflPtr.exit.i92

bb.fr:                                            ; preds = %bb.fq
  %i.ayh = getelementptr inbounds nuw i8, ptr %.1493.lcssa.i, i64 88
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !1132 ; 2 uses
  %i.ayj = icmp ult ptr %i.awe, %i.ayi
  %i.ayk = zext i16 %i.ayd to i64
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.ayk
  %i.aym = icmp ugt ptr %i.ayl, %i.ayi
  %or.cond.i.i93 = select i1 %i.ayj, i1 %i.aym, i1 false
  br i1 %or.cond.i.i93, label %.critedge.i.i94, label %bb.fs

.critedge.i.i94:                                  ; preds = %bb.fr
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 74186, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20)), !inline_history !5028
  store i32 11, ptr %i.a, align 4, !tbaa !576
  br label %ptrmapPutOvflPtr.exit.i92

bb.fs:                                            ; preds = %bb.fr
  %i.ayn = load i16, ptr %i.av, align 2, !tbaa !1832
  %i.ayo = zext i16 %i.ayn to i64
  %i.ayp = getelementptr i8, ptr %i.awe, i64 %i.ayo
  %i.ayq = getelementptr i8, ptr %i.ayp, i64 -4
  %i.ayr = load i32, ptr %i.ayq, align 1
  %i.ays = call i32 @llvm.bswap.i32(i32 %i.ayr)
  %i.ayt = getelementptr inbounds nuw i8, ptr %.1490.i, i64 72
  %i.ayu = load ptr, ptr %i.ayt, align 8, !tbaa !1081
end_hunk_1
begin_hunk_2_@sqlite3WhereAddExplainText:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bq, ptr noundef nonnull align 1 dereferenceable(7) @.str.901, i64 7, i1 false)
  br label %sqlite3_str_append.exit

sqlite3_str_append.exit:                          ; preds = %bb.o, %bb.p
  %i.br = load ptr, ptr %i.ax, align 8, !tbaa !2188
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull %.04775, ptr noundef %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bt = load ptr, ptr %i.aw, align 8, !tbaa !741 ; 4 uses
  %i.bu = load i16, ptr %i.bs, align 8, !tbaa !741 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 54
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !2478 ; 2 uses
  %i.bx = icmp eq i16 %i.bu, 0                    ; 2 uses
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %sqlite3_str_append.exit
  %i.by = load i32, ptr %i.z, align 8, !tbaa !2470
  %i.bz = and i32 %i.by, 48
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %explainIndexRange.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %sqlite3_str_append.exit
  %i.cb = load i32, ptr %i.am, align 8, !tbaa !759 ; 2 uses
  %i.cc = add i32 %i.cb, 2                        ; 2 uses
  %i.cd = load i32, ptr %i.ak, align 8, !tbaa !760
  %.not.i.i = icmp ult i32 %i.cc, %i.cd
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %5, ptr noundef nonnull @.str.909, i32 noundef 2), !inline_history !761
  br label %sqlite3_str_append.exit.i

bb.t:                                             ; preds = %bb.r
  store i32 %i.cc, ptr %i.am, align 8, !tbaa !759
  %i.ce = load ptr, ptr %i.aj, align 8, !tbaa !762
  %i.cf = zext i32 %i.cb to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  store i16 10272, ptr %i.cg, align 1
  br label %sqlite3_str_append.exit.i

sqlite3_str_append.exit.i:                        ; preds = %bb.t, %bb.s
  br i1 %i.bx, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sqlite3_str_append.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.cj = zext i16 %i.bw to i64
  %wide.trip.count.i = zext i16 %i.bu to i64
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !1159
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !789 ; 2 uses
  switch i16 %i.cl, label %bb.v [
    i16 -2, label %sqlite3_str_append.exit34.peel.i
    i16 -1, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph.i
  br label %sqlite3_str_append.exit34.peel.i

bb.v:                                             ; preds = %.lr.ph.i
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !1295
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1162
  %i.cp = sext i16 %i.cl to i64
  %i.cq = getelementptr inbounds [16 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1198
  br label %sqlite3_str_append.exit34.peel.i

sqlite3_str_append.exit34.peel.i:                 ; preds = %bb.v, %bb.u, %.lr.ph.i
  %.0.i.peel.i = phi ptr [ %i.cr, %bb.v ], [ @.str.597, %bb.u ], [ @.str.891, %.lr.ph.i ]
  %.not32.peel.not.i = icmp eq i16 %i.bw, 0
  %i.cs = select i1 %.not32.peel.not.i, ptr @.str.888, ptr @.str.910
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull %i.cs, ptr noundef %.0.i.peel.i)
  %exitcond.peel.not.i = icmp eq i16 %i.bu, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %sqlite3_str_append.exit34.peel.i, %sqlite3_str_append.exit34.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sqlite3_str_append.exit34.i ], [ 1, %sqlite3_str_append.exit34.peel.i ] ; 3 uses
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !1159
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %indvars.iv.i
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !789 ; 2 uses
  switch i16 %i.cv, label %bb.x [
    i16 -2, label %explainIndexColumnName.exit.i
    i16 -1, label %bb.w
  ]

bb.w:                                             ; preds = %.peel.next.i
  br label %explainIndexColumnName.exit.i

bb.x:                                             ; preds = %.peel.next.i
  %i.cw = load ptr, ptr %i.ci, align 8, !tbaa !1295
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1162
  %i.cz = sext i16 %i.cv to i64
  %i.da = getelementptr inbounds [16 x i8], ptr %i.cy, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1198
  br label %explainIndexColumnName.exit.i

explainIndexColumnName.exit.i:                    ; preds = %bb.x, %bb.w, %.peel.next.i
  %.0.i.i = phi ptr [ %i.db, %bb.x ], [ @.str.597, %bb.w ], [ @.str.891, %.peel.next.i ]
  %i.dc = load i32, ptr %i.am, align 8, !tbaa !759 ; 2 uses
  %i.dd = add i32 %i.dc, 5                        ; 2 uses
  %i.de = load i32, ptr %i.ak, align 8, !tbaa !760
  %.not.i33.i = icmp ult i32 %i.dd, %i.de
  br i1 %.not.i33.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %explainIndexColumnName.exit.i
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %5, ptr noundef nonnull @.str.890, i32 noundef 5), !inline_history !761
  br label %sqlite3_str_append.exit34.i

bb.z:                                             ; preds = %explainIndexColumnName.exit.i
  store i32 %i.dd, ptr %i.am, align 8, !tbaa !759
  %i.df = load ptr, ptr %i.aj, align 8, !tbaa !762
  %i.dg = zext i32 %i.dc to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.dh, ptr noundef nonnull align 1 dereferenceable(5) @.str.890, i64 5, i1 false)
  br label %sqlite3_str_append.exit34.i

sqlite3_str_append.exit34.i:                      ; preds = %bb.z, %bb.y
  %.not32.i = icmp samesign ult i64 %indvars.iv.i, %i.cj
  %i.di = select i1 %.not32.i, ptr @.str.910, ptr @.str.888
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull %i.di, ptr noundef %.0.i.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.loopexit.i, label %.peel.next.i, !llvm.loop !5946

._crit_edge.loopexit.loopexit.i:                  ; preds = %sqlite3_str_append.exit34.i
  %i.dj = zext i16 %i.bu to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.loopexit.i, %sqlite3_str_append.exit34.peel.i, %sqlite3_str_append.exit.i
  %.0.lcssa.i = phi i32 [ 0, %sqlite3_str_append.exit.i ], [ 1, %sqlite3_str_append.exit34.peel.i ], [ %i.dj, %._crit_edge.loopexit.loopexit.i ] ; 4 uses
  %i.dk = load i32, ptr %i.z, align 8, !tbaa !2470 ; 2 uses
  %i.dl = and i32 %i.dk, 32
  %.not.i67 = icmp eq i32 %i.dl, 0
  br i1 %.not.i67, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.y, i64 26
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !741
  %i.do = zext i16 %i.dn to i32
  call fastcc void @explainAppendTerm(ptr noundef nonnull %5, ptr noundef %i.bt, i32 noundef %i.do, i32 noundef %.0.lcssa.i, i32 noundef %.0.lcssa.i, ptr noundef nonnull @.str.911)
  %.pre.i = load i32, ptr %i.z, align 8, !tbaa !2470
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i
  %i.dp = phi i32 [ %.pre.i, %bb.aa ], [ %i.dk, %._crit_edge.i ]
  %.1.i = phi i32 [ 1, %bb.aa ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.dq = and i32 %i.dp, 16
  %.not30.i = icmp eq i32 %i.dq, 0
  br i1 %.not30.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ds = load i16, ptr %i.dr, align 4, !tbaa !741
  %i.dt = zext i16 %i.ds to i32
  call fastcc void @explainAppendTerm(ptr noundef nonnull %5, ptr noundef %i.bt, i32 noundef %i.dt, i32 noundef %.0.lcssa.i, i32 noundef %.1.i, ptr noundef nonnull @.str.912)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.du = load i32, ptr %i.am, align 8, !tbaa !759 ; 2 uses
  %i.dv = add i32 %i.du, 1                        ; 2 uses
  %i.dw = load i32, ptr %i.ak, align 8, !tbaa !760
  %.not.i35.i = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i35.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %5, ptr noundef nonnull @.str.141, i32 noundef 1), !inline_history !761
  br label %explainIndexRange.exit

bb.af:                                            ; preds = %bb.ad
  store i32 %i.dv, ptr %i.am, align 8, !tbaa !759
  %i.dx = load ptr, ptr %i.aj, align 8, !tbaa !762
  %i.dy = zext i32 %i.du to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dy
  store i8 41, ptr %i.dz, align 1
  br label %explainIndexRange.exit

bb.ag:                                            ; preds = %bb.h
  %i.ea = and i32 %i.aa, 256
  %.not53 = icmp eq i32 %i.ea, 0
  %i.eb = and i32 %i.aa, 15
  %.not54 = icmp eq i32 %i.eb, 0
  %or.cond = or i1 %.not53, %.not54
  br i1 %or.cond, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull @.str.902, ptr noundef nonnull @.str.597)
  %i.ec = and i32 %i.aa, 5
  %.not57 = icmp eq i32 %i.ec, 0
  br i1 %.not57, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ed = icmp eq i32 %i.ab, 48
  br i1 %i.ed, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull @.str.903, ptr noundef nonnull @.str.597)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %6 = and i32 %i.aa, 32
  %.not58 = icmp eq i32 %6, 0
  %.65 = select i1 %.not58, i32 60, i32 62
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah, %bb.aj
  %.0 = phi i32 [ 61, %bb.ah ], [ 60, %bb.aj ], [ %.65, %bb.ak ]
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull @.str.904, i32 noundef %.0)
  br label %explainIndexRange.exit

bb.am:                                            ; preds = %bb.ag
  %i.ee = and i32 %i.aa, 1024
  %.not55 = icmp eq i32 %i.ee, 0
  br i1 %.not55, label %explainIndexRange.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ef = load i32, ptr %i.am, align 8, !tbaa !759 ; 2 uses
  %i.eg = add i32 %i.ef, 21                       ; 2 uses
  %i.eh = load i32, ptr %i.ak, align 8, !tbaa !760
  %.not.i.i68 = icmp ult i32 %i.eg, %i.eh
  br i1 %.not.i.i68, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %5, ptr noundef nonnull readonly @.str.905, i32 noundef 21), !inline_history !953
  br label %sqlite3_str_appendall.exit

bb.ap:                                            ; preds = %bb.an
  store i32 %i.eg, ptr %i.am, align 8, !tbaa !759
  %i.ei = load ptr, ptr %i.aj, align 8, !tbaa !762
  %i.ej = zext i32 %i.ef to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ek, ptr noundef nonnull readonly align 1 dereferenceable(21) @.str.905, i64 21, i1 false)
  br label %sqlite3_str_appendall.exit

sqlite3_str_appendall.exit:                       ; preds = %bb.ao, %bb.ap
  %i.el = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.en = load i8, ptr %i.em, align 4
  %i.eo = and i8 %i.en, 4
  %.not56 = icmp eq i8 %i.eo, 0
  %i.ep = select i1 %.not56, ptr @.str.907, ptr @.str.906
  %i.eq = load i32, ptr %i.el, align 8, !tbaa !741
  %i.er = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !741
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull %i.ep, i32 noundef %i.eq, ptr noundef %i.es)
  br label %explainIndexRange.exit

explainIndexRange.exit:                           ; preds = %bb.af, %bb.ae, %bb.q, %bb.n, %bb.al, %sqlite3_str_appendall.exit, %bb.am
  %i.et = load i8, ptr %i.ap, align 8, !tbaa !2212
  %i.eu = and i8 %i.et, 8
  %.not63 = icmp eq i8 %i.eu, 0
  br i1 %.not63, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %explainIndexRange.exit
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %5, ptr noundef nonnull @.str.908)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %explainIndexRange.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !741 ; 2 uses
  %.not.i70 = icmp eq ptr %i.ew, null
  br i1 %.not.i70, label %sqlite3DbFree.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.u, ptr noundef nonnull %i.ew)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.ar, %bb.as
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 -6, ptr %i.ex, align 1, !tbaa !939
  %i.ey = load ptr, ptr %i.aj, align 8, !tbaa !762 ; 2 uses
  %.not.i71 = icmp eq ptr %i.ey, null
  br i1 %.not.i71, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %sqlite3DbFree.exit
  %i.ez = load i32, ptr %i.am, align 8, !tbaa !759
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fa
  store i8 0, ptr %i.fb, align 1, !tbaa !741
  %i.fc = load i32, ptr %i.al, align 4, !tbaa !772
  %.not9.i = icmp eq i32 %i.fc, 0
  br i1 %.not9.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fd = load i8, ptr %i.ao, align 1, !tbaa !758
  %i.fe = and i8 %i.fd, 4
  %.not10.i = icmp eq i8 %i.fe, 0
  br i1 %.not10.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ff = call fastcc ptr @strAccumFinishRealloc(ptr noundef nonnull %5), !inline_history !18
  br label %sqlite3StrAccumFinish.exit

bb.aw:                                            ; preds = %bb.au, %bb.at, %sqlite3DbFree.exit
  %i.fg = load ptr, ptr %i.aj, align 8, !tbaa !762
  br label %sqlite3StrAccumFinish.exit

sqlite3StrAccumFinish.exit:                       ; preds = %bb.av, %bb.aw
  %.0.i72 = phi ptr [ %i.fg, %bb.aw ], [ %i.ff, %bb.av ]
  store ptr %.0.i72, ptr %i.ev, align 8, !tbaa !741
  br label %bb.ax

bb.ax:                                            ; preds = %sqlite3VdbeGetOp.exit, %sqlite3StrAccumFinish.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @explainAppendTerm(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 65536) %2, i32 noundef range(i32 0, -2147483648) %3, i32 noundef range(i32 0, -2147483648) %4, ptr nofree noundef readonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %sqlite3_str_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !759  ; 2 uses
  %i.c = add i32 %i.b, 5                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !760
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @enlargeAndAppend(ptr noundef nonnull %0, ptr noundef nonnull @.str.890, i32 noundef 5), !inline_history !761
  br label %sqlite3_str_append.exit

bb.d:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.a, align 8, !tbaa !759
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !762
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.i, ptr noundef nonnull align 1 dereferenceable(5) @.str.890, i64 5, i1 false)
  br label %sqlite3_str_append.exit

sqlite3_str_append.exit:                          ; preds = %bb.d, %bb.c, %bb.a
  %i.j = icmp samesign ugt i32 %2, 1              ; 3 uses
  br i1 %i.j, label %bb.e, label %sqlite3_str_append.exit30

bb.e:                                             ; preds = %sqlite3_str_append.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !759  ; 2 uses
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !760
  %.not.i29 = icmp ult i32 %i.m, %i.o
  br i1 %.not.i29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @enlargeAndAppend(ptr noundef nonnull %0, ptr noundef nonnull @.str.913, i32 noundef 1), !inline_history !761
  br label %sqlite3_str_append.exit32.peel

bb.g:                                             ; preds = %bb.e
  store i32 %i.m, ptr %i.k, align 8, !tbaa !759
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !762
  %i.r = zext i32 %i.l to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 40, ptr %i.s, align 1
  br label %sqlite3_str_append.exit32.peel

sqlite3_str_append.exit30:                        ; preds = %sqlite3_str_append.exit
  %.not54 = icmp eq i32 %2, 0
  br i1 %.not54, label %.critedge, label %sqlite3_str_append.exit32.peel

sqlite3_str_append.exit32.peel:                   ; preds = %bb.f, %bb.g, %sqlite3_str_append.exit30
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.y = zext nneg i32 %3 to i64                  ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !1159
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !789 ; 2 uses
  switch i16 %i.aa, label %explainIndexColumnName.exit.peel [
    i16 -2, label %sqlite3Strlen30.exit.i.peel
    i16 -1, label %bb.h
  ]

bb.h:                                             ; preds = %sqlite3_str_append.exit32.peel
  br label %sqlite3Strlen30.exit.i.peel

explainIndexColumnName.exit.peel:                 ; preds = %sqlite3_str_append.exit32.peel
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !1295
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1162
  %i.ae = sext i16 %i.aa to i64
  %i.af = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1198 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %sqlite3Strlen30.exit.thread.i.peel, label %sqlite3Strlen30.exit.i.peel

sqlite3Strlen30.exit.i.peel:                      ; preds = %explainIndexColumnName.exit.peel, %bb.h, %sqlite3_str_append.exit32.peel
  %.0.i48.peel = phi ptr [ %i.ag, %explainIndexColumnName.exit.peel ], [ @.str.891, %sqlite3_str_append.exit32.peel ], [ @.str.597, %bb.h ] ; 3 uses
  %i.ai = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i48.peel) #60, !inline_history !952 ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 1073741823               ; 3 uses
end_hunk_2
