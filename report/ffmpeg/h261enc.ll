Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/h261enc?download=true
inline.NumInlined: 34
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ff_h261_reorder_mb_index:bb.a
  %i.bn = icmp sgt i32 %i.bk, 5
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %put_bits.exit16.i
  %i.bo = shl i32 %.026.i.i14.i, 5
  %i.bp = or i32 %i.bm, %i.bo
  br label %put_bits.exit20.i

bb.n:                                             ; preds = %put_bits.exit16.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !57
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 16, !tbaa !58 ; 2 uses
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
  store i32 %i.cc, ptr %i.bt, align 1, !tbaa !59
  %i.cd = load ptr, ptr %i.bs, align 16, !tbaa !58
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store ptr %i.ce, ptr %i.bs, align 16, !tbaa !58
  br label %put_bits.exit20.i

bb.p:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %put_bits.exit20.i

put_bits.exit20.i:                                ; preds = %bb.p, %bb.o, %bb.m
  %.sink26.i = phi i32 [ -5, %bb.m ], [ 27, %bb.p ], [ 27, %bb.o ]
  %.026.i.i18.i = phi i32 [ %i.bp, %bb.m ], [ %i.bm, %bb.p ], [ %i.bm, %bb.o ] ; 3 uses
  %i.cf = add nsw i32 %.sink26.i, %i.bk           ; 4 uses
  store i32 %.026.i.i18.i, ptr %i.t, align 16, !tbaa !55
  store i32 %i.cf, ptr %i.v, align 4, !tbaa !56
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %put_bits.exit20.i
  %i.ch = shl i32 %.026.i.i18.i, 1
  br label %h261_encode_gob_header.exit

bb.r:                                             ; preds = %put_bits.exit20.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !57
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 16, !tbaa !58 ; 2 uses
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp ugt i64 %i.co, 3
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = shl i32 %.026.i.i18.i, %i.cf
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  store i32 %i.cr, ptr %i.cl, align 1, !tbaa !59
  %i.cs = load ptr, ptr %i.ck, align 16, !tbaa !58
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store ptr %i.ct, ptr %i.ck, align 16, !tbaa !58
  br label %h261_encode_gob_header.exit

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %h261_encode_gob_header.exit

h261_encode_gob_header.exit:                      ; preds = %bb.q, %bb.s, %bb.t
  %.sink27.i = phi i32 [ -1, %bb.q ], [ 31, %bb.t ], [ 31, %bb.s ]
  %.026.i.i22.i = phi i32 [ %i.ch, %bb.q ], [ 0, %bb.t ], [ 0, %bb.s ]
  %i.cu = add nsw i32 %.sink27.i, %i.cf
  store i32 %.026.i.i22.i, ptr %i.t, align 16, !tbaa !55
  store i32 %i.cu, ptr %i.v, align 4, !tbaa !56
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 6356
  store i32 0, ptr %i.cv, align 4, !tbaa !61
  br label %bb.u

bb.u:                                             ; preds = %h261_encode_gob_header.exit, %bb.b
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i32 0, ptr %i.cw, align 16, !tbaa !62
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i32 0, ptr %i.cx, align 4, !tbaa !62
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 10996
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !53
  %i.da = icmp eq i32 %i.cz, 1
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = srem i32 %i.j, 3
  %i.dc = sdiv i32 %i.h, 33
  %i.dd = srem i32 %i.dc, 2
  %i.de = mul nsw i32 %i.dd, 11
  %i.df = add nsw i32 %i.de, %i.i
  store i32 %i.df, ptr %i.a, align 4, !tbaa !76
  %i.dg = sdiv i32 %i.h, 66
  %i.dh = mul nsw i32 %i.dg, 3
  %i.di = add nsw i32 %i.db, %i.dh
  store i32 %i.di, ptr %i.c, align 8, !tbaa !77
  tail call void @ff_init_block_index(ptr noundef nonnull %0) #6
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.dk = load <4 x i32>, ptr %i.dj, align 16, !tbaa !62
  %i.dl = add nsw <4 x i32> %i.dk, splat (i32 2)
  store <4 x i32> %i.dl, ptr %i.dj, align 16, !tbaa !62
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 3136 ; 2 uses
  %i.dn = load <2 x i32>, ptr %i.dm, align 16, !tbaa !62
  %i.do = add nsw <2 x i32> %i.dn, splat (i32 1)
  store <2 x i32> %i.do, ptr %i.dm, align 16, !tbaa !62
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.dq = load <2 x ptr>, ptr %i.dp, align 16, !tbaa !79
  %i.dr = getelementptr inbounds nuw i8, <2 x ptr> %i.dq, <2 x i64> <i64 16, i64 8>
  store <2 x ptr> %i.dr, ptr %i.dp, align 16, !tbaa !79
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 3184 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 16, !tbaa !79
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.du, ptr %i.ds, align 16, !tbaa !79
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  ret void
}

