Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereo_binary_sgbm?download=true
inline.NumInlined: 265
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv6stereo20StereoBinarySGBMImpl7computeERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a
  %i.lm = shl nuw nsw i64 %.pre-phi.i, 1          ; 2 uses
  %scevgep569 = getelementptr i8, ptr %i.ia, i64 %i.lm
  %scevgep571 = getelementptr i8, ptr %i.ia, i64 %i.lm
  %i.ln = shl nsw i64 %i.ga, 2                    ; 4 uses
  %i.lo = shl nsw i64 %i.iz, 1                    ; 2 uses
  %i.lp = add i64 %i.hz, %i.lo
  %i.lq = shl nsw i64 %i.iz, 1
  %i.lr = shl nsw i64 %i.id, 1
  %i.ls = add nsw i64 %i.ln, %i.lr
  %i.lt = mul i64 %i.ls, %i.fy                    ; 2 uses
  %i.lu = add i64 %i.hz, %i.lt
  %i.lv = add nsw i32 %i.ff, 1
  %i.lw = mul i32 %i.ea, %i.lv
  %i.lx = add i64 %i.hz, %i.lt
  %i.ly = mul i32 %i.ff, %i.ea
  %i.lz = add i64 %i.hz, %i.lo
  %i.ma = shl nsw i64 %i.iz, 1
  %i.mb = add i64 %i.hz, %i.ma
  %i.mc = shl nsw i64 %i.ga, 2                    ; 2 uses
  %i.md = shl nsw i64 %i.iz, 1
  %i.me = shl nsw i64 %i.id, 1
  %i.mf = add nsw i64 %i.mc, %i.me
  %i.mg = mul i64 %i.mf, %i.fy                    ; 2 uses
  %i.mh = add i64 %i.hz, %i.mg
  %i.mi = add nsw i32 %i.ff, 1
  %i.mj = mul i32 %i.ea, %i.mi
  %i.mk = add i64 %i.hz, %i.mg
  %i.ml = mul i32 %i.ff, %i.ea
  %i.mm = shl nuw nsw i64 %i.ju, 1                ; 2 uses
  %scevgep693 = getelementptr i8, ptr %i.ia, i64 %i.mm
  %i.mn = shl nsw i64 %i.ga, 2                    ; 2 uses
  %i.mo = shl nsw i64 %i.id, 1
  %i.mp = add nsw i64 %i.mn, %i.mo
  %i.mq = mul i64 %i.mp, %i.fy                    ; 2 uses
  %i.mr = shl nuw nsw i64 %i.ju, 1
  %scevgep736 = getelementptr i8, ptr %i.ia, i64 %i.mq
  %i.ms = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.mt = add nsw i64 %i.ms, -2
  %i.mu = shl nsw i64 %i.gt, 1
  %i.mv = shl nsw i64 %i.gt, 1
  %i.mw = shl nuw nsw i64 %wide.trip.count351.i, 1
  %i.mx = add nsw i64 %i.mw, -2
  %min.iters.check702 = icmp ult i32 %i.ea, 4
  %i.my = getelementptr i8, ptr %i.ia, i64 %i.mq
  %i.mz = getelementptr i8, ptr %i.my, i64 %i.mm
  %min.iters.check704 = icmp ult i32 %i.ea, 16
  %min.iters.check660 = icmp ult i32 %i.ea, 4
  %min.iters.check662 = icmp ult i32 %i.ea, 16
  %min.iters.check635 = icmp ult i32 %i.ea, 16
  %i.na = shl nsw i64 %.idx645.i, 1
  %diff.check630 = icmp ugt i64 %i.na, -16
  %min.iters.check577 = icmp samesign ult i64 %.pre-phi.i, 4
  %min.iters.check579 = icmp samesign ult i64 %.pre-phi.i, 16
  %i.nb = and i64 %.pre-phi.i, 12
  %n.vec581 = and i64 %.pre-phi.i, 4294967280     ; 4 uses
  %cmp.n592 = icmp eq i64 %.pre-phi.i, %n.vec581
  %min.epilog.iters.check597 = icmp eq i64 %i.nb, 0
  %n.vec599 = and i64 %.pre-phi.i, 4294967292     ; 3 uses
  %cmp.n608 = icmp eq i64 %.pre-phi.i, %n.vec599
  %xtraiter845 = and i64 %.pre-phi.i, 1
  %lcmp.mod846.not = icmp eq i64 %xtraiter845, 0
  %i.nc = getelementptr i8, ptr %i.ia, i64 %i.lb
  %i.nd = getelementptr i8, ptr %i.ia, i64 %i.kt
  %min.iters.check530 = icmp ult i32 %i.ea, 28
  %broadcast.splatinsert533 = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %broadcast.splat534 = shufflevector <4 x i32> %broadcast.splatinsert533, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
  %min.iters.check181 = icmp ult i32 %i.ew, 4
  %i.ne = shl nsw i64 %i.gt, 1
  %diff.check178 = icmp ugt i64 %i.ne, -32
  %min.iters.check183 = icmp ult i32 %i.ew, 16
  %i.nf = and i64 %wide.trip.count351.i, 12
  %n.vec185 = and i64 %wide.trip.count351.i, 4294967280 ; 4 uses
  %broadcast.splatinsert186 = insertelement <8 x i16> poison, i16 %i.jr, i64 0
  %broadcast.splat187 = shufflevector <8 x i16> %broadcast.splatinsert186, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n192 = icmp eq i64 %n.vec185, %wide.trip.count351.i
  %min.epilog.iters.check197 = icmp eq i64 %i.nf, 0
  %n.vec199 = and i64 %wide.trip.count351.i, 4294967292 ; 3 uses
  %broadcast.splatinsert200 = insertelement <4 x i16> poison, i16 %i.jr, i64 0
  %broadcast.splat201 = shufflevector <4 x i16> %broadcast.splatinsert200, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n206 = icmp eq i64 %n.vec199, %wide.trip.count351.i
  %xtraiter848 = and i64 %wide.trip.count351.i, 1
  %lcmp.mod849.not = icmp eq i64 %xtraiter848, 0
  %i.ng = add nsw i64 %wide.trip.count351.i, -1
  %i.nh = icmp ult i32 %i.ea, 4
  br label %bb.bi

vec.epilog.scalar.ph:                             ; preds = %iter.check, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ 0, %iter.check ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.ia, i64 %indvars.iv.i
  store i16 %i.ik, ptr %i.ni, align 2, !tbaa !59
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader229.i, label %vec.epilog.scalar.ph, !llvm.loop !111

bb.bi:                                            ; preds = %._crit_edge317.i, %.preheader229.i
  %.0598324.i = phi i32 [ 1, %.preheader229.i ], [ %i.on, %._crit_edge317.i ] ; 4 uses
  %i.nj = icmp eq i32 %.0598324.i, 1              ; 2 uses
  br i1 %i.nj, label %.preheader228.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br label %.preheader228.i

.preheader228.i:                                  ; preds = %bb.bj, %bb.bi
  %.0597.i = phi i32 [ %i.iw, %bb.bj ], [ 0, %bb.bi ] ; 2 uses
  %.0596.i = phi i32 [ %i.iv, %bb.bj ], [ 0, %bb.bi ] ; 3 uses
  %.0595.i = phi i32 [ -1, %bb.bj ], [ %i.fb, %bb.bi ] ; 2 uses
  %.0594.i = phi i32 [ -1, %bb.bj ], [ %i.ey, %bb.bi ] ; 2 uses
  %.0592.i = phi i32 [ -1, %bb.bj ], [ 1, %bb.bi ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.kd, i8 0, i64 %i.is, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.it, i8 0, i64 %i.iu, i1 false)
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.kg, i8 0, i64 %i.is, i1 false)
  call void @llvm.memset.p0.i64(ptr align 2 %i.kh, i8 0, i64 %i.iu, i1 false)
  %.not637313.i = icmp eq i32 %.0596.i, %.0594.i
  br i1 %.not637313.i, label %._crit_edge317.i, label %.lr.ph316.i

