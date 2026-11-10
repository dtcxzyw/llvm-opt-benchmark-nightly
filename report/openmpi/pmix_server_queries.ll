Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_server_queries?download=true
inline.NumInlined: 43
inline.NumDeleted: 12
begin_hunk_0
@.str = private unnamed_addr constant [20 x i8] c"%s processing query\00", align 1
@prte_process_info = external global %struct.prte_process_info_t, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s qualifier key \22%s\22 : value \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"(not a string)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"pmix.nspace\00", align 1
@prte_job_data = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [59 x i8] c"%s qualifier key \22%s\22 : value \22%s\22 is an unknown namespace\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"pmix.grp.id\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"%s qualifier key \22%s\22 : value \22%s\22 is an unknown group\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"pmix.hname\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"pmix.nodeid\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"pmix.pset.nm\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%s processing key %s\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"pmix.qry.ns\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"PMIX ERROR: %s in file %s at line %d\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"prted/pmix/pmix_server_queries.c\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"pmix.qry.nsinfo\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"pmix.cmd.line\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"pmix.job.size\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"pmix.rank\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"pmix.lrank\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"pmix.pdata\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"pmix.job.arr\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"pmix.qry.spawn\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"pmix.host\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"pmix.hostfile\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"pmix.addhost\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"pmix.addhostfile\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"pmix.prefix\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"pmix.wdir\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"pmix.mapper\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"pmix.ppr\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"pmix.mapby\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"pmix.rankby\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"pmix.bindto\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"pmix.cospawn\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"pmix.qry.debug\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"pmix.dbg.init\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"pmix.dbg.notify\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"pmix.dbg.exec\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"pmix.dbg.tgt\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"pmix.hwlocxml1\00", align 1
@prte_hwloc_topology = external local_unnamed_addr global ptr, align 8
@prte_info_item_t_class = external global %struct.pmix_class_t, align 8
@.str.40 = private unnamed_addr constant [15 x i8] c"pmix.hwlocxml2\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"pmix.puri\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"pmix.srvr.uri\00", align 1
@prte_node_pool = external local_unnamed_addr global ptr, align 8
@prte_pmix_verbose_output = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [55 x i8] c"%s[%s:%d] MODEX RECV VALUE OPTIONAL FOR PROC %s KEY %s\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"pmix.optional\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"pmix.qry.ptable\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"pmix.qry.lptable\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"pmix.qry.psetnum\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"pmix.qry.psets\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"pmix.qry.pmems\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"pmix.qry.pgrpnum\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"pmix.qry.pgrp\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"pmix.qry.pgrpmems\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"pmix.query.allc\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"pmix.alias\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"pmix.topo.index\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"pmix.node.info\00", align 1
@prte_node_topologies = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [16 x i8] c"pmix.qry.aslots\00", align 1
@prte_hnp_is_allocated = external local_unnamed_addr global i8, align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"pmix.qry.peers\00", align 1
@pmix_list_t_class = external global %struct.pmix_class_t, align 8
@.str.59 = private unnamed_addr constant [14 x i8] c"pmix.qry.node\00", align 1
@.str.60 = private unnamed_addr constant [40 x i8] c"%s Query for unrecognized attribute: %s\00", align 1
@.str.61 = private unnamed_addr constant [21 x i8] c"pthread_mutex_lock()\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -27, 1) i32 @pmix_server_query_fn(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %3, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_op_caddy_t_class, i64 56), align 8, !tbaa !19
  %i.d = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #12 ; 14 uses
  %i.e = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !20
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_op_caddy_t_class, i64 32), align 8, !tbaa !21
  %.not.i = icmp eq i32 %i.e, %i.f
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @pmix_class_initialize(ptr noundef nonnull @prte_pmix_server_op_caddy_t_class) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not22.i = icmp eq ptr %i.d, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @pthread_mutex_init(ptr noundef nonnull %i.d, ptr noundef null) #13 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @prte_pmix_server_op_caddy_t_class, ptr %i.h, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i32 1, ptr %i.i, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_op_caddy_t_class, i64 40), align 8, !tbaa !26 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.m, null
  br i1 %.not6.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.n = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.e ]
  %.07.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.e ]
  tail call void %i.n(ptr noundef nonnull %i.d) #13, !inline_history !0
  %i.o = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i, !llvm.loop !1

