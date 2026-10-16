Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/mca_base_components_open?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@opal_list_t_class = external global %struct.opal_class_t, align 8
@mca_base_component_show_load_errors = external local_unnamed_addr global ptr, align 8
@opal_show_help = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"help-mca-base.txt\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"internal error during init\00", align 1
@__func__.mca_base_show_load_errors_init = private unnamed_addr constant [31 x i8] c"mca_base_show_load_errors_init\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"mca_base_components_open.c\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to create opal_cstring\00", align 1
@show_load_errors = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Failed to argv split opal_mca_base_component_show_load_errors\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"Failed to argv split opal_mca_base_component_show_load_errors value\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Argv split resulted in 0 tokens\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"show_load_errors: too many /\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Failed to alloc new fc_pair_t\00", align 1
@show_load_errors_include = internal global { { ptr, i32, [4 x i8] }, %struct.opal_list_item_t, i64 } zeroinitializer, align 8
@show_load_errors_exclude = internal global { { ptr, i32, [4 x i8] }, %struct.opal_list_item_t, i64 } zeroinitializer, align 8
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"mca: base: components_open: opening %s components\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"mca: base: components_open: found loaded component %s\00", align 1
@.str.16 = private unnamed_addr constant [66 x i8] c"mca: base: components_open: component %s open function successful\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"mca: base: components_open: component %s / %s open function failed\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"mca: base: components_open: component %s open function failed\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @fc_pair_constructor(ptr nofree noundef writeonly captures(none) initializes((40, 56)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal void @fc_pair_destructor(ptr nofree noundef captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.b) #11
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.d) #11
  store ptr null, ptr %i.c, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -5, 1) i32 @mca_base_show_load_errors_init() local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !20
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 32), align 8, !tbaa !42
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_list_t_class) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr @opal_list_t_class, ptr @show_load_errors_include, align 8, !tbaa !24
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_include, i64 8), align 8, !tbaa !43
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 40), align 8, !tbaa !44 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %.not6.i = icmp eq ptr %i.e, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.f = phi ptr [ %i.h, %.lr.ph.i ], [ %i.e, %bb.c ]
  %.07.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %bb.c ]
  tail call void %i.f(ptr noundef nonnull @show_load_errors_include) #11, !inline_history !38
  %i.g = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !39

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.c
  %i.i = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !20
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 32), align 8, !tbaa !42
  %.not55 = icmp eq i32 %i.i, %i.j
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %opal_obj_run_constructors.exit
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_list_t_class) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %opal_obj_run_constructors.exit
  store ptr @opal_list_t_class, ptr @show_load_errors_exclude, align 8, !tbaa !24
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @show_load_errors_exclude, i64 8), align 8, !tbaa !43
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_list_t_class, i64 40), align 8, !tbaa !44 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %.not6.i58 = icmp eq ptr %i.l, null
  br i1 %.not6.i58, label %opal_obj_run_constructors.exit62, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.e, %.lr.ph.i59
  %i.m = phi ptr [ %i.o, %.lr.ph.i59 ], [ %i.l, %bb.e ]
  %.07.i60 = phi ptr [ %i.n, %.lr.ph.i59 ], [ %i.k, %bb.e ]
  tail call void %i.m(ptr noundef nonnull @show_load_errors_exclude) #11, !inline_history !38
  %i.n = getelementptr inbounds nuw i8, ptr %.07.i60, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %.not.i61 = icmp eq ptr %i.o, null
  br i1 %.not.i61, label %opal_obj_run_constructors.exit62, label %.lr.ph.i59, !llvm.loop !39

