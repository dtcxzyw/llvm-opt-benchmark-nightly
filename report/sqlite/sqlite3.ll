Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_db_config:bb.a
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.dp = icmp eq i32 %i.dg, 0
  br i1 %i.dp, label %bb.ab, label %sqlite3ExpirePreparedStatements.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !1234
  %i.ds = xor i64 %i.dr, -1
  %i.dt = and i64 %i.dk, %i.ds
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sink = phi i64 [ %i.dt, %bb.ab ], [ %i.do, %bb.z ] ; 2 uses
  store i64 %.sink, ptr %i.dj, align 8, !tbaa !557
  %.not47 = icmp eq i64 %i.dk, %.sink
  br i1 %.not47, label %sqlite3ExpirePreparedStatements.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.04.i = load ptr, ptr %i.du, align 8, !tbaa !132 ; 2 uses
  %.not5.i = icmp eq ptr %.04.i, null
  br i1 %.not5.i, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.04.i, %bb.ad ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.06.i, i64 200 ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 8
  %i.dx = and i16 %i.dw, -4
  %i.dy = or disjoint i16 %i.dx, 1
  store i16 %i.dy, ptr %i.dv, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %.0.i = load ptr, ptr %i.dz, align 8, !tbaa !132 ; 2 uses
  %.not.i49 = icmp eq ptr %.0.i, null
  br i1 %.not.i49, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i, !llvm.loop !1018

sqlite3ExpirePreparedStatements.exit:             ; preds = %.lr.ph.i, %bb.aa, %bb.ad, %bb.ac
  %.not48 = icmp eq ptr %i.di, null
  br i1 %.not48, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %sqlite3ExpirePreparedStatements.exit
  %i.ea = load i64, ptr %i.dj, align 8, !tbaa !557
  %i.eb = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !1234
  %i.ed = and i64 %i.ec, %i.ea
  %i.ee = icmp ne i64 %i.ed, 0
  %i.ef = zext i1 %i.ee to i32
  store i32 %i.ef, ptr %i.di, align 4, !tbaa !27
  br label %.loopexit

.loopexit:                                        ; preds = %sqlite3_mutex_enter.exit, %bb.ae, %sqlite3ExpirePreparedStatements.exit, %bb.s, %bb.t, %bb.l, %bb.f
  %.1 = phi i32 [ 0, %bb.s ], [ 0, %bb.f ], [ %i.be, %bb.l ], [ 0, %bb.t ], [ 0, %sqlite3ExpirePreparedStatements.exit ], [ 0, %bb.ae ], [ 1, %sqlite3_mutex_enter.exit ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %.not.i50 = icmp eq ptr %i.eg, null
  br i1 %.not.i50, label %sqlite3_mutex_leave.exit, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  call void %i.eh(ptr noundef nonnull %i.eg) #58, !inline_history !23
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %.loopexit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 6) i32 @setupLookaside(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.b, null
  br i1 %.not4.i.i, label %countLookasideSlots.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %.neg148.neg, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %.035.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ]
  %i.c = load ptr, ptr %.035.i.i, align 8, !tbaa !53 ; 2 uses
  %.neg148.neg = add i32 %.06.i.i, 1
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %countLookasideSlots.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !55

countLookasideSlots.exit.i.loopexit:              ; preds = %.lr.ph.i.i
  %i.d = add i32 %.06.i.i, 3
  br label %countLookasideSlots.exit.i