pmix_obj_new_tma.exit:                            ; preds = %.lr.ph.i.i, %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 552
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.q, ptr noundef nonnull align 4 dereferenceable(260) %0, i64 260, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 896
  store ptr %1, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 904
  store i64 %2, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 928
  store ptr %3, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 960
  store ptr %4, ptr %i.u, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.w = load ptr, ptr @prte_event_base, align 8, !tbaa !52
  %i.x = tail call i32 @prte_event_assign(ptr noundef nonnull %i.v, ptr noundef %i.w, i32 noundef -1, i16 noundef signext 4, ptr noundef nonnull @_query, ptr noundef %i.d) #13 ; 0 uses
  fence release
  tail call void @event_active(ptr noundef nonnull %i.v, i32 noundef 4, i16 noundef signext 1) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %pmix_obj_new_tma.exit
  %.0 = phi i32 [ 0, %pmix_obj_new_tma.exit ], [ -27, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @prte_event_assign(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_query(i32 %0, i16 signext %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 16 uses
  %i.b = alloca i64, align 8                      ; 22 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 34 uses
  %3 = alloca %struct.pmix_data_array, align 8    ; 37 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %i.h = alloca ptr, align 8                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %struct.pmix_info, align 8          ; 5 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca ptr, align 8                      ; 8 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.pmix_list_t, align 8        ; 12 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  fence acquire
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 8), align 8, !tbaa !86 ; 3 uses
  %or.cond = icmp ult i32 %i.q, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !88
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = tail call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #13
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.q, ptr noundef nonnull @.str, ptr noundef %i.w) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.x = tail call ptr @PMIx_Info_list_start() #13 ; 23 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 904 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !45
  %.not1405 = icmp eq i64 %i.z, 0
  br i1 %.not1405, label %.thread951, label %.lr.ph1404

.lr.ph1404:                                       ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 896
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 248 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 240
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph1404, %._crit_edge1401
  %.06371402 = phi i64 [ 0, %.lr.ph1404 ], [ %i.akv, %._crit_edge1401 ] ; 2 uses
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.06371402 ; 7 uses
  call void @PMIx_Load_nspace(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ab) #13
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 13 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !91
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %.loopexit1042, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !92
  %.not756 = icmp eq i64 %i.aq, 0
  br i1 %.not756, label %.loopexit1042, label %.lr.ph1340.a

.lr.ph1340.a:                                     ; preds = %bb.f, %bb.au
  %.06251339 = phi ptr [ %.1626, %bb.au ], [ null, %bb.f ] ; 22 uses
  %.06291338 = phi ptr [ %.1630, %bb.au ], [ null, %bb.f ] ; 22 uses
  %.06321337 = phi i32 [ %.1633, %bb.au ], [ -1, %bb.f ] ; 7 uses
  %.06351335 = phi i64 [ %i.fy, %bb.au ], [ 0, %bb.f ] ; 13 uses
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 8), align 8, !tbaa !86 ; 3 uses
  %or.cond3 = icmp ult i32 %i.ar, 64
  br i1 %or.cond3, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph1340.a
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !88
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ax = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #13
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !91
  %i.az = getelementptr inbounds nuw [552 x i8], ptr %i.ay, i64 %.06351335 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 520
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !95
  %i.bc = icmp eq i16 %i.bb, 3
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 528
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !96
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bf = phi ptr [ %i.be, %bb.i ], [ @.str.2, %bb.h ]
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ar, ptr noundef nonnull @.str.1, ptr noundef %i.ax, ptr noundef nonnull %i.az, ptr noundef %i.bf) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %.lr.ph1340.a
  %i.bg = load ptr, ptr %i.an, align 8, !tbaa !91
  %i.bh = getelementptr inbounds nuw [552 x i8], ptr %i.bg, i64 %.06351335
  %i.bi = call zeroext i1 @PMIx_Check_key(ptr noundef %i.bh, ptr noundef nonnull @.str.3) #13
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !91
  %i.bk = getelementptr inbounds nuw [552 x i8], ptr %i.bj, i64 %.06351335 ; 2 uses
  br i1 %i.bi, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 528
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !96 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %char0 = load i8, ptr %i.bm, align 1
  %i.bo = icmp eq i8 %char0, 0
  br i1 %i.bo, label %bb.n, label %.preheader1034

.preheader1034:                                   ; preds = %bb.m
  %i.bp = load ptr, ptr @prte_job_data, align 8, !tbaa !98 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !99
  %.not8481329 = icmp sgt i32 %i.br, 0
  br i1 %.not8481329, label %pmix_pointer_array_get_item.exit, label %.preheader1034._crit_edge

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @PMIx_Load_nspace(ptr noundef nonnull %i.a, ptr noundef null) #13
  br label %bb.au

