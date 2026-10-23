Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/lz4hc?download=true
inline.NumInlined: 720
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@LZ4HC_compress_generic:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 262168 ; 7 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 262172 ; 5 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45
  %i.v = sub i32 %i.s, %i.u
  %i.w = zext i32 %i.v to i64
  %i.x = add i64 %i.q, %i.w                       ; 2 uses
  %i.y = icmp ugt i64 %i.x, 65535
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.g, align 8, !tbaa !42
  %i.z = tail call fastcc i32 @LZ4HC_compress_generic_noDictCtx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 3) %6)
  br label %LZ4HC_compress_generic_dictCtx.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %i.x, 0
  br i1 %i.aa, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr %3, align 4, !tbaa !29
  %i.ac = icmp sgt i32 %i.ab, 4096
  br i1 %i.ac, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %0, i64 262180    ; 3 uses
  %.val649.i = load i16, ptr %i.ad, align 4, !tbaa !46
  %i.ae = getelementptr i8, ptr %i.h, i64 262180
  %.val650.i = load i16, ptr %i.ae, align 4, !tbaa !46
  %i.af = add i16 %.val649.i, -1
  %i.ag = icmp ult i16 %i.af, 2
  %i.ah = add i16 %.val650.i, -1
  %i.ai = icmp ult i16 %i.ah, 2
  %.not.i = xor i1 %i.ag, %i.ai
  br i1 %.not.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(262192) %0, ptr noundef nonnull align 8 dereferenceable(262192) %i.h, i64 262192, i1 false)
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !24  ; 3 uses
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !25  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %.not.i651.i = icmp ult ptr %i.aj, %i.al
  br i1 %.not.i651.i, label %.LZ4HC_setExternalDict.exit_crit_edge.i, label %bb.i

.LZ4HC_setExternalDict.exit_crit_edge.i:          ; preds = %bb.h
  %.pre.i = load i32, ptr %i.r, align 8, !tbaa !26
  br label %LZ4HC_setExternalDict.exit.i

bb.i:                                             ; preds = %bb.h
  %i.am = load i16, ptr %i.ad, align 4, !tbaa !46
  %i.an = add i16 %i.am, -1
  %.not20.i.i = icmp ult i16 %i.an, 2
  %.pre2202.i = load i32, ptr %i.r, align 8, !tbaa !26 ; 6 uses
  br i1 %.not20.i.i, label %LZ4HC_setExternalDict.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -3
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ak to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %.pre2202.i, %i.at              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 262176
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !43 ; 4 uses
  %i.ax = icmp ult i32 %i.aw, %i.au
  br i1 %i.ax, label %.lr.ph.i.i, label %LZ4HC_setExternalDict.exit.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.ay = zext i32 %.pre2202.i to i64
  %i.az = sub nsw i64 0, %i.ay
  %invariant.gep.i.i = getelementptr i8, ptr %i.ak, i64 %i.az ; 3 uses
  %i.ba = zext i32 %i.aw to i64                   ; 6 uses
  %i.bb = zext i32 %i.au to i64                   ; 3 uses
  %i.bc = sub nsw i64 %i.bb, %i.ba
  %xtraiter = and i64 %i.bc, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i
  %gep.i.i.prol = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.ba
  %.val.i.i.prol = load i32, ptr %gep.i.i.prol, align 1, !tbaa !28
  %i.bd = mul i32 %.val.i.i.prol, -1640531535
  %i.be = lshr i32 %i.bd, 17
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !29
  %i.bi = sub i32 %i.aw, %i.bh
  %i.bj = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 65535)
  %i.bk = trunc nuw i32 %i.bj to i16
  %i.bl = and i64 %i.ba, 65535
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.bl
  store i16 %i.bk, ptr %i.bm, align 2, !tbaa !40
  store i32 %i.aw, ptr %i.bg, align 4, !tbaa !29
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %i.ba, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.bn = add nsw i64 %i.bb, -1
  %i.bo = icmp eq i64 %i.bn, %i.ba
  br i1 %i.bo, label %LZ4HC_setExternalDict.exit.i, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i.new ], [ %indvars.iv.i.i.unr, %.prol.loopexit ] ; 5 uses
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %.val.i.i = load i32, ptr %gep.i.i, align 1, !tbaa !28
  %i.bp = mul i32 %.val.i.i, -1640531535
  %i.bq = lshr i32 %i.bp, 17
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !29
  %i.bu = trunc nuw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.bv = sub i32 %i.bu, %i.bt
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 65535)
  %i.bx = trunc nuw i32 %i.bw to i16
  %i.by = and i64 %indvars.iv.i.i, 65535
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.by
  store i16 %i.bx, ptr %i.bz, align 2, !tbaa !40
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !29
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %gep.i.i.1 = getelementptr i8, ptr %invariant.gep.i.i, i64 %indvars.iv.next.i.i
  %.val.i.i.1 = load i32, ptr %gep.i.i.1, align 1, !tbaa !28
  %i.ca = mul i32 %.val.i.i.1, -1640531535
  %i.cb = lshr i32 %i.ca, 17
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !29
  %i.cf = trunc nuw i64 %indvars.iv.next.i.i to i32 ; 2 uses
  %i.cg = sub i32 %i.cf, %i.ce
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 65535)
  %i.ci = trunc nuw i32 %i.ch to i16
  %i.cj = and i64 %indvars.iv.next.i.i, 65535
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.cj
  store i16 %i.ci, ptr %i.ck, align 2, !tbaa !40
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !29
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %i.bb
  br i1 %exitcond.not.i.1, label %LZ4HC_setExternalDict.exit.i, label %.lr.ph.i.i.new, !llvm.loop !1

LZ4HC_setExternalDict.exit.i:                     ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %bb.j, %bb.i, %.LZ4HC_setExternalDict.exit_crit_edge.i
  %i.cl = phi i32 [ %.pre.i, %.LZ4HC_setExternalDict.exit_crit_edge.i ], [ %.pre2202.i, %bb.j ], [ %.pre2202.i, %bb.i ], [ %.pre2202.i, %.lr.ph.i.i.new ], [ %.pre2202.i, %.prol.loopexit ] ; 2 uses
  store i32 %i.cl, ptr %i.t, align 4, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 262160
  store ptr %i.ak, ptr %i.cm, align 8, !tbaa !44
  %i.cn = ptrtoint ptr %i.aj to i64
  %i.co = ptrtoint ptr %i.ak to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = add i32 %i.cl, %i.cq                    ; 2 uses
  store i32 %i.cr, ptr %i.r, align 8, !tbaa !26
  store ptr %1, ptr %i.m, align 8, !tbaa !25
  store ptr %1, ptr %i.k, align 8, !tbaa !24
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 262176
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !43
  store ptr null, ptr %i.g, align 8, !tbaa !42
  %i.ct = trunc i32 %5 to i16
  store i16 %i.ct, ptr %i.ad, align 4, !tbaa !46
  %i.cu = tail call fastcc i32 @LZ4HC_compress_generic_noDictCtx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 3) %6)
  br label %LZ4HC_compress_generic_dictCtx.exit

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.cv = icmp eq i32 %6, 2                       ; 4 uses
  %i.cw = icmp slt i32 %4, 1
  %or.cond.i.i = and i1 %i.cw, %i.cv
  br i1 %or.cond.i.i, label %LZ4HC_compress_generic_dictCtx.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = load i32, ptr %3, align 4, !tbaa !29    ; 3 uses
  %i.cy = icmp ugt i32 %i.cx, 2113929216
  br i1 %i.cy, label %LZ4HC_compress_generic_dictCtx.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cz
  store ptr %i.da, ptr %i.k, align 8, !tbaa !24
  %i.db = icmp slt i32 %5, 1
  %i.dc = tail call i32 @llvm.umin.i32(i32 %5, i32 12)
  %i.dd = select i1 %i.db, i32 9, i32 %i.dc
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [12 x i8], ptr @k_clTable, i64 %i.de ; 2 uses
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.df, align 4, !tbaa !29 ; 3 uses
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %.sroa.04.0.copyload.i.i to i32
  switch i32 %.sroa.04.0.extract.trunc.i.i, label %bb.oh [
    i32 0, label %bb.n
    i32 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.dg = tail call fastcc i32 @LZ4MID_compress(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i32 noundef range(i32 0, 3) %6, i32 noundef 1)
  br label %LZ4HC_compress_hashChain.exit.i

bb.o:                                             ; preds = %bb.m
  %.sroa.04.4.extract.shift.i.i = lshr i64 %.sroa.04.0.copyload.i.i, 32
  %.sroa.04.4.extract.trunc.i.i = trunc nuw i64 %.sroa.04.4.extract.shift.i.i to i32 ; 8 uses
  %i.dh = icmp sgt i32 %.sroa.04.4.extract.trunc.i.i, 128 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz ; 6 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -12 ; 31 uses
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -5 ; 37 uses
  %i.dl = sext i32 %4 to i64
  %i.dm = getelementptr inbounds i8, ptr %2, i64 %i.dl ; 6 uses
  store i32 0, ptr %3, align 4, !tbaa !29
  %spec.select.i.idx.i = select i1 %i.cv, i64 -5, i64 0
  %spec.select.i.i = getelementptr inbounds i8, ptr %i.dm, i64 %spec.select.i.idx.i ; 11 uses
  %i.dn = icmp samesign ult i32 %i.cx, 13
  br i1 %i.dn, label %.loopexit.i, label %.lr.ph1546.lr.ph.i

.lr.ph1546.lr.ph.i:                               ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 15 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 262160 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %i.dr = icmp sgt i32 %.sroa.04.4.extract.trunc.i.i, 0 ; 3 uses
  %i.ds = getelementptr inbounds i8, ptr %i.di, i64 -8 ; 6 uses
  %i.dt = getelementptr inbounds i8, ptr %i.di, i64 -6 ; 6 uses
  %i.du = ptrtoaddr ptr %i.dk to i64              ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.not.i47.i = icmp ne i32 %6, 0                 ; 10 uses
  br label %.lr.ph1546.i

.lr.ph1546.i:                                     ; preds = %.outer1361.backedge.i, %.lr.ph1546.lr.ph.i
  %.0336.i.ph1830.i = phi ptr [ null, %.lr.ph1546.lr.ph.i ], [ %.0336.i.ph.be.i, %.outer1361.backedge.i ]
  %.0338.i.ph1829.i = phi ptr [ null, %.lr.ph1546.lr.ph.i ], [ %.0338.i.ph.be.i, %.outer1361.backedge.i ]
  %.0976.ph1828.i = phi ptr [ %2, %.lr.ph1546.lr.ph.i ], [ %.0976.ph.be.i, %.outer1361.backedge.i ] ; 2 uses
  %.0977.ph1827.i = phi ptr [ %1, %.lr.ph1546.lr.ph.i ], [ %.0987.ph.be.i, %.outer1361.backedge.i ] ; 4 uses
  %.0977.ph1827.i426 = ptrtoaddr ptr %.0977.ph1827.i to i64
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !42  ; 5 uses
  %i.ec = load ptr, ptr %i.m, align 8, !tbaa !25  ; 12 uses
  %i.ed = load i32, ptr %i.r, align 8, !tbaa !26  ; 14 uses
  %i.ee = ptrtoint ptr %i.ec to i64               ; 3 uses
  %i.ef = load i32, ptr %i.t, align 4, !tbaa !45  ; 6 uses
  %i.eg = add i32 %i.ef, 65536
  %i.eh = load ptr, ptr %i.dp, align 8, !tbaa !44 ; 10 uses
  %i.ei = zext i32 %i.ed to i64                   ; 3 uses
  %i.ej = zext i32 %i.ef to i64
  %i.ek = sub nsw i64 %i.ei, %i.ej                ; 5 uses
  %.ptr1312.i = getelementptr inbounds i8, ptr %i.eh, i64 %i.ek ; 2 uses
  %i.el = sub nsw i64 0, %i.ei
  %invariant.gep.i = getelementptr i8, ptr %i.ec, i64 %i.el ; 3 uses
  %i.em = add i32 %i.ed, -4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eo = icmp ult ptr %i.ec, %i.dj
  %i.ep = icmp ult i32 %i.ef, %i.ed
  %i.eq = ptrtoint ptr %.ptr1312.i to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eb, i64 262144
  %i.es = getelementptr inbounds nuw i8, ptr %i.eb, i64 262152
  %i.et = getelementptr inbounds nuw i8, ptr %i.eb, i64 262168
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eb, i64 131072
  %.promoted.i = load i32, ptr %i.dq, align 8, !tbaa !43
  %i.ev = trunc i64 %.0977.ph1827.i426 to i32
  %i.ew = add i32 %i.ed, %i.ev
  %i.ex = trunc i64 %i.ee to i32
  %i.ey = sub i32 %i.ew, %i.ex
  %.not.i704.i1051 = icmp slt i64 %i.ek, 4
  br label %bb.p

bb.p:                                             ; preds = %bb.dd, %.lr.ph1546.i
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.dd ], [ %i.ey, %.lr.ph1546.i ] ; 2 uses
  %i.ez = phi i32 [ %i.fe, %bb.dd ], [ %.promoted.i, %.lr.ph1546.i ] ; 4 uses
  %.09871545.i = phi ptr [ %i.vl, %bb.dd ], [ %.0977.ph1827.i, %.lr.ph1546.i ] ; 15 uses
  %i.fa = zext i32 %indvars.iv to i64             ; 3 uses
  %i.fb = ptrtoint ptr %.09871545.i to i64
  %i.fc = sub i64 %i.fb, %i.ee                    ; 2 uses
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = add i32 %i.ed, %i.fd                    ; 9 uses
  %i.ff = icmp ugt i32 %i.eg, %i.fe               ; 2 uses
  %i.fg = add i32 %i.fe, -65535
  %i.fh = select i1 %i.ff, i32 %i.ef, i32 %i.fg   ; 5 uses
  %.val585.i = load i32, ptr %.09871545.i, align 1, !tbaa !28 ; 18 uses
  %i.fi = icmp ult i32 %i.ez, %i.fe
  br i1 %i.fi, label %.lr.ph.preheader.i, label %LZ4HC_Insert.exit.i.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.fj = zext i32 %i.ez to i64                   ; 6 uses
  %i.fk = sub nsw i64 %i.fa, %i.fj
  %xtraiter1322 = and i64 %i.fk, 1
  %lcmp.mod1323.not = icmp eq i64 %xtraiter1322, 0
  br i1 %lcmp.mod1323.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %gep.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %i.fj
  %.val592.i.prol = load i32, ptr %gep.i.prol, align 1, !tbaa !28
  %i.fl = mul i32 %.val592.i.prol, -1640531535
  %i.fm = lshr i32 %i.fl, 17
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !29
  %i.fq = sub i32 %i.ez, %i.fp
  %i.fr = tail call i32 @llvm.umin.i32(i32 %i.fq, i32 65535)
  %i.fs = trunc nuw i32 %i.fr to i16
  %i.ft = and i64 %i.fj, 65535
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.ft
  store i16 %i.fs, ptr %i.fu, align 2, !tbaa !40
  store i32 %i.ez, ptr %i.fo, align 4, !tbaa !29
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.fj, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.fj, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.fv = add nsw i64 %i.fa, -1
  %i.fw = icmp eq i64 %i.fv, %i.fj
  br i1 %i.fw, label %LZ4HC_Insert.exit.i.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %.val592.i = load i32, ptr %gep.i, align 1, !tbaa !28
  %i.fx = mul i32 %.val592.i, -1640531535
  %i.fy = lshr i32 %i.fx, 17
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !29
  %i.gc = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.gd = sub i32 %i.gc, %i.gb
  %i.ge = tail call i32 @llvm.umin.i32(i32 %i.gd, i32 65535)
  %i.gf = trunc nuw i32 %i.ge to i16
  %i.gg = and i64 %indvars.iv.i, 65535
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gg
  store i16 %i.gf, ptr %i.gh, align 2, !tbaa !40
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !29
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %.val592.i.1 = load i32, ptr %gep.i.1, align 1, !tbaa !28
  %i.gi = mul i32 %.val592.i.1, -1640531535
  %i.gj = lshr i32 %i.gi, 17
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gk ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !29
  %i.gn = trunc nuw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.go = sub i32 %i.gn, %i.gm
  %i.gp = tail call i32 @llvm.umin.i32(i32 %i.go, i32 65535)
  %i.gq = trunc nuw i32 %i.gp to i16
  %i.gr = and i64 %indvars.iv.next.i, 65535
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %i.gr
  store i16 %i.gq, ptr %i.gs, align 2, !tbaa !40
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !29
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.i.1, %i.fa
  br i1 %exitcond.not.1, label %LZ4HC_Insert.exit.i.loopexit.i, label %.lr.ph.i, !llvm.loop !1

LZ4HC_Insert.exit.i.loopexit.i:                   ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.val594.pre.i = load i32, ptr %.09871545.i, align 1, !tbaa !28
  br label %LZ4HC_Insert.exit.i.i

LZ4HC_Insert.exit.i.i:                            ; preds = %LZ4HC_Insert.exit.i.loopexit.i, %bb.p
  %.val594.i = phi i32 [ %.val594.pre.i, %LZ4HC_Insert.exit.i.loopexit.i ], [ %.val585.i, %bb.p ]
  store i32 %i.fe, ptr %i.dq, align 8, !tbaa !43
  %i.gt = mul i32 %.val594.i, -1640531535
  %i.gu = lshr i32 %i.gt, 17
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !29 ; 2 uses
  %i.gy = add i64 %i.fc, %i.ei
  %i.gz = icmp uge i32 %i.gx, %i.fh
  %i.ha = select i1 %i.gz, i1 %i.dr, i1 false
  br i1 %i.ha, label %.lr.ph1508.i, label %.thread1064.i

.lr.ph1508.i:                                     ; preds = %LZ4HC_Insert.exit.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.09871545.i, i64 4 ; 9 uses
  %i.hc = icmp ult ptr %i.hb, %i.dj               ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.09871545.i, i64 12 ; 2 uses
  %i.he = ptrtoint ptr %i.hb to i64               ; 5 uses
  %i.hf = and i32 %.val585.i, 65535
  %i.hg = lshr i32 %.val585.i, 16
  %i.hh = icmp eq i32 %i.hf, %i.hg
  %i.hi = and i32 %.val585.i, 255
  %i.hj = lshr i32 %.val585.i, 24
  %i.hk = icmp eq i32 %i.hi, %i.hj
  %i.hl = and i1 %i.hh, %i.hk
  %i.hm = zext i32 %.val585.i to i64
  %i.hn = mul nuw i64 %i.hm, 4294967297           ; 6 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.cm, %.lr.ph1508.i
  %.0.i1151507.i = phi i32 [ 3, %.lr.ph1508.i ], [ %.16.i1061.i, %bb.cm ] ; 9 uses
  %.0348.i1505.i = phi i32 [ 0, %.lr.ph1508.i ], [ %.16364.i1059.i, %bb.cm ] ; 6 uses
  %.0371.i1504.i = phi i64 [ 0, %.lr.ph1508.i ], [ %.3374.i1057.i, %bb.cm ] ; 3 uses
  %.0376.i1503.i = phi i32 [ 0, %.lr.ph1508.i ], [ %.3379.i1055.i, %bb.cm ] ; 3 uses
  %.0381.i1502.i = phi i32 [ %i.gx, %.lr.ph1508.i ], [ %.15396.i.i, %bb.cm ] ; 9 uses
  %.0403.i1501.i = phi i32 [ %.sroa.04.4.extract.trunc.i.i, %.lr.ph1508.i ], [ %i.ho, %bb.cm ] ; 2 uses
  %i.ho = add nsw i32 %.0403.i1501.i, -1          ; 4 uses
  %i.hp = sub i32 %i.fe, %.0381.i1502.i           ; 2 uses
  %.not430.i.i = icmp ult i32 %.0381.i1502.i, %i.ed
  br i1 %.not430.i.i, label %bb.ag, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hq = sub nuw i32 %.0381.i1502.i, %i.ed
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.hr ; 4 uses
  %i.ht = sext i32 %.0.i1151507.i to i64          ; 2 uses
  %i.hu = getelementptr inbounds i8, ptr %.09871545.i, i64 %i.ht
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -1
  %.val648.i = load i16, ptr %i.hv, align 1, !tbaa !38
  %i.hw = getelementptr inbounds i8, ptr %i.hs, i64 %i.ht
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -1
  %.val647.i = load i16, ptr %i.hx, align 1, !tbaa !38
  %i.hy = icmp eq i16 %.val648.i, %.val647.i
end_hunk_0
begin_hunk_1_@LZ4HC_compress_generic:bb.a
  %.1339.i.ph.i = phi ptr [ %.0338.i.ph1829.i, %.preheader1356.i ], [ %.3341.i.i, %bb.nb ] ; 3 uses
  %.1337.i.ph.i = phi ptr [ %.0336.i.ph1830.i, %.preheader1356.i ], [ %.7.i.i, %bb.nb ]
  %.0335.i.ph.i = phi ptr [ %.09871545.i, %.preheader1356.i ], [ %.7.i.i, %bb.nb ] ; 2 uses
  %i.btl = ashr i64 %.sroa.0232.0.i.ph.i, 32
  br label %bb.de

bb.nc:                                            ; preds = %bb.mm
  %i.btm = icmp ult ptr %.5.i.i, %i.bwc
  br i1 %i.btm, label %bb.nd, label %bb.ng

