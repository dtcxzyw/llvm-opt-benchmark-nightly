Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/move?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@sorted_index = common dso_local local_unnamed_addr global ptr null, align 8
@num_refine = common dso_local local_unnamed_addr global i32 0, align 4
@sorted_list = common dso_local local_unnamed_addr global ptr null, align 8
@blocks = common dso_local local_unnamed_addr global ptr null, align 8
@p2 = common dso_local local_unnamed_addr global ptr null, align 8
@mesh_size = common dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@refine_ghost = common dso_local local_unnamed_addr global i32 0, align 4
@x_block_size = common dso_local local_unnamed_addr global i32 0, align 4
@y_block_size = common dso_local local_unnamed_addr global i32 0, align 4
@z_block_size = common dso_local local_unnamed_addr global i32 0, align 4
@my_pe = common dso_local local_unnamed_addr global i32 0, align 4
@parents = common dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [21 x i8] c"undefined object %d\0A\00", align 1
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
@stencil = common dso_local local_unnamed_addr global i32 0, align 4
@report_perf = common dso_local local_unnamed_addr global i32 0, align 4
@plot_freq = common dso_local local_unnamed_addr global i32 0, align 4
@lb_opt = common dso_local local_unnamed_addr global i32 0, align 4
@block_change = common dso_local local_unnamed_addr global i32 0, align 4
@code = common dso_local local_unnamed_addr global i32 0, align 4
@permute = common dso_local local_unnamed_addr global i32 0, align 4
@nonblocking = common dso_local local_unnamed_addr global i32 0, align 4
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
@max_mesh_size = common dso_local local_unnamed_addr global i32 0, align 4
@from = common dso_local local_unnamed_addr global ptr null, align 8
@to = common dso_local local_unnamed_addr global ptr null, align 8
@msg_len = common dso_local local_unnamed_addr global [3 x [4 x i32]] zeroinitializer, align 16
@local_max_b = common dso_local local_unnamed_addr global i32 0, align 4
@global_max_b = common dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @move() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @num_objects, align 4, !tbaa !7 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = load ptr, ptr @objects, align 8, !tbaa !9
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.split.us
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.split.us ] ; 2 uses
  %i.d = getelementptr inbounds nuw [176 x i8], ptr %i.c, i64 %indvars.iv ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15
  %.not = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 4 uses
  %i.k = load double, ptr %i.e, align 8, !tbaa !12 ; 2 uses
  %i.l = load double, ptr %i.f, align 8, !tbaa !12
  %i.m = fadd double %i.k, %i.l                   ; 4 uses
  store double %i.m, ptr %i.f, align 8, !tbaa !12
  br i1 %.not, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.n = fcmp ult double %i.m, 1.000000e+00
  br i1 %i.n, label %bb.b, label %.preheader.split.1.sink.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.q = load <2 x double>, ptr %i.i, align 8, !tbaa !12
  %i.r = load <2 x double>, ptr %i.j, align 8, !tbaa !12
  %i.s = fadd <2 x double> %i.q, %i.r
  store <2 x double> %i.s, ptr %i.j, align 8, !tbaa !12
  %i.t = load <2 x double>, ptr %i.o, align 8, !tbaa !12
  %i.u = load <2 x double>, ptr %i.p, align 8, !tbaa !12
  %i.v = fadd <2 x double> %i.t, %i.u
  store <2 x double> %i.v, ptr %i.p, align 8, !tbaa !12
  br label %.split.us

bb.b:                                             ; preds = %.preheader.split.preheader
  %i.w = fcmp ugt double %i.m, 0.000000e+00
  br i1 %i.w, label %.preheader.split.1, label %.preheader.split.1.sink.split

.preheader.split.1.sink.split:                    ; preds = %bb.b, %.preheader.split.preheader
  %.sink46 = phi double [ 2.000000e+00, %.preheader.split.preheader ], [ 0.000000e+00, %bb.b ]
  %i.x = fsub double %.sink46, %i.m
  store double %i.x, ptr %i.f, align 8, !tbaa !12
  %i.y = fneg double %i.k
  store double %i.y, ptr %i.e, align 8, !tbaa !12
  br label %.preheader.split.1

