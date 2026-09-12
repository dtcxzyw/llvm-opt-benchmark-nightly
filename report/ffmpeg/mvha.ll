Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mvha?download=true
inline.NumInlined: 33
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decode_frame:bb.a
  %i.k = load i32, ptr %i.j, align 1, !tbaa !29   ; 2 uses
  %i.l = icmp ne i32 %i.k, 0
  %.not = icmp ult i32 %i.k, %i.f
  %or.cond209 = and i1 %i.l, %.not
  br i1 %or.cond209, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.i, align 1, !tbaa !29
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  switch i32 %i.n, label %.thread [
    i32 1448696396, label %bb.d
    i32 1497781576, label %bb.s
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 1352 ; 5 uses
  %i.p = tail call i32 @inflateReset(ptr noundef nonnull %i.o) #8 ; 2 uses
  %.not206 = icmp eq i32 %i.p, 0
  br i1 %.not206, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.p) #8
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.q = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #8 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !56
  %i.u = load i32, ptr %i.e, align 8, !tbaa !54
  %i.v = add nsw i32 %i.u, -8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 1360
  store i32 %i.v, ptr %i.w, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 1376 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 1384 ; 6 uses
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !58  ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph273, label %.thread239

.lr.ph273:                                        ; preds = %bb.g, %bb.j
  %i.ae = phi i32 [ %i.as, %bb.j ], [ %i.ac, %bb.g ]
  %.0174272 = phi i32 [ %i.ar, %bb.j ], [ 0, %bb.g ] ; 2 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !59
  %i.ag = xor i32 %.0174272, -1
  %i.ah = add i32 %i.ae, %i.ag
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !32
  %i.aj = mul nsw i32 %i.ai, %i.ah
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 %i.ak
  store ptr %i.al, ptr %i.z, align 8, !tbaa !60
  %i.am = load i32, ptr %i.aa, align 8, !tbaa !61
  store i32 %i.am, ptr %i.ab, align 8, !tbaa !62
  %i.an = tail call i32 @inflate(ptr noundef nonnull %i.o, i32 noundef 2) #8 ; 2 uses
  %or.cond = icmp ugt i32 %i.an, 1
  br i1 %or.cond, label %.loopexit297, label %bb.h

bb.h:                                             ; preds = %.lr.ph273
  %i.ao = load i32, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %.not207 = icmp eq i32 %i.ao, 0
  br i1 %.not207, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !60
  %i.aq = zext i32 %i.ao to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 0, i64 %i.aq, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ar = add nuw nsw i32 %.0174272, 1            ; 2 uses
  %i.as = load i32, ptr %i.x, align 4, !tbaa !58  ; 5 uses
  %.not208 = icmp slt i32 %i.ar, %i.as
  br i1 %.not208, label %.lr.ph273, label %.critedge, !llvm.loop !47

.critedge:                                        ; preds = %bb.j
  %.not208271.1 = icmp sgt i32 %i.as, 0
  br i1 %.not208271.1, label %.lr.ph273.1, label %.thread239

.lr.ph273.1:                                      ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 68
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph273.1
  %i.av = phi i32 [ %i.as, %.lr.ph273.1 ], [ %i.bk, %bb.n ]
  %.0174272.1 = phi i32 [ 0, %.lr.ph273.1 ], [ %i.bj, %bb.n ] ; 2 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !59
  %i.ax = xor i32 %.0174272.1, -1
  %i.ay = add i32 %i.av, %i.ax
  %i.az = load i32, ptr %i.au, align 4, !tbaa !32
  %i.ba = mul nsw i32 %i.az, %i.ay
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.aw, i64 %i.bb
  store ptr %i.bc, ptr %i.z, align 8, !tbaa !60
  %i.bd = load i32, ptr %i.aa, align 8, !tbaa !61
  %i.be = ashr i32 %i.bd, 1
  store i32 %i.be, ptr %i.ab, align 8, !tbaa !62
  %i.bf = tail call i32 @inflate(ptr noundef nonnull %i.o, i32 noundef 2) #8 ; 2 uses
  %or.cond.1 = icmp ugt i32 %i.bf, 1
  br i1 %or.cond.1, label %.loopexit297, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %.not207.1 = icmp eq i32 %i.bg, 0
  br i1 %.not207.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.z, align 8, !tbaa !60
  %i.bi = zext i32 %i.bg to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bh, i8 0, i64 %i.bi, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = add nuw nsw i32 %.0174272.1, 1          ; 2 uses
  %i.bk = load i32, ptr %i.x, align 4, !tbaa !58  ; 5 uses
  %.not208.1 = icmp slt i32 %i.bj, %i.bk
  br i1 %.not208.1, label %bb.k, label %.critedge.1, !llvm.loop !47

