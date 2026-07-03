inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@mbedtls_aes_setkey_enc:bb.a
  %.sink = phi i32 [ 14, %bb.c ], [ 12, %bb.b ], [ 10, %bb.a ] ; 2 uses
  store i32 %.sink, ptr %0, align 8, !tbaa !7
  %.b = load i1, ptr @_ZL13aes_init_done, align 4
  br i1 %.b, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i.1, %bb.f ] ; 4 uses
  %.07996.i = phi i8 [ 1, %bb.e ], [ %i.t, %bb.f ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %.07996.i, ptr %i.e, align 2, !tbaa !10
  %i.f = trunc i64 %indvars.iv.i to i8
  %i.g = zext i8 %.07996.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.g
  store i8 %i.f, ptr %i.h, align 1, !tbaa !10
  %i.i = shl i8 %.07996.i, 1
  %.not86.inv.i = icmp slt i8 %.07996.i, 0
  %i.j = select i1 %.not86.inv.i, i8 27, i8 0
  %i.k = xor i8 %i.i, %i.j
  %i.l = xor i8 %i.k, %.07996.i                   ; 5 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i
  store i8 %i.l, ptr %i.m, align 1, !tbaa !10
  %i.n = trunc i64 %indvars.iv.next.i to i8
  %i.o = zext i8 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.o
  store i8 %i.n, ptr %i.p, align 1, !tbaa !10
  %i.q = shl i8 %i.l, 1
  %.not86.inv.i.1 = icmp slt i8 %i.l, 0
  %i.r = select i1 %.not86.inv.i.1, i8 27, i8 0
  %i.s = xor i8 %i.q, %i.r
  %i.t = xor i8 %i.s, %i.l
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.preheader95.preheader.i, label %bb.f, !llvm.loop !11

.preheader95.preheader.i:                         ; preds = %bb.f
  store <4 x i32> <i32 1, i32 2, i32 4, i32 8>, ptr @_ZL15round_constants, align 16, !tbaa !3
  store <4 x i32> <i32 16, i32 32, i32 64, i32 128>, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 16), align 16, !tbaa !3
  store i32 27, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 32), align 16, !tbaa !3
  store i32 54, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 36), align 4, !tbaa !3
  store i8 99, ptr @_ZL3FSb, align 16, !tbaa !10
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL3RSb, i64 99), align 1, !tbaa !10
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

bb.g:                                             ; preds = %bb.g, %.preheader95.preheader.i
  %indvars.iv106.i = phi i64 [ 1, %.preheader95.preheader.i ], [ %indvars.iv.next107.i, %bb.g ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv106.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ai = xor i8 %i.ah, -1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !10  ; 9 uses
  %i.am = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 1)
  %i.an = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 2)
  %i.ao = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 3)
  %i.ap = tail call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.al, i8 4)
  %i.aq = xor i8 %i.am, %i.an
  %i.ar = xor i8 %i.aq, %i.ao
  %i.as = xor i8 %i.ar, %i.ap
  %i.at = xor i8 %i.as, %i.al
  %i.au = xor i8 %i.at, 99                        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %indvars.iv106.i
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10
  %i.aw = trunc i64 %indvars.iv106.i to i8
  %i.ax = zext i8 %i.au to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.ax
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !10
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 256
  br i1 %exitcond109.not.i, label %.preheader.i, label %bb.g, !llvm.loop !13

