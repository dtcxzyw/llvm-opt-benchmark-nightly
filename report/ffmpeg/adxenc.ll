Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/adxenc?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@adx_encode_frame:bb.a
  store i32 %i.al, ptr %i.ai, align 1, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.am, align 1, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !31
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = tail call i16 @llvm.bswap.i16(i16 %i.aq)
  store i16 %i.ar, ptr %i.an, align 1, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 18
  store i8 3, ptr %i.as, align 1, !tbaa !42
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 19
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.at, i8 0, i64 11, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.au, ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 6, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  store i32 1, ptr %i.q, align 4, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.av, %bb.g ], [ %i.y, %bb.f ]
  %i.aw = icmp sgt i32 %i.e, 0
  br i1 %i.aw, label %.lr.ph, label %.sink.split

.lr.ph:                                           ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 3 uses
  %i.ba = zext nneg i32 %i.e to i64               ; 4 uses
  %ident.check.not = icmp eq i32 %i.e, 1
  br label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph, %adx_encode.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %adx_encode.exit ] ; 3 uses
  %.16064 = phi ptr [ %.0, %.lr.ph ], [ %i.hx, %adx_encode.exit ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv ; 11 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv ; 5 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !45 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !46 ; 2 uses
  %i.bg = load i32, ptr %i.ay, align 4, !tbaa !47 ; 3 uses
  %i.bh = load i32, ptr %i.az, align 4, !tbaa !47 ; 3 uses
  br i1 %ident.check.not, label %vector.body, label %scalar.ph

vector.body:                                      ; preds = %vector.scevcheck
  %vector.recur.init85 = insertelement <4 x i32> poison, i32 %i.bd, i64 3
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.bf, i64 3
  %broadcast.splatinsert80 = insertelement <4 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat81 = shufflevector <4 x i32> %broadcast.splatinsert80, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %wide.load = load <4 x i16>, ptr %i.bb, align 2, !tbaa !49
  %wide.load87 = load <4 x i16>, ptr %i.bi, align 2, !tbaa !49
  %i.bj = sext <4 x i16> %wide.load to <4 x i32>  ; 4 uses
  %i.bk = sext <4 x i16> %wide.load87 to <4 x i32> ; 4 uses
  %i.bl = shufflevector <4 x i32> %vector.recur.init85, <4 x i32> %i.bj, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.bm = shufflevector <4 x i32> %i.bj, <4 x i32> %i.bk, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.bn = shufflevector <4 x i32> %vector.recur.init, <4 x i32> %i.bl, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bo = shufflevector <4 x i32> %i.bj, <4 x i32> %i.bk, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bp = mul <4 x i32> %i.bl, %broadcast.splat
  %i.bq = mul <4 x i32> %i.bm, %broadcast.splat
  %i.br = mul nsw <4 x i32> %i.bn, %broadcast.splat81
  %i.bs = mul nsw <4 x i32> %i.bo, %broadcast.splat81
  %i.bt = add <4 x i32> %i.br, %i.bp
  %i.bu = add <4 x i32> %i.bs, %i.bq
  %i.bv = sub <4 x i32> zeroinitializer, %i.bt
  %i.bw = sub <4 x i32> zeroinitializer, %i.bu
  %i.bx = ashr <4 x i32> %i.bv, splat (i32 12)
  %i.by = ashr <4 x i32> %i.bw, splat (i32 12)
  %i.bz = add nsw <4 x i32> %i.bx, %i.bj          ; 2 uses
  %i.ca = add nsw <4 x i32> %i.by, %i.bk          ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %wide.load.1 = load <4 x i16>, ptr %i.cb, align 2, !tbaa !49
  %wide.load87.1 = load <4 x i16>, ptr %i.cc, align 2, !tbaa !49
  %i.cd = sext <4 x i16> %wide.load.1 to <4 x i32> ; 4 uses
  %i.ce = sext <4 x i16> %wide.load87.1 to <4 x i32> ; 4 uses
  %i.cf = shufflevector <4 x i32> %i.bk, <4 x i32> %i.cd, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.cg = shufflevector <4 x i32> %i.cd, <4 x i32> %i.ce, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.ch = shufflevector <4 x i32> %i.bm, <4 x i32> %i.cf, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ci = shufflevector <4 x i32> %i.cd, <4 x i32> %i.ce, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.cj = mul <4 x i32> %i.cf, %broadcast.splat
  %i.ck = mul <4 x i32> %i.cg, %broadcast.splat
  %i.cl = mul nsw <4 x i32> %i.ch, %broadcast.splat81
  %i.cm = mul nsw <4 x i32> %i.ci, %broadcast.splat81
  %i.cn = add <4 x i32> %i.cl, %i.cj
  %i.co = add <4 x i32> %i.cm, %i.ck
  %i.cp = sub <4 x i32> zeroinitializer, %i.cn
  %i.cq = sub <4 x i32> zeroinitializer, %i.co
  %i.cr = ashr <4 x i32> %i.cp, splat (i32 12)
  %i.cs = ashr <4 x i32> %i.cq, splat (i32 12)
  %i.ct = add nsw <4 x i32> %i.cr, %i.cd          ; 2 uses
  %i.cu = add nsw <4 x i32> %i.cs, %i.ce          ; 2 uses
  %i.cv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bz, <4 x i32> %i.ct)
  %i.cw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ca, <4 x i32> %i.cu)
  %i.cx = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bz, <4 x i32> %i.ct)
  %i.cy = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ca, <4 x i32> %i.cu)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %wide.load.2 = load <4 x i16>, ptr %i.cz, align 2, !tbaa !49
  %wide.load87.2 = load <4 x i16>, ptr %i.da, align 2, !tbaa !49
  %i.db = sext <4 x i16> %wide.load.2 to <4 x i32> ; 4 uses
  %i.dc = sext <4 x i16> %wide.load87.2 to <4 x i32> ; 4 uses
  %i.dd = shufflevector <4 x i32> %i.ce, <4 x i32> %i.db, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.de = shufflevector <4 x i32> %i.db, <4 x i32> %i.dc, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.df = shufflevector <4 x i32> %i.cg, <4 x i32> %i.dd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dg = shufflevector <4 x i32> %i.db, <4 x i32> %i.dc, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.dh = mul <4 x i32> %i.dd, %broadcast.splat
  %i.di = mul <4 x i32> %i.de, %broadcast.splat
  %i.dj = mul nsw <4 x i32> %i.df, %broadcast.splat81
  %i.dk = mul nsw <4 x i32> %i.dg, %broadcast.splat81
  %i.dl = add <4 x i32> %i.dj, %i.dh
  %i.dm = add <4 x i32> %i.dk, %i.di
  %i.dn = sub <4 x i32> zeroinitializer, %i.dl
  %i.do = sub <4 x i32> zeroinitializer, %i.dm
  %i.dp = ashr <4 x i32> %i.dn, splat (i32 12)
  %i.dq = ashr <4 x i32> %i.do, splat (i32 12)
  %i.dr = add nsw <4 x i32> %i.dp, %i.db          ; 2 uses
  %i.ds = add nsw <4 x i32> %i.dq, %i.dc          ; 2 uses
  %i.dt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cv, <4 x i32> %i.dr)
  %i.du = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cw, <4 x i32> %i.ds)
  %i.dv = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cx, <4 x i32> %i.dr)
  %i.dw = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cy, <4 x i32> %i.ds)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %wide.load.3 = load <4 x i16>, ptr %i.dx, align 2, !tbaa !49
  %wide.load87.3 = load <4 x i16>, ptr %i.dy, align 2, !tbaa !49
  %i.dz = sext <4 x i16> %wide.load.3 to <4 x i32> ; 4 uses
  %i.ea = sext <4 x i16> %wide.load87.3 to <4 x i32> ; 5 uses
  %i.eb = shufflevector <4 x i32> %i.dc, <4 x i32> %i.dz, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.ec = shufflevector <4 x i32> %i.dz, <4 x i32> %i.ea, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ed = shufflevector <4 x i32> %i.de, <4 x i32> %i.eb, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ee = shufflevector <4 x i32> %i.dz, <4 x i32> %i.ea, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ef = mul <4 x i32> %i.eb, %broadcast.splat
  %i.eg = mul <4 x i32> %i.ec, %broadcast.splat
  %i.eh = mul nsw <4 x i32> %i.ed, %broadcast.splat81
  %i.ei = mul nsw <4 x i32> %i.ee, %broadcast.splat81
  %i.ej = add <4 x i32> %i.eh, %i.ef
  %i.ek = add <4 x i32> %i.ei, %i.eg
  %i.el = sub <4 x i32> zeroinitializer, %i.ej
  %i.em = sub <4 x i32> zeroinitializer, %i.ek
  %i.en = ashr <4 x i32> %i.el, splat (i32 12)
  %i.eo = ashr <4 x i32> %i.em, splat (i32 12)
  %i.ep = add nsw <4 x i32> %i.en, %i.dz          ; 2 uses
  %i.eq = add nsw <4 x i32> %i.eo, %i.ea          ; 2 uses
  %i.er = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dt, <4 x i32> %i.ep)
  %i.es = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.du, <4 x i32> %i.eq)
  %i.et = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.dv, <4 x i32> %i.ep)
  %i.eu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.dw, <4 x i32> %i.eq)
  %i.ev = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.eu, <4 x i32> %i.et)
  %i.ew = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ev, <4 x i32> zeroinitializer)
  %i.ex = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %i.ew)
  %i.ey = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.es, <4 x i32> %i.er)
  %i.ez = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ey, <4 x i32> zeroinitializer)
  %i.fa = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.ez)
  %vector.recur.extract.for.phi = extractelement <4 x i32> %i.ea, i64 2
  %i.fb = extractelement <4 x i32> %i.ea, i64 3
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.scevcheck, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ 0, %vector.scevcheck ] ; 2 uses
  %.099.i = phi i32 [ %.1.i.1, %scalar.ph ], [ 0, %vector.scevcheck ]
  %.06798.i = phi i32 [ %spec.select.i.1, %scalar.ph ], [ 0, %vector.scevcheck ]
  %.06997.i = phi i32 [ %i.fe, %scalar.ph ], [ %i.bf, %vector.scevcheck ]
  %.07196.i = phi i32 [ %i.fn, %scalar.ph ], [ %i.bd, %vector.scevcheck ] ; 2 uses
  %.07395.i = phi i32 [ %i.fu, %scalar.ph ], [ 0, %vector.scevcheck ]
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !49
  %i.fe = sext i16 %i.fd to i32                   ; 4 uses
  %i.ff = mul i32 %.07196.i, %i.bg
  %i.fg = mul nsw i32 %.06997.i, %i.bh
  %i.fh = add i32 %i.fg, %i.ff
  %i.fi = sub i32 0, %i.fh
  %i.fj = ashr i32 %i.fi, 12
  %i.fk = add nsw i32 %i.fj, %i.fe                ; 2 uses
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.06798.i, i32 %i.fk)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.099.i, i32 %i.fk)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.ba ; 2 uses
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.next.i
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !49
  %i.fn = sext i16 %i.fm to i32                   ; 3 uses
  %i.fo = mul i32 %i.bg, %i.fe
  %i.fp = mul nsw i32 %.07196.i, %i.bh
  %i.fq = add i32 %i.fp, %i.fo
  %i.fr = sub i32 0, %i.fq
  %i.fs = ashr i32 %i.fr, 12
  %i.ft = add nsw i32 %i.fs, %i.fn                ; 2 uses
  %spec.select.i.1 = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.ft) ; 2 uses
  %.1.i.1 = tail call i32 @llvm.smin.i32(i32 %.1.i, i32 %i.ft) ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.next.i, %i.ba
  %i.fu = add nuw nsw i32 %.07395.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.fu, 32
  br i1 %exitcond.not.i.1, label %.loopexit, label %scalar.ph, !llvm.loop !34

