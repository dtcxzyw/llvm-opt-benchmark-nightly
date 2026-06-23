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
  %i.a = load i32, ptr @x_block_size, align 4, !tbaa !4
  %.fr = freeze i32 %i.a                          ; 7 uses
  %i.b = add nsw i32 %.fr, 2
  %i.c = zext i32 %i.b to i64
  %i.d = load i32, ptr @y_block_size, align 4, !tbaa !4
  %.fr338 = freeze i32 %i.d                       ; 11 uses
  %i.e = add i32 %.fr338, 2
  %i.f = zext i32 %i.e to i64                     ; 6 uses
  %i.g = load i32, ptr @z_block_size, align 4, !tbaa !4
  %.fr339 = freeze i32 %i.g                       ; 7 uses
  %i.h = add i32 %.fr339, 2
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
  br i1 %i.u, label %.preheader264.a, label %.loopexit256

.preheader264.a:                                  ; preds = %.preheader264
  %1 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %2 = load ptr, ptr @blocks, align 8, !tbaa !11
  %.not271 = icmp slt i32 %.fr, 1
  %.not243266 = icmp slt i32 %.fr339, 1           ; 2 uses
  %3 = sext i32 %0 to i64                         ; 2 uses
  %.not240277 = icmp slt i32 %.fr338, 1
  %or.cond = or i1 %.not271, %.not240277
  br i1 %or.cond, label %.loopexit256, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader264.a
  %i.v = add i32 %.fr339, 1                       ; 2 uses
  %i.w = add nuw i32 %.fr338, 1
  %i.x = add nuw i32 %.fr, 1
  %i.y = shl nuw nsw i64 %i.f, 3
  %i.z = add nuw nsw i64 %i.y, 8
  %i.aa = mul i64 %i.z, %i.i
  %i.ab = shl i64 %i.j, 3
  %i.ac = shl nuw nsw i64 %i.i, 3                 ; 3 uses
  %i.ad = zext i32 %.fr339 to i64
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 3 uses
  %wide.trip.count353.a = zext nneg i32 %i.t to i64
  %wide.trip.count332 = zext i32 %i.x to i64
  %wide.trip.count327 = zext i32 %i.w to i64      ; 2 uses
  %wide.trip.count = zext i32 %i.v to i64         ; 3 uses
  %wide.trip.count348 = zext nneg i32 %.fr to i64
  %wide.trip.count343 = zext nneg i32 %.fr338 to i64 ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.aa
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = shl nuw nsw i64 %i.f, 3
  %i.ai = add nuw nsw i64 %i.ah, 8
  %i.aj = mul i64 %i.ai, %i.i
  %i.ak = mul nuw i64 %i.i, %i.f
  %i.al = shl i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.f, %wide.trip.count327
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = add nsw i64 %i.an, -8
  %i.ap = mul i64 %i.ao, %i.i
  %i.aq = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.ar = add nuw nsw i64 %i.aq, 8                ; 9 uses
  %i.as = getelementptr i8, ptr %i.l, i64 %i.aj
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = getelementptr i8, ptr %i.l, i64 %i.ap
  %i.av = getelementptr i8, ptr %i.au, i64 %i.aq
  %i.aw = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i32 %i.v, 3
  %n.vec = and i64 %i.aw, -2                      ; 2 uses
  %i.ax = or i64 %i.aw, 1
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  %xtraiter = and i64 %wide.trip.count343, 1
  %i.ay = icmp eq i32 %.fr338, 1
  %unroll_iter = and i64 %wide.trip.count343, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod590 = trunc i32 %.fr338 to i1
  br label %bb.c

.preheader255:                                    ; preds = %bb.a
  br i1 %i.u, label %.lr.ph313, label %.loopexit256

.lr.ph313:                                        ; preds = %.preheader255
  %i.az = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %i.ba = load ptr, ptr @blocks, align 8, !tbaa !11
  %.not244295 = icmp slt i32 %.fr, 1              ; 2 uses
  %.not248292 = icmp slt i32 %.fr338, 1           ; 2 uses
  %.not249288 = icmp slt i32 %.fr339, 1           ; 2 uses
  %i.bb = sext i32 %0 to i64                      ; 2 uses
  %i.bc = add i32 %.fr339, 1                      ; 2 uses
  %i.bd = add i32 %.fr338, 1
  %i.be = add i32 %.fr, 1
  %i.bf = shl nuw nsw i64 %i.f, 3
  %i.bg = add nuw nsw i64 %i.bf, 8
  %i.bh = mul i64 %i.bg, %i.i
  %i.bi = shl i64 %i.j, 3
  %i.bj = shl nuw nsw i64 %i.i, 3                 ; 3 uses
  %i.bk = zext i32 %.fr339 to i64
  %i.bl = shl nuw nsw i64 %i.bk, 3                ; 3 uses
  %wide.trip.count392 = zext nneg i32 %i.t to i64
  %brmerge = or i1 %.not248292, %.not249288
  %wide.trip.count368 = zext i32 %i.be to i64
  %wide.trip.count363 = zext i32 %i.bd to i64
  %wide.trip.count358 = zext i32 %i.bc to i64     ; 2 uses
  %brmerge336 = or i1 %.not248292, %.not249288    ; 2 uses
  %wide.trip.count387 = zext nneg i32 %.fr to i64
  %wide.trip.count382 = zext i32 %.fr338 to i64   ; 2 uses
  %i.bm = getelementptr i8, ptr %i.l, i64 %i.bh
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = add nsw i64 %wide.trip.count358, -1     ; 3 uses
  %min.iters.check552 = icmp ult i32 %i.bc, 3
  %n.vec555 = and i64 %i.bo, -2                   ; 2 uses
  %i.bp = or i64 %i.bo, 1
  %cmp.n569 = icmp eq i64 %i.bo, %n.vec555
  %brmerge506 = or i1 %.not244295, %brmerge336
  %xtraiter591 = and i64 %wide.trip.count382, 1
  %i.bq = icmp eq i32 %.fr338, 1
  %unroll_iter594 = and i64 %wide.trip.count382, 4294967294
  %lcmp.mod592.not = icmp eq i64 %xtraiter591, 0
  %lcmp.mod593 = trunc i32 %.fr338 to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph313, %.loopexit
  %indvars.iv389 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next390, %.loopexit ] ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv389
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !12
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [192 x i8], ptr %i.ba, i64 %i.bu ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !14
  %i.bx = icmp slt i32 %i.bw, 0
  %brmerge505 = or i1 %i.bx, %.not244295
  br i1 %brmerge505, label %.loopexit, label %.preheader252.lr.ph

