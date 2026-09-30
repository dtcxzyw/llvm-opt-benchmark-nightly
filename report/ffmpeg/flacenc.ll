Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/flacenc?download=true
inline.NumInlined: 99
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 22
begin_hunk_0_@flac_encode_init:bb.a
  %.pre195 = load i32, ptr %i.bg, align 4, !tbaa !51
  br label %bb.at

bb.at:                                            ; preds = %bb.ao, %bb.as, %bb.ar
  %i.cm = phi i32 [ %i.bl, %bb.ao ], [ %.pre195, %bb.as ], [ %i.cj, %bb.ar ] ; 2 uses
  %i.cn = phi i32 [ %i.br, %bb.ao ], [ 4, %bb.as ], [ %i.ck, %bb.ar ] ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.cm
  br i1 %i.co, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.53, i32 noundef %i.cm, i32 noundef %i.cn) #13
  br label %bb.bn

bb.av:                                            ; preds = %.thread219, %bb.at
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !56 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.cs = add nsw i32 %i.cq, -65536
  %or.cond188 = icmp ult i32 %i.cs, -65520
  br i1 %or.cond188, label %bb.ax, label %._crit_edge196

._crit_edge196:                                   ; preds = %bb.aw
  %.pre197 = load ptr, ptr %i.h, align 16, !tbaa !42 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre197, i64 376
  %.pre198 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %bb.az

bb.ax:                                            ; preds = %bb.aw
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.54, i32 noundef %i.cq) #13
  br label %bb.bn

bb.ay:                                            ; preds = %bb.av
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cv = load i32, ptr %i.az, align 4, !tbaa !90
  %i.cw = tail call fastcc i32 @select_blocksize(i32 noundef %i.cu, i32 noundef %i.cv) ; 2 uses
  %i.cx = load ptr, ptr %i.h, align 16, !tbaa !42 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 376
  store i32 %i.cw, ptr %i.cy, align 8, !tbaa !56
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge196, %bb.ay
  %i.cz = phi i32 [ %.pre198, %._crit_edge196 ], [ %i.cw, %bb.ay ] ; 2 uses
  %i.da = phi ptr [ %.pre197, %._crit_edge196 ], [ %i.cx, %bb.ay ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !57
  %i.dc = load i32, ptr %i.t, align 8, !tbaa !46  ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 652
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !44 ; 3 uses
  %i.df = icmp eq i32 %i.dc, 2
  %i.dg = shl nsw i32 %i.de, 1
  %i.dh = or disjoint i32 %i.dg, 1
  %i.di = mul nsw i32 %i.de, %i.dc
  %.pn14.i = select i1 %i.df, i32 %i.dh, i32 %i.di
  %i.dj = add nsw i32 %i.de, 14
  %i.dk = sdiv i32 %i.dj, 8
  %i.dl = mul nsw i32 %i.dk, %i.dc
  %.pn.in.in.i = mul nsw i32 %.pn14.i, %i.cz
  %.pn.in.i = add nsw i32 %.pn.in.in.i, 7
  %.pn.i = sdiv i32 %.pn.in.i, 8
  %.0.i = add i32 %i.dl, 18
  %i.dm = add i32 %.0.i, %.pn.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 68 ; 2 uses
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !58
  %i.do = tail call ptr @av_md5_alloc() #13       ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 7387760
  store ptr %i.do, ptr %i.dp, align 16, !tbaa !59
  %.not178 = icmp eq ptr %i.do, null
  br i1 %.not178, label %bb.bn, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @av_md5_init(ptr noundef nonnull %i.do) #13
  %i.dq = tail call noalias ptr @av_malloc(i64 noundef 34) #13 ; 3 uses
  %.not179 = icmp eq ptr %i.dq, null
  br i1 %.not179, label %bb.bn, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call fastcc void @write_streaminfo(ptr noundef nonnull %i.g, ptr noundef nonnull %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !60
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 34, ptr %i.ds, align 8, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store i32 0, ptr %i.dt, align 4, !tbaa !62
  %i.du = load i32, ptr %i.dn, align 4, !tbaa !58
  %i.dv = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i32 %i.du, ptr %i.dv, align 16, !tbaa !63
  switch i32 %i.e, label %bb.bm [
    i32 3, label %bb.bc
    i32 4, label %bb.bd
    i32 5, label %bb.bf
    i32 6, label %bb.bh
  ]

bb.bc:                                            ; preds = %bb.bb
  store <2 x i32> <i32 1, i32 3>, ptr %1, align 8, !tbaa !47
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.dw, align 8, !tbaa !64
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.dx, align 8, !tbaa !91
  %i.dy = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.c, ptr noundef nonnull %1) #13
  %.not180 = icmp eq i32 %i.dy, 0
  br i1 %.not180, label %bb.bm, label %bb.bj

bb.bd:                                            ; preds = %bb.bb
  store <2 x i32> <i32 1, i32 4>, ptr %2, align 8, !tbaa !47
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1539, ptr %i.dz, align 8, !tbaa !64
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.ea, align 8, !tbaa !91
  %i.eb = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.c, ptr noundef nonnull %2) #13
  %.not181 = icmp eq i32 %i.eb, 0
  br i1 %.not181, label %bb.bm, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store <2 x i32> <i32 1, i32 4>, ptr %3, align 8, !tbaa !47
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 51, ptr %i.ec, align 8, !tbaa !64
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.ed, align 8, !tbaa !91
  %i.ee = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.c, ptr noundef nonnull %3) #13
  %.not182 = icmp eq i32 %i.ee, 0
  br i1 %.not182, label %bb.bm, label %bb.bj

