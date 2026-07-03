inline.NumInlined: 33
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@mbedtls_aes_setkey_enc:bb.a
bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i.1, %bb.f ] ; 4 uses
  %.07992.i = phi i8 [ 1, %bb.e ], [ %i.t, %bb.f ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %.07992.i, ptr %i.e, align 2, !tbaa !11
  %i.f = trunc i64 %indvars.iv.i to i8
  %i.g = zext i8 %.07992.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !11
  %i.i = shl i8 %.07992.i, 1
  %.not82.inv.i = icmp slt i8 %.07992.i, 0
  %i.j = select i1 %.not82.inv.i, i8 27, i8 0
  %i.k = xor i8 %i.i, %i.j
  %i.l = xor i8 %i.k, %.07992.i                   ; 5 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i
  store i8 %i.l, ptr %i.m, align 1, !tbaa !11
  %i.n = trunc i64 %indvars.iv.next.i to i8
  %i.o = zext i8 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o
  store i8 %i.n, ptr %i.p, align 1, !tbaa !11
  %i.q = shl i8 %i.l, 1
  %.not82.inv.i.1 = icmp slt i8 %i.l, 0
  %i.r = select i1 %.not82.inv.i.1, i8 27, i8 0
  %i.s = xor i8 %i.q, %i.r
  %i.t = xor i8 %i.s, %i.l
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.preheader91.preheader.i, label %bb.f, !llvm.loop !12

.preheader91.preheader.i:                         ; preds = %bb.f
  store <4 x i32> <i32 1, i32 2, i32 4, i32 8>, ptr @round_constants, align 16, !tbaa !4
  store <4 x i32> <i32 16, i32 32, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 16), align 16, !tbaa !4
  store i32 27, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 32), align 16, !tbaa !4
  store i32 54, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 36), align 4, !tbaa !4
  store i8 99, ptr @FSb, align 16, !tbaa !11
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @RSb, i64 99), align 1, !tbaa !11
  br label %bb.g

.preheader.i:                                     ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.v = load i8, ptr %i.u, align 2
  %i.w = zext i8 %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i16
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.preheader91.preheader.i
  %indvars.iv102.i = phi i64 [ 1, %.preheader91.preheader.i ], [ %indvars.iv.next103.i, %bb.g ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv102.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = xor i8 %i.ah, -1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !11  ; 9 uses
  %i.am = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 1)
  %i.an = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 2)
  %i.ao = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 3)
  %i.ap = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 4)
  %i.aq = xor i8 %i.am, %i.an
  %i.ar = xor i8 %i.aq, %i.ao
  %i.as = xor i8 %i.ar, %i.ap
  %i.at = xor i8 %i.as, %i.al
  %i.au = xor i8 %i.at, 99                        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr @FSb, i64 %indvars.iv102.i
  store i8 %i.au, ptr %i.av, align 1, !tbaa !11
  %i.aw = trunc i64 %indvars.iv102.i to i8
  %i.ax = zext i8 %i.au to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @RSb, i64 %i.ax
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !11
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next103.i, 256
  br i1 %exitcond105.not.i, label %.preheader.i, label %bb.g, !llvm.loop !14

bb.h:                                             ; preds = %.thread84.i, %.preheader.i
  %indvars.iv106.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next107.i, %.thread84.i ] ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr @FSb, i64 %indvars.iv106.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11  ; 4 uses
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = shl i8 %i.ba, 1
  %.not.inv.i = icmp slt i8 %i.ba, 0
  %i.bd = select i1 %.not.inv.i, i8 27, i8 0
  %i.be = xor i8 %i.bd, %i.bc                     ; 2 uses
  %i.bf = zext i8 %i.be to i32
  %i.bg = xor i8 %i.be, %i.ba
  %i.bh = shl nuw nsw i32 %i.bb, 8
  %i.bi = or disjoint i32 %i.bh, %i.bf
  %i.bj = shl nuw nsw i32 %i.bb, 16
  %i.bk = or disjoint i32 %i.bi, %i.bj            ; 2 uses
  %i.bl = zext i8 %i.bg to i32                    ; 2 uses
  %i.bm = shl nuw i32 %i.bl, 24
  %i.bn = or disjoint i32 %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @FT0, i64 %indvars.iv106.i
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !4
  %i.bp = shl nuw i32 %i.bk, 8
  %i.bq = or disjoint i32 %i.bp, %i.bl            ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @FT1, i64 %indvars.iv106.i
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 8)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @FT2, i64 %indvars.iv106.i
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !4
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 16)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @FT3, i64 %indvars.iv106.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr @RSb, i64 %indvars.iv106.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11  ; 2 uses
  %.not.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i, label %.thread84.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = zext i8 %i.ca to i16                    ; 4 uses
  %.lhs.trunc.i = add nuw nsw i16 %i.cb, %i.w
  %i.cc = urem i16 %.lhs.trunc.i, 255
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = zext i8 %i.cf to i32
  %.lhs.trunc85.i = add nuw nsw i16 %i.cb, %i.z
  %i.ch = urem i16 %.lhs.trunc85.i, 255
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = or disjoint i32 %i.cm, %i.cg
  %.lhs.trunc87.i = add nuw nsw i16 %i.cb, %i.ac
  %i.co = urem i16 %.lhs.trunc87.i, 255
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 16
  %i.cu = or disjoint i32 %i.cn, %i.ct
  %.lhs.trunc89.i = add nuw nsw i16 %i.cb, %i.af
  %i.cv = urem i16 %.lhs.trunc89.i, 255
  %i.cw = zext nneg i16 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !11
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw i32 %i.cz, 24
  %i.db = or disjoint i32 %i.cu, %i.da
  br label %.thread84.i

.thread84.i:                                      ; preds = %bb.i, %bb.h
  %i.dc = phi i32 [ %i.db, %bb.i ], [ 0, %bb.h ]  ; 7 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @RT0, i64 %indvars.iv106.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !4
  %i.de = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 8)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @RT1, i64 %indvars.iv106.i
  store i32 %i.de, ptr %i.df, align 4, !tbaa !4
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 16)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @RT2, i64 %indvars.iv106.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !4
  %i.di = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 24)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @RT3, i64 %indvars.iv106.i
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !4
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 256
  br i1 %exitcond109.not.i, label %aes_gen_tables.exit, label %bb.h, !llvm.loop !15

aes_gen_tables.exit:                              ; preds = %.thread84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  store i1 true, ptr @aes_init_done, align 4
  br label %bb.j

bb.j:                                             ; preds = %aes_gen_tables.exit, %bb.d
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !16
  %i.dm = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not = icmp eq i32 %i.dm, 0
  br i1 %.not, label %.preheader106, label %bb.k

.preheader106:                                    ; preds = %bb.j
  %i.dn = lshr i32 %2, 5                          ; 2 uses
  %.not114 = icmp eq i32 %i.dn, 0
  br i1 %.not114, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader106
  %wide.trip.count = zext nneg i32 %i.dn to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 256
  br i1 %min.iters.check, label %.lr.ph.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %3 = sub i64 %i.b, %i.a
  %4 = add i64 %3, 15
  %diff.check = icmp ult i64 %4, 31
  br i1 %diff.check, label %.lr.ph.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 134217720    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.do = shl nuw nsw i64 %index, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %i.do ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load = load <4 x i32>, ptr %i.dp, align 1
  %wide.load131 = load <4 x i32>, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x i32> %wide.load, ptr %i.dr, align 4, !tbaa !4
  store <4 x i32> %wide.load131, ptr %i.ds, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader132