.preheader252.lr.ph:                              ; preds = %bb.b
  br i1 %brmerge, label %.preheader253.a, label %.preheader252.lr.ph.split.split

.preheader252.lr.ph.split.split:                  ; preds = %.preheader252.lr.ph
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 184
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !20
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.bb
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !21
  br label %.preheader252

.preheader253:                                    ; preds = %._crit_edge294.split
  br i1 %brmerge506, label %.loopexit, label %.preheader251.lr.ph.split.split

.preheader253.a:                                  ; preds = %.preheader252.lr.ph
  br i1 %brmerge336, label %.loopexit, label %.preheader251.lr.ph.split.split

.preheader251.lr.ph.split.split:                  ; preds = %.preheader253, %.preheader253.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 184
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !20
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.bb
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21
  br label %.preheader251

.preheader252:                                    ; preds = %.preheader252.lr.ph.split.split, %._crit_edge294.split
  %indvars.iv365 = phi i64 [ 1, %.preheader252.lr.ph.split.split ], [ %indvars.iv.next366, %._crit_edge294.split ] ; 3 uses
  %i.cg = mul nuw nsw i64 %i.j, %indvars.iv365
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cg
  %i.ci = getelementptr [8 x i8], ptr %i.cb, i64 %indvars.iv365 ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !23
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !23
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !23
  br label %.preheader250

.preheader250:                                    ; preds = %.preheader252, %._crit_edge291
  %indvars.iv360 = phi i64 [ 1, %.preheader252 ], [ %indvars.iv.next361, %._crit_edge291 ] ; 5 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv360
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !25 ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cl, i64 %indvars.iv360 ; 3 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !25 ; 2 uses
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !25 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !25 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv360
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !25 ; 2 uses
  %i.cy = mul nuw nsw i64 %indvars.iv360, %i.i
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cy ; 2 uses
  %.phi.trans.insert419 = getelementptr i8, ptr %i.ct, i64 8
  %.pre420 = load double, ptr %.phi.trans.insert419, align 8, !tbaa !27 ; 2 uses
  br i1 %min.iters.check552, label %scalar.ph551.preheader, label %vector.ph553

vector.ph553:                                     ; preds = %.preheader250
  %vector.recur.init558 = insertelement <2 x double> poison, double %.pre420, i64 1
  br label %vector.body556

vector.body556:                                   ; preds = %vector.body556, %vector.ph553
  %index557 = phi i64 [ 0, %vector.ph553 ], [ %index.next566, %vector.body556 ] ; 3 uses
  %vector.recur559 = phi <2 x double> [ %vector.recur.init558, %vector.ph553 ], [ %wide.load563, %vector.body556 ]
  %i.da = or disjoint i64 %index557, 1            ; 6 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.da
  %wide.load560 = load <2 x double>, ptr %i.db, align 8, !tbaa !27
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.da
  %wide.load561 = load <2 x double>, ptr %i.dc, align 8, !tbaa !27
  %i.dd = fadd <2 x double> %wide.load560, %wide.load561
  %i.de = getelementptr [8 x i8], ptr %i.ct, i64 %i.da
  %i.df = getelementptr i8, ptr %i.de, i64 -8
  %wide.load562 = load <2 x double>, ptr %i.df, align 8, !tbaa !27
  %i.dg = fadd <2 x double> %i.dd, %wide.load562
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index557
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load563 = load <2 x double>, ptr %i.di, align 8, !tbaa !27 ; 4 uses
  %i.dj = shufflevector <2 x double> %vector.recur559, <2 x double> %wide.load563, <2 x i32> <i32 1, i32 2>
  %i.dk = fadd <2 x double> %i.dg, %i.dj
  %i.dl = fadd <2 x double> %i.dk, %wide.load563
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.da
  %wide.load564 = load <2 x double>, ptr %i.dm, align 8, !tbaa !27
  %i.dn = fadd <2 x double> %i.dl, %wide.load564
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.da
  %wide.load565 = load <2 x double>, ptr %i.do, align 8, !tbaa !27
  %i.dp = fadd <2 x double> %i.dn, %wide.load565
  %i.dq = fdiv <2 x double> %i.dp, splat (double 7.000000e+00)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.da
  store <2 x double> %i.dq, ptr %i.dr, align 8, !tbaa !27
  %index.next566 = add nuw i64 %index557, 2       ; 2 uses
  %i.ds = icmp eq i64 %index.next566, %n.vec555
  br i1 %i.ds, label %middle.block567, label %vector.body556, !llvm.loop !29

middle.block567:                                  ; preds = %vector.body556
  %vector.recur.extract568 = extractelement <2 x double> %wide.load563, i64 1
  br i1 %cmp.n569, label %._crit_edge291, label %scalar.ph551.preheader

scalar.ph551.preheader:                           ; preds = %.preheader250, %middle.block567
  %.ph = phi double [ %.pre420, %.preheader250 ], [ %vector.recur.extract568, %middle.block567 ]
  %indvars.iv355.ph = phi i64 [ 1, %.preheader250 ], [ %i.bp, %middle.block567 ]
  br label %scalar.ph551