bb.nd:                                            ; preds = %bb.nc
  %i.btn = ptrtoint ptr %.5.i.i to i64            ; 2 uses
  %i.bto = sub i64 %i.btn, %i.bvy                 ; 3 uses
  %i.btp = icmp slt i64 %i.bto, 18
  br i1 %i.btp, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  %i.btq = getelementptr inbounds i8, ptr %i.asq, i64 -4
  %i.btr = icmp ugt ptr %i.bwa, %i.btq
  %i.bts = trunc i64 %i.bto to i32
  %i.btt = add i32 %.sroa.090.sroa.12.3.i.i, -4
  %i.btu = add i32 %i.btt, %i.bts
  %.sroa.0162.sroa.14.5.i.i = select i1 %i.btr, i32 %i.btu, i32 %spec.store.select.i.i ; 2 uses
  %.neg362.i.i = sub i64 %i.bvy, %i.btn
  %.neg363.i.i = trunc i64 %.neg362.i.i to i32
  %i.btv = add i32 %.sroa.0162.sroa.14.5.i.i, %.neg363.i.i
  %i.btw = tail call i32 @llvm.smax.i32(i32 %i.btv, i32 0) ; 2 uses
  %.sroa.090.sroa.12.6.i.i = sub nsw i32 %.sroa.090.sroa.12.3.i.i, %i.btw
  %.8.i.idx.i = zext nneg i32 %i.btw to i64
  %.8.i.i = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 %.8.i.idx.i
  br label %bb.ng

bb.nf:                                            ; preds = %bb.nd
  %i.btx = trunc i64 %i.bto to i32
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %bb.ne, %bb.nc
  %.sroa.0162.sroa.14.6.i.i = phi i32 [ %.sroa.0162.sroa.14.5.i.i, %bb.ne ], [ %i.btx, %bb.nf ], [ %.sroa.0162.sroa.14.2.i.ph.i, %bb.nc ] ; 3 uses
  %.sroa.090.sroa.12.7.i.i = phi i32 [ %.sroa.090.sroa.12.6.i.i, %bb.ne ], [ %.sroa.090.sroa.12.3.i.i, %bb.nf ], [ %.sroa.090.sroa.12.3.i.i, %bb.nc ]
  %.9.i.i = phi ptr [ %.8.i.i, %bb.ne ], [ %.5.i.i, %bb.nf ], [ %.5.i.i, %bb.nc ]
  %i.bty = getelementptr i8, ptr %.5.ph.i, i64 1  ; 4 uses
  %i.btz = ptrtoint ptr %.4981.ph.i to i64        ; 2 uses
  %i.bua = sub i64 %i.bvy, %i.btz                 ; 7 uses
  %i.bub = udiv i64 %i.bua, 255
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bty, i64 %i.bub
  %i.bud = getelementptr inbounds nuw i8, ptr %i.buc, i64 %i.bua
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 8
  %i.buf = icmp ugt ptr %i.bue, %spec.select.i.i
  %or.cond.i49.i = select i1 %.not.i47.i, i1 %i.buf, i1 false
  br i1 %or.cond.i49.i, label %LZ4HC_encodeSequence.exit.i, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bug = icmp ugt i64 %i.bua, 14
  br i1 %i.bug, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.buh = add i64 %i.bua, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bui = icmp ugt i64 %i.buh, 254
  br i1 %i.bui, label %.lr.ph1726.preheader.i, label %._crit_edge1727.i

.lr.ph1726.preheader.i:                           ; preds = %bb.ni
  %i.buj = add i64 %i.bvy, -270
  %i.buk = sub i64 %i.buj, %i.btz                 ; 2 uses
  %i.bul = udiv i64 %i.buk, 255                   ; 3 uses
  %i.bum = add nuw nsw i64 %i.bul, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bty, i8 -1, i64 %i.bum, i1 false), !tbaa !39
  %scevgep.i = getelementptr i8, ptr %.5.ph.i, i64 2
  %scevgep2121.i = getelementptr i8, ptr %scevgep.i, i64 %i.bul
  %.neg2463.i = mul i64 %i.bul, -255
  %i.bun = add i64 %.neg2463.i, %i.buk
  br label %._crit_edge1727.i

._crit_edge1727.i:                                ; preds = %.lr.ph1726.preheader.i, %bb.ni
  %.16.lcssa.i = phi ptr [ %i.bty, %bb.ni ], [ %scevgep2121.i, %.lr.ph1726.preheader.i ] ; 2 uses
  %.0.i56.lcssa.i = phi i64 [ %i.buh, %bb.ni ], [ %i.bun, %.lr.ph1726.preheader.i ]
  %i.buo = trunc nuw i64 %.0.i56.lcssa.i to i8
  %i.bup = getelementptr inbounds nuw i8, ptr %.16.lcssa.i, i64 1
  store i8 %i.buo, ptr %.16.lcssa.i, align 1, !tbaa !39
  br label %bb.nk

bb.nj:                                            ; preds = %bb.nh
  %.tr.i50.i = trunc nuw nsw i64 %i.bua to i8
  %i.buq = shl nuw i8 %.tr.i50.i, 4
  store i8 %i.buq, ptr %.5.ph.i, align 1, !tbaa !39
  br label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %._crit_edge1727.i
  %.12.i = phi ptr [ %i.bup, %._crit_edge1727.i ], [ %i.bty, %bb.nj ] ; 3 uses
  %i.bur = getelementptr inbounds nuw i8, ptr %.12.i, i64 %i.bua ; 3 uses
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nl, %bb.nk
  %.09.i109.i = phi ptr [ %.12.i, %bb.nk ], [ %i.but, %bb.nl ] ; 2 uses
  %.0.i110.i = phi ptr [ %.4981.ph.i, %bb.nk ], [ %i.buu, %bb.nl ] ; 2 uses
  %i.bus = load i64, ptr %.0.i110.i, align 1
  store i64 %i.bus, ptr %.09.i109.i, align 1
  %i.but = getelementptr inbounds nuw i8, ptr %.09.i109.i, i64 8 ; 2 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %.0.i110.i, i64 8
  %i.buv = icmp ult ptr %i.but, %i.bur
  br i1 %i.buv, label %bb.nl, label %LZ4_wildCopy8.exit111.i, !llvm.loop !7

LZ4_wildCopy8.exit111.i:                          ; preds = %bb.nl
  %i.buw = trunc i32 %.sroa.0162.sroa.0.2.i.ph.i to i16
  store i16 %i.buw, ptr %i.bur, align 1, !tbaa !38
  %i.bux = getelementptr i8, ptr %i.bur, i64 2    ; 4 uses
  %i.buy = sext i32 %.sroa.0162.sroa.14.6.i.i to i64 ; 4 uses
  %i.buz = add nsw i64 %i.buy, -4                 ; 3 uses
  %i.bva = udiv i64 %i.buz, 255
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bux, i64 %i.bva
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bvb, i64 6
  %i.bvd = icmp ugt ptr %i.bvc, %spec.select.i.i
  %or.cond64.i52.i = select i1 %.not.i47.i, i1 %i.bvd, i1 false
  br i1 %or.cond64.i52.i, label %LZ4HC_encodeSequence.exit.i, label %bb.nm

bb.nm:                                            ; preds = %LZ4_wildCopy8.exit111.i
  %i.bve = icmp ugt i64 %i.buz, 14
  br i1 %i.bve, label %bb.nn, label %bb.nq

bb.nn:                                            ; preds = %bb.nm
  %i.bvf = load i8, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bvg = add i8 %i.bvf, 15
  store i8 %i.bvg, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bvh = add nsw i64 %i.buy, -19                ; 2 uses
  %i.bvi = icmp ugt i64 %i.bvh, 509
  br i1 %i.bvi, label %.lr.ph1733.preheader.i, label %._crit_edge1734.i

.lr.ph1733.preheader.i:                           ; preds = %bb.nn
  %i.bvj = add nsw i64 %i.buy, -529               ; 2 uses
  %i.bvk = udiv i64 %i.bvj, 510                   ; 2 uses
  %i.bvl = shl nuw nsw i64 %i.bvk, 1              ; 2 uses
  %i.bvm = add nuw nsw i64 %i.bvl, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bux, i8 -1, i64 %i.bvm, i1 false), !tbaa !39
  %scevgep2122.i = getelementptr i8, ptr %.12.i, i64 4
  %i.bvn = getelementptr i8, ptr %scevgep2122.i, i64 %i.bua
  %scevgep2123.i = getelementptr i8, ptr %i.bvn, i64 %i.bvl
  %.neg2464.i = mul i64 %i.bvk, -510
  %i.bvo = add i64 %.neg2464.i, %i.bvj
  br label %._crit_edge1734.i

._crit_edge1734.i:                                ; preds = %.lr.ph1733.preheader.i, %bb.nn
  %.14.lcssa.i = phi ptr [ %i.bux, %bb.nn ], [ %scevgep2123.i, %.lr.ph1733.preheader.i ] ; 3 uses
  %.050.i54.lcssa.i = phi i64 [ %i.bvh, %bb.nn ], [ %i.bvo, %.lr.ph1733.preheader.i ] ; 3 uses
  %i.bvp = icmp samesign ugt i64 %.050.i54.lcssa.i, 254
  br i1 %i.bvp, label %bb.no, label %bb.np

bb.no:                                            ; preds = %._crit_edge1734.i
  %i.bvq = add nsw i64 %.050.i54.lcssa.i, -255
  %i.bvr = getelementptr inbounds nuw i8, ptr %.14.lcssa.i, i64 1
  store i8 -1, ptr %.14.lcssa.i, align 1, !tbaa !39
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %._crit_edge1734.i
  %.15.i = phi ptr [ %i.bvr, %bb.no ], [ %.14.lcssa.i, %._crit_edge1734.i ] ; 2 uses
  %.1.i55.i = phi i64 [ %i.bvq, %bb.no ], [ %.050.i54.lcssa.i, %._crit_edge1734.i ]
  %i.bvs = trunc nuw i64 %.1.i55.i to i8
  %i.bvt = getelementptr inbounds nuw i8, ptr %.15.i, i64 1
  store i8 %i.bvs, ptr %.15.i, align 1, !tbaa !39
  br label %bb.nr

bb.nq:                                            ; preds = %bb.nm
  %i.bvu = trunc nuw nsw i64 %i.buz to i8
  %i.bvv = load i8, ptr %.5.ph.i, align 1, !tbaa !39
  %i.bvw = add i8 %i.bvv, %i.bvu
  store i8 %i.bvw, ptr %.5.ph.i, align 1, !tbaa !39
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %bb.np
  %.13.i = phi ptr [ %i.bvt, %bb.np ], [ %i.bux, %bb.nq ]
  %i.bvx = getelementptr inbounds i8, ptr %.4991.ph.i, i64 %i.buy
  %.sroa.090.sroa.0.0.extract.trunc131.i.i = trunc nuw i64 %.sroa.051.sroa.0.0.i.i to i32
  br label %.outer.i

.outer.i:                                         ; preds = %bb.nr, %.preheader1355.i
  %.4991.ph.i = phi ptr [ %.3990.i, %.preheader1355.i ], [ %.9.i.i, %bb.nr ] ; 11 uses
  %.4981.ph.i = phi ptr [ %.1978.ph.i, %.preheader1355.i ], [ %i.bvx, %bb.nr ] ; 12 uses
  %.5.ph.i = phi ptr [ %.1.ph.i, %.preheader1355.i ], [ %.13.i, %bb.nr ] ; 30 uses
  %.sroa.0162.sroa.14.2.i.ph.i = phi i32 [ %.sroa.0162.sroa.14.1.i.le.i, %.preheader1355.i ], [ %.sroa.090.sroa.12.7.i.i, %bb.nr ] ; 6 uses
  %.sroa.0162.sroa.0.2.i.ph.i = phi i32 [ %.sroa.0162.sroa.0.1.i.le.i, %.preheader1355.i ], [ %.sroa.090.sroa.0.1.i.i, %bb.nr ] ; 9 uses
  %.sroa.090.sroa.12.1.i.ph.i = phi i32 [ %.sroa.090.sroa.12.0.i.i, %.preheader1355.i ], [ %.sroa.051.sroa.8.0.i.i, %bb.nr ]
  %.sroa.090.sroa.0.1.i.ph.i = phi i32 [ %.sroa.090.sroa.0.0.i.i, %.preheader1355.i ], [ %.sroa.090.sroa.0.0.extract.trunc131.i.i, %bb.nr ]
  %.2340.i.ph.i = phi ptr [ %.1339.i.ph.i, %.preheader1355.i ], [ %.3341.i.i, %bb.nr ]
  %.3.i.ph.i = phi ptr [ %.2.i.i, %.preheader1355.i ], [ %.3341.i.i, %bb.nr ]
  %i.bvy = ptrtoint ptr %.4991.ph.i to i64        ; 12 uses
  %spec.store.select.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.0162.sroa.14.2.i.ph.i, i32 18) ; 3 uses
  %i.bvz = sext i32 %spec.store.select.i.i to i64
  %i.bwa = getelementptr inbounds i8, ptr %.4991.ph.i, i64 %i.bvz ; 2 uses
  %i.bwb = sext i32 %.sroa.0162.sroa.14.2.i.ph.i to i64 ; 4 uses
  %i.bwc = getelementptr inbounds i8, ptr %.4991.ph.i, i64 %i.bwb ; 7 uses
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bwc, i64 3
  br label %bb.hp

.loopexit.i:                                      ; preds = %.outer1361.backedge.i, %bb.dd, %LZ4HC_encodeSequence.exit87.i, %bb.o
  %.3980.i = phi ptr [ %1, %bb.o ], [ %i.cal, %LZ4HC_encodeSequence.exit87.i ], [ %.0977.ph1827.i, %bb.dd ], [ %.0987.ph.be.i, %.outer1361.backedge.i ] ; 3 uses
  %.2.i = phi ptr [ %2, %bb.o ], [ %.34.i, %LZ4HC_encodeSequence.exit87.i ], [ %.0976.ph1828.i, %bb.dd ], [ %.0976.ph.be.i, %.outer1361.backedge.i ] ; 3 uses
  %i.bwe = ptrtoint ptr %i.di to i64
  %i.bwf = ptrtoint ptr %.3980.i to i64
  %i.bwg = sub i64 %i.bwe, %i.bwf                 ; 3 uses
  %i.bwh = add i64 %i.bwg, 240
  %i.bwi = udiv i64 %i.bwh, 255
  %7 = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 5
  %spec.select375.i.i = select i1 %i.cv, ptr %7, ptr %i.dm ; 2 uses
  %.not371.i.i = icmp ne i32 %6, 0
  %i.bwj = getelementptr i8, ptr %.2.i, i64 %i.bwi
  %i.bwk = getelementptr i8, ptr %i.bwj, i64 1
  %i.bwl = getelementptr i8, ptr %i.bwk, i64 %i.bwg
  %i.bwm = icmp ugt ptr %i.bwl, %spec.select375.i.i
  %or.cond.i = select i1 %.not371.i.i, i1 %i.bwm, i1 false
  br i1 %or.cond.i, label %bb.ns, label %bb.nt

.thread1281.i:                                    ; preds = %bb.nx, %bb.nw
  %i.bwn = ptrtoint ptr %i.di to i64
  %i.bwo = sub i64 %i.bwn, %i.bxz                 ; 3 uses
  %i.bwp = add i64 %i.bwo, 240
  %i.bwq = udiv i64 %i.bwp, 255
  %i.bwr = getelementptr i8, ptr %.0332.i.i, i64 %i.bwq
  %i.bws = getelementptr i8, ptr %i.bwr, i64 1
  %i.bwt = getelementptr i8, ptr %i.bws, i64 %i.bwo
  %i.bwu = icmp ugt ptr %i.bwt, %i.dm
  br i1 %i.bwu, label %.thread1288.i, label %bb.nt

bb.ns:                                            ; preds = %.loopexit.i
  %i.bwv = icmp eq i32 %6, 1
  br i1 %i.bwv, label %LZ4HC_compress_hashChain.exit.thread.i, label %.thread1288.i

.thread1288.i:                                    ; preds = %bb.ns, %.thread1281.i
  %spec.select375.i128012851294.i = phi ptr [ %spec.select375.i.i, %bb.ns ], [ %i.dm, %.thread1281.i ]
  %.2127812861293.i = phi ptr [ %.2.i, %bb.ns ], [ %.0332.i.i, %.thread1281.i ] ; 2 uses
  %.3980127612871292.i = phi ptr [ %.3980.i, %bb.ns ], [ %.2979.i, %.thread1281.i ]
  %i.bww = ptrtoint ptr %spec.select375.i128012851294.i to i64
  %i.bwx = ptrtoint ptr %.2127812861293.i to i64
  %i.bwy = xor i64 %i.bwx, -1
  %i.bwz = add i64 %i.bwy, %i.bww                 ; 2 uses
  %i.bxa = add i64 %i.bwz, 241
  %i.bxb = lshr i64 %i.bxa, 8
  %i.bxc = sub i64 %i.bwz, %i.bxb
  br label %bb.nt

bb.nt:                                            ; preds = %.thread1288.i, %.thread1281.i, %.loopexit.i
  %.21279.i = phi ptr [ %.2127812861293.i, %.thread1288.i ], [ %.0332.i.i, %.thread1281.i ], [ %.2.i, %.loopexit.i ] ; 6 uses
  %.39801277.i = phi ptr [ %.3980127612871292.i, %.thread1288.i ], [ %.2979.i, %.thread1281.i ], [ %.3980.i, %.loopexit.i ] ; 2 uses
  %.0329.i.i = phi i64 [ %i.bxc, %.thread1288.i ], [ %i.bwo, %.thread1281.i ], [ %i.bwg, %.loopexit.i ] ; 7 uses
  %i.bxd = getelementptr inbounds nuw i8, ptr %.39801277.i, i64 %.0329.i.i
  %i.bxe = icmp ugt i64 %.0329.i.i, 14
  %.41847.i = getelementptr i8, ptr %.21279.i, i64 1 ; 3 uses
  br i1 %i.bxe, label %bb.nu, label %bb.nv

bb.nu:                                            ; preds = %bb.nt
  %i.bxf = add i64 %.0329.i.i, -15                ; 2 uses
  store i8 -16, ptr %.21279.i, align 1, !tbaa !39
  %i.bxg = icmp ugt i64 %i.bxf, 254
  br i1 %i.bxg, label %.lr.ph1851.preheader.i, label %._crit_edge1852.i

.lr.ph1851.preheader.i:                           ; preds = %bb.nu
  %i.bxh = add i64 %.0329.i.i, -270               ; 2 uses
  %i.bxi = udiv i64 %i.bxh, 255                   ; 3 uses
  %i.bxj = add nuw nsw i64 %i.bxi, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.41847.i, i8 -1, i64 %i.bxj, i1 false), !tbaa !39
  %scevgep2200.i = getelementptr i8, ptr %.21279.i, i64 %i.bxj
  %.neg2470.i = mul i64 %i.bxi, -255
  %i.bxk = add i64 %.neg2470.i, %i.bxh
  %i.bxl = getelementptr i8, ptr %.21279.i, i64 %i.bxi
  %scevgep2201.i = getelementptr i8, ptr %i.bxl, i64 2
  br label %._crit_edge1852.i

._crit_edge1852.i:                                ; preds = %.lr.ph1851.preheader.i, %bb.nu
  %.21279.pn.lcssa.i = phi ptr [ %.21279.i, %bb.nu ], [ %scevgep2200.i, %.lr.ph1851.preheader.i ]
  %.0.i39.lcssa.i = phi i64 [ %i.bxf, %bb.nu ], [ %i.bxk, %.lr.ph1851.preheader.i ]
  %.4.lcssa.i = phi ptr [ %.41847.i, %bb.nu ], [ %scevgep2201.i, %.lr.ph1851.preheader.i ]
  %i.bxm = trunc nuw i64 %.0.i39.lcssa.i to i8
  %i.bxn = getelementptr inbounds nuw i8, ptr %.21279.pn.lcssa.i, i64 2
  store i8 %i.bxm, ptr %.4.lcssa.i, align 1, !tbaa !39
  br label %.critedge.i.i

bb.nv:                                            ; preds = %bb.nt
  %.0329.tr.i.i = trunc nuw nsw i64 %.0329.i.i to i8
  %i.bxo = shl nuw i8 %.0329.tr.i.i, 4
  store i8 %i.bxo, ptr %.21279.i, align 1, !tbaa !39
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.nv, %._crit_edge1852.i
  %.3.i = phi ptr [ %i.bxn, %._crit_edge1852.i ], [ %.41847.i, %bb.nv ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.3.i, ptr align 1 %.39801277.i, i64 %.0329.i.i, i1 false)
  %i.bxp = getelementptr inbounds nuw i8, ptr %.3.i, i64 %.0329.i.i
  %i.bxq = ptrtoint ptr %i.bxd to i64
  %i.bxr = ptrtoint ptr %1 to i64
  %i.bxs = sub i64 %i.bxq, %i.bxr
  %i.bxt = trunc i64 %i.bxs to i32
  store i32 %i.bxt, ptr %3, align 4, !tbaa !29
  %i.bxu = ptrtoint ptr %i.bxp to i64
  %i.bxv = ptrtoint ptr %2 to i64
  %i.bxw = sub i64 %i.bxu, %i.bxv
  %i.bxx = trunc i64 %i.bxw to i32
  br label %LZ4HC_compress_hashChain.exit.i

LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i: ; preds = %LZ4_wildCopy8.exit.i
  %.sroa.0162.sroa.0.0.i.le1638.le1823.i = trunc i64 %.sroa.0162.sroa.0.0.in.i.i to i32
  br label %LZ4HC_encodeSequence.exit.i

LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i: ; preds = %bb.hd
  %.sroa.0162.sroa.0.0.i.le1638.le.i = trunc i64 %.sroa.0162.sroa.0.0.in.i.i to i32
  br label %LZ4HC_encodeSequence.exit.i

