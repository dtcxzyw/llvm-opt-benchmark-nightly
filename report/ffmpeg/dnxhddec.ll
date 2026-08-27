Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dnxhddec?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dnxhd_decode_header:bb.a
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  br i1 %i.bz, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fa = load ptr, ptr %0, align 8, !tbaa !29
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 688
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !86
  %i.fd = icmp eq i32 %i.fc, 4
  %spec.select236 = select i1 %i.fd, ptr @dnxhd_decode_dct_block_10_444, ptr @dnxhd_decode_dct_block_10
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 2440
  store ptr %spec.select236, ptr %i.fe, align 8, !tbaa !98
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 64, ptr %i.ff, align 8, !tbaa !56
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2440
  store ptr @dnxhd_decode_dct_block_8, ptr %i.fg, align 8, !tbaa !98
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 4, ptr %i.fh, align 8, !tbaa !56
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.an, %bb.am, %bb.ai, %bb.ah
  store i32 %.0, ptr %i.a, align 8, !tbaa !80
  %i.fi = load ptr, ptr %0, align 8, !tbaa !29
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 652
  store i32 %.0, ptr %i.fj, align 4, !tbaa !99
  %.not184 = icmp eq i32 %.0, %i.b
  br i1 %.not184, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @ff_blockdsp_init(ptr noundef nonnull %i.fk) #5
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.fm = load ptr, ptr %0, align 8, !tbaa !29
  tail call void @ff_idctdsp_init(ptr noundef nonnull %i.fl, ptr noundef %i.fm) #5
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2344
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2272
  tail call void @ff_permute_scantable(ptr noundef nonnull %i.fn, ptr noundef nonnull @ff_zigzag_direct, ptr noundef nonnull %i.fo) #5
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fp = load i32, ptr %i.bs, align 8, !tbaa !53 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 2408 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !67 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !100 ; 3 uses
  %.not185 = icmp eq i32 %i.fp, %i.ft
  %.not186 = icmp eq i32 %i.ft, 0
  %or.cond = or i1 %.not185, %.not186
  br i1 %or.cond, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fu = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 128
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 132
  %i.fx = zext i32 %i.fp to i64
  %i.fy = zext i32 %i.ft to i64
  %i.fz = tail call i32 @av_reduce(ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fw, i64 noundef %i.fx, i64 noundef %i.fy, i64 noundef 255) #5 ; 0 uses
  %i.ga = load ptr, ptr %i.fq, align 8, !tbaa !67 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !100 ; 2 uses
  store i32 %i.gc, ptr %i.bs, align 8, !tbaa !53
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gd = phi i32 [ %i.gc, %bb.ar ], [ %i.fp, %bb.aq ] ; 2 uses
  %i.ge = phi ptr [ %i.ga, %bb.ar ], [ %i.fr, %bb.aq ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !68 ; 2 uses
  %i.gh = icmp ult i32 %3, %i.gg
  br i1 %i.gh, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gi = load ptr, ptr %0, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gi, i32 noundef 16, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef %i.gg) #5
  br label %dnxhd_init_vlc.exit.thread

bb.au:                                            ; preds = %bb.as
  %i.gj = add i32 %i.gd, 15
  %i.gk = lshr i32 %i.gj, 4
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !101
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 364
  %i.gn = load i16, ptr %i.gm, align 1, !tbaa !81
  %i.go = tail call i16 @llvm.bswap.i16(i16 %i.gn)
  %i.gp = zext i16 %i.go to i32                   ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !61
  %i.gr = load i32, ptr %i.bn, align 4, !tbaa !54 ; 4 uses
  %i.gs = add i32 %i.gr, 15
  %i.gt = lshr i32 %i.gs, 4
  %i.gu = icmp eq i32 %i.gt, %i.gp
  br i1 %i.gu, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !62
  %i.gx = and i32 %i.gw, 8
  %.not187 = icmp eq i32 %i.gx, 0
  br i1 %.not187, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gy = shl i32 %i.gr, 1                        ; 2 uses
  store i32 %i.gy, ptr %i.bn, align 4, !tbaa !54
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %i.gz = phi i32 [ %i.gy, %bb.aw ], [ %i.gr, %bb.av ], [ %i.gr, %bb.au ]
  %i.ha = load ptr, ptr %0, align 8, !tbaa !29
  %i.hb = load i32, ptr %i.eq, align 4, !tbaa !97
  %.not188 = icmp eq i32 %i.hb, 0
  %i.hc = select i1 %.not188, ptr @.str.17, ptr @.str.16
  %i.hd = load i32, ptr %i.a, align 8, !tbaa !80
  %i.he = load i32, ptr %i.ax, align 8, !tbaa !83
  %i.hf = load i32, ptr %i.eh, align 4, !tbaa !78
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ha, i32 noundef 40, ptr noundef nonnull @.str.15, i32 noundef %i.gd, i32 noundef %i.gz, ptr noundef nonnull %i.hc, i32 noundef %i.hd, i32 noundef %i.he, i32 noundef %i.hf) #5
  %i.hg = load i32, ptr %i.gq, align 8, !tbaa !61 ; 9 uses
  %i.hh = icmp ugt i32 %i.hg, 68
  br i1 %i.hh, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.hi = and i64 %i.m, 281470681808640
  %i.hj = icmp ne i64 %i.hi, 768
  %i.hk = add nsw i64 %i.h, -561053696
  %i.hl = icmp ult i64 %i.hk, -519110656
  %or.cond3.i.not209 = or i1 %i.hl, %i.hj
  %i.hm = and i64 %i.g, 3
  %i.hn = icmp ne i64 %i.hm, 0
  %.not189 = or i1 %i.hn, %or.cond3.i.not209
  br i1 %.not189, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ho = shl i32 %i.hg, 2
  %i.hp = add i32 %i.ho, 368
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.hq = load ptr, ptr %0, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hq, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.hg) #5
  br label %dnxhd_init_vlc.exit.thread