.lr.ph.preheader132:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader132, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader132 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader132 ]
  %i.du = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %i.du
  %.0.copyload.i.prol = load i32, ptr %i.dv, align 1
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.prol
  store i32 %.0.copyload.i.prol, ptr %i.dw, align 4, !tbaa !4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !20

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader132
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader132 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.dz = zext i32 %2 to i64
  %i.ea = tail call i32 @mbedtls_aesni_setkey_enc(ptr noundef nonnull %i.dk, ptr noundef %1, i64 noundef %i.dz) #10
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader106
  %i.eb = load i32, ptr %0, align 8, !tbaa !8
  switch i32 %i.eb, label %.loopexit [
    i32 10, label %.preheader.preheader
    i32 12, label %.preheader102.preheader
    i32 14, label %.preheader104.preheader
  ]

.preheader104.preheader:                          ; preds = %._crit_edge
  %.pre = load i32, ptr %i.dk, align 8, !tbaa !4
  br label %.preheader104

.preheader102.preheader:                          ; preds = %._crit_edge
  %i.ec = load i32, ptr %i.dk, align 8, !tbaa !4
  %i.ed = load i32, ptr @round_constants, align 16, !tbaa !4
  %i.ee = xor i32 %i.ed, %i.ec
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4  ; 6 uses
  %i.eh = lshr i32 %i.eg, 8
  %i.ei = and i32 %i.eh, 255
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !11
  %i.em = zext i8 %i.el to i32
  %i.en = xor i32 %i.ee, %i.em
  %i.eo = lshr i32 %i.eg, 16
  %i.ep = and i32 %i.eo, 255
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !11
  %i.et = zext i8 %i.es to i32
  %i.eu = shl nuw nsw i32 %i.et, 8
  %i.ev = xor i32 %i.en, %i.eu
  %i.ew = lshr i32 %i.eg, 24
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !11
  %i.fa = zext i8 %i.ez to i32
  %i.fb = shl nuw nsw i32 %i.fa, 16
  %i.fc = xor i32 %i.ev, %i.fb
  %i.fd = and i32 %i.eg, 255
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !11
  %i.fh = zext i8 %i.fg to i32
  %i.fi = shl nuw i32 %i.fh, 24
  %i.fj = xor i32 %i.fc, %i.fi                    ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fj, ptr %i.fk, align 8, !tbaa !4
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4  ; 2 uses
  %i.fn = xor i32 %i.fj, %i.fm                    ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !4
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !4
  %i.fr = xor i32 %i.fq, %i.fn                    ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.fr, ptr %i.fs, align 8, !tbaa !4
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4  ; 3 uses
  %i.fv = xor i32 %i.fu, %i.fr                    ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !4
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !4
  %i.fz = xor i32 %i.fy, %i.fv                    ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.fz, ptr %i.ga, align 8, !tbaa !4
  %i.gb = xor i32 %i.fz, %i.eg                    ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !4
  %i.gd = load i32, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 4), align 4, !tbaa !4
  %i.ge = lshr i32 %i.gb, 8
  %i.gf = and i32 %i.ge, 255
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !11
  %i.gj = zext i8 %i.gi to i32
  %i.gk = xor i32 %i.gd, %i.gj
  %i.gl = lshr i32 %i.gb, 16
  %i.gm = and i32 %i.gl, 255
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !11
  %i.gq = zext i8 %i.gp to i32
  %i.gr = shl nuw nsw i32 %i.gq, 8
  %i.gs = xor i32 %i.gk, %i.gr
  %i.gt = lshr i32 %i.gb, 24
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !11
  %i.gx = zext i8 %i.gw to i32
  %i.gy = shl nuw nsw i32 %i.gx, 16
  %i.gz = xor i32 %i.gs, %i.gy
  %i.ha = and i32 %i.gb, 255
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !11
  %i.he = zext i8 %i.hd to i32
  %i.hf = shl nuw i32 %i.he, 24
  %i.hg = xor i32 %i.gz, %i.hf                    ; 2 uses
  %i.hh = xor i32 %i.hg, %i.fj                    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.hh, ptr %i.hi, align 8, !tbaa !4
  %i.hj = xor i32 %i.hg, %i.fm                    ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !4
  %i.hl = xor i32 %i.fr, %i.hj
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.hl, ptr %i.hm, align 8, !tbaa !4
  %i.hn = xor i32 %i.fu, %i.hj                    ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !4
  %i.hp = xor i32 %i.fz, %i.hn
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.hp, ptr %i.hq, align 8, !tbaa !4
  %i.hr = xor i32 %i.hn, %i.eg                    ; 8 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !4
  %i.ht = load i32, ptr getelementptr inbounds nuw (i8, ptr @round_constants, i64 8), align 8, !tbaa !4
  %i.hu = lshr i32 %i.hr, 8
  %i.hv = and i32 %i.hu, 255
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !11
  %i.hz = zext i8 %i.hy to i32
  %i.ia = xor i32 %i.ht, %i.hz
  %i.ib = lshr i32 %i.hr, 16
  %i.ic = and i32 %i.ib, 255
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !11
  %i.ig = zext i8 %i.if to i32
  %i.ih = shl nuw nsw i32 %i.ig, 8
  %i.ii = xor i32 %i.ia, %i.ih
  %i.ij = lshr i32 %i.hr, 24
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr @FSb, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !11
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw nsw i32 %i.in, 16
  %i.ip = xor i32 %i.ii, %i.io
  %i.iq = and i32 %i.hr, 255
  %i.ir = zext nneg i32 %i.iq to i64
end_hunk_0
begin_hunk_1_@mbedtls_aes_crypt_xts:bb.a
bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.i = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i92 = icmp eq i32 %i.i, 0
  br i1 %.not.i92, label %mbedtls_aes_crypt_ecb.exit.thread, label %mbedtls_aes_crypt_ecb.exit

mbedtls_aes_crypt_ecb.exit.thread:                ; preds = %bb.c
  %i.j = call i32 @mbedtls_internal_aes_encrypt(ptr noundef nonnull %i.h, ptr noundef %3, ptr noundef nonnull %i.a) ; 0 uses
  br label %.preheader110

mbedtls_aes_crypt_ecb.exit:                       ; preds = %bb.c
  %i.k = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef nonnull %i.h, i32 noundef 1, ptr noundef %3, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.preheader110, label %.critedge

.preheader110:                                    ; preds = %mbedtls_aes_crypt_ecb.exit.thread, %mbedtls_aes_crypt_ecb.exit
  %.not59119 = icmp eq i64 %i.e, 0
  br i1 %.not59119, label %._crit_edge, label %.lr.ph122

.lr.ph122:                                        ; preds = %.preheader110
  %i.l = icmp ne i64 %i.f, 0
  %i.m = icmp eq i32 %1, 0                        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.0.copyload.i.pre.pre = load i64, ptr %i.a, align 16
  %.0.copyload.i.1.pre.pre = load i64, ptr %i.n, align 8
  %invariant.op = and i1 %i.l, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph122, %mbedtls_xor.exit75
  %.0.copyload.i.1.pre = phi i64 [ %.0.copyload.i.1.pre.pre, %.lr.ph122 ], [ %i.au, %mbedtls_xor.exit75 ] ; 3 uses
  %.0.copyload.i.pre = phi i64 [ %.0.copyload.i.pre.pre, %.lr.ph122 ], [ %i.at, %mbedtls_xor.exit75 ] ; 3 uses
  %.in = phi i64 [ %i.e, %.lr.ph122 ], [ %i.p, %mbedtls_xor.exit75 ]
  %.052121 = phi ptr [ %4, %.lr.ph122 ], [ %i.aw, %mbedtls_xor.exit75 ] ; 3 uses
  %.054120 = phi ptr [ %5, %.lr.ph122 ], [ %i.av, %mbedtls_xor.exit75 ] ; 2 uses
  %i.p = add nsw i64 %.in, -1                     ; 2 uses
  %i.q = icmp eq i64 %i.p, 0                      ; 2 uses
  %spec.select.reass.reass = and i1 %i.q, %invariant.op
  br i1 %spec.select.reass.reass, label %bb.e, label %mbedtls_xor.exit79, !prof !29

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.r = shl i64 %.0.copyload.i.pre, 1
  %i.s = lshr i64 %.0.copyload.i.1.pre, 60
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = and i32 %i.t, 8
  %i.v = xor i32 %i.u, 8
  %i.w = lshr i32 135, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = xor i64 %i.r, %i.x                       ; 2 uses
  %i.z = call i64 @llvm.fshl.i64(i64 %.0.copyload.i.1.pre, i64 %.0.copyload.i.pre, i64 1) ; 2 uses
  store i64 %i.y, ptr %i.a, align 16
  store i64 %i.z, ptr %i.n, align 8
  br label %mbedtls_xor.exit79

