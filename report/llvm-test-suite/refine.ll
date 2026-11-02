Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/refine?download=true
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@block_change = common dso_local local_unnamed_addr global i32 0, align 4
@num_refine = common dso_local local_unnamed_addr global i32 0, align 4
@num_blocks = common dso_local local_unnamed_addr global ptr null, align 8
@cur_max_level = common dso_local local_unnamed_addr global i32 0, align 4
@uniform_refine = common dso_local local_unnamed_addr global i32 0, align 4
@sorted_index = common dso_local local_unnamed_addr global ptr null, align 8
@sorted_list = common dso_local local_unnamed_addr global ptr null, align 8
@blocks = common dso_local local_unnamed_addr global ptr null, align 8
@timer_refine_co = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_refine_mr = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_refine_sb = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_cb_all = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@target_active = common dso_local local_unnamed_addr global i32 0, align 4
@target_max = common dso_local local_unnamed_addr global i32 0, align 4
@target_min = common dso_local local_unnamed_addr global i32 0, align 4
@my_pe = common dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Number of blocks at level %d before target %d is %d\0A\00", align 1
@global_active = common dso_local local_unnamed_addr global i32 0, align 4
@num_pes = common dso_local local_unnamed_addr global i32 0, align 4
@timer_target_all = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@num_active = common dso_local local_unnamed_addr global i32 0, align 4
@local_max_b = common dso_local local_unnamed_addr global i32 0, align 4
@global_max_b = common dso_local local_unnamed_addr global i32 0, align 4
@report_perf = common dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Number of blocks at level %d at timestep %d is %d\0A\00", align 1
@timer_refine_cc = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@parents = common dso_local local_unnamed_addr global ptr null, align 8
@max_active_parent = common dso_local local_unnamed_addr global i32 0, align 4
@max_num_blocks = common dso_local local_unnamed_addr global i32 0, align 4
@x_block_size = common dso_local local_unnamed_addr global i32 0, align 4
@y_block_size = common dso_local local_unnamed_addr global i32 0, align 4
@z_block_size = common dso_local local_unnamed_addr global i32 0, align 4
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
@stencil = common dso_local local_unnamed_addr global i32 0, align 4
@plot_freq = common dso_local local_unnamed_addr global i32 0, align 4
@lb_opt = common dso_local local_unnamed_addr global i32 0, align 4
@code = common dso_local local_unnamed_addr global i32 0, align 4
@permute = common dso_local local_unnamed_addr global i32 0, align 4
@nonblocking = common dso_local local_unnamed_addr global i32 0, align 4
@refine_ghost = common dso_local local_unnamed_addr global i32 0, align 4
@max_num_parents = common dso_local local_unnamed_addr global i32 0, align 4
@num_parents = common dso_local local_unnamed_addr global i32 0, align 4
@block_start = common dso_local local_unnamed_addr global ptr null, align 8
@max_active_block = common dso_local local_unnamed_addr global i32 0, align 4
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
@num_objects = common dso_local local_unnamed_addr global i32 0, align 4
@objects = common dso_local local_unnamed_addr global ptr null, align 8
@average = common dso_local local_unnamed_addr global [128 x double] zeroinitializer, align 16
@stddev = common dso_local local_unnamed_addr global [128 x double] zeroinitializer, align 16
@minimum = common dso_local local_unnamed_addr global [128 x double] zeroinitializer, align 16
@maximum = common dso_local local_unnamed_addr global [128 x double] zeroinitializer, align 16
@timer_all = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_comm_all = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_comm_dir = common dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@timer_comm_same = common dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@timer_comm_diff = common dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@timer_comm_bc = common dso_local local_unnamed_addr global [3 x double] zeroinitializer, align 16
@timer_calc_all = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_cs_all = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_cs_calc = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_refine_all = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_target_rb = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_target_dc = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_target_cb = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_target_ab = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_target_da = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_target_sb = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@timer_plot = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@total_blocks = common dso_local local_unnamed_addr global i64 0, align 8
@nb_min = common dso_local local_unnamed_addr global i32 0, align 4
@nb_max = common dso_local local_unnamed_addr global i32 0, align 4
@nrs = common dso_local local_unnamed_addr global i32 0, align 4
@nps = common dso_local local_unnamed_addr global i32 0, align 4
@num_refined = common dso_local local_unnamed_addr global i32 0, align 4
@num_reformed = common dso_local local_unnamed_addr global i32 0, align 4
@counter_bc = common dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@counter_same = common dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@counter_diff = common dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@counter_malloc = common dso_local local_unnamed_addr global i32 0, align 4
@size_malloc = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@counter_malloc_init = common dso_local local_unnamed_addr global i32 0, align 4
@size_malloc_init = common dso_local local_unnamed_addr global double 0.000000e+00, align 8
@total_red = common dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @refine(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @timer() #7
  %.not = icmp eq i32 %0, 0
  %num_refine.val = load i32, ptr @num_refine, align 4 ; 2 uses
  %block_change.val = load i32, ptr @block_change, align 4
  %.062 = select i1 %.not, i32 %num_refine.val, i32 %block_change.val ; 2 uses
  %i.b = icmp sgt i32 %.062, 0
  br i1 %i.b, label %.lr.ph99, label %._crit_edge

.lr.ph99thread-pre-split:                         ; preds = %.loopexit
  %.pr = load i32, ptr @num_refine, align 4, !tbaa !7
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.a, %.lr.ph99thread-pre-split
  %i.c = phi i32 [ %.pr, %.lr.ph99thread-pre-split ], [ %num_refine.val, %bb.a ] ; 2 uses
  %.098 = phi double [ %i.bl, %.lr.ph99thread-pre-split ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %.06797 = phi i32 [ %i.bm, %.lr.ph99thread-pre-split ], [ 0, %bb.a ]
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %.lr.ph, label %.loopexit92

.lr.ph:                                           ; preds = %.lr.ph99
  %i.e = load ptr, ptr @num_blocks, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.06494 = phi i32 [ %i.c, %.lr.ph ], [ %2, %bb.d ] ; 4 uses
  %1 = zext nneg i32 %.06494 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %1
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %.not89 = icmp eq i32 %i.g, 0
  br i1 %.not89, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %.06494, ptr @cur_max_level, align 4, !tbaa !7
  br label %.loopexit92

bb.d:                                             ; preds = %bb.b
  %2 = add nsw i32 %.06494, -1
  %i.h = icmp sgt i32 %.06494, 0
  br i1 %i.h, label %bb.b, label %.loopexit92, !llvm.loop !25

.loopexit92:                                      ; preds = %bb.d, %.lr.ph99, %bb.c
  tail call void @reset_all()
  %i.i = load i32, ptr @uniform_refine, align 4, !tbaa !7
  %.not90 = icmp eq i32 %i.i, 0
  br i1 %.not90, label %bb.g, label %.preheader91

.preheader91:                                     ; preds = %.loopexit92
  %i.j = load ptr, ptr @sorted_index, align 8, !tbaa !10 ; 2 uses
  %i.k = load i32, ptr @num_refine, align 4, !tbaa !7 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph96, label %.loopexit

.lr.ph96:                                         ; preds = %.preheader91
  %i.q = load ptr, ptr @sorted_list, align 8, !tbaa !12
  %i.r = load ptr, ptr @blocks, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph96, %bb.f
  %indvars.iv.a = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next.a, %bb.f ] ; 2 uses
  %i.s = phi i32 [ %i.k, %.lr.ph96 ], [ %i.ae, %bb.f ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !14
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [192 x i8], ptr %i.r, i64 %i.w ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !20
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21
  %i.ac = icmp slt i32 %i.ab, %i.s
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %. = zext i1 %i.ac to i32
  store i32 %., ptr %i.ad, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.ae = load i32, ptr @num_refine, align 4, !tbaa !7 ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.j, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.a, %i.aj
  br i1 %i.ak, label %bb.e, label %.loopexit, !llvm.loop !26

bb.g:                                             ; preds = %.loopexit92
  %i.al = tail call double @timer() #7            ; 2 uses
  tail call void @check_objects() #7
  %i.am = tail call double @timer() #7
  %i.an = fsub double %i.am, %i.al
  %i.ao = load double, ptr @timer_refine_co, align 8, !tbaa !37
  %i.ap = fadd double %i.ao, %i.an
  store double %i.ap, ptr @timer_refine_co, align 8, !tbaa !37
  %i.aq = tail call double @timer() #7
  %i.ar = fsub double %i.aq, %i.al
  %i.as = fadd double %.098, %i.ar
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.preheader91, %bb.g
  %.1 = phi double [ %i.as, %bb.g ], [ %.098, %.preheader91 ], [ %.098, %bb.f ]
  %i.at = tail call double @timer() #7
  %i.au = tail call i32 @refine_level()           ; 0 uses
  %i.av = tail call double @timer() #7
  %i.aw = fsub double %i.av, %i.at                ; 2 uses
  %i.ax = load double, ptr @timer_refine_mr, align 8, !tbaa !37
  %i.ay = fadd double %i.ax, %i.aw
  store double %i.ay, ptr @timer_refine_mr, align 8, !tbaa !37
  %i.az = fadd double %.1, %i.aw
  %i.ba = tail call double @timer() #7
  tail call void @split_blocks() #7
  %i.bb = tail call double @timer() #7
  %i.bc = fsub double %i.bb, %i.ba                ; 2 uses
  %i.bd = load double, ptr @timer_refine_sb, align 8, !tbaa !37
  %i.be = fadd double %i.bd, %i.bc
  store double %i.be, ptr @timer_refine_sb, align 8, !tbaa !37
  %i.bf = fadd double %i.az, %i.bc
  %i.bg = tail call double @timer() #7
  tail call void @consolidate_blocks() #7
  %i.bh = tail call double @timer() #7
  %i.bi = fsub double %i.bh, %i.bg                ; 2 uses
  %i.bj = load double, ptr @timer_cb_all, align 8, !tbaa !37
  %i.bk = fadd double %i.bj, %i.bi
  store double %i.bk, ptr @timer_cb_all, align 8, !tbaa !37
  %i.bl = fadd double %i.bf, %i.bi                ; 2 uses
  %i.bm = add nuw nsw i32 %.06797, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bm, %.062
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph99thread-pre-split, !llvm.loop !27

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bl, %.loopexit ] ; 2 uses
  %i.bn = load i32, ptr @target_active, align 4, !tbaa !7
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = load i32, ptr @target_max, align 4
  %i.bq = icmp ne i32 %i.bp, 0
  %or.cond = select i1 %i.bo, i1 true, i1 %i.bq
  %i.br = load i32, ptr @target_min, align 4
  %i.bs = icmp ne i32 %i.br, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.bs
  br i1 %or.cond3, label %bb.h, label %bb.t

bb.h:                                             ; preds = %._crit_edge
  %i.bt = load i32, ptr @my_pe, align 4, !tbaa !7
  %.not75 = icmp eq i32 %i.bt, 0
  br i1 %.not75, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h
  %i.bu = load i32, ptr @num_refine, align 4, !tbaa !7
  %.not76100 = icmp slt i32 %i.bu, 0
  br i1 %.not76100, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %.preheader, %.lr.ph102
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %.lr.ph102 ], [ 0, %.preheader ] ; 4 uses
  %i.bv = load ptr, ptr @num_blocks, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv116
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = trunc nuw nsw i64 %indvars.iv116 to i32
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.by, i32 noundef %0, i32 noundef %i.bx) ; 0 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %i.ca = load i32, ptr @num_refine, align 4, !tbaa !7
  %i.cb = sext i32 %i.ca to i64
  %.not76.not = icmp slt i64 %indvars.iv116, %i.cb
  br i1 %.not76.not, label %.lr.ph102, label %._crit_edge103, !llvm.loop !28

