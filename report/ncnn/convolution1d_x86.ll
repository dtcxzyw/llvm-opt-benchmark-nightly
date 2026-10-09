Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  store float %i.ko, ptr %i.kp, align 4, !tbaa !45
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.cj
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %i.cj
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.cj
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.cj
  %i.ku = getelementptr inbounds nuw i8, ptr %.4381521.us.i, i64 16
  %i.kv = load float, ptr %i.kq, align 4, !tbaa !45
  store float %i.kv, ptr %i.ku, align 4, !tbaa !45
  %i.kw = load float, ptr %i.kr, align 4, !tbaa !45
  %i.kx = getelementptr inbounds nuw i8, ptr %.4381521.us.i, i64 20
  store float %i.kw, ptr %i.kx, align 4, !tbaa !45
  %i.ky = load float, ptr %i.ks, align 4, !tbaa !45
  %i.kz = getelementptr inbounds nuw i8, ptr %.4381521.us.i, i64 24
  store float %i.ky, ptr %i.kz, align 4, !tbaa !45
  %i.la = load float, ptr %i.kt, align 4, !tbaa !45
  %i.lb = getelementptr inbounds nuw i8, ptr %.4381521.us.i, i64 28
  store float %i.la, ptr %i.lb, align 4, !tbaa !45
  %i.lc = getelementptr inbounds nuw i8, ptr %.4381521.us.i, i64 32 ; 2 uses
  %indvars.iv.next723.i = add nuw nsw i64 %indvars.iv722.i, 1 ; 2 uses
  %exitcond726.not.i = icmp eq i64 %indvars.iv.next723.i, %wide.trip.count.i
  br i1 %exitcond726.not.i, label %._crit_edge.us534.i, label %scalar.ph207, !llvm.loop !88

._crit_edge.us534.i:                              ; preds = %scalar.ph207, %middle.block224
  %.lcssa121 = phi ptr [ %i.jo, %middle.block224 ], [ %i.lc, %scalar.ph207 ] ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.1350527.us.i, i64 %i.cn ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.1352526.us.i, i64 %i.cn ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.1359525.us.i, i64 %i.cn ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.1361524.us.i, i64 %i.cn ; 2 uses
  %i.lh = add nuw nsw i32 %.1386522.us.i, 2       ; 3 uses
  %i.li = or disjoint i32 %i.lh, 1
  %i.lj = icmp slt i32 %i.li, %i.n
  br i1 %i.lj, label %.preheader485.us.i, label %.preheader487.i, !llvm.loop !89

.preheader487.i:                                  ; preds = %._crit_edge.us534.i, %.preheader488.i
  %.1386.lcssa.i = phi i32 [ %.0385.lcssa.i, %.preheader488.i ], [ %i.lh, %._crit_edge.us534.i ] ; 2 uses
  %.3380.lcssa.i = phi ptr [ %.0377.lcssa.i, %.preheader488.i ], [ %.lcssa121, %._crit_edge.us534.i ]
  %.1361.lcssa.i = phi ptr [ %.0360.lcssa.i, %.preheader488.i ], [ %i.lg, %._crit_edge.us534.i ] ; 6 uses
  %.1359.lcssa.i = phi ptr [ %.0358.lcssa.i, %.preheader488.i ], [ %i.lf, %._crit_edge.us534.i ] ; 6 uses
  %.1352.lcssa.i = phi ptr [ %.0351.lcssa.i, %.preheader488.i ], [ %i.le, %._crit_edge.us534.i ] ; 6 uses
  %.1350.lcssa.i = phi ptr [ %.0349.lcssa.i, %.preheader488.i ], [ %i.ld, %._crit_edge.us534.i ] ; 6 uses
  %i.lk = icmp sge i32 %.1386.lcssa.i, %i.n
  %brmerge.i = or i1 %i.co, %i.lk
  br i1 %brmerge.i, label %._crit_edge546.split.i, label %.preheader484.i.preheader

.preheader484.i.preheader:                        ; preds = %.preheader487.i
  %scevgep128 = getelementptr i8, ptr %.1361.lcssa.i, i64 %i.cs
  %scevgep129 = getelementptr i8, ptr %.1359.lcssa.i, i64 %i.cs
  %scevgep130 = getelementptr i8, ptr %.1352.lcssa.i, i64 %i.cs
  %scevgep131 = getelementptr i8, ptr %.1350.lcssa.i, i64 %i.cs
  %i.ll = insertelement <4 x ptr> poison, ptr %scevgep128, i64 0
  %i.lm = insertelement <4 x ptr> %i.ll, ptr %scevgep129, i64 1
  %i.ln = insertelement <4 x ptr> %i.lm, ptr %scevgep130, i64 2
  %i.lo = insertelement <4 x ptr> %i.ln, ptr %scevgep131, i64 3
  %i.lp = insertelement <4 x ptr> poison, ptr %.1361.lcssa.i, i64 0
  %i.lq = insertelement <4 x ptr> %i.lp, ptr %.1359.lcssa.i, i64 1
  %i.lr = insertelement <4 x ptr> %i.lq, ptr %.1352.lcssa.i, i64 2
  %i.ls = insertelement <4 x ptr> %i.lr, ptr %.1350.lcssa.i, i64 3
  br label %.preheader484.i