declare void @ff_init_block_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @h261_encode_init(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !82 ; 3 uses
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
  store i32 %.sink, ptr %i.g, align 4, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 10392
  store ptr @h261_encode_picture_header, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 6552
  store ptr @h261_encode_mb, ptr %i.i, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 6128
  store <2 x i32> <i32 -127, i32 127>, ptr %i.j, align 16, !tbaa !62
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
  %i.c = load i32, ptr %i.a, align 8, !tbaa !55
  %1 = shl i32 %i.c, 25
  %2 = or disjoint i32 %1, 512
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 6328
  %i.e = load i32, ptr %i.d, align 8, !tbaa !91
  %i.f = sext i32 %i.e to i64
  %i.g = mul nsw i64 %i.f, 30000
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !93
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.g, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.o = load i32, ptr %i.n, align 4, !tbaa !94
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, 1001
  %i.r = sdiv i64 %i.m, %i.q
  %i.s = trunc i64 %i.r to i32
  %3 = and i32 %i.s, 31
  %4 = or disjoint i32 %3, %2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.u = load i32, ptr %i.t, align 16, !tbaa !95
  %i.v = icmp eq i32 %i.u, 1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 10996 ; 2 uses
  %6 = load i32, ptr %5, align 4, !tbaa !53
  %i.w = shl i32 %4, 4
  %7 = select i1 %i.v, i32 2, i32 0
  %i.x = or disjoint i32 %i.w, %7
  %i.y = or i32 %i.x, %6
  %i.z = shl i32 %i.y, 2
  %i.aa = or disjoint i32 %i.z, 3                 ; 2 uses
  store i32 %i.aa, ptr %i.a, align 16, !tbaa !55
  store i32 1, ptr %i.b, align 4, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !58 ; 2 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.ah, 3
  br i1 %i.ai, label %bb.a, label %bb.b

bb.a:                                             ; preds = %put_bits.exit
  %i.aj = shl i32 %i.aa, 1
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %i.aj)
  store i32 %i.ak, ptr %i.ae, align 1, !tbaa !59
  %i.al = load ptr, ptr %i.ad, align 16, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store ptr %i.am, ptr %i.ad, align 16, !tbaa !58
  br label %put_bits.exit48

bb.b:                                             ; preds = %put_bits.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %put_bits.exit48

