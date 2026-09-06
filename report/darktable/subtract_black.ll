Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/subtract_black?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6LibRaw23subtract_black_internalEv:bb.a
  switch i32 %i.al, label %bb.v [
    i32 11, label %bb.n
    i32 1, label %bb.p
    i32 10, label %bb.q
    i32 2, label %.invoke
    i32 3, label %.invoke
    i32 9, label %.invoke
    i32 4, label %bb.r
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 7, label %bb.t
    i32 12, label %bb.u
  ]

bb.k:                                             ; preds = %._crit_edge127
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136692
  %i.an = load i32, ptr %i.am, align 4, !tbaa !90 ; 9 uses
  %.not81 = icmp eq i32 %i.an, 0
  br i1 %.not81, label %bb.l, label %.preheader87

.preheader87:                                     ; preds = %bb.k
  %.not102 = icmp eq i32 %i.ac, 0
  br i1 %.not102, label %.loopexit, label %.preheader86.lr.ph

.preheader86.lr.ph:                               ; preds = %.preheader87
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !95
  %wide.trip.count = zext i32 %i.ac to i64
  br label %.preheader86

.preheader86:                                     ; preds = %.preheader86.lr.ph, %.preheader86
  %indvars.iv = phi i64 [ 0, %.preheader86.lr.ph ], [ %indvars.iv.next, %.preheader86 ] ; 3 uses
  %.06392 = phi i32 [ 0, %.preheader86.lr.ph ], [ %spec.select.3, %.preheader86 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv ; 5 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !96
  %i.ar = zext i16 %i.aq to i32
  %i.as = load i16, ptr %i.z, align 2, !tbaa !92
  %i.at = zext i16 %i.as to i32                   ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv to i32    ; 8 uses
  %i.av = udiv i32 %i.au, %i.at
  %i.aw = urem i32 %i.av, %i.ae
  %i.ax = mul i32 %i.aw, %i.an
  %i.ay = add i32 %i.ax, 6
  %i.az = urem i32 %i.au, %i.at
  %i.ba = urem i32 %i.az, %i.an
  %i.bb = add i32 %i.ay, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !90
  %i.bf = add i32 %i.be, %i.k
  %i.bg = sub i32 %i.ar, %i.bf                    ; 2 uses
  %i.bh = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 0)
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 65535)
  %i.bj = trunc nuw i32 %i.bi to i16
  store i16 %i.bj, ptr %i.ap, align 2, !tbaa !96
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.06392, i32 %i.bg)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 2 ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !96
  %i.bm = zext i16 %i.bl to i32
  %i.bn = load i16, ptr %i.z, align 2, !tbaa !92
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %i.bp = udiv i32 %i.au, %i.bo
  %i.bq = urem i32 %i.bp, %i.ae
  %i.br = mul i32 %i.bq, %i.an
  %i.bs = add i32 %i.br, 6
  %i.bt = urem i32 %i.au, %i.bo
  %i.bu = urem i32 %i.bt, %i.an
  %i.bv = add i32 %i.bs, %i.bu
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !90
  %i.bz = add i32 %i.by, %.sroa.5.0.copyload
  %i.ca = sub i32 %i.bm, %i.bz                    ; 2 uses
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.ca, i32 0)
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 65535)
  %i.cd = trunc nuw i32 %i.cc to i16
  store i16 %i.cd, ptr %i.bk, align 2, !tbaa !96
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 %i.ca)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !96
  %i.cg = zext i16 %i.cf to i32
  %i.ch = load i16, ptr %i.z, align 2, !tbaa !92
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %i.cj = udiv i32 %i.au, %i.ci
  %i.ck = urem i32 %i.cj, %i.ae
  %i.cl = mul i32 %i.ck, %i.an
  %i.cm = add i32 %i.cl, 6
  %i.cn = urem i32 %i.au, %i.ci
  %i.co = urem i32 %i.cn, %i.an
  %i.cp = add i32 %i.cm, %i.co
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !90
  %i.ct = add i32 %i.cs, %.sroa.7.0.copyload
  %i.cu = sub i32 %i.cg, %i.ct                    ; 2 uses
  %i.cv = tail call i32 @llvm.smax.i32(i32 %i.cu, i32 0)
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.cv, i32 65535)
  %i.cx = trunc nuw i32 %i.cw to i16
  store i16 %i.cx, ptr %i.ce, align 2, !tbaa !96
  %spec.select.2 = tail call i32 @llvm.smax.i32(i32 %spec.select.1, i32 %i.cu)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ap, i64 6 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !96
  %i.da = zext i16 %i.cz to i32
  %i.db = load i16, ptr %i.z, align 2, !tbaa !92
  %i.dc = zext i16 %i.db to i32                   ; 2 uses
  %i.dd = udiv i32 %i.au, %i.dc
  %i.de = urem i32 %i.dd, %i.ae
  %i.df = mul i32 %i.de, %i.an
  %i.dg = add i32 %i.df, 6
  %i.dh = urem i32 %i.au, %i.dc
  %i.di = urem i32 %i.dh, %i.an
  %i.dj = add i32 %i.dg, %i.di
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !90
  %i.dn = add i32 %i.dm, %.sroa.9.0.copyload
  %i.do = sub i32 %i.da, %i.dn                    ; 2 uses
  %i.dp = tail call i32 @llvm.smax.i32(i32 %i.do, i32 0)
  %i.dq = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 65535)
  %i.dr = trunc nuw i32 %i.dq to i16
  store i16 %i.dr, ptr %i.cy, align 2, !tbaa !96
  %spec.select.3 = tail call i32 @llvm.smax.i32(i32 %spec.select.2, i32 %i.do) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader86, !llvm.loop !12