LZ4HC_encodeSequence.exit.i:                      ; preds = %LZ4_wildCopy8.exit108.i, %bb.mb, %LZ4_wildCopy8.exit105.i, %bb.lq, %LZ4_wildCopy8.exit114.i, %bb.mq, %LZ4_wildCopy8.exit111.i, %bb.ng, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i
  %.2989.i = phi ptr [ %.1988.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.4991.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.1988.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.4991.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.4991.ph.i, %bb.ng ], [ %.4991.ph.i, %bb.mq ], [ %.4991.ph.i, %bb.lq ], [ %.5.i.i, %bb.mb ], [ %.4991.ph.i, %LZ4_wildCopy8.exit105.i ], [ %.5.i.i, %LZ4_wildCopy8.exit108.i ] ; 2 uses
  %.2979.i = phi ptr [ %.1978.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.4981.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.1978.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.4981.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.4981.ph.i, %bb.ng ], [ %.4981.ph.i, %bb.mq ], [ %.4981.ph.i, %bb.lq ], [ %i.bpc, %bb.mb ], [ %.4981.ph.i, %LZ4_wildCopy8.exit105.i ], [ %i.bpc, %LZ4_wildCopy8.exit108.i ] ; 4 uses
  %.sroa.0162.sroa.14.7.i.i = phi i32 [ %.sroa.0162.sroa.14.0.i.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.sroa.0162.sroa.14.6.i.i, %LZ4_wildCopy8.exit111.i ], [ %.sroa.0162.sroa.14.0.i.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.sroa.0162.sroa.14.2.i.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.sroa.0162.sroa.14.6.i.i, %bb.ng ], [ %.sroa.0162.sroa.14.2.i.ph.i, %bb.mq ], [ %.sroa.0162.sroa.14.3.i.i, %bb.lq ], [ %.sroa.090.sroa.12.3.i.i, %bb.mb ], [ %.sroa.0162.sroa.14.3.i.i, %LZ4_wildCopy8.exit105.i ], [ %.sroa.090.sroa.12.3.i.i, %LZ4_wildCopy8.exit108.i ]
  %.sroa.0162.sroa.0.3.i.i = phi i32 [ %.sroa.0162.sroa.0.0.i.le1638.le.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.sroa.0162.sroa.0.2.i.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.sroa.0162.sroa.0.0.i.le1638.le1823.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.sroa.0162.sroa.0.2.i.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.sroa.0162.sroa.0.2.i.ph.i, %bb.ng ], [ %.sroa.0162.sroa.0.2.i.ph.i, %bb.mq ], [ %.sroa.0162.sroa.0.2.i.ph.i, %bb.lq ], [ %.sroa.090.sroa.0.1.i.i, %bb.mb ], [ %.sroa.0162.sroa.0.2.i.ph.i, %LZ4_wildCopy8.exit105.i ], [ %.sroa.090.sroa.0.1.i.i, %LZ4_wildCopy8.exit108.i ]
  %.0332.i.i = phi ptr [ %.1.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit1793.i ], [ %.5.ph.i, %LZ4_wildCopy8.exit111.i ], [ %.1.ph.i, %LZ4HC_encodeSequence.exit.loopexit1360.split.loop.exit.i ], [ %.5.ph.i, %LZ4_wildCopy8.exit114.i ], [ %.5.ph.i, %bb.ng ], [ %.5.ph.i, %bb.mq ], [ %.5.ph.i, %bb.lq ], [ %.25.i, %bb.mb ], [ %.5.ph.i, %LZ4_wildCopy8.exit105.i ], [ %.25.i, %LZ4_wildCopy8.exit108.i ] ; 12 uses
  br i1 %i.cv, label %bb.nw, label %LZ4HC_compress_hashChain.exit.thread.i

bb.nw:                                            ; preds = %LZ4HC_encodeSequence.exit.i
  %i.bxy = ptrtoint ptr %.2989.i to i64           ; 3 uses
  %i.bxz = ptrtoint ptr %.2979.i to i64           ; 4 uses
  %i.bya = sub i64 %i.bxy, %i.bxz                 ; 6 uses
  %i.byb = add i64 %i.bya, 240
  %i.byc = udiv i64 %i.byb, 255
  %i.byd = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 2 uses
  %i.bye = getelementptr i8, ptr %.0332.i.i, i64 %i.byc
  %i.byf = getelementptr i8, ptr %i.bye, i64 1
  %i.byg = getelementptr i8, ptr %i.byf, i64 %i.bya ; 3 uses
  %.not370.i.i = icmp ugt ptr %i.byg, %i.byd
  br i1 %.not370.i.i, label %.thread1281.i, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.byh = ptrtoint ptr %i.byd to i64
  %i.byi = ptrtoint ptr %i.byg to i64
  %i.byj = sub i64 %i.byh, %i.byi
  %i.byk = mul i64 %i.byj, 255
  %i.byl = add i64 %i.byk, 18
  %i.bym = sext i32 %.sroa.0162.sroa.14.7.i.i to i64
  %spec.select376.i1333.i = tail call i64 @llvm.umin.i64(i64 %i.byl, i64 %i.bym)
  %i.byn = getelementptr inbounds nuw i8, ptr %i.byg, i64 2
  %i.byo = ptrtoint ptr %i.dm to i64
  %i.byp = ptrtoint ptr %i.byn to i64
  %i.byq = shl i64 %spec.select376.i1333.i, 32
  %i.byr = ashr exact i64 %i.byq, 32              ; 5 uses
  %i.bys = add i64 %i.byr, %i.byo
  %i.byt = sub i64 %i.byp, %i.bys
  %i.byu = icmp slt i64 %i.byt, -12
  br i1 %i.byu, label %bb.ny, label %.thread1281.i

bb.ny:                                            ; preds = %bb.nx
  %i.byv = getelementptr i8, ptr %.0332.i.i, i64 1 ; 3 uses
  %i.byw = icmp ugt i64 %i.bya, 14
  br i1 %i.byw, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.byx = add i64 %i.bya, -15                    ; 2 uses
  store i8 -16, ptr %.0332.i.i, align 1, !tbaa !39
  %i.byy = icmp ugt i64 %i.byx, 254
  br i1 %i.byy, label %.lr.ph1836.preheader.i, label %._crit_edge1837.i

.lr.ph1836.preheader.i:                           ; preds = %bb.nz
  %i.byz = add i64 %i.bxy, -270
  %i.bza = sub i64 %i.byz, %i.bxz                 ; 2 uses
  %i.bzb = udiv i64 %i.bza, 255                   ; 3 uses
  %i.bzc = add nuw nsw i64 %i.bzb, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.byv, i8 -1, i64 %i.bzc, i1 false), !tbaa !39
  %i.bzd = getelementptr i8, ptr %.0332.i.i, i64 %i.bzb
  %scevgep2198.i = getelementptr i8, ptr %i.bzd, i64 2
  %.neg2468.i = mul i64 %i.bzb, -255
  %i.bze = add i64 %.neg2468.i, %i.bza
  br label %._crit_edge1837.i

._crit_edge1837.i:                                ; preds = %.lr.ph1836.preheader.i, %bb.nz
  %.33.lcssa.i = phi ptr [ %i.byv, %bb.nz ], [ %scevgep2198.i, %.lr.ph1836.preheader.i ] ; 2 uses
  %.0.i86.lcssa.i = phi i64 [ %i.byx, %bb.nz ], [ %i.bze, %.lr.ph1836.preheader.i ]
  %i.bzf = trunc nuw i64 %.0.i86.lcssa.i to i8
  %i.bzg = getelementptr inbounds nuw i8, ptr %.33.lcssa.i, i64 1
  store i8 %i.bzf, ptr %.33.lcssa.i, align 1, !tbaa !39
  br label %bb.ob

bb.oa:                                            ; preds = %bb.ny
  %.tr.i81.i = trunc nuw nsw i64 %i.bya to i8
  %i.bzh = shl nuw i8 %.tr.i81.i, 4
  store i8 %i.bzh, ptr %.0332.i.i, align 1, !tbaa !39
  br label %bb.ob

bb.ob:                                            ; preds = %bb.oa, %._crit_edge1837.i
  %.30.i = phi ptr [ %i.bzg, %._crit_edge1837.i ], [ %i.byv, %bb.oa ] ; 3 uses
  %i.bzi = getelementptr inbounds nuw i8, ptr %.30.i, i64 %i.bya ; 3 uses
  br label %bb.oc

bb.oc:                                            ; preds = %bb.oc, %bb.ob
  %.09.i100.i = phi ptr [ %.30.i, %bb.ob ], [ %i.bzk, %bb.oc ] ; 2 uses
  %.0.i101.i = phi ptr [ %.2979.i, %bb.ob ], [ %i.bzl, %bb.oc ] ; 2 uses
  %i.bzj = load i64, ptr %.0.i101.i, align 1
  store i64 %i.bzj, ptr %.09.i100.i, align 1
  %i.bzk = getelementptr inbounds nuw i8, ptr %.09.i100.i, i64 8 ; 2 uses
  %i.bzl = getelementptr inbounds nuw i8, ptr %.0.i101.i, i64 8
  %i.bzm = icmp ult ptr %i.bzk, %i.bzi
  br i1 %i.bzm, label %bb.oc, label %LZ4_wildCopy8.exit102.i, !llvm.loop !7

LZ4_wildCopy8.exit102.i:                          ; preds = %bb.oc
  %i.bzn = trunc i32 %.sroa.0162.sroa.0.3.i.i to i16
  store i16 %i.bzn, ptr %i.bzi, align 1, !tbaa !38
  %i.bzo = getelementptr i8, ptr %i.bzi, i64 2    ; 3 uses
  %i.bzp = add nsw i64 %i.byr, -4                 ; 2 uses
  %i.bzq = icmp ugt i64 %i.bzp, 14
  br i1 %i.bzq, label %bb.od, label %bb.og

end_hunk_1
begin_hunk_2_@LZ4_sizeofStreamStateHC
define noundef i32 @LZ4_sizeofStreamStateHC() local_unnamed_addr #2 {
bb.a:
  ret i32 262200
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define range(i32 0, 2) i32 @LZ4_resetStreamStateHC(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not.i = icmp eq i64 %i.c, 0
  %or.cond10.i = and i1 %i.a, %.not.i
  br i1 %or.cond10.i, label %LZ4HC_init_internal.exit, label %LZ4_initStreamHC.exit.thread

LZ4HC_init_internal.exit:                         ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(262192) %0, i8 0, i64 262192, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 262180
  store i16 9, ptr %i.d, align 4, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 262176
  store i32 65536, ptr %i.h, align 8, !tbaa !43
  store ptr %1, ptr %i.f, align 8, !tbaa !25
  store ptr %1, ptr %i.e, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 262160
  store ptr %1, ptr %i.i, align 8, !tbaa !44
  store i32 65536, ptr %i.g, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 262172
  store i32 65536, ptr %i.j, align 4, !tbaa !45
  br label %LZ4_initStreamHC.exit.thread

LZ4_initStreamHC.exit.thread:                     ; preds = %bb.a, %LZ4HC_init_internal.exit
  %.0 = phi i32 [ 0, %LZ4HC_init_internal.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @LZ4_createHC(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(262200) ptr @calloc(i64 noundef 1, i64 noundef 262200) #20 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %LZ4_createStreamHC.exit.thread, label %LZ4HC_init_internal.exit

LZ4HC_init_internal.exit:                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 262180
  store i16 9, ptr %i.c, align 4, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 262168
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 262152
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 262144
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 262176
  store i32 65536, ptr %i.g, align 8, !tbaa !43
  store ptr %0, ptr %i.e, align 8, !tbaa !25
  store ptr %0, ptr %i.f, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 262160
  store ptr %0, ptr %i.h, align 8, !tbaa !44
  store i32 65536, ptr %i.d, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 262172
  store i32 65536, ptr %i.i, align 4, !tbaa !45
  br label %LZ4_createStreamHC.exit.thread

LZ4_createStreamHC.exit.thread:                   ; preds = %bb.a, %LZ4HC_init_internal.exit
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i32 @LZ4_freeHC(ptr noundef captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @LZ4_compressHC2_continue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !29
  %i.b = call fastcc i32 @LZ4HC_compress_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %4, i32 noundef 0)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @LZ4_compressHC2_limitedOutput_continue(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !29
  %i.b = call fastcc i32 @LZ4HC_compress_generic(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %4, i32 noundef %5, i32 noundef 1)
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define ptr @LZ4_slideInputBufferHC(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 262168 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 262180 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !46   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 262183
  %i.j = load i8, ptr %i.i, align 1, !tbaa !41
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(262192) %0, i8 0, i64 262192, i1 false)
  br label %LZ4_resetStreamHC_fast.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = add i32 %i.d, %i.p
  store i32 %i.q, ptr %i.c, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 262184
  store ptr null, ptr %i.r, align 8, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %LZ4_resetStreamHC_fast.exit

LZ4_resetStreamHC_fast.exit:                      ; preds = %bb.b, %bb.c
  %i.s = zext i32 %i.d to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.b, i64 %i.t
  %i.v = zext i32 %i.f to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = icmp slt i16 %i.h, 1
  %i.y = tail call i16 @llvm.umin.i16(i16 %i.h, i16 12)
  %i.z = select i1 %i.x, i16 9, i16 %i.y
  store i16 %i.z, ptr %i.g, align 4, !tbaa !39
  ret ptr %i.w
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LZ4HC_compress_generic_noDictCtx(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 3) %6) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = icmp eq i32 %6, 2                        ; 4 uses
  %i.h = icmp slt i32 %4, 1
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %LZ4HC_compress_generic_internal.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %3, align 4, !tbaa !29     ; 3 uses
  %i.j = icmp ugt i32 %i.i, 2113929216
  br i1 %i.j, label %LZ4HC_compress_generic_internal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.m = zext nneg i32 %i.i to i64                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store ptr %i.n, ptr %i.k, align 8, !tbaa !24
  %i.o = icmp slt i32 %5, 1
  %i.p = tail call i32 @llvm.umin.i32(i32 %5, i32 12)
  %i.q = select i1 %i.o, i32 9, i32 %i.p
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [12 x i8], ptr @k_clTable, i64 %i.r ; 2 uses
  %.sroa.04.0.copyload.i = load i64, ptr %i.s, align 4, !tbaa !29 ; 3 uses
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.04.0.copyload.i to i32
  switch i32 %.sroa.04.0.extract.trunc.i, label %bb.lu [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc i32 @LZ4MID_compress(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i32 noundef range(i32 0, 3) %6, i32 noundef 0)
  br label %LZ4HC_compress_hashChain.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.04.4.extract.shift.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.04.4.extract.trunc.i = trunc nuw i64 %.sroa.04.4.extract.shift.i to i32 ; 5 uses
  %i.u = icmp sgt i32 %.sroa.04.4.extract.trunc.i, 128 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 6 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -12 ; 31 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -5 ; 31 uses
  %i.y = sext i32 %4 to i64
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y ; 6 uses
  store i32 0, ptr %3, align 4, !tbaa !29
  %spec.select.i.idx = select i1 %i.g, i64 -5, i64 0
  %spec.select.i = getelementptr inbounds i8, ptr %i.z, i64 %spec.select.i.idx ; 11 uses
  %i.aa = icmp samesign ult i32 %i.i, 13
  br i1 %i.aa, label %.loopexit, label %.lr.ph1341.lr.ph

.lr.ph1341.lr.ph:                                 ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 15 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 262152 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 262168 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 262172 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 262160 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %i.ah = icmp sgt i32 %.sroa.04.4.extract.trunc.i, 0 ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 6 uses
  %i.aj = getelementptr inbounds i8, ptr %i.v, i64 -6 ; 6 uses
  %i.ak = ptrtoaddr ptr %i.x to i64               ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.not.i15 = icmp ne i32 %6, 0                   ; 10 uses
  br label %.lr.ph1341

.lr.ph1341:                                       ; preds = %.lr.ph1341.lr.ph, %.outer1185.backedge
  %.0336.i.ph1567 = phi ptr [ null, %.lr.ph1341.lr.ph ], [ %.0336.i.ph.be, %.outer1185.backedge ]
  %.0338.i.ph1566 = phi ptr [ null, %.lr.ph1341.lr.ph ], [ %.0338.i.ph.be, %.outer1185.backedge ]
  %.0.ph1565 = phi ptr [ %2, %.lr.ph1341.lr.ph ], [ %.0.ph.be, %.outer1185.backedge ] ; 2 uses
  %.0844.ph1564 = phi ptr [ %1, %.lr.ph1341.lr.ph ], [ %.0854.ph.be, %.outer1185.backedge ] ; 3 uses
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 12 uses
  %i.as = load i32, ptr %i.ad, align 8, !tbaa !26 ; 13 uses
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.au = load i32, ptr %i.ae, align 4, !tbaa !45 ; 6 uses
  %i.av = add i32 %i.au, 65536
  %i.aw = load ptr, ptr %i.af, align 8, !tbaa !44 ; 10 uses
  %i.ax = zext i32 %i.as to i64                   ; 3 uses
  %i.ay = zext i32 %i.au to i64
  %i.az = sub nsw i64 %i.ax, %i.ay                ; 5 uses
  %.ptr1149 = getelementptr inbounds i8, ptr %i.aw, i64 %i.az ; 2 uses
  %i.ba = sub nsw i64 0, %i.ax
  %invariant.gep = getelementptr i8, ptr %i.ar, i64 %i.ba ; 3 uses
  %i.bb = add i32 %i.as, -4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = icmp ult ptr %i.ar, %i.w
  %i.be = icmp ult i32 %i.au, %i.as
  %i.bf = ptrtoint ptr %.ptr1149 to i64
  %.promoted = load i32, ptr %i.ag, align 8, !tbaa !43
  %.not.i5542497 = icmp slt i64 %i.az, 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph1341, %LZ4HC_InsertAndGetWiderMatch.exit.thread
  %i.bg = phi i32 [ %.promoted, %.lr.ph1341 ], [ %i.bk, %LZ4HC_InsertAndGetWiderMatch.exit.thread ] ; 4 uses
  %.08541340 = phi ptr [ %.0844.ph1564, %.lr.ph1341 ], [ %i.ot, %LZ4HC_InsertAndGetWiderMatch.exit.thread ] ; 11 uses
  %i.bh = ptrtoint ptr %.08541340 to i64
  %i.bi = sub i64 %i.bh, %i.at                    ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add i32 %i.as, %i.bj                    ; 8 uses
  %i.bl = icmp ugt i32 %i.av, %i.bk
  %i.bm = add i32 %i.bk, -65535
  %i.bn = select i1 %i.bl, i32 %i.au, i32 %i.bm   ; 4 uses
  %.val456 = load i32, ptr %.08541340, align 1, !tbaa !28 ; 17 uses
  %i.bo = icmp ult i32 %i.bg, %i.bk
  br i1 %i.bo, label %.lr.ph.preheader, label %LZ4HC_Insert.exit.i

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.bp = zext i32 %i.bg to i64                   ; 6 uses
  %i.bq = zext i32 %i.bk to i64                   ; 3 uses
  %i.br = sub nsw i64 %i.bq, %i.bp
  %xtraiter = and i64 %i.br, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.bp
  %.val461.prol = load i32, ptr %gep.prol, align 1, !tbaa !28
  %i.bs = mul i32 %.val461.prol, -1640531535
  %i.bt = lshr i32 %i.bs, 17
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !29
  %i.bx = sub i32 %i.bg, %i.bw
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.bx, i32 65535)
  %i.bz = trunc nuw i32 %i.by to i16
  %i.ca = and i64 %i.bp, 65535
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ca
  store i16 %i.bz, ptr %i.cb, align 2, !tbaa !40
  store i32 %i.bg, ptr %i.bv, align 4, !tbaa !29
  %indvars.iv.next.prol = add nuw nsw i64 %i.bp, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.bp, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.cc = add nsw i64 %i.bq, -1
  %i.cd = icmp eq i64 %i.cc, %i.bp
  br i1 %i.cd, label %LZ4HC_Insert.exit.i.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %.val461 = load i32, ptr %gep, align 1, !tbaa !28
  %i.ce = mul i32 %.val461, -1640531535
  %i.cf = lshr i32 %i.ce, 17
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !29
  %i.cj = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.ck = sub i32 %i.cj, %i.ci
  %i.cl = tail call i32 @llvm.umin.i32(i32 %i.ck, i32 65535)
  %i.cm = trunc nuw i32 %i.cl to i16
  %i.cn = and i64 %indvars.iv, 65535
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.cn
  store i16 %i.cm, ptr %i.co, align 2, !tbaa !40
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %.val461.1 = load i32, ptr %gep.1, align 1, !tbaa !28
  %i.cp = mul i32 %.val461.1, -1640531535
  %i.cq = lshr i32 %i.cp, 17
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !29
  %i.cu = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.cv = sub i32 %i.cu, %i.ct
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 65535)
  %i.cx = trunc nuw i32 %i.cw to i16
  %i.cy = and i64 %indvars.iv.next, 65535
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.cy
  store i16 %i.cx, ptr %i.cz, align 2, !tbaa !40
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.da = icmp samesign ult i64 %indvars.iv.next.1, %i.bq
  br i1 %i.da, label %.lr.ph, label %LZ4HC_Insert.exit.i.loopexit, !llvm.loop !1

LZ4HC_Insert.exit.i.loopexit:                     ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.val462.pre = load i32, ptr %.08541340, align 1, !tbaa !28
  br label %LZ4HC_Insert.exit.i

LZ4HC_Insert.exit.i:                              ; preds = %LZ4HC_Insert.exit.i.loopexit, %bb.f
  %.val462 = phi i32 [ %.val462.pre, %LZ4HC_Insert.exit.i.loopexit ], [ %.val456, %bb.f ]
  store i32 %i.bk, ptr %i.ag, align 8, !tbaa !43
  %i.db = mul i32 %.val462, -1640531535
  %i.dc = lshr i32 %i.db, 17
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !29 ; 2 uses
  %i.dg = add i64 %i.bi, %i.ax
  %i.dh = icmp uge i32 %i.df, %i.bn
  %i.di = select i1 %i.dh, i1 %i.ah, i1 false
  br i1 %i.di, label %.lr.ph1329, label %LZ4HC_InsertAndGetWiderMatch.exit.thread

.lr.ph1329:                                       ; preds = %LZ4HC_Insert.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.08541340, i64 4 ; 9 uses
  %i.dk = icmp ult ptr %i.dj, %i.w                ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.08541340, i64 12 ; 2 uses
  %i.dm = ptrtoint ptr %i.dj to i64               ; 5 uses
  %i.dn = and i32 %.val456, 65535
  %i.do = lshr i32 %.val456, 16
  %i.dp = icmp eq i32 %i.dn, %i.do
  %i.dq = and i32 %.val456, 255
  %i.dr = lshr i32 %.val456, 24
  %i.ds = icmp eq i32 %i.dq, %i.dr
  %i.dt = and i1 %i.dp, %i.ds
  %i.du = zext i32 %.val456 to i64
  %i.dv = mul nuw i64 %i.du, 4294967297           ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph1329, %bb.cc
  %.0.i831328 = phi i32 [ 3, %.lr.ph1329 ], [ %.16.i928, %bb.cc ] ; 9 uses
  %.0348.i1326 = phi i32 [ 0, %.lr.ph1329 ], [ %.16364.i926, %bb.cc ] ; 6 uses
  %.0371.i1325 = phi i64 [ 0, %.lr.ph1329 ], [ %.3374.i924, %bb.cc ] ; 3 uses
  %.0376.i1324 = phi i32 [ 0, %.lr.ph1329 ], [ %.3379.i922, %bb.cc ] ; 3 uses
  %.0381.i1323 = phi i32 [ %i.df, %.lr.ph1329 ], [ %.15396.i, %bb.cc ] ; 9 uses
  %.0403.i1322 = phi i32 [ %.sroa.04.4.extract.trunc.i, %.lr.ph1329 ], [ %i.dw, %bb.cc ] ; 2 uses
  %i.dw = add nsw i32 %.0403.i1322, -1
  %i.dx = sub i32 %i.bk, %.0381.i1323             ; 2 uses
  %.not430.i = icmp ult i32 %.0381.i1323, %i.as
  br i1 %.not430.i, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dy = sub nuw i32 %.0381.i1323, %i.as
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.dz ; 4 uses
  %i.eb = sext i32 %.0.i831328 to i64             ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.08541340, i64 %i.eb
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -1
  %.val504 = load i16, ptr %i.ed, align 1, !tbaa !38
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 %i.eb
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -1
  %.val503 = load i16, ptr %i.ef, align 1, !tbaa !38
  %i.eg = icmp eq i16 %.val504, %.val503
  br i1 %i.eg, label %bb.i, label %bb.az

bb.i:                                             ; preds = %bb.h
  %.val454 = load i32, ptr %i.ea, align 1, !tbaa !28
  %i.eh = icmp eq i32 %.val454, %.val456
  br i1 %i.eh, label %bb.j, label %bb.az

bb.j:                                             ; preds = %bb.i
end_hunk_2
begin_hunk_3_@LZ4HC_compress_generic_noDictCtx:bb.a
  %.1337.i.ph = phi ptr [ %.0336.i.ph1567, %.preheader1180 ], [ %.7.i, %bb.ko ]
  %.0335.i.ph = phi ptr [ %.08541340, %.preheader1180 ], [ %.7.i, %bb.ko ] ; 2 uses
  %i.ben = ashr i64 %.sroa.0232.0.i.ph, 32
  br label %bb.cd

bb.kp:                                            ; preds = %bb.jz
  %i.beo = icmp ult ptr %.5.i, %i.bhf
  br i1 %i.beo, label %bb.kq, label %bb.kt

bb.kq:                                            ; preds = %bb.kp
  %i.bep = ptrtoint ptr %.5.i to i64              ; 2 uses
  %i.beq = sub i64 %i.bep, %i.bhb                 ; 3 uses
  %i.ber = icmp slt i64 %i.beq, 18
  br i1 %i.ber, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.bes = getelementptr inbounds i8, ptr %i.ahv, i64 -4
  %i.bet = icmp ugt ptr %i.bhd, %i.bes
  %i.beu = trunc i64 %i.beq to i32
  %i.bev = add i32 %.sroa.090.sroa.12.3.i, -4
  %i.bew = add i32 %i.bev, %i.beu
  %.sroa.0162.sroa.14.5.i = select i1 %i.bet, i32 %i.bew, i32 %spec.store.select.i ; 2 uses
  %.neg362.i = sub i64 %i.bhb, %i.bep
  %.neg363.i = trunc i64 %.neg362.i to i32
  %i.bex = add i32 %.sroa.0162.sroa.14.5.i, %.neg363.i
  %i.bey = tail call i32 @llvm.smax.i32(i32 %i.bex, i32 0) ; 2 uses
  %.sroa.090.sroa.12.6.i = sub nsw i32 %.sroa.090.sroa.12.3.i, %i.bey
  %.8.i.idx = zext nneg i32 %i.bey to i64
  %.8.i = getelementptr inbounds nuw i8, ptr %.5.i, i64 %.8.i.idx
  br label %bb.kt

bb.ks:                                            ; preds = %bb.kq
  %i.bez = trunc i64 %i.beq to i32
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr, %bb.kp
  %.sroa.0162.sroa.14.6.i = phi i32 [ %.sroa.0162.sroa.14.5.i, %bb.kr ], [ %i.bez, %bb.ks ], [ %.sroa.0162.sroa.14.2.i.ph, %bb.kp ] ; 3 uses
  %.sroa.090.sroa.12.7.i = phi i32 [ %.sroa.090.sroa.12.6.i, %bb.kr ], [ %.sroa.090.sroa.12.3.i, %bb.ks ], [ %.sroa.090.sroa.12.3.i, %bb.kp ]
  %.9.i = phi ptr [ %.8.i, %bb.kr ], [ %.5.i, %bb.ks ], [ %.5.i, %bb.kp ]
  %i.bfa = getelementptr i8, ptr %.5.ph, i64 1    ; 4 uses
  %i.bfb = ptrtoint ptr %.4848.ph to i64          ; 3 uses
  %i.bfc = sub i64 %i.bhb, %i.bfb                 ; 6 uses
  %i.bfd = udiv i64 %i.bfc, 255
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfa, i64 %i.bfd
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 %i.bfc
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 8
  %i.bfh = icmp ugt ptr %i.bfg, %spec.select.i
  %or.cond.i17 = select i1 %.not.i15, i1 %i.bfh, i1 false
  br i1 %or.cond.i17, label %LZ4HC_encodeSequence.exit, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bfi = icmp ugt i64 %i.bfc, 14
  br i1 %i.bfi, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.bfj = add i64 %i.bfc, -15                    ; 2 uses
  store i8 -16, ptr %.5.ph, align 1, !tbaa !39
  %i.bfk = icmp ugt i64 %i.bfj, 254
  br i1 %i.bfk, label %.lr.ph1463.preheader, label %._crit_edge1464

.lr.ph1463.preheader:                             ; preds = %bb.kv
  %i.bfl = add i64 %i.bhb, -270
  %i.bfm = sub i64 %i.bfl, %i.bfb                 ; 2 uses
  %i.bfn = udiv i64 %i.bfm, 255                   ; 3 uses
  %i.bfo = add nuw nsw i64 %i.bfn, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bfa, i8 -1, i64 %i.bfo, i1 false), !tbaa !39
  %scevgep = getelementptr i8, ptr %.5.ph, i64 2
  %scevgep1821 = getelementptr i8, ptr %scevgep, i64 %i.bfn
  %.neg2126 = mul i64 %i.bfn, -255
  %i.bfp = add i64 %.neg2126, %i.bfm
  br label %._crit_edge1464

._crit_edge1464:                                  ; preds = %.lr.ph1463.preheader, %bb.kv
  %.16.lcssa = phi ptr [ %i.bfa, %bb.kv ], [ %scevgep1821, %.lr.ph1463.preheader ] ; 2 uses
  %.0.i24.lcssa = phi i64 [ %i.bfj, %bb.kv ], [ %i.bfp, %.lr.ph1463.preheader ]
  %i.bfq = trunc nuw i64 %.0.i24.lcssa to i8
  %i.bfr = getelementptr inbounds nuw i8, ptr %.16.lcssa, i64 1
  store i8 %i.bfq, ptr %.16.lcssa, align 1, !tbaa !39
  br label %bb.kx

bb.kw:                                            ; preds = %bb.ku
  %.tr.i18 = trunc nuw nsw i64 %i.bfc to i8
  %i.bfs = shl nuw i8 %.tr.i18, 4
  store i8 %i.bfs, ptr %.5.ph, align 1, !tbaa !39
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %._crit_edge1464
  %.12 = phi ptr [ %i.bfr, %._crit_edge1464 ], [ %i.bfa, %bb.kw ] ; 3 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %.12, i64 %i.bfc ; 3 uses
  br label %bb.ky

bb.ky:                                            ; preds = %bb.ky, %bb.kx
  %.09.i77 = phi ptr [ %.12, %bb.kx ], [ %i.bfv, %bb.ky ] ; 2 uses
  %.0.i78 = phi ptr [ %.4848.ph, %bb.kx ], [ %i.bfw, %bb.ky ] ; 2 uses
  %i.bfu = load i64, ptr %.0.i78, align 1
  store i64 %i.bfu, ptr %.09.i77, align 1
  %i.bfv = getelementptr inbounds nuw i8, ptr %.09.i77, i64 8 ; 2 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %.0.i78, i64 8
  %i.bfx = icmp ult ptr %i.bfv, %i.bft
  br i1 %i.bfx, label %bb.ky, label %LZ4_wildCopy8.exit79, !llvm.loop !7

LZ4_wildCopy8.exit79:                             ; preds = %bb.ky
  %i.bfy = trunc i32 %.sroa.0162.sroa.0.2.i.ph to i16
  store i16 %i.bfy, ptr %i.bft, align 1, !tbaa !38
  %i.bfz = getelementptr i8, ptr %i.bft, i64 2    ; 4 uses
  %i.bga = sext i32 %.sroa.0162.sroa.14.6.i to i64 ; 4 uses
  %i.bgb = add nsw i64 %i.bga, -4                 ; 3 uses
  %i.bgc = udiv i64 %i.bgb, 255
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bgc
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 6
  %i.bgf = icmp ugt ptr %i.bge, %spec.select.i
  %or.cond64.i20 = select i1 %.not.i15, i1 %i.bgf, i1 false
  br i1 %or.cond64.i20, label %LZ4HC_encodeSequence.exit, label %bb.kz

bb.kz:                                            ; preds = %LZ4_wildCopy8.exit79
  %i.bgg = icmp ugt i64 %i.bgb, 14
  br i1 %i.bgg, label %bb.la, label %bb.ld

bb.la:                                            ; preds = %bb.kz
  %i.bgh = load i8, ptr %.5.ph, align 1, !tbaa !39
  %i.bgi = add i8 %i.bgh, 15
  store i8 %i.bgi, ptr %.5.ph, align 1, !tbaa !39
  %i.bgj = add nsw i64 %i.bga, -19                ; 2 uses
  %i.bgk = icmp ugt i64 %i.bgj, 509
  br i1 %i.bgk, label %.lr.ph1470.preheader, label %._crit_edge1471

.lr.ph1470.preheader:                             ; preds = %bb.la
  %i.bgl = add nsw i64 %i.bga, -529               ; 2 uses
  %i.bgm = udiv i64 %i.bgl, 510                   ; 2 uses
  %i.bgn = shl nuw nsw i64 %i.bgm, 1              ; 2 uses
  %i.bgo = add nuw nsw i64 %i.bgn, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bfz, i8 -1, i64 %i.bgo, i1 false), !tbaa !39
  %scevgep1822 = getelementptr i8, ptr %.12, i64 4
  %i.bgp = add i64 %i.bgn, %i.bhb
  %i.bgq = sub i64 %i.bgp, %i.bfb
  %scevgep1823 = getelementptr i8, ptr %scevgep1822, i64 %i.bgq
  %.neg2127 = mul i64 %i.bgm, -510
  %i.bgr = add i64 %.neg2127, %i.bgl
  br label %._crit_edge1471

