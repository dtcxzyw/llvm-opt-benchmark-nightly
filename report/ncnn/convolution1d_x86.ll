Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv727.i.epil.init
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv727.i.epil.init
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv727.i.epil.init
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv727.i.epil.init
  %i.jq = load i32, ptr %i.jm, align 4, !tbaa !45
  %i.jr = lshr i32 %i.jq, 16
  %i.js = trunc nuw i32 %i.jr to i16
  store i16 %i.js, ptr %.7384543.i.epil.init, align 2, !tbaa !66
  %i.jt = load i32, ptr %i.jn, align 4, !tbaa !45
  %i.ju = lshr i32 %i.jt, 16
  %i.jv = trunc nuw i32 %i.ju to i16
  %i.jw = getelementptr inbounds nuw i8, ptr %.7384543.i.epil.init, i64 2
  store i16 %i.jv, ptr %i.jw, align 2, !tbaa !66
  %i.jx = load i32, ptr %i.jo, align 4, !tbaa !45
  %i.jy = lshr i32 %i.jx, 16
  %i.jz = trunc nuw i32 %i.jy to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %.7384543.i.epil.init, i64 4
  store i16 %i.jz, ptr %i.ka, align 2, !tbaa !66
  %i.kb = load i32, ptr %i.jp, align 4, !tbaa !45
  %i.kc = lshr i32 %i.kb, 16
  %i.kd = trunc nuw i32 %i.kc to i16
  %i.ke = getelementptr inbounds nuw i8, ptr %.7384543.i.epil.init, i64 6
  store i16 %i.kd, ptr %i.ke, align 2, !tbaa !66
  %i.kf = getelementptr inbounds nuw i8, ptr %.7384543.i.epil.init, i64 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa213 = phi ptr [ %i.lu, %._crit_edge.i.unr-lcssa ], [ %i.kf, %.epil.preheader ]
  %i.kg = add nuw nsw i32 %.2387544.i, 1          ; 2 uses
  %exitcond732.not.i = icmp eq i32 %i.kg, %i.h
  br i1 %exitcond732.not.i, label %._crit_edge546.split.i, label %.preheader484.i, !llvm.loop !263

