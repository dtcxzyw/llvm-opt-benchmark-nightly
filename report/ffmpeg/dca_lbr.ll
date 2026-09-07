Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dca_lbr?download=true
inline.NumInlined: 114
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 45
begin_hunk_0_@ff_dca_lbr_parse:bb.a
  %.165.i.i.i.i266 = phi i32 [ %i.ban, %bb.fm ], [ %.val.i.i.i, %ensure_bits.exit.i.i ]
  %.1.i.i.i.i267 = phi i32 [ %i.bbc, %bb.fm ], [ %i.bak, %ensure_bits.exit.i.i ]
  %i.bbf = add i32 %.1.i.i.i.i267, %.165.i.i.i.i266
  %i.bbg = tail call i32 @llvm.umin.i32(i32 %i.azr, i32 %i.bbf) ; 4 uses
  store i32 %i.bbg, ptr %i.ww, align 16, !tbaa !61
  %i.bbh = icmp sgt i32 %.167.i.i.i.i265, -1
  br i1 %i.bbh, label %parse_vlc.exit.i.i, label %bb.fn

bb.fn:                                            ; preds = %get_vlc2.exit.i.i.i264
  %i.bbi = lshr i32 %i.bbg, 3
  %i.bbj = zext nneg i32 %i.bbi to i64
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.azw, i64 %i.bbj
  %i.bbl = load i32, ptr %i.bbk, align 1, !tbaa !14
  %i.bbm = and i32 %i.bbg, 7
  %i.bbn = lshr i32 %i.bbl, %i.bbm
  %i.bbo = and i32 %i.bbn, 7                      ; 2 uses
  %i.bbp = add i32 %i.bbg, 3
  %i.bbq = tail call i32 @llvm.umin.i32(i32 %i.azr, i32 %i.bbp) ; 4 uses
  store i32 %i.bbq, ptr %i.ww, align 16, !tbaa !61
  %i.bbr = lshr i32 %i.bbq, 3
  %i.bbs = zext nneg i32 %i.bbr to i64
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.azw, i64 %i.bbs
  %i.bbu = load i32, ptr %i.bbt, align 1, !tbaa !14
  %i.bbv = and i32 %i.bbq, 7
  %i.bbw = lshr i32 %i.bbu, %i.bbv
  %i.bbx = xor i32 %i.bbo, 31
  %i.bby = lshr i32 -1, %i.bbx
  %i.bbz = and i32 %i.bby, %i.bbw
  %i.bca = add i32 %i.bbq, 1
  %i.bcb = add i32 %i.bca, %i.bbo
  %i.bcc = tail call i32 @llvm.umin.i32(i32 %i.azr, i32 %i.bcb)
  store i32 %i.bcc, ptr %i.ww, align 16, !tbaa !61
  br label %parse_vlc.exit.i.i

parse_vlc.exit.i.i:                               ; preds = %bb.fn, %get_vlc2.exit.i.i.i264
  %.0.i27.i.i = phi i32 [ %i.bbz, %bb.fn ], [ %.167.i.i.i.i265, %get_vlc2.exit.i.i.i264 ]
  %i.bcd = trunc i32 %.0.i27.i.i to i8
  %i.bce = add i8 %i.bcd, -16
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.azc, i64 %indvars.iv41.i.i
  store i8 %i.bce, ptr %i.bcf, align 1, !tbaa !14
  %.pre44.i.i = load i32, ptr %i.xa, align 16, !tbaa !34
  br label %bb.fo

bb.fo:                                            ; preds = %parse_vlc.exit.i.i, %bb.fi
  %i.bcg = phi i32 [ %i.azk, %bb.fi ], [ %.pre44.i.i, %parse_vlc.exit.i.i ] ; 2 uses
  %indvars.iv.next42.i.i = add nuw nsw i64 %indvars.iv41.i.i, 1 ; 2 uses
  %i.bch = add nsw i32 %i.bcg, -4
  %i.bci = sext i32 %i.bch to i64
  %i.bcj = icmp slt i64 %indvars.iv.next42.i.i, %i.bci
  br i1 %i.bcj, label %bb.fi, label %.loopexit.i, !llvm.loop !94

