Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/argo?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@decode_frame:bb.a
  unreachable

bytestream2_init.exit:                            ; preds = %bb.b
  store ptr %i.i, ptr %i.b, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !49
  %i.k = zext nneg i32 %i.f to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !50
  %i.n = tail call i32 @ff_reget_buffer(ptr noundef nonnull %0, ptr noundef %i.d, i32 noundef 0) #9 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %decode_pal8.exit, label %bb.d

bb.d:                                             ; preds = %bytestream2_init.exit
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !48   ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp slt i64 %i.t, 4
  br i1 %i.u, label %bytestream2_get_be32.exit.thread, label %bytestream2_get_be32.exit

bytestream2_get_be32.exit.thread:                 ; preds = %bb.d
  store ptr %i.p, ptr %i.b, align 8, !tbaa !48
  br label %.thread387

bytestream2_get_be32.exit:                        ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store ptr %i.v, ptr %i.b, align 8, !tbaa !51
  %i.w = load i32, ptr %i.q, align 1, !tbaa !52
  %i.x = tail call i32 @llvm.bswap.i32(i32 %i.w)  ; 2 uses
  switch i32 %i.x, label %.thread387 [
    i32 1346456632, label %.preheader
    i32 1296122929, label %bb.m
    i32 1096172358, label %bb.gv
    i32 1095516996, label %bb.gy
    i32 1380730182, label %bb.hh
    i32 1380730180, label %bb.hr
  ]

.preheader:                                       ; preds = %bytestream2_get_be32.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 108 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !53
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !34
  %i.ag = icmp eq i32 %i.af, 11
  br i1 %i.ag, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.0242 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !38
  %i.aj = mul nsw i32 %i.ai, %.0242
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !58
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !30
  %i.ao = mul nsw i32 %i.an, %i.am
  %i.ap = sext i32 %i.ao to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 0, i64 %i.ap, i1 false)
  %i.aq = add nuw nsw i32 %.0242, 1               ; 2 uses
  %i.ar = load i32, ptr %i.y, align 4, !tbaa !53
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.e, label %._crit_edge, !llvm.loop !59

bb.f:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.au, i8 0, i64 1024, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1184
  %.val = load ptr, ptr %i.a, align 8, !tbaa !9   ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50 ; 4 uses
  %i.ay = load ptr, ptr %.val, align 8, !tbaa !48 ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64               ; 4 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp slt i64 %i.bb, 2
  br i1 %i.bc, label %bytestream2_get_le16.exit17.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 2 ; 3 uses
  store ptr %i.bd, ptr %.val, align 8, !tbaa !51
  %i.be = load i16, ptr %i.ay, align 1, !tbaa !52
  %i.bf = zext i16 %i.be to i32
  %.pre.i = ptrtoint ptr %i.bd to i64
  br label %bytestream2_get_le16.exit17.i

