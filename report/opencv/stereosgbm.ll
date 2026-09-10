Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereosgbm?download=true
inline.NumInlined: 570
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK2cv16CalcVerticalSumsclERKNS_5RangeE:bb.a
.lr.ph375:                                        ; preds = %.lr.ph375.prol.loopexit, %.lr.ph375
  %indvars.iv437 = phi i64 [ %indvars.iv.next438.3, %.lr.ph375 ], [ %indvars.iv437.unr, %.lr.ph375.prol.loopexit ] ; 6 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv437 ; 2 uses
  %i.fn = load i16, ptr %gep, align 2, !tbaa !77
  %gep518 = getelementptr [2 x i8], ptr %invariant.gep517, i64 %indvars.iv437
  %i.fo = load i16, ptr %gep518, align 2, !tbaa !77
  %i.fp = add i16 %i.fo, %i.fn
  store i16 %i.fp, ptr %gep, align 2, !tbaa !77
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1 ; 2 uses
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next438 ; 2 uses
  %i.fq = load i16, ptr %gep.1, align 2, !tbaa !77
  %gep518.1 = getelementptr [2 x i8], ptr %invariant.gep517, i64 %indvars.iv.next438
  %i.fr = load i16, ptr %gep518.1, align 2, !tbaa !77
  %i.fs = add i16 %i.fr, %i.fq
  store i16 %i.fs, ptr %gep.1, align 2, !tbaa !77
  %indvars.iv.next438.1 = add nuw nsw i64 %indvars.iv437, 2 ; 2 uses
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next438.1 ; 2 uses
  %i.ft = load i16, ptr %gep.2, align 2, !tbaa !77
  %gep518.2 = getelementptr [2 x i8], ptr %invariant.gep517, i64 %indvars.iv.next438.1
  %i.fu = load i16, ptr %gep518.2, align 2, !tbaa !77
  %i.fv = add i16 %i.fu, %i.ft
  store i16 %i.fv, ptr %gep.2, align 2, !tbaa !77
  %indvars.iv.next438.2 = add nuw nsw i64 %indvars.iv437, 3 ; 2 uses
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next438.2 ; 2 uses
  %i.fw = load i16, ptr %gep.3, align 2, !tbaa !77
  %gep518.3 = getelementptr [2 x i8], ptr %invariant.gep517, i64 %indvars.iv.next438.2
  %i.fx = load i16, ptr %gep518.3, align 2, !tbaa !77
  %i.fy = add i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %gep.3, align 2, !tbaa !77
  %indvars.iv.next438.3 = add nuw nsw i64 %indvars.iv437, 4 ; 2 uses
  %exitcond441.not.3 = icmp eq i64 %indvars.iv.next438.3, %wide.trip.count440
  br i1 %exitcond441.not.3, label %._crit_edge, label %.lr.ph375, !llvm.loop !487

bb.v:                                             ; preds = %bb.k
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %.lr.ph375.prol.loopexit, %.lr.ph375, %middle.block705, %vec.epilog.middle.block719, %bb.u
  %i.ga = add nsw i32 %.0186377, %i.ea            ; 2 uses
  %.not221 = icmp sgt i32 %i.ga, %i.ed
  br i1 %.not221, label %._crit_edge380, label %bb.s, !llvm.loop !488

._crit_edge380:                                   ; preds = %._crit_edge, %bb.r
  br i1 %i.ca, label %bb.w, label %_ZNK2cv10BufferSGBM7getCBufEi.exit245

_ZNK2cv10BufferSGBM7getCBufEi.exit245:            ; preds = %._crit_edge380
  %i.gb = load ptr, ptr %i.ai, align 8, !tbaa !522, !nonnull !70, !align !175 ; 5 uses
  %i.gc = load i32, ptr %i.ak, align 4, !tbaa !140
  %i.gd = xor i32 %i.gc, -1
  %i.ge = add i32 %.0191423, %i.gd
  %.sroa.speculated341 = call i32 @llvm.smax.i32(i32 %i.ge, i32 0)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 72
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !171 ; 2 uses
  %i.gh = ptrtoaddr ptr %i.gg to i64              ; 3 uses
  %i.gi = zext nneg i32 %.sroa.speculated341 to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !172
  %i.gl = urem i64 %i.gi, %i.gk                   ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !133 ; 4 uses
  %i.go = mul i64 %i.gn, %i.gl
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.gg, i64 %i.go ; 7 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !135 ; 2 uses
  %i.gs = ptrtoaddr ptr %i.gr to i64              ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !169, !range !69, !noundef !70
  %i.gv = trunc nuw i8 %i.gu to i1
  %i.gw = mul i64 %i.gn, %i.cg
  %i.gx = select i1 %i.gv, i64 %i.gw, i64 0       ; 3 uses
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.gr, i64 %i.gx ; 7 uses
  %i.gz = load i32, ptr %i.ap, align 8, !tbaa !148 ; 6 uses
  %i.ha = icmp sgt i32 %i.gz, 0                   ; 2 uses
  br i1 %i.ha, label %iter.check670, label %._crit_edge383

iter.check670:                                    ; preds = %_ZNK2cv10BufferSGBM7getCBufEi.exit245
  %i.hb = mul nsw i32 %i.ea, %i.c
  %i.hc = sext i32 %i.hb to i64                   ; 5 uses
  %wide.trip.count445 = zext nneg i32 %i.gz to i64 ; 8 uses
  %min.iters.check653 = icmp ult i32 %i.gz, 4
  br i1 %min.iters.check653, label %vec.epilog.scalar.ph671.preheader, label %vector.memcheck646

vector.memcheck646:                               ; preds = %iter.check670
  %i.hd = shl i64 %i.gx, 1
  %i.he = add i64 %i.hd, %i.gs
  %i.hf = sub i64 %i.he, %i.co
  %diff.check647 = icmp ugt i64 %i.hf, -32
  %i.hg = shl i64 %i.dc, 1
  %i.hh = mul i64 %i.hg, %i.da
  %i.hi = add i64 %i.hh, %i.cw
  %i.hj = sub i64 %i.hi, %i.cp
  %diff.check648 = icmp ugt i64 %i.hj, -32
  %conflict.rdx649 = or i1 %diff.check647, %diff.check648
  %i.hk = shl i64 %i.gn, 1
  %i.hl = mul i64 %i.hk, %i.gl
  %i.hm = add i64 %i.hl, %i.gh
  %i.hn = sub i64 %i.hm, %i.cq
  %diff.check650 = icmp ugt i64 %i.hn, -32
  %conflict.rdx651 = or i1 %conflict.rdx649, %diff.check650
  br i1 %conflict.rdx651, label %vec.epilog.scalar.ph671.preheader, label %vector.main.loop.iter.check654