mbedtls_xor.exit79:                               ; preds = %bb.d, %bb.e
  %.0.copyload.i.1 = phi i64 [ %i.z, %bb.e ], [ %.0.copyload.i.1.pre, %bb.d ]
  %.0.copyload.i = phi i64 [ %i.y, %bb.e ], [ %.0.copyload.i.pre, %bb.d ]
  %.0.copyload.i80 = load i64, ptr %.052121, align 1
  %i.aa = xor i64 %.0.copyload.i, %.0.copyload.i80
  store i64 %i.aa, ptr %i.c, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %.052121, i64 8
  %.0.copyload.i80.1 = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.1, %.0.copyload.i80.1
  store i64 %i.ac, ptr %i.o, align 8
  %i.ad = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i94 = icmp eq i32 %i.ad, 0
  br i1 %.not.i94, label %bb.f, label %mbedtls_aes_crypt_ecb.exit96

bb.f:                                             ; preds = %mbedtls_xor.exit79
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @mbedtls_internal_aes_decrypt(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_xor.exit75

bb.h:                                             ; preds = %bb.f
  %i.af = call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_xor.exit75

mbedtls_aes_crypt_ecb.exit96:                     ; preds = %mbedtls_xor.exit79
  %i.ag = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not62 = icmp eq i32 %i.ag, 0
  br i1 %.not62, label %mbedtls_xor.exit75, label %.critedge

mbedtls_xor.exit75:                               ; preds = %mbedtls_aes_crypt_ecb.exit96, %bb.h, %bb.g
  %i.ah = load <2 x i64>, ptr %i.c, align 16
  %i.ai = load <2 x i64>, ptr %i.a, align 16      ; 3 uses
  %i.aj = xor <2 x i64> %i.ai, %i.ah
  store <2 x i64> %i.aj, ptr %.054120, align 1
  %i.ak = extractelement <2 x i64> %i.ai, i64 0   ; 2 uses
  %i.al = shl i64 %i.ak, 1
  %i.am = extractelement <2 x i64> %i.ai, i64 1   ; 2 uses
  %i.an = lshr i64 %i.am, 60
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 8
  %i.aq = xor i32 %i.ap, 8
  %i.ar = lshr i32 135, %i.aq
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = xor i64 %i.al, %i.as                    ; 2 uses
  %i.au = call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.ak, i64 1) ; 2 uses
  store i64 %i.at, ptr %i.a, align 16
  store i64 %i.au, ptr %i.n, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.054120, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.052121, i64 16 ; 2 uses
  br i1 %i.q, label %._crit_edge, label %bb.d, !llvm.loop !30

._crit_edge:                                      ; preds = %mbedtls_xor.exit75, %.preheader110
  %.054.lcssa = phi ptr [ %5, %.preheader110 ], [ %i.av, %mbedtls_xor.exit75 ] ; 8 uses
  %.052.lcssa = phi ptr [ %4, %.preheader110 ], [ %i.aw, %mbedtls_xor.exit75 ] ; 8 uses
  %.054.lcssa182 = ptrtoaddr ptr %.054.lcssa to i64
  %.052.lcssa167 = ptrtoaddr ptr %.052.lcssa to i64
  %.not60 = icmp eq i64 %i.f, 0
  br i1 %.not60, label %.critedge, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds i8, ptr %.054.lcssa, i64 -16 ; 7 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.ay = icmp samesign ult i64 %i.f, 4
  br i1 %i.ay, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %2, 12
  br label %bb.k

