Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Assimp?download=true
inline.NumInlined: 1626
inline.NumDeleted: 658
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZL13stbi__do_zlibP10stbi__zbufPciii:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 1444
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2080 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1116
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1084
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3204
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3236
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3524
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.g

thread-pre-split.i:                               ; preds = %_ZL25stbi__parse_huffman_blockP10stbi__zbuf.exit.i
  %.pr.i = load i32, ptr %i.y, align 8
  %.promoted.i.i.pre.i = load i32, ptr %i.z, align 8
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split.i, %_ZL23stbi__parse_zlib_headerP10stbi__zbuf.exit.i
  %i.au = phi ptr [ %i.yq, %thread-pre-split.i ], [ %1, %_ZL23stbi__parse_zlib_headerP10stbi__zbuf.exit.i ] ; 3 uses
  %.promoted.i.i.i = phi i32 [ %.promoted.i.i.pre.i, %thread-pre-split.i ], [ 0, %_ZL23stbi__parse_zlib_headerP10stbi__zbuf.exit.i ] ; 2 uses
  %i.av = phi i32 [ %.pr.i, %thread-pre-split.i ], [ 0, %_ZL23stbi__parse_zlib_headerP10stbi__zbuf.exit.i ] ; 3 uses
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %.preheader199.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i

.preheader199.i:                                  ; preds = %bb.g, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i
  %i.ax = phi i32 [ %i.bg, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i ], [ %i.av, %bb.g ] ; 6 uses
  %i.ay = phi i32 [ %i.bf, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i ], [ %.promoted.i.i.i, %bb.g ] ; 3 uses
  %.highbits.i.i.i = lshr i32 %i.ay, %i.ax
  %.not.i.i.i = icmp eq i32 %.highbits.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader199.i
  %i.az = load ptr, ptr %i.ab, align 8
  store ptr %i.az, ptr %0, align 8
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i

bb.i:                                             ; preds = %.preheader199.i
  %.val.i.i.i.i = load ptr, ptr %0, align 8       ; 3 uses
  %.val2.i.i.i.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i.i = icmp ult ptr %.val.i.i.i.i, %.val2.i.i.i.i
  br i1 %.not3.i.i.i.i, label %bb.j, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 1
  store ptr %i.ba, ptr %0, align 8
  %i.bb = load i8, ptr %.val.i.i.i.i, align 1
  %i.bc = zext i8 %i.bb to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i:         ; preds = %bb.j, %bb.i
  %i.bd = phi i32 [ %i.bc, %bb.j ], [ 0, %bb.i ]
  %i.be = shl i32 %i.bd, %i.ax
  %i.bf = or i32 %i.be, %i.ay                     ; 4 uses
  store i32 %i.bf, ptr %i.z, align 8
  %i.bg = add nsw i32 %i.ax, 8                    ; 2 uses
  store i32 %i.bg, ptr %i.y, align 8
  %i.bh = icmp slt i32 %i.ax, 17
  br i1 %i.bh, label %.preheader199.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i, !llvm.loop !52

_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i:  ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i
  %i.bi = lshr i32 %i.bf, 1
  %i.bj = add nuw nsw i32 %i.ax, 7
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i

_ZL14stbi__zreceiveP10stbi__zbufi.exit.i:         ; preds = %bb.h, %bb.g
  %i.bk = phi i32 [ %i.av, %bb.g ], [ %i.ax, %bb.h ] ; 2 uses
  %i.bl = phi i32 [ %.promoted.i.i.i, %bb.g ], [ %i.ay, %bb.h ] ; 4 uses
  %i.bm = lshr i32 %i.bl, 1                       ; 3 uses
  store i32 %i.bm, ptr %i.z, align 8
  %i.bn = add nsw i32 %i.bk, -1                   ; 3 uses
  store i32 %i.bn, ptr %i.y, align 8
  %i.bo = icmp slt i32 %i.bk, 3
  br i1 %i.bo, label %.preheader198.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i