.loopexit:                                        ; preds = %scalar.ph, %vector.body
  %.07196.i.lcssa = phi i32 [ %vector.recur.extract.for.phi, %vector.body ], [ %i.fe, %scalar.ph ]
  %.lcssa = phi i32 [ %i.fb, %vector.body ], [ %i.fn, %scalar.ph ]
  %spec.select.i.lcssa = phi i32 [ %i.fa, %vector.body ], [ %spec.select.i.1, %scalar.ph ] ; 2 uses
  %.1.i.lcssa = phi i32 [ %i.ex, %vector.body ], [ %.1.i.1, %scalar.ph ] ; 2 uses
  %4 = icmp eq i32 %spec.select.i.lcssa, 0
  %i.fv = icmp eq i32 %.1.i.lcssa, 0
  %or.cond.i = select i1 %4, i1 %i.fv, i1 false
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  store i32 %.lcssa, ptr %i.bc, align 4, !tbaa !45
  store i32 %.07196.i.lcssa, ptr %i.be, align 4, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.16064, i8 0, i64 18, i1 false)
  br label %adx_encode.exit

bb.j:                                             ; preds = %.loopexit
  %i.fw = udiv i32 %spec.select.i.lcssa, 7        ; 2 uses
  %i.fx = sub nsw i32 0, %.1.i.lcssa
  %i.fy = lshr i32 %i.fx, 3                       ; 2 uses
  %i.fz = icmp samesign ugt i32 %i.fw, %i.fy
  %i.ga = tail call i32 @llvm.umax.i32(i32 %i.fy, i32 1)
  %.077.i = select i1 %i.fz, i32 %i.fw, i32 %i.ga ; 4 uses
  %i.gb = trunc i32 %.077.i to i16
  %i.gc = tail call i16 @llvm.bswap.i16(i16 %i.gb)
  store i16 %i.gc, ptr %.16064, align 1, !tbaa !42
  %i.gd = load i32, ptr %i.bc, align 4, !tbaa !45
  %i.ge = load i32, ptr %i.be, align 4, !tbaa !46
  %i.gf = lshr i32 %.077.i, 1                     ; 2 uses
  %i.gg = sub nsw i32 0, %i.gf
  %.sroa.19.0.ptr100.i = getelementptr inbounds nuw i8, ptr %.16064, i64 2
  %.pre.i = load i32, ptr %i.ay, align 4, !tbaa !47
  %.pre118.i = load i32, ptr %i.az, align 4, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %put_sbits.exit.i, %bb.j
  %i.gh = phi i32 [ %.pre118.i, %bb.j ], [ %i.hk, %put_sbits.exit.i ]
  %i.gi = phi i32 [ %.pre.i, %bb.j ], [ %i.hi, %put_sbits.exit.i ]
  %indvars.iv112.i = phi i64 [ 0, %bb.j ], [ %indvars.iv.next113.i, %put_sbits.exit.i ] ; 2 uses
  %.sroa.19.0.ptr108.i = phi ptr [ %.sroa.19.0.ptr100.i, %bb.j ], [ %.sroa.19.0.ptr.i, %put_sbits.exit.i ]
  %.170107.i = phi i32 [ %i.ge, %bb.j ], [ %.172106.i, %put_sbits.exit.i ] ; 2 uses
  %.172106.i = phi i32 [ %i.gd, %bb.j ], [ %i.ho, %put_sbits.exit.i ] ; 4 uses
  %.174105.i = phi i32 [ 0, %bb.j ], [ %i.hp, %put_sbits.exit.i ]
  %.sroa.0.0103.i = phi i32 [ 0, %bb.j ], [ %.026.i.i.i.i, %put_sbits.exit.i ] ; 2 uses
  %.sroa.11.0102.i = phi i32 [ 32, %bb.j ], [ %i.hg, %put_sbits.exit.i ] ; 4 uses
  %.sroa.19.0.idx101.i = phi i64 [ 2, %bb.j ], [ %.sroa.19.1.idx.i, %put_sbits.exit.i ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv112.i
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !49
  %i.gl = sext i16 %i.gk to i32
  %i.gm = mul i32 %.172106.i, %i.gi
  %i.gn = mul nsw i32 %.170107.i, %i.gh
  %i.go = add i32 %i.gn, %i.gm
  %i.gp = sub i32 0, %i.go
  %i.gq = ashr i32 %i.gp, 12
  %i.gr = add nsw i32 %i.gq, %i.gl                ; 2 uses
  %i.gs = icmp slt i32 %i.gr, 0
  %.p.i = select i1 %i.gs, i32 %i.gg, i32 %i.gf
  %i.gt = add nsw i32 %.p.i, %i.gr
  %i.gu = sdiv i32 %i.gt, %.077.i
  %i.gv = tail call i32 @llvm.smax.i32(i32 %i.gu, i32 -8)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.gv, i32 7) ; 2 uses
  %i.gw = and i32 %.0.i.i, 15                     ; 4 uses
  %i.gx = icmp sgt i32 %.sroa.11.0102.i, 4
  br i1 %i.gx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gy = shl i32 %.sroa.0.0103.i, 4
  %i.gz = or disjoint i32 %i.gw, %i.gy
  br label %put_sbits.exit.i

