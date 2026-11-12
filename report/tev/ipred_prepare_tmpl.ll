Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ipred_prepare_tmpl?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dav1d_prepare_intra_edges_16bpc:bb.a
  br label %._crit_edge259

bb.l:                                             ; preds = %bb.j
  %i.am = and i64 %8, 1
  %.not.i = icmp eq i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.an = ashr exact i64 %8, 1
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [2 x i8], ptr %7, i64 %i.ao ; 2 uses
  br label %._crit_edge259

._crit_edge259:                                   ; preds = %bb.g, %bb.k, %bb.l, %bb.i
  %..0166 = phi ptr [ undef, %bb.i ], [ %i.al, %bb.k ], [ %i.ap, %bb.l ], [ %7, %bb.g ]
  %.0166 = phi ptr [ undef, %bb.i ], [ %i.al, %bb.k ], [ %i.ap, %bb.l ], [ undef, %bb.g ] ; 4 uses
  %i.aq = and i64 %.pre260, 114
  %.not181.not = icmp eq i64 %i.aq, 0
  br i1 %.not181.not, label %bb.m, label %pixel_set.exit208

bb.m:                                             ; preds = %._crit_edge259
  %i.ar = shl i32 %13, 2                          ; 22 uses
  %i.as = sub i32 0, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [2 x i8], ptr %15, i64 %i.at ; 18 uses
  %.not182 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not182, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = sub nsw i32 %5, %2
  %i.aw = shl i32 %i.av, 2                        ; 2 uses
  %i.ax = tail call range(i32 0, -3) i32 @llvm.smin.i32(i32 range(i32 0, -3) %i.ar, i32 range(i32 0, -3) %i.aw) ; 4 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n
  %i.az = and i64 %8, 1
  %.not.i195 = icmp eq i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i195)
  %i.ba = ashr exact i64 %8, 1                    ; 12 uses
  %wide.trip.count = zext nneg i32 %i.ax to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ax, 56
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.bb = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.bc = add i32 %i.ar, -1                       ; 2 uses
  %i.bd = trunc nsw i64 %i.bb to i32
  %i.be = sub i32 %i.bc, %i.bd
  %i.bf = icmp sgt i32 %i.be, %i.bc
  %i.bg = icmp ugt i64 %i.bb, 4294967295
  %i.bh = or i1 %i.bf, %i.bg
  %i.bi = mul i64 %i.ba, -2
  %scevgep = getelementptr i8, ptr %7, i64 -2     ; 4 uses
  %i.bj = icmp slt i64 %8, 0                      ; 2 uses
  %i.bk = select i1 %i.bj, i64 %i.bi, i64 %8
  %mul286 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bk, i64 %i.bb) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul286, 0 ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul286, 1
  %i.bl = sub i64 0, %mul.result
  %i.bm = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.bn = getelementptr i8, ptr %scevgep, i64 %i.bl
  %i.bo = icmp ult ptr %i.bm, %scevgep
  %i.bp = icmp ugt ptr %i.bn, %scevgep
  %i.bq = select i1 %i.bj, i1 %i.bp, i1 %i.bo
  %i.br = or i1 %i.bq, %mul.overflow
  %i.bs = or i1 %i.bh, %i.br
  br i1 %i.bs, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bt = add i32 %i.ar, -4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 1
  %i.bw = sext i32 %i.ar to i64
  %i.bx = shl nsw i64 %i.bw, 1
  %i.by = shl nuw nsw i64 %wide.trip.count, 1
  %i.bz = add nsw i64 %i.bv, 8
  %i.ca = sub nsw i64 %i.bz, %i.bx                ; 2 uses
  %i.cb = sub nsw i64 %i.ca, %i.by
  %i.cc = getelementptr i8, ptr %15, i64 %i.cb
  %i.cd = getelementptr i8, ptr %15, i64 %i.ca
  %i.ce = add nuw i64 %wide.trip.count, 9223372036854775807
  %i.cf = mul i64 %i.ba, %i.ce
  %i.cg = shl i64 %i.cf, 1
  %i.ch = getelementptr i8, ptr %7, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -2     ; 4 uses
  %i.cj = getelementptr i8, ptr %7, i64 -2        ; 4 uses
  %i.ck = icmp ult ptr %i.ci, %i.cj
  %i.cl = select i1 %i.ck, ptr %i.ci, ptr %i.cj
  %i.cm = icmp ugt ptr %i.ci, %i.cj
  %i.cn = select i1 %i.cm, ptr %i.ci, ptr %i.cj
  %i.co = getelementptr i8, ptr %i.cn, i64 2
  %bound0 = icmp ult ptr %i.cc, %i.co
  %bound1 = icmp ult ptr %i.cl, %i.cd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.cp = or disjoint i64 %index, 1
  %i.cq = or disjoint i64 %index, 2
  %i.cr = or disjoint i64 %index, 3
  %i.cs = or disjoint i64 %index, 4
  %i.ct = or disjoint i64 %index, 5
  %i.cu = or disjoint i64 %index, 6
  %i.cv = or disjoint i64 %index, 7
  %i.cw = mul nsw i64 %i.ba, %index
  %i.cx = mul nsw i64 %i.ba, %i.cp
  %i.cy = mul nsw i64 %i.ba, %i.cq
  %i.cz = mul nsw i64 %i.ba, %i.cr
  %i.da = mul nsw i64 %i.ba, %i.cs
  %i.db = mul nsw i64 %i.ba, %i.ct
  %i.dc = mul nsw i64 %i.ba, %i.cu
  %i.dd = mul nsw i64 %i.ba, %i.cv
  %i.de = getelementptr [2 x i8], ptr %7, i64 %i.cw
  %i.df = getelementptr [2 x i8], ptr %7, i64 %i.cx
  %i.dg = getelementptr [2 x i8], ptr %7, i64 %i.cy
  %i.dh = getelementptr [2 x i8], ptr %7, i64 %i.cz
  %i.di = getelementptr [2 x i8], ptr %7, i64 %i.da
  %i.dj = getelementptr [2 x i8], ptr %7, i64 %i.db
  %i.dk = getelementptr [2 x i8], ptr %7, i64 %i.dc
  %i.dl = getelementptr [2 x i8], ptr %7, i64 %i.dd
  %i.dm = getelementptr i8, ptr %i.de, i64 -2
  %i.dn = getelementptr i8, ptr %i.df, i64 -2
  %i.do = getelementptr i8, ptr %i.dg, i64 -2
  %i.dp = getelementptr i8, ptr %i.dh, i64 -2
  %i.dq = getelementptr i8, ptr %i.di, i64 -2
  %i.dr = getelementptr i8, ptr %i.dj, i64 -2
  %i.ds = getelementptr i8, ptr %i.dk, i64 -2
  %i.dt = getelementptr i8, ptr %i.dl, i64 -2
  %i.du = load i16, ptr %i.dm, align 2, !tbaa !45, !alias.scope !46
  %i.dv = load i16, ptr %i.dn, align 2, !tbaa !45, !alias.scope !46
  %i.dw = load i16, ptr %i.do, align 2, !tbaa !45, !alias.scope !46
  %i.dx = load i16, ptr %i.dp, align 2, !tbaa !45, !alias.scope !46
  %i.dy = load i16, ptr %i.dq, align 2, !tbaa !45, !alias.scope !46
  %i.dz = load i16, ptr %i.dr, align 2, !tbaa !45, !alias.scope !46
  %i.ea = load i16, ptr %i.ds, align 2, !tbaa !45, !alias.scope !46
  %i.eb = load i16, ptr %i.dt, align 2, !tbaa !45, !alias.scope !46
  %i.ec = insertelement <8 x i16> poison, i16 %i.du, i64 0
  %i.ed = insertelement <8 x i16> %i.ec, i16 %i.dv, i64 1
  %i.ee = insertelement <8 x i16> %i.ed, i16 %i.dw, i64 2
  %i.ef = insertelement <8 x i16> %i.ee, i16 %i.dx, i64 3
  %i.eg = insertelement <8 x i16> %i.ef, i16 %i.dy, i64 4
  %i.eh = insertelement <8 x i16> %i.eg, i16 %i.dz, i64 5
  %i.ei = insertelement <8 x i16> %i.eh, i16 %i.ea, i64 6
  %i.ej = insertelement <8 x i16> %i.ei, i16 %i.eb, i64 7
  %i.ek = trunc i64 %index to i32
  %i.el = xor i32 %i.ek, -1
  %i.em = add i32 %i.ar, %i.el
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -14
  %reverse = shufflevector <8 x i16> %i.ej, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.ep, align 2, !tbaa !45, !alias.scope !47, !noalias !46
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.n
  %i.er = icmp slt i32 %i.aw, %i.ar
  br i1 %i.er, label %bb.o, label %pixel_set.exit

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %indvars.iv = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.1, %scalar.ph ] ; 4 uses
  %i.es = mul nsw i64 %i.ba, %indvars.iv
  %i.et = getelementptr [2 x i8], ptr %7, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.et, i64 -2
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !45
  %i.ew = trunc i64 %indvars.iv to i32
  %i.ex = xor i32 %i.ew, -1
  %i.ey = add i32 %i.ar, %i.ex
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ez
  store i16 %i.ev, ptr %i.fa, align 2, !tbaa !45
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fb = mul nsw i64 %i.ba, %indvars.iv.next
  %i.fc = getelementptr [2 x i8], ptr %7, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !45
  %i.ff = trunc i64 %indvars.iv.next to i32
  %i.fg = xor i32 %i.ff, -1
  %i.fh = add i32 %i.ar, %i.fg
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.fi
  store i16 %i.fe, ptr %i.fj, align 2, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !12