scalar.ph551:                                     ; preds = %scalar.ph551.preheader, %scalar.ph551
  %i.dt = phi double [ %i.ef, %scalar.ph551 ], [ %.ph, %scalar.ph551.preheader ]
  %indvars.iv355.a = phi i64 [ %indvars.iv.next356.a, %scalar.ph551 ], [ %indvars.iv355.ph, %scalar.ph551.preheader ] ; 7 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv355.a
  %i.dv = load double, ptr %i.du, align 8, !tbaa !27
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv355.a
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !27
  %i.dy = fadd double %i.dv, %i.dx
  %i.dz = getelementptr [8 x i8], ptr %i.ct, i64 %indvars.iv355.a
  %i.ea = getelementptr i8, ptr %i.dz, i64 -8
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !27
  %i.ec = fadd double %i.dy, %i.eb
  %i.ed = fadd double %i.ec, %i.dt
  %indvars.iv.next356.a = add nuw nsw i64 %indvars.iv355.a, 1 ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next356.a
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !27 ; 2 uses
  %i.eg = fadd double %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv355.a
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !27
  %i.ej = fadd double %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv355.a
  %i.el = load double, ptr %i.ek, align 8, !tbaa !27
  %i.em = fadd double %i.ej, %i.el
  %i.en = fdiv double %i.em, 7.000000e+00
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv355.a
  store double %i.en, ptr %i.eo, align 8, !tbaa !27
  %exitcond359.not.a = icmp eq i64 %indvars.iv.next356.a, %wide.trip.count358
  br i1 %exitcond359.not.a, label %._crit_edge291, label %scalar.ph551, !llvm.loop !33

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
  %i.ep = mul i64 %i.bi, %indvar371
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv384
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !23 ; 3 uses
  %i.es = getelementptr i8, ptr %i.bn, i64 %i.ep  ; 3 uses
  br i1 %i.bq, label %.preheader.epil.preheader, label %.preheader

.preheader:                                       ; preds = %.preheader251, %.preheader
  %indvars.iv379 = phi i64 [ %indvars.iv.next380.1, %.preheader ], [ 1, %.preheader251 ] ; 3 uses
  %indvar373 = phi i64 [ %indvar.next374.1, %.preheader ], [ 0, %.preheader251 ] ; 3 uses
  %niter595 = phi i64 [ %niter595.next.1, %.preheader ], [ 0, %.preheader251 ]
  %i.et = mul i64 %i.bj, %indvar373
  %scevgep375 = getelementptr i8, ptr %i.es, i64 %i.et
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv379
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !25
  %scevgep370 = getelementptr nuw i8, ptr %i.ev, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep370, ptr align 8 %scevgep375, i64 %i.bl, i1 false), !tbaa !27
  %indvar.next374 = or disjoint i64 %indvar373, 1
  %i.ew = mul i64 %i.bj, %indvar.next374
  %scevgep375.1 = getelementptr i8, ptr %i.es, i64 %i.ew
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv379
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !25
  %scevgep370.1 = getelementptr nuw i8, ptr %i.ez, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep370.1, ptr align 8 %scevgep375.1, i64 %i.bl, i1 false), !tbaa !27
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
  %i.fa = mul i64 %i.bj, %indvar373.epil.init
  %scevgep375.epil = getelementptr i8, ptr %i.es, i64 %i.fa
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv379.epil.init
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !25
  %scevgep370.epil = getelementptr nuw i8, ptr %i.fc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep370.epil, ptr align 8 %scevgep375.epil, i64 %i.bl, i1 false), !tbaa !27
  br label %._crit_edge306.split

._crit_edge306.split:                             ; preds = %._crit_edge306.split.unr-lcssa, %.preheader.epil.preheader
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1
  %indvar.next372 = add nuw nsw i64 %indvar371, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvar.next372, %wide.trip.count387
  br i1 %exitcond388.not, label %.loopexit, label %.preheader251, !llvm.loop !37

.loopexit:                                        ; preds = %._crit_edge306.split, %.preheader253, %bb.b, %.preheader253.a
  %indvars.iv.next390 = add nuw nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count392
  br i1 %exitcond393.not, label %.loopexit256, label %bb.b, !llvm.loop !38

bb.c:                                             ; preds = %.lr.ph, %.loopexit262
  %indvars.iv350.a = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next351, %.loopexit262 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv350.a
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !12
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [192 x i8], ptr %2, i64 %i.fg ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !14
  %i.fj = icmp slt i32 %i.fi, 0
  %brmerge508 = or i1 %i.fj, %.not243266
  br i1 %brmerge508, label %.loopexit262, label %.preheader260.lr.ph.split.split

.preheader260.lr.ph.split.split:                  ; preds = %bb.c
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 184
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !20
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %3
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !21
  br label %.preheader260

.preheader261:                                    ; preds = %._crit_edge270.split
  br i1 %.not243266, label %.loopexit262, label %.preheader259.lr.ph.split.split

.preheader259.lr.ph.split.split:                  ; preds = %.preheader261
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 184
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !20
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %3
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !21
  br label %.preheader259

