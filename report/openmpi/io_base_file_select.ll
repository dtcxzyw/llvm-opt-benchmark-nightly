Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/io_base_file_select?download=true
inline.NumInlined: 30
inline.NumDeleted: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.opal_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.mca_base_framework_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.opal_list_t, %struct.opal_list_t }
%struct.opal_list_t = type { %struct.opal_object_t, %struct.opal_list_item_t, i64 }
%struct.opal_object_t = type { ptr, i32 }
%struct.opal_list_item_t = type { %struct.opal_object_t, ptr, ptr, i32 }
%struct.avail_io_t = type { %struct.opal_list_item_t, i32, i32, %union.mca_io_base_components_t, %union.mca_io_base_modules_t, ptr }
%union.mca_io_base_components_t = type { %struct.mca_io_base_component_2_0_0_t }
%struct.mca_io_base_component_2_0_0_t = type { %struct.mca_base_component_2_1_0_t, %struct.mca_base_component_data_2_0_0_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mca_base_component_2_1_0_t = type { i32, i32, i32, [16 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, [64 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, i32, [28 x i8] }
%struct.mca_base_component_data_2_0_0_t = type { i32, [32 x i8] }
%union.mca_io_base_modules_t = type { %struct.mca_io_base_module_2_0_0_t }
%struct.mca_io_base_module_2_0_0_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@opal_mutex_t_class = external global %struct.opal_class_t, align 8
@ompi_mpi_ompio_bootstrap_mutex = global { { ptr, i32, [4 x i8] }, %union.pthread_mutex_t, i32, [4 x i8] } { { ptr, i32, [4 x i8] } { ptr @opal_mutex_t_class, i32 1, [4 x i8] zeroinitializer }, %union.pthread_mutex_t zeroinitializer, i32 0, [4 x i8] zeroinitializer }, align 8
@ompi_io_base_framework = external global %struct.mca_base_framework_t, align 8
@.str = private unnamed_addr constant [34 x i8] c"io:base:file_select: new file: %s\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"io:base:file_select: Checking preferred module: %s\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"io:base:file_select: Checking all available modules\00", align 1
@ompi_fs_base_framework = external global %struct.mca_base_framework_t, align 8
@ompi_fcoll_base_framework = external global %struct.mca_base_framework_t, align 8
@ompi_fbtl_base_framework = external global %struct.mca_base_framework_t, align 8
@ompi_sharedfp_base_framework = external global %struct.mca_base_framework_t, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"io:base:file_select: Selected io module %s\00", align 1
@ompi_ftmpi_enabled = external local_unnamed_addr global i8, align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@opal_show_help = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"help-mpi-ft.txt\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"module:untested:failundef\00", align 1
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@opal_list_t_class = external global %struct.opal_class_t, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [59 x i8] c"io:base:file_select: component available: %s, priority: %d\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"io:base:file_select: component not available: %s\00", align 1
@avail_io_t_class = internal global %struct.opal_class_t { ptr @.str.10, ptr @opal_list_item_t_class, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null, i64 800 }, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"avail_io_t\00", align 1
@opal_list_item_t_class = external global %struct.opal_class_t, align 8

; Function Attrs: nounwind uwtable
define i32 @mca_io_base_file_select(ptr noundef initializes((140, 144), (952, 960)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.avail_io_t, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_io_base_framework, i64 76), align 4, !tbaa !21
  %i.c = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.b) #9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_io_base_framework, i64 76), align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.d, ptr noundef nonnull @.str, ptr noundef %i.f) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !63
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !23
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_io_base_framework, i64 76), align 4, !tbaa !21
  %i.k = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.j) #9
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_io_base_framework, i64 76), align 4, !tbaa !21
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.l, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.i) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = call fastcc ptr @check_components(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i32 @mca_io_base_file_select(ptr noundef nonnull %0, ptr noundef null)
  br label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_io_base_framework, i64 76), align 4, !tbaa !21
  %i.q = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.p) #9
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_io_base_framework, i64 76), align 4, !tbaa !21
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.r, ptr noundef nonnull @.str.2) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.s = tail call fastcc ptr @check_components(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0) ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.f, %bb.j
  %.04681 = phi ptr [ %i.s, %bb.j ], [ %i.m, %bb.f ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04681, i64 56 ; 9 uses
  %i.v = load volatile i64, ptr %i.u, align 8, !tbaa !24
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %opal_list_remove_last.exit, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.x = load volatile i64, ptr %i.u, align 8, !tbaa !24
  %i.y = add i64 %i.x, -1
  store volatile i64 %i.y, ptr %i.u, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %.04681, i64 40 ; 2 uses
  %i.aa = load volatile ptr, ptr %i.z, align 8, !tbaa !64 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load volatile ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  %i.ae = load volatile ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store volatile ptr %i.ac, ptr %i.af, align 8, !tbaa !25
  %i.ag = load volatile ptr, ptr %i.ad, align 8, !tbaa !26
  store volatile ptr %i.ag, ptr %i.z, align 8, !tbaa !64
  br label %opal_list_remove_last.exit

opal_list_remove_last.exit:                       ; preds = %.thread, %bb.k
  %.0.i = phi ptr [ %i.aa, %bb.k ], [ null, %.thread ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %.0.i, i64 800, i1 true), !tbaa.struct !66
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 4 uses
  %i.ai = load i8, ptr @opal_uses_threads, align 1, !tbaa !32, !range !33, !noundef !34
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %bb.m, !prof !35

bb.l:                                             ; preds = %opal_list_remove_last.exit
  %i.ak = atomicrmw volatile add ptr %i.ah, i32 -1 monotonic, align 4
  %i.al = add i32 %i.ak, -1
  br label %opal_thread_add_fetch_32.exit

bb.m:                                             ; preds = %opal_list_remove_last.exit
  %i.am = load volatile i32, ptr %i.ah, align 4, !tbaa !27
  %i.an = add nsw i32 %i.am, -1
  store volatile i32 %i.an, ptr %i.ah, align 4, !tbaa !27
  %i.ao = load volatile i32, ptr %i.ah, align 4, !tbaa !27
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.l, %bb.m
  %.0.i60 = phi i32 [ %i.al, %bb.l ], [ %i.ao, %bb.m ]
  %i.ap = icmp eq i32 %.0.i60, 0
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.aq = load ptr, ptr %.0.i, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %.not6.i = icmp eq ptr %i.at, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.au = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.at, %bb.n ]
  %.07.i = phi ptr [ %i.av, %.lr.ph.i ], [ %i.as, %bb.n ]
  tail call void %i.au(ptr noundef nonnull %.0.i) #9, !inline_history !0
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.n
  tail call void @free(ptr noundef nonnull %.0.i) #9
  br label %bb.o

