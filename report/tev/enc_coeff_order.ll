Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_coeff_order?download=true
inline.NumInlined: 858
inline.NumDeleted: 539
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN3jxl17ComputeCoeffOrderENS_9SpeedTierERKNS_7ACImageERKNS_15AcStrategyImageERKNS_15FrameDimensionsERjjjjPj:bb.a
  %.idx380 = shl i64 %i.bz, 9
  %i.cb = getelementptr i8, ptr %i.c, i64 %.idx380 ; 13 uses
  %n.vec501 = and i64 %umax401, -64               ; 6 uses
  br i1 %.not377, label %vector.body502, label %vector.body544

vector.body544:                                   ; preds = %.split.us.us.us.us, %vector.body544
  %index545 = phi i64 [ %index.next550, %vector.body544 ], [ 0, %.split.us.us.us.us ] ; 3 uses
  %i.cc = getelementptr [2 x i8], ptr %i.ca, i64 %index545 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %wide.load546 = load <2 x i16>, ptr %i.cc, align 2, !tbaa !126
  %wide.load547 = load <2 x i16>, ptr %i.cd, align 2, !tbaa !126
  %i.ce = icmp eq <2 x i16> %wide.load546, zeroinitializer
  %i.cf = icmp eq <2 x i16> %wide.load547, zeroinitializer
  %i.cg = zext <2 x i1> %i.ce to <2 x i64>
  %i.ch = zext <2 x i1> %i.cf to <2 x i64>
  %i.ci = getelementptr [8 x i8], ptr %i.cb, i64 %index545 ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 2 uses
  %wide.load548 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !19
  %wide.load549 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !19
  %i.ck = add nsw <2 x i64> %wide.load548, %i.cg
  %i.cl = add nsw <2 x i64> %wide.load549, %i.ch
  store <2 x i64> %i.ck, ptr %i.ci, align 8, !tbaa !19
  store <2 x i64> %i.cl, ptr %i.cj, align 8, !tbaa !19
  %index.next550 = add nuw i64 %index545, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next550, %n.vec501
  br i1 %i.cm, label %middle.block551, label %vector.body544, !llvm.loop !78

middle.block551:                                  ; preds = %vector.body544
  %cmp.n552 = icmp eq i64 %i.bm, %n.vec501
  br i1 %cmp.n552, label %..loopexit_crit_edge.us.us.us.us.us.us, label %.preheader264.us.us.us.us.us.us.preheader

vector.body502:                                   ; preds = %.split.us.us.us.us, %vector.body502
  %index503 = phi i64 [ %index.next508, %vector.body502 ], [ 0, %.split.us.us.us.us ] ; 3 uses
  %i.cn = getelementptr [2 x i8], ptr %i.ca, i64 %index503 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %wide.load504 = load <2 x i16>, ptr %i.cn, align 2, !tbaa !126
  %wide.load505 = load <2 x i16>, ptr %i.co, align 2, !tbaa !126
  %i.cp = icmp eq <2 x i16> %wide.load504, zeroinitializer
  %i.cq = icmp eq <2 x i16> %wide.load505, zeroinitializer
  %i.cr = zext <2 x i1> %i.cp to <2 x i64>
  %i.cs = zext <2 x i1> %i.cq to <2 x i64>
  %i.ct = getelementptr [8 x i8], ptr %i.cb, i64 %index503 ; 3 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 16     ; 2 uses
  %wide.load506 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !19
  %wide.load507 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !19
  %i.cv = add nsw <2 x i64> %wide.load506, %i.cr
  %i.cw = add nsw <2 x i64> %wide.load507, %i.cs
  store <2 x i64> %i.cv, ptr %i.ct, align 8, !tbaa !19
  store <2 x i64> %i.cw, ptr %i.cu, align 8, !tbaa !19
  %index.next508 = add nuw i64 %index503, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next508, %n.vec501
  br i1 %i.cx, label %middle.block509, label %vector.body502, !llvm.loop !79

middle.block509:                                  ; preds = %vector.body502
  %cmp.n510 = icmp eq i64 %i.bm, %n.vec501
  br i1 %cmp.n510, label %..loopexit_crit_edge.us.us.us.us, label %.preheader264.us.us.us336.us.preheader

.preheader264.us.us.us336.us.preheader:           ; preds = %middle.block509, %.preheader264.us.us.us336.us.preheader
  %.0171274.us.us.us.us = phi i64 [ %i.df, %.preheader264.us.us.us336.us.preheader ], [ %n.vec501, %middle.block509 ] ; 3 uses
  %i.cy = getelementptr [2 x i8], ptr %i.ca, i64 %.0171274.us.us.us.us
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !126
  %i.da = icmp eq i16 %i.cz, 0
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr [8 x i8], ptr %i.cb, i64 %.0171274.us.us.us.us ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !19
  %i.de = add nsw i64 %i.dd, %i.db
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !19
  %i.df = add nuw i64 %.0171274.us.us.us.us, 1    ; 2 uses
  %exitcond402.not = icmp eq i64 %i.bm, %i.df
  br i1 %exitcond402.not, label %..loopexit_crit_edge.us.us.us.us, label %.preheader264.us.us.us336.us.preheader, !llvm.loop !80

..loopexit_crit_edge.us.us.us.us:                 ; preds = %.preheader264.us.us.us336.us.preheader, %middle.block509
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !19
  %i.di = getelementptr [2 x i8], ptr %i.aa, i64 %.1176297.us.us.us ; 2 uses
  %.idx380.1 = shl i64 %i.dh, 9
  %i.dj = getelementptr i8, ptr %i.c, i64 %.idx380.1 ; 2 uses
  %n.vec487 = and i64 %umax401, -64               ; 3 uses
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %..loopexit_crit_edge.us.us.us.us
  %index489 = phi i64 [ 0, %..loopexit_crit_edge.us.us.us.us ], [ %index.next494, %vector.body488 ] ; 3 uses
  %i.dk = getelementptr [2 x i8], ptr %i.di, i64 %index489 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %wide.load490 = load <2 x i16>, ptr %i.dk, align 2, !tbaa !126
  %wide.load491 = load <2 x i16>, ptr %i.dl, align 2, !tbaa !126
  %i.dm = icmp eq <2 x i16> %wide.load490, zeroinitializer
  %i.dn = icmp eq <2 x i16> %wide.load491, zeroinitializer
  %i.do = zext <2 x i1> %i.dm to <2 x i64>
  %i.dp = zext <2 x i1> %i.dn to <2 x i64>
  %i.dq = getelementptr [8 x i8], ptr %i.dj, i64 %index489 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 16     ; 2 uses
  %wide.load492 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !19
  %wide.load493 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !19
  %i.ds = add nsw <2 x i64> %wide.load492, %i.do
  %i.dt = add nsw <2 x i64> %wide.load493, %i.dp
  store <2 x i64> %i.ds, ptr %i.dq, align 8, !tbaa !19
  store <2 x i64> %i.dt, ptr %i.dr, align 8, !tbaa !19
  %index.next494 = add nuw i64 %index489, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next494, %n.vec487
  br i1 %i.du, label %middle.block495, label %vector.body488, !llvm.loop !81

middle.block495:                                  ; preds = %vector.body488
  %cmp.n496 = icmp eq i64 %i.bm, %n.vec487
  br i1 %cmp.n496, label %..loopexit_crit_edge.us.us.us.us.1, label %scalar.ph484

scalar.ph484:                                     ; preds = %middle.block495, %scalar.ph484
  %.0171274.us.us.us.us.1 = phi i64 [ %i.ec, %scalar.ph484 ], [ %n.vec487, %middle.block495 ] ; 3 uses
  %i.dv = getelementptr [2 x i8], ptr %i.di, i64 %.0171274.us.us.us.us.1
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !126
  %i.dx = icmp eq i16 %i.dw, 0
  %i.dy = zext i1 %i.dx to i64
  %i.dz = getelementptr [8 x i8], ptr %i.dj, i64 %.0171274.us.us.us.us.1 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !19
  %i.eb = add nsw i64 %i.ea, %i.dy
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !19
  %i.ec = add nuw i64 %.0171274.us.us.us.us.1, 1  ; 2 uses
  %exitcond402.1.not = icmp eq i64 %i.bm, %i.ec
  br i1 %exitcond402.1.not, label %..loopexit_crit_edge.us.us.us.us.1, label %scalar.ph484, !llvm.loop !82