.preheader107.unr-lcssa:                          ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader107, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader107.unr-lcssa, %bb.i
  %.051124.epil.init = phi i64 [ 0, %bb.i ], [ %i.bw, %.preheader107.unr-lcssa ]
  %lcmp.mod219 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod219)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.051124.epil = phi i64 [ %.051124.epil.init, %.epil.preheader ], [ %i.bc, %bb.j ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.051124.epil
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 %.051124.epil
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !11
  %i.bc = add nuw nsw i64 %.051124.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader107, label %bb.j, !llvm.loop !31

.preheader107:                                    ; preds = %bb.j, %.preheader107.unr-lcssa
  %.051124.lcssa = phi i64 [ %i.bs, %.preheader107.unr-lcssa ], [ %.051124.epil, %bb.j ] ; 2 uses
  %i.bd = icmp eq i32 %1, 0                       ; 3 uses
  %i.be = select i1 %i.bd, ptr %i.b, ptr %i.a     ; 10 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %.not.i69125 = icmp samesign ult i64 %i.f, 8
  br i1 %.not.i69125, label %.preheader106, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.preheader107
  %.0.copyload.i84 = load i64, ptr %.052.lcssa, align 1
  %.0.copyload.i83 = load i64, ptr %i.be, align 16
  %i.bg = xor i64 %.0.copyload.i83, %.0.copyload.i84
  store i64 %i.bg, ptr %i.c, align 16
  br label %.preheader106

bb.k:                                             ; preds = %bb.k, %.new
  %.051124 = phi i64 [ 0, %.new ], [ %i.bw, %bb.k ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.k ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.051124
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 %.051124
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !11
  %i.bk = or disjoint i64 %.051124, 1             ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11
  %i.bn = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !11
  %i.bo = or disjoint i64 %.051124, 2             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !11
  %i.bs = or disjoint i64 %.051124, 3             ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %.054.lcssa, i64 %i.bs
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !11
  %i.bw = add nuw nsw i64 %.051124, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader107.unr-lcssa, label %bb.k, !llvm.loop !32

.preheader106:                                    ; preds = %.lr.ph127.preheader, %.preheader107
  %.0.i68.lcssa = phi i64 [ 0, %.preheader107 ], [ 8, %.lr.ph127.preheader ] ; 6 uses
  %i.bx = icmp samesign ult i64 %.0.i68.lcssa, %i.f
  br i1 %i.bx, label %iter.check, label %mbedtls_xor.exit71

iter.check:                                       ; preds = %.preheader106
  %i.by = sub nuw nsw i64 %i.f, %.0.i68.lcssa     ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.by, 8
  br i1 %min.iters.check, label %.lr.ph130.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bz = sub i64 %.052.lcssa167, %i.d
  %diff.check = icmp ugt i64 %i.bz, -32
  %i.ca = sub i64 %i.bf, %i.d
  %diff.check168 = icmp ugt i64 %i.ca, -32
  %conflict.rdx = or i1 %diff.check, %diff.check168
  br i1 %conflict.rdx, label %.lr.ph130.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.mod.vf173 = and i64 %2, 7                    ; 2 uses
  %n.vec174 = sub nsw i64 %i.by, %n.mod.vf173     ; 2 uses
  %i.cb = add nsw i64 %.0.i68.lcssa, %n.vec174
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index175 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next178, %vec.epilog.vector.body ] ; 2 uses
  %i.cc = add i64 %.0.i68.lcssa, %index175        ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.cc
  %wide.load176 = load <8 x i8>, ptr %i.cd, align 1, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cc
  %wide.load177 = load <8 x i8>, ptr %i.ce, align 8, !tbaa !11
  %i.cf = xor <8 x i8> %wide.load177, %wide.load176
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cc
  store <8 x i8> %i.cf, ptr %i.cg, align 8, !tbaa !11
  %index.next178 = add nuw i64 %index175, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next178, %n.vec174
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n179 = icmp eq i64 %n.mod.vf173, 0
  br i1 %cmp.n179, label %mbedtls_xor.exit71, label %.lr.ph130.preheader

.lr.ph130.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i70129.ph = phi i64 [ %.0.i68.lcssa, %vector.memcheck ], [ %.0.i68.lcssa, %iter.check ], [ %i.cb, %vec.epilog.middle.block ] ; 4 uses
  %i.ci = sub nsw i64 %2, %.1.i70129.ph
  %xtraiter220 = and i64 %i.ci, 3                 ; 2 uses
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %.lr.ph130.prol.loopexit, label %.lr.ph130.prol

.lr.ph130.prol:                                   ; preds = %.lr.ph130.preheader, %.lr.ph130.prol
  %.1.i70129.prol = phi i64 [ %i.cp, %.lr.ph130.prol ], [ %.1.i70129.ph, %.lr.ph130.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph130.prol ], [ 0, %.lr.ph130.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %.1.i70129.prol
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.i70129.prol
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !11
  %i.cn = xor i8 %i.cm, %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i70129.prol
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !11
  %i.cp = add nuw nsw i64 %.1.i70129.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter220
  br i1 %prol.iter.cmp.not, label %.lr.ph130.prol.loopexit, label %.lr.ph130.prol, !llvm.loop !34

.lr.ph130.prol.loopexit:                          ; preds = %.lr.ph130.prol, %.lr.ph130.preheader
  %.1.i70129.unr = phi i64 [ %.1.i70129.ph, %.lr.ph130.preheader ], [ %i.cp, %.lr.ph130.prol ]
  %i.cq = sub nsw i64 %.1.i70129.ph, %i.f
  %i.cr = icmp ugt i64 %i.cq, -4
  br i1 %i.cr, label %mbedtls_xor.exit71, label %.lr.ph130

.lr.ph130:                                        ; preds = %.lr.ph130.prol.loopexit, %.lr.ph130
  %.1.i70129 = phi i64 [ %i.dt, %.lr.ph130 ], [ %.1.i70129.unr, %.lr.ph130.prol.loopexit ] ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %.1.i70129
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cu = getelementptr inbounds nuw i8, ptr %i.be, i64 %.1.i70129
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !11
  %i.cw = xor i8 %i.cv, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1.i70129
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !11
  %i.cy = add nuw nsw i64 %.1.i70129, 1           ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !11
  %i.dd = xor i8 %i.dc, %i.da
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cy
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !11
  %i.df = add nuw nsw i64 %.1.i70129, 2           ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.df
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !11
  %i.dk = xor i8 %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.df
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !11
  %i.dm = add nuw nsw i64 %.1.i70129, 3           ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.052.lcssa, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.dm
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !11
  %i.dr = xor i8 %i.dq, %i.do
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dm
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !11
  %i.dt = add nuw nsw i64 %.1.i70129, 4           ; 2 uses
  %exitcond146.not.3 = icmp eq i64 %i.dt, %i.f
  br i1 %exitcond146.not.3, label %mbedtls_xor.exit71, label %.lr.ph130, !llvm.loop !35

mbedtls_xor.exit71:                               ; preds = %.lr.ph130.prol.loopexit, %.lr.ph130, %vec.epilog.middle.block, %.preheader106
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.f ; 8 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.f ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f ; 8 uses
  %i.dx = sub nsw i64 15, %.051124.lcssa          ; 3 uses
  %.not.i65131 = icmp ult i64 %i.dx, 8
  br i1 %.not.i65131, label %.preheader105, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %mbedtls_xor.exit71
  %i.dy = sub i64 7, %.051124.lcssa               ; 2 uses
  %i.dz = lshr i64 %i.dy, 3
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %xtraiter222 = and i64 %i.ea, 3                 ; 3 uses
  %i.eb = icmp ult i64 %i.dy, 24
  br i1 %i.eb, label %.lr.ph133.epil.preheader, label %.lr.ph133.preheader.new

.lr.ph133.preheader.new:                          ; preds = %.lr.ph133.preheader
  %unroll_iter227 = and i64 %i.ea, 4611686018427387900
  br label %.lr.ph133

.preheader105.loopexit.unr-lcssa:                 ; preds = %.lr.ph133
  %lcmp.mod224.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod224.not, label %.preheader105, label %.lr.ph133.epil.preheader

.lr.ph133.epil.preheader:                         ; preds = %.preheader105.loopexit.unr-lcssa, %.lr.ph133.preheader
  %.epil.init = phi i64 [ 8, %.lr.ph133.preheader ], [ %i.fu, %.preheader105.loopexit.unr-lcssa ]
  %.0.i64132.epil.init = phi i64 [ 0, %.lr.ph133.preheader ], [ %i.fp, %.preheader105.loopexit.unr-lcssa ]
  %lcmp.mod226 = icmp ne i64 %xtraiter222, 0
  call void @llvm.assume(i1 %lcmp.mod226)
  br label %.lr.ph133.epil

.lr.ph133.epil:                                   ; preds = %.lr.ph133.epil, %.lr.ph133.epil.preheader
  %i.ec = phi i64 [ %i.eh, %.lr.ph133.epil ], [ %.epil.init, %.lr.ph133.epil.preheader ] ; 3 uses
  %.0.i64132.epil = phi i64 [ %i.ec, %.lr.ph133.epil ], [ %.0.i64132.epil.init, %.lr.ph133.epil.preheader ] ; 3 uses
  %epil.iter223 = phi i64 [ %epil.iter223.next, %.lr.ph133.epil ], [ 0, %.lr.ph133.epil.preheader ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.0.i64132.epil
  %.0.copyload.i86.epil = load i64, ptr %i.ed, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.0.i64132.epil
  %.0.copyload.i85.epil = load i64, ptr %i.ee, align 1
  %i.ef = xor i64 %.0.copyload.i85.epil, %.0.copyload.i86.epil
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 %.0.i64132.epil
  store i64 %i.ef, ptr %i.eg, align 1
  %i.eh = add nuw nsw i64 %i.ec, 8
  %epil.iter223.next = add i64 %epil.iter223, 1   ; 2 uses
  %epil.iter223.cmp.not = icmp eq i64 %epil.iter223.next, %xtraiter222
  br i1 %epil.iter223.cmp.not, label %.preheader105, label %.lr.ph133.epil, !llvm.loop !36

.preheader105:                                    ; preds = %.preheader105.loopexit.unr-lcssa, %.lr.ph133.epil, %mbedtls_xor.exit71
  %.0.i64.lcssa = phi i64 [ 0, %mbedtls_xor.exit71 ], [ %i.fp, %.preheader105.loopexit.unr-lcssa ], [ %i.ec, %.lr.ph133.epil ] ; 8 uses
  %i.ei = icmp ult i64 %.0.i64.lcssa, %i.dx
  br i1 %i.ei, label %iter.check200, label %mbedtls_xor.exit67

iter.check200:                                    ; preds = %.preheader105
  %i.ej = sub nuw nsw i64 16, %i.f
  %i.ek = or disjoint i64 %.0.i64.lcssa, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.ej, i64 %i.ek) ; 2 uses
  %i.el = sub nsw i64 %umax, %.0.i64.lcssa        ; 6 uses
  %min.iters.check186 = icmp ult i64 %i.el, 4
  %6 = sub i64 %i.d, %.054.lcssa182
  %diff.check183 = icmp ugt i64 %6, -16
  %or.cond215 = select i1 %min.iters.check186, i1 true, i1 %diff.check183
  br i1 %or.cond215, label %.lr.ph136.preheader, label %vector.main.loop.iter.check187

vector.main.loop.iter.check187:                   ; preds = %iter.check200
  %min.iters.check188 = icmp ult i64 %i.el, 16
  br i1 %min.iters.check188, label %vec.epilog.ph204, label %vector.ph189

vector.ph189:                                     ; preds = %vector.main.loop.iter.check187
  %n.mod.vf190 = and i64 %i.el, 12
  %n.vec191 = and i64 %i.el, -16                  ; 4 uses
  %i.em = add i64 %.0.i64.lcssa, %n.vec191
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph189
  %index193 = phi i64 [ 0, %vector.ph189 ], [ %index.next196, %vector.body192 ] ; 2 uses
  %i.en = add i64 %.0.i64.lcssa, %index193        ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.en
  %wide.load194 = load <16 x i8>, ptr %i.eo, align 1, !tbaa !11
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.en
  %wide.load195 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !11
  %i.eq = xor <16 x i8> %wide.load195, %wide.load194
  %i.er = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.en
  store <16 x i8> %i.eq, ptr %i.er, align 1, !tbaa !11
  %index.next196 = add nuw i64 %index193, 16      ; 2 uses
  %i.es = icmp eq i64 %index.next196, %n.vec191
  br i1 %i.es, label %middle.block197, label %vector.body192, !llvm.loop !37

middle.block197:                                  ; preds = %vector.body192
  %cmp.n198 = icmp eq i64 %i.el, %n.vec191
  br i1 %cmp.n198, label %mbedtls_xor.exit67, label %vec.epilog.iter.check202

vec.epilog.iter.check202:                         ; preds = %middle.block197
  %min.epilog.iters.check203 = icmp eq i64 %n.mod.vf190, 0
  br i1 %min.epilog.iters.check203, label %.lr.ph136.preheader, label %vec.epilog.ph204, !prof !38

vec.epilog.ph204:                                 ; preds = %vector.main.loop.iter.check187, %vec.epilog.iter.check202
  %vec.epilog.resume.val199 = phi i64 [ %n.vec191, %vec.epilog.iter.check202 ], [ 0, %vector.main.loop.iter.check187 ]
  %n.mod.vf205 = and i64 %umax, 3                 ; 2 uses
  %n.vec206 = sub i64 %i.el, %n.mod.vf205         ; 2 uses
  %i.et = add i64 %.0.i64.lcssa, %n.vec206
  br label %vec.epilog.vector.body207

vec.epilog.vector.body207:                        ; preds = %vec.epilog.vector.body207, %vec.epilog.ph204
  %index208 = phi i64 [ %vec.epilog.resume.val199, %vec.epilog.ph204 ], [ %index.next211, %vec.epilog.vector.body207 ] ; 2 uses
  %i.eu = add i64 %.0.i64.lcssa, %index208        ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.eu
  %wide.load209 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.eu
  %wide.load210 = load <4 x i8>, ptr %i.ew, align 1, !tbaa !11
  %i.ex = xor <4 x i8> %wide.load210, %wide.load209
  %i.ey = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.eu
  store <4 x i8> %i.ex, ptr %i.ey, align 1, !tbaa !11
  %index.next211 = add nuw i64 %index208, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next211, %n.vec206
  br i1 %i.ez, label %vec.epilog.middle.block212, label %vec.epilog.vector.body207, !llvm.loop !39

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body207
  %cmp.n213 = icmp eq i64 %n.mod.vf205, 0
  br i1 %cmp.n213, label %mbedtls_xor.exit67, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %iter.check200, %vec.epilog.iter.check202, %vec.epilog.middle.block212
  %.1.i66135.ph = phi i64 [ %.0.i64.lcssa, %iter.check200 ], [ %i.em, %vec.epilog.iter.check202 ], [ %i.et, %vec.epilog.middle.block212 ]
  br label %.lr.ph136

.lr.ph133:                                        ; preds = %.lr.ph133, %.lr.ph133.preheader.new
  %i.fa = phi i64 [ 8, %.lr.ph133.preheader.new ], [ %i.fu, %.lr.ph133 ] ; 7 uses
  %.0.i64132 = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %i.fp, %.lr.ph133 ] ; 3 uses
  %niter228 = phi i64 [ 0, %.lr.ph133.preheader.new ], [ %niter228.next.3, %.lr.ph133 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.0.i64132
  %.0.copyload.i86 = load i64, ptr %i.fb, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.0.i64132
  %.0.copyload.i85 = load i64, ptr %i.fc, align 1
  %i.fd = xor i64 %.0.copyload.i85, %.0.copyload.i86
  %i.fe = getelementptr inbounds nuw i8, ptr %i.du, i64 %.0.i64132
  store i64 %i.fd, ptr %i.fe, align 1
  %i.ff = add nuw nsw i64 %i.fa, 8                ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.fa
  %.0.copyload.i86.1 = load i64, ptr %i.fg, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.fa
  %.0.copyload.i85.1 = load i64, ptr %i.fh, align 1
  %i.fi = xor i64 %.0.copyload.i85.1, %.0.copyload.i86.1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.fa
  store i64 %i.fi, ptr %i.fj, align 1
  %i.fk = add nuw nsw i64 %i.fa, 16               ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ff
  %.0.copyload.i86.2 = load i64, ptr %i.fl, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ff
  %.0.copyload.i85.2 = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %.0.copyload.i85.2, %.0.copyload.i86.2
  %i.fo = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ff
  store i64 %i.fn, ptr %i.fo, align 1
  %i.fp = add nuw nsw i64 %i.fa, 24               ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.fk
  %.0.copyload.i86.3 = load i64, ptr %i.fq, align 1
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.fk
  %.0.copyload.i85.3 = load i64, ptr %i.fr, align 1
  %i.fs = xor i64 %.0.copyload.i85.3, %.0.copyload.i86.3
  %i.ft = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.fk
  store i64 %i.fs, ptr %i.ft, align 1
  %i.fu = add nuw nsw i64 %i.fa, 32               ; 2 uses
  %niter228.next.3 = add i64 %niter228, 4         ; 2 uses
  %niter228.ncmp.3 = icmp eq i64 %niter228.next.3, %unroll_iter227
  br i1 %niter228.ncmp.3, label %.preheader105.loopexit.unr-lcssa, label %.lr.ph133, !llvm.loop !40

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %.lr.ph136
  %.1.i66135 = phi i64 [ %i.gb, %.lr.ph136 ], [ %.1.i66135.ph, %.lr.ph136.preheader ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.1.i66135
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !11
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.1.i66135
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !11
  %i.fz = xor i8 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw i8, ptr %i.du, i64 %.1.i66135
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !11
  %i.gb = add nuw nsw i64 %.1.i66135, 1           ; 2 uses
  %i.gc = icmp samesign ult i64 %i.gb, %i.dx
  br i1 %i.gc, label %.lr.ph136, label %mbedtls_xor.exit67, !llvm.loop !41

mbedtls_xor.exit67:                               ; preds = %.lr.ph136, %middle.block197, %vec.epilog.middle.block212, %.preheader105
  %i.gd = call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i98 = icmp eq i32 %i.gd, 0
  br i1 %.not.i98, label %bb.l, label %mbedtls_aes_crypt_ecb.exit100

bb.l:                                             ; preds = %mbedtls_xor.exit67
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ge = call i32 @mbedtls_internal_aes_decrypt(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_aes_crypt_ecb.exit100.thread

bb.n:                                             ; preds = %bb.l
  %i.gf = call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) ; 0 uses
  br label %mbedtls_aes_crypt_ecb.exit100.thread

mbedtls_aes_crypt_ecb.exit100:                    ; preds = %mbedtls_xor.exit67
  %i.gg = call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not61 = icmp eq i32 %i.gg, 0
  br i1 %.not61, label %mbedtls_aes_crypt_ecb.exit100.thread, label %.critedge

mbedtls_aes_crypt_ecb.exit100.thread:             ; preds = %bb.m, %bb.n, %mbedtls_aes_crypt_ecb.exit100
  %.0.copyload.i88 = load i64, ptr %i.c, align 16
  %.0.copyload.i87 = load i64, ptr %i.be, align 16
  %i.gh = xor i64 %.0.copyload.i87, %.0.copyload.i88
  store i64 %i.gh, ptr %i.ax, align 1
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i88.1 = load i64, ptr %i.gi, align 8
  %.sroa.sel.v.sroa.sel.v = select i1 %i.bd, ptr %i.b, ptr %i.a
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v, i64 8
  %.0.copyload.i87.1 = load i64, ptr %.sroa.sel.v.sroa.sel, align 8
  %i.gj = xor i64 %.0.copyload.i87.1, %.0.copyload.i88.1
  %i.gk = getelementptr inbounds i8, ptr %.054.lcssa, i64 -8
  store i64 %i.gj, ptr %i.gk, align 1
  br label %.critedge

.critedge:                                        ; preds = %mbedtls_aes_crypt_ecb.exit96, %mbedtls_aes_crypt_ecb.exit100.thread, %._crit_edge, %mbedtls_aes_crypt_ecb.exit100, %mbedtls_aes_crypt_ecb.exit, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %mbedtls_aes_crypt_ecb.exit100.thread ], [ -33, %bb.a ], [ -34, %bb.b ], [ %i.gg, %mbedtls_aes_crypt_ecb.exit100 ], [ %i.k, %mbedtls_aes_crypt_ecb.exit ], [ 0, %._crit_edge ], [ %i.ag, %mbedtls_aes_crypt_ecb.exit96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_crypt_cfb128(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !42     ; 5 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %.loopexit58, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %1, 0
  %.not4969 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %bb.c
  br i1 %.not4969, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not4969, label %.loopexit, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader, %bb.e
  %.in75 = phi i64 [ %i.d, %bb.e ], [ %2, %.preheader ]
  %.072 = phi i64 [ %i.p, %bb.e ], [ %i.a, %.preheader ] ; 3 uses
  %.03971 = phi ptr [ %i.n, %bb.e ], [ %6, %.preheader ] ; 2 uses
  %.04170 = phi ptr [ %i.i, %bb.e ], [ %5, %.preheader ] ; 2 uses
  %i.d = add i64 %.in75, -1                       ; 2 uses
  %i.e = icmp eq i64 %.072, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph73
  %i.f = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %mbedtls_aes_crypt_ecb.exit.thread, label %mbedtls_aes_crypt_ecb.exit

mbedtls_aes_crypt_ecb.exit.thread:                ; preds = %bb.d
  %i.g = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef %4, ptr noundef %4) ; 0 uses
  br label %bb.e

mbedtls_aes_crypt_ecb.exit:                       ; preds = %bb.d
  %i.h = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %4, ptr noundef %4) #10 ; 2 uses
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %bb.e, label %.loopexit58

bb.e:                                             ; preds = %mbedtls_aes_crypt_ecb.exit.thread, %mbedtls_aes_crypt_ecb.exit, %.lr.ph73
  %i.i = getelementptr inbounds nuw i8, ptr %.04170, i64 1
  %i.j = load i8, ptr %.04170, align 1, !tbaa !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 %.072 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = xor i8 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %.03971, i64 1
  store i8 %i.m, ptr %.03971, align 1, !tbaa !11
  store i8 %i.j, ptr %i.k, align 1, !tbaa !11
  %i.o = add nuw nsw i64 %.072, 1
  %i.p = and i64 %i.o, 15                         ; 2 uses
  %.not49 = icmp eq i64 %i.d, 0
  br i1 %.not49, label %.loopexit, label %.lr.ph73, !llvm.loop !43

.lr.ph:                                           ; preds = %.preheader59, %bb.g
  %.in = phi i64 [ %i.q, %bb.g ], [ %2, %.preheader59 ]
  %.168 = phi i64 [ %i.ac, %bb.g ], [ %i.a, %.preheader59 ] ; 3 uses
  %.14067 = phi ptr [ %i.aa, %bb.g ], [ %6, %.preheader59 ] ; 2 uses
  %.14266 = phi ptr [ %i.x, %bb.g ], [ %5, %.preheader59 ] ; 2 uses
  %i.q = add i64 %.in, -1                         ; 2 uses
  %i.r = icmp eq i64 %.168, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.s = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i51 = icmp eq i32 %i.s, 0
  br i1 %.not.i51, label %mbedtls_aes_crypt_ecb.exit53.thread, label %mbedtls_aes_crypt_ecb.exit53

mbedtls_aes_crypt_ecb.exit53.thread:              ; preds = %bb.f
  %i.t = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef %4, ptr noundef %4) ; 0 uses
  br label %bb.g

mbedtls_aes_crypt_ecb.exit53:                     ; preds = %bb.f
  %i.u = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %4, ptr noundef %4) #10 ; 2 uses
  %.not48 = icmp eq i32 %i.u, 0
  br i1 %.not48, label %bb.g, label %.loopexit58

