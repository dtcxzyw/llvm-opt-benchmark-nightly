Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_field_lz?download=true
inline.NumInlined: 655
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 126
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 228
loop-unroll.NumUnrolledNotLatch: 34
begin_hunk_0_@ZS2_FieldLz_decompress:bb.a
  %i.z = extractvalue { i32, ptr } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { i32, ptr } %i.y, 1       ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.z, ptr %i.aa, ptr noundef nonnull @.str.13) #8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = insertvalue { i32, i64 } poison, i32 %i.z, 0
  %i.ad = insertvalue { i32, i64 } %i.ac, i64 %i.ab, 1
  br label %bb.az

bb.h:                                             ; preds = %bb.d
  %i.ae = trunc i64 %2 to i32
  %i.af = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ae, i1 true) ; 2 uses
  %i.ag = xor i32 %i.af, 31                       ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %i.aj = icmp eq i32 %i.af, 31
  br i1 %i.aj, label %ZL_selectDecompressor.exit.thread41, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.ak = lshr i64 %i.f, 4                        ; 22 uses
  %i.al = sub nuw i64 %i.f, %i.ak
  %.not152.i = icmp eq i64 %i.ak, 0
  br i1 %.not152.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ak
  br label %bb.j

.lr.ph143.i:                                      ; preds = %bb.j
  %i.an = getelementptr [2 x i8], ptr %i.ai, i64 %i.al
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.0103141.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ba, %bb.j ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %.0103141.i
  %.val128.i = load i16, ptr %i.ao, align 1
  %i.ap = zext i16 %.val128.i to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = and i64 %i.aq, 15
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !29
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !29
  %i.av = lshr i64 %i.ap, 6
  %i.aw = and i64 %i.av, 15
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !29
  %i.ba = add nuw nsw i64 %.0103141.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ba, %i.ak
  br i1 %exitcond.not.i, label %.lr.ph143.i, label %bb.j, !llvm.loop !46

._crit_edge.i.loopexit:                           ; preds = %bb.k
  %.pre = load i32, ptr %i.a, align 16, !tbaa !29
  %i.bb = zext i32 %.pre to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.i
  %i.bc = phi i64 [ %i.bb, %._crit_edge.i.loopexit ], [ 0, %bb.i ] ; 3 uses
  %i.bd = shl nuw nsw i64 %i.ak, 1                ; 2 uses
  %i.be = lshr i64 %i.f, 6
  %i.bf = sub nsw i64 %i.bd, %i.be
  %i.bg = lshr i64 %i.f, 8                        ; 2 uses
  %i.bh = add nsw i64 %i.bf, %i.bg                ; 30 uses
  %i.bi = lshr i64 %i.f, 9
  %i.bj = add nuw nsw i64 %i.bg, %i.bi
  %i.bk = sub nsw i64 %i.bd, %i.bj                ; 30 uses
  %.not.i = icmp samesign ugt i64 %i.ak, %i.bc    ; 2 uses
  %.not117.i = icmp ule i64 %i.bk, %i.bc
  %or.cond123.i = select i1 %.not117.i, i1 %.not.i, i1 false
  br i1 %or.cond123.i, label %bb.aa, label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph143.i
  %.098142.i = phi i64 [ 0, %.lr.ph143.i ], [ %i.bx, %bb.k ] ; 2 uses
  %i.bl = getelementptr [2 x i8], ptr %i.an, i64 %.098142.i
  %.val.i = load i16, ptr %i.bl, align 1
  %i.bm = zext i16 %.val.i to i64                 ; 2 uses
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = and i64 %i.bn, 15
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !29
  %i.bs = lshr i64 %i.bm, 6
  %i.bt = and i64 %i.bs, 15
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !29
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !29
  %i.bx = add nuw nsw i64 %.098142.i, 1           ; 2 uses
  %exitcond155.not.i = icmp eq i64 %i.bx, %i.ak
  br i1 %exitcond155.not.i, label %._crit_edge.i.loopexit, label %bb.k, !llvm.loop !47