.lr.ph316.i:                                      ; preds = %.preheader228.i
  %.not639280.i = icmp eq i32 %.0597.i, %.0595.i
  %i.nk = mul i32 %.0592.i, %i.fw
  %i.nl = sext i32 %i.nk to i64                   ; 2 uses
  %i.nm = sub nsw i64 0, %i.nl
  %i.nn = icmp eq i32 %.0598324.i, %i.fi
  %i.no = add i32 %i.jw, %.0596.i
  %i.np = sext i32 %.0597.i to i64                ; 4 uses
  %i.nq = sext i32 %.0592.i to i64                ; 5 uses
  %i.nr = sext i32 %.0596.i to i64
  %i.ns = mul i64 %i.ku, %i.np                    ; 17 uses
  %i.nt = mul nsw i64 %i.kv, %i.nq
  %i.nu = shl nsw i64 %i.np, 4
  %i.nv = or disjoint i64 %i.nu, 2
  %i.nw = mul i64 %i.nv, %i.gf                    ; 6 uses
  %i.nx = add i64 %i.kx, %i.ns
  %i.ny = mul i64 %i.lc, %i.np                    ; 2 uses
  %i.nz = mul nsw i64 %i.ld, %i.nq
  %i.oa = add i64 %i.kt, %i.ns
  %i.ob = shl nsw i64 %i.nl, 1                    ; 5 uses
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = add i64 %i.ns, -2
  %i.oe = sub i64 %i.od, %i.ob
  %i.of = add i64 %i.le, %i.ns
  %i.og = sub i64 %i.of, %i.ob
  %i.oh = or disjoint i64 %i.ns, 2
  %i.oi = sub i64 %i.oh, %i.ob
  %i.oj = add i64 %i.lf, %i.ns
  %i.ok = sub i64 %i.oj, %i.ob
  %reass.sub = sub i64 %i.nw, %i.lg
  %reass.sub773 = sub i64 %i.nw, %i.lg
  %i.ol = getelementptr i8, ptr %i.nc, i64 %i.ny
  %i.om = getelementptr i8, ptr %i.nd, i64 %i.ny
  br label %bb.bk

._crit_edge317.i:                                 ; preds = %.loopexit223.i, %.preheader228.i
  %i.on = add nuw nsw i32 %.0598324.i, 1
  %exitcond430.not.i = icmp eq i32 %.0598324.i, %i.fi
  br i1 %exitcond430.not.i, label %_ZN2cv6stereoL26computeDisparityBinarySGBMERKNS_3MatERS1_RKNS0_22StereoBinarySGBMParamsES4_S3_.exit, label %bb.bi, !llvm.loop !112

bb.bk:                                            ; preds = %.loopexit223.i, %.lr.ph316.i
  %indvars.iv427.i = phi i64 [ %i.nr, %.lr.ph316.i ], [ %indvars.iv.next428.i, %.loopexit223.i ] ; 7 uses
  %indvars.iv385.i = phi i32 [ %i.no, %.lr.ph316.i ], [ %indvars.iv.next386.i, %.loopexit223.i ] ; 2 uses
  %i.oo = phi ptr [ %i.ki, %.lr.ph316.i ], [ %i.or, %.loopexit223.i ] ; 3 uses
  %i.op = phi ptr [ %i.ke, %.lr.ph316.i ], [ %i.oq, %.loopexit223.i ] ; 17 uses
  %i.oq = phi ptr [ %i.kb, %.lr.ph316.i ], [ %i.op, %.loopexit223.i ] ; 14 uses
  %i.or = phi ptr [ %i.kj, %.lr.ph316.i ], [ %i.oo, %.loopexit223.i ] ; 7 uses
  %i.os = load ptr, ptr %i.ix, align 8, !tbaa !57 ; 2 uses
  %i.ot = ptrtoaddr ptr %i.os to i64              ; 2 uses
  %i.ou = load i64, ptr %i.iy, align 8, !tbaa !62
  %i.ov = mul i64 %i.ou, %indvars.iv427.i         ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.ov ; 7 uses
  %i.ox = mul nsw i64 %indvars.iv427.i, %i.fy
  %i.oy = select i1 %.not642.i, i64 %i.ox, i64 0  ; 5 uses
  %i.oz = getelementptr [2 x i8], ptr %i.ia, i64 %i.oy ; 11 uses
  %i.pa = getelementptr [2 x i8], ptr %i.ib, i64 %i.oy ; 3 uses
  br i1 %i.nj, label %bb.bl, label %.loopexit227.i

bb.bl:                                            ; preds = %bb.bk
  %i.pb = icmp ne i64 %indvars.iv427.i, 0         ; 2 uses
  %i.pc = add nsw i64 %indvars.iv427.i, %i.ka     ; 2 uses
  %i.pd = select i1 %i.pb, i64 %i.pc, i64 0       ; 3 uses
  %.not638263.i = icmp sgt i64 %i.pd, %i.pc
  br i1 %.not638263.i, label %.preheader226.i, label %.lr.ph266.i

.lr.ph266.i:                                      ; preds = %bb.bl
  %i.pe = icmp sgt i64 %indvars.iv427.i, 0
  %i.pf = trunc nsw i64 %indvars.iv427.i to i32
  %i.pg = add i32 %i.pf, %.neg.i
  %.sroa.speculated141.i = call i32 @llvm.smax.i32(i32 %i.pg, i32 0)
  %i.ph = getelementptr inbounds [2 x i8], ptr %i.oz, i64 %.idx645.i ; 2 uses
  %brmerge499.i = or i1 %i.ij, %i.pb
  %i.pi = shl i64 %i.oy, 1                        ; 4 uses
  %scevgep570 = getelementptr i8, ptr %scevgep569, i64 %i.pi
  %i.pj = add i64 %.idx645.i, %i.oy
  %i.pk = shl i64 %i.pj, 1
  %i.pl = add i64 %i.lz, %i.pi
  %i.pm = mul i64 %i.mu, %i.pd                    ; 2 uses
  %i.pn = add i64 %i.mx, %i.pm
  br label %bb.bm

.preheader226.i:                                  ; preds = %.loopexit217.i, %bb.bl
  br i1 %i.ij, label %.loopexit227.i, label %.lr.ph268.preheader.i

.lr.ph268.preheader.i:                            ; preds = %.preheader226.i
  call void @llvm.memset.p0.i64(ptr align 16 %i.pa, i8 0, i64 %i.jx, i1 false), !tbaa !59
  br label %.loopexit227.i

bb.bm:                                            ; preds = %.loopexit217.i, %.lr.ph266.i
  %indvar738 = phi i64 [ %indvar.next739, %.loopexit217.i ], [ 0, %.lr.ph266.i ] ; 2 uses
  %indvars.iv382.i = phi i64 [ %indvars.iv.next383.i, %.loopexit217.i ], [ %i.pd, %.lr.ph266.i ] ; 5 uses
  %i.po = mul i64 %i.mv, %indvar738               ; 2 uses
  %i.pp = add i64 %i.pm, %i.po
  %i.pq = add i64 %i.pn, %i.po
  %i.pr = trunc nsw i64 %indvars.iv382.i to i32
  %.sroa.speculated148.i = call i32 @llvm.smin.i32(i32 %i.iv, i32 %i.pr)
  %i.ps = srem i32 %.sroa.speculated148.i, %i.gi
  %i.pt = sext i32 %i.ps to i64                   ; 5 uses
  %i.pu = mul nsw i64 %i.pt, %i.fy
  %i.pv = getelementptr [2 x i8], ptr %i.ic, i64 %i.pu ; 20 uses
  %i.pw = icmp slt i64 %indvars.iv382.i, %i.jv
  br i1 %i.pw, label %.preheader221.i, label %.loopexit218.i

