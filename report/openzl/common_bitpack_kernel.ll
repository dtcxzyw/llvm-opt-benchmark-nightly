Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/common_bitpack_kernel?download=true
inline.NumInlined: 124
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 41
begin_hunk_0_@ZS_bitpackEncode64:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ei
  %i.em = load i64, ptr %i.el, align 8, !tbaa !27
  %.0.extract.trunc41.i.1 = trunc i64 %i.em to i40
  store i40 %.0.extract.trunc41.i.1, ptr %i.ek, align 1
  %i.en = or disjoint i64 %.0.i2455.i, 2          ; 2 uses
  %i.eo = mul i64 %i.en, 5
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.en
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !27
  %.0.extract.trunc41.i.2 = trunc i64 %i.er to i40
  store i40 %.0.extract.trunc41.i.2, ptr %i.ep, align 1
  %i.es = or disjoint i64 %.0.i2455.i, 3          ; 2 uses
  %i.et = mul i64 %i.es, 5
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.es
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !27
  %.0.extract.trunc41.i.3 = trunc i64 %i.ew to i40
  store i40 %.0.extract.trunc41.i.3, ptr %i.eu, align 1
  %i.ex = add nuw i64 %.0.i2455.i, 4              ; 2 uses
  %niter140.next.3 = add nuw i64 %niter140, 4     ; 2 uses
  %niter140.ncmp.3 = icmp eq i64 %niter140.next.3, %unroll_iter139
  br i1 %niter140.ncmp.3, label %ZS_bytepackEncode64_impl.exit25.i.unr-lcssa, label %.lr.ph56.i, !llvm.loop !86

ZS_bytepackEncode64_impl.exit25.i.unr-lcssa:      ; preds = %.lr.ph56.i
  %lcmp.mod137.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod137.not, label %ZS_bytepackEncode64_impl.exit25.i, label %.lr.ph56.i.epil.preheader

.lr.ph56.i.epil.preheader:                        ; preds = %ZS_bytepackEncode64_impl.exit25.i.unr-lcssa, %.lr.ph56.i.preheader
  %.0.i2455.i.epil.init = phi i64 [ 0, %.lr.ph56.i.preheader ], [ %i.ex, %ZS_bytepackEncode64_impl.exit25.i.unr-lcssa ]
  %lcmp.mod138 = icmp ne i64 %xtraiter135, 0
  tail call void @llvm.assume(i1 %lcmp.mod138)
  br label %.lr.ph56.i.epil

.lr.ph56.i.epil:                                  ; preds = %.lr.ph56.i.epil, %.lr.ph56.i.epil.preheader
  %.0.i2455.i.epil = phi i64 [ %i.fc, %.lr.ph56.i.epil ], [ %.0.i2455.i.epil.init, %.lr.ph56.i.epil.preheader ] ; 3 uses
  %epil.iter136 = phi i64 [ %epil.iter136.next, %.lr.ph56.i.epil ], [ 0, %.lr.ph56.i.epil.preheader ]
  %i.ey = mul i64 %.0.i2455.i.epil, 5
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.i2455.i.epil
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !27
  %.0.extract.trunc41.i.epil = trunc i64 %i.fb to i40
  store i40 %.0.extract.trunc41.i.epil, ptr %i.ez, align 1
  %i.fc = add nuw i64 %.0.i2455.i.epil, 1
  %epil.iter136.next = add i64 %epil.iter136, 1   ; 2 uses
  %epil.iter136.cmp.not = icmp eq i64 %epil.iter136.next, %xtraiter135
  br i1 %epil.iter136.cmp.not, label %ZS_bytepackEncode64_impl.exit25.i, label %.lr.ph56.i.epil, !llvm.loop !90

ZS_bytepackEncode64_impl.exit25.i:                ; preds = %.lr.ph56.i.epil, %ZS_bytepackEncode64_impl.exit25.i.unr-lcssa
  %i.fd = mul i64 %3, 5
  br label %ZS_bytepackEncode64.exit

.lr.ph54.i:                                       ; preds = %.lr.ph54.i, %.lr.ph54.i.preheader.new
  %.0.i2253.i = phi i64 [ 0, %.lr.ph54.i.preheader.new ], [ %i.fx, %.lr.ph54.i ] ; 6 uses
  %niter134 = phi i64 [ 0, %.lr.ph54.i.preheader.new ], [ %niter134.next.3, %.lr.ph54.i ]
  %i.fe = mul i64 %.0.i2253.i, 6
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fe
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.i2253.i
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !27
  %.0.extract.trunc43.i = trunc i64 %i.fh to i48
  store i48 %.0.extract.trunc43.i, ptr %i.ff, align 1
  %i.fi = or disjoint i64 %.0.i2253.i, 1          ; 2 uses
  %i.fj = mul i64 %i.fi, 6
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fi
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !27
  %.0.extract.trunc43.i.1 = trunc i64 %i.fm to i48
  store i48 %.0.extract.trunc43.i.1, ptr %i.fk, align 1
  %i.fn = or disjoint i64 %.0.i2253.i, 2          ; 2 uses
  %i.fo = mul i64 %i.fn, 6
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 %i.fo
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fn
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !27
  %.0.extract.trunc43.i.2 = trunc i64 %i.fr to i48
  store i48 %.0.extract.trunc43.i.2, ptr %i.fp, align 1
  %i.fs = or disjoint i64 %.0.i2253.i, 3          ; 2 uses
  %i.ft = mul i64 %i.fs, 6
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fs
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !27
  %.0.extract.trunc43.i.3 = trunc i64 %i.fw to i48
  store i48 %.0.extract.trunc43.i.3, ptr %i.fu, align 1
  %i.fx = add nuw i64 %.0.i2253.i, 4              ; 2 uses
  %niter134.next.3 = add nuw i64 %niter134, 4     ; 2 uses
  %niter134.ncmp.3 = icmp eq i64 %niter134.next.3, %unroll_iter133
  br i1 %niter134.ncmp.3, label %ZS_bytepackEncode64_impl.exit23.i.unr-lcssa, label %.lr.ph54.i, !llvm.loop !86

ZS_bytepackEncode64_impl.exit23.i.unr-lcssa:      ; preds = %.lr.ph54.i
  %lcmp.mod131.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod131.not, label %ZS_bytepackEncode64_impl.exit23.i, label %.lr.ph54.i.epil.preheader

.lr.ph54.i.epil.preheader:                        ; preds = %ZS_bytepackEncode64_impl.exit23.i.unr-lcssa, %.lr.ph54.i.preheader
  %.0.i2253.i.epil.init = phi i64 [ 0, %.lr.ph54.i.preheader ], [ %i.fx, %ZS_bytepackEncode64_impl.exit23.i.unr-lcssa ]
  %lcmp.mod132 = icmp ne i64 %xtraiter129, 0
  tail call void @llvm.assume(i1 %lcmp.mod132)
  br label %.lr.ph54.i.epil

