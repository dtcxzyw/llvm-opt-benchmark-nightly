Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  %i.ld = getelementptr inbounds nuw i8, ptr %.4381521.us.i, i64 32 ; 2 uses
  %indvars.iv.next723.i = add nuw nsw i64 %indvars.iv722.i, 1 ; 2 uses
  %exitcond726.not.i = icmp eq i64 %indvars.iv.next723.i, %wide.trip.count.i
  br i1 %exitcond726.not.i, label %._crit_edge.us534.i, label %scalar.ph234, !llvm.loop !88

._crit_edge.us534.i:                              ; preds = %scalar.ph234, %middle.block283
  %.lcssa121 = phi ptr [ %i.jp, %middle.block283 ], [ %i.ld, %scalar.ph234 ] ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.1350527.us.i, i64 %i.cn ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.1352526.us.i, i64 %i.cn ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.1359525.us.i, i64 %i.cn ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.1361524.us.i, i64 %i.cn ; 2 uses
  %i.li = add nuw nsw i32 %.1386522.us.i, 2       ; 3 uses
  %i.lj = or disjoint i32 %i.li, 1
  %i.lk = icmp slt i32 %i.lj, %i.n
  br i1 %i.lk, label %.preheader485.us.i, label %.preheader487.i, !llvm.loop !89

.preheader487.i:                                  ; preds = %._crit_edge.us534.i, %.preheader488.i
  %.1386.lcssa.i = phi i32 [ %.0385.lcssa.i, %.preheader488.i ], [ %i.li, %._crit_edge.us534.i ] ; 2 uses
  %.3380.lcssa.i = phi ptr [ %.0377.lcssa.i, %.preheader488.i ], [ %.lcssa121, %._crit_edge.us534.i ]
  %.1361.lcssa.i = phi ptr [ %.0360.lcssa.i, %.preheader488.i ], [ %i.lh, %._crit_edge.us534.i ] ; 6 uses
  %.1359.lcssa.i = phi ptr [ %.0358.lcssa.i, %.preheader488.i ], [ %i.lg, %._crit_edge.us534.i ] ; 6 uses
  %.1352.lcssa.i = phi ptr [ %.0351.lcssa.i, %.preheader488.i ], [ %i.lf, %._crit_edge.us534.i ] ; 6 uses
  %.1350.lcssa.i = phi ptr [ %.0349.lcssa.i, %.preheader488.i ], [ %i.le, %._crit_edge.us534.i ] ; 6 uses
  %i.ll = icmp sge i32 %.1386.lcssa.i, %i.n
  %brmerge.i = or i1 %i.co, %i.ll
  br i1 %brmerge.i, label %._crit_edge546.split.i, label %.preheader484.i.preheader

.preheader484.i.preheader:                        ; preds = %.preheader487.i
  %scevgep = getelementptr i8, ptr %.1350.lcssa.i, i64 %i.cr
  %scevgep143 = getelementptr i8, ptr %.1352.lcssa.i, i64 %i.cr
  %scevgep144 = getelementptr i8, ptr %.1359.lcssa.i, i64 %i.cr
  %scevgep145 = getelementptr i8, ptr %.1361.lcssa.i, i64 %i.cr
  %i.lm = insertelement <4 x ptr> poison, ptr %scevgep145, i64 0
  %i.ln = insertelement <4 x ptr> %i.lm, ptr %scevgep144, i64 1
  %i.lo = insertelement <4 x ptr> %i.ln, ptr %scevgep143, i64 2
  %i.lp = insertelement <4 x ptr> %i.lo, ptr %scevgep, i64 3
  %i.lq = insertelement <4 x ptr> poison, ptr %.1361.lcssa.i, i64 0
  %i.lr = insertelement <4 x ptr> %i.lq, ptr %.1359.lcssa.i, i64 1
  %i.ls = insertelement <4 x ptr> %i.lr, ptr %.1352.lcssa.i, i64 2
  %i.lt = insertelement <4 x ptr> %i.ls, ptr %.1350.lcssa.i, i64 3
  br label %.preheader484.i