pmix_pointer_array_get_item.exit:                 ; preds = %.preheader1034, %bb.p
  %i.bs = phi ptr [ %i.cd, %bb.p ], [ %i.bp, %.preheader1034 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader1034 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !100
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27 ; 2 uses
  %.not847 = icmp eq ptr %i.bw, null
  br i1 %.not847, label %bb.p, label %bb.o

bb.o:                                             ; preds = %pmix_pointer_array_get_item.exit
  %i.bx = load ptr, ptr %i.an, align 8, !tbaa !91
  %i.by = getelementptr inbounds nuw [552 x i8], ptr %i.bx, i64 %.06351335
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 528
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !96
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 168 ; 2 uses
  %i.cc = call zeroext i1 @PMIx_Check_nspace(ptr noundef %i.ca, ptr noundef nonnull %i.cb) #13
  br i1 %i.cc, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o
  %.pre = load ptr, ptr @prte_job_data, align 8, !tbaa !98
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %pmix_pointer_array_get_item.exit
  %i.cd = phi ptr [ %.pre, %._crit_edge ], [ %i.bs, %pmix_pointer_array_get_item.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 128
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !99
  %i.cg = sext i32 %i.cf to i64
  %.not848 = icmp slt i64 %indvars.iv.next, %i.cg
  br i1 %.not848, label %pmix_pointer_array_get_item.exit, label %.preheader1034._crit_edge, !llvm.loop !53

.preheader1034._crit_edge:                        ; preds = %.preheader1034, %bb.p
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 8), align 8, !tbaa !86 ; 3 uses
  %or.cond5 = icmp ult i32 %i.ch, 64
  br i1 %or.cond5, label %bb.q, label %.thread951

bb.q:                                             ; preds = %.preheader1034._crit_edge
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !88
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %bb.r, label %.thread951

bb.r:                                             ; preds = %bb.q
  %i.cn = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #13
  %i.co = load ptr, ptr %i.an, align 8, !tbaa !91
  %i.cp = getelementptr inbounds nuw [552 x i8], ptr %i.co, i64 %.06351335 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 528
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !96
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ch, ptr noundef nonnull @.str.4, ptr noundef %i.cn, ptr noundef %i.cp, ptr noundef %i.cr) #13
  br label %.thread951

bb.s:                                             ; preds = %bb.o
  call void @PMIx_Load_nspace(ptr noundef nonnull %i.a, ptr noundef nonnull %i.cb) #13
  %i.cs = call zeroext i1 @PMIx_Nspace_invalid(ptr noundef nonnull %i.a) #13
  br i1 %i.cs, label %.thread951, label %bb.au

bb.t:                                             ; preds = %bb.k
  %i.ct = call zeroext i1 @PMIx_Check_key(ptr noundef %i.bk, ptr noundef nonnull @.str.5) #13
  br i1 %i.ct, label %.preheader1035, label %bb.y

.preheader1035:                                   ; preds = %bb.t
  %.06191323 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 1696), align 8, !tbaa !101 ; 2 uses
  %.not8461324 = icmp eq ptr %.06191323, getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 1576)
  br i1 %.not8461324, label %.critedge, label %.lr.ph

bb.u:                                             ; preds = %.lr.ph
  %i.cu = getelementptr inbounds nuw i8, ptr %.06191325, i64 120
  %.0619 = load ptr, ptr %i.cu, align 8, !tbaa !101 ; 2 uses
  %.not846 = icmp eq ptr %.0619, getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 1576)
  br i1 %.not846, label %.critedge, label %.lr.ph, !llvm.loop !54

.lr.ph:                                           ; preds = %.preheader1035, %bb.u
  %.06191325 = phi ptr [ %.0619, %bb.u ], [ %.06191323, %.preheader1035 ] ; 2 uses
  %i.cv = load ptr, ptr %i.an, align 8, !tbaa !91
  %i.cw = getelementptr inbounds nuw [552 x i8], ptr %i.cv, i64 %.06351335
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 528
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !96
  %i.cz = getelementptr inbounds nuw i8, ptr %.06191325, i64 144
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !103
  %i.db = call zeroext i1 @PMIx_Check_nspace(ptr noundef %i.cy, ptr noundef %i.da) #13
  br i1 %i.db, label %bb.x, label %bb.u

.critedge:                                        ; preds = %.preheader1035, %bb.u
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 8), align 8, !tbaa !86 ; 3 uses
  %or.cond7 = icmp ult i32 %i.dc, 64
  br i1 %or.cond7, label %bb.v, label %.thread951

bb.v:                                             ; preds = %.critedge
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !88
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %bb.w, label %.thread951

bb.w:                                             ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_query:bb.a
  br i1 %.not6.i925, label %pmix_obj_run_destructors.exit929.thread, label %.lr.ph.i926

.lr.ph.i926:                                      ; preds = %bb.ic, %.lr.ph.i926
  %i.aif = phi ptr [ %i.aih, %.lr.ph.i926 ], [ %i.aie, %bb.ic ]
  %.07.i927 = phi ptr [ %i.aig, %.lr.ph.i926 ], [ %i.aid, %bb.ic ]
  call void %i.aif(ptr noundef nonnull %5) #13, !inline_history !2
  %i.aig = getelementptr inbounds nuw i8, ptr %.07.i927, i64 8 ; 2 uses
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !27 ; 2 uses
  %.not.i928 = icmp eq ptr %i.aih, null
  br i1 %.not.i928, label %pmix_obj_run_destructors.exit929.thread, label %.lr.ph.i926, !llvm.loop !3