bb.g:                                             ; preds = %mbedtls_aes_crypt_ecb.exit53.thread, %mbedtls_aes_crypt_ecb.exit53, %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 %.168 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %.14266, i64 1
  %i.y = load i8, ptr %.14266, align 1, !tbaa !11
  %i.z = xor i8 %i.y, %i.w                        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.14067, i64 1
  store i8 %i.z, ptr %.14067, align 1, !tbaa !11
  store i8 %i.z, ptr %i.v, align 1, !tbaa !11
  %i.ab = add nuw nsw i64 %.168, 1
  %i.ac = and i64 %i.ab, 15                       ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !44

.loopexit:                                        ; preds = %bb.g, %bb.e, %.preheader59, %.preheader
  %.2 = phi i64 [ %i.p, %bb.e ], [ %i.a, %.preheader ], [ %i.a, %.preheader59 ], [ %i.ac, %bb.g ]
  store i64 %.2, ptr %3, align 8, !tbaa !42
  br label %.loopexit58

.loopexit58:                                      ; preds = %mbedtls_aes_crypt_ecb.exit53, %mbedtls_aes_crypt_ecb.exit, %.loopexit, %bb.b, %bb.a
  %.038 = phi i32 [ -33, %bb.b ], [ -33, %bb.a ], [ %i.h, %mbedtls_aes_crypt_ecb.exit ], [ 0, %.loopexit ], [ %i.u, %mbedtls_aes_crypt_ecb.exit53 ]
  ret i32 %.038
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_crypt_cfb8(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %.sroa.0 = alloca [16 x i8], align 16           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not26 = icmp eq i64 %2, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.a = add i64 %2, -1                           ; 2 uses
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1 ; 2 uses
  %.sroa.4.1..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 15 ; 2 uses
  %trunc = trunc nuw i32 %1 to i1
  br i1 %trunc, label %.lr.ph.split.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %bb.b
  %i.b = phi i64 [ %i.k, %bb.b ], [ %i.a, %.lr.ph ] ; 2 uses
  %.01928.us = phi ptr [ %i.j, %bb.b ], [ %5, %.lr.ph ] ; 2 uses
  %.02027.us = phi ptr [ %i.h, %bb.b ], [ %4, %.lr.ph ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  %i.c = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i.us = icmp eq i32 %i.c, 0
  br i1 %.not.i.us, label %mbedtls_aes_crypt_ecb.exit.thread.us, label %mbedtls_aes_crypt_ecb.exit.us

mbedtls_aes_crypt_ecb.exit.us:                    ; preds = %.lr.ph.split.us.split
  %i.d = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %3) #10 ; 2 uses
  %.not23.us = icmp eq i32 %i.d, 0
  br i1 %.not23.us, label %bb.b, label %.loopexit

mbedtls_aes_crypt_ecb.exit.thread.us:             ; preds = %.lr.ph.split.us.split
  %i.e = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %3) ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %mbedtls_aes_crypt_ecb.exit.thread.us, %mbedtls_aes_crypt_ecb.exit.us
  %i.f = load i8, ptr %.02027.us, align 1, !tbaa !11 ; 2 uses
  %i.g = load i8, ptr %3, align 1, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %.02027.us, i64 1
  %i.i = xor i8 %i.f, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %.01928.us, i64 1
  store i8 %i.i, ptr %.01928.us, align 1, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.f, ptr %.sroa.4.1..sroa_idx, align 1
  %i.k = add i64 %i.b, -1
  %.not.us = icmp eq i64 %i.b, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !45

