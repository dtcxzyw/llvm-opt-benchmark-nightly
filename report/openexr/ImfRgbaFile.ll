inline.NumInlined: 465
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7Imf_3_413RgbaInputFile7FromYca10readPixelsEi:bb.a
  br label %bb.m

.lr.ph112:                                        ; preds = %_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.aw, i32 1)
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bj, i32 3)
  %wide.trip.count = zext nneg i32 %i.bk to i64
  br label %bb.r

bb.m:                                             ; preds = %bb.l, %_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit
  %indvars.iv122 = phi i64 [ %umin121, %bb.l ], [ %indvars.iv.next123, %_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit ] ; 2 uses
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, -1 ; 3 uses
  %i.bl = add nsw i64 %indvars.iv.next123, %i.bg  ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next123
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !40 ; 2 uses
  %i.bo = load i32, ptr %i.az, align 8, !tbaa !126 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %i.bl, %i.bp
  %i.br = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp sgt i64 %i.bl, %i.bs
  %i.bu = add nsw i32 %i.br, -1
  %i.bv = trunc nsw i64 %i.bl to i32
  %spec.select.i = select i1 %i.bt, i32 %i.bu, i32 %i.bv
  %.010.i = select i1 %i.bq, i32 %i.bo, i32 %spec.select.i ; 2 uses
  %i.bw = load ptr, ptr %i.bb, align 8, !tbaa !129, !nonnull !29, !align !30
  tail call void @_ZN7Imf_3_49InputPart10readPixelsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i32 noundef %.010.i)
  %i.bx = load i8, ptr %i.bc, align 8, !tbaa !123, !range !54, !noundef !29
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m
  %i.bz = load i32, ptr %i.bd, align 8, !tbaa !131 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cb = load ptr, ptr %i.be, align 8, !tbaa !133 ; 9 uses
  %wide.trip.count.i = zext nneg i32 %i.bz to i64 ; 2 uses
  %xtraiter139 = and i64 %wide.trip.count.i, 7    ; 3 uses
  %i.cc = icmp ult i32 %i.bz, 8
  br i1 %i.cc, label %.epil.preheader138, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter143 = and i64 %wide.trip.count.i, 2147483640
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.new
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i60.7, %bb.n ] ; 9 uses
  %niter144 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter144.next.7, %bb.n ]
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i59 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 104
  store i16 0, ptr %i.ce, align 2, !tbaa !164
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 108
  store i16 0, ptr %i.cf, align 2, !tbaa !164
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i59 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  store i16 0, ptr %i.ch, align 2, !tbaa !164
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 116
  store i16 0, ptr %i.ci, align 2, !tbaa !164
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i59 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 120
  store i16 0, ptr %i.ck, align 2, !tbaa !164
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 124
  store i16 0, ptr %i.cl, align 2, !tbaa !164
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i59 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 128
  store i16 0, ptr %i.cn, align 2, !tbaa !164
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 132
  store i16 0, ptr %i.co, align 2, !tbaa !164
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i59 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 136
  store i16 0, ptr %i.cq, align 2, !tbaa !164
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 140
  store i16 0, ptr %i.cr, align 2, !tbaa !164
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i59 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  store i16 0, ptr %i.ct, align 2, !tbaa !164
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 148
  store i16 0, ptr %i.cu, align 2, !tbaa !164
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i59 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 152
  store i16 0, ptr %i.cw, align 2, !tbaa !164
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 156
  store i16 0, ptr %i.cx, align 2, !tbaa !164
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i59 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 160
  store i16 0, ptr %i.cz, align 2, !tbaa !164
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 164
  store i16 0, ptr %i.da, align 2, !tbaa !164
  %indvars.iv.next.i60.7 = add nuw nsw i64 %indvars.iv.i59, 8 ; 2 uses
  %niter144.next.7 = add i64 %niter144, 8         ; 2 uses
  %niter144.ncmp.7 = icmp eq i64 %niter144.next.7, %unroll_iter143
  br i1 %niter144.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !166

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod141.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod141.not, label %.loopexit.i, label %.epil.preheader138