.preheader484.i.new:                              ; preds = %.preheader484.i, %.preheader484.i.new
  %indvars.iv727.i = phi i64 [ %indvars.iv.next728.i.1, %.preheader484.i.new ], [ 0, %.preheader484.i ] ; 6 uses
  %.7384543.i = phi ptr [ %i.lu, %.preheader484.i.new ], [ %.6383545.i, %.preheader484.i ] ; 9 uses
  %niter = phi i64 [ %niter.next.1, %.preheader484.i.new ], [ 0, %.preheader484.i ]
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv727.i
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv727.i
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv727.i
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv727.i
  %i.kl = load i32, ptr %i.kh, align 4, !tbaa !45
  %i.km = lshr i32 %i.kl, 16
  %i.kn = trunc nuw i32 %i.km to i16
  store i16 %i.kn, ptr %.7384543.i, align 2, !tbaa !66
  %i.ko = load i32, ptr %i.ki, align 4, !tbaa !45
  %i.kp = lshr i32 %i.ko, 16
  %i.kq = trunc nuw i32 %i.kp to i16
  %i.kr = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 2
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !66
  %i.ks = load i32, ptr %i.kj, align 4, !tbaa !45
  %i.kt = lshr i32 %i.ks, 16
  %i.ku = trunc nuw i32 %i.kt to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 4
  store i16 %i.ku, ptr %i.kv, align 2, !tbaa !66
  %i.kw = load i32, ptr %i.kk, align 4, !tbaa !45
  %i.kx = lshr i32 %i.kw, 16
  %i.ky = trunc nuw i32 %i.kx to i16
  %i.kz = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 6
  store i16 %i.ky, ptr %i.kz, align 2, !tbaa !66
  %i.la = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 8
  %indvars.iv.next728.i = or disjoint i64 %indvars.iv727.i, 1 ; 4 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.1350.lcssa.i, i64 %indvars.iv.next728.i
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.1352.lcssa.i, i64 %indvars.iv.next728.i
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.1359.lcssa.i, i64 %indvars.iv.next728.i
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.1361.lcssa.i, i64 %indvars.iv.next728.i
  %i.lf = load i32, ptr %i.lb, align 4, !tbaa !45
  %i.lg = lshr i32 %i.lf, 16
  %i.lh = trunc nuw i32 %i.lg to i16
  store i16 %i.lh, ptr %i.la, align 2, !tbaa !66
  %i.li = load i32, ptr %i.lc, align 4, !tbaa !45
  %i.lj = lshr i32 %i.li, 16
  %i.lk = trunc nuw i32 %i.lj to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 10
  store i16 %i.lk, ptr %i.ll, align 2, !tbaa !66
  %i.lm = load i32, ptr %i.ld, align 4, !tbaa !45
  %i.ln = lshr i32 %i.lm, 16
  %i.lo = trunc nuw i32 %i.ln to i16
  %i.lp = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 12
  store i16 %i.lo, ptr %i.lp, align 2, !tbaa !66
  %i.lq = load i32, ptr %i.le, align 4, !tbaa !45
  %i.lr = lshr i32 %i.lq, 16
  %i.ls = trunc nuw i32 %i.lr to i16
  %i.lt = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 14
  store i16 %i.ls, ptr %i.lt, align 2, !tbaa !66
  %i.lu = getelementptr inbounds nuw i8, ptr %.7384543.i, i64 16 ; 3 uses
  %indvars.iv.next728.i.1 = add nuw nsw i64 %indvars.iv727.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader484.i.new, !llvm.loop !264

._crit_edge546.split.i:                           ; preds = %._crit_edge.i, %.preheader487.i, %.preheader485.lr.ph.i, %.preheader486.lr.ph.i
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 4 ; 3 uses
  %i.lv = or disjoint i64 %indvars.iv.next734.i, 3
  %i.lw = icmp samesign ult i64 %i.lv, %i.ck
  br i1 %i.lw, label %_ZN4ncnn3MatD2Ev.exit420.i, label %.preheader483.loopexit.i, !llvm.loop !265

.preheader477.loopexit.i:                         ; preds = %._crit_edge591.split.i
  %i.lx = trunc nuw nsw i64 %indvars.iv.next765.i to i32
  br label %.preheader477.i

.preheader477.i:                                  ; preds = %.preheader477.loopexit.i, %.preheader483.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader483.i ], [ %i.lx, %.preheader477.loopexit.i ] ; 2 uses
  %i.ly = icmp slt i32 %.1.lcssa.i, %i.g
  br i1 %i.ly, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.lr.ph.i:                    ; preds = %.preheader477.i
  %i.lz = load ptr, ptr %i.i, align 8, !tbaa !19  ; 2 uses
  %i.ma = mul i32 %i.h, %i.d                      ; 2 uses
  %i.mb = load ptr, ptr %i.j, align 8, !tbaa !19, !noalias !291 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !20, !noalias !291
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !44, !noalias !291
  %factor.op.mul637.i = mul i64 %i.mf, %i.md      ; 2 uses
  %i.mg = icmp sgt i32 %i.h, 3
  %i.mh = icmp sgt i32 %i.d, 0                    ; 2 uses
  %i.mi = sext i32 %i.d to i64                    ; 13 uses
  %i.mj = shl i32 %i.d, 2
  %i.mk = sext i32 %i.mj to i64
  %i.ml = shl i32 %i.d, 1
  %i.mm = sext i32 %i.ml to i64                   ; 2 uses
  %i.mn = icmp slt i32 %i.d, 1                    ; 2 uses
  %i.mo = and i32 %i.h, -4                        ; 3 uses
  %i.mp = zext nneg i32 %.1.lcssa.i to i64        ; 2 uses
  %wide.trip.count794.i = zext i32 %i.g to i64    ; 2 uses
  %wide.trip.count777.i = zext i32 %i.d to i64    ; 14 uses
  br i1 %i.mg, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us:           ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.mq = or disjoint i32 %i.mo, 1
  %i.mr = icmp slt i32 %i.mq, %i.h
  br i1 %i.mh, label %_ZN4ncnn3MatD2Ev.exit.i.us.preheader, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit

