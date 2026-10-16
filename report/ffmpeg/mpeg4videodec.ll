Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg4videodec?download=true
inline.NumInlined: 418
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 34
begin_hunk_0_@mpeg4_decode_mb:bb.a
  %spec.select = select i1 %.not455, i32 %i.aex, i32 %i.aew
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.aey = phi i32 [ %spec.select, %bb.co ], [ %i.aea, %bb.cn ]
  call void @ff_thread_progress_await(ptr noundef nonnull %i.aes, i32 noundef %i.aey) #13
  %i.aez = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.afa = load ptr, ptr %i.aez, align 16, !tbaa !332
  %i.afb = add nsw i32 %i.aep, %i.j
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds i8, ptr %i.afa, i64 %i.afc
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !77
  %.not456 = icmp eq i8 %i.afe, 0
  br i1 %.not456, label %bb.cq, label %.loopexit501

bb.cq:                                            ; preds = %bb.cp, %bb.cm
  br label %.loopexit501

.loopexit501:                                     ; preds = %bb.ak, %bb.al, %.critedge, %bb.am, %.critedge.1, %bb.an, %.critedge.2, %bb.ao, %bb.ae, %bb.ad, %bb.af, %bb.ag, %.loopexit504, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %.thread494, %.loopexit, %bb.cl, %bb.ck, %bb.ai, %bb.ah, %bb.cp, %bb.cq, %bb.bt, %bb.bp, %bb.r, %bb.j
  %.6 = phi i32 [ -1094995529, %bb.by ], [ -1094995529, %bb.ck ], [ -2, %bb.cq ], [ 0, %bb.cp ], [ -2, %bb.cl ], [ -1094995529, %bb.j ], [ -1094995529, %bb.bt ], [ -1094995529, %.thread494 ], [ -1094995529, %bb.r ], [ 0, %.loopexit ], [ -1094995529, %bb.ae ], [ -1094995529, %bb.ah ], [ -1094995529, %bb.bp ], [ -1094995529, %.loopexit504 ], [ -1094995529, %bb.ai ], [ -1094995529, %bb.cd ], [ -1094995529, %bb.cc ], [ -1094995529, %bb.cb ], [ -1094995529, %bb.ca ], [ -1094995529, %bb.bz ], [ -1094995529, %bb.ci ], [ -1094995529, %bb.ch ], [ -1094995529, %bb.cg ], [ -1094995529, %bb.cf ], [ -1094995529, %bb.ce ], [ -1094995529, %bb.ag ], [ -1094995529, %bb.af ], [ -1094995529, %bb.ad ], [ -1094995529, %bb.ao ], [ -1094995529, %.critedge.2 ], [ -1094995529, %bb.an ], [ -1094995529, %.critedge.1 ], [ -1094995529, %bb.am ], [ -1094995529, %.critedge ], [ -1094995529, %bb.al ], [ -1094995529, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.6
}

declare void @ff_mpeg4_init_direct_mv(ptr noundef) local_unnamed_addr #3

declare void @ff_permute_scantable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @mpeg4_decode_block(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 -2147483648, 6) %2, i32 noundef range(i32 0, 33) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not319 = icmp eq i32 %5, 0
  br i1 %.not319, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4476
  %i.c = load i32, ptr %i.b, align 4, !tbaa !130
  %.not320 = icmp eq i32 %i.c, 0
  br i1 %.not320, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !333
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !66
  %i.m = sext i16 %i.l to i32
  %i.n = icmp slt i32 %2, 4
  %.418 = select i1 %i.n, i64 8, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.418
  %.sink415 = load i32, ptr %i.o, align 4, !tbaa !43 ; 2 uses
  %i.p = ashr i32 %.sink415, 1
  %i.q = add nsw i32 %i.p, %i.m
  %i.r = sext i32 %i.q to i64
  %i.s = sext i32 %.sink415 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr @ff_inverse, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = zext i32 %i.u to i64
  %i.w = mul nsw i64 %i.r, %i.v
  %.0265.in = lshr i64 %i.w, 32
  %.0265 = trunc nuw i64 %.0265.in to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1232
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !74
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !75
  %i.af = mul nsw i32 %i.ae, %i.ac
  %i.ag = add nsw i32 %i.af, %i.aa
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.y, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !77
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, %2
  %i.am = and i32 %i.al, 32
  store i32 %i.am, ptr %i.a, align 4, !tbaa !43
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.an = call fastcc i32 @mpeg4_decode_dc(ptr noundef nonnull %0, i32 noundef %2, ptr noundef %i.a) ; 3 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1266 = phi i32 [ %.0265, %bb.d ], [ %i.an, %bb.e ]
  %i.ap = trunc i32 %.1266 to i16
  store i16 %i.ap, ptr %1, align 2, !tbaa !66
  br label %bb.n