.preheader.split.1:                               ; preds = %.preheader.split.1.sink.split, %bb.b
  %i.z = load double, ptr %i.i, align 8, !tbaa !12
  %i.aa = load double, ptr %i.j, align 8, !tbaa !12
  %i.ab = fadd double %i.z, %i.aa
  store double %i.ab, ptr %i.j, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !12
  %i.ag = fadd double %i.ad, %i.af                ; 4 uses
  store double %i.ag, ptr %i.ae, align 8, !tbaa !12
  %i.ah = fcmp ult double %i.ag, 1.000000e+00
  br i1 %i.ah, label %bb.c, label %.preheader.split.2.sink.split

bb.c:                                             ; preds = %.preheader.split.1
  %i.ai = fcmp ugt double %i.ag, 0.000000e+00
  br i1 %i.ai, label %.preheader.split.2, label %.preheader.split.2.sink.split

.preheader.split.2.sink.split:                    ; preds = %bb.c, %.preheader.split.1
  %.sink47 = phi double [ 2.000000e+00, %.preheader.split.1 ], [ 0.000000e+00, %bb.c ]
  %i.aj = fsub double %.sink47, %i.ag
  store double %i.aj, ptr %i.ae, align 8, !tbaa !12
  %i.ak = fneg double %i.ad
  store double %i.ak, ptr %i.ac, align 8, !tbaa !12
  br label %.preheader.split.2

.preheader.split.2:                               ; preds = %.preheader.split.2.sink.split, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.am = load double, ptr %i.al, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !12
  %i.ap = fadd double %i.am, %i.ao
  store double %i.ap, ptr %i.an, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !12 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !12
  %i.au = fadd double %i.ar, %i.at                ; 4 uses
  store double %i.au, ptr %i.as, align 8, !tbaa !12
  %i.av = fcmp ult double %i.au, 1.000000e+00
  br i1 %i.av, label %bb.d, label %.split.us.loopexit37.sink.split

bb.d:                                             ; preds = %.preheader.split.2
  %i.aw = fcmp ugt double %i.au, 0.000000e+00
  br i1 %i.aw, label %.split.us, label %.split.us.loopexit37.sink.split

.split.us.loopexit37.sink.split:                  ; preds = %bb.d, %.preheader.split.2
  %.sink48 = phi double [ 2.000000e+00, %.preheader.split.2 ], [ 0.000000e+00, %bb.d ]
  %i.ax = fsub double %.sink48, %i.au
  store double %i.ax, ptr %i.as, align 8, !tbaa !12
  %i.ay = fneg double %i.ar
  store double %i.ay, ptr %i.aq, align 8, !tbaa !12
  br label %.split.us

.split.us:                                        ; preds = %bb.d, %.split.us.loopexit37.sink.split, %.preheader.split.us.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.ba = load double, ptr %i.az, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !12
  %i.bd = fadd double %i.ba, %i.bc
  store double %i.bd, ptr %i.bb, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !14