bytestream2_get_le16.exit17.i:                    ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.h ], [ %i.az, %bb.g ]
  %i.bg = phi ptr [ %i.bd, %bb.h ], [ %i.ax, %bb.g ] ; 2 uses
  %.0.i16.i = phi i32 [ %i.bf, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.bh = sub i64 %i.az, %.pre-phi.i
  %i.bi = icmp slt i64 %i.bh, 2
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bytestream2_get_le16.exit17.i
  store ptr %i.ax, ptr %.val, align 8, !tbaa !48
  br label %bytestream2_get_le16.exit.i

bb.j:                                             ; preds = %bytestream2_get_le16.exit17.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 2 ; 2 uses
  store ptr %i.bj, ptr %.val, align 8, !tbaa !51
  %i.bk = load i16, ptr %i.bg, align 1, !tbaa !52
  %i.bl = zext i16 %i.bk to i32
  br label %bytestream2_get_le16.exit.i

bytestream2_get_le16.exit.i:                      ; preds = %bb.j, %bb.i
  %.32.val.promoted.i = phi ptr [ %i.ax, %bb.i ], [ %i.bj, %bb.j ] ; 3 uses
  %.0.i.i = phi i32 [ 0, %bb.i ], [ %i.bl, %bb.j ] ; 6 uses
  %i.bm = add nuw nsw i32 %.0.i.i, %.0.i16.i
  %i.bn = icmp samesign ugt i32 %i.bm, 256
  br i1 %i.bn, label %decode_pal8.exit, label %bb.k

bb.k:                                             ; preds = %bytestream2_get_le16.exit.i
  %i.bo = ptrtoint ptr %.32.val.promoted.i to i64
  %i.bp = sub i64 %i.az, %i.bo
  %i.bq = trunc i64 %i.bp to i32
  %i.br = mul nuw nsw i32 %.0.i.i, 3
  %i.bs = icmp sgt i32 %i.br, %i.bq
  br i1 %i.bs, label %decode_pal8.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %.not.i73 = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i73, label %decode_pal8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bt = zext nneg i32 %.0.i16.i to i64
  %wide.trip.count.i = zext nneg i32 %.0.i.i to i64 ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bt ; 3 uses
  %xtraiter702 = and i64 %wide.trip.count.i, 1
  %i.bu = icmp eq i32 %.0.i.i, 1
  br i1 %i.bu, label %.epil.preheader701, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter708 = and i64 %wide.trip.count.i, 510
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %i.bv = phi ptr [ %.32.val.promoted.i, %.lr.ph.i.new ], [ %i.ck, %bb.l ] ; 7 uses
  %niter709 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter709.next.1, %bb.l ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 3 ; 2 uses
  store ptr %i.bw, ptr %.val, align 8, !tbaa !51
  %i.bx = load i8, ptr %i.bv, align 1, !tbaa !52
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !52
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !52
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.bz, %i.cd
  %i.ci = or disjoint i32 %i.ch, %i.cg
  %i.cj = or disjoint i32 %i.ci, -16777216
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.cj, ptr %gep.i, align 4, !tbaa !38
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 6 ; 3 uses
  store ptr %i.ck, ptr %.val, align 8, !tbaa !51
  %i.cl = load i8, ptr %i.bw, align 1, !tbaa !52
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !52
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 5
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !52
  %i.cu = zext i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cn, %i.cr
  %i.cw = or disjoint i32 %i.cv, %i.cu
  %i.cx = or disjoint i32 %i.cw, -16777216
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cx, ptr %gep.i.1, align 4, !tbaa !38
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter709.next.1 = add i64 %niter709, 2         ; 2 uses
  %niter709.ncmp.1 = icmp eq i64 %niter709.next.1, %unroll_iter708
  br i1 %niter709.ncmp.1, label %decode_pal8.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !60

bb.m:                                             ; preds = %bytestream2_get_be32.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !34
  %i.db = icmp eq i32 %i.da, 11
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !9   ; 99 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !58 ; 31 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !53 ; 31 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !38 ; 12 uses
  br i1 %i.db, label %bb.n, label %bb.cr

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 11 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !50 ; 2 uses
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !48 ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 2 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph520.i, label %decode_mad1.exit

.lr.ph520.i:                                      ; preds = %bb.n
  %i.dr = sext i32 %i.di to i64                   ; 35 uses
  %i.ds = xor i32 %i.di, -1
  %i.dt = add i32 %i.de, %i.ds
  %i.du = sext i32 %i.dt to i64                   ; 4 uses
  %i.dv = icmp slt i32 %i.dg, 1
  %i.dw = icmp slt i32 %i.de, 1
  %i.dx = shl nsw i32 %i.di, 1
  %i.dy = sext i32 %i.dx to i64
  %i.dz = mul nsw i32 %i.dg, %i.de
  %i.ea = icmp sgt i32 %i.dg, 0
  %i.eb = zext i32 %i.de to i64                   ; 6 uses
  %i.ec = sub nsw i64 0, %i.dr                    ; 18 uses
  %i.ed = shl nsw i32 %i.di, 3
  %i.ee = sext i32 %i.ed to i64
  %i.ef = sext i32 %i.de to i64                   ; 2 uses
  %i.eg = add i32 %i.dg, 64                       ; 2 uses
  %brmerge528.i = select i1 %i.dv, i1 true, i1 %i.dw ; 2 uses
  %xtraiter681 = and i32 %i.dg, 1
  %i.eh = icmp eq i32 %i.dg, 1
  %unroll_iter685 = and i32 %i.dg, 2147483646
  %lcmp.mod683.not = icmp eq i32 %xtraiter681, 0
  %lcmp.mod684 = trunc i32 %i.dg to i1
  br label %bb.o

bb.o:                                             ; preds = %.loopexit432.i, %.lr.ph520.i
  %i.ei = phi i64 [ %i.do, %.lr.ph520.i ], [ %i.te, %.loopexit432.i ]
  %i.ej = phi ptr [ %i.dl, %.lr.ph520.i ], [ %i.tb, %.loopexit432.i ] ; 5 uses
  %i.ek = phi ptr [ %i.dk, %.lr.ph520.i ], [ %i.ta, %.loopexit432.i ] ; 12 uses
  %i.el = icmp slt i64 %i.ei, 1
  br i1 %i.el, label %.thread.i, label %bytestream2_get_byte.exit376.i

.thread.i:                                        ; preds = %bb.o
  store ptr %i.ek, ptr %i.dc, align 8, !tbaa !48
  br label %decode_pal8.exit

bytestream2_get_byte.exit376.i:                   ; preds = %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1 ; 10 uses
  store ptr %i.em, ptr %i.dc, align 8, !tbaa !51
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !52
  switch i8 %i.en, label %decode_pal8.exit [
    i8 -1, label %decode_mad1.exit
    i8 8, label %bb.p
    i8 7, label %.preheader433.i
    i8 6, label %bb.ak
    i8 5, label %bb.al
    i8 3, label %bb.ap
    i8 2, label %bb.aw
  ]

.preheader433.i:                                  ; preds = %bytestream2_get_byte.exit376.i
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %.lr.ph511.i, label %.loopexit432.i

bb.p:                                             ; preds = %bytestream2_get_byte.exit376.i
  br i1 %brmerge528.i, label %.loopexit432.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.p
  %i.et = load ptr, ptr %i.d, align 8, !tbaa !51
  br label %.preheader.i82

.preheader.i82:                                   ; preds = %._crit_edge516.i, %.preheader.preheader.i
  %.0267518.i = phi i32 [ %i.ev, %._crit_edge516.i ], [ 0, %.preheader.preheader.i ]
  %.0270517.i = phi ptr [ %i.eu, %._crit_edge516.i ], [ %i.et, %.preheader.preheader.i ] ; 2 uses
  br label %bb.q

._crit_edge516.i:                                 ; preds = %bytestream2_get_byte.exit374.i
  %i.eu = getelementptr inbounds i8, ptr %.0270517.i, i64 %i.ee
  %i.ev = add nuw nsw i32 %.0267518.i, 8          ; 2 uses
  %i.ew = icmp slt i32 %i.ev, %i.dg
  br i1 %i.ew, label %.preheader.i82, label %.loopexit432.i, !llvm.loop !61

bb.q:                                             ; preds = %bytestream2_get_byte.exit374.i, %.preheader.i82
  %indvars.iv566.i = phi i64 [ 0, %.preheader.i82 ], [ %indvars.iv.next567.i, %bytestream2_get_byte.exit374.i ] ; 2 uses
  %i.ex = load ptr, ptr %i.dj, align 8, !tbaa !50 ; 2 uses
  %i.ey = load ptr, ptr %i.dc, align 8, !tbaa !48 ; 3 uses
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = icmp slt i64 %i.fb, 1
  br i1 %i.fc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.ex, ptr %i.dc, align 8, !tbaa !48
  br label %bytestream2_get_byte.exit374.i

bb.s:                                             ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  store ptr %i.fd, ptr %i.dc, align 8, !tbaa !51
  %i.fe = load i8, ptr %i.ey, align 1, !tbaa !52
  br label %bytestream2_get_byte.exit374.i

bytestream2_get_byte.exit374.i:                   ; preds = %bb.s, %bb.r
  %.0.i373.i = phi i8 [ 0, %bb.r ], [ %i.fe, %bb.s ] ; 8 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0270517.i, i64 %indvars.iv566.i ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ff, i8 %.0.i373.i, i64 8, i1 false)
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %i.dr ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.fg, i8 %.0.i373.i, i64 8, i1 false)
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.dr ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.fh, i8 %.0.i373.i, i64 8, i1 false)
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %i.dr ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.fi, i8 %.0.i373.i, i64 8, i1 false)
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 %i.dr ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.fj, i8 %.0.i373.i, i64 8, i1 false)
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.dr ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.fk, i8 %.0.i373.i, i64 8, i1 false)
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %i.dr ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.fl, i8 %.0.i373.i, i64 8, i1 false)
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 %i.dr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.fm, i8 %.0.i373.i, i64 8, i1 false)
  %indvars.iv.next567.i = add nuw nsw i64 %indvars.iv566.i, 8 ; 2 uses
  %i.fn = icmp slt i64 %indvars.iv.next567.i, %i.ef
  br i1 %i.fn, label %bb.q, label %._crit_edge516.i, !llvm.loop !62

