Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h261enc?download=true
inline.NumInlined: 34
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_h261_reorder_mb_index:bb.a
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  store i32 %i.an, ptr %i.ae, align 1, !tbaa !62
  %i.ao = load ptr, ptr %i.ad, align 16, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.ap, ptr %i.ad, align 16, !tbaa !61
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = add nsw i32 %i.w, 16
  %.pre.i = load i32, ptr %i.q, align 16, !tbaa !57
  br label %put_bits.exit.i

put_bits.exit.i:                                  ; preds = %bb.h, %bb.d
  %i.ar = phi i32 [ %i.s, %bb.d ], [ %.pre.i, %bb.h ] ; 4 uses
  %.026.i.i.i = phi i32 [ %i.z, %bb.d ], [ 1, %bb.h ] ; 3 uses
  %.0.i.i.i = phi i32 [ %i.aa, %bb.d ], [ %i.aq, %bb.h ] ; 5 uses
  store i32 %.026.i.i.i, ptr %i.t, align 16, !tbaa !58
  store i32 %.0.i.i.i, ptr %i.v, align 4, !tbaa !59
  %i.as = icmp sgt i32 %.0.i.i.i, 4
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %put_bits.exit.i
  %i.at = shl i32 %.026.i.i.i, 4
  %i.au = or i32 %i.at, %i.ar
  br label %put_bits.exit16.i

bb.j:                                             ; preds = %put_bits.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !61 ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ugt i64 %i.bb, 3
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = shl i32 %.026.i.i.i, %.0.i.i.i
  %i.be = sub nsw i32 4, %.0.i.i.i
  %i.bf = lshr i32 %i.ar, %i.be
  %i.bg = or i32 %i.bf, %i.bd
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.ay, align 1, !tbaa !62
  %i.bi = load ptr, ptr %i.ax, align 16, !tbaa !61
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store ptr %i.bj, ptr %i.ax, align 16, !tbaa !61
  br label %put_bits.exit16.i

bb.l:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %put_bits.exit16.i

put_bits.exit16.i:                                ; preds = %bb.l, %bb.k, %bb.i
  %.sink.i = phi i32 [ -4, %bb.i ], [ 28, %bb.l ], [ 28, %bb.k ]
  %.026.i.i14.i = phi i32 [ %i.au, %bb.i ], [ %i.ar, %bb.l ], [ %i.ar, %bb.k ] ; 3 uses
  %i.bk = add nsw i32 %.sink.i, %.0.i.i.i         ; 5 uses
  store i32 %.026.i.i14.i, ptr %i.t, align 16, !tbaa !58
  store i32 %i.bk, ptr %i.v, align 4, !tbaa !59
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !63 ; 4 uses
  %i.bn = icmp sgt i32 %i.bk, 5
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %put_bits.exit16.i
  %i.bo = shl i32 %.026.i.i14.i, 5
  %i.bp = or i32 %i.bm, %i.bo
  br label %put_bits.exit20.i

bb.n:                                             ; preds = %put_bits.exit16.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !61 ; 2 uses
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp ugt i64 %i.bw, 3
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.by = shl i32 %.026.i.i14.i, %i.bk
  %i.bz = sub nsw i32 5, %i.bk
  %i.ca = lshr i32 %i.bm, %i.bz
  %i.cb = or i32 %i.ca, %i.by
  %i.cc = tail call i32 @llvm.bswap.i32(i32 %i.cb)
  store i32 %i.cc, ptr %i.bt, align 1, !tbaa !62
  %i.cd = load ptr, ptr %i.bs, align 16, !tbaa !61
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store ptr %i.ce, ptr %i.bs, align 16, !tbaa !61
  br label %put_bits.exit20.i

bb.p:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %put_bits.exit20.i

put_bits.exit20.i:                                ; preds = %bb.p, %bb.o, %bb.m
  %.sink26.i = phi i32 [ -5, %bb.m ], [ 27, %bb.p ], [ 27, %bb.o ]
  %.026.i.i18.i = phi i32 [ %i.bp, %bb.m ], [ %i.bm, %bb.p ], [ %i.bm, %bb.o ] ; 3 uses
  %i.cf = add nsw i32 %.sink26.i, %i.bk           ; 4 uses
  store i32 %.026.i.i18.i, ptr %i.t, align 16, !tbaa !58
  store i32 %i.cf, ptr %i.v, align 4, !tbaa !59
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %put_bits.exit20.i
  %i.ch = shl i32 %.026.i.i18.i, 1
  br label %h261_encode_gob_header.exit

bb.r:                                             ; preds = %put_bits.exit20.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !60
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 16, !tbaa !61 ; 2 uses
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp ugt i64 %i.co, 3
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = shl i32 %.026.i.i18.i, %i.cf
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  store i32 %i.cr, ptr %i.cl, align 1, !tbaa !62
  %i.cs = load ptr, ptr %i.ck, align 16, !tbaa !61
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store ptr %i.ct, ptr %i.ck, align 16, !tbaa !61
  br label %h261_encode_gob_header.exit

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %h261_encode_gob_header.exit

h261_encode_gob_header.exit:                      ; preds = %bb.q, %bb.s, %bb.t
  %.sink27.i = phi i32 [ -1, %bb.q ], [ 31, %bb.t ], [ 31, %bb.s ]
  %.026.i.i22.i = phi i32 [ %i.ch, %bb.q ], [ 0, %bb.t ], [ 0, %bb.s ]
  %i.cu = add nsw i32 %.sink27.i, %i.cf
  store i32 %.026.i.i22.i, ptr %i.t, align 16, !tbaa !58
  store i32 %i.cu, ptr %i.v, align 4, !tbaa !59
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 6356
  store i32 0, ptr %i.cv, align 4, !tbaa !64
  br label %bb.u

bb.u:                                             ; preds = %h261_encode_gob_header.exit, %bb.b
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i32 0, ptr %i.cw, align 16, !tbaa !65
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i32 0, ptr %i.cx, align 4, !tbaa !65
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 10996
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !48
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = srem i32 %i.j, 3
  %i.dc = sdiv i32 %i.h, 33
  %i.dd = srem i32 %i.dc, 2
  %i.de = mul nsw i32 %i.dd, 11
  %i.df = add nsw i32 %i.de, %i.i
  store i32 %i.df, ptr %i.a, align 4, !tbaa !9
  %i.dg = sdiv i32 %i.h, 66
  %i.dh = mul nsw i32 %i.dg, 3
  %i.di = add nsw i32 %i.db, %i.dh
  store i32 %i.di, ptr %i.c, align 8, !tbaa !46
  tail call void @ff_init_block_index(ptr noundef nonnull %0) #6
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.dk = load <4 x i32>, ptr %i.dj, align 16, !tbaa !65
  %i.dl = add nsw <4 x i32> %i.dk, splat (i32 2)
  store <4 x i32> %i.dl, ptr %i.dj, align 16, !tbaa !65
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 3136 ; 2 uses
  %i.dn = load <2 x i32>, ptr %i.dm, align 16, !tbaa !65
  %i.do = add nsw <2 x i32> %i.dn, splat (i32 1)
  store <2 x i32> %i.do, ptr %i.dm, align 16, !tbaa !65
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.dq = load <2 x ptr>, ptr %i.dp, align 16, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, <2 x ptr> %i.dq, <2 x i64> <i64 16, i64 8>
  store <2 x ptr> %i.dr, ptr %i.dp, align 16, !tbaa !66
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 3184 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !66
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.du, ptr %i.ds, align 16, !tbaa !66
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret void
}

declare void @ff_init_block_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @h261_encode_init(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !80 ; 3 uses
  switch i32 %i.d, label %.thread [
    i32 176, label %bb.b
    i32 352, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %.pre, 144
  br i1 %i.e, label %bb.d, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %.pre, 288
  br i1 %i.f, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %i.d, i32 noundef %.pre) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 10996
  store i32 %.sink, ptr %i.g, align 4, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 10392
  store ptr @h261_encode_picture_header, ptr %i.h, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 6552
  store ptr @h261_encode_mb, ptr %i.i, align 8, !tbaa !82
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 6128
  store i32 -127, ptr %i.j, align 16, !tbaa !83
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 6132
  store i32 127, ptr %1, align 4, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 6136
  store i32 20, ptr %i.k, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 5360
  store ptr @mv_penalty, ptr %i.l, align 16, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 6176
  store ptr @uni_h261_rl_len, ptr %i.m, align 16, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 6144
  store ptr @uni_h261_rl_len, ptr %i.n, align 16, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 6184
  store ptr @uni_h261_rl_len_last, ptr %i.o, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 6152
  store ptr @uni_h261_rl_len_last, ptr %i.p, align 8, !tbaa !90
  %i.q = tail call i32 @pthread_once(ptr noundef nonnull @h261_encode_init.init_static_once, ptr noundef nonnull @h261_encode_init_static) #6 ; 0 uses
  %i.r = tail call i32 @ff_mpv_encode_init(ptr noundef nonnull %0) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %.0 = phi i32 [ %i.r, %bb.d ], [ -22, %.thread ]
  ret i32 %.0
}