.lr.ph.split.split.us:                            ; preds = %.lr.ph, %bb.c
  %i.l = phi i64 [ %i.u, %bb.c ], [ %i.a, %.lr.ph ] ; 2 uses
  %.01928.us33 = phi ptr [ %i.t, %bb.c ], [ %5, %.lr.ph ] ; 2 uses
  %.02027.us34 = phi ptr [ %i.q, %bb.c ], [ %4, %.lr.ph ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false)
  %i.m = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i.us35 = icmp eq i32 %i.m, 0
  br i1 %.not.i.us35, label %mbedtls_aes_crypt_ecb.exit.thread.us38, label %mbedtls_aes_crypt_ecb.exit.us36

mbedtls_aes_crypt_ecb.exit.us36:                  ; preds = %.lr.ph.split.split.us
  %i.n = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %3) #10 ; 2 uses
  %.not23.us37 = icmp eq i32 %i.n, 0
  br i1 %.not23.us37, label %bb.c, label %.loopexit

mbedtls_aes_crypt_ecb.exit.thread.us38:           ; preds = %.lr.ph.split.split.us
  %i.o = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %3) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %mbedtls_aes_crypt_ecb.exit.thread.us38, %mbedtls_aes_crypt_ecb.exit.us36
  %i.p = load i8, ptr %3, align 1, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %.02027.us34, i64 1
  %i.r = load i8, ptr %.02027.us34, align 1, !tbaa !11
  %i.s = xor i8 %i.r, %i.p                        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01928.us33, i64 1
  store i8 %i.s, ptr %.01928.us33, align 1, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %3, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.0.1..sroa_idx, i64 15, i1 false)
  store i8 %i.s, ptr %.sroa.4.1..sroa_idx, align 1
  %i.u = add i64 %i.l, -1
  %.not.us39 = icmp eq i64 %i.l, 0
  br i1 %.not.us39, label %.loopexit, label %.lr.ph.split.split.us, !llvm.loop !45

