Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nodeGatherMerge?download=true
inline.NumInlined: 32
inline.NumDeleted: 19
begin_hunk_0_@ExecInitGatherMerge:bb.a
  %i.bw = load ptr, ptr %i.bk, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.next.i
  store ptr %i.bv, ptr %i.bx, align 8
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %gather_merge_setup.exit, label %bb.f, !llvm.loop !12

gather_merge_setup.exit:                          ; preds = %bb.f, %.loopexit
  %i.by = tail call ptr @binaryheap_allocate(i32 noundef %i.bg, ptr noundef nonnull @heap_compare_slots, ptr noundef nonnull %i.a) #3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr %i.by, ptr %i.bz, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @ExecGatherMerge(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = load volatile i32, ptr @InterruptPending, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @ProcessInterrupts() #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.m = load i8, ptr %i.l, align 8, !range !7, !noundef !8
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not52 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  br i1 %.not52, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call ptr @ExecInitParallelPlan(ptr noundef %i.r, ptr noundef nonnull %i.f, ptr noundef %i.t, i32 noundef %i.j, i64 noundef %i.v) #3 ; 2 uses
  store ptr %i.w, ptr %i.o, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @ExecParallelReinitialize(ptr noundef %i.r, ptr noundef nonnull %i.p, ptr noundef %i.t) #3
  %.pre = load ptr, ptr %i.o, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = phi ptr [ %.pre, %bb.h ], [ %i.w, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  tail call void @LaunchParallelWorkers(ptr noundef %i.z) #3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 28 ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 284 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add i32 %i.ag, %i.ae
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = load i32, ptr %i.aa, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 288 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = load i32, ptr %i.aa, align 4
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.o, align 8
  tail call void @ExecParallelCreateReaders(ptr noundef %i.ao) #3
  %i.ap = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = sext i32 %i.ap to i64
  %i.as = shl nsw i64 %i.ar, 3
  %i.at = tail call ptr @palloc(i64 noundef %i.as) #3 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.at, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.o, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load i32, ptr %i.aq, align 4
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.at, ptr align 8 %i.ax, i64 %i.ba, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 0, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr null, ptr %i.bc, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.e, %bb.d
  %i.bd = load i8, ptr @parallel_leader_participation, align 1, !range !7, !noundef !8
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i8 1, ptr %i.bi, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i8 1, ptr %i.b, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void @MemoryContextReset(ptr noundef %i.bm) #3
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 201 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !range !7, !noundef !8
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.am, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.br = load i32, ptr %i.bq, align 4            ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  store ptr null, ptr %i.bt, align 8
  %i.bu = icmp sgt i32 %i.br, 0
  br i1 %i.bu, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.br to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.r ] ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %indvars.iv.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 0, ptr %i.by, align 8
  %i.bz = load ptr, ptr %i.bv, align 8
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %indvars.iv.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cb, align 4
  %i.cc = load ptr, ptr %i.bv, align 8
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %indvars.iv.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i8 0, ptr %i.ce, align 8
  %i.cf = load ptr, ptr %i.bs, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef %i.ch) #3, !inline_history !13
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.r, !llvm.loop !14

._crit_edge.i.i:                                  ; preds = %bb.r, %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void @binaryheap_reset(ptr noundef %i.cn) #3
  %.not51.i.i = icmp slt i32 %i.br, 0
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 202
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.not4655.i.i = icmp slt i32 %i.br, 1
  br i1 %.not51.i.i, label %gather_merge_init.exit.i, label %.lr.ph54.i.i

.lr.ph54.i.i.loopexit:                            ; preds = %bb.ak, %bb.aj
  br label %.lr.ph54.i.i

.lr.ph54.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph54.i.i.loopexit
  %.042.i.i = phi i1 [ false, %.lr.ph54.i.i.loopexit ], [ true, %._crit_edge.i.i ]
  br label %bb.s

..preheader_crit_edge.i.i:                        ; preds = %load_tuple_array.exit.i.i
  br i1 %.not4655.i.i, label %gather_merge_init.exit.i, label %.lr.ph57.i.i

.lr.ph57.i.i:                                     ; preds = %..preheader_crit_edge.i.i
  %i.cr = load ptr, ptr %i.co, align 8
  br label %bb.ai