vector.main.loop.iter.check654:                   ; preds = %vector.memcheck646
  %min.iters.check655 = icmp ult i32 %i.gz, 16
  br i1 %min.iters.check655, label %vec.epilog.ph674, label %vector.ph656

vector.ph656:                                     ; preds = %vector.main.loop.iter.check654
  %i.ho = and i64 %wide.trip.count445, 12
  %n.vec657 = and i64 %wide.trip.count445, 2147483632 ; 4 uses
  br label %vector.body658

vector.body658:                                   ; preds = %vector.body658, %vector.ph656
  %index659 = phi i64 [ 0, %vector.ph656 ], [ %index.next666, %vector.body658 ] ; 2 uses
  %i.hp = add nsw i64 %index659, %i.hc            ; 4 uses
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %wide.load660 = load <8 x i16>, ptr %i.hq, align 2, !tbaa !77
  %wide.load661 = load <8 x i16>, ptr %i.hr, align 2, !tbaa !77
  %i.hs = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.hp ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load662 = load <8 x i16>, ptr %i.hs, align 2, !tbaa !77
  %wide.load663 = load <8 x i16>, ptr %i.ht, align 2, !tbaa !77
  %i.hu = add <8 x i16> %wide.load662, %wide.load660
  %i.hv = add <8 x i16> %wide.load663, %wide.load661
  %i.hw = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.hp ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load664 = load <8 x i16>, ptr %i.hw, align 2, !tbaa !77
  %wide.load665 = load <8 x i16>, ptr %i.hx, align 2, !tbaa !77
  %i.hy = sub <8 x i16> %i.hu, %wide.load664
  %i.hz = sub <8 x i16> %i.hv, %wide.load665
  %i.ia = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.hp ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store <8 x i16> %i.hy, ptr %i.ia, align 2, !tbaa !77
  store <8 x i16> %i.hz, ptr %i.ib, align 2, !tbaa !77
  %index.next666 = add nuw i64 %index659, 16      ; 2 uses
  %i.ic = icmp eq i64 %index.next666, %n.vec657
  br i1 %i.ic, label %middle.block667, label %vector.body658, !llvm.loop !489

middle.block667:                                  ; preds = %vector.body658
  %cmp.n668 = icmp eq i64 %n.vec657, %wide.trip.count445
  br i1 %cmp.n668, label %._crit_edge383, label %vec.epilog.iter.check672

vec.epilog.iter.check672:                         ; preds = %middle.block667
  %min.epilog.iters.check673 = icmp eq i64 %i.ho, 0
  br i1 %min.epilog.iters.check673, label %vec.epilog.scalar.ph671.preheader, label %vec.epilog.ph674, !prof !80

vec.epilog.ph674:                                 ; preds = %vector.main.loop.iter.check654, %vec.epilog.iter.check672
  %vec.epilog.resume.val669 = phi i64 [ %n.vec657, %vec.epilog.iter.check672 ], [ 0, %vector.main.loop.iter.check654 ]
  %n.vec675 = and i64 %wide.trip.count445, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body676

vec.epilog.vector.body676:                        ; preds = %vec.epilog.vector.body676, %vec.epilog.ph674
  %index677 = phi i64 [ %vec.epilog.resume.val669, %vec.epilog.ph674 ], [ %index.next681, %vec.epilog.vector.body676 ] ; 2 uses
  %i.id = add nsw i64 %index677, %i.hc            ; 4 uses
  %i.ie = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.id
  %wide.load678 = load <4 x i16>, ptr %i.ie, align 2, !tbaa !77
  %i.if = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.id
  %wide.load679 = load <4 x i16>, ptr %i.if, align 2, !tbaa !77
  %i.ig = add <4 x i16> %wide.load679, %wide.load678
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.id
  %wide.load680 = load <4 x i16>, ptr %i.ih, align 2, !tbaa !77
  %i.ii = sub <4 x i16> %i.ig, %wide.load680
  %i.ij = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.id
  store <4 x i16> %i.ii, ptr %i.ij, align 2, !tbaa !77
  %index.next681 = add nuw i64 %index677, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next681, %n.vec675
  br i1 %i.ik, label %vec.epilog.middle.block682, label %vec.epilog.vector.body676, !llvm.loop !490

vec.epilog.middle.block682:                       ; preds = %vec.epilog.vector.body676
  %cmp.n683 = icmp eq i64 %n.vec675, %wide.trip.count445
  br i1 %cmp.n683, label %._crit_edge383, label %vec.epilog.scalar.ph671.preheader

vec.epilog.scalar.ph671.preheader:                ; preds = %vector.memcheck646, %iter.check670, %vec.epilog.iter.check672, %vec.epilog.middle.block682
  %indvars.iv442.ph = phi i64 [ 0, %iter.check670 ], [ 0, %vector.memcheck646 ], [ %n.vec657, %vec.epilog.iter.check672 ], [ %n.vec675, %vec.epilog.middle.block682 ] ; 4 uses
  %xtraiter768 = and i64 %wide.trip.count445, 1
  %lcmp.mod769.not = icmp eq i64 %xtraiter768, 0
  br i1 %lcmp.mod769.not, label %vec.epilog.scalar.ph671.prol.loopexit, label %vec.epilog.scalar.ph671.prol

vec.epilog.scalar.ph671.prol:                     ; preds = %vec.epilog.scalar.ph671.preheader
  %i.il = add nsw i64 %indvars.iv442.ph, %i.hc    ; 4 uses
  %i.im = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !77
  %i.io = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.il
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !77
  %i.iq = add i16 %i.ip, %i.in
  %i.ir = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.il
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !77
  %i.it = sub i16 %i.iq, %i.is
  %i.iu = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.il
  store i16 %i.it, ptr %i.iu, align 2, !tbaa !77
  %indvars.iv.next443.prol = or disjoint i64 %indvars.iv442.ph, 1
  br label %vec.epilog.scalar.ph671.prol.loopexit