.preheader484.i:                                  ; preds = %.preheader484.i.preheader, %._crit_edge.i
  %.6383545.i = phi ptr [ %.lcssa127, %._crit_edge.i ], [ %.3380.lcssa.i, %.preheader484.i.preheader ] ; 6 uses
  %.2387544.i = phi i32 [ %i.mx, %._crit_edge.i ], [ %.1386.lcssa.i, %.preheader484.i.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader484.i
  %scevgep = getelementptr i8, ptr %.6383545.i, i64 %i.cr
  %i.lt = insertelement <4 x ptr> poison, ptr %.6383545.i, i64 0
  %i.lu = shufflevector <4 x ptr> %i.lt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lv = icmp ult <4 x ptr> %i.lu, %i.lo
  %i.lw = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.lx = shufflevector <4 x ptr> %i.lw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ly = icmp ult <4 x ptr> %i.ls, %i.lx
  %i.lz = and <4 x i1> %i.lv, %i.ly
  %i.ma = bitcast <4 x i1> %i.lz to i4
  %.not562 = icmp eq i4 %i.ma, 0
  br i1 %.not562, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %i.mb = getelementptr i8, ptr %.6383545.i, i64 %i.cz ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.mc = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.6383545.i, i64 %i.mc
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %index
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %index
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %index
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %index
  %wide.load = load <4 x float>, ptr %i.md, align 4, !tbaa !45, !alias.scope !178
  %wide.load143 = load <4 x float>, ptr %i.me, align 4, !tbaa !45, !alias.scope !179
  %wide.load144 = load <4 x float>, ptr %i.mf, align 4, !tbaa !45, !alias.scope !180
  %wide.load145 = load <4 x float>, ptr %i.mg, align 4, !tbaa !45, !alias.scope !181
  %i.mh = shufflevector <4 x float> %wide.load, <4 x float> %wide.load143, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.mi = shufflevector <4 x float> %wide.load144, <4 x float> %wide.load145, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.mh, <8 x float> %i.mi, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !45, !alias.scope !182, !noalias !183
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mj = icmp eq i64 %index.next, %n.vec
  br i1 %i.mj, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader484.i, %middle.block
  %indvars.iv727.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader484.i ], [ %n.vec, %middle.block ] ; 7 uses
  %.7384543.i.ph = phi ptr [ %.6383545.i, %vector.memcheck ], [ %.6383545.i, %.preheader484.i ], [ %i.mb, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv727.i.ph
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv727.i.ph
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv727.i.ph
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv727.i.ph
  %i.mo = load float, ptr %i.mk, align 4, !tbaa !45
  store float %i.mo, ptr %.7384543.i.ph, align 4, !tbaa !45
  %i.mp = load float, ptr %i.ml, align 4, !tbaa !45
  %i.mq = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 4
  store float %i.mp, ptr %i.mq, align 4, !tbaa !45
  %i.mr = load float, ptr %i.mm, align 4, !tbaa !45
  %i.ms = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 8
  store float %i.mr, ptr %i.ms, align 4, !tbaa !45
  %i.mt = load float, ptr %i.mn, align 4, !tbaa !45
  %i.mu = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 12
  store float %i.mt, ptr %i.mu, align 4, !tbaa !45
  %i.mv = getelementptr inbounds nuw i8, ptr %.7384543.i.ph, i64 16 ; 2 uses
  %indvars.iv.next728.i.prol = or disjoint i64 %indvars.iv727.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa593.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.mv, %scalar.ph.prol ]
  %indvars.iv727.i.unr = phi i64 [ %indvars.iv727.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next728.i.prol, %scalar.ph.prol ]
  %.7384543.i.unr = phi ptr [ %.7384543.i.ph, %scalar.ph.preheader ], [ %i.mv, %scalar.ph.prol ]
  %i.mw = icmp eq i64 %indvars.iv727.i.ph, %i.da
  br i1 %i.mw, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa127 = phi ptr [ %i.mb, %middle.block ], [ %.lcssa593.unr, %scalar.ph.prol.loopexit ], [ %i.nv, %scalar.ph ]
  %i.mx = add nuw nsw i32 %.2387544.i, 1          ; 2 uses
  %exitcond732.not.i = icmp eq i32 %i.mx, %i.n
  br i1 %exitcond732.not.i, label %._crit_edge546.split.i, label %.preheader484.i, !llvm.loop !97

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv727.i = phi i64 [ %indvars.iv.next728.i.1, %scalar.ph ], [ %indvars.iv727.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.7384543.i = phi ptr [ %i.nv, %scalar.ph ], [ %.7384543.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv727.i
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv727.i
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv727.i
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv727.i
  %i.nc = load float, ptr %i.my, align 4, !tbaa !45
  store float %i.nc, ptr %.7384543.i, align 4, !tbaa !45
  %i.nd = load float, ptr %i.mz, align 4, !tbaa !45
  %i.ne = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 4
  store float %i.nd, ptr %i.ne, align 4, !tbaa !45
  %i.nf = load float, ptr %i.na, align 4, !tbaa !45
  %i.ng = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 8
  store float %i.nf, ptr %i.ng, align 4, !tbaa !45
  %i.nh = load float, ptr %i.nb, align 4, !tbaa !45
  %i.ni = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 12
  store float %i.nh, ptr %i.ni, align 4, !tbaa !45
  %i.nj = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 16
  %indvars.iv.next728.i = add nuw nsw i64 %indvars.iv727.i, 1 ; 4 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv.next728.i
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv.next728.i
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv.next728.i
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv.next728.i
  %i.no = load float, ptr %i.nk, align 4, !tbaa !45
  store float %i.no, ptr %i.nj, align 4, !tbaa !45
  %i.np = load float, ptr %i.nl, align 4, !tbaa !45
  %i.nq = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 20
  store float %i.np, ptr %i.nq, align 4, !tbaa !45
  %i.nr = load float, ptr %i.nm, align 4, !tbaa !45
  %i.ns = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 24
  store float %i.nr, ptr %i.ns, align 4, !tbaa !45
  %i.nt = load float, ptr %i.nn, align 4, !tbaa !45
  %i.nu = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 28
  store float %i.nt, ptr %i.nu, align 4, !tbaa !45
  %i.nv = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 32 ; 2 uses
  %indvars.iv.next728.i.1 = add nuw nsw i64 %indvars.iv727.i, 2 ; 2 uses
  %exitcond731.not.i.1 = icmp eq i64 %indvars.iv.next728.i.1, %wide.trip.count.i
  br i1 %exitcond731.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !98

._crit_edge546.split.i:                           ; preds = %._crit_edge.i, %.preheader487.i, %.preheader485.lr.ph.i, %.preheader486.lr.ph.i
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 4 ; 3 uses
  %i.nw = or disjoint i64 %indvars.iv.next734.i, 3
  %i.nx = icmp samesign ult i64 %i.nw, %i.cq
  br i1 %i.nx, label %_ZN4ncnn3MatD2Ev.exit420.i, label %.preheader483.loopexit.i, !llvm.loop !99

.preheader477.loopexit.i:                         ; preds = %._crit_edge591.split.i
  %i.ny = trunc nuw nsw i64 %indvars.iv.next765.i to i32
  br label %.preheader477.i

.preheader477.i:                                  ; preds = %.preheader477.loopexit.i, %.preheader483.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader483.i ], [ %i.ny, %.preheader477.loopexit.i ] ; 7 uses
  %i.nz = icmp slt i32 %.1.lcssa.i, %i.m
  br i1 %i.nz, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader477.i
  %i.oa = load ptr, ptr %i.o, align 8, !tbaa !19  ; 15 uses
  %i.ob = mul i32 %i.n, %i.j                      ; 2 uses
  %i.oc = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !184 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !20, !noalias !184 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.og = load i64, ptr %i.of, align 8, !tbaa !44, !noalias !184 ; 2 uses
  %factor.op.mul637.i = mul i64 %i.og, %i.oe      ; 2 uses
  %i.oh = icmp sgt i32 %i.n, 3
  %i.oi = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.oj = sext i32 %i.j to i64                    ; 29 uses
  %i.ok = shl i32 %i.j, 2                         ; 2 uses
  %i.ol = sext i32 %i.ok to i64                   ; 4 uses
  %i.om = shl i32 %i.j, 1                         ; 2 uses
  %i.on = sext i32 %i.om to i64                   ; 3 uses
  %i.oo = icmp slt i32 %i.j, 1                    ; 2 uses
  %i.op = and i32 %i.n, -4                        ; 4 uses
  %i.oq = zext i32 %.1.lcssa.i to i64             ; 2 uses
  %wide.trip.count794.i = zext i32 %i.m to i64    ; 2 uses
  %wide.trip.count777.i = zext i32 %i.j to i64    ; 31 uses
  br i1 %i.oh, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us:           ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.or = or disjoint i32 %i.op, 1
  %i.os = icmp slt i32 %i.or, %i.n
  br i1 %i.oi, label %_ZN4ncnn3MatD2Ev.exit.i.us.preheader, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.i.us.preheader:             ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us
  %i.ot = shl nuw nsw i64 %wide.trip.count777.i, 3
  %i.ou = shl nuw nsw i64 %i.oj, 2                ; 2 uses
  %i.ov = shl nsw i64 %i.ol, 2                    ; 3 uses
  %i.ow = mul i32 %.1.lcssa.i, %i.j
  %i.ox = mul i32 %i.ow, %i.n
  %i.oy = mul i32 %i.j, %i.n
  %i.oz = shl nsw i64 %i.ol, 2
  %i.pa = add nsw i32 %i.n, -2
  %i.pb = sub i32 %i.pa, %i.op
  %i.pc = lshr i32 %i.pb, 1
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = mul nsw i64 %i.pd, %i.on
  %i.pf = shl i64 %i.pe, 2                        ; 2 uses
  %i.pg = shl nuw nsw i64 %wide.trip.count777.i, 2 ; 2 uses
  %i.ph = shl nuw nsw i64 %wide.trip.count777.i, 4
  %i.pi = mul nuw nsw i64 %i.oj, 12               ; 2 uses
  %scevgep508.a = getelementptr i8, ptr %i.oa, i64 %i.pi
  %i.pj = mul i32 %.1.lcssa.i, %i.j
  %i.pk = mul i32 %i.pj, %i.n
  %i.pl = mul i32 %i.j, %i.n
  %i.pm = add nsw i32 %i.n, -4
  %i.pn = lshr i32 %i.pm, 2
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = mul nsw i64 %i.po, %i.ol
  %i.pq = shl i64 %i.pp, 2                        ; 4 uses
  %i.pr = shl nuw nsw i64 %wide.trip.count777.i, 2 ; 4 uses
  %i.ps = getelementptr i8, ptr %i.oa, i64 %i.pq
  %i.pt = getelementptr i8, ptr %i.ps, i64 %i.pi
  %scevgep510.a = getelementptr i8, ptr %i.pt, i64 %i.pr
  %i.pu = shl nuw nsw i64 %i.oj, 3                ; 2 uses
  %scevgep512.a = getelementptr i8, ptr %i.oa, i64 %i.pu
  %i.pv = getelementptr i8, ptr %i.oa, i64 %i.pq
  %i.pw = getelementptr i8, ptr %i.pv, i64 %i.pu
  %scevgep514.a = getelementptr i8, ptr %i.pw, i64 %i.pr
  %i.px = shl nuw nsw i64 %i.oj, 2                ; 2 uses
  %scevgep516.a = getelementptr i8, ptr %i.oa, i64 %i.px
  %i.py = getelementptr i8, ptr %i.oa, i64 %i.pq
  %i.pz = getelementptr i8, ptr %i.py, i64 %i.px
  %scevgep518.a = getelementptr i8, ptr %i.pz, i64 %i.pr
  %i.qa = getelementptr i8, ptr %i.oa, i64 %i.pq
  %scevgep520.a = getelementptr i8, ptr %i.qa, i64 %i.pr
  %min.iters.check542 = icmp ult i32 %i.j, 12
  %stride.check529 = icmp slt i32 %i.ok, 0
  %n.vec544 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.qb = shl nuw nsw i64 %n.vec544, 4
  %cmp.n555 = icmp eq i64 %n.vec544, %wide.trip.count777.i
  %xtraiter604 = and i64 %wide.trip.count777.i, 1
  %lcmp.mod605.not = icmp eq i64 %xtraiter604, 0
  %i.qc = add nsw i64 %wide.trip.count777.i, -1
  %invariant.gep = getelementptr i8, ptr %i.oa, i64 %i.ou
  %invariant.gep646 = getelementptr i8, ptr %invariant.gep, i64 %i.ov
  %invariant.gep648.a = getelementptr i8, ptr %i.oa, i64 %i.pf
  %invariant.gep649 = getelementptr i8, ptr %invariant.gep648.a, i64 %i.ou
  %invariant.gep651.a = getelementptr i8, ptr %invariant.gep649, i64 %i.ov
  %invariant.gep652 = getelementptr i8, ptr %invariant.gep651.a, i64 %i.pg
  %invariant.gep654.a = getelementptr i8, ptr %i.oa, i64 %i.pf
  %invariant.gep655 = getelementptr i8, ptr %invariant.gep654.a, i64 %i.ov
  %invariant.gep657 = getelementptr i8, ptr %invariant.gep655, i64 %i.pg
  %min.iters.check488 = icmp ult i32 %i.j, 10
  %stride.check485 = icmp slt i32 %i.om, 0
  %n.vec490 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.qd = shl nuw nsw i64 %n.vec490, 3
  %cmp.n503 = icmp eq i64 %n.vec490, %wide.trip.count777.i
  %xtraiter607 = and i64 %wide.trip.count777.i, 3 ; 2 uses
  %lcmp.mod608.not = icmp eq i64 %xtraiter607, 0
  %min.iters.check456 = icmp ult i32 %i.j, 8
  %n.vec458 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.qe = shl nuw nsw i64 %n.vec458, 2
  %cmp.n466 = icmp eq i64 %n.vec458, %wide.trip.count777.i
  %xtraiter610 = and i64 %wide.trip.count777.i, 7 ; 2 uses
  %lcmp.mod611.not = icmp eq i64 %xtraiter610, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i.us

_ZN4ncnn3MatD2Ev.exit.i.us:                       ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.preheader, %._crit_edge634.split.i.us
  %indvar471 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us.preheader ], [ %indvar.next472, %._crit_edge634.split.i.us ] ; 3 uses
  %indvars.iv791.i.us = phi i64 [ %i.oq, %_ZN4ncnn3MatD2Ev.exit.i.us.preheader ], [ %indvars.iv.next792.i.us, %._crit_edge634.split.i.us ] ; 2 uses
  %i.qf = mul i32 %i.pl, %indvar471
  %i.qg = add i32 %i.pk, %i.qf
  %i.qh = sext i32 %i.qg to i64
  %i.qi = shl nsw i64 %i.qh, 2                    ; 7 uses
  %scevgep509 = getelementptr i8, ptr %scevgep508.a, i64 %i.qi
  %scevgep511 = getelementptr i8, ptr %scevgep510.a, i64 %i.qi
  %scevgep513 = getelementptr i8, ptr %scevgep512.a, i64 %i.qi
  %scevgep515 = getelementptr i8, ptr %scevgep514.a, i64 %i.qi
  %scevgep517 = getelementptr i8, ptr %scevgep516.a, i64 %i.qi
  %scevgep519 = getelementptr i8, ptr %scevgep518.a, i64 %i.qi
  %scevgep521 = getelementptr i8, ptr %scevgep520.a, i64 %i.qi
  %i.qj = mul i32 %i.oy, %indvar471
  %i.qk = add i32 %i.ox, %i.qj
  %i.ql = sext i32 %i.qk to i64
  %i.qm = shl nsw i64 %i.ql, 2                    ; 3 uses
  %i.qn = trunc i64 %indvars.iv791.i.us to i32    ; 4 uses
  %i.qo = mul i32 %i.ob, %i.qn
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr [4 x i8], ptr %i.oa, i64 %i.qp ; 2 uses
  %i.qr = lshr i32 %i.qn, 2
  %i.qs = lshr i32 %i.qn, 1
  %i.qt = and i32 %i.qs, 1
  %i.qu = and i32 %i.qn, 1
  %i.qv = add nuw nsw i32 %i.qu, %i.qr
  %i.qw = add nuw nsw i32 %i.qv, %i.qt
  %i.qx = zext nneg i32 %i.qw to i64
  %.reass638.i.us = mul i64 %factor.op.mul637.i, %i.qx
  %i.qy = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.reass638.i.us
  %i.qz = insertelement <4 x ptr> poison, ptr %scevgep515, i64 0
  %i.ra = insertelement <4 x ptr> %i.qz, ptr %scevgep511, i64 1
  %i.rb = insertelement <4 x ptr> %i.ra, ptr %scevgep519, i64 2
  %i.rc = insertelement <4 x ptr> %i.rb, ptr %scevgep521, i64 3
  %i.rd = insertelement <4 x ptr> poison, ptr %scevgep513, i64 0
  %i.re = insertelement <4 x ptr> %i.rd, ptr %scevgep509, i64 1
  %i.rf = insertelement <4 x ptr> %i.re, ptr %scevgep517, i64 2
  %i.rg = insertelement <4 x ptr> %i.rf, ptr %i.qq, i64 3
  br label %.preheader474.us.i.us