.epil.preheader138:                               ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i59.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i60.7, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod142 = icmp ne i64 %xtraiter139, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader138
  %indvars.iv.i59.epil = phi i64 [ %indvars.iv.i59.epil.init, %.epil.preheader138 ], [ %indvars.iv.next.i60.epil, %bb.o ] ; 2 uses
  %epil.iter140 = phi i64 [ 0, %.epil.preheader138 ], [ %epil.iter140.next, %bb.o ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i59.epil ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 104
  store i16 0, ptr %i.dc, align 2, !tbaa !164
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 108
  store i16 0, ptr %i.dd, align 2, !tbaa !164
  %indvars.iv.next.i60.epil = add nuw nsw i64 %indvars.iv.i59.epil, 1
  %epil.iter140.next = add i64 %epil.iter140, 1   ; 2 uses
  %epil.iter140.cmp.not = icmp eq i64 %epil.iter140.next, %xtraiter139
  br i1 %epil.iter140.cmp.not, label %.loopexit.i, label %bb.o, !llvm.loop !167

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %bb.o, %.preheader.i, %bb.m
  %i.de = and i32 %.010.i, 1
  %.not.i = icmp eq i32 %i.de, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit.i
  %i.df = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 104
  %i.dh = load i32, ptr %i.bd, align 8, !tbaa !131
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bn, ptr nonnull align 2 %i.dg, i64 %i.dj, i1 false)
  br label %_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit

bb.q:                                             ; preds = %.loopexit.i
  tail call void @_ZN7Imf_3_413RgbaInputFile7FromYca9padTmpBufEv(ptr noundef nonnull readonly align 8 dereferenceable(392) %0)
  %i.dk = load i32, ptr %i.bd, align 8, !tbaa !131
  %i.dl = load ptr, ptr %i.be, align 8, !tbaa !133
  tail call void @_ZN7Imf_3_47RgbaYca22reconstructChromaHorizEiPKNS_4RgbaEPS1_(i32 noundef %i.dk, ptr noundef %i.dl, ptr noundef %i.bn)
  br label %_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit

_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit: ; preds = %bb.p, %bb.q
  %i.dm = icmp samesign ugt i64 %indvars.iv122, 1
  br i1 %i.dm, label %bb.m, label %.lr.ph112, !llvm.loop !169

bb.r:                                             ; preds = %.lr.ph112, %bb.u
  %indvars.iv124.a = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next125.a, %bb.u ] ; 6 uses
  %i.dn = trunc i64 %indvars.iv124.a to i32
  %i.do = add i32 %1, %i.dn
  %i.dp = and i32 %i.do, 1
  %.not53 = icmp eq i32 %i.dp, 0
  %i.dq = load i32, ptr %i.bd, align 8, !tbaa !131 ; 2 uses
  br i1 %.not53, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv124.a
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 208
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !40
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv124.a
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !40
  tail call void @_ZN7Imf_3_47RgbaYca9YCAtoRGBAERKN9Imath_3_24Vec3IfEEiPKNS_4RgbaEPS6_(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, i32 noundef %i.dq, ptr noundef %i.dt, ptr noundef %i.dv)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv124.a
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv124.a ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !40
  tail call void @_ZN7Imf_3_47RgbaYca21reconstructChromaVertEiPKPKNS_4RgbaEPS1_(i32 noundef %i.dq, ptr noundef nonnull %i.dw, ptr noundef %i.dy)
  %i.dz = load i32, ptr %i.bd, align 8, !tbaa !131
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !40 ; 2 uses
  tail call void @_ZN7Imf_3_47RgbaYca9YCAtoRGBAERKN9Imath_3_24Vec3IfEEiPKNS_4RgbaEPS6_(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, i32 noundef %i.dz, ptr noundef %i.ea, ptr noundef %i.ea)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %indvars.iv.next125.a = add nuw nsw i64 %indvars.iv124.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next125.a, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !170

bb.v:                                             ; preds = %.thread
  %.not115 = icmp eq i32 %1, %i.q
  br i1 %.not115, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.ei = tail call i32 @llvm.umin.i32(i32 %i.r, i32 29)
  %umin = zext nneg i32 %i.ei to i64
  br label %bb.w

.lr.ph109:                                        ; preds = %_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit74
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.r, i32 3)
  %i.ej = sub nsw i32 2, %.sroa.speculated
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.ab

