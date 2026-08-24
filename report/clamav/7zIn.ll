Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/7zIn?download=true
inline.NumInlined: 85
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@SzArEx_GetFileNameUtf16:bb.a

; Function Attrs: nounwind uwtable
define i32 @SzArEx_Open(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 18 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %4 = alloca %struct.CBuf, align 8               ; 14 uses
  %i.c = alloca [500 x i8], align 16              ; 5 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct._CSzState, align 8          ; 10 uses
  %i.h = alloca i64, align 8                      ; 7 uses
  %6 = alloca %struct.CBuf, align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i64 0, ptr %i.b, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.k = call i32 %i.j(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 1) #12, !inline_history !71 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.l = call i32 @LookInStream_Read2(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 32, i32 noundef 17) #12 ; 2 uses
  %.not159.i = icmp eq i32 %i.l, 0
  br i1 %.not159.i, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.a, align 16, !tbaa !60
  %i.n = load i8, ptr @k7zSignature, align 1, !tbaa !60
  %.not.i.i = icmp eq i8 %i.m, %i.n
  br i1 %.not.i.i, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !60
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @k7zSignature, i64 1), align 1, !tbaa !60
  %.not.1.i.i = icmp eq i8 %i.p, %i.q
  br i1 %.not.1.i.i, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.s = load i8, ptr %i.r, align 2, !tbaa !60
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @k7zSignature, i64 2), align 1, !tbaa !60
  %.not.2.i.i = icmp eq i8 %i.s, %i.t
  br i1 %.not.2.i.i, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !60
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @k7zSignature, i64 3), align 1, !tbaa !60
  %.not.3.i.i = icmp eq i8 %i.v, %i.w
  br i1 %.not.3.i.i, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.y = load i8, ptr %i.x, align 4, !tbaa !60
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @k7zSignature, i64 4), align 1, !tbaa !60
  %.not.4.i.i = icmp eq i8 %i.y, %i.z
  br i1 %.not.4.i.i, label %TestSignatureCandidate.exit.i, label %.sink.split

TestSignatureCandidate.exit.i:                    ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !60
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @k7zSignature, i64 5), align 1, !tbaa !60
  %.not.5.i.not.i = icmp eq i8 %i.ab, %i.ac
  br i1 %.not.5.i.not.i, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %TestSignatureCandidate.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !60
  %.not161.i = icmp eq i8 %i.ae, 0
  br i1 %.not161.i, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !60
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !60
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 32
  %i.am = or i64 %i.al, %i.ah                     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !60
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !60
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 32
  %i.au = or i64 %i.at, %i.ap                     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !60 ; 2 uses
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !35
  %i.ay = add nsw i64 %i.ax, 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !60
  %i.bc = icmp ne i32 %i.bb, 0
  %i.bd = icmp ne i64 %i.am, 0
  %or.cond.i = select i1 %i.bc, i1 true, i1 %i.bd
  %i.be = icmp ne i64 %i.au, 0
  %or.cond13.i = select i1 %or.cond.i, i1 true, i1 %i.be
  %i.bf = icmp ne i32 %i.aw, 0
  %or.cond15.i = select i1 %or.cond13.i, i1 true, i1 %i.bf
  br i1 %or.cond15.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i64 0, ptr %i.d, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i64 0, ptr %i.e, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.bh = call i32 %i.bg(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 1) #12, !inline_history !71 ; 2 uses
  %.not162.i = icmp eq i32 %i.bh, 0
  br i1 %.not162.i, label %bb.k, label %.thread181.i

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.bj = call i32 %i.bi(ptr noundef nonnull %1, ptr noundef nonnull %i.e, i32 noundef 2) #12, !inline_history !71 ; 2 uses
  %.not163.i = icmp eq i32 %i.bj, 0
  br i1 %.not163.i, label %bb.l, label %.thread181.i