.preheader260:                                    ; preds = %.preheader260.lr.ph.split.split, %._crit_edge270.split
  %indvar443 = phi i64 [ 0, %.preheader260.lr.ph.split.split ], [ %indvar.next444, %._crit_edge270.split ] ; 2 uses
  %indvars.iv329 = phi i64 [ 1, %.preheader260.lr.ph.split.split ], [ %indvars.iv.next330, %._crit_edge270.split ] ; 3 uses
  %i.fs = mul i64 %i.al, %indvar443               ; 2 uses
  %scevgep445 = getelementptr i8, ptr %i.at, i64 %i.fs ; 2 uses
  %scevgep446 = getelementptr i8, ptr %i.av, i64 %i.fs ; 2 uses
  %i.ft = mul nuw nsw i64 %i.j, %indvars.iv329
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ft
  %i.fv = getelementptr [8 x i8], ptr %i.fn, i64 %indvars.iv329 ; 3 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !23 ; 3 uses
  %i.fy = load ptr, ptr %i.fv, align 8, !tbaa !23 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !23 ; 3 uses
  %.pre = load ptr, ptr %i.fx, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.pre394 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 3 uses
  %.pre395 = load ptr, ptr %i.fy, align 8, !tbaa !25
  %.phi.trans.insert396 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.pre397 = load ptr, ptr %.phi.trans.insert396, align 8, !tbaa !25 ; 2 uses
  %.pre398 = load ptr, ptr %i.ga, align 8, !tbaa !25
  %.phi.trans.insert399 = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %.pre400 = load ptr, ptr %.phi.trans.insert399, align 8, !tbaa !25 ; 2 uses
  %.pre401.pre = load double, ptr %.pre394, align 8, !tbaa !27
  %.phi.trans.insert402.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre394, i64 8
  %.pre403.pre = load double, ptr %.phi.trans.insert402.phi.trans.insert, align 8, !tbaa !27
  %i.gb = load <2 x double>, ptr %.pre397, align 8, !tbaa !27 ; 2 uses
  %i.gc = load <2 x double>, ptr %.pre400, align 8, !tbaa !27 ; 2 uses
  %i.gd = shufflevector <2 x double> %i.gb, <2 x double> %i.gc, <2 x i32> <i32 1, i32 3>
  %i.ge = shufflevector <2 x double> %i.gb, <2 x double> %i.gc, <2 x i32> <i32 0, i32 2>
  %i.gf = insertelement <8 x ptr> poison, ptr %scevgep445, i64 0
  %i.gg = shufflevector <8 x ptr> %i.gf, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.gh = insertelement <8 x ptr> poison, ptr %scevgep446, i64 0
  %i.gi = shufflevector <8 x ptr> %i.gh, <8 x ptr> poison, <8 x i32> zeroinitializer
  br label %.preheader258