bb.w:                                             ; preds = %.lr.ph, %_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit74
  %indvars.iv = phi i64 [ %umin, %.lr.ph ], [ %indvars.iv.next, %_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit74 ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.eo = trunc nuw nsw i64 %indvars.iv to i32
  %i.ep = sub i32 %1, %i.eo
  %i.eq = add i32 %i.ep, 15                       ; 3 uses
  %i.er = sub nsw i64 29, %indvars.iv
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !40 ; 2 uses
  %i.eu = load i32, ptr %i.ec, align 8, !tbaa !126 ; 2 uses
  %i.ev = icmp slt i32 %i.eq, %i.eu
  %i.ew = load i32, ptr %i.ed, align 4            ; 2 uses
  %i.ex = icmp sgt i32 %i.eq, %i.ew
  %i.ey = add nsw i32 %i.ew, -1
  %spec.select.i64 = select i1 %i.ex, i32 %i.ey, i32 %i.eq
  %.010.i65 = select i1 %i.ev, i32 %i.eu, i32 %spec.select.i64 ; 2 uses
  %i.ez = load ptr, ptr %i.ee, align 8, !tbaa !129, !nonnull !29, !align !30
  tail call void @_ZN7Imf_3_49InputPart10readPixelsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, i32 noundef %.010.i65)
  %i.fa = load i8, ptr %i.ef, align 8, !tbaa !123, !range !54, !noundef !29
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %.loopexit.i67, label %.preheader.i66

.preheader.i66:                                   ; preds = %bb.w
  %i.fc = load i32, ptr %i.eg, align 8, !tbaa !131 ; 3 uses
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.i69, label %.loopexit.i67

.lr.ph.i69:                                       ; preds = %.preheader.i66
  %i.fe = load ptr, ptr %i.eh, align 8, !tbaa !133 ; 9 uses
  %wide.trip.count.i70 = zext nneg i32 %i.fc to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i70, 7     ; 3 uses
  %i.ff = icmp ult i32 %i.fc, 8
  br i1 %i.ff, label %.epil.preheader, label %.lr.ph.i69.new

.lr.ph.i69.new:                                   ; preds = %.lr.ph.i69
  %unroll_iter = and i64 %wide.trip.count.i70, 2147483640
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i69.new
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.i69.new ], [ %indvars.iv.next.i72.7, %bb.x ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i69.new ], [ %niter.next.7, %bb.x ]
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i71 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 104
  store i16 0, ptr %i.fh, align 2, !tbaa !164
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 108
  store i16 0, ptr %i.fi, align 2, !tbaa !164
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i71 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 112
  store i16 0, ptr %i.fk, align 2, !tbaa !164
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 116
  store i16 0, ptr %i.fl, align 2, !tbaa !164
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i71 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  store i16 0, ptr %i.fn, align 2, !tbaa !164
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 124
  store i16 0, ptr %i.fo, align 2, !tbaa !164
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i71 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 128
  store i16 0, ptr %i.fq, align 2, !tbaa !164
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 132
  store i16 0, ptr %i.fr, align 2, !tbaa !164
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i71 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 136
  store i16 0, ptr %i.ft, align 2, !tbaa !164
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 140
  store i16 0, ptr %i.fu, align 2, !tbaa !164
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i71 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 144
  store i16 0, ptr %i.fw, align 2, !tbaa !164
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 148
  store i16 0, ptr %i.fx, align 2, !tbaa !164
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i71 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 152
  store i16 0, ptr %i.fz, align 2, !tbaa !164
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 156
  store i16 0, ptr %i.ga, align 2, !tbaa !164
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i71 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 160
  store i16 0, ptr %i.gc, align 2, !tbaa !164
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 164
  store i16 0, ptr %i.gd, align 2, !tbaa !164
  %indvars.iv.next.i72.7 = add nuw nsw i64 %indvars.iv.i71, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i67.loopexit.unr-lcssa, label %bb.x, !llvm.loop !166

.loopexit.i67.loopexit.unr-lcssa:                 ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i67, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i67.loopexit.unr-lcssa, %.lr.ph.i69
  %indvars.iv.i71.epil.init = phi i64 [ 0, %.lr.ph.i69 ], [ %indvars.iv.next.i72.7, %.loopexit.i67.loopexit.unr-lcssa ]
  %lcmp.mod137 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod137)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %indvars.iv.i71.epil = phi i64 [ %indvars.iv.i71.epil.init, %.epil.preheader ], [ %indvars.iv.next.i72.epil, %bb.y ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i71.epil ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 104
  store i16 0, ptr %i.gf, align 2, !tbaa !164
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 108
  store i16 0, ptr %i.gg, align 2, !tbaa !164
  %indvars.iv.next.i72.epil = add nuw nsw i64 %indvars.iv.i71.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i67, label %bb.y, !llvm.loop !171

.loopexit.i67:                                    ; preds = %.loopexit.i67.loopexit.unr-lcssa, %bb.y, %.preheader.i66, %bb.w
  %i.gh = and i32 %.010.i65, 1
  %.not.i68 = icmp eq i32 %i.gh, 0
  br i1 %.not.i68, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit.i67
  %i.gi = load ptr, ptr %i.eh, align 8, !tbaa !133
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 104
  %i.gk = load i32, ptr %i.eg, align 8, !tbaa !131
  %i.gl = sext i32 %i.gk to i64
  %i.gm = shl nsw i64 %i.gl, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.et, ptr nonnull align 2 %i.gj, i64 %i.gm, i1 false)
  br label %_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit74