.loopexit424.loopexit.i:                          ; preds = %.loopexit.i
  %.pre570.i = load ptr, ptr %i.dj, align 8, !tbaa !50 ; 2 uses
  %.pre571.i = load ptr, ptr %i.dc, align 8, !tbaa !48
  %.pre572.i = ptrtoint ptr %.pre570.i to i64
  br label %.loopexit424.i

.loopexit424.i:                                   ; preds = %bytestream2_get_be16.exit.i, %bytestream2_get_be16.exit.thread.i, %.loopexit424.loopexit.i
  %.pre-phi.i81 = phi i64 [ %.pre572.i, %.loopexit424.loopexit.i ], [ %i.gb, %bytestream2_get_be16.exit.i ], [ %i.gb, %bytestream2_get_be16.exit.thread.i ]
  %i.fo = phi ptr [ %.pre571.i, %.loopexit424.loopexit.i ], [ %i.gf, %bytestream2_get_be16.exit.i ], [ %i.fu, %bytestream2_get_be16.exit.thread.i ] ; 2 uses
  %i.fp = phi ptr [ %.pre570.i, %.loopexit424.loopexit.i ], [ %i.fu, %bytestream2_get_be16.exit.i ], [ %i.fu, %bytestream2_get_be16.exit.thread.i ]
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %.pre-phi.i81, %i.fq            ; 2 uses
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = icmp sgt i32 %i.fs, 0
  br i1 %i.ft, label %.lr.ph511.i, label %.loopexit432.i

.lr.ph511.i:                                      ; preds = %.preheader433.i, %.loopexit424.i
  %i.fu = phi ptr [ %i.fp, %.loopexit424.i ], [ %i.ek, %.preheader433.i ] ; 6 uses
  %i.fv = phi i64 [ %i.fr, %.loopexit424.i ], [ %i.eq, %.preheader433.i ]
  %i.fw = phi ptr [ %i.fo, %.loopexit424.i ], [ %i.em, %.preheader433.i ] ; 3 uses
  %i.fx = icmp slt i64 %i.fv, 1
  br i1 %i.fx, label %.loopexit432.sink.split.i, label %bytestream2_get_byte.exit372.i

bytestream2_get_byte.exit372.i:                   ; preds = %.lr.ph511.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 1 ; 3 uses
  store ptr %i.fy, ptr %i.dc, align 8, !tbaa !51
  %i.fz = load i8, ptr %i.fw, align 1, !tbaa !52  ; 2 uses
  %i.ga = zext i8 %i.fz to i32                    ; 6 uses
  %.not337.i = icmp eq i8 %i.fz, 0
  br i1 %.not337.i, label %.loopexit432.i, label %bb.t

bb.t:                                             ; preds = %bytestream2_get_byte.exit372.i
  %i.gb = ptrtoint ptr %i.fu to i64               ; 3 uses
  %i.gc = ptrtoint ptr %i.fy to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %i.ge = icmp slt i64 %i.gd, 2
  br i1 %i.ge, label %bytestream2_get_be16.exit.thread.i, label %bytestream2_get_be16.exit.i

bytestream2_get_be16.exit.thread.i:               ; preds = %bb.t
  store ptr %i.fu, ptr %i.dc, align 8, !tbaa !48
  br label %.loopexit424.i

bytestream2_get_be16.exit.i:                      ; preds = %bb.t
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 3 ; 2 uses
  store ptr %i.gf, ptr %i.dc, align 8, !tbaa !51
  %i.gg = load i16, ptr %i.fy, align 1, !tbaa !52 ; 2 uses
  %.not529.i = icmp eq i16 %i.gg, 0
  br i1 %.not529.i, label %.loopexit424.i, label %.lr.ph510.i.preheader

.lr.ph510.i.preheader:                            ; preds = %bytestream2_get_be16.exit.i
  %i.gh = tail call i16 @llvm.bswap.i16(i16 %i.gg)
  %i.gi = zext i16 %i.gh to i32
  br label %.lr.ph510.i

.lr.ph510.i:                                      ; preds = %.lr.ph510.i.preheader, %.loopexit.i
  %.0260509.i = phi i32 [ %i.kq, %.loopexit.i ], [ %i.gi, %.lr.ph510.i.preheader ] ; 2 uses
  %i.gj = load ptr, ptr %i.dj, align 8, !tbaa !50 ; 5 uses
  %i.gk = load ptr, ptr %i.dc, align 8, !tbaa !48 ; 3 uses
  %i.gl = ptrtoint ptr %i.gj to i64               ; 7 uses
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 2 uses
  %i.go = trunc i64 %i.gn to i32
  %i.gp = icmp slt i32 %i.go, 4
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %.0.i350.2.i = phi i8 [ 0, %bb.cd ], [ %i.rg, %bb.cc ]
  %i.rh = sext i32 %.5290.1.i to i64
  %i.ri = getelementptr inbounds i8, ptr %.10.1.i, i64 %i.rh
  store i8 %.0.i350.2.i, ptr %i.ri, align 1, !tbaa !52
  br label %bb.ce