._crit_edge:                                      ; preds = %.split.us, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @check_objects() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x [2 x double]], align 16      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = load ptr, ptr @sorted_index, align 8, !tbaa !18
  %i.c = load i32, ptr @num_refine, align 4, !tbaa !7 ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr [4 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.at
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.at ] ; 2 uses
  %i.l = phi i32 [ %i.c, %.lr.ph ], [ %i.ir, %bb.at ]
  %i.m = load ptr, ptr @sorted_list, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !20
  %i.q = load ptr, ptr @blocks, align 8, !tbaa !9
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [192 x i8], ptr %i.q, i64 %i.r ; 11 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !26
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.c, label %bb.at

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr @p2, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !27
  %i.y = sub nsw i32 %i.l, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7  ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 172
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7  ; 2 uses
  %i.ae = load i32, ptr @mesh_size, align 4, !tbaa !7
  %i.af = sitofp i32 %i.ae to double              ; 2 uses
  %i.ag = add nsw i32 %i.ad, %i.ab
  %i.ah = sub nsw i32 %i.ad, %i.ab
  %i.ai = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %i.aj = insertelement <2 x i32> %i.ai, i32 %i.ag, i64 1
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>
  %i.al = insertelement <2 x double> poison, double %i.af, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fdiv <2 x double> %i.ak, %i.am          ; 3 uses
  store <2 x double> %i.an, ptr %i.a, align 16, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !7  ; 2 uses
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @mesh_size, i64 4), align 4, !tbaa !7
  %i.ar = sitofp i32 %i.aq to double              ; 2 uses
  %i.as = add nsw i32 %i.ap, %i.ab
  %i.at = sub nsw i32 %i.ap, %i.ab
  %i.au = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %i.av = insertelement <2 x i32> %i.au, i32 %i.as, i64 1
  %i.aw = sitofp <2 x i32> %i.av to <2 x double>
  %i.ax = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fdiv <2 x double> %i.aw, %i.ay          ; 3 uses
  store <2 x double> %i.az, ptr %i.i, align 16, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 180
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7  ; 2 uses
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @mesh_size, i64 8), align 4, !tbaa !7
  %i.bd = sitofp i32 %i.bc to double              ; 2 uses
  %i.be = add nsw i32 %i.bb, %i.ab
  %i.bf = sub nsw i32 %i.bb, %i.ab
  %i.bg = insertelement <2 x i32> poison, i32 %i.bf, i64 0
  %i.bh = insertelement <2 x i32> %i.bg, i32 %i.be, i64 1
  %i.bi = sitofp <2 x i32> %i.bh to <2 x double>
  %i.bj = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = fdiv <2 x double> %i.bi, %i.bk          ; 3 uses
  store <2 x double> %i.bl, ptr %i.j, align 16, !tbaa !12
  %i.bm = load i32, ptr @refine_ghost, align 4, !tbaa !7
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = sitofp i32 %i.ab to double              ; 2 uses
  %i.bo = load i32, ptr @x_block_size, align 4, !tbaa !7
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = fdiv double %i.bn, %i.bp
  %i.br = fmul double %i.bq, 2.000000e+00
  %i.bs = fdiv double %i.br, %i.af
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bv = fsub <2 x double> %i.an, %i.bu
  %i.bw = fadd <2 x double> %i.an, %i.bu
  %i.bx = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bx, ptr %i.a, align 16, !tbaa !12
  %i.by = load i32, ptr @y_block_size, align 4, !tbaa !7
  %i.bz = load i32, ptr @z_block_size, align 4, !tbaa !7
  %i.ca = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %i.cb = insertelement <2 x i32> %i.ca, i32 %i.bz, i64 1
  %i.cc = sitofp <2 x i32> %i.cb to <2 x double>
  %i.cd = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv <2 x double> %i.ce, %i.cc
  %i.cg = fmul <2 x double> %i.cf, splat (double 2.000000e+00) ; 2 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0
  %i.ci = fdiv double %i.ch, %i.ar
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cl = fsub <2 x double> %i.az, %i.ck
  %i.cm = fadd <2 x double> %i.az, %i.ck
  %i.cn = shufflevector <2 x double> %i.cl, <2 x double> %i.cm, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cn, ptr %i.i, align 16, !tbaa !12
  %i.co = extractelement <2 x double> %i.cg, i64 1
  %i.cp = fdiv double %i.co, %i.bd
  %i.cq = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = fsub <2 x double> %i.bl, %i.cr
  %i.ct = fadd <2 x double> %i.bl, %i.cr
  %i.cu = shufflevector <2 x double> %i.cs, <2 x double> %i.ct, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.cu, ptr %i.j, align 16, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.cv = call i32 @check_block(ptr noundef nonnull %i.a)
  %.not57 = icmp eq i32 %i.cv, 0
  br i1 %.not57, label %bb.f, label %thread-pre-split.sink.split

