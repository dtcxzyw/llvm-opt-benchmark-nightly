Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/v4l2_buffers?download=true
inline.NumInlined: 31
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_v4l2_buffer_buf_to_avframe:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !98   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.c, ptr %i.d, align 4, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !53
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 828
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 6 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv.i ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.r = getelementptr [64 x i8], ptr %1, i64 %indvars.iv.i
  %i.s = getelementptr i8, ptr %i.r, i64 328
  %i.t = load i32, ptr %i.s, align 8, !tbaa !70
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !58
  %i.y = tail call ptr @av_buffer_create(ptr noundef %i.v, i64 noundef %i.x, ptr noundef nonnull @v4l2_free_buffer, ptr noundef nonnull %1, i32 noundef 0) #9 ; 2 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !66
  %.not16.i.i = icmp eq ptr %i.y, null
  br i1 %.not16.i.i, label %v4l2_buffer_buf_to_swframe.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !27 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !32
  %switch.tableidx = add i32 %i.aa, -2            ; 2 uses
  %i.ab = icmp ult i32 %switch.tableidx, 13
  br i1 %i.ab, label %switch.lookup, label %buf_to_m2mctx.exit.i.i.i

switch.lookup:                                    ; preds = %bb.c
  %i.ac = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.v4l2_free_buffer.17, i64 %i.ac
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %buf_to_m2mctx.exit.i.i.i

buf_to_m2mctx.exit.i.i.i:                         ; preds = %bb.c, %switch.lookup
  %.sink.i.i.i.i = phi i64 [ %switch.load, %switch.lookup ], [ -4104, %bb.c ]
  %i.ad = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %.sink.i.i.i.i ; 2 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !71
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %buf_to_m2mctx.exit.i.i.i
  %i.af = atomicrmw add ptr %i.k, i32 1 seq_cst, align 8 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %buf_to_m2mctx.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4816
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !72
  %i.ai = tail call ptr @av_refstruct_ref(ptr noundef %i.ah) #9
  store ptr %i.ai, ptr %i.j, align 8, !tbaa !71
  store atomic i32 1, ptr %i.k seq_cst, align 8, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 2, ptr %i.l, align 4, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 4688
  %i.ak = atomicrmw add ptr %i.aj, i32 1 monotonic, align 8 ; 0 uses
  %i.al = load i32, ptr %i.o, align 8, !tbaa !75
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !50
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !56
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = load i32, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next.i, %i.as
  br i1 %i.at, label %bb.b, label %._crit_edge.loopexit.i, !llvm.loop !97