bb.h:                                             ; preds = %.thread88.i, %.preheader.i
  %indvars.iv110.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next111.i, %.thread88.i ] ; 11 uses
  %i.az = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %indvars.iv110.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !10  ; 4 uses
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
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT0, i64 %indvars.iv110.i
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !3
  %i.bp = shl nuw i32 %i.bk, 8
  %i.bq = or disjoint i32 %i.bp, %i.bl            ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT1, i64 %indvars.iv110.i
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !3
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 8)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT2, i64 %indvars.iv110.i
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 16)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @_ZL3FT3, i64 %indvars.iv110.i
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  %i.bw = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %indvars.iv110.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !10  ; 2 uses
  %.not.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i, label %.thread88.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !10
  %i.cb = zext i8 %i.ca to i16                    ; 4 uses
  %.lhs.trunc.i = add nuw nsw i16 %i.cb, %i.w
  %i.cc = urem i16 %.lhs.trunc.i, 255
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !10
  %i.cg = zext i8 %i.cf to i32
  %.lhs.trunc89.i = add nuw nsw i16 %i.cb, %i.z
  %i.ch = urem i16 %.lhs.trunc89.i, 255
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !10
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = or disjoint i32 %i.cm, %i.cg
  %.lhs.trunc91.i = add nuw nsw i16 %i.cb, %i.ac
  %i.co = urem i16 %.lhs.trunc91.i, 255
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !10
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 16
  %i.cu = or disjoint i32 %i.cn, %i.ct
  %.lhs.trunc93.i = add nuw nsw i16 %i.cb, %i.af
  %i.cv = urem i16 %.lhs.trunc93.i, 255
  %i.cw = zext nneg i16 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !10
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw i32 %i.cz, 24
  %i.db = or disjoint i32 %i.cu, %i.da
  br label %.thread88.i

.thread88.i:                                      ; preds = %bb.i, %bb.h
  %i.dc = phi i32 [ %i.db, %bb.i ], [ 0, %bb.h ]  ; 7 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT0, i64 %indvars.iv110.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 8)
  %i.df = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT1, i64 %indvars.iv110.i
  store i32 %i.de, ptr %i.df, align 4, !tbaa !3
  %i.dg = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 16)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT2, i64 %indvars.iv110.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !3
  %i.di = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 24)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr @_ZL3RT3, i64 %indvars.iv110.i
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !3
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next111.i, 256
  br i1 %exitcond113.not.i, label %_ZL14aes_gen_tablesv.exit, label %bb.h, !llvm.loop !14

_ZL14aes_gen_tablesv.exit:                        ; preds = %.thread88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  store i1 true, ptr @_ZL13aes_init_done, align 4
  br label %bb.j

bb.j:                                             ; preds = %_ZL14aes_gen_tablesv.exit, %bb.d
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !15
  %i.dm = lshr i32 %2, 5                          ; 2 uses
  %.not = icmp eq i32 %i.dm, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %i.dm to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 256
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %3 = add i64 %i.b, 16
  %4 = sub i64 %3, %i.a
  %diff.check = icmp ult i64 %4, 32
  br i1 %diff.check, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 134217720    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dn = shl nuw nsw i64 %index, 2
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <4 x i32>, ptr %i.do, align 1
  %wide.load129 = load <4 x i32>, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <4 x i32> %wide.load, ptr %i.dq, align 4, !tbaa !3
  store <4 x i32> %wide.load129, ptr %i.dr, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader130

.lr.ph.preheader130:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader130, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader130 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader130 ]
  %i.dt = shl nuw nsw i64 %indvars.iv.prol, 2
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %i.dt
  %.0.copyload.i.prol = load i32, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.prol
  store i32 %.0.copyload.i.prol, ptr %i.dv, align 4, !tbaa !3
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !19

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader130
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader130 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dw = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.j
  %i.dy = load i32, ptr %i.dk, align 8, !tbaa !3  ; 3 uses
  switch i32 %.sink, label %._crit_edge.unreachabledefault [
    i32 10, label %.preheader.preheader
    i32 12, label %.preheader99.preheader
    i32 14, label %.preheader101
  ]