.lr.ph54.i.epil:                                  ; preds = %.lr.ph54.i.epil, %.lr.ph54.i.epil.preheader
  %.0.i2253.i.epil = phi i64 [ %i.gc, %.lr.ph54.i.epil ], [ %.0.i2253.i.epil.init, %.lr.ph54.i.epil.preheader ] ; 3 uses
  %epil.iter130 = phi i64 [ %epil.iter130.next, %.lr.ph54.i.epil ], [ 0, %.lr.ph54.i.epil.preheader ]
  %i.fy = mul i64 %.0.i2253.i.epil, 6
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.i2253.i.epil
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !27
  %.0.extract.trunc43.i.epil = trunc i64 %i.gb to i48
  store i48 %.0.extract.trunc43.i.epil, ptr %i.fz, align 1
  %i.gc = add nuw i64 %.0.i2253.i.epil, 1
  %epil.iter130.next = add i64 %epil.iter130, 1   ; 2 uses
  %epil.iter130.cmp.not = icmp eq i64 %epil.iter130.next, %xtraiter129
  br i1 %epil.iter130.cmp.not, label %ZS_bytepackEncode64_impl.exit23.i, label %.lr.ph54.i.epil, !llvm.loop !91

ZS_bytepackEncode64_impl.exit23.i:                ; preds = %.lr.ph54.i.epil, %ZS_bytepackEncode64_impl.exit23.i.unr-lcssa
  %i.gd = mul i64 %3, 6
  br label %ZS_bytepackEncode64.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0.i52.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.gx, %.lr.ph.i ] ; 6 uses
  %niter128 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter128.next.3, %.lr.ph.i ]
  %i.ge = mul i64 %.0.i52.i, 7
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.i52.i
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !27
  %.0.extract.trunc45.i = trunc i64 %i.gh to i56
  store i56 %.0.extract.trunc45.i, ptr %i.gf, align 1
  %i.gi = or disjoint i64 %.0.i52.i, 1            ; 2 uses
  %i.gj = mul i64 %i.gi, 7
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gi
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !27
  %.0.extract.trunc45.i.1 = trunc i64 %i.gm to i56
  store i56 %.0.extract.trunc45.i.1, ptr %i.gk, align 1
  %i.gn = or disjoint i64 %.0.i52.i, 2            ; 2 uses
  %i.go = mul i64 %i.gn, 7
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gn
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !27
  %.0.extract.trunc45.i.2 = trunc i64 %i.gr to i56
  store i56 %.0.extract.trunc45.i.2, ptr %i.gp, align 1
  %i.gs = or disjoint i64 %.0.i52.i, 3            ; 2 uses
  %i.gt = mul i64 %i.gs, 7
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gs
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !27
  %.0.extract.trunc45.i.3 = trunc i64 %i.gw to i56
  store i56 %.0.extract.trunc45.i.3, ptr %i.gu, align 1
  %i.gx = add nuw i64 %.0.i52.i, 4                ; 2 uses
  %niter128.next.3 = add nuw i64 %niter128, 4     ; 2 uses
  %niter128.ncmp.3 = icmp eq i64 %niter128.next.3, %unroll_iter127
  br i1 %niter128.ncmp.3, label %ZS_bytepackEncode64_impl.exit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !86

ZS_bytepackEncode64_impl.exit.i.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod125.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod125.not, label %ZS_bytepackEncode64_impl.exit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ZS_bytepackEncode64_impl.exit.i.unr-lcssa, %.lr.ph.i.preheader
  %.0.i52.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.gx, %ZS_bytepackEncode64_impl.exit.i.unr-lcssa ]
  %lcmp.mod126 = icmp ne i64 %xtraiter123, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0.i52.i.epil = phi i64 [ %i.hc, %.lr.ph.i.epil ], [ %.0.i52.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter124 = phi i64 [ %epil.iter124.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.gy = mul i64 %.0.i52.i.epil, 7
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 %i.gy
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0.i52.i.epil
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !27
  %.0.extract.trunc45.i.epil = trunc i64 %i.hb to i56
  store i56 %.0.extract.trunc45.i.epil, ptr %i.gz, align 1
  %i.hc = add nuw i64 %.0.i52.i.epil, 1
  %epil.iter124.next = add i64 %epil.iter124, 1   ; 2 uses
  %epil.iter124.cmp.not = icmp eq i64 %epil.iter124.next, %xtraiter123
  br i1 %epil.iter124.cmp.not, label %ZS_bytepackEncode64_impl.exit.i, label %.lr.ph.i.epil, !llvm.loop !92

ZS_bytepackEncode64_impl.exit.i:                  ; preds = %.lr.ph.i.epil, %ZS_bytepackEncode64_impl.exit.i.unr-lcssa
  %i.hd = mul i64 %3, 7
  br label %ZS_bytepackEncode64.exit

bb.e:                                             ; preds = %ZS_bitpackEncodeEdgeCase.exit
  %i.he = sext i32 %4 to i64                      ; 3 uses
  %i.hf = mul i64 %3, %i.he
  %i.hg = add i64 %i.hf, 7
  %i.hh = lshr i64 %i.hg, 3                       ; 2 uses
  %i.hi = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 2305843009213693952) %i.hh, i64 7)
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 %i.hi ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 %i.hh
  %i.hl = and i64 %i.he, 4294967295               ; 9 uses
  %i.hm = icmp samesign ult i64 %i.hl, 57
  br i1 %i.hm, label %bb.f, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.e
  %i.hn = add nsw i64 %i.he, 4294967264
  %i.ho = and i64 %i.hn, 4294967295               ; 2 uses
  %notmask.i42.i = shl nsw i64 -1, %i.ho
  %i.hp = xor i64 %notmask.i42.i, -1
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %.rhs.trunc.i = trunc i32 %4 to i8              ; 2 uses
  %i.hq = udiv i8 56, %.rhs.trunc.i
  %.zext.i = zext nneg i8 %i.hq to i64            ; 5 uses
  %i.hr = urem i64 %3, %.zext.i
  %i.hs = sub nuw i64 %3, %i.hr
  %.not123.i = icmp ult i64 %3, %.zext.i
  br i1 %.not123.i, label %.preheader.i21, label %.preheader93.lr.ph.i

.preheader93.lr.ph.i:                             ; preds = %bb.f
  %notmask.i.i = shl nsw i64 -1, %i.hl
  %i.ht = xor i64 %notmask.i.i, -1                ; 2 uses
  %min.iters.check = icmp ugt i8 %.rhs.trunc.i, 14
  %n.vec = and i64 %.zext.i, 60                   ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.hl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hu = mul nuw nsw i64 %n.vec, %i.hl
  %i.hv = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %broadcast.splatinsert46 = insertelement <2 x i64> poison, i64 %i.ht, i64 0
  %broadcast.splat47 = shufflevector <2 x i64> %broadcast.splatinsert46, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hw = mul nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> %i.hv, %i.hv
  %cmp.n = icmp eq i64 %n.vec, %.zext.i
  br label %.preheader93.i

