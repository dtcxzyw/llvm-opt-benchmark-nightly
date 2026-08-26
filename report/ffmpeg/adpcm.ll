Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/adpcm?download=true
inline.NumInlined: 172
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@adpcm_decode_frame:bb.a
  %i.a = alloca [84 x i8], align 16               ; 7 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  %i.c = alloca [2 x [2 x i32]], align 16         ; 7 uses
  %i.d = alloca [2 x i32], align 4                ; 7 uses
  %i.e = alloca [2 x i32], align 4                ; 6 uses
  %i.f = alloca [6 x i32], align 16               ; 4 uses
  %i.g = alloca [14 x [16 x i32]], align 16       ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 54 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !49   ; 56 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17   ; 154 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 5 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41   ; 113 uses
  %i.p = icmp ne ptr %i.i, null
  %i.q = icmp sgt i32 %i.k, -1
  %or.cond.i1935 = and i1 %i.p, %i.q
  br i1 %or.cond.i1935, label %bytestream2_init.exit1936, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, i32 noundef 141) #13
  tail call void @abort() #14
  unreachable

bytestream2_init.exit1936:                        ; preds = %bb.a
  %i.r = zext nneg i32 %i.k to i64                ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.r ; 69 uses
  %i.t = icmp slt i32 %i.o, 1
  %i.u = icmp samesign ugt i32 %i.k, 153391689
  %or.cond303.i = or i1 %i.u, %i.t
  br i1 %or.cond303.i, label %get_nb_samples.exit.thread, label %bb.c

bb.c:                                             ; preds = %bytestream2_init.exit1936
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38   ; 5 uses
  switch i32 %i.y, label %get_nb_samples.exit.thread [
    i32 69657, label %bb.d
    i32 69632, label %bb.e
    i32 69688, label %bb.f
    i32 69644, label %bb.g
    i32 69661, label %bb.g
    i32 69680, label %bb.g
    i32 69655, label %bb.g
    i32 69693, label %bb.g
    i32 69664, label %bb.g
    i32 69636, label %bb.g
    i32 69646, label %bb.g
    i32 69670, label %bb.g
    i32 69675, label %bb.g
    i32 69677, label %bb.g
    i32 69678, label %bb.g
    i32 69679, label %bb.g
    i32 69639, label %bb.i
    i32 69673, label %bb.i
    i32 69682, label %bb.i
    i32 69671, label %bb.i
    i32 69681, label %bb.i
    i32 69659, label %bb.i
    i32 69637, label %bb.i
    i32 69651, label %bb.j
    i32 69642, label %bb.k
    i32 69689, label %bb.m
    i32 69686, label %bb.o
    i32 69656, label %bb.p
    i32 69658, label %bb.r
    i32 69685, label %bb.bf
    i32 69676, label %bb.be
    i32 69692, label %bb.be
    i32 69634, label %bb.y
    i32 69635, label %bb.z
    i32 69666, label %bb.ab
    i32 69687, label %bb.ac
    i32 69690, label %bb.ad
    i32 69633, label %bb.af
    i32 69684, label %bb.ah
    i32 69638, label %bb.aj
    i32 69672, label %bb.ak
    i32 69649, label %bb.al
    i32 69648, label %bb.al
    i32 69647, label %bb.al
    i32 69645, label %bb.ao
    i32 69650, label %bb.ar
    i32 69668, label %bb.ar
    i32 69663, label %bb.ay
    i32 69640, label %bb.az
    i32 69683, label %bb.ba
    i32 69665, label %bb.bb
    i32 69669, label %bb.bb
    i32 69691, label %bb.bc
    i32 69674, label %bb.bd
    i32 69652, label %bb.s
    i32 69654, label %bb.u
    i32 69653, label %bb.w
  ]

bb.d:                                             ; preds = %bb.c
  %i.z = mul nuw nsw i32 %i.o, 76
  %i.aa = icmp samesign ult i32 %i.k, %i.z
  br i1 %i.aa, label %get_nb_samples.exit.thread, label %get_nb_samples.exit.thread2658

bb.e:                                             ; preds = %bb.c
  %i.ab = mul nuw nsw i32 %i.o, 34
  %i.ac = icmp samesign ult i32 %i.k, %i.ab
  br i1 %i.ac, label %get_nb_samples.exit.thread, label %get_nb_samples.exit.thread2658