.preheader484.i:                                  ; preds = %.preheader484.i.preheader, %._crit_edge.i
  %.6383545.i = phi ptr [ %.lcssa127, %._crit_edge.i ], [ %.3380.lcssa.i, %.preheader484.i.preheader ] ; 6 uses
  %.2387544.i = phi i32 [ %i.mz, %._crit_edge.i ], [ %.1386.lcssa.i, %.preheader484.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader484.i
  %i.lu = getelementptr i8, ptr %.6383545.i, i64 %i.cs
  %i.lv = insertelement <4 x ptr> poison, ptr %.6383545.i, i64 0
  %i.lw = shufflevector <4 x ptr> %i.lv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lx = icmp ult <4 x ptr> %i.lw, %i.lp
  %i.ly = insertelement <4 x ptr> poison, ptr %i.lu, i64 0
  %i.lz = shufflevector <4 x ptr> %i.ly, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ma = icmp ult <4 x ptr> %i.lt, %i.lz
  %i.mb = and <4 x i1> %i.lx, %i.ma
  %i.mc = bitcast <4 x i1> %i.mb to i4
  %.not766 = icmp eq i4 %i.mc, 0
  br i1 %.not766, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.md = getelementptr i8, ptr %.6383545.i, i64 %i.cz ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.me = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.6383545.i, i64 %i.me
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %index
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %index
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %index
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %index
  %wide.load = load <4 x float>, ptr %i.mf, align 4, !tbaa !45, !alias.scope !178
  %wide.load157 = load <4 x float>, ptr %i.mg, align 4, !tbaa !45, !alias.scope !179
  %wide.load158 = load <4 x float>, ptr %i.mh, align 4, !tbaa !45, !alias.scope !180
  %wide.load159 = load <4 x float>, ptr %i.mi, align 4, !tbaa !45, !alias.scope !181
  %i.mj = shufflevector <4 x float> %wide.load, <4 x float> %wide.load157, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mk = shufflevector <4 x float> %wide.load158, <4 x float> %wide.load159, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.mj, <8 x float> %i.mk, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !45, !alias.scope !182, !noalias !183
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ml = icmp eq i64 %index.next, %n.vec
  br i1 %i.ml, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader484.i, %middle.block
  %indvars.iv727.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader484.i ], [ %n.vec, %middle.block ] ; 7 uses
  %.7384543.i.ph = phi ptr [ %.6383545.i, %vector.memcheck ], [ %.6383545.i, %.preheader484.i ], [ %i.md, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv727.i.ph
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv727.i.ph
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv727.i.ph
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv727.i.ph
  %i.mq = load float, ptr %i.mm, align 4, !tbaa !45
  store float %i.mq, ptr %.7384543.i.ph, align 4, !tbaa !45
  %i.mr = load float, ptr %i.mn, align 4, !tbaa !45
  %i.ms = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 4
  store float %i.mr, ptr %i.ms, align 4, !tbaa !45
  %i.mt = load float, ptr %i.mo, align 4, !tbaa !45
  %i.mu = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 8
  store float %i.mt, ptr %i.mu, align 4, !tbaa !45
  %i.mv = load float, ptr %i.mp, align 4, !tbaa !45
  %i.mw = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 12
  store float %i.mv, ptr %i.mw, align 4, !tbaa !45
  %i.mx = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 16 ; 2 uses
  %indvars.iv.next728.i.prol = or disjoint i64 %indvars.iv727.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa797.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.mx, %scalar.ph.prol ]
  %indvars.iv727.i.unr = phi i64 [ %indvars.iv727.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next728.i.prol, %scalar.ph.prol ]
  %.7384543.i.unr = phi ptr [ %.7384543.i.ph, %scalar.ph.preheader ], [ %i.mx, %scalar.ph.prol ]
  %i.my = icmp eq i64 %indvars.iv727.i.ph, %i.da
  br i1 %i.my, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa127 = phi ptr [ %i.md, %middle.block ], [ %.lcssa797.unr, %scalar.ph.prol.loopexit ], [ %i.nx, %scalar.ph ]
  %i.mz = add nuw nsw i32 %.2387544.i, 1          ; 2 uses
  %exitcond732.not.i = icmp eq i32 %i.mz, %i.n
  br i1 %exitcond732.not.i, label %._crit_edge546.split.i, label %.preheader484.i, !llvm.loop !97

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv727.i = phi i64 [ %indvars.iv.next728.i.1, %scalar.ph ], [ %indvars.iv727.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.7384543.i = phi ptr [ %i.nx, %scalar.ph ], [ %.7384543.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv727.i
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv727.i
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv727.i
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv727.i
  %i.ne = load float, ptr %i.na, align 4, !tbaa !45
  store float %i.ne, ptr %.7384543.i, align 4, !tbaa !45
  %i.nf = load float, ptr %i.nb, align 4, !tbaa !45
  %i.ng = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 4
  store float %i.nf, ptr %i.ng, align 4, !tbaa !45
  %i.nh = load float, ptr %i.nc, align 4, !tbaa !45
  %i.ni = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 8
  store float %i.nh, ptr %i.ni, align 4, !tbaa !45
  %i.nj = load float, ptr %i.nd, align 4, !tbaa !45
  %i.nk = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 12
  store float %i.nj, ptr %i.nk, align 4, !tbaa !45
  %i.nl = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 16
  %indvars.iv.next728.i = add nuw nsw i64 %indvars.iv727.i, 1 ; 4 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv.next728.i
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv.next728.i
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv.next728.i
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv.next728.i
  %i.nq = load float, ptr %i.nm, align 4, !tbaa !45
  store float %i.nq, ptr %i.nl, align 4, !tbaa !45
  %i.nr = load float, ptr %i.nn, align 4, !tbaa !45
  %i.ns = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 20
  store float %i.nr, ptr %i.ns, align 4, !tbaa !45
  %i.nt = load float, ptr %i.no, align 4, !tbaa !45
  %i.nu = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 24
  store float %i.nt, ptr %i.nu, align 4, !tbaa !45
  %i.nv = load float, ptr %i.np, align 4, !tbaa !45
  %i.nw = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 28
  store float %i.nv, ptr %i.nw, align 4, !tbaa !45
  %i.nx = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 32 ; 2 uses
  %indvars.iv.next728.i.1 = add nuw nsw i64 %indvars.iv727.i, 2 ; 2 uses
  %exitcond731.not.i.1 = icmp eq i64 %indvars.iv.next728.i.1, %wide.trip.count.i
  br i1 %exitcond731.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !98

._crit_edge546.split.i:                           ; preds = %._crit_edge.i, %.preheader487.i, %.preheader485.lr.ph.i, %.preheader486.lr.ph.i
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 4 ; 3 uses
  %i.ny = or disjoint i64 %indvars.iv.next734.i, 3
  %i.nz = icmp samesign ult i64 %i.ny, %i.cq
  br i1 %i.nz, label %_ZN4ncnn3MatD2Ev.exit420.i, label %.preheader483.loopexit.i, !llvm.loop !99

.preheader477.loopexit.i:                         ; preds = %._crit_edge591.split.i
  %i.oa = trunc nuw nsw i64 %indvars.iv.next765.i to i32
  br label %.preheader477.i

.preheader477.i:                                  ; preds = %.preheader477.loopexit.i, %.preheader483.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader483.i ], [ %i.oa, %.preheader477.loopexit.i ] ; 4 uses
  %i.ob = icmp slt i32 %.1.lcssa.i, %i.m
  br i1 %i.ob, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader477.i
  %i.oc = load ptr, ptr %i.o, align 8, !tbaa !19  ; 15 uses
  %i.od = mul i32 %i.n, %i.j                      ; 2 uses
  %i.oe = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !184 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.og = load i64, ptr %i.of, align 8, !tbaa !20, !noalias !184
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !44, !noalias !184
  %factor.op.mul637.i = mul i64 %i.oi, %i.og      ; 2 uses
  %i.oj = icmp sgt i32 %i.n, 3
  %i.ok = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.ol = sext i32 %i.j to i64                    ; 29 uses
  %i.om = shl i32 %i.j, 2                         ; 2 uses
  %i.on = sext i32 %i.om to i64                   ; 4 uses
  %i.oo = shl i32 %i.j, 1                         ; 2 uses
  %i.op = sext i32 %i.oo to i64                   ; 3 uses
  %i.oq = icmp slt i32 %i.j, 1                    ; 2 uses
  %i.or = and i32 %i.n, -4                        ; 4 uses
  %i.os = zext i32 %.1.lcssa.i to i64             ; 2 uses
  %wide.trip.count794.i = zext i32 %i.m to i64    ; 2 uses
  %wide.trip.count777.i = zext i32 %i.j to i64    ; 32 uses
  br i1 %i.oj, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us:           ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.ot = or disjoint i32 %i.or, 1
  %i.ou = icmp slt i32 %i.ot, %i.n
  br i1 %i.ok, label %_ZN4ncnn3MatD2Ev.exit.i.us.preheader, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.i.us.preheader:             ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us
  %i.ov = add nsw i32 %i.n, -2
  %i.ow = sub i32 %i.ov, %i.or
  %i.ox = lshr i32 %i.ow, 1
  %i.oy = zext nneg i32 %i.ox to i64
  %i.oz = mul nsw i64 %i.oy, %i.op
  %i.pa = shl i64 %i.oz, 2                        ; 2 uses
  %i.pb = shl nsw i64 %i.on, 2                    ; 3 uses
  %i.pc = shl nuw nsw i64 %wide.trip.count777.i, 2 ; 2 uses
  %i.pd = mul i32 %.1.lcssa.i, %i.j
  %i.pe = mul i32 %i.pd, %i.n
  %i.pf = mul i32 %i.j, %i.n
  %i.pg = shl nsw i64 %i.on, 2
  %i.ph = shl nuw nsw i64 %i.ol, 2                ; 2 uses
  %i.pi = shl nuw nsw i64 %wide.trip.count777.i, 3
  %i.pj = add nsw i32 %i.n, -4
  %i.pk = lshr i32 %i.pj, 2
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = mul nsw i64 %i.pl, %i.on
  %i.pn = shl i64 %i.pm, 2                        ; 4 uses
  %i.po = shl nuw nsw i64 %wide.trip.count777.i, 2 ; 4 uses
  %i.pp = getelementptr i8, ptr %i.oc, i64 %i.pn
  %scevgep714 = getelementptr i8, ptr %i.pp, i64 %i.po
  %i.pq = mul i32 %.1.lcssa.i, %i.j
  %i.pr = mul i32 %i.pq, %i.n
  %i.ps = mul i32 %i.j, %i.n
  %i.pt = shl nuw nsw i64 %i.ol, 2                ; 2 uses
  %i.pu = getelementptr i8, ptr %i.oc, i64 %i.pn
  %i.pv = getelementptr i8, ptr %i.pu, i64 %i.pt
  %scevgep716 = getelementptr i8, ptr %i.pv, i64 %i.po
  %scevgep718 = getelementptr i8, ptr %i.oc, i64 %i.pt
  %i.pw = shl nuw nsw i64 %i.ol, 3                ; 2 uses
  %i.px = getelementptr i8, ptr %i.oc, i64 %i.pn
  %i.py = getelementptr i8, ptr %i.px, i64 %i.pw
  %scevgep720 = getelementptr i8, ptr %i.py, i64 %i.po
  %scevgep722 = getelementptr i8, ptr %i.oc, i64 %i.pw
  %i.pz = mul nuw nsw i64 %i.ol, 12               ; 2 uses
  %i.qa = getelementptr i8, ptr %i.oc, i64 %i.pn
  %i.qb = getelementptr i8, ptr %i.qa, i64 %i.pz
  %scevgep724 = getelementptr i8, ptr %i.qb, i64 %i.po
  %scevgep726 = getelementptr i8, ptr %i.oc, i64 %i.pz
  %i.qc = shl nuw nsw i64 %wide.trip.count777.i, 4
  %min.iters.check729 = icmp ult i32 %i.j, 8
  %stride.check734 = icmp slt i32 %i.om, 0
  %n.vec748 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.qd = shl nuw nsw i64 %n.vec748, 4
  %cmp.n759 = icmp eq i64 %n.vec748, %wide.trip.count777.i
  %xtraiter808 = and i64 %wide.trip.count777.i, 1
  %lcmp.mod809.not = icmp eq i64 %xtraiter808, 0
  %i.qe = add nsw i64 %wide.trip.count777.i, -1
  %invariant.gep852 = getelementptr i8, ptr %i.oc, i64 %i.pa
  %invariant.gep854 = getelementptr i8, ptr %invariant.gep852, i64 %i.pb
  %invariant.gep856 = getelementptr i8, ptr %invariant.gep854, i64 %i.pc
  %invariant.gep858 = getelementptr i8, ptr %i.oc, i64 %i.pa
  %invariant.gep860 = getelementptr i8, ptr %invariant.gep858, i64 %i.ph
  %invariant.gep862 = getelementptr i8, ptr %invariant.gep860, i64 %i.pb
  %invariant.gep864 = getelementptr i8, ptr %invariant.gep862, i64 %i.pc
  %invariant.gep866 = getelementptr i8, ptr %i.oc, i64 %i.ph
  %invariant.gep868 = getelementptr i8, ptr %invariant.gep866, i64 %i.pb
  %min.iters.check655 = icmp ult i32 %i.j, 8
  %stride.check660 = icmp slt i32 %i.oo, 0
  %n.vec666 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.qf = shl nuw nsw i64 %n.vec666, 3
  %cmp.n679 = icmp eq i64 %n.vec666, %wide.trip.count777.i
  %xtraiter811 = and i64 %wide.trip.count777.i, 3 ; 2 uses
  %lcmp.mod812.not = icmp eq i64 %xtraiter811, 0
  %min.iters.check615 = icmp ult i32 %i.j, 8
  %n.vec619 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.qg = shl nuw nsw i64 %n.vec619, 2
  %cmp.n627 = icmp eq i64 %n.vec619, %wide.trip.count777.i
  %xtraiter814 = and i64 %wide.trip.count777.i, 7 ; 2 uses
  %lcmp.mod815.not = icmp eq i64 %xtraiter814, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.us

_ZN4ncnn3MatD2Ev.exit.i.us:                       ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.preheader, %._crit_edge634.split.i.us
  %indvar647 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us.preheader ], [ %indvar.next648, %._crit_edge634.split.i.us ] ; 3 uses
  %indvars.iv791.i.us = phi i64 [ %i.os, %_ZN4ncnn3MatD2Ev.exit.i.us.preheader ], [ %indvars.iv.next792.i.us, %._crit_edge634.split.i.us ] ; 2 uses
  %i.qh = mul i32 %i.ps, %indvar647
  %i.qi = add i32 %i.pr, %i.qh
  %i.qj = sext i32 %i.qi to i64
  %i.qk = shl nsw i64 %i.qj, 2                    ; 7 uses
  %scevgep715 = getelementptr i8, ptr %scevgep714, i64 %i.qk
  %scevgep717 = getelementptr i8, ptr %scevgep716, i64 %i.qk
  %scevgep719 = getelementptr i8, ptr %scevgep718, i64 %i.qk
  %scevgep721 = getelementptr i8, ptr %scevgep720, i64 %i.qk
  %scevgep723 = getelementptr i8, ptr %scevgep722, i64 %i.qk
  %scevgep725 = getelementptr i8, ptr %scevgep724, i64 %i.qk
  %scevgep727 = getelementptr i8, ptr %scevgep726, i64 %i.qk
  %i.ql = mul i32 %i.pf, %indvar647
  %i.qm = add i32 %i.pe, %i.ql
  %i.qn = sext i32 %i.qm to i64
  %i.qo = shl nsw i64 %i.qn, 2                    ; 3 uses
  %i.qp = trunc i64 %indvars.iv791.i.us to i32    ; 4 uses
  %i.qq = mul i32 %i.od, %i.qp
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr [4 x i8], ptr %i.oc, i64 %i.qr ; 2 uses
  %i.qt = lshr i32 %i.qp, 2
  %i.qu = lshr i32 %i.qp, 1
  %i.qv = and i32 %i.qu, 1
  %i.qw = and i32 %i.qp, 1
  %i.qx = add nuw nsw i32 %i.qw, %i.qt
  %i.qy = add nuw nsw i32 %i.qx, %i.qv
  %i.qz = zext nneg i32 %i.qy to i64
  %.reass638.i.us = mul i64 %factor.op.mul637.i, %i.qz
  %i.ra = getelementptr inbounds nuw i8, ptr %i.oe, i64 %.reass638.i.us
  %i.rb = insertelement <4 x ptr> poison, ptr %scevgep725, i64 0
  %i.rc = insertelement <4 x ptr> %i.rb, ptr %scevgep721, i64 1
  %i.rd = insertelement <4 x ptr> %i.rc, ptr %scevgep717, i64 2
  %i.re = insertelement <4 x ptr> %i.rd, ptr %scevgep715, i64 3
  %i.rf = insertelement <4 x ptr> poison, ptr %scevgep727, i64 0
  %i.rg = insertelement <4 x ptr> %i.rf, ptr %scevgep723, i64 1
  %i.rh = insertelement <4 x ptr> %i.rg, ptr %scevgep719, i64 2
  %i.ri = insertelement <4 x ptr> %i.rh, ptr %i.qs, i64 3
  br label %.preheader474.us.i.us

.preheader474.us.i.us:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us, %._crit_edge601.us.i.us
  %indvar649 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %indvar.next650, %._crit_edge601.us.i.us ] ; 2 uses
  %.0341605.us.i.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %i.tp, %._crit_edge601.us.i.us ]
  %.0344604.us.i.us = phi ptr [ %i.ra, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %.lcssa, %._crit_edge601.us.i.us ] ; 6 uses
  %.0347603.us.i.us = phi ptr [ %i.qs, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %i.to, %._crit_edge601.us.i.us ] ; 5 uses
  br i1 %min.iters.check729, label %scalar.ph728.preheader, label %vector.memcheck730