bb.ce:                                            ; preds = %bytestream2_get_byte.exit.2.i, %bb.ca, %bb.by, %bb.bw
  %i.rj = add nsw i32 %.5290.1.i, 1               ; 3 uses
  %.not331.2.i = icmp slt i32 %i.rj, %i.de
  br i1 %.not331.2.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.rk = sub nsw i32 %i.rj, %i.de
  %i.rl = getelementptr inbounds i8, ptr %.10.1.i, i64 %i.dr
  %i.rm = add nsw i32 %.5281.1.i, 1               ; 2 uses
  %.not332.2.i = icmp slt i32 %i.rm, %i.dg
  br i1 %.not332.2.i, label %bb.cg, label %decode_mad1.exit

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.5290.2.i = phi i32 [ %i.rk, %bb.cf ], [ %i.rj, %bb.ce ] ; 6 uses
  %.5281.2.i = phi i32 [ %i.rm, %bb.cf ], [ %.5281.1.i, %bb.ce ] ; 4 uses
  %.10.2.i = phi ptr [ %i.rl, %bb.cf ], [ %.10.1.i, %bb.ce ] ; 7 uses
  %i.rn = lshr i32 %.0.i351611.i, 6
  switch i32 %i.rn, label %default.unreachable [
    i32 3, label %bb.cl
    i32 1, label %bb.cj
    i32 2, label %bb.ch
    i32 0, label %bb.co
  ]

bb.ch:                                            ; preds = %bb.cg
  %i.ro = icmp slt i32 %.5281.2.i, 1
  br i1 %i.ro, label %decode_pal8.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rp = sub nsw i32 %.5290.2.i, %i.di
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds i8, ptr %.10.2.i, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !52
  %i.rt = sext i32 %.5290.2.i to i64
  %i.ru = getelementptr inbounds i8, ptr %.10.2.i, i64 %i.rt
  store i8 %i.rs, ptr %i.ru, align 1, !tbaa !52
  br label %bb.co

bb.cj:                                            ; preds = %bb.cg
  %i.rv = icmp sgt i32 %.5281.2.i, 0
  %i.rw = icmp ne i32 %.5290.2.i, 0               ; 2 uses
  %or.cond.3.i = select i1 %i.rv, i1 true, i1 %i.rw
  br i1 %or.cond.3.i, label %bb.ck, label %decode_pal8.exit

bb.ck:                                            ; preds = %bb.cj
  %i.rx = sext i32 %.5290.2.i to i64
  %i.ry = getelementptr i8, ptr %.10.2.i, i64 %i.rx ; 2 uses
  %i.rz = getelementptr i8, ptr %i.ry, i64 -1
  %i.sa = getelementptr inbounds i8, ptr %.10.2.i, i64 %i.du
  %.in.in.3.i = select i1 %i.rw, ptr %i.rz, ptr %i.sa
  %.in.3.i = load i8, ptr %.in.in.3.i, align 1, !tbaa !52
  store i8 %.in.3.i, ptr %i.ry, align 1, !tbaa !52
  br label %bb.co

bb.cl:                                            ; preds = %bb.cg
  %i.sb = load ptr, ptr %i.dj, align 8, !tbaa !50 ; 2 uses
  %i.sc = load ptr, ptr %i.dc, align 8, !tbaa !48 ; 3 uses
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = icmp slt i64 %i.sf, 1
  br i1 %i.sg, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  store ptr %i.sh, ptr %i.dc, align 8, !tbaa !51
  %i.si = load i8, ptr %i.sc, align 1, !tbaa !52
  br label %bytestream2_get_byte.exit.3.i

bb.cn:                                            ; preds = %bb.cl
  store ptr %i.sb, ptr %i.dc, align 8, !tbaa !48
  br label %bytestream2_get_byte.exit.3.i

bytestream2_get_byte.exit.3.i:                    ; preds = %bb.cn, %bb.cm
  %.0.i350.3.i = phi i8 [ 0, %bb.cn ], [ %i.si, %bb.cm ]
  %i.sj = sext i32 %.5290.2.i to i64
  %i.sk = getelementptr inbounds i8, ptr %.10.2.i, i64 %i.sj
  store i8 %.0.i350.3.i, ptr %i.sk, align 1, !tbaa !52
  br label %bb.co

bb.co:                                            ; preds = %bytestream2_get_byte.exit.3.i, %bb.ck, %bb.ci, %bb.cg
  %i.sl = add nsw i32 %.5290.2.i, 1               ; 3 uses
  %.not331.3.i = icmp slt i32 %i.sl, %i.de
  br i1 %.not331.3.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sm = sub nsw i32 %i.sl, %i.de
  %i.sn = getelementptr inbounds i8, ptr %.10.2.i, i64 %i.dr
  %i.so = add nsw i32 %.5281.2.i, 1               ; 2 uses
  %.not332.3.i = icmp slt i32 %i.so, %i.dg
  br i1 %.not332.3.i, label %bb.cq, label %decode_mad1.exit

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.5290.3.i = phi i32 [ %i.sm, %bb.cp ], [ %i.sl, %bb.co ] ; 2 uses
  %.5281.3.i = phi i32 [ %i.so, %bb.cp ], [ %.5281.2.i, %bb.co ] ; 2 uses
  %.10.3.i = phi ptr [ %i.sn, %bb.cp ], [ %.10.2.i, %bb.co ] ; 2 uses
  %i.sp = add nsw i32 %.0251486.i, -1
  %i.sq = icmp sgt i32 %.0251486.i, 0
  br i1 %i.sq, label %.preheader429.i, label %.loopexit427.loopexit534.i, !llvm.loop !74

.loopexit427.loopexit534.i:                       ; preds = %bb.cq
  %.pre.i76 = load ptr, ptr %i.dj, align 8, !tbaa !50
  %.pre569.i = load ptr, ptr %i.dc, align 8, !tbaa !48
  br label %.loopexit427.i

