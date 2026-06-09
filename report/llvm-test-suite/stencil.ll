begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@x_block_size = common dso_local local_unnamed_addr global i32 0, align 4
@y_block_size = common dso_local local_unnamed_addr global i32 0, align 4
@z_block_size = common dso_local local_unnamed_addr global i32 0, align 4
@stencil = common dso_local local_unnamed_addr global i32 0, align 4
@sorted_index = common dso_local local_unnamed_addr global ptr null, align 8
@num_refine = common dso_local local_unnamed_addr global i32 0, align 4
@sorted_list = common dso_local local_unnamed_addr global ptr null, align 8
@blocks = common dso_local local_unnamed_addr global ptr null, align 8
@parents = common dso_local local_unnamed_addr global ptr null, align 8
@my_pe = common dso_local local_unnamed_addr global i32 0, align 4
@num_pes = common dso_local local_unnamed_addr global i32 0, align 4
@max_num_blocks = common dso_local local_unnamed_addr global i32 0, align 4
@target_active = common dso_local local_unnamed_addr global i32 0, align 4
@target_max = common dso_local local_unnamed_addr global i32 0, align 4
@target_min = common dso_local local_unnamed_addr global i32 0, align 4
@uniform_refine = common dso_local local_unnamed_addr global i32 0, align 4
@num_vars = common dso_local local_unnamed_addr global i32 0, align 4
@comm_vars = common dso_local local_unnamed_addr global i32 0, align 4
@init_block_x = common dso_local local_unnamed_addr global i32 0, align 4
@init_block_y = common dso_local local_unnamed_addr global i32 0, align 4
@init_block_z = common dso_local local_unnamed_addr global i32 0, align 4
@reorder = common dso_local local_unnamed_addr global i32 0, align 4
@npx = common dso_local local_unnamed_addr global i32 0, align 4
@npy = common dso_local local_unnamed_addr global i32 0, align 4
@npz = common dso_local local_unnamed_addr global i32 0, align 4
@inbalance = common dso_local local_unnamed_addr global i32 0, align 4
@refine_freq = common dso_local local_unnamed_addr global i32 0, align 4
@report_diffusion = common dso_local local_unnamed_addr global i32 0, align 4
@checksum_freq = common dso_local local_unnamed_addr global i32 0, align 4
@stages_per_ts = common dso_local local_unnamed_addr global i32 0, align 4
@error_tol = common dso_local local_unnamed_addr global i32 0, align 4
@num_tsteps = common dso_local local_unnamed_addr global i32 0, align 4
@report_perf = common dso_local local_unnamed_addr global i32 0, align 4
@plot_freq = common dso_local local_unnamed_addr global i32 0, align 4
@lb_opt = common dso_local local_unnamed_addr global i32 0, align 4
@block_change = common dso_local local_unnamed_addr global i32 0, align 4
@code = common dso_local local_unnamed_addr global i32 0, align 4
@permute = common dso_local local_unnamed_addr global i32 0, align 4
@nonblocking = common dso_local local_unnamed_addr global i32 0, align 4
@refine_ghost = common dso_local local_unnamed_addr global i32 0, align 4
@max_num_parents = common dso_local local_unnamed_addr global i32 0, align 4
@num_parents = common dso_local local_unnamed_addr global i32 0, align 4
@max_active_parent = common dso_local local_unnamed_addr global i32 0, align 4
@cur_max_level = common dso_local local_unnamed_addr global i32 0, align 4
@num_blocks = common dso_local local_unnamed_addr global ptr null, align 8
@block_start = common dso_local local_unnamed_addr global ptr null, align 8
@num_active = common dso_local local_unnamed_addr global i32 0, align 4
@max_active_block = common dso_local local_unnamed_addr global i32 0, align 4
@global_active = common dso_local local_unnamed_addr global i32 0, align 4
@x_block_half = common dso_local local_unnamed_addr global i32 0, align 4
@y_block_half = common dso_local local_unnamed_addr global i32 0, align 4
@z_block_half = common dso_local local_unnamed_addr global i32 0, align 4
@tol = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@grid_sum = common dso_local local_unnamed_addr global ptr null, align 8
@p8 = common dso_local local_unnamed_addr global ptr null, align 8
@p2 = common dso_local local_unnamed_addr global ptr null, align 8
@mesh_size = common dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@max_mesh_size = common dso_local local_unnamed_addr global i32 0, align 4
@from = common dso_local local_unnamed_addr global ptr null, align 8
@to = common dso_local local_unnamed_addr global ptr null, align 8
@msg_len = common dso_local local_unnamed_addr global [3 x [4 x i32]] zeroinitializer, align 16
@local_max_b = common dso_local local_unnamed_addr global i32 0, align 4
@global_max_b = common dso_local local_unnamed_addr global i32 0, align 4
@num_objects = common dso_local local_unnamed_addr global i32 0, align 4
@objects = common dso_local local_unnamed_addr global ptr null, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @stencil_calc(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 7 uses
  %i.b = add nsw i32 %i.a, 2
  %i.c = zext i32 %i.b to i64
  %i.d = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 11 uses
  %i.e = add i32 %i.d, 2
  %i.f = zext i32 %i.e to i64                     ; 6 uses
  %i.g = load i32, ptr @z_block_size, align 4, !tbaa !4 ; 7 uses
  %i.h = add i32 %i.g, 2
  %i.i = zext i32 %i.h to i64                     ; 10 uses
  %i.j = mul nuw i64 %i.i, %i.f                   ; 5 uses
  %i.k = mul i64 %i.j, %i.c
  %i.l = alloca double, i64 %i.k, align 16        ; 6 uses
  %i.m = load i32, ptr @stencil, align 4, !tbaa !4
  %i.n = icmp eq i32 %i.m, 7
  %i.o = load ptr, ptr @sorted_index, align 8, !tbaa !8
  %i.p = load i32, ptr @num_refine, align 4, !tbaa !4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0                     ; 2 uses
  br i1 %i.n, label %.preheader255, label %.preheader264

.preheader264:                                    ; preds = %bb.a
  br i1 %i.u, label %.lr.ph, label %.loopexit256

.lr.ph:                                           ; preds = %.preheader264
  %i.v = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %i.w = load ptr, ptr @blocks, align 8, !tbaa !11
  %.not271 = icmp slt i32 %i.a, 1                 ; 2 uses
  %.not242268 = icmp slt i32 %i.d, 1              ; 2 uses
  %.not243266 = icmp slt i32 %i.g, 1              ; 2 uses
  %i.x = sext i32 %0 to i64                       ; 2 uses
  %i.y = add i32 %i.g, 1                          ; 2 uses
  %i.z = add i32 %i.d, 1
  %i.aa = add i32 %i.a, 1
  %i.ab = shl nuw nsw i64 %i.f, 3
  %i.ac = add nuw nsw i64 %i.ab, 8
  %i.ad = mul i64 %i.ac, %i.i
  %i.ae = shl i64 %i.j, 3
  %i.af = shl nuw nsw i64 %i.i, 3                 ; 3 uses
  %i.ag = zext i32 %i.g to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 3 uses
  %wide.trip.count353 = zext nneg i32 %i.t to i64
  %wide.trip.count332 = zext i32 %i.aa to i64
  %wide.trip.count327 = zext i32 %i.z to i64      ; 2 uses
  %wide.trip.count = zext i32 %i.y to i64         ; 3 uses
  %wide.trip.count348 = zext nneg i32 %i.a to i64
  %wide.trip.count343 = zext i32 %i.d to i64      ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ad
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = shl nuw nsw i64 %i.f, 3
  %i.al = add nuw nsw i64 %i.ak, 8
  %i.am = mul i64 %i.al, %i.i
  %i.an = mul nuw i64 %i.i, %i.f
  %i.ao = shl i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.f, %wide.trip.count327
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = add nsw i64 %i.aq, -8
  %i.as = mul i64 %i.ar, %i.i
  %i.at = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 8                ; 9 uses
  %1 = add nsw i64 %wide.trip.count, -1           ; 3 uses
  %i.av = getelementptr i8, ptr %i.l, i64 %i.am
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = getelementptr i8, ptr %i.l, i64 %i.as
  %2 = getelementptr i8, ptr %i.ax, i64 %i.at
  %min.iters.check = icmp ult i32 %i.y, 3
  %n.vec = and i64 %1, -2                         ; 2 uses
  %i.ay = or i64 %1, 1
  %cmp.n = icmp eq i64 %1, %n.vec
  %i.az = select i1 %.not271, i1 true, i1 %.not242268
  %or.cond574 = select i1 %i.az, i1 true, i1 %.not243266
  %xtraiter = and i64 %wide.trip.count343, 1
  %i.ba = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count343, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod590 = trunc i32 %i.d to i1
  br label %bb.c

.preheader255:                                    ; preds = %bb.a
  br i1 %i.u, label %.lr.ph313, label %.loopexit256

.lr.ph313:                                        ; preds = %.preheader255
  %i.bb = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %i.bc = load ptr, ptr @blocks, align 8, !tbaa !11
  %.not244295 = icmp slt i32 %i.a, 1              ; 2 uses
  %.not248292 = icmp slt i32 %i.d, 1              ; 2 uses
  %.not249288 = icmp slt i32 %i.g, 1              ; 2 uses
  %i.bd = sext i32 %0 to i64                      ; 2 uses
  %i.be = add i32 %i.g, 1                         ; 2 uses
  %i.bf = add i32 %i.d, 1
  %i.bg = add i32 %i.a, 1
  %i.bh = shl nuw nsw i64 %i.f, 3
  %i.bi = add nuw nsw i64 %i.bh, 8
  %i.bj = mul i64 %i.bi, %i.i
  %i.bk = shl i64 %i.j, 3
  %i.bl = shl nuw nsw i64 %i.i, 3                 ; 3 uses
  %i.bm = zext i32 %i.g to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3                ; 3 uses
  %wide.trip.count392 = zext nneg i32 %i.t to i64
  %wide.trip.count368 = zext i32 %i.bg to i64
  %wide.trip.count363 = zext i32 %i.bf to i64
  %wide.trip.count358 = zext i32 %i.be to i64     ; 2 uses
  %wide.trip.count387 = zext nneg i32 %i.a to i64
  %wide.trip.count382 = zext i32 %i.d to i64      ; 2 uses
  %i.bo = getelementptr i8, ptr %i.l, i64 %i.bj
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = add nsw i64 %wide.trip.count358, -1     ; 3 uses
  %min.iters.check552 = icmp ult i32 %i.be, 3
  %n.vec555 = and i64 %i.bq, -2                   ; 2 uses
  %i.br = or i64 %i.bq, 1
  %cmp.n569 = icmp eq i64 %i.bq, %n.vec555
  %i.bs = select i1 %.not244295, i1 true, i1 %.not248292
  %or.cond572 = select i1 %i.bs, i1 true, i1 %.not249288
  %xtraiter591 = and i64 %wide.trip.count382, 1
  %i.bt = icmp eq i32 %i.d, 1
  %unroll_iter594 = and i64 %wide.trip.count382, 2147483646
  %lcmp.mod592.not = icmp eq i64 %xtraiter591, 0
  %lcmp.mod593 = trunc i32 %i.d to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph313, %.loopexit
  %indvars.iv389 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next390, %.loopexit ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv389
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !12
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [192 x i8], ptr %i.bc, i64 %i.bx ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !14
  %i.ca = icmp slt i32 %i.bz, 0
  %brmerge = select i1 %i.ca, i1 true, i1 %.not244295
  %i.cb = select i1 %brmerge, i1 true, i1 %.not248292
  %or.cond = select i1 %i.cb, i1 true, i1 %.not249288
  br i1 %or.cond, label %.loopexit, label %.preheader252.lr.ph.split.split

.preheader252.lr.ph.split.split:                  ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 184
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !20
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.bd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21
  br label %.preheader252

.preheader253:                                    ; preds = %._crit_edge294.split
  br i1 %or.cond572, label %.loopexit, label %.preheader251.lr.ph.split.split

.preheader251.lr.ph.split.split:                  ; preds = %.preheader253
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 184
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !20
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.bd
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !21
  br label %.preheader251

.preheader252:                                    ; preds = %.preheader252.lr.ph.split.split, %._crit_edge294.split
  %indvars.iv365 = phi i64 [ 1, %.preheader252.lr.ph.split.split ], [ %indvars.iv.next366, %._crit_edge294.split ] ; 3 uses
  %i.ck = mul nuw nsw i64 %i.j, %indvars.iv365
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ck
  %i.cm = getelementptr [8 x i8], ptr %i.cf, i64 %indvars.iv365 ; 3 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 -8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !23
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !23
  br label %.preheader250

.preheader250:                                    ; preds = %.preheader252, %._crit_edge291
  %indvars.iv360 = phi i64 [ 1, %.preheader252 ], [ %indvars.iv.next361, %._crit_edge291 ] ; 5 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv360
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !25 ; 2 uses
  %i.cu = getelementptr [8 x i8], ptr %i.cp, i64 %indvars.iv360 ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 -8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !25 ; 2 uses
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !25 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !25 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv360
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !25 ; 2 uses
  %i.dc = mul nuw nsw i64 %indvars.iv360, %i.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dc ; 2 uses
  %.phi.trans.insert419 = getelementptr i8, ptr %i.cx, i64 8
  %.pre420 = load double, ptr %.phi.trans.insert419, align 8, !tbaa !27 ; 2 uses
  br i1 %min.iters.check552, label %scalar.ph551.preheader, label %vector.ph553

vector.ph553:                                     ; preds = %.preheader250
  %vector.recur.init558 = insertelement <2 x double> poison, double %.pre420, i64 1
  br label %vector.body556

vector.body556:                                   ; preds = %vector.body556, %vector.ph553
  %index557 = phi i64 [ 0, %vector.ph553 ], [ %index.next566, %vector.body556 ] ; 3 uses
  %vector.recur559 = phi <2 x double> [ %vector.recur.init558, %vector.ph553 ], [ %wide.load563, %vector.body556 ]
  %i.de = or disjoint i64 %index557, 1            ; 6 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.de
  %wide.load560 = load <2 x double>, ptr %i.df, align 8, !tbaa !27
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.de
  %wide.load561 = load <2 x double>, ptr %i.dg, align 8, !tbaa !27
  %i.dh = fadd <2 x double> %wide.load560, %wide.load561
  %i.di = getelementptr [8 x i8], ptr %i.cx, i64 %i.de
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %wide.load562 = load <2 x double>, ptr %i.dj, align 8, !tbaa !27
  %i.dk = fadd <2 x double> %i.dh, %wide.load562
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index557
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load563 = load <2 x double>, ptr %i.dm, align 8, !tbaa !27 ; 4 uses
  %i.dn = shufflevector <2 x double> %vector.recur559, <2 x double> %wide.load563, <2 x i32> <i32 1, i32 2>
  %i.do = fadd <2 x double> %i.dk, %i.dn
  %i.dp = fadd <2 x double> %i.do, %wide.load563
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.de
  %wide.load564 = load <2 x double>, ptr %i.dq, align 8, !tbaa !27
  %i.dr = fadd <2 x double> %i.dp, %wide.load564
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.de
  %wide.load565 = load <2 x double>, ptr %i.ds, align 8, !tbaa !27
  %i.dt = fadd <2 x double> %i.dr, %wide.load565
  %i.du = fdiv <2 x double> %i.dt, splat (double 7.000000e+00)
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.de
  store <2 x double> %i.du, ptr %i.dv, align 8, !tbaa !27
  %index.next566 = add nuw i64 %index557, 2       ; 2 uses
  %i.dw = icmp eq i64 %index.next566, %n.vec555
  br i1 %i.dw, label %middle.block567, label %vector.body556, !llvm.loop !29

middle.block567:                                  ; preds = %vector.body556
  %vector.recur.extract568 = extractelement <2 x double> %wide.load563, i64 1
  br i1 %cmp.n569, label %._crit_edge291, label %scalar.ph551.preheader

scalar.ph551.preheader:                           ; preds = %.preheader250, %middle.block567
  %.ph = phi double [ %.pre420, %.preheader250 ], [ %vector.recur.extract568, %middle.block567 ]
  %indvars.iv355.ph = phi i64 [ 1, %.preheader250 ], [ %i.br, %middle.block567 ]
  br label %scalar.ph551

scalar.ph551:                                     ; preds = %scalar.ph551.preheader, %scalar.ph551
  %i.dx = phi double [ %i.ej, %scalar.ph551 ], [ %.ph, %scalar.ph551.preheader ]
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %scalar.ph551 ], [ %indvars.iv355.ph, %scalar.ph551.preheader ] ; 7 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv355
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !27
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv355
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !27
  %i.ec = fadd double %i.dz, %i.eb
  %i.ed = getelementptr [8 x i8], ptr %i.cx, i64 %indvars.iv355
  %i.ee = getelementptr i8, ptr %i.ed, i64 -8
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !27
  %i.eg = fadd double %i.ec, %i.ef
  %i.eh = fadd double %i.eg, %i.dx
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next356
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !27 ; 2 uses
  %i.ek = fadd double %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv355
  %i.em = load double, ptr %i.el, align 8, !tbaa !27
  %i.en = fadd double %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv355
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !27
  %i.eq = fadd double %i.en, %i.ep
  %i.er = fdiv double %i.eq, 7.000000e+00
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv355
  store double %i.er, ptr %i.es, align 8, !tbaa !27
  %exitcond359.not = icmp eq i64 %indvars.iv.next356, %wide.trip.count358
  br i1 %exitcond359.not, label %._crit_edge291, label %scalar.ph551, !llvm.loop !33