vec.epilog.scalar.ph671.prol.loopexit:            ; preds = %vec.epilog.scalar.ph671.prol, %vec.epilog.scalar.ph671.preheader
  %indvars.iv442.unr = phi i64 [ %indvars.iv442.ph, %vec.epilog.scalar.ph671.preheader ], [ %indvars.iv.next443.prol, %vec.epilog.scalar.ph671.prol ]
  %i.iv = add nsw i64 %wide.trip.count445, -1
  %i.iw = icmp eq i64 %indvars.iv442.ph, %i.iv
  br i1 %i.iw, label %._crit_edge383, label %vec.epilog.scalar.ph671.preheader.new

vec.epilog.scalar.ph671.preheader.new:            ; preds = %vec.epilog.scalar.ph671.prol.loopexit
  %invariant.op = add nsw i64 1, %i.hc
  br label %vec.epilog.scalar.ph671

vec.epilog.scalar.ph671:                          ; preds = %vec.epilog.scalar.ph671, %vec.epilog.scalar.ph671.preheader.new
  %indvars.iv442 = phi i64 [ %indvars.iv442.unr, %vec.epilog.scalar.ph671.preheader.new ], [ %indvars.iv.next443.1, %vec.epilog.scalar.ph671 ] ; 3 uses
  %i.ix = add nsw i64 %indvars.iv442, %i.hc       ; 4 uses
  %i.iy = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !77
  %i.ja = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.ix
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !77
  %i.jc = add i16 %i.jb, %i.iz
  %i.jd = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.ix
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !77
  %i.jf = sub i16 %i.jc, %i.je
  %i.jg = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.ix
  store i16 %i.jf, ptr %i.jg, align 2, !tbaa !77
  %.reass = add nsw i64 %indvars.iv442, %invariant.op ; 4 uses
  %i.jh = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %.reass
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !77
  %i.jj = getelementptr inbounds [2 x i8], ptr %i.de, i64 %.reass
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !77
  %i.jl = add i16 %i.jk, %i.ji
  %i.jm = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %.reass
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !77
  %i.jo = sub i16 %i.jl, %i.jn
  %i.jp = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %.reass
  store i16 %i.jo, ptr %i.jp, align 2, !tbaa !77
  %indvars.iv.next443.1 = add nuw nsw i64 %indvars.iv442, 2 ; 2 uses
  %exitcond446.not.1 = icmp eq i64 %indvars.iv.next443.1, %wide.trip.count445
  br i1 %exitcond446.not.1, label %._crit_edge383, label %vec.epilog.scalar.ph671, !llvm.loop !491

._crit_edge383:                                   ; preds = %vec.epilog.scalar.ph671.prol.loopexit, %vec.epilog.scalar.ph671, %middle.block667, %vec.epilog.middle.block682, %_ZNK2cv10BufferSGBM7getCBufEi.exit245
  %i.jq = mul nsw i32 %i.ea, %i.aq                ; 2 uses
  %i.jr = mul nsw i32 %i.ea, %i.e                 ; 2 uses
  %i.js = icmp slt i32 %i.jq, %i.jr
  br i1 %i.js, label %.lr.ph390, label %.loopexit

.lr.ph390:                                        ; preds = %._crit_edge383
  %i.jt = load ptr, ptr %i.a, align 8, !tbaa !95  ; 3 uses
  %i.ju = load i32, ptr %i.ao, align 8, !tbaa !147
  %i.jv = add i32 %i.ju, -1
  %i.jw = mul i32 %i.jv, %i.ea                    ; 2 uses
  %.neg230 = xor i32 %i.dy, -1
  %.neg231 = mul i32 %i.ea, %.neg230
  br i1 %i.ha, label %.lr.ph386.preheader, label %.loopexit

.lr.ph386.preheader:                              ; preds = %.lr.ph390
  %i.jx = ptrtoaddr ptr %i.jt to i64              ; 2 uses
  %i.jy = mul nsw i32 %i.ea, %i.dy
  %i.jz = sext i32 %i.jq to i64                   ; 2 uses
  %i.ka = sext i32 %i.ea to i64                   ; 2 uses
  %i.kb = sext i32 %i.jr to i64
  %wide.trip.count450 = zext nneg i32 %i.gz to i64 ; 3 uses
  %i.kc = shl i64 %i.dc, 1
  %i.kd = mul i64 %i.kc, %i.da                    ; 6 uses
  %i.ke = add i64 %i.kd, %i.cw
  %i.kf = add i64 %i.kd, %i.cw
  %i.kg = shl nsw i64 %i.jz, 1                    ; 4 uses
  %i.kh = add i64 %i.kf, %i.kg
  %i.ki = shl nsw i64 %i.ka, 1
  %i.kj = add i64 %i.kd, %i.cw
  %i.kk = mul i32 %i.c, %i.ea
  %i.kl = zext i32 %i.ea to i64
  %i.km = add i64 %i.kd, %i.cw
  %i.kn = add i64 %i.km, %i.kg
  %i.ko = sub i64 %i.kn, %i.jx
  %i.kp = add i32 %i.av, %i.dy
  %i.kq = mul i32 %i.ea, %i.kp
  %i.kr = shl i64 %i.gx, 1                        ; 2 uses
  %i.ks = add i64 %i.kr, %i.gs
  %i.kt = add i64 %i.kd, %i.cw
  %i.ku = shl i64 %i.gn, 1
  %i.kv = mul i64 %i.ku, %i.gl                    ; 2 uses
  %i.kw = add i64 %i.kv, %i.gh
  %i.kx = add i64 %i.kd, %i.cw
  %i.ky = add i64 %i.cj, %i.kg
  %i.kz = add i64 %i.ck, %i.kg
  %i.la = sub i64 %i.kz, %i.jx
  %i.lb = add i64 %i.kr, %i.gs
  %i.lc = add i64 %i.kv, %i.gh
  %min.iters.check632 = icmp ult i32 %i.gz, 16
  %i.ld = sub i64 %i.ke, %i.ci
  %diff.check = icmp ugt i64 %i.ld, -16
  %i.le = sub i64 %i.kt, %i.ks
  %diff.check617 = icmp ugt i64 %i.le, -16
  %i.lf = sub i64 %i.kx, %i.kw
  %diff.check619 = icmp ugt i64 %i.lf, -16
  %invariant.op778 = or i1 %diff.check617, %diff.check619
  %i.lg = sub i64 %i.lb, %i.cl
  %diff.check627 = icmp ugt i64 %i.lg, -16
  %i.lh = sub i64 %i.lc, %i.cm
  %diff.check629 = icmp ugt i64 %i.lh, -16
  %invariant.op779 = or i1 %diff.check627, %diff.check629
  %n.vec634 = and i64 %wide.trip.count450, 2147483640 ; 3 uses
  %cmp.n644 = icmp eq i64 %n.vec634, %wide.trip.count450
  br label %.lr.ph386