.loopexit427.i:                                   ; preds = %bb.ay, %.loopexit427.loopexit534.i
  %i.sr = phi ptr [ %.pre569.i, %.loopexit427.loopexit534.i ], [ %i.nl, %bb.ay ] ; 2 uses
  %i.ss = phi ptr [ %.pre.i76, %.loopexit427.loopexit534.i ], [ %i.nj, %bb.ay ] ; 2 uses
  %.8293.i = phi i32 [ %.5290.3.i, %.loopexit427.loopexit534.i ], [ %.1286.i, %bb.ay ]
  %.8284.i = phi i32 [ %.5281.3.i, %.loopexit427.loopexit534.i ], [ %.1277.i, %bb.ay ]
  %.13.i = phi ptr [ %.10.3.i, %.loopexit427.loopexit534.i ], [ %.6.i, %bb.ay ]
  %i.st = ptrtoint ptr %i.ss to i64
  %i.su = ptrtoint ptr %i.sr to i64
  %i.sv = sub i64 %i.st, %i.su
  %i.sw = trunc i64 %i.sv to i32
  %i.sx = icmp sgt i32 %i.sw, 0
  br i1 %i.sx, label %.lr.ph.i74, label %.loopexit432.i, !llvm.loop !75

.loopexit432.sink.split.i:                        ; preds = %.lr.ph511.i, %bb.ap
  %.lcssa.sink.i = phi ptr [ %i.ek, %bb.ap ], [ %i.fu, %.lr.ph511.i ]
  store ptr %.lcssa.sink.i, ptr %i.dc, align 8, !tbaa !48
  br label %.loopexit432.i

.loopexit432.i.loopexit591.unr-lcssa:             ; preds = %.lr.ph498.i
  br i1 %lcmp.mod683.not, label %.loopexit432.i, label %.lr.ph498.i.epil.preheader

.lr.ph498.i.epil.preheader:                       ; preds = %.loopexit432.i.loopexit591.unr-lcssa, %.lr.ph498.preheader.i
  %.epil.init = phi ptr [ %i.em, %.lr.ph498.preheader.i ], [ %i.ld, %.loopexit432.i.loopexit591.unr-lcssa ]
  %.3273496.i.epil.init = phi ptr [ %i.kx, %.lr.ph498.preheader.i ], [ %i.le, %.loopexit432.i.loopexit591.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod684)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.3273496.i.epil.init, ptr align 1 %.epil.init, i64 %i.eb, i1 false)
  %i.sy = load ptr, ptr %i.dc, align 8, !tbaa !48
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.eb
  store ptr %i.sz, ptr %i.dc, align 8, !tbaa !48
  br label %.loopexit432.i

.loopexit432.i:                                   ; preds = %.loopexit427.i, %._crit_edge.i, %.lr.ph498.i.epil.preheader, %.loopexit432.i.loopexit591.unr-lcssa, %bytestream2_get_byte.exit372.i, %.loopexit424.i, %._crit_edge516.i, %.loopexit432.sink.split.i, %bb.aw, %bytestream2_get_le16.exit.i77, %bb.al, %.preheader435.i, %bb.p, %.preheader433.i
  %i.ta = load ptr, ptr %i.dj, align 8, !tbaa !50 ; 2 uses
  %i.tb = load ptr, ptr %i.dc, align 8, !tbaa !48 ; 2 uses
  %i.tc = ptrtoint ptr %i.ta to i64
  %i.td = ptrtoint ptr %i.tb to i64
  %i.te = sub i64 %i.tc, %i.td                    ; 2 uses
  %i.tf = trunc i64 %i.te to i32
  %i.tg = icmp sgt i32 %i.tf, 0
  br i1 %i.tg, label %bb.o, label %decode_mad1.exit

bb.cr:                                            ; preds = %bb.m
  %i.th = sdiv i32 %i.di, 4                       ; 15 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !50 ; 2 uses
  %i.tk = load ptr, ptr %i.dc, align 8, !tbaa !48 ; 2 uses
  %i.tl = ptrtoint ptr %i.tj to i64               ; 2 uses
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = sub i64 %i.tl, %i.tm                    ; 2 uses
  %i.to = trunc i64 %i.tn to i32
  %i.tp = icmp sgt i32 %i.to, 0
  br i1 %i.tp, label %.lr.ph201.i, label %decode_pal8.exit

.lr.ph201.i:                                      ; preds = %bb.cr
  %i.tq = add nsw i32 %i.dg, 3
  %i.tr = sdiv i32 %i.tq, 4
  %i.ts = add nsw i32 %i.de, 3
  %i.tt = sdiv i32 %i.ts, 4
  %i.tu = mul nsw i32 %i.tr, %i.tt
  %i.tv = add nsw i32 %i.tu, 7
  %i.tw = ashr i32 %i.tv, 3                       ; 2 uses
  %i.tx = zext i32 %i.tw to i64
  %i.ty = icmp slt i32 %i.de, 1
  %i.tz = icmp slt i32 %i.dg, 1
  %i.ua = add nsw i32 %i.dg, -1
  %i.ub = mul nsw i32 %i.th, %i.ua
  %i.uc = add nsw i32 %i.de, -1
  %i.ud = add nsw i32 %i.uc, %i.ub                ; 8 uses
  %i.ue = sub nsw i32 0, %i.th
  %i.uf = sext i32 %i.ue to i64                   ; 26 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 4 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.dc, i64 1056 ; 4 uses
  %i.ui = sext i32 %i.th to i64                   ; 30 uses
  %.not367196.i = icmp slt i32 %i.dg, 12
  %.not368193.i = icmp slt i32 %i.de, 12
  %i.uj = mul nsw i32 %i.th, 12
  %i.uk = sext i32 %i.uj to i64
  %i.ul = sext i32 %i.dg to i64                   ; 2 uses
  %i.um = add i32 %i.dg, 64                       ; 2 uses
  %i.un = sext i32 %i.de to i64
  %brmerge.i83 = select i1 %.not367196.i, i1 true, i1 %.not368193.i
  %brmerge288.i = select i1 %i.ty, i1 true, i1 %i.tz
  %i.uo = add nsw i64 %i.ul, 17179869183
  %i.up = lshr i64 %i.uo, 2
  %i.uq = trunc i64 %i.up to i32
  %i.ur = add nsw i32 %i.uq, 1
  br label %bb.cs