..loopexit_crit_edge.us.us.us.us.1:               ; preds = %scalar.ph484, %middle.block495
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !19
  %i.ef = getelementptr [2 x i8], ptr %i.ae, i64 %.1176297.us.us.us ; 2 uses
  %.idx380.2 = shl i64 %i.ee, 9
  %i.eg = getelementptr i8, ptr %i.c, i64 %.idx380.2 ; 2 uses
  %n.vec = and i64 %umax401, -64                  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %..loopexit_crit_edge.us.us.us.us.1
  %index = phi i64 [ 0, %..loopexit_crit_edge.us.us.us.us.1 ], [ %index.next, %vector.body ] ; 3 uses
  %i.eh = getelementptr [2 x i8], ptr %i.ef, i64 %index ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 4
  %wide.load = load <2 x i16>, ptr %i.eh, align 2, !tbaa !126
  %wide.load481 = load <2 x i16>, ptr %i.ei, align 2, !tbaa !126
  %i.ej = icmp eq <2 x i16> %wide.load, zeroinitializer
  %i.ek = icmp eq <2 x i16> %wide.load481, zeroinitializer
  %i.el = zext <2 x i1> %i.ej to <2 x i64>
  %i.em = zext <2 x i1> %i.ek to <2 x i64>
  %i.en = getelementptr [8 x i8], ptr %i.eg, i64 %index ; 3 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 16     ; 2 uses
  %wide.load482 = load <2 x i64>, ptr %i.en, align 8, !tbaa !19
  %wide.load483 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !19
  %i.ep = add nsw <2 x i64> %wide.load482, %i.el
  %i.eq = add nsw <2 x i64> %wide.load483, %i.em
  store <2 x i64> %i.ep, ptr %i.en, align 8, !tbaa !19
  store <2 x i64> %i.eq, ptr %i.eo, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %.split284.us.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.0171274.us.us.us.us.2 = phi i64 [ %i.ez, %scalar.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %i.es = getelementptr [2 x i8], ptr %i.ef, i64 %.0171274.us.us.us.us.2
  %i.et = load i16, ptr %i.es, align 2, !tbaa !126
  %i.eu = icmp eq i16 %i.et, 0
  %i.ev = zext i1 %i.eu to i64
  %i.ew = getelementptr [8 x i8], ptr %i.eg, i64 %.0171274.us.us.us.us.2 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !19
  %i.ey = add nsw i64 %i.ex, %i.ev
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !19
  %i.ez = add nuw i64 %.0171274.us.us.us.us.2, 1  ; 2 uses
  %exitcond402.2.not = icmp eq i64 %i.bm, %i.ez
  br i1 %exitcond402.2.not, label %.split284.us.us.us.us, label %scalar.ph, !llvm.loop !84

.preheader264.us.us.us.us.us.us.preheader:        ; preds = %middle.block551, %.preheader264.us.us.us.us.us.us.preheader
  %.0171274.us.us.us.us.us.us = phi i64 [ %i.fh, %.preheader264.us.us.us.us.us.us.preheader ], [ %n.vec501, %middle.block551 ] ; 3 uses
  %i.fa = getelementptr [2 x i8], ptr %i.ca, i64 %.0171274.us.us.us.us.us.us
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !126
  %i.fc = icmp eq i16 %i.fb, 0
  %i.fd = zext i1 %i.fc to i64
  %i.fe = getelementptr [8 x i8], ptr %i.cb, i64 %.0171274.us.us.us.us.us.us ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !19
  %i.fg = add nsw i64 %i.ff, %i.fd
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !19
  %i.fh = add nuw i64 %.0171274.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond398.not = icmp eq i64 %i.bm, %i.fh
  br i1 %exitcond398.not, label %..loopexit_crit_edge.us.us.us.us.us.us, label %.preheader264.us.us.us.us.us.us.preheader, !llvm.loop !85

..loopexit_crit_edge.us.us.us.us.us.us:           ; preds = %.preheader264.us.us.us.us.us.us.preheader, %middle.block551
  br i1 %.not379, label %._crit_edge280.split.us.us.us.us.us.us, label %.preheader263.us.us.us.us.us.us.preheader

.preheader263.us.us.us.us.us.us.preheader:        ; preds = %..loopexit_crit_edge.us.us.us.us.us.us
  %xtraiter710 = and i64 %i.bx, 7                 ; 3 uses
  %i.fi = icmp samesign ult i64 %i.bx, 8
  br i1 %i.fi, label %.preheader263.us.us.us.us.us.us.epil.preheader, label %.preheader263.us.us.us.us.us.us.preheader.new

.preheader263.us.us.us.us.us.us.preheader.new:    ; preds = %.preheader263.us.us.us.us.us.us.preheader
  %unroll_iter714 = and i64 %i.bx, 248
  br label %.preheader263.us.us.us.us.us.us

.preheader263.us.us.us.us.us.us:                  ; preds = %.preheader263.us.us.us.us.us.us, %.preheader263.us.us.us.us.us.us.preheader.new
  %.0169279.us.us.us.us.us.us = phi i64 [ 0, %.preheader263.us.us.us.us.us.us.preheader.new ], [ %i.fy, %.preheader263.us.us.us.us.us.us ] ; 9 uses
  %niter715 = phi i64 [ 0, %.preheader263.us.us.us.us.us.us.preheader.new ], [ %niter715.next.7, %.preheader263.us.us.us.us.us.us ]
  %factor.op.mul.reass.us.us.us.us.us.us = mul nuw nsw i64 %factor.op.mul278.us.us.us, %.0169279.us.us.us.us.us.us
  %i.fj = getelementptr [8 x i8], ptr %i.cb, i64 %factor.op.mul.reass.us.us.us.us.us.us
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fj, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.fk = or disjoint i64 %.0169279.us.us.us.us.us.us, 1
  %factor.op.mul.reass.us.us.us.us.us.us.1717 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.fk
  %i.fl = getelementptr [8 x i8], ptr %i.cb, i64 %factor.op.mul.reass.us.us.us.us.us.us.1717
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fl, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.fm = or disjoint i64 %.0169279.us.us.us.us.us.us, 2
  %factor.op.mul.reass.us.us.us.us.us.us.2720 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.fm
  %i.fn = getelementptr [8 x i8], ptr %i.cb, i64 %factor.op.mul.reass.us.us.us.us.us.us.2720
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fn, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.fo = or disjoint i64 %.0169279.us.us.us.us.us.us, 3
  %factor.op.mul.reass.us.us.us.us.us.us.3 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.fo
  %i.fp = getelementptr [8 x i8], ptr %i.cb, i64 %factor.op.mul.reass.us.us.us.us.us.us.3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fp, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.fq = or disjoint i64 %.0169279.us.us.us.us.us.us, 4
  %factor.op.mul.reass.us.us.us.us.us.us.4 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.fq
  %i.fr = getelementptr [8 x i8], ptr %i.cb, i64 %factor.op.mul.reass.us.us.us.us.us.us.4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fr, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.fs = or disjoint i64 %.0169279.us.us.us.us.us.us, 5
  %factor.op.mul.reass.us.us.us.us.us.us.5 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.fs
  %i.ft = getelementptr [8 x i8], ptr %i.cb, i64 %factor.op.mul.reass.us.us.us.us.us.us.5
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ft, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.fu = or disjoint i64 %.0169279.us.us.us.us.us.us, 6
  %factor.op.mul.reass.us.us.us.us.us.us.6 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.fu
  %i.fv = getelementptr [8 x i8], ptr %i.cb, i64 %factor.op.mul.reass.us.us.us.us.us.us.6
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fv, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.fw = or disjoint i64 %.0169279.us.us.us.us.us.us, 7
  %factor.op.mul.reass.us.us.us.us.us.us.7 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.fw
  %i.fx = getelementptr [8 x i8], ptr %i.cb, i64 %factor.op.mul.reass.us.us.us.us.us.us.7
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fx, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.fy = add nuw nsw i64 %.0169279.us.us.us.us.us.us, 8 ; 2 uses
  %niter715.next.7 = add i64 %niter715, 8         ; 2 uses
  %niter715.ncmp.7 = icmp eq i64 %niter715.next.7, %unroll_iter714
  br i1 %niter715.ncmp.7, label %._crit_edge280.split.us.us.us.us.us.us.loopexit.unr-lcssa, label %.preheader263.us.us.us.us.us.us, !llvm.loop !86

._crit_edge280.split.us.us.us.us.us.us.loopexit.unr-lcssa: ; preds = %.preheader263.us.us.us.us.us.us
  %lcmp.mod712.not = icmp eq i64 %xtraiter710, 0
  br i1 %lcmp.mod712.not, label %._crit_edge280.split.us.us.us.us.us.us, label %.preheader263.us.us.us.us.us.us.epil.preheader

.preheader263.us.us.us.us.us.us.epil.preheader:   ; preds = %._crit_edge280.split.us.us.us.us.us.us.loopexit.unr-lcssa, %.preheader263.us.us.us.us.us.us.preheader
  %.0169279.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.preheader263.us.us.us.us.us.us.preheader ], [ %i.fy, %._crit_edge280.split.us.us.us.us.us.us.loopexit.unr-lcssa ]
  %lcmp.mod713 = icmp ne i64 %xtraiter710, 0
  tail call void @llvm.assume(i1 %lcmp.mod713)
  br label %.preheader263.us.us.us.us.us.us.epil

.preheader263.us.us.us.us.us.us.epil:             ; preds = %.preheader263.us.us.us.us.us.us.epil, %.preheader263.us.us.us.us.us.us.epil.preheader
  %.0169279.us.us.us.us.us.us.epil = phi i64 [ %i.ga, %.preheader263.us.us.us.us.us.us.epil ], [ %.0169279.us.us.us.us.us.us.epil.init, %.preheader263.us.us.us.us.us.us.epil.preheader ] ; 2 uses
  %epil.iter711 = phi i64 [ %epil.iter711.next, %.preheader263.us.us.us.us.us.us.epil ], [ 0, %.preheader263.us.us.us.us.us.us.epil.preheader ]
  %factor.op.mul.reass.us.us.us.us.us.us.epil = mul nuw nsw i64 %factor.op.mul278.us.us.us, %.0169279.us.us.us.us.us.us.epil
  %i.fz = getelementptr [8 x i8], ptr %i.cb, i64 %factor.op.mul.reass.us.us.us.us.us.us.epil
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fz, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.ga = add nuw nsw i64 %.0169279.us.us.us.us.us.us.epil, 1
  %epil.iter711.next = add i64 %epil.iter711, 1   ; 2 uses
  %epil.iter711.cmp.not = icmp eq i64 %epil.iter711.next, %xtraiter710
  br i1 %epil.iter711.cmp.not, label %._crit_edge280.split.us.us.us.us.us.us, label %.preheader263.us.us.us.us.us.us.epil, !llvm.loop !87

._crit_edge280.split.us.us.us.us.us.us:           ; preds = %._crit_edge280.split.us.us.us.us.us.us.loopexit.unr-lcssa, %.preheader263.us.us.us.us.us.us.epil, %..loopexit_crit_edge.us.us.us.us.us.us
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !19
  %i.gd = getelementptr [2 x i8], ptr %i.aa, i64 %.1176297.us.us.us ; 2 uses
  %.idx443 = shl i64 %i.gc, 9
  %i.ge = getelementptr i8, ptr %i.c, i64 %.idx443 ; 11 uses
  %n.vec529 = and i64 %umax401, -64               ; 3 uses
  br label %vector.body530

vector.body530:                                   ; preds = %vector.body530, %._crit_edge280.split.us.us.us.us.us.us
  %index531 = phi i64 [ 0, %._crit_edge280.split.us.us.us.us.us.us ], [ %index.next536, %vector.body530 ] ; 3 uses
  %i.gf = getelementptr [2 x i8], ptr %i.gd, i64 %index531 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 4
  %wide.load532 = load <2 x i16>, ptr %i.gf, align 2, !tbaa !126
  %wide.load533 = load <2 x i16>, ptr %i.gg, align 2, !tbaa !126
  %i.gh = icmp eq <2 x i16> %wide.load532, zeroinitializer
  %i.gi = icmp eq <2 x i16> %wide.load533, zeroinitializer
  %i.gj = zext <2 x i1> %i.gh to <2 x i64>
  %i.gk = zext <2 x i1> %i.gi to <2 x i64>
  %i.gl = getelementptr [8 x i8], ptr %i.ge, i64 %index531 ; 3 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 16     ; 2 uses
  %wide.load534 = load <2 x i64>, ptr %i.gl, align 8, !tbaa !19
  %wide.load535 = load <2 x i64>, ptr %i.gm, align 8, !tbaa !19
  %i.gn = add nsw <2 x i64> %wide.load534, %i.gj
  %i.go = add nsw <2 x i64> %wide.load535, %i.gk
  store <2 x i64> %i.gn, ptr %i.gl, align 8, !tbaa !19
  store <2 x i64> %i.go, ptr %i.gm, align 8, !tbaa !19
  %index.next536 = add nuw i64 %index531, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next536, %n.vec529
  br i1 %i.gp, label %middle.block537, label %vector.body530, !llvm.loop !88

middle.block537:                                  ; preds = %vector.body530
  %cmp.n538 = icmp eq i64 %i.bm, %n.vec529
  br i1 %cmp.n538, label %..loopexit_crit_edge.us.us.us.us.us.us.1, label %scalar.ph526

scalar.ph526:                                     ; preds = %middle.block537, %scalar.ph526
  %.0171274.us.us.us.us.us.us.1 = phi i64 [ %i.gx, %scalar.ph526 ], [ %n.vec529, %middle.block537 ] ; 3 uses
  %i.gq = getelementptr [2 x i8], ptr %i.gd, i64 %.0171274.us.us.us.us.us.us.1
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !126
  %i.gs = icmp eq i16 %i.gr, 0
  %i.gt = zext i1 %i.gs to i64
  %i.gu = getelementptr [8 x i8], ptr %i.ge, i64 %.0171274.us.us.us.us.us.us.1 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !19
  %i.gw = add nsw i64 %i.gv, %i.gt
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !19
  %i.gx = add nuw i64 %.0171274.us.us.us.us.us.us.1, 1 ; 2 uses
  %exitcond398.1.not = icmp eq i64 %i.bm, %i.gx
  br i1 %exitcond398.1.not, label %..loopexit_crit_edge.us.us.us.us.us.us.1, label %scalar.ph526, !llvm.loop !89

..loopexit_crit_edge.us.us.us.us.us.us.1:         ; preds = %scalar.ph526, %middle.block537
  br i1 %.not379, label %._crit_edge280.split.us.us.us.us.us.us.1, label %.preheader263.us.us.us.us.us.us.1.preheader

.preheader263.us.us.us.us.us.us.1.preheader:      ; preds = %..loopexit_crit_edge.us.us.us.us.us.us.1
  %xtraiter722 = and i64 %i.bx, 7                 ; 3 uses
  %i.gy = icmp samesign ult i64 %i.bx, 8
  br i1 %i.gy, label %.preheader263.us.us.us.us.us.us.1.epil.preheader, label %.preheader263.us.us.us.us.us.us.1.preheader.new

.preheader263.us.us.us.us.us.us.1.preheader.new:  ; preds = %.preheader263.us.us.us.us.us.us.1.preheader
  %unroll_iter726 = and i64 %i.bx, 248
  br label %.preheader263.us.us.us.us.us.us.1