bb.f:                                             ; preds = %bb.e
  %i.cw = load i32, ptr @refine_ghost, align 4, !tbaa !7
  %.not58 = icmp eq i32 %i.cw, 0
  br i1 %.not58, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cx = load i32, ptr %i.w, align 4, !tbaa !27  ; 2 uses
  %.not59 = icmp eq i32 %i.cx, 0
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cy = load ptr, ptr @p2, align 8, !tbaa !18
  %i.cz = load i32, ptr @num_refine, align 4, !tbaa !7
  %i.da = sub nsw i32 %i.cz, %i.cx
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [4 x i8], ptr %i.cy, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.df = sitofp i32 %i.de to double              ; 2 uses
  %i.dg = load i32, ptr @x_block_size, align 4, !tbaa !7
  %i.dh = load i32, ptr @y_block_size, align 4, !tbaa !7
  %i.di = insertelement <2 x i32> poison, i32 %i.dg, i64 0
  %i.dj = insertelement <2 x i32> %i.di, i32 %i.dh, i64 1
  %i.dk = sitofp <2 x i32> %i.dj to <2 x double>
  %i.dl = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fdiv <2 x double> %i.dm, %i.dk
  %i.do = load <2 x i32>, ptr @mesh_size, align 4, !tbaa !7
  %i.dp = sitofp <2 x i32> %i.do to <2 x double>
  %i.dq = fdiv <2 x double> %i.dn, %i.dp
  %0 = shufflevector <2 x double> %i.dq, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %1 = load <4 x double>, ptr %i.a, align 16, !tbaa !12 ; 2 uses
  %2 = fsub <4 x double> %1, %0
  %3 = fadd <4 x double> %1, %0
  %4 = shufflevector <4 x double> %2, <4 x double> %3, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x double> %4, ptr %i.a, align 16, !tbaa !12
  %i.dr = load i32, ptr @z_block_size, align 4, !tbaa !7
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = fdiv double %i.df, %i.ds
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @mesh_size, i64 8), align 4, !tbaa !7
  %i.dv = sitofp i32 %i.du to double
  %i.dw = fdiv double %i.dt, %i.dv                ; 2 uses
  %i.dx = load double, ptr %i.j, align 16, !tbaa !12
  %i.dy = fsub double %i.dx, %i.dw
  store double %i.dy, ptr %i.j, align 16, !tbaa !12
  %i.dz = load double, ptr %i.k, align 8, !tbaa !12
  %i.ea = fadd double %i.dw, %i.dz
  store double %i.ea, ptr %i.k, align 8, !tbaa !12
  %i.eb = call i32 @check_block(ptr noundef nonnull %i.a)
  %.not60 = icmp eq i32 %i.eb, 0
  br i1 %.not60, label %thread-pre-split, label %thread-pre-split.sink.split