bb.f:                                             ; preds = %bb.c
  %i.ad = udiv i32 %i.k, 9
  %i.ae = shl nuw nsw i32 %i.ad, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.af = shl nuw nsw i32 %i.k, 1
  %i.ag = udiv i32 %i.af, %i.o
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0241.i = phi i32 [ %i.ae, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  %.not.i1987 = icmp eq i32 %.0241.i, 0
  br i1 %.not.i1987, label %.thread323.i, label %get_nb_samples.exit.thread2658

.thread323.i:                                     ; preds = %bb.h
  switch i32 %i.y, label %get_nb_samples.exit.thread [
    i32 69639, label %bb.i
    i32 69673, label %bb.i
    i32 69682, label %bb.i
    i32 69671, label %bb.i
    i32 69681, label %bb.i
    i32 69659, label %bb.i
    i32 69637, label %bb.i
    i32 69651, label %bb.j
    i32 69642, label %bb.k
    i32 69689, label %bb.m
    i32 69686, label %bb.o
    i32 69656, label %bb.p
    i32 69658, label %bb.r
    i32 69685, label %bb.bf
    i32 69676, label %bb.be
    i32 69692, label %bb.be
    i32 69653, label %bb.w
    i32 69654, label %bb.u
    i32 69666, label %bb.ab
    i32 69687, label %bb.ac
    i32 69690, label %bb.ad
    i32 69652, label %bb.s
    i32 69684, label %bb.ah
    i32 69638, label %bb.aj
    i32 69672, label %bb.ak
    i32 69649, label %bb.al
    i32 69648, label %bb.al
    i32 69647, label %bb.al
    i32 69645, label %bb.ao
    i32 69650, label %bb.ar
    i32 69668, label %bb.ar
    i32 69663, label %bb.ay
    i32 69640, label %bb.az
    i32 69683, label %bb.ba
    i32 69665, label %bb.bb
    i32 69669, label %bb.bb
    i32 69691, label %bb.bc
    i32 69674, label %bb.bd
  ]

bb.i:                                             ; preds = %.thread323.i, %.thread323.i, %.thread323.i, %.thread323.i, %.thread323.i, %.thread323.i, %.thread323.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.ah = shl i32 %i.o, 3
  %i.ai = shl nuw nsw i32 %i.k, 1
  %i.aj = sub i32 %i.ai, %i.ah
  %i.ak = sdiv i32 %i.aj, %i.o
  br label %get_nb_samples.exit

bb.j:                                             ; preds = %.thread323.i, %bb.c
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.r, i64 4) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.am, align 1, !tbaa !13 ; 2 uses
  %i.ap = shl nuw nsw i32 %i.k, 1
  %i.aq = add nsw i32 %i.ap, -16
  %..i1986 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ao)
  %i.ar = sub nuw nsw i64 -4, %i.al
  %i.as = icmp samesign ult i32 %i.k, 4
  %.0.i25.i.i = select i1 %i.as, i64 %i.ar, i64 -8
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 %.0.i25.i.i
  br label %bb.bi

bb.k:                                             ; preds = %.thread323.i, %bb.c
  %i.au = icmp samesign ult i32 %i.k, 4
  br i1 %i.au, label %bytestream2_get_le32.exit318.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.aw = load i32, ptr %i.i, align 1, !tbaa !13
  br label %bytestream2_get_le32.exit318.i