.preheader221.i:                                  ; preds = %bb.bm
  %i.px = load i32, ptr %i.cl, align 4, !tbaa !178 ; 6 uses
  %.not233.i = icmp slt i32 %i.px, 0
  %i.py = mul nsw i64 %indvars.iv382.i, %i.gt
  br i1 %.not233.i, label %._crit_edge237.split.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader221.i
  %i.pz = add nuw i32 %i.px, 1                    ; 3 uses
  %i.qa = sext i32 %i.pz to i64                   ; 3 uses
  %i.qb = zext nneg i32 %i.px to i64              ; 2 uses
  %wide.trip.count346.i = zext i32 %i.pz to i64   ; 8 uses
  %i.qc = mul i64 %i.mt, %i.qb
  %i.qd = shl nuw nsw i64 %wide.trip.count346.i, 1 ; 2 uses
  %i.qe = getelementptr i8, ptr %scevgep736, i64 %i.qc
  %scevgep737 = getelementptr i8, ptr %i.qe, i64 %i.qd
  %i.qf = mul i64 %i.pp, %i.qa
  %scevgep740 = getelementptr i8, ptr %.val66, i64 %i.qf
  %i.qg = mul i64 %i.pq, %i.qa
  %i.qh = getelementptr i8, ptr %.val66, i64 %i.qg
  %scevgep741 = getelementptr i8, ptr %i.qh, i64 %i.qd
  %i.qi = zext nneg i32 %i.px to i64
  %min.iters.check746 = icmp ult i32 %i.px, 3
  %bound0742 = icmp ult ptr %i.if, %scevgep741
  %bound1743 = icmp ult ptr %scevgep740, %scevgep737
  %found.conflict744 = and i1 %bound0742, %bound1743
  %stride.check = icmp slt i32 %i.pz, 0
  %i.qj = or i1 %found.conflict744, %stride.check
  %min.iters.check748 = icmp ult i32 %i.px, 15
  %i.qk = and i64 %wide.trip.count346.i, 12
  %n.vec750 = and i64 %wide.trip.count346.i, 2147483632 ; 4 uses
  %cmp.n757 = icmp eq i64 %n.vec750, %wide.trip.count346.i
  %min.epilog.iters.check762 = icmp eq i64 %i.qk, 0
  %n.vec764 = and i64 %wide.trip.count346.i, 2147483644 ; 3 uses
  %cmp.n770 = icmp eq i64 %n.vec764, %wide.trip.count346.i
  %xtraiter = and i64 %wide.trip.count346.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check759

iter.check759:                                    ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv348.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next349.i, %._crit_edge.i ] ; 3 uses
  %i.ql = add nsw i64 %indvars.iv348.i, %i.py
  %i.qm = mul nsw i64 %i.ql, %i.qa
  %i.qn = mul nuw nsw i64 %indvars.iv348.i, %i.qb
  %i.qo = getelementptr [2 x i8], ptr %.val66, i64 %i.qm ; 7 uses
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.qn ; 7 uses
  %brmerge = select i1 %min.iters.check746, i1 true, i1 %i.qj
  br i1 %brmerge, label %vec.epilog.scalar.ph760.preheader, label %vector.main.loop.iter.check747

vector.main.loop.iter.check747:                   ; preds = %iter.check759
  br i1 %min.iters.check748, label %vec.epilog.ph763, label %vector.body751

vector.body751:                                   ; preds = %vector.main.loop.iter.check747, %vector.body751
  %index752 = phi i64 [ %index.next755, %vector.body751 ], [ 0, %vector.main.loop.iter.check747 ] ; 3 uses
  %i.qq = getelementptr [2 x i8], ptr %i.qo, i64 %index752 ; 2 uses
  %i.qr = getelementptr i8, ptr %i.qq, i64 16
  %wide.load753 = load <8 x i16>, ptr %i.qq, align 2, !tbaa !59, !alias.scope !187
  %wide.load754 = load <8 x i16>, ptr %i.qr, align 2, !tbaa !59, !alias.scope !187
  %i.qs = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %index752 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store <8 x i16> %wide.load753, ptr %i.qs, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  store <8 x i16> %wide.load754, ptr %i.qt, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  %index.next755 = add nuw i64 %index752, 16      ; 2 uses
  %i.qu = icmp eq i64 %index.next755, %n.vec750
  br i1 %i.qu, label %middle.block756, label %vector.body751, !llvm.loop !116

middle.block756:                                  ; preds = %vector.body751
  br i1 %cmp.n757, label %._crit_edge.i, label %vec.epilog.iter.check761

vec.epilog.iter.check761:                         ; preds = %middle.block756
  br i1 %min.epilog.iters.check762, label %vec.epilog.scalar.ph760.preheader, label %vec.epilog.ph763, !prof !63

vec.epilog.ph763:                                 ; preds = %vector.main.loop.iter.check747, %vec.epilog.iter.check761
  %vec.epilog.resume.val758 = phi i64 [ %n.vec750, %vec.epilog.iter.check761 ], [ 0, %vector.main.loop.iter.check747 ]
  br label %vec.epilog.vector.body765

vec.epilog.vector.body765:                        ; preds = %vec.epilog.vector.body765, %vec.epilog.ph763
  %index766 = phi i64 [ %vec.epilog.resume.val758, %vec.epilog.ph763 ], [ %index.next768, %vec.epilog.vector.body765 ] ; 3 uses
  %i.qv = getelementptr [2 x i8], ptr %i.qo, i64 %index766
  %wide.load767 = load <4 x i16>, ptr %i.qv, align 2, !tbaa !59, !alias.scope !187
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %index766
  store <4 x i16> %wide.load767, ptr %i.qw, align 2, !tbaa !59, !alias.scope !188, !noalias !187
  %index.next768 = add nuw i64 %index766, 4       ; 2 uses
  %i.qx = icmp eq i64 %index.next768, %n.vec764
  br i1 %i.qx, label %vec.epilog.middle.block769, label %vec.epilog.vector.body765, !llvm.loop !117

vec.epilog.middle.block769:                       ; preds = %vec.epilog.vector.body765
  br i1 %cmp.n770, label %._crit_edge.i, label %vec.epilog.scalar.ph760.preheader

vec.epilog.scalar.ph760.preheader:                ; preds = %iter.check759, %vec.epilog.iter.check761, %vec.epilog.middle.block769
  %indvars.iv343.i.ph = phi i64 [ 0, %iter.check759 ], [ %n.vec764, %vec.epilog.middle.block769 ], [ %n.vec750, %vec.epilog.iter.check761 ] ; 3 uses
  %i.qy = sub nsw i64 %i.qi, %indvars.iv343.i.ph
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph760.prol.loopexit, label %vec.epilog.scalar.ph760.prol

vec.epilog.scalar.ph760.prol:                     ; preds = %vec.epilog.scalar.ph760.preheader, %vec.epilog.scalar.ph760.prol
  %indvars.iv343.i.prol = phi i64 [ %indvars.iv.next344.i.prol, %vec.epilog.scalar.ph760.prol ], [ %indvars.iv343.i.ph, %vec.epilog.scalar.ph760.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph760.prol ], [ 0, %vec.epilog.scalar.ph760.preheader ]
  %i.qz = getelementptr [2 x i8], ptr %i.qo, i64 %indvars.iv343.i.prol
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !59
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv343.i.prol
  store i16 %i.ra, ptr %i.rb, align 2, !tbaa !59
  %indvars.iv.next344.i.prol = add nuw nsw i64 %indvars.iv343.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph760.prol.loopexit, label %vec.epilog.scalar.ph760.prol, !llvm.loop !118

vec.epilog.scalar.ph760.prol.loopexit:            ; preds = %vec.epilog.scalar.ph760.prol, %vec.epilog.scalar.ph760.preheader
  %indvars.iv343.i.unr = phi i64 [ %indvars.iv343.i.ph, %vec.epilog.scalar.ph760.preheader ], [ %indvars.iv.next344.i.prol, %vec.epilog.scalar.ph760.prol ]
  %i.rc = icmp ult i64 %i.qy, 3
  br i1 %i.rc, label %._crit_edge.i, label %vec.epilog.scalar.ph760

._crit_edge237.split.i:                           ; preds = %._crit_edge.i, %.preheader221.i
  call void @llvm.memset.p0.i64(ptr align 2 %i.pv, i8 0, i64 %i.ja, i1 false)
  br i1 %brmerge.i, label %._crit_edge246.split.i, label %.lr.ph240.i.preheader

.lr.ph240.i.preheader:                            ; preds = %._crit_edge237.split.i
  %i.rd = shl nsw i64 %i.pt, 1
  %i.re = add nsw i64 %i.mn, %i.rd
  %i.rf = mul i64 %i.re, %i.fy
  %scevgep694 = getelementptr i8, ptr %scevgep693, i64 %i.rf
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 2 uses
  br label %iter.check719

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph760.prol.loopexit, %vec.epilog.scalar.ph760, %vec.epilog.middle.block769, %middle.block756
  %indvars.iv.next349.i = add nuw nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %exitcond352.not.i = icmp eq i64 %indvars.iv.next349.i, %wide.trip.count351.i
  br i1 %exitcond352.not.i, label %._crit_edge237.split.i, label %iter.check759, !llvm.loop !119

