Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evmap?download=true
inline.NumInlined: 33
inline.NumDeleted: 19
begin_hunk_0_@evmap_io_initmap_:bb.a
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @evmap_signal_initmap_(ptr nofree noundef writeonly captures(none) initializes((0, 12)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @evmap_io_clear_(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %evmap_signal_clear_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %i.e = phi i32 [ %i.i, %bb.c ], [ %i.c, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.preheader.i ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.h, null
  br i1 %.not11.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @event_mm_free_(ptr noundef nonnull %i.h) #7
  %.pre.i = load i32, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.i = phi i32 [ %i.e, %.lr.ph.i ], [ %.pre.i, %bb.b ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre14.i = load ptr, ptr %0, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.l = phi ptr [ %.pre14.i, %._crit_edge.loopexit.i ], [ %i.a, %.preheader.i ]
  tail call void @event_mm_free_(ptr noundef %i.l) #7
  store ptr null, ptr %0, align 8
  br label %evmap_signal_clear_.exit

evmap_signal_clear_.exit:                         ; preds = %bb.a, %._crit_edge.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.m, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @evmap_signal_clear_(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.e = phi i32 [ %i.i, %bb.c ], [ %i.c, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @event_mm_free_(ptr noundef nonnull %i.h) #7
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi i32 [ %i.e, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !0

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre14 = load ptr, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.l = phi ptr [ %.pre14, %._crit_edge.loopexit ], [ %i.a, %.preheader ]
  tail call void @event_mm_free_(ptr noundef %i.l) #7
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.m, align 8
  ret void
}

declare void @event_mm_free_(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @evmap_io_add_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 6 uses
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %evmap_make_space.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %.not = icmp slt i32 %1, %i.e
  br i1 %.not, label %evmap_make_space.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i32 %1, 1073741823
  br i1 %i.f, label %evmap_make_space.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.c
  %.not29.i = icmp eq i32 %i.e, 0
  %spec.select.i = select i1 %.not29.i, i32 32, i32 %i.e
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %.024.i = phi i32 [ %i.g, %.preheader.i ], [ %spec.select.i, %.preheader.preheader.i ] ; 6 uses
  %.not30.i = icmp sgt i32 %.024.i, %1
  %i.g = shl i32 %.024.i, 1
  br i1 %.not30.i, label %bb.d, label %.preheader.i, !llvm.loop !1

bb.d:                                             ; preds = %.preheader.i
  %i.h = icmp samesign ugt i32 %.024.i, 268435455
  br i1 %i.h, label %evmap_make_space.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = shl nuw nsw i32 %.024.i, 3
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call ptr @event_mm_realloc_(ptr noundef %i.i, i64 noundef %i.k) #7 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %evmap_make_space.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.d, align 8              ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.o
  %i.q = sub nsw i32 %.024.i, %i.n
  %i.r = shl nsw i32 %i.q, 3
  %i.s = sext i32 %i.r to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.s, i1 false)
  store i32 %.024.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.b, align 8
  br label %evmap_make_space.exit

evmap_make_space.exit:                            ; preds = %bb.f, %bb.b
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = zext nneg i32 %1 to i64                  ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %evmap_make_space.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, 16
  %i.ab = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef %i.aa) #7
  %i.ac = load ptr, ptr %i.b, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.u
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.u
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %evmap_make_space.exit.thread, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ag, i8 0, i64 14, i1 false)
  %.pre = load ptr, ptr %i.b, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.u
  %.pre111 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %evmap_make_space.exit
  %i.ai = phi ptr [ %.pre111, %bb.h ], [ %i.w, %evmap_make_space.exit ] ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 10 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 2 uses
  %i.ao = load i16, ptr %i.an, align 4            ; 3 uses
  %.not90 = icmp ne i16 %i.ak, 0                  ; 2 uses
  %spec.select = select i1 %.not90, i16 2, i16 0  ; 2 uses
  %.not91 = icmp ne i16 %i.am, 0                  ; 2 uses
  %i.ap = or disjoint i16 %spec.select, 4
  %.1 = select i1 %.not91, i16 %i.ap, i16 %spec.select ; 2 uses
  %.not92 = icmp ne i16 %i.ao, 0                  ; 2 uses
  %i.aq = or disjoint i16 %.1, 128
  %.2 = select i1 %.not92, i16 %i.aq, i16 %.1
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.as = load i16, ptr %i.ar, align 8            ; 5 uses
  %i.at = and i16 %i.as, 2                        ; 2 uses
  %.not93.not = icmp eq i16 %i.at, 0
  %.lobit = lshr exact i16 %i.at, 1
  %add = add i16 %.lobit, %i.ak                   ; 2 uses
  %add.overflow = icmp ult i16 %add, %i.ak
  %i.au = select i1 %.not93.not, i1 true, i1 %.not90
  %.071 = select i1 %i.au, i16 0, i16 2           ; 2 uses
  %i.av = and i16 %i.as, 4                        ; 2 uses
  %.not94.not = icmp eq i16 %i.av, 0
  %i.aw = or disjoint i16 %.071, 4
  %.lobit109 = lshr exact i16 %i.av, 2
  %add111 = add i16 %.lobit109, %i.am             ; 2 uses
  %add.overflow112 = icmp ult i16 %add111, %i.am
  %i.ax = select i1 %.not94.not, i1 true, i1 %.not91
  %.172 = select i1 %i.ax, i16 %.071, i16 %i.aw   ; 2 uses
  %i.ay = and i16 %i.as, 128                      ; 2 uses
  %.not95.not = icmp eq i16 %i.ay, 0
  %i.az = or disjoint i16 %.172, 128
  %.lobit110 = lshr exact i16 %i.ay, 7
  %add113 = add i16 %.lobit110, %i.ao             ; 2 uses
  %add.overflow114 = icmp ult i16 %add113, %i.ao
  %i.ba = select i1 %.not95.not, i1 true, i1 %.not92
  %.273 = select i1 %i.ba, i16 %.172, i16 %i.az   ; 2 uses
  %or.cond = select i1 %add.overflow, i1 true, i1 %add.overflow112, !prof !9
  %i.bb = select i1 %or.cond, i1 true, i1 %add.overflow114, !prof !9
  br i1 %i.bb, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str, i32 noundef %1) #7
  br label %evmap_make_space.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.bc = load i32, ptr @event_debug_mode_on_, align 4
  %.not96 = icmp eq i32 %i.bc, 0
  br i1 %.not96, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not97 = icmp eq ptr %i.bd, null
  br i1 %.not97, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = xor i16 %i.bf, %i.as
  %i.bh = and i16 %i.bg, 32
  %.not98 = icmp eq i16 %i.bh, 0
  br i1 %.not98, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.1, i32 noundef %1) #7
  br label %evmap_make_space.exit.thread

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.not99 = icmp eq i16 %.273, 0
  br i1 %.not99, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = and i16 %i.as, 32
  %i.bo = or disjoint i16 %.273, %i.bn
  %i.bp = tail call i32 %i.bk(ptr noundef nonnull %0, i32 noundef %i.bm, i16 noundef signext %.2, i16 noundef signext %i.bo, ptr noundef nonnull %i.bi) #7
  %.not100 = icmp eq i32 %i.bp, -1
  br i1 %.not100, label %evmap_make_space.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.175 = phi i32 [ 1, %bb.p ], [ 0, %bb.o ]
  store i16 %add, ptr %i.aj, align 8
  store i16 %add111, ptr %i.al, align 2
  store i16 %add113, ptr %i.an, align 4
  %i.bq = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8
  %.not101 = icmp eq ptr %i.bq, null
  br i1 %.not101, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  store ptr %i.br, ptr %i.bs, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr %2, ptr %i.ai, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.ai, ptr %i.bt, align 8
  br label %evmap_make_space.exit.thread

evmap_make_space.exit.thread:                     ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.a, %bb.p, %bb.s, %bb.n, %bb.j
  %.180 = phi i32 [ -1, %bb.p ], [ 0, %bb.a ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.n ], [ %.175, %bb.s ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ]
  ret i32 %.180
}

declare ptr @event_mm_calloc_(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @event_warnx(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @evmap_io_del_(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp slt i32 %1, %i.e
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8              ; 3 uses
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 10 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2              ; 3 uses
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.q = load i16, ptr %i.p, align 4              ; 2 uses
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %.not63 = icmp eq i16 %i.k, 0
  %spec.select = select i1 %.not63, i16 0, i16 2  ; 2 uses
  %.not64 = icmp eq i16 %i.n, 0
  %i.s = or disjoint i16 %spec.select, 4
  %.1 = select i1 %.not64, i16 %spec.select, i16 %i.s ; 2 uses
  %.not65 = icmp eq i16 %i.q, 0
  %i.t = or disjoint i16 %.1, 128
  %.2 = select i1 %.not65, i16 %.1, i16 %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.v = load i16, ptr %i.u, align 8              ; 4 uses
  %i.w = and i16 %i.v, 2
  %.not66 = icmp eq i16 %i.w, 0                   ; 2 uses
  %i.x = add nsw i32 %i.l, -1                     ; 2 uses
  %i.y = icmp ne i32 %i.x, 0
  %i.z = select i1 %.not66, i1 true, i1 %i.y      ; 2 uses
  %.046 = select i1 %i.z, i16 0, i16 2            ; 2 uses
  %i.aa = and i16 %i.v, 4
  %.not67 = icmp eq i16 %i.aa, 0                  ; 2 uses
  %i.ab = add nsw i32 %i.o, -1                    ; 2 uses
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = or disjoint i16 %.046, 4
  %i.ae = select i1 %.not67, i1 true, i1 %i.ac    ; 2 uses
  %.147 = select i1 %i.ae, i16 %.046, i16 %i.ad   ; 2 uses
  %i.af = and i16 %i.v, 128
  %.not68 = icmp eq i16 %i.af, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = add nsw i32 %i.r, -1                    ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = or disjoint i16 %.147, 128
  br i1 %i.ah, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.051 = phi i32 [ %i.r, %bb.c ], [ %i.ag, %bb.d ] ; 2 uses
  %.not69 = select i1 %i.ae, i1 %i.z, i1 false
  br i1 %.not69, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %.24882 = phi i16 [ %.147, %bb.e ], [ %i.ai, %bb.d ]
  %.05180 = phi i32 [ %.051, %bb.e ], [ 0, %bb.d ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = and i16 %i.v, 32
  %i.ap = or i16 %.24882, %i.ao
  %i.aq = tail call i32 %i.al(ptr noundef nonnull %0, i32 noundef %i.an, i16 noundef signext %.2, i16 noundef signext %i.ap, ptr noundef nonnull %i.aj) #7
  %i.ar = icmp eq i32 %i.aq, -1
  %. = select i1 %i.ar, i32 -1, i32 1
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %.05181 = phi i32 [ %.05180, %.thread ], [ %.051, %bb.e ]
  %.150 = phi i32 [ %., %.thread ], [ 0, %bb.e ]
  %i.as = trunc i32 %i.x to i16
  %i.at = select i1 %.not66, i16 %i.k, i16 %i.as
  store i16 %i.at, ptr %i.j, align 8
  %i.au = trunc i32 %i.ab to i16
  %i.av = select i1 %.not67, i16 %i.n, i16 %i.au
  store i16 %i.av, ptr %i.m, align 2
  %i.aw = trunc i32 %.05181 to i16
  store i16 %i.aw, ptr %i.p, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not70 = icmp eq ptr %i.ay, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.pre83 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not70, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  store ptr %.pre83, ptr %i.az, align 8
  %.pre = load ptr, ptr %i.ax, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %i.ba = phi ptr [ %.pre, %bb.g ], [ null, %bb.f ]
  store ptr %i.ba, ptr %.pre83, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.054 = phi i32 [ %.150, %._crit_edge ], [ 0, %bb.a ], [ -1, %bb.b ]
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define hidden void @evmap_io_active_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i16 noundef signext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp slt i32 %1, %i.d
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.018 = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not1619 = icmp eq ptr %.018, null
  br i1 %.not1619, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = sext i16 %2 to i32                       ; 2 uses
  %invariant.op = and i32 %i.j, -33
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.020 = phi ptr [ %.018, %.lr.ph ], [ %.0, %bb.f ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.020, i64 104
  %i.l = load i16, ptr %i.k, align 8
  %i.m = sext i16 %i.l to i32                     ; 2 uses
  %.reass = and i32 %invariant.op, %i.m
  %.not17 = icmp eq i32 %.reass, 0
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.m, %i.j
  tail call void @event_active_nolock_(ptr noundef nonnull %.020, i32 noundef %i.n, i16 noundef signext 1) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.020, i64 72
  %.0 = load ptr, ptr %i.o, align 8               ; 2 uses
  %.not16 = icmp eq ptr %.0, null
  br i1 %.not16, label %.loopexit, label %bb.d, !llvm.loop !10

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.c, %bb.a, %bb.b
  ret void
}

declare void @event_active_nolock_(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @evmap_signal_add_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
end_hunk_0