.loopexit:                                        ; preds = %bb.b, %mbedtls_aes_crypt_ecb.exit.us, %bb.c, %mbedtls_aes_crypt_ecb.exit.us36, %.preheader, %bb.a
  %.0 = phi i32 [ -33, %bb.a ], [ 0, %.preheader ], [ 0, %bb.c ], [ %i.n, %mbedtls_aes_crypt_ecb.exit.us36 ], [ %i.d, %mbedtls_aes_crypt_ecb.exit.us ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_crypt_ofb(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !42     ; 3 uses
  %i.b = icmp ugt i64 %i.a, 15
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not28 = icmp eq i64 %1, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.in = phi i64 [ %i.c, %bb.c ], [ %1, %.preheader ]
  %.031 = phi i64 [ %i.o, %bb.c ], [ %i.a, %.preheader ] ; 3 uses
  %.01730 = phi ptr [ %i.m, %bb.c ], [ %5, %.preheader ] ; 2 uses
  %.01829 = phi ptr [ %i.h, %bb.c ], [ %4, %.preheader ] ; 2 uses
  %i.c = add i64 %.in, -1                         ; 2 uses
  %i.d = icmp eq i64 %.031, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %mbedtls_aes_crypt_ecb.exit.thread, label %mbedtls_aes_crypt_ecb.exit

mbedtls_aes_crypt_ecb.exit.thread:                ; preds = %bb.b
  %i.f = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef %3, ptr noundef %3) ; 0 uses
  br label %bb.c

mbedtls_aes_crypt_ecb.exit:                       ; preds = %bb.b
  %i.g = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %3, ptr noundef %3) #10 ; 2 uses
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %mbedtls_aes_crypt_ecb.exit.thread, %mbedtls_aes_crypt_ecb.exit, %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.01829, i64 1
  %i.i = load i8, ptr %.01829, align 1, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 %.031
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = xor i8 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01730, i64 1
  store i8 %i.l, ptr %.01730, align 1, !tbaa !11
  %i.n = add nuw nsw i64 %.031, 1
  %i.o = and i64 %i.n, 15                         ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.0.lcssa = phi i64 [ %i.a, %.preheader ], [ %i.o, %bb.c ]
  store i64 %.0.lcssa, ptr %2, align 8, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %mbedtls_aes_crypt_ecb.exit, %._crit_edge, %bb.a
  %.019 = phi i32 [ -33, %bb.a ], [ 0, %._crit_edge ], [ %i.g, %mbedtls_aes_crypt_ecb.exit ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_crypt_ctr(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !42     ; 3 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.loopexit, label %.preheader60

.preheader60:                                     ; preds = %bb.a
  %.not69 = icmp eq i64 %1, 0
  br i1 %.not69, label %._crit_edge68, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %.preheader60
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %7 = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %7, -32
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %._crit_edge
  %.03266 = phi i64 [ %i.cj, %._crit_edge ], [ 0, %.lr.ph67.preheader ] ; 5 uses
  %.03665 = phi i64 [ 0, %._crit_edge ], [ %i.d, %.lr.ph67.preheader ] ; 4 uses
  %i.i = icmp eq i64 %.03665, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph67
  %i.j = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not.i48 = icmp eq i32 %i.j, 0
  br i1 %.not.i48, label %mbedtls_aes_crypt_ecb.exit.thread, label %mbedtls_aes_crypt_ecb.exit

mbedtls_aes_crypt_ecb.exit.thread:                ; preds = %bb.b
  %i.k = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef %3, ptr noundef %4) ; 0 uses
  br label %.preheader90

mbedtls_aes_crypt_ecb.exit:                       ; preds = %bb.b
  %i.l = tail call i32 @mbedtls_aesni_crypt_ecb(ptr noundef %0, i32 noundef 1, ptr noundef %3, ptr noundef %4) #10 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.preheader90, label %.loopexit

.preheader90:                                     ; preds = %mbedtls_aes_crypt_ecb.exit, %mbedtls_aes_crypt_ecb.exit.thread
  %.0.copyload.i.i = load i32, ptr %i.f, align 1
  %i.m = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  store i32 %i.o, ptr %i.f, align 1
  %i.p = icmp eq i32 %i.n, 0
  br i1 %i.p, label %bb.c, label %mbedtls_ctr_increment_counter.exit

bb.c:                                             ; preds = %.preheader90
  %.0.copyload.i.i.1 = load i32, ptr %i.g, align 1
  %i.q = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1)
  %i.r = add i32 %i.q, 1                          ; 2 uses
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.s, ptr %i.g, align 1
  %i.t = icmp eq i32 %i.r, 0
  br i1 %i.t, label %bb.d, label %mbedtls_ctr_increment_counter.exit

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.2 = load i32, ptr %i.h, align 1
  %i.u = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.2)
  %i.v = add i32 %i.u, 1                          ; 2 uses
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  store i32 %i.w, ptr %i.h, align 1
  %i.x = icmp eq i32 %i.v, 0
  br i1 %i.x, label %bb.e, label %mbedtls_ctr_increment_counter.exit

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.3 = load i32, ptr %3, align 1
  %i.y = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.3)
  %i.z = add i32 %i.y, 1
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  store i32 %i.aa, ptr %3, align 1
  br label %mbedtls_ctr_increment_counter.exit

bb.f:                                             ; preds = %.lr.ph67
  %i.ab = sub nuw nsw i64 16, %.03665
  br label %mbedtls_ctr_increment_counter.exit