.critedge.1:                                      ; preds = %bb.n
  %.not208271.2 = icmp sgt i32 %i.bk, 0
  br i1 %.not208271.2, label %.lr.ph273.2, label %.thread239

.lr.ph273.2:                                      ; preds = %.critedge.1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph273.2
  %i.bn = phi i32 [ %i.bk, %.lr.ph273.2 ], [ %i.cc, %bb.r ]
  %.0174272.2 = phi i32 [ 0, %.lr.ph273.2 ], [ %i.cb, %bb.r ] ; 2 uses
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !59
  %i.bp = xor i32 %.0174272.2, -1
  %i.bq = add i32 %i.bn, %i.bp
  %i.br = load i32, ptr %i.bm, align 8, !tbaa !32
  %i.bs = mul nsw i32 %i.br, %i.bq
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 %i.bt
  store ptr %i.bu, ptr %i.z, align 8, !tbaa !60
  %i.bv = load i32, ptr %i.aa, align 8, !tbaa !61
  %i.bw = ashr i32 %i.bv, 1
  store i32 %i.bw, ptr %i.ab, align 8, !tbaa !62
  %i.bx = tail call i32 @inflate(ptr noundef nonnull %i.o, i32 noundef 2) #8 ; 2 uses
  %or.cond.2 = icmp ugt i32 %i.bx, 1
  br i1 %or.cond.2, label %.loopexit297, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = load i32, ptr %i.ab, align 8, !tbaa !62 ; 2 uses
  %.not207.2 = icmp eq i32 %i.by, 0
  br i1 %.not207.2, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !60
  %i.ca = zext i32 %i.by to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bz, i8 0, i64 %i.ca, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cb = add nuw nsw i32 %.0174272.2, 1          ; 2 uses
  %i.cc = load i32, ptr %i.x, align 4, !tbaa !58  ; 3 uses
  %.not208.2 = icmp slt i32 %i.cb, %i.cc
  br i1 %.not208.2, label %bb.o, label %.thread239, !llvm.loop !47

.loopexit297:                                     ; preds = %.lr.ph273, %bb.k, %bb.o
  %.lcssa = phi i32 [ %i.bx, %bb.o ], [ %i.bf, %bb.k ], [ %i.an, %.lr.ph273 ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef %.lcssa) #8
  br label %.thread

bb.s:                                             ; preds = %bb.c
  %i.cd = icmp samesign ugt i32 %i.f, 268435463
  br i1 %i.cd, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.ce = add nsw i32 %i.f, -8                    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.cg = shl nuw nsw i32 %i.ce, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !63
  %i.ci = zext nneg i32 %i.ce to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 15 uses
  store ptr %i.cf, ptr %i.cl, align 8, !tbaa !65
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 5 uses
  store i32 %i.cg, ptr %i.cm, align 4, !tbaa !66
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 17 uses
  store i32 0, ptr %i.cn, align 8, !tbaa !67
  store i64 0, ptr %i.d, align 8, !tbaa !68
  %i.co = load i64, ptr %i.cf, align 1, !tbaa !29
  %i.cp = tail call noundef i64 @llvm.bswap.i64(i64 %i.co) ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.cq, ptr %i.cl, align 8, !tbaa !65
  %i.cr = lshr i64 %i.cp, 32
  %i.cs = trunc i64 %i.cr to i8
  %4 = lshr i64 %i.cp, 24
  %i.ct = shl i64 %i.cp, 40
  store i64 %i.ct, ptr %i.d, align 8, !tbaa !68
  store i32 24, ptr %i.cn, align 8, !tbaa !67
  %i.cu = trunc i64 %4 to i32
  %5 = and i32 %i.cu, 255
  %i.cv = add nuw nsw i32 %5, 1                   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !40
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 300
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.aa
  %i.cz = phi i32 [ %i.cv, %.lr.ph ], [ %i.fc, %bb.aa ]
  %.0172263 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.aa ] ; 3 uses
  %.0173262 = phi i8 [ %i.cs, %.lr.ph ], [ %i.fd, %bb.aa ] ; 2 uses
  %i.da = load ptr, ptr %i.ch, align 8, !tbaa !63
  %i.db = load ptr, ptr %i.cl, align 8, !tbaa !65 ; 10 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = load i32, ptr %i.cm, align 4, !tbaa !66
  %i.dg = load i32, ptr %i.cn, align 8, !tbaa !67 ; 6 uses
  %.tr.i = trunc i64 %i.de to i32
  %i.dh = shl i32 %.tr.i, 3
  %i.di = add i32 %i.dg, %i.df
  %i.dj = add i32 %i.di, %i.dh
  %i.dk = icmp sgt i32 %i.dj, 3
  br i1 %i.dk, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %.not.i220 = icmp eq i32 %i.dg, 0
  br i1 %.not.i220, label %bb.v, label %bits_read_bit_be.exit