vec.epilog.scalar.ph760:                          ; preds = %vec.epilog.scalar.ph760.prol.loopexit, %vec.epilog.scalar.ph760
  %indvars.iv343.i = phi i64 [ %indvars.iv.next344.i.3, %vec.epilog.scalar.ph760 ], [ %indvars.iv343.i.unr, %vec.epilog.scalar.ph760.prol.loopexit ] ; 6 uses
  %i.ri = getelementptr [2 x i8], ptr %i.qo, i64 %indvars.iv343.i
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !59
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv343.i
  store i16 %i.rj, ptr %i.rk, align 2, !tbaa !59
  %indvars.iv.next344.i = add nuw nsw i64 %indvars.iv343.i, 1 ; 2 uses
  %i.rl = getelementptr [2 x i8], ptr %i.qo, i64 %indvars.iv.next344.i
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !59
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv.next344.i
  store i16 %i.rm, ptr %i.rn, align 2, !tbaa !59
  %indvars.iv.next344.i.1 = add nuw nsw i64 %indvars.iv343.i, 2 ; 2 uses
  %i.ro = getelementptr [2 x i8], ptr %i.qo, i64 %indvars.iv.next344.i.1
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !59
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv.next344.i.1
  store i16 %i.rp, ptr %i.rq, align 2, !tbaa !59
  %indvars.iv.next344.i.2 = add nuw nsw i64 %indvars.iv343.i, 3 ; 2 uses
  %i.rr = getelementptr [2 x i8], ptr %i.qo, i64 %indvars.iv.next344.i.2
  %i.rs = load i16, ptr %i.rr, align 2, !tbaa !59
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv.next344.i.2
  store i16 %i.rs, ptr %i.rt, align 2, !tbaa !59
  %indvars.iv.next344.i.3 = add nuw nsw i64 %indvars.iv343.i, 4 ; 2 uses
  %exitcond347.not.i.3 = icmp eq i64 %indvars.iv.next344.i.3, %wide.trip.count346.i
  br i1 %exitcond347.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph760, !llvm.loop !120

iter.check719:                                    ; preds = %.lr.ph240.i.preheader, %._crit_edge241.i
  %indvar695 = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvar.next696, %._crit_edge241.i ] ; 2 uses
  %indvars.iv358.i = phi i64 [ 0, %.lr.ph240.i.preheader ], [ %indvars.iv.next359.i, %._crit_edge241.i ] ; 3 uses
  %i.ru = icmp eq i64 %indvars.iv358.i, 0
  %i.rv = select i1 %i.ru, i16 %i.je, i16 1       ; 4 uses
  %invariant.gep485.i = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %indvars.iv358.i ; 7 uses
  br i1 %min.iters.check702, label %vec.epilog.scalar.ph720.preheader.new, label %vector.memcheck692

vector.memcheck692:                               ; preds = %iter.check719
  %i.rw = mul i64 %i.mr, %indvar695
  %scevgep697 = getelementptr i8, ptr %i.mz, i64 %i.rw
  %bound0698 = icmp ult ptr %i.pv, %scevgep697
  %bound1699 = icmp ult ptr %invariant.gep485.i, %scevgep694
  %found.conflict700 = and i1 %bound0698, %bound1699
  br i1 %found.conflict700, label %vec.epilog.scalar.ph720.preheader.new, label %vector.main.loop.iter.check703

vec.epilog.scalar.ph720.preheader.new:            ; preds = %vector.memcheck692, %iter.check719
  br label %vec.epilog.scalar.ph720

vector.main.loop.iter.check703:                   ; preds = %vector.memcheck692
  br i1 %min.iters.check704, label %vec.epilog.ph723, label %vector.ph705

vector.ph705:                                     ; preds = %vector.main.loop.iter.check703
  %broadcast.splatinsert707 = insertelement <8 x i16> poison, i16 %i.rv, i64 0
  %broadcast.splat708 = shufflevector <8 x i16> %broadcast.splatinsert707, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body709

vector.body709:                                   ; preds = %vector.ph705, %vector.body709
  %index710 = phi i64 [ 0, %vector.ph705 ], [ %index.next715, %vector.body709 ] ; 3 uses
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %index710 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2cv6stereo20StereoBinarySGBMImpl7computeERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.tz, i64 %indvars.iv369.i
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !59
  %i.vs = add i16 %i.vr, %i.vp
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.uc, i64 %indvars.iv369.i
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !59
  %i.vv = sub i16 %i.vs, %i.vu                    ; 2 uses
  %i.vw = add nuw nsw i64 %indvars.iv369.i, %indvars.iv374.i ; 4 uses
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %i.vw
  store i16 %i.vv, ptr %i.vx, align 2, !tbaa !59
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.ph, i64 %i.vw
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !59
  %i.wa = add i16 %i.vz, %i.vv
  %i.wb = getelementptr inbounds nuw [2 x i8], ptr %i.th, i64 %i.vw
  %i.wc = load i16, ptr %i.wb, align 2, !tbaa !59
  %i.wd = sub i16 %i.wa, %i.wc
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.oz, i64 %i.vw
  store i16 %i.wd, ptr %i.we, align 2, !tbaa !59
  %indvars.iv.next370.i = add nuw nsw i64 %indvars.iv369.i, 1 ; 2 uses
  %exitcond373.not.i = icmp eq i64 %indvars.iv.next370.i, %i.ju
  br i1 %exitcond373.not.i, label %._crit_edge256.i, label %scalar.ph634, !llvm.loop !128

._crit_edge256.i:                                 ; preds = %vector.body638, %scalar.ph634
  %indvars.iv.next375.i = add nuw nsw i64 %indvars.iv374.i, %i.iz ; 2 uses
  %i.wf = icmp slt i64 %indvars.iv.next375.i, %i.fy
  %indvar.next613 = add i64 %indvar612, 1
  br i1 %i.wf, label %.lr.ph255.i, label %.loopexit218.i, !llvm.loop !129

iter.check677:                                    ; preds = %.lr.ph249.i.preheader, %._crit_edge250.i
  %indvar650 = phi i64 [ 0, %.lr.ph249.i.preheader ], [ %indvar.next651, %._crit_edge250.i ] ; 3 uses
  %indvars.iv366.i = phi i64 [ %i.iz, %.lr.ph249.i.preheader ], [ %indvars.iv.next367.i, %._crit_edge250.i ] ; 3 uses
  %i.wg = trunc i64 %indvars.iv366.i to i32       ; 3 uses
  %i.wh = add i32 %i.jb, %i.wg
  %.sroa.speculated120.i = call i32 @llvm.smin.i32(i32 %i.jg, i32 %i.wh)
  %i.wi = sext i32 %.sroa.speculated120.i to i64
  %i.wj = getelementptr inbounds [2 x i8], ptr %i.if, i64 %i.wi ; 6 uses
  %i.wk = add i32 %.neg644.i, %i.wg
  %.sroa.speculated113.i = call i32 @llvm.smax.i32(i32 %i.wk, i32 0)
  %i.wl = zext nneg i32 %.sroa.speculated113.i to i64
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.wl ; 6 uses
  %i.wn = sub i32 %i.wg, %i.ea
  %i.wo = sext i32 %i.wn to i64
  %invariant.gep486.i = getelementptr [2 x i8], ptr %i.pv, i64 %i.wo ; 6 uses
  %invariant.gep488.i = getelementptr [2 x i8], ptr %i.pv, i64 %indvars.iv366.i ; 6 uses
  br i1 %min.iters.check660, label %vec.epilog.scalar.ph678.preheader.new, label %vector.memcheck649