bb.bf:                                            ; preds = %bb.bb
  store <2 x i32> <i32 1, i32 5>, ptr %4, align 8, !tbaa !47
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1543, ptr %i.ef, align 8, !tbaa !64
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.eg, align 8, !tbaa !91
  %i.eh = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.c, ptr noundef nonnull %4) #13
  %.not183 = icmp eq i32 %i.eh, 0
  br i1 %.not183, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store <2 x i32> <i32 1, i32 5>, ptr %5, align 8, !tbaa !47
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 55, ptr %i.ei, align 8, !tbaa !64
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.ej, align 8, !tbaa !91
  %i.ek = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.c, ptr noundef nonnull %5) #13
  %.not184 = icmp eq i32 %i.ek, 0
  br i1 %.not184, label %bb.bm, label %bb.bj

bb.bh:                                            ; preds = %bb.bb
  store <2 x i32> <i32 1, i32 6>, ptr %6, align 8, !tbaa !47
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1551, ptr %i.el, align 8, !tbaa !64
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.em, align 8, !tbaa !91
  %i.en = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.c, ptr noundef nonnull %6) #13
  %.not185 = icmp eq i32 %i.en, 0
  br i1 %.not185, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store <2 x i32> <i32 1, i32 6>, ptr %7, align 8, !tbaa !47
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 63, ptr %i.eo, align 8, !tbaa !64
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.ep, align 8, !tbaa !91
  %i.eq = call i32 @av_channel_layout_compare(ptr noundef nonnull %i.c, ptr noundef nonnull %7) #13
  %.not186 = icmp eq i32 %i.eq, 0
  br i1 %.not186, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg, %bb.be, %bb.bc
  %i.er = load i32, ptr %i.c, align 8, !tbaa !92
  %.not187 = icmp eq i32 %i.er, 0
  br i1 %.not187, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.55) #13
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.56, i32 noundef %i.e) #13
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bf, %bb.bg, %bb.bd, %bb.be, %bb.bc, %bb.bb, %bb.bk, %bb.bl, %bb.bi, %bb.bh
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 7350016
  %i.et = load i32, ptr %i.cp, align 8, !tbaa !56
  %i.eu = load i32, ptr %i.bm, align 16, !tbaa !52
  %i.ev = call i32 @ff_lpc_init(ptr noundef nonnull %i.es, i32 noundef %i.et, i32 noundef %i.eu, i32 noundef 2) #13
  %i.ew = getelementptr inbounds nuw i8, ptr %i.g, i64 7387784
  call void @ff_bswapdsp_init(ptr noundef nonnull %i.ew) #13
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 7387800
  call void @ff_flacencdsp_init(ptr noundef nonnull %i.ex) #13
  call fastcc void @dprint_compression_options(ptr noundef nonnull %i.g) #14
  br label %bb.bn