bb.s:                                             ; preds = %load_tuple_array.exit.i.i, %.lr.ph54.i.i
  %.152.i.i = phi i32 [ 0, %.lr.ph54.i.i ], [ %i.ek, %load_tuple_array.exit.i.i ] ; 6 uses
  %i.cs = load volatile i32, ptr @InterruptPending, align 4
  %.not48.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not48.i.i, label %bb.u, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  tail call void @ProcessInterrupts() #3
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ct = icmp eq i32 %.152.i.i, 0                ; 2 uses
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cu = load i8, ptr %i.cp, align 2, !range !7, !noundef !8
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.x, label %load_tuple_array.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %i.co, align 8
  %i.cx = add i32 %.152.i.i, -1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [24 x i8], ptr %i.cw, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i8, ptr %i.da, align 8, !range !7, !noundef !8
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %load_tuple_array.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dd = load ptr, ptr %i.bs, align 8
  %i.de = sext i32 %.152.i.i to i64               ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = load i16, ptr %i.di, align 4
  %i.dk = and i16 %i.dj, 2
  %.not49.i.i = icmp eq i16 %i.dk, 0
  br i1 %.not49.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dl = tail call fastcc zeroext i1 @gather_merge_readnext(ptr noundef nonnull %0, i32 noundef %.152.i.i, i1 noundef zeroext %.042.i.i)
  br i1 %i.dl, label %bb.aa, label %load_tuple_array.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dm = load ptr, ptr %i.cm, align 8
  tail call void @binaryheap_add_unordered(ptr noundef %i.dm, i64 noundef %i.de) #3
  br label %load_tuple_array.exit.i.i

bb.ab:                                            ; preds = %bb.y
  br i1 %i.ct, label %load_tuple_array.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = load ptr, ptr %i.co, align 8
  %i.do = add i32 %.152.i.i, -1
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds [24 x i8], ptr %i.dn, i64 %i.dp ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load i32, ptr %i.dr, align 8            ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 12 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = icmp eq i32 %i.ds, %i.du
  br i1 %i.dv, label %.thread30.i.i.i, label %bb.ad

.thread30.i.i.i:                                  ; preds = %bb.ac
  store i32 0, ptr %i.dt, align 4
  store i32 0, ptr %i.dr, align 8
  br label %.lr.ph.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dw = icmp slt i32 %i.ds, 10
  br i1 %i.dw, label %.lr.ph.i.i.i, label %load_tuple_array.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ad, %.thread30.i.i.i
  %i.dx = phi i32 [ 0, %.thread30.i.i.i ], [ %i.ds, %bb.ad ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dz = sext i32 %i.dx to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ah ] ; 2 uses
  %i.ea = load volatile i32, ptr @InterruptPending, align 4
  %.not.i.i.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.af, !prof !10

bb.af:                                            ; preds = %bb.ae
  tail call void @ProcessInterrupts() #3
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eb = load ptr, ptr %i.cq, align 8
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.dp
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = tail call ptr @TupleQueueReaderNext(ptr noundef %i.ed, i1 noundef zeroext true, ptr noundef nonnull %i.dy) #3 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not6.i.i.i.i, label %load_tuple_array.exit.i.i, label %gm_readnext_tuple.exit.i.i.i

gm_readnext_tuple.exit.i.i.i:                     ; preds = %bb.ag
  %i.ef = tail call ptr @heap_copy_minimal_tuple(ptr noundef nonnull %i.ee, i64 noundef 0) #3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i, label %load_tuple_array.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %gm_readnext_tuple.exit.i.i.i
  %i.eg = load ptr, ptr %i.dq, align 8
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %indvars.iv.i.i.i
  store ptr %i.ef, ptr %i.eh, align 8
  %i.ei = load i32, ptr %i.dr, align 8
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.dr, align 8
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 10
  br i1 %exitcond.not.i.i.i, label %load_tuple_array.exit.i.i, label %bb.ae, !llvm.loop !0