vector.memcheck730:                               ; preds = %.preheader474.us.i.us
  %i.rj = getelementptr i8, ptr %.0344604.us.i.us, i64 %i.qc
  %i.rk = insertelement <4 x ptr> poison, ptr %.0344604.us.i.us, i64 0
  %i.rl = shufflevector <4 x ptr> %i.rk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.rm = icmp ult <4 x ptr> %i.rl, %i.re
  %i.rn = insertelement <4 x ptr> poison, ptr %i.rj, i64 0
  %i.ro = shufflevector <4 x ptr> %i.rn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.rp = icmp ult <4 x ptr> %i.ri, %i.ro
  %i.rq = and <4 x i1> %i.rm, %i.rp
  %i.rr = bitcast <4 x i1> %i.rq to i4
  %i.rs = icmp ne i4 %i.rr, 0
  %op.rdx = or i1 %i.rs, %stride.check734
  br i1 %op.rdx, label %scalar.ph728.preheader, label %vector.ph747

vector.ph747:                                     ; preds = %vector.memcheck730
  %i.rt = getelementptr i8, ptr %.0344604.us.i.us, i64 %i.qd ; 2 uses
  br label %vector.body749

vector.body749:                                   ; preds = %vector.body749, %vector.ph747
  %index750 = phi i64 [ 0, %vector.ph747 ], [ %index.next757, %vector.body749 ] ; 3 uses
  %i.ru = shl i64 %index750, 4
  %next.gep751 = getelementptr i8, ptr %.0344604.us.i.us, i64 %i.ru
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %index750 ; 2 uses
  %wide.load752 = load <4 x float>, ptr %i.rv, align 4, !tbaa !45, !alias.scope !185
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.ol ; 2 uses
  %wide.load753 = load <4 x float>, ptr %i.rw, align 4, !tbaa !45, !alias.scope !186
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rw, i64 %i.ol ; 2 uses
  %wide.load754 = load <4 x float>, ptr %i.rx, align 4, !tbaa !45, !alias.scope !187
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.ol
  %wide.load755 = load <4 x float>, ptr %i.ry, align 4, !tbaa !45, !alias.scope !188
  %i.rz = shufflevector <4 x float> %wide.load752, <4 x float> %wide.load753, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.sa = shufflevector <4 x float> %wide.load754, <4 x float> %wide.load755, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec756 = shufflevector <8 x float> %i.rz, <8 x float> %i.sa, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec756, ptr %next.gep751, align 4, !tbaa !45, !alias.scope !189, !noalias !190
  %index.next757 = add nuw i64 %index750, 4       ; 2 uses
  %i.sb = icmp eq i64 %index.next757, %n.vec748
  br i1 %i.sb, label %middle.block758, label %vector.body749, !llvm.loop !108

middle.block758:                                  ; preds = %vector.body749
  br i1 %cmp.n759, label %._crit_edge601.us.i.us, label %scalar.ph728.preheader

scalar.ph728.preheader:                           ; preds = %vector.memcheck730, %.preheader474.us.i.us, %middle.block758
  %indvars.iv774.i.us.ph = phi i64 [ 0, %vector.memcheck730 ], [ 0, %.preheader474.us.i.us ], [ %n.vec748, %middle.block758 ] ; 4 uses
  %.1345599.us.i.us.ph = phi ptr [ %.0344604.us.i.us, %vector.memcheck730 ], [ %.0344604.us.i.us, %.preheader474.us.i.us ], [ %i.rt, %middle.block758 ] ; 6 uses
  br i1 %lcmp.mod809.not, label %scalar.ph728.prol.loopexit, label %scalar.ph728.prol

scalar.ph728.prol:                                ; preds = %scalar.ph728.preheader
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %indvars.iv774.i.us.ph ; 2 uses
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !45
  store float %i.sd, ptr %.1345599.us.i.us.ph, align 4, !tbaa !45
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %i.ol ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.ph, i64 4
  %i.sg = load float, ptr %i.se, align 4, !tbaa !45
  store float %i.sg, ptr %i.sf, align 4, !tbaa !45
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.ol ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.ph, i64 8
  %i.sj = load float, ptr %i.sh, align 4, !tbaa !45
  store float %i.sj, ptr %i.si, align 4, !tbaa !45
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.ol
  %i.sl = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.ph, i64 12
  %i.sm = load float, ptr %i.sk, align 4, !tbaa !45
  store float %i.sm, ptr %i.sl, align 4, !tbaa !45
  %i.sn = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.ph, i64 16 ; 2 uses
  %indvars.iv.next775.i.us.prol = or disjoint i64 %indvars.iv774.i.us.ph, 1
  br label %scalar.ph728.prol.loopexit

scalar.ph728.prol.loopexit:                       ; preds = %scalar.ph728.prol, %scalar.ph728.preheader
  %.lcssa767.unr = phi ptr [ poison, %scalar.ph728.preheader ], [ %i.sn, %scalar.ph728.prol ]
  %indvars.iv774.i.us.unr = phi i64 [ %indvars.iv774.i.us.ph, %scalar.ph728.preheader ], [ %indvars.iv.next775.i.us.prol, %scalar.ph728.prol ]
  %.1345599.us.i.us.unr = phi ptr [ %.1345599.us.i.us.ph, %scalar.ph728.preheader ], [ %i.sn, %scalar.ph728.prol ]
  %i.so = icmp eq i64 %indvars.iv774.i.us.ph, %i.qe
end_hunk_0
begin_hunk_1_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  br i1 %prol.iter813.cmp.not, label %scalar.ph654.prol.loopexit, label %scalar.ph654.prol, !llvm.loop !116

scalar.ph654.prol.loopexit:                       ; preds = %scalar.ph654.prol, %scalar.ph654.preheader
  %.lcssa769.unr = phi ptr [ poison, %scalar.ph654.preheader ], [ %i.uh, %scalar.ph654.prol ]
  %indvars.iv780.i.us.unr = phi i64 [ %indvars.iv780.i.us.ph, %scalar.ph654.preheader ], [ %indvars.iv.next781.i.us.prol, %scalar.ph654.prol ]
  %.4615.us.i.us.unr = phi ptr [ %.4615.us.i.us.ph, %scalar.ph654.preheader ], [ %i.uh, %scalar.ph654.prol ]
  %i.ui = sub nsw i64 %indvars.iv780.i.us.ph, %wide.trip.count777.i
  %i.uj = icmp ugt i64 %i.ui, -4
  br i1 %i.uj, label %._crit_edge617.us.i.us, label %scalar.ph654

scalar.ph654:                                     ; preds = %scalar.ph654.prol.loopexit, %scalar.ph654
  %indvars.iv780.i.us = phi i64 [ %indvars.iv.next781.i.us.3, %scalar.ph654 ], [ %indvars.iv780.i.us.unr, %scalar.ph654.prol.loopexit ] ; 5 uses
  %.4615.us.i.us = phi ptr [ %i.vk, %scalar.ph654 ], [ %.4615.us.i.us.unr, %scalar.ph654.prol.loopexit ] ; 9 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us ; 2 uses
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !45
  store float %i.ul, ptr %.4615.us.i.us, align 4, !tbaa !45
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.ol
  %i.un = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 4
  %i.uo = load float, ptr %i.um, align 4, !tbaa !45
  store float %i.uo, ptr %i.un, align 4, !tbaa !45
  %i.up = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 8
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 4 ; 2 uses
  %i.us = load float, ptr %i.ur, align 4, !tbaa !45
  store float %i.us, ptr %i.up, align 4, !tbaa !45
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.ol
  %i.uu = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 12
  %i.uv = load float, ptr %i.ut, align 4, !tbaa !45
  store float %i.uv, ptr %i.uu, align 4, !tbaa !45
  %i.uw = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 16
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8 ; 2 uses
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !45
  store float %i.uz, ptr %i.uw, align 4, !tbaa !45
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.ol
  %i.vb = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 20
  %i.vc = load float, ptr %i.va, align 4, !tbaa !45
  store float %i.vc, ptr %i.vb, align 4, !tbaa !45
  %i.vd = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 24
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 12 ; 2 uses
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !45
  store float %i.vg, ptr %i.vd, align 4, !tbaa !45
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.vf, i64 %i.ol
  %i.vi = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 28
  %i.vj = load float, ptr %i.vh, align 4, !tbaa !45
  store float %i.vj, ptr %i.vi, align 4, !tbaa !45
  %i.vk = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 32 ; 2 uses
  %indvars.iv.next781.i.us.3 = add nuw nsw i64 %indvars.iv780.i.us, 4 ; 2 uses
  %exitcond784.not.i.us.3 = icmp eq i64 %indvars.iv.next781.i.us.3, %wide.trip.count777.i
  br i1 %exitcond784.not.i.us.3, label %._crit_edge617.us.i.us, label %scalar.ph654, !llvm.loop !117

._crit_edge617.us.i.us:                           ; preds = %scalar.ph654.prol.loopexit, %scalar.ph654, %middle.block678
  %.lcssa102 = phi ptr [ %i.tu, %middle.block678 ], [ %.lcssa769.unr, %scalar.ph654.prol.loopexit ], [ %i.vk, %scalar.ph654 ] ; 2 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %i.op ; 2 uses
  %i.vm = add nuw nsw i32 %.1342621.us.i.us, 2    ; 3 uses
  %i.vn = or disjoint i32 %i.vm, 1
  %i.vo = icmp slt i32 %i.vn, %i.n
  br i1 %i.vo, label %.preheader473.us.i.us, label %.preheader475.i.us, !llvm.loop !118

.preheader475.i.us:                               ; preds = %._crit_edge617.us.i.us, %.preheader476.i.loopexit.us
  %.1348.lcssa.i.us = phi ptr [ %i.to, %.preheader476.i.loopexit.us ], [ %i.vl, %._crit_edge617.us.i.us ] ; 11 uses
  %.3.lcssa.i.us = phi ptr [ %.lcssa, %.preheader476.i.loopexit.us ], [ %.lcssa102, %._crit_edge617.us.i.us ]
  %.1342.lcssa.i.us = phi i32 [ %i.or, %.preheader476.i.loopexit.us ], [ %i.vm, %._crit_edge617.us.i.us ] ; 2 uses
  %.1348.lcssa.i.us613 = ptrtoaddr ptr %.1348.lcssa.i.us to i64
  %i.vp = icmp sge i32 %.1342.lcssa.i.us, %i.n
  %brmerge645.i.us = or i1 %i.oq, %i.vp
  br i1 %brmerge645.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader475.i.us, %._crit_edge630.i.us
  %.2343633.i.us = phi i32 [ %i.xh, %._crit_edge630.i.us ], [ %.1342.lcssa.i.us, %.preheader475.i.us ]
  %.6632.i.us = phi ptr [ %.lcssa105, %._crit_edge630.i.us ], [ %.3.lcssa.i.us, %.preheader475.i.us ] ; 4 uses
  %.6632.i.us612 = ptrtoaddr ptr %.6632.i.us to i64
  %i.vq = sub i64 %.1348.lcssa.i.us613, %.6632.i.us612
  %diff.check617 = icmp ugt i64 %i.vq, -32
  %or.cond = select i1 %min.iters.check615, i1 true, i1 %diff.check617
  br i1 %or.cond, label %scalar.ph614.preheader, label %vector.ph618