_ZN4ncnn3MatD2Ev.exit.i.us.preheader:             ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split.us
  %xtraiter224 = and i64 %wide.trip.count777.i, 1
  %i.ms = icmp eq i32 %i.d, 1
  %unroll_iter228 = and i64 %wide.trip.count777.i, 2147483646
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  %lcmp.mod227 = trunc i32 %i.d to i1
  %min.iters.check171 = icmp ult i32 %i.d, 4
  %n.vec173 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.mt = shl nuw nsw i64 %n.vec173, 2
  %cmp.n182 = icmp eq i64 %n.vec173, %wide.trip.count777.i
  %min.iters.check157 = icmp ult i32 %i.d, 8
  %n.vec159 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.mu = shl nuw nsw i64 %n.vec159, 1
  %cmp.n167 = icmp eq i64 %n.vec159, %wide.trip.count777.i
  br label %_ZN4ncnn3MatD2Ev.exit.i.us

_ZN4ncnn3MatD2Ev.exit.i.us:                       ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us.preheader, %._crit_edge634.split.i.us
  %indvars.iv791.i.us = phi i64 [ %indvars.iv.next792.i.us, %._crit_edge634.split.i.us ], [ %i.mp, %_ZN4ncnn3MatD2Ev.exit.i.us.preheader ] ; 2 uses
  %i.mv = trunc nuw nsw i64 %indvars.iv791.i.us to i32 ; 4 uses
  %i.mw = mul i32 %i.ma, %i.mv
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.lz, i64 %i.mx
  %i.mz = lshr i32 %i.mv, 2
  %i.na = lshr i32 %i.mv, 1
  %i.nb = and i32 %i.na, 1
  %i.nc = and i32 %i.mv, 1
  %i.nd = add nuw nsw i32 %i.nc, %i.mz
  %i.ne = add nuw nsw i32 %i.nd, %i.nb
  %i.nf = zext nneg i32 %i.ne to i64
  %.reass638.i.us = mul i64 %factor.op.mul637.i, %i.nf
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.reass638.i.us
  br label %.preheader474.us.i.us

.preheader474.us.i.us:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i.us, %._crit_edge601.us.i.us
  %.0341605.us.i.us = phi i32 [ %i.po, %._crit_edge601.us.i.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.us ]
  %.0344604.us.i.us = phi ptr [ %.lcssa, %._crit_edge601.us.i.us ], [ %i.ng, %_ZN4ncnn3MatD2Ev.exit.i.us ] ; 2 uses
  %.0347603.us.i.us = phi ptr [ %i.pn, %._crit_edge601.us.i.us ], [ %i.my, %_ZN4ncnn3MatD2Ev.exit.i.us ] ; 4 uses
  br i1 %i.ms, label %.epil.preheader223, label %.preheader474.us.i.us.new