countLookasideSlots.exit.i:                       ; preds = %countLookasideSlots.exit.i.loopexit, %bb.a
  %.0.lcssa.i.i.neg149.neg = phi i32 [ 2, %bb.a ], [ %i.d, %countLookasideSlots.exit.i.loopexit ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %.not4.i12.i = icmp eq ptr %i.f, null
  br i1 %.not4.i12.i, label %countLookasideSlots.exit18.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %countLookasideSlots.exit.i, %.lr.ph.i13.i
  %.06.i14.i = phi i32 [ %i.h, %.lr.ph.i13.i ], [ 0, %countLookasideSlots.exit.i ] ; 2 uses
  %.035.i15.i = phi ptr [ %i.g, %.lr.ph.i13.i ], [ %i.f, %countLookasideSlots.exit.i ]
  %i.g = load ptr, ptr %.035.i15.i, align 8, !tbaa !53 ; 2 uses
  %i.h = add i32 %.06.i14.i, 1
  %.not.i16.i = icmp eq ptr %i.g, null
  br i1 %.not.i16.i, label %countLookasideSlots.exit18.i, label %.lr.ph.i13.i, !llvm.loop !55

countLookasideSlots.exit18.i:                     ; preds = %.lr.ph.i13.i, %countLookasideSlots.exit.i
  %i.i = phi i32 [ -1, %countLookasideSlots.exit.i ], [ %.06.i14.i, %.lr.ph.i13.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58   ; 2 uses
  %.not4.i19.i = icmp eq ptr %i.k, null
  br i1 %.not4.i19.i, label %countLookasideSlots.exit25.i, label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %countLookasideSlots.exit18.i, %.lr.ph.i20.i
  %.06.i21.i = phi i32 [ %i.m, %.lr.ph.i20.i ], [ 0, %countLookasideSlots.exit18.i ] ; 2 uses
  %.035.i22.i = phi ptr [ %i.l, %.lr.ph.i20.i ], [ %i.k, %countLookasideSlots.exit18.i ]
  %i.l = load ptr, ptr %.035.i22.i, align 8, !tbaa !53 ; 2 uses
  %i.m = add i32 %.06.i21.i, 1
  %.not.i23.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i, label %countLookasideSlots.exit25.i, label %.lr.ph.i20.i, !llvm.loop !55

countLookasideSlots.exit25.i:                     ; preds = %.lr.ph.i20.i, %countLookasideSlots.exit18.i
  %i.n = phi i32 [ -1, %countLookasideSlots.exit18.i ], [ %.06.i21.i, %.lr.ph.i20.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59   ; 2 uses
  %.not4.i26.i = icmp eq ptr %i.p, null
  br i1 %.not4.i26.i, label %sqlite3LookasideUsed.exit, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %countLookasideSlots.exit25.i, %.lr.ph.i27.i
  %.06.i28.i = phi i32 [ %i.r, %.lr.ph.i27.i ], [ 0, %countLookasideSlots.exit25.i ] ; 2 uses
  %.035.i29.i = phi ptr [ %i.q, %.lr.ph.i27.i ], [ %i.p, %countLookasideSlots.exit25.i ]
  %i.q = load ptr, ptr %.035.i29.i, align 8, !tbaa !53 ; 2 uses
  %i.r = add i32 %.06.i28.i, 1
  %.not.i30.i = icmp eq ptr %i.q, null
  br i1 %.not.i30.i, label %sqlite3LookasideUsed.exit, label %.lr.ph.i27.i, !llvm.loop !55

sqlite3LookasideUsed.exit:                        ; preds = %.lr.ph.i27.i, %countLookasideSlots.exit25.i
  %i.s = phi i32 [ -1, %countLookasideSlots.exit25.i ], [ %.06.i28.i, %.lr.ph.i27.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !60
  %i.v = add i32 %i.i, %i.s
  %i.w = add i32 %.0.lcssa.i.i.neg149.neg, %i.n
  %i.x = add i32 %i.w, %i.v
  %i.y = sub i32 %i.x, %i.u
  %i.z = icmp slt i32 %i.y, -1
  br i1 %i.z, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %sqlite3LookasideUsed.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !811
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %sqlite3_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !103 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %sqlite3_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr @sqlite3Config, align 8, !tbaa !179
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i105, label %sqlite3_mutex_enter.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !12
  tail call void %i.ai(ptr noundef nonnull %i.ah) #58, !inline_history !276
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.f, %bb.e
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.ak = tail call i32 %i.aj(ptr noundef nonnull %i.ae) #58, !inline_history !277
  %i.al = sext i32 %i.ak to i64
  %i.am = load i64, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.an = sub nsw i64 %i.am, %i.al
  store i64 %i.an, ptr @sqlite3Stat, align 8, !tbaa !21
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.ap = add nsw i64 %i.ao, -1
  store i64 %i.ap, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !21
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.aq(ptr noundef nonnull %i.ae) #58, !inline_history !278
  %i.ar = load ptr, ptr @mem0, align 8, !tbaa !180 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ar, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !22
  tail call void %i.as(ptr noundef nonnull %i.ar) #58, !inline_history !279
  br label %sqlite3_free.exit

bb.h:                                             ; preds = %bb.d
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !184
  tail call void %i.at(ptr noundef nonnull %i.ae) #58, !inline_history !278
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.h, %bb.g, %sqlite3_mutex_enter.exit.i, %bb.c, %bb.b
  %i.au = and i32 %2, -8                          ; 2 uses
  %i.av = icmp slt i32 %i.au, 9                   ; 3 uses
  %i.aw = tail call i32 @llvm.umin.i32(i32 %i.au, i32 65528) ; 5 uses
  %spec.store.select2 = select i1 %i.av, i32 0, i32 %i.aw ; 5 uses
  %spec.store.select1 = tail call i32 @llvm.smax.i32(i32 %3, i32 0) ; 2 uses
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %sqlite3_free.exit
  %i.ax = udiv i32 2147418112, %i.aw              ; 2 uses
  %i.ay = icmp sgt i32 %3, %i.ax
  %spec.select = select i1 %i.ay, i32 %i.ax, i32 %spec.store.select1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sqlite3_free.exit
  %.092 = phi i32 [ %spec.store.select1, %sqlite3_free.exit ], [ %spec.select, %bb.i ]
  %i.az = zext nneg i32 %spec.store.select2 to i64 ; 4 uses
  %i.ba = zext nneg i32 %.092 to i64
  %i.bb = mul nuw nsw i64 %i.ba, %i.az            ; 4 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.thread127, label %bb.k

.thread127:                                       ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 414
  store i16 0, ptr %i.bf, align 2, !tbaa !356
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp eq ptr %1, null                    ; 2 uses
  br i1 %i.bg, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr @sqlite3Hooks.0, align 8, !tbaa !1236 ; 2 uses
  %.not.i106 = icmp eq ptr %i.bh, null
  br i1 %.not.i106, label %sqlite3BeginBenignMalloc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void %i.bh() #58, !inline_history !1238
  br label %sqlite3BeginBenignMalloc.exit

sqlite3BeginBenignMalloc.exit:                    ; preds = %bb.l, %bb.m
  %i.bi = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.bb) ; 3 uses
  %i.bj = load ptr, ptr @sqlite3Hooks.1, align 8, !tbaa !1239 ; 2 uses
  %.not.i107 = icmp eq ptr %i.bj, null
  br i1 %.not.i107, label %sqlite3EndBenignMalloc.exit, label %bb.n

bb.n:                                             ; preds = %sqlite3BeginBenignMalloc.exit
  tail call void %i.bj() #58, !inline_history !1240
  br label %sqlite3EndBenignMalloc.exit

sqlite3EndBenignMalloc.exit:                      ; preds = %sqlite3BeginBenignMalloc.exit, %bb.n
  %.not102 = icmp eq ptr %i.bi, null
  br i1 %.not102, label %bb.p, label %bb.o

bb.o:                                             ; preds = %sqlite3EndBenignMalloc.exit
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !98
  %i.bl = tail call i32 %i.bk(ptr noundef nonnull %i.bi) #58, !inline_history !275
  %i.bm = sext i32 %i.bl to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o, %sqlite3EndBenignMalloc.exit
  %.091 = phi ptr [ %1, %bb.k ], [ %i.bi, %bb.o ], [ null, %sqlite3EndBenignMalloc.exit ] ; 5 uses
  %.090 = phi i64 [ %i.bb, %bb.k ], [ %i.bm, %bb.o ], [ %i.bb, %sqlite3EndBenignMalloc.exit ] ; 5 uses
  %i.bn = icmp samesign ugt i32 %spec.store.select2, 383
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = add nuw nsw i32 %spec.store.select2, 384
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = sdiv i64 %.090, %i.bp                   ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  %sext103 = shl i64 %i.bq, 32
  %i.bs = ashr exact i64 %sext103, 32
  %i.bt = mul nsw i64 %i.bs, %i.az
  %i.bu = sub nsw i64 %.090, %i.bt
  %i.bv = sdiv i64 %i.bu, 128
  %i.bw = trunc i64 %i.bv to i32
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bx = icmp samesign ugt i32 %spec.store.select2, 255
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = add nuw nsw i32 %spec.store.select2, 128
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = sdiv i64 %.090, %i.bz                   ; 2 uses
  %i.cb = trunc i64 %i.ca to i32
  %sext = shl i64 %i.ca, 32
  %i.cc = ashr exact i64 %sext, 32
  %i.cd = mul nsw i64 %i.cc, %i.az
  %i.ce = sub nsw i64 %.090, %i.cd
  %i.cf = sdiv i64 %i.ce, 128
  %i.cg = trunc i64 %i.cf to i32
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  br i1 %i.av, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = sdiv i64 %.090, %i.az
  %i.ci = trunc i64 %i.ch to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.u, %bb.q
  %.093111 = phi i32 [ %i.aw, %bb.q ], [ %i.aw, %bb.s ], [ %i.aw, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %.089 = phi i32 [ %i.br, %bb.q ], [ %i.cb, %bb.s ], [ %i.ci, %bb.u ], [ 0, %bb.t ] ; 5 uses
  %.088 = phi i32 [ %i.bw, %bb.q ], [ %i.cg, %bb.s ], [ 0, %bb.u ], [ 0, %bb.t ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  store ptr %.091, ptr %i.cj, align 8, !tbaa !103
  %i.ck = trunc nuw i32 %.093111 to i16           ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i16 %i.ck, ptr %i.cl, align 4, !tbaa !567
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 414
  store i16 %i.ck, ptr %i.cm, align 2, !tbaa !356
  %.not104 = icmp eq ptr %.091, null
  br i1 %.not104, label %bb.aa, label %.preheader

.preheader:                                       ; preds = %bb.v
  %i.cn = icmp sgt i32 %.089, 0
  br i1 %i.cn, label %.lr.ph, label %bb.y

.lr.ph:                                           ; preds = %.preheader
  %i.co = zext nneg i32 %.093111 to i64           ; 9 uses
  %xtraiter = and i32 %.089, 7                    ; 3 uses
  %i.cp = icmp ult i32 %.089, 8
  br i1 %i.cp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %.089, 2147483640
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.new
  %i.cq = phi ptr [ null, %.lr.ph.new ], [ %i.cx, %bb.w ]
  %.0140 = phi ptr [ %.091, %.lr.ph.new ], [ %i.cy, %bb.w ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.w ]
  store ptr %i.cq, ptr %.0140, align 8, !tbaa !53
  %i.cr = getelementptr inbounds nuw i8, ptr %.0140, i64 %i.co ; 3 uses
  store ptr %.0140, ptr %i.cr, align 8, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co ; 3 uses
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !53
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.co ; 3 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.co ; 3 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !53
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.co ; 3 uses
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !53
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.co ; 3 uses
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !53
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co ; 5 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !53
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.co ; 3 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.unr-lcssa, label %bb.w, !llvm.loop !1241

._crit_edge.unr-lcssa:                            ; preds = %bb.w
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.epil.init = phi ptr [ null, %.lr.ph ], [ %i.cx, %._crit_edge.unr-lcssa ]
  %.0140.epil.init = phi ptr [ %.091, %.lr.ph ], [ %i.cy, %._crit_edge.unr-lcssa ]
  %lcmp.mod170 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod170)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader
  %i.cz = phi ptr [ %.epil.init, %.epil.preheader ], [ %.0140.epil, %bb.x ]
  %.0140.epil = phi ptr [ %.0140.epil.init, %.epil.preheader ], [ %i.da, %bb.x ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.x ]
  store ptr %i.cz, ptr %.0140.epil, align 8, !tbaa !53
  %i.da = getelementptr inbounds nuw i8, ptr %.0140.epil, i64 %i.co ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.x, !llvm.loop !1242

._crit_edge:                                      ; preds = %bb.x, %._crit_edge.unr-lcssa
  %.0140.lcssa = phi ptr [ %i.cx, %._crit_edge.unr-lcssa ], [ %.0140.epil, %bb.x ]
  %.lcssa167 = phi ptr [ %i.cy, %._crit_edge.unr-lcssa ], [ %i.da, %bb.x ]
  store ptr %.0140.lcssa, ptr %i.a, align 8, !tbaa !52
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %.preheader
  %.0.lcssa = phi ptr [ %.lcssa167, %._crit_edge ], [ %.091, %.preheader ] ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr %.0.lcssa, ptr %i.db, align 8, !tbaa !178
  %i.dc = icmp sgt i32 %.088, 0
  br i1 %i.dc, label %.lr.ph144.preheader, label %bb.z

.lr.ph144.preheader:                              ; preds = %bb.y
  %xtraiter171 = and i32 %.088, 7                 ; 3 uses
  %i.dd = icmp ult i32 %.088, 8
  br i1 %i.dd, label %.lr.ph144.epil.preheader, label %.lr.ph144.preheader.new

.lr.ph144.preheader.new:                          ; preds = %.lr.ph144.preheader
  %unroll_iter179 = and i32 %.088, 2147483640
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph144, %.lr.ph144.preheader.new
  %i.de = phi ptr [ null, %.lr.ph144.preheader.new ], [ %i.dl, %.lr.ph144 ]
  %.1142 = phi ptr [ %.0.lcssa, %.lr.ph144.preheader.new ], [ %i.dm, %.lr.ph144 ] ; 10 uses
  %niter180 = phi i32 [ 0, %.lr.ph144.preheader.new ], [ %niter180.next.7, %.lr.ph144 ]
  store ptr %i.de, ptr %.1142, align 8, !tbaa !53
  %i.df = getelementptr inbounds nuw i8, ptr %.1142, i64 128 ; 2 uses
  store ptr %.1142, ptr %i.df, align 8, !tbaa !53
  %i.dg = getelementptr inbounds nuw i8, ptr %.1142, i64 256 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !53
  %i.dh = getelementptr inbounds nuw i8, ptr %.1142, i64 384 ; 2 uses
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !53
  %i.di = getelementptr inbounds nuw i8, ptr %.1142, i64 512 ; 2 uses
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !53
  %i.dj = getelementptr inbounds nuw i8, ptr %.1142, i64 640 ; 2 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !53
  %i.dk = getelementptr inbounds nuw i8, ptr %.1142, i64 768 ; 2 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !53
  %i.dl = getelementptr inbounds nuw i8, ptr %.1142, i64 896 ; 4 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %.1142, i64 1024 ; 3 uses
  %niter180.next.7 = add nuw nsw i32 %niter180, 8 ; 2 uses
  %niter180.ncmp.7 = icmp eq i32 %niter180.next.7, %unroll_iter179
  br i1 %niter180.ncmp.7, label %._crit_edge145.unr-lcssa, label %.lr.ph144, !llvm.loop !1243

._crit_edge145.unr-lcssa:                         ; preds = %.lr.ph144
  %lcmp.mod175.not = icmp eq i32 %xtraiter171, 0
  br i1 %lcmp.mod175.not, label %._crit_edge145, label %.lr.ph144.epil.preheader

.lr.ph144.epil.preheader:                         ; preds = %._crit_edge145.unr-lcssa, %.lr.ph144.preheader
  %.epil.init174 = phi ptr [ null, %.lr.ph144.preheader ], [ %i.dl, %._crit_edge145.unr-lcssa ]
  %.1142.epil.init = phi ptr [ %.0.lcssa, %.lr.ph144.preheader ], [ %i.dm, %._crit_edge145.unr-lcssa ]
  %lcmp.mod178 = icmp ne i32 %xtraiter171, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph144.epil

.lr.ph144.epil:                                   ; preds = %.lr.ph144.epil, %.lr.ph144.epil.preheader
  %i.dn = phi ptr [ %.1142.epil, %.lr.ph144.epil ], [ %.epil.init174, %.lr.ph144.epil.preheader ]
  %.1142.epil = phi ptr [ %i.do, %.lr.ph144.epil ], [ %.1142.epil.init, %.lr.ph144.epil.preheader ] ; 4 uses
  %epil.iter172 = phi i32 [ %epil.iter172.next, %.lr.ph144.epil ], [ 0, %.lr.ph144.epil.preheader ]
  store ptr %i.dn, ptr %.1142.epil, align 8, !tbaa !53
  %i.do = getelementptr inbounds nuw i8, ptr %.1142.epil, i64 128 ; 2 uses
  %epil.iter172.next = add i32 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i32 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %._crit_edge145, label %.lr.ph144.epil, !llvm.loop !1244

._crit_edge145:                                   ; preds = %.lr.ph144.epil, %._crit_edge145.unr-lcssa
  %.1142.lcssa = phi ptr [ %i.dl, %._crit_edge145.unr-lcssa ], [ %.1142.epil, %.lr.ph144.epil ]
  %.lcssa = phi ptr [ %i.dm, %._crit_edge145.unr-lcssa ], [ %i.do, %.lr.ph144.epil ]
  store ptr %.1142.lcssa, ptr %i.j, align 8, !tbaa !58
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge145, %bb.y
  %.1.lcssa = phi ptr [ %.lcssa, %._crit_edge145 ], [ %.0.lcssa, %bb.y ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %.1.lcssa, ptr %i.dp, align 8, !tbaa !104
  store i32 0, ptr %i.aa, align 8, !tbaa !566
  %i.dq = zext i1 %i.bg to i8
  store i8 %i.dq, ptr %i.ab, align 8, !tbaa !811
  %i.dr = add nsw i32 %.088, %.089
  br label %bb.ab

bb.aa:                                            ; preds = %.thread127, %bb.v
  %i.ds = phi ptr [ %i.be, %.thread127 ], [ %i.cl, %bb.v ]
  %i.dt = phi ptr [ %i.bd, %.thread127 ], [ %i.cj, %bb.v ]
  store ptr null, ptr %i.dt, align 8, !tbaa !103
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr null, ptr %i.du, align 8, !tbaa !104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.aa, align 8, !tbaa !566
  store i16 0, ptr %i.ds, align 4, !tbaa !567
  store i8 0, ptr %i.ab, align 8, !tbaa !811
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dv = phi ptr [ %.1.lcssa, %bb.z ], [ null, %bb.aa ]
  %storemerge = phi i32 [ %i.dr, %bb.z ], [ 0, %bb.aa ]
  store i32 %storemerge, ptr %i.t, align 4, !tbaa !60
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 496
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !131
  br label %bb.ac

bb.ac:                                            ; preds = %sqlite3LookasideUsed.exit, %bb.ab
  %.094 = phi i32 [ 0, %bb.ab ], [ 5, %sqlite3LookasideUsed.exit ]
  ret i32 %.094
}

; Function Attrs: nounwind uwtable
define i64 @sqlite3_last_insert_rowid(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit.thread, label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit.thread:                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1245
end_hunk_0