vector.ph618:                                     ; preds = %.preheader.i.us
  %i.vr = getelementptr i8, ptr %.6632.i.us, i64 %i.qg ; 2 uses
  br label %vector.body620

vector.body620:                                   ; preds = %vector.body620, %vector.ph618
  %index621 = phi i64 [ 0, %vector.ph618 ], [ %index.next625, %vector.body620 ] ; 3 uses
  %i.vs = shl i64 %index621, 2
  %next.gep622 = getelementptr i8, ptr %.6632.i.us, i64 %i.vs ; 2 uses
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %index621 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %wide.load623 = load <4 x float>, ptr %i.vt, align 4, !tbaa !45
  %wide.load624 = load <4 x float>, ptr %i.vu, align 4, !tbaa !45
  %i.vv = getelementptr i8, ptr %next.gep622, i64 16
  store <4 x float> %wide.load623, ptr %next.gep622, align 4, !tbaa !45
  store <4 x float> %wide.load624, ptr %i.vv, align 4, !tbaa !45
  %index.next625 = add nuw i64 %index621, 8       ; 2 uses
  %i.vw = icmp eq i64 %index.next625, %n.vec619
  br i1 %i.vw, label %middle.block626, label %vector.body620, !llvm.loop !119

middle.block626:                                  ; preds = %vector.body620
  br i1 %cmp.n627, label %._crit_edge630.i.us, label %scalar.ph614.preheader

scalar.ph614.preheader:                           ; preds = %.preheader.i.us, %middle.block626
  %indvars.iv785.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec619, %middle.block626 ] ; 3 uses
  %.7628.i.us.ph = phi ptr [ %.6632.i.us, %.preheader.i.us ], [ %i.vr, %middle.block626 ] ; 2 uses
  br i1 %lcmp.mod815.not, label %scalar.ph614.prol.loopexit, label %scalar.ph614.prol

scalar.ph614.prol:                                ; preds = %scalar.ph614.preheader, %scalar.ph614.prol
  %indvars.iv785.i.us.prol = phi i64 [ %indvars.iv.next786.i.us.prol, %scalar.ph614.prol ], [ %indvars.iv785.i.us.ph, %scalar.ph614.preheader ] ; 2 uses
  %.7628.i.us.prol = phi ptr [ %i.vz, %scalar.ph614.prol ], [ %.7628.i.us.ph, %scalar.ph614.preheader ] ; 2 uses
  %prol.iter816 = phi i64 [ %prol.iter816.next, %scalar.ph614.prol ], [ 0, %scalar.ph614.preheader ]
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us.prol
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !45
  store float %i.vy, ptr %.7628.i.us.prol, align 4, !tbaa !45
  %i.vz = getelementptr inbounds nuw i8, ptr %.7628.i.us.prol, i64 4 ; 3 uses
  %indvars.iv.next786.i.us.prol = add nuw nsw i64 %indvars.iv785.i.us.prol, 1 ; 2 uses
  %prol.iter816.next = add i64 %prol.iter816, 1   ; 2 uses
  %prol.iter816.cmp.not = icmp eq i64 %prol.iter816.next, %xtraiter814
  br i1 %prol.iter816.cmp.not, label %scalar.ph614.prol.loopexit, label %scalar.ph614.prol, !llvm.loop !120

scalar.ph614.prol.loopexit:                       ; preds = %scalar.ph614.prol, %scalar.ph614.preheader
  %.lcssa772.unr = phi ptr [ poison, %scalar.ph614.preheader ], [ %i.vz, %scalar.ph614.prol ]
  %indvars.iv785.i.us.unr = phi i64 [ %indvars.iv785.i.us.ph, %scalar.ph614.preheader ], [ %indvars.iv.next786.i.us.prol, %scalar.ph614.prol ]
  %.7628.i.us.unr = phi ptr [ %.7628.i.us.ph, %scalar.ph614.preheader ], [ %i.vz, %scalar.ph614.prol ]
  %i.wa = sub nsw i64 %indvars.iv785.i.us.ph, %wide.trip.count777.i
  %i.wb = icmp ugt i64 %i.wa, -8
  br i1 %i.wb, label %._crit_edge630.i.us, label %scalar.ph614

scalar.ph614:                                     ; preds = %scalar.ph614.prol.loopexit, %scalar.ph614
  %indvars.iv785.i.us = phi i64 [ %indvars.iv.next786.i.us.7, %scalar.ph614 ], [ %indvars.iv785.i.us.unr, %scalar.ph614.prol.loopexit ] ; 9 uses
  %.7628.i.us = phi ptr [ %i.xg, %scalar.ph614 ], [ %.7628.i.us.unr, %scalar.ph614.prol.loopexit ] ; 9 uses
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !45
  store float %i.wd, ptr %.7628.i.us, align 4, !tbaa !45
  %i.we = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 4
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !45
  store float %i.wh, ptr %i.we, align 4, !tbaa !45
  %i.wi = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 8
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !45
  store float %i.wl, ptr %i.wi, align 4, !tbaa !45
  %i.wm = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 12
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 12
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !45
  store float %i.wp, ptr %i.wm, align 4, !tbaa !45
  %i.wq = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 16
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !45
  store float %i.wt, ptr %i.wq, align 4, !tbaa !45
  %i.wu = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 20
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 20
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !45
  store float %i.wx, ptr %i.wu, align 4, !tbaa !45
  %i.wy = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 24
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 24
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !45
  store float %i.xb, ptr %i.wy, align 4, !tbaa !45
  %i.xc = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 28
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 28
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !45
  store float %i.xf, ptr %i.xc, align 4, !tbaa !45
  %i.xg = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 32 ; 2 uses
  %indvars.iv.next786.i.us.7 = add nuw nsw i64 %indvars.iv785.i.us, 8 ; 2 uses
  %exitcond789.not.i.us.7 = icmp eq i64 %indvars.iv.next786.i.us.7, %wide.trip.count777.i
  br i1 %exitcond789.not.i.us.7, label %._crit_edge630.i.us, label %scalar.ph614, !llvm.loop !121

._crit_edge630.i.us:                              ; preds = %scalar.ph614.prol.loopexit, %scalar.ph614, %middle.block626
  %.lcssa105 = phi ptr [ %i.vr, %middle.block626 ], [ %.lcssa772.unr, %scalar.ph614.prol.loopexit ], [ %i.xg, %scalar.ph614 ]
  %i.xh = add nuw nsw i32 %.2343633.i.us, 1       ; 2 uses
  %exitcond790.not.i.us = icmp eq i32 %i.xh, %i.n
  br i1 %exitcond790.not.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us, !llvm.loop !122

._crit_edge634.split.i.us:                        ; preds = %._crit_edge630.i.us, %.preheader475.i.us
  %indvars.iv.next792.i.us = add nuw nsw i64 %indvars.iv791.i.us, 1 ; 2 uses
  %exitcond795.not.i.us = icmp eq i64 %indvars.iv.next792.i.us, %wide.trip.count794.i
  %indvar.next648 = add i32 %indvar647, 1
  br i1 %exitcond795.not.i.us, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.us, !llvm.loop !123

.preheader476.i.loopexit.us:                      ; preds = %._crit_edge601.us.i.us
  br i1 %i.ou, label %.preheader473.us.i.us.preheader, label %.preheader475.i.us