bb.bb:                                            ; preds = %bb.ax, %bb.az
  %.sink237 = phi i32 [ %i.hp, %bb.az ], [ 640, %bb.ax ] ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 2140
  store i32 %.sink237, ptr %i.hr, align 4, !tbaa !57
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !62
  %i.hu = lshr i32 %i.ht, 3
  %.lobit = and i32 %i.hu, 1
  %i.hv = shl i32 %i.hg, %.lobit
  %i.hw = load i32, ptr %i.bn, align 4, !tbaa !54
  %i.hx = add i32 %i.hw, 15
  %i.hy = lshr i32 %i.hx, 4
  %i.hz = icmp ugt i32 %i.hv, %i.hy
  br i1 %i.hz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ia = load ptr, ptr %0, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ia, i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %i.hg) #5
  br label %dnxhd_init_vlc.exit.thread

bb.bd:                                            ; preds = %bb.bb
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 2140
  %i.ic = icmp slt i32 %3, %.sink237
  br i1 %i.ic, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.id = load ptr, ptr %0, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.id, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %3, i32 noundef %.sink237) #5
  br label %dnxhd_init_vlc.exit.thread

bb.bf:                                            ; preds = %bb.bd
  %i.ie = icmp ugt i32 %i.hg, 512
  br i1 %i.ie, label %bb.bg, label %.preheader

.preheader:                                       ; preds = %bb.bf
  %.not212 = icmp eq i32 %i.hg, 0
  br i1 %.not212, label %dnxhd_init_vlc.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 92
  %wide.trip.count = zext nneg i32 %i.hg to i64
  br label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ih = load ptr, ptr %0, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ih, i32 noundef 16, ptr noundef nonnull @.str.20, i32 noundef %i.hg, i64 noundef 512) #5
  br label %dnxhd_init_vlc.exit.thread

bb.bh:                                            ; preds = %bb.bi
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %dnxhd_init_vlc.exit.thread, label %bb.bi, !llvm.loop !102

bb.bi:                                            ; preds = %.lr.ph, %bb.bh
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bh ] ; 3 uses
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  %6 = shl i32 %5, 2
  %7 = sext i32 %6 to i64
  %i.ii = getelementptr inbounds i8, ptr %i.if, i64 %7
  %i.ij = load i32, ptr %i.ii, align 1, !tbaa !81
  %i.ik = tail call i32 @llvm.bswap.i32(i32 %i.ij) ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !40
  %i.im = load i32, ptr %i.ib, align 4, !tbaa !57
  %i.in = sub nsw i32 %3, %i.im                   ; 2 uses
  %i.io = icmp ult i32 %i.in, %i.ik
  br i1 %i.io, label %bb.bj, label %bb.bh

bb.bj:                                            ; preds = %bb.bi
  %i.ip = load ptr, ptr %0, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ip, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %i.ik, i32 noundef %i.in) #5
  br label %dnxhd_init_vlc.exit.thread