.lr.ph386:                                        ; preds = %.lr.ph386.preheader, %._crit_edge387
  %indvar607 = phi i64 [ 0, %.lr.ph386.preheader ], [ %indvar.next608, %._crit_edge387 ] ; 3 uses
  %indvars.iv452 = phi i64 [ %i.jz, %.lr.ph386.preheader ], [ %indvars.iv.next453, %._crit_edge387 ] ; 5 uses
  %i.li = trunc i64 %indvars.iv452 to i32
  %i.lj = add i32 %i.jy, %i.li
  %.sroa.speculated333 = call i32 @llvm.smin.i32(i32 %i.jw, i32 %i.lj)
  %i.lk = sext i32 %.sroa.speculated333 to i64
  %i.ll = getelementptr inbounds [2 x i8], ptr %i.jt, i64 %i.lk ; 2 uses
  %i.lm = trunc nsw i64 %indvars.iv452 to i32     ; 2 uses
  %i.ln = add i32 %.neg231, %i.lm
  %.sroa.speculated325 = call i32 @llvm.smax.i32(i32 %i.ln, i32 0)
  %i.lo = zext nneg i32 %.sroa.speculated325 to i64
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %i.lo ; 2 uses
  %i.lq = sub i32 %i.lm, %i.ea
  %i.lr = sext i32 %i.lq to i64
  %invariant.gep519 = getelementptr [2 x i8], ptr %i.de, i64 %i.lr ; 2 uses
  br i1 %min.iters.check632, label %scalar.ph631.preheader, label %vector.memcheck606

vector.memcheck606:                               ; preds = %.lr.ph386
  %i.ls = mul i64 %i.ki, %indvar607               ; 4 uses
  %i.lt = add i64 %i.la, %i.ls                    ; 2 uses
  %i.lu = mul i64 %indvar607, %i.kl               ; 3 uses
  %i.lv = trunc i64 %i.lu to i32
  %i.lw = add i32 %i.kq, %i.lv
  %i.lx = call i32 @llvm.smin.i32(i32 %i.lw, i32 %i.jw)
  %smin614 = sext i32 %i.lx to i64
  %i.ly = shl nsw i64 %smin614, 1                 ; 2 uses
  %i.lz = trunc i64 %i.lu to i32
  %i.ma = add i32 %i.eb, %i.lz
  %smax611 = call i32 @llvm.smax.i32(i32 %i.ma, i32 0)
  %i.mb = shl nuw i32 %smax611, 1
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = add i64 %i.ky, %i.ls
  %i.me = trunc i64 %i.lu to i32
  %i.mf = add i32 %i.kk, %i.me
  %i.mg = sext i32 %i.mf to i64
  %i.mh = shl nsw i64 %i.mg, 1
  %i.mi = add i64 %i.kh, %i.ls
  %i.mj = add i64 %i.kj, %i.mh                    ; 2 uses
  %i.mk = sub i64 %i.mj, %i.mi
  %diff.check609 = icmp ugt i64 %i.mk, -16
  %conflict.rdx610 = or i1 %diff.check, %diff.check609
  %i.ml = add i64 %i.ko, %i.ls                    ; 2 uses
  %i.mm = sub i64 %i.mc, %i.ml
  %diff.check612 = icmp ugt i64 %i.mm, -16
  %conflict.rdx613 = or i1 %conflict.rdx610, %diff.check612
  %i.mn = sub i64 %i.ly, %i.ml
  %diff.check615 = icmp ugt i64 %i.mn, -16
  %conflict.rdx616 = or i1 %conflict.rdx613, %diff.check615
  %conflict.rdx620.reass = or i1 %conflict.rdx616, %invariant.op778
  %i.mo = sub i64 %i.mj, %i.md
  %diff.check621 = icmp ugt i64 %i.mo, -16
  %conflict.rdx622 = or i1 %conflict.rdx620.reass, %diff.check621
  %i.mp = sub i64 %i.mc, %i.lt
  %diff.check623 = icmp ugt i64 %i.mp, -16
  %conflict.rdx624 = or i1 %conflict.rdx622, %diff.check623
  %i.mq = sub i64 %i.ly, %i.lt
  %diff.check625 = icmp ugt i64 %i.mq, -16
  %conflict.rdx626 = or i1 %conflict.rdx624, %diff.check625
  %conflict.rdx630.reass = or i1 %conflict.rdx626, %invariant.op779
  br i1 %conflict.rdx630.reass, label %scalar.ph631.preheader, label %vector.body635