.loopexit.i:                                      ; preds = %bb.fo, %bb.fj, %bb.fl, %.preheader.i.i
  tail call fastcc void @parse_grid_2(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 2147483645) %i.axk, i32 noundef %i.zw, i32 noundef 0, i32 noundef 3, i32 noundef 1)
  br label %parse_ts2_chunk.exit

parse_ts2_chunk.exit:                             ; preds = %bb.fd, %.loopexit.i
  %i.bck = load i32, ptr %i.xb, align 8, !tbaa !63
  %i.bcl = load i32, ptr %i.xa, align 16, !tbaa !34
  %i.bcm = tail call fastcc i32 @parse_ts(ptr noundef nonnull %0, i32 noundef range(i32 -2147483648, 2147483645) %i.axk, i32 noundef %i.zw, i32 noundef %i.bck, i32 noundef %i.bcl, i32 noundef 1)
  %.fr = freeze i32 %i.bcm
  %i.bcn = icmp slt i32 %.fr, 0
  br i1 %i.bcn, label %parse_ts2_chunk.exit.thread, label %parse_grid_1_chunk.exit.thread

parse_ts2_chunk.exit.thread:                      ; preds = %bb.fg, %bb.fc, %bb.fb, %parse_ts2_chunk.exit
  br label %parse_grid_1_chunk.exit.thread

parse_grid_1_chunk.exit.thread:                   ; preds = %.lr.ph.split.i, %bb.dl, %.lr.ph.split.us.i, %.thread346, %bb.fa, %bb.ey, %bb.ez, %.thread346.thread, %bb.dv, %bb.dh, %parse_ts2_chunk.exit.thread, %parse_ts2_chunk.exit, %parse_high_res_grid.exit.thread, %parse_ts1_chunk.exit, %.loopexit, %bb.ex
  %.2 = phi i32 [ -1, %bb.ey ], [ %.1162385, %.loopexit ], [ -1, %parse_ts1_chunk.exit ], [ -1, %parse_high_res_grid.exit.thread ], [ %.1162385, %bb.ex ], [ %.1162385, %bb.fa ], [ -1, %bb.ez ], [ %.1162385, %.thread346 ], [ %.1162385, %.thread346.thread ], [ -1, %parse_ts2_chunk.exit.thread ], [ %.1162385, %parse_ts2_chunk.exit ], [ -1, %bb.dh ], [ -1, %bb.dv ], [ -1, %.lr.ph.split.us.i ], [ -1, %bb.dl ], [ -1, %.lr.ph.split.i ] ; 2 uses
  %indvars.iv.next441 = add nuw nsw i64 %indvars.iv440, 1 ; 2 uses
  %i.bco = load i32, ptr %i.iy, align 4, !tbaa !26 ; 2 uses
  %i.bcp = add nsw i32 %i.bco, 1
  %i.bcq = sdiv i32 %i.bcp, 2
  %i.bcr = sext i32 %i.bcq to i64
  %i.bcs = icmp slt i64 %indvars.iv.next441, %i.bcr
  br i1 %i.bcs, label %bb.dg, label %._crit_edge387, !llvm.loop !95

._crit_edge387:                                   ; preds = %parse_grid_1_chunk.exit.thread, %parse_tonal_group.exit.4
  %.1162.lcssa = phi i32 [ %i.zn, %parse_tonal_group.exit.4 ], [ %.2, %parse_grid_1_chunk.exit.thread ]
  %i.bct = icmp slt i32 %.1162.lcssa, 0
  br i1 %i.bct, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %._crit_edge387
  %i.bcu = load ptr, ptr %0, align 16, !tbaa !24
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 528
  %i.bcw = load i32, ptr %i.bcv, align 8, !tbaa !113
  %i.bcx = and i32 %i.bcw, 8
  %.not179 = icmp eq i32 %i.bcx, 0
  br i1 %.not179, label %bb.fq, label %.loopexit364

bb.fq:                                            ; preds = %bb.fp, %._crit_edge387
  br label %.loopexit364