bytestream2_get_le32.exit318.i:                   ; preds = %bb.k, %bb.l
  %.sroa.02380.165 = phi ptr [ %i.av, %bb.l ], [ %i.s, %bb.k ]
  %.0.i317.i = phi i32 [ %i.aw, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.ax = srem i32 %.0.i317.i, 28
  %i.ay = sub nsw i32 %.0.i317.i, %i.ax
  %i.az = add nsw i32 %i.k, -12                   ; 2 uses
  %i.ba = icmp eq i32 %i.o, 2
  %4 = sdiv i32 %i.az, 30
  %i.bb = sdiv i32 %i.az, 15
  %5 = select i1 %i.ba, i32 %4, i32 %i.bb
  %i.bc = mul nuw nsw i32 %5, 28
  br label %bb.bi

bb.m:                                             ; preds = %.thread323.i, %bb.c
  %i.bd = icmp samesign ult i32 %i.k, 8
  br i1 %i.bd, label %get_nb_samples.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i64, ptr %i.i, align 1, !tbaa !13
  %i.bf = tail call noundef i64 @llvm.bswap.i64(i64 %i.be)
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = lshr i32 %i.bg, 16
  br label %get_nb_samples.exit

bb.o:                                             ; preds = %.thread323.i, %bb.c
  %i.bi = icmp samesign ult i32 %i.k, 2
  br i1 %i.bi, label %.thread334.i, label %bytestream2_get_be16.exit.i

bytestream2_get_be16.exit.i:                      ; preds = %bb.o
  %i.bj = load i16, ptr %i.i, align 1, !tbaa !13
  %.fr.i = freeze i16 %i.bj                       ; 2 uses
  %i.bk = icmp eq i16 %.fr.i, 256
  %i.bl = shl nuw nsw i32 %i.o, 1
  %i.bm = add nuw nsw i32 %i.bl, 6
  %spec.select.i = select i1 %i.bk, i32 %i.bm, i32 6
  %i.bn = icmp eq i16 %.fr.i, 768
  %i.bo = mul nuw nsw i32 %i.o, 3
  %i.bp = select i1 %i.bn, i32 %i.bo, i32 0
  %spec.select350.i = add nuw nsw i32 %spec.select.i, %i.bp
  br label %.thread334.i

.thread334.i:                                     ; preds = %bytestream2_get_be16.exit.i, %bb.o
  %i.bq = phi i32 [ %spec.select350.i, %bytestream2_get_be16.exit.i ], [ 6, %bb.o ]
  %i.br = sub nsw i32 %i.k, %i.bq
  %i.bs = shl nsw i32 %i.br, 1
  %i.bt = sdiv i32 %i.bs, %i.o
  br label %get_nb_samples.exit

bb.p:                                             ; preds = %.thread323.i, %bb.c
  %i.bu = icmp samesign ult i32 %i.k, 4
  br i1 %i.bu, label %bytestream2_get_le32.exit316.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bw = load i32, ptr %i.i, align 1, !tbaa !13
  br label %bytestream2_get_le32.exit316.i

bytestream2_get_le32.exit316.i:                   ; preds = %bb.p, %bb.q
  %.sroa.02380.164 = phi ptr [ %i.bv, %bb.q ], [ %i.s, %bb.p ]
  %.0.i315.i = phi i32 [ %i.bw, %bb.q ], [ 0, %bb.p ]
  %.neg352.i = shl nuw nsw i32 %i.k, 1
  %i.bx = add nsw i32 %.neg352.i, -8
  %i.by = shl i32 %i.o, 4
  %i.bz = sub i32 %i.bx, %i.by
  %i.ca = sdiv i32 %i.bz, %i.o
  br label %bb.bi

bb.r:                                             ; preds = %.thread323.i, %bb.c
  %i.cb = sub nsw i32 %i.k, %i.o
  %i.cc = sdiv i32 %i.cb, %i.o
  %i.cd = shl nsw i32 %i.cc, 1
  br label %get_nb_samples.exit

bb.s:                                             ; preds = %.thread323.i, %bb.c
  %.neg287.i = mul i32 %i.o, -9                   ; 2 uses
  %i.ce = icmp samesign ult i32 %i.k, 4
  br i1 %i.ce, label %bytestream2_get_le32.exit314.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cg = load i32, ptr %i.i, align 1, !tbaa !13
  br label %bytestream2_get_le32.exit314.i

bb.u:                                             ; preds = %.thread323.i, %bb.c
  %.neg289.i = mul i32 %i.o, -5                   ; 2 uses
  %i.ch = icmp samesign ult i32 %i.k, 4
  br i1 %i.ch, label %bytestream2_get_le32.exit314.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cj = load i32, ptr %i.i, align 1, !tbaa !13
  br label %bytestream2_get_le32.exit314.i

bb.w:                                             ; preds = %.thread323.i, %bb.c
  %.neg291.i = mul i32 %i.o, -5                   ; 2 uses
  %i.ck = icmp samesign ult i32 %i.k, 4
  br i1 %i.ck, label %bytestream2_get_le32.exit314.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cm = load i32, ptr %i.i, align 1, !tbaa !13
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  br label %bytestream2_get_le32.exit314.i

bytestream2_get_le32.exit314.i:                   ; preds = %bb.w, %bb.u, %bb.s, %bb.x, %bb.v, %bb.t
  %.sroa.02380.160 = phi ptr [ %i.s, %bb.u ], [ %i.cl, %bb.x ], [ %i.s, %bb.s ], [ %i.ci, %bb.v ], [ %i.cf, %bb.t ], [ %i.s, %bb.w ]
  %i.co = phi i32 [ 0, %bb.u ], [ %i.cn, %bb.x ], [ 0, %bb.s ], [ %i.cj, %bb.v ], [ %i.cg, %bb.t ], [ 0, %bb.w ] ; 2 uses
  %.1251.neg.in.i = phi i32 [ %.neg289.i, %bb.u ], [ %.neg291.i, %bb.x ], [ %.neg287.i, %bb.s ], [ %.neg289.i, %bb.v ], [ %.neg287.i, %bb.t ], [ %.neg291.i, %bb.w ]
  %i.cp = srem i32 %i.co, 28
  %i.cq = sub nsw i32 %i.co, %i.cp
  %.1251.neg.i = add nsw i32 %i.k, -4
  %i.cr = add i32 %.1251.neg.i, %.1251.neg.in.i
  %i.cs = shl nsw i32 %i.cr, 1
  %i.ct = sdiv i32 %i.cs, %i.o                    ; 2 uses
  %i.cu = srem i32 %i.ct, 28
  %i.cv = sub nsw i32 %i.ct, %i.cu
  br label %bb.bi

bb.y:                                             ; preds = %bb.c
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !42 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  %.294.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.cx)
  %.0237.i = select i1 %i.cy, i32 %.294.i, i32 %i.k
  %i.cz = shl i32 %.0237.i, 1
  %i.da = add i32 %i.cz, -32
  %i.db = sdiv i32 %i.da, 3
  %i.dc = shl nsw i32 %i.db, 2
  %i.dd = sdiv i32 %i.dc, %i.o
  br label %get_nb_samples.exit