pmix_obj_run_destructors.exit929.thread:          ; preds = %.lr.ph.i926, %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.io

pmix_obj_run_destructors.exit929:                 ; preds = %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.thread951

bb.id:                                            ; preds = %bb.hl
  %i.aii = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gu, ptr noundef nonnull dereferenceable(14) @.str.59) #14
  %i.aij = icmp eq i32 %i.aii, 0
  br i1 %i.aij, label %bb.ie, label %bb.il

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #13
  store ptr null, ptr %i.p, align 8, !tbaa !106
  %i.aik = load ptr, ptr @prte_job_data, align 8, !tbaa !98 ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 128
  %i.aim = load i32, ptr %i.ail, align 8, !tbaa !99
  %i.ain = icmp sgt i32 %i.aim, 1
  br i1 %i.ain, label %pmix_pointer_array_get_item.exit932, label %._crit_edge1346

pmix_pointer_array_get_item.exit932:              ; preds = %bb.ie, %.loopexit1023
  %indvars.iv1701 = phi i64 [ %indvars.iv.next1702, %.loopexit1023 ], [ 1, %bb.ie ] ; 2 uses
  %i.aio = phi ptr [ %i.ajx, %.loopexit1023 ], [ %i.aik, %bb.ie ]
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 152
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !100
  %i.air = getelementptr inbounds nuw [8 x i8], ptr %i.aiq, i64 %indvars.iv1701
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !27 ; 3 uses
  %i.ait = icmp eq ptr %i.ais, null
  br i1 %i.ait, label %.loopexit1023, label %bb.if

bb.if:                                            ; preds = %pmix_pointer_array_get_item.exit932
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ais, i64 472 ; 3 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !169
  %i.aiw = icmp eq ptr %i.aiv, null
  br i1 %i.aiw, label %.loopexit1023, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.aix = call zeroext i1 @PMIx_Nspace_invalid(ptr noundef nonnull %i.a) #13
  br i1 %i.aix, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ais, i64 168
  %i.aiz = call zeroext i1 @PMIx_Check_nspace(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aiy) #13
  br i1 %i.aiz, label %bb.ii, label %.loopexit1023

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %i.aja = load ptr, ptr %i.aiu, align 8, !tbaa !169 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 160
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !171 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 128
  %i.aje = load i32, ptr %i.ajd, align 8, !tbaa !99
  %i.ajf = icmp sgt i32 %i.aje, 0
  br i1 %i.ajf, label %pmix_pointer_array_get_item.exit935, label %.loopexit1023

pmix_pointer_array_get_item.exit935:              ; preds = %bb.ii, %bb.ik
  %i.ajg = phi ptr [ %i.ajq, %bb.ik ], [ %i.aja, %bb.ii ]
  %indvars.iv1698 = phi i64 [ %indvars.iv.next1699, %bb.ik ], [ 0, %bb.ii ] ; 2 uses
  %i.ajh = phi ptr [ %i.ajs, %bb.ik ], [ %i.ajc, %bb.ii ]
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 152
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !100
  %i.ajk = getelementptr inbounds nuw [8 x i8], ptr %i.ajj, i64 %indvars.iv1698
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !27 ; 2 uses
  %i.ajm = icmp eq ptr %i.ajl, null
  br i1 %i.ajm, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %pmix_pointer_array_get_item.exit935
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajl, i64 152
  %i.ajo = load ptr, ptr %i.ajn, align 8, !tbaa !124
  %i.ajp = call i32 @PMIx_Argv_append_unique_nosize(ptr noundef nonnull %i.p, ptr noundef %i.ajo) #13 ; 0 uses
  %.pre1746 = load ptr, ptr %i.aiu, align 8, !tbaa !169
  br label %bb.ik

bb.ik:                                            ; preds = %pmix_pointer_array_get_item.exit935, %bb.ij
  %i.ajq = phi ptr [ %i.ajg, %pmix_pointer_array_get_item.exit935 ], [ %.pre1746, %bb.ij ] ; 2 uses
  %indvars.iv.next1699 = add nuw nsw i64 %indvars.iv1698, 1 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 160
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !171 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 128
  %i.aju = load i32, ptr %i.ajt, align 8, !tbaa !99
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = icmp slt i64 %indvars.iv.next1699, %i.ajv
  br i1 %i.ajw, label %pmix_pointer_array_get_item.exit935, label %.loopexit1023, !llvm.loop !75