bb.bn:                                            ; preds = %bb.ba, %bb.az, %bb.l, %bb.bm, %bb.ax, %bb.au, %bb.aj, %bb.z, %bb.v, %bb.k
  %.0160 = phi i32 [ -22, %bb.k ], [ -22, %bb.v ], [ -22, %bb.z ], [ -22, %bb.aj ], [ -22, %bb.au ], [ -22, %bb.ax ], [ %i.ev, %bb.bm ], [ -12, %bb.az ], [ -22, %bb.l ], [ -12, %bb.ba ]
  ret i32 %.0160
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @flac_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 70 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !137
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  store i32 %i.e, ptr %i.f, align 4, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 7387760
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  tail call void @av_md5_final(ptr noundef %i.h, ptr noundef nonnull %i.i) #13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.k, i8 0, i64 34, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.m = load i32, ptr %i.l, align 4, !tbaa !57   ; 2 uses
  %i.n = shl i32 %i.m, 16
  %i.o = or i32 %i.n, %i.m
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  store i32 %i.p, ptr %i.k, align 1, !tbaa !64
  %i.q = load i32, ptr %i.f, align 4, !tbaa !58   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.t = load i32, ptr %i.s, align 16, !tbaa !63
  %i.u = shl i32 %i.t, 8
  %i.v = lshr i32 %i.q, 16
  %i.w = or i32 %i.u, %i.v
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)
  store i32 %i.x, ptr %i.r, align 1, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !48  ; 2 uses
  %i.ab = shl i32 %i.q, 16
  %i.ac = lshr i32 %i.aa, 4
  %i.ad = or i32 %i.ac, %i.ab
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad)
  store i32 %i.ae, ptr %i.y, align 1, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 16, !tbaa !65
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !46
  %i.am = shl i32 %i.al, 5
  %i.an = add i32 %i.am, 4064
  %i.ao = shl i32 %i.aa, 8
  %i.ap = or i32 %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 7350000
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 652
  %i.at = load i32, ptr %i.as, align 4, !tbaa !44
  %i.au = add i32 %i.at, 4095
  %i.av = or i32 %i.ap, %i.au
  %i.aw = shl i32 %i.av, 20
  %i.ax = lshr i32 %i.aj, 4
  %i.ay = and i32 %i.ax, 1048575
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.az)
  store i32 %i.ba, ptr %i.af, align 1, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bc = load i64, ptr %i.ag, align 16, !tbaa !65 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = shl i32 %i.bd, 16
  %i.bf = and i32 %i.be, 251658240
  %i.bg = shl i32 %i.aj, 28
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = lshr exact i32 %i.bh, 24
  %i.bj = trunc nuw i32 %i.bi to i8
  store i8 %i.bj, ptr %i.bb, align 1, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %i.bl = trunc i64 %i.bc to i8
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 7387816 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !138
  %.not81 = icmp eq i32 %i.bo, 0
  br i1 %.not81, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !61
  %i.br = sext i32 %i.bq to i64
  %i.bs = tail call ptr @av_packet_new_side_data(ptr noundef %1, i32 noundef 1, i64 noundef %i.br) #13 ; 2 uses
  %.not82.not = icmp eq ptr %i.bs, null
  br i1 %.not82.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.bu = load i32, ptr %i.bp, align 8, !tbaa !61
  %i.bv = sext i32 %i.bu to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr align 1 %i.bt, i64 %i.bv, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 7387824
  %i.bx = load i64, ptr %i.bw, align 16, !tbaa !139
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !141
  store i32 1, ptr %3, align 4, !tbaa !47
  store i32 1, ptr %i.bn, align 8, !tbaa !138
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !146 ; 26 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 7349920 ; 16 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !66
  %i.cd = icmp slt i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !46 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !44 ; 3 uses
  %i.ci = icmp eq i32 %i.cf, 2
  %i.cj = shl nsw i32 %i.ch, 1
  %i.ck = or disjoint i32 %i.cj, 1
  %i.cl = mul nsw i32 %i.ch, %i.cf
  %.pn14.i = select i1 %i.ci, i32 %i.ck, i32 %i.cl
  %i.cm = add nsw i32 %i.ch, 14
  %i.cn = sdiv i32 %i.cm, 8
  %i.co = mul nsw i32 %i.cn, %i.cf
  %.pn.in.in.i = mul nsw i32 %.pn14.i, %i.ca
  %.pn.in.i = add nsw i32 %.pn.in.in.i, 7
  %.pn.i = sdiv i32 %.pn.in.i, 8
  %.0.i = add i32 %i.co, 18
  %i.cp = add i32 %.0.i, %.pn.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 12 uses
  %i.cs = load i32, ptr @ff_flac_blocksize_table, align 16, !tbaa !47
  %i.ct = icmp eq i32 %i.ca, %i.cs
  br i1 %i.ct, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.03134.lcssa.wide.i = phi i32 [ 0, %bb.g ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.j ], [ 4, %bb.k ], [ 5, %bb.l ], [ 6, %bb.m ], [ 7, %bb.n ], [ 8, %bb.o ], [ 9, %bb.p ], [ 10, %bb.q ], [ 11, %bb.r ], [ 12, %bb.s ], [ 13, %bb.t ], [ 14, %bb.u ], [ 15, %bb.v ]
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !67
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 7349924
  store i32 %.03134.lcssa.wide.i, ptr %i.cu, align 4, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 7349928
  store i32 0, ptr %i.cv, align 8, !tbaa !47
  br label %bb.z

bb.h:                                             ; preds = %bb.g
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 4), align 4, !tbaa !47
  %i.cx = icmp eq i32 %i.ca, %i.cw
  br i1 %i.cx, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 8), align 8, !tbaa !47
  %i.cz = icmp eq i32 %i.ca, %i.cy
  br i1 %i.cz, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 12), align 4, !tbaa !47
  %i.db = icmp eq i32 %i.ca, %i.da
  br i1 %i.db, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 16), align 16, !tbaa !47
  %i.dd = icmp eq i32 %i.ca, %i.dc
  br i1 %i.dd, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 20), align 4, !tbaa !47
  %i.df = icmp eq i32 %i.ca, %i.de
  br i1 %i.df, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 24), align 8, !tbaa !47
  %i.dh = icmp eq i32 %i.ca, %i.dg
  br i1 %i.dh, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 28), align 4, !tbaa !47
  %i.dj = icmp eq i32 %i.ca, %i.di
  br i1 %i.dj, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 32), align 16, !tbaa !47
  %i.dl = icmp eq i32 %i.ca, %i.dk
  br i1 %i.dl, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 36), align 4, !tbaa !47
  %i.dn = icmp eq i32 %i.ca, %i.dm
  br i1 %i.dn, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.do = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_flac_blocksize_table, i64 40), align 8, !tbaa !47
  %i.dp = icmp eq i32 %i.ca, %i.do
  br i1 %i.dp, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_0