.preheader99.preheader:                           ; preds = %._crit_edge
  %i.dz = load i32, ptr @_ZL15round_constants, align 16, !tbaa !3
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3  ; 6 uses
  %i.ec = lshr i32 %i.eb, 8
  %i.ed = and i32 %i.ec, 255
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !10
  %i.eh = zext i8 %i.eg to i32
  %i.ei = xor i32 %i.dz, %i.eh
  %i.ej = lshr i32 %i.eb, 16
  %i.ek = and i32 %i.ej, 255
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !10
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 8
  %i.eq = xor i32 %i.ei, %i.ep
  %i.er = lshr i32 %i.eb, 24
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !10
  %i.ev = zext i8 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 16
  %i.ex = xor i32 %i.eq, %i.ew
  %i.ey = and i32 %i.eb, 255
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !10
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw i32 %i.fc, 24
  %i.fe = xor i32 %i.ex, %i.fd
  %i.ff = xor i32 %i.fe, %i.dy                    ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !3
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3  ; 2 uses
  %i.fj = xor i32 %i.ff, %i.fi                    ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !3
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !3
  %i.fn = xor i32 %i.fm, %i.fj                    ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !3
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3  ; 3 uses
  %i.fr = xor i32 %i.fq, %i.fn                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !3
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !3
  %i.fv = xor i32 %i.fu, %i.fr                    ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !3
  %i.fx = xor i32 %i.fv, %i.eb                    ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !3
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 4), align 4, !tbaa !3
  %i.ga = lshr i32 %i.fx, 8
  %i.gb = and i32 %i.ga, 255
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !10
  %i.gf = zext i8 %i.ge to i32
  %i.gg = xor i32 %i.fz, %i.gf
  %i.gh = lshr i32 %i.fx, 16
  %i.gi = and i32 %i.gh, 255
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !10
  %i.gm = zext i8 %i.gl to i32
  %i.gn = shl nuw nsw i32 %i.gm, 8
  %i.go = xor i32 %i.gg, %i.gn
  %i.gp = lshr i32 %i.fx, 24
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !10
  %i.gt = zext i8 %i.gs to i32
  %i.gu = shl nuw nsw i32 %i.gt, 16
  %i.gv = xor i32 %i.go, %i.gu
  %i.gw = and i32 %i.fx, 255
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !10
  %i.ha = zext i8 %i.gz to i32
  %i.hb = shl nuw i32 %i.ha, 24
  %i.hc = xor i32 %i.gv, %i.hb                    ; 2 uses
  %i.hd = xor i32 %i.hc, %i.ff                    ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.hd, ptr %i.he, align 8, !tbaa !3
  %i.hf = xor i32 %i.hc, %i.fi                    ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !3
  %i.hh = xor i32 %i.fn, %i.hf
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.hh, ptr %i.hi, align 8, !tbaa !3
  %i.hj = xor i32 %i.fq, %i.hf                    ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !3
  %i.hl = xor i32 %i.fv, %i.hj
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.hl, ptr %i.hm, align 8, !tbaa !3
  %i.hn = xor i32 %i.hj, %i.eb                    ; 8 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !3
  %i.hp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL15round_constants, i64 8), align 8, !tbaa !3
  %i.hq = lshr i32 %i.hn, 8
  %i.hr = and i32 %i.hq, 255
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !10
  %i.hv = zext i8 %i.hu to i32
  %i.hw = xor i32 %i.hp, %i.hv
  %i.hx = lshr i32 %i.hn, 16
  %i.hy = and i32 %i.hx, 255
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !10
  %i.ic = zext i8 %i.ib to i32
  %i.id = shl nuw nsw i32 %i.ic, 8
  %i.ie = xor i32 %i.hw, %i.id
  %i.if = lshr i32 %i.hn, 24
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !10
  %i.ij = zext i8 %i.ii to i32
  %i.ik = shl nuw nsw i32 %i.ij, 16
  %i.il = xor i32 %i.ie, %i.ik
  %i.im = and i32 %i.hn, 255
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr @_ZL3FSb, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !10
  %i.iq = zext i8 %i.ip to i32
  %i.ir = shl nuw i32 %i.iq, 24
  %i.is = xor i32 %i.il, %i.ir
  %i.it = xor i32 %i.is, %i.hd                    ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.it, ptr %i.iu, align 8, !tbaa !3
  %i.iv = xor i32 %i.it, %i.hf
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 92
end_hunk_0
begin_hunk_1_@mbedtls_internal_aes_decrypt:bb.a
  %i.nr = zext i8 %i.nq to i32
  %i.ns = shl nuw i32 %i.nr, 24
  %i.nt = xor i32 %i.nm, %i.ns                    ; 2 uses
  store i32 %i.nt, ptr %i.hn, align 4, !tbaa !3
  %i.nu = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 28
  %i.nv = load i32, ptr %i.mp, align 4, !tbaa !3
  %i.nw = and i32 %i.kj, 255
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !10
  %i.oa = zext i8 %i.nz to i32
  %i.ob = xor i32 %i.nv, %i.oa
  %i.oc = lshr i32 %i.jk, 8
  %i.od = and i32 %i.oc, 255
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !10
  %i.oh = zext i8 %i.og to i32
  %i.oi = shl nuw nsw i32 %i.oh, 8
  %i.oj = xor i32 %i.ob, %i.oi
  %i.ok = lshr i32 %i.il, 16
  %i.ol = and i32 %i.ok, 255
  %i.om = zext nneg i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !10
  %i.op = zext i8 %i.oo to i32
  %i.oq = shl nuw nsw i32 %i.op, 16
  %i.or = xor i32 %i.oj, %i.oq
  %i.os = lshr i32 %i.li, 24
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !10
  %i.ow = zext i8 %i.ov to i32
  %i.ox = shl nuw i32 %i.ow, 24
  %i.oy = xor i32 %i.or, %i.ox                    ; 2 uses
  store i32 %i.oy, ptr %i.hm, align 4, !tbaa !3
  %i.oz = load i32, ptr %i.nu, align 4, !tbaa !3
  %i.pa = and i32 %i.li, 255
  %i.pb = zext nneg i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !10
  %i.pe = zext i8 %i.pd to i32
  %i.pf = xor i32 %i.oz, %i.pe
  %i.pg = lshr i32 %i.kj, 8
  %i.ph = and i32 %i.pg, 255
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.pi
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !10
  %i.pl = zext i8 %i.pk to i32
  %i.pm = shl nuw nsw i32 %i.pl, 8
  %i.pn = xor i32 %i.pf, %i.pm
  %i.po = lshr i32 %i.jk, 16
  %i.pp = and i32 %i.po, 255
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.pq
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !10
  %i.pt = zext i8 %i.ps to i32
  %i.pu = shl nuw nsw i32 %i.pt, 16
  %i.pv = xor i32 %i.pn, %i.pu
  %i.pw = lshr i32 %i.il, 24
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw i8, ptr @_ZL3RSb, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !10
  %i.qa = zext i8 %i.pz to i32
  %i.qb = shl nuw i32 %i.qa, 24
  %i.qc = xor i32 %i.pv, %i.qb                    ; 2 uses
  store i32 %i.qc, ptr %i.hl, align 4, !tbaa !3
  store i32 %i.mo, ptr %2, align 1
  %i.qd = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.nt, ptr %i.qd, align 1
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.oy, ptr %i.qe, align 1
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.qc, ptr %i.qf, align 1
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %3, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -33, 1) i32 @mbedtls_aes_crypt_ecb(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @mbedtls_internal_aes_decrypt(ptr noundef %0, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef %0, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.c ], [ -33, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -34, 1) i32 @mbedtls_aes_crypt_cbc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i64 %2, 15
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %mbedtls_aes_crypt_ecb.exit.preheader, label %._crit_edge

mbedtls_aes_crypt_ecb.exit.preheader:             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53

_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53:         ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53, %mbedtls_aes_crypt_ecb.exit.preheader
  %.03876 = phi ptr [ %i.k, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53 ], [ %5, %mbedtls_aes_crypt_ecb.exit.preheader ] ; 5 uses
  %.03975 = phi ptr [ %i.j, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53 ], [ %4, %mbedtls_aes_crypt_ecb.exit.preheader ] ; 3 uses
  %.04274 = phi i64 [ %i.l, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53 ], [ %2, %mbedtls_aes_crypt_ecb.exit.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %.03975, i64 16, i1 false)
  %i.f = tail call i32 @mbedtls_internal_aes_decrypt(ptr noundef readonly %0, ptr noundef nonnull readonly %.03975, ptr noundef %.03876) ; 0 uses
  %.0.copyload.i54 = load i64, ptr %.03876, align 1
  %.0.copyload.i = load i64, ptr %3, align 1
  %i.g = xor i64 %.0.copyload.i, %.0.copyload.i54
  store i64 %i.g, ptr %.03876, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.03876, i64 8 ; 2 uses
  %.0.copyload.i54.1 = load i64, ptr %i.h, align 1
  %.0.copyload.i.1 = load i64, ptr %i.e, align 1
  %i.i = xor i64 %.0.copyload.i.1, %.0.copyload.i54.1
  store i64 %i.i, ptr %i.h, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.03975, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.03876, i64 16
  %i.l = add i64 %.04274, -16                     ; 2 uses
  %.not49 = icmp eq i64 %i.l, 0
  br i1 %.not49, label %.loopexit, label %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.d, %._crit_edge
  %.070 = phi ptr [ %.169, %._crit_edge ], [ %3, %bb.d ] ; 2 uses
  %.169 = phi ptr [ %i.t, %._crit_edge ], [ %5, %bb.d ] ; 7 uses
  %.14068 = phi ptr [ %i.s, %._crit_edge ], [ %4, %bb.d ] ; 3 uses
  %.14367 = phi i64 [ %i.u, %._crit_edge ], [ %2, %bb.d ]
  %.0.copyload.i56 = load i64, ptr %.14068, align 1
  %.0.copyload.i55 = load i64, ptr %.070, align 1
  %i.m = xor i64 %.0.copyload.i55, %.0.copyload.i56
  store i64 %i.m, ptr %.169, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.14068, i64 8
  %.0.copyload.i56.1 = load i64, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.070, i64 8
  %.0.copyload.i55.1 = load i64, ptr %i.o, align 1
  %i.p = xor i64 %.0.copyload.i55.1, %.0.copyload.i56.1
  %i.q = getelementptr inbounds nuw i8, ptr %.169, i64 8
  store i64 %i.p, ptr %i.q, align 1
  %i.r = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef readonly %0, ptr noundef nonnull readonly %.169, ptr noundef nonnull %.169) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.14068, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.169, i64 16
  %i.u = add i64 %.14367, -16                     ; 2 uses
  %.not47 = icmp eq i64 %i.u, 0
  br i1 %.not47, label %bb.e, label %._crit_edge, !llvm.loop !27