.loopexit364:                                     ; preds = %bb.bn, %bb.fp, %bb.bf, %bb.ba, %bb.fq, %bb.bh, %bytestream2_get_byte.exit196.thread, %bb.aw, %bb.e, %bytestream2_get_be32.exit.thread
  %.1 = phi i32 [ -1094995529, %bytestream2_get_be32.exit.thread ], [ -1094995529, %bytestream2_get_byte.exit196.thread ], [ %.1.i.ph, %bb.aw ], [ -1094995529, %bb.bh ], [ -1094995529, %bb.bf ], [ -1094995529, %bb.fp ], [ 0, %bb.fq ], [ -1094995529, %bb.ba ], [ -1094995529, %bb.e ], [ -1094995529, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_dca_lbr_filter_frame(ptr noundef %0, ptr noundef initializes((112, 116)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !24    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !28
  %i.d = and i32 %i.c, 7
  %i.e = add nsw i32 %i.d, -1
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds [2 x i8], ptr @channel_layouts, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !36   ; 2 uses
  %i.i = zext i16 %i.h to i64                     ; 2 uses
  %i.j = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.h) ; 2 uses
  %i.k = zext nneg i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i32, ptr %i.l, align 16, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i32 %i.m, ptr %i.n, align 8, !tbaa !139
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 348
  store i32 8, ptr %i.o, align 4, !tbaa !140
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 652
  store i32 0, ptr %i.p, align 4, !tbaa !141
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  store i32 70, ptr %i.q, align 8, !tbaa !142
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i32, ptr %i.r, align 16, !tbaa !30
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.t, ptr %i.u, align 8, !tbaa !143
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29
  %i.x = and i32 %i.w, 2
  %.not = icmp eq i32 %i.x, 0                     ; 2 uses
  %i.y = or i64 %i.i, 8
  %.072.v = select i1 %.not, ptr @channel_reorder_nolfe, ptr @channel_reorder_lfe
  %.072 = getelementptr inbounds [5 x i8], ptr %.072.v, i64 %i.f ; 2 uses
  %.0 = select i1 %.not, i64 %i.i, i64 %i.y
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.z) #11
  %i.aa = tail call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.z, i64 noundef %.0) #11 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = shl i32 1024, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !148
  %i.af = tail call i32 @ff_get_buffer(ptr noundef %i.a, ptr noundef %1, i32 noundef 0) #11 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.z, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3716 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2348
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2180
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7928 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 7800
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5492 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5496 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5252
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bc = zext nneg i16 %i.j to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 4 uses
  %i.bd = phi i32 [ %i.ai, %.lr.ph ], [ %i.bcm, %bb.w ]
  %i.be = shl nuw nsw i64 %indvars.iv, 1          ; 18 uses
  %i.bf = add nsw i32 %i.bd, -1                   ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %.not83 = icmp slt i64 %i.be, %i.bg
  %i.bh = trunc i64 %i.be to i32
  %i.bi = or disjoint i32 %i.bh, 1
  %i.bj = select i1 %.not83, i32 %i.bi, i32 %i.bf ; 9 uses
  %i.bk = sext i32 %i.bj to i64                   ; 5 uses
  %.not61.i = icmp sgt i64 %i.be, %i.bk           ; 4 uses
  %.pre151 = load i32, ptr %i.ak, align 16, !tbaa !34 ; 3 uses
  br i1 %.not61.i, label %random_ts.exit, label %.preheader57.lr.ph.i

.preheader57.lr.ph.i:                             ; preds = %bb.b
  %i.bl = icmp sgt i32 %.pre151, 0
  br i1 %i.bl, label %.preheader57.preheader.i, label %random_ts.exit.filter_ts.exit_crit_edge

.preheader57.preheader.i:                         ; preds = %.preheader57.lr.ph.i
  %i.bm = add nuw i32 %i.bj, 1
  br label %.preheader57.i