.preheader258:                                    ; preds = %.preheader260, %._crit_edge
  %.pre403 = phi double [ %.pre403.pre, %.preheader260 ], [ %.pre406, %._crit_edge ] ; 3 uses
  %.pre401 = phi double [ %.pre401.pre, %.preheader260 ], [ %.pre404, %._crit_edge ] ; 3 uses
  %i.gj = phi ptr [ %.pre400, %.preheader260 ], [ %i.gw, %._crit_edge ] ; 5 uses
  %i.gk = phi ptr [ %.pre398, %.preheader260 ], [ %i.gj, %._crit_edge ] ; 7 uses
  %i.gl = phi ptr [ %.pre397, %.preheader260 ], [ %i.gu, %._crit_edge ] ; 5 uses
  %i.gm = phi ptr [ %.pre395, %.preheader260 ], [ %i.gl, %._crit_edge ] ; 7 uses
  %i.gn = phi ptr [ %.pre394, %.preheader260 ], [ %i.gs, %._crit_edge ] ; 5 uses
  %i.go = phi ptr [ %.pre, %.preheader260 ], [ %i.gn, %._crit_edge ] ; 8 uses
  %indvars.iv324 = phi i64 [ 1, %.preheader260 ], [ %indvars.iv.next325, %._crit_edge ] ; 2 uses
  %i.gp = phi <2 x double> [ %i.gd, %.preheader260 ], [ %i.nb, %._crit_edge ] ; 4 uses
  %i.gq = phi <2 x double> [ %i.ge, %.preheader260 ], [ %i.nc, %._crit_edge ] ; 4 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 5 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next325
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !25 ; 7 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.next325
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !25 ; 7 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next325
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !25 ; 7 uses
  %i.gx = mul nuw nsw i64 %indvars.iv324, %i.i
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.gx ; 2 uses
  %.pre404 = load double, ptr %i.gs, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert405 = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %.pre406 = load double, ptr %.phi.trans.insert405, align 8, !tbaa !27 ; 4 uses
  %.phi.trans.insert411 = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.phi.trans.insert417 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = load <2 x double>, ptr %i.gu, align 8, !tbaa !27 ; 5 uses
  %.pre412 = load double, ptr %.phi.trans.insert411, align 8, !tbaa !27 ; 2 uses
  %i.ha = load <2 x double>, ptr %i.gw, align 8, !tbaa !27 ; 5 uses
  %.pre418 = load double, ptr %.phi.trans.insert417, align 8, !tbaa !27 ; 2 uses
  %i.hb = extractelement <2 x double> %i.gz, i64 0 ; 2 uses
  %i.hc = extractelement <2 x double> %i.ha, i64 0 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader258
  %scevgep447 = getelementptr nuw i8, ptr %i.gn, i64 16
  %scevgep448 = getelementptr i8, ptr %i.gn, i64 %i.ar
  %scevgep449 = getelementptr i8, ptr %i.go, i64 %i.ar
  %i.hd = insertelement <2 x ptr> poison, ptr %i.gs, i64 0
  %i.he = insertelement <2 x ptr> %i.hd, ptr %i.gl, i64 1
  %i.hf = getelementptr i8, <2 x ptr> %i.he, i64 16
  %scevgep451 = getelementptr i8, ptr %i.gs, i64 %i.ar
  %scevgep453 = getelementptr i8, ptr %i.gl, i64 %i.ar
  %scevgep454 = getelementptr i8, ptr %i.gm, i64 %i.ar
  %scevgep455 = getelementptr i8, ptr %i.gu, i64 16
  %scevgep456 = getelementptr i8, ptr %i.gu, i64 %i.ar
  %scevgep457 = getelementptr i8, ptr %i.gj, i64 16
  %scevgep458 = getelementptr i8, ptr %i.gj, i64 %i.ar
  %scevgep459 = getelementptr i8, ptr %i.gk, i64 %i.ar
  %scevgep460 = getelementptr i8, ptr %i.gw, i64 16
  %scevgep461 = getelementptr i8, ptr %i.gw, i64 %i.ar
  %i.hg = insertelement <8 x ptr> poison, ptr %scevgep448, i64 0
  %i.hh = insertelement <8 x ptr> %i.hg, ptr %scevgep449, i64 1
  %i.hi = insertelement <8 x ptr> %i.hh, ptr %scevgep451, i64 2
  %i.hj = insertelement <8 x ptr> %i.hi, ptr %scevgep453, i64 3
  %i.hk = insertelement <8 x ptr> %i.hj, ptr %scevgep454, i64 4
  %i.hl = insertelement <8 x ptr> %i.hk, ptr %scevgep456, i64 5
  %i.hm = insertelement <8 x ptr> %i.hl, ptr %scevgep458, i64 6
  %i.hn = insertelement <8 x ptr> %i.hm, ptr %scevgep459, i64 7
  %i.ho = icmp ult <8 x ptr> %i.gg, %i.hn
  %i.hp = insertelement <8 x ptr> poison, ptr %scevgep447, i64 0
  %i.hq = insertelement <8 x ptr> %i.hp, ptr %i.go, i64 1
  %i.hr = shufflevector <2 x ptr> %i.hf, <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hs = shufflevector <8 x ptr> %i.hq, <8 x ptr> %i.hr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ht = insertelement <8 x ptr> %i.hs, ptr %i.gm, i64 4
  %i.hu = insertelement <8 x ptr> %i.ht, ptr %scevgep455, i64 5
  %i.hv = insertelement <8 x ptr> %i.hu, ptr %scevgep457, i64 6
  %i.hw = insertelement <8 x ptr> %i.hv, ptr %i.gk, i64 7
  %i.hx = icmp ult <8 x ptr> %i.hw, %i.gi
  %i.hy = and <8 x i1> %i.ho, %i.hx
  %bound0489 = icmp ult ptr %scevgep445, %scevgep461
  %bound1490 = icmp ult ptr %scevgep460, %scevgep446
  %found.conflict491 = and i1 %bound0489, %bound1490
  %i.hz = bitcast <8 x i1> %i.hy to i8
  %i.ia = icmp ne i8 %i.hz, 0
  %op.rdx578 = or i1 %i.ia, %found.conflict491
  br i1 %op.rdx578, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ib = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ic = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.id = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ie = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %vector.recur.init507 = insertelement <2 x double> poison, double %.pre406, i64 1
  %vector.recur.init509 = insertelement <2 x double> poison, double %.pre404, i64 1
  %vector.recur.init511 = insertelement <2 x double> poison, double %.pre403, i64 1
  %vector.recur.init513 = insertelement <2 x double> poison, double %.pre401, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <2 x double> [ %i.ha, %vector.ph ], [ %wide.load528, %vector.body ] ; 2 uses
  %vector.recur494 = phi <2 x double> [ %i.ib, %vector.ph ], [ %i.kb, %vector.body ]
  %vector.recur496 = phi <2 x double> [ %i.gp, %vector.ph ], [ %wide.load527, %vector.body ] ; 2 uses
  %vector.recur498 = phi <2 x double> [ %i.gq, %vector.ph ], [ %i.jv, %vector.body ]
  %vector.recur500 = phi <2 x double> [ %i.gz, %vector.ph ], [ %wide.load523, %vector.body ] ; 2 uses
  %vector.recur502 = phi <2 x double> [ %i.ic, %vector.ph ], [ %i.jk, %vector.body ]
  %vector.recur504 = phi <2 x double> [ %i.id, %vector.ph ], [ %wide.load522, %vector.body ] ; 2 uses
  %vector.recur506 = phi <2 x double> [ %i.ie, %vector.ph ], [ %i.je, %vector.body ]
  %vector.recur508 = phi <2 x double> [ %vector.recur.init507, %vector.ph ], [ %wide.load518, %vector.body ] ; 2 uses
  %vector.recur510 = phi <2 x double> [ %vector.recur.init509, %vector.ph ], [ %i.it, %vector.body ]
  %vector.recur512 = phi <2 x double> [ %vector.recur.init511, %vector.ph ], [ %wide.load517, %vector.body ] ; 2 uses
  %vector.recur514 = phi <2 x double> [ %vector.recur.init513, %vector.ph ], [ %i.in, %vector.body ]
  %i.if = or disjoint i64 %index, 1               ; 4 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.go, i64 %index
  %wide.load = load <2 x double>, ptr %i.ig, align 8, !tbaa !27, !alias.scope !39
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.if
  %wide.load515 = load <2 x double>, ptr %i.ih, align 8, !tbaa !27, !alias.scope !39
  %i.ii = fadd <2 x double> %wide.load, %wide.load515
  %i.ij = add nuw nsw i64 %index, 2               ; 9 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.ij
  %wide.load516 = load <2 x double>, ptr %i.ik, align 8, !tbaa !27, !alias.scope !39
  %i.il = fadd <2 x double> %i.ii, %wide.load516
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.ij
  %wide.load517 = load <2 x double>, ptr %i.im, align 8, !tbaa !27, !alias.scope !42 ; 5 uses
  %i.in = shufflevector <2 x double> %vector.recur512, <2 x double> %wide.load517, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.io = shufflevector <2 x double> %vector.recur514, <2 x double> %vector.recur512, <2 x i32> <i32 1, i32 3>
  %i.ip = fadd <2 x double> %i.il, %i.io
  %i.iq = fadd <2 x double> %i.ip, %i.in
  %i.ir = fadd <2 x double> %i.iq, %wide.load517
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.ij
  %wide.load518 = load <2 x double>, ptr %i.is, align 8, !tbaa !27, !alias.scope !44 ; 5 uses
  %i.it = shufflevector <2 x double> %vector.recur508, <2 x double> %wide.load518, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.iu = shufflevector <2 x double> %vector.recur510, <2 x double> %vector.recur508, <2 x i32> <i32 1, i32 3>
  %i.iv = fadd <2 x double> %i.ir, %i.iu
  %i.iw = fadd <2 x double> %i.iv, %i.it
  %i.ix = fadd <2 x double> %i.iw, %wide.load518
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %index
  %wide.load519 = load <2 x double>, ptr %i.iy, align 8, !tbaa !27, !alias.scope !46
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.if
  %wide.load520 = load <2 x double>, ptr %i.iz, align 8, !tbaa !27, !alias.scope !46
  %i.ja = fadd <2 x double> %wide.load519, %wide.load520
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.ij
  %wide.load521 = load <2 x double>, ptr %i.jb, align 8, !tbaa !27, !alias.scope !46
  %i.jc = fadd <2 x double> %i.ja, %wide.load521
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.ij
  %wide.load522 = load <2 x double>, ptr %i.jd, align 8, !tbaa !27, !alias.scope !48 ; 5 uses
  %i.je = shufflevector <2 x double> %vector.recur504, <2 x double> %wide.load522, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jf = shufflevector <2 x double> %vector.recur506, <2 x double> %vector.recur504, <2 x i32> <i32 1, i32 3>
  %i.jg = fadd <2 x double> %i.jc, %i.jf
  %i.jh = fadd <2 x double> %i.jg, %i.je
  %i.ji = fadd <2 x double> %i.jh, %wide.load522
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.ij
  %wide.load523 = load <2 x double>, ptr %i.jj, align 8, !tbaa !27, !alias.scope !50 ; 5 uses
  %i.jk = shufflevector <2 x double> %vector.recur500, <2 x double> %wide.load523, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jl = shufflevector <2 x double> %vector.recur502, <2 x double> %vector.recur500, <2 x i32> <i32 1, i32 3>
  %i.jm = fadd <2 x double> %i.ji, %i.jl
  %i.jn = fadd <2 x double> %i.jm, %i.jk
  %i.jo = fadd <2 x double> %i.jn, %wide.load523
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %index
  %wide.load524 = load <2 x double>, ptr %i.jp, align 8, !tbaa !27, !alias.scope !52
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.if
  %wide.load525 = load <2 x double>, ptr %i.jq, align 8, !tbaa !27, !alias.scope !52
  %i.jr = fadd <2 x double> %wide.load524, %wide.load525
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.ij
  %wide.load526 = load <2 x double>, ptr %i.js, align 8, !tbaa !27, !alias.scope !52
  %i.jt = fadd <2 x double> %i.jr, %wide.load526
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.ij
  %wide.load527 = load <2 x double>, ptr %i.ju, align 8, !tbaa !27, !alias.scope !54 ; 5 uses
  %i.jv = shufflevector <2 x double> %vector.recur496, <2 x double> %wide.load527, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jw = shufflevector <2 x double> %vector.recur498, <2 x double> %vector.recur496, <2 x i32> <i32 1, i32 3>
  %i.jx = fadd <2 x double> %i.jt, %i.jw
  %i.jy = fadd <2 x double> %i.jx, %i.jv
  %i.jz = fadd <2 x double> %i.jy, %wide.load527
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.ij
  %wide.load528 = load <2 x double>, ptr %i.ka, align 8, !tbaa !27, !alias.scope !56 ; 5 uses
  %i.kb = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load528, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.kc = shufflevector <2 x double> %vector.recur494, <2 x double> %vector.recur, <2 x i32> <i32 1, i32 3>
  %i.kd = fadd <2 x double> %i.jz, %i.kc
  %i.ke = fadd <2 x double> %i.kd, %i.kb
  %i.kf = fadd <2 x double> %i.ke, %wide.load528
  %i.kg = fadd <2 x double> %i.ix, %i.jo
  %i.kh = fadd <2 x double> %i.kg, %i.kf
  %i.ki = fdiv <2 x double> %i.kh, splat (double 2.700000e+01)
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.if
  store <2 x double> %i.ki, ptr %i.kj, align 8, !tbaa !27, !alias.scope !58, !noalias !60
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x double> %wide.load528, i64 1
  %vector.recur.extract529 = extractelement <2 x double> %wide.load528, i64 0
  %vector.recur.extract532 = extractelement <2 x double> %wide.load523, i64 1
  %vector.recur.extract533 = extractelement <2 x double> %wide.load523, i64 0
  %vector.recur.extract536 = extractelement <2 x double> %wide.load518, i64 1
  %vector.recur.extract537 = extractelement <2 x double> %wide.load518, i64 0
  %vector.recur.extract538 = extractelement <2 x double> %wide.load517, i64 1
  %vector.recur.extract539 = extractelement <2 x double> %wide.load517, i64 0
  %i.kl = shufflevector <2 x double> %wide.load522, <2 x double> %wide.load527, <2 x i32> <i32 1, i32 3>
  %i.km = shufflevector <2 x double> %wide.load522, <2 x double> %wide.load527, <2 x i32> <i32 0, i32 2>
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader258, %middle.block
  %.ph579 = phi double [ %.pre418, %vector.memcheck ], [ %.pre418, %.preheader258 ], [ %vector.recur.extract, %middle.block ]
  %.ph580 = phi double [ %i.hc, %vector.memcheck ], [ %i.hc, %.preheader258 ], [ %vector.recur.extract529, %middle.block ]
  %.ph581 = phi double [ %.pre412, %vector.memcheck ], [ %.pre412, %.preheader258 ], [ %vector.recur.extract532, %middle.block ]
  %.ph582 = phi double [ %i.hb, %vector.memcheck ], [ %i.hb, %.preheader258 ], [ %vector.recur.extract533, %middle.block ]
  %.ph583 = phi double [ %.pre406, %vector.memcheck ], [ %.pre406, %.preheader258 ], [ %vector.recur.extract536, %middle.block ]
  %.ph584 = phi double [ %.pre404, %vector.memcheck ], [ %.pre404, %.preheader258 ], [ %vector.recur.extract537, %middle.block ]
  %.ph585 = phi double [ %.pre403, %vector.memcheck ], [ %.pre403, %.preheader258 ], [ %vector.recur.extract538, %middle.block ]
  %.ph586 = phi double [ %.pre401, %vector.memcheck ], [ %.pre401, %.preheader258 ], [ %vector.recur.extract539, %middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.preheader258 ], [ %i.ax, %middle.block ]
  %.ph587 = phi <2 x double> [ %i.gq, %vector.memcheck ], [ %i.gq, %.preheader258 ], [ %i.km, %middle.block ]
  %.ph588 = phi <2 x double> [ %i.gp, %vector.memcheck ], [ %i.gp, %.preheader258 ], [ %i.kl, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.kn = phi double [ %i.lv, %scalar.ph ], [ %.ph579, %scalar.ph.preheader ] ; 2 uses
  %i.ko = phi double [ %i.kn, %scalar.ph ], [ %.ph580, %scalar.ph.preheader ]
  %i.kp = phi double [ %i.lo, %scalar.ph ], [ %.ph581, %scalar.ph.preheader ] ; 2 uses
  %i.kq = phi double [ %i.kp, %scalar.ph ], [ %.ph582, %scalar.ph.preheader ]
  %i.kr = phi double [ %i.lh, %scalar.ph ], [ %.ph583, %scalar.ph.preheader ] ; 2 uses
  %i.ks = phi double [ %i.kr, %scalar.ph ], [ %.ph584, %scalar.ph.preheader ]
  %i.kt = phi double [ %i.lf, %scalar.ph ], [ %.ph585, %scalar.ph.preheader ] ; 2 uses
  %i.ku = phi double [ %i.kt, %scalar.ph ], [ %.ph586, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.kv = phi <2 x double> [ %i.kw, %scalar.ph ], [ %.ph587, %scalar.ph.preheader ]
  %i.kw = phi <2 x double> [ %i.mh, %scalar.ph ], [ %.ph588, %scalar.ph.preheader ] ; 2 uses
  %i.kx = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.kx
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !27
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv
  %i.lb = load double, ptr %i.la, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 11 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !27
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next
  %i.lf = load double, ptr %i.le, align 8, !tbaa !27 ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !27 ; 2 uses
  %i.li = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.kx
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !27
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.next
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !27
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !27 ; 2 uses
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.kx
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !27
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv.next
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !27
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !27 ; 2 uses
  %i.lw = load <2 x double>, ptr %i.li, align 8, !tbaa !27 ; 2 uses
  %i.lx = load <2 x double>, ptr %i.lp, align 8, !tbaa !27 ; 2 uses
  %i.ly = shufflevector <2 x double> %i.lw, <2 x double> %i.lx, <2 x i32> <i32 0, i32 2>
  %i.lz = shufflevector <2 x double> %i.lw, <2 x double> %i.lx, <2 x i32> <i32 1, i32 3>
  %i.ma = fadd <2 x double> %i.ly, %i.lz
  %i.mb = insertelement <2 x double> poison, double %i.lk, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %i.lr, i64 1
  %i.md = fadd <2 x double> %i.ma, %i.mc
  %i.me = fadd <2 x double> %i.md, %i.kv
  %i.mf = fadd <2 x double> %i.me, %i.kw
  %i.mg = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.mh = insertelement <2 x double> %i.mg, double %i.lt, i64 1 ; 2 uses
  %i.mi = fadd <2 x double> %i.mf, %i.mh
  %i.mj = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.mk = insertelement <2 x double> %i.mj, double %i.ko, i64 1
  %i.ml = fadd <2 x double> %i.mi, %i.mk
  %i.mm = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.mn = insertelement <2 x double> %i.mm, double %i.kn, i64 1
  %i.mo = fadd <2 x double> %i.ml, %i.mn
  %i.mp = insertelement <2 x double> poison, double %i.lo, i64 0
  %i.mq = insertelement <2 x double> %i.mp, double %i.lv, i64 1
  %i.mr = fadd <2 x double> %i.mo, %i.mq
  %i.ms = insertelement <6 x double> poison, double %i.lf, i64 0
  %i.mt = insertelement <6 x double> %i.ms, double %i.ks, i64 1
  %i.mu = insertelement <6 x double> %i.mt, double %i.kr, i64 2
  %i.mv = insertelement <6 x double> %i.mu, double %i.lh, i64 3
  %i.mw = shufflevector <2 x double> %i.mr, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.mx = shufflevector <6 x double> %i.mv, <6 x double> %i.mw, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6, i32 7>
  %op.rdx = fadd double %i.kz, %i.lb
  %op.rdx575 = fadd double %op.rdx, %i.ld
  %op.rdx576 = fadd double %op.rdx575, %i.ku
  %op.rdx577 = fadd double %op.rdx576, %i.kt
  %i.my = call double @llvm.vector.reduce.fadd.v6f64(double %op.rdx577, <6 x double> %i.mx)
  %i.mz = fdiv double %i.my, 2.700000e+01
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv
  store double %i.mz, ptr %i.na, align 8, !tbaa !27
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  %i.nb = shufflevector <2 x double> %i.gz, <2 x double> %i.ha, <2 x i32> <i32 1, i32 3>
  %i.nc = shufflevector <2 x double> %i.gz, <2 x double> %i.ha, <2 x i32> <i32 0, i32 2>
  br i1 %exitcond328.not, label %._crit_edge270.split, label %.preheader258, !llvm.loop !63

._crit_edge270.split:                             ; preds = %._crit_edge
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count332
  %indvar.next444 = add i64 %indvar443, 1
  br i1 %exitcond333.not, label %.preheader261, label %.preheader260, !llvm.loop !64

.preheader259:                                    ; preds = %.preheader259.lr.ph.split.split, %._crit_edge281.split
  %indvars.iv345 = phi i64 [ 1, %.preheader259.lr.ph.split.split ], [ %indvars.iv.next346, %._crit_edge281.split ] ; 2 uses
  %indvar = phi i64 [ 0, %.preheader259.lr.ph.split.split ], [ %indvar.next, %._crit_edge281.split ] ; 2 uses
  %i.nd = mul i64 %i.ab, %indvar
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv345
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !23 ; 3 uses
  %i.ng = getelementptr i8, ptr %i.ag, i64 %i.nd  ; 3 uses
  br i1 %i.ay, label %.preheader257.epil.preheader, label %.preheader257

.preheader257:                                    ; preds = %.preheader259, %.preheader257
  %indvars.iv340 = phi i64 [ %indvars.iv.next341.1, %.preheader257 ], [ 1, %.preheader259 ] ; 3 uses
  %indvar334 = phi i64 [ %indvar.next335.1, %.preheader257 ], [ 0, %.preheader259 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader257 ], [ 0, %.preheader259 ]
  %i.nh = mul i64 %i.ac, %indvar334
  %scevgep336 = getelementptr i8, ptr %i.ng, i64 %i.nh
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv340
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !25
  %scevgep = getelementptr nuw i8, ptr %i.nj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep, ptr align 8 %scevgep336, i64 %i.ae, i1 false), !tbaa !27
  %indvar.next335 = or disjoint i64 %indvar334, 1
  %i.nk = mul i64 %i.ac, %indvar.next335
  %scevgep336.1 = getelementptr i8, ptr %i.ng, i64 %i.nk
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv340
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !25
  %scevgep.1 = getelementptr nuw i8, ptr %i.nn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.1, ptr align 8 %scevgep336.1, i64 %i.ae, i1 false), !tbaa !27
  %indvars.iv.next341.1 = add nuw nsw i64 %indvars.iv340, 2 ; 2 uses
  %indvar.next335.1 = add nuw nsw i64 %indvar334, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge281.split.unr-lcssa, label %.preheader257, !llvm.loop !65