opal_obj_run_constructors.exit62:                 ; preds = %.lr.ph.i59, %bb.e
  %i.p = load ptr, ptr @mca_base_component_show_load_errors, align 8, !tbaa !45
  %i.q = tail call noalias ptr @opal_cstring_create(ptr noundef %i.p) #11 ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %opal_obj_run_constructors.exit62
  %i.s = load ptr, ptr @opal_show_help, align 8, !tbaa !25
  %i.t = tail call i32 (ptr, ptr, i32, ...) %i.s(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull @__func__.mca_base_show_load_errors_init, ptr noundef nonnull @.str.3, i32 noundef 111, i32 noundef -1, ptr noundef nonnull @.str.4) #11 ; 0 uses
  br label %bb.ai

bb.g:                                             ; preds = %opal_obj_run_constructors.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.u = call i32 @opal_cstring_to_bool(ptr noundef nonnull %i.q, ptr noundef nonnull %i.a) #11
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.w = load i8, ptr @opal_uses_threads, align 1, !tbaa !28, !range !29, !noundef !30
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !31

bb.h:                                             ; preds = %bb.g
  %i.y = atomicrmw volatile add ptr %i.v, i32 -1 monotonic, align 4
  %i.z = add i32 %i.y, -1
  br label %opal_thread_add_fetch_32.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = load volatile i32, ptr %i.v, align 4, !tbaa !20
  %i.ab = add nsw i32 %i.aa, -1
  store volatile i32 %i.ab, ptr %i.v, align 4, !tbaa !20
  %i.ac = load volatile i32, ptr %i.v, align 4, !tbaa !20
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ %i.z, %bb.h ], [ %i.ac, %bb.i ]
  %i.ad = icmp eq i32 %.0.i, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %.not6.i63 = icmp eq ptr %i.ah, null
  br i1 %.not6.i63, label %opal_obj_run_destructors.exit, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.j, %.lr.ph.i64
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i64 ], [ %i.ah, %bb.j ]
  %.07.i65 = phi ptr [ %i.aj, %.lr.ph.i64 ], [ %i.ag, %bb.j ]
  call void %i.ai(ptr noundef nonnull %i.q) #11, !inline_history !0
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i65, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25 ; 2 uses
  %.not.i66 = icmp eq ptr %i.ak, null
  br i1 %.not.i66, label %opal_obj_run_destructors.exit, label %.lr.ph.i64, !llvm.loop !1

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i64, %bb.j
  call void @free(ptr noundef nonnull %i.q) #11
  br label %bb.k

bb.k:                                             ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit
  %i.al = icmp eq i32 %i.u, 0
  br i1 %i.al, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.am = load i8, ptr %i.a, align 1, !tbaa !28, !range !29, !noundef !30
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr @show_load_errors, align 4, !tbaa !20
  br label %.thread70

bb.n:                                             ; preds = %bb.l
  store i32 3, ptr @show_load_errors, align 4, !tbaa !20
  br label %.thread70

bb.o:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr @mca_base_component_show_load_errors, align 8, !tbaa !45 ; 4 uses
  %i.ap = call i32 @strcasecmp(ptr noundef %i.ao, ptr noundef nonnull @.str.5) #12
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr @show_load_errors, align 4, !tbaa !20
  br label %.thread70

bb.q:                                             ; preds = %bb.o
  %i.ar = call i32 @strcasecmp(ptr noundef %i.ao, ptr noundef nonnull @.str.6) #12
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 3, ptr @show_load_errors, align 4, !tbaa !20
  br label %.thread70

bb.s:                                             ; preds = %bb.q
  %i.at = load i8, ptr %i.ao, align 1, !tbaa !46
  %i.au = icmp eq i8 %i.at, 94                    ; 3 uses
  %spec.store.select = select i1 %i.au, i32 2, i32 1
  store i32 %spec.store.select, ptr @show_load_errors, align 4, !tbaa !20
  %spec.select = zext i1 %i.au to i64
  %spec.select57 = select i1 %i.au, ptr @show_load_errors_exclude, ptr @show_load_errors_include ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %spec.select
  %i.aw = call noalias ptr @opal_argv_split(ptr noundef nonnull %i.av, i32 noundef 44) #11 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !45 ; 2 uses
  %.not5677 = icmp eq ptr %i.ay, null
  br i1 %.not5677, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %0 = getelementptr inbounds nuw i8, ptr %spec.select57, i64 16
  %1 = getelementptr inbounds nuw i8, ptr %spec.select57, i64 40 ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %spec.select57, i64 56 ; 2 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr @opal_show_help, align 8, !tbaa !25
  %i.ba = call i32 (ptr, ptr, i32, ...) %i.az(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull @__func__.mca_base_show_load_errors_init, ptr noundef nonnull @.str.3, i32 noundef 156, i32 noundef -1, ptr noundef nonnull @.str.7) #11 ; 0 uses
  br label %.thread70