.preheader57.i:                                   ; preds = %._crit_edge.i, %.preheader57.preheader.i
  %i.bn = phi i32 [ %.pre151, %.preheader57.preheader.i ], [ %i.jo, %._crit_edge.i ] ; 2 uses
  %indvars.iv69.i = phi i64 [ %i.be, %.preheader57.preheader.i ], [ %indvars.iv.next70.i, %._crit_edge.i ] ; 5 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader57.i
  %i.bp = getelementptr inbounds nuw [96 x i8], ptr %i.al, i64 %indvars.iv69.i ; 2 uses
  %i.bq = getelementptr inbounds nuw [256 x i8], ptr %i.am, i64 %indvars.iv69.i
  %i.br = getelementptr inbounds nuw [224 x i8], ptr %i.an, i64 %indvars.iv69.i
  %i.bs = getelementptr inbounds nuw [28 x i8], ptr %i.ao, i64 %indvars.iv69.i
  %i.bt = load i32, ptr %i.ak, align 16, !tbaa !34 ; 2 uses
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 1)
  %smax = zext nneg i32 %i.bu to i64
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr @ff_dca_scf_to_grid_1, i64 %indvars.iv.i
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !14
  %i.bx = zext i8 %i.bw to i64                    ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bx ; 13 uses
  %i.bz = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bz ; 13 uses
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr @ff_dca_grid_1_weights, i64 %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !14  ; 2 uses
  %i.ce = zext i8 %i.cd to i32                    ; 12 uses
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr @ff_dca_grid_1_weights, i64 %i.bz
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv.i
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !14  ; 2 uses
  %i.ci = zext i8 %i.ch to i32                    ; 12 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i ; 11 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.i, 4
  br i1 %i.ck, label %.preheader.preheader.i, label %.loopexit.loopexit64.i

.preheader.preheader.i:                           ; preds = %bb.c
  %i.cl = load i8, ptr %i.by, align 1, !tbaa !14
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul nuw nsw i32 %i.cm, %i.ce
  %i.co = load i8, ptr %i.ca, align 1, !tbaa !14
  %i.cp = zext i8 %i.co to i32
  %i.cq = mul nuw nsw i32 %i.cp, %i.ci
  %i.cr = add nuw nsw i32 %i.cq, %i.cn
  %i.cs = lshr i32 %i.cr, 7
  %i.ct = trunc i32 %i.cs to i8
  store i8 %i.ct, ptr %i.cj, align 1, !tbaa !14
  %i.cu = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !14
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nuw nsw i32 %i.cw, %i.ce
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14
  %i.da = zext i8 %i.cz to i32
  %i.db = mul nuw nsw i32 %i.da, %i.ci
  %i.dc = add nuw nsw i32 %i.db, %i.cx
  %i.dd = lshr i32 %i.dc, 7
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  store i8 %i.de, ptr %i.df, align 1, !tbaa !14
  %i.dg = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !14
  %i.di = zext i8 %i.dh to i32
  %i.dj = mul nuw nsw i32 %i.di, %i.ce
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !14
  %i.dm = zext i8 %i.dl to i32
  %i.dn = mul nuw nsw i32 %i.dm, %i.ci
  %i.do = add nuw nsw i32 %i.dn, %i.dj
  %i.dp = lshr i32 %i.do, 7
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !14
  %i.ds = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !14
  %i.du = zext i8 %i.dt to i32
  %i.dv = mul nuw nsw i32 %i.du, %i.ce
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !14
  %i.dy = zext i8 %i.dx to i32
  %i.dz = mul nuw nsw i32 %i.dy, %i.ci
  %i.ea = add nuw nsw i32 %i.dz, %i.dv
  %i.eb = lshr i32 %i.ea, 7
  %i.ec = trunc i32 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !14
  %i.eg = zext i8 %i.ef to i32
  %i.eh = mul nuw nsw i32 %i.eg, %i.ce
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !14
  %i.ek = zext i8 %i.ej to i32
  %i.el = mul nuw nsw i32 %i.ek, %i.ci
  %i.em = add nuw nsw i32 %i.el, %i.eh
  %i.en = lshr i32 %i.em, 7
  %i.eo = trunc i32 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i8 %i.eo, ptr %i.ep, align 1, !tbaa !14
  %i.eq = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !14
  %i.es = zext i8 %i.er to i32
  %i.et = mul nuw nsw i32 %i.es, %i.ce
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ca, i64 5
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !14
  %i.ew = zext i8 %i.ev to i32
  %i.ex = mul nuw nsw i32 %i.ew, %i.ci
  %i.ey = add nuw nsw i32 %i.ex, %i.et
  %i.ez = lshr i32 %i.ey, 7
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !14
  %i.fc = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !14
  %i.fe = zext i8 %i.fd to i32
  %i.ff = mul nuw nsw i32 %i.fe, %i.ce
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !14
  %i.fi = zext i8 %i.fh to i32
  %i.fj = mul nuw nsw i32 %i.fi, %i.ci
  %i.fk = add nuw nsw i32 %i.fj, %i.ff
  %i.fl = lshr i32 %i.fk, 7
  %i.fm = getelementptr inbounds nuw i8, ptr %i.by, i64 7
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !14
  %i.fo = zext i8 %i.fn to i32
  %i.fp = mul nuw nsw i32 %i.fo, %i.ce
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ca, i64 7
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !14
  %i.fs = zext i8 %i.fr to i32
  %i.ft = mul nuw nsw i32 %i.fs, %i.ci
  %i.fu = add nuw nsw i32 %i.ft, %i.fp
  %i.fv = lshr i32 %i.fu, 7
  br label %.loopexit.i