bb.aa:                                            ; preds = %.loopexit.i67
  tail call void @_ZN7Imf_3_413RgbaInputFile7FromYca9padTmpBufEv(ptr noundef nonnull readonly align 8 dereferenceable(392) %0)
  %i.gn = load i32, ptr %i.eg, align 8, !tbaa !131
  %i.go = load ptr, ptr %i.eh, align 8, !tbaa !133
  tail call void @_ZN7Imf_3_47RgbaYca22reconstructChromaHorizEiPKNS_4RgbaEPS1_(i32 noundef %i.gn, ptr noundef %i.go, ptr noundef %i.et)
  br label %_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit74

_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE.exit74: ; preds = %bb.z, %bb.aa
  %i.gp = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.gp, label %bb.w, label %.lr.ph109, !llvm.loop !172

bb.ab:                                            ; preds = %.lr.ph109, %bb.ae
  %.048108 = phi i32 [ 2, %.lr.ph109 ], [ %4, %bb.ae ] ; 3 uses
  %i.gq = add nsw i32 %.048108, %1
  %i.gr = and i32 %i.gq, 1
  %.not = icmp eq i32 %i.gr, 0
  %i.gs = load i32, ptr %i.el, align 8, !tbaa !131 ; 2 uses
  %3 = zext nneg i32 %.048108 to i64              ; 4 uses
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr [8 x i8], ptr %0, i64 %3
  %i.gu = getelementptr i8, ptr %i.gt, i64 208
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !40
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %3
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !40
  tail call void @_ZN7Imf_3_47RgbaYca9YCAtoRGBAERKN9Imath_3_24Vec3IfEEiPKNS_4RgbaEPS6_(ptr noundef nonnull align 4 dereferenceable(12) %i.ek, i32 noundef %i.gs, ptr noundef %i.gv, ptr noundef %i.gx)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %3
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %3 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !40
  tail call void @_ZN7Imf_3_47RgbaYca21reconstructChromaVertEiPKPKNS_4RgbaEPS1_(i32 noundef %i.gs, ptr noundef nonnull %i.gy, ptr noundef %i.ha)
  %i.hb = load i32, ptr %i.el, align 8, !tbaa !131
  %i.hc = load ptr, ptr %i.gz, align 8, !tbaa !40 ; 2 uses
  tail call void @_ZN7Imf_3_47RgbaYca9YCAtoRGBAERKN9Imath_3_24Vec3IfEEiPKNS_4RgbaEPS6_(ptr noundef nonnull align 4 dereferenceable(12) %i.ek, i32 noundef %i.hb, ptr noundef %i.hc, ptr noundef %i.hc)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %4 = add nsw i32 %.048108, -1                   ; 2 uses
  %i.hd = icmp sgt i32 %4, %i.ej
  br i1 %i.hd, label %bb.ab, label %.loopexit, !llvm.loop !173

.loopexit:                                        ; preds = %bb.ae, %bb.u, %bb.v
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !131
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !133
  tail call void @_ZN7Imf_3_47RgbaYca13fixSaturationERKN9Imath_3_24Vec3IfEEiPKPKNS_4RgbaEPS6_(ptr noundef nonnull align 4 dereferenceable(12) %i.he, i32 noundef %i.hg, ptr noundef nonnull %i.hh, ptr noundef %i.hj)
  %i.hk = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = load i32, ptr %i.hf, align 8, !tbaa !131
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph114, label %._crit_edge

.lr.ph114:                                        ; preds = %.loopexit
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.hp = sext i32 %1 to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %bb.af

._crit_edge:                                      ; preds = %bb.af, %.loopexit
  store i32 %1, ptr %i.p, align 8, !tbaa !128
  ret void