bb.e:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) %.169, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53, %bb.e, %bb.c, %bb.b, %bb.a
  %.041 = phi i32 [ -34, %bb.c ], [ -33, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %_ZL19mbedtls_xor_no_simdPhPKhS1_m.exit53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.041
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define hidden range(i32 -33, 1) i32 @mbedtls_aes_crypt_ctr(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %5 to i64
  %i.c = ptrtoaddr ptr %6 to i64                  ; 2 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !28     ; 3 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.g, label %.preheader49

.preheader49:                                     ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge57, label %.lr.ph56.preheader

.lr.ph56.preheader:                               ; preds = %.preheader49
  %7 = sub i64 %i.c, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %diff.check = icmp ult i64 %7, 32
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %._crit_edge
  %.03255 = phi i64 [ %i.ch, %._crit_edge ], [ 0, %.lr.ph56.preheader ] ; 5 uses
  %.03654 = phi i64 [ 0, %._crit_edge ], [ %i.d, %.lr.ph56.preheader ] ; 4 uses
  %i.i = icmp eq i64 %.03654, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph56
  %i.j = tail call i32 @mbedtls_internal_aes_encrypt(ptr noundef readonly %0, ptr noundef readonly %3, ptr noundef %4) ; 0 uses
  %.0.copyload.i.i = load i32, ptr %i.f, align 1
  %i.k = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.l = add i32 %i.k, 1                          ; 2 uses
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.m, ptr %i.f, align 1
  %i.n = icmp eq i32 %i.l, 0
  br i1 %i.n, label %bb.c, label %_ZL29mbedtls_ctr_increment_counterPh.exit

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.1 = load i32, ptr %i.g, align 1
  %i.o = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1)
  %i.p = add i32 %i.o, 1                          ; 2 uses
  %i.q = tail call i32 @llvm.bswap.i32(i32 %i.p)
  store i32 %i.q, ptr %i.g, align 1
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %bb.d, label %_ZL29mbedtls_ctr_increment_counterPh.exit

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.2 = load i32, ptr %i.h, align 1
  %i.s = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.2)
  %i.t = add i32 %i.s, 1                          ; 2 uses
  %i.u = tail call i32 @llvm.bswap.i32(i32 %i.t)
  store i32 %i.u, ptr %i.h, align 1
  %i.v = icmp eq i32 %i.t, 0
  br i1 %i.v, label %bb.e, label %_ZL29mbedtls_ctr_increment_counterPh.exit

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.3 = load i32, ptr %3, align 1
  %i.w = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.3)
  %i.x = add i32 %i.w, 1
  %i.y = tail call i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.y, ptr %3, align 1
  br label %_ZL29mbedtls_ctr_increment_counterPh.exit