bb.u:                                             ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ]
  %i.bb = phi ptr [ %i.ay, %.lr.ph ], [ %i.cp, %bb.ah ] ; 2 uses
  %i.bc = call noalias ptr @opal_argv_split(ptr noundef nonnull %i.bb, i32 noundef 47) #11 ; 5 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.be = load ptr, ptr @opal_show_help, align 8, !tbaa !25
  %i.bf = call i32 (ptr, ptr, i32, ...) %i.be(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull @__func__.mca_base_show_load_errors_init, ptr noundef nonnull @.str.3, i32 noundef 171, i32 noundef -1, ptr noundef nonnull @.str.8) #11 ; 0 uses
  br label %.thread70

bb.w:                                             ; preds = %bb.u
  %i.bg = call i32 @opal_argv_count(ptr noundef nonnull %i.bc) #11 ; 3 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bi = load ptr, ptr @opal_show_help, align 8, !tbaa !25
  %i.bj = call i32 (ptr, ptr, i32, ...) %i.bi(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull @__func__.mca_base_show_load_errors_init, ptr noundef nonnull @.str.3, i32 noundef 183, i32 noundef -1, ptr noundef nonnull @.str.9) #11 ; 0 uses
  br label %.thread70

bb.y:                                             ; preds = %bb.w
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !45
  %char0 = load i8, ptr %i.bk, align 1
  %i.bl = icmp eq i8 %char0, 0
  br i1 %i.bl, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = icmp sgt i32 %i.bg, 2
  br i1 %i.bm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bn = load ptr, ptr @opal_show_help, align 8, !tbaa !25
  %i.bo = call i32 (ptr, ptr, i32, ...) %i.bn(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.10, i32 noundef 1, ptr noundef nonnull %i.bb) #11 ; 0 uses
  br label %.thread70

bb.ab:                                            ; preds = %bb.z
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_base_fc_pair_t_class, i64 56), align 8, !tbaa !47
  %i.bq = call noalias ptr @malloc(i64 noundef %i.bp) #13 ; 10 uses
  %i.br = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !20
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_base_fc_pair_t_class, i64 32), align 8, !tbaa !42
  %.not.i67 = icmp eq i32 %i.br, %i.bs
  br i1 %.not.i67, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @opal_class_initialize(ptr noundef nonnull @opal_base_fc_pair_t_class) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not9.i = icmp eq ptr %i.bq, null
  br i1 %.not9.i, label %opal_obj_new.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr @opal_base_fc_pair_t_class, ptr %i.bq, align 8, !tbaa !24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store volatile i32 1, ptr %i.bt, align 8, !tbaa !43
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_base_fc_pair_t_class, i64 40), align 8, !tbaa !44 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !25 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bv, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %.lr.ph.i.i
  %i.bw = phi ptr [ %i.by, %.lr.ph.i.i ], [ %i.bv, %bb.ae ]
  %.07.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %i.bu, %bb.ae ]
  call void %i.bw(ptr noundef nonnull %i.bq) #11, !inline_history !40
  %i.bx = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !39

