Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtgsja?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dtgsja_:bb.a
  %indvars.iv598.unr = phi i64 [ %indvars.iv598.ph, %.lr.ph576.preheader ], [ %indvars.iv.next599.prol, %.lr.ph576.prol ]
  %i.kt = icmp ult i64 %i.kq, 7
  br i1 %i.kt, label %._crit_edge577, label %.lr.ph576

.lr.ph576:                                        ; preds = %.lr.ph576.prol.loopexit, %.lr.ph576
  %indvars.iv598 = phi i64 [ %indvars.iv.next599.7, %.lr.ph576 ], [ %indvars.iv598.unr, %.lr.ph576.prol.loopexit ] ; 11 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv598
  store double 1.000000e+00, ptr %i.ku, align 8, !tbaa !11
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv598
  store double 0.000000e+00, ptr %i.kv, align 8, !tbaa !11
  %i.kw = getelementptr [8 x i8], ptr %14, i64 %indvars.iv598
  store double 1.000000e+00, ptr %i.kw, align 8, !tbaa !11
  %i.kx = getelementptr [8 x i8], ptr %15, i64 %indvars.iv598
  store double 0.000000e+00, ptr %i.kx, align 8, !tbaa !11
  %indvars.iv.next599.1 = add nuw nsw i64 %indvars.iv598, 2 ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.1
  store double 1.000000e+00, ptr %i.ky, align 8, !tbaa !11
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.1
  store double 0.000000e+00, ptr %i.kz, align 8, !tbaa !11
  %indvars.iv.next599.2 = add nuw nsw i64 %indvars.iv598, 3 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.2
  store double 1.000000e+00, ptr %i.la, align 8, !tbaa !11
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.2
  store double 0.000000e+00, ptr %i.lb, align 8, !tbaa !11
  %indvars.iv.next599.3 = add nuw nsw i64 %indvars.iv598, 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.3
  store double 1.000000e+00, ptr %i.lc, align 8, !tbaa !11
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.3
  store double 0.000000e+00, ptr %i.ld, align 8, !tbaa !11
  %indvars.iv.next599.4 = add nuw nsw i64 %indvars.iv598, 5 ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.4
  store double 1.000000e+00, ptr %i.le, align 8, !tbaa !11
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.4
  store double 0.000000e+00, ptr %i.lf, align 8, !tbaa !11
  %indvars.iv.next599.5 = add nuw nsw i64 %indvars.iv598, 6 ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.5
  store double 1.000000e+00, ptr %i.lg, align 8, !tbaa !11
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.5
  store double 0.000000e+00, ptr %i.lh, align 8, !tbaa !11
  %indvars.iv.next599.6 = add nuw nsw i64 %indvars.iv598, 7 ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next599.6
  store double 1.000000e+00, ptr %i.li, align 8, !tbaa !11
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next599.6
  store double 0.000000e+00, ptr %i.lj, align 8, !tbaa !11
  %indvars.iv.next599.7 = add nuw nsw i64 %indvars.iv598, 8 ; 2 uses
  %exitcond601.not.7 = icmp eq i64 %indvars.iv.next599.7, %wide.trip.count
  br i1 %exitcond601.not.7, label %._crit_edge577, label %.lr.ph576, !llvm.loop !23

._crit_edge577:                                   ; preds = %.lr.ph576.prol.loopexit, %.lr.ph576, %middle.block, %vec.epilog.middle.block, %bb.bg
  %i.lk = load i32, ptr %7, align 4, !tbaa !8     ; 3 uses
  store i32 %i.lk, ptr %i.d, align 4, !tbaa !8
  %i.ll = load i32, ptr %3, align 4, !tbaa !8     ; 2 uses
  %i.lm = sub nsw i32 %i.ll, %i.jv                ; 2 uses
  store i32 %i.lm, ptr %i.e, align 4, !tbaa !8
  %i.ln = call i32 @llvm.smin.i32(i32 %i.lk, i32 %i.lm) ; 2 uses
  %.not523578 = icmp slt i32 %i.ln, 1
  br i1 %.not523578, label %._crit_edge583, label %.lr.ph582.preheader

.lr.ph582.preheader:                              ; preds = %._crit_edge577
  %i.lo = zext nneg i32 %i.ln to i64
  br label %.lr.ph582