.preheader473.us.i.us.preheader:                  ; preds = %.preheader476.i.loopexit.us
  %i.xi = mul i64 %i.pg, %indvar649               ; 3 uses
  %gep857 = getelementptr i8, ptr %invariant.gep856, i64 %i.xi
  %scevgep651 = getelementptr i8, ptr %gep857, i64 %i.qo
  %gep865 = getelementptr i8, ptr %invariant.gep864, i64 %i.xi
  %scevgep652 = getelementptr i8, ptr %gep865, i64 %i.qo
  %gep869 = getelementptr i8, ptr %invariant.gep868, i64 %i.xi
  %scevgep653 = getelementptr i8, ptr %gep869, i64 %i.qo
  br label %.preheader473.us.i.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.xj = icmp sgt i32 %i.n, 1
  %i.xk = and i32 %i.n, -2
  %i.xl = shl nuw nsw i64 %wide.trip.count777.i, 2
  %i.xm = shl nuw nsw i64 %wide.trip.count777.i, 3
  %min.iters.check582 = icmp ult i32 %i.j, 6
  %invariant.gep.a = getelementptr i8, ptr %i.oe, i64 %i.xm
  %invariant.gep850 = getelementptr i8, ptr %i.oc, i64 %i.xl
  %n.vec592 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.xn = shl nuw nsw i64 %n.vec592, 3
  %cmp.n605 = icmp eq i64 %n.vec592, %wide.trip.count777.i
  %xtraiter802 = and i64 %wide.trip.count777.i, 3 ; 2 uses
  %lcmp.mod803.not = icmp eq i64 %xtraiter802, 0
  %min.iters.check549 = icmp ult i32 %i.j, 8
  %n.vec552 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.xo = shl nuw nsw i64 %n.vec552, 2
  %cmp.n560 = icmp eq i64 %n.vec552, %wide.trip.count777.i
  %xtraiter805 = and i64 %wide.trip.count777.i, 7 ; 2 uses
  %lcmp.mod806.not = icmp eq i64 %xtraiter805, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit419.i:                       ; preds = %._crit_edge591.split.i, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge591.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv764.i = phi i64 [ %indvars.iv.next765.i, %._crit_edge591.split.i ], [ %i.dx, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv762.i = phi i32 [ %indvars.iv.next763.i, %._crit_edge591.split.i ], [ %i.dy, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %i.xp = mul i32 %i.er, %indvar                  ; 2 uses
  %i.xq = add i32 %i.ep, %i.xp
  %i.xr = sext i32 %i.xq to i64
  %i.xs = shl nsw i64 %i.xr, 2                    ; 7 uses
  %scevgep462 = getelementptr i8, ptr %scevgep461, i64 %i.xs
  %scevgep464 = getelementptr i8, ptr %scevgep463, i64 %i.xs
  %scevgep466 = getelementptr i8, ptr %scevgep465, i64 %i.xs
  %scevgep468 = getelementptr i8, ptr %scevgep467, i64 %i.xs
  %scevgep470 = getelementptr i8, ptr %scevgep469, i64 %i.xs
  %scevgep472 = getelementptr i8, ptr %scevgep471, i64 %i.xs
  %scevgep474 = getelementptr i8, ptr %scevgep473, i64 %i.xs
  %i.xt = add i32 %i.fb, %i.xp
  %i.xu = sext i32 %i.xt to i64
  %i.xv = shl nsw i64 %i.xu, 2                    ; 7 uses
  %scevgep476 = getelementptr i8, ptr %scevgep475, i64 %i.xv
  %scevgep478 = getelementptr i8, ptr %scevgep477, i64 %i.xv
  %scevgep480 = getelementptr i8, ptr %scevgep479, i64 %i.xv
  %scevgep482 = getelementptr i8, ptr %scevgep481, i64 %i.xv
  %scevgep484 = getelementptr i8, ptr %scevgep483, i64 %i.xv
  %scevgep486 = getelementptr i8, ptr %scevgep485, i64 %i.xv
  %scevgep488 = getelementptr i8, ptr %scevgep487, i64 %i.xv
  %i.xw = trunc i64 %indvars.iv764.i to i32       ; 3 uses
  %i.xx = mul i32 %i.df, %i.xw
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr [4 x i8], ptr %i.de, i64 %i.xy ; 3 uses
  %i.ya = mul i32 %indvars.iv762.i, %i.df
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr [4 x i8], ptr %i.de, i64 %i.yb ; 3 uses
  %i.yd = lshr i32 %i.xw, 2
  %i.ye = lshr i32 %i.xw, 1
  %i.yf = and i32 %i.ye, 1
  %i.yg = add nuw nsw i32 %i.yf, %i.yd
  %i.yh = zext nneg i32 %i.yg to i64
  %.reass595.i = mul i64 %factor.op.mul594.i, %i.yh
  %i.yi = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.reass595.i ; 2 uses
  br i1 %i.dl, label %.preheader480.lr.ph.i, label %.preheader482.i

.preheader480.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit419.i
  br i1 %i.dm, label %.preheader480.us.i.preheader, label %._crit_edge591.split.i

.preheader480.us.i.preheader:                     ; preds = %.preheader480.lr.ph.i
  %i.yj = insertelement <8 x ptr> poison, ptr %scevgep486, i64 0
  %i.yk = insertelement <8 x ptr> %i.yj, ptr %scevgep482, i64 1
  %i.yl = insertelement <8 x ptr> %i.yk, ptr %scevgep478, i64 2
  %i.ym = insertelement <8 x ptr> %i.yl, ptr %scevgep476, i64 3
  %i.yn = insertelement <8 x ptr> %i.ym, ptr %scevgep472, i64 4
  %i.yo = insertelement <8 x ptr> %i.yn, ptr %scevgep468, i64 5
  %i.yp = insertelement <8 x ptr> %i.yo, ptr %scevgep464, i64 6
  %i.yq = insertelement <8 x ptr> %i.yp, ptr %scevgep462, i64 7
  %i.yr = insertelement <8 x ptr> poison, ptr %scevgep488, i64 0
  %i.ys = insertelement <8 x ptr> %i.yr, ptr %scevgep484, i64 1
  %i.yt = insertelement <8 x ptr> %i.ys, ptr %scevgep480, i64 2
  %i.yu = insertelement <8 x ptr> %i.yt, ptr %i.yc, i64 3
  %i.yv = insertelement <8 x ptr> %i.yu, ptr %scevgep474, i64 4
  %i.yw = insertelement <8 x ptr> %i.yv, ptr %scevgep470, i64 5
  %i.yx = insertelement <8 x ptr> %i.yw, ptr %scevgep466, i64 6
  %i.yy = insertelement <8 x ptr> %i.yx, ptr %i.xz, i64 7
  br label %.preheader480.us.i

.preheader480.us.i:                               ; preds = %.preheader480.us.i.preheader, %._crit_edge551.us.i
  %.0363556.us.i = phi i32 [ %i.aba, %._crit_edge551.us.i ], [ 0, %.preheader480.us.i.preheader ]
  %.0366555.us.i = phi ptr [ %.lcssa108, %._crit_edge551.us.i ], [ %i.yi, %.preheader480.us.i.preheader ] ; 6 uses
  %.0373554.us.i = phi ptr [ %i.aaz, %._crit_edge551.us.i ], [ %i.yc, %.preheader480.us.i.preheader ] ; 3 uses
  %.0375553.us.i = phi ptr [ %i.aay, %._crit_edge551.us.i ], [ %i.xz, %.preheader480.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check490, label %scalar.ph489.preheader, label %vector.memcheck491

vector.memcheck491:                               ; preds = %.preheader480.us.i
  %i.yz = getelementptr i8, ptr %.0366555.us.i, i64 %i.fc
  %i.za = insertelement <8 x ptr> poison, ptr %.0366555.us.i, i64 0
  %i.zb = shufflevector <8 x ptr> %i.za, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.zc = icmp ult <8 x ptr> %i.zb, %i.yq
  %i.zd = insertelement <8 x ptr> poison, ptr %i.yz, i64 0
  %i.ze = shufflevector <8 x ptr> %i.zd, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.zf = icmp ult <8 x ptr> %i.yy, %i.ze
  %i.zg = and <8 x i1> %i.zc, %i.zf
  %i.zh = bitcast <8 x i1> %i.zg to i8
  %i.zi = icmp ne i8 %i.zh, 0
  %op.rdx764 = or i1 %i.zi, %stride.check495
  br i1 %op.rdx764, label %scalar.ph489.preheader, label %vector.ph524

vector.ph524:                                     ; preds = %vector.memcheck491
  %i.zj = getelementptr i8, ptr %.0366555.us.i, i64 %i.fd ; 2 uses
  br label %vector.body526

vector.body526:                                   ; preds = %vector.body526, %vector.ph524
  %index527 = phi i64 [ 0, %vector.ph524 ], [ %index.next538, %vector.body526 ] ; 4 uses
  %i.zk = shl i64 %index527, 5
  %next.gep528 = getelementptr i8, ptr %.0366555.us.i, i64 %i.zk
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %index527 ; 4 uses
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %index527 ; 4 uses
  %wide.load529 = load <4 x float>, ptr %i.zl, align 4, !tbaa !45, !alias.scope !195
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dn
  %wide.load530 = load <4 x float>, ptr %i.zn, align 4, !tbaa !45, !alias.scope !196
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dp
  %wide.load531 = load <4 x float>, ptr %i.zo, align 4, !tbaa !45, !alias.scope !197
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dr
  %wide.load532 = load <4 x float>, ptr %i.zp, align 4, !tbaa !45, !alias.scope !198
  %wide.load533 = load <4 x float>, ptr %i.zm, align 4, !tbaa !45, !alias.scope !199
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dn
  %wide.load534 = load <4 x float>, ptr %i.zq, align 4, !tbaa !45, !alias.scope !200
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dp
  %wide.load535 = load <4 x float>, ptr %i.zr, align 4, !tbaa !45, !alias.scope !201
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dr
  %wide.load536 = load <4 x float>, ptr %i.zs, align 4, !tbaa !45, !alias.scope !202
  %i.zt = shufflevector <4 x float> %wide.load529, <4 x float> %wide.load530, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zu = shufflevector <4 x float> %wide.load531, <4 x float> %wide.load532, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zv = shufflevector <4 x float> %wide.load533, <4 x float> %wide.load534, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zw = shufflevector <4 x float> %wide.load535, <4 x float> %wide.load536, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zx = shufflevector <8 x float> %i.zt, <8 x float> %i.zu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zy = shufflevector <8 x float> %i.zv, <8 x float> %i.zw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec537 = shufflevector <16 x float> %i.zx, <16 x float> %i.zy, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec537, ptr %next.gep528, align 4, !tbaa !45, !alias.scope !203, !noalias !204
  %index.next538 = add nuw i64 %index527, 4       ; 2 uses
  %i.zz = icmp eq i64 %index.next538, %n.vec525
  br i1 %i.zz, label %middle.block539, label %vector.body526, !llvm.loop !134

middle.block539:                                  ; preds = %vector.body526
  br i1 %cmp.n540, label %._crit_edge551.us.i, label %scalar.ph489.preheader

scalar.ph489.preheader:                           ; preds = %vector.memcheck491, %.preheader480.us.i, %middle.block539
  %indvars.iv744.i.ph = phi i64 [ 0, %vector.memcheck491 ], [ 0, %.preheader480.us.i ], [ %n.vec525, %middle.block539 ]
  %.1367549.us.i.ph = phi ptr [ %.0366555.us.i, %vector.memcheck491 ], [ %.0366555.us.i, %.preheader480.us.i ], [ %i.zj, %middle.block539 ]
  br label %scalar.ph489

scalar.ph489:                                     ; preds = %scalar.ph489.preheader, %scalar.ph489
  %indvars.iv744.i = phi i64 [ %indvars.iv.next745.i, %scalar.ph489 ], [ %indvars.iv744.i.ph, %scalar.ph489.preheader ] ; 3 uses
  %.1367549.us.i = phi ptr [ %i.aax, %scalar.ph489 ], [ %.1367549.us.i.ph, %scalar.ph489.preheader ] ; 9 uses
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.aac = load float, ptr %i.aaa, align 4, !tbaa !45
  store float %i.aac, ptr %.1367549.us.i, align 4, !tbaa !45
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.dn
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !45
  %i.aaf = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 4
  store float %i.aae, ptr %i.aaf, align 4, !tbaa !45
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.dp
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !45
  %i.aai = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 8
  store float %i.aah, ptr %i.aai, align 4, !tbaa !45
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.dr
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !45
  %i.aal = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 12
  store float %i.aak, ptr %i.aal, align 4, !tbaa !45
  %i.aam = load float, ptr %i.aab, align 4, !tbaa !45
  %i.aan = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 16
  store float %i.aam, ptr %i.aan, align 4, !tbaa !45
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %i.dn
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !45
  %i.aaq = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 20
  store float %i.aap, ptr %i.aaq, align 4, !tbaa !45
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %i.dp
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !45
  %i.aat = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 24
  store float %i.aas, ptr %i.aat, align 4, !tbaa !45
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %i.dr
  %i.aav = load float, ptr %i.aau, align 4, !tbaa !45
  %i.aaw = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 28
  store float %i.aav, ptr %i.aaw, align 4, !tbaa !45
  %i.aax = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 32 ; 2 uses
  %indvars.iv.next745.i = add nuw nsw i64 %indvars.iv744.i, 1 ; 2 uses
  %exitcond748.not.i = icmp eq i64 %indvars.iv.next745.i, %wide.trip.count747.i
  br i1 %exitcond748.not.i, label %._crit_edge551.us.i, label %scalar.ph489, !llvm.loop !135

._crit_edge551.us.i:                              ; preds = %scalar.ph489, %middle.block539
  %.lcssa108 = phi ptr [ %i.zj, %middle.block539 ], [ %i.aax, %scalar.ph489 ] ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %i.dt ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %i.dt ; 2 uses
  %i.aba = add nuw nsw i32 %.0363556.us.i, 4      ; 2 uses
  %i.abb = or disjoint i32 %i.aba, 3
  %i.abc = icmp slt i32 %i.abb, %i.n
  br i1 %i.abc, label %.preheader480.us.i, label %.preheader482.i, !llvm.loop !136

.preheader482.i:                                  ; preds = %._crit_edge551.us.i, %_ZN4ncnn3MatD2Ev.exit419.i
  %.0375.lcssa.i = phi ptr [ %i.xz, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.aay, %._crit_edge551.us.i ] ; 6 uses
  %.0373.lcssa.i = phi ptr [ %i.yc, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.aaz, %._crit_edge551.us.i ] ; 6 uses
  %.0366.lcssa.i = phi ptr [ %i.yi, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %.lcssa108, %._crit_edge551.us.i ] ; 2 uses
  %.0363.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.dw, %._crit_edge551.us.i ] ; 4 uses
  %i.abd = or disjoint i32 %.0363.lcssa.i, 1
  %i.abe = icmp slt i32 %i.abd, %i.n
  br i1 %i.abe, label %.preheader479.lr.ph.i, label %.preheader481.i

.preheader479.lr.ph.i:                            ; preds = %.preheader482.i
end_hunk_1
begin_hunk_2_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  %i.acw = icmp eq i64 %indvars.iv751.i.ph, %i.ff
  br i1 %i.acw, label %._crit_edge571.us.i, label %scalar.ph365

scalar.ph365:                                     ; preds = %scalar.ph365.prol.loopexit, %scalar.ph365
  %indvars.iv751.i = phi i64 [ %indvars.iv.next752.i.1, %scalar.ph365 ], [ %indvars.iv751.i.unr, %scalar.ph365.prol.loopexit ] ; 4 uses
  %.3369569.us.i = phi ptr [ %i.adu, %scalar.ph365 ], [ %.3369569.us.i.unr, %scalar.ph365.prol.loopexit ] ; 9 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv751.i ; 2 uses
  %i.acz = load float, ptr %i.acx, align 4, !tbaa !45
  store float %i.acz, ptr %.3369569.us.i, align 4, !tbaa !45
  %i.ada = load float, ptr %i.acy, align 4, !tbaa !45
  %i.adb = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 4
  store float %i.ada, ptr %i.adb, align 4, !tbaa !45
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.acx, i64 %i.dn
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %i.dn
  %i.ade = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 8
  %i.adf = load float, ptr %i.adc, align 4, !tbaa !45
  store float %i.adf, ptr %i.ade, align 4, !tbaa !45
  %i.adg = load float, ptr %i.add, align 4, !tbaa !45
  %i.adh = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 12
  store float %i.adg, ptr %i.adh, align 4, !tbaa !45
  %i.adi = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 16
  %indvars.iv.next752.i = add nuw nsw i64 %indvars.iv751.i, 1 ; 2 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.adl = load float, ptr %i.adj, align 4, !tbaa !45
  store float %i.adl, ptr %i.adi, align 4, !tbaa !45
  %i.adm = load float, ptr %i.adk, align 4, !tbaa !45
  %i.adn = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 20
  store float %i.adm, ptr %i.adn, align 4, !tbaa !45
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %i.dn
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.adk, i64 %i.dn
  %i.adq = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 24
  %i.adr = load float, ptr %i.ado, align 4, !tbaa !45
  store float %i.adr, ptr %i.adq, align 4, !tbaa !45
  %i.ads = load float, ptr %i.adp, align 4, !tbaa !45
  %i.adt = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 28
  store float %i.ads, ptr %i.adt, align 4, !tbaa !45
  %i.adu = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 32 ; 2 uses
  %indvars.iv.next752.i.1 = add nuw nsw i64 %indvars.iv751.i, 2 ; 2 uses
  %exitcond755.not.i.1 = icmp eq i64 %indvars.iv.next752.i.1, %wide.trip.count747.i
  br i1 %exitcond755.not.i.1, label %._crit_edge571.us.i, label %scalar.ph365, !llvm.loop !144

._crit_edge571.us.i:                              ; preds = %scalar.ph365.prol.loopexit, %scalar.ph365, %middle.block395
  %.lcssa111 = phi ptr [ %i.acb, %middle.block395 ], [ %.lcssa780.unr, %scalar.ph365.prol.loopexit ], [ %i.adu, %scalar.ph365 ] ; 2 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %i.du ; 2 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %i.du ; 2 uses
  %i.adx = add nuw nsw i32 %.1364576.us.i, 2      ; 3 uses
  %i.ady = or disjoint i32 %i.adx, 1
  %i.adz = icmp slt i32 %i.ady, %i.n
  br i1 %i.adz, label %.preheader479.us.i, label %.preheader481.i, !llvm.loop !145

.preheader481.i:                                  ; preds = %._crit_edge571.us.i, %.preheader482.i
  %.1376.lcssa.i = phi ptr [ %.0375.lcssa.i, %.preheader482.i ], [ %i.adv, %._crit_edge571.us.i ] ; 8 uses
  %.1374.lcssa.i = phi ptr [ %.0373.lcssa.i, %.preheader482.i ], [ %i.adw, %._crit_edge571.us.i ] ; 8 uses
  %.2368.lcssa.i = phi ptr [ %.0366.lcssa.i, %.preheader482.i ], [ %.lcssa111, %._crit_edge571.us.i ]
  %.1364.lcssa.i = phi i32 [ %.0363.lcssa.i, %.preheader482.i ], [ %i.adx, %._crit_edge571.us.i ] ; 2 uses
  %i.aea = icmp sge i32 %.1364.lcssa.i, %i.n
  %brmerge642.i = or i1 %i.dv, %i.aea
  br i1 %brmerge642.i, label %._crit_edge591.split.i, label %.preheader478.i.preheader

.preheader478.i.preheader:                        ; preds = %.preheader481.i
  %scevgep298 = getelementptr i8, ptr %.1376.lcssa.i, i64 %i.ea
  %scevgep299 = getelementptr i8, ptr %.1374.lcssa.i, i64 %i.ea
  br label %.preheader478.i

.preheader478.i:                                  ; preds = %.preheader478.i.preheader, %._crit_edge587.i
  %.2365590.i = phi i32 [ %i.aes, %._crit_edge587.i ], [ %.1364.lcssa.i, %.preheader478.i.preheader ]
  %.5371589.i = phi ptr [ %.lcssa115, %._crit_edge587.i ], [ %.2368.lcssa.i, %.preheader478.i.preheader ] ; 8 uses
  br i1 %min.iters.check301, label %scalar.ph300.preheader, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.preheader478.i
  %i.aeb = getelementptr i8, ptr %.5371589.i, i64 %i.eb ; 2 uses
  %bound0303 = icmp ult ptr %.5371589.i, %scevgep299
  %bound1304 = icmp ult ptr %.1374.lcssa.i, %i.aeb
  %found.conflict305 = and i1 %bound0303, %bound1304
  %bound0306 = icmp ult ptr %.5371589.i, %scevgep298
  %bound1307 = icmp ult ptr %.1376.lcssa.i, %i.aeb
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %found.conflict305, %found.conflict308
  br i1 %conflict.rdx309, label %scalar.ph300.preheader, label %vector.ph310

vector.ph310:                                     ; preds = %vector.memcheck302
  %i.aec = getelementptr i8, ptr %.5371589.i, i64 %i.fg ; 2 uses
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph310
  %index313 = phi i64 [ 0, %vector.ph310 ], [ %index.next322, %vector.body312 ] ; 4 uses
  %i.aed = shl i64 %index313, 3                   ; 2 uses
  %next.gep314 = getelementptr i8, ptr %.5371589.i, i64 %i.aed
  %i.aee = getelementptr i8, ptr %.5371589.i, i64 %i.aed
  %next.gep315 = getelementptr i8, ptr %i.aee, i64 16
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %index313 ; 2 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %index313 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  %wide.load316 = load <2 x float>, ptr %i.aef, align 4, !tbaa !45, !alias.scope !211
  %wide.load317 = load <2 x float>, ptr %i.aeh, align 4, !tbaa !45, !alias.scope !211
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %wide.load318 = load <2 x float>, ptr %i.aeg, align 4, !tbaa !45, !alias.scope !212
  %wide.load319 = load <2 x float>, ptr %i.aei, align 4, !tbaa !45, !alias.scope !212
  %interleaved.vec320 = shufflevector <2 x float> %wide.load316, <2 x float> %wide.load318, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec320, ptr %next.gep314, align 4, !tbaa !45, !alias.scope !213, !noalias !214
  %interleaved.vec321 = shufflevector <2 x float> %wide.load317, <2 x float> %wide.load319, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec321, ptr %next.gep315, align 4, !tbaa !45, !alias.scope !213, !noalias !214
  %index.next322 = add nuw i64 %index313, 4       ; 2 uses
  %i.aej = icmp eq i64 %index.next322, %n.vec311
  br i1 %i.aej, label %middle.block323, label %vector.body312, !llvm.loop !150

middle.block323:                                  ; preds = %vector.body312
  br i1 %cmp.n324, label %._crit_edge587.i, label %scalar.ph300.preheader

scalar.ph300.preheader:                           ; preds = %vector.memcheck302, %.preheader478.i, %middle.block323
  %indvars.iv756.i.ph = phi i64 [ 0, %vector.memcheck302 ], [ 0, %.preheader478.i ], [ %n.vec311, %middle.block323 ] ; 3 uses
  %.6372585.i.ph = phi ptr [ %.5371589.i, %vector.memcheck302 ], [ %.5371589.i, %.preheader478.i ], [ %i.aec, %middle.block323 ] ; 2 uses
  br i1 %lcmp.mod801.not, label %scalar.ph300.prol.loopexit, label %scalar.ph300.prol

scalar.ph300.prol:                                ; preds = %scalar.ph300.preheader, %scalar.ph300.prol
  %indvars.iv756.i.prol = phi i64 [ %indvars.iv.next757.i.prol, %scalar.ph300.prol ], [ %indvars.iv756.i.ph, %scalar.ph300.preheader ] ; 3 uses
  %.6372585.i.prol = phi ptr [ %i.aep, %scalar.ph300.prol ], [ %.6372585.i.ph, %scalar.ph300.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph300.prol ], [ 0, %scalar.ph300.preheader ]
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i.prol
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i.prol
  %i.aem = load float, ptr %i.aek, align 4, !tbaa !45
  store float %i.aem, ptr %.6372585.i.prol, align 4, !tbaa !45
  %i.aen = load float, ptr %i.ael, align 4, !tbaa !45
  %i.aeo = getelementptr inbounds nuw i8, ptr %.6372585.i.prol, i64 4
  store float %i.aen, ptr %i.aeo, align 4, !tbaa !45
  %i.aep = getelementptr inbounds nuw i8, ptr %.6372585.i.prol, i64 8 ; 3 uses
  %indvars.iv.next757.i.prol = add nuw nsw i64 %indvars.iv756.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter800
  br i1 %prol.iter.cmp.not, label %scalar.ph300.prol.loopexit, label %scalar.ph300.prol, !llvm.loop !151

scalar.ph300.prol.loopexit:                       ; preds = %scalar.ph300.prol, %scalar.ph300.preheader
  %.lcssa784.unr = phi ptr [ poison, %scalar.ph300.preheader ], [ %i.aep, %scalar.ph300.prol ]
  %indvars.iv756.i.unr = phi i64 [ %indvars.iv756.i.ph, %scalar.ph300.preheader ], [ %indvars.iv.next757.i.prol, %scalar.ph300.prol ]
  %.6372585.i.unr = phi ptr [ %.6372585.i.ph, %scalar.ph300.preheader ], [ %i.aep, %scalar.ph300.prol ]
  %i.aeq = sub nsw i64 %indvars.iv756.i.ph, %wide.trip.count747.i
  %i.aer = icmp ugt i64 %i.aeq, -4
  br i1 %i.aer, label %._crit_edge587.i, label %scalar.ph300

._crit_edge587.i:                                 ; preds = %scalar.ph300.prol.loopexit, %scalar.ph300, %middle.block323
  %.lcssa115 = phi ptr [ %i.aec, %middle.block323 ], [ %.lcssa784.unr, %scalar.ph300.prol.loopexit ], [ %i.afq, %scalar.ph300 ]
  %i.aes = add nuw nsw i32 %.2365590.i, 1         ; 2 uses
  %exitcond761.not.i = icmp eq i32 %i.aes, %i.n
  br i1 %exitcond761.not.i, label %._crit_edge591.split.i, label %.preheader478.i, !llvm.loop !152

scalar.ph300:                                     ; preds = %scalar.ph300.prol.loopexit, %scalar.ph300
  %indvars.iv756.i = phi i64 [ %indvars.iv.next757.i.3, %scalar.ph300 ], [ %indvars.iv756.i.unr, %scalar.ph300.prol.loopexit ] ; 6 uses
  %.6372585.i = phi ptr [ %i.afq, %scalar.ph300 ], [ %.6372585.i.unr, %scalar.ph300.prol.loopexit ] ; 9 uses
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i
  %i.aev = load float, ptr %i.aet, align 4, !tbaa !45
  store float %i.aev, ptr %.6372585.i, align 4, !tbaa !45
  %i.aew = load float, ptr %i.aeu, align 4, !tbaa !45
  %i.aex = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 4
  store float %i.aew, ptr %i.aex, align 4, !tbaa !45
  %i.aey = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 8
  %indvars.iv.next757.i = add nuw nsw i64 %indvars.iv756.i, 1 ; 2 uses
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i
  %i.afb = load float, ptr %i.aez, align 4, !tbaa !45
  store float %i.afb, ptr %i.aey, align 4, !tbaa !45
  %i.afc = load float, ptr %i.afa, align 4, !tbaa !45
  %i.afd = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 12
  store float %i.afc, ptr %i.afd, align 4, !tbaa !45
  %i.afe = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 16
  %indvars.iv.next757.i.1 = add nuw nsw i64 %indvars.iv756.i, 2 ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i.1
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i.1
  %i.afh = load float, ptr %i.aff, align 4, !tbaa !45
  store float %i.afh, ptr %i.afe, align 4, !tbaa !45
  %i.afi = load float, ptr %i.afg, align 4, !tbaa !45
  %i.afj = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 20
  store float %i.afi, ptr %i.afj, align 4, !tbaa !45
  %i.afk = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 24
  %indvars.iv.next757.i.2 = add nuw nsw i64 %indvars.iv756.i, 3 ; 2 uses
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i.2
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i.2
  %i.afn = load float, ptr %i.afl, align 4, !tbaa !45
  store float %i.afn, ptr %i.afk, align 4, !tbaa !45
  %i.afo = load float, ptr %i.afm, align 4, !tbaa !45
  %i.afp = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 28
  store float %i.afo, ptr %i.afp, align 4, !tbaa !45
  %i.afq = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 32 ; 2 uses
  %indvars.iv.next757.i.3 = add nuw nsw i64 %indvars.iv756.i, 4 ; 2 uses
  %exitcond760.not.i.3 = icmp eq i64 %indvars.iv.next757.i.3, %wide.trip.count747.i
  br i1 %exitcond760.not.i.3, label %._crit_edge587.i, label %scalar.ph300, !llvm.loop !153

._crit_edge591.split.i:                           ; preds = %._crit_edge587.i, %.preheader481.i, %.preheader479.lr.ph.i, %.preheader480.lr.ph.i
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 2 ; 3 uses
  %i.afr = icmp slt i64 %indvars.iv.next765.i, %invariant.op.i
  %indvars.iv.next763.i = add i32 %indvars.iv762.i, 2
  %indvar.next = add i32 %indvar, 1
  br i1 %i.afr, label %_ZN4ncnn3MatD2Ev.exit419.i, label %.preheader477.loopexit.i, !llvm.loop !154

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge634.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split
  %indvars.iv791.i = phi i64 [ %i.os, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ], [ %indvars.iv.next792.i, %._crit_edge634.split.i ] ; 2 uses
  %i.afs = trunc i64 %indvars.iv791.i to i32      ; 4 uses
  %i.aft = mul i32 %i.od, %i.afs
  %i.afu = sext i32 %i.aft to i64                 ; 3 uses
  %i.afv = getelementptr [4 x i8], ptr %i.oc, i64 %i.afu ; 9 uses
  %i.afw = lshr i32 %i.afs, 2
  %i.afx = lshr i32 %i.afs, 1
  %i.afy = and i32 %i.afx, 1
  %i.afz = and i32 %i.afs, 1
  %i.aga = add nuw nsw i32 %i.afz, %i.afw
  %i.agb = add nuw i32 %i.aga, %i.afy
  %i.agc = zext i32 %i.agb to i64
  %.reass638.i = mul i64 %factor.op.mul637.i, %i.agc ; 2 uses
  %i.agd = getelementptr i8, ptr %i.oe, i64 %.reass638.i ; 8 uses
  br i1 %i.xj, label %.preheader473.lr.ph.i, label %.preheader475.i

.preheader473.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.ok, label %.preheader473.us.i.preheader, label %._crit_edge634.split.i

.preheader473.us.i.preheader:                     ; preds = %.preheader473.lr.ph.i
  br i1 %min.iters.check582, label %.preheader473.us.i.preheader773, label %vector.memcheck583

vector.memcheck583:                               ; preds = %.preheader473.us.i.preheader
  %gep = getelementptr i8, ptr %invariant.gep.a, i64 %.reass638.i ; 2 uses
  %2 = add nsw i64 %i.ol, %i.afu
  %i.age = shl nsw i64 %2, 2                      ; 2 uses
  %i.agf = getelementptr i8, ptr %i.oc, i64 %i.age
  %gep851.a = getelementptr i8, ptr %invariant.gep850, i64 %i.age
  %3 = add nsw i64 %i.afu, %wide.trip.count777.i
  %4 = shl nsw i64 %3, 2
  %i.agg = getelementptr i8, ptr %i.oc, i64 %4
  %bound0584 = icmp ult ptr %i.agd, %gep851.a
  %bound1585 = icmp ult ptr %i.agf, %gep
  %found.conflict586 = and i1 %bound0584, %bound1585
  %bound0587 = icmp ult ptr %i.agd, %i.agg
  %bound1588 = icmp ult ptr %i.afv, %gep
  %found.conflict589 = and i1 %bound0587, %bound1588
  %conflict.rdx590 = or i1 %found.conflict586, %found.conflict589
  br i1 %conflict.rdx590, label %.preheader473.us.i.preheader773, label %vector.ph591

vector.ph591:                                     ; preds = %vector.memcheck583
  %i.agh = getelementptr i8, ptr %i.agd, i64 %i.xn ; 2 uses
  br label %vector.body593

vector.body593:                                   ; preds = %vector.body593, %vector.ph591
  %index594 = phi i64 [ 0, %vector.ph591 ], [ %index.next603, %vector.body593 ] ; 3 uses
  %i.agi = shl i64 %index594, 3                   ; 2 uses
  %next.gep595 = getelementptr i8, ptr %i.agd, i64 %i.agi
  %i.agj = getelementptr i8, ptr %i.agd, i64 %i.agi
  %next.gep596 = getelementptr i8, ptr %i.agj, i64 16
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %index594 ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  %wide.load597 = load <2 x float>, ptr %i.agk, align 4, !tbaa !45, !alias.scope !215
  %wide.load598 = load <2 x float>, ptr %i.agl, align 4, !tbaa !45, !alias.scope !215
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %i.ol ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %wide.load599 = load <2 x float>, ptr %i.agm, align 4, !tbaa !45, !alias.scope !216
  %wide.load600 = load <2 x float>, ptr %i.agn, align 4, !tbaa !45, !alias.scope !216
  %interleaved.vec601 = shufflevector <2 x float> %wide.load597, <2 x float> %wide.load599, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec601, ptr %next.gep595, align 4, !tbaa !45, !alias.scope !217, !noalias !218
  %interleaved.vec602 = shufflevector <2 x float> %wide.load598, <2 x float> %wide.load600, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec602, ptr %next.gep596, align 4, !tbaa !45, !alias.scope !217, !noalias !218
  %index.next603 = add nuw i64 %index594, 4       ; 2 uses
  %i.ago = icmp eq i64 %index.next603, %n.vec592
  br i1 %i.ago, label %middle.block604, label %vector.body593, !llvm.loop !159

middle.block604:                                  ; preds = %vector.body593
  br i1 %cmp.n605, label %.preheader475.i.loopexit, label %.preheader473.us.i.preheader773

.preheader473.us.i.preheader773:                  ; preds = %vector.memcheck583, %.preheader473.us.i.preheader, %middle.block604
  %indvars.iv780.i.ph = phi i64 [ 0, %vector.memcheck583 ], [ 0, %.preheader473.us.i.preheader ], [ %n.vec592, %middle.block604 ] ; 3 uses
  %.4615.us.i.ph = phi ptr [ %i.agd, %vector.memcheck583 ], [ %i.agd, %.preheader473.us.i.preheader ], [ %i.agh, %middle.block604 ] ; 2 uses
  br i1 %lcmp.mod803.not, label %.preheader473.us.i.prol.loopexit, label %.preheader473.us.i.prol

.preheader473.us.i.prol:                          ; preds = %.preheader473.us.i.preheader773, %.preheader473.us.i.prol
  %indvars.iv780.i.prol = phi i64 [ %indvars.iv.next781.i.prol, %.preheader473.us.i.prol ], [ %indvars.iv780.i.ph, %.preheader473.us.i.preheader773 ] ; 2 uses
  %.4615.us.i.prol = phi ptr [ %i.agu, %.preheader473.us.i.prol ], [ %.4615.us.i.ph, %.preheader473.us.i.preheader773 ] ; 3 uses
  %prol.iter804 = phi i64 [ %prol.iter804.next, %.preheader473.us.i.prol ], [ 0, %.preheader473.us.i.preheader773 ]
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %indvars.iv780.i.prol ; 2 uses
  %i.agq = load float, ptr %i.agp, align 4, !tbaa !45
  store float %i.agq, ptr %.4615.us.i.prol, align 4, !tbaa !45
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %i.ol
  %i.ags = getelementptr inbounds nuw i8, ptr %.4615.us.i.prol, i64 4
  %i.agt = load float, ptr %i.agr, align 4, !tbaa !45
  store float %i.agt, ptr %i.ags, align 4, !tbaa !45
  %i.agu = getelementptr inbounds nuw i8, ptr %.4615.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next781.i.prol = add nuw nsw i64 %indvars.iv780.i.prol, 1 ; 2 uses
  %prol.iter804.next = add i64 %prol.iter804, 1   ; 2 uses
  %prol.iter804.cmp.not = icmp eq i64 %prol.iter804.next, %xtraiter802
  br i1 %prol.iter804.cmp.not, label %.preheader473.us.i.prol.loopexit, label %.preheader473.us.i.prol, !llvm.loop !160

.preheader473.us.i.prol.loopexit:                 ; preds = %.preheader473.us.i.prol, %.preheader473.us.i.preheader773
  %.lcssa775.unr = phi ptr [ poison, %.preheader473.us.i.preheader773 ], [ %i.agu, %.preheader473.us.i.prol ]
  %indvars.iv780.i.unr = phi i64 [ %indvars.iv780.i.ph, %.preheader473.us.i.preheader773 ], [ %indvars.iv.next781.i.prol, %.preheader473.us.i.prol ]
  %.4615.us.i.unr = phi ptr [ %.4615.us.i.ph, %.preheader473.us.i.preheader773 ], [ %i.agu, %.preheader473.us.i.prol ]
  %i.agv = sub nsw i64 %indvars.iv780.i.ph, %wide.trip.count777.i
  %i.agw = icmp ugt i64 %i.agv, -4
  br i1 %i.agw, label %.preheader475.i.loopexit, label %.preheader473.us.i

.preheader473.us.i:                               ; preds = %.preheader473.us.i.prol.loopexit, %.preheader473.us.i
  %indvars.iv780.i = phi i64 [ %indvars.iv.next781.i.3, %.preheader473.us.i ], [ %indvars.iv780.i.unr, %.preheader473.us.i.prol.loopexit ] ; 5 uses
  %.4615.us.i = phi ptr [ %i.ahx, %.preheader473.us.i ], [ %.4615.us.i.unr, %.preheader473.us.i.prol.loopexit ] ; 9 uses
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %indvars.iv780.i ; 2 uses
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !45
  store float %i.agy, ptr %.4615.us.i, align 4, !tbaa !45
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.ol
  %i.aha = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 4
  %i.ahb = load float, ptr %i.agz, align 4, !tbaa !45
  store float %i.ahb, ptr %i.aha, align 4, !tbaa !45
  %i.ahc = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 8
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %indvars.iv780.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 4 ; 2 uses
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !45
  store float %i.ahf, ptr %i.ahc, align 4, !tbaa !45
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.ol
  %i.ahh = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 12
  %i.ahi = load float, ptr %i.ahg, align 4, !tbaa !45
  store float %i.ahi, ptr %i.ahh, align 4, !tbaa !45
  %i.ahj = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 16
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %indvars.iv780.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 8 ; 2 uses
  %i.ahm = load float, ptr %i.ahl, align 4, !tbaa !45
  store float %i.ahm, ptr %i.ahj, align 4, !tbaa !45
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %i.ol
  %i.aho = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 20
  %i.ahp = load float, ptr %i.ahn, align 4, !tbaa !45
  store float %i.ahp, ptr %i.aho, align 4, !tbaa !45
  %i.ahq = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 24
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %indvars.iv780.i
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 12 ; 2 uses
  %i.aht = load float, ptr %i.ahs, align 4, !tbaa !45
  store float %i.aht, ptr %i.ahq, align 4, !tbaa !45
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.ahs, i64 %i.ol
  %i.ahv = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 28
  %i.ahw = load float, ptr %i.ahu, align 4, !tbaa !45
  store float %i.ahw, ptr %i.ahv, align 4, !tbaa !45
  %i.ahx = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 32 ; 2 uses
  %indvars.iv.next781.i.3 = add nuw nsw i64 %indvars.iv780.i, 4 ; 2 uses
  %exitcond784.not.i.3 = icmp eq i64 %indvars.iv.next781.i.3, %wide.trip.count777.i
  br i1 %exitcond784.not.i.3, label %.preheader475.i.loopexit, label %.preheader473.us.i, !llvm.loop !161

.preheader475.i.loopexit:                         ; preds = %.preheader473.us.i.prol.loopexit, %.preheader473.us.i, %middle.block604
  %.lcssa106 = phi ptr [ %i.agh, %middle.block604 ], [ %.lcssa775.unr, %.preheader473.us.i.prol.loopexit ], [ %i.ahx, %.preheader473.us.i ]
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %i.op
  br label %.preheader475.i

.preheader475.i:                                  ; preds = %.preheader475.i.loopexit, %_ZN4ncnn3MatD2Ev.exit.i
  %.1348.lcssa.i = phi ptr [ %i.afv, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.ahy, %.preheader475.i.loopexit ] ; 11 uses
  %.3.lcssa.i = phi ptr [ %i.agd, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa106, %.preheader475.i.loopexit ]
  %.1342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.xk, %.preheader475.i.loopexit ] ; 2 uses
  %.1348.lcssa.i547 = ptrtoaddr ptr %.1348.lcssa.i to i64
  %i.ahz = icmp sge i32 %.1342.lcssa.i, %i.n
  %brmerge645.i = or i1 %i.oq, %i.ahz
  br i1 %brmerge645.i, label %._crit_edge634.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader475.i, %._crit_edge630.i
  %.2343633.i = phi i32 [ %i.aim, %._crit_edge630.i ], [ %.1342.lcssa.i, %.preheader475.i ]
  %.6632.i = phi ptr [ %.lcssa107, %._crit_edge630.i ], [ %.3.lcssa.i, %.preheader475.i ] ; 4 uses
  %.6632.i546 = ptrtoaddr ptr %.6632.i to i64
  %i.aia = sub i64 %.1348.lcssa.i547, %.6632.i546
  %diff.check = icmp ugt i64 %i.aia, -32
  %or.cond762 = select i1 %min.iters.check549, i1 true, i1 %diff.check
  br i1 %or.cond762, label %scalar.ph548.preheader, label %vector.ph551

vector.ph551:                                     ; preds = %.preheader.i
  %i.aib = getelementptr i8, ptr %.6632.i, i64 %i.xo ; 2 uses
  br label %vector.body553

vector.body553:                                   ; preds = %vector.body553, %vector.ph551
  %index554 = phi i64 [ 0, %vector.ph551 ], [ %index.next558, %vector.body553 ] ; 3 uses
  %i.aic = shl i64 %index554, 2
  %next.gep555 = getelementptr i8, ptr %.6632.i, i64 %i.aic ; 2 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %index554 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  %wide.load556 = load <4 x float>, ptr %i.aid, align 4, !tbaa !45
  %wide.load557 = load <4 x float>, ptr %i.aie, align 4, !tbaa !45
  %i.aif = getelementptr i8, ptr %next.gep555, i64 16
  store <4 x float> %wide.load556, ptr %next.gep555, align 4, !tbaa !45
  store <4 x float> %wide.load557, ptr %i.aif, align 4, !tbaa !45
  %index.next558 = add nuw i64 %index554, 8       ; 2 uses
  %i.aig = icmp eq i64 %index.next558, %n.vec552
  br i1 %i.aig, label %middle.block559, label %vector.body553, !llvm.loop !162

middle.block559:                                  ; preds = %vector.body553
  br i1 %cmp.n560, label %._crit_edge630.i, label %scalar.ph548.preheader

scalar.ph548.preheader:                           ; preds = %.preheader.i, %middle.block559
  %indvars.iv785.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec552, %middle.block559 ] ; 3 uses
  %.7628.i.ph = phi ptr [ %.6632.i, %.preheader.i ], [ %i.aib, %middle.block559 ] ; 2 uses
  br i1 %lcmp.mod806.not, label %scalar.ph548.prol.loopexit, label %scalar.ph548.prol