bb.g:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !146
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.at = sext i32 %2 to i64                      ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !43
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.at
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 -2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !66
  %i.bd = sext i16 %i.bc to i32                   ; 3 uses
  %i.be = xor i32 %i.ba, -1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !66
  %i.bi = sext i16 %i.bh to i32                   ; 2 uses
  %i.bj = sub nsw i32 0, %i.ba
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !66
  %i.bn = sext i16 %i.bm to i32                   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 3780
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !147
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = icmp ne i32 %2, 3
  %or.cond.i = and i1 %i.br, %i.bq
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i32 %2, 2                     ; 2 uses
  %spec.select.i = select i1 %.not.i, i32 %i.bi, i32 1024 ; 2 uses
  %spec.select42.i = select i1 %.not.i, i32 %i.bn, i32 1024 ; 2 uses
  %.not41.i = icmp eq i32 %2, 1
  br i1 %.not41.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !44
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3712
  %i.bv = load i32, ptr %i.bu, align 16, !tbaa !148
  %i.bw = icmp eq i32 %i.bt, %i.bv                ; 2 uses
  %spec.select43.i = select i1 %i.bw, i32 1024, i32 %i.bd
  %spec.select44.i = select i1 %i.bw, i32 1024, i32 %spec.select.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.038.i = phi i32 [ %i.bd, %bb.g ], [ %spec.select43.i, %bb.i ], [ %i.bd, %bb.h ] ; 2 uses
  %.137.i = phi i32 [ %i.bi, %bb.g ], [ %spec.select44.i, %bb.i ], [ %spec.select.i, %bb.h ] ; 3 uses
  %.1.i = phi i32 [ %i.bn, %bb.g ], [ %spec.select42.i, %bb.i ], [ %spec.select42.i, %bb.h ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3108
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 3712
  %i.ca = load i32, ptr %i.bz, align 16, !tbaa !148
  %i.cb = icmp eq i32 %i.by, %i.ca
  br i1 %i.cb, label %bb.k, label %mpeg4_pred_dc.exit

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3112
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3716
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !149
  %i.cg = add nsw i32 %i.cf, 1
  %i.ch = icmp eq i32 %i.cd, %i.cg
  br i1 %i.ch, label %bb.l, label %mpeg4_pred_dc.exit

bb.l:                                             ; preds = %bb.k
  switch i32 %2, label %mpeg4_pred_dc.exit [
    i32 5, label %bb.m
    i32 4, label %bb.m
    i32 0, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l
  br label %mpeg4_pred_dc.exit

mpeg4_pred_dc.exit:                               ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %.2.i = phi i32 [ 1024, %bb.m ], [ %.137.i, %bb.l ], [ %.137.i, %bb.k ], [ %.137.i, %bb.j ] ; 2 uses
  %i.ci = sub nsw i32 %.038.i, %.2.i
  %i.cj = tail call i32 @llvm.abs.i32(i32 %i.ci, i1 true)
  %i.ck = sub nsw i32 %.2.i, %.1.i
  %i.cl = tail call i32 @llvm.abs.i32(i32 %i.ck, i1 true)
  %i.cm = icmp samesign ult i32 %i.cj, %i.cl      ; 2 uses
  %..i = zext i1 %i.cm to i32
  %.1..038.i = select i1 %i.cm, i32 %.1.i, i32 %.038.i
  store i32 %..i, ptr %i.a, align 4, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %mpeg4_pred_dc.exit, %bb.f
  %.0296 = phi i32 [ 0, %bb.f ], [ -1, %mpeg4_pred_dc.exit ] ; 3 uses
  %.0291 = phi i32 [ undef, %bb.f ], [ %.1..038.i, %mpeg4_pred_dc.exit ] ; 3 uses
  %.not321 = icmp eq i32 %3, 0
  br i1 %.not321, label %.thread347, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not322 = icmp eq i32 %6, 0                    ; 3 uses
  %.val352 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg4_rl_intra, i64 80), align 8
  %.val353 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_rvlc_rl_intra, i64 80), align 8
  %.0286 = select i1 %.not322, ptr %.val352, ptr %.val353 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load i32, ptr %i.cn, align 16, !tbaa !72
  %.not323 = icmp eq i32 %i.co, 0
  %i.cp = load i32, ptr %i.a, align 4
  %i.cq = icmp eq i32 %i.cp, 0
  %. = select i1 %i.cq, i64 4616, i64 4552
  %.sink = select i1 %.not323, i64 216, i64 %.
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %.sink ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4384 ; 2 uses
  %i.ct = getelementptr i8, ptr %0, i64 4392      ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !334 ; 2 uses
  %.not324 = icmp eq i32 %6, 0
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %7 = select i1 %.not322, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg4_rl_intra, i64 64), ptr getelementptr inbounds nuw (i8, ptr @ff_rvlc_rl_intra, i64 64)
  %8 = select i1 %.not322, ptr getelementptr inbounds nuw (i8, ptr @ff_mpeg4_rl_intra, i64 48), ptr getelementptr inbounds nuw (i8, ptr @ff_rvlc_rl_intra, i64 48)
  br i1 %.not324, label %.split.us.preheader, label %.split.preheader