._crit_edge.loopexit.i:                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !27  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 12
  %.pre49.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !98
  %i.au = icmp sgt i32 %i.ar, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.av = phi i32 [ %i.c, %bb.a ], [ %.pre49.i, %._crit_edge.loopexit.i ]
  %i.aw = phi ptr [ %i.a, %bb.a ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 25 uses
  %.lcssa.i = phi i1 [ false, %bb.a ], [ %i.au, %._crit_edge.loopexit.i ] ; 2 uses
  switch i32 %i.av, label %bb.k [
    i32 23, label %bb.g
    i32 24, label %bb.g
    i32 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i, %._crit_edge.i
  br i1 %.lcssa.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !75 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !76
  %i.bg = mul i32 %i.bf, %i.ay
  br label %v4l2_buf_to_bufref.exit.sink.split.i

bb.i:                                             ; preds = %._crit_edge.i
  br i1 %.lcssa.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !75
  %i.bj = ashr i32 %i.bi, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !50
  %i.bl = load i32, ptr %i.bh, align 8, !tbaa !75
  %i.bm = ashr i32 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !66
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !69
  %i.bs = load i32, ptr %i.bh, align 8, !tbaa !75 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 36 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !76
  %i.bv = mul i32 %i.bu, %i.bs
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !56
  %i.bz = load i32, ptr %i.bt, align 4, !tbaa !76
  %i.ca = mul i32 %i.bz, %i.bs
  %i.cb = lshr i32 %i.ca, 2
  br label %v4l2_buf_to_bufref.exit.sink.split.i

v4l2_buf_to_bufref.exit.sink.split.i:             ; preds = %bb.j, %bb.h
  %.sink.i = phi i32 [ %i.bg, %bb.h ], [ %i.cb, %bb.j ]
  %.sink53.i = phi ptr [ %i.bd, %bb.h ], [ %i.bx, %bb.j ]
  %.sink52.i = phi i64 [ 8, %bb.h ], [ 16, %bb.j ]
  %i.cc = zext i32 %.sink.i to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.sink53.i, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.sink52.i
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.i, %bb.g, %v4l2_buf_to_bufref.exit.sink.split.i
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 236 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !77
  %i.ch = and i32 %i.cg, 8
  %.not31 = icmp eq i32 %i.ch, 0
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !99
  %i.ck = or i32 %i.cj, 2
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !99
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !60
  %.off.i = add i32 %i.cm, -9
  %switch.i = icmp ult i32 %.off.i, 2             ; 3 uses
  br i1 %switch.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 214
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !76
  %i.cq = zext i8 %i.cp to i32
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !76
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.in.i = phi ptr [ %i.cn, %bb.n ], [ %i.cr, %bb.o ]
  %i.cu = phi i32 [ %i.cq, %bb.n ], [ %i.ct, %bb.o ]
  %switch.tableidx55 = add i32 %i.cu, -1          ; 2 uses
  %i.cv = icmp ult i32 %switch.tableidx55, 4
  br i1 %i.cv, label %switch.lookup56, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cw = load i32, ptr %.in.i, align 8, !tbaa !76
  %switch.tableidx59 = add i32 %i.cw, -1          ; 2 uses
  %i.cx = icmp ult i32 %switch.tableidx59, 10
  br i1 %i.cx, label %switch.lookup60, label %v4l2_get_color_primaries.exit

switch.lookup56:                                  ; preds = %bb.p
  %2 = zext nneg i32 %switch.tableidx55 to i64
  %switch.gep57 = getelementptr inbounds nuw i8, ptr @switch.table.ff_v4l2_buffer_buf_to_avframe.6, i64 %2
  %switch.load58 = load i8, ptr %switch.gep57, align 1
  br label %v4l2_get_color_primaries.exit

switch.lookup60:                                  ; preds = %bb.q
  %i.cy = zext nneg i32 %switch.tableidx59 to i64
  %switch.gep61 = getelementptr inbounds nuw i8, ptr @switch.table.ff_v4l2_buffer_buf_to_avframe.7, i64 %i.cy
  %switch.load62 = load i8, ptr %switch.gep61, align 1
  br label %v4l2_get_color_primaries.exit

v4l2_get_color_primaries.exit:                    ; preds = %bb.q, %switch.lookup60, %switch.lookup56
  %.0.i.shrunk = phi i8 [ %switch.load62, %switch.lookup60 ], [ %switch.load58, %switch.lookup56 ], [ 2, %bb.q ]
  %.0.i = zext i8 %.0.i.shrunk to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %.0.i, ptr %i.cz, align 4, !tbaa !100
  br i1 %switch.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %v4l2_get_color_primaries.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.aw, i64 214
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !76
  %i.dd = zext i8 %i.dc to i32
  br label %bb.t

bb.s:                                             ; preds = %v4l2_get_color_primaries.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !76
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.in.i37 = phi ptr [ %i.da, %bb.r ], [ %i.de, %bb.s ]
  %i.dh = phi i32 [ %i.dd, %bb.r ], [ %i.dg, %bb.s ]
  %i.di = load i32, ptr %.in.i37, align 8, !tbaa !76
  switch i32 %i.di, label %bb.aa [
    i32 8, label %v4l2_get_color_space.exit
    i32 3, label %bb.u
    i32 5, label %bb.v
    i32 6, label %bb.w
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 10, label %bb.z
  ]

bb.u:                                             ; preds = %bb.t
  br label %v4l2_get_color_space.exit

bb.v:                                             ; preds = %bb.t
  br label %v4l2_get_color_space.exit

bb.w:                                             ; preds = %bb.t
  br label %v4l2_get_color_space.exit

bb.x:                                             ; preds = %bb.t
  br label %v4l2_get_color_space.exit

bb.y:                                             ; preds = %bb.t
  br label %v4l2_get_color_space.exit

bb.z:                                             ; preds = %bb.t
  %i.dj = icmp eq i32 %i.dh, 7
  %..i = select i1 %i.dj, i32 10, i32 9
  br label %v4l2_get_color_space.exit

bb.aa:                                            ; preds = %bb.t
  br label %v4l2_get_color_space.exit

v4l2_get_color_space.exit:                        ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.i38 = phi i32 [ 2, %bb.aa ], [ 0, %bb.t ], [ 1, %bb.u ], [ 4, %bb.v ], [ 5, %bb.w ], [ 6, %bb.x ], [ 7, %bb.y ], [ %..i, %bb.z ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 %.0.i38, ptr %i.dk, align 4, !tbaa !101
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  br i1 %switch.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %v4l2_get_color_space.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aw, i64 215
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !76  ; 2 uses
  %switch.selectcmp.i51 = icmp eq i8 %i.dn, 1
  %switch.select.i52 = select i1 %switch.selectcmp.i51, i32 2, i32 0
  %switch.selectcmp6.i53 = icmp eq i8 %i.dn, 2
  %switch.select7.i54 = select i1 %switch.selectcmp6.i53, i32 1, i32 %switch.select.i52
  store i32 %switch.select7.i54, ptr %i.dl, align 8, !tbaa !102
  %i.do = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aw, i64 214
  %i.dq = load i8, ptr %i.dp, align 2, !tbaa !76
  %i.dr = zext i8 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.aw, i64 216
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !76
  %i.du = zext i8 %i.dt to i32
  br label %bb.ad

bb.ac:                                            ; preds = %v4l2_get_color_space.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !76 ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.dw, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 0
  %switch.selectcmp6.i = icmp eq i32 %i.dw, 2
  %switch.select7.i = select i1 %switch.selectcmp6.i, i32 1, i32 %switch.select.i
  store i32 %switch.select7.i, ptr %i.dl, align 8, !tbaa !102
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !76
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aw, i64 76
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !76
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ec = phi i32 [ %i.dr, %bb.ab ], [ %i.dz, %bb.ac ]
  %.in.i41 = phi ptr [ %i.do, %bb.ab ], [ %i.dx, %bb.ac ]
  %i.ed = phi i32 [ %i.du, %bb.ab ], [ %i.eb, %bb.ac ]
  %switch.tableidx64 = add i32 %i.ed, -1          ; 3 uses
  %i.ee = icmp ult i32 %switch.tableidx64, 7
  %switch.maskindex = trunc i32 %switch.tableidx64 to i8
  %switch.shifted = lshr i8 91, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.ee, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup66, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = load i32, ptr %.in.i41, align 8, !tbaa !76
  %switch.tableidx70 = add i32 %i.ef, -1          ; 3 uses
  %i.eg = icmp ult i32 %switch.tableidx70, 6
  %switch.maskindex74 = trunc i32 %switch.tableidx70 to i8
  %switch.shifted75 = lshr i8 51, %switch.maskindex74
  %switch.lobit76 = trunc i8 %switch.shifted75 to i1
  %or.cond80 = select i1 %i.eg, i1 %switch.lobit76, i1 false
  br i1 %or.cond80, label %switch.lookup73, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.off.i43 = add i32 %i.ec, -3
  %switch.i44 = icmp ult i32 %.off.i43, 2
  %..i45 = select i1 %switch.i44, i32 12, i32 2
  br label %v4l2_get_color_trc.exit

switch.lookup66:                                  ; preds = %bb.ad
  %i.eh = zext nneg i32 %switch.tableidx64 to i64
  %switch.gep67 = getelementptr inbounds nuw i8, ptr @switch.table.ff_v4l2_buffer_buf_to_avframe.8, i64 %i.eh
  %switch.load68 = load i8, ptr %switch.gep67, align 1
  %switch.ext69 = zext i8 %switch.load68 to i32
  br label %v4l2_get_color_trc.exit

switch.lookup73:                                  ; preds = %bb.ae
  %i.ei = zext nneg i32 %switch.tableidx70 to i64
  %switch.gep77 = getelementptr inbounds nuw i8, ptr @switch.table.ff_v4l2_buffer_buf_to_avframe.9, i64 %i.ei
  %switch.load78 = load i8, ptr %switch.gep77, align 1
  %switch.ext79 = zext i8 %switch.load78 to i32
  br label %v4l2_get_color_trc.exit

v4l2_get_color_trc.exit:                          ; preds = %switch.lookup73, %switch.lookup66, %bb.af
  %.0.i42 = phi i32 [ %switch.ext79, %switch.lookup73 ], [ %..i45, %bb.af ], [ %switch.ext69, %switch.lookup66 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %.0.i42, ptr %i.ej, align 8, !tbaa !103
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !52
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.en = load i64, ptr %i.em, align 8, !tbaa !51
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !32
  %switch.tableidx81 = add i32 %i.ep, -2          ; 2 uses
  %i.eq = icmp ult i32 %switch.tableidx81, 13
  br i1 %i.eq, label %switch.lookup82, label %v4l2_get_pts.exit

switch.lookup82:                                  ; preds = %v4l2_get_color_trc.exit
  %i.er = zext nneg i32 %switch.tableidx81 to i64
  %switch.gep83 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.v4l2_free_buffer.17, i64 %i.er
  %switch.load84 = load i64, ptr %switch.gep83, align 8
  br label %v4l2_get_pts.exit

v4l2_get_pts.exit:                                ; preds = %v4l2_get_color_trc.exit, %switch.lookup82
  %.sink.i.i.i = phi i64 [ %switch.load84, %switch.lookup82 ], [ -4104, %v4l2_get_color_trc.exit ]
  %i.es = mul nsw i64 %i.el, 1000000
  %i.et = add nsw i64 %i.es, %i.en
  %i.eu = getelementptr inbounds i8, ptr %i.aw, i64 %.sink.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4648
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !38 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 92 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !49
  %.not.i.i = icmp eq i32 %i.ey, 0
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 84
  %.sroa.0.0.in.i.i = select i1 %.not.i.i, ptr %i.ez, ptr %i.ex
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 4, !tbaa !50
  %i.fa = tail call i64 @av_rescale_q(i64 noundef %i.et, i64 4294967296000001, i64 %.sroa.0.0.i.i) #8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -9223372036854775808, ptr %i.fc, align 8, !tbaa !104
  %i.fd = getelementptr i8, ptr %i.aw, i64 44
  %.val.val = load i32, ptr %i.fd, align 4, !tbaa !76
  switch i32 %.val.val, label %v4l2_get_interlacing.exit [
    i32 4, label %bb.ag
    i32 8, label %bb.ag
    i32 9, label %._crit_edge.i46
  ]

._crit_edge.i46:                                  ; preds = %v4l2_get_pts.exit
  %.phi.trans.insert.i47 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %.pre.i48 = load i32, ptr %.phi.trans.insert.i47, align 4, !tbaa !99
  br label %bb.ah

bb.ag:                                            ; preds = %v4l2_get_pts.exit, %v4l2_get_pts.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !99
  %i.fg = or i32 %i.ff, 16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i46
  %i.fh = phi i32 [ %.pre.i48, %._crit_edge.i46 ], [ %i.fg, %bb.ag ]
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.fj = or i32 %i.fh, 8
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !99
  br label %v4l2_get_interlacing.exit

v4l2_get_interlacing.exit:                        ; preds = %v4l2_get_pts.exit, %bb.ah
end_hunk_0