.preheader474.us.i.us:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us, %._crit_edge601.us.i.us
  %indvar473 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %indvar.next474, %._crit_edge601.us.i.us ] ; 2 uses
  %.0341605.us.i.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %i.tm, %._crit_edge601.us.i.us ]
  %.0344604.us.i.us = phi ptr [ %i.qy, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %.lcssa, %._crit_edge601.us.i.us ] ; 6 uses
  %.0347603.us.i.us = phi ptr [ %i.qq, %_ZN4ncnn3MatD2Ev.exit.i.us ], [ %i.tl, %._crit_edge601.us.i.us ] ; 5 uses
  br i1 %min.iters.check542, label %scalar.ph541.preheader, label %vector.memcheck506

vector.memcheck506:                               ; preds = %.preheader474.us.i.us
  %scevgep507 = getelementptr i8, ptr %.0344604.us.i.us, i64 %i.ph
  %i.rh = insertelement <4 x ptr> poison, ptr %.0344604.us.i.us, i64 0
  %i.ri = shufflevector <4 x ptr> %i.rh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.rj = icmp ult <4 x ptr> %i.ri, %i.rc
  %i.rk = insertelement <4 x ptr> poison, ptr %scevgep507, i64 0
  %i.rl = shufflevector <4 x ptr> %i.rk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.rm = icmp ult <4 x ptr> %i.rg, %i.rl
  %i.rn = and <4 x i1> %i.rj, %i.rm
  %i.ro = bitcast <4 x i1> %i.rn to i4
  %i.rp = icmp ne i4 %i.ro, 0
  %op.rdx = or i1 %i.rp, %stride.check529
  br i1 %op.rdx, label %scalar.ph541.preheader, label %vector.ph543

vector.ph543:                                     ; preds = %vector.memcheck506
  %i.rq = getelementptr i8, ptr %.0344604.us.i.us, i64 %i.qb ; 2 uses
  br label %vector.body545

vector.body545:                                   ; preds = %vector.body545, %vector.ph543
  %index546 = phi i64 [ 0, %vector.ph543 ], [ %index.next553, %vector.body545 ] ; 3 uses
  %i.rr = shl i64 %index546, 4
  %next.gep547 = getelementptr i8, ptr %.0344604.us.i.us, i64 %i.rr
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %index546 ; 2 uses
  %wide.load548.a = load <4 x float>, ptr %i.rs, align 4, !tbaa !45, !alias.scope !185
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %i.oj ; 2 uses
  %wide.load549.a = load <4 x float>, ptr %i.rt, align 4, !tbaa !45, !alias.scope !186
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.oj ; 2 uses
  %wide.load550.a = load <4 x float>, ptr %i.ru, align 4, !tbaa !45, !alias.scope !187
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %i.oj
  %wide.load551 = load <4 x float>, ptr %i.rv, align 4, !tbaa !45, !alias.scope !188
  %i.rw = shufflevector <4 x float> %wide.load548.a, <4 x float> %wide.load549.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.rx = shufflevector <4 x float> %wide.load550.a, <4 x float> %wide.load551, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec552 = shufflevector <8 x float> %i.rw, <8 x float> %i.rx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec552, ptr %next.gep547, align 4, !tbaa !45, !alias.scope !189, !noalias !190
  %index.next553 = add nuw i64 %index546, 4       ; 2 uses
  %i.ry = icmp eq i64 %index.next553, %n.vec544
  br i1 %i.ry, label %middle.block554, label %vector.body545, !llvm.loop !108

middle.block554:                                  ; preds = %vector.body545
  br i1 %cmp.n555, label %._crit_edge601.us.i.us, label %scalar.ph541.preheader

scalar.ph541.preheader:                           ; preds = %vector.memcheck506, %.preheader474.us.i.us, %middle.block554
  %indvars.iv774.i.us.ph = phi i64 [ 0, %vector.memcheck506 ], [ 0, %.preheader474.us.i.us ], [ %n.vec544, %middle.block554 ] ; 4 uses
  %.1345599.us.i.us.ph = phi ptr [ %.0344604.us.i.us, %vector.memcheck506 ], [ %.0344604.us.i.us, %.preheader474.us.i.us ], [ %i.rq, %middle.block554 ] ; 6 uses
  br i1 %lcmp.mod605.not, label %scalar.ph541.prol.loopexit, label %scalar.ph541.prol

scalar.ph541.prol:                                ; preds = %scalar.ph541.preheader
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %indvars.iv774.i.us.ph ; 2 uses
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !45
  store float %i.sa, ptr %.1345599.us.i.us.ph, align 4, !tbaa !45
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.oj ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.ph, i64 4
  %i.sd = load float, ptr %i.sb, align 4, !tbaa !45
  store float %i.sd, ptr %i.sc, align 4, !tbaa !45
end_hunk_0
begin_hunk_1_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  %.lcssa565.unr = phi ptr [ poison, %scalar.ph487.preheader ], [ %i.ud, %scalar.ph487.prol ]
  %indvars.iv780.i.us.unr = phi i64 [ %indvars.iv780.i.us.ph, %scalar.ph487.preheader ], [ %indvars.iv.next781.i.us.prol, %scalar.ph487.prol ]
  %.4615.us.i.us.unr = phi ptr [ %.4615.us.i.us.ph, %scalar.ph487.preheader ], [ %i.ud, %scalar.ph487.prol ]
  %i.ue = sub nsw i64 %indvars.iv780.i.us.ph, %wide.trip.count777.i
  %i.uf = icmp ugt i64 %i.ue, -4
  br i1 %i.uf, label %._crit_edge617.us.i.us, label %scalar.ph487

scalar.ph487:                                     ; preds = %scalar.ph487.prol.loopexit, %scalar.ph487
  %indvars.iv780.i.us = phi i64 [ %indvars.iv.next781.i.us.3, %scalar.ph487 ], [ %indvars.iv780.i.us.unr, %scalar.ph487.prol.loopexit ] ; 5 uses
  %.4615.us.i.us = phi ptr [ %i.vg, %scalar.ph487 ], [ %.4615.us.i.us.unr, %scalar.ph487.prol.loopexit ] ; 9 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us ; 2 uses
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !45
  store float %i.uh, ptr %.4615.us.i.us, align 4, !tbaa !45
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.oj
  %i.uj = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 4
  %i.uk = load float, ptr %i.ui, align 4, !tbaa !45
  store float %i.uk, ptr %i.uj, align 4, !tbaa !45
  %i.ul = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 8
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 4 ; 2 uses
  %i.uo = load float, ptr %i.un, align 4, !tbaa !45
  store float %i.uo, ptr %i.ul, align 4, !tbaa !45
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.oj
  %i.uq = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 12
  %i.ur = load float, ptr %i.up, align 4, !tbaa !45
  store float %i.ur, ptr %i.uq, align 4, !tbaa !45
  %i.us = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 16
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8 ; 2 uses
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !45
  store float %i.uv, ptr %i.us, align 4, !tbaa !45
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.oj
  %i.ux = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 20
  %i.uy = load float, ptr %i.uw, align 4, !tbaa !45
  store float %i.uy, ptr %i.ux, align 4, !tbaa !45
  %i.uz = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 24
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 12 ; 2 uses
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !45
  store float %i.vc, ptr %i.uz, align 4, !tbaa !45
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.oj
  %i.ve = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 28
  %i.vf = load float, ptr %i.vd, align 4, !tbaa !45
  store float %i.vf, ptr %i.ve, align 4, !tbaa !45
  %i.vg = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 32 ; 2 uses
  %indvars.iv.next781.i.us.3 = add nuw nsw i64 %indvars.iv780.i.us, 4 ; 2 uses
  %exitcond784.not.i.us.3 = icmp eq i64 %indvars.iv.next781.i.us.3, %wide.trip.count777.i
  br i1 %exitcond784.not.i.us.3, label %._crit_edge617.us.i.us, label %scalar.ph487, !llvm.loop !117

._crit_edge617.us.i.us:                           ; preds = %scalar.ph487.prol.loopexit, %scalar.ph487, %middle.block502
  %.lcssa102 = phi ptr [ %i.tq, %middle.block502 ], [ %.lcssa565.unr, %scalar.ph487.prol.loopexit ], [ %i.vg, %scalar.ph487 ] ; 2 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %i.on ; 2 uses
  %i.vi = add nuw nsw i32 %.1342621.us.i.us, 2    ; 3 uses
  %i.vj = or disjoint i32 %i.vi, 1
  %i.vk = icmp slt i32 %i.vj, %i.n
  br i1 %i.vk, label %.preheader473.us.i.us, label %.preheader475.i.us, !llvm.loop !118

.preheader475.i.us:                               ; preds = %._crit_edge617.us.i.us, %.preheader476.i.loopexit.us
  %.1348.lcssa.i.us = phi ptr [ %i.tl, %.preheader476.i.loopexit.us ], [ %i.vh, %._crit_edge617.us.i.us ] ; 11 uses
  %.3.lcssa.i.us = phi ptr [ %.lcssa, %.preheader476.i.loopexit.us ], [ %.lcssa102, %._crit_edge617.us.i.us ]
  %.1342.lcssa.i.us = phi i32 [ %i.op, %.preheader476.i.loopexit.us ], [ %i.vi, %._crit_edge617.us.i.us ] ; 2 uses
  %i.vl = icmp sge i32 %.1342.lcssa.i.us, %i.n
  %brmerge645.i.us = or i1 %i.oo, %i.vl
  br i1 %brmerge645.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us.preheader