bb.l:                                             ; preds = %bb.k, %._crit_edge127
  %.not103 = icmp eq i32 %i.ac, 0
  br i1 %.not103, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.l
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !95  ; 6 uses
  %wide.trip.count116 = zext i32 %i.ac to i64     ; 6 uses
  %min.iters.check = icmp ult i32 %i.ac, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check135 = icmp ult i32 %i.ac, 32
  br i1 %min.iters.check135, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = and i64 %wide.trip.count116, 24
  %n.vec = and i64 %wide.trip.count116, 4294967264 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert136 = insertelement <8 x i32> poison, i32 %.sroa.5.0.copyload, i64 0
  %broadcast.splat137 = shufflevector <8 x i32> %broadcast.splatinsert136, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat139 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splat141 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.gi, %vector.body ]
  %vec.phi142 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.gj, %vector.body ]
  %vec.phi143 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.gk, %vector.body ]
  %vec.phi144 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.gl, %vector.body ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 64 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 128 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 192 ; 2 uses
  %wide.vec = load <32 x i16>, ptr %i.du, align 2, !tbaa !96 ; 4 uses
  %strided.vec = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec145 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec146 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec147 = shufflevector <32 x i16> %wide.vec, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec148 = load <32 x i16>, ptr %i.dw, align 2, !tbaa !96 ; 4 uses
  %strided.vec149 = shufflevector <32 x i16> %wide.vec148, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec150 = shufflevector <32 x i16> %wide.vec148, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec151 = shufflevector <32 x i16> %wide.vec148, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec152 = shufflevector <32 x i16> %wide.vec148, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec153 = load <32 x i16>, ptr %i.dy, align 2, !tbaa !96 ; 4 uses
  %strided.vec154 = shufflevector <32 x i16> %wide.vec153, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec155 = shufflevector <32 x i16> %wide.vec153, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec156 = shufflevector <32 x i16> %wide.vec153, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec157 = shufflevector <32 x i16> %wide.vec153, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.vec158 = load <32 x i16>, ptr %i.ea, align 2, !tbaa !96 ; 4 uses
  %strided.vec159 = shufflevector <32 x i16> %wide.vec158, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec160 = shufflevector <32 x i16> %wide.vec158, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec161 = shufflevector <32 x i16> %wide.vec158, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec162 = shufflevector <32 x i16> %wide.vec158, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.eb = zext <8 x i16> %strided.vec to <8 x i32>
  %i.ec = zext <8 x i16> %strided.vec149 to <8 x i32>
  %i.ed = zext <8 x i16> %strided.vec154 to <8 x i32>
  %i.ee = zext <8 x i16> %strided.vec159 to <8 x i32>
  %i.ef = sub nsw <8 x i32> %i.eb, %broadcast.splat ; 2 uses
  %i.eg = sub nsw <8 x i32> %i.ec, %broadcast.splat ; 2 uses
  %i.eh = sub nsw <8 x i32> %i.ed, %broadcast.splat ; 2 uses
  %i.ei = sub nsw <8 x i32> %i.ee, %broadcast.splat ; 2 uses
  %i.ej = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi, <8 x i32> %i.ef)
  %i.ek = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi142, <8 x i32> %i.eg)
  %i.el = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi143, <8 x i32> %i.eh)
  %i.em = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi144, <8 x i32> %i.ei)
  %i.en = zext <8 x i16> %strided.vec145 to <8 x i32>
  %i.eo = zext <8 x i16> %strided.vec150 to <8 x i32>
  %i.ep = zext <8 x i16> %strided.vec155 to <8 x i32>
  %i.eq = zext <8 x i16> %strided.vec160 to <8 x i32>
  %i.er = sub nsw <8 x i32> %i.en, %broadcast.splat137 ; 2 uses
  %i.es = sub nsw <8 x i32> %i.eo, %broadcast.splat137 ; 2 uses
  %i.et = sub nsw <8 x i32> %i.ep, %broadcast.splat137 ; 2 uses
  %i.eu = sub nsw <8 x i32> %i.eq, %broadcast.splat137 ; 2 uses
  %i.ev = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ej, <8 x i32> %i.er)
  %i.ew = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ek, <8 x i32> %i.es)
  %i.ex = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.el, <8 x i32> %i.et)
  %i.ey = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.em, <8 x i32> %i.eu)
  %i.ez = zext <8 x i16> %strided.vec146 to <8 x i32>
  %i.fa = zext <8 x i16> %strided.vec151 to <8 x i32>
  %i.fb = zext <8 x i16> %strided.vec156 to <8 x i32>
  %i.fc = zext <8 x i16> %strided.vec161 to <8 x i32>
  %i.fd = sub nsw <8 x i32> %i.ez, %broadcast.splat139 ; 2 uses
  %i.fe = sub nsw <8 x i32> %i.fa, %broadcast.splat139 ; 2 uses
  %i.ff = sub nsw <8 x i32> %i.fb, %broadcast.splat139 ; 2 uses
  %i.fg = sub nsw <8 x i32> %i.fc, %broadcast.splat139 ; 2 uses
  %i.fh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ev, <8 x i32> %i.fd)
  %i.fi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ew, <8 x i32> %i.fe)
  %i.fj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ex, <8 x i32> %i.ff)
  %i.fk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ey, <8 x i32> %i.fg)
  %i.fl = zext <8 x i16> %strided.vec147 to <8 x i32>
  %i.fm = zext <8 x i16> %strided.vec152 to <8 x i32>
  %i.fn = zext <8 x i16> %strided.vec157 to <8 x i32>
  %i.fo = zext <8 x i16> %strided.vec162 to <8 x i32>
  %1 = sub nsw <8 x i32> %i.fl, %broadcast.splat141 ; 2 uses
  %i.fp = sub nsw <8 x i32> %i.fm, %broadcast.splat141 ; 2 uses
  %2 = sub nsw <8 x i32> %i.fn, %broadcast.splat141 ; 2 uses
  %i.fq = sub nsw <8 x i32> %i.fo, %broadcast.splat141 ; 2 uses
  %i.fr = shufflevector <8 x i32> %i.ef, <8 x i32> %i.er, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %3 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fr, <16 x i32> zeroinitializer)
  %4 = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %3, <16 x i32> splat (i32 65535))
  %5 = trunc nuw <16 x i32> %4 to <16 x i16>
  %i.fs = shufflevector <8 x i32> %i.fd, <8 x i32> %1, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ft = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.fs, <16 x i32> zeroinitializer)
  %i.fu = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ft, <16 x i32> splat (i32 65535))
  %6 = trunc nuw <16 x i32> %i.fu to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %5, <16 x i16> %6, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.du, align 2, !tbaa !96
  %7 = shufflevector <8 x i32> %i.eg, <8 x i32> %i.es, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fv = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %7, <16 x i32> zeroinitializer)
  %i.fw = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.fv, <16 x i32> splat (i32 65535))
  %i.fx = trunc nuw <16 x i32> %i.fw to <16 x i16>
  %8 = shufflevector <8 x i32> %i.fe, <8 x i32> %i.fp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %9 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %8, <16 x i32> zeroinitializer)
  %i.fy = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %9, <16 x i32> splat (i32 65535))
  %i.fz = trunc nuw <16 x i32> %i.fy to <16 x i16>
  %interleaved.vec163.a = shufflevector <16 x i16> %i.fx, <16 x i16> %i.fz, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec163.a, ptr %i.dw, align 2, !tbaa !96
  %10 = shufflevector <8 x i32> %i.eh, <8 x i32> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %11 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %10, <16 x i32> zeroinitializer)
  %i.ga = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %11, <16 x i32> splat (i32 65535))
  %i.gb = trunc nuw <16 x i32> %i.ga to <16 x i16>
  %12 = shufflevector <8 x i32> %i.ff, <8 x i32> %2, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %13 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %12, <16 x i32> zeroinitializer)
  %i.gc = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %13, <16 x i32> splat (i32 65535))
  %i.gd = trunc nuw <16 x i32> %i.gc to <16 x i16>
  %interleaved.vec164 = shufflevector <16 x i16> %i.gb, <16 x i16> %i.gd, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec164, ptr %i.dy, align 2, !tbaa !96
  %14 = shufflevector <8 x i32> %i.ei, <8 x i32> %i.eu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %15 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %14, <16 x i32> zeroinitializer)
  %i.ge = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %15, <16 x i32> splat (i32 65535))
  %i.gf = trunc nuw <16 x i32> %i.ge to <16 x i16>
  %16 = shufflevector <8 x i32> %i.fg, <8 x i32> %i.fq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %17 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %16, <16 x i32> zeroinitializer)
  %i.gg = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %17, <16 x i32> splat (i32 65535))
  %i.gh = trunc nuw <16 x i32> %i.gg to <16 x i16>
  %interleaved.vec165 = shufflevector <16 x i16> %i.gf, <16 x i16> %i.gh, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec165, ptr %i.ea, align 2, !tbaa !96
  %i.gi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fh, <8 x i32> %1) ; 2 uses
  %i.gj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fi, <8 x i32> %i.fp) ; 2 uses
  %i.gk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fj, <8 x i32> %2) ; 2 uses
  %i.gl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fk, <8 x i32> %i.fq) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gi, <8 x i32> %i.gj)
  %rdx.minmax166 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.gk)
  %rdx.minmax167 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax166, <8 x i32> %i.gl)
  %i.gn = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax167) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count116
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !100

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.gn, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec168 = and i64 %wide.trip.count116, 4294967288 ; 3 uses
  %broadcast.splatinsert169 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat170 = shufflevector <8 x i32> %broadcast.splatinsert169, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert171 = insertelement <8 x i32> poison, i32 %.sroa.5.0.copyload, i64 0
  %broadcast.splat172 = shufflevector <8 x i32> %broadcast.splatinsert171, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat174 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat176 = shufflevector <2 x i32> %i.v, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert177 = insertelement <8 x i32> poison, i32 %bc.merge.rdx, i64 0
  %broadcast.splat178 = shufflevector <8 x i32> %broadcast.splatinsert177, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index179 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next187, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi180 = phi <8 x i32> [ %broadcast.splat178, %vec.epilog.ph ], [ %i.hg, %vec.epilog.vector.body ]
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index179 ; 2 uses
  %wide.vec181 = load <32 x i16>, ptr %i.go, align 2, !tbaa !96 ; 4 uses
  %strided.vec182 = shufflevector <32 x i16> %wide.vec181, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec183 = shufflevector <32 x i16> %wide.vec181, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec184 = shufflevector <32 x i16> %wide.vec181, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec185 = shufflevector <32 x i16> %wide.vec181, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.gp = zext <8 x i16> %strided.vec182 to <8 x i32>
  %i.gq = sub nsw <8 x i32> %i.gp, %broadcast.splat170 ; 2 uses
  %i.gr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi180, <8 x i32> %i.gq)
  %i.gs = zext <8 x i16> %strided.vec183 to <8 x i32>
  %i.gt = sub nsw <8 x i32> %i.gs, %broadcast.splat172 ; 2 uses
  %i.gu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gr, <8 x i32> %i.gt)
  %i.gv = zext <8 x i16> %strided.vec184 to <8 x i32>
  %i.gw = sub nsw <8 x i32> %i.gv, %broadcast.splat174 ; 2 uses
  %i.gx = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gu, <8 x i32> %i.gw)
  %i.gy = zext <8 x i16> %strided.vec185 to <8 x i32>
  %i.gz = sub nsw <8 x i32> %i.gy, %broadcast.splat176 ; 2 uses
  %i.ha = shufflevector <8 x i32> %i.gq, <8 x i32> %i.gt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hb = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ha, <16 x i32> zeroinitializer)
  %i.hc = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.hb, <16 x i32> splat (i32 65535))
  %i.hd = trunc nuw <16 x i32> %i.hc to <16 x i16>
  %18 = shufflevector <8 x i32> %i.gw, <8 x i32> %i.gz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %19 = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %18, <16 x i32> zeroinitializer)
  %i.he = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %19, <16 x i32> splat (i32 65535))
  %i.hf = trunc nuw <16 x i32> %i.he to <16 x i16>
  %interleaved.vec186 = shufflevector <16 x i16> %i.hd, <16 x i16> %i.hf, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec186, ptr %i.go, align 2, !tbaa !96
  %i.hg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.gx, <8 x i32> %i.gz) ; 2 uses
  %index.next187 = add nuw i64 %index179, 8       ; 2 uses
  %i.hh = icmp eq i64 %index.next187, %n.vec168
  br i1 %i.hh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hi = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.hg) ; 2 uses
  %cmp.n188 = icmp eq i64 %n.vec168, %wide.trip.count116
  br i1 %cmp.n188, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv113.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec168, %vec.epilog.middle.block ]
  %.396.ph = phi i32 [ 0, %iter.check ], [ %i.gn, %vec.epilog.iter.check ], [ %i.hi, %vec.epilog.middle.block ]
  %i.hj = shufflevector <2 x i32> %i.v, <2 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.hk = insertelement <4 x i32> %i.hj, i32 %i.k, i64 0
  %i.hl = insertelement <4 x i32> %i.hk, i32 %.sroa.5.0.copyload, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %.preheader ], [ %indvars.iv113.ph, %.preheader.preheader ] ; 2 uses
  %.396 = phi i32 [ %i.hu, %.preheader ], [ %.396.ph, %.preheader.preheader ]
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv113 ; 2 uses
  %i.hn = load <4 x i16>, ptr %i.hm, align 2, !tbaa !96
  %i.ho = zext <4 x i16> %i.hn to <4 x i32>
  %i.hp = sub nsw <4 x i32> %i.ho, %i.hl          ; 2 uses
  %i.hq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hp, <4 x i32> zeroinitializer)
  %i.hr = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.hq, <4 x i32> splat (i32 65535))
  %i.hs = trunc nuw <4 x i32> %i.hr to <4 x i16>
  store <4 x i16> %i.hs, ptr %i.hm, align 2, !tbaa !96
  %i.ht = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.hp)
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 %.396) ; 2 uses
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %.loopexit, label %.preheader, !llvm.loop !15