vector.body635:                                   ; preds = %vector.memcheck606, %vector.body635
  %index636 = phi i64 [ %index.next642, %vector.body635 ], [ 0, %vector.memcheck606 ] ; 5 uses
  %i.mr = getelementptr [2 x i8], ptr %invariant.gep519, i64 %index636
  %wide.load637 = load <8 x i16>, ptr %i.mr, align 2, !tbaa !77
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %index636
  %wide.load638 = load <8 x i16>, ptr %i.ms, align 2, !tbaa !77
  %i.mt = add <8 x i16> %wide.load638, %wide.load637
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr %i.lp, i64 %index636
  %wide.load639 = load <8 x i16>, ptr %i.mu, align 2, !tbaa !77
  %i.mv = sub <8 x i16> %i.mt, %wide.load639      ; 2 uses
  %i.mw = add nsw i64 %index636, %indvars.iv452   ; 4 uses
  %i.mx = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.mw
  store <8 x i16> %i.mv, ptr %i.mx, align 2, !tbaa !77
  %i.my = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.mw
  %wide.load640 = load <8 x i16>, ptr %i.my, align 2, !tbaa !77
  %i.mz = add <8 x i16> %wide.load640, %i.mv
  %i.na = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.mw
  %wide.load641 = load <8 x i16>, ptr %i.na, align 2, !tbaa !77
  %i.nb = sub <8 x i16> %i.mz, %wide.load641
  %i.nc = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.mw
  store <8 x i16> %i.nb, ptr %i.nc, align 2, !tbaa !77
  %index.next642 = add nuw i64 %index636, 8       ; 2 uses
  %i.nd = icmp eq i64 %index.next642, %n.vec634
  br i1 %i.nd, label %middle.block643, label %vector.body635, !llvm.loop !492

middle.block643:                                  ; preds = %vector.body635
  br i1 %cmp.n644, label %._crit_edge387, label %scalar.ph631.preheader

scalar.ph631.preheader:                           ; preds = %vector.memcheck606, %.lr.ph386, %middle.block643
  %indvars.iv447.ph = phi i64 [ 0, %vector.memcheck606 ], [ 0, %.lr.ph386 ], [ %n.vec634, %middle.block643 ]
  br label %scalar.ph631

scalar.ph631:                                     ; preds = %scalar.ph631.preheader, %scalar.ph631
  %indvars.iv447 = phi i64 [ %indvars.iv.next448, %scalar.ph631 ], [ %indvars.iv447.ph, %scalar.ph631.preheader ] ; 5 uses
  %gep520 = getelementptr [2 x i8], ptr %invariant.gep519, i64 %indvars.iv447
  %i.ne = load i16, ptr %gep520, align 2, !tbaa !77
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %indvars.iv447
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !77
  %i.nh = add i16 %i.ng, %i.ne
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.lp, i64 %indvars.iv447
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !77
  %i.nk = sub i16 %i.nh, %i.nj                    ; 2 uses
  %i.nl = add nsw i64 %indvars.iv447, %indvars.iv452 ; 4 uses
  %i.nm = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.nl
  store i16 %i.nk, ptr %i.nm, align 2, !tbaa !77
  %i.nn = getelementptr inbounds [2 x i8], ptr %i.gy, i64 %i.nl
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !77
  %i.np = add i16 %i.no, %i.nk
  %i.nq = getelementptr inbounds [2 x i8], ptr %i.gp, i64 %i.nl
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !77
  %i.ns = sub i16 %i.np, %i.nr
  %i.nt = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.nl
  store i16 %i.ns, ptr %i.nt, align 2, !tbaa !77
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond451.not = icmp eq i64 %indvars.iv.next448, %wide.trip.count450
  br i1 %exitcond451.not, label %._crit_edge387, label %scalar.ph631, !llvm.loop !493

._crit_edge387:                                   ; preds = %scalar.ph631, %middle.block643
  %indvars.iv.next453 = add nsw i64 %indvars.iv452, %i.ka ; 2 uses
  %i.nu = icmp slt i64 %indvars.iv.next453, %i.kb
  %indvar.next608 = add i64 %indvar607, 1
  br i1 %i.nu, label %.lr.ph386, label %.loopexit, !llvm.loop !494

bb.w:                                             ; preds = %._crit_edge380
  %i.nv = icmp eq i32 %storemerge404, 0
  br i1 %i.nv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.nw = load i32, ptr %i.ak, align 4, !tbaa !140
  %i.nx = trunc i32 %i.nw to i16
  %i.ny = add i16 %i.nx, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.nz = phi i16 [ %i.ny, %bb.x ], [ 1, %bb.w ]  ; 7 uses
  %i.oa = load i32, ptr %i.ap, align 8, !tbaa !148 ; 6 uses
  %i.ob = icmp sgt i32 %i.oa, 0                   ; 2 uses
  br i1 %i.ob, label %iter.check, label %._crit_edge394

iter.check:                                       ; preds = %bb.y
  %i.oc = mul nsw i32 %i.ea, %i.c
  %i.od = sext i32 %i.oc to i64                   ; 6 uses
  %wide.trip.count458 = zext nneg i32 %i.oa to i64 ; 9 uses
  %min.iters.check582 = icmp ult i32 %i.oa, 4
  br i1 %min.iters.check582, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck571

vector.memcheck571:                               ; preds = %iter.check
  %i.oe = shl nsw i64 %i.od, 1                    ; 3 uses
  %scevgep573 = getelementptr i8, ptr %scevgep572, i64 %i.oe
  %i.of = shl nuw nsw i64 %wide.trip.count458, 1  ; 2 uses
  %i.og = getelementptr i8, ptr %scevgep574, i64 %i.oe
  %scevgep575 = getelementptr i8, ptr %i.og, i64 %i.of
  %i.oh = shl i64 %i.dc, 1
  %i.oi = mul i64 %i.oh, %i.da
  %i.oj = add i64 %i.oi, %i.oe                    ; 2 uses
  %scevgep576 = getelementptr i8, ptr %i.cv, i64 %i.oj
  %i.ok = getelementptr i8, ptr %i.cv, i64 %i.oj
  %scevgep577 = getelementptr i8, ptr %i.ok, i64 %i.of
  %bound0578 = icmp ult ptr %scevgep573, %scevgep577
  %bound1579 = icmp ult ptr %scevgep576, %scevgep575
  %found.conflict580 = and i1 %bound0578, %bound1579
  br i1 %found.conflict580, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck571
  %min.iters.check583 = icmp ult i32 %i.oa, 16
  br i1 %min.iters.check583, label %vec.epilog.ph, label %vector.ph584