.preheader.i.us.preheader:                        ; preds = %.preheader475.i.us
  %.1348.lcssa.i.us452 = ptrtoaddr ptr %.1348.lcssa.i.us to i64
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %._crit_edge630.i.us
  %.2343633.i.us = phi i32 [ %i.xd, %._crit_edge630.i.us ], [ %.1342.lcssa.i.us, %.preheader.i.us.preheader ]
  %.6632.i.us = phi ptr [ %.lcssa105, %._crit_edge630.i.us ], [ %.3.lcssa.i.us, %.preheader.i.us.preheader ] ; 4 uses
  %.6632.i.us453 = ptrtoaddr ptr %.6632.i.us to i64
  %i.vm = sub i64 %.1348.lcssa.i.us452, %.6632.i.us453
  %diff.check454 = icmp ugt i64 %i.vm, -32
  %or.cond = select i1 %min.iters.check456, i1 true, i1 %diff.check454
  br i1 %or.cond, label %scalar.ph455.preheader, label %vector.ph457

vector.ph457:                                     ; preds = %.preheader.i.us
  %i.vn = getelementptr i8, ptr %.6632.i.us, i64 %i.qe ; 2 uses
  br label %vector.body459

vector.body459:                                   ; preds = %vector.body459, %vector.ph457
  %index460 = phi i64 [ 0, %vector.ph457 ], [ %index.next464, %vector.body459 ] ; 3 uses
  %i.vo = shl i64 %index460, 2
  %next.gep461 = getelementptr i8, ptr %.6632.i.us, i64 %i.vo ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %index460 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %wide.load462.a = load <4 x float>, ptr %i.vp, align 4, !tbaa !45
  %wide.load463 = load <4 x float>, ptr %i.vq, align 4, !tbaa !45
  %i.vr = getelementptr i8, ptr %next.gep461, i64 16
  store <4 x float> %wide.load462.a, ptr %next.gep461, align 4, !tbaa !45
  store <4 x float> %wide.load463, ptr %i.vr, align 4, !tbaa !45
  %index.next464 = add nuw i64 %index460, 8       ; 2 uses
  %i.vs = icmp eq i64 %index.next464, %n.vec458
  br i1 %i.vs, label %middle.block465, label %vector.body459, !llvm.loop !119

middle.block465:                                  ; preds = %vector.body459
  br i1 %cmp.n466, label %._crit_edge630.i.us, label %scalar.ph455.preheader

scalar.ph455.preheader:                           ; preds = %.preheader.i.us, %middle.block465
  %indvars.iv785.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec458, %middle.block465 ] ; 3 uses
  %.7628.i.us.ph = phi ptr [ %.6632.i.us, %.preheader.i.us ], [ %i.vn, %middle.block465 ] ; 2 uses
  br i1 %lcmp.mod611.not, label %scalar.ph455.prol.loopexit, label %scalar.ph455.prol

scalar.ph455.prol:                                ; preds = %scalar.ph455.preheader, %scalar.ph455.prol
  %indvars.iv785.i.us.prol = phi i64 [ %indvars.iv.next786.i.us.prol, %scalar.ph455.prol ], [ %indvars.iv785.i.us.ph, %scalar.ph455.preheader ] ; 2 uses
  %.7628.i.us.prol = phi ptr [ %i.vv, %scalar.ph455.prol ], [ %.7628.i.us.ph, %scalar.ph455.preheader ] ; 2 uses
  %prol.iter612 = phi i64 [ %prol.iter612.next, %scalar.ph455.prol ], [ 0, %scalar.ph455.preheader ]
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us.prol
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !45
  store float %i.vu, ptr %.7628.i.us.prol, align 4, !tbaa !45
  %i.vv = getelementptr inbounds nuw i8, ptr %.7628.i.us.prol, i64 4 ; 3 uses
  %indvars.iv.next786.i.us.prol = add nuw nsw i64 %indvars.iv785.i.us.prol, 1 ; 2 uses
  %prol.iter612.next = add i64 %prol.iter612, 1   ; 2 uses
  %prol.iter612.cmp.not = icmp eq i64 %prol.iter612.next, %xtraiter610
  br i1 %prol.iter612.cmp.not, label %scalar.ph455.prol.loopexit, label %scalar.ph455.prol, !llvm.loop !120

scalar.ph455.prol.loopexit:                       ; preds = %scalar.ph455.prol, %scalar.ph455.preheader
  %.lcssa568.unr = phi ptr [ poison, %scalar.ph455.preheader ], [ %i.vv, %scalar.ph455.prol ]
  %indvars.iv785.i.us.unr = phi i64 [ %indvars.iv785.i.us.ph, %scalar.ph455.preheader ], [ %indvars.iv.next786.i.us.prol, %scalar.ph455.prol ]
  %.7628.i.us.unr = phi ptr [ %.7628.i.us.ph, %scalar.ph455.preheader ], [ %i.vv, %scalar.ph455.prol ]
  %i.vw = sub nsw i64 %indvars.iv785.i.us.ph, %wide.trip.count777.i
  %i.vx = icmp ugt i64 %i.vw, -8
  br i1 %i.vx, label %._crit_edge630.i.us, label %scalar.ph455

scalar.ph455:                                     ; preds = %scalar.ph455.prol.loopexit, %scalar.ph455
  %indvars.iv785.i.us = phi i64 [ %indvars.iv.next786.i.us.7, %scalar.ph455 ], [ %indvars.iv785.i.us.unr, %scalar.ph455.prol.loopexit ] ; 9 uses
  %.7628.i.us = phi ptr [ %i.xc, %scalar.ph455 ], [ %.7628.i.us.unr, %scalar.ph455.prol.loopexit ] ; 9 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !45
  store float %i.vz, ptr %.7628.i.us, align 4, !tbaa !45
  %i.wa = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 4
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !45
  store float %i.wd, ptr %i.wa, align 4, !tbaa !45
  %i.we = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 8
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !45
  store float %i.wh, ptr %i.we, align 4, !tbaa !45
  %i.wi = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 12
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 12
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !45
  store float %i.wl, ptr %i.wi, align 4, !tbaa !45
  %i.wm = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 16
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !45
  store float %i.wp, ptr %i.wm, align 4, !tbaa !45
  %i.wq = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 20
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 20
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !45
  store float %i.wt, ptr %i.wq, align 4, !tbaa !45
  %i.wu = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 24
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !45
  store float %i.wx, ptr %i.wu, align 4, !tbaa !45
  %i.wy = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 28
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 28
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !45
  store float %i.xb, ptr %i.wy, align 4, !tbaa !45
  %i.xc = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 32 ; 2 uses
  %indvars.iv.next786.i.us.7 = add nuw nsw i64 %indvars.iv785.i.us, 8 ; 2 uses
  %exitcond789.not.i.us.7 = icmp eq i64 %indvars.iv.next786.i.us.7, %wide.trip.count777.i
  br i1 %exitcond789.not.i.us.7, label %._crit_edge630.i.us, label %scalar.ph455, !llvm.loop !121

._crit_edge630.i.us:                              ; preds = %scalar.ph455.prol.loopexit, %scalar.ph455, %middle.block465
  %.lcssa105 = phi ptr [ %i.vn, %middle.block465 ], [ %.lcssa568.unr, %scalar.ph455.prol.loopexit ], [ %i.xc, %scalar.ph455 ]
  %i.xd = add nuw nsw i32 %.2343633.i.us, 1       ; 2 uses
  %exitcond790.not.i.us = icmp eq i32 %i.xd, %i.n
  br i1 %exitcond790.not.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us, !llvm.loop !122

._crit_edge634.split.i.us:                        ; preds = %._crit_edge630.i.us, %.preheader475.i.us
  %indvars.iv.next792.i.us = add nuw nsw i64 %indvars.iv791.i.us, 1 ; 2 uses
  %exitcond795.not.i.us = icmp eq i64 %indvars.iv.next792.i.us, %wide.trip.count794.i
  %indvar.next472 = add i32 %indvar471, 1
  br i1 %exitcond795.not.i.us, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.us, !llvm.loop !123

.preheader476.i.loopexit.us:                      ; preds = %._crit_edge601.us.i.us
  br i1 %i.os, label %.preheader473.us.i.us.preheader, label %.preheader475.i.us