vector.memcheck649:                               ; preds = %iter.check677
  %i.wp = mul i64 %i.md, %indvar650
  %i.wq = add i64 %i.tc, %i.wp                    ; 3 uses
  %i.wr = mul i64 %indvar650, %i.ju               ; 3 uses
  %i.ws = trunc i64 %i.wr to i32
  %i.wt = sub i32 %i.ws, %i.ml
  %smax656 = call i32 @llvm.smax.i32(i32 %i.wt, i32 0)
  %i.wu = shl nuw i32 %smax656, 1
  %i.wv = zext i32 %i.wu to i64
  %i.ww = add i64 %i.mk, %i.wv
  %i.wx = trunc i64 %i.wr to i32
  %i.wy = add i32 %i.mj, %i.wx
  %i.wz = call i32 @llvm.smin.i32(i32 %i.wy, i32 %i.jg)
  %smin653 = sext i32 %i.wz to i64
  %i.xa = shl nsw i64 %smin653, 1
  %i.xb = add i64 %i.mh, %i.xa
  %i.xc = shl i64 %i.wr, 32
  %i.xd = ashr exact i64 %i.xc, 31
  %i.xe = add i64 %i.td, %i.xd
  %i.xf = sub i64 %i.xe, %i.wq
  %diff.check652 = icmp ugt i64 %i.xf, -32
  %i.xg = sub i64 %i.xb, %i.wq
  %diff.check654 = icmp ugt i64 %i.xg, -32
  %conflict.rdx655 = or i1 %diff.check652, %diff.check654
  %i.xh = sub i64 %i.ww, %i.wq
  %diff.check657 = icmp ugt i64 %i.xh, -32
  %conflict.rdx658 = or i1 %conflict.rdx655, %diff.check657
  br i1 %conflict.rdx658, label %vec.epilog.scalar.ph678.preheader.new, label %vector.main.loop.iter.check661

vec.epilog.scalar.ph678.preheader.new:            ; preds = %vector.memcheck649, %iter.check677
  br label %vec.epilog.scalar.ph678

vector.main.loop.iter.check661:                   ; preds = %vector.memcheck649
  br i1 %min.iters.check662, label %vec.epilog.vector.body683, label %vector.body665

vector.body665:                                   ; preds = %vector.main.loop.iter.check661, %vector.body665
  %index666 = phi i64 [ %index.next673, %vector.body665 ], [ 0, %vector.main.loop.iter.check661 ] ; 5 uses
  %i.xi = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %index666 ; 2 uses
  %i.xj = getelementptr i8, ptr %i.xi, i64 16
  %wide.load667 = load <8 x i16>, ptr %i.xi, align 2, !tbaa !59
  %wide.load668 = load <8 x i16>, ptr %i.xj, align 2, !tbaa !59
  %i.xk = getelementptr inbounds nuw [2 x i8], ptr %i.wj, i64 %index666 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %wide.load669 = load <8 x i16>, ptr %i.xk, align 2, !tbaa !59
  %wide.load670 = load <8 x i16>, ptr %i.xl, align 2, !tbaa !59
  %i.xm = add <8 x i16> %wide.load669, %wide.load667
  %i.xn = add <8 x i16> %wide.load670, %wide.load668
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %i.wm, i64 %index666 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  %wide.load671 = load <8 x i16>, ptr %i.xo, align 2, !tbaa !59
  %wide.load672 = load <8 x i16>, ptr %i.xp, align 2, !tbaa !59
  %i.xq = sub <8 x i16> %i.xm, %wide.load671
  %i.xr = sub <8 x i16> %i.xn, %wide.load672
  %i.xs = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %index666 ; 2 uses
  %i.xt = getelementptr i8, ptr %i.xs, i64 16
  store <8 x i16> %i.xq, ptr %i.xs, align 2, !tbaa !59
  store <8 x i16> %i.xr, ptr %i.xt, align 2, !tbaa !59
  %index.next673 = add nuw i64 %index666, 16      ; 2 uses
  %i.xu = icmp eq i64 %index.next673, %i.ju
  br i1 %i.xu, label %._crit_edge250.i, label %vector.body665, !llvm.loop !130

vec.epilog.vector.body683:                        ; preds = %vector.main.loop.iter.check661
  %wide.load685 = load <4 x i16>, ptr %invariant.gep486.i, align 2, !tbaa !59
  %wide.load686 = load <4 x i16>, ptr %i.wj, align 2, !tbaa !59
  %i.xv = add <4 x i16> %wide.load686, %wide.load685
  %wide.load687 = load <4 x i16>, ptr %i.wm, align 2, !tbaa !59
  %i.xw = sub <4 x i16> %i.xv, %wide.load687
  store <4 x i16> %i.xw, ptr %invariant.gep488.i, align 2, !tbaa !59
  %i.xx = getelementptr i8, ptr %invariant.gep486.i, i64 8
  %wide.load685.1 = load <4 x i16>, ptr %i.xx, align 2, !tbaa !59
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %wide.load686.1 = load <4 x i16>, ptr %i.xy, align 2, !tbaa !59
  %i.xz = add <4 x i16> %wide.load686.1, %wide.load685.1
  %i.ya = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %wide.load687.1 = load <4 x i16>, ptr %i.ya, align 2, !tbaa !59
  %i.yb = sub <4 x i16> %i.xz, %wide.load687.1
  %i.yc = getelementptr i8, ptr %invariant.gep488.i, i64 8
  store <4 x i16> %i.yb, ptr %i.yc, align 2, !tbaa !59
  %i.yd = getelementptr i8, ptr %invariant.gep486.i, i64 16
  %wide.load685.2 = load <4 x i16>, ptr %i.yd, align 2, !tbaa !59
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wj, i64 16
  %wide.load686.2 = load <4 x i16>, ptr %i.ye, align 2, !tbaa !59
  %i.yf = add <4 x i16> %wide.load686.2, %wide.load685.2
  %i.yg = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  %wide.load687.2 = load <4 x i16>, ptr %i.yg, align 2, !tbaa !59
  %i.yh = sub <4 x i16> %i.yf, %wide.load687.2
  %i.yi = getelementptr i8, ptr %invariant.gep488.i, i64 16
  store <4 x i16> %i.yh, ptr %i.yi, align 2, !tbaa !59
  br label %._crit_edge250.i

vec.epilog.scalar.ph678:                          ; preds = %vec.epilog.scalar.ph678, %vec.epilog.scalar.ph678.preheader.new
  %indvars.iv361.i = phi i64 [ 0, %vec.epilog.scalar.ph678.preheader.new ], [ %indvars.iv.next362.i.1, %vec.epilog.scalar.ph678 ] ; 6 uses
  %niter844 = phi i64 [ 0, %vec.epilog.scalar.ph678.preheader.new ], [ %niter844.next.1, %vec.epilog.scalar.ph678 ]
  %gep487.i = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %indvars.iv361.i
  %i.yj = load i16, ptr %gep487.i, align 2, !tbaa !59
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %i.wj, i64 %indvars.iv361.i
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !59
  %i.ym = add i16 %i.yl, %i.yj
  %i.yn = getelementptr inbounds nuw [2 x i8], ptr %i.wm, i64 %indvars.iv361.i
  %i.yo = load i16, ptr %i.yn, align 2, !tbaa !59
  %i.yp = sub i16 %i.ym, %i.yo
  %gep489.i = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %indvars.iv361.i
  store i16 %i.yp, ptr %gep489.i, align 2, !tbaa !59
  %indvars.iv.next362.i = or disjoint i64 %indvars.iv361.i, 1 ; 4 uses
  %gep487.i.1 = getelementptr [2 x i8], ptr %invariant.gep486.i, i64 %indvars.iv.next362.i
  %i.yq = load i16, ptr %gep487.i.1, align 2, !tbaa !59
  %i.yr = getelementptr inbounds nuw [2 x i8], ptr %i.wj, i64 %indvars.iv.next362.i
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !59
  %i.yt = add i16 %i.ys, %i.yq
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %i.wm, i64 %indvars.iv.next362.i
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !59
  %i.yw = sub i16 %i.yt, %i.yv
  %gep489.i.1 = getelementptr [2 x i8], ptr %invariant.gep488.i, i64 %indvars.iv.next362.i
  store i16 %i.yw, ptr %gep489.i.1, align 2, !tbaa !59
  %indvars.iv.next362.i.1 = add nuw nsw i64 %indvars.iv361.i, 2
  %niter844.next.1 = add i64 %niter844, 2         ; 2 uses
  %niter844.ncmp.1 = icmp eq i64 %niter844.next.1, %i.ju
  br i1 %niter844.ncmp.1, label %._crit_edge250.i, label %vec.epilog.scalar.ph678, !llvm.loop !131