._crit_edge291:                                   ; preds = %scalar.ph551, %middle.block567
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %._crit_edge294.split, label %.preheader250, !llvm.loop !34

._crit_edge294.split:                             ; preds = %._crit_edge291
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %exitcond369.not = icmp eq i64 %indvars.iv.next366, %wide.trip.count368
  br i1 %exitcond369.not, label %.preheader253, label %.preheader252, !llvm.loop !35

.preheader251:                                    ; preds = %.preheader251.lr.ph.split.split, %._crit_edge306.split
  %indvars.iv384 = phi i64 [ 1, %.preheader251.lr.ph.split.split ], [ %indvars.iv.next385, %._crit_edge306.split ] ; 2 uses
  %indvar371 = phi i64 [ 0, %.preheader251.lr.ph.split.split ], [ %indvar.next372, %._crit_edge306.split ] ; 2 uses
  %i.et = mul i64 %i.bk, %indvar371
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv384
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !23 ; 3 uses
  %i.ew = getelementptr i8, ptr %i.bp, i64 %i.et  ; 3 uses
  br i1 %i.bt, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader251, %.preheader
  %indvars.iv379 = phi i64 [ %indvars.iv.next380.1, %.preheader ], [ 1, %.preheader251 ] ; 3 uses
  %indvar373 = phi i64 [ %indvar.next374.1, %.preheader ], [ 0, %.preheader251 ] ; 3 uses
  %niter595 = phi i64 [ %niter595.next.1, %.preheader ], [ 0, %.preheader251 ]
  %i.ex = mul i64 %i.bl, %indvar373
  %scevgep375 = getelementptr i8, ptr %i.ew, i64 %i.ex
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv379
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !25
  %scevgep370 = getelementptr nuw i8, ptr %i.ez, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep370, ptr align 8 %scevgep375, i64 %i.bn, i1 false), !tbaa !27
  %indvar.next374 = or disjoint i64 %indvar373, 1
  %i.fa = mul i64 %i.bl, %indvar.next374
  %scevgep375.1 = getelementptr i8, ptr %i.ew, i64 %i.fa
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv379
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !25
  %scevgep370.1 = getelementptr nuw i8, ptr %i.fd, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep370.1, ptr align 8 %scevgep375.1, i64 %i.bn, i1 false), !tbaa !27
  %indvars.iv.next380.1 = add nuw nsw i64 %indvars.iv379, 2 ; 2 uses
  %indvar.next374.1 = add nuw nsw i64 %indvar373, 2 ; 2 uses
  %niter595.next.1 = add i64 %niter595, 2         ; 2 uses
  %niter595.ncmp.1 = icmp eq i64 %niter595.next.1, %unroll_iter594
  br i1 %niter595.ncmp.1, label %._crit_edge306.split.unr-lcssa, label %.preheader, !llvm.loop !36

