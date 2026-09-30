Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/adpcm?download=true
inline.NumInlined: 172
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@adpcm_decode_frame:bb.a
  %i.t = icmp slt i32 %i.o, 1
  %i.u = icmp samesign ugt i32 %i.k, 153391689
  %or.cond304.i = or i1 %i.u, %i.t
  br i1 %or.cond304.i, label %get_nb_samples.exit.thread, label %bb.c

bb.c:                                             ; preds = %bytestream2_init.exit1935
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !40   ; 5 uses
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
  br i1 %i.aa, label %get_nb_samples.exit.thread, label %get_nb_samples.exit.thread2654

bb.e:                                             ; preds = %bb.c
  %i.ab = mul nuw nsw i32 %i.o, 34
  %i.ac = icmp samesign ult i32 %i.k, %i.ab
  br i1 %i.ac, label %get_nb_samples.exit.thread, label %get_nb_samples.exit.thread2654

bb.f:                                             ; preds = %bb.c
  %i.ad = udiv i32 %i.k, 9
  %i.ae = shl nuw nsw i32 %i.ad, 4
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.af = shl nuw nsw i32 %i.k, 1
  %i.ag = udiv i32 %i.af, %i.o
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0243.i = phi i32 [ %i.ae, %bb.f ], [ %i.ag, %bb.g ] ; 2 uses
  %.not.i1986 = icmp eq i32 %.0243.i, 0
  br i1 %.not.i1986, label %.thread324.i, label %get_nb_samples.exit.thread2654

.thread324.i:                                     ; preds = %bb.h
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

bb.i:                                             ; preds = %.thread324.i, %.thread324.i, %.thread324.i, %.thread324.i, %.thread324.i, %.thread324.i, %.thread324.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.ah = shl i32 %i.o, 3
  %i.ai = shl nuw nsw i32 %i.k, 1
  %i.aj = sub i32 %i.ai, %i.ah
  %i.ak = sdiv i32 %i.aj, %i.o
  br label %get_nb_samples.exit

bb.j:                                             ; preds = %.thread324.i, %bb.c
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.r, i64 4) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i32, ptr %i.am, align 1, !tbaa !13 ; 2 uses
  %i.ap = shl nuw nsw i32 %i.k, 1
  %i.aq = add nsw i32 %i.ap, -16
  %..i1985 = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ao)
  %i.ar = sub nuw nsw i64 -4, %i.al
  %i.as = icmp samesign ult i32 %i.k, 4
  %.0.i25.i.i = select i1 %i.as, i64 %i.ar, i64 -8
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 %.0.i25.i.i
  br label %bb.bi

bb.k:                                             ; preds = %.thread324.i, %bb.c
  %i.au = icmp samesign ult i32 %i.k, 4
  br i1 %i.au, label %bytestream2_get_le32.exit319.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.aw = load i32, ptr %i.i, align 1, !tbaa !13
  br label %bytestream2_get_le32.exit319.i