bb.z:                                             ; preds = %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.df = load i32, ptr %i.de, align 4, !tbaa !42 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  %.295.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.df)
  %.1238.i = select i1 %i.dg, i32 %.295.i, i32 %i.k ; 2 uses
  %i.dh = shl nsw i32 %i.o, 2                     ; 2 uses
  %i.di = icmp slt i32 %.1238.i, %i.dh
  br i1 %i.di, label %get_nb_samples.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = sub nsw i32 %.1238.i, %i.dh
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = udiv i32 %i.dk, %i.o
  %i.dm = add nuw nsw i32 %i.dl, 1
  br label %get_nb_samples.exit.thread2658

bb.ab:                                            ; preds = %.thread323.i, %bb.c
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !42 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 0
  %.296.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.do)
  %.2239.i = select i1 %i.dp, i32 %.296.i, i32 %i.k
  %i.dq = shl i32 %i.o, 3
  %i.dr = shl i32 %.2239.i, 1
  %i.ds = sub i32 %i.dr, %i.dq
  %i.dt = sdiv i32 %i.ds, %i.o
  br label %get_nb_samples.exit

bb.ac:                                            ; preds = %.thread323.i, %bb.c
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !42 ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  %.297.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.dv)
  %.3240.i = select i1 %i.dw, i32 %.297.i, i32 %i.k
  %i.dx = shl i32 %i.o, 3
  %i.dy = shl i32 %.3240.i, 1
  %i.dz = sub i32 %i.dy, %i.dx
  %i.ea = sdiv i32 %i.dz, %i.o
  br label %get_nb_samples.exit

bb.ad:                                            ; preds = %.thread323.i, %bb.c
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !42 ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  %.298.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.ec)
  %.4.i = select i1 %i.ed, i32 %.298.i, i32 %i.k
  %i.ee = shl i32 %i.o, 3
  %i.ef = shl i32 %.4.i, 1
  %i.eg = sub i32 %i.ef, %i.ee
  %i.eh = sdiv i32 %i.eg, %i.o
  %i.ei = icmp eq i32 %i.o, 1
  br i1 %i.ei, label %bb.ae, label %get_nb_samples.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.120) #13
  br label %get_nb_samples.exit.thread

bb.af:                                            ; preds = %bb.c
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !42 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  %.299.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.ek)
  %.5.i = select i1 %i.el, i32 %.299.i, i32 %i.k  ; 2 uses
  %i.em = shl nsw i32 %i.o, 2                     ; 2 uses
  %.not286.i = icmp slt i32 %.5.i, %i.em
  br i1 %.not286.i, label %get_nb_samples.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !43
  %i.ep = add nsw i32 %i.eo, -2
  %i.eq = sext i32 %i.ep to i64                   ; 2 uses
  %i.er = getelementptr inbounds i8, ptr @ff_adpcm_ima_block_samples, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !13
  %i.et = zext i8 %i.es to i32
  %i.eu = getelementptr inbounds i8, ptr @ff_adpcm_ima_block_sizes, i64 %i.eq
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !13
  %i.ew = zext i8 %i.ev to i32
  %i.ex = sub nsw i32 %.5.i, %i.em
end_hunk_0