opal_obj_new.exit:                                ; preds = %bb.ad
  %i.bz = load ptr, ptr @opal_show_help, align 8, !tbaa !25
  %i.ca = call i32 (ptr, ptr, i32, ...) %i.bz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull @__func__.mca_base_show_load_errors_init, ptr noundef nonnull @.str.3, i32 noundef 208, i32 noundef -2, ptr noundef nonnull @.str.11) #11 ; 0 uses
  br label %.thread70

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.ae
  %i.cb = load ptr, ptr %i.bc, align 8, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !18
  %i.cd = icmp eq i32 %i.bg, 2
  br i1 %i.cd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !45
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit
  %i.ch = load volatile ptr, ptr %1, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store volatile ptr %i.ch, ptr %i.ci, align 8, !tbaa !33
  %i.cj = load volatile ptr, ptr %1, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store volatile ptr %i.bq, ptr %i.ck, align 8, !tbaa !34
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store volatile ptr %0, ptr %i.cl, align 8, !tbaa !34
  store volatile ptr %i.bq, ptr %1, align 8, !tbaa !33
  %i.cm = load volatile i64, ptr %2, align 8, !tbaa !36
  %i.cn = add i64 %i.cm, 1
  store volatile i64 %i.cn, ptr %2, align 8, !tbaa !36
  br label %bb.ah

bb.ah:                                            ; preds = %bb.y, %bb.ag
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.next
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !45 ; 2 uses
  %.not56 = icmp eq ptr %i.cp, null
  br i1 %.not56, label %._crit_edge, label %bb.u, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.ah, %.preheader
  call void @opal_argv_free(ptr noundef nonnull %i.aw) #11
  br label %.thread70

.thread70:                                        ; preds = %bb.v, %bb.x, %bb.aa, %opal_obj_new.exit, %bb.t, %bb.n, %bb.m, %bb.r, %bb.p, %._crit_edge
  %.248 = phi i32 [ 0, %bb.n ], [ 0, %._crit_edge ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.m ], [ -1, %bb.t ], [ -2, %opal_obj_new.exit ], [ -5, %bb.aa ], [ -1, %bb.x ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ai

bb.ai:                                            ; preds = %.thread70, %bb.f
  %.3 = phi i32 [ -1, %bb.f ], [ %.248, %.thread70 ]
  ret i32 %.3
}

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noalias ptr @opal_cstring_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare i32 @opal_cstring_to_bool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare noalias ptr @opal_argv_split(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @opal_argv_count(ptr noundef) local_unnamed_addr #3

declare void @opal_argv_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define noundef zeroext i1 @mca_base_show_load_errors(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @show_load_errors, align 4, !tbaa !20 ; 2 uses
  switch i32 %i.a, label %bb.c [
    i32 0, label %.loopexit
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 1                      ; 4 uses
  %i.c = select i1 %i.b, ptr @show_load_errors_include, ptr @show_load_errors_exclude ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.d = load volatile ptr, ptr %3, align 8, !tbaa !37 ; 2 uses
  %.not17 = icmp eq ptr %i.d, %2
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.018 = phi ptr [ %i.o, %bb.f ], [ %i.d, %bb.c ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.018, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.f) #12
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.018, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.j) #12
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.018, i64 16
  %i.o = load volatile ptr, ptr %i.n, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq ptr %i.o, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %i.p = xor i1 %i.b, true
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %._crit_edge, %bb.a, %bb.b
  %.1 = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.p, %._crit_edge ], [ %i.b, %bb.e ], [ %i.b, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define noundef i32 @mca_base_show_load_errors_finalize() local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @show_load_errors_include, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.e = phi ptr [ %i.g, %.lr.ph.i ], [ %i.d, %bb.a ]
  %.07.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.c, %bb.a ]
  tail call void %i.e(ptr noundef nonnull @show_load_errors_include) #11, !inline_history !0
  %i.f = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.a
  %i.h = load ptr, ptr @show_load_errors_exclude, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %.not6.i1 = icmp eq ptr %i.k, null
  br i1 %.not6.i1, label %opal_obj_run_destructors.exit5, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %opal_obj_run_destructors.exit, %.lr.ph.i2
  %i.l = phi ptr [ %i.n, %.lr.ph.i2 ], [ %i.k, %opal_obj_run_destructors.exit ]
  %.07.i3 = phi ptr [ %i.m, %.lr.ph.i2 ], [ %i.j, %opal_obj_run_destructors.exit ]
  tail call void %i.l(ptr noundef nonnull @show_load_errors_exclude) #11, !inline_history !0
  %i.m = getelementptr inbounds nuw i8, ptr %.07.i3, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %.not.i4 = icmp eq ptr %i.n, null
  br i1 %.not.i4, label %opal_obj_run_destructors.exit5, label %.lr.ph.i2, !llvm.loop !1

opal_obj_run_destructors.exit5:                   ; preds = %.lr.ph.i2, %opal_obj_run_destructors.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @mca_base_framework_components_open(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %1, 2
  %.not9 = icmp eq i32 %i.b, 0
  %i.c = tail call i32 @mca_base_component_find(ptr noundef null, ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %.not9) #11 ; 2 uses
  %.not10.not = icmp eq i32 %i.c, 0
  br i1 %.not10.not, label %bb.c, label %open_components.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !53   ; 11 uses
  %i.f = tail call i32 @mca_base_components_filter(ptr noundef %0, i32 noundef 0) #11 ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %open_components.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.e) #11
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.e, ptr noundef nonnull @.str.14, ptr noundef %i.i) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load volatile ptr, ptr %i.k, align 8, !tbaa !37 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load volatile ptr, ptr %i.m, align 8, !tbaa !34
  %.not4757.i = icmp eq ptr %i.l, %i.j
  br i1 %.not4757.i, label %open_components.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.x, %.lr.ph.i
  %.059.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.bs, %bb.x ] ; 3 uses
  %.04258.i = phi ptr [ %i.l, %.lr.ph.i ], [ %.059.i, %bb.x ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.04258.i, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 6 uses
  %i.r = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.e) #11
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.e, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.s) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59   ; 2 uses
  %.not48.i = icmp eq ptr %i.u, null
  br i1 %.not48.i, label %bb.x, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = tail call i32 %i.u() #11, !inline_history !48
  switch i32 %i.v, label %bb.m [
    i32 0, label %bb.k
    i32 -16, label %bb.t
  ]