vector.ph584:                                     ; preds = %vector.main.loop.iter.check
  %i.ol = and i64 %wide.trip.count458, 12
  %n.vec585 = and i64 %wide.trip.count458, 2147483632 ; 4 uses
  %broadcast.splatinsert586 = insertelement <8 x i16> poison, i16 %i.nz, i64 0
  %broadcast.splat587 = shufflevector <8 x i16> %broadcast.splatinsert586, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body588

vector.body588:                                   ; preds = %vector.body588, %vector.ph584
  %index589 = phi i64 [ 0, %vector.ph584 ], [ %index.next594, %vector.body588 ] ; 2 uses
  %i.om = add nsw i64 %index589, %i.od            ; 2 uses
  %i.on = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.om ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16 ; 2 uses
  %wide.load590 = load <8 x i16>, ptr %i.on, align 2, !tbaa !77, !alias.scope !526, !noalias !527
  %wide.load591 = load <8 x i16>, ptr %i.oo, align 2, !tbaa !77, !alias.scope !526, !noalias !527
  %i.op = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.om ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %wide.load592 = load <8 x i16>, ptr %i.op, align 2, !tbaa !77, !alias.scope !527
  %wide.load593 = load <8 x i16>, ptr %i.oq, align 2, !tbaa !77, !alias.scope !527
  %i.or = mul <8 x i16> %wide.load592, %broadcast.splat587
  %i.os = mul <8 x i16> %wide.load593, %broadcast.splat587
  %i.ot = add <8 x i16> %i.or, %wide.load590
  %i.ou = add <8 x i16> %i.os, %wide.load591
  store <8 x i16> %i.ot, ptr %i.on, align 2, !tbaa !77, !alias.scope !526, !noalias !527
  store <8 x i16> %i.ou, ptr %i.oo, align 2, !tbaa !77, !alias.scope !526, !noalias !527
  %index.next594 = add nuw i64 %index589, 16      ; 2 uses
  %i.ov = icmp eq i64 %index.next594, %n.vec585
  br i1 %i.ov, label %middle.block595, label %vector.body588, !llvm.loop !498

middle.block595:                                  ; preds = %vector.body588
  %cmp.n596 = icmp eq i64 %n.vec585, %wide.trip.count458
  br i1 %cmp.n596, label %._crit_edge394, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block595
  %min.epilog.iters.check = icmp eq i64 %i.ol, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !80

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec585, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec597 = and i64 %wide.trip.count458, 2147483644 ; 3 uses
  %broadcast.splatinsert598 = insertelement <4 x i16> poison, i16 %i.nz, i64 0
  %broadcast.splat599 = shufflevector <4 x i16> %broadcast.splatinsert598, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index600 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next603, %vec.epilog.vector.body ] ; 2 uses
  %i.ow = add nsw i64 %index600, %i.od            ; 2 uses
  %i.ox = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.ow ; 2 uses
  %wide.load601 = load <4 x i16>, ptr %i.ox, align 2, !tbaa !77, !alias.scope !526, !noalias !527
  %i.oy = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.ow
  %wide.load602 = load <4 x i16>, ptr %i.oy, align 2, !tbaa !77, !alias.scope !527
  %i.oz = mul <4 x i16> %wide.load602, %broadcast.splat599
  %i.pa = add <4 x i16> %i.oz, %wide.load601
  store <4 x i16> %i.pa, ptr %i.ox, align 2, !tbaa !77, !alias.scope !526, !noalias !527
  %index.next603 = add nuw i64 %index600, 4       ; 2 uses
  %i.pb = icmp eq i64 %index.next603, %n.vec597
  br i1 %i.pb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !499

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n604 = icmp eq i64 %n.vec597, %wide.trip.count458
  br i1 %cmp.n604, label %._crit_edge394, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck571, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv455.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck571 ], [ %n.vec585, %vec.epilog.iter.check ], [ %n.vec597, %vec.epilog.middle.block ] ; 4 uses
  %xtraiter771 = and i64 %wide.trip.count458, 1
  %lcmp.mod772.not = icmp eq i64 %xtraiter771, 0
  br i1 %lcmp.mod772.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.pc = add nsw i64 %indvars.iv455.ph, %i.od    ; 2 uses
  %i.pd = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.pc ; 2 uses
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !77
  %i.pf = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.pc
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !77
  %i.ph = mul i16 %i.pg, %i.nz
  %i.pi = add i16 %i.ph, %i.pe
  store i16 %i.pi, ptr %i.pd, align 2, !tbaa !77
  %indvars.iv.next456.prol = or disjoint i64 %indvars.iv455.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv455.unr = phi i64 [ %indvars.iv455.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next456.prol, %vec.epilog.scalar.ph.prol ]
  %i.pj = add nsw i64 %wide.trip.count458, -1
  %i.pk = icmp eq i64 %indvars.iv455.ph, %i.pj
  br i1 %i.pk, label %._crit_edge394, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op780 = add nsw i64 1, %i.od
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv455 = phi i64 [ %indvars.iv455.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next456.1, %vec.epilog.scalar.ph ] ; 3 uses
  %i.pl = add nsw i64 %indvars.iv455, %i.od       ; 2 uses
  %i.pm = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.pl ; 2 uses
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !77
  %i.po = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.pl
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !77
  %i.pq = mul i16 %i.pp, %i.nz
  %i.pr = add i16 %i.pq, %i.pn
  store i16 %i.pr, ptr %i.pm, align 2, !tbaa !77
  %.reass781 = add nsw i64 %indvars.iv455, %invariant.op780 ; 2 uses
  %i.ps = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %.reass781 ; 2 uses
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !77
  %i.pu = getelementptr inbounds [2 x i8], ptr %i.de, i64 %.reass781
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !77
  %i.pw = mul i16 %i.pv, %i.nz
  %i.px = add i16 %i.pw, %i.pt
  store i16 %i.px, ptr %i.ps, align 2, !tbaa !77
  %indvars.iv.next456.1 = add nuw nsw i64 %indvars.iv455, 2 ; 2 uses
  %exitcond459.not.1 = icmp eq i64 %indvars.iv.next456.1, %wide.trip.count458
  br i1 %exitcond459.not.1, label %._crit_edge394, label %vec.epilog.scalar.ph, !llvm.loop !500