._crit_edge281.split.unr-lcssa:                   ; preds = %.preheader257
  br i1 %lcmp.mod.not, label %._crit_edge281.split, label %.preheader257.epil.preheader

.preheader257.epil.preheader:                     ; preds = %._crit_edge281.split.unr-lcssa, %.preheader259
  %indvars.iv340.epil.init = phi i64 [ 1, %.preheader259 ], [ %indvars.iv.next341.1, %._crit_edge281.split.unr-lcssa ]
  %indvar334.epil.init = phi i64 [ 0, %.preheader259 ], [ %indvar.next335.1, %._crit_edge281.split.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod590)
  %i.no = mul i64 %i.ac, %indvar334.epil.init
  %scevgep336.epil = getelementptr i8, ptr %i.ng, i64 %i.no
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %indvars.iv340.epil.init
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !25
  %scevgep.epil = getelementptr nuw i8, ptr %i.nq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %scevgep.epil, ptr align 8 %scevgep336.epil, i64 %i.ae, i1 false), !tbaa !27
  br label %._crit_edge281.split

._crit_edge281.split:                             ; preds = %._crit_edge281.split.unr-lcssa, %.preheader257.epil.preheader
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond349.not = icmp eq i64 %indvar.next, %wide.trip.count348
  br i1 %exitcond349.not, label %.loopexit262, label %.preheader259, !llvm.loop !66