.preheader263.us.us.us.us.us.us.1:                ; preds = %.preheader263.us.us.us.us.us.us.1, %.preheader263.us.us.us.us.us.us.1.preheader.new
  %.0169279.us.us.us.us.us.us.1 = phi i64 [ 0, %.preheader263.us.us.us.us.us.us.1.preheader.new ], [ %i.ho, %.preheader263.us.us.us.us.us.us.1 ] ; 9 uses
  %niter727 = phi i64 [ 0, %.preheader263.us.us.us.us.us.us.1.preheader.new ], [ %niter727.next.7, %.preheader263.us.us.us.us.us.us.1 ]
  %factor.op.mul.reass.us.us.us.us.us.us.1 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %.0169279.us.us.us.us.us.us.1
  %i.gz = getelementptr [8 x i8], ptr %i.ge, i64 %factor.op.mul.reass.us.us.us.us.us.us.1
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gz, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.ha = or disjoint i64 %.0169279.us.us.us.us.us.us.1, 1
  %factor.op.mul.reass.us.us.us.us.us.us.1.1 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.ha
  %i.hb = getelementptr [8 x i8], ptr %i.ge, i64 %factor.op.mul.reass.us.us.us.us.us.us.1.1
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hb, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.hc = or disjoint i64 %.0169279.us.us.us.us.us.us.1, 2
  %factor.op.mul.reass.us.us.us.us.us.us.1.2 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.hc
  %i.hd = getelementptr [8 x i8], ptr %i.ge, i64 %factor.op.mul.reass.us.us.us.us.us.us.1.2
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hd, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.he = or disjoint i64 %.0169279.us.us.us.us.us.us.1, 3
  %factor.op.mul.reass.us.us.us.us.us.us.1.3 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.he
  %i.hf = getelementptr [8 x i8], ptr %i.ge, i64 %factor.op.mul.reass.us.us.us.us.us.us.1.3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hf, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.hg = or disjoint i64 %.0169279.us.us.us.us.us.us.1, 4
  %factor.op.mul.reass.us.us.us.us.us.us.1.4 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.hg
  %i.hh = getelementptr [8 x i8], ptr %i.ge, i64 %factor.op.mul.reass.us.us.us.us.us.us.1.4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hh, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.hi = or disjoint i64 %.0169279.us.us.us.us.us.us.1, 5
  %factor.op.mul.reass.us.us.us.us.us.us.1.5 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.hi
  %i.hj = getelementptr [8 x i8], ptr %i.ge, i64 %factor.op.mul.reass.us.us.us.us.us.us.1.5
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hj, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.hk = or disjoint i64 %.0169279.us.us.us.us.us.us.1, 6
  %factor.op.mul.reass.us.us.us.us.us.us.1.6 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.hk
  %i.hl = getelementptr [8 x i8], ptr %i.ge, i64 %factor.op.mul.reass.us.us.us.us.us.us.1.6
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hl, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.hm = or disjoint i64 %.0169279.us.us.us.us.us.us.1, 7
  %factor.op.mul.reass.us.us.us.us.us.us.1.7 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.hm
  %i.hn = getelementptr [8 x i8], ptr %i.ge, i64 %factor.op.mul.reass.us.us.us.us.us.us.1.7
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hn, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.ho = add nuw nsw i64 %.0169279.us.us.us.us.us.us.1, 8 ; 2 uses
  %niter727.next.7 = add i64 %niter727, 8         ; 2 uses
  %niter727.ncmp.7 = icmp eq i64 %niter727.next.7, %unroll_iter726
  br i1 %niter727.ncmp.7, label %._crit_edge280.split.us.us.us.us.us.us.1.loopexit.unr-lcssa, label %.preheader263.us.us.us.us.us.us.1, !llvm.loop !86

._crit_edge280.split.us.us.us.us.us.us.1.loopexit.unr-lcssa: ; preds = %.preheader263.us.us.us.us.us.us.1
  %lcmp.mod724.not = icmp eq i64 %xtraiter722, 0
  br i1 %lcmp.mod724.not, label %._crit_edge280.split.us.us.us.us.us.us.1, label %.preheader263.us.us.us.us.us.us.1.epil.preheader

.preheader263.us.us.us.us.us.us.1.epil.preheader: ; preds = %._crit_edge280.split.us.us.us.us.us.us.1.loopexit.unr-lcssa, %.preheader263.us.us.us.us.us.us.1.preheader
  %.0169279.us.us.us.us.us.us.1.epil.init = phi i64 [ 0, %.preheader263.us.us.us.us.us.us.1.preheader ], [ %i.ho, %._crit_edge280.split.us.us.us.us.us.us.1.loopexit.unr-lcssa ]
  %lcmp.mod725 = icmp ne i64 %xtraiter722, 0
  tail call void @llvm.assume(i1 %lcmp.mod725)
  br label %.preheader263.us.us.us.us.us.us.1.epil

.preheader263.us.us.us.us.us.us.1.epil:           ; preds = %.preheader263.us.us.us.us.us.us.1.epil, %.preheader263.us.us.us.us.us.us.1.epil.preheader
  %.0169279.us.us.us.us.us.us.1.epil = phi i64 [ %i.hq, %.preheader263.us.us.us.us.us.us.1.epil ], [ %.0169279.us.us.us.us.us.us.1.epil.init, %.preheader263.us.us.us.us.us.us.1.epil.preheader ] ; 2 uses
  %epil.iter723 = phi i64 [ %epil.iter723.next, %.preheader263.us.us.us.us.us.us.1.epil ], [ 0, %.preheader263.us.us.us.us.us.us.1.epil.preheader ]
  %factor.op.mul.reass.us.us.us.us.us.us.1.epil = mul nuw nsw i64 %factor.op.mul278.us.us.us, %.0169279.us.us.us.us.us.us.1.epil
  %i.hp = getelementptr [8 x i8], ptr %i.ge, i64 %factor.op.mul.reass.us.us.us.us.us.us.1.epil
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hp, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.hq = add nuw nsw i64 %.0169279.us.us.us.us.us.us.1.epil, 1
  %epil.iter723.next = add i64 %epil.iter723, 1   ; 2 uses
  %epil.iter723.cmp.not = icmp eq i64 %epil.iter723.next, %xtraiter722
  br i1 %epil.iter723.cmp.not, label %._crit_edge280.split.us.us.us.us.us.us.1, label %.preheader263.us.us.us.us.us.us.1.epil, !llvm.loop !90

._crit_edge280.split.us.us.us.us.us.us.1:         ; preds = %._crit_edge280.split.us.us.us.us.us.us.1.loopexit.unr-lcssa, %.preheader263.us.us.us.us.us.us.1.epil, %..loopexit_crit_edge.us.us.us.us.us.us.1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !19
  %i.ht = getelementptr [2 x i8], ptr %i.ae, i64 %.1176297.us.us.us ; 2 uses
  %.idx444 = shl i64 %i.hs, 9
  %i.hu = getelementptr i8, ptr %i.c, i64 %.idx444 ; 11 uses
  %n.vec515 = and i64 %umax401, -64               ; 3 uses
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %._crit_edge280.split.us.us.us.us.us.us.1
  %index517 = phi i64 [ 0, %._crit_edge280.split.us.us.us.us.us.us.1 ], [ %index.next522, %vector.body516 ] ; 3 uses
  %i.hv = getelementptr [2 x i8], ptr %i.ht, i64 %index517 ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 4
  %wide.load518 = load <2 x i16>, ptr %i.hv, align 2, !tbaa !126
  %wide.load519 = load <2 x i16>, ptr %i.hw, align 2, !tbaa !126
  %i.hx = icmp eq <2 x i16> %wide.load518, zeroinitializer
  %i.hy = icmp eq <2 x i16> %wide.load519, zeroinitializer
  %i.hz = zext <2 x i1> %i.hx to <2 x i64>
  %i.ia = zext <2 x i1> %i.hy to <2 x i64>
  %i.ib = getelementptr [8 x i8], ptr %i.hu, i64 %index517 ; 3 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 16     ; 2 uses
  %wide.load520 = load <2 x i64>, ptr %i.ib, align 8, !tbaa !19
  %wide.load521 = load <2 x i64>, ptr %i.ic, align 8, !tbaa !19
  %i.id = add nsw <2 x i64> %wide.load520, %i.hz
  %i.ie = add nsw <2 x i64> %wide.load521, %i.ia
  store <2 x i64> %i.id, ptr %i.ib, align 8, !tbaa !19
  store <2 x i64> %i.ie, ptr %i.ic, align 8, !tbaa !19
  %index.next522 = add nuw i64 %index517, 4       ; 2 uses
  %i.if = icmp eq i64 %index.next522, %n.vec515
  br i1 %i.if, label %middle.block523, label %vector.body516, !llvm.loop !91

middle.block523:                                  ; preds = %vector.body516
  %cmp.n524 = icmp eq i64 %i.bm, %n.vec515
  br i1 %cmp.n524, label %..loopexit_crit_edge.us.us.us.us.us.us.2, label %scalar.ph512

scalar.ph512:                                     ; preds = %middle.block523, %scalar.ph512
  %.0171274.us.us.us.us.us.us.2 = phi i64 [ %i.in, %scalar.ph512 ], [ %n.vec515, %middle.block523 ] ; 3 uses
  %i.ig = getelementptr [2 x i8], ptr %i.ht, i64 %.0171274.us.us.us.us.us.us.2
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !126
  %i.ii = icmp eq i16 %i.ih, 0
  %i.ij = zext i1 %i.ii to i64
  %i.ik = getelementptr [8 x i8], ptr %i.hu, i64 %.0171274.us.us.us.us.us.us.2 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !19
  %i.im = add nsw i64 %i.il, %i.ij
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !19
  %i.in = add nuw i64 %.0171274.us.us.us.us.us.us.2, 1 ; 2 uses
  %exitcond398.2.not = icmp eq i64 %i.bm, %i.in
  br i1 %exitcond398.2.not, label %..loopexit_crit_edge.us.us.us.us.us.us.2, label %scalar.ph512, !llvm.loop !92

..loopexit_crit_edge.us.us.us.us.us.us.2:         ; preds = %scalar.ph512, %middle.block523
  br i1 %.not379, label %.split284.us.us.us.us, label %.preheader263.us.us.us.us.us.us.2.preheader

.preheader263.us.us.us.us.us.us.2.preheader:      ; preds = %..loopexit_crit_edge.us.us.us.us.us.us.2
  %xtraiter728 = and i64 %i.bx, 7                 ; 3 uses
  %i.io = icmp samesign ult i64 %i.bx, 8
  br i1 %i.io, label %.preheader263.us.us.us.us.us.us.2.epil.preheader, label %.preheader263.us.us.us.us.us.us.2.preheader.new

.preheader263.us.us.us.us.us.us.2.preheader.new:  ; preds = %.preheader263.us.us.us.us.us.us.2.preheader
  %unroll_iter732 = and i64 %i.bx, 248
  br label %.preheader263.us.us.us.us.us.us.2

.preheader263.us.us.us.us.us.us.2:                ; preds = %.preheader263.us.us.us.us.us.us.2, %.preheader263.us.us.us.us.us.us.2.preheader.new
  %.0169279.us.us.us.us.us.us.2 = phi i64 [ 0, %.preheader263.us.us.us.us.us.us.2.preheader.new ], [ %i.je, %.preheader263.us.us.us.us.us.us.2 ] ; 9 uses
  %niter733 = phi i64 [ 0, %.preheader263.us.us.us.us.us.us.2.preheader.new ], [ %niter733.next.7, %.preheader263.us.us.us.us.us.us.2 ]
  %factor.op.mul.reass.us.us.us.us.us.us.2 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %.0169279.us.us.us.us.us.us.2
  %i.ip = getelementptr [8 x i8], ptr %i.hu, i64 %factor.op.mul.reass.us.us.us.us.us.us.2
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ip, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.iq = or disjoint i64 %.0169279.us.us.us.us.us.us.2, 1
  %factor.op.mul.reass.us.us.us.us.us.us.2.1 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.iq
  %i.ir = getelementptr [8 x i8], ptr %i.hu, i64 %factor.op.mul.reass.us.us.us.us.us.us.2.1
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ir, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.is = or disjoint i64 %.0169279.us.us.us.us.us.us.2, 2
  %factor.op.mul.reass.us.us.us.us.us.us.2.2 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.is
  %i.it = getelementptr [8 x i8], ptr %i.hu, i64 %factor.op.mul.reass.us.us.us.us.us.us.2.2
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.it, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.iu = or disjoint i64 %.0169279.us.us.us.us.us.us.2, 3
  %factor.op.mul.reass.us.us.us.us.us.us.2.3 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.iu
  %i.iv = getelementptr [8 x i8], ptr %i.hu, i64 %factor.op.mul.reass.us.us.us.us.us.us.2.3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.iv, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.iw = or disjoint i64 %.0169279.us.us.us.us.us.us.2, 4
  %factor.op.mul.reass.us.us.us.us.us.us.2.4 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.iw
  %i.ix = getelementptr [8 x i8], ptr %i.hu, i64 %factor.op.mul.reass.us.us.us.us.us.us.2.4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ix, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.iy = or disjoint i64 %.0169279.us.us.us.us.us.us.2, 5
  %factor.op.mul.reass.us.us.us.us.us.us.2.5 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.iy
  %i.iz = getelementptr [8 x i8], ptr %i.hu, i64 %factor.op.mul.reass.us.us.us.us.us.us.2.5
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.iz, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.ja = or disjoint i64 %.0169279.us.us.us.us.us.us.2, 6
  %factor.op.mul.reass.us.us.us.us.us.us.2.6 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.ja
  %i.jb = getelementptr [8 x i8], ptr %i.hu, i64 %factor.op.mul.reass.us.us.us.us.us.us.2.6
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.jb, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.jc = or disjoint i64 %.0169279.us.us.us.us.us.us.2, 7
  %factor.op.mul.reass.us.us.us.us.us.us.2.7 = mul nuw nsw i64 %factor.op.mul278.us.us.us, %i.jc
  %i.jd = getelementptr [8 x i8], ptr %i.hu, i64 %factor.op.mul.reass.us.us.us.us.us.us.2.7
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.jd, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.je = add nuw nsw i64 %.0169279.us.us.us.us.us.us.2, 8 ; 2 uses
  %niter733.next.7 = add i64 %niter733, 8         ; 2 uses
  %niter733.ncmp.7 = icmp eq i64 %niter733.next.7, %unroll_iter732
  br i1 %niter733.ncmp.7, label %.split284.us.us.us.us.loopexit688.unr-lcssa, label %.preheader263.us.us.us.us.us.us.2, !llvm.loop !86