._crit_edge306.split.unr-lcssa:                   ; preds = %.preheader
  br i1 %lcmp.mod592.not, label %._crit_edge306.split, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge306.split.unr-lcssa, %.preheader251
  %indvars.iv379.epil.init = phi i64 [ 1, %.preheader251 ], [ %indvars.iv.next380.1, %._crit_edge306.split.unr-lcssa ]
  %indvar373.epil.init = phi i64 [ 0, %.preheader251 ], [ %indvar.next374.1, %._crit_edge306.split.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod593)
  %i.fe = mul i64 %i.bl, %indvar373.epil.init
  %scevgep375.epil = getelementptr i8, ptr %i.ew, i64 %i.fe
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv379.epil.init
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !25
  %scevgep370.epil = getelementptr nuw i8, ptr %i.fg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep370.epil, ptr align 8 %scevgep375.epil, i64 %i.bn, i1 false), !tbaa !27
  br label %._crit_edge306.split

._crit_edge306.split:                             ; preds = %._crit_edge306.split.unr-lcssa, %.preheader.epil.preheader
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1
  %indvar.next372 = add nuw nsw i64 %indvar371, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvar.next372, %wide.trip.count387
  br i1 %exitcond388.not, label %.loopexit, label %.preheader251, !llvm.loop !37