thread-pre-split.sink.split:                      ; preds = %bb.h, %bb.e
  %.sink = phi i32 [ 1, %bb.e ], [ 0, %bb.h ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %.sink, ptr %i.ec, align 8, !tbaa !28
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.sink.split, %bb.h, %bb.f
  %.pr = load i32, ptr %i.w, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.g
  %i.ed = phi i32 [ %.pr, %thread-pre-split ], [ 0, %bb.g ] ; 2 uses
  %i.ee = load i32, ptr @num_refine, align 4, !tbaa !7
  %i.ef = icmp eq i32 %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !28 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 1
  %or.cond = select i1 %i.ef, i1 %i.ei, i1 false
  %.not61 = icmp eq i32 %i.eh, 0
  %or.cond100 = select i1 %or.cond, i1 true, i1 %.not61
  br i1 %or.cond100, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 0, ptr %i.ej, align 8, !tbaa !28
  %i.ek = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !29 ; 2 uses
  %.not62 = icmp eq i32 %i.el, -1
  br i1 %.not62, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.em = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.en = load i32, ptr %i.em, align 4, !tbaa !30
  %i.eo = load i32, ptr @my_pe, align 4, !tbaa !7
  %i.ep = icmp eq i32 %i.en, %i.eo
  br i1 %i.ep, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.eq = load ptr, ptr @parents, align 8, !tbaa !9
  %i.er = sext i32 %i.el to i64
  %i.es = getelementptr inbounds [100 x i8], ptr %i.eq, i64 %i.er ; 17 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 20
  store i32 0, ptr %i.et, align 4, !tbaa !32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.ev = load ptr, ptr @blocks, align 8          ; 8 uses
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !7  ; 3 uses
  %i.ex = load i32, ptr @my_pe, align 4, !tbaa !7 ; 2 uses
  %i.ey = icmp eq i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !7  ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, -1
  br i1 %i.fb, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [192 x i8], ptr %i.ev, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !28
  %i.fg = icmp eq i32 %i.ff, -1
  br i1 %i.fg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.fe, align 8, !tbaa !28
  %.pre69 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.m, %bb.o, %bb.n
  %i.fh = phi i32 [ %i.ex, %bb.l ], [ %i.ew, %bb.m ], [ %.pre69, %bb.o ], [ %i.ew, %bb.n ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 60
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !7
  %i.fk = icmp eq i32 %i.fj, %i.fh
  br i1 %i.fk, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 28
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !7  ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, -1
  br i1 %i.fn, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fo = zext nneg i32 %i.fm to i64
  %i.fp = getelementptr inbounds nuw [192 x i8], ptr %i.ev, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !28
  %i.fs = icmp eq i32 %i.fr, -1
  br i1 %i.fs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.fq, align 8, !tbaa !28
  %.pre70 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.ft = phi i32 [ %.pre70, %bb.s ], [ %i.fh, %bb.r ], [ %i.fh, %bb.q ], [ %i.fh, %bb.p ] ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !7
  %i.fw = icmp eq i32 %i.fv, %i.ft
  br i1 %i.fw, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.fx = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !7  ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, -1
  br i1 %i.fz, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ga = zext nneg i32 %i.fy to i64
  %i.gb = getelementptr inbounds nuw [192 x i8], ptr %i.ev, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !28
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.gc, align 8, !tbaa !28
  %.pre71 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %i.gf = phi i32 [ %.pre71, %bb.w ], [ %i.ft, %bb.v ], [ %i.ft, %bb.u ], [ %i.ft, %bb.t ] ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.es, i64 68
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !7
  %i.gi = icmp eq i32 %i.gh, %i.gf
  br i1 %i.gi, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.gj = getelementptr inbounds nuw i8, ptr %i.es, i64 36
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !7  ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, -1
  br i1 %i.gl, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gm = zext nneg i32 %i.gk to i64
  %i.gn = getelementptr inbounds nuw [192 x i8], ptr %i.ev, i64 %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !28
  %i.gq = icmp eq i32 %i.gp, -1
  br i1 %i.gq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.go, align 8, !tbaa !28
  %.pre72 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.gr = phi i32 [ %.pre72, %bb.aa ], [ %i.gf, %bb.z ], [ %i.gf, %bb.y ], [ %i.gf, %bb.x ] ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !7
  %i.gu = icmp eq i32 %i.gt, %i.gr
  br i1 %i.gu, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.gv = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !7  ; 2 uses
  %i.gx = icmp sgt i32 %i.gw, -1
  br i1 %i.gx, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gy = zext nneg i32 %i.gw to i64
  %i.gz = getelementptr inbounds nuw [192 x i8], ptr %i.ev, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !28
  %i.hc = icmp eq i32 %i.hb, -1
  br i1 %i.hc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.ha, align 8, !tbaa !28
  %.pre73 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.hd = phi i32 [ %.pre73, %bb.ae ], [ %i.gr, %bb.ad ], [ %i.gr, %bb.ac ], [ %i.gr, %bb.ab ] ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.es, i64 76
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !7
  %i.hg = icmp eq i32 %i.hf, %i.hd
  br i1 %i.hg, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.hh = getelementptr inbounds nuw i8, ptr %i.es, i64 44
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !7  ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, -1
end_hunk_0