.preheader474.us.i.us.new:                        ; preds = %.preheader474.us.i.us, %.preheader474.us.i.us.new
  %indvars.iv774.i.us = phi i64 [ %indvars.iv.next775.i.us.1, %.preheader474.us.i.us.new ], [ 0, %.preheader474.us.i.us ] ; 3 uses
  %.1345599.us.i.us = phi ptr [ %i.os, %.preheader474.us.i.us.new ], [ %.0344604.us.i.us, %.preheader474.us.i.us ] ; 9 uses
  %niter229 = phi i64 [ %niter229.next.1, %.preheader474.us.i.us.new ], [ 0, %.preheader474.us.i.us ]
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %indvars.iv774.i.us ; 2 uses
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !45
  %i.nj = lshr i32 %i.ni, 16
  %i.nk = trunc nuw i32 %i.nj to i16
  store i16 %i.nk, ptr %.1345599.us.i.us, align 2, !tbaa !66
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.mi ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 2
  %i.nn = load i32, ptr %i.nl, align 4, !tbaa !45
  %i.no = lshr i32 %i.nn, 16
  %i.np = trunc nuw i32 %i.no to i16
  store i16 %i.np, ptr %i.nm, align 2, !tbaa !66
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.mi ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 4
  %i.ns = load i32, ptr %i.nq, align 4, !tbaa !45
  %i.nt = lshr i32 %i.ns, 16
  %i.nu = trunc nuw i32 %i.nt to i16
  store i16 %i.nu, ptr %i.nr, align 2, !tbaa !66
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.mi
  %i.nw = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 6
  %i.nx = load i32, ptr %i.nv, align 4, !tbaa !45
  %i.ny = lshr i32 %i.nx, 16
  %i.nz = trunc nuw i32 %i.ny to i16
  store i16 %i.nz, ptr %i.nw, align 2, !tbaa !66
  %i.oa = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 8
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %indvars.iv774.i.us ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %2 = getelementptr i8, ptr %i.ob, i64 6
  %3 = load i16, ptr %2, align 2, !tbaa !45
  store i16 %3, ptr %i.oa, align 2, !tbaa !66
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.mi ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 10
  %i.of = load i32, ptr %i.od, align 4, !tbaa !45
  %i.og = lshr i32 %i.of, 16
  %i.oh = trunc nuw i32 %i.og to i16
  store i16 %i.oh, ptr %i.oe, align 2, !tbaa !66
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.mi ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 12
  %i.ok = load i32, ptr %i.oi, align 4, !tbaa !45
  %i.ol = lshr i32 %i.ok, 16
  %i.om = trunc nuw i32 %i.ol to i16
  store i16 %i.om, ptr %i.oj, align 2, !tbaa !66
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.mi
  %i.oo = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 14
  %i.op = load i32, ptr %i.on, align 4, !tbaa !45
  %i.oq = lshr i32 %i.op, 16
  %i.or = trunc nuw i32 %i.oq to i16
  store i16 %i.or, ptr %i.oo, align 2, !tbaa !66
  %i.os = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us, i64 16 ; 3 uses
  %indvars.iv.next775.i.us.1 = add nuw nsw i64 %indvars.iv774.i.us, 2 ; 2 uses
  %niter229.next.1 = add i64 %niter229, 2         ; 2 uses
  %niter229.ncmp.1 = icmp eq i64 %niter229.next.1, %unroll_iter228
  br i1 %niter229.ncmp.1, label %._crit_edge601.us.i.us.unr-lcssa, label %.preheader474.us.i.us.new, !llvm.loop !268

._crit_edge601.us.i.us.unr-lcssa:                 ; preds = %.preheader474.us.i.us.new
  br i1 %lcmp.mod225.not, label %._crit_edge601.us.i.us, label %.epil.preheader223