._crit_edge394:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block595, %vec.epilog.middle.block, %bb.y
  %i.py = mul nsw i32 %i.ea, %i.aq                ; 2 uses
  %i.pz = mul nsw i32 %i.ea, %i.e                 ; 2 uses
  %i.qa = icmp slt i32 %i.py, %i.pz
  br i1 %i.qa, label %.lr.ph402, label %.loopexit

.lr.ph402:                                        ; preds = %._crit_edge394
  %i.qb = load ptr, ptr %i.a, align 8, !tbaa !95  ; 4 uses
  %i.qc = load i32, ptr %i.ao, align 8, !tbaa !147
  %i.qd = add i32 %i.qc, -1
  %i.qe = mul i32 %i.qd, %i.ea                    ; 2 uses
  %.neg = xor i32 %i.dy, -1
  %.neg222 = mul i32 %i.ea, %.neg
  br i1 %i.ob, label %.lr.ph398.preheader, label %.loopexit

.lr.ph398.preheader:                              ; preds = %.lr.ph402
  %i.qf = mul nsw i32 %i.ea, %i.dy
  %i.qg = sext i32 %i.py to i64                   ; 3 uses
  %i.qh = sext i32 %i.ea to i64                   ; 4 uses
  %i.qi = sext i32 %i.pz to i64                   ; 3 uses
  %wide.trip.count463 = zext nneg i32 %i.oa to i64 ; 4 uses
  %i.qj = shl i64 %i.dc, 1
  %i.qk = mul i64 %i.qj, %i.da                    ; 3 uses
  %i.ql = shl nsw i64 %i.qg, 1                    ; 4 uses
  %i.qm = getelementptr i8, ptr %i.cv, i64 %i.qk
  %scevgep = getelementptr i8, ptr %i.qm, i64 %i.ql ; 4 uses
  %i.qn = add nsw i64 %i.qh, %i.qg                ; 3 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.qn, i64 %i.qi)
  %i.qo = icmp slt i64 %i.qn, %i.qi
  %umin = zext i1 %i.qo to i64                    ; 2 uses
  %i.qp = add nsw i64 %i.qn, %umin
  %i.qq = sub i64 %smax, %i.qp
  %i.qr = shl nuw nsw i64 %wide.trip.count463, 1  ; 5 uses
  %scevgep528 = getelementptr i8, ptr %scevgep527, i64 %i.ql ; 4 uses
  %i.qs = getelementptr i8, ptr %i.cv, i64 %i.qk
  %scevgep531 = getelementptr i8, ptr %i.qs, i64 %i.qr
  %scevgep533 = getelementptr i8, ptr %i.qb, i64 %i.qr
  %scevgep536 = getelementptr i8, ptr %i.qb, i64 %i.qr
  %i.qt = add i32 %i.au, %i.dy
  %min.iters.check = icmp ult i32 %i.oa, 24
  %i.qu = getelementptr i8, ptr %i.cv, i64 %i.qk
  %invariant.gep782 = getelementptr i8, ptr %i.qu, i64 %i.ql
  %invariant.gep784 = getelementptr i8, ptr %invariant.gep782, i64 %i.qr
  %invariant.gep786 = getelementptr i8, ptr %scevgep529, i64 %i.ql
  %invariant.gep788 = getelementptr i8, ptr %invariant.gep786, i64 %i.qr
  %stride.check542 = icmp slt i32 %i.ea, 0
  %n.vec = and i64 %wide.trip.count463, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.nz, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count463
  br label %.lr.ph398