.lr.ph582:                                        ; preds = %.lr.ph582.preheader, %bb.bo
  %indvars.iv602 = phi i64 [ 1, %.lr.ph582.preheader ], [ %indvars.iv.next603, %bb.bo ] ; 9 uses
  %.3.neg580 = phi i32 [ -1, %.lr.ph582.preheader ], [ %i.or, %bb.bo ] ; 3 uses
  %i.lp = load i32, ptr %6, align 4, !tbaa !8
  %i.lq = trunc nuw nsw i64 %indvars.iv602 to i32 ; 6 uses
  %i.lr = add nsw i32 %i.lp, %i.lq                ; 2 uses
  %i.ls = load i32, ptr %5, align 4, !tbaa !8
  %i.lt = load i32, ptr %7, align 4, !tbaa !8     ; 3 uses
  %i.lu = sub nsw i32 %i.ls, %i.lt
  %i.lv = add nsw i32 %i.lu, %i.lq                ; 2 uses
  %i.lw = mul nsw i32 %i.lv, %i.v
  %i.lx = add nsw i32 %i.lw, %i.lr
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ly ; 2 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !11 ; 2 uses
  store double %i.ma, ptr %i.g, align 8, !tbaa !11
  %i.mb = mul nsw i32 %i.lv, %i.y
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv602
  %i.me = getelementptr [8 x i8], ptr %i.md, i64 %i.mc ; 3 uses
  %i.mf = load double, ptr %i.me, align 8, !tbaa !11 ; 2 uses
  store double %i.mf, ptr %i.j, align 8, !tbaa !11
  %i.mg = fdiv double %i.mf, %i.ma                ; 5 uses
  %i.mh = fcmp ord double %i.mg, 0.000000e+00
  br i1 %i.mh, label %bb.bh, label %bb.bn

bb.bh:                                            ; preds = %.lr.ph582
  %i.mi = fcmp olt double %i.mg, 0.000000e+00
  br i1 %i.mi, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.mj = add nsw i32 %.3.neg580, 1
  %i.mk = add i32 %i.mj, %i.lt
  store i32 %i.mk, ptr %i.d, align 4, !tbaa !8
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull @c_b44, ptr noundef nonnull %i.me, ptr noundef nonnull %11) #5
  br i1 %i.au, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ml = mul nsw i64 %indvars.iv602, %i.by
  %i.mm = getelementptr [8 x i8], ptr %i.ai, i64 %i.ml
  %i.mn = getelementptr i8, ptr %i.mm, i64 8
  call void @dscal_(ptr noundef nonnull %4, ptr noundef nonnull @c_b44, ptr noundef %i.mn, ptr noundef nonnull @c__1) #5
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bh
  %i.mo = fcmp oge double %i.mg, 0.000000e+00
  %i.mp = fneg double %i.mg
  %i.mq = select i1 %i.mo, double %i.mg, double %i.mp
  store double %i.mq, ptr %i.f, align 8, !tbaa !11
  %i.mr = load i32, ptr %6, align 4, !tbaa !8
  %i.ms = sext i32 %i.mr to i64
  %i.mt = add nsw i64 %indvars.iv602, %i.ms       ; 2 uses
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.mt
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.mt
  call void @dlartg_(ptr noundef nonnull %i.f, ptr noundef nonnull @c_b15, ptr noundef nonnull %i.mu, ptr noundef nonnull %i.mv, ptr noundef nonnull %i.s) #5
  %i.mw = load i32, ptr %6, align 4, !tbaa !8
  %i.mx = add nsw i32 %i.mw, %i.lq                ; 2 uses
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.my
  %i.na = load double, ptr %i.mz, align 8, !tbaa !11 ; 2 uses
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.my
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !11 ; 2 uses
  %i.nd = fcmp ult double %i.na, %i.nc
  %i.ne = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.nf = add nsw i32 %.3.neg580, 1               ; 2 uses
  %i.ng = add i32 %i.nf, %i.ne
  store i32 %i.ng, ptr %i.d, align 4, !tbaa !8
  %i.nh = sub i32 %i.lq, %i.ne                    ; 2 uses
  br i1 %i.nd, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ni = fdiv double 1.000000e+00, %i.na
  store double %i.ni, ptr %i.f, align 8, !tbaa !11
  %i.nj = load i32, ptr %5, align 4, !tbaa !8
  %i.nk = add i32 %i.nh, %i.nj
  %i.nl = mul nsw i32 %i.nk, %i.v
  %i.nm = add nsw i32 %i.nl, %i.mx
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.nn
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef %i.no, ptr noundef nonnull %9) #5
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.np = fdiv double 1.000000e+00, %i.nc
  store double %i.np, ptr %i.f, align 8, !tbaa !11
  %i.nq = load i32, ptr %5, align 4, !tbaa !8
  %i.nr = add i32 %i.nh, %i.nq
  %i.ns = mul nsw i32 %i.nr, %i.y
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv602
  %i.nv = getelementptr [8 x i8], ptr %i.nu, i64 %i.nt
  call void @dscal_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef %i.nv, ptr noundef nonnull %11) #5
  %i.nw = load i32, ptr %7, align 4, !tbaa !8     ; 2 uses
  %i.nx = add i32 %i.nf, %i.nw
  store i32 %i.nx, ptr %i.d, align 4, !tbaa !8
  %i.ny = load i32, ptr %5, align 4, !tbaa !8
  %i.nz = sub nsw i32 %i.ny, %i.nw
  %i.oa = add nsw i32 %i.nz, %i.lq                ; 2 uses
  %i.ob = mul nsw i32 %i.oa, %i.y
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv602
  %i.oe = getelementptr [8 x i8], ptr %i.od, i64 %i.oc
  %i.of = load i32, ptr %6, align 4, !tbaa !8
  %i.og = add nsw i32 %i.of, %i.lq
  %i.oh = mul nsw i32 %i.oa, %i.v
  %i.oi = add nsw i32 %i.og, %i.oh
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.oj
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef %i.oe, ptr noundef nonnull %11, ptr noundef %i.ok, ptr noundef nonnull %9) #5
  br label %bb.bo