bb.m:                                             ; preds = %bb.k
  %notsub.i = add nsw i64 %.sroa.19.0.idx101.i, -19
  %i.ha = icmp ult i64 %notsub.i, -4
  br i1 %i.ha, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.hb = shl i32 %.sroa.0.0103.i, %.sroa.11.0102.i
  %i.hc = sub nsw i32 4, %.sroa.11.0102.i
  %i.hd = lshr i32 %i.gw, %i.hc
  %i.he = or i32 %i.hd, %i.hb
  %i.hf = tail call i32 @llvm.bswap.i32(i32 %i.he)
  store i32 %i.hf, ptr %.sroa.19.0.ptr108.i, align 1, !tbaa !42
  %.sroa.19.0.add.i = add nuw nsw i64 %.sroa.19.0.idx101.i, 4
  br label %put_sbits.exit.i

bb.o:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.5) #7
  br label %put_sbits.exit.i

put_sbits.exit.i:                                 ; preds = %bb.o, %bb.n, %bb.l
  %.sroa.19.1.idx.i = phi i64 [ %.sroa.19.0.idx101.i, %bb.l ], [ %.sroa.19.0.add.i, %bb.n ], [ %.sroa.19.0.idx101.i, %bb.o ] ; 4 uses
  %.sink.i.i.i.i = phi i32 [ -4, %bb.l ], [ 28, %bb.n ], [ 28, %bb.o ]
  %.026.i.i.i.i = phi i32 [ %i.gz, %bb.l ], [ %i.gw, %bb.n ], [ %i.gw, %bb.o ] ; 2 uses
  %i.hg = add nsw i32 %.sink.i.i.i.i, %.sroa.11.0102.i ; 4 uses
  %i.hh = mul nsw i32 %.0.i.i, %.077.i
  %i.hi = load i32, ptr %i.ay, align 4, !tbaa !47 ; 2 uses
  %i.hj = mul nsw i32 %i.hi, %.172106.i
  %i.hk = load i32, ptr %i.az, align 4, !tbaa !47 ; 2 uses
  %i.hl = mul nsw i32 %i.hk, %.170107.i
  %i.hm = add nsw i32 %i.hl, %i.hj
  %i.hn = ashr i32 %i.hm, 12
  %i.ho = add nsw i32 %i.hn, %i.hh                ; 2 uses
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, %i.ba
  %i.hp = add nuw nsw i32 %.174105.i, 1           ; 2 uses
  %.sroa.19.0.ptr.i = getelementptr inbounds nuw i8, ptr %.16064, i64 %.sroa.19.1.idx.i
  %exitcond115.not.i = icmp eq i32 %i.hp, 32
  br i1 %exitcond115.not.i, label %bb.p, label %bb.k, !llvm.loop !35