._crit_edge250.i:                                 ; preds = %vector.body665, %vec.epilog.scalar.ph678, %vec.epilog.vector.body683
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, %i.iz ; 2 uses
  %i.yx = icmp slt i64 %indvars.iv.next367.i, %i.fy
  %indvar.next651 = add i64 %indvar650, 1
  br i1 %i.yx, label %iter.check677, label %.loopexit218.i, !llvm.loop !132

.loopexit218.i:                                   ; preds = %._crit_edge250.i, %._crit_edge256.i, %.preheader219.i, %bb.bm
  br i1 %brmerge499.i, label %.loopexit217.i, label %iter.check594

iter.check594:                                    ; preds = %.loopexit218.i
  %i.yy = icmp eq i64 %indvars.iv382.i, 0
  %i.yz = select i1 %i.yy, i16 %i.je, i16 1       ; 5 uses
  br i1 %min.iters.check577, label %vec.epilog.scalar.ph595.preheader, label %vector.memcheck568

vector.memcheck568:                               ; preds = %iter.check594
  %i.za = shl nsw i64 %i.pt, 1
  %i.zb = add nsw i64 %i.ln, %i.za
  %i.zc = mul i64 %i.zb, %i.fy
  %scevgep572 = getelementptr i8, ptr %scevgep571, i64 %i.zc
  %bound0573 = icmp ult ptr %i.oz, %scevgep572
  %bound1574 = icmp ult ptr %i.pv, %scevgep570
  %found.conflict575 = and i1 %bound0573, %bound1574
  br i1 %found.conflict575, label %vec.epilog.scalar.ph595.preheader, label %vector.main.loop.iter.check578

vector.main.loop.iter.check578:                   ; preds = %vector.memcheck568
  br i1 %min.iters.check579, label %vec.epilog.ph598, label %vector.ph580

vector.ph580:                                     ; preds = %vector.main.loop.iter.check578
  %broadcast.splatinsert582 = insertelement <8 x i16> poison, i16 %i.yz, i64 0
  %broadcast.splat583 = shufflevector <8 x i16> %broadcast.splatinsert582, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body584

vector.body584:                                   ; preds = %vector.ph580, %vector.body584
  %index585 = phi i64 [ 0, %vector.ph580 ], [ %index.next590, %vector.body584 ] ; 3 uses
  %i.zd = getelementptr inbounds nuw [2 x i8], ptr %i.oz, i64 %index585 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 16 ; 2 uses
  %wide.load586 = load <8 x i16>, ptr %i.zd, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  %wide.load587 = load <8 x i16>, ptr %i.ze, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  %i.zf = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %index585 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %wide.load588 = load <8 x i16>, ptr %i.zf, align 2, !tbaa !59, !alias.scope !192
  %wide.load589 = load <8 x i16>, ptr %i.zg, align 2, !tbaa !59, !alias.scope !192
  %i.zh = mul <8 x i16> %wide.load588, %broadcast.splat583
  %i.zi = mul <8 x i16> %wide.load589, %broadcast.splat583
  %i.zj = add <8 x i16> %i.zh, %wide.load586
  %i.zk = add <8 x i16> %i.zi, %wide.load587
  store <8 x i16> %i.zj, ptr %i.zd, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  store <8 x i16> %i.zk, ptr %i.ze, align 16, !tbaa !59, !alias.scope !191, !noalias !192
  %index.next590 = add nuw i64 %index585, 16      ; 2 uses
  %i.zl = icmp eq i64 %index.next590, %n.vec581
  br i1 %i.zl, label %middle.block591, label %vector.body584, !llvm.loop !136

middle.block591:                                  ; preds = %vector.body584
  br i1 %cmp.n592, label %.loopexit217.i, label %vec.epilog.iter.check596

vec.epilog.iter.check596:                         ; preds = %middle.block591
  br i1 %min.epilog.iters.check597, label %vec.epilog.scalar.ph595.preheader, label %vec.epilog.ph598, !prof !63

vec.epilog.ph598:                                 ; preds = %vector.main.loop.iter.check578, %vec.epilog.iter.check596
  %vec.epilog.resume.val593 = phi i64 [ %n.vec581, %vec.epilog.iter.check596 ], [ 0, %vector.main.loop.iter.check578 ]
  %broadcast.splatinsert600 = insertelement <4 x i16> poison, i16 %i.yz, i64 0
  %broadcast.splat601 = shufflevector <4 x i16> %broadcast.splatinsert600, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body602

vec.epilog.vector.body602:                        ; preds = %vec.epilog.vector.body602, %vec.epilog.ph598
  %index603 = phi i64 [ %vec.epilog.resume.val593, %vec.epilog.ph598 ], [ %index.next606, %vec.epilog.vector.body602 ] ; 3 uses
  %i.zm = getelementptr inbounds nuw [2 x i8], ptr %i.oz, i64 %index603 ; 2 uses
  %wide.load604 = load <4 x i16>, ptr %i.zm, align 8, !tbaa !59, !alias.scope !191, !noalias !192
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %index603
  %wide.load605 = load <4 x i16>, ptr %i.zn, align 2, !tbaa !59, !alias.scope !192
  %i.zo = mul <4 x i16> %wide.load605, %broadcast.splat601
  %i.zp = add <4 x i16> %i.zo, %wide.load604
  store <4 x i16> %i.zp, ptr %i.zm, align 8, !tbaa !59, !alias.scope !191, !noalias !192
  %index.next606 = add nuw i64 %index603, 4       ; 2 uses
  %i.zq = icmp eq i64 %index.next606, %n.vec599
  br i1 %i.zq, label %vec.epilog.middle.block607, label %vec.epilog.vector.body602, !llvm.loop !137

vec.epilog.middle.block607:                       ; preds = %vec.epilog.vector.body602
  br i1 %cmp.n608, label %.loopexit217.i, label %vec.epilog.scalar.ph595.preheader

vec.epilog.scalar.ph595.preheader:                ; preds = %iter.check594, %vector.memcheck568, %vec.epilog.iter.check596, %vec.epilog.middle.block607
  %indvars.iv377.i.ph = phi i64 [ 0, %iter.check594 ], [ 0, %vector.memcheck568 ], [ %n.vec581, %vec.epilog.iter.check596 ], [ %n.vec599, %vec.epilog.middle.block607 ] ; 5 uses
  %.neg861 = or disjoint i64 %indvars.iv377.i.ph, 1
  br i1 %lcmp.mod846.not, label %vec.epilog.scalar.ph595.prol.loopexit, label %vec.epilog.scalar.ph595.prol

vec.epilog.scalar.ph595.prol:                     ; preds = %vec.epilog.scalar.ph595.preheader
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.oz, i64 %indvars.iv377.i.ph ; 2 uses
  %i.zs = load i16, ptr %i.zr, align 8, !tbaa !59
  %i.zt = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %indvars.iv377.i.ph
  %i.zu = load i16, ptr %i.zt, align 2, !tbaa !59
  %i.zv = mul i16 %i.zu, %i.yz
  %i.zw = add i16 %i.zv, %i.zs
  store i16 %i.zw, ptr %i.zr, align 8, !tbaa !59
  %indvars.iv.next378.i.prol = or disjoint i64 %indvars.iv377.i.ph, 1
  br label %vec.epilog.scalar.ph595.prol.loopexit

vec.epilog.scalar.ph595.prol.loopexit:            ; preds = %vec.epilog.scalar.ph595.prol, %vec.epilog.scalar.ph595.preheader
  %indvars.iv377.i.unr = phi i64 [ %indvars.iv377.i.ph, %vec.epilog.scalar.ph595.preheader ], [ %indvars.iv.next378.i.prol, %vec.epilog.scalar.ph595.prol ]
  %i.zx = icmp eq i64 %.pre-phi.i, %.neg861
  br i1 %i.zx, label %.loopexit217.i, label %vec.epilog.scalar.ph595