.loopexit:                                        ; preds = %.preheader86, %.preheader, %middle.block, %vec.epilog.middle.block, %.preheader87, %bb.l
  %.6 = phi i32 [ %i.hu, %.preheader ], [ 0, %bb.l ], [ 0, %.preheader87 ], [ %i.hi, %vec.epilog.middle.block ], [ %i.gn, %middle.block ], [ %spec.select.3, %.preheader86 ]
  %i.hv = and i32 %.6, 65535
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 153092
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !101
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 153088
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !102
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 153096 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !103
  %i.ib = sub i32 %i.ia, %i.hy
  store i32 %i.ib, ptr %i.hz, align 8, !tbaa !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16420) %i.j, i8 0, i64 16420, i1 false)
  br label %bb.w

bb.m:                                             ; preds = %bb.h, %bb.g, %bb.c
  %i.ic = load ptr, ptr %i.a, align 8, !tbaa !95  ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ie = load i16, ptr %i.id, align 4, !tbaa !91
  %i.if = zext i16 %i.ie to i32
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !92
  %i.ii = zext i16 %i.ih to i32
  %i.ij = shl nuw nsw i32 %i.if, 2
  %i.ik = mul i32 %i.ij, %i.ii                    ; 4 uses
  %.not104 = icmp eq i32 %i.ik, 0
  br i1 %.not104, label %._crit_edge, label %iter.check212

