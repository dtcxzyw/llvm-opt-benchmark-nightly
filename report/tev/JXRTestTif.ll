Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/JXRTestTif?download=true
inline.NumInlined: 32
begin_hunk_0_@WriteTifDE:bb.a

PutTifUShort.exit49.thread:                       ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

PutTifUShort.exit49:                              ; preds = %bb.f
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.as = call i64 %i.ar(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef 2) #8, !inline_history !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.g

bb.g:                                             ; preds = %PutTifUShort.exit49
  %i.au = add i64 %1, 10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 0, ptr %i.b, align 2, !tbaa !9
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.aw = call i64 %i.av(ptr noundef nonnull %0, i64 noundef %i.au) #8, !inline_history !16 ; 2 uses
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %PutTifUShort.exit51, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.az = call i64 %i.ay(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef 2) #8, !inline_history !16
  br label %PutTifUShort.exit51

PutTifUShort.exit51:                              ; preds = %bb.g, %bb.h
  %.0.i50 = phi i64 [ %i.aw, %bb.g ], [ %i.az, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !14
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.bd = call i64 %i.bc(ptr noundef nonnull %0, i64 noundef %i.ah) #8, !inline_history !18 ; 2 uses
  %i.be = icmp slt i64 %i.bd, 0
  br i1 %i.be, label %PutTifULong.exit53, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.bg = call i64 %i.bf(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 4) #8, !inline_history !18
  br label %PutTifULong.exit53

PutTifULong.exit53:                               ; preds = %bb.i, %bb.j
  %.0.i52 = phi i64 [ %i.bd, %bb.i ], [ %i.bg, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %PutTifUShort.exit49.thread, %PutTifULong.exit.thread, %PutTifUShort.exit46.thread, %PutTifUShort.exit.thread, %bb.d, %PutTifULong.exit53, %PutTifUShort.exit51, %PutTifUShort.exit49, %PutTifULong.exit, %PutTifUShort.exit46, %PutTifUShort.exit
  %.0 = phi i64 [ %.0.i52, %PutTifULong.exit53 ], [ %i.n, %PutTifUShort.exit ], [ %i.w, %PutTifUShort.exit46 ], [ %i.as, %PutTifUShort.exit49 ], [ %i.af, %PutTifULong.exit ], [ %.0.i50, %PutTifUShort.exit51 ], [ -104, %bb.d ], [ %i.j, %PutTifUShort.exit.thread ], [ %i.t, %PutTifUShort.exit46.thread ], [ %i.ac, %PutTifULong.exit.thread ], [ %i.ap, %PutTifUShort.exit49.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @WriteTifHeader(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i16, align 2                      ; 5 uses
  %i.h = alloca i16, align 2                      ; 5 uses
  %i.i = alloca i16, align 2                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i16, align 2                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i16, align 2                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 66 uses
  %i.o = alloca [3 x i8], align 1                 ; 4 uses
  %1 = alloca %struct.tagTifDE, align 8           ; 26 uses
  %2 = alloca %struct.tagPKPixelInfo, align 8     ; 11 uses
  %3 = alloca %struct.tagTifDE, align 4           ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #8
  store i64 0, ptr %i.n, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.o, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.s = load <2 x float>, ptr %i.r, align 4, !tbaa !34
  %i.t = fmul <2 x float> %i.s, splat (float 1.000000e+04) ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = fptoui float %i.u to i32
  %i.w = extractelement <2 x float> %i.t, i64 1
  %i.x = fptoui float %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.aa = call i64 %i.z(ptr noundef %i.q, ptr noundef nonnull %i.n) #8 ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.loopexit240, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !33
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.c, label %.loopexit240

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 14 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !13
  %i.af = call i64 %i.ae(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, i64 noundef 2) #8 ; 2 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %.loopexit240, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !33
  %i.ai = add i64 %i.ah, 2                        ; 2 uses
  store i64 %i.ai, ptr %i.n, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i16 42, ptr %i.m, align 2, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 13 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12
  %i.al = call i64 %i.ak(ptr noundef nonnull %i.q, i64 noundef %i.ai) #8, !inline_history !16 ; 2 uses
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %PutTifUShort.exit.thread, label %PutTifUShort.exit

PutTifUShort.exit.thread:                         ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.loopexit240

PutTifUShort.exit:                                ; preds = %bb.d
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !13
  %i.ao = call i64 %i.an(ptr noundef nonnull %i.q, ptr noundef nonnull %i.m, i64 noundef 2) #8, !inline_history !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %.loopexit240, label %bb.e

bb.e:                                             ; preds = %PutTifUShort.exit
  %i.aq = load i64, ptr %i.n, align 8, !tbaa !33  ; 2 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  store i64 %i.ar, ptr %i.n, align 8, !tbaa !33
  %i.as = trunc i64 %i.aq to i32
  %i.at = add i32 %i.as, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 %i.at, ptr %i.l, align 4, !tbaa !14
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !12
  %i.av = call i64 %i.au(ptr noundef nonnull %i.q, i64 noundef %i.ar) #8, !inline_history !18 ; 2 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %PutTifULong.exit.thread, label %PutTifULong.exit

PutTifULong.exit.thread:                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit240

PutTifULong.exit:                                 ; preds = %bb.e
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !13
  %i.ay = call i64 %i.ax(ptr noundef nonnull %i.q, ptr noundef nonnull %i.l, i64 noundef 4) #8, !inline_history !18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %.loopexit240, label %bb.f

bb.f:                                             ; preds = %PutTifULong.exit
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !33
  %i.bb = add i64 %i.ba, 4
  store i64 %i.bb, ptr %i.n, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.bc, ptr %2, align 8, !tbaa !38
  %i.bd = call i64 @PixelFormatLookup(ptr noundef nonnull %2, i8 noundef zeroext 0) #8 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !39 ; 3 uses
  %i.bg = and i32 %i.bf, -2
  %or.cond = icmp eq i32 %i.bg, 100
  br i1 %or.cond, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = icmp eq i32 %i.bf, 1
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 33588
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !63
  %.not196 = icmp eq i32 %i.bj, 0
  br i1 %.not196, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.bk = phi i32 [ 2, %bb.f ], [ %i.bf, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !40 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !41 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !42 ; 2 uses
  %i.br = icmp eq i32 %i.bk, 5                    ; 2 uses
  %spec.select = select i1 %i.br, i16 16, i16 15
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !43
  %i.bu = trunc i64 %i.bt to i16
  %i.bv = lshr i16 %i.bu, 4
  %i.bw = and i16 %i.bv, 1
  %.1160 = add nuw nsw i16 %i.bw, %spec.select    ; 2 uses
  %i.bx = load i64, ptr %i.n, align 8, !tbaa !33  ; 2 uses
  %4 = add i64 %i.bx, 2
  %narrow = mul nuw nsw i16 %.1160, 12
  %5 = zext nneg i16 %narrow to i64
  %6 = add i64 %4, %5
  %7 = trunc i64 %6 to i32
  %i.by = add i32 %7, 4                           ; 2 uses
  %i.bz = icmp eq i32 %i.bm, 1                    ; 3 uses
  %i.ca = shl i32 %i.bm, 1
  %i.cb = select i1 %i.bz, i32 0, i32 %i.ca       ; 2 uses
  %i.cc = add i32 %i.by, %i.cb                    ; 2 uses
  %i.cd = add i32 %i.cc, %i.cb                    ; 3 uses
  %i.ce = add i32 %i.cd, 8
  %i.cf = add i32 %i.cd, 16
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i16 %.1160, ptr %i.k, align 2, !tbaa !9
  %i.ci = load ptr, ptr %i.aj, align 8, !tbaa !12
  %i.cj = call i64 %i.ci(ptr noundef nonnull %i.q, i64 noundef %i.bx) #8, !inline_history !16 ; 2 uses
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %PutTifUShort.exit203.thread, label %PutTifUShort.exit203

PutTifUShort.exit203.thread:                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.loopexit240

PutTifUShort.exit203:                             ; preds = %bb.j
  %i.cl = load ptr, ptr %i.ad, align 8, !tbaa !13
  %i.cm = call i64 %i.cl(ptr noundef nonnull %i.q, ptr noundef nonnull %i.k, i64 noundef 2) #8, !inline_history !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %.loopexit240, label %bb.k

bb.k:                                             ; preds = %PutTifUShort.exit203
  %i.co = load i64, ptr %i.n, align 8, !tbaa !33
  %i.cp = add i64 %i.co, 2                        ; 2 uses
  store i64 %i.cp, ptr %i.n, align 8, !tbaa !33
  store i64 4295229696, ptr %1, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !45
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !19
  %i.ct = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.cp, ptr noundef nonnull %1) ; 2 uses
  %i.cu = icmp slt i64 %i.ct, 0
  br i1 %i.cu, label %.loopexit240, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = load i64, ptr %i.n, align 8, !tbaa !33
  %i.cw = add i64 %i.cv, 12                       ; 2 uses
  store i64 %i.cw, ptr %i.n, align 8, !tbaa !33
  store i64 4295229697, ptr %1, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !64
  store i32 %i.cy, ptr %i.cs, align 8, !tbaa !19
  %i.cz = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.cw, ptr noundef nonnull %1) ; 2 uses
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %.loopexit240, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.db = load i64, ptr %i.n, align 8, !tbaa !33
  %i.dc = add i64 %i.db, 12                       ; 2 uses
  store i64 %i.dc, ptr %i.n, align 8, !tbaa !33
  store i32 196866, ptr %1, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %i.bm, ptr %i.dd, align 4, !tbaa !17
  %i.de = select i1 %i.bz, i32 %i.bo, i32 %i.by
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !19
  %i.df = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.dc, ptr noundef nonnull %1) ; 2 uses
  %i.dg = icmp slt i64 %i.df, 0
  br i1 %i.dg, label %.loopexit240, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dh = load i64, ptr %i.n, align 8, !tbaa !33
  %i.di = add i64 %i.dh, 12                       ; 2 uses
  store i64 %i.di, ptr %i.n, align 8, !tbaa !33
  %i.dj = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.di, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @WriteTifHeader.tifDEs, i64 36)) ; 2 uses
  %i.dk = icmp slt i64 %i.dj, 0
  br i1 %i.dk, label %.loopexit240, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = load i64, ptr %i.n, align 8, !tbaa !33
  %i.dm = add i64 %i.dl, 12                       ; 2 uses
  store i64 %i.dm, ptr %i.n, align 8, !tbaa !33
  store i64 4295164166, ptr %1, align 8
  store i32 %i.bk, ptr %i.cs, align 8, !tbaa !19
  %i.dn = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.dm, ptr noundef nonnull %1) ; 2 uses
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %.loopexit240, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = load i64, ptr %i.n, align 8, !tbaa !33
  %i.dq = add i64 %i.dp, 12                       ; 2 uses
  store i64 %i.dq, ptr %i.n, align 8, !tbaa !33
  store i64 4295229713, ptr %1, align 8
  %i.dr = load i64, ptr %i.ch, align 8, !tbaa !44
  %i.ds = trunc i64 %i.dr to i32
  store i32 %i.ds, ptr %i.cs, align 8, !tbaa !19
  %i.dt = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.dq, ptr noundef nonnull %1) ; 2 uses
  %i.du = icmp slt i64 %i.dt, 0
  br i1 %i.du, label %.loopexit240, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = load i64, ptr %i.n, align 8, !tbaa !33
  %i.dw = add i64 %i.dv, 12                       ; 2 uses
  store i64 %i.dw, ptr %i.n, align 8, !tbaa !33
  %i.dx = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.dw, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @WriteTifHeader.tifDEs, i64 72)) ; 2 uses
  %i.dy = icmp slt i64 %i.dx, 0
  br i1 %i.dy, label %.loopexit240, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = load i64, ptr %i.n, align 8, !tbaa !33
  %i.ea = add i64 %i.dz, 12                       ; 2 uses
  store i64 %i.ea, ptr %i.n, align 8, !tbaa !33
  store i64 4295164181, ptr %1, align 8
  store i32 %i.bm, ptr %i.cs, align 8, !tbaa !19
  %i.eb = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.ea, ptr noundef nonnull %1) ; 2 uses
  %i.ec = icmp slt i64 %i.eb, 0
  br i1 %i.ec, label %.loopexit240, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ed = load i64, ptr %i.n, align 8, !tbaa !33
  %i.ee = add i64 %i.ed, 12                       ; 2 uses
  store i64 %i.ee, ptr %i.n, align 8, !tbaa !33
  store i64 4295229718, ptr %1, align 8
  %i.ef = load i32, ptr %i.cx, align 4, !tbaa !64
  store i32 %i.ef, ptr %i.cs, align 8, !tbaa !19
  %i.eg = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.ee, ptr noundef nonnull %1) ; 2 uses
  %i.eh = icmp slt i64 %i.eg, 0
  br i1 %i.eh, label %.loopexit240, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = load i64, ptr %i.n, align 8, !tbaa !33
  %i.ej = add i64 %i.ei, 12                       ; 2 uses
  store i64 %i.ej, ptr %i.n, align 8, !tbaa !33
  store i64 4295229719, ptr %1, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !46
  %i.em = icmp eq i32 %i.el, 0
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !47 ; 2 uses
  br i1 %i.em, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ep = load i32, ptr %i.cq, align 8, !tbaa !45
  %i.eq = mul i32 %i.ep, %i.eo
  %i.er = add i32 %i.eq, 7
  %i.es = lshr i32 %i.er, 3
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.et = add i32 %i.eo, 7
  %i.eu = lshr i32 %i.et, 3
  %i.ev = load i32, ptr %i.cq, align 8, !tbaa !45
  %i.ew = mul i32 %i.eu, %i.ev
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ex = phi i32 [ %i.es, %bb.u ], [ %i.ew, %bb.v ]
  %i.ey = load i32, ptr %i.cx, align 4, !tbaa !64
  %i.ez = mul i32 %i.ey, %i.ex
  store i32 %i.ez, ptr %i.cs, align 8, !tbaa !19
  %i.fa = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.ej, ptr noundef nonnull %1) ; 2 uses
  %i.fb = icmp slt i64 %i.fa, 0
  br i1 %i.fb, label %.loopexit240, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fc = load i64, ptr %i.n, align 8, !tbaa !33
  %i.fd = add i64 %i.fc, 12                       ; 2 uses
  store i64 %i.fd, ptr %i.n, align 8, !tbaa !33
  store i64 4295295258, ptr %1, align 8
  store i32 %i.cd, ptr %i.cs, align 8, !tbaa !19
  %i.fe = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.fd, ptr noundef nonnull %1) ; 2 uses
  %i.ff = icmp slt i64 %i.fe, 0
  br i1 %i.ff, label %.loopexit240, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fg = load i64, ptr %i.n, align 8, !tbaa !33
  %i.fh = add i64 %i.fg, 12                       ; 2 uses
  store i64 %i.fh, ptr %i.n, align 8, !tbaa !33
  store i64 4295295259, ptr %1, align 8
  store i32 %i.ce, ptr %i.cs, align 8, !tbaa !19
  %i.fi = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.fh, ptr noundef nonnull %1) ; 2 uses
  %i.fj = icmp slt i64 %i.fi, 0
  br i1 %i.fj, label %.loopexit240, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fk = load i64, ptr %i.n, align 8, !tbaa !33
  %i.fl = add i64 %i.fk, 12                       ; 2 uses
  store i64 %i.fl, ptr %i.n, align 8, !tbaa !33
  %i.fm = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.fl, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @WriteTifHeader.tifDEs, i64 144)) ; 2 uses
  %i.fn = icmp slt i64 %i.fm, 0
  br i1 %i.fn, label %.loopexit240, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fo = load i64, ptr %i.n, align 8, !tbaa !33
  %i.fp = add i64 %i.fo, 12                       ; 2 uses
  store i64 %i.fp, ptr %i.n, align 8, !tbaa !33
  %i.fq = call i64 @WriteTifDE(ptr noundef nonnull %i.q, i64 noundef %i.fp, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @WriteTifHeader.tifDEs, i64 156)) ; 2 uses
  %i.fr = icmp slt i64 %i.fq, 0
  br i1 %i.fr, label %.loopexit240, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fs = load i64, ptr %i.n, align 8, !tbaa !33
  %i.ft = add i64 %i.fs, 12                       ; 3 uses
  store i64 %i.ft, ptr %i.n, align 8, !tbaa !33
end_hunk_0