vec.epilog.scalar.ph595:                          ; preds = %vec.epilog.scalar.ph595.prol.loopexit, %vec.epilog.scalar.ph595
  %indvars.iv377.i = phi i64 [ %indvars.iv.next378.i.1, %vec.epilog.scalar.ph595 ], [ %indvars.iv377.i.unr, %vec.epilog.scalar.ph595.prol.loopexit ] ; 4 uses
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.oz, i64 %indvars.iv377.i ; 2 uses
  %i.zz = load i16, ptr %i.zy, align 2, !tbaa !59
  %i.aaa = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %indvars.iv377.i
  %i.aab = load i16, ptr %i.aaa, align 2, !tbaa !59
  %i.aac = mul i16 %i.aab, %i.yz
  %i.aad = add i16 %i.aac, %i.zz
  store i16 %i.aad, ptr %i.zy, align 2, !tbaa !59
  %indvars.iv.next378.i = add nuw nsw i64 %indvars.iv377.i, 1 ; 2 uses
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %i.oz, i64 %indvars.iv.next378.i ; 2 uses
  %i.aaf = load i16, ptr %i.aae, align 2, !tbaa !59
  %i.aag = getelementptr inbounds nuw [2 x i8], ptr %i.pv, i64 %indvars.iv.next378.i
  %i.aah = load i16, ptr %i.aag, align 2, !tbaa !59
  %i.aai = mul i16 %i.aah, %i.yz
  %i.aaj = add i16 %i.aai, %i.aaf
  store i16 %i.aaj, ptr %i.aae, align 2, !tbaa !59
  %indvars.iv.next378.i.1 = add nuw nsw i64 %indvars.iv377.i, 2 ; 2 uses
  %exitcond381.not.i.1 = icmp eq i64 %indvars.iv.next378.i.1, %.pre-phi.i
  br i1 %exitcond381.not.i.1, label %.loopexit217.i, label %vec.epilog.scalar.ph595, !llvm.loop !138

.loopexit217.i:                                   ; preds = %vec.epilog.scalar.ph595.prol.loopexit, %vec.epilog.scalar.ph595, %middle.block591, %vec.epilog.middle.block607, %.loopexit218.i, %bb.bn
  %indvars.iv.next383.i = add nsw i64 %indvars.iv382.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next383.i to i32
  %exitcond387.not.i = icmp eq i32 %indvars.iv385.i, %lftr.wideiv.i
  %indvar.next739 = add i64 %indvar738, 1
  br i1 %exitcond387.not.i, label %.preheader226.i, label %bb.bm, !llvm.loop !139

.loopexit227.i:                                   ; preds = %.lr.ph268.preheader.i, %.preheader226.i, %bb.bk
  %i.aak = getelementptr inbounds [2 x i8], ptr %i.oq, i64 %i.ir
  %i.aal = getelementptr inbounds i8, ptr %i.aak, i64 -16
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aal, i8 0, i64 %i.ji, i1 false)
  %i.aam = getelementptr inbounds [2 x i8], ptr %i.oq, i64 %i.jk
  %i.aan = getelementptr inbounds i8, ptr %i.aam, i64 -16
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.aan, i8 0, i64 %i.ji, i1 false)
  %i.aao = getelementptr inbounds i8, ptr %i.or, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aao, i8 0, i64 16, i1 false)
  %i.aap = getelementptr inbounds [2 x i8], ptr %i.or, i64 %i.jl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.aap, i8 0, i64 16, i1 false)
  br i1 %.not639280.i, label %._crit_edge284.i, label %.lr.ph283.i.preheader

.lr.ph283.i.preheader:                            ; preds = %.loopexit227.i
  %i.aaq = shl i64 %i.oy, 1                       ; 2 uses
  %i.aar = getelementptr i8, ptr %i.oq, i64 %i.kt
  %i.aas = getelementptr i8, ptr %i.aar, i64 %i.ns
  %i.aat = getelementptr i8, ptr %i.oq, i64 %i.kt
  %i.aau = getelementptr i8, ptr %i.aat, i64 %i.nw
  %i.aav = getelementptr i8, ptr %i.oq, i64 %i.ky
  %i.aaw = getelementptr i8, ptr %i.aav, i64 %i.kt
  %i.aax = getelementptr i8, ptr %i.aaw, i64 %i.ns
  %i.aay = getelementptr i8, ptr %i.ol, i64 %i.aaq
  %i.aaz = getelementptr i8, ptr %i.om, i64 %i.aaq
  %i.aba = getelementptr i8, ptr %i.oq, i64 %i.oc
  %i.abb = getelementptr i8, ptr %i.oq, i64 %i.oe
  %i.abc = getelementptr i8, ptr %i.oq, i64 %i.og
  %i.abd = getelementptr i8, ptr %i.oq, i64 %i.oi
  %i.abe = getelementptr i8, ptr %i.oq, i64 %i.ok
  %i.abf = getelementptr i8, ptr %i.op, i64 %i.lh
  %i.abg = getelementptr i8, ptr %i.abf, i64 %i.nw
  %i.abh = getelementptr i8, ptr %i.op, i64 %reass.sub
  %i.abi = getelementptr i8, ptr %i.abh, i64 -2
  %i.abj = getelementptr i8, ptr %i.op, i64 %i.lj
  %i.abk = getelementptr i8, ptr %i.abj, i64 %i.nw
  %i.abl = getelementptr i8, ptr %i.op, i64 %reass.sub773
  %i.abm = getelementptr i8, ptr %i.abl, i64 2
  %i.abn = getelementptr i8, ptr %i.op, i64 %i.ll
  %i.abo = getelementptr i8, ptr %i.abn, i64 %i.nw
  %i.abp = getelementptr i8, ptr %i.op, i64 %i.kw
  %i.abq = getelementptr i8, ptr %i.abp, i64 -2
  %i.abr = getelementptr i8, ptr %i.abq, i64 %i.ns
  %i.abs = getelementptr i8, ptr %i.op, i64 %i.kw
  %i.abt = getelementptr i8, ptr %i.abs, i64 %i.kt
  %i.abu = getelementptr i8, ptr %i.abt, i64 -2
  %i.abv = getelementptr i8, ptr %i.abu, i64 %i.ns
  %i.abw = getelementptr i8, ptr %i.op, i64 %i.kw
  %i.abx = getelementptr i8, ptr %i.abw, i64 2
  %i.aby = getelementptr i8, ptr %i.abx, i64 %i.ns
  %i.abz = getelementptr i8, ptr %i.op, i64 %i.kw
  %i.aca = getelementptr i8, ptr %i.abz, i64 %i.kt
  %i.acb = getelementptr i8, ptr %i.aca, i64 2
  %i.acc = getelementptr i8, ptr %i.acb, i64 %i.ns
  %i.acd = getelementptr i8, ptr %i.op, i64 %i.lg
  %i.ace = getelementptr i8, ptr %i.acd, i64 %i.ky
  %i.acf = getelementptr i8, ptr %i.ace, i64 %i.kt
  %i.acg = getelementptr i8, ptr %i.acf, i64 %i.ns
  %i.ach = getelementptr i8, ptr %i.op, i64 %i.lg
  %i.aci = getelementptr i8, ptr %i.ach, i64 %i.ky
  %i.acj = getelementptr i8, ptr %i.aci, i64 -2
  %i.ack = getelementptr i8, ptr %i.acj, i64 %i.ns
  %i.acl = getelementptr i8, ptr %i.op, i64 %i.lg
  %i.acm = getelementptr i8, ptr %i.acl, i64 %i.ky
  %i.acn = getelementptr i8, ptr %i.acm, i64 %i.kt
  %i.aco = getelementptr i8, ptr %i.acn, i64 -2
  %i.acp = getelementptr i8, ptr %i.aco, i64 %i.ns
  %i.acq = getelementptr i8, ptr %i.op, i64 %i.lg
  %i.acr = getelementptr i8, ptr %i.acq, i64 %i.ky
  %i.acs = getelementptr i8, ptr %i.acr, i64 2
  %i.act = getelementptr i8, ptr %i.acs, i64 %i.ns
  %i.acu = getelementptr i8, ptr %i.op, i64 %i.lg
  %i.acv = getelementptr i8, ptr %i.acu, i64 %i.ky
  %i.acw = getelementptr i8, ptr %i.acv, i64 %i.kt
  %i.acx = getelementptr i8, ptr %i.acw, i64 2
  %i.acy = getelementptr i8, ptr %i.acx, i64 %i.ns
  br label %.lr.ph283.i