bb.f:                                             ; preds = %.lr.ph56
  %i.z = sub nuw nsw i64 16, %.03654
  br label %_ZL29mbedtls_ctr_increment_counterPh.exit

_ZL29mbedtls_ctr_increment_counterPh.exit:        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0 = phi i64 [ %i.z, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ], [ 16, %bb.b ]
  %i.aa = sub i64 %1, %.03255
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.0, i64 %i.aa) ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 %.03255 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 %.03255 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 %.03654 ; 8 uses
  %.not.i50 = icmp samesign ult i64 %spec.select, 8
  br i1 %.not.i50, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.1, %_ZL29mbedtls_ctr_increment_counterPh.exit
  %.0.i.lcssa = phi i64 [ 0, %_ZL29mbedtls_ctr_increment_counterPh.exit ], [ 8, %.lr.ph ], [ 16, %.lr.ph.1 ] ; 6 uses
  %i.ae = icmp samesign ult i64 %.0.i.lcssa, %spec.select
  br i1 %i.ae, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.af = sub nuw nsw i64 %spec.select, %.0.i.lcssa ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 8
  br i1 %min.iters.check, label %.lr.ph53.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ag = add i64 %.03255, %i.c
  %i.ah = add i64 %.03654, %i.a
  %i.ai = sub i64 %i.ag, %i.ah
  %diff.check61 = icmp ult i64 %i.ai, 32
  %conflict.rdx = or i1 %diff.check, %diff.check61
  br i1 %conflict.rdx, label %.lr.ph53.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %vector.memcheck
  %n.mod.vf66 = and i64 %spec.select, 7           ; 2 uses
  %n.vec67 = sub nsw i64 %i.af, %n.mod.vf66       ; 2 uses
  %i.aj = add i64 %.0.i.lcssa, %n.vec67
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next71, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = add i64 %.0.i.lcssa, %index68           ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ak
  %wide.load69 = load <8 x i8>, ptr %i.al, align 1, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ak
  %wide.load70 = load <8 x i8>, ptr %i.am, align 1, !tbaa !10
  %i.an = xor <8 x i8> %wide.load70, %wide.load69
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ak
  store <8 x i8> %i.an, ptr %i.ao, align 1, !tbaa !10
  %index.next71 = add nuw i64 %index68, 8         ; 2 uses
  %i.ap = icmp eq i64 %index.next71, %n.vec67
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n72 = icmp eq i64 %n.mod.vf66, 0
  br i1 %cmp.n72, label %._crit_edge, label %.lr.ph53.preheader