bb.af:                                            ; preds = %.lr.ph114, %bb.af
  %indvars.iv127 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next128, %bb.af ] ; 3 uses
  %i.hs = load i64, ptr %i.ho, align 8, !tbaa !160
  %i.ht = mul i64 %i.hs, %i.hp
  %i.hu = load i64, ptr %i.hq, align 8, !tbaa !159
  %i.hv = load i32, ptr %i.hr, align 4, !tbaa !125
  %i.hw = trunc nuw nsw i64 %indvars.iv127 to i32
  %i.hx = add nsw i32 %i.hv, %i.hw
  %i.hy = sext i32 %i.hx to i64
  %i.hz = mul i64 %i.hu, %i.hy
  %i.ia = add i64 %i.hz, %i.ht
  %i.ib = shl i64 %i.ia, 3
  %i.ic = add i64 %i.ib, %i.hl
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = load ptr, ptr %i.hi, align 8, !tbaa !133
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv127
  %i.ig = load i64, ptr %i.if, align 2
  store i64 %i.ig, ptr %i.id, align 2
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.ih = load i32, ptr %i.hf, align 8, !tbaa !131
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next128, %i.ii
  br i1 %i.ij, label %bb.af, label %._crit_edge, !llvm.loop !174

bb.ag:                                            ; preds = %bb.e
  unreachable
}

declare noundef ptr @_ZNK7Imf_3_49InputPart8fileNameEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN7Imf_3_413RgbaInputFile7FromYca10rotateBuf1Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(392) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = alloca [29 x ptr], align 16              ; 4 uses
  %i.b = icmp sgt i32 %1, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = udiv i32 %1, 29
  br label %_ZN9Imath_3_24modpEii.exit

bb.c:                                             ; preds = %bb.a
  %i.d = sub i32 28, %1
  %i.e = udiv i32 %i.d, 29
  %i.f = sub nsw i32 0, %i.e
  br label %_ZN9Imath_3_24modpEii.exit

_ZN9Imath_3_24modpEii.exit:                       ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %i.h, i64 232, i1 false), !tbaa !40
  %.neg = mul i32 %i.g, -29
  %i.i = add i32 %.neg, %1
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

bb.e:                                             ; preds = %_ZN9Imath_3_24modpEii.exit, %bb.e
  %indvars.iv = phi i64 [ 0, %_ZN9Imath_3_24modpEii.exit ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.j = trunc i64 %indvars.iv to i32
  %i.k = add i32 %i.i, %i.j
  %i.l = srem i32 %i.k, 29
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store ptr %i.o, ptr %i.p, align 8, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 29
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !163
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN7Imf_3_413RgbaInputFile7FromYca10rotateBuf2Ei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(392) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = icmp sgt i32 %1, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = udiv i32 %1, 3
  br label %_ZN9Imath_3_24modpEii.exit

bb.c:                                             ; preds = %bb.a
  %i.d = sub i32 2, %1
  %i.e = udiv i32 %i.d, 3
  %i.f = sub nsw i32 0, %i.e
  br label %_ZN9Imath_3_24modpEii.exit

_ZN9Imath_3_24modpEii.exit:                       ; preds = %bb.b, %bb.c
  %i.g = phi i32 [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa !40
  %.neg = mul i32 %i.g, -3
  %i.i = add i32 %.neg, %1                        ; 3 uses
  %i.j = srem i32 %i.i, 3
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  store ptr %i.m, ptr %i.h, align 8, !tbaa !40
  %i.n = add i32 %i.i, 1
  %i.o = srem i32 %i.n, 3
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.r, ptr %i.s, align 8, !tbaa !40
  %i.t = add i32 %i.i, 2
  %i.u = srem i32 %i.t, 3
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.x, ptr %i.y, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_413RgbaInputFile7FromYca15readYCAScanLineEiPNS_4RgbaE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = icmp slt i32 %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp sgt i32 %1, %i.e
  %i.g = add nsw i32 %i.e, -1
  %spec.select = select i1 %i.f, i32 %i.g, i32 %1
  %.010 = select i1 %i.c, i32 %i.b, i32 %spec.select ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129, !nonnull !29, !align !30
  tail call void @_ZN7Imf_3_49InputPart10readPixelsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %.010)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i8, ptr %i.j, align 8, !tbaa !123, !range !54, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !131  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !133  ; 9 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.r = icmp ult i32 %i.n, 8
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.b ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.b ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  store i16 0, ptr %i.t, align 2, !tbaa !164
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 108
  store i16 0, ptr %i.u, align 2, !tbaa !164
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i16 0, ptr %i.w, align 2, !tbaa !164
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  store i16 0, ptr %i.x, align 2, !tbaa !164
end_hunk_0