.loopexit262:                                     ; preds = %._crit_edge281.split, %bb.c, %.preheader261
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350.a, 1 ; 2 uses
  %exitcond354.not = icmp eq i64 %indvars.iv.next351, %wide.trip.count353.a
  br i1 %exitcond354.not, label %.loopexit256, label %bb.c, !llvm.loop !67

.loopexit256:                                     ; preds = %.loopexit262, %.loopexit, %.preheader264.a, %.preheader264, %.preheader255
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v6f64(double, <6 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 int", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!13, !5, i64 4}
!13 = !{!"", !5, i64 0, !5, i64 4}
!14 = !{!15, !5, i64 0}
!15 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !6, i64 28, !6, i64 52, !6, i64 76, !6, i64 172, !16, i64 184}
!16 = !{!"p4 double", !17, i64 0}
!17 = !{!"any p4 pointer", !18, i64 0}
!18 = !{!"any p3 pointer", !19, i64 0}
!19 = !{!"any p2 pointer", !10, i64 0}
!20 = !{!15, !16, i64 184}
!21 = !{!22, !22, i64 0}
!22 = !{!"p3 double", !18, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p2 double", !19, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 double", !10, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"double", !6, i64 0}
!29 = distinct !{!29, !30, !31, !32}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !30, !32, !31}
!34 = distinct !{!34, !30}
!35 = distinct !{!35, !30}
!36 = distinct !{!36, !30}
!37 = distinct !{!37, !30}
!38 = distinct !{!38, !30}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = !{!45}
!45 = distinct !{!45, !41}
!46 = !{!47}
!47 = distinct !{!47, !41}
!48 = !{!49}
!49 = distinct !{!49, !41}
!50 = !{!51}
!51 = distinct !{!51, !41}
!52 = !{!53}
!53 = distinct !{!53, !41}
!54 = !{!55}
!55 = distinct !{!55, !41}
!56 = !{!57}
!57 = distinct !{!57, !41}
!58 = !{!59}
!59 = distinct !{!59, !41}
!60 = !{!43, !40, !45, !49, !47, !51, !55, !53, !57}
!61 = distinct !{!61, !30, !31, !32}
!62 = distinct !{!62, !30, !31}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
end_hunk_0