.split284.us.us.us.us.loopexit688.unr-lcssa:      ; preds = %.preheader263.us.us.us.us.us.us.2
  %lcmp.mod730.not = icmp eq i64 %xtraiter728, 0
  br i1 %lcmp.mod730.not, label %.split284.us.us.us.us, label %.preheader263.us.us.us.us.us.us.2.epil.preheader

.preheader263.us.us.us.us.us.us.2.epil.preheader: ; preds = %.split284.us.us.us.us.loopexit688.unr-lcssa, %.preheader263.us.us.us.us.us.us.2.preheader
  %.0169279.us.us.us.us.us.us.2.epil.init = phi i64 [ 0, %.preheader263.us.us.us.us.us.us.2.preheader ], [ %i.je, %.split284.us.us.us.us.loopexit688.unr-lcssa ]
  %lcmp.mod731 = icmp ne i64 %xtraiter728, 0
  tail call void @llvm.assume(i1 %lcmp.mod731)
  br label %.preheader263.us.us.us.us.us.us.2.epil

.preheader263.us.us.us.us.us.us.2.epil:           ; preds = %.preheader263.us.us.us.us.us.us.2.epil, %.preheader263.us.us.us.us.us.us.2.epil.preheader
  %.0169279.us.us.us.us.us.us.2.epil = phi i64 [ %i.jg, %.preheader263.us.us.us.us.us.us.2.epil ], [ %.0169279.us.us.us.us.us.us.2.epil.init, %.preheader263.us.us.us.us.us.us.2.epil.preheader ] ; 2 uses
  %epil.iter729 = phi i64 [ %epil.iter729.next, %.preheader263.us.us.us.us.us.us.2.epil ], [ 0, %.preheader263.us.us.us.us.us.us.2.epil.preheader ]
  %factor.op.mul.reass.us.us.us.us.us.us.2.epil = mul nuw nsw i64 %factor.op.mul278.us.us.us, %.0169279.us.us.us.us.us.us.2.epil
  %i.jf = getelementptr [8 x i8], ptr %i.hu, i64 %factor.op.mul.reass.us.us.us.us.us.us.2.epil
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.jf, i8 -1, i64 %factor.op.mul278.us.us.us, i1 false), !tbaa !19
  %i.jg = add nuw nsw i64 %.0169279.us.us.us.us.us.us.2.epil, 1
  %epil.iter729.next = add i64 %epil.iter729, 1   ; 2 uses
  %epil.iter729.cmp.not = icmp eq i64 %epil.iter729.next, %xtraiter728
  br i1 %epil.iter729.cmp.not, label %.split284.us.us.us.us, label %.preheader263.us.us.us.us.us.us.2.epil, !llvm.loop !93

.split284.us.us.us.us:                            ; preds = %.split284.us.us.us.us.loopexit688.unr-lcssa, %.preheader263.us.us.us.us.us.us.2.epil, %scalar.ph, %middle.block, %..loopexit_crit_edge.us.us.us.us.us.us.2
  %i.jh = add i64 %i.bm, %.1176297.us.us.us
  br label %bb.e

bb.e:                                             ; preds = %.split284.us.us.us.us, %bb.d, %bb.c
  %.sroa.5.3.us.us.us = phi i64 [ %i.bh, %.split284.us.us.us.us ], [ %i.bh, %bb.d ], [ %.sroa.5.2295.us.us.us, %bb.c ] ; 3 uses
  %.sroa.0.3.us.us.us = phi i64 [ %.sroa.5.2295.us.us.us, %.split284.us.us.us.us ], [ %.sroa.5.2295.us.us.us, %bb.d ], [ %.sroa.0.2296.us.us.us, %bb.c ] ; 3 uses
  %.2177.us.us.us = phi i64 [ %i.jh, %.split284.us.us.us.us ], [ %.1176297.us.us.us, %bb.d ], [ %.1176297.us.us.us, %bb.c ] ; 2 uses
  %i.ji = add nuw i64 %.0173300.us.us.us, 1       ; 2 uses
  %exitcond404.not = icmp eq i64 %i.ji, %i.al
  br i1 %exitcond404.not, label %._crit_edge.split.us.us.us, label %bb.c, !llvm.loop !94

._crit_edge.split.us.us.us:                       ; preds = %bb.e
  %i.jj = add nuw i64 %.0174308.us.us, 1          ; 2 uses
  %exitcond405.not = icmp eq i64 %i.jj, %i.ao
  br i1 %exitcond405.not, label %._crit_edge310, label %.lr.ph.us313.us, !llvm.loop !95

.lr.ph.us313:                                     ; preds = %.lr.ph309.split.us, %._crit_edge.split.us331
  %.0174308.us = phi i64 [ %i.sb, %._crit_edge.split.us331 ], [ 0, %.lr.ph309.split.us ] ; 2 uses
  %.0175307.us = phi i64 [ %.2177.us330, %._crit_edge.split.us331 ], [ 0, %.lr.ph309.split.us ]
  %.sroa.0.1306.us = phi i64 [ %.sroa.0.3.us329, %._crit_edge.split.us331 ], [ %.sroa.0.0353, %.lr.ph309.split.us ]
  %.sroa.5.1305.us = phi i64 [ %.sroa.5.3.us328, %._crit_edge.split.us331 ], [ %.sroa.5.0352, %.lr.ph309.split.us ]
  %i.jk = add i64 %.0174308.us, %i.ai
  %i.jl = mul i64 %i.aq, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.jl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.jm, i64 64) ]
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.us313
  %.0173300.us315 = phi i64 [ 0, %.lr.ph.us313 ], [ %i.sa, %bb.h ] ; 2 uses
  %.1176297.us316 = phi i64 [ %.0175307.us, %.lr.ph.us313 ], [ %.2177.us330, %bb.h ] ; 8 uses
  %.sroa.0.2296.us317 = phi i64 [ %.sroa.0.1306.us, %.lr.ph.us313 ], [ %.sroa.0.3.us329, %bb.h ] ; 4 uses
  %.sroa.5.2295.us318 = phi i64 [ %.sroa.5.1305.us, %.lr.ph.us313 ], [ %.sroa.5.3.us328, %bb.h ] ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.0173300.us315
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !17  ; 2 uses
  %i.jq = lshr i8 %i.jp, 1
  %i.jr = trunc i8 %i.jp to i1
  br i1 %i.jr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.js = add i64 %.sroa.0.2296.us317, %.sroa.5.2295.us318
  %i.jt = shl i64 %.sroa.0.2296.us317, 23
  %i.ju = xor i64 %i.jt, %.sroa.0.2296.us317      ; 2 uses
  %i.jv = lshr i64 %i.ju, 18
  %i.jw = lshr i64 %.sroa.5.2295.us318, 5
  %i.jx = xor i64 %i.jw, %i.jv
  %i.jy = xor i64 %i.jx, %.sroa.5.2295.us318
  %i.jz = xor i64 %i.jy, %i.ju                    ; 2 uses
  %.not256257.us319 = icmp slt i64 %i.js, 0
  %.not256.us320 = select i1 %or.cond, i1 %.not256257.us319, i1 false
  br i1 %.not256.us320, label %bb.h, label %.split.us

.split.us:                                        ; preds = %bb.g
  %i.ka = zext nneg i8 %i.jq to i64               ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy19log2_covered_blocksEvE4kLut, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !17
  %i.kd = zext nneg i8 %i.kc to i64
  %i.ke = shl i64 64, %i.kd                       ; 14 uses
  %i.kf = getelementptr inbounds nuw i8, ptr @_ZN3jxlL14kStrategyOrderE, i64 %i.ka
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !17
  %i.kh = zext i8 %i.kg to i64
  %.idx258.us321 = mul nuw nsw i64 %i.kh, 24
  %i.ki = getelementptr inbounds nuw i8, ptr @_ZN3jxlL17kCoeffOrderOffsetE, i64 %.idx258.us321 ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.ka
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !17
  %i.kl = zext i8 %i.kk to i64                    ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.ka
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !17
  %i.ko = zext i8 %i.kn to i64                    ; 2 uses
  %i.kp = tail call noundef i64 @llvm.umin.i64(i64 %i.ko, i64 %i.kl) ; 10 uses
  %i.kq = tail call noundef i64 @llvm.umax.i64(i64 %i.ko, i64 %i.kl) ; 2 uses
  %factor.op.mul278.us322 = shl nuw nsw i64 %i.kq, 3 ; 54 uses
  %.not373 = icmp eq i64 %i.kp, 0
  %.not375 = icmp eq i64 %i.kq, 0                 ; 3 uses
  %umax392 = tail call i64 @llvm.umax.i64(i64 %i.ke, i64 1) ; 5 uses
  %i.kr = load i64, ptr %i.ki, align 8, !tbaa !19
  %i.ks = getelementptr [4 x i8], ptr %i.w, i64 %.1176297.us316 ; 4 uses
  %.idx376 = shl i64 %i.kr, 9
  %i.kt = getelementptr i8, ptr %i.c, i64 %.idx376 ; 13 uses
  %n.vec585 = and i64 %umax392, -64               ; 6 uses
  br i1 %.not373, label %vector.body586, label %vector.body628

vector.body628:                                   ; preds = %.split.us, %vector.body628
  %index629 = phi i64 [ %index.next634, %vector.body628 ], [ 0, %.split.us ] ; 3 uses
  %i.ku = getelementptr [4 x i8], ptr %i.ks, i64 %index629 ; 2 uses
  %i.kv = getelementptr i8, ptr %i.ku, i64 8
  %wide.load630 = load <2 x i32>, ptr %i.ku, align 4, !tbaa !22
  %wide.load631 = load <2 x i32>, ptr %i.kv, align 4, !tbaa !22
  %i.kw = icmp eq <2 x i32> %wide.load630, zeroinitializer
  %i.kx = icmp eq <2 x i32> %wide.load631, zeroinitializer
  %i.ky = zext <2 x i1> %i.kw to <2 x i64>
  %i.kz = zext <2 x i1> %i.kx to <2 x i64>
  %i.la = getelementptr [8 x i8], ptr %i.kt, i64 %index629 ; 3 uses
  %i.lb = getelementptr i8, ptr %i.la, i64 16     ; 2 uses
  %wide.load632 = load <2 x i64>, ptr %i.la, align 8, !tbaa !19
  %wide.load633 = load <2 x i64>, ptr %i.lb, align 8, !tbaa !19
  %i.lc = add nsw <2 x i64> %wide.load632, %i.ky
  %i.ld = add nsw <2 x i64> %wide.load633, %i.kz
  store <2 x i64> %i.lc, ptr %i.la, align 8, !tbaa !19
  store <2 x i64> %i.ld, ptr %i.lb, align 8, !tbaa !19
  %index.next634 = add nuw i64 %index629, 4       ; 2 uses
  %i.le = icmp eq i64 %index.next634, %n.vec585
  br i1 %i.le, label %middle.block635, label %vector.body628, !llvm.loop !96

middle.block635:                                  ; preds = %vector.body628
  %cmp.n636 = icmp eq i64 %i.ke, %n.vec585
  br i1 %cmp.n636, label %..loopexit266_crit_edge.us.us.us, label %.preheader265.us.us.us.preheader