bb.bn:                                            ; preds = %.lr.ph582
  %i.ol = sext i32 %i.lr to i64                   ; 2 uses
  %i.om = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ol
  store double 0.000000e+00, ptr %i.om, align 8, !tbaa !11
  %i.on = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ol
  store double 1.000000e+00, ptr %i.on, align 8, !tbaa !11
  %i.oo = add nsw i32 %.3.neg580, 1
  %i.op = add i32 %i.oo, %i.lt
  store i32 %i.op, ptr %i.d, align 4, !tbaa !8
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.me, ptr noundef nonnull %11, ptr noundef nonnull %i.lz, ptr noundef nonnull %9) #5
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl
  %indvars.iv.next603 = add nuw nsw i64 %indvars.iv602, 1
  %.not523.not = icmp samesign ult i64 %indvars.iv602, %i.lo
  %i.oq = trunc nuw i64 %indvars.iv602 to i32
  %i.or = xor i32 %i.oq, -1
  br i1 %.not523.not, label %.lr.ph582, label %._crit_edge583.loopexit, !llvm.loop !24

._crit_edge583.loopexit:                          ; preds = %bb.bo
  %.pre621 = load i32, ptr %6, align 4, !tbaa !8
  %.pre622 = load i32, ptr %7, align 4, !tbaa !8
  %.pre623 = load i32, ptr %3, align 4, !tbaa !8
  br label %._crit_edge583

._crit_edge583:                                   ; preds = %._crit_edge583.loopexit, %._crit_edge577
  %i.os = phi i32 [ %.pre623, %._crit_edge583.loopexit ], [ %i.ll, %._crit_edge577 ] ; 2 uses
  %i.ot = phi i32 [ %.pre622, %._crit_edge583.loopexit ], [ %i.lk, %._crit_edge577 ] ; 3 uses
  %i.ou = phi i32 [ %.pre621, %._crit_edge583.loopexit ], [ %i.jv, %._crit_edge577 ] ; 3 uses
  %i.ov = add nsw i32 %i.ot, %i.ou                ; 4 uses
  %.not524.not584 = icmp slt i32 %i.os, %i.ov
  br i1 %.not524.not584, label %iter.check672, label %._crit_edge588