bytestream2_get_le32.exit319.i:                   ; preds = %bb.k, %bb.l
  %.sroa.02376.165 = phi ptr [ %i.av, %bb.l ], [ %i.s, %bb.k ]
  %.0.i318.i = phi i32 [ %i.aw, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.ax = srem i32 %.0.i318.i, 28
  %i.ay = sub nsw i32 %.0.i318.i, %i.ax
  %i.az = add nsw i32 %i.k, -12
  %i.ba = icmp eq i32 %i.o, 2
  %i.bb = select i1 %i.ba, i32 30, i32 15
  %i.bc = sdiv i32 %i.az, %i.bb
  %i.bd = mul nuw nsw i32 %i.bc, 28
  br label %bb.bi

bb.m:                                             ; preds = %.thread324.i, %bb.c
  %i.be = icmp samesign ult i32 %i.k, 8
  br i1 %i.be, label %get_nb_samples.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load i64, ptr %i.i, align 1, !tbaa !13
  %i.bg = tail call noundef i64 @llvm.bswap.i64(i64 %i.bf)
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = lshr i32 %i.bh, 16
  br label %get_nb_samples.exit

bb.o:                                             ; preds = %.thread324.i, %bb.c
  %i.bj = icmp samesign ult i32 %i.k, 2
  br i1 %i.bj, label %.thread335.i, label %bytestream2_get_be16.exit.i

bytestream2_get_be16.exit.i:                      ; preds = %bb.o
  %i.bk = load i16, ptr %i.i, align 1, !tbaa !13
  %.fr.i = freeze i16 %i.bk                       ; 2 uses
  %i.bl = icmp eq i16 %.fr.i, 256
  %i.bm = shl nuw nsw i32 %i.o, 1
  %i.bn = add nuw nsw i32 %i.bm, 6
  %spec.select.i = select i1 %i.bl, i32 %i.bn, i32 6
  %i.bo = icmp eq i16 %.fr.i, 768
  %i.bp = mul nuw nsw i32 %i.o, 3
  %i.bq = select i1 %i.bo, i32 %i.bp, i32 0
  %spec.select351.i = add nuw nsw i32 %spec.select.i, %i.bq
  br label %.thread335.i

.thread335.i:                                     ; preds = %bytestream2_get_be16.exit.i, %bb.o
  %i.br = phi i32 [ %spec.select351.i, %bytestream2_get_be16.exit.i ], [ 6, %bb.o ]
  %i.bs = sub nsw i32 %i.k, %i.br
  %i.bt = shl nsw i32 %i.bs, 1
  %i.bu = sdiv i32 %i.bt, %i.o
  br label %get_nb_samples.exit

bb.p:                                             ; preds = %.thread324.i, %bb.c
  %i.bv = icmp samesign ult i32 %i.k, 4
  br i1 %i.bv, label %bytestream2_get_le32.exit317.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bx = load i32, ptr %i.i, align 1, !tbaa !13
  br label %bytestream2_get_le32.exit317.i

bytestream2_get_le32.exit317.i:                   ; preds = %bb.p, %bb.q
  %.sroa.02376.164 = phi ptr [ %i.bw, %bb.q ], [ %i.s, %bb.p ]
  %.0.i316.i = phi i32 [ %i.bx, %bb.q ], [ 0, %bb.p ]
  %.neg353.i = shl nuw nsw i32 %i.k, 1
  %i.by = add nsw i32 %.neg353.i, -8
  %i.bz = shl i32 %i.o, 4
  %i.ca = sub i32 %i.by, %i.bz
  %i.cb = sdiv i32 %i.ca, %i.o
  br label %bb.bi

bb.r:                                             ; preds = %.thread324.i, %bb.c
  %i.cc = sub nsw i32 %i.k, %i.o
  %i.cd = sdiv i32 %i.cc, %i.o
  %i.ce = shl nsw i32 %i.cd, 1
  br label %get_nb_samples.exit

bb.s:                                             ; preds = %.thread324.i, %bb.c
  %.neg288.i = mul i32 %i.o, -9                   ; 2 uses
  %i.cf = icmp samesign ult i32 %i.k, 4
  br i1 %i.cf, label %bytestream2_get_le32.exit315.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ch = load i32, ptr %i.i, align 1, !tbaa !13
  br label %bytestream2_get_le32.exit315.i

bb.u:                                             ; preds = %.thread324.i, %bb.c
  %.neg290.i = mul i32 %i.o, -5                   ; 2 uses
  %i.ci = icmp samesign ult i32 %i.k, 4
  br i1 %i.ci, label %bytestream2_get_le32.exit315.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ck = load i32, ptr %i.i, align 1, !tbaa !13
  br label %bytestream2_get_le32.exit315.i

bb.w:                                             ; preds = %.thread324.i, %bb.c
  %.neg292.i = mul i32 %i.o, -5                   ; 2 uses
  %i.cl = icmp samesign ult i32 %i.k, 4
  br i1 %i.cl, label %bytestream2_get_le32.exit315.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cn = load i32, ptr %i.i, align 1, !tbaa !13
  %i.co = tail call i32 @llvm.bswap.i32(i32 %i.cn)
  br label %bytestream2_get_le32.exit315.i

bytestream2_get_le32.exit315.i:                   ; preds = %bb.w, %bb.u, %bb.s, %bb.x, %bb.v, %bb.t
  %.sroa.02376.160 = phi ptr [ %i.s, %bb.u ], [ %i.cm, %bb.x ], [ %i.s, %bb.s ], [ %i.cj, %bb.v ], [ %i.cg, %bb.t ], [ %i.s, %bb.w ]
  %i.cp = phi i32 [ 0, %bb.u ], [ %i.co, %bb.x ], [ 0, %bb.s ], [ %i.ck, %bb.v ], [ %i.ch, %bb.t ], [ 0, %bb.w ] ; 2 uses
  %.1241.neg.in.i = phi i32 [ %.neg290.i, %bb.u ], [ %.neg292.i, %bb.x ], [ %.neg288.i, %bb.s ], [ %.neg290.i, %bb.v ], [ %.neg288.i, %bb.t ], [ %.neg292.i, %bb.w ]
  %i.cq = srem i32 %i.cp, 28
  %i.cr = sub nsw i32 %i.cp, %i.cq
  %.1241.neg.i = add nsw i32 %i.k, -4
  %i.cs = add i32 %.1241.neg.i, %.1241.neg.in.i
  %i.ct = shl nsw i32 %i.cs, 1
  %i.cu = sdiv i32 %i.ct, %i.o                    ; 2 uses
  %i.cv = srem i32 %i.cu, 28
  %i.cw = sub nsw i32 %i.cu, %i.cv
  br label %bb.bi

bb.y:                                             ; preds = %bb.c
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !42 ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  %.295.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.cy)
  %.0250.i = select i1 %i.cz, i32 %.295.i, i32 %i.k
  %i.da = shl i32 %.0250.i, 1
  %i.db = add i32 %i.da, -32
  %i.dc = sdiv i32 %i.db, 3
  %i.dd = shl nsw i32 %i.dc, 2
  %i.de = sdiv i32 %i.dd, %i.o
  br label %get_nb_samples.exit