bb.p:                                             ; preds = %bb.a
  %.not316 = icmp eq i32 %3, 0
  br i1 %.not316, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cx = sext i32 %2 to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cx
  store i32 -1, ptr %i.cy, align 4, !tbaa !43
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %.not317 = icmp eq i32 %6, 0                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 5548
  %i.db = load i32, ptr %i.da, align 4, !tbaa !116
  %.not318 = icmp eq i32 %i.db, 0
  br i1 %.not318, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not317, label %.thread, label %.thread393

bb.t:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !76 ; 3 uses
  %i.de = shl i32 %i.dd, 1                        ; 2 uses
  %i.df = add nsw i32 %i.dd, -1
  %i.dg = or i32 %i.df, 1                         ; 2 uses
  %i.dh = sext i32 %i.dd to i64                   ; 2 uses
  br i1 %.not317, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_rvlc_rl_inter, i64 80), i64 %i.dh
  br label %.thread393

bb.v:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_h263_rl_inter, i64 80), i64 %i.dh
  br label %.thread

.thread:                                          ; preds = %bb.s, %bb.v
  %.0295.ph = phi i32 [ %i.de, %bb.v ], [ 1, %bb.s ]
  %.0294.ph = phi i32 [ %i.dg, %bb.v ], [ 0, %bb.s ] ; 2 uses
  %.1287.ph.in = phi ptr [ %i.dj, %bb.v ], [ getelementptr inbounds nuw (i8, ptr @ff_h263_rl_inter, i64 80), %bb.s ]
  %.1287.ph = load ptr, ptr %.1287.ph.in, align 8, !tbaa !152
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.dl = getelementptr i8, ptr %0, i64 4392      ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !334
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.do = sub i32 0, %.0294.ph
  br label %.split.us.preheader

.thread393:                                       ; preds = %bb.s, %bb.u
  %.0295.ph390 = phi i32 [ %i.de, %bb.u ], [ 1, %bb.s ]
  %.0294.ph391 = phi i32 [ %i.dg, %bb.u ], [ 0, %bb.s ]
  %.1287.ph392.in = phi ptr [ %i.di, %bb.u ], [ getelementptr inbounds nuw (i8, ptr @ff_rvlc_rl_inter, i64 80), %bb.s ]
  %.1287.ph392 = load ptr, ptr %.1287.ph392.in, align 8, !tbaa !152
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.dq = getelementptr i8, ptr %0, i64 4392      ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !334
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 344
  br label %.split.preheader