bb.v:                                             ; preds = %bb.u
  %i.dl = load ptr, ptr %i.ck, align 8, !tbaa !64
  %.not.i.i223 = icmp ult ptr %i.db, %i.dl
  br i1 %.not.i.i223, label %bits_read_bit_be.exit.thread369, label %bits_read_bit_be.exit.thread.thread

bits_read_bit_be.exit:                            ; preds = %bb.u
  %.val.i.pre.i = load i64, ptr %i.d, align 8, !tbaa !68 ; 2 uses
  %i.dm = add i32 %i.dg, -1                       ; 5 uses
  %i.dn = shl i64 %.val.i.pre.i, 1                ; 4 uses
  store i64 %i.dn, ptr %i.d, align 8, !tbaa !68
  store i32 %i.dm, ptr %i.cn, align 8, !tbaa !67
  %.not202 = icmp sgt i64 %.val.i.pre.i, -1
  br i1 %.not202, label %bits_read_bit_be.exit.thread, label %bb.w

bits_read_bit_be.exit.thread369:                  ; preds = %bb.v
  %i.do = load i64, ptr %i.db, align 1, !tbaa !29
  %i.dp = tail call noundef i64 @llvm.bswap.i64(i64 %i.do) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %i.dq, ptr %i.cl, align 8, !tbaa !65
  %i.dr = shl i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dr, ptr %i.d, align 8, !tbaa !68
  %.not202371 = icmp sgt i64 %i.dp, -1
  br i1 %.not202371, label %bits_read_bit_be.exit.thread.bits_read_nz_be.exit232_crit_edge, label %bits_read_nz_be.exit228

bb.w:                                             ; preds = %bits_read_bit_be.exit
  %i.ds = icmp ult i32 %i.dg, 13
  br i1 %i.ds, label %bb.x, label %bits_read_nz_be.exit228

bb.x:                                             ; preds = %bb.w
  %i.dt = load ptr, ptr %i.ck, align 8, !tbaa !64
  %.not.i.i226 = icmp ult ptr %i.db, %i.dt
  br i1 %.not.i.i226, label %bits_priv_refill_32_be.exit.i227, label %bits_read_nz_be.exit228

bits_priv_refill_32_be.exit.i227:                 ; preds = %bb.x
  %i.du = load i32, ptr %i.db, align 1, !tbaa !29
  %i.dv = tail call i32 @llvm.bswap.i32(i32 %i.du)
  %i.dw = zext i32 %i.dv to i64
  %i.dx = sub nuw nsw i32 33, %i.dg
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl nuw i64 %i.dw, %i.dy
  %i.ea = or i64 %i.dz, %i.dn
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store ptr %i.eb, ptr %i.cl, align 8, !tbaa !65
  %i.ec = or disjoint i32 %i.dm, 32
  br label %bits_read_nz_be.exit228