.lr.ph283.i:                                      ; preds = %.lr.ph283.i.preheader, %._crit_edge276.i
  %indvar = phi i64 [ 0, %.lr.ph283.i.preheader ], [ %indvar.next, %._crit_edge276.i ] ; 3 uses
  %indvars.iv396.i = phi i64 [ %i.np, %.lr.ph283.i.preheader ], [ %indvars.iv.next397.i, %._crit_edge276.i ] ; 4 uses
  %i.acz = mul i64 %i.nt, %indvar                 ; 23 uses
  %scevgep = getelementptr i8, ptr %i.aas, i64 %i.acz ; 17 uses
  %scevgep209 = getelementptr i8, ptr %i.aau, i64 %i.acz ; 10 uses
  %i.ada = add i64 %i.nx, %i.acz                  ; 2 uses
  %scevgep210 = getelementptr i8, ptr %i.oq, i64 %i.ada ; 10 uses
  %scevgep211 = getelementptr i8, ptr %i.aax, i64 %i.acz ; 7 uses
  %i.adb = mul i64 %i.nz, %indvar                 ; 2 uses
  %scevgep212 = getelementptr i8, ptr %i.aay, i64 %i.adb ; 15 uses
  %scevgep213 = getelementptr i8, ptr %i.aaz, i64 %i.adb ; 3 uses
  %scevgep214 = getelementptr i8, ptr %i.aba, i64 %i.acz ; 3 uses
  %scevgep215 = getelementptr i8, ptr %i.abb, i64 %i.acz ; 3 uses
  %scevgep216 = getelementptr i8, ptr %i.abc, i64 %i.acz ; 3 uses
  %scevgep217 = getelementptr i8, ptr %i.abd, i64 %i.acz ; 3 uses
  %scevgep218 = getelementptr i8, ptr %i.abe, i64 %i.acz ; 3 uses
  %scevgep219 = getelementptr i8, ptr %i.abg, i64 %i.acz ; 3 uses
  %scevgep220 = getelementptr i8, ptr %i.abi, i64 %i.acz ; 3 uses
  %scevgep221 = getelementptr i8, ptr %i.abk, i64 %i.acz ; 3 uses
  %scevgep222 = getelementptr i8, ptr %i.abm, i64 %i.acz ; 3 uses
  %scevgep223 = getelementptr i8, ptr %i.abo, i64 %i.acz ; 3 uses
  %scevgep224 = getelementptr i8, ptr %i.op, i64 %i.ada ; 5 uses
  %scevgep225 = getelementptr i8, ptr %i.abr, i64 %i.acz ; 5 uses
  %scevgep226 = getelementptr i8, ptr %i.abv, i64 %i.acz ; 5 uses
  %scevgep227 = getelementptr i8, ptr %i.aby, i64 %i.acz ; 5 uses
  %scevgep228 = getelementptr i8, ptr %i.acc, i64 %i.acz ; 5 uses
  %scevgep229 = getelementptr i8, ptr %i.acg, i64 %i.acz ; 5 uses
  %scevgep230 = getelementptr i8, ptr %i.ack, i64 %i.acz ; 5 uses
  %scevgep231 = getelementptr i8, ptr %i.acp, i64 %i.acz ; 5 uses
  %scevgep232 = getelementptr i8, ptr %i.act, i64 %i.acz ; 5 uses
  %scevgep233 = getelementptr i8, ptr %i.acy, i64 %i.acz ; 5 uses
  %i.adc = shl nsw i64 %indvars.iv396.i, 3        ; 4 uses
  %i.add = mul nsw i64 %i.adc, %i.gf              ; 2 uses
  %i.ade = sub nsw i64 %indvars.iv396.i, %i.nq
  %.idx464.i = shl nsw i64 %i.ade, 4
  %i.adf = getelementptr inbounds i8, ptr %i.or, i64 %.idx464.i
  %i.adg = load i16, ptr %i.adf, align 2, !tbaa !59
  %i.adh = sext i16 %i.adg to i32
  %i.adi = add nsw i32 %.sroa.speculated173.i, %i.adh ; 3 uses
  %i.adj = getelementptr [2 x i8], ptr %i.oo, i64 %i.adc ; 2 uses
  %i.adk = getelementptr i8, ptr %i.adj, i64 -14
  %i.adl = load i16, ptr %i.adk, align 2, !tbaa !59
  %i.adm = sext i16 %i.adl to i32
  %i.adn = add nsw i32 %.sroa.speculated173.i, %i.adm ; 3 uses
  %i.ado = or disjoint i64 %i.adc, 2              ; 2 uses
  %i.adp = getelementptr inbounds [2 x i8], ptr %i.oo, i64 %i.ado
  %i.adq = load i16, ptr %i.adp, align 2, !tbaa !59
  %i.adr = sext i16 %i.adq to i32
  %i.ads = add nsw i32 %.sroa.speculated173.i, %i.adr ; 3 uses
  %i.adt = getelementptr i8, ptr %i.adj, i64 22
  %i.adu = load i16, ptr %i.adt, align 2, !tbaa !59
  %i.adv = sext i16 %i.adu to i32
  %i.adw = add nsw i32 %.sroa.speculated173.i, %i.adv ; 3 uses
  %i.adx = getelementptr inbounds [2 x i8], ptr %i.oq, i64 %i.add ; 23 uses
  %i.ady = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.nm ; 11 uses
  %i.adz = getelementptr inbounds [2 x i8], ptr %i.op, i64 %i.add ; 3 uses
  %i.aea = getelementptr inbounds [2 x i8], ptr %i.adz, i64 %i.ir
  %i.aeb = getelementptr inbounds [2 x i8], ptr %i.aea, i64 %i.gf ; 11 uses
  %i.aec = getelementptr inbounds [2 x i8], ptr %i.adz, i64 %i.jn ; 13 uses
  %i.aed = getelementptr inbounds [2 x i8], ptr %i.adz, i64 %i.iq
  %i.aee = getelementptr inbounds [2 x i8], ptr %i.aed, i64 %i.jp ; 13 uses
  %i.aef = getelementptr inbounds [2 x i8], ptr %i.aee, i64 %i.iz
  store i16 32767, ptr %i.aef, align 2, !tbaa !59
  %i.aeg = getelementptr inbounds i8, ptr %i.aee, i64 -2
  store i16 32767, ptr %i.aeg, align 2, !tbaa !59
  %i.aeh = getelementptr inbounds [2 x i8], ptr %i.aec, i64 %i.iz
  store i16 32767, ptr %i.aeh, align 2, !tbaa !59
  %i.aei = getelementptr inbounds i8, ptr %i.aec, i64 -2
  store i16 32767, ptr %i.aei, align 2, !tbaa !59
  %i.aej = getelementptr inbounds [2 x i8], ptr %i.aeb, i64 %i.iz
  store i16 32767, ptr %i.aej, align 2, !tbaa !59
  %i.aek = getelementptr inbounds i8, ptr %i.aeb, i64 -2
  store i16 32767, ptr %i.aek, align 2, !tbaa !59
  %i.ael = getelementptr inbounds [2 x i8], ptr %i.ady, i64 %i.iz
  store i16 32767, ptr %i.ael, align 2, !tbaa !59
  %i.aem = getelementptr inbounds i8, ptr %i.ady, i64 -2
  store i16 32767, ptr %i.aem, align 2, !tbaa !59
  %i.aen = mul i64 %indvars.iv396.i, %i.iz        ; 2 uses
  %i.aeo = getelementptr [2 x i8], ptr %i.oz, i64 %i.aen ; 5 uses
  %i.aep = getelementptr [2 x i8], ptr %i.pa, i64 %i.aen ; 17 uses
  br i1 %i.jq, label %.lr.ph275.i, label %._crit_edge276.i

.lr.ph275.i:                                      ; preds = %.lr.ph283.i
  %invariant.gep492.i = getelementptr [2 x i8], ptr %i.adx, i64 %i.gf ; 12 uses
  %invariant.gep494.i = getelementptr [2 x i8], ptr %i.adx, i64 %i.jn ; 12 uses
  %invariant.gep496.i = getelementptr [2 x i8], ptr %i.adx, i64 %i.jp ; 9 uses
end_hunk_1