._crit_edge1471:                                  ; preds = %.lr.ph1470.preheader, %bb.la
  %.14.lcssa = phi ptr [ %i.bfz, %bb.la ], [ %scevgep1823, %.lr.ph1470.preheader ] ; 3 uses
  %.050.i22.lcssa = phi i64 [ %i.bgj, %bb.la ], [ %i.bgr, %.lr.ph1470.preheader ] ; 3 uses
  %i.bgs = icmp samesign ugt i64 %.050.i22.lcssa, 254
  br i1 %i.bgs, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %._crit_edge1471
  %i.bgt = add nsw i64 %.050.i22.lcssa, -255
  %i.bgu = getelementptr inbounds nuw i8, ptr %.14.lcssa, i64 1
  store i8 -1, ptr %.14.lcssa, align 1, !tbaa !39
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %._crit_edge1471
  %.15 = phi ptr [ %i.bgu, %bb.lb ], [ %.14.lcssa, %._crit_edge1471 ] ; 2 uses
  %.1.i23 = phi i64 [ %i.bgt, %bb.lb ], [ %.050.i22.lcssa, %._crit_edge1471 ]
  %i.bgv = trunc nuw i64 %.1.i23 to i8
  %i.bgw = getelementptr inbounds nuw i8, ptr %.15, i64 1
  store i8 %i.bgv, ptr %.15, align 1, !tbaa !39
  br label %bb.le

bb.ld:                                            ; preds = %bb.kz
  %i.bgx = trunc nuw nsw i64 %i.bgb to i8
  %i.bgy = load i8, ptr %.5.ph, align 1, !tbaa !39
  %i.bgz = add i8 %i.bgy, %i.bgx
  store i8 %i.bgz, ptr %.5.ph, align 1, !tbaa !39
  br label %bb.le

bb.le:                                            ; preds = %bb.ld, %bb.lc
  %.13 = phi ptr [ %i.bgw, %bb.lc ], [ %i.bfz, %bb.ld ]
  %i.bha = getelementptr inbounds i8, ptr %.4858.ph, i64 %i.bga
  %.sroa.090.sroa.0.0.extract.trunc131.i = trunc nuw i64 %.sroa.051.sroa.0.0.i to i32
  br label %.outer

.outer:                                           ; preds = %.preheader1179, %bb.le
  %.4858.ph = phi ptr [ %.3857, %.preheader1179 ], [ %.9.i, %bb.le ] ; 11 uses
  %.4848.ph = phi ptr [ %.1845.ph, %.preheader1179 ], [ %i.bha, %bb.le ] ; 12 uses
  %.5.ph = phi ptr [ %.1.ph, %.preheader1179 ], [ %.13, %bb.le ] ; 30 uses
  %.sroa.0162.sroa.14.2.i.ph = phi i32 [ %.sroa.0162.sroa.14.1.i.le, %.preheader1179 ], [ %.sroa.090.sroa.12.7.i, %bb.le ] ; 6 uses
  %.sroa.0162.sroa.0.2.i.ph = phi i32 [ %.sroa.0162.sroa.0.1.i.le, %.preheader1179 ], [ %.sroa.090.sroa.0.1.i, %bb.le ] ; 9 uses
  %.sroa.090.sroa.12.1.i.ph = phi i32 [ %.sroa.090.sroa.12.0.i, %.preheader1179 ], [ %.sroa.051.sroa.8.0.i, %bb.le ]
  %.sroa.090.sroa.0.1.i.ph = phi i32 [ %.sroa.090.sroa.0.0.i, %.preheader1179 ], [ %.sroa.090.sroa.0.0.extract.trunc131.i, %bb.le ]
  %.2340.i.ph = phi ptr [ %.1339.i.ph, %.preheader1179 ], [ %.3341.i, %bb.le ]
  %.3.i.ph = phi ptr [ %.2.i, %.preheader1179 ], [ %.3341.i, %bb.le ]
  %i.bhb = ptrtoint ptr %.4858.ph to i64          ; 15 uses
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %.sroa.0162.sroa.14.2.i.ph, i32 18) ; 3 uses
  %i.bhc = sext i32 %spec.store.select.i to i64
  %i.bhd = getelementptr inbounds i8, ptr %.4858.ph, i64 %i.bhc ; 2 uses
  %i.bhe = sext i32 %.sroa.0162.sroa.14.2.i.ph to i64 ; 4 uses
  %i.bhf = getelementptr inbounds i8, ptr %.4858.ph, i64 %i.bhe ; 7 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 3
  br label %bb.fv

.loopexit:                                        ; preds = %.outer1185.backedge, %LZ4HC_InsertAndGetWiderMatch.exit.thread, %LZ4HC_encodeSequence.exit55, %bb.e
  %.3847 = phi ptr [ %1, %bb.e ], [ %i.blo, %LZ4HC_encodeSequence.exit55 ], [ %.0844.ph1564, %LZ4HC_InsertAndGetWiderMatch.exit.thread ], [ %.0854.ph.be, %.outer1185.backedge ] ; 3 uses
  %.2 = phi ptr [ %2, %bb.e ], [ %.34, %LZ4HC_encodeSequence.exit55 ], [ %.0.ph1565, %LZ4HC_InsertAndGetWiderMatch.exit.thread ], [ %.0.ph.be, %.outer1185.backedge ] ; 3 uses
  %i.bhh = ptrtoint ptr %i.v to i64
  %i.bhi = ptrtoint ptr %.3847 to i64
  %i.bhj = sub i64 %i.bhh, %i.bhi                 ; 3 uses
  %i.bhk = add i64 %i.bhj, 240
  %i.bhl = udiv i64 %i.bhk, 255
  %7 = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 5
  %spec.select375.i = select i1 %i.g, ptr %7, ptr %i.z ; 2 uses
  %.not371.i = icmp ne i32 %6, 0
  %i.bhm = getelementptr i8, ptr %.2, i64 %i.bhl
  %i.bhn = getelementptr i8, ptr %i.bhm, i64 1
  %i.bho = getelementptr i8, ptr %i.bhn, i64 %i.bhj
  %i.bhp = icmp ugt ptr %i.bho, %spec.select375.i
  %or.cond = select i1 %.not371.i, i1 %i.bhp, i1 false
  br i1 %or.cond, label %bb.lf, label %bb.lg

.thread1118:                                      ; preds = %bb.lj, %bb.lk
  %i.bhq = ptrtoint ptr %i.v to i64
  %i.bhr = sub i64 %i.bhq, %i.bjc                 ; 3 uses
  %i.bhs = add i64 %i.bhr, 240
  %i.bht = udiv i64 %i.bhs, 255
  %i.bhu = getelementptr i8, ptr %.0332.i, i64 %i.bht
  %i.bhv = getelementptr i8, ptr %i.bhu, i64 1
  %i.bhw = getelementptr i8, ptr %i.bhv, i64 %i.bhr
  %i.bhx = icmp ugt ptr %i.bhw, %i.z
  br i1 %i.bhx, label %.thread1125, label %bb.lg

bb.lf:                                            ; preds = %.loopexit
  %i.bhy = icmp eq i32 %6, 1
  br i1 %i.bhy, label %LZ4HC_compress_hashChain.exit.thread, label %.thread1125

.thread1125:                                      ; preds = %.thread1118, %bb.lf
  %spec.select375.i111711221131 = phi ptr [ %spec.select375.i, %bb.lf ], [ %i.z, %.thread1118 ]
  %.2111511231130 = phi ptr [ %.2, %bb.lf ], [ %.0332.i, %.thread1118 ] ; 2 uses
  %.3847111311241129 = phi ptr [ %.3847, %bb.lf ], [ %.2846, %.thread1118 ]
  %i.bhz = ptrtoint ptr %spec.select375.i111711221131 to i64
  %i.bia = ptrtoint ptr %.2111511231130 to i64
  %i.bib = xor i64 %i.bia, -1
  %i.bic = add i64 %i.bib, %i.bhz                 ; 2 uses
  %i.bid = add i64 %i.bic, 241
  %i.bie = lshr i64 %i.bid, 8
  %i.bif = sub i64 %i.bic, %i.bie
  br label %bb.lg

bb.lg:                                            ; preds = %.thread1118, %.thread1125, %.loopexit
  %.21116 = phi ptr [ %.2111511231130, %.thread1125 ], [ %.0332.i, %.thread1118 ], [ %.2, %.loopexit ] ; 6 uses
  %.38471114 = phi ptr [ %.3847111311241129, %.thread1125 ], [ %.2846, %.thread1118 ], [ %.3847, %.loopexit ] ; 2 uses
  %.0329.i = phi i64 [ %i.bif, %.thread1125 ], [ %i.bhr, %.thread1118 ], [ %i.bhj, %.loopexit ] ; 7 uses
  %i.big = getelementptr inbounds nuw i8, ptr %.38471114, i64 %.0329.i
  %i.bih = icmp ugt i64 %.0329.i, 14
  %.41584 = getelementptr i8, ptr %.21116, i64 1  ; 3 uses
  br i1 %i.bih, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %bb.lg
  %i.bii = add i64 %.0329.i, -15                  ; 2 uses
  store i8 -16, ptr %.21116, align 1, !tbaa !39
  %i.bij = icmp ugt i64 %i.bii, 254
  br i1 %i.bij, label %.lr.ph1588.preheader, label %._crit_edge1589

.lr.ph1588.preheader:                             ; preds = %bb.lh
  %i.bik = add i64 %.0329.i, -270                 ; 2 uses
  %i.bil = udiv i64 %i.bik, 255                   ; 3 uses
  %i.bim = add nuw nsw i64 %i.bil, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.41584, i8 -1, i64 %i.bim, i1 false), !tbaa !39
  %scevgep1900 = getelementptr i8, ptr %.21116, i64 %i.bim
  %.neg2133 = mul i64 %i.bil, -255
  %i.bin = add i64 %.neg2133, %i.bik
  %i.bio = getelementptr i8, ptr %.21116, i64 %i.bil
  %scevgep1901 = getelementptr i8, ptr %i.bio, i64 2
  br label %._crit_edge1589

._crit_edge1589:                                  ; preds = %.lr.ph1588.preheader, %bb.lh
  %.21116.pn.lcssa = phi ptr [ %.21116, %bb.lh ], [ %scevgep1900, %.lr.ph1588.preheader ]
  %.0.i7.lcssa = phi i64 [ %i.bii, %bb.lh ], [ %i.bin, %.lr.ph1588.preheader ]
  %.4.lcssa = phi ptr [ %.41584, %bb.lh ], [ %scevgep1901, %.lr.ph1588.preheader ]
  %i.bip = trunc nuw i64 %.0.i7.lcssa to i8
  %i.biq = getelementptr inbounds nuw i8, ptr %.21116.pn.lcssa, i64 2
  store i8 %i.bip, ptr %.4.lcssa, align 1, !tbaa !39
  br label %.critedge.i

