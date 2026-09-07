Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@decimal_result_sci:bb.a
  %i.bf = or disjoint i64 %index, 1               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <16 x i8>, ptr %i.bg, align 1, !tbaa !52
  %wide.load97 = load <16 x i8>, ptr %i.bh, align 1, !tbaa !52
  %i.bi = add <16 x i8> %wide.load, splat (i8 48)
  %i.bj = add <16 x i8> %wide.load97, splat (i8 48)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bf ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 18
  store <16 x i8> %i.bi, ptr %i.bl, align 1, !tbaa !52
  store <16 x i8> %i.bj, ptr %i.bm, align 1, !tbaa !52
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !1075

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph74.preheader, label %vec.epilog.ph, !prof !1079

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec98 = and i64 %i.ba, 4294967288            ; 3 uses
  %i.bo = or disjoint i64 %n.vec98, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = or disjoint i64 %index99, 1             ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bp
  %wide.load100 = load <8 x i8>, ptr %i.bq, align 1, !tbaa !52
  %i.br = add <8 x i8> %wide.load100, splat (i8 48)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store <8 x i8> %i.br, ptr %i.bt, align 1, !tbaa !52
  %index.next101 = add nuw i64 %index99, 8        ; 2 uses
  %i.bu = icmp eq i64 %index.next101, %n.vec98
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1076

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %i.ba, %n.vec98
  br i1 %cmp.n102, label %._crit_edge, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv79.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.be, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ] ; 4 uses
  %i.bv = sub nsw i64 %wide.trip.count82, %indvars.iv79.ph
  %xtraiter = and i64 %i.bv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol

