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
  br i1 %i.gb, label %iter.check320, label %pixel_set.exit

iter.check320:                                    ; preds = %bb.s
  %wide.trip.count.i197 = zext nneg i32 %i.ar to i64 ; 5 uses
  %min.iters.check310 = icmp ult i32 %i.ar, 16
  br i1 %min.iters.check310, label %vec.epilog.ph324, label %vector.ph311

vector.ph311:                                     ; preds = %iter.check320
  %i.gc = and i64 %wide.trip.count.i197, 12
  %n.vec312 = and i64 %wide.trip.count.i197, 2147483632 ; 4 uses
  %broadcast.splatinsert313 = insertelement <8 x i16> poison, i16 %i.ga, i64 0
  %broadcast.splat314 = shufflevector <8 x i16> %broadcast.splatinsert313, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.ph311, %vector.body315
  %index316 = phi i64 [ 0, %vector.ph311 ], [ %index.next317, %vector.body315 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index316 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <8 x i16> %broadcast.splat314, ptr %i.gd, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat314, ptr %i.ge, align 2, !tbaa !45
  %index.next317 = add nuw i64 %index316, 16      ; 2 uses
  %i.gf = icmp eq i64 %index.next317, %n.vec312
  br i1 %i.gf, label %middle.block318, label %vector.body315, !llvm.loop !16

middle.block318:                                  ; preds = %vector.body315
  %cmp.n319 = icmp eq i64 %n.vec312, %wide.trip.count.i197
  br i1 %cmp.n319, label %pixel_set.exit, label %vec.epilog.iter.check321

vec.epilog.iter.check321:                         ; preds = %middle.block318
  %min.epilog.iters.check323 = icmp eq i64 %i.gc, 0
  br i1 %min.epilog.iters.check323, label %vec.epilog.scalar.ph322, label %vec.epilog.ph324, !prof !50

vec.epilog.ph324:                                 ; preds = %iter.check320, %vec.epilog.iter.check321
  %vec.epilog.resume.val325 = phi i64 [ %n.vec312, %vec.epilog.iter.check321 ], [ 0, %iter.check320 ]
  %broadcast.splatinsert327 = insertelement <4 x i16> poison, i16 %i.ga, i64 0
  %broadcast.splat328 = shufflevector <4 x i16> %broadcast.splatinsert327, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body329

vec.epilog.vector.body329:                        ; preds = %vec.epilog.vector.body329, %vec.epilog.ph324
  %index330 = phi i64 [ %vec.epilog.resume.val325, %vec.epilog.ph324 ], [ %index.next331, %vec.epilog.vector.body329 ] ; 2 uses
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %index330
  store <4 x i16> %broadcast.splat328, ptr %i.gg, align 2, !tbaa !45
  %index.next331 = add nuw i64 %index330, 4       ; 2 uses
  %i.gh = icmp eq i64 %index.next331, %wide.trip.count.i197
  br i1 %i.gh, label %pixel_set.exit, label %vec.epilog.vector.body329, !llvm.loop !17

vec.epilog.scalar.ph322:                          ; preds = %vec.epilog.iter.check321, %vec.epilog.scalar.ph322
  %indvars.iv.i198 = phi i64 [ %indvars.iv.next.i199, %vec.epilog.scalar.ph322 ], [ %n.vec312, %vec.epilog.iter.check321 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i198
  store i16 %i.ga, ptr %i.gi, align 2, !tbaa !45
  %indvars.iv.next.i199 = add nuw nsw i64 %indvars.iv.i198, 1 ; 2 uses
  %exitcond.not.i200 = icmp eq i64 %indvars.iv.next.i199, %wide.trip.count.i197
  br i1 %exitcond.not.i200, label %pixel_set.exit, label %vec.epilog.scalar.ph322, !llvm.loop !18

pixel_set.exit:                                   ; preds = %.lr.ph.i, %vec.epilog.vector.body, %vec.epilog.scalar.ph322, %vec.epilog.vector.body329, %middle.block299, %middle.block318, %bb.s, %._crit_edge
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
  %min.iters.check348 = icmp ult i32 %i.gp, 56
  br i1 %min.iters.check348, label %scalar.ph347.preheader, label %vector.scevcheck335

vector.scevcheck335:                              ; preds = %.lr.ph247
  %i.gu = add nsw i64 %wide.trip.count257, -1
  %i.gv = mul i64 %i.gs, -2
  %i.gw = mul i64 %i.gs, %i.gt
  %i.gx = shl i64 %i.gw, 1
  %i.gy = getelementptr i8, ptr %7, i64 %i.gx
  %scevgep336 = getelementptr i8, ptr %i.gy, i64 -2 ; 4 uses
  %i.gz = icmp slt i64 %8, 0                      ; 2 uses
  %i.ha = select i1 %i.gz, i64 %i.gv, i64 %8
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ha, i64 %i.gu) ; 2 uses
  %mul.result337 = extractvalue { i64, i1 } %mul, 0 ; 2 uses
  %mul.overflow338 = extractvalue { i64, i1 } %mul, 1
  %i.hb = sub i64 0, %mul.result337
  %i.hc = getelementptr i8, ptr %scevgep336, i64 %mul.result337
  %i.hd = getelementptr i8, ptr %scevgep336, i64 %i.hb
  %i.he = icmp ult ptr %i.hc, %scevgep336
  %i.hf = icmp ugt ptr %i.hd, %scevgep336
  %i.hg = select i1 %i.gz, i1 %i.hf, i1 %i.he
  %i.hh = or i1 %i.hg, %mul.overflow338
  br i1 %i.hh, label %scalar.ph347.preheader, label %vector.memcheck349

vector.memcheck349:                               ; preds = %vector.scevcheck335
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
  %bound0350 = icmp ult ptr %i.hl, %i.ia
  %bound1351 = icmp ult ptr %i.hx, %i.au
  %found.conflict352 = and i1 %bound0350, %bound1351
  br i1 %found.conflict352, label %scalar.ph347.preheader, label %vector.ph353

vector.ph353:                                     ; preds = %vector.memcheck349
  %n.vec354 = and i64 %wide.trip.count257, 2147483640 ; 3 uses
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph353
  %index356 = phi i64 [ 0, %vector.ph353 ], [ %index.next358, %vector.body355 ] ; 10 uses
  %i.ib = or disjoint i64 %index356, 1
  %i.ic = or disjoint i64 %index356, 2
  %i.id = or disjoint i64 %index356, 3
  %i.ie = or disjoint i64 %index356, 4
  %i.if = or disjoint i64 %index356, 5
  %i.ig = or disjoint i64 %index356, 6
  %i.ih = or disjoint i64 %index356, 7
  %i.ii = add nuw nsw i64 %index356, %i.gt
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
  %i.ke = xor i64 %index356, -1
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ke
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 -14
  %reverse357 = shufflevector <8 x i16> %i.kd, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse357, ptr %i.kg, align 2, !tbaa !45, !alias.scope !52, !noalias !51
  %index.next358 = add nuw i64 %index356, 8       ; 2 uses
  %i.kh = icmp eq i64 %index.next358, %n.vec354
  br i1 %i.kh, label %middle.block359, label %vector.body355, !llvm.loop !22

middle.block359:                                  ; preds = %vector.body355
  %cmp.n360 = icmp eq i64 %n.vec354, %wide.trip.count257
  br i1 %cmp.n360, label %._crit_edge248, label %scalar.ph347.preheader

scalar.ph347.preheader:                           ; preds = %vector.memcheck349, %vector.scevcheck335, %.lr.ph247, %middle.block359
  %indvars.iv254.ph = phi i64 [ 0, %vector.memcheck349 ], [ 0, %vector.scevcheck335 ], [ 0, %.lr.ph247 ], [ %n.vec354, %middle.block359 ]
  br label %scalar.ph347

._crit_edge248:                                   ; preds = %scalar.ph347, %middle.block359, %bb.u
  %i.ki = icmp slt i32 %i.go, %i.ar
  br i1 %i.ki, label %bb.v, label %pixel_set.exit208

scalar.ph347:                                     ; preds = %scalar.ph347, %scalar.ph347.preheader
  %indvars.iv254 = phi i64 [ %indvars.iv254.ph, %scalar.ph347.preheader ], [ %indvars.iv.next255.1, %scalar.ph347 ] ; 5 uses
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
  br i1 %exitcond258.not.1, label %._crit_edge248, label %scalar.ph347, !llvm.loop !23

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
  %min.iters.check363 = icmp ult i32 %i.le, 16
  br i1 %min.iters.check363, label %vec.epilog.ph378, label %vector.ph365

vector.ph365:                                     ; preds = %bb.v
  %i.lf = and i64 %wide.trip.count.i204, 12
  %n.vec366 = and i64 %wide.trip.count.i204, 2147483632 ; 4 uses
  %broadcast.splatinsert367 = insertelement <8 x i16> poison, i16 %i.ld, i64 0
  %broadcast.splat368 = shufflevector <8 x i16> %broadcast.splatinsert367, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body369

vector.body369:                                   ; preds = %vector.ph365, %vector.body369
  %index370 = phi i64 [ 0, %vector.ph365 ], [ %index.next371, %vector.body369 ] ; 2 uses
  %i.lg = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %index370 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  store <8 x i16> %broadcast.splat368, ptr %i.lg, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat368, ptr %i.lh, align 2, !tbaa !45
  %index.next371 = add nuw i64 %index370, 16      ; 2 uses
  %i.li = icmp eq i64 %index.next371, %n.vec366
  br i1 %i.li, label %middle.block372, label %vector.body369, !llvm.loop !24

middle.block372:                                  ; preds = %vector.body369
  %cmp.n373 = icmp eq i64 %n.vec366, %wide.trip.count.i204
  br i1 %cmp.n373, label %pixel_set.exit208, label %vec.epilog.iter.check375

vec.epilog.iter.check375:                         ; preds = %middle.block372
  %min.epilog.iters.check377 = icmp eq i64 %i.lf, 0
  br i1 %min.epilog.iters.check377, label %vec.epilog.scalar.ph376, label %vec.epilog.ph378, !prof !50

vec.epilog.ph378:                                 ; preds = %bb.v, %vec.epilog.iter.check375
  %vec.epilog.resume.val379 = phi i64 [ %n.vec366, %vec.epilog.iter.check375 ], [ 0, %bb.v ]
  %broadcast.splatinsert381 = insertelement <4 x i16> poison, i16 %i.ld, i64 0
  %broadcast.splat382 = shufflevector <4 x i16> %broadcast.splatinsert381, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body383

vec.epilog.vector.body383:                        ; preds = %vec.epilog.vector.body383, %vec.epilog.ph378
  %index384 = phi i64 [ %vec.epilog.resume.val379, %vec.epilog.ph378 ], [ %index.next385, %vec.epilog.vector.body383 ] ; 2 uses
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %index384
  store <4 x i16> %broadcast.splat382, ptr %i.lj, align 2, !tbaa !45
  %index.next385 = add nuw i64 %index384, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next385, %wide.trip.count.i204
  br i1 %i.lk, label %pixel_set.exit208, label %vec.epilog.vector.body383, !llvm.loop !25

vec.epilog.scalar.ph376:                          ; preds = %vec.epilog.iter.check375, %vec.epilog.scalar.ph376
  %indvars.iv.i205 = phi i64 [ %indvars.iv.next.i206, %vec.epilog.scalar.ph376 ], [ %n.vec366, %vec.epilog.iter.check375 ] ; 2 uses
  %i.ll = getelementptr inbounds nuw [2 x i8], ptr %i.kz, i64 %indvars.iv.i205
  store i16 %i.ld, ptr %i.ll, align 2, !tbaa !45
  %indvars.iv.next.i206 = add nuw nsw i64 %indvars.iv.i205, 1 ; 2 uses
  %exitcond.not.i207 = icmp eq i64 %indvars.iv.next.i206, %wide.trip.count.i204
  br i1 %exitcond.not.i207, label %pixel_set.exit208, label %vec.epilog.scalar.ph376, !llvm.loop !26

bb.w:                                             ; preds = %bb.t
  %i.lm = sext i32 %i.ar to i64
  %i.ln = sub nsw i64 0, %i.lm
  %i.lo = getelementptr inbounds [2 x i8], ptr %i.au, i64 %i.ln ; 3 uses
  %i.lp = load i16, ptr %i.au, align 2, !tbaa !45 ; 3 uses
  %i.lq = icmp sgt i32 %i.ar, 0
  br i1 %i.lq, label %iter.check401, label %pixel_set.exit208

iter.check401:                                    ; preds = %bb.w
  %wide.trip.count.i210 = zext nneg i32 %i.ar to i64 ; 5 uses
  %min.iters.check391 = icmp ult i32 %i.ar, 16
  br i1 %min.iters.check391, label %vec.epilog.ph405, label %vector.ph392

vector.ph392:                                     ; preds = %iter.check401
  %i.lr = and i64 %wide.trip.count.i210, 12
  %n.vec393 = and i64 %wide.trip.count.i210, 2147483632 ; 4 uses
  %broadcast.splatinsert394 = insertelement <8 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat395 = shufflevector <8 x i16> %broadcast.splatinsert394, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body396

vector.body396:                                   ; preds = %vector.ph392, %vector.body396
  %index397 = phi i64 [ 0, %vector.ph392 ], [ %index.next398, %vector.body396 ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %index397 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store <8 x i16> %broadcast.splat395, ptr %i.ls, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat395, ptr %i.lt, align 2, !tbaa !45
  %index.next398 = add nuw i64 %index397, 16      ; 2 uses
  %i.lu = icmp eq i64 %index.next398, %n.vec393
  br i1 %i.lu, label %middle.block399, label %vector.body396, !llvm.loop !27

middle.block399:                                  ; preds = %vector.body396
  %cmp.n400 = icmp eq i64 %n.vec393, %wide.trip.count.i210
  br i1 %cmp.n400, label %pixel_set.exit208, label %vec.epilog.iter.check402

vec.epilog.iter.check402:                         ; preds = %middle.block399
  %min.epilog.iters.check404 = icmp eq i64 %i.lr, 0
  br i1 %min.epilog.iters.check404, label %vec.epilog.scalar.ph403, label %vec.epilog.ph405, !prof !50

vec.epilog.ph405:                                 ; preds = %iter.check401, %vec.epilog.iter.check402
  %vec.epilog.resume.val406 = phi i64 [ %n.vec393, %vec.epilog.iter.check402 ], [ 0, %iter.check401 ]
  %broadcast.splatinsert408 = insertelement <4 x i16> poison, i16 %i.lp, i64 0
  %broadcast.splat409 = shufflevector <4 x i16> %broadcast.splatinsert408, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body410

vec.epilog.vector.body410:                        ; preds = %vec.epilog.vector.body410, %vec.epilog.ph405
  %index411 = phi i64 [ %vec.epilog.resume.val406, %vec.epilog.ph405 ], [ %index.next412, %vec.epilog.vector.body410 ] ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %index411
  store <4 x i16> %broadcast.splat409, ptr %i.lv, align 2, !tbaa !45
  %index.next412 = add nuw i64 %index411, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next412, %wide.trip.count.i210
  br i1 %i.lw, label %pixel_set.exit208, label %vec.epilog.vector.body410, !llvm.loop !28

vec.epilog.scalar.ph403:                          ; preds = %vec.epilog.iter.check402, %vec.epilog.scalar.ph403
  %indvars.iv.i211 = phi i64 [ %indvars.iv.next.i212, %vec.epilog.scalar.ph403 ], [ %n.vec393, %vec.epilog.iter.check402 ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %indvars.iv.i211
  store i16 %i.lp, ptr %i.lx, align 2, !tbaa !45
  %indvars.iv.next.i212 = add nuw nsw i64 %indvars.iv.i211, 1 ; 2 uses
  %exitcond.not.i213 = icmp eq i64 %indvars.iv.next.i212, %wide.trip.count.i210
  br i1 %exitcond.not.i213, label %pixel_set.exit208, label %vec.epilog.scalar.ph403, !llvm.loop !29

pixel_set.exit208:                                ; preds = %vec.epilog.scalar.ph376, %vec.epilog.vector.body383, %vec.epilog.scalar.ph403, %vec.epilog.vector.body410, %middle.block372, %middle.block399, %bb.w, %pixel_set.exit, %._crit_edge248, %._crit_edge259
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
  %min.iters.check418 = icmp ult i32 %i.ml, 16
  br i1 %min.iters.check418, label %vec.epilog.ph432, label %vector.ph419

vector.ph419:                                     ; preds = %bb.z
  %i.mm = and i64 %wide.trip.count.i216, 12
  %n.vec420 = and i64 %wide.trip.count.i216, 2147483632 ; 4 uses
  %broadcast.splatinsert421 = insertelement <8 x i16> poison, i16 %i.mk, i64 0
  %broadcast.splat422 = shufflevector <8 x i16> %broadcast.splatinsert421, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body423

vector.body423:                                   ; preds = %vector.ph419, %vector.body423
  %index424 = phi i64 [ 0, %vector.ph419 ], [ %index.next425, %vector.body423 ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %index424 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store <8 x i16> %broadcast.splat422, ptr %i.mn, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat422, ptr %i.mo, align 2, !tbaa !45
  %index.next425 = add nuw i64 %index424, 16      ; 2 uses
  %i.mp = icmp eq i64 %index.next425, %n.vec420
  br i1 %i.mp, label %middle.block426, label %vector.body423, !llvm.loop !30

middle.block426:                                  ; preds = %vector.body423
  %cmp.n427 = icmp eq i64 %n.vec420, %wide.trip.count.i216
  br i1 %cmp.n427, label %pixel_set.exit220, label %vec.epilog.iter.check429

vec.epilog.iter.check429:                         ; preds = %middle.block426
  %min.epilog.iters.check431 = icmp eq i64 %i.mm, 0
  br i1 %min.epilog.iters.check431, label %vec.epilog.scalar.ph430, label %vec.epilog.ph432, !prof !50

vec.epilog.ph432:                                 ; preds = %bb.z, %vec.epilog.iter.check429
  %vec.epilog.resume.val433 = phi i64 [ %n.vec420, %vec.epilog.iter.check429 ], [ 0, %bb.z ]
  %broadcast.splatinsert435 = insertelement <4 x i16> poison, i16 %i.mk, i64 0
  %broadcast.splat436 = shufflevector <4 x i16> %broadcast.splatinsert435, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body437

vec.epilog.vector.body437:                        ; preds = %vec.epilog.vector.body437, %vec.epilog.ph432
  %index438 = phi i64 [ %vec.epilog.resume.val433, %vec.epilog.ph432 ], [ %index.next439, %vec.epilog.vector.body437 ] ; 2 uses
  %i.mq = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %index438
  store <4 x i16> %broadcast.splat436, ptr %i.mq, align 2, !tbaa !45
  %index.next439 = add nuw i64 %index438, 4       ; 2 uses
  %i.mr = icmp eq i64 %index.next439, %wide.trip.count.i216
  br i1 %i.mr, label %pixel_set.exit220, label %vec.epilog.vector.body437, !llvm.loop !31

vec.epilog.scalar.ph430:                          ; preds = %vec.epilog.iter.check429, %vec.epilog.scalar.ph430
  %indvars.iv.i217 = phi i64 [ %indvars.iv.next.i218, %vec.epilog.scalar.ph430 ], [ %n.vec420, %vec.epilog.iter.check429 ] ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mi, i64 %indvars.iv.i217
  store i16 %i.mk, ptr %i.ms, align 2, !tbaa !45
  %indvars.iv.next.i218 = add nuw nsw i64 %indvars.iv.i217, 1 ; 2 uses
  %exitcond.not.i219 = icmp eq i64 %indvars.iv.next.i218, %wide.trip.count.i216
  br i1 %exitcond.not.i219, label %pixel_set.exit220, label %vec.epilog.scalar.ph430, !llvm.loop !32

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
  br i1 %i.na, label %iter.check455, label %pixel_set.exit220

iter.check455:                                    ; preds = %bb.ad
  %wide.trip.count.i222 = zext nneg i32 %i.lz to i64 ; 5 uses
  %min.iters.check445 = icmp ult i32 %i.lz, 16
  br i1 %min.iters.check445, label %vec.epilog.ph459, label %vector.ph446

vector.ph446:                                     ; preds = %iter.check455
  %i.nb = and i64 %wide.trip.count.i222, 12
  %n.vec447 = and i64 %wide.trip.count.i222, 2147483632 ; 4 uses
  %broadcast.splatinsert448 = insertelement <8 x i16> poison, i16 %i.mz, i64 0
  %broadcast.splat449 = shufflevector <8 x i16> %broadcast.splatinsert448, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body450

vector.body450:                                   ; preds = %vector.ph446, %vector.body450
  %index451 = phi i64 [ 0, %vector.ph446 ], [ %index.next452, %vector.body450 ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %index451 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store <8 x i16> %broadcast.splat449, ptr %i.nc, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat449, ptr %i.nd, align 2, !tbaa !45
  %index.next452 = add nuw i64 %index451, 16      ; 2 uses
  %i.ne = icmp eq i64 %index.next452, %n.vec447
  br i1 %i.ne, label %middle.block453, label %vector.body450, !llvm.loop !33

middle.block453:                                  ; preds = %vector.body450
  %cmp.n454 = icmp eq i64 %n.vec447, %wide.trip.count.i222
  br i1 %cmp.n454, label %pixel_set.exit220, label %vec.epilog.iter.check456

vec.epilog.iter.check456:                         ; preds = %middle.block453
  %min.epilog.iters.check458 = icmp eq i64 %i.nb, 0
  br i1 %min.epilog.iters.check458, label %vec.epilog.scalar.ph457, label %vec.epilog.ph459, !prof !50

vec.epilog.ph459:                                 ; preds = %iter.check455, %vec.epilog.iter.check456
  %vec.epilog.resume.val460 = phi i64 [ %n.vec447, %vec.epilog.iter.check456 ], [ 0, %iter.check455 ]
  %broadcast.splatinsert462 = insertelement <4 x i16> poison, i16 %i.mz, i64 0
  %broadcast.splat463 = shufflevector <4 x i16> %broadcast.splatinsert462, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body464

vec.epilog.vector.body464:                        ; preds = %vec.epilog.vector.body464, %vec.epilog.ph459
  %index465 = phi i64 [ %vec.epilog.resume.val460, %vec.epilog.ph459 ], [ %index.next466, %vec.epilog.vector.body464 ] ; 2 uses
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %index465
  store <4 x i16> %broadcast.splat463, ptr %i.nf, align 2, !tbaa !45
  %index.next466 = add nuw i64 %index465, 4       ; 2 uses
  %i.ng = icmp eq i64 %index.next466, %wide.trip.count.i222
  br i1 %i.ng, label %pixel_set.exit220, label %vec.epilog.vector.body464, !llvm.loop !34

vec.epilog.scalar.ph457:                          ; preds = %vec.epilog.iter.check456, %vec.epilog.scalar.ph457
  %indvars.iv.i223 = phi i64 [ %indvars.iv.next.i224, %vec.epilog.scalar.ph457 ], [ %n.vec447, %vec.epilog.iter.check456 ] ; 2 uses
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %i.ma, i64 %indvars.iv.i223
  store i16 %i.mz, ptr %i.nh, align 2, !tbaa !45
  %indvars.iv.next.i224 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %exitcond.not.i225 = icmp eq i64 %indvars.iv.next.i224, %wide.trip.count.i222
  br i1 %exitcond.not.i225, label %pixel_set.exit220, label %vec.epilog.scalar.ph457, !llvm.loop !35

pixel_set.exit220:                                ; preds = %vec.epilog.scalar.ph430, %vec.epilog.vector.body437, %vec.epilog.scalar.ph457, %vec.epilog.vector.body464, %middle.block426, %middle.block453, %bb.ad, %bb.y
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
  %min.iters.check473 = icmp ult i32 %i.oc, 16
  br i1 %min.iters.check473, label %vec.epilog.ph486, label %vector.ph473

vector.ph473:                                     ; preds = %bb.ag
  %i.od = and i64 %wide.trip.count.i228, 12
  %n.vec474 = and i64 %wide.trip.count.i228, 2147483632 ; 4 uses
  %broadcast.splatinsert475 = insertelement <8 x i16> poison, i16 %i.ob, i64 0
  %broadcast.splat476 = shufflevector <8 x i16> %broadcast.splatinsert475, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body477

vector.body477:                                   ; preds = %vector.ph473, %vector.body477
  %index478 = phi i64 [ 0, %vector.ph473 ], [ %index.next479, %vector.body477 ] ; 2 uses
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %index478 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store <8 x i16> %broadcast.splat476, ptr %i.oe, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat476, ptr %i.of, align 2, !tbaa !45
  %index.next479 = add nuw i64 %index478, 16      ; 2 uses
  %i.og = icmp eq i64 %index.next479, %n.vec474
  br i1 %i.og, label %middle.block480, label %vector.body477, !llvm.loop !36

middle.block480:                                  ; preds = %vector.body477
  %cmp.n481 = icmp eq i64 %n.vec474, %wide.trip.count.i228
  br i1 %cmp.n481, label %pixel_set.exit232, label %vec.epilog.iter.check483

vec.epilog.iter.check483:                         ; preds = %middle.block480
  %min.epilog.iters.check485 = icmp eq i64 %i.od, 0
  br i1 %min.epilog.iters.check485, label %vec.epilog.scalar.ph484, label %vec.epilog.ph486, !prof !50

vec.epilog.ph486:                                 ; preds = %bb.ag, %vec.epilog.iter.check483
  %vec.epilog.resume.val487 = phi i64 [ %n.vec474, %vec.epilog.iter.check483 ], [ 0, %bb.ag ]
  %broadcast.splatinsert489 = insertelement <4 x i16> poison, i16 %i.ob, i64 0
  %broadcast.splat490 = shufflevector <4 x i16> %broadcast.splatinsert489, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body491

vec.epilog.vector.body491:                        ; preds = %vec.epilog.vector.body491, %vec.epilog.ph486
  %index492 = phi i64 [ %vec.epilog.resume.val487, %vec.epilog.ph486 ], [ %index.next493, %vec.epilog.vector.body491 ] ; 2 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %index492
  store <4 x i16> %broadcast.splat490, ptr %i.oh, align 2, !tbaa !45
  %index.next493 = add nuw i64 %index492, 4       ; 2 uses
  %i.oi = icmp eq i64 %index.next493, %wide.trip.count.i228
  br i1 %i.oi, label %pixel_set.exit232, label %vec.epilog.vector.body491, !llvm.loop !37

vec.epilog.scalar.ph484:                          ; preds = %vec.epilog.iter.check483, %vec.epilog.scalar.ph484
  %indvars.iv.i229 = phi i64 [ %indvars.iv.next.i230, %vec.epilog.scalar.ph484 ], [ %n.vec474, %vec.epilog.iter.check483 ] ; 2 uses
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.nw, i64 %indvars.iv.i229
  store i16 %i.ob, ptr %i.oj, align 2, !tbaa !45
  %indvars.iv.next.i230 = add nuw nsw i64 %indvars.iv.i229, 1 ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %indvars.iv.next.i230, %wide.trip.count.i228
  br i1 %exitcond.not.i231, label %pixel_set.exit232, label %vec.epilog.scalar.ph484, !llvm.loop !38

bb.ah:                                            ; preds = %bb.ae
  %i.ok = sext i32 %i.lz to i64
  %i.ol = getelementptr [2 x i8], ptr %i.ma, i64 %i.ok ; 4 uses
  %i.om = getelementptr i8, ptr %i.ol, i64 -2
  %i.on = load i16, ptr %i.om, align 2, !tbaa !45 ; 3 uses
  %i.oo = icmp sgt i32 %i.lz, 0
  br i1 %i.oo, label %iter.check509, label %pixel_set.exit232

iter.check509:                                    ; preds = %bb.ah
  %wide.trip.count.i234 = zext nneg i32 %i.lz to i64 ; 5 uses
  %min.iters.check499 = icmp ult i32 %i.lz, 16
  br i1 %min.iters.check499, label %vec.epilog.ph513, label %vector.ph500

vector.ph500:                                     ; preds = %iter.check509
  %i.op = and i64 %wide.trip.count.i234, 12
  %n.vec501 = and i64 %wide.trip.count.i234, 2147483632 ; 4 uses
  %broadcast.splatinsert502 = insertelement <8 x i16> poison, i16 %i.on, i64 0
  %broadcast.splat503 = shufflevector <8 x i16> %broadcast.splatinsert502, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body504

vector.body504:                                   ; preds = %vector.ph500, %vector.body504
  %index505 = phi i64 [ 0, %vector.ph500 ], [ %index.next506, %vector.body504 ] ; 2 uses
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.ol, i64 %index505 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store <8 x i16> %broadcast.splat503, ptr %i.oq, align 2, !tbaa !45
  store <8 x i16> %broadcast.splat503, ptr %i.or, align 2, !tbaa !45
  %index.next506 = add nuw i64 %index505, 16      ; 2 uses
  %i.os = icmp eq i64 %index.next506, %n.vec501
  br i1 %i.os, label %middle.block507, label %vector.body504, !llvm.loop !39

middle.block507:                                  ; preds = %vector.body504
  %cmp.n508 = icmp eq i64 %n.vec501, %wide.trip.count.i234
  br i1 %cmp.n508, label %pixel_set.exit232, label %vec.epilog.iter.check510

vec.epilog.iter.check510:                         ; preds = %middle.block507
  %min.epilog.iters.check512 = icmp eq i64 %i.op, 0
  br i1 %min.epilog.iters.check512, label %vec.epilog.scalar.ph511, label %vec.epilog.ph513, !prof !50

vec.epilog.ph513:                                 ; preds = %iter.check509, %vec.epilog.iter.check510
  %vec.epilog.resume.val514 = phi i64 [ %n.vec501, %vec.epilog.iter.check510 ], [ 0, %iter.check509 ]
  %broadcast.splatinsert516 = insertelement <4 x i16> poison, i16 %i.on, i64 0
  %broadcast.splat517 = shufflevector <4 x i16> %broadcast.splatinsert516, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body518

vec.epilog.vector.body518:                        ; preds = %vec.epilog.vector.body518, %vec.epilog.ph513
  %index519 = phi i64 [ %vec.epilog.resume.val514, %vec.epilog.ph513 ], [ %index.next520, %vec.epilog.vector.body518 ] ; 2 uses
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.ol, i64 %index519
  store <4 x i16> %broadcast.splat517, ptr %i.ot, align 2, !tbaa !45
  %index.next520 = add nuw i64 %index519, 4       ; 2 uses
  %i.ou = icmp eq i64 %index.next520, %wide.trip.count.i234
  br i1 %i.ou, label %pixel_set.exit232, label %vec.epilog.vector.body518, !llvm.loop !40

vec.epilog.scalar.ph511:                          ; preds = %vec.epilog.iter.check510, %vec.epilog.scalar.ph511
  %indvars.iv.i235 = phi i64 [ %indvars.iv.next.i236, %vec.epilog.scalar.ph511 ], [ %n.vec501, %vec.epilog.iter.check510 ] ; 2 uses
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %i.ol, i64 %indvars.iv.i235
  store i16 %i.on, ptr %i.ov, align 2, !tbaa !45
  %indvars.iv.next.i236 = add nuw nsw i64 %indvars.iv.i235, 1 ; 2 uses
  %exitcond.not.i237 = icmp eq i64 %indvars.iv.next.i236, %wide.trip.count.i234
  br i1 %exitcond.not.i237, label %pixel_set.exit232, label %vec.epilog.scalar.ph511, !llvm.loop !41

pixel_set.exit232:                                ; preds = %vec.epilog.scalar.ph484, %vec.epilog.vector.body491, %vec.epilog.scalar.ph511, %vec.epilog.vector.body518, %middle.block480, %middle.block507, %bb.ah, %pixel_set.exit220, %bb.af, %pixel_set.exit208
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