bb.k:                                             ; preds = %bb.j
  %i.w = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.e) #11
  br i1 %i.w, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.e, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.x) #11
  br label %bb.x

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 84 ; 3 uses
  %i.aa = load i32, ptr @show_load_errors, align 4, !tbaa !20 ; 2 uses
  switch i32 %i.aa, label %bb.n [
    i32 0, label %mca_base_show_load_errors.exit.thread.i
    i32 3, label %mca_base_show_load_errors.exit.thread54.i
  ]

bb.n:                                             ; preds = %bb.m
  %.not56.i = icmp eq i32 %i.aa, 1                ; 3 uses
  %i.ab = select i1 %.not56.i, ptr @show_load_errors_include, ptr @show_load_errors_exclude ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ac = load volatile ptr, ptr %3, align 8, !tbaa !37 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.ac, %2
  br i1 %.not17.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %bb.q
  %.018.i.i = phi ptr [ %i.an, %bb.q ], [ %i.ac, %bb.n ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.af = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %i.ae) #12
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %mca_base_show_load_errors.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(1) %i.ai) #12
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %mca_base_show_load_errors.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 16
  %i.an = load volatile ptr, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %2
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %bb.q, %bb.n
  br i1 %.not56.i, label %mca_base_show_load_errors.exit.thread54.i, label %mca_base_show_load_errors.exit.thread.i

mca_base_show_load_errors.exit.i:                 ; preds = %bb.p, %bb.o
  br i1 %.not56.i, label %mca_base_show_load_errors.exit.thread.i, label %mca_base_show_load_errors.exit.thread54.i