begin_hunk_1_@flac_encode_frame:bb.a
.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.pr = phi i32 [ %i.qj, %.lr.ph.i.i ], [ %.ph585, %.lr.ph.i.i.preheader ]
  %i.ps = phi i32 [ %i.py, %.lr.ph.i.i ], [ %.ph586, %.lr.ph.i.i.preheader ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.pt = phi i64 [ %i.qv, %.lr.ph.i.i ], [ %.ph587, %.lr.ph.i.i.preheader ]
  %i.pu = phi i64 [ %i.qy, %.lr.ph.i.i ], [ %.ph588, %.lr.ph.i.i.preheader ]
  %i.pv = phi i64 [ %i.ra, %.lr.ph.i.i ], [ %.ph589, %.lr.ph.i.i.preheader ]
  %i.pw = phi i64 [ %i.rc, %.lr.ph.i.i ], [ %.ph590, %.lr.ph.i.i.preheader ]
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.i.i
  %i.py = load i32, ptr %i.px, align 4, !tbaa !47 ; 2 uses
  %i.pz = sext i32 %i.py to i64
  %i.qa = sext i32 %i.ps to i64
  %i.qb = shl nsw i64 %i.qa, 1
  %i.qc = sub nsw i64 %i.pz, %i.qb
  %i.qd = add nsw i64 %indvars.iv.i.i, -2         ; 2 uses
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !47
  %i.qg = sext i32 %i.qf to i64
  %i.qh = add nsw i64 %i.qc, %i.qg                ; 3 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.i.i
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !47 ; 2 uses
  %i.qk = sext i32 %i.qj to i64
  %i.ql = sext i32 %i.pr to i64
  %i.qm = shl nsw i64 %i.ql, 1
  %i.qn = sub nsw i64 %i.qk, %i.qm
  %i.qo = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.qd
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !47
  %i.qq = sext i32 %i.qp to i64
  %i.qr = add nsw i64 %i.qn, %i.qq                ; 3 uses
  %i.qs = add nsw i64 %i.qr, %i.qh
  %i.qt = ashr i64 %i.qs, 1
  %i.qu = tail call i64 @llvm.abs.i64(i64 %i.qt, i1 true)
  %i.qv = add i64 %i.qu, %i.pt                    ; 2 uses
  %i.qw = sub nsw i64 %i.qh, %i.qr
  %i.qx = tail call i64 @llvm.abs.i64(i64 %i.qw, i1 true)
  %i.qy = add i64 %i.qx, %i.pu                    ; 2 uses
  %i.qz = tail call i64 @llvm.abs.i64(i64 %i.qh, i1 true)
  %i.ra = add i64 %i.qz, %i.pv                    ; 2 uses
  %i.rb = tail call i64 @llvm.abs.i64(i64 %i.qr, i1 true)
  %i.rc = add i64 %i.rb, %i.pw                    ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !104

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %.lr.ph116.i.i, %middle.block, %middle.block445, %.preheader.i.i, %.preheader95.i.i
  %storemerge126.i.i = phi i64 [ %i.pg, %.lr.ph116.i.i ], [ 0, %.preheader.i.i ], [ 0, %.preheader95.i.i ], [ %i.od, %middle.block445 ], [ %i.lt, %middle.block ], [ %i.qv, %.lr.ph.i.i ]
  %storemerge125.i.i = phi i64 [ %i.pk, %.lr.ph116.i.i ], [ 0, %.preheader.i.i ], [ 0, %.preheader95.i.i ], [ %i.oe, %middle.block445 ], [ %i.lu, %middle.block ], [ %i.qy, %.lr.ph.i.i ]
  %storemerge124.i.i = phi i64 [ %i.pn, %.lr.ph116.i.i ], [ 0, %.preheader.i.i ], [ 0, %.preheader95.i.i ], [ %i.of, %middle.block445 ], [ %i.lv, %middle.block ], [ %i.ra, %.lr.ph.i.i ]
  %storemerge.i.i = phi i64 [ %i.pq, %.lr.ph116.i.i ], [ 0, %.preheader.i.i ], [ 0, %.preheader95.i.i ], [ %i.og, %middle.block445 ], [ %i.lw, %middle.block ], [ %i.rc, %.lr.ph.i.i ]
  %i.rd = ashr i32 %i.iu, 1
  %i.re = sext i32 %i.rd to i64                   ; 8 uses
  %i.rf = sext i32 %i.iu to i64                   ; 4 uses
  %i.rg = shl i64 %storemerge124.i.i, 1           ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.rg, %i.re
  %i.rh = sub i64 %i.rg, %i.re                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.ae, label %find_optimal_param.exit.i.i

bb.ae:                                            ; preds = %.loopexit.i.i
  %i.ri = udiv i64 %i.rh, %i.rf
  %i.rj = tail call i64 @llvm.smax.i64(i64 %i.ri, i64 -2147483648)
  %i.rk = tail call i64 @llvm.smin.i64(i64 %i.rj, i64 2147483647) ; 2 uses
  %.0.i.i.i.i = trunc nsw i64 %i.rk to i32        ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.rk, 65536       ; 2 uses
  %i.rl = lshr i32 %.0.i.i.i.i, 16
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 %.0.i.i.i.i, i32 %i.rl ; 3 uses
  %spec.select12.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i, 256 ; 2 uses
  %i.rm = lshr i32 %spec.select.i.i.i.i, 8
  %i.rn = or disjoint i32 %spec.select12.i.i.i.i, 8
  %.110.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %i.rm
  %.1.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select12.i.i.i.i, i32 %i.rn
  %i.ro = zext nneg i32 %.110.i.i.i.i to i64
  %i.rp = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ro
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !64
  %i.rr = zext i8 %i.rq to i32
  %i.rs = add nuw nsw i32 %.1.i.i.i.i, %i.rr
  %i.rt = tail call i32 @llvm.smin.i32(i32 %i.rs, i32 range(i32 -2147483648, 2147483646) %i.je)
  br label %find_optimal_param.exit.i.i

find_optimal_param.exit.i.i:                      ; preds = %bb.ae, %.loopexit.i.i
  %.0.i.i.i = phi i32 [ %i.rt, %bb.ae ], [ 0, %.loopexit.i.i ] ; 2 uses
  %i.ru = shl i64 %storemerge.i.i, 1              ; 2 uses
  %.not.i.1.i.i = icmp ugt i64 %i.ru, %i.re
  %i.rv = sub i64 %i.ru, %i.re                    ; 2 uses
  br i1 %.not.i.1.i.i, label %bb.af, label %find_optimal_param.exit.1.i.i

bb.af:                                            ; preds = %find_optimal_param.exit.i.i
  %i.rw = udiv i64 %i.rv, %i.rf
  %i.rx = tail call i64 @llvm.smax.i64(i64 %i.rw, i64 -2147483648)
  %i.ry = tail call i64 @llvm.smin.i64(i64 %i.rx, i64 2147483647) ; 2 uses
  %.0.i.i.1.i.i = trunc nsw i64 %i.ry to i32      ; 2 uses
  %.not.i.i.1.i.i = icmp ult i64 %i.ry, 65536     ; 2 uses
  %i.rz = lshr i32 %.0.i.i.1.i.i, 16
  %spec.select.i.i.1.i.i = select i1 %.not.i.i.1.i.i, i32 %.0.i.i.1.i.i, i32 %i.rz ; 3 uses
  %spec.select12.i.i.1.i.i = select i1 %.not.i.i.1.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.1.i.i = icmp samesign ult i32 %spec.select.i.i.1.i.i, 256 ; 2 uses
  %i.sa = lshr i32 %spec.select.i.i.1.i.i, 8
  %i.sb = or disjoint i32 %spec.select12.i.i.1.i.i, 8
  %.110.i.i.1.i.i = select i1 %.not11.i.i.1.i.i, i32 %spec.select.i.i.1.i.i, i32 %i.sa
  %.1.i.i.1.i.i = select i1 %.not11.i.i.1.i.i, i32 %spec.select12.i.i.1.i.i, i32 %i.sb
  %i.sc = zext nneg i32 %.110.i.i.1.i.i to i64
  %i.sd = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.sc
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !64
  %i.sf = zext i8 %i.se to i32
  %i.sg = add nuw nsw i32 %.1.i.i.1.i.i, %i.sf
  %i.sh = tail call i32 @llvm.smin.i32(i32 %i.sg, i32 range(i32 -2147483648, 2147483646) %i.je)
  br label %find_optimal_param.exit.1.i.i

find_optimal_param.exit.1.i.i:                    ; preds = %bb.af, %find_optimal_param.exit.i.i
  %.0.i.1.i.i = phi i32 [ %i.sh, %bb.af ], [ 0, %find_optimal_param.exit.i.i ] ; 2 uses
  %i.si = shl i64 %storemerge126.i.i, 1           ; 2 uses
  %.not.i.2.i.i = icmp ugt i64 %i.si, %i.re
  %i.sj = sub i64 %i.si, %i.re                    ; 2 uses
  br i1 %.not.i.2.i.i, label %bb.ag, label %find_optimal_param.exit.2.i.i

bb.ag:                                            ; preds = %find_optimal_param.exit.1.i.i
  %i.sk = udiv i64 %i.sj, %i.rf
  %i.sl = tail call i64 @llvm.smax.i64(i64 %i.sk, i64 -2147483648)
  %i.sm = tail call i64 @llvm.smin.i64(i64 %i.sl, i64 2147483647) ; 2 uses
  %.0.i.i.2.i.i = trunc nsw i64 %i.sm to i32      ; 2 uses
  %.not.i.i.2.i.i = icmp ult i64 %i.sm, 65536     ; 2 uses
  %i.sn = lshr i32 %.0.i.i.2.i.i, 16
  %spec.select.i.i.2.i.i = select i1 %.not.i.i.2.i.i, i32 %.0.i.i.2.i.i, i32 %i.sn ; 3 uses
  %spec.select12.i.i.2.i.i = select i1 %.not.i.i.2.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.2.i.i = icmp samesign ult i32 %spec.select.i.i.2.i.i, 256 ; 2 uses
  %i.so = lshr i32 %spec.select.i.i.2.i.i, 8
  %i.sp = or disjoint i32 %spec.select12.i.i.2.i.i, 8
  %.110.i.i.2.i.i = select i1 %.not11.i.i.2.i.i, i32 %spec.select.i.i.2.i.i, i32 %i.so
  %.1.i.i.2.i.i = select i1 %.not11.i.i.2.i.i, i32 %spec.select12.i.i.2.i.i, i32 %i.sp
  %i.sq = zext nneg i32 %.110.i.i.2.i.i to i64
  %i.sr = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.sq
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !64
  %i.st = zext i8 %i.ss to i32
  %i.su = add nuw nsw i32 %.1.i.i.2.i.i, %i.st
  %i.sv = tail call i32 @llvm.smin.i32(i32 %i.su, i32 range(i32 -2147483648, 2147483646) %i.je)
  br label %find_optimal_param.exit.2.i.i

find_optimal_param.exit.2.i.i:                    ; preds = %bb.ag, %find_optimal_param.exit.1.i.i
  %.0.i.2.i.i = phi i32 [ %i.sv, %bb.ag ], [ 0, %find_optimal_param.exit.1.i.i ] ; 2 uses
  %i.sw = shl i64 %storemerge125.i.i, 1           ; 2 uses
  %.not.i.3.i.i = icmp ugt i64 %i.sw, %i.re
  %i.sx = sub i64 %i.sw, %i.re                    ; 2 uses
  br i1 %.not.i.3.i.i, label %bb.ah, label %estimate_stereo_mode.exit.i

bb.ah:                                            ; preds = %find_optimal_param.exit.2.i.i
  %i.sy = udiv i64 %i.sx, %i.rf
  %i.sz = tail call i64 @llvm.smax.i64(i64 %i.sy, i64 -2147483648)
  %i.ta = tail call i64 @llvm.smin.i64(i64 %i.sz, i64 2147483647) ; 2 uses
  %.0.i.i.3.i.i = trunc nsw i64 %i.ta to i32      ; 2 uses
  %.not.i.i.3.i.i = icmp ult i64 %i.ta, 65536     ; 2 uses
  %i.tb = lshr i32 %.0.i.i.3.i.i, 16
  %spec.select.i.i.3.i.i = select i1 %.not.i.i.3.i.i, i32 %.0.i.i.3.i.i, i32 %i.tb ; 3 uses
  %spec.select12.i.i.3.i.i = select i1 %.not.i.i.3.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.3.i.i = icmp samesign ult i32 %spec.select.i.i.3.i.i, 256 ; 2 uses
  %i.tc = lshr i32 %spec.select.i.i.3.i.i, 8
  %i.td = or disjoint i32 %spec.select12.i.i.3.i.i, 8
  %.110.i.i.3.i.i = select i1 %.not11.i.i.3.i.i, i32 %spec.select.i.i.3.i.i, i32 %i.tc
  %.1.i.i.3.i.i = select i1 %.not11.i.i.3.i.i, i32 %spec.select12.i.i.3.i.i, i32 %i.td
  %i.te = zext nneg i32 %.110.i.i.3.i.i to i64
  %i.tf = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !64
  %i.th = zext i8 %i.tg to i32
  %i.ti = add nuw nsw i32 %.1.i.i.3.i.i, %i.th
  %i.tj = tail call i32 @llvm.smin.i32(i32 %i.ti, i32 range(i32 -2147483648, 2147483646) %i.je)
  br label %estimate_stereo_mode.exit.i

estimate_stereo_mode.exit.i:                      ; preds = %bb.ah, %find_optimal_param.exit.2.i.i
  %.0.i.3.i.i = phi i32 [ %i.tj, %bb.ah ], [ 0, %find_optimal_param.exit.2.i.i ] ; 2 uses
  %i.tk = zext nneg i32 %.0.i.2.i.i to i64
  %i.tl = lshr i64 %i.sj, %i.tk
  %i.tm = add nsw i32 %.0.i.2.i.i, 1
  %i.tn = mul nsw i32 %i.tm, %i.iu
  %i.to = sext i32 %i.tn to i64
  %i.tp = add i64 %i.tl, %i.to
  %i.tq = zext nneg i32 %.0.i.1.i.i to i64
  %i.tr = lshr i64 %i.rv, %i.tq
  %i.ts = add nsw i32 %.0.i.1.i.i, 1
  %i.tt = mul nsw i32 %i.ts, %i.iu
  %i.tu = sext i32 %i.tt to i64
  %i.tv = add i64 %i.tr, %i.tu                    ; 2 uses
  %i.tw = zext nneg i32 %.0.i.i.i to i64
  %i.tx = lshr i64 %i.rh, %i.tw
  %i.ty = add nsw i32 %.0.i.i.i, 1
  %i.tz = mul nsw i32 %i.ty, %i.iu
  %i.ua = sext i32 %i.tz to i64
  %i.ub = add i64 %i.tx, %i.ua                    ; 2 uses
  %i.uc = add nsw i32 %.0.i.3.i.i, 1
  %i.ud = mul nsw i32 %i.uc, %i.iu
  %i.ue = sext i32 %i.ud to i64
  %i.uf = zext nneg i32 %.0.i.3.i.i to i64
  %i.ug = lshr i64 %i.sx, %i.uf
  %i.uh = add i64 %i.ug, %i.ue                    ; 3 uses
  %i.ui = add i64 %i.tv, %i.ub                    ; 3 uses
  store i64 %i.ui, ptr %i.a, align 16, !tbaa !77
  %i.uj = add i64 %i.uh, %i.ub                    ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.uj, ptr %i.uk, align 8, !tbaa !77
  %i.ul = add i64 %i.uh, %i.tv                    ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ul, ptr %i.um, align 16, !tbaa !77
  %i.un = add i64 %i.tp, %i.uh
  %i.uo = icmp ult i64 %i.uj, %i.ui
  %spec.select.i.i = zext i1 %i.uo to i32
  %i.up = tail call i64 @llvm.umin.i64(i64 %i.uj, i64 %i.ui)
  %i.uq = icmp ult i64 %i.ul, %i.up
  %spec.select.1.i.i = select i1 %i.uq, i32 2, i32 %spec.select.i.i ; 2 uses
  %i.ur = zext nneg i32 %spec.select.1.i.i to i64
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ur
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !77
  %i.uu = icmp ult i64 %i.un, %i.ut
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.uu, label %.thread, label %bb.ai

.thread:                                          ; preds = %estimate_stereo_mode.exit.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.c, i64 7349936
  store i32 3, ptr %i.uv, align 16, !tbaa !151
  br label %bb.aj

bb.ai:                                            ; preds = %estimate_stereo_mode.exit.i, %bb.ac
  %.sink.i = phi i32 [ %spec.select.1.i.i, %estimate_stereo_mode.exit.i ], [ %i.iz, %bb.ac ] ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.c, i64 7349936
  store i32 %.sink.i, ptr %i.uw, align 16, !tbaa !151
  %i.ux = icmp eq i32 %.sink.i, 0
  br i1 %i.ux, label %.lr.ph95.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ai
  %.phi.trans.insert212 = getelementptr inbounds nuw i8, ptr %.pre, i64 652
  %.pre213 = load i32, ptr %.phi.trans.insert212, align 4, !tbaa !44
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %.thread
  %i.uy = phi i32 [ %i.jg, %.thread ], [ %.pre213, %._crit_edge ]
  %.sink.i125 = phi i32 [ 3, %.thread ], [ %.sink.i, %._crit_edge ] ; 2 uses
  %i.uz = icmp eq i32 %i.uy, 32
  %i.va = icmp sgt i32 %i.iu, 0                   ; 6 uses
  br i1 %i.uz, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  switch i32 %.sink.i125, label %.preheader.i93 [
    i32 3, label %.preheader101.i
    i32 1, label %.preheader102.i
  ]

.preheader102.i:                                  ; preds = %bb.ak
  br i1 %i.va, label %.lr.ph122.preheader.i, label %.lr.ph95.i.sink.split

.lr.ph122.preheader.i:                            ; preds = %.preheader102.i
  %wide.trip.count152.i = zext nneg i32 %i.iu to i64 ; 3 uses
  %min.iters.check499 = icmp ult i32 %i.iu, 4
  br i1 %min.iters.check499, label %.lr.ph122.i.preheader, label %vector.ph500

vector.ph500:                                     ; preds = %.lr.ph122.preheader.i
  %n.vec501 = and i64 %wide.trip.count152.i, 2147483644 ; 3 uses
  br label %vector.body502

vector.body502:                                   ; preds = %vector.body502, %vector.ph500
  %index503 = phi i64 [ 0, %vector.ph500 ], [ %index.next508, %vector.body502 ] ; 4 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %index503 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %wide.load504 = load <2 x i32>, ptr %i.vb, align 4, !tbaa !47
  %wide.load505 = load <2 x i32>, ptr %i.vc, align 4, !tbaa !47
  %i.vd = sext <2 x i32> %wide.load504 to <2 x i64>
  %i.ve = sext <2 x i32> %wide.load505 to <2 x i64>
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %index503 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %wide.load506 = load <2 x i32>, ptr %i.vf, align 4, !tbaa !47
  %wide.load507 = load <2 x i32>, ptr %i.vg, align 4, !tbaa !47
  %i.vh = sext <2 x i32> %wide.load506 to <2 x i64>
  %i.vi = sext <2 x i32> %wide.load507 to <2 x i64>
  %i.vj = sub nsw <2 x i64> %i.vd, %i.vh
  %i.vk = sub nsw <2 x i64> %i.ve, %i.vi
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %index503 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  store <2 x i64> %i.vj, ptr %i.vl, align 8, !tbaa !77
  store <2 x i64> %i.vk, ptr %i.vm, align 8, !tbaa !77
  %index.next508 = add nuw i64 %index503, 4       ; 2 uses
  %i.vn = icmp eq i64 %index.next508, %n.vec501
  br i1 %i.vn, label %middle.block509, label %vector.body502, !llvm.loop !105

middle.block509:                                  ; preds = %vector.body502
  %cmp.n510 = icmp eq i64 %n.vec501, %wide.trip.count152.i
  br i1 %cmp.n510, label %.lr.ph95.i.sink.split, label %.lr.ph122.i.preheader

.lr.ph122.i.preheader:                            ; preds = %.lr.ph122.preheader.i, %middle.block509
  %indvars.iv149.i.ph = phi i64 [ 0, %.lr.ph122.preheader.i ], [ %n.vec501, %middle.block509 ]
  br label %.lr.ph122.i

.preheader101.i:                                  ; preds = %bb.ak
  br i1 %i.va, label %.lr.ph125.preheader.i, label %.lr.ph95.i.sink.split

.lr.ph125.preheader.i:                            ; preds = %.preheader101.i
  %wide.trip.count157.i = zext nneg i32 %i.iu to i64 ; 3 uses
  %min.iters.check513 = icmp eq i32 %i.iu, 1
  br i1 %min.iters.check513, label %.lr.ph125.i.preheader, label %vector.ph514

vector.ph514:                                     ; preds = %.lr.ph125.preheader.i
  %n.vec515 = and i64 %wide.trip.count157.i, 2147483646 ; 3 uses
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph514
  %index517 = phi i64 [ 0, %vector.ph514 ], [ %index.next520, %vector.body516 ] ; 4 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %index517 ; 2 uses
  %wide.load518 = load <2 x i32>, ptr %i.vo, align 4, !tbaa !47
  %i.vp = sext <2 x i32> %wide.load518 to <2 x i64> ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %index517
  %wide.load519 = load <2 x i32>, ptr %i.vq, align 4, !tbaa !47
  %i.vr = sext <2 x i32> %wide.load519 to <2 x i64> ; 2 uses
  %i.vs = add nsw <2 x i64> %i.vr, %i.vp
  %i.vt = lshr <2 x i64> %i.vs, splat (i64 1)
  %i.vu = trunc <2 x i64> %i.vt to <2 x i32>
  store <2 x i32> %i.vu, ptr %i.vo, align 4, !tbaa !47
  %i.vv = sub nsw <2 x i64> %i.vp, %i.vr
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %index517
  store <2 x i64> %i.vv, ptr %i.vw, align 8, !tbaa !77
  %index.next520 = add nuw i64 %index517, 2       ; 2 uses
  %i.vx = icmp eq i64 %index.next520, %n.vec515
  br i1 %i.vx, label %middle.block521, label %vector.body516, !llvm.loop !106

middle.block521:                                  ; preds = %vector.body516
  %cmp.n522 = icmp eq i64 %n.vec515, %wide.trip.count157.i
  br i1 %cmp.n522, label %.lr.ph95.i.sink.split, label %.lr.ph125.i.preheader

.lr.ph125.i.preheader:                            ; preds = %.lr.ph125.preheader.i, %middle.block521
  %indvars.iv154.i.ph = phi i64 [ 0, %.lr.ph125.preheader.i ], [ %n.vec515, %middle.block521 ]
  br label %.lr.ph125.i

.preheader.i93:                                   ; preds = %bb.ak
  br i1 %i.va, label %.lr.ph128.preheader.i, label %.lr.ph95.i.sink.split

.lr.ph128.preheader.i:                            ; preds = %.preheader.i93
  %wide.trip.count162.i = zext nneg i32 %i.iu to i64 ; 3 uses
  %min.iters.check525 = icmp ult i32 %i.iu, 4
  br i1 %min.iters.check525, label %.lr.ph128.i.preheader, label %vector.ph526

vector.ph526:                                     ; preds = %.lr.ph128.preheader.i
  %n.vec527 = and i64 %wide.trip.count162.i, 2147483644 ; 3 uses
  br label %vector.body528

vector.body528:                                   ; preds = %vector.body528, %vector.ph526
  %index529 = phi i64 [ 0, %vector.ph526 ], [ %index.next534, %vector.body528 ] ; 4 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %index529 ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  %wide.load530 = load <2 x i32>, ptr %i.vy, align 4, !tbaa !47
  %wide.load531 = load <2 x i32>, ptr %i.vz, align 4, !tbaa !47
  %i.wa = sext <2 x i32> %wide.load530 to <2 x i64>
  %i.wb = sext <2 x i32> %wide.load531 to <2 x i64>
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %index529 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %wide.load532 = load <2 x i32>, ptr %i.wc, align 4, !tbaa !47
  %wide.load533 = load <2 x i32>, ptr %i.wd, align 4, !tbaa !47
  %i.we = sext <2 x i32> %wide.load532 to <2 x i64>
  %i.wf = sext <2 x i32> %wide.load533 to <2 x i64>
  %i.wg = sub nsw <2 x i64> %i.wa, %i.we
  %i.wh = sub nsw <2 x i64> %i.wb, %i.wf
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %index529 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  store <2 x i64> %i.wg, ptr %i.wi, align 8, !tbaa !77
  store <2 x i64> %i.wh, ptr %i.wj, align 8, !tbaa !77
  %index.next534 = add nuw i64 %index529, 4       ; 2 uses
  %i.wk = icmp eq i64 %index.next534, %n.vec527
  br i1 %i.wk, label %middle.block535, label %vector.body528, !llvm.loop !107

middle.block535:                                  ; preds = %vector.body528
  %cmp.n536 = icmp eq i64 %n.vec527, %wide.trip.count162.i
  br i1 %cmp.n536, label %.lr.ph95.i.sink.split, label %.lr.ph128.i.preheader

.lr.ph128.i.preheader:                            ; preds = %.lr.ph128.preheader.i, %middle.block535
  %indvars.iv159.i.ph = phi i64 [ 0, %.lr.ph128.preheader.i ], [ %n.vec527, %middle.block535 ]
  br label %.lr.ph128.i

.lr.ph125.i:                                      ; preds = %.lr.ph125.i.preheader, %.lr.ph125.i
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %.lr.ph125.i ], [ %indvars.iv154.i.ph, %.lr.ph125.i.preheader ] ; 4 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv154.i ; 2 uses
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !47
  %i.wn = sext i32 %i.wm to i64                   ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv154.i
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !47
  %i.wq = sext i32 %i.wp to i64                   ; 2 uses
  %i.wr = add nsw i64 %i.wq, %i.wn
  %i.ws = lshr i64 %i.wr, 1
  %i.wt = trunc i64 %i.ws to i32
  store i32 %i.wt, ptr %i.wl, align 4, !tbaa !47
  %i.wu = sub nsw i64 %i.wn, %i.wq
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv154.i
  store i64 %i.wu, ptr %i.wv, align 8, !tbaa !77
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %exitcond158.not.i = icmp eq i64 %indvars.iv.next155.i, %wide.trip.count157.i
  br i1 %exitcond158.not.i, label %.lr.ph95.i.sink.split, label %.lr.ph125.i, !llvm.loop !108

.lr.ph122.i:                                      ; preds = %.lr.ph122.i.preheader, %.lr.ph122.i
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %.lr.ph122.i ], [ %indvars.iv149.i.ph, %.lr.ph122.i.preheader ] ; 4 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv149.i
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !47
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv149.i
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !47
  %i.xb = sext i32 %i.xa to i64
  %i.xc = sub nsw i64 %i.wy, %i.xb
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv149.i
  store i64 %i.xc, ptr %i.xd, align 8, !tbaa !77
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
end_hunk_1