bb.o:                                             ; preds = %._crit_edge
  %i.fk = sub nsw i32 %i.ar, %i.ax                ; 2 uses
  %i.fl = zext nneg i32 %i.fk to i64              ; 6 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !45 ; 3 uses
  %min.iters.check291 = icmp ult i32 %i.fk, 16
  br i1 %min.iters.check291, label %vec.epilog.ph, label %vector.ph294

vector.ph294:                                     ; preds = %bb.o
  %i.fo = and i64 %i.fl, 12
  %n.vec295 = and i64 %i.fl, 2147483632           ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.fn, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body296

vector.body296:                                   ; preds = %vector.ph294, %vector.body296
  %index297 = phi i64 [ 0, %vector.ph294 ], [ %index.next298, %vector.body296 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index297 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.fp, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat, ptr %i.fq, align 2, !tbaa !45
  %index.next298 = add nuw i64 %index297, 16      ; 2 uses
  %i.fr = icmp eq i64 %index.next298, %n.vec295
  br i1 %i.fr, label %middle.block299, label %vector.body296, !llvm.loop !13

middle.block299:                                  ; preds = %vector.body296
  %cmp.n300 = icmp eq i64 %n.vec295, %i.fl
  br i1 %cmp.n300, label %pixel_set.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block299
  %min.epilog.iters.check = icmp eq i64 %i.fo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %bb.o, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec295, %vec.epilog.iter.check ], [ 0, %bb.o ]
  %broadcast.splatinsert302 = insertelement <4 x i16> poison, i16 %i.fn, i64 0
  %broadcast.splat303 = shufflevector <4 x i16> %broadcast.splatinsert302, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index304 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next305, %vec.epilog.vector.body ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index304
  store <4 x i16> %broadcast.splat303, ptr %i.fs, align 2, !tbaa !45
  %index.next305 = add nuw i64 %index304, 4       ; 2 uses
  %i.ft = icmp eq i64 %index.next305, %i.fl
  br i1 %i.ft, label %pixel_set.exit, label %vec.epilog.vector.body, !llvm.loop !14

.lr.ph.i:                                         ; preds = %vec.epilog.iter.check, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %n.vec295, %vec.epilog.iter.check ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i
  store i16 %i.fn, ptr %i.fu, align 2, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.fl
  br i1 %exitcond.not.i, label %pixel_set.exit, label %.lr.ph.i, !llvm.loop !15

bb.p:                                             ; preds = %bb.m
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fv = load i16, ptr %.0166, align 2, !tbaa !45
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.fw = shl nuw i32 1, %i.b
  %i.fx = lshr i32 %i.fw, 1
  %i.fy = trunc i32 %i.fx to i16
  %i.fz = add i16 %i.fy, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ga = phi i16 [ %i.fv, %bb.q ], [ %i.fz, %bb.r ] ; 3 uses
  %i.gb = icmp sgt i32 %i.ar, 0
  br i1 %i.gb, label %iter.check321, label %pixel_set.exit

iter.check321:                                    ; preds = %bb.s
  %wide.trip.count.i197 = zext nneg i32 %i.ar to i64 ; 5 uses
  %min.iters.check311 = icmp ult i32 %i.ar, 16
  br i1 %min.iters.check311, label %vec.epilog.ph325, label %vector.ph312