load_tuple_array.exit.i.i:                        ; preds = %bb.ah, %gm_readnext_tuple.exit.i.i.i, %bb.ag, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.v
  %i.ek = add i32 %.152.i.i, 1                    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ek, %i.br
  br i1 %.not.i.i, label %..preheader_crit_edge.i.i, label %bb.s, !llvm.loop !15

bb.ai:                                            ; preds = %bb.al, %.lr.ph57.i.i
  %.256.i.i = phi i32 [ 1, %.lr.ph57.i.i ], [ %4, %bb.al ] ; 3 uses
  %1 = add i32 %.256.i.i, -1
  %2 = sext i32 %1 to i64
  %i.el = getelementptr inbounds [24 x i8], ptr %i.cr, i64 %2
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load i8, ptr %i.em, align 8, !range !7, !noundef !8
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ep = load ptr, ptr %i.bs, align 8
  %3 = sext i32 %.256.i.i to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %3
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.lr.ph54.i.i.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.eu = load i16, ptr %i.et, align 4
  %i.ev = and i16 %i.eu, 2
  %.not47.i.i = icmp eq i16 %i.ev, 0
  br i1 %.not47.i.i, label %bb.al, label %.lr.ph54.i.i.loopexit

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %4 = add i32 %.256.i.i, 1                       ; 2 uses
  %.not46.i.i = icmp sgt i32 %4, %i.br
  br i1 %.not46.i.i, label %gather_merge_init.exit.i, label %bb.ai, !llvm.loop !16

gather_merge_init.exit.i:                         ; preds = %..preheader_crit_edge.i.i, %bb.al, %._crit_edge.i.i
  %i.ew = load ptr, ptr %i.cm, align 8
  tail call void @binaryheap_build(ptr noundef %i.ew) #3
  store i8 1, ptr %i.bn, align 1
  br label %bb.ap

bb.am:                                            ; preds = %bb.p
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call i64 @binaryheap_first(ptr noundef %i.ey) #3 ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = tail call fastcc zeroext i1 @gather_merge_readnext(ptr noundef nonnull %0, i32 noundef %i.fa, i1 noundef zeroext false)
  %i.fc = load ptr, ptr %i.ex, align 8            ; 2 uses
  br i1 %i.fb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %sext.i = shl i64 %i.ez, 32
  %i.fd = ashr exact i64 %sext.i, 32
  tail call void @binaryheap_replace_first(ptr noundef %i.fc, i64 noundef %i.fd) #3
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.fe = tail call i64 @binaryheap_remove_first(ptr noundef %i.fc) #3 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %gather_merge_init.exit.i
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.aq, label %gather_merge_getnext.exit

bb.aq:                                            ; preds = %bb.ap
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph13.i.i, label %gather_merge_getnext.exit.thread

.lr.ph13.i.i:                                     ; preds = %bb.aq
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i14.i, %.lr.ph13.i.i
  %indvars.iv.i13.i = phi i64 [ 0, %.lr.ph13.i.i ], [ %indvars.iv.next.i15.i, %._crit_edge.i14.i ] ; 2 uses
  %i.fo = load ptr, ptr %i.fm, align 8
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.fo, i64 %indvars.iv.i13.i ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fs = load i32, ptr %i.fq, align 4            ; 2 uses
  %i.ft = load i32, ptr %i.fr, align 8
  %i.fu = icmp slt i32 %i.fs, %i.ft
  br i1 %i.fu, label %.lr.ph.i16.i, label %._crit_edge.i14.i

.lr.ph.i16.i:                                     ; preds = %bb.ar, %.lr.ph.i16.i
  %i.fv = phi i32 [ %i.gb, %.lr.ph.i16.i ], [ %i.fs, %bb.ar ] ; 2 uses
  %i.fw = load ptr, ptr %i.fp, align 8
  %i.fx = add nsw i32 %i.fv, 1
  store i32 %i.fx, ptr %i.fq, align 4
  %i.fy = sext i32 %i.fv to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8
  tail call void @pfree(ptr noundef %i.ga) #3
  %i.gb = load i32, ptr %i.fq, align 4            ; 2 uses
  %i.gc = load i32, ptr %i.fr, align 8
  %i.gd = icmp slt i32 %i.gb, %i.gc
  br i1 %i.gd, label %.lr.ph.i16.i, label %._crit_edge.i14.i, !llvm.loop !1