.epil.preheader223:                               ; preds = %._crit_edge601.us.i.us.unr-lcssa, %.preheader474.us.i.us
  %indvars.iv774.i.us.epil.init = phi i64 [ 0, %.preheader474.us.i.us ], [ %indvars.iv.next775.i.us.1, %._crit_edge601.us.i.us.unr-lcssa ]
  %.1345599.us.i.us.epil.init = phi ptr [ %.0344604.us.i.us, %.preheader474.us.i.us ], [ %i.os, %._crit_edge601.us.i.us.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %indvars.iv774.i.us.epil.init ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !45
  %i.ov = lshr i32 %i.ou, 16
  %i.ow = trunc nuw i32 %i.ov to i16
  store i16 %i.ow, ptr %.1345599.us.i.us.epil.init, align 2, !tbaa !66
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.mi ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 2
  %i.oz = load i32, ptr %i.ox, align 4, !tbaa !45
  %i.pa = lshr i32 %i.oz, 16
  %i.pb = trunc nuw i32 %i.pa to i16
  store i16 %i.pb, ptr %i.oy, align 2, !tbaa !66
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.mi ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 4
  %i.pe = load i32, ptr %i.pc, align 4, !tbaa !45
  %i.pf = lshr i32 %i.pe, 16
  %i.pg = trunc nuw i32 %i.pf to i16
  store i16 %i.pg, ptr %i.pd, align 2, !tbaa !66
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %i.mi
  %i.pi = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 6
  %i.pj = load i32, ptr %i.ph, align 4, !tbaa !45
  %i.pk = lshr i32 %i.pj, 16
  %i.pl = trunc nuw i32 %i.pk to i16
  store i16 %i.pl, ptr %i.pi, align 2, !tbaa !66
  %i.pm = getelementptr inbounds nuw i8, ptr %.1345599.us.i.us.epil.init, i64 8
  br label %._crit_edge601.us.i.us

._crit_edge601.us.i.us:                           ; preds = %._crit_edge601.us.i.us.unr-lcssa, %.epil.preheader223
  %.lcssa = phi ptr [ %i.os, %._crit_edge601.us.i.us.unr-lcssa ], [ %i.pm, %.epil.preheader223 ] ; 3 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.0347603.us.i.us, i64 %i.mk ; 3 uses
  %i.po = add nuw nsw i32 %.0341605.us.i.us, 4    ; 2 uses
  %i.pp = or disjoint i32 %i.po, 3
  %i.pq = icmp slt i32 %i.pp, %i.h
  br i1 %i.pq, label %.preheader474.us.i.us, label %.preheader476.i.loopexit.us, !llvm.loop !269

.preheader473.us.i.us:                            ; preds = %.preheader476.i.loopexit.us, %._crit_edge617.us.i.us
  %.1342621.us.i.us = phi i32 [ %i.qj, %._crit_edge617.us.i.us ], [ %i.mo, %.preheader476.i.loopexit.us ]
  %.3620.us.i.us = phi ptr [ %.lcssa99, %._crit_edge617.us.i.us ], [ %.lcssa, %.preheader476.i.loopexit.us ] ; 3 uses
  %.1348619.us.i.us = phi ptr [ %i.qi, %._crit_edge617.us.i.us ], [ %i.pn, %.preheader476.i.loopexit.us ] ; 3 uses
  br i1 %min.iters.check171, label %scalar.ph170.preheader, label %vector.ph172

vector.ph172:                                     ; preds = %.preheader473.us.i.us
  %i.pr = getelementptr i8, ptr %.3620.us.i.us, i64 %i.mt ; 2 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 3 uses
  %i.ps = shl i64 %index175, 2
  %next.gep176 = getelementptr i8, ptr %.3620.us.i.us, i64 %i.ps
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %index175 ; 2 uses
  %wide.load177 = load <4 x i32>, ptr %i.pt, align 4, !tbaa !45
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.mi
  %wide.load178 = load <4 x i32>, ptr %i.pu, align 4, !tbaa !45
  %i.pv = shufflevector <4 x i32> %wide.load177, <4 x i32> %wide.load178, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.pw = lshr <8 x i32> %i.pv, splat (i32 16)
  %interleaved.vec179 = trunc nuw <8 x i32> %i.pw to <8 x i16>
  store <8 x i16> %interleaved.vec179, ptr %next.gep176, align 2, !tbaa !66
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.px = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.px, label %middle.block181, label %vector.body174, !llvm.loop !270

middle.block181:                                  ; preds = %vector.body174
  br i1 %cmp.n182, label %._crit_edge617.us.i.us, label %scalar.ph170.preheader

scalar.ph170.preheader:                           ; preds = %.preheader473.us.i.us, %middle.block181
  %indvars.iv780.i.us.ph = phi i64 [ 0, %.preheader473.us.i.us ], [ %n.vec173, %middle.block181 ]
  %.4615.us.i.us.ph = phi ptr [ %.3620.us.i.us, %.preheader473.us.i.us ], [ %i.pr, %middle.block181 ]
  br label %scalar.ph170

scalar.ph170:                                     ; preds = %scalar.ph170.preheader, %scalar.ph170
  %indvars.iv780.i.us = phi i64 [ %indvars.iv.next781.i.us, %scalar.ph170 ], [ %indvars.iv780.i.us.ph, %scalar.ph170.preheader ] ; 2 uses
  %.4615.us.i.us = phi ptr [ %i.qh, %scalar.ph170 ], [ %.4615.us.i.us.ph, %scalar.ph170.preheader ] ; 3 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !45
  %i.qa = lshr i32 %i.pz, 16
  %i.qb = trunc nuw i32 %i.qa to i16
  store i16 %i.qb, ptr %.4615.us.i.us, align 2, !tbaa !66
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.mi
  %i.qd = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 2
  %i.qe = load i32, ptr %i.qc, align 4, !tbaa !45
  %i.qf = lshr i32 %i.qe, 16
  %i.qg = trunc nuw i32 %i.qf to i16
  store i16 %i.qg, ptr %i.qd, align 2, !tbaa !66
  %i.qh = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 4 ; 2 uses
  %indvars.iv.next781.i.us = add nuw nsw i64 %indvars.iv780.i.us, 1 ; 2 uses
  %exitcond784.not.i.us = icmp eq i64 %indvars.iv.next781.i.us, %wide.trip.count777.i
  br i1 %exitcond784.not.i.us, label %._crit_edge617.us.i.us, label %scalar.ph170, !llvm.loop !271

._crit_edge617.us.i.us:                           ; preds = %scalar.ph170, %middle.block181
  %.lcssa99 = phi ptr [ %i.pr, %middle.block181 ], [ %i.qh, %scalar.ph170 ] ; 2 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %i.mm ; 2 uses
  %i.qj = add nuw nsw i32 %.1342621.us.i.us, 2    ; 3 uses
  %i.qk = or disjoint i32 %i.qj, 1
  %i.ql = icmp slt i32 %i.qk, %i.h
  br i1 %i.ql, label %.preheader473.us.i.us, label %.preheader475.i.us, !llvm.loop !272

.preheader475.i.us:                               ; preds = %._crit_edge617.us.i.us, %.preheader476.i.loopexit.us
  %.1348.lcssa.i.us = phi ptr [ %i.pn, %.preheader476.i.loopexit.us ], [ %i.qi, %._crit_edge617.us.i.us ] ; 2 uses
  %.3.lcssa.i.us = phi ptr [ %.lcssa, %.preheader476.i.loopexit.us ], [ %.lcssa99, %._crit_edge617.us.i.us ]
  %.1342.lcssa.i.us = phi i32 [ %i.mo, %.preheader476.i.loopexit.us ], [ %i.qj, %._crit_edge617.us.i.us ] ; 2 uses
  %i.qm = icmp sge i32 %.1342.lcssa.i.us, %i.h
  %brmerge645.i.us = or i1 %i.mn, %i.qm
  br i1 %brmerge645.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader475.i.us, %._crit_edge630.i.us
  %.2343633.i.us = phi i32 [ %i.rc, %._crit_edge630.i.us ], [ %.1342.lcssa.i.us, %.preheader475.i.us ]
  %.6632.i.us = phi ptr [ %.lcssa102, %._crit_edge630.i.us ], [ %.3.lcssa.i.us, %.preheader475.i.us ] ; 3 uses
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %vector.ph158

vector.ph158:                                     ; preds = %.preheader.i.us
  %i.qn = getelementptr i8, ptr %.6632.i.us, i64 %i.mu ; 2 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next165, %vector.body160 ] ; 3 uses
  %i.qo = shl i64 %index161, 1
  %next.gep162 = getelementptr i8, ptr %.6632.i.us, i64 %i.qo ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %index161 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %wide.load163 = load <4 x i32>, ptr %i.qp, align 4, !tbaa !45
  %wide.load164 = load <4 x i32>, ptr %i.qq, align 4, !tbaa !45
  %i.qr = lshr <4 x i32> %wide.load163, splat (i32 16)
  %i.qs = lshr <4 x i32> %wide.load164, splat (i32 16)
  %i.qt = trunc nuw <4 x i32> %i.qr to <4 x i16>
  %i.qu = trunc nuw <4 x i32> %i.qs to <4 x i16>
  %i.qv = getelementptr i8, ptr %next.gep162, i64 8
  store <4 x i16> %i.qt, ptr %next.gep162, align 2, !tbaa !66
  store <4 x i16> %i.qu, ptr %i.qv, align 2, !tbaa !66
  %index.next165 = add nuw i64 %index161, 8       ; 2 uses
  %i.qw = icmp eq i64 %index.next165, %n.vec159
  br i1 %i.qw, label %middle.block166, label %vector.body160, !llvm.loop !273