bits_read_nz_be.exit228:                          ; preds = %bits_read_bit_be.exit.thread369, %bb.w, %bb.x, %bits_priv_refill_32_be.exit.i227
  %.val.i.i225 = phi i64 [ %i.ea, %bits_priv_refill_32_be.exit.i227 ], [ %i.dn, %bb.w ], [ %i.dn, %bb.x ], [ %i.dr, %bits_read_bit_be.exit.thread369 ] ; 2 uses
  %i.ed = phi i32 [ %i.ec, %bits_priv_refill_32_be.exit.i227 ], [ %i.dm, %bb.w ], [ 12, %bb.x ], [ 63, %bits_read_bit_be.exit.thread369 ]
  %i.ee = lshr i64 %.val.i.i225, 52
  %i.ef = shl i64 %.val.i.i225, 12
  store i64 %i.ef, ptr %i.d, align 8, !tbaa !68
  %i.eg = add i32 %i.ed, -12
  br label %bb.y

bits_read_bit_be.exit.thread:                     ; preds = %bits_read_bit_be.exit
  %i.eh = icmp ult i32 %i.dg, 4
  br i1 %i.eh, label %bits_read_bit_be.exit.thread.thread, label %bits_read_bit_be.exit.thread.bits_read_nz_be.exit232_crit_edge

bits_read_bit_be.exit.thread.bits_read_nz_be.exit232_crit_edge: ; preds = %bits_read_bit_be.exit.thread369, %bits_read_bit_be.exit.thread
  %i.ei = phi i32 [ %i.dm, %bits_read_bit_be.exit.thread ], [ 63, %bits_read_bit_be.exit.thread369 ]
  %.val.i.i229.pre = load i64, ptr %i.d, align 8, !tbaa !68
  br label %bits_read_nz_be.exit232

bits_read_bit_be.exit.thread.thread:              ; preds = %bb.v, %bits_read_bit_be.exit.thread
  %i.ej = phi i32 [ %i.dm, %bits_read_bit_be.exit.thread ], [ 0, %bb.v ] ; 2 uses
  %i.ek = load ptr, ptr %i.ck, align 8, !tbaa !64
  %.not.i.i230 = icmp ult ptr %i.db, %i.ek
  %.val.i.i229.pre307 = load i64, ptr %i.d, align 8, !tbaa !68 ; 2 uses
  br i1 %.not.i.i230, label %bits_priv_refill_32_be.exit.i231, label %bits_read_nz_be.exit232

bits_priv_refill_32_be.exit.i231:                 ; preds = %bits_read_bit_be.exit.thread.thread
  %i.el = load i32, ptr %i.db, align 1, !tbaa !29
  %i.em = tail call i32 @llvm.bswap.i32(i32 %i.el)
  %i.en = zext i32 %i.em to i64
  %i.eo = sub nuw nsw i32 32, %i.ej
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl nuw i64 %i.en, %i.ep
  %i.er = or i64 %i.eq, %.val.i.i229.pre307
  %i.es = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store ptr %i.es, ptr %i.cl, align 8, !tbaa !65
  %i.et = or disjoint i32 %i.ej, 32
  br label %bits_read_nz_be.exit232

bits_read_nz_be.exit232:                          ; preds = %bits_read_bit_be.exit.thread.bits_read_nz_be.exit232_crit_edge, %bits_read_bit_be.exit.thread.thread, %bits_priv_refill_32_be.exit.i231
  %.val.i.i229 = phi i64 [ %i.er, %bits_priv_refill_32_be.exit.i231 ], [ %.val.i.i229.pre, %bits_read_bit_be.exit.thread.bits_read_nz_be.exit232_crit_edge ], [ %.val.i.i229.pre307, %bits_read_bit_be.exit.thread.thread ] ; 2 uses
  %i.eu = phi i32 [ %i.et, %bits_priv_refill_32_be.exit.i231 ], [ %i.ei, %bits_read_bit_be.exit.thread.bits_read_nz_be.exit232_crit_edge ], [ 3, %bits_read_bit_be.exit.thread.thread ]
  %i.ev = lshr i64 %.val.i.i229, 61
  %i.ew = shl i64 %.val.i.i229, 3
  store i64 %i.ew, ptr %i.d, align 8, !tbaa !68
  %i.ex = add i32 %i.eu, -3
  br label %bb.y