.loopexit:                                        ; preds = %._crit_edge306.split, %bb.b, %.preheader253
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count392
  br i1 %exitcond393.not, label %.loopexit256, label %bb.b, !llvm.loop !38

bb.c:                                             ; preds = %.lr.ph, %.loopexit262
  %indvars.iv350 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next351, %.loopexit262 ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv350
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !12
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [192 x i8], ptr %i.w, i64 %i.fk ; 3 uses
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !14
  %i.fn = icmp slt i32 %i.fm, 0
  %brmerge439 = select i1 %i.fn, i1 true, i1 %.not271
  %i.fo = select i1 %brmerge439, i1 true, i1 %.not242268
  %or.cond573 = select i1 %i.fo, i1 true, i1 %.not243266
  br i1 %or.cond573, label %.loopexit262, label %.preheader260.lr.ph.split.split

.preheader260.lr.ph.split.split:                  ; preds = %bb.c
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 184
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !20
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.x
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !21
  br label %.preheader260

.preheader261:                                    ; preds = %._crit_edge270.split
  br i1 %or.cond574, label %.loopexit262, label %.preheader259.lr.ph.split.split

.preheader259.lr.ph.split.split:                  ; preds = %.preheader261
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 184
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !20
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.x
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !21
  br label %.preheader259