middle.block166:                                  ; preds = %vector.body160
  br i1 %cmp.n167, label %._crit_edge630.i.us, label %scalar.ph156.preheader

scalar.ph156.preheader:                           ; preds = %.preheader.i.us, %middle.block166
  %indvars.iv785.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec159, %middle.block166 ]
  %.7628.i.us.ph = phi ptr [ %.6632.i.us, %.preheader.i.us ], [ %i.qn, %middle.block166 ]
  br label %scalar.ph156

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %indvars.iv785.i.us = phi i64 [ %indvars.iv.next786.i.us, %scalar.ph156 ], [ %indvars.iv785.i.us.ph, %scalar.ph156.preheader ] ; 2 uses
  %.7628.i.us = phi ptr [ %i.rb, %scalar.ph156 ], [ %.7628.i.us.ph, %scalar.ph156.preheader ] ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !45
  %i.qz = lshr i32 %i.qy, 16
  %i.ra = trunc nuw i32 %i.qz to i16
  store i16 %i.ra, ptr %.7628.i.us, align 2, !tbaa !66
  %i.rb = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 2 ; 2 uses
  %indvars.iv.next786.i.us = add nuw nsw i64 %indvars.iv785.i.us, 1 ; 2 uses
  %exitcond789.not.i.us = icmp eq i64 %indvars.iv.next786.i.us, %wide.trip.count777.i
  br i1 %exitcond789.not.i.us, label %._crit_edge630.i.us, label %scalar.ph156, !llvm.loop !274

._crit_edge630.i.us:                              ; preds = %scalar.ph156, %middle.block166
  %.lcssa102 = phi ptr [ %i.qn, %middle.block166 ], [ %i.rb, %scalar.ph156 ]
  %i.rc = add nuw nsw i32 %.2343633.i.us, 1       ; 2 uses
  %exitcond790.not.i.us = icmp eq i32 %i.rc, %i.h
  br i1 %exitcond790.not.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us, !llvm.loop !275

._crit_edge634.split.i.us:                        ; preds = %._crit_edge630.i.us, %.preheader475.i.us
  %indvars.iv.next792.i.us = add nuw nsw i64 %indvars.iv791.i.us, 1 ; 2 uses
  %exitcond795.not.i.us = icmp eq i64 %indvars.iv.next792.i.us, %wide.trip.count794.i
  br i1 %exitcond795.not.i.us, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.us, !llvm.loop !276

.preheader476.i.loopexit.us:                      ; preds = %._crit_edge601.us.i.us
  br i1 %i.mr, label %.preheader473.us.i.us, label %.preheader475.i.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.rd = icmp sgt i32 %i.h, 1
  %i.re = and i32 %i.h, -2
end_hunk_0