bb.cs:                                            ; preds = %.thread12.i, %.lr.ph201.i
  %i.us = phi ptr [ %i.tj, %.lr.ph201.i ], [ %i.apn, %.thread12.i ] ; 38 uses
  %i.ut = phi i64 [ %i.tn, %.lr.ph201.i ], [ %i.apq, %.thread12.i ]
  %i.uu = phi i64 [ %i.tl, %.lr.ph201.i ], [ %i.apo, %.thread12.i ] ; 16 uses
  %i.uv = phi ptr [ %i.tk, %.lr.ph201.i ], [ %i.apm, %.thread12.i ] ; 2 uses
  %i.uw = icmp slt i64 %i.ut, 1
  br i1 %i.uw, label %.thread.i94, label %bytestream2_get_byte.exit390.i

.thread.i94:                                      ; preds = %bb.cs
  store ptr %i.us, ptr %i.dc, align 8, !tbaa !48
  br label %decode_pal8.exit

bytestream2_get_byte.exit390.i:                   ; preds = %bb.cs
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 1 ; 9 uses
  store ptr %i.ux, ptr %i.dc, align 8, !tbaa !51
  %i.uy = load i8, ptr %i.uv, align 1, !tbaa !52
  switch i8 %i.uy, label %decode_pal8.exit [
    i8 -1, label %decode_mad1.exit
    i8 8, label %bb.ct
    i8 7, label %.preheader94.i
    i8 12, label %bb.do
  ]

.preheader94.i:                                   ; preds = %bytestream2_get_byte.exit390.i
  %i.uz = ptrtoint ptr %i.us to i64               ; 2 uses
  %i.va = ptrtoint ptr %i.ux to i64
  %i.vb = sub i64 %i.uz, %i.va                    ; 2 uses
  %i.vc = trunc i64 %i.vb to i32
  %i.vd = icmp sgt i32 %i.vc, 0
  br i1 %i.vd, label %.lr.ph189.i, label %.thread12.i

bb.ct:                                            ; preds = %bytestream2_get_byte.exit390.i
  br i1 %brmerge.i83, label %.thread12.i, label %.preheader90.lr.ph.split.i

.preheader90.lr.ph.split.i:                       ; preds = %bb.ct
  %i.ve = load ptr, ptr %i.d, align 8, !tbaa !51
  br label %.preheader90.i

.preheader90.i:                                   ; preds = %._crit_edge.i93, %.preheader90.lr.ph.split.i
  %.32.val.promoted199.i = phi ptr [ %i.ux, %.preheader90.lr.ph.split.i ], [ %5, %._crit_edge.i93 ]
  %i.vf = phi i32 [ 12, %.preheader90.lr.ph.split.i ], [ %i.vh, %._crit_edge.i93 ]
  %.0280197.i = phi ptr [ %i.ve, %.preheader90.lr.ph.split.i ], [ %i.vg, %._crit_edge.i93 ] ; 2 uses
  br label %bb.cu

._crit_edge.i93:                                  ; preds = %bytestream2_get_be24.exit.i
  %i.vg = getelementptr inbounds [4 x i8], ptr %.0280197.i, i64 %i.uk
  %i.vh = add nuw nsw i32 %i.vf, 12               ; 2 uses
  %.not367.i = icmp sgt i32 %i.vh, %i.dg
  br i1 %.not367.i, label %.thread12.loopexit.i, label %.preheader90.i, !llvm.loop !76

bb.cu:                                            ; preds = %bytestream2_get_be24.exit.i, %.preheader90.i
  %indvars.iv247.i = phi i64 [ 0, %.preheader90.i ], [ %indvars.iv.next248.i, %bytestream2_get_be24.exit.i ] ; 2 uses
  %indvars.iv.i91 = phi i64 [ 12, %.preheader90.i ], [ %indvars.iv.next.i92, %bytestream2_get_be24.exit.i ]
  %4 = phi ptr [ %.32.val.promoted199.i, %.preheader90.i ], [ %5, %bytestream2_get_be24.exit.i ] ; 5 uses
  %i.vi = ptrtoint ptr %4 to i64
  %i.vj = sub i64 %i.uu, %i.vi
  %i.vk = icmp slt i64 %i.vj, 3
  br i1 %i.vk, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store ptr %i.us, ptr %i.dc, align 8, !tbaa !48
  br label %bytestream2_get_be24.exit.i

bb.cw:                                            ; preds = %bb.cu
  %i.vl = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  store ptr %i.vl, ptr %i.dc, align 8, !tbaa !51
  %i.vm = load i8, ptr %4, align 1, !tbaa !52
  %i.vn = zext i8 %i.vm to i32
  %i.vo = shl nuw nsw i32 %i.vn, 16
  %i.vp = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !52
  %i.vr = zext i8 %i.vq to i32
  %i.vs = shl nuw nsw i32 %i.vr, 8
  %i.vt = or disjoint i32 %i.vs, %i.vo
  %i.vu = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !52
  %i.vw = zext i8 %i.vv to i32
  %i.vx = or disjoint i32 %i.vt, %i.vw
  br label %bytestream2_get_be24.exit.i