iter.check212:                                    ; preds = %bb.m
  %wide.trip.count121 = zext i32 %i.ik to i64     ; 6 uses
  %min.iters.check190 = icmp ult i32 %i.ik, 8
  br i1 %min.iters.check190, label %.lr.ph.preheader, label %vector.main.loop.iter.check191

vector.main.loop.iter.check191:                   ; preds = %iter.check212
  %min.iters.check192 = icmp ult i32 %i.ik, 32
  br i1 %min.iters.check192, label %vec.epilog.ph216, label %vector.ph193

vector.ph193:                                     ; preds = %vector.main.loop.iter.check191
  %i.il = and i64 %wide.trip.count121, 24
  %n.vec194 = and i64 %wide.trip.count121, 4294967264 ; 4 uses
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next204, %vector.body195 ] ; 2 uses
  %vec.phi197 = phi <8 x i32> [ zeroinitializer, %vector.ph193 ], [ %i.iu, %vector.body195 ]
  %vec.phi198 = phi <8 x i32> [ zeroinitializer, %vector.ph193 ], [ %i.iv, %vector.body195 ]
  %vec.phi199 = phi <8 x i32> [ zeroinitializer, %vector.ph193 ], [ %i.iw, %vector.body195 ]
  %vec.phi200 = phi <8 x i32> [ zeroinitializer, %vector.ph193 ], [ %i.ix, %vector.body195 ]
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %index196 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 48
  %wide.load = load <8 x i16>, ptr %i.im, align 2, !tbaa !96
  %wide.load201 = load <8 x i16>, ptr %i.in, align 2, !tbaa !96
  %wide.load202 = load <8 x i16>, ptr %i.io, align 2, !tbaa !96
  %wide.load203 = load <8 x i16>, ptr %i.ip, align 2, !tbaa !96
  %i.iq = zext <8 x i16> %wide.load to <8 x i32>
  %i.ir = zext <8 x i16> %wide.load201 to <8 x i32>
  %i.is = zext <8 x i16> %wide.load202 to <8 x i32>
  %i.it = zext <8 x i16> %wide.load203 to <8 x i32>
  %i.iu = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi197, <8 x i32> %i.iq) ; 2 uses
  %i.iv = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi198, <8 x i32> %i.ir) ; 2 uses
  %i.iw = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi199, <8 x i32> %i.is) ; 2 uses
  %i.ix = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi200, <8 x i32> %i.it) ; 2 uses
  %index.next204 = add nuw i64 %index196, 32      ; 2 uses
  %i.iy = icmp eq i64 %index.next204, %n.vec194
  br i1 %i.iy, label %middle.block205, label %vector.body195, !llvm.loop !16