declare i32 @ff_mpv_encode_picture(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @ff_mpv_encode_end(ptr noundef) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @h261_encode_picture_header(ptr nofree noundef captures(none) initializes((6356, 6360), (10992, 10996)) %0) #0 {
put_bits.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 4388       ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !58
  %i.d = shl i32 %i.c, 25
  %i.e = or disjoint i32 %i.d, 512
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6328
  %i.g = load i32, ptr %i.f, align 8, !tbaa !91
  %i.h = sext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, 30000
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.m = load i32, ptr %i.l, align 4, !tbaa !93
  %i.n = sext i32 %i.m to i64
  %i.o = mul nsw i64 %i.i, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.q = load i32, ptr %i.p, align 4, !tbaa !94
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 1001
  %i.t = sdiv i64 %i.o, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 31
  %i.w = or disjoint i32 %i.v, %i.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.y = load i32, ptr %i.x, align 16, !tbaa !95
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 10996 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !48
  %i.ac = shl i32 %i.w, 4
  %i.ad = select i1 %i.z, i32 2, i32 0
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = or i32 %i.ae, %i.ab
  %i.ag = shl i32 %i.af, 2
  %i.ah = or disjoint i32 %i.ag, 3                ; 2 uses
  store i32 %i.ah, ptr %i.a, align 16, !tbaa !58
  store i32 1, ptr %i.b, align 4, !tbaa !59
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !61 ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = icmp ugt i64 %i.ao, 3
  br i1 %i.ap, label %bb.a, label %bb.b

bb.a:                                             ; preds = %put_bits.exit
  %i.aq = shl i32 %i.ah, 1
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  store i32 %i.ar, ptr %i.al, align 1, !tbaa !62
  %i.as = load ptr, ptr %i.ak, align 16, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store ptr %i.at, ptr %i.ak, align 16, !tbaa !61
  br label %put_bits.exit48

bb.b:                                             ; preds = %put_bits.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %put_bits.exit48

put_bits.exit48:                                  ; preds = %bb.a, %bb.b
  store i32 0, ptr %i.a, align 16, !tbaa !58
  store i32 32, ptr %i.b, align 4, !tbaa !59
  %i.au = load i32, ptr %i.aa, align 4, !tbaa !48
  %i.av = add i32 %i.au, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 10992
  store i32 %i.av, ptr %i.aw, align 16, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 6356
  store i32 0, ptr %i.ax, align 4, !tbaa !64
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @h261_encode_mb(ptr noundef initializes((3720, 3724)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3720 ; 12 uses
  store i32 0, ptr %i.a, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3116 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !97   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load <4 x i32>, ptr %i.d, align 4, !tbaa !65
  %i.f = icmp slt <4 x i32> %i.e, zeroinitializer
  %i.g = select <4 x i1> %i.f, <4 x i32> zeroinitializer, <4 x i32> <i32 32, i32 16, i32 8, i32 4>
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !65
  %i.j = icmp slt i32 %i.i, 0
  %i.k = select i1 %i.j, i32 0, i32 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !65
  %i.n = icmp sgt i32 %i.m, -1
  %i.o = zext i1 %i.n to i32
  %i.p = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.g)
  %op.rdx = or disjoint i32 %i.p, %i.o
  %op.rdx159 = or disjoint i32 %op.rdx, %i.k      ; 2 uses
  %i.q = or i32 %3, %2                            ; 2 uses
  %i.r = or i32 %op.rdx159, %i.q
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6356 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !64
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i32 0, ptr %i.w, align 16, !tbaa !65
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i32 0, ptr %i.x, align 4, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.z = load i32, ptr %i.y, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !63
  %i.ac = sub nsw i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !63
  br label %bb.cs

bb.d:                                             ; preds = %bb.b, %bb.a
  %.069 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.b ]
  %.0 = phi i32 [ 63, %bb.a ], [ %op.rdx159, %bb.b ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6356 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !64
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr @ff_h261_mba_bits, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !62
  %i.aj = zext i8 %i.ai to i32                    ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr @ff_h261_mba_code, i64 %i.ag
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !62
  %i.am = zext i8 %i.al to i32                    ; 3 uses
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 12 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !59 ; 5 uses
  %i.aq = icmp sgt i32 %i.ap, %i.aj
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = shl i32 %i.an, %i.aj
  %i.as = or i32 %i.ar, %i.am
  %i.at = sub nsw i32 %i.ap, %i.aj
  br label %put_bits.exit

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !61 ; 2 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = icmp ugt i64 %i.ba, 3
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = shl i32 %i.an, %i.ap
  %i.bd = sub nsw i32 %i.aj, %i.ap
  %i.be = lshr i32 %i.am, %i.bd
  %i.bf = or i32 %i.be, %i.bc
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf)
  store i32 %i.bg, ptr %i.ax, align 1, !tbaa !62
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !61
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store ptr %i.bi, ptr %i.aw, align 8, !tbaa !61
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %reass.sub = sub i32 %i.ap, %i.aj
  %i.bj = add i32 %reass.sub, 32
  %.pre = load i32, ptr %i.b, align 4, !tbaa !97
  %.pre110.pre.pre.pre = load i32, ptr %i.a, align 8, !tbaa !96
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.e, %bb.i
  %.pre110.pre.pre = phi i32 [ 0, %bb.e ], [ %.pre110.pre.pre.pre, %bb.i ] ; 4 uses
  %i.bk = phi i32 [ %i.c, %bb.e ], [ %.pre, %bb.i ]
  %.026.i.i = phi i32 [ %i.as, %bb.e ], [ %i.am, %bb.i ] ; 3 uses
  %.0.i.i = phi i32 [ %i.at, %bb.e ], [ %i.bj, %bb.i ] ; 6 uses
  store i32 %.026.i.i, ptr %i.ad, align 8, !tbaa !58
  store i32 %.0.i.i, ptr %i.ao, align 4, !tbaa !59
  store i32 0, ptr %i.ae, align 4, !tbaa !64
  %.not70 = icmp eq i32 %i.bk, 0
  br i1 %.not70, label %bb.j, label %bb.o

bb.j:                                             ; preds = %put_bits.exit
  %i.bl = add nsw i32 %.pre110.pre.pre, 1         ; 2 uses
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !96
  %.not71 = icmp eq i32 %.069, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 6416
  %i.bn = load i32, ptr %i.bm, align 16, !tbaa !99
  %.not72 = icmp eq i32 %i.bn, 0                  ; 2 uses
  br i1 %.not71, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.not72, label %.thread151, label %.thread153

.thread153:                                       ; preds = %bb.k
  %i.bo = add nsw i32 %.pre110.pre.pre, 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bp = add nsw i32 %.pre110.pre.pre, 4         ; 3 uses
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !96
  br i1 %.not72, label %.thread151, label %bb.m

bb.m:                                             ; preds = %.thread153, %bb.l
  %i.bq = phi i32 [ %i.bo, %.thread153 ], [ %i.bp, %bb.l ]
  %i.br = add nsw i32 %i.bq, 3                    ; 2 uses
  store i32 %i.br, ptr %i.a, align 8, !tbaa !96
  br label %.thread151

.thread151:                                       ; preds = %bb.k, %bb.m, %bb.l
  %i.bs = phi i32 [ %i.br, %bb.m ], [ %i.bp, %bb.l ], [ %i.bl, %bb.k ] ; 2 uses
  %.not74 = icmp eq i32 %.0, 0
  br i1 %.not74, label %.thread, label %bb.n

.thread:                                          ; preds = %.thread151
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4436 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !98
  br label %bb.q

bb.n:                                             ; preds = %.thread151
  %i.bv = add nsw i32 %i.bs, 1                    ; 2 uses
  store i32 %i.bv, ptr %i.a, align 8, !tbaa !96
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %put_bits.exit
  %.pre110.pre = phi i32 [ %i.bv, %bb.n ], [ %.pre110.pre.pre, %put_bits.exit ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4436 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !98 ; 2 uses
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = icmp ne i32 %.0, 0
  %or.cond = and i1 %i.bz, %i.by
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = add nsw i32 %.pre110.pre, 1             ; 2 uses
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !96
  br label %bb.r

bb.q:                                             ; preds = %.thread, %bb.o
  %.pre110 = phi i32 [ %i.bs, %.thread ], [ %.pre110.pre, %bb.o ]
  %i.cb = phi i32 [ %i.bu, %.thread ], [ %i.bx, %bb.o ]
  %i.cc = phi ptr [ %i.bt, %.thread ], [ %i.bw, %bb.o ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !63
  %i.cf = sub nsw i32 %i.ce, %i.cb
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !63
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cg = phi i32 [ %.pre110, %bb.q ], [ %i.ca, %bb.p ]
  %i.ch = phi ptr [ %i.cc, %bb.q ], [ %i.bw, %bb.p ]
  %i.ci = sext i32 %i.cg to i64                   ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr @ff_h261_mtype_bits, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !62
  %i.cl = zext i8 %i.ck to i32                    ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr @ff_h261_mtype_code, i64 %i.ci
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !62
  %i.co = zext i8 %i.cn to i32                    ; 3 uses
  %i.cp = icmp sgt i32 %.0.i.i, %i.cl
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = shl i32 %.026.i.i, %i.cl
  %i.cr = or i32 %i.cq, %i.co
  br label %put_bits.exit82

bb.t:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !60
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !61 ; 2 uses
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = icmp ugt i64 %i.cy, 3
  br i1 %i.cz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.da = shl i32 %.026.i.i, %.0.i.i
  %i.db = sub nsw i32 %i.cl, %.0.i.i
  %i.dc = lshr i32 %i.co, %i.db
  %i.dd = or i32 %i.dc, %i.da
  %i.de = tail call i32 @llvm.bswap.i32(i32 %i.dd)
  store i32 %i.de, ptr %i.cv, align 1, !tbaa !62
  %i.df = load ptr, ptr %i.cu, align 8, !tbaa !61
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store ptr %i.dg, ptr %i.cu, align 8, !tbaa !61
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %reass.sub.i79 = add nsw i32 %.0.i.i, 32
  %.pre111 = load i32, ptr %i.a, align 8, !tbaa !96
  %.pre116 = sext i32 %.pre111 to i64
  br label %put_bits.exit82

put_bits.exit82:                                  ; preds = %bb.s, %bb.w
  %.pre-phi = phi i64 [ %i.ci, %bb.s ], [ %.pre116, %bb.w ]
  %.026.i.i80 = phi i32 [ %i.cr, %bb.s ], [ %i.co, %bb.w ] ; 2 uses
  %.0.i.i.pn = phi i32 [ %.0.i.i, %bb.s ], [ %reass.sub.i79, %bb.w ]
  %.0.i.i81 = sub i32 %.0.i.i.pn, %i.cl           ; 2 uses
  store i32 %.026.i.i80, ptr %i.ad, align 8, !tbaa !58
  store i32 %.0.i.i81, ptr %i.ao, align 4, !tbaa !59
  %i.dh = getelementptr inbounds [2 x i8], ptr @ff_h261_mtype_map, i64 %.pre-phi
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !100
  %i.dj = zext i16 %i.di to i32                   ; 3 uses
  store i32 %i.dj, ptr %i.a, align 8, !tbaa !96
  %i.dk = and i32 %i.dj, 2048
  %.not75 = icmp eq i32 %i.dk, 0
  br i1 %.not75, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %put_bits.exit82
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !63
  %i.dn = load i32, ptr %i.ch, align 4, !tbaa !98
  %i.do = add nsw i32 %i.dn, %i.dm
  tail call void @ff_set_qscale(ptr noundef nonnull %0, i32 noundef %i.do) #6
  %i.dp = load i32, ptr %i.dl, align 8, !tbaa !63 ; 4 uses
  %i.dq = load i32, ptr %i.ad, align 8, !tbaa !58 ; 2 uses
  %i.dr = load i32, ptr %i.ao, align 4, !tbaa !59 ; 4 uses
  %i.ds = icmp sgt i32 %i.dr, 5
  br i1 %i.ds, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dt = shl i32 %i.dq, 5
  %i.du = or i32 %i.dt, %i.dp
  br label %put_bits.exit86

bb.z:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !60
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !61 ; 2 uses
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp ugt i64 %i.eb, 3
  br i1 %i.ec, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ed = shl i32 %i.dq, %i.dr
  %i.ee = sub nsw i32 5, %i.dr
  %i.ef = lshr i32 %i.dp, %i.ee
  %i.eg = or i32 %i.ef, %i.ed
  %i.eh = tail call i32 @llvm.bswap.i32(i32 %i.eg)
  store i32 %i.eh, ptr %i.dy, align 1, !tbaa !62
  %i.ei = load ptr, ptr %i.dx, align 8, !tbaa !61
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  store ptr %i.ej, ptr %i.dx, align 8, !tbaa !61
  br label %put_bits.exit86

bb.ab:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %put_bits.exit86

put_bits.exit86:                                  ; preds = %bb.aa, %bb.ab, %bb.y
  %.sink = phi i32 [ -5, %bb.y ], [ 27, %bb.ab ], [ 27, %bb.aa ]
  %.026.i.i84 = phi i32 [ %i.du, %bb.y ], [ %i.dp, %bb.ab ], [ %i.dp, %bb.aa ] ; 2 uses
  %i.ek = add nsw i32 %i.dr, %.sink               ; 2 uses
  store i32 %.026.i.i84, ptr %i.ad, align 8, !tbaa !58
  store i32 %i.ek, ptr %i.ao, align 4, !tbaa !59
  %.pre112 = load i32, ptr %i.a, align 8, !tbaa !96
  br label %bb.ac

bb.ac:                                            ; preds = %put_bits.exit86, %put_bits.exit82
  %i.el = phi i32 [ %i.ek, %put_bits.exit86 ], [ %.0.i.i81, %put_bits.exit82 ] ; 6 uses
  %i.em = phi i32 [ %.026.i.i84, %put_bits.exit86 ], [ %.026.i.i80, %put_bits.exit82 ] ; 3 uses
  %i.en = phi i32 [ %.pre112, %put_bits.exit86 ], [ %i.dj, %put_bits.exit82 ] ; 2 uses
  %i.eo = and i32 %i.en, 8
  %.not76 = icmp eq i32 %i.eo, 0
  br i1 %.not76, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = ashr i32 %2, 1                          ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 2816 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 16, !tbaa !65
  %i.es = sub nsw i32 %i.ep, %i.er
  %i.et = ashr i32 %3, 1                          ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2820 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !65
  %i.ew = sub nsw i32 %i.et, %i.ev
  store i32 %i.ep, ptr %i.eq, align 16, !tbaa !65
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !65
  %i.ex = sext i32 %i.es to i64
  %i.ey = getelementptr [2 x i8], ptr @h261_mv_codes, i64 %i.ex ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 64
  %i.fa = getelementptr i8, ptr %i.ey, i64 65
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !62
  %i.fc = zext i8 %i.fb to i32                    ; 5 uses
  %i.fd = load i8, ptr %i.ez, align 2, !tbaa !62
  %i.fe = zext i8 %i.fd to i32                    ; 3 uses
  %i.ff = icmp sgt i32 %i.el, %i.fc
  br i1 %i.ff, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fg = shl i32 %i.em, %i.fc
  %i.fh = or i32 %i.fg, %i.fe
  %i.fi = sub nsw i32 %i.el, %i.fc
  br label %h261_encode_motion.exit

bb.af:                                            ; preds = %bb.ad
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !60
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 16, !tbaa !61 ; 2 uses
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = icmp ugt i64 %i.fp, 3
  br i1 %i.fq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fr = shl i32 %i.em, %i.el
  %i.fs = sub nsw i32 %i.fc, %i.el
  %i.ft = lshr i32 %i.fe, %i.fs
  %i.fu = or i32 %i.ft, %i.fr
  %i.fv = tail call i32 @llvm.bswap.i32(i32 %i.fu)
  store i32 %i.fv, ptr %i.fm, align 1, !tbaa !62
  %i.fw = load ptr, ptr %i.fl, align 16, !tbaa !61
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store ptr %i.fx, ptr %i.fl, align 16, !tbaa !61
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %reass.sub105 = sub i32 %i.el, %i.fc
  %i.fy = add i32 %reass.sub105, 32
  br label %h261_encode_motion.exit

h261_encode_motion.exit:                          ; preds = %bb.ae, %bb.ai
  %.026.i.i.i = phi i32 [ %i.fh, %bb.ae ], [ %i.fe, %bb.ai ] ; 3 uses
  %.0.i.i.i = phi i32 [ %i.fi, %bb.ae ], [ %i.fy, %bb.ai ] ; 6 uses
  store i32 %.026.i.i.i, ptr %i.ad, align 16, !tbaa !58
  store i32 %.0.i.i.i, ptr %i.ao, align 4, !tbaa !59
  %i.fz = sext i32 %i.ew to i64
  %i.ga = getelementptr [2 x i8], ptr @h261_mv_codes, i64 %i.fz ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 64
  %i.gc = getelementptr i8, ptr %i.ga, i64 65
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !62
  %i.ge = zext i8 %i.gd to i32                    ; 4 uses
  %i.gf = load i8, ptr %i.gb, align 2, !tbaa !62
  %i.gg = zext i8 %i.gf to i32                    ; 3 uses
  %i.gh = icmp sgt i32 %.0.i.i.i, %i.ge
  br i1 %i.gh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %h261_encode_motion.exit
  %i.gi = shl i32 %.026.i.i.i, %i.ge
  %i.gj = or i32 %i.gi, %i.gg
  br label %h261_encode_motion.exit91

bb.ak:                                            ; preds = %h261_encode_motion.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !60
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 16, !tbaa !61 ; 2 uses
  %i.go = ptrtoint ptr %i.gl to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = icmp ugt i64 %i.gq, 3
  br i1 %i.gr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gs = shl i32 %.026.i.i.i, %.0.i.i.i
  %i.gt = sub nsw i32 %i.ge, %.0.i.i.i
  %i.gu = lshr i32 %i.gg, %i.gt
  %i.gv = or i32 %i.gu, %i.gs
  %i.gw = tail call i32 @llvm.bswap.i32(i32 %i.gv)
  store i32 %i.gw, ptr %i.gn, align 1, !tbaa !62
  %i.gx = load ptr, ptr %i.gm, align 16, !tbaa !61
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  store ptr %i.gy, ptr %i.gm, align 16, !tbaa !61
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %reass.sub.i88 = add nsw i32 %.0.i.i.i, 32
  br label %h261_encode_motion.exit91

h261_encode_motion.exit91:                        ; preds = %bb.aj, %bb.an
  %.026.i.i.i89 = phi i32 [ %i.gj, %bb.aj ], [ %i.gg, %bb.an ] ; 2 uses
  %.0.i.i.i.pn = phi i32 [ %.0.i.i.i, %bb.aj ], [ %reass.sub.i88, %bb.an ]
  %.0.i.i.i90 = sub i32 %.0.i.i.i.pn, %i.ge       ; 2 uses
  store i32 %.026.i.i.i89, ptr %i.ad, align 16, !tbaa !58
  store i32 %.0.i.i.i90, ptr %i.ao, align 4, !tbaa !59
  %.pre113 = load i32, ptr %i.a, align 8, !tbaa !96
  br label %bb.ao

bb.ao:                                            ; preds = %h261_encode_motion.exit91, %bb.ac
  %i.gz = phi i32 [ %.0.i.i.i90, %h261_encode_motion.exit91 ], [ %i.el, %bb.ac ] ; 6 uses
  %i.ha = phi i32 [ %.026.i.i.i89, %h261_encode_motion.exit91 ], [ %i.em, %bb.ac ] ; 3 uses
  %i.hb = phi i32 [ %.pre113, %h261_encode_motion.exit91 ], [ %i.en, %bb.ac ]
  %i.hc = and i32 %i.hb, 1024
  %.not77 = icmp eq i32 %i.hc, 0
  br i1 %.not77, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hd = zext nneg i32 %.0 to i64
  %i.he = getelementptr [2 x i8], ptr @ff_h261_cbp_tab, i64 %i.hd ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 -2
  %i.hg = getelementptr i8, ptr %i.he, i64 -1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !62
  %i.hi = zext i8 %i.hh to i32                    ; 5 uses
  %i.hj = load i8, ptr %i.hf, align 2, !tbaa !62
  %i.hk = zext i8 %i.hj to i32                    ; 3 uses
  %i.hl = icmp sgt i32 %i.gz, %i.hi
  br i1 %i.hl, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hm = shl i32 %i.ha, %i.hi
  %i.hn = or i32 %i.hm, %i.hk
  %i.ho = sub nsw i32 %i.gz, %i.hi
  br label %put_bits.exit95

bb.ar:                                            ; preds = %bb.ap
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !60
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !61 ; 2 uses
  %i.ht = ptrtoint ptr %i.hq to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = icmp ugt i64 %i.hv, 3
  br i1 %i.hw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hx = shl i32 %i.ha, %i.gz
  %i.hy = sub nsw i32 %i.hi, %i.gz
  %i.hz = lshr i32 %i.hk, %i.hy
  %i.ia = or i32 %i.hz, %i.hx
  %i.ib = tail call i32 @llvm.bswap.i32(i32 %i.ia)
  store i32 %i.ib, ptr %i.hs, align 1, !tbaa !62
  %i.ic = load ptr, ptr %i.hr, align 8, !tbaa !61
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  store ptr %i.id, ptr %i.hr, align 8, !tbaa !61
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %reass.sub106 = sub i32 %i.gz, %i.hi
  %i.ie = add i32 %reass.sub106, 32
  br label %put_bits.exit95

put_bits.exit95:                                  ; preds = %bb.aq, %bb.au
  %.026.i.i93 = phi i32 [ %i.hn, %bb.aq ], [ %i.hk, %bb.au ] ; 2 uses
  %.0.i.i94 = phi i32 [ %i.ho, %bb.aq ], [ %i.ie, %bb.au ] ; 2 uses
  store i32 %.026.i.i93, ptr %i.ad, align 8, !tbaa !58
  store i32 %.0.i.i94, ptr %i.ao, align 4, !tbaa !59
  br label %bb.av

bb.av:                                            ; preds = %put_bits.exit95, %bb.ao
  %i.if = phi i32 [ %.0.i.i94, %put_bits.exit95 ], [ %i.gz, %bb.ao ]
  %i.ig = phi i32 [ %.026.i.i93, %put_bits.exit95 ], [ %i.ha, %bb.ao ]
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 4408 ; 7 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 21 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %h261_encode_block.exit
  %i.il = phi i32 [ %i.if, %bb.av ], [ %i.oy, %h261_encode_block.exit ] ; 12 uses
  %i.im = phi i32 [ %i.ig, %bb.av ], [ %i.oz, %h261_encode_block.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %bb.av ], [ %indvars.iv.next, %h261_encode_block.exit ] ; 4 uses
  %i.in = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.io = load i32, ptr %i.b, align 4, !tbaa !97
  %.not.i = icmp eq i32 %i.io, 0
  %i.ip = load i16, ptr %i.in, align 2, !tbaa !100 ; 6 uses
  br i1 %.not.i, label %bb.bj, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iq = icmp sgt i16 %i.ip, 254
  br i1 %i.iq, label %.thread.sink.split.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ir = icmp slt i16 %i.ip, 1
  br i1 %i.ir, label %.thread.sink.split.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.is = zext nneg i16 %i.ip to i32
  %i.it = icmp eq i16 %i.ip, 128
  br i1 %i.it, label %bb.ba, label %.thread.i

bb.ba:                                            ; preds = %bb.az
  %i.iu = icmp sgt i32 %i.il, 8
  br i1 %i.iu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.iv = shl i32 %i.im, 8
  %i.iw = or disjoint i32 %i.iv, 255
  br label %.sink.split

bb.bc:                                            ; preds = %bb.ba
  %i.ix = load ptr, ptr %i.ih, align 8, !tbaa !60
  %i.iy = load ptr, ptr %i.ii, align 8, !tbaa !61 ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %i.jc = icmp ugt i64 %i.jb, 3
  br i1 %i.jc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jd = shl i32 %i.im, %i.il
  %i.je = sub nsw i32 8, %i.il
  %i.jf = lshr i32 255, %i.je
  %i.jg = or i32 %i.jf, %i.jd
  %i.jh = tail call i32 @llvm.bswap.i32(i32 %i.jg)
  store i32 %i.jh, ptr %i.iy, align 1, !tbaa !62
  %i.ji = load ptr, ptr %i.ii, align 8, !tbaa !61
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store ptr %i.jj, ptr %i.ii, align 8, !tbaa !61
  br label %.sink.split

bb.be:                                            ; preds = %bb.bc
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %.sink.split

.thread.sink.split.i:                             ; preds = %bb.ay, %bb.ax
  %.sink103.i = phi i16 [ 254, %bb.ax ], [ 1, %bb.ay ]
  %.04780.ph.i = phi i32 [ 254, %bb.ax ], [ 1, %bb.ay ]
  store i16 %.sink103.i, ptr %i.in, align 2, !tbaa !100
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.sink.split.i, %bb.az
  %.04780.i = phi i32 [ %i.is, %bb.az ], [ %.04780.ph.i, %.thread.sink.split.i ] ; 4 uses
  %i.jk = icmp sgt i32 %i.il, 8
  br i1 %i.jk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.thread.i
  %i.jl = shl i32 %i.im, 8
  %i.jm = or i32 %i.jl, %.04780.i
  br label %.sink.split

bb.bg:                                            ; preds = %.thread.i
  %i.jn = load ptr, ptr %i.ih, align 8, !tbaa !60
  %i.jo = load ptr, ptr %i.ii, align 8, !tbaa !61 ; 2 uses
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = icmp ugt i64 %i.jr, 3
  br i1 %i.js, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.jt = shl i32 %i.im, %i.il
  %i.ju = sub nsw i32 8, %i.il
  %i.jv = lshr i32 %.04780.i, %i.ju
  %i.jw = or i32 %i.jv, %i.jt
  %i.jx = tail call i32 @llvm.bswap.i32(i32 %i.jw)
  store i32 %i.jx, ptr %i.jo, align 1, !tbaa !62
  %i.jy = load ptr, ptr %i.ii, align 8, !tbaa !61
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store ptr %i.jz, ptr %i.ii, align 8, !tbaa !61
  br label %.sink.split

bb.bi:                                            ; preds = %bb.bg
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %.sink.split

bb.bj:                                            ; preds = %bb.aw
  switch i16 %i.ip, label %bb.bq [
    i16 1, label %bb.bk
    i16 -1, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bj
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !65
  %i.kc = icmp sgt i32 %i.kb, -1
  br i1 %i.kc, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  %i.kd = icmp sgt i16 %i.ip, 0
  %i.ke = select i1 %i.kd, i32 2, i32 3           ; 4 uses
  %i.kf = icmp sgt i32 %i.il, 2
  br i1 %i.kf, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kg = shl i32 %i.im, 2
  %i.kh = or disjoint i32 %i.kg, %i.ke
  br label %.sink.split

bb.bn:                                            ; preds = %bb.bl
  %i.ki = load ptr, ptr %i.ih, align 8, !tbaa !60
  %i.kj = load ptr, ptr %i.ii, align 8, !tbaa !61 ; 2 uses
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = icmp ugt i64 %i.km, 3
  br i1 %i.kn, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ko = shl i32 %i.im, %i.il
  %i.kp = sub nsw i32 2, %i.il
  %i.kq = lshr i32 %i.ke, %i.kp
  %i.kr = or i32 %i.kq, %i.ko
  %i.ks = tail call i32 @llvm.bswap.i32(i32 %i.kr)
  store i32 %i.ks, ptr %i.kj, align 1, !tbaa !62
  %i.kt = load ptr, ptr %i.ii, align 8, !tbaa !61
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  store ptr %i.ku, ptr %i.ii, align 8, !tbaa !61
  br label %.sink.split

bb.bp:                                            ; preds = %bb.bn
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bm, %bb.bo, %bb.bp, %bb.bf, %bb.bh, %bb.bi, %bb.bb, %bb.bd, %bb.be
  %.sink105.i.sink = phi i32 [ 24, %bb.bh ], [ 24, %bb.bd ], [ -8, %bb.bb ], [ 24, %bb.be ], [ -8, %bb.bf ], [ 24, %bb.bi ], [ -2, %bb.bm ], [ 30, %bb.bp ], [ 30, %bb.bo ]
  %.026.i.i63.i.sink = phi i32 [ %.04780.i, %bb.bh ], [ 255, %bb.bd ], [ %i.iw, %bb.bb ], [ 255, %bb.be ], [ %i.jm, %bb.bf ], [ %.04780.i, %bb.bi ], [ %i.kh, %bb.bm ], [ %i.ke, %bb.bp ], [ %i.ke, %bb.bo ] ; 2 uses
  %i.kv = add nsw i32 %.sink105.i.sink, %i.il     ; 2 uses
  store i32 %.026.i.i63.i.sink, ptr %i.ad, align 8, !tbaa !58
  store i32 %i.kv, ptr %i.ao, align 4, !tbaa !59
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split, %bb.bk, %bb.bj
  %i.kw = phi i32 [ %i.il, %bb.bk ], [ %i.il, %bb.bj ], [ %i.kv, %.sink.split ] ; 2 uses
  %i.kx = phi i32 [ %i.im, %bb.bk ], [ %i.im, %bb.bj ], [ %.026.i.i63.i.sink, %.sink.split ] ; 2 uses
  %.045.i = phi i32 [ 0, %bb.bk ], [ 0, %bb.bj ], [ 1, %.sink.split ] ; 3 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !65 ; 3 uses
  %.not5581.i = icmp sgt i32 %.045.i, %i.kz
  br i1 %.not5581.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bq
  %i.la = add nsw i32 %.045.i, -1
  %i.lb = zext nneg i32 %.045.i to i64
  %i.lc = add nuw i32 %i.kz, 1
  %wide.trip.count.i = zext i32 %i.lc to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.ck, %.lr.ph.i
  %i.ld = phi i32 [ %i.kw, %.lr.ph.i ], [ %i.oc, %bb.ck ] ; 10 uses
  %i.le = phi i32 [ %i.kx, %.lr.ph.i ], [ %i.od, %bb.ck ] ; 5 uses
  %indvars.iv.i = phi i64 [ %i.lb, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ck ] ; 3 uses
  %.083.i = phi i32 [ %i.la, %.lr.ph.i ], [ %.1.i, %bb.ck ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ik, i64 %indvars.iv.i
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !62
  %i.lh = zext i8 %i.lg to i64
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !100 ; 2 uses
  %i.lk = sext i16 %i.lj to i32                   ; 2 uses
  %.not56.i = icmp eq i16 %i.lj, 0
  br i1 %.not56.i, label %bb.ck, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ll = xor i32 %.083.i, -1
  %i.lm = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.ln = add i32 %i.lm, %i.ll                    ; 3 uses
  %i.lo = icmp slt i32 %i.ln, 27
  br i1 %i.lo, label %bb.bt, label %bb.cb

bb.bt:                                            ; preds = %bb.bs
  %i.lp = add nsw i32 %i.lk, 15                   ; 2 uses
  %i.lq = icmp ult i32 %i.lp, 31
  br i1 %i.lq, label %bb.bu, label %bb.cb

bb.bu:                                            ; preds = %bb.bt
  %i.lr = sext i32 %i.ln to i64
  %i.ls = getelementptr inbounds [128 x i8], ptr @vlc_lut, i64 %i.lr
  %i.lt = zext nneg i32 %i.lp to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 4, !tbaa !101 ; 2 uses
  %.not57.i = icmp eq i8 %i.lv, 0
  br i1 %.not57.i, label %bb.cb, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.lw = zext i8 %i.lv to i32                    ; 5 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !103
  %i.lz = zext i16 %i.ly to i32                   ; 3 uses
  %i.ma = icmp sgt i32 %i.ld, %i.lw
  br i1 %i.ma, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.mb = shl i32 %i.le, %i.lw
  %i.mc = or i32 %i.mb, %i.lz
  %i.md = sub nsw i32 %i.ld, %i.lw
  br label %.sink.split.i

bb.bx:                                            ; preds = %bb.bv
  %i.me = load ptr, ptr %i.ih, align 8, !tbaa !60
  %i.mf = load ptr, ptr %i.ii, align 8, !tbaa !61 ; 2 uses
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = icmp ugt i64 %i.mi, 3
  br i1 %i.mj, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.mk = shl i32 %i.le, %i.ld
  %i.ml = sub nsw i32 %i.lw, %i.ld
  %i.mm = lshr i32 %i.lz, %i.ml
  %i.mn = or i32 %i.mm, %i.mk
  %i.mo = tail call i32 @llvm.bswap.i32(i32 %i.mn)
  store i32 %i.mo, ptr %i.mf, align 1, !tbaa !62
  %i.mp = load ptr, ptr %i.ii, align 8, !tbaa !61
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store ptr %i.mq, ptr %i.ii, align 8, !tbaa !61
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %reass.sub107 = sub i32 %i.ld, %i.lw
  %i.mr = add i32 %reass.sub107, 32
  br label %.sink.split.i

bb.cb:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.ms = or i32 %i.ln, 64                        ; 4 uses
  %i.mt = icmp sgt i32 %i.ld, 12
  br i1 %i.mt, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.mu = shl i32 %i.le, 12
  %i.mv = or i32 %i.mu, %i.ms
  br label %put_bits.exit73.i

bb.cd:                                            ; preds = %bb.cb
  %i.mw = load ptr, ptr %i.ih, align 8, !tbaa !60
  %i.mx = load ptr, ptr %i.ii, align 8, !tbaa !61 ; 2 uses
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = icmp ugt i64 %i.na, 3
  br i1 %i.nb, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.nc = shl i32 %i.le, %i.ld
  %i.nd = sub nsw i32 12, %i.ld
  %i.ne = lshr i32 %i.ms, %i.nd
  %i.nf = or i32 %i.ne, %i.nc
  %i.ng = tail call i32 @llvm.bswap.i32(i32 %i.nf)
  store i32 %i.ng, ptr %i.mx, align 1, !tbaa !62
  %i.nh = load ptr, ptr %i.ii, align 8, !tbaa !61
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  store ptr %i.ni, ptr %i.ii, align 8, !tbaa !61
  br label %put_bits.exit73.i

bb.cf:                                            ; preds = %bb.cd
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %put_bits.exit73.i

put_bits.exit73.i:                                ; preds = %bb.cf, %bb.ce, %bb.cc
  %.sink106.i = phi i32 [ -12, %bb.cc ], [ 20, %bb.cf ], [ 20, %bb.ce ]
  %.026.i.i71.i = phi i32 [ %i.mv, %bb.cc ], [ %i.ms, %bb.cf ], [ %i.ms, %bb.ce ] ; 3 uses
  %i.nj = add nsw i32 %.sink106.i, %i.ld          ; 5 uses
  store i32 %.026.i.i71.i, ptr %i.ad, align 8, !tbaa !58
  store i32 %i.nj, ptr %i.ao, align 4, !tbaa !59
  %i.nk = and i32 %i.lk, 255                      ; 4 uses
  %i.nl = icmp sgt i32 %i.nj, 8
  br i1 %i.nl, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %put_bits.exit73.i
  %i.nm = shl i32 %.026.i.i71.i, 8
  %i.nn = or disjoint i32 %i.nm, %i.nk
  br label %put_sbits.exit.i

bb.ch:                                            ; preds = %put_bits.exit73.i
  %i.no = load ptr, ptr %i.ih, align 8, !tbaa !60
  %i.np = load ptr, ptr %i.ii, align 8, !tbaa !61 ; 2 uses
  %i.nq = ptrtoint ptr %i.no to i64
  %i.nr = ptrtoint ptr %i.np to i64
  %i.ns = sub i64 %i.nq, %i.nr
  %i.nt = icmp ugt i64 %i.ns, 3
  br i1 %i.nt, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.nu = shl i32 %.026.i.i71.i, %i.nj
  %i.nv = sub nsw i32 8, %i.nj
  %i.nw = lshr i32 %i.nk, %i.nv
  %i.nx = or i32 %i.nw, %i.nu
  %i.ny = tail call i32 @llvm.bswap.i32(i32 %i.nx)
  store i32 %i.ny, ptr %i.np, align 1, !tbaa !62
  %i.nz = load ptr, ptr %i.ii, align 8, !tbaa !61
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  store ptr %i.oa, ptr %i.ii, align 8, !tbaa !61
  br label %put_sbits.exit.i

bb.cj:                                            ; preds = %bb.ch
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %put_sbits.exit.i

put_sbits.exit.i:                                 ; preds = %bb.cj, %bb.ci, %bb.cg
  %.sink107.i = phi i32 [ -8, %bb.cg ], [ 24, %bb.cj ], [ 24, %bb.ci ]
  %.026.i.i.i.i = phi i32 [ %i.nn, %bb.cg ], [ %i.nk, %bb.cj ], [ %i.nk, %bb.ci ]
  %i.ob = add nsw i32 %.sink107.i, %i.nj
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %put_sbits.exit.i, %bb.ca, %bb.bw
  %.026.i.i67.sink.i = phi i32 [ %.026.i.i.i.i, %put_sbits.exit.i ], [ %i.mc, %bb.bw ], [ %i.lz, %bb.ca ] ; 2 uses
  %.0.i.i68.sink.i = phi i32 [ %i.ob, %put_sbits.exit.i ], [ %i.md, %bb.bw ], [ %i.mr, %bb.ca ] ; 2 uses
  store i32 %.026.i.i67.sink.i, ptr %i.ad, align 8, !tbaa !58
  store i32 %.0.i.i68.sink.i, ptr %i.ao, align 4, !tbaa !59
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split.i, %bb.br
  %i.oc = phi i32 [ %i.ld, %bb.br ], [ %.0.i.i68.sink.i, %.sink.split.i ] ; 2 uses
  %i.od = phi i32 [ %i.le, %bb.br ], [ %.026.i.i67.sink.i, %.sink.split.i ] ; 2 uses
  %.1.i = phi i32 [ %.083.i, %bb.br ], [ %i.lm, %.sink.split.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.br, !llvm.loop !104

._crit_edge.i:                                    ; preds = %bb.ck, %bb.bq
  %i.oe = phi i32 [ %i.kw, %bb.bq ], [ %i.oc, %bb.ck ] ; 5 uses
  %i.of = phi i32 [ %i.kx, %bb.bq ], [ %i.od, %bb.ck ] ; 3 uses
  %i.og = icmp sgt i32 %i.kz, -1
  br i1 %i.og, label %bb.cl, label %h261_encode_block.exit

bb.cl:                                            ; preds = %._crit_edge.i
  %i.oh = icmp sgt i32 %i.oe, 2
  br i1 %i.oh, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.oi = shl i32 %i.of, 2
  %i.oj = or disjoint i32 %i.oi, 2
  br label %put_bits.exit78.i

bb.cn:                                            ; preds = %bb.cl
  %i.ok = load ptr, ptr %i.ih, align 8, !tbaa !60
  %i.ol = load ptr, ptr %i.ii, align 8, !tbaa !61 ; 2 uses
  %i.om = ptrtoint ptr %i.ok to i64
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = sub i64 %i.om, %i.on
  %i.op = icmp ugt i64 %i.oo, 3
  br i1 %i.op, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.oq = shl i32 %i.of, %i.oe
  %i.or = sub nsw i32 2, %i.oe
  %i.os = lshr i32 2, %i.or
  %i.ot = or i32 %i.os, %i.oq
  %i.ou = tail call i32 @llvm.bswap.i32(i32 %i.ot)
  store i32 %i.ou, ptr %i.ol, align 1, !tbaa !62
  %i.ov = load ptr, ptr %i.ii, align 8, !tbaa !61
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  store ptr %i.ow, ptr %i.ii, align 8, !tbaa !61
  br label %put_bits.exit78.i

bb.cp:                                            ; preds = %bb.cn
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %put_bits.exit78.i

put_bits.exit78.i:                                ; preds = %bb.cp, %bb.co, %bb.cm
  %.sink108.i = phi i32 [ -2, %bb.cm ], [ 30, %bb.cp ], [ 30, %bb.co ]
  %.026.i.i76.i = phi i32 [ %i.oj, %bb.cm ], [ 2, %bb.cp ], [ 2, %bb.co ] ; 2 uses
  %i.ox = add nsw i32 %.sink108.i, %i.oe          ; 2 uses
  store i32 %.026.i.i76.i, ptr %i.ad, align 8, !tbaa !58
  store i32 %i.ox, ptr %i.ao, align 4, !tbaa !59
  br label %h261_encode_block.exit

h261_encode_block.exit:                           ; preds = %._crit_edge.i, %put_bits.exit78.i
  %i.oy = phi i32 [ %i.oe, %._crit_edge.i ], [ %i.ox, %put_bits.exit78.i ]
  %i.oz = phi i32 [ %i.of, %._crit_edge.i ], [ %.026.i.i76.i, %put_bits.exit78.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.cq, label %bb.aw, !llvm.loop !106

bb.cq:                                            ; preds = %h261_encode_block.exit
  %i.pa = load i32, ptr %i.a, align 8, !tbaa !96
  %i.pb = and i32 %i.pa, 8
  %.not78 = icmp eq i32 %i.pb, 0
  br i1 %.not78, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i32 0, ptr %i.pc, align 16, !tbaa !65
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i32 0, ptr %i.pd, align 4, !tbaa !65
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr, %bb.c
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h261_encode_init_static() #3 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @uni_h261_rl_len, i8 20, i64 8192, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @uni_h261_rl_len_last, i8 22, i64 8192, i1 false)
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h261_mv_tab, i64 2), align 2, !tbaa !62
  %i.b = shl i8 %i.a, 1                           ; 2 uses
  %i.c = or disjoint i8 %i.b, 1                   ; 2 uses
  store i8 %i.c, ptr getelementptr inbounds nuw (i8, ptr @h261_mv_codes, i64 62), align 2, !tbaa !62
  store i8 %i.c, ptr getelementptr inbounds nuw (i8, ptr @h261_mv_codes, i64 126), align 2, !tbaa !62
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_h261_mv_tab, i64 3), align 1, !tbaa !62
  %i.e = add i8 %i.d, 1                           ; 3 uses
  store i8 %i.e, ptr getelementptr inbounds nuw (i8, ptr @h261_mv_codes, i64 63), align 1, !tbaa !62
  store i8 %i.e, ptr getelementptr inbounds nuw (i8, ptr @h261_mv_codes, i64 127), align 1, !tbaa !62
  br label %bb.d

bb.b:                                             ; preds = %bb.a, %bb.b
  %.04344 = phi i64 [ 1, %bb.a ], [ %i.am, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr @ff_h261_tcoeff_run, i64 %.04344
  %i.g = load i8, ptr %i.f, align 1, !tbaa !62
  %i.h = sext i8 %i.g to i32                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr @ff_h261_tcoeff_level, i64 %.04344
  %i.j = load i8, ptr %i.i, align 1, !tbaa !62
  %i.k = sext i8 %i.j to i32                      ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @ff_h261_tcoeff_vlc, i64 %.04344 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !100
  %i.o = trunc i16 %i.n to i8                     ; 2 uses
  %i.p = load i16, ptr %i.l, align 4, !tbaa !100
  %i.q = zext i32 %i.h to i64
  %i.r = getelementptr inbounds nuw [128 x i8], ptr @vlc_lut, i64 %i.q ; 2 uses
  %i.s = add nsw i32 %i.k, 15
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.t ; 3 uses
  %i.v = add i8 %i.o, 1                           ; 4 uses
  %i.w = shl i16 %i.p, 1                          ; 2 uses
  store i8 %i.v, ptr %i.u, align 4, !tbaa !62
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 0, ptr %.sroa.215.0..sroa_idx, align 1
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i16 %i.w, ptr %.sroa.316.0..sroa_idx, align 2, !tbaa !100
  %i.x = sub nsw i32 15, %i.k
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y ; 3 uses
  %i.aa = or disjoint i16 %i.w, 1
  store i8 %i.v, ptr %i.z, align 4, !tbaa !62
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store i16 %i.aa, ptr %.sroa.3.0..sroa_idx, align 2, !tbaa !100
  %i.ab = shl nsw i32 %i.h, 7                     ; 2 uses
  %i.ac = add nsw i32 %i.k, 64
  %i.ad = add nsw i32 %i.ac, %i.ab
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr @uni_h261_rl_len, i64 %i.ae
  store i8 %i.v, ptr %i.af, align 1, !tbaa !62
  %reass.sub46 = sub nsw i32 %i.ab, %i.k
  %i.ag = add nsw i32 %reass.sub46, 64
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr @uni_h261_rl_len, i64 %i.ah
  store i8 %i.v, ptr %i.ai, align 1, !tbaa !62
  %i.aj = add i8 %i.o, 3                          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr @uni_h261_rl_len_last, i64 %i.ae
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr @uni_h261_rl_len_last, i64 %i.ah
  store i8 %i.aj, ptr %i.al, align 1, !tbaa !62
  %i.am = add nuw nsw i64 %.04344, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, 64
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !107

bb.c:                                             ; preds = %bb.d
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @h261_mv_codes, i64 64), align 16, !tbaa !62
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @h261_mv_codes, i64 65), align 1, !tbaa !62
  ret void

bb.d:                                             ; preds = %.preheader, %bb.d
  %i.an = phi i8 [ %i.e, %.preheader ], [ %i.be, %bb.d ] ; 2 uses
  %i.ao = phi i8 [ %i.b, %.preheader ], [ %i.aw, %bb.d ] ; 2 uses
  %.045 = phi i64 [ 1, %.preheader ], [ %i.at, %bb.d ] ; 5 uses
  %i.ap = getelementptr [2 x i8], ptr @h261_mv_codes, i64 %.045 ; 2 uses
  store i8 %i.ao, ptr %i.ap, align 2, !tbaa !62
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @h261_mv_codes, i64 64), i64 %.045 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 2, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.an, ptr %i.ar, align 1, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 %i.an, ptr %i.as, align 1, !tbaa !62
  %i.at = add nuw nsw i64 %.045, 1                ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @ff_h261_mv_tab, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 2, !tbaa !62
  %i.aw = shl i8 %i.av, 1                         ; 2 uses
  %i.ax = or disjoint i8 %i.aw, 1                 ; 2 uses
  %i.ay = xor i64 %.045, -1
  %i.az = getelementptr inbounds [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @h261_mv_codes, i64 64), i64 %i.ay ; 2 uses
  store i8 %i.ax, ptr %i.az, align 2, !tbaa !62
  %i.ba = sub nuw nsw i64 31, %.045
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @h261_mv_codes, i64 64), i64 %i.ba ; 2 uses
  store i8 %i.ax, ptr %i.bb, align 2, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = add i8 %i.bd, 1                         ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !62
  %i.bh = icmp eq i64 %i.at, 16
  br i1 %i.bh, label %bb.c, label %bb.d
}

declare i32 @ff_mpv_encode_init(ptr noundef) local_unnamed_addr #1

declare void @ff_set_qscale(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 3108}
!10 = !{!"MPVEncContext", !11, i64 0, !38, i64 4384, !6, i64 4416, !6, i64 4420, !22, i64 4424, !6, i64 4432, !6, i64 4436, !6, i64 4440, !6, i64 4444, !6, i64 4448, !6, i64 4452, !6, i64 4456, !6, i64 4460, !35, i64 4464, !39, i64 4472, !40, i64 4480, !41, i64 4496, !42, i64 4576, !43, i64 4608, !6, i64 5896, !6, i64 5900, !23, i64 5904, !23, i64 5912, !23, i64 5920, !23, i64 5928, !23, i64 5936, !23, i64 5944, !7, i64 5952, !7, i64 6016, !7, i64 6032, !23, i64 6064, !23, i64 6072, !23, i64 6080, !15, i64 6088, !7, i64 6096, !6, i64 6120, !6, i64 6124, !6, i64 6128, !6, i64 6132, !6, i64 6136, !15, i64 6144, !15, i64 6152, !15, i64 6160, !15, i64 6168, !15, i64 6176, !15, i64 6184, !15, i64 6192, !7, i64 6200, !23, i64 6248, !22, i64 6256, !22, i64 6264, !22, i64 6272, !23, i64 6280, !23, i64 6288, !23, i64 6296, !22, i64 6304, !7, i64 6312, !23, i64 6320, !6, i64 6328, !6, i64 6332, !6, i64 6336, !6, i64 6340, !6, i64 6344, !6, i64 6348, !6, i64 6352, !6, i64 6356, !7, i64 6360, !6, i64 6372, !6, i64 6376, !6, i64 6380, !6, i64 6384, !6, i64 6388, !15, i64 6392, !6, i64 6400, !6, i64 6404, !6, i64 6408, !6, i64 6412, !6, i64 6416, !45, i64 6424, !6, i64 6432, !6, i64 6436, !6, i64 6440, !6, i64 6444, !6, i64 6448, !38, i64 6456, !38, i64 6488, !6, i64 6520, !6, i64 6524, !6, i64 6528, !6, i64 6532, !6, i64 6536, !6, i64 6540, !15, i64 6544, !13, i64 6552, !13, i64 6560, !7, i64 6568, !7, i64 6584, !7, i64 6600, !7, i64 6616, !13, i64 6632, !6, i64 6640, !7, i64 6644, !7, i64 6708, !7, i64 6784}
!11 = !{!"MpegEncContext", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !7, i64 20, !6, i64 68, !14, i64 72, !14, i64 208, !16, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !17, i64 416, !17, i64 424, !18, i64 432, !19, i64 440, !6, i64 496, !6, i64 500, !7, i64 504, !6, i64 760, !20, i64 768, !20, i64 888, !20, i64 1008, !23, i64 1128, !15, i64 1136, !15, i64 1144, !15, i64 1152, !15, i64 1160, !15, i64 1168, !23, i64 1176, !23, i64 1184, !23, i64 1192, !6, i64 1200, !15, i64 1208, !15, i64 1216, !15, i64 1224, !15, i64 1232, !24, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !25, i64 1288, !26, i64 1320, !27, i64 1384, !28, i64 1768, !29, i64 1888, !30, i64 2656, !31, i64 2672, !23, i64 2688, !7, i64 2696, !6, i64 2728, !6, i64 2732, !7, i64 2736, !7, i64 2800, !7, i64 2816, !7, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !7, i64 3120, !7, i64 3144, !7, i64 3168, !22, i64 3192, !7, i64 3200, !7, i64 3328, !7, i64 3456, !7, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !17, i64 3744, !17, i64 3752, !32, i64 3760, !32, i64 3762, !32, i64 3764, !32, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !7, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !7, i64 3872, !6, i64 3880, !6, i64 3884, !13, i64 3888, !13, i64 3896, !6, i64 3904, !6, i64 3908, !33, i64 3912}
!12 = !{!"p1 _ZTS7AVClass", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"ScanTable", !15, i64 0, !7, i64 8, !7, i64 72}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"p1 _ZTS14AVCodecContext", !13, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"p1 _ZTS15AVRefStructPool", !13, i64 0}
!19 = !{!"BufferPoolContext", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!20 = !{!"MPVWorkPicture", !7, i64 0, !7, i64 24, !21, i64 48, !15, i64 56, !7, i64 64, !22, i64 80, !15, i64 88, !7, i64 96, !6, i64 112}
!21 = !{!"p1 _ZTS10MPVPicture", !13, i64 0}
!22 = !{!"p1 int", !13, i64 0}
!23 = !{!"p1 short", !13, i64 0}
!24 = !{!"ScratchpadContext", !15, i64 0, !15, i64 8, !7, i64 16, !6, i64 24}
!25 = !{!"BlockDSPContext", !13, i64 0, !13, i64 8, !7, i64 16}
!26 = !{!"H264ChromaContext", !7, i64 0, !7, i64 32}
!27 = !{!"HpelDSPContext", !7, i64 0, !7, i64 128, !7, i64 256, !7, i64 352}
!28 = !{!"IDCTDSPContext", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !7, i64 48, !6, i64 112, !6, i64 116}
!29 = !{!"QpelDSPContext", !7, i64 0, !7, i64 256, !7, i64 512}
!30 = !{!"VideoDSPContext", !13, i64 0, !13, i64 8}
!31 = !{!"H263DSPContext", !13, i64 0, !13, i64 8}
!32 = !{!"short", !7, i64 0}
!33 = !{!"ERContext", !16, i64 0, !13, i64 8, !22, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !17, i64 40, !17, i64 48, !7, i64 56, !6, i64 60, !15, i64 64, !15, i64 72, !7, i64 80, !15, i64 104, !15, i64 112, !7, i64 120, !34, i64 184, !34, i64 256, !34, i64 328, !7, i64 400, !7, i64 416, !32, i64 432, !32, i64 434, !6, i64 436, !6, i64 440, !13, i64 448, !13, i64 456}
!34 = !{!"ERPicture", !35, i64 0, !36, i64 8, !37, i64 16, !7, i64 24, !7, i64 40, !22, i64 56, !6, i64 64}
!35 = !{!"p1 _ZTS7AVFrame", !13, i64 0}
!36 = !{!"p1 _ZTS11ThreadFrame", !13, i64 0}
!37 = !{!"p1 _ZTS14ThreadProgress", !13, i64 0}
!38 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !15, i64 8, !15, i64 16, !15, i64 24}
!39 = !{!"p1 _ZTS17MPVMainEncContext", !13, i64 0}
!40 = !{!"FDCTDSPContext", !13, i64 0, !13, i64 8}
!41 = !{!"MpegvideoEncDSPContext", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !7, i64 40, !13, i64 72}
!42 = !{!"PixblockDSPContext", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!43 = !{!"MotionEstContext", !16, i64 0, !6, i64 8, !6, i64 12, !7, i64 16, !7, i64 48, !15, i64 80, !15, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !7, i64 168, !7, i64 296, !6, i64 424, !6, i64 428, !17, i64 432, !17, i64 440, !6, i64 448, !7, i64 456, !7, i64 504, !7, i64 552, !7, i64 600, !7, i64 648, !13, i64 712, !44, i64 720, !44, i64 728, !44, i64 736, !44, i64 744, !15, i64 752, !15, i64 760, !13, i64 768, !7, i64 776, !7, i64 1032}
!44 = !{!"any p2 pointer", !13, i64 0}
!45 = !{!"p1 _ZTS12MJpegContext", !13, i64 0}
!46 = !{!10, !6, i64 3112}
!47 = !{!10, !6, i64 388}
!48 = !{!49, !6, i64 10996}
!49 = !{!"H261EncContext", !50, i64 0, !6, i64 10992, !6, i64 10996}
!50 = !{!"MPVMainEncContext", !10, i64 0, !6, i64 9856, !6, i64 9860, !6, i64 9864, !6, i64 9868, !6, i64 9872, !6, i64 9876, !7, i64 9880, !7, i64 10016, !17, i64 10152, !17, i64 10160, !17, i64 10168, !7, i64 10176, !6, i64 10320, !6, i64 10324, !6, i64 10328, !6, i64 10332, !6, i64 10336, !51, i64 10340, !6, i64 10344, !6, i64 10348, !6, i64 10352, !6, i64 10356, !15, i64 10360, !6, i64 10368, !6, i64 10372, !6, i64 10376, !6, i64 10380, !13, i64 10384, !13, i64 10392, !17, i64 10400, !17, i64 10408, !6, i64 10416, !6, i64 10420, !6, i64 10424, !6, i64 10428, !6, i64 10432, !7, i64 10436, !6, i64 10456, !6, i64 10460, !52, i64 10464, !6, i64 10944, !6, i64 10948, !17, i64 10952, !17, i64 10960, !15, i64 10968, !15, i64 10976, !23, i64 10984}
!51 = !{!"float", !7, i64 0}
!52 = !{!"RateControlContext", !6, i64 0, !53, i64 8, !54, i64 16, !7, i64 24, !54, i64 144, !54, i64 152, !54, i64 160, !54, i64 168, !54, i64 176, !7, i64 184, !17, i64 224, !17, i64 232, !7, i64 240, !7, i64 280, !7, i64 320, !7, i64 360, !7, i64 400, !6, i64 420, !51, i64 424, !51, i64 428, !6, i64 432, !51, i64 436, !51, i64 440, !15, i64 448, !55, i64 456, !56, i64 464, !56, i64 472}
!53 = !{!"p1 _ZTS16RateControlEntry", !13, i64 0}
!54 = !{!"double", !7, i64 0}
!55 = !{!"p1 _ZTS6AVExpr", !13, i64 0}
!56 = !{!"p1 float", !13, i64 0}
!57 = !{!49, !6, i64 10992}
!58 = !{!38, !6, i64 0}
!59 = !{!38, !6, i64 4}
!60 = !{!38, !15, i64 24}
!61 = !{!38, !15, i64 16}
!62 = !{!7, !7, i64 0}
!63 = !{!10, !6, i64 1272}
!64 = !{!10, !6, i64 6356}
!65 = !{!6, !6, i64 0}
!66 = !{!15, !15, i64 0}
!67 = !{!68, !13, i64 32}
!68 = !{!"AVCodecContext", !12, i64 0, !6, i64 8, !6, i64 12, !69, i64 16, !6, i64 24, !6, i64 28, !13, i64 32, !70, i64 40, !13, i64 48, !17, i64 56, !6, i64 64, !6, i64 68, !15, i64 72, !6, i64 80, !71, i64 84, !71, i64 92, !71, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !71, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !13, i64 184, !13, i64 192, !6, i64 200, !51, i64 204, !51, i64 208, !51, i64 212, !51, i64 216, !51, i64 220, !51, i64 224, !51, i64 228, !51, i64 232, !51, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !23, i64 288, !23, i64 296, !23, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !72, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !13, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !51, i64 428, !51, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !73, i64 456, !17, i64 464, !17, i64 472, !51, i64 480, !51, i64 484, !6, i64 488, !6, i64 492, !15, i64 496, !15, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !74, i64 536, !13, i64 544, !75, i64 552, !75, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !13, i64 672, !13, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !76, i64 728, !15, i64 736, !6, i64 744, !6, i64 748, !15, i64 752, !15, i64 760, !15, i64 768, !77, i64 776, !6, i64 784, !6, i64 788, !17, i64 792, !6, i64 800, !6, i64 804, !17, i64 808, !13, i64 816, !17, i64 824, !22, i64 832, !6, i64 840, !78, i64 848, !6, i64 856, !6, i64 860}
!69 = !{!"p1 _ZTS7AVCodec", !13, i64 0}
!70 = !{!"p1 _ZTS15AVCodecInternal", !13, i64 0}
!71 = !{!"AVRational", !6, i64 0, !6, i64 4}
!72 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !13, i64 16}
!73 = !{!"p1 _ZTS10RcOverride", !13, i64 0}
!74 = !{!"p1 _ZTS9AVHWAccel", !13, i64 0}
!75 = !{!"p1 _ZTS11AVBufferRef", !13, i64 0}
!76 = !{!"p1 _ZTS17AVCodecDescriptor", !13, i64 0}
!77 = !{!"p1 _ZTS16AVPacketSideData", !13, i64 0}
!78 = !{!"p2 _ZTS15AVFrameSideData", !44, i64 0}
!79 = !{!68, !6, i64 112}
!80 = !{!68, !6, i64 116}
!81 = !{!49, !13, i64 10392}
!82 = !{!10, !13, i64 6552}
!83 = !{!10, !6, i64 6128}
!84 = !{!10, !6, i64 6132}
!85 = !{!10, !6, i64 6136}
!86 = !{!10, !15, i64 5360}
!87 = !{!10, !15, i64 6176}
!88 = !{!10, !15, i64 6144}
!89 = !{!10, !15, i64 6184}
!90 = !{!10, !15, i64 6152}
!91 = !{!10, !6, i64 6328}
!92 = !{!10, !16, i64 344}
!93 = !{!68, !6, i64 84}
!94 = !{!68, !6, i64 88}
!95 = !{!10, !6, i64 1280}
!96 = !{!10, !6, i64 3720}
!97 = !{!10, !6, i64 3116}
!98 = !{!10, !6, i64 4436}
!99 = !{!10, !6, i64 6416}
!100 = !{!32, !32, i64 0}
!101 = !{!102, !7, i64 0}
!102 = !{!"VLCLUT", !7, i64 0, !32, i64 2}
!103 = !{!102, !32, i64 2}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.mustprogress"}
!106 = distinct !{!106, !105}
!107 = distinct !{!107, !105}
end_hunk_0