.loopexit1023:                                    ; preds = %bb.ik, %bb.ii, %bb.ih, %bb.if, %pmix_pointer_array_get_item.exit932
  %indvars.iv.next1702 = add nuw nsw i64 %indvars.iv1701, 1 ; 2 uses
  %i.ajx = load ptr, ptr @prte_job_data, align 8, !tbaa !98 ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 128
  %i.ajz = load i32, ptr %i.ajy, align 8, !tbaa !99
  %i.aka = sext i32 %i.ajz to i64
  %i.akb = icmp slt i64 %indvars.iv.next1702, %i.aka
  br i1 %i.akb, label %pmix_pointer_array_get_item.exit932, label %._crit_edge1346.loopexit, !llvm.loop !76

._crit_edge1346.loopexit:                         ; preds = %.loopexit1023
  %.pre1747 = load ptr, ptr %i.p, align 8, !tbaa !106
  br label %._crit_edge1346

._crit_edge1346:                                  ; preds = %._crit_edge1346.loopexit, %bb.ie
  %i.akc = phi ptr [ %.pre1747, %._crit_edge1346.loopexit ], [ null, %bb.ie ]
  %i.akd = call ptr @PMIx_Argv_join(ptr noundef %i.akc, i32 noundef 44) #13
  %i.ake = load ptr, ptr %i.p, align 8, !tbaa !106
  call void @PMIx_Argv_free(ptr noundef %i.ake) #13
  %i.akf = call i32 @PMIx_Info_list_add(ptr noundef %i.x, ptr noundef nonnull @.str.59, ptr noundef %i.akd, i16 noundef zeroext 3) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #13
  br label %bb.io

bb.il:                                            ; preds = %bb.id
  %i.akg = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_globals, i64 8), align 8, !tbaa !86 ; 3 uses
  %or.cond15 = icmp ult i32 %i.akg, 64
  br i1 %or.cond15, label %bb.im, label %.thread951

bb.im:                                            ; preds = %bb.il
  %i.akh = zext nneg i32 %i.akg to i64
  %i.aki = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.akh
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 4
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !88
  %i.akl = icmp sgt i32 %i.akk, 1
  br i1 %i.akl, label %bb.in, label %.thread951

bb.in:                                            ; preds = %bb.im
  %i.akm = call ptr @prte_util_print_name_args(ptr noundef nonnull @prte_process_info) #13
  %i.akn = load ptr, ptr %i.am, align 8, !tbaa !104
  %i.ako = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %.16361398
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !105
  %i.akq = call ptr @PMIx_Get_attribute_name(ptr noundef %i.akp) #13
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.akg, ptr noundef nonnull @.str.60, ptr noundef %i.akm, ptr noundef %i.akq) #13
  br label %.thread951

bb.io:                                            ; preds = %pmix_obj_run_destructors.exit929.thread, %bb.gy, %bb.gm, %._crit_edge1373, %bb.fw, %bb.fp, %.thread959, %.thread956, %._crit_edge1360, %bb.gd, %bb.ga, %bb.fj, %._crit_edge1387, %._crit_edge1389, %bb.eb, %bb.dh, %bb.ce, %bb.cb, %._crit_edge1396, %bb.ch, %._crit_edge1346, %bb.cu, %bb.bz
  %i.akr = add i64 %.16361398, 1                  ; 2 uses
  %i.aks = load ptr, ptr %i.am, align 8, !tbaa !104 ; 2 uses
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.aks, i64 %i.akr
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !105
  %.not757 = icmp eq ptr %i.aku, null
  br i1 %.not757, label %._crit_edge1401, label %bb.av, !llvm.loop !77

._crit_edge1401:                                  ; preds = %bb.io, %.loopexit1042
  %i.akv = add nuw i64 %.06371402, 1              ; 2 uses
  %i.akw = load i64, ptr %i.y, align 8, !tbaa !45
  %i.akx = icmp ult i64 %i.akv, %i.akw
  br i1 %i.akx, label %bb.e, label %.thread951, !llvm.loop !78