bb.li:                                            ; preds = %bb.lg
  %.0329.tr.i = trunc nuw nsw i64 %.0329.i to i8
  %i.bir = shl nuw i8 %.0329.tr.i, 4
  store i8 %i.bir, ptr %.21116, align 1, !tbaa !39
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.li, %._crit_edge1589
  %.3 = phi ptr [ %i.biq, %._crit_edge1589 ], [ %.41584, %bb.li ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.3, ptr align 1 %.38471114, i64 %.0329.i, i1 false)
  %i.bis = getelementptr inbounds nuw i8, ptr %.3, i64 %.0329.i
  %i.bit = ptrtoint ptr %i.big to i64
  %i.biu = ptrtoint ptr %1 to i64
  %i.biv = sub i64 %i.bit, %i.biu
  %i.biw = trunc i64 %i.biv to i32
  store i32 %i.biw, ptr %3, align 4, !tbaa !29
  %i.bix = ptrtoint ptr %i.bis to i64
  %i.biy = ptrtoint ptr %2 to i64
  %i.biz = sub i64 %i.bix, %i.biy
  %i.bja = trunc i64 %i.biz to i32
  br label %LZ4HC_compress_hashChain.exit

LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit: ; preds = %LZ4_wildCopy8.exit
  %.sroa.0162.sroa.0.0.i.le1404.le1560 = trunc i64 %.sroa.0162.sroa.0.0.in.i to i32
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530: ; preds = %bb.fj
  %.sroa.0162.sroa.0.0.i.le1404.le = trunc i64 %.sroa.0162.sroa.0.0.in.i to i32
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit:                        ; preds = %bb.jd, %LZ4_wildCopy8.exit73, %LZ4_wildCopy8.exit76, %bb.jo, %LZ4_wildCopy8.exit82, %bb.kd, %LZ4_wildCopy8.exit79, %bb.kt, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530
  %.2856 = phi ptr [ %.1855, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.4858.ph, %LZ4_wildCopy8.exit79 ], [ %.1855, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.4858.ph, %LZ4_wildCopy8.exit82 ], [ %.4858.ph, %bb.kt ], [ %.4858.ph, %bb.kd ], [ %.4858.ph, %bb.jd ], [ %.5.i, %bb.jo ], [ %.4858.ph, %LZ4_wildCopy8.exit73 ], [ %.5.i, %LZ4_wildCopy8.exit76 ] ; 2 uses
  %.2846 = phi ptr [ %.1845.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.4848.ph, %LZ4_wildCopy8.exit79 ], [ %.1845.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.4848.ph, %LZ4_wildCopy8.exit82 ], [ %.4848.ph, %bb.kt ], [ %.4848.ph, %bb.kd ], [ %.4848.ph, %bb.jd ], [ %i.bae, %bb.jo ], [ %.4848.ph, %LZ4_wildCopy8.exit73 ], [ %i.bae, %LZ4_wildCopy8.exit76 ] ; 4 uses
  %.sroa.0162.sroa.14.7.i = phi i32 [ %.sroa.0162.sroa.14.0.i, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.sroa.0162.sroa.14.6.i, %LZ4_wildCopy8.exit79 ], [ %.sroa.0162.sroa.14.0.i, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.sroa.0162.sroa.14.2.i.ph, %LZ4_wildCopy8.exit82 ], [ %.sroa.0162.sroa.14.6.i, %bb.kt ], [ %.sroa.0162.sroa.14.2.i.ph, %bb.kd ], [ %.sroa.0162.sroa.14.3.i, %bb.jd ], [ %.sroa.090.sroa.12.3.i, %bb.jo ], [ %.sroa.0162.sroa.14.3.i, %LZ4_wildCopy8.exit73 ], [ %.sroa.090.sroa.12.3.i, %LZ4_wildCopy8.exit76 ]
  %.sroa.0162.sroa.0.3.i = phi i32 [ %.sroa.0162.sroa.0.0.i.le1404.le, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit79 ], [ %.sroa.0162.sroa.0.0.i.le1404.le1560, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit82 ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.kt ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.kd ], [ %.sroa.0162.sroa.0.2.i.ph, %bb.jd ], [ %.sroa.090.sroa.0.1.i, %bb.jo ], [ %.sroa.0162.sroa.0.2.i.ph, %LZ4_wildCopy8.exit73 ], [ %.sroa.090.sroa.0.1.i, %LZ4_wildCopy8.exit76 ]
  %.0332.i = phi ptr [ %.1.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit1530 ], [ %.5.ph, %LZ4_wildCopy8.exit79 ], [ %.1.ph, %LZ4HC_encodeSequence.exit.loopexit1184.split.loop.exit ], [ %.5.ph, %LZ4_wildCopy8.exit82 ], [ %.5.ph, %bb.kt ], [ %.5.ph, %bb.kd ], [ %.5.ph, %bb.jd ], [ %.25, %bb.jo ], [ %.5.ph, %LZ4_wildCopy8.exit73 ], [ %.25, %LZ4_wildCopy8.exit76 ] ; 12 uses
  br i1 %i.g, label %bb.lj, label %LZ4HC_compress_hashChain.exit.thread

bb.lj:                                            ; preds = %LZ4HC_encodeSequence.exit
  %i.bjb = ptrtoint ptr %.2856 to i64             ; 3 uses
  %i.bjc = ptrtoint ptr %.2846 to i64             ; 4 uses
  %i.bjd = sub i64 %i.bjb, %i.bjc                 ; 6 uses
  %i.bje = add i64 %i.bjd, 240
  %i.bjf = udiv i64 %i.bje, 255
  %i.bjg = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 2 uses
  %i.bjh = getelementptr i8, ptr %.0332.i, i64 %i.bjf
  %i.bji = getelementptr i8, ptr %i.bjh, i64 1
  %i.bjj = getelementptr i8, ptr %i.bji, i64 %i.bjd ; 3 uses
  %.not370.i = icmp ugt ptr %i.bjj, %i.bjg
  br i1 %.not370.i, label %.thread1118, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bjk = ptrtoint ptr %i.bjg to i64
  %i.bjl = ptrtoint ptr %i.bjj to i64
  %i.bjm = sub i64 %i.bjk, %i.bjl
  %i.bjn = mul i64 %i.bjm, 255
  %i.bjo = add i64 %i.bjn, 18
  %i.bjp = sext i32 %.sroa.0162.sroa.14.7.i to i64
  %spec.select376.i1164 = tail call i64 @llvm.umin.i64(i64 %i.bjo, i64 %i.bjp)
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjj, i64 2
  %i.bjr = ptrtoint ptr %i.z to i64
  %i.bjs = ptrtoint ptr %i.bjq to i64
  %i.bjt = shl i64 %spec.select376.i1164, 32
  %i.bju = ashr exact i64 %i.bjt, 32              ; 5 uses
  %i.bjv = add i64 %i.bju, %i.bjr
  %i.bjw = sub i64 %i.bjs, %i.bjv
  %i.bjx = icmp slt i64 %i.bjw, -12
  br i1 %i.bjx, label %bb.ll, label %.thread1118

bb.ll:                                            ; preds = %bb.lk
  %i.bjy = getelementptr i8, ptr %.0332.i, i64 1  ; 3 uses
  %i.bjz = icmp ugt i64 %i.bjd, 14
  br i1 %i.bjz, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  %i.bka = add i64 %i.bjd, -15                    ; 2 uses
  store i8 -16, ptr %.0332.i, align 1, !tbaa !39
  %i.bkb = icmp ugt i64 %i.bka, 254
  br i1 %i.bkb, label %.lr.ph1573.preheader, label %._crit_edge1574

.lr.ph1573.preheader:                             ; preds = %bb.lm
  %i.bkc = add i64 %i.bjb, -270
  %i.bkd = sub i64 %i.bkc, %i.bjc                 ; 2 uses
  %i.bke = udiv i64 %i.bkd, 255                   ; 3 uses
  %i.bkf = add nuw nsw i64 %i.bke, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bjy, i8 -1, i64 %i.bkf, i1 false), !tbaa !39
  %i.bkg = getelementptr i8, ptr %.0332.i, i64 %i.bke
  %scevgep1898 = getelementptr i8, ptr %i.bkg, i64 2
  %.neg2131 = mul i64 %i.bke, -255
  %i.bkh = add i64 %.neg2131, %i.bkd
  br label %._crit_edge1574

._crit_edge1574:                                  ; preds = %.lr.ph1573.preheader, %bb.lm
  %.33.lcssa = phi ptr [ %i.bjy, %bb.lm ], [ %scevgep1898, %.lr.ph1573.preheader ] ; 2 uses
  %.0.i54.lcssa = phi i64 [ %i.bka, %bb.lm ], [ %i.bkh, %.lr.ph1573.preheader ]
  %i.bki = trunc nuw i64 %.0.i54.lcssa to i8
  %i.bkj = getelementptr inbounds nuw i8, ptr %.33.lcssa, i64 1
  store i8 %i.bki, ptr %.33.lcssa, align 1, !tbaa !39
  br label %bb.lo

bb.ln:                                            ; preds = %bb.ll
  %.tr.i49 = trunc nuw nsw i64 %i.bjd to i8
  %i.bkk = shl nuw i8 %.tr.i49, 4
  store i8 %i.bkk, ptr %.0332.i, align 1, !tbaa !39
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %._crit_edge1574
  %.30 = phi ptr [ %i.bkj, %._crit_edge1574 ], [ %i.bjy, %bb.ln ] ; 3 uses
  %i.bkl = getelementptr inbounds nuw i8, ptr %.30, i64 %i.bjd ; 3 uses
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lp, %bb.lo
  %.09.i68 = phi ptr [ %.30, %bb.lo ], [ %i.bkn, %bb.lp ] ; 2 uses
  %.0.i69 = phi ptr [ %.2846, %bb.lo ], [ %i.bko, %bb.lp ] ; 2 uses
  %i.bkm = load i64, ptr %.0.i69, align 1
  store i64 %i.bkm, ptr %.09.i68, align 1
  %i.bkn = getelementptr inbounds nuw i8, ptr %.09.i68, i64 8 ; 2 uses
  %i.bko = getelementptr inbounds nuw i8, ptr %.0.i69, i64 8
  %i.bkp = icmp ult ptr %i.bkn, %i.bkl
  br i1 %i.bkp, label %bb.lp, label %LZ4_wildCopy8.exit70, !llvm.loop !7

LZ4_wildCopy8.exit70:                             ; preds = %bb.lp
  %i.bkq = trunc i32 %.sroa.0162.sroa.0.3.i to i16
  store i16 %i.bkq, ptr %i.bkl, align 1, !tbaa !38
  %i.bkr = getelementptr i8, ptr %i.bkl, i64 2    ; 3 uses
  %i.bks = add nsw i64 %i.bju, -4                 ; 2 uses
  %i.bkt = icmp ugt i64 %i.bks, 14
  br i1 %i.bkt, label %bb.lq, label %bb.lt

bb.lq:                                            ; preds = %LZ4_wildCopy8.exit70
  %i.bku = load i8, ptr %.0332.i, align 1, !tbaa !39
  %i.bkv = add i8 %i.bku, 15
  store i8 %i.bkv, ptr %.0332.i, align 1, !tbaa !39
  %i.bkw = add nsw i64 %i.bju, -19                ; 2 uses
  %i.bkx = icmp ugt i64 %i.bkw, 509
  br i1 %i.bkx, label %.lr.ph1580.preheader, label %._crit_edge1581

.lr.ph1580.preheader:                             ; preds = %bb.lq
  %i.bky = add nsw i64 %i.bju, -529               ; 2 uses
  %i.bkz = udiv i64 %i.bky, 510                   ; 2 uses
  %i.bla = shl nuw nsw i64 %i.bkz, 1              ; 2 uses
  %i.blb = add nuw nsw i64 %i.bla, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bkr, i8 -1, i64 %i.blb, i1 false), !tbaa !39
  %i.blc = add i64 %i.bla, %i.bjb
  %i.bld = add i64 %i.blc, 4
  %i.ble = sub i64 %i.bld, %i.bjc
  %scevgep1899 = getelementptr i8, ptr %.30, i64 %i.ble
  %.neg2132 = mul i64 %i.bkz, -510
  %i.blf = add i64 %.neg2132, %i.bky
  br label %._crit_edge1581

._crit_edge1581:                                  ; preds = %.lr.ph1580.preheader, %bb.lq
  %.31.lcssa = phi ptr [ %i.bkr, %bb.lq ], [ %scevgep1899, %.lr.ph1580.preheader ] ; 3 uses
  %.050.i52.lcssa = phi i64 [ %i.bkw, %bb.lq ], [ %i.blf, %.lr.ph1580.preheader ] ; 3 uses
  %i.blg = icmp samesign ugt i64 %.050.i52.lcssa, 254
  br i1 %i.blg, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %._crit_edge1581
  %i.blh = add nsw i64 %.050.i52.lcssa, -255
  %i.bli = getelementptr inbounds nuw i8, ptr %.31.lcssa, i64 1
  store i8 -1, ptr %.31.lcssa, align 1, !tbaa !39
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %._crit_edge1581
  %.32 = phi ptr [ %i.bli, %bb.lr ], [ %.31.lcssa, %._crit_edge1581 ] ; 2 uses
  %.1.i53 = phi i64 [ %i.blh, %bb.lr ], [ %.050.i52.lcssa, %._crit_edge1581 ]
  %i.blj = trunc nuw i64 %.1.i53 to i8
  %i.blk = getelementptr inbounds nuw i8, ptr %.32, i64 1
  store i8 %i.blj, ptr %.32, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit55

bb.lt:                                            ; preds = %LZ4_wildCopy8.exit70
  %i.bll = trunc nuw nsw i64 %i.bks to i8
  %i.blm = load i8, ptr %.0332.i, align 1, !tbaa !39
  %i.bln = add i8 %i.blm, %i.bll
  store i8 %i.bln, ptr %.0332.i, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit55

LZ4HC_encodeSequence.exit55:                      ; preds = %bb.ls, %bb.lt
  %.34 = phi ptr [ %i.blk, %bb.ls ], [ %i.bkr, %bb.lt ]
  %i.blo = getelementptr inbounds i8, ptr %.2856, i64 %i.bju
  br label %.loopexit

bb.lu:                                            ; preds = %bb.c
  %i.blp = getelementptr inbounds nuw i8, ptr %0, i64 262182
  %i.blq = load i8, ptr %i.blp, align 2, !tbaa !51
  %.not.i = icmp ne i8 %i.blq, 0
  %i.blr = zext i1 %.not.i to i32
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.25.0.copyload.i = load i32, ptr %.sroa.25.0..sroa_idx.i, align 4, !tbaa !29
  %.sroa.04.4.extract.shift8.i = lshr i64 %.sroa.04.0.copyload.i, 32
  %.sroa.04.4.extract.trunc9.i = trunc nuw i64 %.sroa.04.4.extract.shift8.i to i32
  %i.bls = zext i32 %.sroa.25.0.copyload.i to i64
  %i.blt = icmp sgt i32 %5, 11
  %i.blu = zext i1 %i.blt to i32
  %i.blv = tail call fastcc i32 @LZ4HC_compress_optimal(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %4, i32 noundef %.sroa.04.4.extract.trunc9.i, i64 noundef %i.bls, i32 noundef range(i32 0, 3) %6, i32 noundef %i.blu, i32 noundef 0, i32 noundef %i.blr)
  br label %LZ4HC_compress_hashChain.exit

LZ4HC_compress_hashChain.exit:                    ; preds = %.critedge.i, %bb.lu, %bb.d
  %.0.i = phi i32 [ %i.t, %bb.d ], [ %i.blv, %bb.lu ], [ %i.bja, %.critedge.i ] ; 3 uses
  %i.blw = icmp slt i32 %.0.i, 1
  br i1 %i.blw, label %LZ4HC_compress_hashChain.exit.thread, label %LZ4HC_compress_generic_internal.exit

LZ4HC_compress_hashChain.exit.thread:             ; preds = %LZ4HC_encodeSequence.exit, %bb.lf, %LZ4HC_compress_hashChain.exit
  %.0.i1133 = phi i32 [ %.0.i, %LZ4HC_compress_hashChain.exit ], [ 0, %bb.lf ], [ 0, %LZ4HC_encodeSequence.exit ]
  %i.blx = getelementptr inbounds nuw i8, ptr %0, i64 262183
  store i8 1, ptr %i.blx, align 1, !tbaa !41
  br label %LZ4HC_compress_generic_internal.exit

LZ4HC_compress_generic_internal.exit:             ; preds = %bb.a, %bb.b, %LZ4HC_compress_hashChain.exit, %LZ4HC_compress_hashChain.exit.thread
  %.040.i = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ %.0.i1133, %LZ4HC_compress_hashChain.exit.thread ], [ %.0.i, %LZ4HC_compress_hashChain.exit ]
  ret i32 %.040.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LZ4MID_compress(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef range(i32 0, 3) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 7 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !29     ; 4 uses
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -12 ; 10 uses
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -5 ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 4 uses
  %i.h = sext i32 %4 to i64
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.h ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 11 uses
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = ptrtoint ptr %i.k to i64                 ; 5 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.m, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 262160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 6 uses
  %.not = icmp ne i32 %6, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %select_searchDict_function.exit

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %select_searchDict_function.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 262180
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !46
  %i.ab = add i16 %i.aa, -1
  %i.ac = icmp ult i16 %i.ab, 2
  %LZ4MID_searchExtDict.LZ4MID_searchHCDict.i = select i1 %i.ac, ptr @LZ4MID_searchExtDict, ptr @LZ4MID_searchHCDict
  br label %select_searchDict_function.exit

select_searchDict_function.exit:                  ; preds = %bb.c, %bb.b, %bb.a
  %i.ad = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %LZ4MID_searchExtDict.LZ4MID_searchHCDict.i, %bb.c ]
  %i.ae = or i32 %i.b, %4
  %or.cond298 = icmp slt i32 %i.ae, 0
  %i.af = icmp sgt i32 %i.b, 2113929216
  %or.cond299 = or i1 %i.af, %or.cond298
  br i1 %or.cond299, label %bb.dg, label %bb.d

bb.d:                                             ; preds = %select_searchDict_function.exit
  %i.ag = icmp eq i32 %5, 2                       ; 3 uses
  %spec.select.idx = select i1 %i.ag, i64 -5, i64 0
  %spec.select = getelementptr inbounds i8, ptr %i.i, i64 %spec.select.idx ; 3 uses
  %i.ah = icmp samesign ult i32 %i.b, 13
  br i1 %i.ah, label %.loopexit, label %.lr.ph726

.lr.ph726:                                        ; preds = %bb.d
  %i.ai = zext i32 %i.m to i64
  %i.aj = sub nsw i64 0, %i.ai
  %invariant.gep = getelementptr i8, ptr %i.k, i64 %i.aj
  %i.ak = getelementptr inbounds i8, ptr %i.d, i64 -6 ; 3 uses
  %i.al = ptrtoint ptr %i.f to i64                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %.not.i388 = icmp ne i32 %5, 0                  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph726, %bb.cp
  %.0497725 = phi ptr [ %2, %.lr.ph726 ], [ %.2499, %bb.cp ] ; 20 uses
  %.0510724 = phi ptr [ %1, %.lr.ph726 ], [ %.1511, %bb.cp ] ; 9 uses
  %.0514723 = phi ptr [ %1, %.lr.ph726 ], [ %.6520, %bb.cp ] ; 27 uses
  %i.an = ptrtoint ptr %.0514723 to i64           ; 18 uses
  %i.ao = sub i64 %i.an, %i.o
  %i.ap = trunc i64 %i.ao to i32                  ; 7 uses
  %i.aq = add i32 %i.m, %i.ap                     ; 9 uses
  %.val423 = load i64, ptr %.0514723, align 1, !tbaa !34 ; 5 uses
  %i.ar = mul i64 %.val423, -3523014627193167104
  %i.as = lshr i64 %i.ar, 50
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29 ; 6 uses
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !29
  %i.av = sub i32 %i.aq, %i.au                    ; 3 uses
  %i.aw = icmp ult i32 %i.av, 65536
  br i1 %i.aw, label %bb.f, label %.thread537

bb.f:                                             ; preds = %bb.e
  %.not281 = icmp ult i32 %i.au, %i.m
  br i1 %.not281, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = zext i32 %i.au to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ax ; 3 uses
  %i.ay = icmp ult ptr %.0514723, %i.e
  br i1 %i.ay, label %bb.h, label %bb.j, !prof !31

bb.h:                                             ; preds = %bb.g
  %.val398 = load i64, ptr %gep, align 1, !tbaa !34 ; 2 uses
  %.not.i383 = icmp eq i64 %.val398, %.val423
  br i1 %.not.i383, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.0514723, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %gep, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = xor i64 %.val398, %.val423
  %i.bc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bb, i1 true)
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = lshr i32 %i.bd, 3
  br label %LZ4_count.exit387

bb.j:                                             ; preds = %.thread, %bb.g
  %.150.i366 = phi ptr [ %i.az, %.thread ], [ %.0514723, %bb.g ] ; 3 uses
  %.145.i367 = phi ptr [ %i.ba, %.thread ], [ %gep, %bb.g ] ; 2 uses
  %i.bf = icmp ult ptr %.150.i366, %i.e
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !prof !35

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.246.i370668 = phi ptr [ %i.bo, %bb.k ], [ %.145.i367, %bb.j ] ; 2 uses
  %.251.i369667 = phi ptr [ %i.bn, %bb.k ], [ %.150.i366, %bb.j ] ; 3 uses
  %.246.i370.val400 = load i64, ptr %.246.i370668, align 1, !tbaa !34 ; 2 uses
  %.251.i369.val399 = load i64, ptr %.251.i369667, align 1, !tbaa !34 ; 2 uses
  %.not59.i379 = icmp eq i64 %.246.i370.val400, %.251.i369.val399
  br i1 %.not59.i379, label %bb.k, label %.thread525