vector.body586:                                   ; preds = %.split.us, %vector.body586
  %index587 = phi i64 [ %index.next592, %vector.body586 ], [ 0, %.split.us ] ; 3 uses
  %i.lf = getelementptr [4 x i8], ptr %i.ks, i64 %index587 ; 2 uses
  %i.lg = getelementptr i8, ptr %i.lf, i64 8
  %wide.load588 = load <2 x i32>, ptr %i.lf, align 4, !tbaa !22
  %wide.load589 = load <2 x i32>, ptr %i.lg, align 4, !tbaa !22
  %i.lh = icmp eq <2 x i32> %wide.load588, zeroinitializer
  %i.li = icmp eq <2 x i32> %wide.load589, zeroinitializer
  %i.lj = zext <2 x i1> %i.lh to <2 x i64>
  %i.lk = zext <2 x i1> %i.li to <2 x i64>
  %i.ll = getelementptr [8 x i8], ptr %i.kt, i64 %index587 ; 3 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 16     ; 2 uses
  %wide.load590 = load <2 x i64>, ptr %i.ll, align 8, !tbaa !19
  %wide.load591 = load <2 x i64>, ptr %i.lm, align 8, !tbaa !19
  %i.ln = add nsw <2 x i64> %wide.load590, %i.lj
  %i.lo = add nsw <2 x i64> %wide.load591, %i.lk
  store <2 x i64> %i.ln, ptr %i.ll, align 8, !tbaa !19
  store <2 x i64> %i.lo, ptr %i.lm, align 8, !tbaa !19
  %index.next592 = add nuw i64 %index587, 4       ; 2 uses
  %i.lp = icmp eq i64 %index.next592, %n.vec585
  br i1 %i.lp, label %middle.block593, label %vector.body586, !llvm.loop !97

middle.block593:                                  ; preds = %vector.body586
  %cmp.n594 = icmp eq i64 %i.ke, %n.vec585
  br i1 %cmp.n594, label %..loopexit266_crit_edge.us326, label %.preheader265.us324.preheader

.preheader265.us324.preheader:                    ; preds = %middle.block593, %.preheader265.us324.preheader
  %.0170273.us325 = phi i64 [ %i.lx, %.preheader265.us324.preheader ], [ %n.vec585, %middle.block593 ] ; 3 uses
  %i.lq = getelementptr [4 x i8], ptr %i.ks, i64 %.0170273.us325
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !22
  %i.ls = icmp eq i32 %i.lr, 0
  %i.lt = zext i1 %i.ls to i64
  %i.lu = getelementptr [8 x i8], ptr %i.kt, i64 %.0170273.us325 ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !19
  %i.lw = add nsw i64 %i.lv, %i.lt
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !19
  %i.lx = add nuw i64 %.0170273.us325, 1          ; 2 uses
  %exitcond393.not = icmp eq i64 %i.ke, %i.lx
  br i1 %exitcond393.not, label %..loopexit266_crit_edge.us326, label %.preheader265.us324.preheader, !llvm.loop !98

..loopexit266_crit_edge.us326:                    ; preds = %.preheader265.us324.preheader, %middle.block593
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !19
  %i.ma = getelementptr [4 x i8], ptr %i.aa, i64 %.1176297.us316 ; 2 uses
  %.idx376.1 = shl i64 %i.lz, 9
  %i.mb = getelementptr i8, ptr %i.c, i64 %.idx376.1 ; 2 uses
  %n.vec571 = and i64 %umax392, -64               ; 3 uses
  br label %vector.body572

vector.body572:                                   ; preds = %vector.body572, %..loopexit266_crit_edge.us326
  %index573 = phi i64 [ 0, %..loopexit266_crit_edge.us326 ], [ %index.next578, %vector.body572 ] ; 3 uses
  %i.mc = getelementptr [4 x i8], ptr %i.ma, i64 %index573 ; 2 uses
  %i.md = getelementptr i8, ptr %i.mc, i64 8
  %wide.load574 = load <2 x i32>, ptr %i.mc, align 4, !tbaa !22
  %wide.load575 = load <2 x i32>, ptr %i.md, align 4, !tbaa !22
  %i.me = icmp eq <2 x i32> %wide.load574, zeroinitializer
  %i.mf = icmp eq <2 x i32> %wide.load575, zeroinitializer
  %i.mg = zext <2 x i1> %i.me to <2 x i64>
  %i.mh = zext <2 x i1> %i.mf to <2 x i64>
  %i.mi = getelementptr [8 x i8], ptr %i.mb, i64 %index573 ; 3 uses
  %i.mj = getelementptr i8, ptr %i.mi, i64 16     ; 2 uses
  %wide.load576 = load <2 x i64>, ptr %i.mi, align 8, !tbaa !19
  %wide.load577 = load <2 x i64>, ptr %i.mj, align 8, !tbaa !19
  %i.mk = add nsw <2 x i64> %wide.load576, %i.mg
  %i.ml = add nsw <2 x i64> %wide.load577, %i.mh
  store <2 x i64> %i.mk, ptr %i.mi, align 8, !tbaa !19
  store <2 x i64> %i.ml, ptr %i.mj, align 8, !tbaa !19
  %index.next578 = add nuw i64 %index573, 4       ; 2 uses
  %i.mm = icmp eq i64 %index.next578, %n.vec571
  br i1 %i.mm, label %middle.block579, label %vector.body572, !llvm.loop !99

middle.block579:                                  ; preds = %vector.body572
  %cmp.n580 = icmp eq i64 %i.ke, %n.vec571
  br i1 %cmp.n580, label %..loopexit266_crit_edge.us326.1, label %scalar.ph568

scalar.ph568:                                     ; preds = %middle.block579, %scalar.ph568
  %.0170273.us325.1 = phi i64 [ %i.mu, %scalar.ph568 ], [ %n.vec571, %middle.block579 ] ; 3 uses
  %i.mn = getelementptr [4 x i8], ptr %i.ma, i64 %.0170273.us325.1
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !22
  %i.mp = icmp eq i32 %i.mo, 0
  %i.mq = zext i1 %i.mp to i64
  %i.mr = getelementptr [8 x i8], ptr %i.mb, i64 %.0170273.us325.1 ; 2 uses
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !19
  %i.mt = add nsw i64 %i.ms, %i.mq
  store i64 %i.mt, ptr %i.mr, align 8, !tbaa !19
  %i.mu = add nuw i64 %.0170273.us325.1, 1        ; 2 uses
  %exitcond393.1.not = icmp eq i64 %i.ke, %i.mu
  br i1 %exitcond393.1.not, label %..loopexit266_crit_edge.us326.1, label %scalar.ph568, !llvm.loop !100

..loopexit266_crit_edge.us326.1:                  ; preds = %scalar.ph568, %middle.block579
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !19
  %i.mx = getelementptr [4 x i8], ptr %i.ae, i64 %.1176297.us316 ; 2 uses
  %.idx376.2 = shl i64 %i.mw, 9
  %i.my = getelementptr i8, ptr %i.c, i64 %.idx376.2 ; 2 uses
  %n.vec557 = and i64 %umax392, -64               ; 3 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %..loopexit266_crit_edge.us326.1
  %index559 = phi i64 [ 0, %..loopexit266_crit_edge.us326.1 ], [ %index.next564, %vector.body558 ] ; 3 uses
  %i.mz = getelementptr [4 x i8], ptr %i.mx, i64 %index559 ; 2 uses
  %i.na = getelementptr i8, ptr %i.mz, i64 8
  %wide.load560 = load <2 x i32>, ptr %i.mz, align 4, !tbaa !22
  %wide.load561 = load <2 x i32>, ptr %i.na, align 4, !tbaa !22
  %i.nb = icmp eq <2 x i32> %wide.load560, zeroinitializer
  %i.nc = icmp eq <2 x i32> %wide.load561, zeroinitializer
  %i.nd = zext <2 x i1> %i.nb to <2 x i64>
  %i.ne = zext <2 x i1> %i.nc to <2 x i64>
  %i.nf = getelementptr [8 x i8], ptr %i.my, i64 %index559 ; 3 uses
  %i.ng = getelementptr i8, ptr %i.nf, i64 16     ; 2 uses
  %wide.load562 = load <2 x i64>, ptr %i.nf, align 8, !tbaa !19
  %wide.load563 = load <2 x i64>, ptr %i.ng, align 8, !tbaa !19
  %i.nh = add nsw <2 x i64> %wide.load562, %i.nd
  %i.ni = add nsw <2 x i64> %wide.load563, %i.ne
  store <2 x i64> %i.nh, ptr %i.nf, align 8, !tbaa !19
  store <2 x i64> %i.ni, ptr %i.ng, align 8, !tbaa !19
  %index.next564 = add nuw i64 %index559, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next564, %n.vec557
  br i1 %i.nj, label %middle.block565, label %vector.body558, !llvm.loop !101

middle.block565:                                  ; preds = %vector.body558
  %cmp.n566 = icmp eq i64 %i.ke, %n.vec557
  br i1 %cmp.n566, label %.split284.us, label %scalar.ph554

scalar.ph554:                                     ; preds = %middle.block565, %scalar.ph554
  %.0170273.us325.2 = phi i64 [ %i.nr, %scalar.ph554 ], [ %n.vec557, %middle.block565 ] ; 3 uses
  %i.nk = getelementptr [4 x i8], ptr %i.mx, i64 %.0170273.us325.2
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !22
  %i.nm = icmp eq i32 %i.nl, 0
  %i.nn = zext i1 %i.nm to i64
  %i.no = getelementptr [8 x i8], ptr %i.my, i64 %.0170273.us325.2 ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !tbaa !19
  %i.nq = add nsw i64 %i.np, %i.nn
  store i64 %i.nq, ptr %i.no, align 8, !tbaa !19
  %i.nr = add nuw i64 %.0170273.us325.2, 1        ; 2 uses
  %exitcond393.2.not = icmp eq i64 %i.ke, %i.nr
  br i1 %exitcond393.2.not, label %.split284.us, label %scalar.ph554, !llvm.loop !102

.preheader265.us.us.us.preheader:                 ; preds = %middle.block635, %.preheader265.us.us.us.preheader
  %.0170273.us.us.us = phi i64 [ %i.nz, %.preheader265.us.us.us.preheader ], [ %n.vec585, %middle.block635 ] ; 3 uses
  %i.ns = getelementptr [4 x i8], ptr %i.ks, i64 %.0170273.us.us.us
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !22
  %i.nu = icmp eq i32 %i.nt, 0
  %i.nv = zext i1 %i.nu to i64
  %i.nw = getelementptr [8 x i8], ptr %i.kt, i64 %.0170273.us.us.us ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !19
  %i.ny = add nsw i64 %i.nx, %i.nv
  store i64 %i.ny, ptr %i.nw, align 8, !tbaa !19
  %i.nz = add nuw i64 %.0170273.us.us.us, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ke, %i.nz
  br i1 %exitcond.not, label %..loopexit266_crit_edge.us.us.us, label %.preheader265.us.us.us.preheader, !llvm.loop !103

..loopexit266_crit_edge.us.us.us:                 ; preds = %.preheader265.us.us.us.preheader, %middle.block635
  br i1 %.not375, label %._crit_edge280.split.us294.us.us, label %.preheader263.us288.us.us.preheader

.preheader263.us288.us.us.preheader:              ; preds = %..loopexit266_crit_edge.us.us.us
  %xtraiter = and i64 %i.kp, 7                    ; 3 uses
  %i.oa = icmp samesign ult i64 %i.kp, 8
  br i1 %i.oa, label %.preheader263.us288.us.us.epil.preheader, label %.preheader263.us288.us.us.preheader.new

.preheader263.us288.us.us.preheader.new:          ; preds = %.preheader263.us288.us.us.preheader
  %unroll_iter = and i64 %i.kp, 248
  br label %.preheader263.us288.us.us