.thread951:                                       ; preds = %._crit_edge1401, %bb.x, %bb.s, %bb.gm, %bb.gl, %bb.gk, %._crit_edge1373, %bb.fw, %bb.fv, %bb.fs, %bb.fp, %bb.dp, %bb.dq, %._crit_edge1360, %bb.gd, %bb.ga, %bb.fz, %bb.fj, %._crit_edge1387, %bb.eu, %bb.et, %._crit_edge1389, %bb.ef, %bb.ee, %bb.eb, %bb.dr, %pmix_pointer_array_get_item.exit890, %bb.dn, %bb.dh, %bb.ce, %bb.cb, %._crit_edge1396, %.preheader1030, %bb.ft, %.preheader1027, %bb.gj, %bb.fu, %bb.dm, %bb.bi, %pmix_pointer_array_get_item.exit865, %bb.d, %bb.gn, %bb.gh, %bb.fx, %bb.fq, %bb.v, %bb.w, %.critedge, %pmix_obj_run_destructors.exit929, %.thread1002, %.loopexit1038, %.loopexit1039, %bb.il, %bb.im, %bb.in, %.preheader1034._crit_edge, %bb.q, %bb.r, %bb.hk, %bb.ge, %bb.gb, %bb.fk, %bb.fh, %bb.er, %bb.ec, %bb.di, %bb.cf, %bb.cc, %bb.bd, %.loopexit1037, %.loopexit1040, %.loopexit1026, %.loopexit1021, %.loopexit1020, %.loopexit1019, %.loopexit1018, %.loopexit1025, %.loopexit1024.a
  %.10673 = phi i32 [ -46, %bb.bi ], [ -27, %.preheader1034._crit_edge ], [ -27, %bb.x ], [ 0, %bb.bd ], [ 0, %bb.ge ], [ 0, %.loopexit1024.a ], [ -27, %bb.w ], [ 0, %.loopexit1025 ], [ 0, %.loopexit1018 ], [ 0, %.loopexit1019 ], [ 0, %.loopexit1020 ], [ 0, %.loopexit1021 ], [ 0, %.loopexit1026 ], [ 0, %.loopexit1040 ], [ 0, %bb.cc ], [ 0, %bb.fx ], [ 0, %bb.cf ], [ 0, %._crit_edge1396 ], [ 0, %.loopexit1039 ], [ 0, %.loopexit1038 ], [ 0, %bb.di ], [ 0, %bb.gh ], [ 0, %.thread1002 ], [ -46, %bb.fu ], [ %i.rc, %.loopexit1037 ], [ 0, %bb.ec ], [ 0, %bb.hk ], [ 0, %bb.gn ], [ -27, %pmix_obj_run_destructors.exit929 ], [ -46, %bb.gj ], [ -27, %bb.r ], [ 0, %bb.er ], [ -27, %bb.q ], [ -47, %bb.in ], [ -47, %bb.im ], [ 0, %bb.fh ], [ -47, %bb.il ], [ 0, %bb.fk ], [ -27, %bb.dm ], [ -27, %.critedge ], [ 0, %bb.fq ], [ -27, %bb.v ], [ 0, %bb.gb ], [ 0, %bb.d ], [ -46, %pmix_pointer_array_get_item.exit865 ], [ -27, %.preheader1027 ], [ -46, %bb.ft ], [ -46, %.preheader1030 ], [ 0, %bb.gm ], [ -46, %bb.gk ], [ 0, %._crit_edge1373 ], [ -46, %bb.fv ], [ 0, %bb.fw ], [ -27, %bb.fs ], [ 0, %bb.fp ], [ -27, %bb.dq ], [ -46, %bb.fz ], [ 0, %._crit_edge1360 ], [ 0, %bb.gd ], [ 0, %bb.ga ], [ -46, %bb.eu ], [ -27, %bb.dp ], [ 0, %bb.fj ], [ 0, %._crit_edge1387 ], [ -46, %bb.et ], [ -46, %bb.ef ], [ 0, %._crit_edge1389 ], [ -46, %bb.ee ], [ -27, %bb.dr ], [ -27, %pmix_pointer_array_get_item.exit890 ], [ -27, %bb.dn ], [ 0, %bb.eb ], [ -46, %bb.gl ], [ 0, %bb.dh ], [ 0, %bb.ce ], [ 0, %bb.cb ], [ -27, %bb.s ], [ 0, %._crit_edge1401 ] ; 2 uses
  %i.aky = load i64, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_op_caddy_t_class, i64 56), align 8, !tbaa !19
  %i.akz = call noalias noundef ptr @malloc(i64 noundef %i.aky) #12 ; 10 uses
  %i.ala = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !20
  %i.alb = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_op_caddy_t_class, i64 32), align 8, !tbaa !21
  %.not.i936 = icmp eq i32 %i.ala, %i.alb
  br i1 %.not.i936, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %.thread951
  call void @pmix_class_initialize(ptr noundef nonnull @prte_pmix_server_op_caddy_t_class) #13
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %.thread951
  %.not22.i937 = icmp eq ptr %i.akz, null
  br i1 %.not22.i937, label %pmix_obj_new_tma.exit942, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.alc = call i32 @pthread_mutex_init(ptr noundef nonnull %i.akz, ptr noundef null) #13 ; 0 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.akz, i64 40
  store ptr @prte_pmix_server_op_caddy_t_class, ptr %i.ald, align 8, !tbaa !24
  %i.ale = getelementptr inbounds nuw i8, ptr %i.akz, i64 48
  store i32 1, ptr %i.ale, align 8, !tbaa !25
  %i.alf = getelementptr inbounds nuw i8, ptr %i.akz, i64 56
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akz, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alf, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.alg, i8 0, i64 24, i1 false)
  %i.alh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @prte_pmix_server_op_caddy_t_class, i64 40), align 8, !tbaa !26 ; 2 uses
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !27 ; 2 uses
  %.not6.i.i938 = icmp eq ptr %i.ali, null
  br i1 %.not6.i.i938, label %pmix_obj_new_tma.exit942, label %.lr.ph.i.i939