.preheader473.us.i.us.preheader:                  ; preds = %.preheader476.i.loopexit.us
  %i.xe = mul i64 %i.oz, %indvar473               ; 3 uses
  %gep647 = getelementptr i8, ptr %invariant.gep646, i64 %i.xe
  %scevgep475.a = getelementptr i8, ptr %gep647, i64 %i.qm
  %gep653 = getelementptr i8, ptr %invariant.gep652, i64 %i.xe
  %scevgep476.a = getelementptr i8, ptr %gep653, i64 %i.qm
  %gep = getelementptr i8, ptr %invariant.gep657, i64 %i.xe
  %scevgep477 = getelementptr i8, ptr %gep, i64 %i.qm
  br label %.preheader473.us.i.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.xf = icmp sgt i32 %i.n, 1
  %i.xg = and i32 %i.n, -2
  %i.xh = shl nuw nsw i64 %wide.trip.count777.i, 3
  %scevgep417.a = getelementptr i8, ptr %i.oc, i64 %i.xh
  %2 = mul i64 %i.og, %i.oe
  %i.xi = shl nuw nsw i64 %i.oj, 2                ; 2 uses
  %scevgep419.a = getelementptr i8, ptr %i.oa, i64 %i.xi
  %i.xj = mul i32 %.1.lcssa.i, %i.j
  %i.xk = mul i32 %i.xj, %i.n
  %i.xl = mul i32 %i.j, %i.n
  %i.xm = shl nuw nsw i64 %wide.trip.count777.i, 2 ; 2 uses
  %i.xn = getelementptr i8, ptr %i.oa, i64 %i.xi
  %scevgep421.a = getelementptr i8, ptr %i.xn, i64 %i.xm
  %scevgep423.a = getelementptr i8, ptr %i.oa, i64 %i.xm
  %min.iters.check433 = icmp ult i32 %i.j, 6
  %n.vec435 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.xo = shl nuw nsw i64 %n.vec435, 3
  %cmp.n448 = icmp eq i64 %n.vec435, %wide.trip.count777.i
  %xtraiter598 = and i64 %wide.trip.count777.i, 3 ; 2 uses
  %lcmp.mod599.not = icmp eq i64 %xtraiter598, 0
  %min.iters.check400 = icmp ult i32 %i.j, 8
  %n.vec402 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.xp = shl nuw nsw i64 %n.vec402, 2
  %cmp.n410 = icmp eq i64 %n.vec402, %wide.trip.count777.i
  %xtraiter601 = and i64 %wide.trip.count777.i, 7 ; 2 uses
  %lcmp.mod602.not = icmp eq i64 %xtraiter601, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit419.i:                       ; preds = %._crit_edge591.split.i, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge591.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv764.i = phi i64 [ %indvars.iv.next765.i, %._crit_edge591.split.i ], [ %i.dx, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv762.i = phi i32 [ %indvars.iv.next763.i, %._crit_edge591.split.i ], [ %i.dy, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %i.xq = mul i32 %i.em, %indvar                  ; 2 uses
  %i.xr = add i32 %i.ek, %i.xq
  %i.xs = sext i32 %i.xr to i64
  %i.xt = shl nsw i64 %i.xs, 2                    ; 7 uses
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.xt
  %scevgep311 = getelementptr i8, ptr %scevgep310, i64 %i.xt
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.xt
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.xt
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.xt
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.xt
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.xt
  %i.xu = add i32 %i.fc, %i.xq
  %i.xv = sext i32 %i.xu to i64
  %i.xw = shl nsw i64 %i.xv, 2                    ; 7 uses
  %scevgep323 = getelementptr i8, ptr %scevgep322, i64 %i.xw
  %scevgep325 = getelementptr i8, ptr %scevgep324, i64 %i.xw
  %scevgep327 = getelementptr i8, ptr %scevgep326, i64 %i.xw
  %scevgep329 = getelementptr i8, ptr %scevgep328, i64 %i.xw
  %scevgep331 = getelementptr i8, ptr %scevgep330, i64 %i.xw
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.xw
  %scevgep335 = getelementptr i8, ptr %scevgep334, i64 %i.xw
  %i.xx = trunc i64 %indvars.iv764.i to i32       ; 3 uses
  %i.xy = mul i32 %i.df, %i.xx
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr [4 x i8], ptr %i.de, i64 %i.xz ; 3 uses
  %i.yb = mul i32 %indvars.iv762.i, %i.df
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr [4 x i8], ptr %i.de, i64 %i.yc ; 3 uses
  %i.ye = lshr i32 %i.xx, 2
  %i.yf = lshr i32 %i.xx, 1
  %i.yg = and i32 %i.yf, 1
  %i.yh = add nuw nsw i32 %i.yg, %i.ye
  %i.yi = zext nneg i32 %i.yh to i64
  %.reass595.i = mul i64 %factor.op.mul594.i, %i.yi
  %i.yj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.reass595.i ; 2 uses
  br i1 %i.dl, label %.preheader480.lr.ph.i, label %.preheader482.i

.preheader480.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit419.i
  br i1 %i.dm, label %.preheader480.us.i.preheader, label %._crit_edge591.split.i

.preheader480.us.i.preheader:                     ; preds = %.preheader480.lr.ph.i
  %i.yk = insertelement <8 x ptr> poison, ptr %scevgep315, i64 0
  %i.yl = insertelement <8 x ptr> %i.yk, ptr %scevgep311, i64 1
  %i.ym = insertelement <8 x ptr> %i.yl, ptr %scevgep319, i64 2
  %i.yn = insertelement <8 x ptr> %i.ym, ptr %scevgep321, i64 3
  %i.yo = insertelement <8 x ptr> %i.yn, ptr %scevgep325, i64 4
  %i.yp = insertelement <8 x ptr> %i.yo, ptr %scevgep329, i64 5
  %i.yq = insertelement <8 x ptr> %i.yp, ptr %scevgep333, i64 6
  %i.yr = insertelement <8 x ptr> %i.yq, ptr %scevgep335, i64 7
  %i.ys = insertelement <8 x ptr> poison, ptr %scevgep313, i64 0
  %i.yt = insertelement <8 x ptr> %i.ys, ptr %scevgep309, i64 1
  %i.yu = insertelement <8 x ptr> %i.yt, ptr %scevgep317, i64 2
  %i.yv = insertelement <8 x ptr> %i.yu, ptr %i.yd, i64 3
  %i.yw = insertelement <8 x ptr> %i.yv, ptr %scevgep323, i64 4
  %i.yx = insertelement <8 x ptr> %i.yw, ptr %scevgep327, i64 5
  %i.yy = insertelement <8 x ptr> %i.yx, ptr %scevgep331, i64 6
  %i.yz = insertelement <8 x ptr> %i.yy, ptr %i.ya, i64 7
  br label %.preheader480.us.i

.preheader480.us.i:                               ; preds = %.preheader480.us.i.preheader, %._crit_edge551.us.i
  %.0363556.us.i = phi i32 [ %i.aba, %._crit_edge551.us.i ], [ 0, %.preheader480.us.i.preheader ]
  %.0366555.us.i = phi ptr [ %.lcssa108, %._crit_edge551.us.i ], [ %i.yj, %.preheader480.us.i.preheader ] ; 6 uses
  %.0373554.us.i = phi ptr [ %i.aaz, %._crit_edge551.us.i ], [ %i.yd, %.preheader480.us.i.preheader ] ; 3 uses
  %.0375553.us.i = phi ptr [ %i.aay, %._crit_edge551.us.i ], [ %i.ya, %.preheader480.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check376, label %scalar.ph375.preheader, label %vector.memcheck306

vector.memcheck306:                               ; preds = %.preheader480.us.i
  %scevgep307 = getelementptr i8, ptr %.0366555.us.i, i64 %i.eh
  %i.za = insertelement <8 x ptr> poison, ptr %.0366555.us.i, i64 0
  %i.zb = shufflevector <8 x ptr> %i.za, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.zc = icmp ult <8 x ptr> %i.zb, %i.yr
  %i.zd = insertelement <8 x ptr> poison, ptr %scevgep307, i64 0
  %i.ze = shufflevector <8 x ptr> %i.zd, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.zf = icmp ult <8 x ptr> %i.yz, %i.ze
  %i.zg = and <8 x i1> %i.zc, %i.zf
  %i.zh = bitcast <8 x i1> %i.zg to i8
  %i.zi = icmp ne i8 %i.zh, 0
  %op.rdx560 = or i1 %i.zi, %stride.check343
  br i1 %op.rdx560, label %scalar.ph375.preheader, label %vector.ph377

vector.ph377:                                     ; preds = %vector.memcheck306
  %i.zj = getelementptr i8, ptr %.0366555.us.i, i64 %i.fd ; 2 uses
  br label %vector.body379

vector.body379:                                   ; preds = %vector.body379, %vector.ph377
  %index380 = phi i64 [ 0, %vector.ph377 ], [ %index.next391, %vector.body379 ] ; 4 uses
  %i.zk = shl i64 %index380, 5
  %next.gep381 = getelementptr i8, ptr %.0366555.us.i, i64 %i.zk
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %index380 ; 4 uses
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %index380 ; 4 uses
  %wide.load382 = load <4 x float>, ptr %i.zl, align 4, !tbaa !45, !alias.scope !195
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dn
  %wide.load383 = load <4 x float>, ptr %i.zn, align 4, !tbaa !45, !alias.scope !196
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dp
  %wide.load384 = load <4 x float>, ptr %i.zo, align 4, !tbaa !45, !alias.scope !197
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.dr
  %wide.load385 = load <4 x float>, ptr %i.zp, align 4, !tbaa !45, !alias.scope !198
  %wide.load386 = load <4 x float>, ptr %i.zm, align 4, !tbaa !45, !alias.scope !199
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dn
  %wide.load387 = load <4 x float>, ptr %i.zq, align 4, !tbaa !45, !alias.scope !200
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dp
  %wide.load388 = load <4 x float>, ptr %i.zr, align 4, !tbaa !45, !alias.scope !201
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dr
  %wide.load389 = load <4 x float>, ptr %i.zs, align 4, !tbaa !45, !alias.scope !202
  %i.zt = shufflevector <4 x float> %wide.load382, <4 x float> %wide.load383, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zu = shufflevector <4 x float> %wide.load384, <4 x float> %wide.load385, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zv = shufflevector <4 x float> %wide.load386, <4 x float> %wide.load387, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zw = shufflevector <4 x float> %wide.load388, <4 x float> %wide.load389, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zx = shufflevector <8 x float> %i.zt, <8 x float> %i.zu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zy = shufflevector <8 x float> %i.zv, <8 x float> %i.zw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec390 = shufflevector <16 x float> %i.zx, <16 x float> %i.zy, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec390, ptr %next.gep381, align 4, !tbaa !45, !alias.scope !203, !noalias !204
  %index.next391 = add nuw i64 %index380, 4       ; 2 uses
  %i.zz = icmp eq i64 %index.next391, %n.vec378
  br i1 %i.zz, label %middle.block392, label %vector.body379, !llvm.loop !134

middle.block392:                                  ; preds = %vector.body379
  br i1 %cmp.n393, label %._crit_edge551.us.i, label %scalar.ph375.preheader

scalar.ph375.preheader:                           ; preds = %vector.memcheck306, %.preheader480.us.i, %middle.block392
  %indvars.iv744.i.ph = phi i64 [ 0, %vector.memcheck306 ], [ 0, %.preheader480.us.i ], [ %n.vec378, %middle.block392 ]
  %.1367549.us.i.ph = phi ptr [ %.0366555.us.i, %vector.memcheck306 ], [ %.0366555.us.i, %.preheader480.us.i ], [ %i.zj, %middle.block392 ]
  br label %scalar.ph375

scalar.ph375:                                     ; preds = %scalar.ph375.preheader, %scalar.ph375
  %indvars.iv744.i = phi i64 [ %indvars.iv.next745.i, %scalar.ph375 ], [ %indvars.iv744.i.ph, %scalar.ph375.preheader ] ; 3 uses
  %.1367549.us.i = phi ptr [ %i.aax, %scalar.ph375 ], [ %.1367549.us.i.ph, %scalar.ph375.preheader ] ; 9 uses
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
  br i1 %exitcond748.not.i, label %._crit_edge551.us.i, label %scalar.ph375, !llvm.loop !135

._crit_edge551.us.i:                              ; preds = %scalar.ph375, %middle.block392
  %.lcssa108 = phi ptr [ %i.zj, %middle.block392 ], [ %i.aax, %scalar.ph375 ] ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %i.dt ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %i.dt ; 2 uses
  %i.aba = add nuw nsw i32 %.0363556.us.i, 4      ; 2 uses
  %i.abb = or disjoint i32 %i.aba, 3
  %i.abc = icmp slt i32 %i.abb, %i.n
  br i1 %i.abc, label %.preheader480.us.i, label %.preheader482.i, !llvm.loop !136

.preheader482.i:                                  ; preds = %._crit_edge551.us.i, %_ZN4ncnn3MatD2Ev.exit419.i
end_hunk_1
begin_hunk_2_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  %i.acy = load float, ptr %i.acw, align 4, !tbaa !45
  store float %i.acy, ptr %.3369569.us.i, align 4, !tbaa !45
  %i.acz = load float, ptr %i.acx, align 4, !tbaa !45
  %i.ada = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 4
  store float %i.acz, ptr %i.ada, align 4, !tbaa !45
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.acw, i64 %i.dn
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.acx, i64 %i.dn
  %i.add = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 8
  %i.ade = load float, ptr %i.adb, align 4, !tbaa !45
  store float %i.ade, ptr %i.add, align 4, !tbaa !45
  %i.adf = load float, ptr %i.adc, align 4, !tbaa !45
  %i.adg = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 12
  store float %i.adf, ptr %i.adg, align 4, !tbaa !45
  %i.adh = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 16
  %indvars.iv.next752.i = add nuw nsw i64 %indvars.iv751.i, 1 ; 2 uses
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %indvars.iv.next752.i ; 2 uses
  %i.adk = load float, ptr %i.adi, align 4, !tbaa !45
  store float %i.adk, ptr %i.adh, align 4, !tbaa !45
  %i.adl = load float, ptr %i.adj, align 4, !tbaa !45
  %i.adm = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 20
  store float %i.adl, ptr %i.adm, align 4, !tbaa !45
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %i.dn
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.adj, i64 %i.dn
  %i.adp = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 24
  %i.adq = load float, ptr %i.adn, align 4, !tbaa !45
  store float %i.adq, ptr %i.adp, align 4, !tbaa !45
  %i.adr = load float, ptr %i.ado, align 4, !tbaa !45
  %i.ads = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 28
  store float %i.adr, ptr %i.ads, align 4, !tbaa !45
  %i.adt = getelementptr inbounds nuw i8, ptr %.3369569.us.i, i64 32 ; 2 uses
  %indvars.iv.next752.i.1 = add nuw nsw i64 %indvars.iv751.i, 2 ; 2 uses
  %exitcond755.not.i.1 = icmp eq i64 %indvars.iv.next752.i.1, %wide.trip.count747.i
  br i1 %exitcond755.not.i.1, label %._crit_edge571.us.i, label %scalar.ph289, !llvm.loop !144

._crit_edge571.us.i:                              ; preds = %scalar.ph289.prol.loopexit, %scalar.ph289, %middle.block302
  %.lcssa111 = phi ptr [ %i.aca, %middle.block302 ], [ %.lcssa576.unr, %scalar.ph289.prol.loopexit ], [ %i.adt, %scalar.ph289 ] ; 2 uses
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %.1376573.us.i, i64 %i.du ; 2 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %.1374574.us.i, i64 %i.du ; 2 uses
  %i.adw = add nuw nsw i32 %.1364576.us.i, 2      ; 3 uses
  %i.adx = or disjoint i32 %i.adw, 1
  %i.ady = icmp slt i32 %i.adx, %i.n
  br i1 %i.ady, label %.preheader479.us.i, label %.preheader481.i, !llvm.loop !145

.preheader481.i:                                  ; preds = %._crit_edge571.us.i, %.preheader482.i
  %.1376.lcssa.i = phi ptr [ %.0375.lcssa.i, %.preheader482.i ], [ %i.adu, %._crit_edge571.us.i ] ; 8 uses
  %.1374.lcssa.i = phi ptr [ %.0373.lcssa.i, %.preheader482.i ], [ %i.adv, %._crit_edge571.us.i ] ; 8 uses
  %.2368.lcssa.i = phi ptr [ %.0366.lcssa.i, %.preheader482.i ], [ %.lcssa111, %._crit_edge571.us.i ]
  %.1364.lcssa.i = phi i32 [ %.0363.lcssa.i, %.preheader482.i ], [ %i.adw, %._crit_edge571.us.i ] ; 2 uses
  %i.adz = icmp sge i32 %.1364.lcssa.i, %i.n
  %brmerge642.i = or i1 %i.dv, %i.adz
  br i1 %brmerge642.i, label %._crit_edge591.split.i, label %.preheader478.i.preheader

.preheader478.i.preheader:                        ; preds = %.preheader481.i
  %scevgep230 = getelementptr i8, ptr %.1374.lcssa.i, i64 %i.eb
  %scevgep231 = getelementptr i8, ptr %.1376.lcssa.i, i64 %i.eb
  br label %.preheader478.i

.preheader478.i:                                  ; preds = %.preheader478.i.preheader, %._crit_edge587.i
  %.2365590.i = phi i32 [ %i.aeq, %._crit_edge587.i ], [ %.1364.lcssa.i, %.preheader478.i.preheader ]
  %.5371589.i = phi ptr [ %.lcssa115, %._crit_edge587.i ], [ %.2368.lcssa.i, %.preheader478.i.preheader ] ; 8 uses
  br i1 %min.iters.check240, label %scalar.ph239.preheader, label %vector.memcheck228

vector.memcheck228:                               ; preds = %.preheader478.i
  %scevgep229 = getelementptr i8, ptr %.5371589.i, i64 %i.ea ; 2 uses
  %bound0232 = icmp ult ptr %.5371589.i, %scevgep230
  %bound1233 = icmp ult ptr %.1374.lcssa.i, %scevgep229
  %found.conflict234 = and i1 %bound0232, %bound1233
  %bound0235 = icmp ult ptr %.5371589.i, %scevgep231
  %bound1236 = icmp ult ptr %.1376.lcssa.i, %scevgep229
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %found.conflict234, %found.conflict237
  br i1 %conflict.rdx238, label %scalar.ph239.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %vector.memcheck228
  %i.aea = getelementptr i8, ptr %.5371589.i, i64 %i.fg ; 2 uses
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next253, %vector.body243 ] ; 4 uses
  %i.aeb = shl i64 %index244, 3                   ; 2 uses
  %next.gep245 = getelementptr i8, ptr %.5371589.i, i64 %i.aeb
  %i.aec = getelementptr i8, ptr %.5371589.i, i64 %i.aeb
  %next.gep246 = getelementptr i8, ptr %i.aec, i64 16
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %index244 ; 2 uses
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %index244 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %wide.load247 = load <2 x float>, ptr %i.aed, align 4, !tbaa !45, !alias.scope !211
  %wide.load248 = load <2 x float>, ptr %i.aef, align 4, !tbaa !45, !alias.scope !211
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %wide.load249 = load <2 x float>, ptr %i.aee, align 4, !tbaa !45, !alias.scope !212
  %wide.load250 = load <2 x float>, ptr %i.aeg, align 4, !tbaa !45, !alias.scope !212
  %interleaved.vec251 = shufflevector <2 x float> %wide.load247, <2 x float> %wide.load249, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec251, ptr %next.gep245, align 4, !tbaa !45, !alias.scope !213, !noalias !214
  %interleaved.vec252 = shufflevector <2 x float> %wide.load248, <2 x float> %wide.load250, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec252, ptr %next.gep246, align 4, !tbaa !45, !alias.scope !213, !noalias !214
  %index.next253 = add nuw i64 %index244, 4       ; 2 uses
  %i.aeh = icmp eq i64 %index.next253, %n.vec242
  br i1 %i.aeh, label %middle.block254, label %vector.body243, !llvm.loop !150

middle.block254:                                  ; preds = %vector.body243
  br i1 %cmp.n255, label %._crit_edge587.i, label %scalar.ph239.preheader

scalar.ph239.preheader:                           ; preds = %vector.memcheck228, %.preheader478.i, %middle.block254
  %indvars.iv756.i.ph = phi i64 [ 0, %vector.memcheck228 ], [ 0, %.preheader478.i ], [ %n.vec242, %middle.block254 ] ; 3 uses
  %.6372585.i.ph = phi ptr [ %.5371589.i, %vector.memcheck228 ], [ %.5371589.i, %.preheader478.i ], [ %i.aea, %middle.block254 ] ; 2 uses
  br i1 %lcmp.mod597.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol

scalar.ph239.prol:                                ; preds = %scalar.ph239.preheader, %scalar.ph239.prol
  %indvars.iv756.i.prol = phi i64 [ %indvars.iv.next757.i.prol, %scalar.ph239.prol ], [ %indvars.iv756.i.ph, %scalar.ph239.preheader ] ; 3 uses
  %.6372585.i.prol = phi ptr [ %i.aen, %scalar.ph239.prol ], [ %.6372585.i.ph, %scalar.ph239.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph239.prol ], [ 0, %scalar.ph239.preheader ]
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i.prol
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i.prol
  %i.aek = load float, ptr %i.aei, align 4, !tbaa !45
  store float %i.aek, ptr %.6372585.i.prol, align 4, !tbaa !45
  %i.ael = load float, ptr %i.aej, align 4, !tbaa !45
  %i.aem = getelementptr inbounds nuw i8, ptr %.6372585.i.prol, i64 4
  store float %i.ael, ptr %i.aem, align 4, !tbaa !45
  %i.aen = getelementptr inbounds nuw i8, ptr %.6372585.i.prol, i64 8 ; 3 uses
  %indvars.iv.next757.i.prol = add nuw nsw i64 %indvars.iv756.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter596
  br i1 %prol.iter.cmp.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol, !llvm.loop !151

scalar.ph239.prol.loopexit:                       ; preds = %scalar.ph239.prol, %scalar.ph239.preheader
  %.lcssa580.unr = phi ptr [ poison, %scalar.ph239.preheader ], [ %i.aen, %scalar.ph239.prol ]
  %indvars.iv756.i.unr = phi i64 [ %indvars.iv756.i.ph, %scalar.ph239.preheader ], [ %indvars.iv.next757.i.prol, %scalar.ph239.prol ]
  %.6372585.i.unr = phi ptr [ %.6372585.i.ph, %scalar.ph239.preheader ], [ %i.aen, %scalar.ph239.prol ]
  %i.aeo = sub nsw i64 %indvars.iv756.i.ph, %wide.trip.count747.i
  %i.aep = icmp ugt i64 %i.aeo, -4
  br i1 %i.aep, label %._crit_edge587.i, label %scalar.ph239

._crit_edge587.i:                                 ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239, %middle.block254
  %.lcssa115 = phi ptr [ %i.aea, %middle.block254 ], [ %.lcssa580.unr, %scalar.ph239.prol.loopexit ], [ %i.afo, %scalar.ph239 ]
  %i.aeq = add nuw nsw i32 %.2365590.i, 1         ; 2 uses
  %exitcond761.not.i = icmp eq i32 %i.aeq, %i.n
  br i1 %exitcond761.not.i, label %._crit_edge591.split.i, label %.preheader478.i, !llvm.loop !152

scalar.ph239:                                     ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239
  %indvars.iv756.i = phi i64 [ %indvars.iv.next757.i.3, %scalar.ph239 ], [ %indvars.iv756.i.unr, %scalar.ph239.prol.loopexit ] ; 6 uses
  %.6372585.i = phi ptr [ %i.afo, %scalar.ph239 ], [ %.6372585.i.unr, %scalar.ph239.prol.loopexit ] ; 9 uses
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv756.i
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv756.i
  %i.aet = load float, ptr %i.aer, align 4, !tbaa !45
  store float %i.aet, ptr %.6372585.i, align 4, !tbaa !45
  %i.aeu = load float, ptr %i.aes, align 4, !tbaa !45
  %i.aev = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 4
  store float %i.aeu, ptr %i.aev, align 4, !tbaa !45
  %i.aew = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 8
  %indvars.iv.next757.i = add nuw nsw i64 %indvars.iv756.i, 1 ; 2 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i
  %i.aez = load float, ptr %i.aex, align 4, !tbaa !45
  store float %i.aez, ptr %i.aew, align 4, !tbaa !45
  %i.afa = load float, ptr %i.aey, align 4, !tbaa !45
  %i.afb = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 12
  store float %i.afa, ptr %i.afb, align 4, !tbaa !45
  %i.afc = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 16
  %indvars.iv.next757.i.1 = add nuw nsw i64 %indvars.iv756.i, 2 ; 2 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i.1
  %i.afe = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i.1
  %i.aff = load float, ptr %i.afd, align 4, !tbaa !45
  store float %i.aff, ptr %i.afc, align 4, !tbaa !45
  %i.afg = load float, ptr %i.afe, align 4, !tbaa !45
  %i.afh = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 20
  store float %i.afg, ptr %i.afh, align 4, !tbaa !45
  %i.afi = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 24
  %indvars.iv.next757.i.2 = add nuw nsw i64 %indvars.iv756.i, 3 ; 2 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %.1376.lcssa.i, i64 %indvars.iv.next757.i.2
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.1374.lcssa.i, i64 %indvars.iv.next757.i.2
  %i.afl = load float, ptr %i.afj, align 4, !tbaa !45
  store float %i.afl, ptr %i.afi, align 4, !tbaa !45
  %i.afm = load float, ptr %i.afk, align 4, !tbaa !45
  %i.afn = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 28
  store float %i.afm, ptr %i.afn, align 4, !tbaa !45
  %i.afo = getelementptr inbounds nuw i8, ptr %.6372585.i, i64 32 ; 2 uses
  %indvars.iv.next757.i.3 = add nuw nsw i64 %indvars.iv756.i, 4 ; 2 uses
  %exitcond760.not.i.3 = icmp eq i64 %indvars.iv.next757.i.3, %wide.trip.count747.i
  br i1 %exitcond760.not.i.3, label %._crit_edge587.i, label %scalar.ph239, !llvm.loop !153

._crit_edge591.split.i:                           ; preds = %._crit_edge587.i, %.preheader481.i, %.preheader479.lr.ph.i, %.preheader480.lr.ph.i
  %indvars.iv.next765.i = add nuw nsw i64 %indvars.iv764.i, 2 ; 3 uses
  %i.afp = icmp slt i64 %indvars.iv.next765.i, %invariant.op.i
  %indvars.iv.next763.i = add i32 %indvars.iv762.i, 2
  %indvar.next = add i32 %indvar, 1
  br i1 %i.afp, label %_ZN4ncnn3MatD2Ev.exit419.i, label %.preheader477.loopexit.i, !llvm.loop !154

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %._crit_edge634.split.i, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split
  %indvar414 = phi i32 [ %indvar.next415, %._crit_edge634.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ] ; 4 uses
  %indvars.iv791.i = phi i64 [ %indvars.iv.next792.i, %._crit_edge634.split.i ], [ %i.oq, %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split ] ; 2 uses
  %i.afq = add i32 %.1.lcssa.i, %indvar414        ; 2 uses
  %i.afr = lshr i32 %i.afq, 2
  %i.afs = sub i32 %.1.lcssa.i, %indvar414
  %i.aft = and i32 %i.afs, 1
  %i.afu = add nuw nsw i32 %i.afr, %i.aft
  %i.afv = lshr i32 %i.afq, 1
  %.lobit = and i32 %i.afv, 1
  %i.afw = add nuw i32 %i.afu, %.lobit
  %i.afx = zext nneg i32 %i.afw to i64
  %i.afy = mul i64 %2, %i.afx
  %scevgep418 = getelementptr i8, ptr %scevgep417.a, i64 %i.afy ; 2 uses
  %i.afz = mul i32 %i.xl, %indvar414
  %i.aga = add i32 %i.xk, %i.afz
  %i.agb = sext i32 %i.aga to i64
  %i.agc = shl nsw i64 %i.agb, 2                  ; 3 uses
  %scevgep420 = getelementptr i8, ptr %scevgep419.a, i64 %i.agc
  %scevgep422 = getelementptr i8, ptr %scevgep421.a, i64 %i.agc
  %scevgep424 = getelementptr i8, ptr %scevgep423.a, i64 %i.agc
  %i.agd = trunc i64 %indvars.iv791.i to i32      ; 4 uses
  %i.age = mul i32 %i.ob, %i.agd
  %i.agf = sext i32 %i.age to i64
  %i.agg = getelementptr [4 x i8], ptr %i.oa, i64 %i.agf ; 9 uses
  %i.agh = lshr i32 %i.agd, 2
  %i.agi = lshr i32 %i.agd, 1
  %i.agj = and i32 %i.agi, 1
  %i.agk = and i32 %i.agd, 1
  %i.agl = add nuw nsw i32 %i.agk, %i.agh
  %i.agm = add nuw i32 %i.agl, %i.agj
  %i.agn = zext i32 %i.agm to i64
  %.reass638.i = mul i64 %factor.op.mul637.i, %i.agn
  %i.ago = getelementptr i8, ptr %i.oc, i64 %.reass638.i ; 8 uses
  br i1 %i.xf, label %.preheader473.lr.ph.i, label %.preheader475.i

.preheader473.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i
  br i1 %i.oi, label %.preheader473.us.i.preheader, label %._crit_edge634.split.i

.preheader473.us.i.preheader:                     ; preds = %.preheader473.lr.ph.i
  br i1 %min.iters.check433, label %.preheader473.us.i.preheader569, label %vector.memcheck413

vector.memcheck413:                               ; preds = %.preheader473.us.i.preheader
  %bound0425 = icmp ult ptr %i.ago, %scevgep422
  %bound1426 = icmp ult ptr %scevgep420, %scevgep418
  %found.conflict427 = and i1 %bound0425, %bound1426
  %bound0428 = icmp ult ptr %i.ago, %scevgep424
  %bound1429 = icmp ult ptr %i.agg, %scevgep418
  %found.conflict430 = and i1 %bound0428, %bound1429
  %conflict.rdx431 = or i1 %found.conflict427, %found.conflict430
  br i1 %conflict.rdx431, label %.preheader473.us.i.preheader569, label %vector.ph434

vector.ph434:                                     ; preds = %vector.memcheck413
  %i.agp = getelementptr i8, ptr %i.ago, i64 %i.xo ; 2 uses
  br label %vector.body436

vector.body436:                                   ; preds = %vector.body436, %vector.ph434
  %index437 = phi i64 [ 0, %vector.ph434 ], [ %index.next446, %vector.body436 ] ; 3 uses
  %i.agq = shl i64 %index437, 3                   ; 2 uses
  %next.gep438.a = getelementptr i8, ptr %i.ago, i64 %i.agq
  %i.agr = getelementptr i8, ptr %i.ago, i64 %i.agq
  %next.gep439 = getelementptr i8, ptr %i.agr, i64 16
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %index437 ; 3 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  %wide.load440.a = load <2 x float>, ptr %i.ags, align 4, !tbaa !45, !alias.scope !215
  %wide.load441.a = load <2 x float>, ptr %i.agt, align 4, !tbaa !45, !alias.scope !215
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.oj ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  %wide.load442.a = load <2 x float>, ptr %i.agu, align 4, !tbaa !45, !alias.scope !216
  %wide.load443 = load <2 x float>, ptr %i.agv, align 4, !tbaa !45, !alias.scope !216
  %interleaved.vec444.a = shufflevector <2 x float> %wide.load440.a, <2 x float> %wide.load442.a, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec444.a, ptr %next.gep438.a, align 4, !tbaa !45, !alias.scope !217, !noalias !218
  %interleaved.vec445 = shufflevector <2 x float> %wide.load441.a, <2 x float> %wide.load443, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec445, ptr %next.gep439, align 4, !tbaa !45, !alias.scope !217, !noalias !218
  %index.next446 = add nuw i64 %index437, 4       ; 2 uses
  %i.agw = icmp eq i64 %index.next446, %n.vec435
  br i1 %i.agw, label %middle.block447, label %vector.body436, !llvm.loop !159

middle.block447:                                  ; preds = %vector.body436
  br i1 %cmp.n448, label %.preheader475.i.loopexit, label %.preheader473.us.i.preheader569

.preheader473.us.i.preheader569:                  ; preds = %vector.memcheck413, %.preheader473.us.i.preheader, %middle.block447
  %indvars.iv780.i.ph = phi i64 [ 0, %vector.memcheck413 ], [ 0, %.preheader473.us.i.preheader ], [ %n.vec435, %middle.block447 ] ; 3 uses
  %.4615.us.i.ph = phi ptr [ %i.ago, %vector.memcheck413 ], [ %i.ago, %.preheader473.us.i.preheader ], [ %i.agp, %middle.block447 ] ; 2 uses
  br i1 %lcmp.mod599.not, label %.preheader473.us.i.prol.loopexit, label %.preheader473.us.i.prol

.preheader473.us.i.prol:                          ; preds = %.preheader473.us.i.preheader569, %.preheader473.us.i.prol
  %indvars.iv780.i.prol = phi i64 [ %indvars.iv.next781.i.prol, %.preheader473.us.i.prol ], [ %indvars.iv780.i.ph, %.preheader473.us.i.preheader569 ] ; 2 uses
  %.4615.us.i.prol = phi ptr [ %i.ahc, %.preheader473.us.i.prol ], [ %.4615.us.i.ph, %.preheader473.us.i.preheader569 ] ; 3 uses
  %prol.iter600 = phi i64 [ %prol.iter600.next, %.preheader473.us.i.prol ], [ 0, %.preheader473.us.i.preheader569 ]
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv780.i.prol ; 2 uses
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !45
  store float %i.agy, ptr %.4615.us.i.prol, align 4, !tbaa !45
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %i.oj
  %i.aha = getelementptr inbounds nuw i8, ptr %.4615.us.i.prol, i64 4
  %i.ahb = load float, ptr %i.agz, align 4, !tbaa !45
  store float %i.ahb, ptr %i.aha, align 4, !tbaa !45
  %i.ahc = getelementptr inbounds nuw i8, ptr %.4615.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next781.i.prol = add nuw nsw i64 %indvars.iv780.i.prol, 1 ; 2 uses
  %prol.iter600.next = add i64 %prol.iter600, 1   ; 2 uses
  %prol.iter600.cmp.not = icmp eq i64 %prol.iter600.next, %xtraiter598
  br i1 %prol.iter600.cmp.not, label %.preheader473.us.i.prol.loopexit, label %.preheader473.us.i.prol, !llvm.loop !160

.preheader473.us.i.prol.loopexit:                 ; preds = %.preheader473.us.i.prol, %.preheader473.us.i.preheader569
  %.lcssa571.unr.a = phi ptr [ poison, %.preheader473.us.i.preheader569 ], [ %i.ahc, %.preheader473.us.i.prol ]
  %indvars.iv780.i.unr = phi i64 [ %indvars.iv780.i.ph, %.preheader473.us.i.preheader569 ], [ %indvars.iv.next781.i.prol, %.preheader473.us.i.prol ]
  %.4615.us.i.unr = phi ptr [ %.4615.us.i.ph, %.preheader473.us.i.preheader569 ], [ %i.ahc, %.preheader473.us.i.prol ]
  %i.ahd = sub nsw i64 %indvars.iv780.i.ph, %wide.trip.count777.i
  %i.ahe = icmp ugt i64 %i.ahd, -4
  br i1 %i.ahe, label %.preheader475.i.loopexit, label %.preheader473.us.i

.preheader473.us.i:                               ; preds = %.preheader473.us.i.prol.loopexit, %.preheader473.us.i
  %indvars.iv780.i = phi i64 [ %indvars.iv.next781.i.3, %.preheader473.us.i ], [ %indvars.iv780.i.unr, %.preheader473.us.i.prol.loopexit ] ; 5 uses
  %.4615.us.i = phi ptr [ %i.aif, %.preheader473.us.i ], [ %.4615.us.i.unr, %.preheader473.us.i.prol.loopexit ] ; 9 uses
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv780.i ; 2 uses
  %i.ahg = load float, ptr %i.ahf, align 4, !tbaa !45
  store float %i.ahg, ptr %.4615.us.i, align 4, !tbaa !45
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.oj
  %i.ahi = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 4
  %i.ahj = load float, ptr %i.ahh, align 4, !tbaa !45
  store float %i.ahj, ptr %i.ahi, align 4, !tbaa !45
  %i.ahk = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 8
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv780.i
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 4 ; 2 uses
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !45
  store float %i.ahn, ptr %i.ahk, align 4, !tbaa !45
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %i.oj
  %i.ahp = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 12
  %i.ahq = load float, ptr %i.aho, align 4, !tbaa !45
  store float %i.ahq, ptr %i.ahp, align 4, !tbaa !45
  %i.ahr = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 16
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv780.i
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8 ; 2 uses
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !45
  store float %i.ahu, ptr %i.ahr, align 4, !tbaa !45
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %i.aht, i64 %i.oj
  %i.ahw = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 20
  %i.ahx = load float, ptr %i.ahv, align 4, !tbaa !45
  store float %i.ahx, ptr %i.ahw, align 4, !tbaa !45
  %i.ahy = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 24
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %indvars.iv780.i
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 12 ; 2 uses
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !45
  store float %i.aib, ptr %i.ahy, align 4, !tbaa !45
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %i.oj
  %i.aid = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 28
  %i.aie = load float, ptr %i.aic, align 4, !tbaa !45
  store float %i.aie, ptr %i.aid, align 4, !tbaa !45
  %i.aif = getelementptr inbounds nuw i8, ptr %.4615.us.i, i64 32 ; 2 uses
  %indvars.iv.next781.i.3 = add nuw nsw i64 %indvars.iv780.i, 4 ; 2 uses
  %exitcond784.not.i.3 = icmp eq i64 %indvars.iv.next781.i.3, %wide.trip.count777.i
  br i1 %exitcond784.not.i.3, label %.preheader475.i.loopexit, label %.preheader473.us.i, !llvm.loop !161

.preheader475.i.loopexit:                         ; preds = %.preheader473.us.i.prol.loopexit, %.preheader473.us.i, %middle.block447
  %.lcssa106 = phi ptr [ %i.agp, %middle.block447 ], [ %.lcssa571.unr.a, %.preheader473.us.i.prol.loopexit ], [ %i.aif, %.preheader473.us.i ]
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %i.on
  br label %.preheader475.i

.preheader475.i:                                  ; preds = %.preheader475.i.loopexit, %_ZN4ncnn3MatD2Ev.exit.i
  %.1348.lcssa.i = phi ptr [ %i.agg, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.aig, %.preheader475.i.loopexit ] ; 11 uses
  %.3.lcssa.i = phi ptr [ %i.ago, %_ZN4ncnn3MatD2Ev.exit.i ], [ %.lcssa106, %.preheader475.i.loopexit ]
  %.1342.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i ], [ %i.xg, %.preheader475.i.loopexit ] ; 2 uses
  %i.aih = icmp sge i32 %.1342.lcssa.i, %i.n
  %brmerge645.i = or i1 %i.oo, %i.aih
  br i1 %brmerge645.i, label %._crit_edge634.split.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader475.i
  %.1348.lcssa.i397 = ptrtoaddr ptr %.1348.lcssa.i to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge630.i
  %.2343633.i = phi i32 [ %i.aiu, %._crit_edge630.i ], [ %.1342.lcssa.i, %.preheader.i.preheader ]
  %.6632.i = phi ptr [ %.lcssa107, %._crit_edge630.i ], [ %.3.lcssa.i, %.preheader.i.preheader ] ; 4 uses
  %.6632.i398 = ptrtoaddr ptr %.6632.i to i64
  %i.aii = sub i64 %.1348.lcssa.i397, %.6632.i398
  %diff.check = icmp ugt i64 %i.aii, -32
  %or.cond558 = select i1 %min.iters.check400, i1 true, i1 %diff.check
  br i1 %or.cond558, label %scalar.ph399.preheader, label %vector.ph401

vector.ph401:                                     ; preds = %.preheader.i
  %i.aij = getelementptr i8, ptr %.6632.i, i64 %i.xp ; 2 uses
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next408, %vector.body403 ] ; 3 uses
  %i.aik = shl i64 %index404, 2
  %next.gep405 = getelementptr i8, ptr %.6632.i, i64 %i.aik ; 2 uses
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %index404 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 16
  %wide.load406 = load <4 x float>, ptr %i.ail, align 4, !tbaa !45
  %wide.load407 = load <4 x float>, ptr %i.aim, align 4, !tbaa !45
  %i.ain = getelementptr i8, ptr %next.gep405, i64 16
  store <4 x float> %wide.load406, ptr %next.gep405, align 4, !tbaa !45
  store <4 x float> %wide.load407, ptr %i.ain, align 4, !tbaa !45
  %index.next408 = add nuw i64 %index404, 8       ; 2 uses
  %i.aio = icmp eq i64 %index.next408, %n.vec402
  br i1 %i.aio, label %middle.block409, label %vector.body403, !llvm.loop !162