.preheader198.i:                                  ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i30.i
  %i.bp = phi i32 [ %i.by, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i30.i ], [ %i.bn, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i ] ; 5 uses
  %i.bq = phi i32 [ %i.bx, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i30.i ], [ %i.bm, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i ] ; 3 uses
  %.highbits.i.i25.i = lshr i32 %i.bq, %i.bp
  %.not.i.i26.i = icmp eq i32 %.highbits.i.i25.i, 0
  br i1 %.not.i.i26.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader198.i
  %i.br = load ptr, ptr %i.ab, align 8
  store ptr %i.br, ptr %0, align 8
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i

bb.l:                                             ; preds = %.preheader198.i
  %.val.i.i.i27.i = load ptr, ptr %0, align 8     ; 3 uses
  %.val2.i.i.i28.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i29.i = icmp ult ptr %.val.i.i.i27.i, %.val2.i.i.i28.i
  br i1 %.not3.i.i.i29.i, label %bb.m, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i30.i

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i.i27.i, i64 1
  store ptr %i.bs, ptr %0, align 8
  %i.bt = load i8, ptr %.val.i.i.i27.i, align 1
  %i.bu = zext i8 %i.bt to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i30.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i30.i:       ; preds = %bb.m, %bb.l
  %i.bv = phi i32 [ %i.bu, %bb.m ], [ 0, %bb.l ]
  %i.bw = shl i32 %i.bv, %i.bp
  %i.bx = or i32 %i.bw, %i.bq                     ; 3 uses
  store i32 %i.bx, ptr %i.z, align 8
  %i.by = add nsw i32 %i.bp, 8                    ; 3 uses
  store i32 %i.by, ptr %i.y, align 8
  %i.bz = icmp slt i32 %i.bp, 17
  br i1 %i.bz, label %.preheader198.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i, !llvm.loop !52

_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i:       ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i30.i, %bb.k, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i
  %.in.i = phi i32 [ %i.bl, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i ], [ %i.bl, %bb.k ], [ %i.bf, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i ], [ %i.bl, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i30.i ]
  %i.ca = phi i32 [ %i.bn, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i ], [ %i.bp, %bb.k ], [ %i.bj, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i ], [ %i.by, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i30.i ] ; 3 uses
  %i.cb = phi i32 [ %i.bm, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i ], [ %i.bq, %bb.k ], [ %i.bi, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.thread.i ], [ %i.bx, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i30.i ] ; 2 uses
  %i.cc = and i32 %.in.i, 1
  %i.cd = and i32 %i.cb, 3
  %i.ce = lshr i32 %i.cb, 2                       ; 6 uses
  store i32 %i.ce, ptr %i.z, align 8
  %i.cf = add nsw i32 %i.ca, -2                   ; 7 uses
  store i32 %i.cf, ptr %i.y, align 8
  switch i32 %i.cd, label %default.unreachable [
    i32 0, label %bb.n
    i32 3, label %_ZL16stbi__parse_zlibP10stbi__zbufi.exit
    i32 1, label %bb.ae
    i32 2, label %bb.ag
  ]

bb.n:                                             ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit31.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #47
  %i.cg = and i32 %i.cf, 7                        ; 3 uses
  %.not.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = icmp slt i32 %i.ca, 2
  br i1 %i.ch, label %.preheader193.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i

.preheader193.i:                                  ; preds = %bb.o, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.i
  %i.ci = phi i32 [ %i.cr, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.i ], [ %i.cf, %bb.o ] ; 5 uses
  %i.cj = phi i32 [ %i.cq, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.i ], [ %i.ce, %bb.o ] ; 3 uses
  %.highbits.i.i.i.i = lshr i32 %i.cj, %i.ci
  %.not.i.i.i.i = icmp eq i32 %.highbits.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader193.i
  %i.ck = load ptr, ptr %i.ab, align 8
  store ptr %i.ck, ptr %0, align 8
  br label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i