.lr.ph.i.i939:                                    ; preds = %bb.ir, %.lr.ph.i.i939
  %i.alj = phi ptr [ %i.all, %.lr.ph.i.i939 ], [ %i.ali, %bb.ir ]
  %.07.i.i940 = phi ptr [ %i.alk, %.lr.ph.i.i939 ], [ %i.alh, %bb.ir ]
  call void %i.alj(ptr noundef nonnull %i.akz) #13, !inline_history !0
  %i.alk = getelementptr inbounds nuw i8, ptr %.07.i.i940, i64 8 ; 2 uses
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !27 ; 2 uses
  %.not.i.i941 = icmp eq ptr %i.all, null
  br i1 %.not.i.i941, label %pmix_obj_new_tma.exit942, label %.lr.ph.i.i939, !llvm.loop !1

pmix_obj_new_tma.exit942:                         ; preds = %.lr.ph.i.i939, %bb.iq, %bb.ir
  %i.alm = call i32 @PMIx_Info_list_convert(ptr noundef %i.x, ptr noundef nonnull %3) #13 ; 4 uses
  switch i32 %i.alm, label %bb.is [
    i32 -60, label %bb.it
    i32 0, label %bb.it
    i32 -2, label %6
  ]

bb.is:                                            ; preds = %pmix_obj_new_tma.exit942
  %i.aln = call ptr @PMIx_Error_string(i32 noundef %i.alm) #13
  call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef %i.aln, ptr noundef nonnull @.str.13, i32 noundef 983) #13
  br label %6

6:                                                ; preds = %pmix_obj_new_tma.exit942, %bb.is
  br label %bb.it

bb.it:                                            ; preds = %pmix_obj_new_tma.exit942, %pmix_obj_new_tma.exit942, %6
  %.11674 = phi i32 [ %i.alm, %6 ], [ %.10673, %pmix_obj_new_tma.exit942 ], [ %.10673, %pmix_obj_new_tma.exit942 ] ; 3 uses
  call void @PMIx_Info_list_release(ptr noundef %i.x) #13
  %.not850 = icmp eq i32 %.11674, -47
  br i1 %.not850, label %bb.iy, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.alo = icmp eq i32 %i.alm, -60
  br i1 %i.alo, label %bb.iy, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.alp = icmp eq i32 %.11674, 0
  br i1 %i.alp, label %bb.iw, label %bb.iy

bb.iw:                                            ; preds = %bb.iv
  %i.alq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.alr = load i64, ptr %i.alq, align 8, !tbaa !157 ; 2 uses
  %i.als = icmp eq i64 %i.alr, 0
  br i1 %i.als, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.alt = getelementptr inbounds nuw i8, ptr %2, i64 856
  %i.alu = load i64, ptr %i.alt, align 8, !tbaa !50
  %i.alv = icmp ult i64 %i.alr, %i.alu
  %.854 = select i1 %i.alv, i32 -104, i32 0
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw, %bb.iu, %bb.iv, %bb.it
  %.12675 = phi i32 [ -47, %bb.it ], [ -46, %bb.iu ], [ %.854, %bb.ix ], [ -46, %bb.iw ], [ %.11674, %bb.iv ]
  %i.alw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.alx = load i64, ptr %i.alw, align 8, !tbaa !157 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.akz, i64 856
  store i64 %i.alx, ptr %i.aly, align 8, !tbaa !50
  %i.alz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !136 ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.akz, i64 848
  store ptr %i.ama, ptr %i.amb, align 8, !tbaa !51
  %i.amc = getelementptr inbounds nuw i8, ptr %2, i64 928
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !46
  %i.ame = getelementptr inbounds nuw i8, ptr %2, i64 960
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !47
  call void %i.amd(i32 noundef %.12675, ptr noundef %i.ama, i64 noundef %i.alx, ptr noundef %i.amf, ptr noundef nonnull @qrel, ptr noundef %i.akz) #13
  %i.amg = call i32 @pthread_mutex_lock(ptr noundef %2) #13
  %i.amh = icmp eq i32 %i.amg, 35
  br i1 %i.amh, label %bb.iz, label %pmix_obj_update.exit

bb.iz:                                            ; preds = %bb.iy
  %i.ami = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.ami, align 4, !tbaa !20
  call void @perror(ptr noundef nonnull @.str.61) #16
  call void @abort() #17
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.iy
  %i.amj = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.amk = load i32, ptr %i.amj, align 8, !tbaa !25
  %i.aml = add nsw i32 %i.amk, -1                 ; 2 uses
  store i32 %i.aml, ptr %i.amj, align 8, !tbaa !25
  %i.amm = call i32 @pthread_mutex_unlock(ptr noundef nonnull %2) #13 ; 0 uses
  %i.amn = icmp eq i32 %i.aml, 0
  br i1 %i.amn, label %bb.ja, label %bb.jd