.preheader263.us288.us.us:                        ; preds = %.preheader263.us288.us.us, %.preheader263.us288.us.us.preheader.new
  %.0169279.us289.us.us = phi i64 [ 0, %.preheader263.us288.us.us.preheader.new ], [ %i.oq, %.preheader263.us288.us.us ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader263.us288.us.us.preheader.new ], [ %niter.next.7, %.preheader263.us288.us.us ]
  %factor.op.mul.reass.us290.us.us = mul nuw nsw i64 %factor.op.mul278.us322, %.0169279.us289.us.us
  %i.ob = getelementptr [8 x i8], ptr %i.kt, i64 %factor.op.mul.reass.us290.us.us
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ob, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.oc = or disjoint i64 %.0169279.us289.us.us, 1
  %factor.op.mul.reass.us290.us.us.1693 = mul nuw nsw i64 %factor.op.mul278.us322, %i.oc
  %i.od = getelementptr [8 x i8], ptr %i.kt, i64 %factor.op.mul.reass.us290.us.us.1693
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.od, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.oe = or disjoint i64 %.0169279.us289.us.us, 2
  %factor.op.mul.reass.us290.us.us.2696 = mul nuw nsw i64 %factor.op.mul278.us322, %i.oe
  %i.of = getelementptr [8 x i8], ptr %i.kt, i64 %factor.op.mul.reass.us290.us.us.2696
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.of, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.og = or disjoint i64 %.0169279.us289.us.us, 3
  %factor.op.mul.reass.us290.us.us.3 = mul nuw nsw i64 %factor.op.mul278.us322, %i.og
  %i.oh = getelementptr [8 x i8], ptr %i.kt, i64 %factor.op.mul.reass.us290.us.us.3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.oh, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.oi = or disjoint i64 %.0169279.us289.us.us, 4
  %factor.op.mul.reass.us290.us.us.4 = mul nuw nsw i64 %factor.op.mul278.us322, %i.oi
  %i.oj = getelementptr [8 x i8], ptr %i.kt, i64 %factor.op.mul.reass.us290.us.us.4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.oj, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.ok = or disjoint i64 %.0169279.us289.us.us, 5
  %factor.op.mul.reass.us290.us.us.5 = mul nuw nsw i64 %factor.op.mul278.us322, %i.ok
  %i.ol = getelementptr [8 x i8], ptr %i.kt, i64 %factor.op.mul.reass.us290.us.us.5
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ol, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.om = or disjoint i64 %.0169279.us289.us.us, 6
  %factor.op.mul.reass.us290.us.us.6 = mul nuw nsw i64 %factor.op.mul278.us322, %i.om
  %i.on = getelementptr [8 x i8], ptr %i.kt, i64 %factor.op.mul.reass.us290.us.us.6
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.on, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.oo = or disjoint i64 %.0169279.us289.us.us, 7
  %factor.op.mul.reass.us290.us.us.7 = mul nuw nsw i64 %factor.op.mul278.us322, %i.oo
  %i.op = getelementptr [8 x i8], ptr %i.kt, i64 %factor.op.mul.reass.us290.us.us.7
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.op, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.oq = add nuw nsw i64 %.0169279.us289.us.us, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge280.split.us294.us.us.loopexit.unr-lcssa, label %.preheader263.us288.us.us, !llvm.loop !86

._crit_edge280.split.us294.us.us.loopexit.unr-lcssa: ; preds = %.preheader263.us288.us.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge280.split.us294.us.us, label %.preheader263.us288.us.us.epil.preheader

.preheader263.us288.us.us.epil.preheader:         ; preds = %._crit_edge280.split.us294.us.us.loopexit.unr-lcssa, %.preheader263.us288.us.us.preheader
  %.0169279.us289.us.us.epil.init = phi i64 [ 0, %.preheader263.us288.us.us.preheader ], [ %i.oq, %._crit_edge280.split.us294.us.us.loopexit.unr-lcssa ]
  %lcmp.mod691 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod691)
  br label %.preheader263.us288.us.us.epil

.preheader263.us288.us.us.epil:                   ; preds = %.preheader263.us288.us.us.epil, %.preheader263.us288.us.us.epil.preheader
  %.0169279.us289.us.us.epil = phi i64 [ %i.os, %.preheader263.us288.us.us.epil ], [ %.0169279.us289.us.us.epil.init, %.preheader263.us288.us.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader263.us288.us.us.epil ], [ 0, %.preheader263.us288.us.us.epil.preheader ]
  %factor.op.mul.reass.us290.us.us.epil = mul nuw nsw i64 %factor.op.mul278.us322, %.0169279.us289.us.us.epil
  %i.or = getelementptr [8 x i8], ptr %i.kt, i64 %factor.op.mul.reass.us290.us.us.epil
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.or, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.os = add nuw nsw i64 %.0169279.us289.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge280.split.us294.us.us, label %.preheader263.us288.us.us.epil, !llvm.loop !104

._crit_edge280.split.us294.us.us:                 ; preds = %._crit_edge280.split.us294.us.us.loopexit.unr-lcssa, %.preheader263.us288.us.us.epil, %..loopexit266_crit_edge.us.us.us
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !19
  %i.ov = getelementptr [4 x i8], ptr %i.aa, i64 %.1176297.us316 ; 2 uses
  %.idx440 = shl i64 %i.ou, 9
  %i.ow = getelementptr i8, ptr %i.c, i64 %.idx440 ; 11 uses
  %n.vec613 = and i64 %umax392, -64               ; 3 uses
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %._crit_edge280.split.us294.us.us
  %index615 = phi i64 [ 0, %._crit_edge280.split.us294.us.us ], [ %index.next620, %vector.body614 ] ; 3 uses
  %i.ox = getelementptr [4 x i8], ptr %i.ov, i64 %index615 ; 2 uses
  %i.oy = getelementptr i8, ptr %i.ox, i64 8
  %wide.load616 = load <2 x i32>, ptr %i.ox, align 4, !tbaa !22
  %wide.load617 = load <2 x i32>, ptr %i.oy, align 4, !tbaa !22
  %i.oz = icmp eq <2 x i32> %wide.load616, zeroinitializer
  %i.pa = icmp eq <2 x i32> %wide.load617, zeroinitializer
  %i.pb = zext <2 x i1> %i.oz to <2 x i64>
  %i.pc = zext <2 x i1> %i.pa to <2 x i64>
  %i.pd = getelementptr [8 x i8], ptr %i.ow, i64 %index615 ; 3 uses
  %i.pe = getelementptr i8, ptr %i.pd, i64 16     ; 2 uses
  %wide.load618 = load <2 x i64>, ptr %i.pd, align 8, !tbaa !19
  %wide.load619 = load <2 x i64>, ptr %i.pe, align 8, !tbaa !19
  %i.pf = add nsw <2 x i64> %wide.load618, %i.pb
  %i.pg = add nsw <2 x i64> %wide.load619, %i.pc
  store <2 x i64> %i.pf, ptr %i.pd, align 8, !tbaa !19
  store <2 x i64> %i.pg, ptr %i.pe, align 8, !tbaa !19
  %index.next620 = add nuw i64 %index615, 4       ; 2 uses
  %i.ph = icmp eq i64 %index.next620, %n.vec613
  br i1 %i.ph, label %middle.block621, label %vector.body614, !llvm.loop !105

middle.block621:                                  ; preds = %vector.body614
  %cmp.n622 = icmp eq i64 %i.ke, %n.vec613
  br i1 %cmp.n622, label %..loopexit266_crit_edge.us.us.us.1, label %scalar.ph610

scalar.ph610:                                     ; preds = %middle.block621, %scalar.ph610
  %.0170273.us.us.us.1 = phi i64 [ %i.pp, %scalar.ph610 ], [ %n.vec613, %middle.block621 ] ; 3 uses
  %i.pi = getelementptr [4 x i8], ptr %i.ov, i64 %.0170273.us.us.us.1
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !22
  %i.pk = icmp eq i32 %i.pj, 0
  %i.pl = zext i1 %i.pk to i64
  %i.pm = getelementptr [8 x i8], ptr %i.ow, i64 %.0170273.us.us.us.1 ; 2 uses
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !19
  %i.po = add nsw i64 %i.pn, %i.pl
  store i64 %i.po, ptr %i.pm, align 8, !tbaa !19
  %i.pp = add nuw i64 %.0170273.us.us.us.1, 1     ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.ke, %i.pp
  br i1 %exitcond.1.not, label %..loopexit266_crit_edge.us.us.us.1, label %scalar.ph610, !llvm.loop !106

..loopexit266_crit_edge.us.us.us.1:               ; preds = %scalar.ph610, %middle.block621
  br i1 %.not375, label %._crit_edge280.split.us294.us.us.1, label %.preheader263.us288.us.us.1.preheader

.preheader263.us288.us.us.1.preheader:            ; preds = %..loopexit266_crit_edge.us.us.us.1
  %xtraiter698 = and i64 %i.kp, 7                 ; 3 uses
  %i.pq = icmp samesign ult i64 %i.kp, 8
  br i1 %i.pq, label %.preheader263.us288.us.us.1.epil.preheader, label %.preheader263.us288.us.us.1.preheader.new

.preheader263.us288.us.us.1.preheader.new:        ; preds = %.preheader263.us288.us.us.1.preheader
  %unroll_iter702 = and i64 %i.kp, 248
  br label %.preheader263.us288.us.us.1

.preheader263.us288.us.us.1:                      ; preds = %.preheader263.us288.us.us.1, %.preheader263.us288.us.us.1.preheader.new
  %.0169279.us289.us.us.1 = phi i64 [ 0, %.preheader263.us288.us.us.1.preheader.new ], [ %i.qg, %.preheader263.us288.us.us.1 ] ; 9 uses
  %niter703 = phi i64 [ 0, %.preheader263.us288.us.us.1.preheader.new ], [ %niter703.next.7, %.preheader263.us288.us.us.1 ]
  %factor.op.mul.reass.us290.us.us.1 = mul nuw nsw i64 %factor.op.mul278.us322, %.0169279.us289.us.us.1
  %i.pr = getelementptr [8 x i8], ptr %i.ow, i64 %factor.op.mul.reass.us290.us.us.1
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.pr, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.ps = or disjoint i64 %.0169279.us289.us.us.1, 1
  %factor.op.mul.reass.us290.us.us.1.1 = mul nuw nsw i64 %factor.op.mul278.us322, %i.ps
  %i.pt = getelementptr [8 x i8], ptr %i.ow, i64 %factor.op.mul.reass.us290.us.us.1.1
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.pt, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.pu = or disjoint i64 %.0169279.us289.us.us.1, 2
  %factor.op.mul.reass.us290.us.us.1.2 = mul nuw nsw i64 %factor.op.mul278.us322, %i.pu
  %i.pv = getelementptr [8 x i8], ptr %i.ow, i64 %factor.op.mul.reass.us290.us.us.1.2
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.pv, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.pw = or disjoint i64 %.0169279.us289.us.us.1, 3
  %factor.op.mul.reass.us290.us.us.1.3 = mul nuw nsw i64 %factor.op.mul278.us322, %i.pw
  %i.px = getelementptr [8 x i8], ptr %i.ow, i64 %factor.op.mul.reass.us290.us.us.1.3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.px, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.py = or disjoint i64 %.0169279.us289.us.us.1, 4
  %factor.op.mul.reass.us290.us.us.1.4 = mul nuw nsw i64 %factor.op.mul278.us322, %i.py
  %i.pz = getelementptr [8 x i8], ptr %i.ow, i64 %factor.op.mul.reass.us290.us.us.1.4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.pz, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.qa = or disjoint i64 %.0169279.us289.us.us.1, 5
  %factor.op.mul.reass.us290.us.us.1.5 = mul nuw nsw i64 %factor.op.mul278.us322, %i.qa
  %i.qb = getelementptr [8 x i8], ptr %i.ow, i64 %factor.op.mul.reass.us290.us.us.1.5
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.qb, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.qc = or disjoint i64 %.0169279.us289.us.us.1, 6
  %factor.op.mul.reass.us290.us.us.1.6 = mul nuw nsw i64 %factor.op.mul278.us322, %i.qc
  %i.qd = getelementptr [8 x i8], ptr %i.ow, i64 %factor.op.mul.reass.us290.us.us.1.6
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.qd, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.qe = or disjoint i64 %.0169279.us289.us.us.1, 7
  %factor.op.mul.reass.us290.us.us.1.7 = mul nuw nsw i64 %factor.op.mul278.us322, %i.qe
  %i.qf = getelementptr [8 x i8], ptr %i.ow, i64 %factor.op.mul.reass.us290.us.us.1.7
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.qf, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.qg = add nuw nsw i64 %.0169279.us289.us.us.1, 8 ; 2 uses
  %niter703.next.7 = add i64 %niter703, 8         ; 2 uses
  %niter703.ncmp.7 = icmp eq i64 %niter703.next.7, %unroll_iter702
  br i1 %niter703.ncmp.7, label %._crit_edge280.split.us294.us.us.1.loopexit.unr-lcssa, label %.preheader263.us288.us.us.1, !llvm.loop !86

._crit_edge280.split.us294.us.us.1.loopexit.unr-lcssa: ; preds = %.preheader263.us288.us.us.1
  %lcmp.mod700.not = icmp eq i64 %xtraiter698, 0
  br i1 %lcmp.mod700.not, label %._crit_edge280.split.us294.us.us.1, label %.preheader263.us288.us.us.1.epil.preheader