dnxhd_init_vlc.exit.thread:                       ; preds = %bb.bh, %.preheader, %bb.r, %bb.y, %bb.t, %bb.bj, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.at, %bb.af, %bb.o, %ff_dnxhd_check_header_prefix.exit.thread, %bb.b
  %.0160 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %ff_dnxhd_check_header_prefix.exit.thread ], [ -1094995529, %bb.o ], [ -1094995529, %bb.ba ], [ -1094995529, %bb.af ], [ -1094995529, %bb.at ], [ -1094995529, %bb.bc ], [ -1094995529, %bb.be ], [ -1094995529, %bb.bg ], [ -1094995529, %bb.bj ], [ -1094995529, %bb.t ], [ -38, %bb.r ], [ %.036.ph.i, %bb.y ], [ 0, %.preheader ], [ 0, %bb.bh ]
  ret i32 %.0160
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @av_get_pix_fmt_name(i32 noundef) local_unnamed_addr #2

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_thread_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @dnxhd_decode_row(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 2 uses
  %i.i = sext i32 %3 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [2096 x i8], ptr %i.h, i64 %i.i ; 25 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2416 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !80
  %i.m = add nsw i32 %i.l, 2
  %i.n = shl nuw i32 1, %i.m                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 2072
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2080
  store i32 %i.n, ptr %i.p, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 2076
  store i32 %i.n, ptr %i.q, align 4, !tbaa !40
  store i32 %i.n, ptr %i.o, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 2048 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 2 uses
  %i.u = zext i32 %i.f to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !58
  %i.y = sub i32 %i.x, %i.f                       ; 2 uses
  %or.cond.i = icmp ugt i32 %i.y, 268435455
  %i.z = shl nuw nsw i32 %i.y, 3
  %i.aa = select i1 %or.cond.i, i32 -8, i32 %i.z  ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.aa, 2147483135   ; 2 uses
  %i.ab = icmp ne ptr %i.t, null
  %or.cond3.i.i = and i1 %i.ab, %or.cond.i.i      ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.v, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.aa, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.r, align 8, !tbaa !103
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 2060
  store i32 %.013.i.i, ptr %i.ac, align 4, !tbaa !104
  %i.ad = add nuw nsw i32 %.013.i.i, 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 2064
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !105
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 2056 ; 5 uses
  store i32 0, ptr %i.af, align 8, !tbaa !106
  br i1 %or.cond3.i.i, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !101
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 2432
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 2436
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 2092 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 2084 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 2408
  %i.ap = getelementptr i8, ptr %i.j, i64 1536    ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 1792 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 2420 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 2440
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 276
  %i.au = shl i32 %2, 4                           ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 2144
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 2256 ; 17 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 768 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 896 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 256 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 384 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 1024
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 1152
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 512 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 640 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 1280
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 1408
  %i.bl = mul nsw i64 %i.i, 2096
  %i.bm = getelementptr i8, ptr %i.h, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.bm, i64 2048 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ae
  %.02936 = phi i32 [ 0, %.lr.ph ], [ %i.ig, %bb.ae ] ; 3 uses
  %i.bn = load i32, ptr %i.k, align 8, !tbaa !80
  %i.bo = icmp sgt i32 %i.bn, 9                   ; 3 uses
  %i.bp = zext i1 %i.bo to i32
  %i.bq = load i32, ptr %i.ai, align 8, !tbaa !40
  %i.br = load i32, ptr %i.aj, align 4, !tbaa !40
  %i.bs = load i32, ptr %i.ak, align 8, !tbaa !83
  %.not.i = icmp eq i32 %i.bs, 0
  %i.bt = load i32, ptr %i.af, align 8, !tbaa !106 ; 6 uses
  %i.bu = load ptr, ptr %i.r, align 8, !tbaa !103 ; 3 uses
  %i.bv = lshr i32 %i.bt, 3
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !81
  %i.bz = and i32 %i.bt, 7
  %i.ca = zext i8 %i.by to i32
  %i.cb = add i32 %i.bt, 1                        ; 3 uses
  store i32 %i.cb, ptr %i.af, align 8, !tbaa !106
  %i.cc = lshr i32 %i.cb, 3
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 1, !tbaa !81
  %i.cg = tail call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ch = and i32 %i.cb, 7
  %i.ci = shl i32 %i.cg, %i.ch
  %i.cj = lshr i32 %i.ci, 22
  %i.ck = lshr exact i32 128, %i.bz
  %i.cl = and i32 %i.ck, %i.ca
  %i.cm = icmp eq i32 %i.cl, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.cn = load i32, ptr %i.bx, align 1, !tbaa !81
  %i.co = tail call i32 @llvm.bswap.i32(i32 %i.cn)
  %i.cp = and i32 %i.bt, 7
  %i.cq = shl i32 %i.co, %i.cp
  %i.cr = lshr i32 %i.cq, 21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0183.i = phi i32 [ %i.cr, %bb.d ], [ %i.cj, %bb.c ] ; 7 uses
  %.0.i = phi i1 [ true, %bb.d ], [ %i.cm, %bb.c ] ; 4 uses
  %.sink = add i32 %i.bt, 11                      ; 3 uses
  store i32 %.sink, ptr %i.af, align 8, !tbaa !106
  %i.cs = lshr i32 %.sink, 3
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !81
  %i.cw = and i32 %.sink, 7
  %i.cx = zext i8 %i.cv to i32
  %i.cy = add i32 %i.bt, 12
  store i32 %i.cy, ptr %i.af, align 8, !tbaa !106
  %i.cz = lshr exact i32 128, %i.cw
  %i.da = and i32 %i.cz, %i.cx
  %.not194.i = icmp eq i32 %i.da, 0
  br i1 %.not194.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.db = load i32, ptr %i.al, align 4, !tbaa !78
  %.not195.i = icmp eq i32 %i.db, 0
  br i1 %.not195.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.b.i = load i1, ptr @dnxhd_decode_macroblock.act_warned, align 4
  br i1 %.b.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i1 true, ptr @dnxhd_decode_macroblock.act_warned, align 4
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.dc, i32 noundef 16, ptr noundef nonnull @.str.27) #5
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.dd = load i32, ptr %i.am, align 4, !tbaa !46
  switch i32 %i.dd, label %bb.k [
    i32 -1, label %bb.j
    i32 1, label %bb.l
  ]

end_hunk_0