._crit_edge103:                                   ; preds = %.lr.ph102, %.preheader
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge103, %bb.h
  %i.cc = tail call double @timer() #7
  %i.cd = load ptr, ptr @num_blocks, align 8, !tbaa !10 ; 9 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7  ; 5 uses
  store i32 %i.ce, ptr @global_active, align 4, !tbaa !7
  %i.cf = load i32, ptr @num_refine, align 4, !tbaa !7 ; 5 uses
  %.not77104 = icmp slt i32 %i.cf, 1
  br i1 %.not77104, label %._crit_edge108, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %bb.i
  %i.cg = add nuw i32 %i.cf, 1
  %wide.trip.count = zext i32 %i.cg to i64        ; 3 uses
  %i.ch = zext nneg i32 %i.cf to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.cf, 8
  br i1 %min.iters.check, label %.lr.ph107.preheader145, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107.preheader
  %i.ci = getelementptr i8, ptr %i.cd, i64 4
  %i.cj = shl nuw nsw i64 %wide.trip.count, 2
  %i.ck = getelementptr i8, ptr %i.cd, i64 %i.cj
  %bound0 = icmp ugt ptr %i.ck, @global_active
  %bound1 = icmp ult ptr %i.ci, getelementptr inbounds nuw (i8, ptr @global_active, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph107.preheader145, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 2147483640              ; 3 uses
  %i.cl = or disjoint i64 %n.vec, 1
  %i.cm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ce, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cm, %vector.ph ], [ %i.cq, %vector.body ]
  %vec.phi143 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cr, %vector.body ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !7, !alias.scope !38
  %wide.load144 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !7, !alias.scope !38
  %i.cq = add <4 x i32> %vec.phi, %wide.load      ; 2 uses
  %i.cr = add <4 x i32> %vec.phi143, %wide.load144 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cr, %i.cq
  %i.ct = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.ct, ptr @global_active, align 4, !tbaa !7, !alias.scope !41, !noalias !38
  %cmp.n = icmp eq i64 %n.vec, %i.ch
  br i1 %cmp.n, label %._crit_edge108, label %.lr.ph107.preheader145

.lr.ph107.preheader145:                           ; preds = %vector.memcheck, %.lr.ph107.preheader, %middle.block
  %indvars.iv119.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph107.preheader ], [ %i.cl, %middle.block ] ; 4 uses
  %.ph = phi i32 [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph107.preheader ], [ %i.ct, %middle.block ] ; 2 uses
  %i.cu = sub nsw i64 %wide.trip.count, %indvars.iv119.ph
  %i.cv = zext nneg i32 %i.cf to i64
  %i.cw = sub nsw i64 %i.cv, %indvars.iv119.ph
  %xtraiter = and i64 %i.cu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph107.prol.loopexit, label %.lr.ph107.prol

end_hunk_0