iter.check672:                                    ; preds = %._crit_edge583
  %i.ow = sext i32 %i.os to i64                   ; 6 uses
  %wide.trip.count609 = sext i32 %i.ov to i64
  %i.ox = sext i32 %i.ou to i64                   ; 2 uses
  %i.oy = sext i32 %i.ot to i64                   ; 2 uses
  %i.oz = add nsw i64 %i.ox, %i.oy
  %i.pa = sub nsw i64 %i.oz, %i.ow                ; 7 uses
  %min.iters.check661 = icmp ult i64 %i.pa, 4
  %i.pb = sub i64 %i.a, %i.b
  %diff.check660 = icmp ugt i64 %i.pb, -128
  %or.cond685 = or i1 %min.iters.check661, %diff.check660
  br i1 %or.cond685, label %.lr.ph587.preheader, label %vector.main.loop.iter.check662

vector.main.loop.iter.check662:                   ; preds = %iter.check672
  %min.iters.check663 = icmp ult i64 %i.pa, 16
  br i1 %min.iters.check663, label %vec.epilog.ph676, label %vector.ph664

vector.ph664:                                     ; preds = %vector.main.loop.iter.check662
  %i.pc = and i64 %i.pa, 12
  %n.vec665 = and i64 %i.pa, -16                  ; 4 uses
  %i.pd = add nsw i64 %n.vec665, %i.ow
  br label %vector.body666

vector.body666:                                   ; preds = %vector.body666, %vector.ph664
  %index667 = phi i64 [ 0, %vector.ph664 ], [ %index.next668, %vector.body666 ] ; 2 uses
  %i.pe = add i64 %index667, %i.ow                ; 2 uses
  %i.pf = getelementptr [8 x i8], ptr %14, i64 %i.pe ; 4 uses
  %i.pg = getelementptr i8, ptr %i.pf, i64 32
  %i.ph = getelementptr i8, ptr %i.pf, i64 64
  %i.pi = getelementptr i8, ptr %i.pf, i64 96
  store <4 x double> zeroinitializer, ptr %i.pf, align 8, !tbaa !11
  store <4 x double> zeroinitializer, ptr %i.pg, align 8, !tbaa !11
  store <4 x double> zeroinitializer, ptr %i.ph, align 8, !tbaa !11
  store <4 x double> zeroinitializer, ptr %i.pi, align 8, !tbaa !11
  %i.pj = getelementptr [8 x i8], ptr %15, i64 %i.pe ; 4 uses
  %i.pk = getelementptr i8, ptr %i.pj, i64 32
  %i.pl = getelementptr i8, ptr %i.pj, i64 64
  %i.pm = getelementptr i8, ptr %i.pj, i64 96
  store <4 x double> splat (double 1.000000e+00), ptr %i.pj, align 8, !tbaa !11
  store <4 x double> splat (double 1.000000e+00), ptr %i.pk, align 8, !tbaa !11
  store <4 x double> splat (double 1.000000e+00), ptr %i.pl, align 8, !tbaa !11
  store <4 x double> splat (double 1.000000e+00), ptr %i.pm, align 8, !tbaa !11
  %index.next668 = add nuw i64 %index667, 16      ; 2 uses
  %i.pn = icmp eq i64 %index.next668, %n.vec665
  br i1 %i.pn, label %middle.block669, label %vector.body666, !llvm.loop !25

middle.block669:                                  ; preds = %vector.body666
  %cmp.n670 = icmp eq i64 %i.pa, %n.vec665
  br i1 %cmp.n670, label %._crit_edge588, label %vec.epilog.iter.check674

vec.epilog.iter.check674:                         ; preds = %middle.block669
  %min.epilog.iters.check675 = icmp eq i64 %i.pc, 0
  br i1 %min.epilog.iters.check675, label %.lr.ph587.preheader, label %vec.epilog.ph676, !prof !19

vec.epilog.ph676:                                 ; preds = %vector.main.loop.iter.check662, %vec.epilog.iter.check674
  %vec.epilog.resume.val671 = phi i64 [ %n.vec665, %vec.epilog.iter.check674 ], [ 0, %vector.main.loop.iter.check662 ]
  %n.vec677 = and i64 %i.pa, -4                   ; 3 uses
  %i.po = add nsw i64 %n.vec677, %i.ow
  br label %vec.epilog.vector.body678