.preheader93.i:                                   ; preds = %ZS_BitCStreamFF_flush.exit.i, %.preheader93.lr.ph.i
  %.034111.i = phi i64 [ 0, %.preheader93.lr.ph.i ], [ %i.hx, %ZS_BitCStreamFF_flush.exit.i ] ; 5 uses
  %.sroa.24.0110.i = phi i64 [ 0, %.preheader93.lr.ph.i ], [ %.sroa.24.5.i, %ZS_BitCStreamFF_flush.exit.i ] ; 4 uses
  %.sroa.45.0109.i = phi ptr [ %0, %.preheader93.lr.ph.i ], [ %.sroa.45.3.i, %ZS_BitCStreamFF_flush.exit.i ] ; 4 uses
  %.sroa.0.0108.i = phi i64 [ 0, %.preheader93.lr.ph.i ], [ %.sroa.0.5.i, %ZS_BitCStreamFF_flush.exit.i ] ; 3 uses
  %i.hx = add i64 %.034111.i, %.zext.i            ; 5 uses
  %i.hy = icmp ult i64 %.034111.i, %i.hx
  br i1 %i.hy, label %.lr.ph104.i.preheader, label %._crit_edge.i

.lr.ph104.i.preheader:                            ; preds = %.preheader93.i
  br i1 %min.iters.check, label %.lr.ph104.i.preheader116, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph104.i.preheader
  %i.hz = add i64 %.034111.i, %n.vec
  %i.ia = add i64 %.sroa.24.0110.i, %i.hu         ; 2 uses
  %i.ib = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.0.0108.i, i64 0
  %broadcast.splatinsert48 = insertelement <2 x i64> poison, i64 %.sroa.24.0110.i, i64 0
  %broadcast.splat49 = shufflevector <2 x i64> %broadcast.splatinsert48, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i64> %broadcast.splat49, %i.hw
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.034111.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ib, %vector.ph ], [ %i.ij, %vector.body ]
  %vec.phi50 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ik, %vector.body ]
  %step.add = add <2 x i64> %vec.ind, %i.hv
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %index ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %wide.load = load <2 x i64>, ptr %i.id, align 8, !tbaa !27
  %wide.load51 = load <2 x i64>, ptr %i.ie, align 8, !tbaa !27
  %i.if = and <2 x i64> %wide.load, %broadcast.splat47
  %i.ig = and <2 x i64> %wide.load51, %broadcast.splat47
  %i.ih = shl <2 x i64> %i.if, %vec.ind
  %i.ii = shl <2 x i64> %i.ig, %step.add
  %i.ij = or <2 x i64> %i.ih, %vec.phi            ; 2 uses
  %i.ik = or <2 x i64> %i.ii, %vec.phi50          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.ik, %i.ij
  %i.im = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph104.i.preheader116

.lr.ph104.i.preheader116:                         ; preds = %.lr.ph104.i.preheader, %middle.block
  %.033103.i.ph = phi i64 [ %.034111.i, %.lr.ph104.i.preheader ], [ %i.hz, %middle.block ]
  %.sroa.24.1102.i.ph = phi i64 [ %.sroa.24.0110.i, %.lr.ph104.i.preheader ], [ %i.ia, %middle.block ]
  %.sroa.0.1101.i.ph = phi i64 [ %.sroa.0.0108.i, %.lr.ph104.i.preheader ], [ %i.im, %middle.block ]
  br label %.lr.ph104.i

.preheader.i21:                                   ; preds = %ZS_BitCStreamFF_flush.exit.i, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %.sroa.0.5.i, %ZS_BitCStreamFF_flush.exit.i ] ; 3 uses
  %.sroa.45.0.lcssa.i = phi ptr [ %0, %bb.f ], [ %.sroa.45.3.i, %ZS_BitCStreamFF_flush.exit.i ] ; 4 uses
  %.sroa.24.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %.sroa.24.5.i, %ZS_BitCStreamFF_flush.exit.i ] ; 4 uses
  %.034.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.hx, %ZS_BitCStreamFF_flush.exit.i ] ; 5 uses
  %i.in = icmp ult i64 %.034.lcssa.i, %3
  br i1 %i.in, label %.lr.ph119.i, label %._crit_edge120.i

.lr.ph119.i:                                      ; preds = %.preheader.i21
  %notmask.i37.i = shl nsw i64 -1, %i.hl
  %i.io = xor i64 %notmask.i37.i, -1              ; 2 uses
  %i.ip = sub nuw i64 %3, %.034.lcssa.i           ; 3 uses
  %min.iters.check54 = icmp ult i64 %i.ip, 4
  br i1 %min.iters.check54, label %scalar.ph53.preheader, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph119.i
  %n.vec56 = and i64 %i.ip, -4                    ; 4 uses
  %broadcast.splatinsert57 = insertelement <2 x i64> poison, i64 %i.hl, i64 0
  %broadcast.splat58 = shufflevector <2 x i64> %broadcast.splatinsert57, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iq = add i64 %.034.lcssa.i, %n.vec56
  %i.ir = mul i64 %n.vec56, %i.hl
  %i.is = add i64 %.sroa.24.0.lcssa.i, %i.ir      ; 2 uses
  %i.it = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.0.0.lcssa.i, i64 0
  %i.iu = shl nuw nsw <2 x i64> %broadcast.splat58, splat (i64 1) ; 3 uses
  %broadcast.splatinsert59 = insertelement <2 x i64> poison, i64 %i.io, i64 0
  %broadcast.splat60 = shufflevector <2 x i64> %broadcast.splatinsert59, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert61 = insertelement <2 x i64> poison, i64 %.sroa.24.0.lcssa.i, i64 0
  %broadcast.splat62 = shufflevector <2 x i64> %broadcast.splatinsert61, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.iv = mul nuw nsw <2 x i64> %broadcast.splat58, <i64 0, i64 1>
  %induction63 = add <2 x i64> %broadcast.splat62, %i.iv
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.034.lcssa.i
  %invariant.op174 = add <2 x i64> %i.iu, %i.iu
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph55
  %index65 = phi i64 [ 0, %vector.ph55 ], [ %index.next72, %vector.body64 ] ; 2 uses
  %vec.ind66 = phi <2 x i64> [ %induction63, %vector.ph55 ], [ %vec.ind.next73.reass, %vector.body64 ] ; 3 uses
  %vec.phi67 = phi <2 x i64> [ %i.it, %vector.ph55 ], [ %i.jd, %vector.body64 ]
  %vec.phi68 = phi <2 x i64> [ zeroinitializer, %vector.ph55 ], [ %i.je, %vector.body64 ]
  %step.add69 = add <2 x i64> %vec.ind66, %i.iu
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %index65 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load70 = load <2 x i64>, ptr %i.ix, align 8, !tbaa !27
  %wide.load71 = load <2 x i64>, ptr %i.iy, align 8, !tbaa !27
  %i.iz = and <2 x i64> %wide.load70, %broadcast.splat60
  %i.ja = and <2 x i64> %wide.load71, %broadcast.splat60
  %i.jb = shl <2 x i64> %i.iz, %vec.ind66
  %i.jc = shl <2 x i64> %i.ja, %step.add69
  %i.jd = or <2 x i64> %i.jb, %vec.phi67          ; 2 uses
  %i.je = or <2 x i64> %i.jc, %vec.phi68          ; 2 uses
  %index.next72 = add nuw i64 %index65, 4         ; 2 uses
  %vec.ind.next73.reass = add <2 x i64> %vec.ind66, %invariant.op174
  %i.jf = icmp eq i64 %index.next72, %n.vec56
  br i1 %i.jf, label %middle.block74, label %vector.body64, !llvm.loop !94