.lr.ph53.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.middle.block
  %.1.i52.ph = phi i64 [ %.0.i.lcssa, %vector.memcheck ], [ %.0.i.lcssa, %iter.check ], [ %i.aj, %vec.epilog.middle.block ] ; 4 uses
  %i.aq = sub i64 %spec.select, %.1.i52.ph
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph53.prol.loopexit, label %.lr.ph53.prol

.lr.ph53.prol:                                    ; preds = %.lr.ph53.preheader, %.lr.ph53.prol
  %.1.i52.prol = phi i64 [ %i.ax, %.lr.ph53.prol ], [ %.1.i52.ph, %.lr.ph53.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph53.prol ], [ 0, %.lr.ph53.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i52.prol
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.1.i52.prol
  %i.au = load i8, ptr %i.at, align 1, !tbaa !10
  %i.av = xor i8 %i.au, %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.1.i52.prol
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !10
  %i.ax = add nuw nsw i64 %.1.i52.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph53.prol.loopexit, label %.lr.ph53.prol, !llvm.loop !30

.lr.ph53.prol.loopexit:                           ; preds = %.lr.ph53.prol, %.lr.ph53.preheader
  %.1.i52.unr = phi i64 [ %.1.i52.ph, %.lr.ph53.preheader ], [ %i.ax, %.lr.ph53.prol ]
  %i.ay = sub i64 %.1.i52.ph, %spec.select
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge, label %.lr.ph53

.lr.ph:                                           ; preds = %_ZL29mbedtls_ctr_increment_counterPh.exit
  %.0.copyload.i47 = load i64, ptr %i.ac, align 1
  %.0.copyload.i = load i64, ptr %i.ad, align 1
  %i.ba = xor i64 %.0.copyload.i, %.0.copyload.i47
  store i64 %i.ba, ptr %i.ab, align 1
  %.not.i = icmp samesign ult i64 %spec.select, 16
  br i1 %.not.i, label %.preheader, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i47.1 = load i64, ptr %i.bb, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.bc, align 1
  %i.bd = xor i64 %.0.copyload.i.1, %.0.copyload.i47.1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.bd, ptr %i.be, align 1
  br label %.preheader

.lr.ph53:                                         ; preds = %.lr.ph53.prol.loopexit, %.lr.ph53
  %.1.i52 = phi i64 [ %i.cg, %.lr.ph53 ], [ %.1.i52.unr, %.lr.ph53.prol.loopexit ] ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.1.i52
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.1.i52
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !10
  %i.bj = xor i8 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.1.i52
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !10
  %i.bl = add nuw nsw i64 %.1.i52, 1              ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bl
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !10
  %i.bq = xor i8 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bl
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !10
  %i.bs = add nuw nsw i64 %.1.i52, 2              ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !10
  %i.bx = xor i8 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bs
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !10
  %i.bz = add nuw nsw i64 %.1.i52, 3              ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10
  %i.ce = xor i8 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bz
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !10
  %i.cg = add nuw nsw i64 %.1.i52, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cg, %spec.select
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph53, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph53.prol.loopexit, %.lr.ph53, %vec.epilog.middle.block, %.preheader
  %i.ch = add i64 %spec.select, %.03255           ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %1
  br i1 %i.ci, label %.lr.ph56, label %._crit_edge57.loopexit, !llvm.loop !32

._crit_edge57.loopexit:                           ; preds = %._crit_edge
  %.pre = load i64, ptr %2, align 8, !tbaa !28
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %.preheader49
  %i.cj = phi i64 [ %.pre, %._crit_edge57.loopexit ], [ %i.d, %.preheader49 ]
  %i.ck = add i64 %i.cj, %1
  %i.cl = and i64 %i.ck, 15
  store i64 %i.cl, ptr %2, align 8, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge57, %bb.a
  %.040 = phi i32 [ -33, %bb.a ], [ 0, %._crit_edge57 ]
  ret i32 %.040
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTS19mbedtls_aes_context", !4, i64 0, !9, i64 8, !5, i64 16}
!9 = !{!"long", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = !{!8, !9, i64 8}
!16 = distinct !{!16, !12, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !12, !17}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = !{!9, !9, i64 0}
!29 = distinct !{!29, !12, !17, !18}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !12, !17}
!32 = distinct !{!32, !12}
end_hunk_1