bb.p:                                             ; preds = %put_sbits.exit.i
  store i32 %i.ho, ptr %i.bc, align 4, !tbaa !45
  store i32 %.172106.i, ptr %i.be, align 4, !tbaa !46
  %i.hq = icmp slt i32 %i.hg, 32
  br i1 %i.hq, label %.lr.ph.i.i, label %adx_encode.exit

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.hr = shl i32 %.026.i.i.i.i, %i.hg
  %smax.i = tail call i64 @llvm.smax.i64(i64 %.sroa.19.1.idx.i, i64 18)
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.sroa.19.2.idx.i = phi i64 [ %.sroa.19.1.idx.i, %.lr.ph.i.i ], [ %.sroa.19.2.add.i, %bb.s ] ; 3 uses
  %.sroa.11.1.i = phi i32 [ %i.hg, %.lr.ph.i.i ], [ %i.hv, %bb.s ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %i.hr, %.lr.ph.i.i ], [ %i.hu, %bb.s ] ; 2 uses
  %exitcond117.not.i = icmp eq i64 %.sroa.19.2.idx.i, %smax.i
  br i1 %exitcond117.not.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 160) #7
  tail call void @abort() #8
  unreachable

bb.s:                                             ; preds = %bb.q
  %.sroa.19.2.ptr.i = getelementptr inbounds nuw i8, ptr %.16064, i64 %.sroa.19.2.idx.i
  %i.hs = lshr i32 %.sroa.0.1.i, 24
  %i.ht = trunc nuw i32 %i.hs to i8
  %.sroa.19.2.add.i = add nsw i64 %.sroa.19.2.idx.i, 1
  store i8 %i.ht, ptr %.sroa.19.2.ptr.i, align 1, !tbaa !42
  %i.hu = shl i32 %.sroa.0.1.i, 8
  %i.hv = add nsw i32 %.sroa.11.1.i, 8
  %i.hw = icmp slt i32 %.sroa.11.1.i, 24
  br i1 %i.hw, label %bb.q, label %adx_encode.exit, !llvm.loop !36

adx_encode.exit:                                  ; preds = %bb.s, %bb.i, %bb.p
  %i.hx = getelementptr inbounds nuw i8, ptr %.16064, i64 18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ba
  br i1 %exitcond.not, label %.sink.split, label %vector.scevcheck, !llvm.loop !37

.sink.split:                                      ; preds = %adx_encode.exit, %bb.h, %bb.d
  store i32 1, ptr %3, align 4, !tbaa !47
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.e, %bb.c, %.thread
  %.1 = phi i32 [ %i.h, %bb.c ], [ 0, %.thread ], [ %i.v, %bb.e ], [ 0, %.sink.split ]
  ret i32 %.1
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ff_adx_calculate_coeffs(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_0