bb.o:                                             ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit
  %i.ax = load volatile i64, ptr %i.u, align 8, !tbaa !24
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.az = load volatile i64, ptr %i.u, align 8, !tbaa !24
  %i.ba = add i64 %i.az, -1
  store volatile i64 %i.ba, ptr %i.u, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %.04681, i64 32 ; 2 uses
  %i.bc = load volatile ptr, ptr %i.bb, align 8, !tbaa !41 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load volatile ptr, ptr %i.bd, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bg = load volatile ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store volatile ptr %i.be, ptr %i.bh, align 8, !tbaa !26
  %i.bi = load volatile ptr, ptr %i.bf, align 8, !tbaa !25
  store volatile ptr %i.bi, ptr %i.bb, align 8, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %.04681, i64 32 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %opal_list_remove_first.exit70, %.lr.ph
  %.04585 = phi ptr [ %i.bc, %.lr.ph ], [ %i.cl, %opal_list_remove_first.exit70 ] ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.04585, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !43
  %cond.i = icmp eq i32 %i.bl, 1
  br i1 %cond.i, label %bb.q, label %unquery.exit

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.04585, i64 328
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !67
  %i.bo = getelementptr inbounds nuw i8, ptr %.04585, i64 792
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !47
  %i.bq = tail call i32 %i.bn(ptr noundef %0, ptr noundef %i.bp) #9, !inline_history !49 ; 0 uses
  br label %unquery.exit

unquery.exit:                                     ; preds = %bb.p, %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %.04585, i64 8 ; 4 uses
  %i.bs = load i8, ptr @opal_uses_threads, align 1, !tbaa !32, !range !33, !noundef !34
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.r, label %bb.s, !prof !35

bb.r:                                             ; preds = %unquery.exit
  %i.bu = atomicrmw volatile add ptr %i.br, i32 -1 monotonic, align 4
  %i.bv = add i32 %i.bu, -1
  br label %opal_thread_add_fetch_32.exit63

bb.s:                                             ; preds = %unquery.exit
  %i.bw = load volatile i32, ptr %i.br, align 8, !tbaa !27
  %i.bx = add nsw i32 %i.bw, -1
  store volatile i32 %i.bx, ptr %i.br, align 8, !tbaa !27
  %i.by = load volatile i32, ptr %i.br, align 8, !tbaa !27
  br label %opal_thread_add_fetch_32.exit63

opal_thread_add_fetch_32.exit63:                  ; preds = %bb.r, %bb.s
  %.0.i62 = phi i32 [ %i.bv, %bb.r ], [ %i.by, %bb.s ]
  %i.bz = icmp eq i32 %.0.i62, 0
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %opal_thread_add_fetch_32.exit63
  %i.ca = load ptr, ptr %.04585, align 8, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !38 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !39 ; 2 uses
  %.not6.i64 = icmp eq ptr %i.cd, null
  br i1 %.not6.i64, label %opal_obj_run_destructors.exit68, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %bb.t, %.lr.ph.i65
  %i.ce = phi ptr [ %i.cg, %.lr.ph.i65 ], [ %i.cd, %bb.t ]
  %.07.i66 = phi ptr [ %i.cf, %.lr.ph.i65 ], [ %i.cc, %bb.t ]
  tail call void %i.ce(ptr noundef nonnull %.04585) #9, !inline_history !0
  %i.cf = getelementptr inbounds nuw i8, ptr %.07.i66, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !39 ; 2 uses
  %.not.i67 = icmp eq ptr %i.cg, null
  br i1 %.not.i67, label %opal_obj_run_destructors.exit68, label %.lr.ph.i65, !llvm.loop !1