.preheader260:                                    ; preds = %.preheader260.lr.ph.split.split, %._crit_edge270.split
  %indvar443 = phi i64 [ 0, %.preheader260.lr.ph.split.split ], [ %indvar.next444, %._crit_edge270.split ] ; 2 uses
  %indvars.iv329 = phi i64 [ 1, %.preheader260.lr.ph.split.split ], [ %indvars.iv.next330, %._crit_edge270.split ] ; 3 uses
  %i.fx = mul i64 %i.ao, %indvar443               ; 2 uses
  %scevgep445 = getelementptr i8, ptr %i.aw, i64 %i.fx ; 2 uses
  %scevgep446 = getelementptr i8, ptr %2, i64 %i.fx ; 2 uses
  %i.fy = mul nuw nsw i64 %i.j, %indvars.iv329
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fy
  %i.ga = getelementptr [8 x i8], ptr %i.fs, i64 %indvars.iv329 ; 3 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 -8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !23 ; 3 uses
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !23 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !23 ; 3 uses
  %.pre = load ptr, ptr %i.gc, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %.pre394 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 3 uses
  %.pre395 = load ptr, ptr %i.gd, align 8, !tbaa !25
  %.phi.trans.insert396 = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %.pre397 = load ptr, ptr %.phi.trans.insert396, align 8, !tbaa !25 ; 2 uses
  %.pre398 = load ptr, ptr %i.gf, align 8, !tbaa !25
  %.phi.trans.insert399 = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.pre400 = load ptr, ptr %.phi.trans.insert399, align 8, !tbaa !25 ; 2 uses
  %.pre401.pre = load double, ptr %.pre394, align 8, !tbaa !27
  %.phi.trans.insert402.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre394, i64 8
  %.pre403.pre = load double, ptr %.phi.trans.insert402.phi.trans.insert, align 8, !tbaa !27
  %i.gg = load <2 x double>, ptr %.pre397, align 8, !tbaa !27 ; 2 uses
  %i.gh = load <2 x double>, ptr %.pre400, align 8, !tbaa !27 ; 2 uses
  %i.gi = shufflevector <2 x double> %i.gg, <2 x double> %i.gh, <2 x i32> <i32 1, i32 3>
  %i.gj = shufflevector <2 x double> %i.gg, <2 x double> %i.gh, <2 x i32> <i32 0, i32 2>
  %i.gk = insertelement <8 x ptr> poison, ptr %scevgep445, i64 0
  %i.gl = shufflevector <8 x ptr> %i.gk, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.gm = insertelement <8 x ptr> poison, ptr %scevgep446, i64 0
  %i.gn = shufflevector <8 x ptr> %i.gm, <8 x ptr> poison, <8 x i32> zeroinitializer
  br label %.preheader258