mca_base_show_load_errors.exit.thread.i:          ; preds = %mca_base_show_load_errors.exit.i, %._crit_edge.i.i, %bb.m
  %i.ao = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 0, i32 noundef %i.e) #11
  br i1 %i.ao, label %bb.r, label %mca_base_show_load_errors.exit.thread54.i

bb.r:                                             ; preds = %mca_base_show_load_errors.exit.thread.i
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.e, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z) #11
  br label %mca_base_show_load_errors.exit.thread54.i

mca_base_show_load_errors.exit.thread54.i:        ; preds = %bb.r, %mca_base_show_load_errors.exit.thread.i, %mca_base_show_load_errors.exit.i, %._crit_edge.i.i, %bb.m
  %i.ap = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.e) #11
  br i1 %i.ap, label %bb.s, label %bb.t

bb.s:                                             ; preds = %mca_base_show_load_errors.exit.thread54.i
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.e, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.z) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %mca_base_show_load_errors.exit.thread54.i, %bb.j
  tail call void @mca_base_component_close(ptr noundef nonnull %i.q, i32 noundef %i.e) #11
  %i.aq = getelementptr inbounds nuw i8, ptr %.04258.i, i64 16 ; 2 uses
  %i.ar = load volatile ptr, ptr %i.aq, align 8, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %.04258.i, i64 24 ; 3 uses
  %i.at = load volatile ptr, ptr %i.as, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store volatile ptr %i.ar, ptr %i.au, align 8, !tbaa !34
  %i.av = load volatile ptr, ptr %i.as, align 8, !tbaa !33
  %i.aw = load volatile ptr, ptr %i.aq, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store volatile ptr %i.av, ptr %i.ax, align 8, !tbaa !33
  %i.ay = load volatile i64, ptr %i.o, align 8, !tbaa !36
  %i.az = add i64 %i.ay, -1
  store volatile i64 %i.az, ptr %i.o, align 8, !tbaa !36
  %i.ba = load volatile ptr, ptr %i.as, align 8, !tbaa !33 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.04258.i, i64 8 ; 4 uses
  %i.bc = load i8, ptr @opal_uses_threads, align 1, !tbaa !28, !range !29, !noundef !30
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.u, label %bb.v, !prof !31

bb.u:                                             ; preds = %bb.t
  %i.be = atomicrmw volatile add ptr %i.bb, i32 -1 monotonic, align 4
  %i.bf = add i32 %i.be, -1
  br label %opal_thread_add_fetch_32.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bg = load volatile i32, ptr %i.bb, align 8, !tbaa !20
  %i.bh = add nsw i32 %i.bg, -1
  store volatile i32 %i.bh, ptr %i.bb, align 8, !tbaa !20
  %i.bi = load volatile i32, ptr %i.bb, align 8, !tbaa !20
  br label %opal_thread_add_fetch_32.exit.i

opal_thread_add_fetch_32.exit.i:                  ; preds = %bb.v, %bb.u
  %.0.i.i = phi i32 [ %i.bf, %bb.u ], [ %i.bi, %bb.v ]
  %i.bj = icmp eq i32 %.0.i.i, 0
  br i1 %i.bj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %opal_thread_add_fetch_32.exit.i
  %i.bk = load ptr, ptr %.04258.i, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !25 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bn, null
  br i1 %.not6.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i50.i

.lr.ph.i50.i:                                     ; preds = %bb.w, %.lr.ph.i50.i
  %i.bo = phi ptr [ %i.bq, %.lr.ph.i50.i ], [ %i.bn, %bb.w ]
  %.07.i.i = phi ptr [ %i.bp, %.lr.ph.i50.i ], [ %i.bm, %bb.w ]
  tail call void %i.bo(ptr noundef nonnull %.04258.i) #11, !inline_history !49
  %i.bp = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !25 ; 2 uses
  %.not.i51.i = icmp eq ptr %i.bq, null
  br i1 %.not.i51.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i50.i, !llvm.loop !1