bb.z:                                             ; preds = %bb.c
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !42 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  %.296.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.dg)
  %.1251.i = select i1 %i.dh, i32 %.296.i, i32 %i.k ; 2 uses
  %i.di = shl nuw nsw i32 %i.o, 2                 ; 2 uses
  %i.dj = icmp slt i32 %.1251.i, %i.di
  br i1 %i.dj, label %get_nb_samples.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = sub nuw nsw i32 %.1251.i, %i.di
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = udiv i32 %i.dl, %i.o
  %i.dn = add nuw nsw i32 %i.dm, 1
  br label %get_nb_samples.exit.thread2654

bb.ab:                                            ; preds = %.thread324.i, %bb.c
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !42 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  %.297.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.dp)
  %.2252.i = select i1 %i.dq, i32 %.297.i, i32 %i.k
  %i.dr = shl i32 %i.o, 3
  %i.ds = shl i32 %.2252.i, 1
  %i.dt = sub i32 %i.ds, %i.dr
  %i.du = sdiv i32 %i.dt, %i.o
  br label %get_nb_samples.exit

bb.ac:                                            ; preds = %.thread324.i, %bb.c
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !42 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  %.298.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.dw)
  %.3253.i = select i1 %i.dx, i32 %.298.i, i32 %i.k
  %i.dy = shl i32 %i.o, 3
  %i.dz = shl i32 %.3253.i, 1
  %i.ea = sub i32 %i.dz, %i.dy
  %i.eb = sdiv i32 %i.ea, %i.o
  br label %get_nb_samples.exit

bb.ad:                                            ; preds = %.thread324.i, %bb.c
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !42 ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  %.299.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.ed)
  %.4254.i = select i1 %i.ee, i32 %.299.i, i32 %i.k
  %i.ef = shl i32 %i.o, 3
  %i.eg = shl i32 %.4254.i, 1
  %i.eh = sub i32 %i.eg, %i.ef
  %i.ei = sdiv i32 %i.eh, %i.o
  %i.ej = icmp eq i32 %i.o, 1
  br i1 %i.ej, label %bb.ae, label %get_nb_samples.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.120) #13
  br label %get_nb_samples.exit.thread

bb.af:                                            ; preds = %bb.c
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !42 ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  %.300.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.el)
  %.5255.i = select i1 %i.em, i32 %.300.i, i32 %i.k ; 2 uses
  %i.en = shl nuw nsw i32 %i.o, 2                 ; 2 uses
  %.not287.i = icmp slt i32 %.5255.i, %i.en
  br i1 %.not287.i, label %get_nb_samples.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !43
  %i.eq = add nsw i32 %i.ep, -2
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = getelementptr inbounds i8, ptr @ff_adpcm_ima_block_samples, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !13
  %i.eu = zext i8 %i.et to i32
  %i.ev = getelementptr inbounds i8, ptr @ff_adpcm_ima_block_sizes, i64 %i.er
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !13
  %i.ex = zext i8 %i.ew to i32
  %i.ey = sub nuw nsw i32 %.5255.i, %i.en
  %i.ez = mul nuw nsw i32 %i.o, %i.ex
  %i.fa = udiv i32 %i.ey, %i.ez
  %i.fb = mul nuw nsw i32 %i.fa, %i.eu
  %i.fc = add nuw nsw i32 %i.fb, 1
  br label %get_nb_samples.exit.thread2654

bb.ah:                                            ; preds = %.thread324.i, %bb.c
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !42 ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  %.301.i = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %i.fe)
  %.6256.i = select i1 %i.ff, i32 %.301.i, i32 %i.k ; 2 uses
  %i.fg = shl nuw nsw i32 %i.o, 2                 ; 2 uses
  %.not286.i = icmp slt i32 %.6256.i, %i.fg
  br i1 %.not286.i, label %get_nb_samples.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !43
  %i.fj = add nsw i32 %i.fi, -2
  %i.fk = sext i32 %i.fj to i64                   ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr @ff_adpcm_ima_block_samples, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !13
  %i.fn = zext i8 %i.fm to i32
  %i.fo = getelementptr inbounds i8, ptr @ff_adpcm_ima_block_sizes, i64 %i.fk
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.fq = zext i8 %i.fp to i32
  %i.fr = sub nuw nsw i32 %.6256.i, %i.fg
  %i.fs = mul nuw nsw i32 %i.o, %i.fq
  %i.ft = udiv i32 %i.fr, %i.fs
  %i.fu = mul nuw nsw i32 %i.ft, %i.fn
  %i.fv = add nuw nsw i32 %i.fu, 1
end_hunk_0