mbedtls_ctr_increment_counter.exit:               ; preds = %.preheader90, %bb.c, %bb.d, %bb.e, %bb.f
  %.0 = phi i64 [ %i.ab, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ], [ 16, %.preheader90 ]
  %i.ac = sub i64 %1, %.03266
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.ac) ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 %.03266 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 %.03266 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %.03665 ; 8 uses
  %.not.i61 = icmp samesign ult i64 %spec.select, 8
  br i1 %.not.i61, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.1, %mbedtls_ctr_increment_counter.exit
  %.0.i.lcssa = phi i64 [ 0, %mbedtls_ctr_increment_counter.exit ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 6 uses
  %i.ag = icmp samesign ult i64 %.0.i.lcssa, %spec.select
  br i1 %i.ag, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ah = sub nuw nsw i64 %spec.select, %.0.i.lcssa ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 8
  br i1 %min.iters.check, label %.lr.ph64.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ai = add i64 %.03266, %i.c
  %i.aj = add i64 %.03665, %i.a
  %i.ak = sub i64 %i.aj, %i.ai
  %diff.check77 = icmp ugt i64 %i.ak, -32
  %conflict.rdx = or i1 %diff.check, %diff.check77
  br i1 %conflict.rdx, label %.lr.ph64.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.mod.vf82 = and i64 %spec.select, 7           ; 2 uses
  %n.vec83 = sub nsw i64 %i.ah, %n.mod.vf82       ; 2 uses
  %i.al = add i64 %.0.i.lcssa, %n.vec83
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next87, %vec.epilog.vector.body ] ; 2 uses
  %i.am = add i64 %.0.i.lcssa, %index84           ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.am
  %wide.load85 = load <8 x i8>, ptr %i.an, align 1, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.am
  %wide.load86 = load <8 x i8>, ptr %i.ao, align 1, !tbaa !11
  %i.ap = xor <8 x i8> %wide.load86, %wide.load85
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.am
  store <8 x i8> %i.ap, ptr %i.aq, align 1, !tbaa !11
  %index.next87 = add nuw i64 %index84, 8         ; 2 uses
  %i.ar = icmp eq i64 %index.next87, %n.vec83
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n88 = icmp eq i64 %n.mod.vf82, 0
  br i1 %cmp.n88, label %._crit_edge, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i63.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck ], [ %.0.i.lcssa, %iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 4 uses
  %i.as = sub i64 %spec.select, %.1.i63.ph
  %xtraiter = and i64 %i.as, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol

.lr.ph64.prol:                                    ; preds = %.lr.ph64.preheader, %.lr.ph64.prol
  %.1.i63.prol = phi i64 [ %i.az, %.lr.ph64.prol ], [ %.1.i63.ph, %.lr.ph64.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph64.prol ], [ 0, %.lr.ph64.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i63.prol
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %.1.i63.prol
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = xor i8 %i.aw, %i.au
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.1.i63.prol
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !11
  %i.az = add nuw nsw i64 %.1.i63.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph64.prol.loopexit, label %.lr.ph64.prol, !llvm.loop !48

.lr.ph64.prol.loopexit:                           ; preds = %.lr.ph64.prol, %.lr.ph64.preheader
  %.1.i63.unr = phi i64 [ %.1.i63.ph, %.lr.ph64.preheader ], [ %i.az, %.lr.ph64.prol ]
  %i.ba = sub i64 %.1.i63.ph, %spec.select
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge, label %.lr.ph64

.lr.ph:                                           ; preds = %mbedtls_ctr_increment_counter.exit
  %.0.copyload.i47 = load i64, ptr %i.ae, align 1
  %.0.copyload.i = load i64, ptr %i.af, align 1
  %i.bc = xor i64 %.0.copyload.i, %.0.copyload.i47
  store i64 %i.bc, ptr %i.ad, align 1
  %.not.i = icmp samesign ult i64 %spec.select, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.0.copyload.i47.1 = load i64, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.be, align 1
  %i.bf = xor i64 %.0.copyload.i.1, %.0.copyload.i47.1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.bf, ptr %i.bg, align 1
  br label %.preheader

.lr.ph64:                                         ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64
  %.1.i63 = phi i64 [ %i.ci, %.lr.ph64 ], [ %.1.i63.unr, %.lr.ph64.prol.loopexit ] ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.1.i63
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.1.i63
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !11
  %i.bl = xor i8 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.1.i63
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !11
  %i.bn = add nuw nsw i64 %.1.i63, 1              ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bn
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !11
  %i.bs = xor i8 %i.br, %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bn
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !11
  %i.bu = add nuw nsw i64 %.1.i63, 2              ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bu
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11
  %i.bz = xor i8 %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bu
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !11
  %i.cb = add nuw nsw i64 %.1.i63, 3              ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.cb
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = xor i8 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cb
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !11
  %i.ci = add nuw nsw i64 %.1.i63, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ci, %spec.select
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph64, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph64.prol.loopexit, %.lr.ph64, %vec.epilog.middle.block, %.preheader
  %i.cj = add i64 %spec.select, %.03266           ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %1
  br i1 %i.ck, label %.lr.ph67, label %._crit_edge68.loopexit, !llvm.loop !50

._crit_edge68.loopexit:                           ; preds = %._crit_edge
  %.pre = load i64, ptr %2, align 8, !tbaa !42
  br label %._crit_edge68

._crit_edge68:                                    ; preds = %._crit_edge68.loopexit, %.preheader60
  %i.cl = phi i64 [ %.pre, %._crit_edge68.loopexit ], [ %i.d, %.preheader60 ]
  %i.cm = add i64 %i.cl, %1
  %i.cn = and i64 %i.cm, 15
  store i64 %i.cn, ptr %2, align 8, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %mbedtls_aes_crypt_ecb.exit, %._crit_edge68, %bb.a
  %.040 = phi i32 [ -33, %bb.a ], [ 0, %._crit_edge68 ], [ %i.l, %mbedtls_aes_crypt_ecb.exit ]
  ret i32 %.040
}

; Function Attrs: nounwind uwtable
define i32 @mbedtls_aes_self_test(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 16 uses
  %i.c = alloca [64 x i8], align 16               ; 48 uses
  %i.d = alloca [16 x i8], align 16               ; 24 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 3 uses
  %1 = alloca %struct.mbedtls_aes_context, align 8 ; 26 uses
  %i.i = alloca [16 x i8], align 16               ; 4 uses
  %2 = alloca %struct.mbedtls_aes_xts_context, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %1, i8 0, i64 288, i1 false)
  %i.j = icmp ne i32 %0, 0                        ; 19 uses
  br i1 %i.j, label %.sink.split, label %.backedge446.preheader

.sink.split:                                      ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.k = tail call i32 @mbedtls_aesni_has_support(i32 noundef 33554432) #10
  %.not = icmp eq i32 %i.k, 0
  %str.1.str.2 = select i1 %.not, ptr @str.1, ptr @str.2
  %puts198 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str.2) ; 0 uses
  br label %.backedge446.preheader

.backedge446.preheader:                           ; preds = %.sink.split, %bb.a
  br label %.backedge446

.backedge446:                                     ; preds = %.backedge446.backedge, %.backedge446.preheader
  %.0157325 = phi i32 [ 0, %.backedge446.preheader ], [ %.0157325.be, %.backedge446.backedge ] ; 5 uses
  %i.l = lshr i32 %.0157325, 1                    ; 2 uses
  %i.m = shl nuw nsw i32 %i.l, 6
  %i.n = add nuw nsw i32 %i.m, 128                ; 4 uses
  %i.o = and i32 %.0157325, 1                     ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge446
  %i.p = icmp eq i32 %i.o, 0
  %i.q = select i1 %i.p, ptr @.str.4, ptr @.str.5
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.n, ptr noundef nonnull %i.q) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.backedge446
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.s = icmp eq i32 %i.o, 0                      ; 2 uses
  %i.t = zext nneg i32 %i.l to i64
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = call i32 @mbedtls_aes_setkey_dec(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef %i.n)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = call i32 @mbedtls_aes_setkey_enc(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i32 noundef %i.n)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %aes_test_ecb_enc.sink = phi ptr [ @aes_test_ecb_enc, %bb.e ], [ @aes_test_ecb_dec, %bb.d ]
  %.1164 = phi i32 [ %i.v, %bb.e ], [ %i.u, %bb.d ] ; 3 uses
end_hunk_1