.thread525:                                       ; preds = %.lr.ph
  %i.bg = xor i64 %.251.i369.val399, %.246.i370.val400
  %i.bh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bg, i1 true)
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.251.i369667, i64 %i.bi
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.an
  %i.bm = trunc i64 %i.bl to i32
  br label %LZ4_count.exit387

bb.k:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw i8, ptr %.251.i369667, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.246.i370668, i64 8 ; 2 uses
  %i.bp = icmp ult ptr %i.bn, %i.e
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !prof !36

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %.251.i369.lcssa = phi ptr [ %.150.i366, %bb.j ], [ %i.bn, %bb.k ] ; 5 uses
  %.246.i370.lcssa = phi ptr [ %.145.i367, %bb.j ], [ %i.bo, %bb.k ] ; 4 uses
  %i.bq = icmp ult ptr %.251.i369.lcssa, %i.g
  br i1 %i.bq, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %.246.i370.val = load i32, ptr %.246.i370.lcssa, align 1, !tbaa !28
  %.251.i369.val = load i32, ptr %.251.i369.lcssa, align 1, !tbaa !28
  %i.br = icmp eq i32 %.246.i370.val, %.251.i369.val
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.251.i369.lcssa, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %.246.i370.lcssa, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge
  %.453.i372 = phi ptr [ %i.bs, %bb.m ], [ %.251.i369.lcssa, %bb.l ], [ %.251.i369.lcssa, %._crit_edge ] ; 5 uses
  %.448.i373 = phi ptr [ %i.bt, %bb.m ], [ %.246.i370.lcssa, %bb.l ], [ %.246.i370.lcssa, %._crit_edge ] ; 4 uses
  %i.bu = icmp ult ptr %.453.i372, %i.ak
  br i1 %i.bu, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.448.i373.val = load i16, ptr %.448.i373, align 1, !tbaa !38
  %.453.i372.val = load i16, ptr %.453.i372, align 1, !tbaa !38
  %i.bv = icmp eq i16 %.448.i373.val, %.453.i372.val
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.453.i372, i64 2
  %i.bx = getelementptr inbounds nuw i8, ptr %.448.i373, i64 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.554.i374 = phi ptr [ %i.bw, %bb.p ], [ %.453.i372, %bb.o ], [ %.453.i372, %bb.n ] ; 4 uses
  %.5.i375 = phi ptr [ %i.bx, %bb.p ], [ %.448.i373, %bb.o ], [ %.448.i373, %bb.n ]
  %i.by = icmp ult ptr %.554.i374, %i.f
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = load i8, ptr %.5.i375, align 1, !tbaa !39
  %i.ca = load i8, ptr %.554.i374, align 1, !tbaa !39
  %i.cb = icmp eq i8 %i.bz, %i.ca
  %spec.select.i378.idx = zext i1 %i.cb to i64
  %spec.select.i378 = getelementptr inbounds nuw i8, ptr %.554.i374, i64 %spec.select.i378.idx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.6.i376 = phi ptr [ %.554.i374, %bb.q ], [ %spec.select.i378, %bb.r ]
  %i.cc = ptrtoint ptr %.6.i376 to i64
  %i.cd = sub i64 %i.cc, %i.an
  %i.ce = trunc i64 %i.cd to i32
  br label %LZ4_count.exit387

LZ4_count.exit387:                                ; preds = %.thread525, %bb.i, %bb.s
  %.4.i377 = phi i32 [ %i.bm, %.thread525 ], [ %i.ce, %bb.s ], [ %i.be, %bb.i ] ; 2 uses
  %i.cf = icmp ult i32 %.4.i377, 4
  br i1 %i.cf, label %.thread537, label %.thread578

bb.t:                                             ; preds = %bb.f
  %.not282 = icmp ult i32 %i.au, %i.v
  br i1 %.not282, label %.thread537, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = sub nuw i32 %i.au, %i.v
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ch ; 3 uses
  %i.cj = sub nuw i32 %i.m, %i.au
  %i.ck = zext i32 %i.cj to i64
end_hunk_3
begin_hunk_4_@LZ4MID_compress:bb.a
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.kw
  store i32 %i.kn, ptr %i.kx, align 4, !tbaa !29
  %i.ky = getelementptr i8, ptr %.0497725, i64 1  ; 7 uses
  %i.kz = ptrtoint ptr %.0510724 to i64           ; 7 uses
  %i.la = sub i64 %.lcssa, %i.kz                  ; 6 uses
  %i.lb = udiv i64 %i.la, 255
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.la
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = icmp ugt ptr %i.le, %spec.select
  %or.cond.i = select i1 %.not.i388, i1 %i.lf, i1 false
  br i1 %or.cond.i, label %bb.cu, label %bb.cb

bb.cb:                                            ; preds = %.critedge
  %i.lg = icmp ugt i64 %i.la, 14
  br i1 %i.lg, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.lh = add i64 %i.la, -15                      ; 2 uses
  store i8 -16, ptr %.0497725, align 1, !tbaa !39
  %i.li = icmp ugt i64 %i.lh, 254
  br i1 %i.li, label %.lr.ph711.preheader, label %._crit_edge712

.lr.ph711.preheader:                              ; preds = %bb.cc
  %i.lj = add i64 %.lcssa, -270
  %i.lk = sub i64 %i.lj, %i.kz                    ; 2 uses
  %i.ll = udiv i64 %i.lk, 255                     ; 3 uses
  %i.lm = add nuw nsw i64 %i.ll, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ky, i8 -1, i64 %i.lm, i1 false), !tbaa !39
  %scevgep = getelementptr i8, ptr %.0497725, i64 2
  %scevgep789 = getelementptr i8, ptr %scevgep, i64 %i.ll
  %.neg = mul i64 %i.ll, -255
  %i.ln = add i64 %.neg, %i.lk
  br label %._crit_edge712

._crit_edge712:                                   ; preds = %.lr.ph711.preheader, %bb.cc
  %.15.lcssa = phi ptr [ %i.ky, %bb.cc ], [ %scevgep789, %.lr.ph711.preheader ] ; 2 uses
  %.0.i392.lcssa = phi i64 [ %i.lh, %bb.cc ], [ %i.ln, %.lr.ph711.preheader ]
  %i.lo = trunc nuw i64 %.0.i392.lcssa to i8
  %i.lp = getelementptr inbounds nuw i8, ptr %.15.lcssa, i64 1
  store i8 %i.lo, ptr %.15.lcssa, align 1, !tbaa !39
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %.tr.i389 = trunc nuw nsw i64 %i.la to i8
  %i.lq = shl nuw i8 %.tr.i389, 4
  store i8 %i.lq, ptr %.0497725, align 1, !tbaa !39
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge712
  %.11506 = phi ptr [ %i.lp, %._crit_edge712 ], [ %i.ky, %bb.cd ] ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.11506, i64 %i.la ; 3 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %bb.ce
  %.09.i = phi ptr [ %.11506, %bb.ce ], [ %i.lt, %bb.cf ] ; 2 uses
  %.0.i394 = phi ptr [ %.0510724, %bb.ce ], [ %i.lu, %bb.cf ] ; 2 uses
  %i.ls = load i64, ptr %.0.i394, align 1
  store i64 %i.ls, ptr %.09.i, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i394, i64 8
  %i.lv = icmp ult ptr %i.lt, %i.lr
  br i1 %i.lv, label %bb.cf, label %LZ4_wildCopy8.exit, !llvm.loop !7

LZ4_wildCopy8.exit:                               ; preds = %bb.cf
  %i.lw = trunc i32 %.13 to i16
  store i16 %i.lw, ptr %i.lr, align 1, !tbaa !38
  %i.lx = getelementptr i8, ptr %i.lr, i64 2      ; 4 uses
  %i.ly = sext i32 %.11245.lcssa to i64           ; 4 uses
  %i.lz = add nsw i64 %i.ly, -4                   ; 3 uses
  %i.ma = udiv i64 %i.lz, 255
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 6
  %i.md = icmp ugt ptr %i.mc, %spec.select
  %or.cond64.i = select i1 %.not.i388, i1 %i.md, i1 false
  br i1 %or.cond64.i, label %bb.cu, label %bb.cg

bb.cg:                                            ; preds = %LZ4_wildCopy8.exit
  %i.me = icmp ugt i64 %i.lz, 14
  br i1 %i.me, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.mf = load i8, ptr %.0497725, align 1, !tbaa !39
  %i.mg = add i8 %i.mf, 15
  store i8 %i.mg, ptr %.0497725, align 1, !tbaa !39
  %i.mh = add nsw i64 %i.ly, -19                  ; 2 uses
  %i.mi = icmp ugt i64 %i.mh, 509
  br i1 %i.mi, label %.lr.ph718.preheader, label %._crit_edge719

.lr.ph718.preheader:                              ; preds = %bb.ch
  %i.mj = add nsw i64 %i.ly, -529                 ; 2 uses
  %i.mk = udiv i64 %i.mj, 510                     ; 2 uses
  %i.ml = shl nuw nsw i64 %i.mk, 1                ; 2 uses
  %i.mm = add nuw nsw i64 %i.ml, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lx, i8 -1, i64 %i.mm, i1 false), !tbaa !39
  %scevgep790 = getelementptr i8, ptr %.11506, i64 4
  %i.mn = add i64 %.lcssa, %i.ml
  %i.mo = sub i64 %i.mn, %i.kz
  %scevgep791 = getelementptr i8, ptr %scevgep790, i64 %i.mo
  %.neg858 = mul i64 %i.mk, -510
  %i.mp = add i64 %.neg858, %i.mj
  br label %._crit_edge719

._crit_edge719:                                   ; preds = %.lr.ph718.preheader, %bb.ch
  %.13508.lcssa = phi ptr [ %i.lx, %bb.ch ], [ %scevgep791, %.lr.ph718.preheader ] ; 3 uses
  %.050.i390.lcssa = phi i64 [ %i.mh, %bb.ch ], [ %i.mp, %.lr.ph718.preheader ] ; 3 uses
  %i.mq = icmp samesign ugt i64 %.050.i390.lcssa, 254
  br i1 %i.mq, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %._crit_edge719
  %i.mr = add nsw i64 %.050.i390.lcssa, -255
  %i.ms = getelementptr inbounds nuw i8, ptr %.13508.lcssa, i64 1
  store i8 -1, ptr %.13508.lcssa, align 1, !tbaa !39
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %._crit_edge719
  %.14509 = phi ptr [ %i.ms, %bb.ci ], [ %.13508.lcssa, %._crit_edge719 ] ; 2 uses
  %.1.i391 = phi i64 [ %i.mr, %bb.ci ], [ %.050.i390.lcssa, %._crit_edge719 ]
  %i.mt = trunc nuw i64 %.1.i391 to i8
  %i.mu = getelementptr inbounds nuw i8, ptr %.14509, i64 1
  store i8 %i.mt, ptr %.14509, align 1, !tbaa !39
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cg
  %i.mv = trunc nuw nsw i64 %i.lz to i8
  %i.mw = load i8, ptr %.0497725, align 1, !tbaa !39
  %i.mx = add i8 %i.mw, %i.mv
  store i8 %i.mx, ptr %.0497725, align 1, !tbaa !39
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %.12507 = phi ptr [ %i.mu, %bb.cj ], [ %i.lx, %bb.ck ] ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %.5519.lcssa, i64 %i.ly ; 9 uses
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = sub i64 %i.mz, %i.o                     ; 2 uses
  %i.nb = trunc i64 %i.na to i32
  %i.nc = add i32 %i.m, %i.nb                     ; 4 uses
  %i.nd = add i32 %i.nc, -2                       ; 3 uses
  %i.ne = icmp ult i32 %i.nd, %i.r
  br i1 %i.ne, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.nf = icmp sgt i64 %i.na, 5
  br i1 %i.nf, label %bb.cn, label %bb.co, !prof !31

bb.cn:                                            ; preds = %bb.cm
  %i.ng = getelementptr inbounds i8, ptr %i.my, i64 -5
  %.val419 = load i64, ptr %i.ng, align 1, !tbaa !34
  %i.nh = mul i64 %.val419, -3523014627193167104
  %i.ni = lshr i64 %i.nh, 50
  %i.nj = add i32 %i.nc, -5
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ni
  store i32 %i.nj, ptr %i.nk, align 4, !tbaa !29
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.nl = getelementptr inbounds i8, ptr %i.my, i64 -3
  %.val418 = load i64, ptr %i.nl, align 1, !tbaa !34
  %i.nm = mul i64 %.val418, -3523014627193167104
  %i.nn = lshr i64 %i.nm, 50
  %i.no = add i32 %i.nc, -3
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nn
  store i32 %i.no, ptr %i.np, align 4, !tbaa !29
  %i.nq = getelementptr inbounds i8, ptr %i.my, i64 -2 ; 2 uses
  %.val417 = load i64, ptr %i.nq, align 1, !tbaa !34
  %i.nr = mul i64 %.val417, -3523014627193167104
  %i.ns = lshr i64 %i.nr, 50
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ns
  store i32 %i.nd, ptr %i.nt, align 4, !tbaa !29
  %.val425 = load i32, ptr %i.nq, align 1, !tbaa !28
  %i.nu = mul i32 %.val425, -1640531535
  %i.nv = lshr i32 %i.nu, 18
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.nw
  store i32 %i.nd, ptr %i.nx, align 4, !tbaa !29
  %i.ny = getelementptr inbounds i8, ptr %i.my, i64 -1
  %.val424 = load i32, ptr %i.ny, align 1, !tbaa !28
  %i.nz = mul i32 %.val424, -1640531535
  %i.oa = lshr i32 %i.nz, 18
  %i.ob = add i32 %i.nc, -1
  %i.oc = zext nneg i32 %i.oa to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.oc
  store i32 %i.ob, ptr %i.od, align 4, !tbaa !29
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cl, %bb.co, %bb.bz
  %.6520 = phi ptr [ %i.my, %bb.co ], [ %i.my, %bb.cl ], [ %i.jm, %bb.bz ] ; 2 uses
  %.1511 = phi ptr [ %i.my, %bb.co ], [ %i.my, %bb.cl ], [ %.0510724, %bb.bz ] ; 2 uses
  %.2499 = phi ptr [ %.12507, %bb.co ], [ %.12507, %bb.cl ], [ %.0497725, %bb.bz ] ; 2 uses
  %.not280 = icmp ugt ptr %.6520, %i.e
  br i1 %.not280, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.cp, %LZ4HC_encodeSequence.exit, %bb.d
  %.2512 = phi ptr [ %1, %bb.d ], [ %i.si, %LZ4HC_encodeSequence.exit ], [ %.1511, %bb.cp ] ; 3 uses
  %.3500 = phi ptr [ %2, %bb.d ], [ %.10505, %LZ4HC_encodeSequence.exit ], [ %.2499, %bb.cp ] ; 3 uses
  %i.oe = ptrtoint ptr %i.d to i64
  %i.of = ptrtoint ptr %.2512 to i64
  %i.og = sub i64 %i.oe, %i.of                    ; 3 uses
  %i.oh = add i64 %i.og, 240
  %i.oi = udiv i64 %i.oh, 255
  %7 = getelementptr inbounds nuw i8, ptr %spec.select, i64 5
  %spec.select294 = select i1 %i.ag, ptr %7, ptr %i.i ; 2 uses
  %.not288 = icmp ne i32 %5, 0
  %i.oj = getelementptr i8, ptr %.3500, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 1
  %i.ol = getelementptr i8, ptr %i.ok, i64 %i.og
  %i.om = icmp ugt ptr %i.ol, %spec.select294
  %or.cond650 = select i1 %.not288, i1 %i.om, i1 false
  br i1 %or.cond650, label %bb.cq, label %bb.cr

.thread632:                                       ; preds = %bb.cw, %bb.cv
  %i.on = ptrtoint ptr %i.d to i64
  %i.oo = sub i64 %i.on, %i.kz                    ; 3 uses
  %i.op = add i64 %i.oo, 240
  %i.oq = udiv i64 %i.op, 255
  %i.or = getelementptr i8, ptr %.0497725, i64 %i.oq
  %i.os = getelementptr i8, ptr %i.or, i64 1
  %i.ot = getelementptr i8, ptr %i.os, i64 %i.oo
  %i.ou = icmp ugt ptr %i.ot, %i.i
  br i1 %i.ou, label %.thread639, label %bb.cr

bb.cq:                                            ; preds = %.loopexit
  %i.ov = icmp eq i32 %5, 1
  br i1 %i.ov, label %bb.dg, label %.thread639

.thread639:                                       ; preds = %.thread632, %bb.cq
  %spec.select294631636645 = phi ptr [ %spec.select294, %bb.cq ], [ %i.i, %.thread632 ]
  %.3500629637644 = phi ptr [ %.3500, %bb.cq ], [ %.0497725, %.thread632 ] ; 2 uses
  %.2512627638643 = phi ptr [ %.2512, %bb.cq ], [ %.0510724, %.thread632 ]
  %i.ow = ptrtoint ptr %spec.select294631636645 to i64
  %i.ox = ptrtoint ptr %.3500629637644 to i64
  %i.oy = xor i64 %i.ox, -1
  %i.oz = add i64 %i.oy, %i.ow                    ; 2 uses
  %i.pa = add i64 %i.oz, 241
  %i.pb = lshr i64 %i.pa, 8
  %i.pc = sub i64 %i.oz, %i.pb
  br label %bb.cr

bb.cr:                                            ; preds = %.thread632, %.thread639, %.loopexit
  %.3500630 = phi ptr [ %.3500629637644, %.thread639 ], [ %.0497725, %.thread632 ], [ %.3500, %.loopexit ] ; 6 uses
  %.2512628 = phi ptr [ %.2512627638643, %.thread639 ], [ %.0510724, %.thread632 ], [ %.2512, %.loopexit ] ; 2 uses
  %.0220 = phi i64 [ %i.pc, %.thread639 ], [ %i.oo, %.thread632 ], [ %i.og, %.loopexit ] ; 7 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.2512628, i64 %.0220
  %i.pe = icmp ugt i64 %.0220, 14
  %.4501743 = getelementptr i8, ptr %.3500630, i64 1 ; 3 uses
  br i1 %i.pe, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.pf = add i64 %.0220, -15                     ; 2 uses
  store i8 -16, ptr %.3500630, align 1, !tbaa !39
  %i.pg = icmp ugt i64 %i.pf, 254
  br i1 %i.pg, label %.lr.ph747.preheader, label %._crit_edge748

.lr.ph747.preheader:                              ; preds = %bb.cs
  %i.ph = add i64 %.0220, -270                    ; 2 uses
  %i.pi = udiv i64 %i.ph, 255                     ; 3 uses
  %i.pj = add nuw nsw i64 %i.pi, 1                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4501743, i8 -1, i64 %i.pj, i1 false), !tbaa !39
  %scevgep804 = getelementptr i8, ptr %.3500630, i64 %i.pj
  %.neg861 = mul i64 %i.pi, -255
  %i.pk = add i64 %.neg861, %i.ph
  %i.pl = getelementptr i8, ptr %.3500630, i64 %i.pi
  %scevgep805 = getelementptr i8, ptr %i.pl, i64 2
  br label %._crit_edge748

._crit_edge748:                                   ; preds = %.lr.ph747.preheader, %bb.cs
  %.3500630.pn.lcssa = phi ptr [ %.3500630, %bb.cs ], [ %scevgep804, %.lr.ph747.preheader ]
  %.0.lcssa = phi i64 [ %i.pf, %bb.cs ], [ %i.pk, %.lr.ph747.preheader ]
  %.4501.lcssa = phi ptr [ %.4501743, %bb.cs ], [ %scevgep805, %.lr.ph747.preheader ]
  %i.pm = trunc nuw i64 %.0.lcssa to i8
  %i.pn = getelementptr inbounds nuw i8, ptr %.3500630.pn.lcssa, i64 2
  store i8 %i.pm, ptr %.4501.lcssa, align 1, !tbaa !39
  br label %.critedge296

bb.ct:                                            ; preds = %bb.cr
  %.0220.tr = trunc nuw nsw i64 %.0220 to i8
  %i.po = shl nuw i8 %.0220.tr, 4
  store i8 %i.po, ptr %.3500630, align 1, !tbaa !39
  br label %.critedge296

.critedge296:                                     ; preds = %bb.ct, %._crit_edge748
  %.5502 = phi ptr [ %i.pn, %._crit_edge748 ], [ %.4501743, %bb.ct ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.5502, ptr align 1 %.2512628, i64 %.0220, i1 false)
  %i.pp = getelementptr inbounds nuw i8, ptr %.5502, i64 %.0220
  %i.pq = ptrtoint ptr %i.pd to i64
  %i.pr = ptrtoint ptr %1 to i64
  %i.ps = sub i64 %i.pq, %i.pr
  %i.pt = trunc i64 %i.ps to i32
  store i32 %i.pt, ptr %3, align 4, !tbaa !29
  %i.pu = ptrtoint ptr %i.pp to i64
  %i.pv = ptrtoint ptr %2 to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = trunc i64 %i.pw to i32
  br label %bb.dg

bb.cu:                                            ; preds = %.critedge, %LZ4_wildCopy8.exit
  %.5519.lcssa.lcssa798799 = ptrtoaddr ptr %.5519.lcssa to i64
  br i1 %i.ag, label %bb.cv, label %bb.dg

bb.cv:                                            ; preds = %bb.cu
  %i.py = ptrtoint ptr %.5519.lcssa to i64        ; 2 uses
  %i.pz = sub i64 %i.py, %i.kz                    ; 6 uses
  %i.qa = add i64 %i.pz, 240
  %i.qb = udiv i64 %i.qa, 255
  %i.qc = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 2 uses
  %i.qd = getelementptr i8, ptr %.0497725, i64 %i.qb
  %i.qe = getelementptr i8, ptr %i.qd, i64 1
  %i.qf = getelementptr i8, ptr %i.qe, i64 %i.pz  ; 3 uses
  %.not287 = icmp ugt ptr %i.qf, %i.qc
  br i1 %.not287, label %.thread632, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qg = ptrtoint ptr %i.qc to i64
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = mul i64 %i.qi, 255
  %i.qk = add i64 %i.qj, 18
  %i.ql = zext i32 %.11245.lcssa to i64
  %spec.select297653 = tail call i64 @llvm.umin.i64(i64 %i.qk, i64 %i.ql) ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 2
  %i.qn = ptrtoint ptr %i.i to i64
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = add i64 %spec.select297653, %i.qn
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = icmp slt i64 %i.qq, -12
  br i1 %i.qr, label %bb.cx, label %.thread632