middle.block409:                                  ; preds = %vector.body403
  br i1 %cmp.n410, label %._crit_edge630.i, label %scalar.ph399.preheader

scalar.ph399.preheader:                           ; preds = %.preheader.i, %middle.block409
  %indvars.iv785.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec402, %middle.block409 ] ; 3 uses
  %.7628.i.ph = phi ptr [ %.6632.i, %.preheader.i ], [ %i.aij, %middle.block409 ] ; 2 uses
  br i1 %lcmp.mod602.not, label %scalar.ph399.prol.loopexit, label %scalar.ph399.prol

scalar.ph399.prol:                                ; preds = %scalar.ph399.preheader, %scalar.ph399.prol
  %indvars.iv785.i.prol = phi i64 [ %indvars.iv.next786.i.prol, %scalar.ph399.prol ], [ %indvars.iv785.i.ph, %scalar.ph399.preheader ] ; 2 uses
  %.7628.i.prol = phi ptr [ %i.air, %scalar.ph399.prol ], [ %.7628.i.ph, %scalar.ph399.preheader ] ; 2 uses
  %prol.iter603 = phi i64 [ %prol.iter603.next, %scalar.ph399.prol ], [ 0, %scalar.ph399.preheader ]
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i.prol
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !45
  store float %i.aiq, ptr %.7628.i.prol, align 4, !tbaa !45
  %i.air = getelementptr inbounds nuw i8, ptr %.7628.i.prol, i64 4 ; 3 uses
  %indvars.iv.next786.i.prol = add nuw nsw i64 %indvars.iv785.i.prol, 1 ; 2 uses
  %prol.iter603.next = add i64 %prol.iter603, 1   ; 2 uses
  %prol.iter603.cmp.not = icmp eq i64 %prol.iter603.next, %xtraiter601
  br i1 %prol.iter603.cmp.not, label %scalar.ph399.prol.loopexit, label %scalar.ph399.prol, !llvm.loop !163