.split.preheader:                                 ; preds = %.thread393, %bb.o
  %i.dt = phi ptr [ %i.ds, %.thread393 ], [ %i.cv, %bb.o ] ; 4 uses
  %i.du = phi i32 [ %i.dr, %.thread393 ], [ %i.cu, %bb.o ]
  %i.dv = phi ptr [ %i.dq, %.thread393 ], [ %i.ct, %bb.o ]
  %i.dw = phi ptr [ %i.dp, %.thread393 ], [ %i.cs, %bb.o ]
  %.1285407 = phi ptr [ %i.cz, %.thread393 ], [ %i.cr, %bb.o ] ; 2 uses
  %.1287406 = phi ptr [ %.1287.ph392, %.thread393 ], [ %.0286, %bb.o ] ; 3 uses
  %.1292405 = phi i32 [ undef, %.thread393 ], [ %.0291, %bb.o ]
  %.0294404 = phi i32 [ %.0294.ph391, %.thread393 ], [ 0, %bb.o ]
  %.0295403 = phi i32 [ %.0295.ph390, %.thread393 ], [ 1, %bb.o ]
  %.1297402 = phi i32 [ -1, %.thread393 ], [ %.0296, %bb.o ]
  %.pre = load ptr, ptr %i.dw, align 16, !tbaa !139 ; 2 uses
  br label %.split

.split.us.preheader:                              ; preds = %.thread, %bb.o
  %i.dx = phi ptr [ getelementptr inbounds nuw (i8, ptr @ff_h263_rl_inter, i64 48), %.thread ], [ %8, %bb.o ]
  %i.dy = phi ptr [ getelementptr inbounds nuw (i8, ptr @ff_h263_rl_inter, i64 64), %.thread ], [ %7, %bb.o ]
  %i.dz = phi i32 [ %i.do, %.thread ], [ 0, %bb.o ]
  %i.ea = phi ptr [ %i.dn, %.thread ], [ %i.cv, %bb.o ] ; 6 uses
  %i.eb = phi i32 [ %i.dm, %.thread ], [ %i.cu, %bb.o ]
  %i.ec = phi ptr [ %i.dl, %.thread ], [ %i.ct, %bb.o ] ; 3 uses
  %i.ed = phi ptr [ %i.dk, %.thread ], [ %i.cs, %bb.o ]
  %.1285388 = phi ptr [ %i.cz, %.thread ], [ %i.cr, %bb.o ] ; 2 uses
  %.1287386 = phi ptr [ %.1287.ph, %.thread ], [ %.0286, %bb.o ] ; 9 uses
  %.1292385 = phi i32 [ undef, %.thread ], [ %.0291, %bb.o ]
  %.0294383 = phi i32 [ %.0294.ph, %.thread ], [ 0, %bb.o ]
  %.0295382 = phi i32 [ %.0295.ph, %.thread ], [ 1, %bb.o ] ; 3 uses
  %.1297381 = phi i32 [ -1, %.thread ], [ %.0296, %bb.o ]
  %i.ee = getelementptr i8, ptr %0, i64 4396      ; 2 uses
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.as
  %.2298.us = phi i32 [ %.5301.us, %bb.as ], [ %.1297381, %.split.us.preheader ] ; 4 uses
  %.0275.us = phi i32 [ %.6281.us, %bb.as ], [ %i.eb, %.split.us.preheader ] ; 4 uses
  %i.ef = load ptr, ptr %i.ed, align 16, !tbaa !139 ; 4 uses
  %i.eg = lshr i32 %.0275.us, 3
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 1, !tbaa !77
  %i.ek = tail call i32 @llvm.bswap.i32(i32 %i.ej)
  %i.el = and i32 %.0275.us, 7
  %i.em = shl i32 %i.ek, %i.el                    ; 3 uses
  %i.en = lshr i32 %i.em, 23                      ; 2 uses
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.1287386, i64 %i.eo ; 2 uses
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !77
  %i.er = sext i16 %i.eq to i32                   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.et = load i8, ptr %i.es, align 2, !tbaa !77  ; 2 uses
  %i.eu = sext i8 %i.et to i32                    ; 2 uses
  %i.ev = icmp slt i8 %i.et, 0
  br i1 %i.ev, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.split.us
  %i.ew = shl i32 %i.em, 9                        ; 2 uses
  %i.ex = add i32 %.0275.us, 9
  %i.ey = add nsw i32 %i.eu, 32
  %i.ez = lshr i32 %i.ew, %i.ey
  %i.fa = add i32 %i.ez, %i.er                    ; 2 uses
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.1287386, i64 %i.fb ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !77
  %i.fe = sext i16 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !77
  %i.fh = sext i8 %i.fg to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.split.us
  %.1276.us = phi i32 [ %i.ex, %bb.w ], [ %.0275.us, %.split.us ]
  %.0272.us = phi i32 [ %i.ew, %bb.w ], [ %i.em, %.split.us ]
  %.0271.us = phi i32 [ %i.fa, %bb.w ], [ %i.en, %.split.us ]
  %.0270.us = phi i32 [ %i.fh, %bb.w ], [ %i.eu, %.split.us ] ; 2 uses
  %.2267.us = phi i32 [ %i.fe, %bb.w ], [ %i.er, %.split.us ] ; 2 uses
  %i.fi = shl i32 %.0272.us, %.0270.us            ; 8 uses
  %i.fj = add i32 %.0270.us, %.1276.us            ; 7 uses
  %i.fk = icmp eq i32 %.2267.us, 0
  br i1 %i.fk, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fl = zext i32 %.0271.us to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.1287386, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !77
  %i.fp = zext i8 %i.fo to i32
  %i.fq = add nsw i32 %.2298.us, %i.fp
  %i.fr = ashr i32 %i.fi, 31                      ; 2 uses
  %i.fs = xor i32 %i.fr, %.2267.us
  %i.ft = sub nsw i32 %i.fs, %i.fr
  %i.fu = add i32 %i.fj, 1
  br label %bb.ar