bb.l:                                             ; preds = %bb.k
  %i.bk = load i64, ptr %i.e, align 8, !tbaa !35  ; 2 uses
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !35
  %i.bm = sub i64 %i.bk, %i.bl
  %spec.select191.i = call i64 @llvm.smin.i64(i64 %i.bm, i64 500) ; 4 uses
  %spec.select.i = trunc i64 %spec.select191.i to i32
  %sext.i = shl i64 %spec.select191.i, 32
  %i.bn = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.bo = sub nsw i64 %i.bk, %i.bn
  store i64 %i.bo, ptr %i.f, align 8, !tbaa !35
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.bq = call i32 %i.bp(ptr noundef nonnull %1, ptr noundef nonnull %i.f, i32 noundef 0) #12, !inline_history !71 ; 2 uses
  %.not164.i = icmp eq i32 %i.bq, 0
  br i1 %.not164.i, label %bb.m, label %.thread181.i

bb.m:                                             ; preds = %bb.l
  %i.br = call i32 @LookInStream_Read2(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef %i.bn, i32 noundef 16) #12 ; 2 uses
  %.not165.i = icmp eq i32 %i.br, 0
  br i1 %.not165.i, label %bb.n, label %.thread181.i

bb.n:                                             ; preds = %bb.m
  %i.bs = icmp sgt i32 %spec.select.i, 1
  br i1 %i.bs, label %.lr.ph.preheader.i, label %.thread181.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.bt = add nsw i64 %spec.select191.i, 4294967294
  %i.bu = and i64 %i.bt, 4294967295
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bu, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.thread.i ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i ; 4 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !60
  switch i8 %i.bw, label %.thread.i [
    i8 23, label %bb.o
    i8 1, label %bb.p
  ]

bb.o:                                             ; preds = %.lr.ph.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !60
  %i.bz = icmp eq i8 %i.by, 6
  br i1 %i.bz, label %bb.q, label %.thread.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !60
  %i.cc = icmp eq i8 %i.cb, 4
  br i1 %i.cc, label %bb.q, label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.o, %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.cd = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.cd, label %.lr.ph.i, label %.thread181.i

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = load i64, ptr %i.f, align 8, !tbaa !35
  %i.cf = add nsw i64 %i.ce, %indvars.iv.i        ; 2 uses
  %i.cg = icmp ult i64 %i.cf, 32
  br i1 %i.cg, label %.thread181.i, label %bb.r