.preheader258:                                    ; preds = %.preheader260, %._crit_edge
  %.pre403 = phi double [ %.pre403.pre, %.preheader260 ], [ %.pre406, %._crit_edge ] ; 3 uses
  %.pre401 = phi double [ %.pre401.pre, %.preheader260 ], [ %.pre404, %._crit_edge ] ; 3 uses
  %i.go = phi ptr [ %.pre400, %.preheader260 ], [ %i.hb, %._crit_edge ] ; 5 uses
  %i.gp = phi ptr [ %.pre398, %.preheader260 ], [ %i.go, %._crit_edge ] ; 7 uses
  %i.gq = phi ptr [ %.pre397, %.preheader260 ], [ %i.gz, %._crit_edge ] ; 5 uses
  %i.gr = phi ptr [ %.pre395, %.preheader260 ], [ %i.gq, %._crit_edge ] ; 7 uses
  %i.gs = phi ptr [ %.pre394, %.preheader260 ], [ %i.gx, %._crit_edge ] ; 5 uses
  %i.gt = phi ptr [ %.pre, %.preheader260 ], [ %i.gs, %._crit_edge ] ; 8 uses
  %indvars.iv324 = phi i64 [ 1, %.preheader260 ], [ %indvars.iv.next325, %._crit_edge ] ; 2 uses
  %i.gu = phi <2 x double> [ %i.gi, %.preheader260 ], [ %i.ng, %._crit_edge ] ; 4 uses
  %i.gv = phi <2 x double> [ %i.gj, %.preheader260 ], [ %i.nh, %._crit_edge ] ; 4 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 5 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.next325
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !25 ; 7 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next325
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !25 ; 7 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.next325
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !25 ; 7 uses
  %i.hc = mul nuw nsw i64 %indvars.iv324, %i.i
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.hc ; 2 uses
  %.pre404 = load double, ptr %i.gx, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert405 = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.pre406 = load double, ptr %.phi.trans.insert405, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert411 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %.phi.trans.insert417 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.he = load <2 x double>, ptr %i.gz, align 8, !tbaa !27 ; 5 uses
  %.pre412 = load double, ptr %.phi.trans.insert411, align 8, !tbaa !27 ; 2 uses
  %i.hf = load <2 x double>, ptr %i.hb, align 8, !tbaa !27 ; 5 uses
  %.pre418 = load double, ptr %.phi.trans.insert417, align 8, !tbaa !27 ; 2 uses
  %i.hg = extractelement <2 x double> %i.he, i64 0 ; 2 uses
  %i.hh = extractelement <2 x double> %i.hf, i64 0 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader258
  %scevgep447 = getelementptr nuw i8, ptr %i.gs, i64 16
  %scevgep448 = getelementptr i8, ptr %i.gs, i64 %i.au
  %scevgep449 = getelementptr i8, ptr %i.gt, i64 %i.au
  %i.hi = insertelement <2 x ptr> poison, ptr %i.gx, i64 0
  %i.hj = insertelement <2 x ptr> %i.hi, ptr %i.gq, i64 1
  %i.hk = getelementptr i8, <2 x ptr> %i.hj, i64 16
  %scevgep451 = getelementptr i8, ptr %i.gx, i64 %i.au
  %scevgep453 = getelementptr i8, ptr %i.gq, i64 %i.au
  %scevgep454 = getelementptr i8, ptr %i.gr, i64 %i.au
  %scevgep455 = getelementptr i8, ptr %i.gz, i64 16
  %scevgep456 = getelementptr i8, ptr %i.gz, i64 %i.au
  %scevgep457 = getelementptr i8, ptr %i.go, i64 16
  %scevgep458 = getelementptr i8, ptr %i.go, i64 %i.au
  %scevgep459 = getelementptr i8, ptr %i.gp, i64 %i.au
  %scevgep460 = getelementptr i8, ptr %i.hb, i64 16
  %scevgep461 = getelementptr i8, ptr %i.hb, i64 %i.au
  %i.hl = insertelement <8 x ptr> poison, ptr %scevgep448, i64 0
  %i.hm = insertelement <8 x ptr> %i.hl, ptr %scevgep449, i64 1
  %i.hn = insertelement <8 x ptr> %i.hm, ptr %scevgep451, i64 2
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %scevgep453, i64 3
  %i.hp = insertelement <8 x ptr> %i.ho, ptr %scevgep454, i64 4
  %i.hq = insertelement <8 x ptr> %i.hp, ptr %scevgep456, i64 5
  %i.hr = insertelement <8 x ptr> %i.hq, ptr %scevgep458, i64 6
  %i.hs = insertelement <8 x ptr> %i.hr, ptr %scevgep459, i64 7
  %i.ht = icmp ult <8 x ptr> %i.gl, %i.hs
  %i.hu = insertelement <8 x ptr> poison, ptr %scevgep447, i64 0
  %i.hv = insertelement <8 x ptr> %i.hu, ptr %i.gt, i64 1
  %i.hw = shufflevector <2 x ptr> %i.hk, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hx = shufflevector <8 x ptr> %i.hv, <8 x ptr> %i.hw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hy = insertelement <8 x ptr> %i.hx, ptr %i.gr, i64 4
  %i.hz = insertelement <8 x ptr> %i.hy, ptr %scevgep455, i64 5
  %i.ia = insertelement <8 x ptr> %i.hz, ptr %scevgep457, i64 6
  %i.ib = insertelement <8 x ptr> %i.ia, ptr %i.gp, i64 7
  %i.ic = icmp ult <8 x ptr> %i.ib, %i.gn
  %i.id = and <8 x i1> %i.ht, %i.ic
  %bound0489 = icmp ult ptr %scevgep445, %scevgep461
  %bound1490 = icmp ult ptr %scevgep460, %scevgep446
  %found.conflict491 = and i1 %bound0489, %bound1490
  %i.ie = bitcast <8 x i1> %i.id to i8
  %i.if = icmp ne i8 %i.ie, 0
  %op.rdx578 = or i1 %i.if, %found.conflict491
  br i1 %op.rdx578, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ig = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ih = shufflevector <2 x double> %i.he, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ii = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ij = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %vector.recur.init507 = insertelement <2 x double> poison, double %.pre406, i64 1
  %vector.recur.init509 = insertelement <2 x double> poison, double %.pre404, i64 1
  %vector.recur.init511 = insertelement <2 x double> poison, double %.pre403, i64 1
  %vector.recur.init513 = insertelement <2 x double> poison, double %.pre401, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <2 x double> [ %i.hf, %vector.ph ], [ %wide.load528, %vector.body ] ; 2 uses
  %vector.recur494 = phi <2 x double> [ %i.ig, %vector.ph ], [ %i.kg, %vector.body ]
  %vector.recur496 = phi <2 x double> [ %i.gu, %vector.ph ], [ %wide.load527, %vector.body ] ; 2 uses
  %vector.recur498 = phi <2 x double> [ %i.gv, %vector.ph ], [ %i.ka, %vector.body ]
  %vector.recur500 = phi <2 x double> [ %i.he, %vector.ph ], [ %wide.load523, %vector.body ] ; 2 uses
  %vector.recur502 = phi <2 x double> [ %i.ih, %vector.ph ], [ %i.jp, %vector.body ]
  %vector.recur504 = phi <2 x double> [ %i.ii, %vector.ph ], [ %wide.load522, %vector.body ] ; 2 uses
  %vector.recur506 = phi <2 x double> [ %i.ij, %vector.ph ], [ %i.jj, %vector.body ]
  %vector.recur508 = phi <2 x double> [ %vector.recur.init507, %vector.ph ], [ %wide.load518, %vector.body ] ; 2 uses
  %vector.recur510 = phi <2 x double> [ %vector.recur.init509, %vector.ph ], [ %i.iy, %vector.body ]
  %vector.recur512 = phi <2 x double> [ %vector.recur.init511, %vector.ph ], [ %wide.load517, %vector.body ] ; 2 uses
  %vector.recur514 = phi <2 x double> [ %vector.recur.init513, %vector.ph ], [ %i.is, %vector.body ]
  %i.ik = or disjoint i64 %index, 1               ; 4 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %index
  %wide.load = load <2 x double>, ptr %i.il, align 8, !tbaa !27, !alias.scope !39
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.ik
  %wide.load515 = load <2 x double>, ptr %i.im, align 8, !tbaa !27, !alias.scope !39
  %i.in = fadd <2 x double> %wide.load, %wide.load515
  %i.io = add nuw nsw i64 %index, 2               ; 9 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.io
  %wide.load516 = load <2 x double>, ptr %i.ip, align 8, !tbaa !27, !alias.scope !39
  %i.iq = fadd <2 x double> %i.in, %wide.load516
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.io
  %wide.load517 = load <2 x double>, ptr %i.ir, align 8, !tbaa !27, !alias.scope !42 ; 5 uses
  %i.is = shufflevector <2 x double> %vector.recur512, <2 x double> %wide.load517, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.it = shufflevector <2 x double> %vector.recur514, <2 x double> %vector.recur512, <2 x i32> <i32 1, i32 3>
  %i.iu = fadd <2 x double> %i.iq, %i.it
  %i.iv = fadd <2 x double> %i.iu, %i.is
  %i.iw = fadd <2 x double> %i.iv, %wide.load517
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.io
  %wide.load518 = load <2 x double>, ptr %i.ix, align 8, !tbaa !27, !alias.scope !44 ; 5 uses
  %i.iy = shufflevector <2 x double> %vector.recur508, <2 x double> %wide.load518, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.iz = shufflevector <2 x double> %vector.recur510, <2 x double> %vector.recur508, <2 x i32> <i32 1, i32 3>
  %i.ja = fadd <2 x double> %i.iw, %i.iz
  %i.jb = fadd <2 x double> %i.ja, %i.iy
  %i.jc = fadd <2 x double> %i.jb, %wide.load518
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index
  %wide.load519 = load <2 x double>, ptr %i.jd, align 8, !tbaa !27, !alias.scope !46
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ik
  %wide.load520 = load <2 x double>, ptr %i.je, align 8, !tbaa !27, !alias.scope !46
  %i.jf = fadd <2 x double> %wide.load519, %wide.load520
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.io
  %wide.load521 = load <2 x double>, ptr %i.jg, align 8, !tbaa !27, !alias.scope !46
  %i.jh = fadd <2 x double> %i.jf, %wide.load521
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.io
  %wide.load522 = load <2 x double>, ptr %i.ji, align 8, !tbaa !27, !alias.scope !48 ; 5 uses
  %i.jj = shufflevector <2 x double> %vector.recur504, <2 x double> %wide.load522, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jk = shufflevector <2 x double> %vector.recur506, <2 x double> %vector.recur504, <2 x i32> <i32 1, i32 3>
  %i.jl = fadd <2 x double> %i.jh, %i.jk
  %i.jm = fadd <2 x double> %i.jl, %i.jj
  %i.jn = fadd <2 x double> %i.jm, %wide.load522
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.io
  %wide.load523 = load <2 x double>, ptr %i.jo, align 8, !tbaa !27, !alias.scope !50 ; 5 uses
  %i.jp = shufflevector <2 x double> %vector.recur500, <2 x double> %wide.load523, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jq = shufflevector <2 x double> %vector.recur502, <2 x double> %vector.recur500, <2 x i32> <i32 1, i32 3>
  %i.jr = fadd <2 x double> %i.jn, %i.jq
  %i.js = fadd <2 x double> %i.jr, %i.jp
  %i.jt = fadd <2 x double> %i.js, %wide.load523
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.gp, i64 %index
  %wide.load524 = load <2 x double>, ptr %i.ju, align 8, !tbaa !27, !alias.scope !52
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.ik
  %wide.load525 = load <2 x double>, ptr %i.jv, align 8, !tbaa !27, !alias.scope !52
  %i.jw = fadd <2 x double> %wide.load524, %wide.load525
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.io
  %wide.load526 = load <2 x double>, ptr %i.jx, align 8, !tbaa !27, !alias.scope !52
  %i.jy = fadd <2 x double> %i.jw, %wide.load526
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.io
  %wide.load527 = load <2 x double>, ptr %i.jz, align 8, !tbaa !27, !alias.scope !54 ; 5 uses
  %i.ka = shufflevector <2 x double> %vector.recur496, <2 x double> %wide.load527, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kb = shufflevector <2 x double> %vector.recur498, <2 x double> %vector.recur496, <2 x i32> <i32 1, i32 3>
  %i.kc = fadd <2 x double> %i.jy, %i.kb
  %i.kd = fadd <2 x double> %i.kc, %i.ka
  %i.ke = fadd <2 x double> %i.kd, %wide.load527
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.io
  %wide.load528 = load <2 x double>, ptr %i.kf, align 8, !tbaa !27, !alias.scope !56 ; 5 uses
  %i.kg = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load528, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kh = shufflevector <2 x double> %vector.recur494, <2 x double> %vector.recur, <2 x i32> <i32 1, i32 3>
  %i.ki = fadd <2 x double> %i.ke, %i.kh
  %i.kj = fadd <2 x double> %i.ki, %i.kg
end_hunk_0