scalar.ph548.prol:                                ; preds = %scalar.ph548.preheader, %scalar.ph548.prol
  %indvars.iv785.i.prol = phi i64 [ %indvars.iv.next786.i.prol, %scalar.ph548.prol ], [ %indvars.iv785.i.ph, %scalar.ph548.preheader ] ; 2 uses
  %.7628.i.prol = phi ptr [ %i.aij, %scalar.ph548.prol ], [ %.7628.i.ph, %scalar.ph548.preheader ] ; 2 uses
  %prol.iter807 = phi i64 [ %prol.iter807.next, %scalar.ph548.prol ], [ 0, %scalar.ph548.preheader ]
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i.prol
  %i.aii = load float, ptr %i.aih, align 4, !tbaa !45
  store float %i.aii, ptr %.7628.i.prol, align 4, !tbaa !45
  %i.aij = getelementptr inbounds nuw i8, ptr %.7628.i.prol, i64 4 ; 3 uses
  %indvars.iv.next786.i.prol = add nuw nsw i64 %indvars.iv785.i.prol, 1 ; 2 uses
  %prol.iter807.next = add i64 %prol.iter807, 1   ; 2 uses
  %prol.iter807.cmp.not = icmp eq i64 %prol.iter807.next, %xtraiter805
  br i1 %prol.iter807.cmp.not, label %scalar.ph548.prol.loopexit, label %scalar.ph548.prol, !llvm.loop !163