opal_obj_run_destructors.exit68:                  ; preds = %.lr.ph.i65, %bb.t
  tail call void @free(ptr noundef nonnull %.04585) #9
  br label %bb.u

bb.u:                                             ; preds = %opal_thread_add_fetch_32.exit63, %opal_obj_run_destructors.exit68
  %i.ch = load volatile i64, ptr %i.u, align 8, !tbaa !24
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %._crit_edge, label %opal_list_remove_first.exit70

opal_list_remove_first.exit70:                    ; preds = %bb.u
  %i.cj = load volatile i64, ptr %i.u, align 8, !tbaa !24
  %i.ck = add i64 %i.cj, -1
  store volatile i64 %i.ck, ptr %i.u, align 8, !tbaa !24
  %i.cl = load volatile ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load volatile ptr, ptr %i.cm, align 8, !tbaa !26
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %i.cp = load volatile ptr, ptr %i.co, align 8, !tbaa !25
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store volatile ptr %i.cn, ptr %i.cq, align 8, !tbaa !26
  %i.cr = load volatile ptr, ptr %i.co, align 8, !tbaa !25
  store volatile ptr %i.cr, ptr %i.bj, align 8, !tbaa !41
  br label %bb.p, !llvm.loop !50

._crit_edge:                                      ; preds = %bb.u, %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %.04681, i64 8 ; 4 uses
  %i.ct = load i8, ptr @opal_uses_threads, align 1, !tbaa !32, !range !33, !noundef !34
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.v, label %bb.w, !prof !35

bb.v:                                             ; preds = %._crit_edge
  %i.cv = atomicrmw volatile add ptr %i.cs, i32 -1 monotonic, align 4
  %i.cw = add i32 %i.cv, -1
  br label %opal_thread_add_fetch_32.exit72

bb.w:                                             ; preds = %._crit_edge
  %i.cx = load volatile i32, ptr %i.cs, align 8, !tbaa !27
  %i.cy = add nsw i32 %i.cx, -1
  store volatile i32 %i.cy, ptr %i.cs, align 8, !tbaa !27
  %i.cz = load volatile i32, ptr %i.cs, align 8, !tbaa !27
  br label %opal_thread_add_fetch_32.exit72

opal_thread_add_fetch_32.exit72:                  ; preds = %bb.v, %bb.w
  %.0.i71 = phi i32 [ %i.cw, %bb.v ], [ %i.cz, %bb.w ]
  %i.da = icmp eq i32 %.0.i71, 0
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %opal_thread_add_fetch_32.exit72
  %i.db = load ptr, ptr %.04681, align 8, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !38 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !39 ; 2 uses
  %.not6.i73 = icmp eq ptr %i.de, null
  br i1 %.not6.i73, label %opal_obj_run_destructors.exit77, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.x, %.lr.ph.i74
  %i.df = phi ptr [ %i.dh, %.lr.ph.i74 ], [ %i.de, %bb.x ]
  %.07.i75 = phi ptr [ %i.dg, %.lr.ph.i74 ], [ %i.dd, %bb.x ]
  tail call void %i.df(ptr noundef nonnull %.04681) #9, !inline_history !0
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i75, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !39 ; 2 uses
  %.not.i76 = icmp eq ptr %i.dh, null
  br i1 %.not.i76, label %opal_obj_run_destructors.exit77, label %.lr.ph.i74, !llvm.loop !1

opal_obj_run_destructors.exit77:                  ; preds = %.lr.ph.i74, %bb.x
  tail call void @free(ptr noundef nonnull %.04681) #9
  br label %bb.y

bb.y:                                             ; preds = %opal_obj_run_destructors.exit77, %opal_thread_add_fetch_32.exit72
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 4 uses
  %i.dk = load i32, ptr %i.dj, align 1
  %i.dl = xor i32 %i.dk, 1768975727
  %i.dm = getelementptr i8, ptr %i.dj, i64 4
  %i.dn = load i16, ptr %i.dm, align 1
  %i.do = zext i16 %i.dn to i32
  %i.dp = xor i32 %i.do, 111
  %i.dq = or i32 %i.dl, %i.dp
  %i.dr = icmp ne i32 %i.dq, 0
  %i.ds = zext i1 %i.dr to i32
  %.not50 = icmp eq i32 %i.ds, 0
  br i1 %.not50, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.dt = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_mpi_ompio_bootstrap_mutex, i64 16)) #9 ; 0 uses
  %i.du = tail call i32 @mca_base_framework_open(ptr noundef nonnull @ompi_fs_base_framework, i32 noundef 0) #9
  %.not51 = icmp eq i32 %i.du, 0
  br i1 %.not51, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_mpi_ompio_bootstrap_mutex, i64 16)) #9 ; 0 uses
  br label %.critedge

bb.ab:                                            ; preds = %bb.z
  %i.dw = tail call i32 @mca_base_framework_open(ptr noundef nonnull @ompi_fcoll_base_framework, i32 noundef 0) #9
end_hunk_0