.lr.ph398:                                        ; preds = %.lr.ph398.preheader, %._crit_edge399
  %indvar = phi i32 [ 0, %.lr.ph398.preheader ], [ %indvar.next, %._crit_edge399 ] ; 4 uses
  %indvars.iv465 = phi i64 [ %i.qg, %.lr.ph398.preheader ], [ %indvars.iv.next466, %._crit_edge399 ] ; 5 uses
  %i.qv = trunc i64 %indvars.iv465 to i32
  %i.qw = add i32 %i.qf, %i.qv
  %.sroa.speculated317 = call i32 @llvm.smin.i32(i32 %i.qe, i32 %i.qw)
  %i.qx = sext i32 %.sroa.speculated317 to i64
  %i.qy = getelementptr inbounds [2 x i8], ptr %i.qb, i64 %i.qx ; 4 uses
  %i.qz = trunc nsw i64 %indvars.iv465 to i32     ; 2 uses
  %i.ra = add i32 %.neg222, %i.qz
  %.sroa.speculated309 = call i32 @llvm.smax.i32(i32 %i.ra, i32 0)
  %i.rb = zext nneg i32 %.sroa.speculated309 to i64
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %i.qb, i64 %i.rb ; 4 uses
  %i.rd = sub i32 %i.qz, %i.ea
  %i.re = sext i32 %i.rd to i64
  %invariant.gep521 = getelementptr [2 x i8], ptr %i.de, i64 %i.re ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph398
  %i.rf = add i32 %i.qt, %indvar
  %i.rg = mul i32 %i.ea, %i.rf
  %i.rh = call i32 @llvm.smin.i32(i32 %i.rg, i32 %i.qe)
  %smin = sext i32 %i.rh to i64
  %i.ri = shl nsw i64 %smin, 1
  %scevgep537 = getelementptr i8, ptr %scevgep536, i64 %i.ri ; 2 uses
  %i.rj = add i32 %i.dz, %indvar
  %i.rk = mul i32 %i.rj, %i.ea
  %smax534 = call i32 @llvm.smax.i32(i32 %i.rk, i32 0)
  %i.rl = shl nuw i32 %smax534, 1
  %i.rm = zext i32 %i.rl to i64
  %scevgep535 = getelementptr i8, ptr %scevgep533, i64 %i.rm ; 2 uses
  %i.rn = add i32 %i.c, %indvar
  %i.ro = mul i32 %i.rn, %i.ea
  %i.rp = sext i32 %i.ro to i64
  %i.rq = shl nsw i64 %i.rp, 1
  %i.rr = udiv i64 %i.qq, %i.qh
  %i.rs = add i64 %i.rr, %umin
  %i.rt = shl i64 %i.rs, 1
  %i.ru = mul i64 %i.rt, %i.qh                    ; 2 uses
  %gep785 = getelementptr i8, ptr %invariant.gep784, i64 %i.ru ; 4 uses
  %gep789 = getelementptr i8, ptr %invariant.gep788, i64 %i.ru ; 4 uses
  %scevgep532 = getelementptr i8, ptr %scevgep531, i64 %i.rq ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %gep789
  %bound1 = icmp ult ptr %scevgep528, %gep785
  %found.conflict = and i1 %bound0, %bound1
  %bound0539 = icmp ult ptr %scevgep, %scevgep532
  %bound1540 = icmp ult ptr %invariant.gep521, %gep785
  %found.conflict541 = and i1 %bound0539, %bound1540
  %i.rv = or i1 %found.conflict541, %stride.check542
  %conflict.rdx = or i1 %found.conflict, %i.rv
  %bound0543 = icmp ult ptr %scevgep, %scevgep535
  %bound1544 = icmp ult ptr %i.rc, %gep785
  %found.conflict545 = and i1 %bound0543, %bound1544
  %conflict.rdx547 = or i1 %found.conflict545, %conflict.rdx
  %bound0548 = icmp ult ptr %scevgep, %scevgep537
  %bound1549 = icmp ult ptr %i.qy, %gep785
  %found.conflict550 = and i1 %bound0548, %bound1549
  %conflict.rdx552 = or i1 %found.conflict550, %conflict.rdx547
  %bound0553 = icmp ult ptr %scevgep528, %scevgep532
  %bound1554 = icmp ult ptr %invariant.gep521, %gep789
  %found.conflict555 = and i1 %bound0553, %bound1554
  %conflict.rdx557 = or i1 %found.conflict555, %conflict.rdx552
  %bound0558 = icmp ult ptr %scevgep528, %scevgep535
  %bound1559 = icmp ult ptr %i.rc, %gep789
  %found.conflict560 = and i1 %bound0558, %bound1559
  %conflict.rdx562 = or i1 %found.conflict560, %conflict.rdx557
  %bound0563 = icmp ult ptr %scevgep528, %scevgep537
  %bound1564 = icmp ult ptr %i.qy, %gep789
  %found.conflict565 = and i1 %bound0563, %bound1564
  %conflict.rdx567 = or i1 %found.conflict565, %conflict.rdx562
  br i1 %conflict.rdx567, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.rw = getelementptr [2 x i8], ptr %invariant.gep521, i64 %index
  %wide.load = load <8 x i16>, ptr %i.rw, align 2, !tbaa !77, !alias.scope !528
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.qy, i64 %index
  %wide.load568 = load <8 x i16>, ptr %i.rx, align 2, !tbaa !77, !alias.scope !529
  %i.ry = add <8 x i16> %wide.load568, %wide.load
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.rc, i64 %index
  %wide.load569 = load <8 x i16>, ptr %i.rz, align 2, !tbaa !77, !alias.scope !530
  %i.sa = sub <8 x i16> %i.ry, %wide.load569      ; 2 uses
  %i.sb = add nsw i64 %index, %indvars.iv465      ; 2 uses
  %i.sc = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.sb
  store <8 x i16> %i.sa, ptr %i.sc, align 2, !tbaa !77, !alias.scope !531, !noalias !532
  %i.sd = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.sb ; 2 uses
  %wide.load570 = load <8 x i16>, ptr %i.sd, align 2, !tbaa !77, !alias.scope !533, !noalias !534
  %i.se = mul <8 x i16> %i.sa, %broadcast.splat
  %i.sf = add <8 x i16> %i.se, %wide.load570
  store <8 x i16> %i.sf, ptr %i.sd, align 2, !tbaa !77, !alias.scope !533, !noalias !534
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sg = icmp eq i64 %index.next, %n.vec
  br i1 %i.sg, label %middle.block, label %vector.body, !llvm.loop !507

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge399, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph398, %middle.block
  %indvars.iv460.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph398 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv460 = phi i64 [ %indvars.iv.next461, %scalar.ph ], [ %indvars.iv460.ph, %scalar.ph.preheader ] ; 5 uses
  %gep522 = getelementptr [2 x i8], ptr %invariant.gep521, i64 %indvars.iv460
  %i.sh = load i16, ptr %gep522, align 2, !tbaa !77
  %i.si = getelementptr inbounds nuw [2 x i8], ptr %i.qy, i64 %indvars.iv460
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !77
  %i.sk = add i16 %i.sj, %i.sh
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.rc, i64 %indvars.iv460
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !77
  %i.sn = sub i16 %i.sk, %i.sm                    ; 2 uses
  %i.so = add nsw i64 %indvars.iv460, %indvars.iv465 ; 2 uses
  %i.sp = getelementptr inbounds [2 x i8], ptr %i.de, i64 %i.so
  store i16 %i.sn, ptr %i.sp, align 2, !tbaa !77
  %i.sq = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.so ; 2 uses
  %i.sr = load i16, ptr %i.sq, align 2, !tbaa !77
  %i.ss = mul i16 %i.sn, %i.nz
  %i.st = add i16 %i.ss, %i.sr
  store i16 %i.st, ptr %i.sq, align 2, !tbaa !77
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 2 uses
  %exitcond464.not = icmp eq i64 %indvars.iv.next461, %wide.trip.count463
  br i1 %exitcond464.not, label %._crit_edge399, label %scalar.ph, !llvm.loop !508

._crit_edge399:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next466 = add nsw i64 %indvars.iv465, %i.qh ; 2 uses
  %i.su = icmp slt i64 %indvars.iv.next466, %i.qi
  %indvar.next = add i32 %indvar, 1
  br i1 %i.su, label %.lr.ph398, label %.loopexit, !llvm.loop !509

bb.z:                                             ; preds = %bb.q
  br i1 %i.ca, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.sv = load i32, ptr %i.k, align 4, !tbaa !146 ; 2 uses
  %i.sw = mul nsw i32 %i.sv, %i.c                 ; 2 uses
  %i.sx = mul nsw i32 %i.sv, %i.e                 ; 2 uses
  %i.sy = icmp slt i32 %i.sw, %i.sx
end_hunk_0