bb.l:                                             ; preds = %._crit_edge.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !29
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.bc, %i.ca            ; 4 uses
  %.not.1.i = icmp samesign ult i64 %i.cb, %i.ak
  %spec.select.1.i = select i1 %.not.i, i32 2, i32 0
  %.1100.1.i = select i1 %.not.1.i, i32 15, i32 %spec.select.1.i ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bh
  %i.cd = tail call i32 @llvm.umax.i32(i32 %.1100.1.i, i32 1)
  %.2101.1.i = select i1 %i.cc, i32 %i.cd, i32 %.1100.1.i ; 3 uses
  %.not117.1.i = icmp uge i64 %i.cb, %i.bk
  %i.ce = icmp samesign ugt i32 %.2101.1.i, 1
  %or.cond123.1.i = select i1 %.not117.1.i, i1 %i.ce, i1 false
  br i1 %or.cond123.1.i, label %bb.aa, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !29
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.cb, %i.ch            ; 4 uses
  %.not.2.i = icmp samesign ult i64 %i.ci, %i.ak
  %spec.select.2.i = tail call i32 @llvm.umin.i32(i32 %.2101.1.i, i32 4)
  %.1100.2.i = select i1 %.not.2.i, i32 %.2101.1.i, i32 %spec.select.2.i ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.bh
  %i.ck = tail call i32 @llvm.umax.i32(i32 %.1100.2.i, i32 2)
  %.2101.2.i = select i1 %i.cj, i32 %i.ck, i32 %.1100.2.i ; 3 uses
  %.not117.2.i = icmp uge i64 %i.ci, %i.bk
  %i.cl = icmp samesign ugt i32 %.2101.2.i, 2
  %or.cond123.2.i = select i1 %.not117.2.i, i1 %i.cl, i1 false
  br i1 %or.cond123.2.i, label %bb.aa, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29
  %i.co = zext i32 %i.cn to i64
  %i.cp = add nuw nsw i64 %i.ci, %i.co            ; 4 uses
  %.not.3.i = icmp samesign ult i64 %i.cp, %i.ak
  %spec.select.3.i = tail call i32 @llvm.umin.i32(i32 %.2101.2.i, i32 6)
  %.1100.3.i = select i1 %.not.3.i, i32 %.2101.2.i, i32 %spec.select.3.i ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.bh
  %i.cr = tail call i32 @llvm.umax.i32(i32 %.1100.3.i, i32 3)
  %.2101.3.i = select i1 %i.cq, i32 %i.cr, i32 %.1100.3.i ; 3 uses
  %.not117.3.i = icmp uge i64 %i.cp, %i.bk
  %i.cs = icmp samesign ugt i32 %.2101.3.i, 3
  %or.cond123.3.i = select i1 %.not117.3.i, i1 %i.cs, i1 false
  br i1 %or.cond123.3.i, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cu = load i32, ptr %i.ct, align 16, !tbaa !29
  %i.cv = zext i32 %i.cu to i64
  %i.cw = add nuw nsw i64 %i.cp, %i.cv            ; 4 uses
  %.not.4.i = icmp samesign ult i64 %i.cw, %i.ak
  %spec.select.4.i = tail call i32 @llvm.umin.i32(i32 %.2101.3.i, i32 8)
  %.1100.4.i = select i1 %.not.4.i, i32 %.2101.3.i, i32 %spec.select.4.i ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.bh
  %i.cy = tail call i32 @llvm.umax.i32(i32 %.1100.4.i, i32 4)
  %.2101.4.i = select i1 %i.cx, i32 %i.cy, i32 %.1100.4.i ; 3 uses
  %.not117.4.i = icmp uge i64 %i.cw, %i.bk
  %i.cz = icmp samesign ugt i32 %.2101.4.i, 4
  %or.cond123.4.i = select i1 %.not117.4.i, i1 %i.cz, i1 false
  br i1 %or.cond123.4.i, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.db = load i32, ptr %i.da, align 4, !tbaa !29
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw nsw i64 %i.cw, %i.dc            ; 4 uses
  %.not.5.i = icmp samesign ult i64 %i.dd, %i.ak
  %spec.select.5.i = tail call i32 @llvm.umin.i32(i32 %.2101.4.i, i32 10)
  %.1100.5.i = select i1 %.not.5.i, i32 %.2101.4.i, i32 %spec.select.5.i ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.bh
  %i.df = tail call i32 @llvm.umax.i32(i32 %.1100.5.i, i32 5)
  %.2101.5.i = select i1 %i.de, i32 %i.df, i32 %.1100.5.i ; 3 uses
  %.not117.5.i = icmp uge i64 %i.dd, %i.bk
  %i.dg = icmp samesign ugt i32 %.2101.5.i, 5
  %or.cond123.5.i = select i1 %.not117.5.i, i1 %i.dg, i1 false
  br i1 %or.cond123.5.i, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !29
  %i.dj = zext i32 %i.di to i64
  %i.dk = add nuw nsw i64 %i.dd, %i.dj            ; 4 uses
  %.not.6.i = icmp samesign ult i64 %i.dk, %i.ak
  %spec.select.6.i = tail call i32 @llvm.umin.i32(i32 %.2101.5.i, i32 12)
  %.1100.6.i = select i1 %.not.6.i, i32 %.2101.5.i, i32 %spec.select.6.i ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.bh
  %i.dm = tail call i32 @llvm.umax.i32(i32 %.1100.6.i, i32 6)
  %.2101.6.i = select i1 %i.dl, i32 %i.dm, i32 %.1100.6.i ; 3 uses
  %.not117.6.i = icmp uge i64 %i.dk, %i.bk
  %i.dn = icmp samesign ugt i32 %.2101.6.i, 6
  %or.cond123.6.i = select i1 %.not117.6.i, i1 %i.dn, i1 false
  br i1 %or.cond123.6.i, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !29
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dk, %i.dq            ; 4 uses
  %.not.7.i = icmp samesign ult i64 %i.dr, %i.ak
  %spec.select.7.i = tail call i32 @llvm.umin.i32(i32 %.2101.6.i, i32 14)
  %.1100.7.i = select i1 %.not.7.i, i32 %.2101.6.i, i32 %spec.select.7.i ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.bh
  %i.dt = tail call i32 @llvm.umax.i32(i32 %.1100.7.i, i32 7)
  %.2101.7.i = select i1 %i.ds, i32 %i.dt, i32 %.1100.7.i ; 3 uses
  %.not117.7.i = icmp uge i64 %i.dr, %i.bk
  %i.du = icmp samesign ugt i32 %.2101.7.i, 7
  %or.cond123.7.i = select i1 %.not117.7.i, i1 %i.du, i1 false
  br i1 %or.cond123.7.i, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dw = load i32, ptr %i.dv, align 16, !tbaa !29
  %i.dx = zext i32 %i.dw to i64
  %i.dy = add nuw nsw i64 %i.dr, %i.dx            ; 3 uses
  %i.dz = icmp ult i64 %i.dy, %i.bh
  %i.ea = tail call i32 @llvm.umax.i32(i32 %.2101.7.i, i32 8)
  %.2101.8.i = select i1 %i.dz, i32 %i.ea, i32 %.2101.7.i ; 3 uses
  %.not117.8.i = icmp uge i64 %i.dy, %i.bk
  %i.eb = icmp samesign ugt i32 %.2101.8.i, 8
  %or.cond123.8.i = select i1 %.not117.8.i, i1 %i.eb, i1 false
  br i1 %or.cond123.8.i, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !29
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add nuw nsw i64 %i.dy, %i.ee            ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %i.bh
  %i.eh = tail call i32 @llvm.umax.i32(i32 %.2101.8.i, i32 9)
  %.2101.9.i = select i1 %i.eg, i32 %i.eh, i32 %.2101.8.i ; 3 uses
  %.not117.9.i = icmp uge i64 %i.ef, %i.bk
  %i.ei = icmp samesign ugt i32 %.2101.9.i, 9
  %or.cond123.9.i = select i1 %.not117.9.i, i1 %i.ei, i1 false
  br i1 %or.cond123.9.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !29
  %i.el = zext i32 %i.ek to i64
  %i.em = add nuw nsw i64 %i.ef, %i.el            ; 3 uses
  %i.en = icmp ult i64 %i.em, %i.bh
  %i.eo = tail call i32 @llvm.umax.i32(i32 %.2101.9.i, i32 10)
  %.2101.10.i = select i1 %i.en, i32 %i.eo, i32 %.2101.9.i ; 3 uses
  %.not117.10.i = icmp uge i64 %i.em, %i.bk
  %i.ep = icmp samesign ugt i32 %.2101.10.i, 10
  %or.cond123.10.i = select i1 %.not117.10.i, i1 %i.ep, i1 false
  br i1 %or.cond123.10.i, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !29
  %i.es = zext i32 %i.er to i64
  %i.et = add nuw nsw i64 %i.em, %i.es            ; 3 uses
  %i.eu = icmp ult i64 %i.et, %i.bh
  %i.ev = tail call i32 @llvm.umax.i32(i32 %.2101.10.i, i32 11)
  %.2101.11.i = select i1 %i.eu, i32 %i.ev, i32 %.2101.10.i ; 3 uses
  %.not117.11.i = icmp uge i64 %i.et, %i.bk
  %i.ew = icmp samesign ugt i32 %.2101.11.i, 11
  %or.cond123.11.i = select i1 %.not117.11.i, i1 %i.ew, i1 false
  br i1 %or.cond123.11.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ey = load i32, ptr %i.ex, align 16, !tbaa !29
  %i.ez = zext i32 %i.ey to i64
  %i.fa = add nuw nsw i64 %i.et, %i.ez            ; 3 uses
  %i.fb = icmp ult i64 %i.fa, %i.bh
  %i.fc = tail call i32 @llvm.umax.i32(i32 %.2101.11.i, i32 12)
  %.2101.12.i = select i1 %i.fb, i32 %i.fc, i32 %.2101.11.i ; 3 uses
  %.not117.12.i = icmp uge i64 %i.fa, %i.bk
  %i.fd = icmp samesign ugt i32 %.2101.12.i, 12
  %or.cond123.12.i = select i1 %.not117.12.i, i1 %i.fd, i1 false
  br i1 %or.cond123.12.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !29
  %i.fg = zext i32 %i.ff to i64
  %i.fh = add nuw nsw i64 %i.fa, %i.fg            ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %i.bh
  %i.fj = tail call i32 @llvm.umax.i32(i32 %.2101.12.i, i32 13)
  %.2101.13.i = select i1 %i.fi, i32 %i.fj, i32 %.2101.12.i ; 3 uses
  %.not117.13.i = icmp uge i64 %i.fh, %i.bk
  %i.fk = icmp samesign ugt i32 %.2101.13.i, 13
  %or.cond123.13.i = select i1 %.not117.13.i, i1 %i.fk, i1 false
  br i1 %or.cond123.13.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !29
  %i.fn = zext i32 %i.fm to i64
  %i.fo = add nuw nsw i64 %i.fh, %i.fn            ; 3 uses
  %i.fp = icmp ult i64 %i.fo, %i.bh
  %i.fq = tail call i32 @llvm.umax.i32(i32 %.2101.13.i, i32 14)
  %.2101.14.i = select i1 %i.fp, i32 %i.fq, i32 %.2101.13.i ; 2 uses
  %.not117.14.i = icmp uge i64 %i.fo, %i.bk
  %i.fr = icmp samesign ugt i32 %.2101.14.i, 14
  %or.cond123.14.i = select i1 %.not117.14.i, i1 %i.fr, i1 false
  br i1 %or.cond123.14.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !29
  %i.fu = zext i32 %i.ft to i64
  %i.fv = add nuw nsw i64 %i.fo, %i.fu
  %i.fw = icmp ult i64 %i.fv, %i.bh
  %.2101.15.i = select i1 %i.fw, i32 15, i32 %.2101.14.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %._crit_edge.i
  %.3102.i = phi i32 [ %.2101.15.i, %bb.z ], [ 0, %._crit_edge.i ], [ 1, %bb.l ], [ 8, %bb.s ], [ 2, %bb.m ], [ 10, %bb.u ], [ 3, %bb.n ], [ 14, %bb.y ], [ 4, %bb.o ], [ 9, %bb.t ], [ 5, %bb.p ], [ 13, %bb.x ], [ 6, %bb.q ], [ 11, %bb.v ], [ 7, %bb.r ], [ 12, %bb.w ]
  %i.fx = load i32, ptr %i.b, align 16, !tbaa !29
  %i.fy = zext i32 %i.fx to i64                   ; 3 uses
  %.not118.i = icmp samesign ugt i64 %i.ak, %i.fy ; 2 uses
  %.not119.i = icmp ule i64 %i.bk, %i.fy
  %or.cond126.i = select i1 %.not119.i, i1 %.not118.i, i1 false
  br i1 %or.cond126.i, label %bb.aq, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !29
  %i.gb = zext i32 %i.ga to i64
  %i.gc = add nuw nsw i64 %i.gb, %i.fy            ; 4 uses
  %.not118.1.i = icmp samesign ult i64 %i.gc, %i.ak
  %spec.select124.1.i = select i1 %.not118.i, i32 2, i32 0
  %.1106.1.i = select i1 %.not118.1.i, i32 15, i32 %spec.select124.1.i ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.bh
  %i.ge = tail call i32 @llvm.umax.i32(i32 %.1106.1.i, i32 1)
  %.2107.1.i = select i1 %i.gd, i32 %i.ge, i32 %.1106.1.i ; 3 uses
  %.not119.1.i = icmp uge i64 %i.gc, %i.bk
  %i.gf = icmp samesign ugt i32 %.2107.1.i, 1
  %or.cond126.1.i = select i1 %.not119.1.i, i1 %i.gf, i1 false
  br i1 %or.cond126.1.i, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !29
  %i.gi = zext i32 %i.gh to i64
  %i.gj = add nuw nsw i64 %i.gc, %i.gi            ; 4 uses
  %.not118.2.i = icmp samesign ult i64 %i.gj, %i.ak
  %spec.select124.2.i = tail call i32 @llvm.umin.i32(i32 %.2107.1.i, i32 4)
  %.1106.2.i = select i1 %.not118.2.i, i32 %.2107.1.i, i32 %spec.select124.2.i ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.bh
  %i.gl = tail call i32 @llvm.umax.i32(i32 %.1106.2.i, i32 2)
  %.2107.2.i = select i1 %i.gk, i32 %i.gl, i32 %.1106.2.i ; 3 uses
  %.not119.2.i = icmp uge i64 %i.gj, %i.bk
  %i.gm = icmp samesign ugt i32 %.2107.2.i, 2
  %or.cond126.2.i = select i1 %.not119.2.i, i1 %i.gm, i1 false
  br i1 %or.cond126.2.i, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !29
  %i.gp = zext i32 %i.go to i64
  %i.gq = add nuw nsw i64 %i.gj, %i.gp            ; 4 uses
  %.not118.3.i = icmp samesign ult i64 %i.gq, %i.ak
  %spec.select124.3.i = tail call i32 @llvm.umin.i32(i32 %.2107.2.i, i32 6)
  %.1106.3.i = select i1 %.not118.3.i, i32 %.2107.2.i, i32 %spec.select124.3.i ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.bh
  %i.gs = tail call i32 @llvm.umax.i32(i32 %.1106.3.i, i32 3)
  %.2107.3.i = select i1 %i.gr, i32 %i.gs, i32 %.1106.3.i ; 3 uses
  %.not119.3.i = icmp uge i64 %i.gq, %i.bk
  %i.gt = icmp samesign ugt i32 %.2107.3.i, 3
  %or.cond126.3.i = select i1 %.not119.3.i, i1 %i.gt, i1 false
  br i1 %or.cond126.3.i, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gv = load i32, ptr %i.gu, align 16, !tbaa !29
  %i.gw = zext i32 %i.gv to i64
  %i.gx = add nuw nsw i64 %i.gq, %i.gw            ; 4 uses
  %.not118.4.i = icmp samesign ult i64 %i.gx, %i.ak
  %spec.select124.4.i = tail call i32 @llvm.umin.i32(i32 %.2107.3.i, i32 8)
  %.1106.4.i = select i1 %.not118.4.i, i32 %.2107.3.i, i32 %spec.select124.4.i ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.bh
  %i.gz = tail call i32 @llvm.umax.i32(i32 %.1106.4.i, i32 4)
  %.2107.4.i = select i1 %i.gy, i32 %i.gz, i32 %.1106.4.i ; 3 uses
  %.not119.4.i = icmp uge i64 %i.gx, %i.bk
  %i.ha = icmp samesign ugt i32 %.2107.4.i, 4
  %or.cond126.4.i = select i1 %.not119.4.i, i1 %i.ha, i1 false
  br i1 %or.cond126.4.i, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !29
  %i.hd = zext i32 %i.hc to i64
  %i.he = add nuw nsw i64 %i.gx, %i.hd            ; 4 uses
  %.not118.5.i = icmp samesign ult i64 %i.he, %i.ak
  %spec.select124.5.i = tail call i32 @llvm.umin.i32(i32 %.2107.4.i, i32 10)
  %.1106.5.i = select i1 %.not118.5.i, i32 %.2107.4.i, i32 %spec.select124.5.i ; 2 uses
  %i.hf = icmp ult i64 %i.he, %i.bh
  %i.hg = tail call i32 @llvm.umax.i32(i32 %.1106.5.i, i32 5)
  %.2107.5.i = select i1 %i.hf, i32 %i.hg, i32 %.1106.5.i ; 3 uses
  %.not119.5.i = icmp uge i64 %i.he, %i.bk
  %i.hh = icmp samesign ugt i32 %.2107.5.i, 5
  %or.cond126.5.i = select i1 %.not119.5.i, i1 %i.hh, i1 false
  br i1 %or.cond126.5.i, label %bb.aq, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !29
  %i.hk = zext i32 %i.hj to i64
  %i.hl = add nuw nsw i64 %i.he, %i.hk            ; 4 uses
  %.not118.6.i = icmp samesign ult i64 %i.hl, %i.ak
  %spec.select124.6.i = tail call i32 @llvm.umin.i32(i32 %.2107.5.i, i32 12)
  %.1106.6.i = select i1 %.not118.6.i, i32 %.2107.5.i, i32 %spec.select124.6.i ; 2 uses
  %i.hm = icmp ult i64 %i.hl, %i.bh
  %i.hn = tail call i32 @llvm.umax.i32(i32 %.1106.6.i, i32 6)
  %.2107.6.i = select i1 %i.hm, i32 %i.hn, i32 %.1106.6.i ; 3 uses
  %.not119.6.i = icmp uge i64 %i.hl, %i.bk
  %i.ho = icmp samesign ugt i32 %.2107.6.i, 6
  %or.cond126.6.i = select i1 %.not119.6.i, i1 %i.ho, i1 false
  br i1 %or.cond126.6.i, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !29
  %i.hr = zext i32 %i.hq to i64
  %i.hs = add nuw nsw i64 %i.hl, %i.hr            ; 4 uses
  %.not118.7.i = icmp samesign ult i64 %i.hs, %i.ak
  %spec.select124.7.i = tail call i32 @llvm.umin.i32(i32 %.2107.6.i, i32 14)
  %.1106.7.i = select i1 %.not118.7.i, i32 %.2107.6.i, i32 %spec.select124.7.i ; 2 uses
  %i.ht = icmp ult i64 %i.hs, %i.bh
  %i.hu = tail call i32 @llvm.umax.i32(i32 %.1106.7.i, i32 7)
  %.2107.7.i = select i1 %i.ht, i32 %i.hu, i32 %.1106.7.i ; 3 uses
  %.not119.7.i = icmp uge i64 %i.hs, %i.bk
  %i.hv = icmp samesign ugt i32 %.2107.7.i, 7
  %or.cond126.7.i = select i1 %.not119.7.i, i1 %i.hv, i1 false
  br i1 %or.cond126.7.i, label %bb.aq, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hx = load i32, ptr %i.hw, align 16, !tbaa !29
  %i.hy = zext i32 %i.hx to i64
  %i.hz = add nuw nsw i64 %i.hs, %i.hy            ; 3 uses
  %i.ia = icmp ult i64 %i.hz, %i.bh
  %i.ib = tail call i32 @llvm.umax.i32(i32 %.2107.7.i, i32 8)
  %.2107.8.i = select i1 %i.ia, i32 %i.ib, i32 %.2107.7.i ; 3 uses
  %.not119.8.i = icmp uge i64 %i.hz, %i.bk
  %i.ic = icmp samesign ugt i32 %.2107.8.i, 8
  %or.cond126.8.i = select i1 %.not119.8.i, i1 %i.ic, i1 false
  br i1 %or.cond126.8.i, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !29
  %i.if = zext i32 %i.ie to i64
  %i.ig = add nuw nsw i64 %i.hz, %i.if            ; 3 uses
  %i.ih = icmp ult i64 %i.ig, %i.bh
  %i.ii = tail call i32 @llvm.umax.i32(i32 %.2107.8.i, i32 9)
  %.2107.9.i = select i1 %i.ih, i32 %i.ii, i32 %.2107.8.i ; 3 uses
  %.not119.9.i = icmp uge i64 %i.ig, %i.bk
  %i.ij = icmp samesign ugt i32 %.2107.9.i, 9
  %or.cond126.9.i = select i1 %.not119.9.i, i1 %i.ij, i1 false
  br i1 %or.cond126.9.i, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !29
  %i.im = zext i32 %i.il to i64
  %i.in = add nuw nsw i64 %i.ig, %i.im            ; 3 uses
  %i.io = icmp ult i64 %i.in, %i.bh
  %i.ip = tail call i32 @llvm.umax.i32(i32 %.2107.9.i, i32 10)
  %.2107.10.i = select i1 %i.io, i32 %i.ip, i32 %.2107.9.i ; 3 uses
  %.not119.10.i = icmp uge i64 %i.in, %i.bk
  %i.iq = icmp samesign ugt i32 %.2107.10.i, 10
  %or.cond126.10.i = select i1 %.not119.10.i, i1 %i.iq, i1 false
  br i1 %or.cond126.10.i, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !29
  %i.it = zext i32 %i.is to i64
  %i.iu = add nuw nsw i64 %i.in, %i.it            ; 3 uses
  %i.iv = icmp ult i64 %i.iu, %i.bh
  %i.iw = tail call i32 @llvm.umax.i32(i32 %.2107.10.i, i32 11)
  %.2107.11.i = select i1 %i.iv, i32 %i.iw, i32 %.2107.10.i ; 3 uses
  %.not119.11.i = icmp uge i64 %i.iu, %i.bk
  %i.ix = icmp samesign ugt i32 %.2107.11.i, 11
  %or.cond126.11.i = select i1 %.not119.11.i, i1 %i.ix, i1 false
  br i1 %or.cond126.11.i, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iy = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.iz = load i32, ptr %i.iy, align 16, !tbaa !29
  %i.ja = zext i32 %i.iz to i64
  %i.jb = add nuw nsw i64 %i.iu, %i.ja            ; 3 uses
  %i.jc = icmp ult i64 %i.jb, %i.bh
  %i.jd = tail call i32 @llvm.umax.i32(i32 %.2107.11.i, i32 12)
  %.2107.12.i = select i1 %i.jc, i32 %i.jd, i32 %.2107.11.i ; 3 uses
  %.not119.12.i = icmp uge i64 %i.jb, %i.bk
  %i.je = icmp samesign ugt i32 %.2107.12.i, 12
  %or.cond126.12.i = select i1 %.not119.12.i, i1 %i.je, i1 false
  br i1 %or.cond126.12.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !29
  %i.jh = zext i32 %i.jg to i64
  %i.ji = add nuw nsw i64 %i.jb, %i.jh            ; 3 uses
  %i.jj = icmp ult i64 %i.ji, %i.bh
  %i.jk = tail call i32 @llvm.umax.i32(i32 %.2107.12.i, i32 13)
  %.2107.13.i = select i1 %i.jj, i32 %i.jk, i32 %.2107.12.i ; 3 uses
  %.not119.13.i = icmp uge i64 %i.ji, %i.bk
  %i.jl = icmp samesign ugt i32 %.2107.13.i, 13
  %or.cond126.13.i = select i1 %.not119.13.i, i1 %i.jl, i1 false
  br i1 %or.cond126.13.i, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !29
  %i.jo = zext i32 %i.jn to i64
  %i.jp = add nuw nsw i64 %i.ji, %i.jo            ; 3 uses
  %i.jq = icmp ult i64 %i.jp, %i.bh
  %i.jr = tail call i32 @llvm.umax.i32(i32 %.2107.13.i, i32 14)
  %.2107.14.i = select i1 %i.jq, i32 %i.jr, i32 %.2107.13.i ; 2 uses
  %.not119.14.i = icmp uge i64 %i.jp, %i.bk
  %i.js = icmp samesign ugt i32 %.2107.14.i, 14
  %or.cond126.14.i = select i1 %.not119.14.i, i1 %i.js, i1 false
  br i1 %or.cond126.14.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !29
  %i.jv = zext i32 %i.ju to i64
  %i.jw = add nuw nsw i64 %i.jp, %i.jv
  %i.jx = icmp ult i64 %i.jw, %i.bh
  %.2107.15.i = select i1 %i.jx, i32 15, i32 %.2107.14.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.3108.i = phi i32 [ %.2107.15.i, %bb.ap ], [ 0, %bb.aa ], [ 1, %bb.ab ], [ 8, %bb.ai ], [ 2, %bb.ac ], [ 10, %bb.ak ], [ 3, %bb.ad ], [ 14, %bb.ao ], [ 4, %bb.ae ], [ 9, %bb.aj ], [ 5, %bb.af ], [ 13, %bb.an ], [ 6, %bb.ag ], [ 11, %bb.al ], [ 7, %bb.ah ], [ 12, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ax, %bb.aq
  %indvars.iv.i = phi i64 [ 32, %bb.aq ], [ %indvars.iv.next.i, %bb.ax ] ; 3 uses
  %.091150.i = phi ptr [ null, %bb.aq ], [ %.2.ph.i, %bb.ax ] ; 8 uses
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr @ZL_kDecompressors, i64 %indvars.iv.i ; 5 uses
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !50 ; 2 uses
  %i.ka = icmp ugt i32 %i.jz, %i.ag
  br i1 %i.ka, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kb = icmp ult i32 %i.jz, %i.ag
  br i1 %i.kb, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kc = icmp eq ptr %.091150.i, null
  br i1 %i.kc, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !51 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.091150.i, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !51 ; 2 uses
  %..3102.i = tail call i32 @llvm.umin.i32(i32 %i.kg, i32 %.3102.i)
  %i.kh = icmp ult i32 %i.ke, %..3102.i
  br i1 %i.kh, label %ZL_selectDecompressor.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !52 ; 2 uses
  %i.kk = icmp ult i32 %i.kj, %.3108.i
  %.not120.i = icmp ugt i32 %i.ke, %i.kg
  %or.cond136.i = or i1 %.not120.i, %i.kk
  br i1 %or.cond136.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kl = getelementptr inbounds nuw i8, ptr %.091150.i, i64 8
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !52
  %.not121.i = icmp ugt i32 %i.kj, %i.km
  %spec.select127.i = select i1 %.not121.i, ptr %.091150.i, ptr %i.jy
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.at, %bb.ar
  %.2.ph.i = phi ptr [ %spec.select127.i, %bb.aw ], [ %.091150.i, %bb.av ], [ %i.jy, %bb.at ], [ %.091150.i, %bb.ar ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not165.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not165.i, label %bb.ay, label %bb.ar, !llvm.loop !48

bb.ay:                                            ; preds = %bb.ax, %bb.as
  %.091.lcssa.i = phi ptr [ %.091150.i, %bb.as ], [ %.2.ph.i, %bb.ax ] ; 2 uses
  %.not122.i = icmp eq ptr %.091.lcssa.i, null
  br i1 %.not122.i, label %ZL_selectDecompressor.exit.thread, label %ZL_selectDecompressor.exit

ZL_selectDecompressor.exit:                       ; preds = %bb.au, %bb.ay
  %.091140.i = phi ptr [ %.091.lcssa.i, %bb.ay ], [ %.091150.i, %bb.au ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.091140.i, i64 16
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !53 ; 2 uses
  %.not = icmp eq ptr %i.ko, null
  br i1 %.not, label %ZL_selectDecompressor.exit.thread, label %ZL_selectDecompressor.exit.thread41

ZL_selectDecompressor.exit.thread41:              ; preds = %bb.h, %ZL_selectDecompressor.exit
  %.197.i44 = phi ptr [ %i.ko, %ZL_selectDecompressor.exit ], [ @ZS2_FieldLz_decompress_0_14_14, %bb.h ]
  %i.kp = tail call { i32, i64 } %.197.i44(ptr noundef %0, i64 noundef %1, ptr noundef %3) #8
  br label %bb.az

ZL_selectDecompressor.exit.thread:                ; preds = %bb.ay, %ZL_selectDecompressor.exit
  %i.kq = zext nneg i32 %i.ag to i64
  %i.kr = tail call fastcc { i32, i64 } @ZL_FieldLz_decompress_generic(ptr noundef %0, i64 noundef %1, ptr noundef %3, i64 noundef %i.kq)
  br label %bb.az

bb.az:                                            ; preds = %ZL_selectDecompressor.exit.thread41, %ZL_selectDecompressor.exit.thread, %.thread, %bb.g, %bb.c
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.s, %bb.c ], [ %i.o, %.thread ], [ %i.ad, %bb.g ], [ %i.kp, %ZL_selectDecompressor.exit.thread41 ], [ %i.kr, %ZL_selectDecompressor.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret { i32, i64 } %.fca.1.insert.merged
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #3

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ZL_LOG_func(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc { i32, i64 } @ZL_FieldLz_decompress_generic(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 32) %3) unnamed_addr #5 {
bb.a:
  %4 = alloca %struct.ZL_ErrorContext, align 8    ; 25 uses
  %i.a = alloca [4 x i32], align 16               ; 10 uses
  %i.b = lshr i64 32, %3                          ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #9
  store ptr %i.d, ptr %4, align 8, !tbaa !20
  %i.e = trunc nuw nsw i64 %3 to i32              ; 106 uses
  %i.f = shl nuw i32 1, %i.e
  %i.g = icmp eq i64 %3, 0
  %i.h = icmp eq i64 %3, 1
  %i.i = select i1 %i.h, i32 2, i32 1
  %i.j = select i1 %i.g, i32 4, i32 %i.i          ; 20 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 3 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !28     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.u, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !26
  %i.y = shl i64 %i.x, %3                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !35 ; 2 uses
  %.idx675.i = shl nuw nsw i64 %i.ab, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx675.i ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ae ; 24 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ah ; 40 uses
  %i.aj = shl i64 %1, %3                          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 9 uses
  %i.al = shl i32 2, %i.e
  %i.am = shl i32 4, %i.e                         ; 2 uses
  %.sroa.24.0.insert.ext.i = zext i32 %i.al to i64
  %.sroa.24.0.insert.shift.i = shl nuw i64 %.sroa.24.0.insert.ext.i, 32
  %.sroa.03.0.insert.ext.i = zext i32 %i.f to i64
  %.sroa.03.0.insert.insert.i = or disjoint i64 %.sroa.24.0.insert.shift.i, %.sroa.03.0.insert.ext.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.an = shl nuw nsw i64 %i.b, %3                ; 49 uses
  %i.ao = zext nneg i32 %i.j to i64
  %i.ap = add nuw nsw i64 %i.b, %i.ao
  %i.aq = shl nuw nsw i64 %i.ap, %3               ; 33 uses
  %i.ar = shl i32 15, %i.e
  %i.as = zext i32 %i.ar to i64                   ; 3 uses
  %i.at = add nuw nsw i32 %i.j, 15
  %i.au = shl i32 %i.at, %i.e
  %i.av = zext i32 %i.au to i64                   ; 18 uses
  %i.aw = add nuw nsw i64 %i.av, %i.as
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = sub nuw nsw i64 -32, %i.ax              ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ak, i64 %i.ay ; 52 uses
  %i.ba = shl nuw nsw i64 %i.as, 2
  %i.bb = sub nuw nsw i64 -32, %i.ba              ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.z, i64 %i.bb ; 20 uses
  %i.bd = getelementptr inbounds i8, ptr %i.v, i64 -6 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.ac, i64 -12 ; 4 uses
  %i.bf = add nsw i64 %i.ay, %i.aj
  %i.bg = icmp sgt i64 %i.bf, 0
  %i.bh = add nsw i64 %i.y, %i.bb
  %i.bi = icmp sgt i64 %i.bh, 0
  %or.cond.i = select i1 %i.bg, i1 %i.bi, i1 false
  %i.bj = icmp ugt i64 %i.u, 3
  %or.cond707.i = select i1 %or.cond.i, i1 %i.bj, i1 false
  %i.bk = icmp ugt i64 %i.ab, 3
  %or.cond708.i = select i1 %or.cond707.i, i1 %i.bk, i1 false
  br i1 %or.cond708.i, label %ZS_wildcopy.exit.thread438.preheader, label %.loopexit

ZS_wildcopy.exit.thread438.preheader:             ; preds = %bb.a
  %i.bl = sub nsw i64 %i.as, %i.an                ; 16 uses
end_hunk_0