bb.cx:                                            ; preds = %bb.cw
  %i.qs = icmp ugt i64 %i.pz, 14
  br i1 %i.qs, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.qt = add i64 %i.pz, -15                      ; 2 uses
  store i8 -16, ptr %.0497725, align 1, !tbaa !39
  %i.qu = icmp ugt i64 %i.qt, 254
  br i1 %i.qu, label %.lr.ph732.preheader, label %._crit_edge733

.lr.ph732.preheader:                              ; preds = %bb.cy
  %i.qv = add i64 %i.py, -270
  %i.qw = sub i64 %i.qv, %i.kz                    ; 2 uses
  %i.qx = udiv i64 %i.qw, 255                     ; 3 uses
  %i.qy = add nuw nsw i64 %i.qx, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ky, i8 -1, i64 %i.qy, i1 false), !tbaa !39
  %i.qz = getelementptr i8, ptr %.0497725, i64 %i.qx
  %scevgep794 = getelementptr i8, ptr %i.qz, i64 2
  %.neg859 = mul i64 %i.qx, -255
  %i.ra = add i64 %.neg859, %i.qw
  br label %._crit_edge733

._crit_edge733:                                   ; preds = %.lr.ph732.preheader, %bb.cy
  %.9.lcssa = phi ptr [ %i.ky, %bb.cy ], [ %scevgep794, %.lr.ph732.preheader ] ; 2 uses
  %.0.i.lcssa = phi i64 [ %i.qt, %bb.cy ], [ %i.ra, %.lr.ph732.preheader ]
  %i.rb = trunc nuw i64 %.0.i.lcssa to i8
  %i.rc = getelementptr inbounds nuw i8, ptr %.9.lcssa, i64 1
  store i8 %i.rb, ptr %.9.lcssa, align 1, !tbaa !39
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %.tr.i = trunc nuw nsw i64 %i.pz to i8
  %i.rd = shl nuw i8 %.tr.i, 4
  store i8 %i.rd, ptr %.0497725, align 1, !tbaa !39
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %._crit_edge733
  %.6 = phi ptr [ %i.rc, %._crit_edge733 ], [ %i.ky, %bb.cz ] ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.6, i64 %i.pz ; 3 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %bb.da
  %.09.i395 = phi ptr [ %.6, %bb.da ], [ %i.rg, %bb.db ] ; 2 uses
  %.0.i396 = phi ptr [ %.0510724, %bb.da ], [ %i.rh, %bb.db ] ; 2 uses
  %i.rf = load i64, ptr %.0.i396, align 1
  store i64 %i.rf, ptr %.09.i395, align 1
  %i.rg = getelementptr inbounds nuw i8, ptr %.09.i395, i64 8 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.0.i396, i64 8
  %i.ri = icmp ult ptr %i.rg, %i.re
  br i1 %i.ri, label %bb.db, label %LZ4_wildCopy8.exit397, !llvm.loop !7

LZ4_wildCopy8.exit397:                            ; preds = %bb.db
  %i.rj = trunc i32 %.13 to i16
  store i16 %i.rj, ptr %i.re, align 1, !tbaa !38
  %i.rk = getelementptr i8, ptr %i.re, i64 2      ; 3 uses
  %i.rl = shl nuw i64 %spec.select297653, 32
  %i.rm = ashr exact i64 %i.rl, 32                ; 4 uses
  %i.rn = add nsw i64 %i.rm, -4                   ; 2 uses
  %i.ro = icmp ugt i64 %i.rn, 14
  br i1 %i.ro, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %LZ4_wildCopy8.exit397
  %i.rp = load i8, ptr %.0497725, align 1, !tbaa !39
  %i.rq = add i8 %i.rp, 15
  store i8 %i.rq, ptr %.0497725, align 1, !tbaa !39
  %i.rr = add nsw i64 %i.rm, -19                  ; 2 uses
  %i.rs = icmp ugt i64 %i.rr, 509
  br i1 %i.rs, label %.lr.ph739.preheader, label %._crit_edge740

.lr.ph739.preheader:                              ; preds = %bb.dc
  %i.rt = add nsw i64 %i.rm, -529                 ; 2 uses
  %i.ru = udiv i64 %i.rt, 510                     ; 2 uses
  %i.rv = shl nuw nsw i64 %i.ru, 1                ; 2 uses
  %i.rw = add nuw nsw i64 %i.rv, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.rk, i8 -1, i64 %i.rw, i1 false), !tbaa !39
  %scevgep797 = getelementptr i8, ptr %.6, i64 4
  %i.rx = add i64 %i.rv, %.5519.lcssa.lcssa798799
  %i.ry = sub i64 %i.rx, %i.kz
  %scevgep803 = getelementptr i8, ptr %scevgep797, i64 %i.ry
  %.neg860 = mul i64 %i.ru, -510
  %i.rz = add i64 %.neg860, %i.rt
  br label %._crit_edge740

._crit_edge740:                                   ; preds = %.lr.ph739.preheader, %bb.dc
  %.7503.lcssa = phi ptr [ %i.rk, %bb.dc ], [ %scevgep803, %.lr.ph739.preheader ] ; 3 uses
  %.050.i.lcssa = phi i64 [ %i.rr, %bb.dc ], [ %i.rz, %.lr.ph739.preheader ] ; 3 uses
  %i.sa = icmp samesign ugt i64 %.050.i.lcssa, 254
  br i1 %i.sa, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %._crit_edge740
  %i.sb = add nsw i64 %.050.i.lcssa, -255
  %i.sc = getelementptr inbounds nuw i8, ptr %.7503.lcssa, i64 1
  store i8 -1, ptr %.7503.lcssa, align 1, !tbaa !39
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %._crit_edge740
  %.8504 = phi ptr [ %i.sc, %bb.dd ], [ %.7503.lcssa, %._crit_edge740 ] ; 2 uses
  %.1.i = phi i64 [ %i.sb, %bb.dd ], [ %.050.i.lcssa, %._crit_edge740 ]
  %i.sd = trunc nuw i64 %.1.i to i8
  %i.se = getelementptr inbounds nuw i8, ptr %.8504, i64 1
  store i8 %i.sd, ptr %.8504, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit

bb.df:                                            ; preds = %LZ4_wildCopy8.exit397
  %i.sf = trunc nuw nsw i64 %i.rn to i8
  %i.sg = load i8, ptr %.0497725, align 1, !tbaa !39
  %i.sh = add i8 %i.sg, %i.sf
  store i8 %i.sh, ptr %.0497725, align 1, !tbaa !39
  br label %LZ4HC_encodeSequence.exit

LZ4HC_encodeSequence.exit:                        ; preds = %bb.de, %bb.df
  %.10505 = phi ptr [ %i.se, %bb.de ], [ %i.rk, %bb.df ]
  %i.si = getelementptr inbounds i8, ptr %.5519.lcssa, i64 %i.rm
  br label %.loopexit

bb.dg:                                            ; preds = %bb.cu, %bb.cq, %select_searchDict_function.exit, %.critedge296
  %.1 = phi i32 [ 0, %bb.cq ], [ 0, %select_searchDict_function.exit ], [ 0, %bb.cu ], [ %i.px, %.critedge296 ]
  ret i32 %.1
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @LZ4HC_compress_optimal(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i64 noundef range(i64 0, 4294967296) %6, i32 noundef range(i32 0, 3) %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(65584) ptr @malloc(i64 noundef 65584) #19 ; 52 uses
  %i.h = load i32, ptr %3, align 4, !tbaa !29     ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i ; 6 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -12 ; 27 uses
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -5 ; 37 uses
  %i.m = icmp eq ptr %i.g, null
  br i1 %i.m, label %.thread1632, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sext i32 %4 to i64
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n ; 6 uses
  store i32 0, ptr %3, align 4, !tbaa !29
  %i.p = icmp eq i32 %7, 2                        ; 3 uses
  %spec.select.idx = select i1 %i.p, i64 -5, i64 0
  %spec.select = getelementptr inbounds i8, ptr %i.o, i64 %spec.select.idx ; 5 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %6, i64 4095) ; 2 uses
  %.not1966 = icmp slt i32 %i.h, 12
  br i1 %.not1966, label %.loopexit1682, label %.lr.ph1971

.lr.ph1971:                                       ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 21 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 262184
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 262152
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 262168
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 262172
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 262160
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 262176 ; 6 uses
  %.not.i.i755 = icmp ne i32 %10, 0               ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 6 uses
  %i.y = getelementptr inbounds i8, ptr %i.j, i64 -6 ; 6 uses
  %i.z = ptrtoaddr ptr %i.l to i64                ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.ac = icmp ne i32 %9, 0                       ; 3 uses
  %.not408 = icmp eq i32 %8, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.not.i = icmp ne i32 %7, 0                     ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  %i.bh = icmp sgt i32 %5, 0
  %i.bi = icmp sgt i32 %5, 0
  %i.bj = icmp sgt i32 %5, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph1971, %.loopexit1677
  %.012861969 = phi ptr [ %2, %.lr.ph1971 ], [ %.3, %.loopexit1677 ] ; 13 uses
  %.012911968 = phi ptr [ %1, %.lr.ph1971 ], [ %.31294, %.loopexit1677 ] ; 7 uses
  %.012981967 = phi ptr [ %1, %.lr.ph1971 ], [ %.31301, %.loopexit1677 ] ; 17 uses
  %i.bk = ptrtoint ptr %.012981967 to i64         ; 4 uses
  %i.bl = ptrtoint ptr %.012911968 to i64         ; 3 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 17 uses
  %i.bn = trunc i64 %i.bm to i32                  ; 8 uses
  %i.bo = load ptr, ptr %i.r, align 8, !tbaa !42  ; 11 uses
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !25  ; 29 uses
  %i.bq = load i32, ptr %i.t, align 8, !tbaa !26  ; 33 uses
  %i.br = ptrtoint ptr %i.bp to i64               ; 6 uses
  %i.bs = sub i64 %i.bk, %i.br                    ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = add i32 %i.bq, %i.bt                    ; 10 uses
  %i.bv = load i32, ptr %i.u, align 4, !tbaa !45  ; 12 uses
  %i.bw = add i32 %i.bv, 65536                    ; 3 uses
  %i.bx = icmp ugt i32 %i.bw, %i.bu               ; 2 uses
  %i.by = add i32 %i.bu, -65535
  %i.bz = select i1 %i.bx, i32 %i.bv, i32 %i.by   ; 5 uses
  %i.ca = load ptr, ptr %i.v, align 8, !tbaa !44  ; 28 uses
  %i.cb = zext i32 %i.bq to i64                   ; 6 uses
  %i.cc = zext i32 %i.bv to i64
  %i.cd = sub nsw i64 %i.cb, %i.cc                ; 13 uses
  %.ptr1656.ptr.ptr = getelementptr inbounds i8, ptr %i.ca, i64 %i.cd ; 4 uses
  %.val937 = load i32, ptr %.012981967, align 1, !tbaa !28 ; 18 uses
  %i.ce = load i32, ptr %i.w, align 8, !tbaa !43  ; 4 uses
  %i.cf = icmp ult i32 %i.ce, %i.bu
  br i1 %i.cf, label %.lr.ph, label %LZ4HC_Insert.exit.i.i684

.lr.ph:                                           ; preds = %bb.c
  %i.cg = sub nsw i64 0, %i.cb
  %invariant.gep = getelementptr i8, ptr %i.bp, i64 %i.cg ; 3 uses
  %i.ch = zext i32 %i.ce to i64                   ; 6 uses
  %i.ci = zext i32 %i.bu to i64                   ; 3 uses
  %i.cj = sub nsw i64 %i.ci, %i.ch
  %xtraiter = and i64 %i.cj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %i.ch
  %.val948.prol = load i32, ptr %gep.prol, align 1, !tbaa !28
  %i.ck = mul i32 %.val948.prol, -1640531535
  %i.cl = lshr i32 %i.ck, 17
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !29
  %i.cp = sub i32 %i.ce, %i.co
  %i.cq = tail call i32 @llvm.umin.i32(i32 %i.cp, i32 65535)
  %i.cr = trunc nuw i32 %i.cq to i16
  %i.cs = and i64 %i.ch, 65535
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cs
  store i16 %i.cr, ptr %i.ct, align 2, !tbaa !40
  store i32 %i.ce, ptr %i.cn, align 4, !tbaa !29
  %indvars.iv.next.prol = add nuw nsw i64 %i.ch, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.ch, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.cu = add nsw i64 %i.ci, -1
  %i.cv = icmp eq i64 %i.cu, %i.ch
  br i1 %i.cv, label %LZ4HC_Insert.exit.i.i684.loopexit, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %.val948 = load i32, ptr %gep, align 1, !tbaa !28
  %i.cw = mul i32 %.val948, -1640531535
  %i.cx = lshr i32 %i.cw, 17
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !29
  %i.db = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.dc = sub i32 %i.db, %i.da
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 65535)
  %i.de = trunc nuw i32 %i.dd to i16
  %i.df = and i64 %indvars.iv, 65535
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.df
  store i16 %i.de, ptr %i.dg, align 2, !tbaa !40
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %.val948.1 = load i32, ptr %gep.1, align 1, !tbaa !28
  %i.dh = mul i32 %.val948.1, -1640531535
  %i.di = lshr i32 %i.dh, 17
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !29
  %i.dm = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.dn = sub i32 %i.dm, %i.dl
  %i.do = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 65535)
  %i.dp = trunc nuw i32 %i.do to i16
  %i.dq = and i64 %indvars.iv.next, 65535
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.dq
  store i16 %i.dp, ptr %i.dr, align 2, !tbaa !40
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ds = icmp samesign ult i64 %indvars.iv.next.1, %i.ci
  br i1 %i.ds, label %.lr.ph.new, label %LZ4HC_Insert.exit.i.i684.loopexit, !llvm.loop !1

LZ4HC_Insert.exit.i.i684.loopexit:                ; preds = %.lr.ph.new, %.prol.loopexit
  %.val950.pre = load i32, ptr %.012981967, align 1, !tbaa !28
  br label %LZ4HC_Insert.exit.i.i684

LZ4HC_Insert.exit.i.i684:                         ; preds = %LZ4HC_Insert.exit.i.i684.loopexit, %bb.c
  %.val950 = phi i32 [ %.val950.pre, %LZ4HC_Insert.exit.i.i684.loopexit ], [ %.val937, %bb.c ]
  store i32 %i.bu, ptr %i.w, align 8, !tbaa !43
  %i.dt = mul i32 %.val950, -1640531535
  %i.du = lshr i32 %i.dt, 17
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !29 ; 2 uses
  %i.dy = add i64 %i.bs, %i.cb
  %i.dz = getelementptr inbounds nuw i8, ptr %.012981967, i64 4 ; 12 uses
  %i.ea = icmp ult ptr %i.dz, %i.k                ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.012981967, i64 12 ; 3 uses
  %i.ec = ptrtoint ptr %i.dz to i64               ; 7 uses
  %i.ed = add i32 %i.bq, -4                       ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.ef = and i32 %.val937, 65535
  %i.eg = lshr i32 %.val937, 16
  %i.eh = icmp eq i32 %i.ef, %i.eg
  %i.ei = and i32 %.val937, 255
  %i.ej = lshr i32 %.val937, 24
  %i.ek = icmp eq i32 %i.ei, %i.ej
  %i.el = and i1 %i.eh, %i.ek
  %i.em = zext i32 %.val937 to i64
  %i.en = mul nuw i64 %i.em, 4294967297           ; 6 uses
  %i.eo = icmp ult ptr %i.bp, %i.k                ; 3 uses
  %i.ep = icmp ult i32 %i.bv, %i.bq               ; 3 uses
  %i.eq = ptrtoint ptr %.ptr1656.ptr.ptr to i64   ; 3 uses
  %i.er = icmp uge i32 %i.dx, %i.bz
  %i.es = and i1 %i.er, %i.bh
  br i1 %i.es, label %.lr.ph2649.preheader, label %.thread1369

.lr.ph2649.preheader:                             ; preds = %LZ4HC_Insert.exit.i.i684
  %.not.i10542636 = icmp slt i64 %i.cd, 4
  br label %.lr.ph2649

end_hunk_4
begin_hunk_5_@LZ4HC_compress_optimal:bb.a
  %.0338 = phi i32 [ %.2386, %bb.lk ], [ %i.boc, %bb.ll ]
  %i.bnx = sext i32 %.0340 to i64
  %i.bny = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bnx ; 2 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 8 ; 2 uses
  %i.boa = load i32, ptr %i.bnz, align 4, !tbaa !68 ; 3 uses
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bny, i64 4 ; 2 uses
  %i.boc = load i32, ptr %i.bob, align 4, !tbaa !69
  store i32 %.0339, ptr %i.bnz, align 4, !tbaa !68
  store i32 %.0338, ptr %i.bob, align 4, !tbaa !69
  %i.bod = icmp sgt i32 %i.boa, %.0340
  %i.boe = sub nsw i32 %.0340, %i.boa
  br i1 %i.bod, label %.preheader1676, label %bb.ll

.preheader1676:                                   ; preds = %bb.ll
  %i.bof = icmp sgt i32 %.6381, 0
  br i1 %i.bof, label %.lr.ph1948, label %.loopexit1677

.lr.ph1948:                                       ; preds = %.preheader1676, %bb.ly
  %.03371947 = phi i32 [ %.1, %bb.ly ], [ 0, %.preheader1676 ] ; 3 uses
  %.112871946 = phi ptr [ %.21288, %bb.ly ], [ %.012861969, %.preheader1676 ] ; 10 uses
  %.112921945 = phi ptr [ %.21293, %bb.ly ], [ %.012911968, %.preheader1676 ] ; 4 uses
  %.112991944 = phi ptr [ %.21300, %bb.ly ], [ %.012981967, %.preheader1676 ] ; 4 uses
  %i.bog = sext i32 %.03371947 to i64
  %i.boh = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.bog ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 8
  %i.boj = load i32, ptr %i.boi, align 4, !tbaa !68 ; 4 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boh, i64 4
  %i.bol = load i32, ptr %i.bok, align 4, !tbaa !69 ; 2 uses
  %i.bom = icmp eq i32 %i.boj, 1
  br i1 %i.bom, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %.lr.ph1948
  %i.bon = getelementptr inbounds nuw i8, ptr %.112991944, i64 1
  %i.boo = add nsw i32 %.03371947, 1
  br label %bb.ly, !llvm.loop !66

bb.ln:                                            ; preds = %.lr.ph1948
  %i.bop = add nsw i32 %i.boj, %.03371947
  %i.boq = getelementptr i8, ptr %.112871946, i64 1 ; 4 uses
  %i.bor = ptrtoint ptr %.112991944 to i64        ; 3 uses
  %i.bos = ptrtoint ptr %.112921945 to i64        ; 3 uses
  %i.bot = sub i64 %i.bor, %i.bos                 ; 6 uses
  %i.bou = udiv i64 %i.bot, 255
  %i.bov = getelementptr inbounds nuw i8, ptr %i.boq, i64 %i.bou
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 %i.bot
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 8
  %i.boy = icmp ugt ptr %i.box, %spec.select
  %or.cond.i = select i1 %.not.i, i1 %i.boy, i1 false
  br i1 %or.cond.i, label %.thread1572.loopexit, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.boz = icmp ugt i64 %i.bot, 14
  br i1 %i.boz, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.bpa = add i64 %i.bot, -15                    ; 2 uses
  store i8 -16, ptr %.112871946, align 1, !tbaa !39
  %i.bpb = icmp ugt i64 %i.bpa, 254
  br i1 %i.bpb, label %.lr.ph1933.preheader, label %._crit_edge1934

.lr.ph1933.preheader:                             ; preds = %bb.lp
  %i.bpc = add i64 %i.bor, -270
  %i.bpd = sub i64 %i.bpc, %i.bos                 ; 2 uses
  %i.bpe = udiv i64 %i.bpd, 255                   ; 3 uses
  %i.bpf = add nuw nsw i64 %i.bpe, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.boq, i8 -1, i64 %i.bpf, i1 false), !tbaa !39
  %scevgep = getelementptr i8, ptr %.112871946, i64 2
  %scevgep2151 = getelementptr i8, ptr %scevgep, i64 %i.bpe
  %.neg2368 = mul i64 %i.bpe, -255
  %i.bpg = add i64 %.neg2368, %i.bpd
  br label %._crit_edge1934

._crit_edge1934:                                  ; preds = %.lr.ph1933.preheader, %bb.lp
  %.17.lcssa = phi ptr [ %i.boq, %bb.lp ], [ %scevgep2151, %.lr.ph1933.preheader ] ; 2 uses
  %.0.i428.lcssa = phi i64 [ %i.bpa, %bb.lp ], [ %i.bpg, %.lr.ph1933.preheader ]
  %i.bph = trunc nuw i64 %.0.i428.lcssa to i8
  %i.bpi = getelementptr inbounds nuw i8, ptr %.17.lcssa, i64 1
  store i8 %i.bph, ptr %.17.lcssa, align 1, !tbaa !39
  br label %bb.lr

bb.lq:                                            ; preds = %bb.lo
  %.tr.i425 = trunc nuw nsw i64 %i.bot to i8
  %i.bpj = shl nuw i8 %.tr.i425, 4
  store i8 %i.bpj, ptr %.112871946, align 1, !tbaa !39
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %._crit_edge1934
  %.13 = phi ptr [ %i.bpi, %._crit_edge1934 ], [ %i.boq, %bb.lq ] ; 3 uses
  %i.bpk = getelementptr inbounds nuw i8, ptr %.13, i64 %i.bot ; 3 uses
  br label %bb.ls