.lr.ph74.prol:                                    ; preds = %.lr.ph74.preheader, %.lr.ph74.prol
  %indvars.iv79.prol = phi i64 [ %indvars.iv.next80.prol, %.lr.ph74.prol ], [ %indvars.iv79.ph, %.lr.ph74.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph74.prol ], [ 0, %.lr.ph74.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv79.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !52
  %i.by = add i8 %i.bx, 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv79.prol
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %i.by, ptr %i.ca, align 1, !tbaa !52
  %indvars.iv.next80.prol = add nuw nsw i64 %indvars.iv79.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph74.prol.loopexit, label %.lr.ph74.prol, !llvm.loop !1077

.lr.ph74.prol.loopexit:                           ; preds = %.lr.ph74.prol, %.lr.ph74.preheader
  %indvars.iv79.unr = phi i64 [ %indvars.iv79.ph, %.lr.ph74.preheader ], [ %indvars.iv.next80.prol, %.lr.ph74.prol ]
  %i.cb = sub nsw i64 %indvars.iv79.ph, %wide.trip.count82
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %._crit_edge, label %.lr.ph74

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  store i8 48, ptr %i.cd, align 1, !tbaa !52
  br label %bb.q

.lr.ph74:                                         ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.3, %.lr.ph74 ], [ %indvars.iv79.unr, %.lr.ph74.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv79
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !52
  %i.cg = add i8 %i.cf, 48
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv79
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !52
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next80
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !52
  %i.cl = add i8 %i.ck, 48
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next80
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !52
  %indvars.iv.next80.1 = add nuw nsw i64 %indvars.iv79, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next80.1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !52
  %i.cq = add i8 %i.cp, 48
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next80.1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !52
  %indvars.iv.next80.2 = add nuw nsw i64 %indvars.iv79, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next80.2
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !52
  %i.cv = add i8 %i.cu, 48
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.next80.2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !52
  %indvars.iv.next80.3 = add nuw nsw i64 %indvars.iv79, 4 ; 2 uses
  %exitcond83.not.3 = icmp eq i64 %indvars.iv.next80.3, %wide.trip.count82
  br i1 %exitcond83.not.3, label %._crit_edge, label %.lr.ph74, !llvm.loop !1078

._crit_edge:                                      ; preds = %.lr.ph74.prol.loopexit, %.lr.ph74, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.cy = add nsw i32 %.1, 2
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.p
  %.160 = phi i32 [ 4, %bb.p ], [ %i.cy, %._crit_edge ] ; 2 uses
  %i.cz = add i32 %.056, %.1
  %i.da = add nsw i32 %.1, 20
  %i.db = sub i32 %i.da, %.160
  %i.dc = sext i32 %.160 to i64
  %i.dd = getelementptr inbounds i8, ptr %i.ah, i64 %i.dc
  %i.de = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %i.db, ptr noundef nonnull %i.dd, ptr noundef nonnull @.str.305, i32 noundef %i.cz) #45 ; 0 uses
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.ah, i32 noundef -1, ptr noundef nonnull @sqlite3_free) #45
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decimal_result(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !140
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i8, ptr %i.d, align 2, !tbaa !141
  %.not53 = icmp eq i8 %i.e, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @sqlite3_result_null(ptr noundef %0) #45
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !138
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.h, 4
  %i.j = tail call ptr @sqlite3_malloc64(i64 noundef %i.i) #45 ; 10 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @sqlite3_result_error_nomem(ptr noundef %0) #45
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.l = load i32, ptr %i.f, align 4, !tbaa !138  ; 3 uses
  switch i32 %i.l, label %bb.j [
    i32 0, label %.thread
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !139
  %i.o = load i8, ptr %i.n, align 1, !tbaa !52
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.j

.thread:                                          ; preds = %bb.i, %bb.h
  store i8 0, ptr %1, align 8, !tbaa !142
  br label %bb.l

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pr = load i8, ptr %1, align 8, !tbaa !142
  %.not54 = icmp eq i8 %.pr, 0
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 45, ptr %i.j, align 1, !tbaa !52
  %.pre = load i32, ptr %i.f, align 4, !tbaa !138
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.j
  %i.q = phi i32 [ %.pre, %bb.k ], [ %i.l, %bb.j ], [ %i.l, %.thread ] ; 2 uses
  %.047 = phi i32 [ 1, %bb.k ], [ 0, %bb.j ], [ 0, %.thread ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !143  ; 2 uses
  %i.t = sub nsw i32 %i.q, %i.s                   ; 3 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %.critedge.thread99, label %bb.m

.critedge.thread99:                               ; preds = %bb.l
  %i.v = add nuw nsw i32 %.047, 1
  %i.w = zext nneg i32 %.047 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w
  store i8 48, ptr %i.x, align 1, !tbaa !52
  br label %._crit_edge

bb.m:                                             ; preds = %bb.l
  %.not105 = icmp eq i32 %i.t, 1
  br i1 %.not105, label %.lr.ph66, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !139
  %2 = xor i32 %i.s, -1
  %i.aa = add i32 %i.q, %2                        ; 2 uses
  %wide.trip.count = zext i32 %i.aa to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.058 = phi i32 [ %i.t, %.lr.ph ], [ %i.ae, %bb.o ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !52
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = add nsw i32 %.058, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph66.loopexit, label %bb.n, !llvm.loop !1080

.critedge:                                        ; preds = %bb.n
  %i.af = icmp sgt i32 %.058, 0
  br i1 %i.af, label %.lr.ph66, label %._crit_edge

.lr.ph66.loopexit:                                ; preds = %bb.o
  %i.ag = zext i32 %i.aa to i64
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.loopexit, %bb.m, %.critedge
  %.0.lcssa98 = phi i32 [ %.058, %.critedge ], [ 1, %bb.m ], [ 1, %.lr.ph66.loopexit ] ; 3 uses
  %.045.lcssa97 = phi i64 [ %indvars.iv, %.critedge ], [ 0, %bb.m ], [ %i.ag, %.lr.ph66.loopexit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ai = zext nneg i32 %.047 to i64              ; 3 uses
  %i.aj = add nuw i32 %.0.lcssa98, %.047          ; 3 uses
  %wide.trip.count79 = zext i32 %i.aj to i64
  %i.ak = and i32 %.0.lcssa98, 1
  %lcmp.mod.not = icmp eq i32 %i.ak, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph66
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !139
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.045.lcssa97
  %i.an = load i8, ptr %i.am, align 1, !tbaa !52
  %i.ao = add i8 %i.an, 48
  %indvars.iv.next75.prol = add nuw nsw i64 %i.ai, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ai
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !52
  %indvars.iv.next73.prol = add nuw nsw i64 %.045.lcssa97, 1 ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph66
  %indvars.iv.next73.lcssa.unr = phi i64 [ poison, %.lr.ph66 ], [ %indvars.iv.next73.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv74.unr = phi i64 [ %i.ai, %.lr.ph66 ], [ %indvars.iv.next75.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv72.unr = phi i64 [ %.045.lcssa97, %.lr.ph66 ], [ %indvars.iv.next73.prol, %.prol.loopexit.unr-lcssa ]
  %i.aq = icmp eq i32 %.0.lcssa98, 1
  br i1 %i.aq, label %._crit_edge, label %.lr.ph66.new

.lr.ph66.new:                                     ; preds = %.prol.loopexit, %.lr.ph66.new
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.1, %.lr.ph66.new ], [ %indvars.iv74.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.1, %.lr.ph66.new ], [ %indvars.iv72.unr, %.prol.loopexit ] ; 3 uses
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !139
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv72
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52
  %i.au = add i8 %i.at, 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv74
  store i8 %i.au, ptr %i.av, align 1, !tbaa !52
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !139
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv72
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !52
  %i.ba = add i8 %i.az, 48
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv74
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !52
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %exitcond80.not.1 = icmp eq i64 %indvars.iv.next75.1, %wide.trip.count79
  br i1 %exitcond80.not.1, label %._crit_edge, label %.lr.ph66.new, !llvm.loop !1081

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph66.new, %.critedge.thread99, %.critedge
  %.249.lcssa = phi i32 [ %.047, %.critedge ], [ %i.v, %.critedge.thread99 ], [ %i.aj, %.lr.ph66.new ], [ %i.aj, %.prol.loopexit ] ; 3 uses
  %.146.lcssa = phi i64 [ %indvars.iv, %.critedge ], [ 0, %.critedge.thread99 ], [ %indvars.iv.next73.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next73.1, %.lr.ph66.new ]
  %i.bd = load i32, ptr %i.r, align 8, !tbaa !143
  %.not55 = icmp eq i32 %i.bd, 0
  br i1 %.not55, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.be = add nuw i32 %.249.lcssa, 1
  %i.bf = sext i32 %.249.lcssa to i64
  %i.bg = getelementptr inbounds i8, ptr %i.j, i64 %i.bf
  store i8 46, ptr %i.bg, align 1, !tbaa !52
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = sext i32 %i.be to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %bb.q ], [ %.146.lcssa, %bb.p ] ; 2 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.q ], [ %i.bi, %bb.p ] ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !139
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv83
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !52
  %i.bm = add i8 %i.bl, 48
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.j, i64 %indvars.iv81
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !52
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.bo = load i32, ptr %i.f, align 4, !tbaa !138
  %i.bp = trunc nuw i64 %indvars.iv.next84 to i32
  %i.bq = icmp sgt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.q, label %.loopexit.loopexit, !llvm.loop !1082

.loopexit.loopexit:                               ; preds = %bb.q
  %i.br = trunc nsw i64 %indvars.iv.next82 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge
  %.4 = phi i32 [ %.249.lcssa, %._crit_edge ], [ %i.br, %.loopexit.loopexit ] ; 2 uses
  %i.bs = sext i32 %.4 to i64
  %i.bt = getelementptr inbounds i8, ptr %i.j, i64 %i.bs
  store i8 0, ptr %i.bt, align 1, !tbaa !52
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.j, i32 noundef %.4, ptr noundef nonnull @sqlite3_free) #45
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @decimalNewFromText(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @sqlite3_malloc64(i64 noundef 24) #45 ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 14 uses
  store i32 0, ptr %i.d, align 4, !tbaa !138
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 10 uses
  store i32 0, ptr %i.e, align 8, !tbaa !143
  %i.f = add nsw i32 %1, 1
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @sqlite3_malloc64(i64 noundef %i.g) #45 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 9 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !139
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %.thread294, label %.preheader231

.preheader231:                                    ; preds = %bb.c
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph, label %.critedge198

.lr.ph:                                           ; preds = %.preheader231
  %i.l = tail call ptr @__ctype_b_loc() #47
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !52    ; 3 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !98
  %i.s = and i16 %i.r, 8192
  %.not = icmp eq i16 %i.s, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.d, !llvm.loop !1083

.critedge:                                        ; preds = %bb.d
  %i.t = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.u = icmp eq i8 %i.o, 45
  br i1 %i.u, label %bb.f, label %.critedge197

bb.f:                                             ; preds = %.critedge
  store i8 1, ptr %i.b, align 8, !tbaa !142
  %i.v = add nuw nsw i32 %i.t, 1
  br label %.critedge198

.critedge197:                                     ; preds = %.critedge
  %i.w = icmp eq i8 %i.o, 43
  %i.x = zext i1 %i.w to i32
  %spec.select = add nuw nsw i32 %i.t, %i.x
  br label %.critedge198

.critedge198:                                     ; preds = %.preheader231, %.critedge197, %bb.f
  %.1161 = phi i32 [ %i.v, %bb.f ], [ %spec.select, %.critedge197 ], [ 0, %.preheader231 ] ; 3 uses
  %i.y = icmp slt i32 %.1161, %1
  br i1 %i.y, label %.lr.ph238.preheader, label %.critedge2

.lr.ph238.preheader:                              ; preds = %.critedge198
  %i.z = sext i32 %.1161 to i64
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %bb.g
end_hunk_0