opal_obj_run_destructors.exit.i:                  ; preds = %.lr.ph.i50.i, %bb.w
  tail call void @free(ptr noundef nonnull %.04258.i) #11
  br label %bb.x

bb.x:                                             ; preds = %opal_obj_run_destructors.exit.i, %opal_thread_add_fetch_32.exit.i, %bb.l, %bb.k, %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %.059.i, i64 16
  %i.bs = load volatile ptr, ptr %i.br, align 8, !tbaa !34
  %.not47.i = icmp eq ptr %.059.i, %i.j
  br i1 %.not47.i, label %open_components.exit, label %bb.g, !llvm.loop !50

open_components.exit:                             ; preds = %bb.x, %bb.f, %bb.c, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %i.f, %bb.c ], [ 0, %bb.f ], [ 0, %bb.x ]
  ret i32 %.1
}

declare i32 @mca_base_component_find(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare i32 @mca_base_components_filter(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @opal_output_check_verbosity(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @mca_base_component_close(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !26}
!2 = distinct !{!2, !26}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS12opal_class_t", !11, i64 0}
!13 = !{!"opal_object_t", !12, i64 0, !8, i64 8}
!14 = !{!"p1 _ZTS16opal_list_item_t", !11, i64 0}
!15 = !{!"opal_list_item_t", !13, i64 0, !14, i64 16, !14, i64 24, !8, i64 32}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"fc_pair", !15, i64 0, !16, i64 40, !16, i64 48}
!18 = !{!17, !16, i64 40}
!19 = !{!17, !16, i64 48}
!20 = !{!8, !8, i64 0}
!21 = !{!"any p2 pointer", !11, i64 0}
!22 = !{!"long", !7, i64 0}
!23 = !{!"opal_class_t", !16, i64 0, !12, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !21, i64 40, !21, i64 48, !22, i64 56}
!24 = !{!13, !12, i64 0}
!25 = !{!11, !11, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"_Bool", !7, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!32 = !{!23, !21, i64 48}
!33 = !{!15, !14, i64 24}
!34 = !{!15, !14, i64 16}
!35 = !{!"opal_list_t", !13, i64 0, !15, i64 16, !22, i64 56}
!36 = !{!35, !22, i64 56}
!37 = !{!35, !14, i64 32}
!38 = distinct !{null}
!39 = distinct !{!39, !26}
!40 = distinct !{null, null}
!41 = distinct !{!41, !26}
!42 = !{!23, !8, i64 32}
!43 = !{!13, !8, i64 8}
!44 = !{!23, !21, i64 40}
!45 = !{!16, !16, i64 0}
!46 = !{!7, !7, i64 0}
!47 = !{!23, !22, i64 56}
!48 = distinct !{null}
!49 = distinct !{null, null}
!50 = distinct !{!50, !26}
!51 = !{!"p2 _ZTS26mca_base_component_2_1_0_t", !21, i64 0}
!52 = !{!"mca_base_framework_t", !16, i64 0, !16, i64 8, !16, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !8, i64 48, !8, i64 52, !51, i64 56, !16, i64 64, !8, i64 72, !8, i64 76, !35, i64 80, !35, i64 144}
!53 = !{!52, !8, i64 76}
!54 = !{!52, !16, i64 8}
!55 = !{!"p1 _ZTS26mca_base_component_2_1_0_t", !11, i64 0}
!56 = !{!"mca_base_component_list_item_t", !15, i64 0, !55, i64 40}
!57 = !{!56, !55, i64 40}
!58 = !{!"mca_base_component_2_1_0_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !8, i64 28, !8, i64 32, !8, i64 36, !7, i64 40, !8, i64 72, !8, i64 76, !8, i64 80, !7, i64 84, !8, i64 148, !8, i64 152, !8, i64 156, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !8, i64 192, !7, i64 196}
!59 = !{!58, !11, i64 160}
end_hunk_0