bytestream2_get_be24.exit.i:                      ; preds = %bb.cw, %bb.cv
  %5 = phi ptr [ %i.us, %bb.cv ], [ %i.vl, %bb.cw ] ; 2 uses
  %.0.i394.i = phi i32 [ 0, %bb.cv ], [ %i.vx, %bb.cw ] ; 13 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %.0280197.i, i64 %indvars.iv247.i ; 4 uses
  %i.vz = insertelement <4 x i32> poison, i32 %.0.i394.i, i64 0
  %i.wa = shufflevector <4 x i32> %i.vz, <4 x i32> poison, <4 x i32> zeroinitializer ; 33 uses
  store <4 x i32> %i.wa, ptr %i.vy, align 4, !tbaa !38
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  store <4 x i32> %i.wa, ptr %i.wb, align 4, !tbaa !38
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vy, i64 32
  store <4 x i32> %i.wa, ptr %i.wc, align 4, !tbaa !38
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.vy, i64 %i.ui ; 4 uses
  store <4 x i32> %i.wa, ptr %i.wd, align 4, !tbaa !38
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  store <4 x i32> %i.wa, ptr %i.we, align 4, !tbaa !38
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 32
  store <4 x i32> %i.wa, ptr %i.wf, align 4, !tbaa !38
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.wd, i64 %i.ui ; 4 uses
  store <4 x i32> %i.wa, ptr %i.wg, align 4, !tbaa !38
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  store <4 x i32> %i.wa, ptr %i.wh, align 4, !tbaa !38
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 32
  store <4 x i32> %i.wa, ptr %i.wi, align 4, !tbaa !38
  %i.wj = getelementptr inbounds [4 x i8], ptr %i.wg, i64 %i.ui ; 4 uses
  store <4 x i32> %i.wa, ptr %i.wj, align 4, !tbaa !38
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  store <4 x i32> %i.wa, ptr %i.wk, align 4, !tbaa !38
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 32
  store <4 x i32> %i.wa, ptr %i.wl, align 4, !tbaa !38
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.wj, i64 %i.ui ; 4 uses
  store <4 x i32> %i.wa, ptr %i.wm, align 4, !tbaa !38
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  store <4 x i32> %i.wa, ptr %i.wn, align 4, !tbaa !38
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wm, i64 32
  store <4 x i32> %i.wa, ptr %i.wo, align 4, !tbaa !38
  %i.wp = getelementptr inbounds [4 x i8], ptr %i.wm, i64 %i.ui ; 4 uses
  store <4 x i32> %i.wa, ptr %i.wp, align 4, !tbaa !38
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  store <4 x i32> %i.wa, ptr %i.wq, align 4, !tbaa !38
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 32
  store <4 x i32> %i.wa, ptr %i.wr, align 4, !tbaa !38
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.wp, i64 %i.ui ; 4 uses
  store <4 x i32> %i.wa, ptr %i.ws, align 4, !tbaa !38
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  store <4 x i32> %i.wa, ptr %i.wt, align 4, !tbaa !38
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 32
  store <4 x i32> %i.wa, ptr %i.wu, align 4, !tbaa !38
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.ws, i64 %i.ui ; 4 uses
  store <4 x i32> %i.wa, ptr %i.wv, align 4, !tbaa !38
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  store <4 x i32> %i.wa, ptr %i.ww, align 4, !tbaa !38
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wv, i64 32
  store <4 x i32> %i.wa, ptr %i.wx, align 4, !tbaa !38
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %i.ui ; 4 uses
  store <4 x i32> %i.wa, ptr %i.wy, align 4, !tbaa !38
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  store <4 x i32> %i.wa, ptr %i.wz, align 4, !tbaa !38
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 32
  store <4 x i32> %i.wa, ptr %i.xa, align 4, !tbaa !38
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.ui ; 7 uses
  store i32 %.0.i394.i, ptr %i.xb, align 4, !tbaa !38
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  store <4 x i32> %i.wa, ptr %i.xc, align 4, !tbaa !38
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 20
  store <4 x i32> %i.wa, ptr %i.xd, align 4, !tbaa !38
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 36
  store i32 %.0.i394.i, ptr %i.xe, align 4, !tbaa !38
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xb, i64 40
  store i32 %.0.i394.i, ptr %i.xf, align 4, !tbaa !38
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xb, i64 44
  store i32 %.0.i394.i, ptr %i.xg, align 4, !tbaa !38
  %i.xh = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.ui ; 7 uses
  store i32 %.0.i394.i, ptr %i.xh, align 4, !tbaa !38
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  store <4 x i32> %i.wa, ptr %i.xi, align 4, !tbaa !38
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 20
  store <4 x i32> %i.wa, ptr %i.xj, align 4, !tbaa !38
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 36
  store i32 %.0.i394.i, ptr %i.xk, align 4, !tbaa !38
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 40
  store i32 %.0.i394.i, ptr %i.xl, align 4, !tbaa !38
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xh, i64 44
  store i32 %.0.i394.i, ptr %i.xm, align 4, !tbaa !38
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.xh, i64 %i.ui ; 6 uses
  store i32 %.0.i394.i, ptr %i.xn, align 4, !tbaa !38
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 4
  store <4 x i32> %i.wa, ptr %i.xo, align 4, !tbaa !38
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xn, i64 20
  store <4 x i32> %i.wa, ptr %i.xp, align 4, !tbaa !38
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 36
  store i32 %.0.i394.i, ptr %i.xq, align 4, !tbaa !38
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 40
  store i32 %.0.i394.i, ptr %i.xr, align 4, !tbaa !38
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xn, i64 44
  store i32 %.0.i394.i, ptr %i.xs, align 4, !tbaa !38
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i91, 12 ; 2 uses
  %.not368.i = icmp sgt i64 %indvars.iv.next.i92, %i.un
  %indvars.iv.next248.i = add nuw nsw i64 %indvars.iv247.i, 12
  br i1 %.not368.i, label %._crit_edge.i93, label %bb.cu, !llvm.loop !77

.loopexit91.loopexit.i:                           ; preds = %.loopexit87.i
  %.pre.i88 = load ptr, ptr %i.ti, align 8, !tbaa !50 ; 2 uses
  %.pre252.i.a = load ptr, ptr %i.dc, align 8, !tbaa !48
  br label %.loopexit91.i

.loopexit91.i:                                    ; preds = %bytestream2_get_be16.exit393.i, %bytestream2_get_be16.exit393.thread.i, %.loopexit91.loopexit.i
  %i.xt = phi ptr [ %.pre.i88, %.loopexit91.loopexit.i ], [ %i.yb, %bytestream2_get_be16.exit393.i ], [ %i.yb, %bytestream2_get_be16.exit393.thread.i ] ; 2 uses
  %i.xu = phi ptr [ %.pre252.i.a, %.loopexit91.loopexit.i ], [ %i.yn, %bytestream2_get_be16.exit393.i ], [ %i.yc, %bytestream2_get_be16.exit393.thread.i ] ; 3 uses
  %i.xv = phi ptr [ %.pre.i88, %.loopexit91.loopexit.i ], [ %i.yc, %bytestream2_get_be16.exit393.i ], [ %i.yc, %bytestream2_get_be16.exit393.thread.i ] ; 2 uses
  %i.xw = ptrtoint ptr %i.xv to i64               ; 2 uses
  %i.xx = ptrtoint ptr %i.xu to i64
  %i.xy = sub i64 %i.xw, %i.xx                    ; 2 uses
  %i.xz = trunc i64 %i.xy to i32
  %i.ya = icmp sgt i32 %i.xz, 0
  br i1 %i.ya, label %.lr.ph189.i, label %.thread12.i