._crit_edge.i14.i:                                ; preds = %.lr.ph.i16.i, %bb.ar
  %i.ge = load ptr, ptr %i.fn, align 8
  %indvars.iv.next.i15.i = add nuw nsw i64 %indvars.iv.i13.i, 1 ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i15.i
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  tail call void %i.gk(ptr noundef %i.gg) #3, !inline_history !17
  %i.gl = load i32, ptr %i.fj, align 4
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %indvars.iv.next.i15.i, %i.gm
  br i1 %i.gn, label %bb.ar, label %gather_merge_getnext.exit.thread, !llvm.loop !2

gather_merge_getnext.exit:                        ; preds = %bb.ap
  %i.go = tail call i64 @binaryheap_first(ptr noundef nonnull %i.fg) #3
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.gq = load ptr, ptr %i.gp, align 8
  %sext17.i = shl i64 %i.go, 32
  %i.gr = ashr exact i64 %sext17.i, 29
  %i.gs = getelementptr inbounds i8, ptr %i.gq, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8            ; 4 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %gather_merge_getnext.exit.thread, label %bb.as

bb.as:                                            ; preds = %gather_merge_getnext.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gw = load i16, ptr %i.gv, align 4
  %i.gx = and i16 %i.gw, 2
  %.not53 = icmp eq i16 %i.gx, 0
  br i1 %.not53, label %bb.at, label %gather_merge_getnext.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %gather_merge_getnext.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.gt, ptr %i.hb, align 8
  %i.hc = load ptr, ptr %i.gy, align 8            ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8            ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  tail call void %i.hl(ptr noundef %i.hh) #3, !inline_history !18
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.hn, ptr @CurrentMemoryContext, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = tail call i64 %i.hq(ptr noundef nonnull %i.hf, ptr noundef %i.he, ptr noundef null) #3, !inline_history !19 ; 0 uses
  store ptr %i.ho, ptr @CurrentMemoryContext, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 4
  %i.hu = and i16 %i.ht, -3
  store i16 %i.hu, ptr %i.hs, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = load i32, ptr %i.hw, align 8
  %i.hy = trunc i32 %i.hx to i16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hh, i64 6
  store i16 %i.hy, ptr %i.hz, align 2
  br label %gather_merge_getnext.exit.thread

gather_merge_getnext.exit.thread:                 ; preds = %._crit_edge.i14.i, %bb.aq, %bb.at, %gather_merge_getnext.exit, %bb.as, %bb.au
  %.0 = phi ptr [ %i.hh, %bb.au ], [ null, %gather_merge_getnext.exit ], [ null, %bb.as ], [ %i.gt, %bb.at ], [ null, %bb.aq ], [ null, %._crit_edge.i14.i ]
  ret ptr %.0
}

declare void @ExecAssignExprContext(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ExecInitNode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @ExecGetResultType(ptr noundef) local_unnamed_addr #1

declare void @ExecInitResultTypeTL(ptr noundef) local_unnamed_addr #1

declare void @ExecConditionalAssignProjectionInfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @palloc0_mul(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @PrepareSortSupportFromOrderingOp(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ExecEndGatherMerge(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @ExecEndNode(ptr noundef %i.b) #3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ExecParallelFinish(ptr noundef nonnull %i.d) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not6.i.i = icmp eq ptr %i.f, null
  br i1 %.not6.i.i, label %ExecShutdownGatherMergeWorkers.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @pfree(ptr noundef nonnull %i.f) #3
  br label %ExecShutdownGatherMergeWorkers.exit.i

ExecShutdownGatherMergeWorkers.exit.i:            ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.e, align 8
  %i.g = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %ExecShutdownGatherMerge.exit, label %bb.e

bb.e:                                             ; preds = %ExecShutdownGatherMergeWorkers.exit.i
  tail call void @ExecParallelCleanup(ptr noundef nonnull %i.g) #3
  store ptr null, ptr %i.c, align 8
  br label %ExecShutdownGatherMerge.exit

ExecShutdownGatherMerge.exit:                     ; preds = %ExecShutdownGatherMergeWorkers.exit.i, %bb.e
  ret void
}
end_hunk_0