.preheader263.us288.us.us.1.epil.preheader:       ; preds = %._crit_edge280.split.us294.us.us.1.loopexit.unr-lcssa, %.preheader263.us288.us.us.1.preheader
  %.0169279.us289.us.us.1.epil.init = phi i64 [ 0, %.preheader263.us288.us.us.1.preheader ], [ %i.qg, %._crit_edge280.split.us294.us.us.1.loopexit.unr-lcssa ]
  %lcmp.mod701 = icmp ne i64 %xtraiter698, 0
  tail call void @llvm.assume(i1 %lcmp.mod701)
  br label %.preheader263.us288.us.us.1.epil

.preheader263.us288.us.us.1.epil:                 ; preds = %.preheader263.us288.us.us.1.epil, %.preheader263.us288.us.us.1.epil.preheader
  %.0169279.us289.us.us.1.epil = phi i64 [ %i.qi, %.preheader263.us288.us.us.1.epil ], [ %.0169279.us289.us.us.1.epil.init, %.preheader263.us288.us.us.1.epil.preheader ] ; 2 uses
  %epil.iter699 = phi i64 [ %epil.iter699.next, %.preheader263.us288.us.us.1.epil ], [ 0, %.preheader263.us288.us.us.1.epil.preheader ]
  %factor.op.mul.reass.us290.us.us.1.epil = mul nuw nsw i64 %factor.op.mul278.us322, %.0169279.us289.us.us.1.epil
  %i.qh = getelementptr [8 x i8], ptr %i.ow, i64 %factor.op.mul.reass.us290.us.us.1.epil
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.qh, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.qi = add nuw nsw i64 %.0169279.us289.us.us.1.epil, 1
  %epil.iter699.next = add i64 %epil.iter699, 1   ; 2 uses
  %epil.iter699.cmp.not = icmp eq i64 %epil.iter699.next, %xtraiter698
  br i1 %epil.iter699.cmp.not, label %._crit_edge280.split.us294.us.us.1, label %.preheader263.us288.us.us.1.epil, !llvm.loop !107

._crit_edge280.split.us294.us.us.1:               ; preds = %._crit_edge280.split.us294.us.us.1.loopexit.unr-lcssa, %.preheader263.us288.us.us.1.epil, %..loopexit266_crit_edge.us.us.us.1
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !19
  %i.ql = getelementptr [4 x i8], ptr %i.ae, i64 %.1176297.us316 ; 2 uses
  %.idx441 = shl i64 %i.qk, 9
  %i.qm = getelementptr i8, ptr %i.c, i64 %.idx441 ; 11 uses
  %n.vec599 = and i64 %umax392, -64               ; 3 uses
  br label %vector.body600

vector.body600:                                   ; preds = %vector.body600, %._crit_edge280.split.us294.us.us.1
  %index601 = phi i64 [ 0, %._crit_edge280.split.us294.us.us.1 ], [ %index.next606, %vector.body600 ] ; 3 uses
  %i.qn = getelementptr [4 x i8], ptr %i.ql, i64 %index601 ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 8
  %wide.load602 = load <2 x i32>, ptr %i.qn, align 4, !tbaa !22
  %wide.load603 = load <2 x i32>, ptr %i.qo, align 4, !tbaa !22
  %i.qp = icmp eq <2 x i32> %wide.load602, zeroinitializer
  %i.qq = icmp eq <2 x i32> %wide.load603, zeroinitializer
  %i.qr = zext <2 x i1> %i.qp to <2 x i64>
  %i.qs = zext <2 x i1> %i.qq to <2 x i64>
  %i.qt = getelementptr [8 x i8], ptr %i.qm, i64 %index601 ; 3 uses
  %i.qu = getelementptr i8, ptr %i.qt, i64 16     ; 2 uses
  %wide.load604 = load <2 x i64>, ptr %i.qt, align 8, !tbaa !19
  %wide.load605 = load <2 x i64>, ptr %i.qu, align 8, !tbaa !19
  %i.qv = add nsw <2 x i64> %wide.load604, %i.qr
  %i.qw = add nsw <2 x i64> %wide.load605, %i.qs
  store <2 x i64> %i.qv, ptr %i.qt, align 8, !tbaa !19
  store <2 x i64> %i.qw, ptr %i.qu, align 8, !tbaa !19
  %index.next606 = add nuw i64 %index601, 4       ; 2 uses
  %i.qx = icmp eq i64 %index.next606, %n.vec599
  br i1 %i.qx, label %middle.block607, label %vector.body600, !llvm.loop !108

middle.block607:                                  ; preds = %vector.body600
  %cmp.n608 = icmp eq i64 %i.ke, %n.vec599
  br i1 %cmp.n608, label %..loopexit266_crit_edge.us.us.us.2, label %scalar.ph596

scalar.ph596:                                     ; preds = %middle.block607, %scalar.ph596
  %.0170273.us.us.us.2 = phi i64 [ %i.rf, %scalar.ph596 ], [ %n.vec599, %middle.block607 ] ; 3 uses
  %i.qy = getelementptr [4 x i8], ptr %i.ql, i64 %.0170273.us.us.us.2
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !22
  %i.ra = icmp eq i32 %i.qz, 0
  %i.rb = zext i1 %i.ra to i64
  %i.rc = getelementptr [8 x i8], ptr %i.qm, i64 %.0170273.us.us.us.2 ; 2 uses
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !19
  %i.re = add nsw i64 %i.rd, %i.rb
  store i64 %i.re, ptr %i.rc, align 8, !tbaa !19
  %i.rf = add nuw i64 %.0170273.us.us.us.2, 1     ; 2 uses
  %exitcond.2.not = icmp eq i64 %i.ke, %i.rf
  br i1 %exitcond.2.not, label %..loopexit266_crit_edge.us.us.us.2, label %scalar.ph596, !llvm.loop !109

..loopexit266_crit_edge.us.us.us.2:               ; preds = %scalar.ph596, %middle.block607
  br i1 %.not375, label %.split284.us, label %.preheader263.us288.us.us.2.preheader

.preheader263.us288.us.us.2.preheader:            ; preds = %..loopexit266_crit_edge.us.us.us.2
  %xtraiter704 = and i64 %i.kp, 7                 ; 3 uses
  %i.rg = icmp samesign ult i64 %i.kp, 8
  br i1 %i.rg, label %.preheader263.us288.us.us.2.epil.preheader, label %.preheader263.us288.us.us.2.preheader.new

.preheader263.us288.us.us.2.preheader.new:        ; preds = %.preheader263.us288.us.us.2.preheader
  %unroll_iter708 = and i64 %i.kp, 248
  br label %.preheader263.us288.us.us.2

.preheader263.us288.us.us.2:                      ; preds = %.preheader263.us288.us.us.2, %.preheader263.us288.us.us.2.preheader.new
  %.0169279.us289.us.us.2 = phi i64 [ 0, %.preheader263.us288.us.us.2.preheader.new ], [ %i.rw, %.preheader263.us288.us.us.2 ] ; 9 uses
  %niter709 = phi i64 [ 0, %.preheader263.us288.us.us.2.preheader.new ], [ %niter709.next.7, %.preheader263.us288.us.us.2 ]
  %factor.op.mul.reass.us290.us.us.2 = mul nuw nsw i64 %factor.op.mul278.us322, %.0169279.us289.us.us.2
  %i.rh = getelementptr [8 x i8], ptr %i.qm, i64 %factor.op.mul.reass.us290.us.us.2
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rh, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.ri = or disjoint i64 %.0169279.us289.us.us.2, 1
  %factor.op.mul.reass.us290.us.us.2.1 = mul nuw nsw i64 %factor.op.mul278.us322, %i.ri
  %i.rj = getelementptr [8 x i8], ptr %i.qm, i64 %factor.op.mul.reass.us290.us.us.2.1
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rj, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.rk = or disjoint i64 %.0169279.us289.us.us.2, 2
  %factor.op.mul.reass.us290.us.us.2.2 = mul nuw nsw i64 %factor.op.mul278.us322, %i.rk
  %i.rl = getelementptr [8 x i8], ptr %i.qm, i64 %factor.op.mul.reass.us290.us.us.2.2
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rl, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.rm = or disjoint i64 %.0169279.us289.us.us.2, 3
  %factor.op.mul.reass.us290.us.us.2.3 = mul nuw nsw i64 %factor.op.mul278.us322, %i.rm
  %i.rn = getelementptr [8 x i8], ptr %i.qm, i64 %factor.op.mul.reass.us290.us.us.2.3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rn, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.ro = or disjoint i64 %.0169279.us289.us.us.2, 4
  %factor.op.mul.reass.us290.us.us.2.4 = mul nuw nsw i64 %factor.op.mul278.us322, %i.ro
  %i.rp = getelementptr [8 x i8], ptr %i.qm, i64 %factor.op.mul.reass.us290.us.us.2.4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rp, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.rq = or disjoint i64 %.0169279.us289.us.us.2, 5
  %factor.op.mul.reass.us290.us.us.2.5 = mul nuw nsw i64 %factor.op.mul278.us322, %i.rq
  %i.rr = getelementptr [8 x i8], ptr %i.qm, i64 %factor.op.mul.reass.us290.us.us.2.5
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rr, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.rs = or disjoint i64 %.0169279.us289.us.us.2, 6
  %factor.op.mul.reass.us290.us.us.2.6 = mul nuw nsw i64 %factor.op.mul278.us322, %i.rs
  %i.rt = getelementptr [8 x i8], ptr %i.qm, i64 %factor.op.mul.reass.us290.us.us.2.6
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rt, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.ru = or disjoint i64 %.0169279.us289.us.us.2, 7
  %factor.op.mul.reass.us290.us.us.2.7 = mul nuw nsw i64 %factor.op.mul278.us322, %i.ru
  %i.rv = getelementptr [8 x i8], ptr %i.qm, i64 %factor.op.mul.reass.us290.us.us.2.7
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rv, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.rw = add nuw nsw i64 %.0169279.us289.us.us.2, 8 ; 2 uses
  %niter709.next.7 = add i64 %niter709, 8         ; 2 uses
  %niter709.ncmp.7 = icmp eq i64 %niter709.next.7, %unroll_iter708
  br i1 %niter709.ncmp.7, label %.split284.us.loopexit689.unr-lcssa, label %.preheader263.us288.us.us.2, !llvm.loop !86

.split284.us.loopexit689.unr-lcssa:               ; preds = %.preheader263.us288.us.us.2
  %lcmp.mod706.not = icmp eq i64 %xtraiter704, 0
  br i1 %lcmp.mod706.not, label %.split284.us, label %.preheader263.us288.us.us.2.epil.preheader

.preheader263.us288.us.us.2.epil.preheader:       ; preds = %.split284.us.loopexit689.unr-lcssa, %.preheader263.us288.us.us.2.preheader
  %.0169279.us289.us.us.2.epil.init = phi i64 [ 0, %.preheader263.us288.us.us.2.preheader ], [ %i.rw, %.split284.us.loopexit689.unr-lcssa ]
  %lcmp.mod707 = icmp ne i64 %xtraiter704, 0
  tail call void @llvm.assume(i1 %lcmp.mod707)
  br label %.preheader263.us288.us.us.2.epil

.preheader263.us288.us.us.2.epil:                 ; preds = %.preheader263.us288.us.us.2.epil, %.preheader263.us288.us.us.2.epil.preheader
  %.0169279.us289.us.us.2.epil = phi i64 [ %i.ry, %.preheader263.us288.us.us.2.epil ], [ %.0169279.us289.us.us.2.epil.init, %.preheader263.us288.us.us.2.epil.preheader ] ; 2 uses
  %epil.iter705 = phi i64 [ %epil.iter705.next, %.preheader263.us288.us.us.2.epil ], [ 0, %.preheader263.us288.us.us.2.epil.preheader ]
  %factor.op.mul.reass.us290.us.us.2.epil = mul nuw nsw i64 %factor.op.mul278.us322, %.0169279.us289.us.us.2.epil
  %i.rx = getelementptr [8 x i8], ptr %i.qm, i64 %factor.op.mul.reass.us290.us.us.2.epil
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rx, i8 -1, i64 %factor.op.mul278.us322, i1 false), !tbaa !19
  %i.ry = add nuw nsw i64 %.0169279.us289.us.us.2.epil, 1
  %epil.iter705.next = add i64 %epil.iter705, 1   ; 2 uses
  %epil.iter705.cmp.not = icmp eq i64 %epil.iter705.next, %xtraiter704
  br i1 %epil.iter705.cmp.not, label %.split284.us, label %.preheader263.us288.us.us.2.epil, !llvm.loop !110