bb.q:                                             ; preds = %.preheader193.i
  %.val.i.i.i.i.i = load ptr, ptr %0, align 8     ; 3 uses
  %.val2.i.i.i.i.i = load ptr, ptr %i.ab, align 8
  %.not3.i.i.i.i.i = icmp ult ptr %.val.i.i.i.i.i, %.val2.i.i.i.i.i
  br i1 %.not3.i.i.i.i.i, label %bb.r, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 1
  store ptr %i.cl, ptr %0, align 8
  %i.cm = load i8, ptr %.val.i.i.i.i.i, align 1
  %i.cn = zext i8 %i.cm to i32
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.i:       ; preds = %bb.r, %bb.q
  %i.co = phi i32 [ %i.cn, %bb.r ], [ 0, %bb.q ]
  %i.cp = shl i32 %i.co, %i.ci
  %i.cq = or i32 %i.cp, %i.cj                     ; 3 uses
  store i32 %i.cq, ptr %i.z, align 8
  %i.cr = add nsw i32 %i.ci, 8                    ; 3 uses
  store i32 %i.cr, ptr %i.y, align 8
  %i.cs = icmp slt i32 %i.ci, 17
  br i1 %i.cs, label %.preheader193.i, label %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i, !llvm.loop !52

_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i:       ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.i, %bb.p, %bb.o
  %i.ct = phi i32 [ %i.cf, %bb.o ], [ %i.ci, %bb.p ], [ %i.cr, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.i ]
  %i.cu = phi i32 [ %i.ce, %bb.o ], [ %i.cj, %bb.p ], [ %i.cq, %_ZL11stbi__zget8P10stbi__zbuf.exit.i.i.i.i ]
  %i.cv = lshr i32 %i.cu, %i.cg                   ; 2 uses
  store i32 %i.cv, ptr %i.z, align 8
  %i.cw = sub nsw i32 %i.ct, %i.cg                ; 2 uses
  store i32 %i.cw, ptr %i.y, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i, %bb.n
  %.promoted.i.i = phi i32 [ %i.cv, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i ], [ %i.ce, %bb.n ] ; 2 uses
  %.pr.i.i = phi i32 [ %i.cw, %_ZL14stbi__zreceiveP10stbi__zbufi.exit.i.i ], [ %i.cf, %bb.n ] ; 6 uses
  %i.cx = icmp sgt i32 %.pr.i.i, 0
  br i1 %i.cx, label %.lr.ph.i.i, label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.s
  %i.cy = add nsw i32 %.pr.i.i, -1                ; 3 uses
  %i.cz = lshr i32 %i.cy, 3
  %i.da = add nuw nsw i32 %i.cz, 1
  %wide.trip.count.i = zext nneg i32 %i.da to i64 ; 3 uses
  %xtraiter568 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.db = icmp ult i32 %.pr.i.i, 25
  br i1 %i.db, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i, 1073741820
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.t ] ; 5 uses
  %i.dc = phi i32 [ %.promoted.i.i, %.lr.ph.i.i.new ], [ 0, %bb.t ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.t ]
  %i.dd = trunc i32 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  store i8 %i.dd, ptr %i.de, align 2
  %i.df = lshr i32 %i.dc, 8
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  store i8 %i.dg, ptr %i.di, align 1
  %i.dj = lshr i32 %i.dc, 16
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  store i8 %i.dk, ptr %i.dm, align 2
  %i.dn = lshr i32 %i.dc, 24
  %i.do = trunc nuw i32 %i.dn to i8
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  store i8 %i.do, ptr %i.dq, align 1
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.t, !llvm.loop !53

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod569.not = icmp eq i64 %xtraiter568, 0
  br i1 %lcmp.mod569.not, label %bb.v, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %.epil.init = phi i32 [ %.promoted.i.i, %.lr.ph.i.i ], [ 0, %.unr-lcssa ]
  %lcmp.mod572 = icmp ne i64 %xtraiter568, 0
  tail call void @llvm.assume(i1 %lcmp.mod572)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.u ] ; 3 uses
  %i.dr = phi i32 [ %.epil.init, %.epil.preheader ], [ %i.du, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.ds = trunc i32 %i.dr to i8
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.epil
  store i8 %i.ds, ptr %i.dt, align 1
  %i.du = lshr i32 %i.dr, 8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter568
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.u, !llvm.loop !54

.epilog-lcssa:                                    ; preds = %bb.u
  %i.dv = icmp samesign ult i64 %indvars.iv.i.i.epil, 3
  br label %bb.v

bb.v:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %indvars.iv.i.i.lcssa = phi i1 [ false, %.unr-lcssa ], [ %i.dv, %.epilog-lcssa ]
  %.lcssa566 = phi i32 [ 0, %.unr-lcssa ], [ %i.du, %.epilog-lcssa ]
  %i.dw = add nsw i32 %.pr.i.i, -8
  %i.dx = and i32 %i.cy, -8
  %i.dy = sub nsw i32 %i.dw, %i.dx
  %i.dz = and i32 %i.cy, -8
  %i.ea = sub nsw i32 %.pr.i.i, %i.dz
  store i32 %.lcssa566, ptr %i.z, align 8
  store i32 %i.dy, ptr %i.y, align 8
  %.not90.i.i = icmp eq i32 %i.ea, 8
  br i1 %.not90.i.i, label %.preheader.i.i, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i

.thread.i.i:                                      ; preds = %bb.s
  %i.eb = icmp slt i32 %.pr.i.i, 0
  br i1 %i.eb, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, label %.lr.ph49.i.i

.preheader.i.i:                                   ; preds = %bb.v
  br i1 %indvars.iv.i.i.lcssa, label %.lr.ph49.i.i, label %._crit_edge50.i.i

.lr.ph49.i.i:                                     ; preds = %.preheader.i.i, %.thread.i.i
  %.0.lcssa7981.i.i = phi i64 [ %wide.trip.count.i, %.preheader.i.i ], [ 0, %.thread.i.i ] ; 5 uses
  %.val2.i.i32.i = load ptr, ptr %i.ab, align 8   ; 3 uses
  %.promoted51.i.i = load ptr, ptr %0, align 8    ; 5 uses
  %xtraiter573 = and i64 %.0.lcssa7981.i.i, 1
  %lcmp.mod574.not = icmp eq i64 %xtraiter573, 0
  br i1 %lcmp.mod574.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph49.i.i
  %.not3.i.i33.i.prol = icmp ult ptr %.promoted51.i.i, %.val2.i.i32.i
  br i1 %.not3.i.i33.i.prol, label %bb.w, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol

bb.w:                                             ; preds = %.prol.preheader
  %i.ec = getelementptr inbounds nuw i8, ptr %.promoted51.i.i, i64 1 ; 2 uses
  store ptr %i.ec, ptr %0, align 8
  %i.ed = load i8, ptr %.promoted51.i.i, align 1
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol

_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol:    ; preds = %bb.w, %.prol.preheader
  %i.ee = phi ptr [ %i.ec, %bb.w ], [ %.promoted51.i.i, %.prol.preheader ]
  %i.ef = phi i8 [ %i.ed, %bb.w ], [ 0, %.prol.preheader ]
  %indvars.iv.next63.i.i.prol = add nuw nsw i64 %.0.lcssa7981.i.i, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa7981.i.i
  store i8 %i.ef, ptr %i.eg, align 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol, %.lr.ph49.i.i
  %indvars.iv62.i.i.unr = phi i64 [ %.0.lcssa7981.i.i, %.lr.ph49.i.i ], [ %indvars.iv.next63.i.i.prol, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol ]
  %.unr576 = phi ptr [ %.promoted51.i.i, %.lr.ph49.i.i ], [ %i.ee, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.prol ]
  %i.eh = icmp eq i64 %.0.lcssa7981.i.i, 3
  br i1 %i.eh, label %._crit_edge50.i.i, label %.lr.ph49.i.i.new

.lr.ph49.i.i.new:                                 ; preds = %.prol.loopexit, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1
  %indvars.iv62.i.i = phi i64 [ %indvars.iv.next63.i.i.1, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1 ], [ %indvars.iv62.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ei = phi ptr [ %i.eq, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1 ], [ %.unr576, %.prol.loopexit ] ; 4 uses
  %.not3.i.i33.i = icmp ult ptr %i.ei, %.val2.i.i32.i
  br i1 %.not3.i.i33.i, label %bb.x, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i

bb.x:                                             ; preds = %.lr.ph49.i.i.new
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1 ; 2 uses
  store ptr %i.ej, ptr %0, align 8
  %i.ek = load i8, ptr %i.ei, align 1
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i

_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i:         ; preds = %bb.x, %.lr.ph49.i.i.new
  %i.el = phi ptr [ %i.ej, %bb.x ], [ %i.ei, %.lr.ph49.i.i.new ] ; 4 uses
  %i.em = phi i8 [ %i.ek, %bb.x ], [ 0, %.lr.ph49.i.i.new ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv62.i.i
  store i8 %i.em, ptr %i.en, align 1
  %.not3.i.i33.i.1 = icmp ult ptr %i.el, %.val2.i.i32.i
  br i1 %.not3.i.i33.i.1, label %bb.y, label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1

bb.y:                                             ; preds = %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 2 uses
  store ptr %i.eo, ptr %0, align 8
  %i.ep = load i8, ptr %i.el, align 1
  br label %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1

_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1:       ; preds = %bb.y, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i
  %i.eq = phi ptr [ %i.eo, %bb.y ], [ %i.el, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i ]
  %i.er = phi i8 [ %i.ep, %bb.y ], [ 0, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i ]
  %indvars.iv.next63.i.i.1 = add nuw nsw i64 %indvars.iv62.i.i, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv62.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  store i8 %i.er, ptr %i.et, align 1
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next63.i.i.1, 4
  br i1 %exitcond.not.i.i.1, label %._crit_edge50.i.i, label %.lr.ph49.i.i.new, !llvm.loop !55

._crit_edge50.i.i:                                ; preds = %.prol.loopexit, %_ZL11stbi__zget8P10stbi__zbuf.exit.i34.i.1, %.preheader.i.i
  %i.eu = load i16, ptr %i.c, align 2             ; 3 uses
  %i.ev = zext i16 %i.eu to i32                   ; 2 uses
  %i.ew = load i16, ptr %i.at, align 2
  %i.ex = xor i16 %i.ew, %i.eu
  %.not33.i.i = icmp eq i16 %i.ex, -1
  br i1 %.not33.i.i, label %bb.z, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i

bb.z:                                             ; preds = %._crit_edge50.i.i
  %i.ey = load ptr, ptr %0, align 8               ; 2 uses
  %i.ez = zext i16 %i.eu to i64                   ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ez
  %i.fb = load ptr, ptr %i.ab, align 8
  %i.fc = icmp ugt ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ez
  %i.fe = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ff = icmp ugt ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.ab, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.fg = load i32, ptr %i.i, align 8
  %.not.i.i35.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i.i35.i, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fh = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.fi = ptrtoint ptr %i.au to i64
  %i.fj = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 2 uses
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fm = xor i32 %i.fl, -1
  %i.fn = icmp ugt i32 %i.ev, %i.fm
  br i1 %i.fn, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ac
  %i.fo = ptrtoint ptr %i.fe to i64
  %i.fp = sub i64 %i.fo, %i.fj
  %i.fq = trunc i64 %i.fp to i32                  ; 3 uses
  %i.fr = add i32 %i.fl, %i.ev                    ; 2 uses
  %i.fs = icmp ugt i32 %i.fr, %i.fq
  br i1 %i.fs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ad
  %.028.i.i.i = phi i32 [ %i.fu, %bb.ad ], [ %i.fq, %.preheader.i.i.i ] ; 2 uses
  %i.ft = icmp slt i32 %.028.i.i.i, 0
  br i1 %i.ft, label %_ZL30stbi__parse_uncompressed_blockP10stbi__zbuf.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i
  %i.fu = shl nuw i32 %.028.i.i.i, 1              ; 3 uses
  %i.fv = icmp ugt i32 %i.fr, %i.fu
  br i1 %i.fv, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !56

end_hunk_0