middle.block74:                                   ; preds = %vector.body64
  %bin.rdx75 = or <2 x i64> %i.je, %i.jd
  %i.jg = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx75) ; 2 uses
  %cmp.n76 = icmp eq i64 %i.ip, %n.vec56
  br i1 %cmp.n76, label %._crit_edge120.i, label %scalar.ph53.preheader

scalar.ph53.preheader:                            ; preds = %.lr.ph119.i, %middle.block74
  %.1118.i.ph = phi i64 [ %.034.lcssa.i, %.lr.ph119.i ], [ %i.iq, %middle.block74 ]
  %.sroa.24.2117.i.ph = phi i64 [ %.sroa.24.0.lcssa.i, %.lr.ph119.i ], [ %i.is, %middle.block74 ]
  %.sroa.0.2116.i.ph = phi i64 [ %.sroa.0.0.lcssa.i, %.lr.ph119.i ], [ %i.jg, %middle.block74 ]
  br label %scalar.ph53

._crit_edge.i:                                    ; preds = %.lr.ph104.i, %middle.block, %.preheader93.i
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0108.i, %.preheader93.i ], [ %i.im, %middle.block ], [ %i.jr, %.lr.ph104.i ] ; 3 uses
  %.sroa.24.1.lcssa.i = phi i64 [ %.sroa.24.0110.i, %.preheader93.i ], [ %i.ia, %middle.block ], [ %i.js, %.lr.ph104.i ] ; 4 uses
  %.not.i.i = icmp ult ptr %.sroa.45.0109.i, %i.hj
  br i1 %.not.i.i, label %bb.g, label %ZS_BitCStreamFF_flush.exit.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.jh = lshr i64 %.sroa.24.1.lcssa.i, 3
  store i64 %.sroa.0.1.lcssa.i, ptr %.sroa.45.0109.i, align 1
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.45.0109.i, i64 %i.jh
  %i.jj = and i64 %.sroa.24.1.lcssa.i, 7
  %i.jk = and i64 %.sroa.24.1.lcssa.i, -8
  %i.jl = lshr i64 %.sroa.0.1.lcssa.i, %i.jk
  br label %ZS_BitCStreamFF_flush.exit.i