bb.y:                                             ; preds = %bits_read_nz_be.exit232, %bits_read_nz_be.exit228
  %storemerge = phi i32 [ %i.eg, %bits_read_nz_be.exit228 ], [ %i.ex, %bits_read_nz_be.exit232 ]
  %.0171.in = phi i64 [ %i.ee, %bits_read_nz_be.exit228 ], [ %i.ev, %bits_read_nz_be.exit232 ] ; 2 uses
  store i32 %storemerge, ptr %i.cn, align 8, !tbaa !67
  %.not203 = icmp eq i64 %.0171.in, 0
  br i1 %.not203, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.0171 = trunc nuw nsw i64 %.0171.in to i32
  %i.ey = sext i32 %.0172263 to i64               ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.cx, i64 %i.ey
  store i8 %.0173262, ptr %i.ez, align 1, !tbaa !29
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.ey
  store i32 %.0171, ptr %i.fa, align 4, !tbaa !32
  %i.fb = add nsw i32 %.0172263, 1
  %.pre = load i32, ptr %i.cw, align 8, !tbaa !40
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fc = phi i32 [ %i.cz, %bb.y ], [ %.pre, %bb.z ] ; 2 uses
  %.2 = phi i32 [ %.0172263, %bb.y ], [ %i.fb, %bb.z ] ; 2 uses
  %i.fd = add i8 %.0173262, 1
  %.not204 = icmp slt i32 %.2, %i.fc
  br i1 %.not204, label %bb.t, label %.critedge212, !llvm.loop !48

.critedge212:                                     ; preds = %bb.aa
  %.pre312 = load i32, ptr %i.cn, align 8, !tbaa !67
  %.pre311 = load i32, ptr %i.cm, align 4, !tbaa !66
  %.pre310 = load ptr, ptr %i.cl, align 8, !tbaa !65
  %.pre309 = load ptr, ptr %i.ch, align 8, !tbaa !63
  %i.fe = ptrtoint ptr %.pre309 to i64
  %i.ff = ptrtoint ptr %.pre310 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %.tr.i233 = trunc i64 %i.fg to i32
  %i.fh = shl i32 %.tr.i233, 3
  %i.fi = add i32 %.pre312, %.pre311
  %i.fj = add i32 %i.fi, %i.fh
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !58
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !61
  %i.fo = mul nsw i32 %i.fn, %i.fl
  %i.fp = icmp slt i32 %i.fj, %i.fo
  br i1 %i.fp, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %.critedge212
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 1328 ; 2 uses
  %i.fr = tail call fastcc i32 @build_vlc(ptr noundef nonnull %0, ptr noundef nonnull %i.fq) ; 2 uses
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ft = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #8 ; 2 uses
  %i.fu = icmp slt i32 %i.ft, 0
  br i1 %i.fu, label %.thread, label %.preheader258

.preheader258:                                    ; preds = %bb.ac
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 1336
  %i.fx = load i32, ptr %i.fk, align 4, !tbaa !58 ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, 0
  br i1 %i.fy, label %.preheader258.split, label %.thread239

.preheader258.split:                              ; preds = %.preheader258, %._crit_edge
  %i.fz = phi i32 [ %i.lg, %._crit_edge ], [ %i.fx, %.preheader258 ] ; 4 uses
  %indvars.iv289 = phi i64 [ %indvars.iv.next290, %._crit_edge ], [ 0, %.preheader258 ] ; 4 uses
  %i.ga = load i32, ptr %i.fm, align 8, !tbaa !61
  %i.gb = icmp ne i64 %indvars.iv289, 0
  %i.gc = zext i1 %i.gb to i32
  %i.gd = ashr i32 %i.ga, %i.gc
  %.fr = freeze i32 %i.gd                         ; 4 uses
  %i.ge = icmp sgt i32 %i.fz, 0
  br i1 %i.ge, label %.lr.ph269, label %._crit_edge

.lr.ph269:                                        ; preds = %.preheader258.split
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv289
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !32 ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %.not205264 = icmp sgt i32 %.fr, 0
end_hunk_0