vector.ph312:                                     ; preds = %iter.check321
  %i.gc = and i64 %wide.trip.count.i197, 12
  %n.vec313 = and i64 %wide.trip.count.i197, 2147483632 ; 4 uses
  %broadcast.splatinsert314 = insertelement <8 x i16> poison, i16 %i.ga, i64 0
  %broadcast.splat315 = shufflevector <8 x i16> %broadcast.splatinsert314, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.ph312, %vector.body316
  %index317 = phi i64 [ 0, %vector.ph312 ], [ %index.next318, %vector.body316 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index317 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <8 x i16> %broadcast.splat315, ptr %i.gd, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat315, ptr %i.ge, align 2, !tbaa !45
  %index.next318 = add nuw i64 %index317, 16      ; 2 uses
  %i.gf = icmp eq i64 %index.next318, %n.vec313
  br i1 %i.gf, label %middle.block319, label %vector.body316, !llvm.loop !16

middle.block319:                                  ; preds = %vector.body316
  %cmp.n320 = icmp eq i64 %n.vec313, %wide.trip.count.i197
  br i1 %cmp.n320, label %pixel_set.exit, label %vec.epilog.iter.check322

vec.epilog.iter.check322:                         ; preds = %middle.block319
  %min.epilog.iters.check324 = icmp eq i64 %i.gc, 0
  br i1 %min.epilog.iters.check324, label %vec.epilog.scalar.ph323, label %vec.epilog.ph325, !prof !50

vec.epilog.ph325:                                 ; preds = %iter.check321, %vec.epilog.iter.check322
  %vec.epilog.resume.val326 = phi i64 [ %n.vec313, %vec.epilog.iter.check322 ], [ 0, %iter.check321 ]
  %broadcast.splatinsert328 = insertelement <4 x i16> poison, i16 %i.ga, i64 0
  %broadcast.splat329 = shufflevector <4 x i16> %broadcast.splatinsert328, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body330

vec.epilog.vector.body330:                        ; preds = %vec.epilog.vector.body330, %vec.epilog.ph325
  %index331 = phi i64 [ %vec.epilog.resume.val326, %vec.epilog.ph325 ], [ %index.next332, %vec.epilog.vector.body330 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index331
  store <4 x i16> %broadcast.splat329, ptr %i.gg, align 2, !tbaa !45
  %index.next332 = add nuw i64 %index331, 4       ; 2 uses
  %i.gh = icmp eq i64 %index.next332, %wide.trip.count.i197
  br i1 %i.gh, label %pixel_set.exit, label %vec.epilog.vector.body330, !llvm.loop !17

vec.epilog.scalar.ph323:                          ; preds = %vec.epilog.iter.check322, %vec.epilog.scalar.ph323
  %indvars.iv.i198 = phi i64 [ %indvars.iv.next.i199, %vec.epilog.scalar.ph323 ], [ %n.vec313, %vec.epilog.iter.check322 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i198
  store i16 %i.ga, ptr %i.gi, align 2, !tbaa !45
  %indvars.iv.next.i199 = add nuw nsw i64 %indvars.iv.i198, 1 ; 2 uses
  %exitcond.not.i200 = icmp eq i64 %indvars.iv.next.i199, %wide.trip.count.i197
  br i1 %exitcond.not.i200, label %pixel_set.exit, label %vec.epilog.scalar.ph323, !llvm.loop !18

pixel_set.exit:                                   ; preds = %.lr.ph.i, %vec.epilog.vector.body, %vec.epilog.scalar.ph323, %vec.epilog.vector.body330, %middle.block299, %middle.block319, %bb.s, %._crit_edge
  %.not183.not = icmp eq i32 %.0167, 8
  br i1 %.not183.not, label %bb.t, label %pixel_set.exit208

bb.t:                                             ; preds = %pixel_set.exit
  %i.gj = add i32 %13, %2                         ; 2 uses
  %.not184 = icmp sge i32 %i.gj, %5
  %i.gk = and i32 %6, 8
  %i.gl = icmp eq i32 %i.gk, 0
  %i.gm = or i1 %i.gl, %.not184
  %.not185 = or i1 %.not182, %i.gm
  br i1 %.not185, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gn = sub i32 %5, %i.gj
  %i.go = shl i32 %i.gn, 2                        ; 2 uses
  %i.gp = tail call range(i32 0, -3) i32 @llvm.smin.i32(i32 range(i32 0, -3) %i.ar, i32 range(i32 0, -3) %i.go) ; 5 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph247, label %._crit_edge248

.lr.ph247:                                        ; preds = %bb.u
  %i.gr = and i64 %8, 1
  %.not.i202 = icmp eq i64 %i.gr, 0
  tail call void @llvm.assume(i1 %.not.i202)
  %i.gs = ashr exact i64 %8, 1                    ; 14 uses
  %i.gt = sext i32 %i.ar to i64                   ; 14 uses
  %wide.trip.count257 = zext nneg i32 %i.gp to i64 ; 6 uses
  %min.iters.check349 = icmp ult i32 %i.gp, 56
  br i1 %min.iters.check349, label %scalar.ph348.preheader, label %vector.scevcheck336

vector.scevcheck336:                              ; preds = %.lr.ph247
  %i.gu = add nsw i64 %wide.trip.count257, -1
  %i.gv = mul i64 %i.gs, -2
  %i.gw = mul i64 %i.gs, %i.gt
  %i.gx = shl i64 %i.gw, 1
  %i.gy = getelementptr i8, ptr %7, i64 %i.gx
  %scevgep337 = getelementptr i8, ptr %i.gy, i64 -2 ; 4 uses
  %i.gz = icmp slt i64 %8, 0                      ; 2 uses
  %i.ha = select i1 %i.gz, i64 %i.gv, i64 %8
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ha, i64 %i.gu) ; 2 uses
  %mul.result338 = extractvalue { i64, i1 } %mul, 0 ; 2 uses
  %mul.overflow339 = extractvalue { i64, i1 } %mul, 1
  %i.hb = sub i64 0, %mul.result338
  %i.hc = getelementptr i8, ptr %scevgep337, i64 %mul.result338
  %i.hd = getelementptr i8, ptr %scevgep337, i64 %i.hb
  %i.he = icmp ult ptr %i.hc, %scevgep337
  %i.hf = icmp ugt ptr %i.hd, %scevgep337
  %i.hg = select i1 %i.gz, i1 %i.hf, i1 %i.he
  %i.hh = or i1 %i.hg, %mul.overflow339
  br i1 %i.hh, label %scalar.ph348.preheader, label %vector.memcheck350

vector.memcheck350:                               ; preds = %vector.scevcheck336
  %i.hi = mul nsw i64 %i.gt, -2
  %i.hj = shl nuw nsw i64 %wide.trip.count257, 1
  %i.hk = sub nsw i64 %i.hi, %i.hj
  %i.hl = getelementptr i8, ptr %15, i64 %i.hk
  %i.hm = mul i64 %i.gs, %i.gt
  %i.hn = shl i64 %i.hm, 1
  %i.ho = getelementptr i8, ptr %7, i64 %i.hn
  %i.hp = getelementptr i8, ptr %i.ho, i64 -2     ; 4 uses
  %i.hq = add nsw i64 %i.gt, %wide.trip.count257
  %i.hr = shl nsw i64 %i.hq, 1
  %i.hs = add nsw i64 %i.hr, -2
  %i.ht = mul i64 %i.gs, %i.hs
  %i.hu = getelementptr i8, ptr %7, i64 %i.ht
  %i.hv = getelementptr i8, ptr %i.hu, i64 -2     ; 4 uses
  %i.hw = icmp ult ptr %i.hp, %i.hv
  %i.hx = select i1 %i.hw, ptr %i.hp, ptr %i.hv
  %i.hy = icmp ugt ptr %i.hp, %i.hv
  %i.hz = select i1 %i.hy, ptr %i.hp, ptr %i.hv
  %i.ia = getelementptr i8, ptr %i.hz, i64 2
  %bound0351 = icmp ult ptr %i.hl, %i.ia
  %bound1352 = icmp ult ptr %i.hx, %i.au
  %found.conflict353 = and i1 %bound0351, %bound1352
  br i1 %found.conflict353, label %scalar.ph348.preheader, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck350
  %n.vec355 = and i64 %wide.trip.count257, 2147483640 ; 3 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next359, %vector.body356 ] ; 10 uses
  %i.ib = or disjoint i64 %index357, 1
  %i.ic = or disjoint i64 %index357, 2
  %i.id = or disjoint i64 %index357, 3
  %i.ie = or disjoint i64 %index357, 4
  %i.if = or disjoint i64 %index357, 5
  %i.ig = or disjoint i64 %index357, 6
  %i.ih = or disjoint i64 %index357, 7
  %i.ii = add nuw nsw i64 %index357, %i.gt
  %i.ij = add nuw nsw i64 %i.ib, %i.gt
  %i.ik = add nuw nsw i64 %i.ic, %i.gt
  %i.il = add nuw nsw i64 %i.id, %i.gt
  %i.im = add nuw nsw i64 %i.ie, %i.gt
  %i.in = add nuw nsw i64 %i.if, %i.gt
  %i.io = add nuw nsw i64 %i.ig, %i.gt
  %i.ip = add nuw nsw i64 %i.ih, %i.gt
  %i.iq = mul nsw i64 %i.gs, %i.ii
  %i.ir = mul nsw i64 %i.gs, %i.ij
  %i.is = mul nsw i64 %i.gs, %i.ik
  %i.it = mul nsw i64 %i.gs, %i.il
  %i.iu = mul nsw i64 %i.gs, %i.im
  %i.iv = mul nsw i64 %i.gs, %i.in
  %i.iw = mul nsw i64 %i.gs, %i.io
  %i.ix = mul nsw i64 %i.gs, %i.ip
  %i.iy = getelementptr [2 x i8], ptr %7, i64 %i.iq
  %i.iz = getelementptr [2 x i8], ptr %7, i64 %i.ir
  %i.ja = getelementptr [2 x i8], ptr %7, i64 %i.is
  %i.jb = getelementptr [2 x i8], ptr %7, i64 %i.it
  %i.jc = getelementptr [2 x i8], ptr %7, i64 %i.iu
  %i.jd = getelementptr [2 x i8], ptr %7, i64 %i.iv
  %i.je = getelementptr [2 x i8], ptr %7, i64 %i.iw
  %i.jf = getelementptr [2 x i8], ptr %7, i64 %i.ix
  %i.jg = getelementptr i8, ptr %i.iy, i64 -2
  %i.jh = getelementptr i8, ptr %i.iz, i64 -2
  %i.ji = getelementptr i8, ptr %i.ja, i64 -2
  %i.jj = getelementptr i8, ptr %i.jb, i64 -2
  %i.jk = getelementptr i8, ptr %i.jc, i64 -2
  %i.jl = getelementptr i8, ptr %i.jd, i64 -2
  %i.jm = getelementptr i8, ptr %i.je, i64 -2
  %i.jn = getelementptr i8, ptr %i.jf, i64 -2
  %i.jo = load i16, ptr %i.jg, align 2, !tbaa !45, !alias.scope !51
  %i.jp = load i16, ptr %i.jh, align 2, !tbaa !45, !alias.scope !51
  %i.jq = load i16, ptr %i.ji, align 2, !tbaa !45, !alias.scope !51
  %i.jr = load i16, ptr %i.jj, align 2, !tbaa !45, !alias.scope !51
  %i.js = load i16, ptr %i.jk, align 2, !tbaa !45, !alias.scope !51
  %i.jt = load i16, ptr %i.jl, align 2, !tbaa !45, !alias.scope !51
  %i.ju = load i16, ptr %i.jm, align 2, !tbaa !45, !alias.scope !51
  %i.jv = load i16, ptr %i.jn, align 2, !tbaa !45, !alias.scope !51
  %i.jw = insertelement <8 x i16> poison, i16 %i.jo, i64 0
  %i.jx = insertelement <8 x i16> %i.jw, i16 %i.jp, i64 1
  %i.jy = insertelement <8 x i16> %i.jx, i16 %i.jq, i64 2
  %i.jz = insertelement <8 x i16> %i.jy, i16 %i.jr, i64 3
  %i.ka = insertelement <8 x i16> %i.jz, i16 %i.js, i64 4
  %i.kb = insertelement <8 x i16> %i.ka, i16 %i.jt, i64 5
  %i.kc = insertelement <8 x i16> %i.kb, i16 %i.ju, i64 6
  %i.kd = insertelement <8 x i16> %i.kc, i16 %i.jv, i64 7
  %i.ke = xor i64 %index357, -1
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ke
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -14
  %reverse358 = shufflevector <8 x i16> %i.kd, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse358, ptr %i.kg, align 2, !tbaa !45, !alias.scope !52, !noalias !51
  %index.next359 = add nuw i64 %index357, 8       ; 2 uses
  %i.kh = icmp eq i64 %index.next359, %n.vec355
  br i1 %i.kh, label %middle.block360, label %vector.body356, !llvm.loop !22

middle.block360:                                  ; preds = %vector.body356
  %cmp.n361 = icmp eq i64 %n.vec355, %wide.trip.count257
  br i1 %cmp.n361, label %._crit_edge248, label %scalar.ph348.preheader

scalar.ph348.preheader:                           ; preds = %vector.memcheck350, %vector.scevcheck336, %.lr.ph247, %middle.block360
  %indvars.iv254.ph = phi i64 [ 0, %vector.memcheck350 ], [ 0, %vector.scevcheck336 ], [ 0, %.lr.ph247 ], [ %n.vec355, %middle.block360 ]
  br label %scalar.ph348

._crit_edge248:                                   ; preds = %scalar.ph348, %middle.block360, %bb.u
  %i.ki = icmp slt i32 %i.go, %i.ar
  br i1 %i.ki, label %bb.v, label %pixel_set.exit208

scalar.ph348:                                     ; preds = %scalar.ph348, %scalar.ph348.preheader
  %indvars.iv254 = phi i64 [ %indvars.iv254.ph, %scalar.ph348.preheader ], [ %indvars.iv.next255.1, %scalar.ph348 ] ; 5 uses
  %i.kj = add nuw nsw i64 %indvars.iv254, %i.gt
  %i.kk = mul nsw i64 %i.gs, %i.kj
  %i.kl = getelementptr [2 x i8], ptr %7, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 -2
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !45
  %indvars.iv.next255 = or disjoint i64 %indvars.iv254, 1
  %i.ko = xor i64 %indvars.iv254, -1
  %i.kp = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ko
  store i16 %i.kn, ptr %i.kp, align 2, !tbaa !45
  %i.kq = add nuw nsw i64 %indvars.iv.next255, %i.gt
  %i.kr = mul nsw i64 %i.gs, %i.kq
  %i.ks = getelementptr [2 x i8], ptr %7, i64 %i.kr
  %i.kt = getelementptr i8, ptr %i.ks, i64 -2
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !45
  %indvars.iv.next255.1 = add nuw nsw i64 %indvars.iv254, 2 ; 2 uses
  %i.kv = xor i64 %indvars.iv254, -2
  %i.kw = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.kv
  store i16 %i.ku, ptr %i.kw, align 2, !tbaa !45
  %exitcond258.not.1 = icmp eq i64 %indvars.iv.next255.1, %wide.trip.count257
  br i1 %exitcond258.not.1, label %._crit_edge248, label %scalar.ph348, !llvm.loop !23

bb.v:                                             ; preds = %._crit_edge248
  %i.kx = sext i32 %i.ar to i64
  %i.ky = sub nsw i64 0, %i.kx
  %i.kz = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ky ; 3 uses
  %i.la = sub nsw i32 0, %i.gp
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.lb
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !45 ; 3 uses
  %i.le = sub nsw i32 %i.ar, %i.gp                ; 2 uses
  %wide.trip.count.i204 = zext nneg i32 %i.le to i64 ; 5 uses
  %min.iters.check364 = icmp ult i32 %i.le, 16
  br i1 %min.iters.check364, label %vec.epilog.ph379, label %vector.ph366

vector.ph366:                                     ; preds = %bb.v
  %i.lf = and i64 %wide.trip.count.i204, 12
  %n.vec367 = and i64 %wide.trip.count.i204, 2147483632 ; 4 uses
  %broadcast.splatinsert368 = insertelement <8 x i16> poison, i16 %i.ld, i64 0
  %broadcast.splat369 = shufflevector <8 x i16> %broadcast.splatinsert368, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body370

vector.body370:                                   ; preds = %vector.ph366, %vector.body370
  %index371 = phi i64 [ 0, %vector.ph366 ], [ %index.next372, %vector.body370 ] ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %index371 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store <8 x i16> %broadcast.splat369, ptr %i.lg, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat369, ptr %i.lh, align 2, !tbaa !45
  %index.next372 = add nuw i64 %index371, 16      ; 2 uses
  %i.li = icmp eq i64 %index.next372, %n.vec367
  br i1 %i.li, label %middle.block373, label %vector.body370, !llvm.loop !24

middle.block373:                                  ; preds = %vector.body370
  %cmp.n374 = icmp eq i64 %n.vec367, %wide.trip.count.i204
  br i1 %cmp.n374, label %pixel_set.exit208, label %vec.epilog.iter.check376

vec.epilog.iter.check376:                         ; preds = %middle.block373
  %min.epilog.iters.check378 = icmp eq i64 %i.lf, 0
  br i1 %min.epilog.iters.check378, label %vec.epilog.scalar.ph377, label %vec.epilog.ph379, !prof !50

vec.epilog.ph379:                                 ; preds = %bb.v, %vec.epilog.iter.check376
  %vec.epilog.resume.val380 = phi i64 [ %n.vec367, %vec.epilog.iter.check376 ], [ 0, %bb.v ]
  %broadcast.splatinsert382 = insertelement <4 x i16> poison, i16 %i.ld, i64 0
  %broadcast.splat383 = shufflevector <4 x i16> %broadcast.splatinsert382, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body384

vec.epilog.vector.body384:                        ; preds = %vec.epilog.vector.body384, %vec.epilog.ph379
  %index385 = phi i64 [ %vec.epilog.resume.val380, %vec.epilog.ph379 ], [ %index.next386, %vec.epilog.vector.body384 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %index385
  store <4 x i16> %broadcast.splat383, ptr %i.lj, align 2, !tbaa !45
  %index.next386 = add nuw i64 %index385, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next386, %wide.trip.count.i204
  br i1 %i.lk, label %pixel_set.exit208, label %vec.epilog.vector.body384, !llvm.loop !25

vec.epilog.scalar.ph377:                          ; preds = %vec.epilog.iter.check376, %vec.epilog.scalar.ph377
  %indvars.iv.i205 = phi i64 [ %indvars.iv.next.i206, %vec.epilog.scalar.ph377 ], [ %n.vec367, %vec.epilog.iter.check376 ] ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %indvars.iv.i205
  store i16 %i.ld, ptr %i.ll, align 2, !tbaa !45
  %indvars.iv.next.i206 = add nuw nsw i64 %indvars.iv.i205, 1 ; 2 uses
  %exitcond.not.i207 = icmp eq i64 %indvars.iv.next.i206, %wide.trip.count.i204
  br i1 %exitcond.not.i207, label %pixel_set.exit208, label %vec.epilog.scalar.ph377, !llvm.loop !26

bb.w:                                             ; preds = %bb.t
  %i.lm = sext i32 %i.ar to i64
  %i.ln = sub nsw i64 0, %i.lm
  %i.lo = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ln ; 3 uses
  %i.lp = load i16, ptr %i.au, align 2, !tbaa !45 ; 3 uses
  %i.lq = icmp sgt i32 %i.ar, 0
  br i1 %i.lq, label %iter.check403, label %pixel_set.exit208

iter.check403:                                    ; preds = %bb.w
  %wide.trip.count.i210 = zext nneg i32 %i.ar to i64 ; 5 uses
  %min.iters.check393 = icmp ult i32 %i.ar, 16
  br i1 %min.iters.check393, label %vec.epilog.ph407, label %vector.ph394

vector.ph394:                                     ; preds = %iter.check403
  %i.lr = and i64 %wide.trip.count.i210, 12
  %n.vec395 = and i64 %wide.trip.count.i210, 2147483632 ; 4 uses
  %broadcast.splatinsert396 = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat397 = shufflevector <8 x i16> %broadcast.splatinsert396, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body398

vector.body398:                                   ; preds = %vector.ph394, %vector.body398
  %index399 = phi i64 [ 0, %vector.ph394 ], [ %index.next400, %vector.body398 ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %index399 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store <8 x i16> %broadcast.splat397, ptr %i.ls, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat397, ptr %i.lt, align 2, !tbaa !45
  %index.next400 = add nuw i64 %index399, 16      ; 2 uses
  %i.lu = icmp eq i64 %index.next400, %n.vec395
  br i1 %i.lu, label %middle.block401, label %vector.body398, !llvm.loop !27

middle.block401:                                  ; preds = %vector.body398
  %cmp.n402 = icmp eq i64 %n.vec395, %wide.trip.count.i210
  br i1 %cmp.n402, label %pixel_set.exit208, label %vec.epilog.iter.check404

vec.epilog.iter.check404:                         ; preds = %middle.block401
  %min.epilog.iters.check406 = icmp eq i64 %i.lr, 0
  br i1 %min.epilog.iters.check406, label %vec.epilog.scalar.ph405, label %vec.epilog.ph407, !prof !50

vec.epilog.ph407:                                 ; preds = %iter.check403, %vec.epilog.iter.check404
  %vec.epilog.resume.val408 = phi i64 [ %n.vec395, %vec.epilog.iter.check404 ], [ 0, %iter.check403 ]
  %broadcast.splatinsert410 = insertelement <4 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat411 = shufflevector <4 x i16> %broadcast.splatinsert410, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body412

vec.epilog.vector.body412:                        ; preds = %vec.epilog.vector.body412, %vec.epilog.ph407
  %index413 = phi i64 [ %vec.epilog.resume.val408, %vec.epilog.ph407 ], [ %index.next414, %vec.epilog.vector.body412 ] ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %index413
  store <4 x i16> %broadcast.splat411, ptr %i.lv, align 2, !tbaa !45
  %index.next414 = add nuw i64 %index413, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next414, %wide.trip.count.i210
  br i1 %i.lw, label %pixel_set.exit208, label %vec.epilog.vector.body412, !llvm.loop !28

vec.epilog.scalar.ph405:                          ; preds = %vec.epilog.iter.check404, %vec.epilog.scalar.ph405
  %indvars.iv.i211 = phi i64 [ %indvars.iv.next.i212, %vec.epilog.scalar.ph405 ], [ %n.vec395, %vec.epilog.iter.check404 ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %indvars.iv.i211
  store i16 %i.lp, ptr %i.lx, align 2, !tbaa !45
  %indvars.iv.next.i212 = add nuw nsw i64 %indvars.iv.i211, 1 ; 2 uses
  %exitcond.not.i213 = icmp eq i64 %indvars.iv.next.i212, %wide.trip.count.i210
  br i1 %exitcond.not.i213, label %pixel_set.exit208, label %vec.epilog.scalar.ph405, !llvm.loop !29

pixel_set.exit208:                                ; preds = %vec.epilog.scalar.ph377, %vec.epilog.vector.body384, %vec.epilog.scalar.ph405, %vec.epilog.vector.body412, %middle.block373, %middle.block401, %bb.w, %pixel_set.exit, %._crit_edge248, %._crit_edge259
  %i.ly = and i64 %.pre260, 300
  %.not186.not = icmp eq i64 %i.ly, 0
  br i1 %.not186.not, label %bb.x, label %pixel_set.exit232

bb.x:                                             ; preds = %pixel_set.exit208
  %i.lz = shl i32 %12, 2                          ; 15 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %15, i64 2 ; 8 uses
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.mb = sub nsw i32 %4, %0
  %i.mc = shl i32 %i.mb, 2                        ; 2 uses
  %i.md = tail call range(i32 0, -3) i32 @llvm.smin.i32(i32 range(i32 0, -3) %i.lz, i32 range(i32 0, -3) %i.mc) ; 3 uses
  %i.me = shl i32 %i.md, 1
  %i.mf = sext i32 %i.me to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ma, ptr align 2 %.0166, i64 %i.mf, i1 false)
  %i.mg = icmp slt i32 %i.mc, %i.lz
  br i1 %i.mg, label %bb.z, label %pixel_set.exit220

bb.z:                                             ; preds = %bb.y
  %i.mh = sext i32 %i.md to i64
  %i.mi = getelementptr [2 x i8], ptr %i.ma, i64 %i.mh ; 4 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 -2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !45 ; 3 uses
  %i.ml = sub nsw i32 %i.lz, %i.md                ; 2 uses
  %wide.trip.count.i216 = zext nneg i32 %i.ml to i64 ; 5 uses
  %min.iters.check420 = icmp ult i32 %i.ml, 16
  br i1 %min.iters.check420, label %vec.epilog.ph434, label %vector.ph421

vector.ph421:                                     ; preds = %bb.z
  %i.mm = and i64 %wide.trip.count.i216, 12
  %n.vec422 = and i64 %wide.trip.count.i216, 2147483632 ; 4 uses
  %broadcast.splatinsert423 = insertelement <8 x i16> poison, i16 %i.mk, i64 0
  %broadcast.splat424 = shufflevector <8 x i16> %broadcast.splatinsert423, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body425

vector.body425:                                   ; preds = %vector.ph421, %vector.body425
  %index426 = phi i64 [ 0, %vector.ph421 ], [ %index.next427, %vector.body425 ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %index426 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store <8 x i16> %broadcast.splat424, ptr %i.mn, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat424, ptr %i.mo, align 2, !tbaa !45
  %index.next427 = add nuw i64 %index426, 16      ; 2 uses
  %i.mp = icmp eq i64 %index.next427, %n.vec422
  br i1 %i.mp, label %middle.block428, label %vector.body425, !llvm.loop !30

middle.block428:                                  ; preds = %vector.body425
  %cmp.n429 = icmp eq i64 %n.vec422, %wide.trip.count.i216
  br i1 %cmp.n429, label %pixel_set.exit220, label %vec.epilog.iter.check431

vec.epilog.iter.check431:                         ; preds = %middle.block428
  %min.epilog.iters.check433 = icmp eq i64 %i.mm, 0
  br i1 %min.epilog.iters.check433, label %vec.epilog.scalar.ph432, label %vec.epilog.ph434, !prof !50

vec.epilog.ph434:                                 ; preds = %bb.z, %vec.epilog.iter.check431
  %vec.epilog.resume.val435 = phi i64 [ %n.vec422, %vec.epilog.iter.check431 ], [ 0, %bb.z ]
  %broadcast.splatinsert437 = insertelement <4 x i16> poison, i16 %i.mk, i64 0
  %broadcast.splat438 = shufflevector <4 x i16> %broadcast.splatinsert437, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body439

vec.epilog.vector.body439:                        ; preds = %vec.epilog.vector.body439, %vec.epilog.ph434
  %index440 = phi i64 [ %vec.epilog.resume.val435, %vec.epilog.ph434 ], [ %index.next441, %vec.epilog.vector.body439 ] ; 2 uses
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %index440
  store <4 x i16> %broadcast.splat438, ptr %i.mq, align 2, !tbaa !45
  %index.next441 = add nuw i64 %index440, 4       ; 2 uses
  %i.mr = icmp eq i64 %index.next441, %wide.trip.count.i216
  br i1 %i.mr, label %pixel_set.exit220, label %vec.epilog.vector.body439, !llvm.loop !31

vec.epilog.scalar.ph432:                          ; preds = %vec.epilog.iter.check431, %vec.epilog.scalar.ph432
  %indvars.iv.i217 = phi i64 [ %indvars.iv.next.i218, %vec.epilog.scalar.ph432 ], [ %n.vec422, %vec.epilog.iter.check431 ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %indvars.iv.i217
  store i16 %i.mk, ptr %i.ms, align 2, !tbaa !45
  %indvars.iv.next.i218 = add nuw nsw i64 %indvars.iv.i217, 1 ; 2 uses
  %exitcond.not.i219 = icmp eq i64 %indvars.iv.next.i218, %wide.trip.count.i216
  br i1 %exitcond.not.i219, label %pixel_set.exit220, label %vec.epilog.scalar.ph432, !llvm.loop !32

bb.aa:                                            ; preds = %bb.x
  %.not187 = icmp eq i32 %1, 0
  br i1 %.not187, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mt = getelementptr inbounds i8, ptr %7, i64 -2
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !45
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.mv = shl nuw i32 1, %i.b
  %i.mw = lshr i32 %i.mv, 1
  %i.mx = trunc i32 %i.mw to i16
  %i.my = add i16 %i.mx, -1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.mz = phi i16 [ %i.mu, %bb.ab ], [ %i.my, %bb.ac ] ; 3 uses
  %i.na = icmp sgt i32 %i.lz, 0
  br i1 %i.na, label %iter.check458, label %pixel_set.exit220

iter.check458:                                    ; preds = %bb.ad
  %wide.trip.count.i222 = zext nneg i32 %i.lz to i64 ; 5 uses
  %min.iters.check448 = icmp ult i32 %i.lz, 16
  br i1 %min.iters.check448, label %vec.epilog.ph462, label %vector.ph449

vector.ph449:                                     ; preds = %iter.check458
  %i.nb = and i64 %wide.trip.count.i222, 12
  %n.vec450 = and i64 %wide.trip.count.i222, 2147483632 ; 4 uses
  %broadcast.splatinsert451 = insertelement <8 x i16> poison, i16 %i.mz, i64 0
  %broadcast.splat452 = shufflevector <8 x i16> %broadcast.splatinsert451, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body453

vector.body453:                                   ; preds = %vector.ph449, %vector.body453
  %index454 = phi i64 [ 0, %vector.ph449 ], [ %index.next455, %vector.body453 ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %index454 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store <8 x i16> %broadcast.splat452, ptr %i.nc, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat452, ptr %i.nd, align 2, !tbaa !45
  %index.next455 = add nuw i64 %index454, 16      ; 2 uses
  %i.ne = icmp eq i64 %index.next455, %n.vec450
  br i1 %i.ne, label %middle.block456, label %vector.body453, !llvm.loop !33

middle.block456:                                  ; preds = %vector.body453
  %cmp.n457 = icmp eq i64 %n.vec450, %wide.trip.count.i222
  br i1 %cmp.n457, label %pixel_set.exit220, label %vec.epilog.iter.check459

vec.epilog.iter.check459:                         ; preds = %middle.block456
  %min.epilog.iters.check461 = icmp eq i64 %i.nb, 0
  br i1 %min.epilog.iters.check461, label %vec.epilog.scalar.ph460, label %vec.epilog.ph462, !prof !50

vec.epilog.ph462:                                 ; preds = %iter.check458, %vec.epilog.iter.check459
  %vec.epilog.resume.val463 = phi i64 [ %n.vec450, %vec.epilog.iter.check459 ], [ 0, %iter.check458 ]
  %broadcast.splatinsert465 = insertelement <4 x i16> poison, i16 %i.mz, i64 0
  %broadcast.splat466 = shufflevector <4 x i16> %broadcast.splatinsert465, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body467

vec.epilog.vector.body467:                        ; preds = %vec.epilog.vector.body467, %vec.epilog.ph462
  %index468 = phi i64 [ %vec.epilog.resume.val463, %vec.epilog.ph462 ], [ %index.next469, %vec.epilog.vector.body467 ] ; 2 uses
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %index468
  store <4 x i16> %broadcast.splat466, ptr %i.nf, align 2, !tbaa !45
  %index.next469 = add nuw i64 %index468, 4       ; 2 uses
  %i.ng = icmp eq i64 %index.next469, %wide.trip.count.i222
  br i1 %i.ng, label %pixel_set.exit220, label %vec.epilog.vector.body467, !llvm.loop !34

vec.epilog.scalar.ph460:                          ; preds = %vec.epilog.iter.check459, %vec.epilog.scalar.ph460
  %indvars.iv.i223 = phi i64 [ %indvars.iv.next.i224, %vec.epilog.scalar.ph460 ], [ %n.vec450, %vec.epilog.iter.check459 ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %indvars.iv.i223
  store i16 %i.mz, ptr %i.nh, align 2, !tbaa !45
  %indvars.iv.next.i224 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %exitcond.not.i225 = icmp eq i64 %indvars.iv.next.i224, %wide.trip.count.i222
  br i1 %exitcond.not.i225, label %pixel_set.exit220, label %vec.epilog.scalar.ph460, !llvm.loop !35

pixel_set.exit220:                                ; preds = %vec.epilog.scalar.ph432, %vec.epilog.vector.body439, %vec.epilog.scalar.ph460, %vec.epilog.vector.body467, %middle.block428, %middle.block456, %bb.ad, %bb.y
  %.not188.not = icmp eq i32 %.0167, 6
  br i1 %.not188.not, label %bb.ae, label %pixel_set.exit232

bb.ae:                                            ; preds = %pixel_set.exit220
  %i.ni = add i32 %12, %0                         ; 2 uses
  %.not189 = icmp sge i32 %i.ni, %4
  %i.nj = and i32 %6, 1
  %i.nk = icmp eq i32 %i.nj, 0
  %i.nl = or i1 %i.nk, %.not189
  %.not190 = or i1 %.not, %i.nl
  br i1 %.not190, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nm = sub i32 %4, %i.ni
  %i.nn = shl i32 %i.nm, 2                        ; 2 uses
  %i.no = tail call range(i32 0, -3) i32 @llvm.smin.i32(i32 range(i32 0, -3) %i.lz, i32 range(i32 0, -3) %i.nn) ; 4 uses
  %i.np = sext i32 %i.lz to i64                   ; 2 uses
  %i.nq = getelementptr inbounds [2 x i8], ptr %i.ma, i64 %i.np ; 2 uses
  %i.nr = getelementptr inbounds [2 x i8], ptr %.0166, i64 %i.np
  %i.ns = shl i32 %i.no, 1
  %i.nt = sext i32 %i.ns to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.nq, ptr align 2 %i.nr, i64 %i.nt, i1 false)
  %i.nu = icmp slt i32 %i.nn, %i.lz
  br i1 %i.nu, label %bb.ag, label %pixel_set.exit232

bb.ag:                                            ; preds = %bb.af
  %i.nv = sext i32 %i.no to i64
  %i.nw = getelementptr inbounds [2 x i8], ptr %i.nq, i64 %i.nv ; 3 uses
  %i.nx = add nsw i32 %i.no, %i.lz
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr [2 x i8], ptr %i.ma, i64 %i.ny
  %i.oa = getelementptr i8, ptr %i.nz, i64 -2
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !45 ; 3 uses
  %i.oc = sub nsw i32 %i.lz, %i.no                ; 2 uses
  %wide.trip.count.i228 = zext nneg i32 %i.oc to i64 ; 5 uses
  %min.iters.check476 = icmp ult i32 %i.oc, 16
  br i1 %min.iters.check476, label %vec.epilog.ph489, label %vector.ph476

vector.ph476:                                     ; preds = %bb.ag
  %i.od = and i64 %wide.trip.count.i228, 12
  %n.vec477 = and i64 %wide.trip.count.i228, 2147483632 ; 4 uses
  %broadcast.splatinsert478 = insertelement <8 x i16> poison, i16 %i.ob, i64 0
  %broadcast.splat479 = shufflevector <8 x i16> %broadcast.splatinsert478, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body480

vector.body480:                                   ; preds = %vector.ph476, %vector.body480
  %index481 = phi i64 [ 0, %vector.ph476 ], [ %index.next482, %vector.body480 ] ; 2 uses
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %index481 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store <8 x i16> %broadcast.splat479, ptr %i.oe, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat479, ptr %i.of, align 2, !tbaa !45
  %index.next482 = add nuw i64 %index481, 16      ; 2 uses
  %i.og = icmp eq i64 %index.next482, %n.vec477
  br i1 %i.og, label %middle.block483, label %vector.body480, !llvm.loop !36

middle.block483:                                  ; preds = %vector.body480
  %cmp.n484 = icmp eq i64 %n.vec477, %wide.trip.count.i228
  br i1 %cmp.n484, label %pixel_set.exit232, label %vec.epilog.iter.check486

vec.epilog.iter.check486:                         ; preds = %middle.block483
  %min.epilog.iters.check488 = icmp eq i64 %i.od, 0
  br i1 %min.epilog.iters.check488, label %vec.epilog.scalar.ph487, label %vec.epilog.ph489, !prof !50

vec.epilog.ph489:                                 ; preds = %bb.ag, %vec.epilog.iter.check486
  %vec.epilog.resume.val490 = phi i64 [ %n.vec477, %vec.epilog.iter.check486 ], [ 0, %bb.ag ]
  %broadcast.splatinsert492 = insertelement <4 x i16> poison, i16 %i.ob, i64 0
  %broadcast.splat493 = shufflevector <4 x i16> %broadcast.splatinsert492, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body494

vec.epilog.vector.body494:                        ; preds = %vec.epilog.vector.body494, %vec.epilog.ph489
  %index495 = phi i64 [ %vec.epilog.resume.val490, %vec.epilog.ph489 ], [ %index.next496, %vec.epilog.vector.body494 ] ; 2 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %index495
  store <4 x i16> %broadcast.splat493, ptr %i.oh, align 2, !tbaa !45
  %index.next496 = add nuw i64 %index495, 4       ; 2 uses
  %i.oi = icmp eq i64 %index.next496, %wide.trip.count.i228
  br i1 %i.oi, label %pixel_set.exit232, label %vec.epilog.vector.body494, !llvm.loop !37

vec.epilog.scalar.ph487:                          ; preds = %vec.epilog.iter.check486, %vec.epilog.scalar.ph487
  %indvars.iv.i229 = phi i64 [ %indvars.iv.next.i230, %vec.epilog.scalar.ph487 ], [ %n.vec477, %vec.epilog.iter.check486 ] ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %indvars.iv.i229
  store i16 %i.ob, ptr %i.oj, align 2, !tbaa !45
  %indvars.iv.next.i230 = add nuw nsw i64 %indvars.iv.i229, 1 ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %indvars.iv.next.i230, %wide.trip.count.i228
  br i1 %exitcond.not.i231, label %pixel_set.exit232, label %vec.epilog.scalar.ph487, !llvm.loop !38

bb.ah:                                            ; preds = %bb.ae
  %i.ok = sext i32 %i.lz to i64
  %i.ol = getelementptr [2 x i8], ptr %i.ma, i64 %i.ok ; 4 uses
  %i.om = getelementptr i8, ptr %i.ol, i64 -2
  %i.on = load i16, ptr %i.om, align 2, !tbaa !45 ; 3 uses
  %i.oo = icmp sgt i32 %i.lz, 0
  br i1 %i.oo, label %iter.check513, label %pixel_set.exit232

iter.check513:                                    ; preds = %bb.ah
  %wide.trip.count.i234 = zext nneg i32 %i.lz to i64 ; 5 uses
  %min.iters.check503 = icmp ult i32 %i.lz, 16
  br i1 %min.iters.check503, label %vec.epilog.ph517, label %vector.ph504

vector.ph504:                                     ; preds = %iter.check513
  %i.op = and i64 %wide.trip.count.i234, 12
  %n.vec505 = and i64 %wide.trip.count.i234, 2147483632 ; 4 uses
  %broadcast.splatinsert506 = insertelement <8 x i16> poison, i16 %i.on, i64 0
  %broadcast.splat507 = shufflevector <8 x i16> %broadcast.splatinsert506, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body508

vector.body508:                                   ; preds = %vector.ph504, %vector.body508
  %index509 = phi i64 [ 0, %vector.ph504 ], [ %index.next510, %vector.body508 ] ; 2 uses
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.ol, i64 %index509 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store <8 x i16> %broadcast.splat507, ptr %i.oq, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat507, ptr %i.or, align 2, !tbaa !45
  %index.next510 = add nuw i64 %index509, 16      ; 2 uses
  %i.os = icmp eq i64 %index.next510, %n.vec505
  br i1 %i.os, label %middle.block511, label %vector.body508, !llvm.loop !39

middle.block511:                                  ; preds = %vector.body508
  %cmp.n512 = icmp eq i64 %n.vec505, %wide.trip.count.i234
  br i1 %cmp.n512, label %pixel_set.exit232, label %vec.epilog.iter.check514

vec.epilog.iter.check514:                         ; preds = %middle.block511
  %min.epilog.iters.check516 = icmp eq i64 %i.op, 0
  br i1 %min.epilog.iters.check516, label %vec.epilog.scalar.ph515, label %vec.epilog.ph517, !prof !50

vec.epilog.ph517:                                 ; preds = %iter.check513, %vec.epilog.iter.check514
  %vec.epilog.resume.val518 = phi i64 [ %n.vec505, %vec.epilog.iter.check514 ], [ 0, %iter.check513 ]
  %broadcast.splatinsert520 = insertelement <4 x i16> poison, i16 %i.on, i64 0
  %broadcast.splat521 = shufflevector <4 x i16> %broadcast.splatinsert520, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body522

vec.epilog.vector.body522:                        ; preds = %vec.epilog.vector.body522, %vec.epilog.ph517
  %index523 = phi i64 [ %vec.epilog.resume.val518, %vec.epilog.ph517 ], [ %index.next524, %vec.epilog.vector.body522 ] ; 2 uses
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.ol, i64 %index523
  store <4 x i16> %broadcast.splat521, ptr %i.ot, align 2, !tbaa !45
  %index.next524 = add nuw i64 %index523, 4       ; 2 uses
  %i.ou = icmp eq i64 %index.next524, %wide.trip.count.i234
  br i1 %i.ou, label %pixel_set.exit232, label %vec.epilog.vector.body522, !llvm.loop !40

vec.epilog.scalar.ph515:                          ; preds = %vec.epilog.iter.check514, %vec.epilog.scalar.ph515
  %indvars.iv.i235 = phi i64 [ %indvars.iv.next.i236, %vec.epilog.scalar.ph515 ], [ %n.vec505, %vec.epilog.iter.check514 ] ; 2 uses
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %i.ol, i64 %indvars.iv.i235
  store i16 %i.on, ptr %i.ov, align 2, !tbaa !45
  %indvars.iv.next.i236 = add nuw nsw i64 %indvars.iv.i235, 1 ; 2 uses
  %exitcond.not.i237 = icmp eq i64 %indvars.iv.next.i236, %wide.trip.count.i234
  br i1 %exitcond.not.i237, label %pixel_set.exit232, label %vec.epilog.scalar.ph515, !llvm.loop !41

pixel_set.exit232:                                ; preds = %vec.epilog.scalar.ph487, %vec.epilog.vector.body494, %vec.epilog.scalar.ph515, %vec.epilog.vector.body522, %middle.block483, %middle.block511, %bb.ah, %pixel_set.exit220, %bb.af, %pixel_set.exit208
  %i.ow = and i64 %.pre260, 3647
  %.not191.not = icmp eq i64 %i.ow, 0
  br i1 %.not191.not, label %bb.ai, label %bb.aq

bb.ai:                                            ; preds = %pixel_set.exit232
  %.not192 = icmp eq i32 %1, 0
  br i1 %.not192, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.in.in = getelementptr inbounds i8, ptr %..0166, i64 -2
  %.in = load i16, ptr %.in.in, align 2, !tbaa !45
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ox = load i16, ptr %.0166, align 2, !tbaa !45
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.oy = shl nuw i32 1, %i.b
  %i.oz = lshr i32 %i.oy, 1
  %i.pa = trunc i32 %i.oz to i16
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.aj
  %storemerge = phi i16 [ %.in, %bb.aj ], [ %i.ox, %bb.al ], [ %i.pa, %bb.am ] ; 2 uses
  store i16 %storemerge, ptr %15, align 2, !tbaa !45
  %i.pb = icmp eq i32 %.0167, 7
  br i1 %i.pb, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.pc = add nsw i32 %13, %12
  %i.pd = icmp sgt i32 %i.pc, 5
  %i.pe = icmp ne i32 %14, 0
  %or.cond3 = and i1 %i.pd, %i.pe
  br i1 %or.cond3, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.pf = getelementptr inbounds i8, ptr %15, i64 -2
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !45
  %i.ph = zext i16 %i.pg to i32
  %i.pi = getelementptr inbounds nuw i8, ptr %15, i64 2
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !45
  %i.pk = zext i16 %i.pj to i32
  %i.pl = add nuw nsw i32 %i.pk, %i.ph
  %i.pm = mul nuw nsw i32 %i.pl, 5
  %i.pn = zext i16 %storemerge to i32
  %i.po = mul nuw nsw i32 %i.pn, 6
  %i.pp = add nuw nsw i32 %i.po, 8
  %i.pq = add nuw nsw i32 %i.pp, %i.pm
  %i.pr = lshr i32 %i.pq, 4
  %i.ps = trunc nuw i32 %i.pr to i16
  store i16 %i.ps, ptr %15, align 2, !tbaa !45
  br label %bb.aq

bb.aq:                                            ; preds = %bb.an, %bb.ao, %bb.ap, %pixel_set.exit232
  ret i32 %.0167
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !48, !49}
!12 = distinct !{!12, !48}
!13 = distinct !{!13, !48, !49}
!14 = distinct !{!14, !48, !49}
!15 = distinct !{!15, !49, !48}
!16 = distinct !{!16, !48, !49}
!17 = distinct !{!17, !48, !49}
!18 = distinct !{!18, !49, !48}
!19 = distinct !{!19, i1 false, !"LVerDomain"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !48, !49}
!23 = distinct !{!23, !48}
!24 = distinct !{!24, !48, !49}
!25 = distinct !{!25, !48, !49}
!26 = distinct !{!26, !49, !48}
!27 = distinct !{!27, !48, !49}
!28 = distinct !{!28, !48, !49}
!29 = distinct !{!29, !49, !48}
!30 = distinct !{!30, !48, !49}
!31 = distinct !{!31, !48, !49}
!32 = distinct !{!32, !49, !48}
!33 = distinct !{!33, !48, !49}
!34 = distinct !{!34, !48, !49}
!35 = distinct !{!35, !49, !48}
!36 = distinct !{!36, !48, !49}
!37 = distinct !{!37, !48, !49}
!38 = distinct !{!38, !49, !48}
!39 = distinct !{!39, !48, !49}
!40 = distinct !{!40, !48, !49}
!41 = distinct !{!41, !49, !48}
!42 = !{!4, !4, i64 0}
!43 = !{!5, !5, i64 0}
!44 = !{!"short", !4, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!9}
!47 = !{!10}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"branch_weights", i32 4, i32 12}
!51 = !{!20}
!52 = !{!21}
end_hunk_0