ZS_BitCStreamFF_flush.exit.i:                     ; preds = %bb.g, %._crit_edge.i
  %.sroa.0.5.i = phi i64 [ %i.jl, %bb.g ], [ %.sroa.0.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.45.3.i = phi ptr [ %i.ji, %bb.g ], [ %.sroa.45.0109.i, %._crit_edge.i ] ; 2 uses
  %.sroa.24.5.i = phi i64 [ %i.jj, %bb.g ], [ %.sroa.24.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.jm = icmp ult i64 %i.hx, %i.hs
  br i1 %i.jm, label %.preheader93.i, label %.preheader.i21, !llvm.loop !95

.lr.ph104.i:                                      ; preds = %.lr.ph104.i.preheader116, %.lr.ph104.i
  %.033103.i = phi i64 [ %i.jt, %.lr.ph104.i ], [ %.033103.i.ph, %.lr.ph104.i.preheader116 ] ; 2 uses
  %.sroa.24.1102.i = phi i64 [ %i.js, %.lr.ph104.i ], [ %.sroa.24.1102.i.ph, %.lr.ph104.i.preheader116 ] ; 2 uses
  %.sroa.0.1101.i = phi i64 [ %i.jr, %.lr.ph104.i ], [ %.sroa.0.1101.i.ph, %.lr.ph104.i.preheader116 ]
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.033103.i
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !27
  %i.jp = and i64 %i.jo, %i.ht
  %i.jq = shl i64 %i.jp, %.sroa.24.1102.i
  %i.jr = or i64 %i.jq, %.sroa.0.1101.i           ; 2 uses
  %i.js = add i64 %.sroa.24.1102.i, %i.hl         ; 2 uses
  %i.jt = add nuw i64 %.033103.i, 1               ; 2 uses
  %i.ju = icmp ult i64 %i.jt, %i.hx
  br i1 %i.ju, label %.lr.ph104.i, label %._crit_edge.i, !llvm.loop !96

scalar.ph53:                                      ; preds = %scalar.ph53.preheader, %scalar.ph53
  %.1118.i = phi i64 [ %i.kb, %scalar.ph53 ], [ %.1118.i.ph, %scalar.ph53.preheader ] ; 2 uses
  %.sroa.24.2117.i = phi i64 [ %i.ka, %scalar.ph53 ], [ %.sroa.24.2117.i.ph, %scalar.ph53.preheader ] ; 2 uses
  %.sroa.0.2116.i = phi i64 [ %i.jz, %scalar.ph53 ], [ %.sroa.0.2116.i.ph, %scalar.ph53.preheader ]
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.1118.i
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !27
  %i.jx = and i64 %i.jw, %i.io
  %i.jy = shl i64 %i.jx, %.sroa.24.2117.i
  %i.jz = or i64 %i.jy, %.sroa.0.2116.i           ; 2 uses
  %i.ka = add i64 %.sroa.24.2117.i, %i.hl         ; 2 uses
  %i.kb = add nuw i64 %.1118.i, 1                 ; 2 uses
  %exitcond128.not.i = icmp eq i64 %i.kb, %3
  br i1 %exitcond128.not.i, label %._crit_edge120.i, label %scalar.ph53, !llvm.loop !97

._crit_edge120.i:                                 ; preds = %scalar.ph53, %middle.block74, %.preheader.i21
  %.sroa.0.2.lcssa.i = phi i64 [ %.sroa.0.0.lcssa.i, %.preheader.i21 ], [ %i.jg, %middle.block74 ], [ %i.jz, %scalar.ph53 ] ; 3 uses
  %.sroa.24.2.lcssa.i = phi i64 [ %.sroa.24.0.lcssa.i, %.preheader.i21 ], [ %i.is, %middle.block74 ], [ %i.ka, %scalar.ph53 ] ; 4 uses
  %.not.i38.i = icmp ult ptr %.sroa.45.0.lcssa.i, %i.hj
  br i1 %.not.i38.i, label %bb.h, label %ZS_BitCStreamFF_flush.exit39.i

bb.h:                                             ; preds = %._crit_edge120.i
  %i.kc = lshr i64 %.sroa.24.2.lcssa.i, 3
  store i64 %.sroa.0.2.lcssa.i, ptr %.sroa.45.0.lcssa.i, align 1
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.45.0.lcssa.i, i64 %i.kc
  %i.ke = and i64 %.sroa.24.2.lcssa.i, 7
end_hunk_0
begin_hunk_1_@ZS_bitpackDecode64:bb.a
  %i.fc = mul i64 %1, 6
  br label %ZS_bytepackDecode64.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0.i82.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.fs, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.fd = mul i64 %.0.i82.i, 7
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 %i.fd
  %.0.copyload71.i = load i56, ptr %i.fe, align 1
  %.0.insert.ext73.i = zext i56 %.0.copyload71.i to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i82.i
  store i64 %.0.insert.ext73.i, ptr %i.ff, align 8, !tbaa !27
  %i.fg = or disjoint i64 %.0.i82.i, 1            ; 2 uses
  %i.fh = mul i64 %i.fg, 7
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 %i.fh
  %.0.copyload71.i.1 = load i56, ptr %i.fi, align 1
  %.0.insert.ext73.i.1 = zext i56 %.0.copyload71.i.1 to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fg
  store i64 %.0.insert.ext73.i.1, ptr %i.fj, align 8, !tbaa !27
  %i.fk = or disjoint i64 %.0.i82.i, 2            ; 2 uses
  %i.fl = mul i64 %i.fk, 7
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 %i.fl
  %.0.copyload71.i.2 = load i56, ptr %i.fm, align 1
  %.0.insert.ext73.i.2 = zext i56 %.0.copyload71.i.2 to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fk
  store i64 %.0.insert.ext73.i.2, ptr %i.fn, align 8, !tbaa !27
  %i.fo = or disjoint i64 %.0.i82.i, 3            ; 2 uses
  %i.fp = mul i64 %i.fo, 7
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 %i.fp
  %.0.copyload71.i.3 = load i56, ptr %i.fq, align 1
  %.0.insert.ext73.i.3 = zext i56 %.0.copyload71.i.3 to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.fo
  store i64 %.0.insert.ext73.i.3, ptr %i.fr, align 8, !tbaa !27
  %i.fs = add nuw i64 %.0.i82.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ZS_bytepackDecode64_impl.exit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !166

ZS_bytepackDecode64_impl.exit.i.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %ZS_bytepackDecode64_impl.exit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %ZS_bytepackDecode64_impl.exit.i.unr-lcssa, %.lr.ph.i.preheader
  %.0.i82.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.fs, %ZS_bytepackDecode64_impl.exit.i.unr-lcssa ]
  %lcmp.mod85 = icmp ne i64 %xtraiter83, 0
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.0.i82.i.epil = phi i64 [ %i.fw, %.lr.ph.i.epil ], [ %.0.i82.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ft = mul i64 %.0.i82.i.epil, 7
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ft
  %.0.copyload71.i.epil = load i56, ptr %i.fu, align 1
  %.0.insert.ext73.i.epil = zext i56 %.0.copyload71.i.epil to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.i82.i.epil
  store i64 %.0.insert.ext73.i.epil, ptr %i.fv, align 8, !tbaa !27
  %i.fw = add nuw i64 %.0.i82.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter83
  br i1 %epil.iter.cmp.not, label %ZS_bytepackDecode64_impl.exit.i, label %.lr.ph.i.epil, !llvm.loop !172

ZS_bytepackDecode64_impl.exit.i:                  ; preds = %.lr.ph.i.epil, %ZS_bytepackDecode64_impl.exit.i.unr-lcssa
  %i.fx = mul i64 %1, 7
  br label %ZS_bytepackDecode64.exit

bb.f:                                             ; preds = %ZS_bitpackDecodeEdgeCase.exit
  %i.fy = icmp ugt i64 %i.c, 63
  br i1 %i.fy, label %bb.g, label %bb.h, !prof !30

bb.g:                                             ; preds = %bb.f
  %.val.i.i = load i64, ptr %2, align 1, !noalias !185
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 %i.d ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -7
  br label %ZS_BitDStreamFF_init.exit.i

bb.h:                                             ; preds = %bb.f
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 %i.d ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %ZS_BitDStreamFF_loadPartial.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h
  %i.gc = load i8, ptr %2, align 1, !tbaa !19, !noalias !185
  %i.gd = zext i8 %i.gc to i64                    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.d, 1
  br i1 %exitcond.not.i.i.i, label %ZS_BitDStreamFF_loadPartial.exit.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !19, !noalias !185
  %i.gg = zext i8 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 8
  %i.gi = or disjoint i64 %i.gh, %i.gd            ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.d, 2
  br i1 %exitcond.not.i.i.i.1, label %ZS_BitDStreamFF_loadPartial.exit.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !19, !noalias !185
  %i.gl = zext i8 %i.gk to i64
  %i.gm = shl nuw nsw i64 %i.gl, 16
  %i.gn = or disjoint i64 %i.gm, %i.gi            ; 2 uses
  %exitcond.not.i.i.i.2 = icmp eq i64 %i.d, 3
  br i1 %exitcond.not.i.i.i.2, label %ZS_BitDStreamFF_loadPartial.exit.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !19, !noalias !185
  %i.gq = zext i8 %i.gp to i64
  %i.gr = shl nuw nsw i64 %i.gq, 24
  %i.gs = or disjoint i64 %i.gr, %i.gn            ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.d, 4
  br i1 %exitcond.not.i.i.i.3, label %ZS_BitDStreamFF_loadPartial.exit.i.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !19, !noalias !185
  %i.gv = zext i8 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 32
  %i.gx = or disjoint i64 %i.gw, %i.gs            ; 2 uses
  %exitcond.not.i.i.i.4 = icmp eq i64 %i.d, 5
  br i1 %exitcond.not.i.i.i.4, label %ZS_BitDStreamFF_loadPartial.exit.i.i, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.i.i.i.4
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !19, !noalias !185
  %i.ha = zext i8 %i.gz to i64
  %i.hb = shl nuw nsw i64 %i.ha, 40
  %i.hc = or i64 %i.hb, %i.gx                     ; 2 uses
  %exitcond.not.i.i.i.5 = icmp eq i64 %i.d, 6
  br i1 %exitcond.not.i.i.i.5, label %ZS_BitDStreamFF_loadPartial.exit.i.i, label %.lr.ph.i.i.i.6

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i.5
  %i.hd = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !19, !noalias !185
  %i.hf = zext i8 %i.he to i64
  %i.hg = shl nuw nsw i64 %i.hf, 48
  %i.hh = or i64 %i.hg, %i.hc
  br label %ZS_BitDStreamFF_loadPartial.exit.i.i

ZS_BitDStreamFF_loadPartial.exit.i.i:             ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %bb.h
  %.07.lcssa.i.i.i = phi i64 [ 0, %bb.h ], [ %i.gd, %.lr.ph.i.i.i ], [ %i.gi, %.lr.ph.i.i.i.1 ], [ %i.gn, %.lr.ph.i.i.i.2 ], [ %i.gs, %.lr.ph.i.i.i.3 ], [ %i.gx, %.lr.ph.i.i.i.4 ], [ %i.hc, %.lr.ph.i.i.i.5 ], [ %i.hh, %.lr.ph.i.i.i.6 ]
  %i.hi = and i64 %i.c, 56
  %i.hj = sub nuw nsw i64 64, %i.hi
  br label %ZS_BitDStreamFF_init.exit.i

ZS_BitDStreamFF_init.exit.i:                      ; preds = %ZS_BitDStreamFF_loadPartial.exit.i.i, %bb.g
  %.sroa.59.0.i = phi ptr [ %i.ga, %bb.g ], [ %2, %ZS_BitDStreamFF_loadPartial.exit.i.i ] ; 9 uses
  %.sroa.42.3.i = phi ptr [ %2, %bb.g ], [ %i.gb, %ZS_BitDStreamFF_loadPartial.exit.i.i ] ; 2 uses
  %.sroa.17.4.i = phi i64 [ 0, %bb.g ], [ %i.hj, %ZS_BitDStreamFF_loadPartial.exit.i.i ] ; 4 uses
  %.sroa.0.4.i = phi i64 [ %.val.i.i, %bb.g ], [ %.07.lcssa.i.i.i, %ZS_BitDStreamFF_loadPartial.exit.i.i ]
  %.sink.i.i = phi ptr [ %i.fz, %bb.g ], [ %i.gb, %ZS_BitDStreamFF_loadPartial.exit.i.i ] ; 5 uses
  %i.hk = lshr i64 %.sroa.17.4.i, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.42.3.i, i64 %i.hk ; 6 uses
  %i.hm = icmp ult ptr %i.hl, %.sroa.59.0.i
  br i1 %i.hm, label %bb.i, label %bb.j, !prof !30

bb.i:                                             ; preds = %ZS_BitDStreamFF_init.exit.i
  %i.hn = and i64 %.sroa.17.4.i, 7                ; 2 uses
  %.val22.i.i = load i64, ptr %i.hl, align 1
  %i.ho = lshr i64 %.val22.i.i, %i.hn
  br label %ZS_BitDStreamFF_reload.exit.i

bb.j:                                             ; preds = %ZS_BitDStreamFF_init.exit.i
  %.not.i.i = icmp ult ptr %i.hl, %.sink.i.i
  br i1 %.not.i.i, label %bb.k, label %ZS_BitDStreamFF_reload.exit.i

bb.k:                                             ; preds = %bb.j
  %i.hp = getelementptr inbounds i8, ptr %.sroa.59.0.i, i64 -1 ; 2 uses
  %i.hq = ptrtoint ptr %i.hl to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = shl i64 %i.hs, 3
  %i.hu = and i64 %.sroa.17.4.i, 7                ; 2 uses
  %.val.i39.i = load i64, ptr %i.hp, align 1
  %i.hv = or disjoint i64 %i.ht, %i.hu
  %i.hw = lshr i64 %.val.i39.i, %i.hv
  br label %ZS_BitDStreamFF_reload.exit.i

ZS_BitDStreamFF_reload.exit.i:                    ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.42.5.i = phi ptr [ %.sroa.42.3.i, %bb.j ], [ %i.hl, %bb.k ], [ %i.hl, %bb.i ] ; 3 uses
  %.sroa.17.6.i = phi i64 [ %.sroa.17.4.i, %bb.j ], [ %i.hu, %bb.k ], [ %i.hn, %bb.i ] ; 3 uses
  %.sroa.0.5.i = phi i64 [ %.sroa.0.4.i, %bb.j ], [ %i.hw, %bb.k ], [ %i.ho, %bb.i ] ; 3 uses
  %i.hx = and i64 %i.a, 4294967295                ; 11 uses
  %i.hy = icmp samesign ult i64 %i.hx, 58
  br i1 %i.hy, label %bb.l, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %ZS_BitDStreamFF_reload.exit.i
  %i.hz = getelementptr inbounds i8, ptr %.sroa.59.0.i, i64 -1 ; 3 uses
  %i.ia = ptrtoint ptr %i.hz to i64               ; 2 uses
  %i.ib = add nsw i64 %i.a, 4294967264            ; 2 uses
  %i.ic = and i64 %i.ib, 4294967295               ; 2 uses
  %i.id = and i64 %i.ib, 63
  %notmask.i.i64.i = shl nsw i64 -1, %i.id
  %i.ie = xor i64 %notmask.i.i64.i, -1
  br label %bb.t

bb.l:                                             ; preds = %ZS_BitDStreamFF_reload.exit.i
  %.rhs.trunc.i = trunc i32 %4 to i8              ; 2 uses
  %i.if = udiv i8 57, %.rhs.trunc.i
  %.zext.i = zext nneg i8 %i.if to i64            ; 4 uses
  %i.ig = urem i64 %1, %.zext.i
  %i.ih = sub nuw i64 %1, %i.ig
  %.not121.i = icmp ult i64 %1, %.zext.i
  br i1 %.not121.i, label %.preheader.i21, label %.preheader94.lr.ph.i

.preheader94.lr.ph.i:                             ; preds = %bb.l
  %i.ii = and i64 %i.a, 63
  %notmask.i.i.i = shl nsw i64 -1, %i.ii
  %i.ij = xor i64 %notmask.i.i.i, -1              ; 5 uses
  %i.ik = getelementptr inbounds i8, ptr %.sroa.59.0.i, i64 -1 ; 2 uses
  %i.il = ptrtoint ptr %i.ik to i64
  %xtraiter = and i64 %.zext.i, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.im = icmp ugt i8 %.rhs.trunc.i, 14
  %i.in = shl nuw nsw i64 %i.hx, 2
  br label %.preheader94.i

.preheader94.i:                                   ; preds = %ZS_BitDStreamFF_reload.exit46.i, %.preheader94.lr.ph.i
  %.036111.i = phi i64 [ 0, %.preheader94.lr.ph.i ], [ %i.io, %ZS_BitDStreamFF_reload.exit46.i ] ; 4 uses
  %.sroa.0.0110.i = phi i64 [ %.sroa.0.5.i, %.preheader94.lr.ph.i ], [ %.sroa.0.6.i, %ZS_BitDStreamFF_reload.exit46.i ] ; 3 uses
  %.sroa.17.0109.i = phi i64 [ %.sroa.17.6.i, %.preheader94.lr.ph.i ], [ %.sroa.17.8.i, %ZS_BitDStreamFF_reload.exit46.i ] ; 3 uses
  %.sroa.42.0108.i = phi ptr [ %.sroa.42.5.i, %.preheader94.lr.ph.i ], [ %.sroa.42.7.i, %ZS_BitDStreamFF_reload.exit46.i ] ; 2 uses
  %i.io = add i64 %.036111.i, %.zext.i            ; 5 uses
  %i.ip = icmp ult i64 %.036111.i, %i.io
  br i1 %i.ip, label %.lr.ph105.i.preheader, label %._crit_edge.i

.lr.ph105.i.preheader:                            ; preds = %.preheader94.i
  br i1 %lcmp.mod.not, label %.lr.ph105.i.prol.loopexit, label %.lr.ph105.i.prol

.lr.ph105.i.prol:                                 ; preds = %.lr.ph105.i.preheader, %.lr.ph105.i.prol
  %.035104.i.prol = phi i64 [ %i.iu, %.lr.ph105.i.prol ], [ %.036111.i, %.lr.ph105.i.preheader ] ; 2 uses
  %.sroa.0.1103.i.prol = phi i64 [ %i.ir, %.lr.ph105.i.prol ], [ %.sroa.0.0110.i, %.lr.ph105.i.preheader ] ; 2 uses
  %.sroa.17.1102.i.prol = phi i64 [ %i.is, %.lr.ph105.i.prol ], [ %.sroa.17.0109.i, %.lr.ph105.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph105.i.prol ], [ 0, %.lr.ph105.i.preheader ]
  %i.iq = and i64 %.sroa.0.1103.i.prol, %i.ij
  %i.ir = lshr i64 %.sroa.0.1103.i.prol, %i.hx    ; 3 uses
  %i.is = add i64 %.sroa.17.1102.i.prol, %i.hx    ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035104.i.prol
  store i64 %i.iq, ptr %i.it, align 8, !tbaa !27
  %i.iu = add nuw i64 %.035104.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph105.i.prol.loopexit, label %.lr.ph105.i.prol, !llvm.loop !175

.lr.ph105.i.prol.loopexit:                        ; preds = %.lr.ph105.i.prol, %.lr.ph105.i.preheader
  %.035104.i.unr = phi i64 [ %.036111.i, %.lr.ph105.i.preheader ], [ %i.iu, %.lr.ph105.i.prol ]
  %.sroa.0.1103.i.unr = phi i64 [ %.sroa.0.0110.i, %.lr.ph105.i.preheader ], [ %i.ir, %.lr.ph105.i.prol ]
  %.sroa.17.1102.i.unr = phi i64 [ %.sroa.17.0109.i, %.lr.ph105.i.preheader ], [ %i.is, %.lr.ph105.i.prol ]
  %.lcssa79.unr = phi i64 [ poison, %.lr.ph105.i.preheader ], [ %i.ir, %.lr.ph105.i.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph105.i.preheader ], [ %i.is, %.lr.ph105.i.prol ]
  br i1 %i.im, label %._crit_edge.i, label %.lr.ph105.i

.preheader.i21:                                   ; preds = %ZS_BitDStreamFF_reload.exit46.i, %bb.l
  %.sroa.42.0.lcssa.i = phi ptr [ %.sroa.42.5.i, %bb.l ], [ %.sroa.42.7.i, %ZS_BitDStreamFF_reload.exit46.i ]
  %.sroa.17.0.lcssa.i = phi i64 [ %.sroa.17.6.i, %bb.l ], [ %.sroa.17.8.i, %ZS_BitDStreamFF_reload.exit46.i ]
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.5.i, %bb.l ], [ %.sroa.0.6.i, %ZS_BitDStreamFF_reload.exit46.i ]
  %.036.lcssa.i = phi i64 [ 0, %bb.l ], [ %i.io, %ZS_BitDStreamFF_reload.exit46.i ] ; 2 uses
  %i.iv = icmp ult i64 %.036.lcssa.i, %1
  br i1 %i.iv, label %.lr.ph120.i, label %ZS_bitpackDecode64_generic.exit

.lr.ph120.i:                                      ; preds = %.preheader.i21
  %i.iw = and i64 %i.a, 63
  %notmask.i.i49.i = shl nsw i64 -1, %i.iw
  %i.ix = xor i64 %notmask.i.i49.i, -1
  %i.iy = getelementptr inbounds i8, ptr %.sroa.59.0.i, i64 -1 ; 2 uses
  %i.iz = ptrtoint ptr %i.iy to i64
  br label %bb.p

._crit_edge.i:                                    ; preds = %.lr.ph105.i.prol.loopexit, %.lr.ph105.i, %.preheader94.i
  %.sroa.17.1.lcssa.i = phi i64 [ %.sroa.17.0109.i, %.preheader94.i ], [ %.lcssa.unr, %.lr.ph105.i.prol.loopexit ], [ %i.jz, %.lr.ph105.i ] ; 4 uses
  %.sroa.0.1.lcssa.i = phi i64 [ %.sroa.0.0110.i, %.preheader94.i ], [ %.lcssa79.unr, %.lr.ph105.i.prol.loopexit ], [ %i.jy, %.lr.ph105.i ]
  %i.ja = lshr i64 %.sroa.17.1.lcssa.i, 3
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.42.0108.i, i64 %i.ja ; 6 uses
  %i.jc = icmp ult ptr %i.jb, %.sroa.59.0.i
  br i1 %i.jc, label %bb.m, label %bb.n, !prof !30

bb.m:                                             ; preds = %._crit_edge.i
  %i.jd = and i64 %.sroa.17.1.lcssa.i, 7          ; 2 uses
  %.val22.i45.i = load i64, ptr %i.jb, align 1
  %i.je = lshr i64 %.val22.i45.i, %i.jd
  br label %ZS_BitDStreamFF_reload.exit46.i

bb.n:                                             ; preds = %._crit_edge.i
  %.not.i41.i = icmp ult ptr %i.jb, %.sink.i.i
  br i1 %.not.i41.i, label %bb.o, label %ZS_BitDStreamFF_reload.exit46.i

bb.o:                                             ; preds = %bb.n
  %i.jf = ptrtoint ptr %i.jb to i64
  %i.jg = sub i64 %i.jf, %i.il
  %i.jh = shl i64 %i.jg, 3
  %i.ji = and i64 %.sroa.17.1.lcssa.i, 7          ; 2 uses
  %.val.i42.i = load i64, ptr %i.ik, align 1
  %i.jj = or disjoint i64 %i.jh, %i.ji
  %i.jk = lshr i64 %.val.i42.i, %i.jj
  br label %ZS_BitDStreamFF_reload.exit46.i

ZS_BitDStreamFF_reload.exit46.i:                  ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.42.7.i = phi ptr [ %.sroa.42.0108.i, %bb.n ], [ %i.jb, %bb.o ], [ %i.jb, %bb.m ] ; 2 uses
  %.sroa.17.8.i = phi i64 [ %.sroa.17.1.lcssa.i, %bb.n ], [ %i.ji, %bb.o ], [ %i.jd, %bb.m ] ; 2 uses
  %.sroa.0.6.i = phi i64 [ %.sroa.0.1.lcssa.i, %bb.n ], [ %i.jk, %bb.o ], [ %i.je, %bb.m ] ; 2 uses
  %i.jl = icmp ult i64 %i.io, %i.ih
  br i1 %i.jl, label %.preheader94.i, label %.preheader.i21, !llvm.loop !176

.lr.ph105.i:                                      ; preds = %.lr.ph105.i.prol.loopexit, %.lr.ph105.i
  %.035104.i = phi i64 [ %i.kc, %.lr.ph105.i ], [ %.035104.i.unr, %.lr.ph105.i.prol.loopexit ] ; 5 uses
  %.sroa.0.1103.i = phi i64 [ %i.jy, %.lr.ph105.i ], [ %.sroa.0.1103.i.unr, %.lr.ph105.i.prol.loopexit ] ; 2 uses
  %.sroa.17.1102.i = phi i64 [ %i.jz, %.lr.ph105.i ], [ %.sroa.17.1102.i.unr, %.lr.ph105.i.prol.loopexit ]
  %i.jm = and i64 %.sroa.0.1103.i, %i.ij
  %i.jn = lshr i64 %.sroa.0.1103.i, %i.hx         ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035104.i
  store i64 %i.jm, ptr %i.jo, align 8, !tbaa !27
  %i.jp = and i64 %i.jn, %i.ij
  %i.jq = lshr i64 %i.jn, %i.hx                   ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035104.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store i64 %i.jp, ptr %i.js, align 8, !tbaa !27
  %i.jt = and i64 %i.jq, %i.ij
  %i.ju = lshr i64 %i.jq, %i.hx                   ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035104.i
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i64 %i.jt, ptr %i.jw, align 8, !tbaa !27
  %i.jx = and i64 %i.ju, %i.ij
  %i.jy = lshr i64 %i.ju, %i.hx                   ; 2 uses
  %i.jz = add i64 %i.in, %.sroa.17.1102.i         ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.035104.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  store i64 %i.jx, ptr %i.kb, align 8, !tbaa !27
  %i.kc = add nuw i64 %.035104.i, 4               ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.io
  br i1 %i.kd, label %.lr.ph105.i, label %._crit_edge.i, !llvm.loop !177

bb.p:                                             ; preds = %ZS_BitDStreamFF_reload.exit55.i, %.lr.ph120.i
  %.1119.i = phi i64 [ %.036.lcssa.i, %.lr.ph120.i ], [ %i.kt, %ZS_BitDStreamFF_reload.exit55.i ] ; 2 uses
  %.sroa.0.2118.i = phi i64 [ %.sroa.0.0.lcssa.i, %.lr.ph120.i ], [ %.sroa.0.7.i, %ZS_BitDStreamFF_reload.exit55.i ] ; 2 uses
  %.sroa.17.2117.i = phi i64 [ %.sroa.17.0.lcssa.i, %.lr.ph120.i ], [ %.sroa.17.10.i, %ZS_BitDStreamFF_reload.exit55.i ]
  %.sroa.42.1116.i = phi ptr [ %.sroa.42.0.lcssa.i, %.lr.ph120.i ], [ %.sroa.42.9.i, %ZS_BitDStreamFF_reload.exit55.i ] ; 2 uses
  %i.ke = and i64 %.sroa.0.2118.i, %i.ix
  %i.kf = add i64 %.sroa.17.2117.i, %i.hx         ; 4 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1119.i
  store i64 %i.ke, ptr %i.kg, align 8, !tbaa !27
  %i.kh = lshr i64 %i.kf, 3
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.42.1116.i, i64 %i.kh ; 6 uses
  %i.kj = icmp ult ptr %i.ki, %.sroa.59.0.i
  br i1 %i.kj, label %bb.q, label %bb.r, !prof !30

bb.q:                                             ; preds = %bb.p
  %i.kk = and i64 %i.kf, 7                        ; 2 uses
  %.val22.i54.i = load i64, ptr %i.ki, align 1
  %i.kl = lshr i64 %.val22.i54.i, %i.kk
  br label %ZS_BitDStreamFF_reload.exit55.i

bb.r:                                             ; preds = %bb.p
  %i.km = lshr i64 %.sroa.0.2118.i, %i.hx
  %.not.i50.i = icmp ult ptr %i.ki, %.sink.i.i
  br i1 %.not.i50.i, label %bb.s, label %ZS_BitDStreamFF_reload.exit55.i

bb.s:                                             ; preds = %bb.r
  %i.kn = ptrtoint ptr %i.ki to i64
  %i.ko = sub i64 %i.kn, %i.iz
  %i.kp = shl i64 %i.ko, 3
  %i.kq = and i64 %i.kf, 7                        ; 2 uses
  %.val.i51.i = load i64, ptr %i.iy, align 1
  %i.kr = or disjoint i64 %i.kp, %i.kq
  %i.ks = lshr i64 %.val.i51.i, %i.kr
  br label %ZS_BitDStreamFF_reload.exit55.i

ZS_BitDStreamFF_reload.exit55.i:                  ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.42.9.i = phi ptr [ %.sroa.42.1116.i, %bb.r ], [ %i.ki, %bb.s ], [ %i.ki, %bb.q ]
  %.sroa.17.10.i = phi i64 [ %i.kf, %bb.r ], [ %i.kq, %bb.s ], [ %i.kk, %bb.q ]
  %.sroa.0.7.i = phi i64 [ %i.km, %bb.r ], [ %i.ks, %bb.s ], [ %i.kl, %bb.q ]
  %i.kt = add nuw i64 %.1119.i, 1                 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %i.kt, %1
  br i1 %exitcond126.not.i, label %ZS_bitpackDecode64_generic.exit, label %bb.p, !llvm.loop !178

bb.t:                                             ; preds = %ZS_BitDStreamFF_reload.exit70.i, %.lr.ph.i19
  %.0101.i = phi i64 [ 0, %.lr.ph.i19 ], [ %i.lz, %ZS_BitDStreamFF_reload.exit70.i ] ; 2 uses
  %.sroa.0.3100.i = phi i64 [ %.sroa.0.5.i, %.lr.ph.i19 ], [ %.sroa.0.9.i, %ZS_BitDStreamFF_reload.exit70.i ] ; 2 uses
  %.sroa.17.399.i = phi i64 [ %.sroa.17.6.i, %.lr.ph.i19 ], [ %.sroa.17.14.i, %ZS_BitDStreamFF_reload.exit70.i ] ; 3 uses
  %.sroa.42.298.i = phi ptr [ %.sroa.42.5.i, %.lr.ph.i19 ], [ %.sroa.42.13.i, %ZS_BitDStreamFF_reload.exit70.i ] ; 2 uses
  %i.ku = and i64 %.sroa.0.3100.i, 4294967295     ; 2 uses
  %i.kv = add i64 %.sroa.17.399.i, 32             ; 2 uses
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0101.i ; 2 uses
  store i64 %i.ku, ptr %i.kw, align 8, !tbaa !27
  %i.kx = lshr i64 %i.kv, 3
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.42.298.i, i64 %i.kx ; 6 uses
  %i.kz = icmp ult ptr %i.ky, %.sroa.59.0.i
  br i1 %i.kz, label %bb.u, label %bb.v, !prof !30

bb.u:                                             ; preds = %bb.t
  %i.la = and i64 %.sroa.17.399.i, 7              ; 2 uses
  %.val22.i61.i = load i64, ptr %i.ky, align 1
  %i.lb = lshr i64 %.val22.i61.i, %i.la
  br label %ZS_BitDStreamFF_reload.exit62.i

bb.v:                                             ; preds = %bb.t
  %i.lc = lshr i64 %.sroa.0.3100.i, 32
  %.not.i57.i = icmp ult ptr %i.ky, %.sink.i.i
  br i1 %.not.i57.i, label %bb.w, label %ZS_BitDStreamFF_reload.exit62.i

bb.w:                                             ; preds = %bb.v
  %i.ld = ptrtoint ptr %i.ky to i64
  %i.le = sub i64 %i.ld, %i.ia
  %i.lf = shl i64 %i.le, 3
end_hunk_1