.lr.ph189.i:                                      ; preds = %.preheader94.i, %.loopexit91.i
  %i.yb = phi ptr [ %i.xt, %.loopexit91.i ], [ %i.us, %.preheader94.i ] ; 4 uses
  %i.yc = phi ptr [ %i.xv, %.loopexit91.i ], [ %i.us, %.preheader94.i ] ; 6 uses
  %i.yd = phi i64 [ %i.xy, %.loopexit91.i ], [ %i.vb, %.preheader94.i ]
  %i.ye = phi i64 [ %i.xw, %.loopexit91.i ], [ %i.uz, %.preheader94.i ]
  %i.yf = phi ptr [ %i.xu, %.loopexit91.i ], [ %i.ux, %.preheader94.i ] ; 3 uses
  %i.yg = icmp slt i64 %i.yd, 1
  br i1 %i.yg, label %bytestream2_get_byte.exit388.thread.i, label %bytestream2_get_byte.exit388.i

bytestream2_get_byte.exit388.thread.i:            ; preds = %.lr.ph189.i
  store ptr %i.yc, ptr %i.dc, align 8, !tbaa !48
  br label %.thread12.i

bytestream2_get_byte.exit388.i:                   ; preds = %.lr.ph189.i
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yf, i64 1 ; 4 uses
  store ptr %i.yh, ptr %i.dc, align 8, !tbaa !51
  %i.yi = load i8, ptr %i.yf, align 1, !tbaa !52  ; 2 uses
  %i.yj = zext i8 %i.yi to i32                    ; 6 uses
  %.not359.i = icmp eq i8 %i.yi, 0
  br i1 %.not359.i, label %.thread12.i, label %bb.cx

bb.cx:                                            ; preds = %bytestream2_get_byte.exit388.i
  %i.yk = ptrtoint ptr %i.yh to i64
  %i.yl = sub i64 %i.ye, %i.yk
  %i.ym = icmp slt i64 %i.yl, 2
  br i1 %i.ym, label %bytestream2_get_be16.exit393.thread.i, label %bytestream2_get_be16.exit393.i

bytestream2_get_be16.exit393.thread.i:            ; preds = %bb.cx
  store ptr %i.yc, ptr %i.dc, align 8, !tbaa !48
  br label %.loopexit91.i

bytestream2_get_be16.exit393.i:                   ; preds = %bb.cx
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yf, i64 3 ; 2 uses
  store ptr %i.yn, ptr %i.dc, align 8, !tbaa !51
  %i.yo = load i16, ptr %i.yh, align 1, !tbaa !52 ; 2 uses
  %.not.i85 = icmp eq i16 %i.yo, 0
  br i1 %.not.i85, label %.loopexit91.i, label %.lr.ph188.i.preheader

.lr.ph188.i.preheader:                            ; preds = %bytestream2_get_be16.exit393.i
  %i.yp = tail call i16 @llvm.bswap.i16(i16 %i.yo)
  %i.yq = zext i16 %i.yp to i32
  br label %.lr.ph188.i

.lr.ph188.i:                                      ; preds = %.lr.ph188.i.preheader, %.loopexit87.i
  %.0266187.i = phi i32 [ %i.ada, %.loopexit87.i ], [ %i.yq, %.lr.ph188.i.preheader ] ; 2 uses
  %i.yr = load ptr, ptr %i.ti, align 8, !tbaa !50 ; 5 uses
  %i.ys = load ptr, ptr %i.dc, align 8, !tbaa !48 ; 3 uses
  %i.yt = ptrtoint ptr %i.yr to i64               ; 7 uses
  %i.yu = ptrtoint ptr %i.ys to i64
  %i.yv = sub i64 %i.yt, %i.yu                    ; 2 uses
  %i.yw = trunc i64 %i.yv to i32
  %i.yx = icmp slt i32 %i.yw, 4
  br i1 %i.yx, label %decode_pal8.exit, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph188.i
  %i.yy = icmp slt i64 %i.yv, 1
  br i1 %i.yy, label %bytestream2_get_byte.exit386.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ys, i64 1 ; 3 uses
  store ptr %i.yz, ptr %i.dc, align 8, !tbaa !51
  %i.za = load i8, ptr %i.ys, align 1, !tbaa !52
  %i.zb = zext i8 %i.za to i32
  %i.zc = mul nuw nsw i32 %i.zb, %i.yj
  %.pre254.i = ptrtoint ptr %i.yz to i64
  br label %bytestream2_get_byte.exit386.i

bytestream2_get_byte.exit386.i:                   ; preds = %bb.cz, %bb.cy
  %.pre-phi.i86 = phi i64 [ %.pre254.i, %bb.cz ], [ %i.yt, %bb.cy ]
  %i.zd = phi ptr [ %i.yz, %bb.cz ], [ %i.yr, %bb.cy ] ; 2 uses
  %.0.i385.i = phi i32 [ %i.zc, %bb.cz ], [ 0, %bb.cy ] ; 5 uses
  %i.ze = sub i64 %i.yt, %.pre-phi.i86
  %i.zf = icmp slt i64 %i.ze, 1
  br i1 %i.zf, label %bytestream2_get_byte.exit384.i, label %bb.da

bb.da:                                            ; preds = %bytestream2_get_byte.exit386.i
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 1 ; 3 uses
  store ptr %i.zg, ptr %i.dc, align 8, !tbaa !51
  %i.zh = load i8, ptr %i.zd, align 1, !tbaa !52
  %i.zi = zext i8 %i.zh to i32
  %i.zj = mul nuw nsw i32 %i.zi, %i.yj
  %.pre255.i.a = ptrtoint ptr %i.zg to i64
  br label %bytestream2_get_byte.exit384.i

bytestream2_get_byte.exit384.i:                   ; preds = %bb.da, %bytestream2_get_byte.exit386.i
  %.pre-phi256.i.a = phi i64 [ %.pre255.i.a, %bb.da ], [ %i.yt, %bytestream2_get_byte.exit386.i ]
end_hunk_1