vec.epilog.vector.body678:                        ; preds = %vec.epilog.vector.body678, %vec.epilog.ph676
  %index679 = phi i64 [ %vec.epilog.resume.val671, %vec.epilog.ph676 ], [ %index.next680, %vec.epilog.vector.body678 ] ; 2 uses
  %i.pp = add i64 %index679, %i.ow                ; 2 uses
  %i.pq = getelementptr [8 x i8], ptr %14, i64 %i.pp
  store <4 x double> zeroinitializer, ptr %i.pq, align 8, !tbaa !11
  %i.pr = getelementptr [8 x i8], ptr %15, i64 %i.pp
  store <4 x double> splat (double 1.000000e+00), ptr %i.pr, align 8, !tbaa !11
  %index.next680 = add nuw i64 %index679, 4       ; 2 uses
  %i.ps = icmp eq i64 %index.next680, %n.vec677
  br i1 %i.ps, label %vec.epilog.middle.block681, label %vec.epilog.vector.body678, !llvm.loop !26

vec.epilog.middle.block681:                       ; preds = %vec.epilog.vector.body678
  %cmp.n682 = icmp eq i64 %i.pa, %n.vec677
  br i1 %cmp.n682, label %._crit_edge588, label %.lr.ph587.preheader

.lr.ph587.preheader:                              ; preds = %iter.check672, %vec.epilog.iter.check674, %vec.epilog.middle.block681
  %indvars.iv606.ph = phi i64 [ %i.ow, %iter.check672 ], [ %i.pd, %vec.epilog.iter.check674 ], [ %i.po, %vec.epilog.middle.block681 ] ; 4 uses
  %i.pt = add nsw i64 %i.ox, %i.oy                ; 2 uses
  %i.pu = sub nsw i64 %i.pt, %indvars.iv606.ph
  %xtraiter687 = and i64 %i.pu, 7                 ; 2 uses
  %lcmp.mod688.not = icmp eq i64 %xtraiter687, 0
  br i1 %lcmp.mod688.not, label %.lr.ph587.prol.loopexit, label %.lr.ph587.prol

.lr.ph587.prol:                                   ; preds = %.lr.ph587.preheader, %.lr.ph587.prol
  %indvars.iv606.prol = phi i64 [ %indvars.iv.next607.prol, %.lr.ph587.prol ], [ %indvars.iv606.ph, %.lr.ph587.preheader ] ; 3 uses
  %prol.iter689 = phi i64 [ %prol.iter689.next, %.lr.ph587.prol ], [ 0, %.lr.ph587.preheader ]
  %indvars.iv.next607.prol = add nsw i64 %indvars.iv606.prol, 1 ; 2 uses
  %i.pv = getelementptr [8 x i8], ptr %14, i64 %indvars.iv606.prol
  store double 0.000000e+00, ptr %i.pv, align 8, !tbaa !11
  %i.pw = getelementptr [8 x i8], ptr %15, i64 %indvars.iv606.prol
  store double 1.000000e+00, ptr %i.pw, align 8, !tbaa !11
  %prol.iter689.next = add i64 %prol.iter689, 1   ; 2 uses
  %prol.iter689.cmp.not = icmp eq i64 %prol.iter689.next, %xtraiter687
  br i1 %prol.iter689.cmp.not, label %.lr.ph587.prol.loopexit, label %.lr.ph587.prol, !llvm.loop !27

.lr.ph587.prol.loopexit:                          ; preds = %.lr.ph587.prol, %.lr.ph587.preheader
  %indvars.iv606.unr = phi i64 [ %indvars.iv606.ph, %.lr.ph587.preheader ], [ %indvars.iv.next607.prol, %.lr.ph587.prol ]
  %i.px = sub nsw i64 %indvars.iv606.ph, %i.pt
  %i.py = icmp ugt i64 %i.px, -8
  br i1 %i.py, label %._crit_edge588, label %.lr.ph587