middle.block205:                                  ; preds = %vector.body195
  %rdx.minmax206 = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.iu, <8 x i32> %i.iv)
  %rdx.minmax207 = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %rdx.minmax206, <8 x i32> %i.iw)
  %rdx.minmax208 = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %rdx.minmax207, <8 x i32> %i.ix)
  %i.iz = tail call i32 @llvm.vector.reduce.umax.v8i32(<8 x i32> %rdx.minmax208) ; 3 uses
  %cmp.n209 = icmp eq i64 %n.vec194, %wide.trip.count121
  br i1 %cmp.n209, label %._crit_edge, label %vec.epilog.iter.check214

vec.epilog.iter.check214:                         ; preds = %middle.block205
  %min.epilog.iters.check215 = icmp eq i64 %i.il, 0
  br i1 %min.epilog.iters.check215, label %.lr.ph.preheader, label %vec.epilog.ph216, !prof !100

vec.epilog.ph216:                                 ; preds = %vector.main.loop.iter.check191, %vec.epilog.iter.check214
  %vec.epilog.resume.val210 = phi i64 [ %n.vec194, %vec.epilog.iter.check214 ], [ 0, %vector.main.loop.iter.check191 ]
  %bc.merge.rdx211 = phi i32 [ %i.iz, %vec.epilog.iter.check214 ], [ 0, %vector.main.loop.iter.check191 ]
  %n.vec217 = and i64 %wide.trip.count121, 4294967288 ; 3 uses
  %broadcast.splatinsert218 = insertelement <8 x i32> poison, i32 %bc.merge.rdx211, i64 0
  %broadcast.splat219 = shufflevector <8 x i32> %broadcast.splatinsert218, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body220