bb.z:                                             ; preds = %bb.x
  %.not325.us = icmp sgt i32 %i.fi, -1
  br i1 %.not325.us, label %bb.ao, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fv = and i32 %i.fi, 1073741824
  %.not326.us = icmp eq i32 %i.fv, 0
  br i1 %.not326.us, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fw = lshr i32 %i.fi, 23
  %i.fx = and i32 %i.fw, 63
  %i.fy = add i32 %i.fj, 9                        ; 2 uses
  %i.fz = lshr i32 %i.fy, 3
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 1, !tbaa !77
  %i.gd = tail call i32 @llvm.bswap.i32(i32 %i.gc)
  %i.ge = and i32 %i.fy, 7
  %i.gf = shl i32 %i.gd, %i.ge                    ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, -1
  br i1 %i.gg, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.gh = load ptr, ptr %i.ea, align 8, !tbaa !85
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gh, i32 noundef 16, ptr noundef nonnull @.str.158) #13
  %i.gi = load ptr, ptr %i.ea, align 8, !tbaa !85
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 528
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !145
  %i.gl = and i32 %i.gk, 32768
  %.not327.us = icmp eq i32 %i.gl, 0
  br i1 %.not327.us, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val339.us = load i32, ptr %i.ec, align 8, !tbaa !79
  %.val340.us = load i32, ptr %i.ee, align 4, !tbaa !90
  %.not354.us = icmp sgt i32 %.val340.us, %.val339.us
  br i1 %.not354.us, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  %i.gm = shl i32 %i.gf, 1
  %i.gn = ashr i32 %i.gm, 20                      ; 2 uses
  %i.go = and i32 %i.gf, 262144
  %i.gp = icmp eq i32 %i.go, 0
end_hunk_0