.lr.ph587:                                        ; preds = %.lr.ph587.prol.loopexit, %.lr.ph587
  %indvars.iv606 = phi i64 [ %indvars.iv.next607.7, %.lr.ph587 ], [ %indvars.iv606.unr, %.lr.ph587.prol.loopexit ] ; 10 uses
  %indvars.iv.next607 = add nsw i64 %indvars.iv606, 1 ; 2 uses
  %i.pz = getelementptr [8 x i8], ptr %14, i64 %indvars.iv606
  store double 0.000000e+00, ptr %i.pz, align 8, !tbaa !11
  %i.qa = getelementptr [8 x i8], ptr %15, i64 %indvars.iv606
  store double 1.000000e+00, ptr %i.qa, align 8, !tbaa !11
  %indvars.iv.next607.1 = add nsw i64 %indvars.iv606, 2 ; 2 uses
  %i.qb = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607
  store double 0.000000e+00, ptr %i.qb, align 8, !tbaa !11
  %i.qc = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607
  store double 1.000000e+00, ptr %i.qc, align 8, !tbaa !11
  %indvars.iv.next607.2 = add nsw i64 %indvars.iv606, 3 ; 2 uses
  %i.qd = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.1
  store double 0.000000e+00, ptr %i.qd, align 8, !tbaa !11
  %i.qe = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.1
  store double 1.000000e+00, ptr %i.qe, align 8, !tbaa !11
  %indvars.iv.next607.3 = add nsw i64 %indvars.iv606, 4 ; 2 uses
  %i.qf = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.2
  store double 0.000000e+00, ptr %i.qf, align 8, !tbaa !11
  %i.qg = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.2
  store double 1.000000e+00, ptr %i.qg, align 8, !tbaa !11
  %indvars.iv.next607.4 = add nsw i64 %indvars.iv606, 5 ; 2 uses
  %i.qh = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.3
  store double 0.000000e+00, ptr %i.qh, align 8, !tbaa !11
  %i.qi = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.3
  store double 1.000000e+00, ptr %i.qi, align 8, !tbaa !11
  %indvars.iv.next607.5 = add nsw i64 %indvars.iv606, 6 ; 2 uses
  %i.qj = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.4
  store double 0.000000e+00, ptr %i.qj, align 8, !tbaa !11
  %i.qk = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.4
  store double 1.000000e+00, ptr %i.qk, align 8, !tbaa !11
  %indvars.iv.next607.6 = add nsw i64 %indvars.iv606, 7 ; 2 uses
  %i.ql = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.5
  store double 0.000000e+00, ptr %i.ql, align 8, !tbaa !11
  %i.qm = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.5
  store double 1.000000e+00, ptr %i.qm, align 8, !tbaa !11
  %indvars.iv.next607.7 = add nsw i64 %indvars.iv606, 8 ; 2 uses
  %i.qn = getelementptr [8 x i8], ptr %14, i64 %indvars.iv.next607.6
  store double 0.000000e+00, ptr %i.qn, align 8, !tbaa !11
  %i.qo = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.next607.6
  store double 1.000000e+00, ptr %i.qo, align 8, !tbaa !11
  %exitcond610.not.7 = icmp eq i64 %indvars.iv.next607.7, %wide.trip.count609
  br i1 %exitcond610.not.7, label %._crit_edge588, label %.lr.ph587, !llvm.loop !28

._crit_edge588:                                   ; preds = %.lr.ph587.prol.loopexit, %.lr.ph587, %middle.block669, %vec.epilog.middle.block681, %._crit_edge583
  %i.qp = load i32, ptr %5, align 4, !tbaa !8     ; 2 uses
  %i.qq = icmp slt i32 %i.ov, %i.qp
  br i1 %i.qq, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %._crit_edge588
  %i.qr = sext i32 %i.ot to i64
  %i.qs = sext i32 %i.ou to i64
  %i.qt = add nsw i64 %i.qr, %i.qs
  %i.qu = shl nsw i64 %i.qt, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %14, i64 %i.qu
  %i.qv = xor i32 %i.ov, -1
  %i.qw = add i32 %i.qp, %i.qv
  %i.qx = zext i32 %i.qw to i64
  %i.qy = shl nuw nsw i64 %i.qx, 3
  %i.qz = add nuw nsw i64 %i.qy, 8                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.qz, i1 false), !tbaa !11
  %scevgep611 = getelementptr i8, ptr %15, i64 %i.qu
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep611, i8 0, i64 %i.qz, i1 false), !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge588, %bb.bf
  %.0485559 = phi i32 [ 41, %bb.bf ], [ %.0485572, %._crit_edge588 ], [ %.0485572, %.loopexit.loopexit ]
  store i32 %.0485559, ptr %23, align 4, !tbaa !8
  br label %bb.bp

bb.bp:                                            ; preds = %.loopexit, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlags2_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @drot_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dcopy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlapll_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlartg_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"branch_weights", i32 4, i32 12}
!20 = distinct !{!20, !10, !17, !18}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !10, !17}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10, !17, !18}
!26 = distinct !{!26, !10, !17, !18}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !10, !17}
end_hunk_0