.split284.us:                                     ; preds = %.split284.us.loopexit689.unr-lcssa, %.preheader263.us288.us.us.2.epil, %scalar.ph554, %middle.block565, %..loopexit266_crit_edge.us.us.us.2
  %i.rz = add i64 %i.ke, %.1176297.us316
  br label %bb.h

bb.h:                                             ; preds = %.split284.us, %bb.g, %bb.f
  %.sroa.5.3.us328 = phi i64 [ %i.jz, %.split284.us ], [ %i.jz, %bb.g ], [ %.sroa.5.2295.us318, %bb.f ] ; 3 uses
  %.sroa.0.3.us329 = phi i64 [ %.sroa.5.2295.us318, %.split284.us ], [ %.sroa.5.2295.us318, %bb.g ], [ %.sroa.0.2296.us317, %bb.f ] ; 3 uses
  %.2177.us330 = phi i64 [ %i.rz, %.split284.us ], [ %.1176297.us316, %bb.g ], [ %.1176297.us316, %bb.f ] ; 2 uses
  %i.sa = add nuw i64 %.0173300.us315, 1          ; 2 uses
  %exitcond395.not = icmp eq i64 %i.sa, %i.al
  br i1 %exitcond395.not, label %._crit_edge.split.us331, label %bb.f, !llvm.loop !94

._crit_edge.split.us331:                          ; preds = %bb.h
  %i.sb = add nuw i64 %.0174308.us, 1             ; 2 uses
  %exitcond396.not = icmp eq i64 %i.sb, %i.ao
  br i1 %exitcond396.not, label %._crit_edge310, label %.lr.ph.us313, !llvm.loop !95

._crit_edge310:                                   ; preds = %._crit_edge.split.us331, %._crit_edge.split.us.us.us, %.lr.ph309, %.preheader267
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.0352, %.preheader267 ], [ %.sroa.5.0352, %.lr.ph309 ], [ %.sroa.5.3.us.us.us, %._crit_edge.split.us.us.us ], [ %.sroa.5.3.us328, %._crit_edge.split.us331 ]
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.0353, %.preheader267 ], [ %.sroa.0.0353, %.lr.ph309 ], [ %.sroa.0.3.us.us.us, %._crit_edge.split.us.us.us ], [ %.sroa.0.3.us329, %._crit_edge.split.us331 ]
  %i.sc = add nuw i64 %.0157354, 1                ; 2 uses
  %i.sd = load i64, ptr %i.f, align 8, !tbaa !119
  %i.se = icmp ult i64 %i.sc, %i.sd
  br i1 %i.se, label %.preheader267, label %.loopexit268, !llvm.loop !111

.loopexit268:                                     ; preds = %._crit_edge310, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %9, ptr noundef %i.b, i64 noundef 1048576, i64 noundef 0) #20
  %i.sf = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !25 ; 2 uses
  %i.sh = icmp eq i32 %i.sg, 0
  br i1 %i.sh, label %bb.i, label %_ZNSt3__16vectorIlNS_9allocatorIlEEED2B8nn180100Ev.exit

bb.i:                                             ; preds = %.loopexit268
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(28) %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.si = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread236
  %indvars.iv = phi i64 [ 0, %bb.i ], [ %indvars.iv.next, %.thread236 ] ; 4 uses
  %.0150369 = phi i32 [ %7, %bb.i ], [ %.4243, %.thread236 ] ; 6 uses
  %.0160367 = phi i16 [ 0, %bb.i ], [ %.1161242, %.thread236 ] ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr @_ZN3jxlL14kStrategyOrderE, i64 %indvars.iv
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !17
  %i.sm = zext i16 %.0160367 to i32
  %i.sn = zext i8 %i.sl to i32                    ; 2 uses
  %i.so = shl nuw i32 1, %i.sn                    ; 7 uses
  %i.sp = and i32 %i.so, %i.sm
  %.not184 = icmp eq i32 %i.sp, 0
  br i1 %.not184, label %bb.k, label %.thread236

bb.k:                                             ; preds = %bb.j
  %i.sq = trunc i32 %i.so to i16
  %i.sr = or i16 %.0160367, %i.sq
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %.sroa.0220.0.insert.insert = or disjoint i64 %indvars.iv, 4294967296
  %i.ss = trunc nuw nsw i64 %.sroa.0220.0.insert.insert to i40
  store i40 %i.ss, ptr %12, align 8
  %i.st = and i64 %indvars.iv, 4294967295         ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.st
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !17
  %i.sw = zext i8 %i.sv to i64
  %i.sx = shl nuw nsw i64 %i.sw, 6
  %i.sy = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.st
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !17
  %i.ta = zext i8 %i.sz to i64
  %i.tb = mul nuw nsw i64 %i.sx, %i.ta            ; 42 uses
  %i.tc = and i32 %i.so, %6
  %.not185.not = icmp ne i32 %i.tc, 0
  %i.td = and i32 %i.so, %5
  %.not186 = icmp eq i32 %i.td, 0
  %or.cond189 = and i1 %.not185.not, %.not186
  br i1 %or.cond189, label %bb.l, label %.thread244

bb.l:                                             ; preds = %bb.k
  %i.te = load i32, ptr %4, align 4, !tbaa !22
  %i.tf = and i32 %i.te, %i.so
  %.not187 = icmp eq i32 %i.tf, 0
  br i1 %.not187, label %bb.m, label %.thread244

bb.m:                                             ; preds = %bb.l
  %i.tg = load ptr, ptr %i.si, align 8, !tbaa !30
  %i.th = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.ti = ptrtoint ptr %i.tg to i64
  %i.tj = ptrtoint ptr %i.th to i64
  %i.tk = sub i64 %i.ti, %i.tj
  %i.tl = ashr exact i64 %i.tk, 2                 ; 2 uses
  %i.tm = icmp ult i64 %i.tl, %i.tb
  br i1 %i.tm, label %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit, label %bb.n

_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit: ; preds = %bb.m
  %i.tn = sub nuw nsw i64 %i.tb, %i.tl
  call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %i.tn) #22
  %.pre = load ptr, ptr %11, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit, %bb.m
  %i.to = phi ptr [ %.pre, %_ZNSt3__16vectorIjNS_9allocatorIjEEE6resizeEm.exit ], [ %i.th, %bb.m ]
  call void @_ZNK3jxl10AcStrategy24ComputeNaturalCoeffOrderEPj(ptr noundef nonnull align 4 dereferenceable(5) %12, ptr noundef %i.to) #20
  %i.tp = and i32 %i.so, %.0150369
  %.not188.not = icmp eq i32 %i.tp, 0
  %i.tq = mul nuw nsw i32 %i.sn, 3                ; 3 uses
  br i1 %.not188.not, label %.preheader, label %.preheader261

.preheader261:                                    ; preds = %bb.n
  %invariant.op = add nuw nsw i32 %i.tq, 1
  %i.tr = uitofp nneg i64 %i.tb to double
  %sqrt.i = call double @llvm.sqrt.f64(double %i.tr)
  %i.ts = fdiv double 1.000000e+00, %sqrt.i
  %i.tt = fptrunc double %i.ts to float           ; 6 uses
  %.idx260 = shl nuw nsw i64 %i.tb, 4             ; 6 uses
  %i.tu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.tb, i1 true)
  %i.tv = shl nuw nsw i64 %i.tu, 1
  %i.tw = xor i64 %i.tv, 126                      ; 3 uses
  %i.tx = zext nneg i32 %invariant.op to i64      ; 5 uses
  %i.ty = zext nneg i32 %i.tq to i64
  %.val191 = load ptr, ptr %i.sj, align 8, !tbaa !14 ; 22 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL17kCoeffOrderOffsetE, i64 %i.ty
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !19 ; 2 uses
  %i.ub = shl i64 %i.ua, 6                        ; 2 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL17kCoeffOrderOffsetE, i64 %i.tx
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !19 ; 4 uses
  %i.ue = sub i64 %i.ud, %i.ua
  %i.uf = shl i64 %i.ue, 6
  %i.ug = icmp eq i64 %i.uf, %i.tb
  br i1 %i.ug, label %bb.q, label %.thread

.preheader:                                       ; preds = %bb.n
  %i.uh = zext nneg i32 %i.tq to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL17kCoeffOrderOffsetE, i64 %i.uh ; 4 uses
  %i.ui = load ptr, ptr %11, align 8              ; 3 uses
  %i.uj = shl nuw nsw i64 %i.tb, 2                ; 3 uses
  %i.uk = load i64, ptr %invariant.gep, align 8, !tbaa !19 ; 2 uses
  %gep365 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8
  %i.ul = load i64, ptr %gep365, align 8, !tbaa !19 ; 3 uses
  %i.um = sub i64 %i.ul, %i.uk
  %i.un = shl i64 %i.um, 6
  %i.uo = icmp eq i64 %i.un, %i.tb
  br i1 %i.uo, label %bb.o, label %.thread

bb.o:                                             ; preds = %.preheader
  %.idx = shl i64 %i.uk, 8
  %i.up = getelementptr inbounds nuw i8, ptr %8, i64 %.idx
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.up, ptr align 4 %i.ui, i64 %i.uj, i1 false)
  %gep365.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  %i.uq = load i64, ptr %gep365.1, align 8, !tbaa !19 ; 3 uses
  %i.ur = sub i64 %i.uq, %i.ul
  %i.us = shl i64 %i.ur, 6
  %i.ut = icmp eq i64 %i.us, %i.tb
  br i1 %i.ut, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %.idx.1 = shl i64 %i.ul, 8
  %i.uu = getelementptr inbounds nuw i8, ptr %8, i64 %.idx.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uu, ptr align 4 %i.ui, i64 %i.uj, i1 false)
  %gep365.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 24
  %i.uv = load i64, ptr %gep365.2, align 8, !tbaa !19
  %i.uw = sub i64 %i.uv, %i.uq
  %i.ux = shl i64 %i.uw, 6
  %i.uy = icmp eq i64 %i.ux, %i.tb
  br i1 %i.uy, label %.thread244.loopexit, label %.thread

.thread244.loopexit:                              ; preds = %bb.p
  %.idx.2 = shl i64 %i.uq, 8
  %i.uz = getelementptr inbounds nuw i8, ptr %8, i64 %.idx.2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.uz, ptr align 4 %i.ui, i64 %i.uj, i1 false)
  br label %.thread244

bb.q:                                             ; preds = %.preheader261
  %.not381 = icmp eq i64 %i.tb, 0
  br i1 %.not381, label %._crit_edge361, label %.lr.ph356

.lr.ph356:                                        ; preds = %bb.q
  %i.va = load ptr, ptr %11, align 8, !tbaa !31   ; 2 uses
  %i.vb = getelementptr [8 x i8], ptr %i.c, i64 %i.ub ; 2 uses
  br label %bb.r

.lr.ph360:                                        ; preds = %bb.r
  %i.vc = getelementptr inbounds nuw i8, ptr %.val191, i64 %.idx260
  call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl17ComputeCoeffOrderENS2_9SpeedTierERKNS2_7ACImageERKNS2_15AcStrategyImageERKNS2_15FrameDimensionsERjjjjPjE3$_1PZNS2_17ComputeCoeffOrderES3_S6_S9_SC_SD_jjjSE_E11PosAndCountLb0EEEvT1_SJ_T0_NS_15iterator_traitsISJ_E15difference_typeEb"(ptr noundef nonnull %.val191, ptr noundef nonnull %i.vc, i64 noundef %i.tw, i1 noundef zeroext true) #22
  %i.vd = getelementptr [4 x i8], ptr %8, i64 %i.ub ; 9 uses
  %i.ve = load ptr, ptr %11, align 8, !tbaa !31   ; 9 uses
  %n.vec668 = add nsw i64 %i.tb, -8               ; 4 uses
  br label %vector.body669

vector.body669:                                   ; preds = %vector.body669, %.lr.ph360
  %index670 = phi i64 [ 0, %.lr.ph360 ], [ %index.next675, %vector.body669 ] ; 11 uses
  %vec.phi671 = phi <4 x i1> [ zeroinitializer, %.lr.ph360 ], [ %i.wq, %vector.body669 ]
  %vec.phi672 = phi <4 x i1> [ zeroinitializer, %.lr.ph360 ], [ %i.wr, %vector.body669 ]
  %i.vf = getelementptr inbounds nuw [16 x i8], ptr %.val191, i64 %index670
  %i.vg = getelementptr inbounds nuw [16 x i8], ptr %.val191, i64 %index670
end_hunk_0