scalar.ph548.prol.loopexit:                       ; preds = %scalar.ph548.prol, %scalar.ph548.preheader
  %.lcssa776.unr = phi ptr [ poison, %scalar.ph548.preheader ], [ %i.aij, %scalar.ph548.prol ]
  %indvars.iv785.i.unr = phi i64 [ %indvars.iv785.i.ph, %scalar.ph548.preheader ], [ %indvars.iv.next786.i.prol, %scalar.ph548.prol ]
  %.7628.i.unr = phi ptr [ %.7628.i.ph, %scalar.ph548.preheader ], [ %i.aij, %scalar.ph548.prol ]
  %i.aik = sub nsw i64 %indvars.iv785.i.ph, %wide.trip.count777.i
  %i.ail = icmp ugt i64 %i.aik, -8
  br i1 %i.ail, label %._crit_edge630.i, label %scalar.ph548

._crit_edge630.i:                                 ; preds = %scalar.ph548.prol.loopexit, %scalar.ph548, %middle.block559
  %.lcssa107 = phi ptr [ %i.aib, %middle.block559 ], [ %.lcssa776.unr, %scalar.ph548.prol.loopexit ], [ %i.ajr, %scalar.ph548 ]
  %i.aim = add nuw nsw i32 %.2343633.i, 1         ; 2 uses
  %exitcond790.not.i = icmp eq i32 %i.aim, %i.n
  br i1 %exitcond790.not.i, label %._crit_edge634.split.i, label %.preheader.i, !llvm.loop !122

scalar.ph548:                                     ; preds = %scalar.ph548.prol.loopexit, %scalar.ph548
  %indvars.iv785.i = phi i64 [ %indvars.iv.next786.i.7, %scalar.ph548 ], [ %indvars.iv785.i.unr, %scalar.ph548.prol.loopexit ] ; 9 uses
  %.7628.i = phi ptr [ %i.ajr, %scalar.ph548 ], [ %.7628.i.unr, %scalar.ph548.prol.loopexit ] ; 9 uses
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !45
  store float %i.aio, ptr %.7628.i, align 4, !tbaa !45
  %i.aip = getelementptr inbounds nuw i8, ptr %.7628.i, i64 4
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 4
  %i.ais = load float, ptr %i.air, align 4, !tbaa !45
  store float %i.ais, ptr %i.aip, align 4, !tbaa !45
  %i.ait = getelementptr inbounds nuw i8, ptr %.7628.i, i64 8
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
end_hunk_2