bb.ls:                                            ; preds = %bb.ls, %bb.lr
  %.09.i442 = phi ptr [ %.13, %bb.lr ], [ %i.bpm, %bb.ls ] ; 2 uses
  %.0.i443 = phi ptr [ %.112921945, %bb.lr ], [ %i.bpn, %bb.ls ] ; 2 uses
  %i.bpl = load i64, ptr %.0.i443, align 1
  store i64 %i.bpl, ptr %.09.i442, align 1
  %i.bpm = getelementptr inbounds nuw i8, ptr %.09.i442, i64 8 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %.0.i443, i64 8
  %i.bpo = icmp ult ptr %i.bpm, %i.bpk
  br i1 %i.bpo, label %bb.ls, label %LZ4_wildCopy8.exit444, !llvm.loop !7

LZ4_wildCopy8.exit444:                            ; preds = %bb.ls
  %i.bpp = trunc i32 %i.bol to i16
  store i16 %i.bpp, ptr %i.bpk, align 1, !tbaa !38
  %i.bpq = getelementptr i8, ptr %i.bpk, i64 2    ; 4 uses
  %i.bpr = sext i32 %i.boj to i64                 ; 4 uses
  %i.bps = add nsw i64 %i.bpr, -4                 ; 3 uses
  %i.bpt = udiv i64 %i.bps, 255
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpq, i64 %i.bpt
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 6
  %i.bpw = icmp ugt ptr %i.bpv, %spec.select
  %or.cond64.i = select i1 %.not.i, i1 %i.bpw, i1 false
  br i1 %or.cond64.i, label %.thread1572.loopexit, label %bb.lt

bb.lt:                                            ; preds = %LZ4_wildCopy8.exit444
  %i.bpx = icmp ugt i64 %i.bps, 14
  br i1 %i.bpx, label %bb.lu, label %bb.lx

bb.lu:                                            ; preds = %bb.lt
  %i.bpy = load i8, ptr %.112871946, align 1, !tbaa !39
  %i.bpz = add i8 %i.bpy, 15
  store i8 %i.bpz, ptr %.112871946, align 1, !tbaa !39
  %i.bqa = add nsw i64 %i.bpr, -19                ; 2 uses
  %i.bqb = icmp ugt i64 %i.bqa, 509
  br i1 %i.bqb, label %.lr.ph1940.preheader, label %._crit_edge1941

.lr.ph1940.preheader:                             ; preds = %bb.lu
  %i.bqc = add nsw i64 %i.bpr, -529               ; 2 uses
  %i.bqd = udiv i64 %i.bqc, 510                   ; 2 uses
  %i.bqe = shl nuw nsw i64 %i.bqd, 1              ; 2 uses
  %i.bqf = add nuw nsw i64 %i.bqe, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bpq, i8 -1, i64 %i.bqf, i1 false), !tbaa !39
  %scevgep2152 = getelementptr i8, ptr %.13, i64 4
  %i.bqg = add i64 %i.bqe, %i.bor
  %i.bqh = sub i64 %i.bqg, %i.bos
  %scevgep2153 = getelementptr i8, ptr %scevgep2152, i64 %i.bqh
  %.neg2369 = mul i64 %i.bqd, -510
  %i.bqi = add i64 %.neg2369, %i.bqc
  br label %._crit_edge1941

._crit_edge1941:                                  ; preds = %.lr.ph1940.preheader, %bb.lu
  %.15.lcssa = phi ptr [ %i.bpq, %bb.lu ], [ %scevgep2153, %.lr.ph1940.preheader ] ; 3 uses
  %.050.i426.lcssa = phi i64 [ %i.bqa, %bb.lu ], [ %i.bqi, %.lr.ph1940.preheader ] ; 3 uses
  %i.bqj = icmp samesign ugt i64 %.050.i426.lcssa, 254
  br i1 %i.bqj, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %._crit_edge1941
  %i.bqk = add nsw i64 %.050.i426.lcssa, -255
  %i.bql = getelementptr inbounds nuw i8, ptr %.15.lcssa, i64 1
  store i8 -1, ptr %.15.lcssa, align 1, !tbaa !39
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %._crit_edge1941
  %.16 = phi ptr [ %i.bql, %bb.lv ], [ %.15.lcssa, %._crit_edge1941 ] ; 2 uses
  %.1.i427 = phi i64 [ %i.bqk, %bb.lv ], [ %.050.i426.lcssa, %._crit_edge1941 ]
  %i.bqm = trunc nuw i64 %.1.i427 to i8
  %i.bqn = getelementptr inbounds nuw i8, ptr %.16, i64 1
  store i8 %i.bqm, ptr %.16, align 1, !tbaa !39
  br label %select.unfold1571

bb.lx:                                            ; preds = %bb.lt
  %i.bqo = trunc nuw nsw i64 %i.bps to i8
  %i.bqp = load i8, ptr %.112871946, align 1, !tbaa !39
  %i.bqq = add i8 %i.bqp, %i.bqo
  store i8 %i.bqq, ptr %.112871946, align 1, !tbaa !39
  br label %select.unfold1571

select.unfold1571:                                ; preds = %bb.lx, %bb.lw
  %.14 = phi ptr [ %i.bqn, %bb.lw ], [ %i.bpq, %bb.lx ]
  %i.bqr = getelementptr inbounds i8, ptr %.112991944, i64 %i.bpr ; 2 uses
  br label %bb.ly

bb.ly:                                            ; preds = %select.unfold1571, %bb.lm
  %.21300 = phi ptr [ %i.bon, %bb.lm ], [ %i.bqr, %select.unfold1571 ] ; 2 uses
  %.21293 = phi ptr [ %.112921945, %bb.lm ], [ %i.bqr, %select.unfold1571 ] ; 2 uses
  %.21288 = phi ptr [ %.112871946, %bb.lm ], [ %.14, %select.unfold1571 ] ; 2 uses
  %.1 = phi i32 [ %i.boo, %bb.lm ], [ %i.bop, %select.unfold1571 ] ; 2 uses
  %i.bqs = icmp slt i32 %.1, %.6381
  br i1 %i.bqs, label %.lr.ph1948, label %.loopexit1677

select.unfold1581:                                ; preds = %bb.da, %bb.cz
  %.20 = phi ptr [ %i.vp, %bb.cz ], [ %i.ut, %bb.da ]
  %i.bqt = getelementptr inbounds nuw i8, ptr %.012981967, i64 %.sroa.03.sroa.4.0.insert.shift.i717 ; 2 uses
  br label %.loopexit1677

.loopexit1677:                                    ; preds = %bb.ly, %.preheader1676, %select.unfold1581, %LZ4HC_FindLongerMatch.exit915.thread
  %.31301 = phi ptr [ %i.tv, %LZ4HC_FindLongerMatch.exit915.thread ], [ %i.bqt, %select.unfold1581 ], [ %.012981967, %.preheader1676 ], [ %.21300, %bb.ly ] ; 2 uses
  %.31294 = phi ptr [ %.012911968, %LZ4HC_FindLongerMatch.exit915.thread ], [ %i.bqt, %select.unfold1581 ], [ %.012911968, %.preheader1676 ], [ %.21293, %bb.ly ] ; 2 uses
  %.3 = phi ptr [ %.012861969, %LZ4HC_FindLongerMatch.exit915.thread ], [ %.20, %select.unfold1581 ], [ %.012861969, %.preheader1676 ], [ %.21288, %bb.ly ] ; 2 uses
  %.not = icmp ugt ptr %.31301, %i.k
  br i1 %.not, label %.loopexit1682, label %bb.c

.loopexit1682:                                    ; preds = %.loopexit1677, %bb.b, %LZ4HC_encodeSequence.exit
  %.41295 = phi ptr [ %i.bvb, %LZ4HC_encodeSequence.exit ], [ %1, %bb.b ], [ %.31294, %.loopexit1677 ] ; 3 uses
  %.41289 = phi ptr [ %.12, %LZ4HC_encodeSequence.exit ], [ %2, %bb.b ], [ %.3, %.loopexit1677 ] ; 3 uses
  %i.bqu = ptrtoint ptr %i.j to i64
  %i.bqv = ptrtoint ptr %.41295 to i64
  %i.bqw = sub i64 %i.bqu, %i.bqv                 ; 3 uses
  %i.bqx = add i64 %i.bqw, 240
  %i.bqy = udiv i64 %i.bqx, 255
  %11 = getelementptr inbounds nuw i8, ptr %spec.select, i64 5
  %spec.select422 = select i1 %i.p, ptr %11, ptr %i.o ; 2 uses
  %.not417 = icmp ne i32 %7, 0
  %i.bqz = getelementptr i8, ptr %.41289, i64 %i.bqy
  %i.bra = getelementptr i8, ptr %i.bqz, i64 1
  %i.brb = getelementptr i8, ptr %i.bra, i64 %i.bqw
  %i.brc = icmp ugt ptr %i.brb, %spec.select422
  %or.cond1655 = select i1 %.not417, i1 %i.brc, i1 false
  br i1 %or.cond1655, label %bb.lz, label %bb.ma

.thread1609:                                      ; preds = %bb.mf, %bb.me
  %i.brd = ptrtoint ptr %i.j to i64
  %i.bre = sub i64 %i.brd, %i.bsq                 ; 3 uses
  %i.brf = add i64 %i.bre, 240
  %i.brg = udiv i64 %i.brf, 255
  %i.brh = getelementptr i8, ptr %.4.ph, i64 %i.brg
  %i.bri = getelementptr i8, ptr %i.brh, i64 1
  %i.brj = getelementptr i8, ptr %i.bri, i64 %i.bre
  %i.brk = icmp ugt ptr %i.brj, %i.o
  br i1 %i.brk, label %.thread1618, label %bb.ma

bb.lz:                                            ; preds = %.loopexit1682
  %i.brl = icmp eq i32 %7, 1
  br i1 %i.brl, label %bb.mp, label %.thread1618

.thread1618:                                      ; preds = %.thread1609, %bb.lz
  %spec.select422160816141625 = phi ptr [ %spec.select422, %bb.lz ], [ %i.o, %.thread1609 ]
  %.41289160616151624 = phi ptr [ %.41289, %bb.lz ], [ %.4.ph, %.thread1609 ] ; 2 uses
  %.41295160416161623 = phi ptr [ %.41295, %bb.lz ], [ %.31294.ph, %.thread1609 ]
  %i.brm = ptrtoint ptr %spec.select422160816141625 to i64
  %i.brn = ptrtoint ptr %.41289160616151624 to i64
  %i.bro = xor i64 %i.brn, -1
  %i.brp = add i64 %i.bro, %i.brm                 ; 2 uses
  %i.brq = add i64 %i.brp, 241
  %i.brr = lshr i64 %i.brq, 8
  %i.brs = sub i64 %i.brp, %i.brr
  br label %bb.ma

bb.ma:                                            ; preds = %.thread1609, %.thread1618, %.loopexit1682
  %.412891607 = phi ptr [ %.41289160616151624, %.thread1618 ], [ %.4.ph, %.thread1609 ], [ %.41289, %.loopexit1682 ] ; 6 uses
  %.412951605 = phi ptr [ %.41295160416161623, %.thread1618 ], [ %.31294.ph, %.thread1609 ], [ %.41295, %.loopexit1682 ] ; 2 uses
  %.0336 = phi i64 [ %i.brs, %.thread1618 ], [ %i.bre, %.thread1609 ], [ %i.bqw, %.loopexit1682 ] ; 7 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %.412951605, i64 %.0336
  %i.bru = icmp ugt i64 %.0336, 14
  %.512901988 = getelementptr i8, ptr %.412891607, i64 1 ; 3 uses
  br i1 %i.bru, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  %i.brv = add i64 %.0336, -15                    ; 2 uses
  store i8 -16, ptr %.412891607, align 1, !tbaa !39
  %i.brw = icmp ugt i64 %i.brv, 254
  br i1 %i.brw, label %.lr.ph1992.preheader, label %._crit_edge1993

.lr.ph1992.preheader:                             ; preds = %bb.mb
  %i.brx = add i64 %.0336, -270                   ; 2 uses
  %i.bry = udiv i64 %i.brx, 255                   ; 3 uses
  %i.brz = add nuw nsw i64 %i.bry, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.512901988, i8 -1, i64 %i.brz, i1 false), !tbaa !39
  %scevgep2160 = getelementptr i8, ptr %.412891607, i64 %i.brz
  %.neg2374 = mul i64 %i.bry, -255
  %i.bsa = add i64 %.neg2374, %i.brx
  %i.bsb = getelementptr i8, ptr %.412891607, i64 %i.bry
  %scevgep2161 = getelementptr i8, ptr %i.bsb, i64 2
  br label %._crit_edge1993

._crit_edge1993:                                  ; preds = %.lr.ph1992.preheader, %bb.mb
  %.412891607.pn.lcssa = phi ptr [ %.412891607, %bb.mb ], [ %scevgep2160, %.lr.ph1992.preheader ]
  %.0.lcssa = phi i64 [ %i.brv, %bb.mb ], [ %i.bsa, %.lr.ph1992.preheader ]
  %.51290.lcssa = phi ptr [ %.512901988, %bb.mb ], [ %scevgep2161, %.lr.ph1992.preheader ]
  %i.bsc = trunc nuw i64 %.0.lcssa to i8
  %i.bsd = getelementptr inbounds nuw i8, ptr %.412891607.pn.lcssa, i64 2
  store i8 %i.bsc, ptr %.51290.lcssa, align 1, !tbaa !39
  br label %bb.md

bb.mc:                                            ; preds = %bb.ma
  %.0336.tr = trunc nuw nsw i64 %.0336 to i8
  %i.bse = shl nuw i8 %.0336.tr, 4
  store i8 %i.bse, ptr %.412891607, align 1, !tbaa !39
  br label %bb.md

bb.md:                                            ; preds = %._crit_edge1993, %bb.mc
  %.6 = phi ptr [ %i.bsd, %._crit_edge1993 ], [ %.512901988, %bb.mc ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.6, ptr align 1 %.412951605, i64 %.0336, i1 false)
  %i.bsf = getelementptr inbounds nuw i8, ptr %.6, i64 %.0336
  %i.bsg = ptrtoint ptr %i.brt to i64
  %i.bsh = ptrtoint ptr %1 to i64
  %i.bsi = sub i64 %i.bsg, %i.bsh
  %i.bsj = trunc i64 %i.bsi to i32
  store i32 %i.bsj, ptr %3, align 4, !tbaa !29
  %i.bsk = ptrtoint ptr %i.bsf to i64
  %i.bsl = ptrtoint ptr %2 to i64
  %i.bsm = sub i64 %i.bsk, %i.bsl
  %i.bsn = trunc i64 %i.bsm to i32
  br label %bb.mp

.thread1572.loopexit:                             ; preds = %bb.ln, %LZ4_wildCopy8.exit444
  %i.bso = sext i32 %i.boj to i64
  br label %.thread1572

.thread1572:                                      ; preds = %LZ4_wildCopy8.exit, %bb.cq, %.thread1572.loopexit
  %.31301.ph = phi ptr [ %.112991944, %.thread1572.loopexit ], [ %.012981967, %bb.cq ], [ %.012981967, %LZ4_wildCopy8.exit ] ; 2 uses
  %.31294.ph = phi ptr [ %.112921945, %.thread1572.loopexit ], [ %.012911968, %bb.cq ], [ %.012911968, %LZ4_wildCopy8.exit ] ; 4 uses
  %.5374.ph = phi i32 [ %i.bol, %.thread1572.loopexit ], [ %.22370.i.i700, %bb.cq ], [ %.22370.i.i700, %LZ4_wildCopy8.exit ]
  %.5.ph = phi i64 [ %i.bso, %.thread1572.loopexit ], [ %.sroa.03.sroa.4.0.insert.shift.i717, %bb.cq ], [ %.sroa.03.sroa.4.0.insert.shift.i717, %LZ4_wildCopy8.exit ]
  %.4.ph = phi ptr [ %.112871946, %.thread1572.loopexit ], [ %.012861969, %bb.cq ], [ %.012861969, %LZ4_wildCopy8.exit ] ; 12 uses
  br i1 %i.p, label %bb.me, label %bb.mp

bb.me:                                            ; preds = %.thread1572
  %i.bsp = ptrtoint ptr %.31301.ph to i64         ; 3 uses
  %i.bsq = ptrtoint ptr %.31294.ph to i64         ; 4 uses
  %i.bsr = sub i64 %i.bsp, %i.bsq                 ; 6 uses
  %i.bss = add i64 %i.bsr, 240
  %i.bst = udiv i64 %i.bss, 255
  %i.bsu = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.bsv = getelementptr i8, ptr %.4.ph, i64 %i.bst
  %i.bsw = getelementptr i8, ptr %i.bsv, i64 1
  %i.bsx = getelementptr i8, ptr %i.bsw, i64 %i.bsr ; 3 uses
  %.not416 = icmp ugt ptr %i.bsx, %i.bsu
  br i1 %.not416, label %.thread1609, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bsy = ptrtoint ptr %i.bsu to i64
  %i.bsz = ptrtoint ptr %i.bsx to i64
  %i.bta = sub i64 %i.bsy, %i.bsz
  %i.btb = mul i64 %i.bta, 255
  %i.btc = add i64 %i.btb, 18
  %spec.select4241662 = tail call i64 @llvm.umin.i64(i64 %i.btc, i64 %.5.ph)
  %i.btd = getelementptr inbounds nuw i8, ptr %i.bsx, i64 2
  %i.bte = ptrtoint ptr %i.o to i64
  %i.btf = ptrtoint ptr %i.btd to i64
  %i.btg = shl i64 %spec.select4241662, 32
  %i.bth = ashr exact i64 %i.btg, 32              ; 5 uses
  %i.bti = add i64 %i.bth, %i.bte
  %i.btj = sub i64 %i.btf, %i.bti
  %i.btk = icmp slt i64 %i.btj, -12
  br i1 %i.btk, label %bb.mg, label %.thread1609

bb.mg:                                            ; preds = %bb.mf
  %i.btl = getelementptr i8, ptr %.4.ph, i64 1    ; 3 uses
  %i.btm = icmp ugt i64 %i.bsr, 14
  br i1 %i.btm, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  %i.btn = add i64 %i.bsr, -15                    ; 2 uses
  store i8 -16, ptr %.4.ph, align 1, !tbaa !39
  %i.bto = icmp ugt i64 %i.btn, 254
  br i1 %i.bto, label %.lr.ph1977.preheader, label %._crit_edge1978

.lr.ph1977.preheader:                             ; preds = %bb.mh
  %i.btp = add i64 %i.bsp, -270
  %i.btq = sub i64 %i.btp, %i.bsq                 ; 2 uses
  %i.btr = udiv i64 %i.btq, 255                   ; 3 uses
  %i.bts = add nuw nsw i64 %i.btr, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.btl, i8 -1, i64 %i.bts, i1 false), !tbaa !39
  %i.btt = getelementptr i8, ptr %.4.ph, i64 %i.btr
  %scevgep2158 = getelementptr i8, ptr %i.btt, i64 2
  %.neg2372 = mul i64 %i.btr, -255
  %i.btu = add i64 %.neg2372, %i.btq
  br label %._crit_edge1978

._crit_edge1978:                                  ; preds = %.lr.ph1977.preheader, %bb.mh
  %.11.lcssa = phi ptr [ %i.btl, %bb.mh ], [ %scevgep2158, %.lr.ph1977.preheader ] ; 2 uses
  %.0.i.lcssa = phi i64 [ %i.btn, %bb.mh ], [ %i.btu, %.lr.ph1977.preheader ]
  %i.btv = trunc nuw i64 %.0.i.lcssa to i8
  %i.btw = getelementptr inbounds nuw i8, ptr %.11.lcssa, i64 1
  store i8 %i.btv, ptr %.11.lcssa, align 1, !tbaa !39
  br label %bb.mj

bb.mi:                                            ; preds = %bb.mg
  %.tr.i = trunc nuw nsw i64 %i.bsr to i8
  %i.btx = shl nuw i8 %.tr.i, 4
  store i8 %i.btx, ptr %.4.ph, align 1, !tbaa !39
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %._crit_edge1978
  %.8 = phi ptr [ %i.btw, %._crit_edge1978 ], [ %i.btl, %bb.mi ] ; 3 uses
  %i.bty = getelementptr inbounds nuw i8, ptr %.8, i64 %i.bsr ; 3 uses
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mk, %bb.mj
  %.09.i445 = phi ptr [ %.8, %bb.mj ], [ %i.bua, %bb.mk ] ; 2 uses
  %.0.i446 = phi ptr [ %.31294.ph, %bb.mj ], [ %i.bub, %bb.mk ] ; 2 uses
  %i.btz = load i64, ptr %.0.i446, align 1
  store i64 %i.btz, ptr %.09.i445, align 1
  %i.bua = getelementptr inbounds nuw i8, ptr %.09.i445, i64 8 ; 2 uses
  %i.bub = getelementptr inbounds nuw i8, ptr %.0.i446, i64 8
  %i.buc = icmp ult ptr %i.bua, %i.bty
  br i1 %i.buc, label %bb.mk, label %LZ4_wildCopy8.exit447, !llvm.loop !7

LZ4_wildCopy8.exit447:                            ; preds = %bb.mk
  %i.bud = trunc i32 %.5374.ph to i16
  store i16 %i.bud, ptr %i.bty, align 1, !tbaa !38
  %i.bue = getelementptr i8, ptr %i.bty, i64 2    ; 3 uses
  %i.buf = add nsw i64 %i.bth, -4                 ; 2 uses
  %i.bug = icmp ugt i64 %i.buf, 14
  br i1 %i.bug, label %bb.ml, label %bb.mo

bb.ml:                                            ; preds = %LZ4_wildCopy8.exit447
  %i.buh = load i8, ptr %.4.ph, align 1, !tbaa !39
  %i.bui = add i8 %i.buh, 15
  store i8 %i.bui, ptr %.4.ph, align 1, !tbaa !39
  %i.buj = add nsw i64 %i.bth, -19                ; 2 uses
end_hunk_5