.loopexit.loopexit64.i:                           ; preds = %bb.c
  %i.fw = add nsw i64 %indvars.iv.i, -4           ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.fw ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.fw
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !14
  %i.ga = zext i8 %i.fz to i32                    ; 5 uses
  %i.gb = load <4 x i8>, ptr %i.by, align 1, !tbaa !14 ; 2 uses
  %i.gc = load <4 x i8>, ptr %i.ca, align 1, !tbaa !14 ; 2 uses
  %i.gd = shufflevector <4 x i8> %i.gc, <4 x i8> %i.gb, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ge = zext <4 x i8> %i.gd to <4 x i16>
  %i.gf = zext i8 %i.ch to i16
  %i.gg = insertelement <4 x i16> poison, i16 %i.gf, i64 0
  %i.gh = zext i8 %i.cd to i16
  %i.gi = insertelement <4 x i16> %i.gg, i16 %i.gh, i64 1 ; 2 uses
  %i.gj = shufflevector <4 x i16> %i.gi, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gk = mul nuw <4 x i16> %i.gj, %i.ge
  %i.gl = shufflevector <4 x i8> %i.gb, <4 x i8> %i.gc, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.gm = zext <4 x i8> %i.gl to <4 x i16>
  %i.gn = shufflevector <4 x i16> %i.gi, <4 x i16> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.go = mul nuw <4 x i16> %i.gn, %i.gm
  %i.gp = add <4 x i16> %i.go, %i.gk
  %i.gq = lshr <4 x i16> %i.gp, splat (i16 7)
  %i.gr = zext nneg <4 x i16> %i.gq to <4 x i32>
  %i.gs = load <4 x i8>, ptr %i.fx, align 1, !tbaa !14
  %i.gt = zext <4 x i8> %i.gs to <4 x i32>
  %i.gu = insertelement <4 x i32> poison, i32 %i.ga, i64 0
  %i.gv = shufflevector <4 x i32> %i.gu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gw = add nuw nsw <4 x i32> %i.gv, %i.gt
  %i.gx = sub nsw <4 x i32> %i.gr, %i.gw
  %i.gy = trunc <4 x i32> %i.gx to <4 x i8>
  store <4 x i8> %i.gy, ptr %i.cj, align 1, !tbaa !14
  %i.gz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !14
  %i.hb = zext i8 %i.ha to i32
  %i.hc = mul nuw nsw i32 %i.hb, %i.ce
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !14
  %i.hf = zext i8 %i.he to i32
  %i.hg = mul nuw nsw i32 %i.hf, %i.ci
  %i.hh = add nuw nsw i32 %i.hg, %i.hc
  %i.hi = lshr i32 %i.hh, 7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !14
  %i.hl = zext i8 %i.hk to i32
  %i.hm = add nuw nsw i32 %i.hl, %i.ga
  %i.hn = sub nsw i32 %i.hi, %i.hm
  %i.ho = trunc i32 %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !14
  %i.hq = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !14
  %i.hs = zext i8 %i.hr to i32
  %i.ht = mul nuw nsw i32 %i.hs, %i.ce
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ca, i64 5
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !14
  %i.hw = zext i8 %i.hv to i32
  %i.hx = mul nuw nsw i32 %i.hw, %i.ci
  %i.hy = add nuw nsw i32 %i.hx, %i.ht
  %i.hz = lshr i32 %i.hy, 7
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fx, i64 5
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !14
  %i.ic = zext i8 %i.ib to i32
  %i.id = add nuw nsw i32 %i.ic, %i.ga
  %i.ie = sub nsw i32 %i.hz, %i.id
end_hunk_0