scalar.ph399.prol.loopexit:                       ; preds = %scalar.ph399.prol, %scalar.ph399.preheader
  %.lcssa572.unr = phi ptr [ poison, %scalar.ph399.preheader ], [ %i.air, %scalar.ph399.prol ]
  %indvars.iv785.i.unr = phi i64 [ %indvars.iv785.i.ph, %scalar.ph399.preheader ], [ %indvars.iv.next786.i.prol, %scalar.ph399.prol ]
  %.7628.i.unr = phi ptr [ %.7628.i.ph, %scalar.ph399.preheader ], [ %i.air, %scalar.ph399.prol ]
  %i.ais = sub nsw i64 %indvars.iv785.i.ph, %wide.trip.count777.i
  %i.ait = icmp ugt i64 %i.ais, -8
  br i1 %i.ait, label %._crit_edge630.i, label %scalar.ph399

._crit_edge630.i:                                 ; preds = %scalar.ph399.prol.loopexit, %scalar.ph399, %middle.block409
  %.lcssa107 = phi ptr [ %i.aij, %middle.block409 ], [ %.lcssa572.unr, %scalar.ph399.prol.loopexit ], [ %i.ajz, %scalar.ph399 ]
  %i.aiu = add nuw nsw i32 %.2343633.i, 1         ; 2 uses
  %exitcond790.not.i = icmp eq i32 %i.aiu, %i.n
  br i1 %exitcond790.not.i, label %._crit_edge634.split.i, label %.preheader.i, !llvm.loop !122

scalar.ph399:                                     ; preds = %scalar.ph399.prol.loopexit, %scalar.ph399
  %indvars.iv785.i = phi i64 [ %indvars.iv.next786.i.7, %scalar.ph399 ], [ %indvars.iv785.i.unr, %scalar.ph399.prol.loopexit ] ; 9 uses
  %.7628.i = phi ptr [ %i.ajz, %scalar.ph399 ], [ %.7628.i.unr, %scalar.ph399.prol.loopexit ] ; 9 uses
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !45
  store float %i.aiw, ptr %.7628.i, align 4, !tbaa !45
  %i.aix = getelementptr inbounds nuw i8, ptr %.7628.i, i64 4
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 4
  %i.aja = load float, ptr %i.aiz, align 4, !tbaa !45
  store float %i.aja, ptr %i.aix, align 4, !tbaa !45
  %i.ajb = getelementptr inbounds nuw i8, ptr %.7628.i, i64 8
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i, i64 %indvars.iv785.i
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8
end_hunk_2