put_bits.exit48:                                  ; preds = %bb.a, %bb.b
  store i32 0, ptr %i.a, align 16, !tbaa !55
  store i32 32, ptr %i.b, align 4, !tbaa !56
  %i.an = load i32, ptr %5, align 4, !tbaa !53
  %i.ao = add i32 %i.an, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 10992
  store i32 %i.ao, ptr %i.ap, align 16, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 6356
  store i32 0, ptr %i.aq, align 4, !tbaa !61
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @h261_encode_mb(ptr noundef initializes((3720, 3724)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3720 ; 12 uses
  store i32 0, ptr %i.a, align 8, !tbaa !98
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3116 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !99   ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load <4 x i32>, ptr %i.d, align 4, !tbaa !62
  %i.f = icmp slt <4 x i32> %i.e, zeroinitializer
  %i.g = select <4 x i1> %i.f, <4 x i32> zeroinitializer, <4 x i32> <i32 32, i32 16, i32 8, i32 4>
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !62
  %i.j = icmp slt i32 %i.i, 0
  %i.k = select i1 %i.j, i32 0, i32 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !62
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
  %i.u = load i32, ptr %i.t, align 4, !tbaa !61
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i32 0, ptr %i.w, align 16, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i32 0, ptr %i.x, align 4, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4436
  %i.z = load i32, ptr %i.y, align 4, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !60
  %i.ac = sub nsw i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !60
  br label %bb.cs

bb.d:                                             ; preds = %bb.b, %bb.a
  %.069 = phi i32 [ 0, %bb.a ], [ %i.q, %bb.b ]
  %.0 = phi i32 [ 63, %bb.a ], [ %op.rdx159, %bb.b ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 6356 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !61
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr @ff_h261_mba_bits, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !59
  %i.aj = zext i8 %i.ai to i32                    ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr @ff_h261_mba_code, i64 %i.ag
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !59
  %i.am = zext i8 %i.al to i32                    ; 3 uses
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4388 ; 12 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !56 ; 5 uses
  %i.aq = icmp sgt i32 %i.ap, %i.aj
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = shl i32 %i.an, %i.aj
  %i.as = or i32 %i.ar, %i.am
  %i.at = sub nuw nsw i32 %i.ap, %i.aj
  br label %put_bits.exit

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4408
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58 ; 2 uses
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
  store i32 %i.bg, ptr %i.ax, align 1, !tbaa !59
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store ptr %i.bi, ptr %i.aw, align 8, !tbaa !58
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %reass.sub = sub i32 %i.ap, %i.aj
  %i.bj = add i32 %reass.sub, 32
  %.pre = load i32, ptr %i.b, align 4, !tbaa !99
  %.pre110.pre.pre.pre = load i32, ptr %i.a, align 8, !tbaa !98
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.e, %bb.i
  %.pre110.pre.pre = phi i32 [ 0, %bb.e ], [ %.pre110.pre.pre.pre, %bb.i ] ; 4 uses
  %i.bk = phi i32 [ %i.c, %bb.e ], [ %.pre, %bb.i ]
  %.026.i.i = phi i32 [ %i.as, %bb.e ], [ %i.am, %bb.i ] ; 3 uses
  %.0.i.i = phi i32 [ %i.at, %bb.e ], [ %i.bj, %bb.i ] ; 6 uses
  store i32 %.026.i.i, ptr %i.ad, align 8, !tbaa !55
  store i32 %.0.i.i, ptr %i.ao, align 4, !tbaa !56
  store i32 0, ptr %i.ae, align 4, !tbaa !61
  %.not70 = icmp eq i32 %i.bk, 0
  br i1 %.not70, label %bb.j, label %bb.o

bb.j:                                             ; preds = %put_bits.exit
  %i.bl = add nsw i32 %.pre110.pre.pre, 1         ; 2 uses
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !98
  %.not71 = icmp eq i32 %.069, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 6416
  %i.bn = load i32, ptr %i.bm, align 16, !tbaa !101
  %.not72 = icmp eq i32 %i.bn, 0                  ; 2 uses
  br i1 %.not71, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.not72, label %.thread151, label %.thread153

.thread153:                                       ; preds = %bb.k
  %i.bo = add nsw i32 %.pre110.pre.pre, 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bp = add nsw i32 %.pre110.pre.pre, 4         ; 3 uses
  store i32 %i.bp, ptr %i.a, align 8, !tbaa !98
  br i1 %.not72, label %.thread151, label %bb.m

bb.m:                                             ; preds = %.thread153, %bb.l
  %i.bq = phi i32 [ %i.bo, %.thread153 ], [ %i.bp, %bb.l ]
  %i.br = add nsw i32 %i.bq, 3                    ; 2 uses
  store i32 %i.br, ptr %i.a, align 8, !tbaa !98
  br label %.thread151

.thread151:                                       ; preds = %bb.k, %bb.m, %bb.l
  %i.bs = phi i32 [ %i.br, %bb.m ], [ %i.bp, %bb.l ], [ %i.bl, %bb.k ] ; 2 uses
  %.not74 = icmp eq i32 %.0, 0
  br i1 %.not74, label %.thread, label %bb.n

.thread:                                          ; preds = %.thread151
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4436 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !100
  br label %bb.q

bb.n:                                             ; preds = %.thread151
  %i.bv = add nsw i32 %i.bs, 1                    ; 2 uses
  store i32 %i.bv, ptr %i.a, align 8, !tbaa !98
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %put_bits.exit
  %.pre110.pre = phi i32 [ %i.bv, %bb.n ], [ %.pre110.pre.pre, %put_bits.exit ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4436 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !100 ; 2 uses
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = icmp ne i32 %.0, 0
  %or.cond = and i1 %i.bz, %i.by
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = add nsw i32 %.pre110.pre, 1             ; 2 uses
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !98
  br label %bb.r

bb.q:                                             ; preds = %.thread, %bb.o
  %.pre110 = phi i32 [ %i.bs, %.thread ], [ %.pre110.pre, %bb.o ]
  %i.cb = phi i32 [ %i.bu, %.thread ], [ %i.bx, %bb.o ]
  %i.cc = phi ptr [ %i.bt, %.thread ], [ %i.bw, %bb.o ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !60
  %i.cf = sub nsw i32 %i.ce, %i.cb
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cg = phi i32 [ %.pre110, %bb.q ], [ %i.ca, %bb.p ]
  %i.ch = phi ptr [ %i.cc, %bb.q ], [ %i.bw, %bb.p ]
  %i.ci = sext i32 %i.cg to i64                   ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr @ff_h261_mtype_bits, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !59
  %i.cl = zext i8 %i.ck to i32                    ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr @ff_h261_mtype_code, i64 %i.ci
end_hunk_0