.thread181.i:                                     ; preds = %.thread.i, %bb.q, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.7136.ph.i = phi i32 [ %i.bh, %bb.j ], [ %i.bj, %bb.k ], [ %i.bq, %bb.l ], [ %i.br, %bb.m ], [ 6, %bb.q ], [ 16, %bb.n ], [ 16, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %.sink.split

bb.r:                                             ; preds = %bb.q
  %i.ch = sub i64 %spec.select191.i, %indvars.iv.i
  %sext211.i = shl i64 %i.ch, 32
  %7 = ashr exact i64 %sext211.i, 32              ; 2 uses
  %i.ci = add i64 %i.cf, -32
  %i.cj = call i32 @CrcCalc(ptr noundef nonnull %i.bv, i64 noundef %7) #12
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.cl = call i32 %i.ck(ptr noundef nonnull %1, ptr noundef nonnull %i.d, i32 noundef 0) #12, !inline_history !71 ; 2 uses
  %.not166.i = icmp eq i32 %i.cl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br i1 %.not166.i, label %bb.s, label %.sink.split

bb.s:                                             ; preds = %bb.r, %bb.i
  %.1128.i = phi i64 [ %i.am, %bb.i ], [ %i.ci, %bb.r ] ; 4 uses
  %.1126.i = phi i64 [ %i.au, %bb.i ], [ %7, %bb.r ] ; 7 uses
  %.1124.i = phi i32 [ %i.aw, %bb.i ], [ %i.cj, %bb.r ]
  %i.cm = icmp eq i64 %.1126.i, 0
  br i1 %i.cm, label %SzArEx_Open2.exit.thread11, label %bb.t

SzArEx_Open2.exit.thread11:                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.aj

bb.t:                                             ; preds = %bb.s
  %i.cn = xor i64 %.1128.i, -1
  %i.co = icmp ugt i64 %.1126.i, %i.cn
  %i.cp = sub i64 -33, %.1126.i
  %i.cq = icmp ugt i64 %.1128.i, %i.cp
  %or.cond172.i = or i1 %i.co, %i.cq
  br i1 %or.cond172.i, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i64 0, ptr %i.g, align 8, !tbaa !35
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.cs = call i32 %i.cr(ptr noundef nonnull %1, ptr noundef nonnull %i.g, i32 noundef 2) #12, !inline_history !71 ; 2 uses
  %.not167.i = icmp eq i32 %i.cs, 0
  br i1 %.not167.i, label %bb.v, label %.thread188.i

bb.v:                                             ; preds = %bb.u
  %i.ct = load i64, ptr %i.g, align 8, !tbaa !35  ; 3 uses
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %i.cv = add i64 %i.cu, %.1128.i
  %i.cw = icmp ult i64 %i.ct, %i.cv
  br i1 %i.cw, label %.thread188.i, label %bb.w

.thread188.i:                                     ; preds = %bb.v, %bb.u
  %.10139.ph.i = phi i32 [ 6, %bb.v ], [ %i.cs, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %.sink.split

bb.w:                                             ; preds = %bb.v
  %i.cx = add i64 %.1128.i, 32
  %i.cy = add i64 %i.cx, %i.cu                    ; 3 uses
  %i.cz = icmp uge i64 %i.ct, %i.cy
  %i.da = add i64 %i.cy, %.1126.i
  %i.db = icmp uge i64 %i.ct, %i.da
  %or.cond174.not.i = and i1 %i.cz, %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br i1 %or.cond174.not.i, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w
  %i.dc = call i32 @LookInStream_SeekTo(ptr noundef nonnull %1, i64 noundef %i.cy) #12 ; 2 uses
  %.not168.i = icmp eq i32 %i.dc, 0
  br i1 %.not168.i, label %bb.y, label %.sink.split

bb.y:                                             ; preds = %bb.x
  %i.dd = call i32 @Buf_Create(ptr noundef nonnull %4, i64 noundef %.1126.i, ptr noundef %3) #12
  %.not169.i = icmp eq i32 %i.dd, 0
  br i1 %.not169.i, label %.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = load ptr, ptr %4, align 8, !tbaa !73
  %i.df = call i32 @LookInStream_Read(ptr noundef nonnull %1, ptr noundef %i.de, i64 noundef %.1126.i) #12 ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.aa, label %SzArEx_Open2.exit.thread15

bb.aa:                                            ; preds = %bb.z
  %i.dh = load ptr, ptr %4, align 8, !tbaa !73
  %i.di = call i32 @CrcCalc(ptr noundef %i.dh, i64 noundef %.1126.i) #12
  %i.dj = icmp eq i32 %i.di, %.1124.i
  br i1 %i.dj, label %bb.ab, label %SzArEx_Open2.exit.thread15

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.dk = load ptr, ptr %4, align 8, !tbaa !73
  store ptr %i.dk, ptr %5, align 8, !tbaa !74
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !76
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !77
  %i.do = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %5, ptr noundef nonnull %i.h) ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  %i.dq = load i64, ptr %i.h, align 8
  %i.dr = icmp eq i64 %i.dq, 23
  %or.cond17.i = select i1 %i.dp, i1 %i.dr, i1 false
  br i1 %or.cond17.i, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @Buf_Init(ptr noundef nonnull %6) #12
  %i.ds = load i64, ptr %i.az, align 8, !tbaa !72
  %i.dt = call fastcc i32 @SzReadAndDecodePackedStreams(ptr noundef nonnull %1, ptr noundef %5, ptr noundef %6, i64 noundef %i.ds, ptr noundef %3) ; 2 uses
  %.not170.i = icmp eq i32 %i.dt, 0
  br i1 %.not170.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @Buf_Free(ptr noundef nonnull %6, ptr noundef %3) #12
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  call void @Buf_Free(ptr noundef nonnull %4, ptr noundef %3) #12
  %i.du = load ptr, ptr %6, align 8, !tbaa !73    ; 2 uses
  store ptr %i.du, ptr %4, align 8, !tbaa !73
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !76 ; 2 uses
  store i64 %i.dw, ptr %i.dl, align 8, !tbaa !76
  store ptr %i.du, ptr %5, align 8, !tbaa !74
  store i64 %i.dw, ptr %i.dn, align 8, !tbaa !77
  %i.dx = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %5, ptr noundef nonnull %i.h)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0119.i = phi i32 [ %i.dt, %bb.ad ], [ %i.dx, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ab
  %.1120.i = phi i32 [ %.0119.i, %bb.af ], [ %i.do, %bb.ab ] ; 2 uses
  %i.dy = icmp eq i32 %.1120.i, 0
  br i1 %i.dy, label %bb.ah, label %SzArEx_Open2.exit.thread19

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load i64, ptr %i.h, align 8, !tbaa !35
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %SzArEx_Open2.exit, label %SzArEx_Open2.exit.thread19

SzArEx_Open2.exit.thread15:                       ; preds = %bb.aa, %bb.z
  %.3122.i.ph = phi i32 [ %i.df, %bb.z ], [ 16, %bb.aa ]
  call void @Buf_Free(ptr noundef nonnull %4, ptr noundef %3) #12
  br label %.sink.split

SzArEx_Open2.exit.thread19:                       ; preds = %bb.ag, %bb.ah
  %.2121.i.ph = phi i32 [ 4, %bb.ah ], [ %.1120.i, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @Buf_Free(ptr noundef nonnull %4, ptr noundef %3) #12
  br label %.sink.split

SzArEx_Open2.exit:                                ; preds = %bb.ah
  %i.eb = call fastcc i32 @SzReadHeader(ptr noundef %0, ptr noundef %5, ptr noundef %2, ptr noundef %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @Buf_Free(ptr noundef nonnull %4, ptr noundef %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not = icmp eq i32 %i.eb, 0
  br i1 %.not, label %bb.aj, label %bb.ai

.sink.split:                                      ; preds = %bb.g, %bb.e, %bb.d, %bb.f, %bb.c, %.thread181.i, %.thread188.i, %bb.y, %bb.b, %bb.r, %bb.w, %bb.x, %bb.t, %bb.h, %bb.a, %TestSignatureCandidate.exit.i, %SzArEx_Open2.exit.thread15, %SzArEx_Open2.exit.thread19
  %.12.i9.ph = phi i32 [ %.2121.i.ph, %SzArEx_Open2.exit.thread19 ], [ %.3122.i.ph, %SzArEx_Open2.exit.thread15 ], [ 17, %bb.g ], [ 17, %bb.e ], [ 17, %bb.d ], [ 17, %bb.f ], [ 17, %bb.c ], [ %.7136.ph.i, %.thread181.i ], [ %.10139.ph.i, %.thread188.i ], [ 2, %bb.y ], [ %i.l, %bb.b ], [ %i.cl, %bb.r ], [ 6, %bb.w ], [ %i.dc, %bb.x ], [ 17, %bb.t ], [ 4, %bb.h ], [ %i.k, %bb.a ], [ 17, %TestSignatureCandidate.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %SzArEx_Open2.exit
  %.12.i9 = phi i32 [ %i.eb, %SzArEx_Open2.exit ], [ %.12.i9.ph, %.sink.split ]
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !46
  call void %i.ed(ptr noundef %2, ptr noundef %i.ef) #12, !inline_history !78
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !14
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !49
  call void %i.eg(ptr noundef %2, ptr noundef %i.ei) #12, !inline_history !78
  %i.ej = load ptr, ptr %i.ec, align 8, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !50
  call void %i.ej(ptr noundef %2, ptr noundef %i.el) #12, !inline_history !78
  %i.em = load ptr, ptr %i.ec, align 8, !tbaa !14
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !51
  call void %i.em(ptr noundef %2, ptr noundef %i.eo) #12, !inline_history !78
  %i.ep = load ptr, ptr %i.ec, align 8, !tbaa !14
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !52
  call void %i.ep(ptr noundef %2, ptr noundef %i.er) #12, !inline_history !78
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @Buf_Free(ptr noundef nonnull %i.es, ptr noundef %2) #12
  call void @SzAr_Free(ptr noundef %0, ptr noundef %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ee, i8 0, i64 40, i1 false)
  call void @Buf_Init(ptr noundef nonnull %i.es) #12
  br label %bb.aj

end_hunk_0