vec.epilog.vector.body220:                        ; preds = %vec.epilog.vector.body220, %vec.epilog.ph216
  %index221 = phi i64 [ %vec.epilog.resume.val210, %vec.epilog.ph216 ], [ %index.next224, %vec.epilog.vector.body220 ] ; 2 uses
  %vec.phi222 = phi <8 x i32> [ %broadcast.splat219, %vec.epilog.ph216 ], [ %i.jc, %vec.epilog.vector.body220 ]
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %index221
  %wide.load223 = load <8 x i16>, ptr %i.ja, align 2, !tbaa !96
  %i.jb = zext <8 x i16> %wide.load223 to <8 x i32>
  %i.jc = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %vec.phi222, <8 x i32> %i.jb) ; 2 uses
  %index.next224 = add nuw i64 %index221, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next224, %n.vec217
  br i1 %i.jd, label %vec.epilog.middle.block225, label %vec.epilog.vector.body220, !llvm.loop !17

vec.epilog.middle.block225:                       ; preds = %vec.epilog.vector.body220
  %i.je = tail call i32 @llvm.vector.reduce.umax.v8i32(<8 x i32> %i.jc) ; 2 uses
  %cmp.n226 = icmp eq i64 %n.vec217, %wide.trip.count121
  br i1 %cmp.n226, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check212, %vec.epilog.iter.check214, %vec.epilog.middle.block225
  %indvars.iv118.ph = phi i64 [ 0, %iter.check212 ], [ %n.vec194, %vec.epilog.iter.check214 ], [ %n.vec217, %vec.epilog.middle.block225 ]
  %.0100.ph = phi i32 [ 0, %iter.check212 ], [ %i.iz, %vec.epilog.iter.check214 ], [ %i.je, %vec.epilog.middle.block225 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %.lr.ph ], [ %indvars.iv118.ph, %.lr.ph.preheader ] ; 2 uses
  %.0100 = phi i32 [ %spec.select83, %.lr.ph ], [ %.0100.ph, %.lr.ph.preheader ]
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvars.iv118
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !96
  %i.jh = zext i16 %i.jg to i32
  %spec.select83 = tail call i32 @llvm.umax.i32(i32 %.0100, i32 %i.jh) ; 2 uses
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %middle.block205, %vec.epilog.middle.block225, %bb.m
  %.0.lcssa = phi i32 [ 0, %bb.m ], [ %i.je, %vec.epilog.middle.block225 ], [ %i.iz, %middle.block205 ], [ %spec.select83, %.lr.ph ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 153092
  store i32 %.0.lcssa, ptr %i.ji, align 4, !tbaa !101
  br label %bb.w

bb.n:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.o:                                             ; preds = %.invoke, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n
  %i.jj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_end_catch() #5
  br label %bb.x

bb.p:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.q:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

.invoke:                                          ; preds = %bb.j, %bb.j, %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.r:                                             ; preds = %bb.j, %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.s:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.t:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o

bb.u:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw7recycleEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.v unwind label %bb.o
end_hunk_0