bb.ja:                                            ; preds = %pmix_obj_update.exit
  %i.amo = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !24
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 48
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !48 ; 2 uses
  %i.ams = load ptr, ptr %i.amr, align 8, !tbaa !27 ; 2 uses
  %.not6.i943 = icmp eq ptr %i.ams, null
  br i1 %.not6.i943, label %pmix_obj_run_destructors.exit947, label %.lr.ph.i944

.lr.ph.i944:                                      ; preds = %bb.ja, %.lr.ph.i944
  %i.amt = phi ptr [ %i.amv, %.lr.ph.i944 ], [ %i.ams, %bb.ja ]
  %.07.i945 = phi ptr [ %i.amu, %.lr.ph.i944 ], [ %i.amr, %bb.ja ]
  call void %i.amt(ptr noundef nonnull %2) #13, !inline_history !2
  %i.amu = getelementptr inbounds nuw i8, ptr %.07.i945, i64 8 ; 2 uses
  %i.amv = load ptr, ptr %i.amu, align 8, !tbaa !27 ; 2 uses
  %.not.i946 = icmp eq ptr %i.amv, null
  br i1 %.not.i946, label %pmix_obj_run_destructors.exit947, label %.lr.ph.i944, !llvm.loop !3

pmix_obj_run_destructors.exit947:                 ; preds = %.lr.ph.i944, %bb.ja
  %i.amw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.amx = load ptr, ptr %i.amw, align 8, !tbaa !49 ; 2 uses
  %.not851 = icmp eq ptr %i.amx, null
  br i1 %.not851, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %pmix_obj_run_destructors.exit947
  %i.amy = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void %i.amx(ptr noundef nonnull %i.amy, ptr noundef nonnull %2) #13, !inline_history !4
  br label %bb.jd

bb.jc:                                            ; preds = %pmix_obj_run_destructors.exit947
  call void @free(ptr noundef nonnull %2) #13
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jb, %bb.jc, %pmix_obj_update.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @event_active(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @pmix_class_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @prte_util_print_name_args(ptr noundef) local_unnamed_addr #2

declare ptr @PMIx_Info_list_start() local_unnamed_addr #2

declare void @PMIx_Load_nspace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @PMIx_Check_key(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @PMIx_Check_nspace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @PMIx_Nspace_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @PMIx_Argv_append_nosize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PMIx_Argv_join(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @PMIx_Argv_free(ptr noundef) local_unnamed_addr #2

declare i32 @PMIx_Info_list_add(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare ptr @PMIx_Error_string(i32 noundef) local_unnamed_addr #2

declare void @PMIx_Info_list_release(ptr noundef) local_unnamed_addr #2

declare i32 @PMIx_Info_list_convert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PMIx_Data_array_destruct(ptr noundef) local_unnamed_addr #2

declare i32 @hwloc_topology_export_xmlbuffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @prte_get_proc_object(ptr noundef) local_unnamed_addr #2

declare i32 @PMIx_Info_load(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @PMIx_Get(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMIx_Value_unload(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PMIx_Value_free(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @prte_pmix_convert_rc(i32 noundef) local_unnamed_addr #2

declare ptr @prte_get_job_data_object(ptr noundef) local_unnamed_addr #2

declare void @PMIx_Data_array_construct(ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @PMIx_Load_procid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

declare zeroext i1 @pmix_path_is_absolute(ptr noundef) local_unnamed_addr #2

declare noalias ptr @pmix_os_path(i32 noundef, ...) local_unnamed_addr #2

declare zeroext i8 @prte_pmix_convert_state(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @prte_check_host_is_local(ptr noundef) local_unnamed_addr #2

declare ptr @PMIx_Proc_create(i64 noundef) local_unnamed_addr #2

declare i32 @PMIx_Argv_append_unique_nosize(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PMIx_Get_attribute_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @qrel(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.d = load i64, ptr %i.c, align 8, !tbaa !50
  tail call void @PMIx_Info_free(ptr noundef nonnull %i.b, i64 noundef %i.d) #13
  store ptr null, ptr %i.a, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #13
  %i.f = icmp eq i32 %i.e, 35
  br i1 %i.f, label %bb.d, label %pmix_obj_update.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__errno_location() #15
  store i32 35, ptr %i.g, align 4, !tbaa !20
  tail call void @perror(ptr noundef nonnull @.str.61) #16
  tail call void @abort() #17
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !25
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #13 ; 0 uses
  %i.l = icmp eq i32 %i.j, 0
  br i1 %i.l, label %bb.e, label %bb.h

end_hunk_1
