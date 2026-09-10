Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_adapt_ibcast?download=true
inline.NumInlined: 107
inline.NumDeleted: 47
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mca_coll_adapt_component_t = type { %struct.mca_coll_base_component_2_4_0_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i8, ptr, i32, i64, i32, i32, i32, i32, i32, i8, ptr }
%struct.mca_coll_base_component_2_4_0_t = type { %struct.mca_base_component_2_1_0_t, %struct.mca_base_component_data_2_0_0_t, ptr, ptr }
%struct.mca_base_component_2_1_0_t = type { i32, i32, i32, [16 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, [64 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, i32, [28 x i8] }
%struct.mca_base_component_data_2_0_0_t = type { i32, [32 x i8] }
%struct.opal_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct.mca_pml_base_module_2_1_0_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr }

@mca_coll_adapt_component = external global %struct.mca_coll_adapt_component_t, align 8
@.str = private unnamed_addr constant [16 x i8] c"bcast_algorithm\00", align 1
@.str.1 = private unnamed_addr constant [113 x i8] c"Algorithm of broadcast, 0: tuned, 1: binomial, 2: in_order_binomial, 3: binary, 4: pipeline, 5: chain, 6: linear\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"bcast_segment_size\00", align 1
@.str.3 = private unnamed_addr constant [156 x i8] c"Segment size in bytes used by default for bcast algorithms. Only has meaning if algorithm is forced and supports segmenting. 0 bytes means no segmentation.\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"bcast_max_send_requests\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Maximum number of send requests\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"bcast_max_recv_requests\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Maximum number of receive requests\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"bcast_synchronous_send\00", align 1
@.str.9 = private unnamed_addr constant [76 x i8] c"Whether to use synchronous send operations during setup of bcast operations\00", align 1
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@opal_free_list_t_class = external global %struct.opal_class_t, align 8
@opal_cache_line_size = external local_unnamed_addr global i32, align 4
@ompi_coll_adapt_bcast_context_t_class = external global %struct.opal_class_t, align 8
@ompi_coll_base_nbc_request_t_class = external global %struct.opal_class_t, align 8
@opal_mutex_t_class = external global %struct.opal_class_t, align 8
@ompi_coll_adapt_constant_bcast_context_t_class = external global %struct.opal_class_t, align 8
@mca_pml = external local_unnamed_addr global %struct.mca_pml_base_module_2_1_0_t, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define noundef i32 @ompi_coll_adapt_ibcast_register() local_unnamed_addr #0 {
bb.a:
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 304), align 8, !tbaa !19
  %i.a = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 304)) #9 ; 0 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 304), align 8, !tbaa !19
  %or.cond = icmp ugt i32 %i.b, 6
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 304), align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 312), align 8, !tbaa !20
  %i.c = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 312)) #9 ; 0 uses
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 320), align 8, !tbaa !21
  %i.d = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 320)) #9 ; 0 uses
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 324), align 4, !tbaa !22
  %i.e = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 324)) #9 ; 0 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 328), align 8, !tbaa !23
  %i.f = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 8, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 328)) #9 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @mca_base_component_var_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef i32 @ompi_coll_adapt_ibcast_fini() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw volatile add ptr %i.b, i32 -1 monotonic, align 4
  %i.f = add i32 %i.e, -1
  br label %opal_thread_add_fetch_32.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load volatile i32, ptr %i.b, align 4, !tbaa !29
  %i.h = add nsw i32 %i.g, -1
  store volatile i32 %i.h, ptr %i.b, align 4, !tbaa !29
  %i.i = load volatile i32, ptr %i.b, align 4, !tbaa !29
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.f, %bb.c ], [ %i.i, %bb.d ]
  %i.j = icmp eq i32 %.0.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %.not6.i = icmp eq ptr %i.o, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.p = phi ptr [ %i.r, %.lr.ph.i ], [ %i.o, %bb.e ]
  %.07.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.n, %bb.e ]
  tail call void %i.p(ptr noundef nonnull %i.k) #9, !inline_history !0
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.e
  %i.s = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.k, %bb.e ]
  tail call void @free(ptr noundef %i.s) #9
  br label %bb.f

bb.f:                                             ; preds = %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_adapt_ibcast(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 304), align 8, !tbaa !19 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %ompi_coll_adapt_ibcast_generic.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @ompi_coll_adapt_module_cached_topology(ptr noundef %6, ptr noundef %4, i32 noundef %3, i32 noundef %i.c) #9 ; 4 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 312), align 8, !tbaa !20 ; 4 uses
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 328), align 8, !tbaa !23, !range !26, !noundef !27
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.h, i32 0, i32 4
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %opal_thread_compare_exchange_strong_ptr.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_free_list_t_class, i64 56), align 8, !tbaa !130
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #10 ; 11 uses
  %i.n = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !29
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_free_list_t_class, i64 32), align 8, !tbaa !131
  %.not.i.i = icmp eq i32 %i.n, %i.o
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_free_list_t_class) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not9.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i, label %opal_obj_new.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @opal_free_list_t_class, ptr %i.m, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store volatile i32 1, ptr %i.p, align 8, !tbaa !132
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_free_list_t_class, i64 40), align 8, !tbaa !133 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not6.i.i.i, label %opal_obj_new.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %i.s = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.r, %bb.f ]
  %.07.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.q, %bb.f ]
  tail call void %i.s(ptr noundef nonnull %i.m) #9, !inline_history !117
  %i.t = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %opal_obj_new.exit.i, label %.lr.ph.i.i.i, !llvm.loop !118

opal_obj_new.exit.i:                              ; preds = %.lr.ph.i.i.i, %bb.f, %bb.e
  %i.v = load i32, ptr @opal_cache_line_size, align 4, !tbaa !29
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 296), align 8, !tbaa !134
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 292), align 4, !tbaa !135
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 300), align 4, !tbaa !136
  %i.aa = tail call i32 @opal_free_list_init(ptr noundef %i.m, i64 noundef 88, i64 noundef %i.w, ptr noundef nonnull @ompi_coll_adapt_bcast_context_t_class, i64 noundef 0, i64 noundef %i.w, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null) #9 ; 0 uses
  %i.ab = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.ac = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.h, !prof !28

bb.g:                                             ; preds = %opal_obj_new.exit.i
  %i.ae = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), i64 0, i64 %i.ab acquire monotonic, align 8
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %opal_thread_compare_exchange_strong_ptr.exit.thread.i, label %opal_thread_compare_exchange_strong_ptr.exit.i

bb.h:                                             ; preds = %opal_obj_new.exit.i
  %i.ag = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !39
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %opal_thread_compare_exchange_strong_ptr.exit.thread95.i

opal_thread_compare_exchange_strong_ptr.exit.thread95.i: ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !39
  br label %opal_thread_compare_exchange_strong_ptr.exit.thread.i

opal_thread_compare_exchange_strong_ptr.exit.i:   ; preds = %bb.g
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26
  %i.aj = trunc nuw i8 %.pre.i to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  br i1 %i.aj, label %bb.j, label %bb.k, !prof !137

bb.j:                                             ; preds = %opal_thread_compare_exchange_strong_ptr.exit.i
  %i.al = atomicrmw volatile add ptr %i.ak, i32 -1 monotonic, align 4
  %i.am = add i32 %i.al, -1
  br label %opal_thread_add_fetch_32.exit.i

bb.k:                                             ; preds = %opal_thread_compare_exchange_strong_ptr.exit.i, %opal_thread_compare_exchange_strong_ptr.exit.thread95.i
  %i.an = phi ptr [ %i.ai, %opal_thread_compare_exchange_strong_ptr.exit.thread95.i ], [ %i.ak, %opal_thread_compare_exchange_strong_ptr.exit.i ] ; 3 uses
  %i.ao = load volatile i32, ptr %i.an, align 4, !tbaa !29
  %i.ap = add nsw i32 %i.ao, -1
  store volatile i32 %i.ap, ptr %i.an, align 4, !tbaa !29
  %i.aq = load volatile i32, ptr %i.an, align 4, !tbaa !29
  br label %opal_thread_add_fetch_32.exit.i

opal_thread_add_fetch_32.exit.i:                  ; preds = %bb.k, %bb.j
  %.0.i224.i = phi i32 [ %i.am, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = icmp eq i32 %.0.i224.i, 0
  br i1 %i.ar, label %bb.l, label %opal_thread_compare_exchange_strong_ptr.exit.thread.i

bb.l:                                             ; preds = %opal_thread_add_fetch_32.exit.i
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.av, null
  br i1 %.not6.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.av, %bb.l ]
  %.07.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.au, %bb.l ]
  tail call void %i.aw(ptr noundef nonnull %i.m) #9, !inline_history !119
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !37 ; 2 uses
  %.not.i225.i = icmp eq ptr %i.ay, null
  br i1 %.not.i225.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_run_destructors.exit.i:                  ; preds = %.lr.ph.i.i, %bb.l
  tail call void @free(ptr noundef nonnull %i.m) #9
  br label %opal_thread_compare_exchange_strong_ptr.exit.thread.i

opal_thread_compare_exchange_strong_ptr.exit.thread.i: ; preds = %opal_obj_run_destructors.exit.i, %opal_thread_add_fetch_32.exit.i, %bb.i, %bb.g, %bb.b
  %i.az = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_nbc_request_t_class, i64 56), align 8, !tbaa !130
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.az) #10 ; 13 uses
  %i.bb = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !29
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_nbc_request_t_class, i64 32), align 8, !tbaa !131
  %.not.i226.i = icmp eq i32 %i.bb, %i.bc
  br i1 %.not.i226.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %opal_thread_compare_exchange_strong_ptr.exit.thread.i
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_coll_base_nbc_request_t_class) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %opal_thread_compare_exchange_strong_ptr.exit.thread.i
  %.not9.i227.i = icmp eq ptr %i.ba, null
  br i1 %.not9.i227.i, label %opal_obj_new.exit232.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr @ompi_coll_base_nbc_request_t_class, ptr %i.ba, align 8, !tbaa !32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store volatile i32 1, ptr %i.bd, align 8, !tbaa !132
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_nbc_request_t_class, i64 40), align 8, !tbaa !133 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !37 ; 2 uses
  %.not6.i.i228.i = icmp eq ptr %i.bf, null
  br i1 %.not6.i.i228.i, label %opal_obj_new.exit232.i, label %.lr.ph.i.i229.i

.lr.ph.i.i229.i:                                  ; preds = %bb.o, %.lr.ph.i.i229.i
  %i.bg = phi ptr [ %i.bi, %.lr.ph.i.i229.i ], [ %i.bf, %bb.o ]
  %.07.i.i230.i = phi ptr [ %i.bh, %.lr.ph.i.i229.i ], [ %i.be, %bb.o ]
  tail call void %i.bg(ptr noundef nonnull %i.ba) #9, !inline_history !117
  %i.bh = getelementptr inbounds nuw i8, ptr %.07.i.i230.i, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !37 ; 2 uses
  %.not.i.i231.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i231.i, label %opal_obj_new.exit232.i, label %.lr.ph.i.i229.i, !llvm.loop !118

opal_obj_new.exit232.i:                           ; preds = %.lr.ph.i.i229.i, %bb.o, %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store ptr null, ptr %i.bj, align 8, !tbaa !140
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  store volatile i32 1, ptr %i.bk, align 8, !tbaa !141
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 100
  store i8 0, ptr %i.bl, align 4, !tbaa !142
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  store volatile i32 2, ptr %i.bk, align 8, !tbaa !141
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  store i32 4, ptr %i.bn, align 8, !tbaa !143
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  store ptr @ompi_coll_adapt_request_free, ptr %i.bo, align 8, !tbaa !144
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  store ptr %i.ba, ptr %5, align 8, !tbaa !47
  %i.bq = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 56), align 8, !tbaa !130
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bq) #10 ; 9 uses
  %i.bs = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !29
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 32), align 8, !tbaa !131
  %.not.i233.i = icmp eq i32 %i.bs, %i.bt
  br i1 %.not.i233.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %opal_obj_new.exit232.i
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %opal_obj_new.exit232.i
  %.not9.i234.i = icmp eq ptr %i.br, null
  br i1 %.not9.i234.i, label %opal_obj_new.exit239.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr @opal_mutex_t_class, ptr %i.br, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store volatile i32 1, ptr %i.bu, align 8, !tbaa !132
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !133 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !37 ; 2 uses
  %.not6.i.i235.i = icmp eq ptr %i.bw, null
  br i1 %.not6.i.i235.i, label %opal_obj_new.exit239.i, label %.lr.ph.i.i236.i

.lr.ph.i.i236.i:                                  ; preds = %bb.r, %.lr.ph.i.i236.i
  %i.bx = phi ptr [ %i.bz, %.lr.ph.i.i236.i ], [ %i.bw, %bb.r ]
  %.07.i.i237.i = phi ptr [ %i.by, %.lr.ph.i.i236.i ], [ %i.bv, %bb.r ]
  tail call void %i.bx(ptr noundef nonnull %i.br) #9, !inline_history !117
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i.i237.i, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !37 ; 2 uses
  %.not.i.i238.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i238.i, label %opal_obj_new.exit239.i, label %.lr.ph.i.i236.i, !llvm.loop !118

opal_obj_new.exit239.i:                           ; preds = %.lr.ph.i.i236.i, %bb.r, %bb.q
  %i.ca = getelementptr i8, ptr %4, i64 220
  %.val.i = load i32, ptr %i.ca, align 4, !tbaa !69
  %i.cb = getelementptr i8, ptr %2, i64 24
  %.val223.i = load i64, ptr %i.cb, align 8, !tbaa !150 ; 5 uses
  %.not.i = icmp ult i64 %i.f, %.val223.i
  br i1 %.not.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %opal_obj_new.exit239.i
  %i.cc = sext i32 %1 to i64
  %i.cd = mul i64 %.val223.i, %i.cc
  %i.ce = icmp ult i64 %i.f, %i.cd
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cf = udiv i64 %i.f, %.val223.i               ; 2 uses
  %i.cg = trunc i64 %i.cf to i32
  %sext.i = shl i64 %i.cf, 32
  %i.ch = ashr exact i64 %sext.i, 32
  %i.ci = mul i64 %i.ch, %.val223.i
  %i.cj = sub i64 %i.f, %i.ci
  %i.ck = lshr i64 %.val223.i, 1
  %i.cl = icmp ugt i64 %i.cj, %i.ck
  %i.cm = zext i1 %i.cl to i32
  %spec.select.i = add nsw i32 %i.cm, %i.cg
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %opal_obj_new.exit239.i
  %.1188.i = phi i32 [ %spec.select.i, %bb.t ], [ %1, %bb.s ], [ %1, %opal_obj_new.exit239.i ] ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !151
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !152
  %i.cr = sub nsw i64 %i.cq, %i.co
  %i.cs = add i32 %1, -1
  %i.ct = add i32 %i.cs, %.1188.i
  %i.cu = sdiv i32 %i.ct, %.1188.i                ; 18 uses
  %i.cv = sext i32 %.1188.i to i64                ; 2 uses
  %i.cw = mul nsw i64 %i.cr, %i.cv                ; 3 uses
  %.not214.i = icmp eq i32 %i.cu, 0
  br i1 %.not214.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = sext i32 %i.cu to i64
  %i.cy = shl nsw i64 %i.cx, 2
  %i.cz = tail call noalias ptr @malloc(i64 noundef %i.cy) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0186.i = phi ptr [ %i.cz, %bb.v ], [ null, %bb.u ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !29 ; 2 uses
  %.not215.i = icmp eq i32 %i.db, 0
  br i1 %.not215.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = tail call noalias ptr @malloc(i64 noundef %i.dd) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0185.i = phi ptr [ %i.de, %bb.x ], [ null, %bb.w ] ; 4 uses
  %i.df = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_constant_bcast_context_t_class, i64 56), align 8, !tbaa !130
  %i.dg = tail call noalias ptr @malloc(i64 noundef %i.df) #10 ; 24 uses
  %i.dh = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !29
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_constant_bcast_context_t_class, i64 32), align 8, !tbaa !131
  %.not.i240.i = icmp eq i32 %i.dh, %i.di
  br i1 %.not.i240.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_coll_adapt_constant_bcast_context_t_class) #9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.not9.i241.i = icmp eq ptr %i.dg, null
  br i1 %.not9.i241.i, label %opal_obj_new.exit246.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr @ompi_coll_adapt_constant_bcast_context_t_class, ptr %i.dg, align 8, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store volatile i32 1, ptr %i.dj, align 8, !tbaa !132
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_constant_bcast_context_t_class, i64 40), align 8, !tbaa !133 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !37 ; 2 uses
  %.not6.i.i242.i = icmp eq ptr %i.dl, null
  br i1 %.not6.i.i242.i, label %opal_obj_new.exit246.i, label %.lr.ph.i.i243.i

.lr.ph.i.i243.i:                                  ; preds = %bb.ab, %.lr.ph.i.i243.i
  %i.dm = phi ptr [ %i.do, %.lr.ph.i.i243.i ], [ %i.dl, %bb.ab ]
  %.07.i.i244.i = phi ptr [ %i.dn, %.lr.ph.i.i243.i ], [ %i.dk, %bb.ab ]
  tail call void %i.dm(ptr noundef nonnull %i.dg) #9, !inline_history !117
  %i.dn = getelementptr inbounds nuw i8, ptr %.07.i.i244.i, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !37 ; 2 uses
  %.not.i.i245.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i245.i, label %opal_obj_new.exit246.i, label %.lr.ph.i.i243.i, !llvm.loop !118

opal_obj_new.exit246.i:                           ; preds = %.lr.ph.i.i243.i, %bb.ab, %bb.aa
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i32 %3, ptr %i.dp, align 8, !tbaa !74
  %i.dq = sext i32 %1 to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !75
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store i64 %i.cv, ptr %i.ds, align 8, !tbaa !76
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr %2, ptr %i.dt, align 8, !tbaa !77
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  store ptr %4, ptr %i.du, align 8, !tbaa !78
  %i.dv = trunc i64 %i.cw to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  store i32 %i.dv, ptr %i.dw, align 8, !tbaa !79
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 60
  store i32 %i.cu, ptr %i.dx, align 4, !tbaa !80
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  store ptr %.0186.i, ptr %i.dy, align 8, !tbaa !81
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 96 ; 2 uses
  store i32 0, ptr %i.dz, align 8, !tbaa !82
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 100
  store i32 0, ptr %i.ea, align 4, !tbaa !83
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  store ptr %.0185.i, ptr %i.eb, align 8, !tbaa !84
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  store i32 0, ptr %i.ec, align 8, !tbaa !85
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  store ptr %i.br, ptr %i.ed, align 8, !tbaa !86
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  store ptr %i.ba, ptr %i.ee, align 8, !tbaa !87
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dg, i64 112
  store ptr %i.e, ptr %i.ef, align 8, !tbaa !88
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 248 ; 8 uses
  %7 = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %.split.i.i.outer, label %opal_thread_compare_exchange_strong_32.exit.us.i.i, !prof !28

opal_thread_compare_exchange_strong_32.exit.us.i.i: ; preds = %opal_obj_new.exit246.i, %opal_thread_compare_exchange_strong_32.exit.us.i.i
  %9 = load volatile i32, ptr %i.eg, align 8, !tbaa !153 ; 3 uses
  %10 = load volatile i32, ptr %i.eg, align 8, !tbaa !29
  %11 = icmp eq i32 %10, %9
  br i1 %11, label %.split14.us.i.i, label %opal_thread_compare_exchange_strong_32.exit.us.i.i

.split14.us.i.i:                                  ; preds = %opal_thread_compare_exchange_strong_32.exit.us.i.i
  %i.eh = sub nsw i32 %9, %i.cu
  %i.ei = icmp slt i32 %i.eh, -1073741822
  %spec.store.select.us.le.i.i = select i1 %i.ei, i32 -33, i32 %9 ; 2 uses
  %i.ej = sub nsw i32 %spec.store.select.us.le.i.i, %i.cu
  br label %.split14.i.i

.split.i.i:                                       ; preds = %bb.ad, %.split.i.i
  %12 = load volatile i32, ptr %i.eg, align 8, !tbaa !153 ; 3 uses
  %13 = load volatile i32, ptr %i.eg, align 8, !tbaa !29
  %14 = icmp eq i32 %13, %12
  br i1 %14, label %.split14.i.i.loopexit.loopexit, label %.split.i.i, !llvm.loop !120

bb.ac:                                            ; preds = %.split.i.i.outer
  %i.ek = cmpxchg volatile ptr %i.eg, i32 %15, i32 %18 acquire monotonic, align 4
  %i.el = extractvalue { i32, i1 } %i.ek, 1
  %.pre74.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26 ; 2 uses
  br i1 %i.el, label %ompi_coll_base_nbc_reserve_tags.exit.i, label %.split.i.i.outer, !llvm.loop !121

.split.i.i.outer:                                 ; preds = %opal_obj_new.exit246.i, %bb.ac
  %.pre24.i.i.ph = phi i8 [ %.pre74.i, %bb.ac ], [ 1, %opal_obj_new.exit246.i ] ; 3 uses
  %15 = load volatile i32, ptr %i.eg, align 8, !tbaa !153 ; 4 uses
  %16 = sub nsw i32 %15, %i.cu
  %17 = icmp slt i32 %16, -1073741822
  %spec.store.select.i.i.peel = select i1 %17, i32 -33, i32 %15 ; 3 uses
  %18 = sub nsw i32 %spec.store.select.i.i.peel, %i.cu ; 2 uses
  %19 = trunc nuw i8 %.pre24.i.i.ph to i1
  br i1 %19, label %bb.ac, label %bb.ad, !prof !28

bb.ad:                                            ; preds = %.split.i.i.outer
  %i.em = load volatile i32, ptr %i.eg, align 8, !tbaa !29
  %i.en = icmp eq i32 %i.em, %15
  br i1 %i.en, label %.split14.i.i, label %.split.i.i

.split14.i.i.loopexit.loopexit:                   ; preds = %.split.i.i
  %20 = sub nsw i32 %12, %i.cu
  %21 = icmp slt i32 %20, -1073741822
  %spec.store.select.i.i = select i1 %21, i32 -33, i32 %12 ; 2 uses
  %22 = sub nsw i32 %spec.store.select.i.i, %i.cu
  br label %.split14.i.i

.split14.i.i:                                     ; preds = %.split14.i.i.loopexit.loopexit, %bb.ad, %.split14.us.i.i
  %23 = phi i8 [ 0, %.split14.us.i.i ], [ %.pre24.i.i.ph, %bb.ad ], [ %.pre24.i.i.ph, %.split14.i.i.loopexit.loopexit ]
  %.us-phi15.i.i = phi i32 [ %spec.store.select.us.le.i.i, %.split14.us.i.i ], [ %spec.store.select.i.i, %.split14.i.i.loopexit.loopexit ], [ %spec.store.select.i.i.peel, %bb.ad ]
  %.us-phi16.i.i = phi i32 [ %i.ej, %.split14.us.i.i ], [ %22, %.split14.i.i.loopexit.loopexit ], [ %18, %bb.ad ]
  store i32 %.us-phi16.i.i, ptr %i.eg, align 4, !tbaa !29
  br label %ompi_coll_base_nbc_reserve_tags.exit.i

ompi_coll_base_nbc_reserve_tags.exit.i:           ; preds = %bb.ac, %.split14.i.i
  %24 = phi i8 [ %23, %.split14.i.i ], [ %.pre74.i, %bb.ac ]
  %spec.store.select10.i.i = phi i32 [ %.us-phi15.i.i, %.split14.i.i ], [ %spec.store.select.i.i.peel, %bb.ac ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dg, i64 120 ; 3 uses
  store i32 %spec.store.select10.i.i, ptr %i.eo, align 8, !tbaa !89
  %25 = trunc nuw i8 %24 to i1
  br i1 %25, label %bb.ae, label %bb.af, !prof !28

bb.ae:                                            ; preds = %ompi_coll_base_nbc_reserve_tags.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.eq = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ep) #9 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %ompi_coll_base_nbc_reserve_tags.exit.i
  %i.er = icmp eq i32 %.val.i, %3
  %i.es = icmp sgt i32 %i.cu, 0                   ; 2 uses
  br i1 %i.er, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %bb.af
  %i.et = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 320), align 8, !tbaa !21 ; 3 uses
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.et) ; 2 uses
  br i1 %i.es, label %.lr.ph31.preheader.i, label %._crit_edge32.i

.lr.ph31.preheader.i:                             ; preds = %bb.ag
  %wide.trip.count59.i = zext nneg i32 %i.cu to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.cu, 8
  br i1 %min.iters.check, label %.lr.ph31.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph31.preheader.i
  %n.vec = and i64 %wide.trip.count59.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0186.i, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <4 x i32> %vec.ind, ptr %i.eu, align 4, !tbaa !29
  store <4 x i32> %step.add, ptr %i.ev, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count59.i
  br i1 %cmp.n, label %._crit_edge32.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %.lr.ph31.preheader.i, %middle.block
  %indvars.iv56.i.ph = phi i64 [ 0, %.lr.ph31.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %.lr.ph31.i ], [ %indvars.iv56.i.ph, %.lr.ph31.i.preheader ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0186.i, i64 %indvars.iv56.i
  %i.ey = trunc nuw nsw i64 %indvars.iv56.i to i32
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !29
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %._crit_edge32.i, label %.lr.ph31.i, !llvm.loop !123

._crit_edge32.i:                                  ; preds = %.lr.ph31.i, %middle.block, %bb.ag
  store i32 %i.cu, ptr %i.dz, align 8, !tbaa !82
  %i.ez = load i32, ptr %i.da, align 4, !tbaa !29 ; 4 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %.lr.ph35.preheader.i, label %._crit_edge36.i

.lr.ph35.preheader.i:                             ; preds = %._crit_edge32.i
  %wide.trip.count64.i = zext nneg i32 %i.ez to i64 ; 3 uses
  %min.iters.check71 = icmp ult i32 %i.ez, 8
  br i1 %min.iters.check71, label %.lr.ph35.i.preheader, label %vector.ph72

vector.ph72:                                      ; preds = %.lr.ph35.preheader.i
  %n.vec73 = and i64 %wide.trip.count64.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next76, %vector.body74 ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.0185.i, i64 %index75 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.fb, align 4, !tbaa !29
  store <4 x i32> %broadcast.splat, ptr %i.fc, align 4, !tbaa !29
  %index.next76 = add nuw i64 %index75, 8         ; 2 uses
  %i.fd = icmp eq i64 %index.next76, %n.vec73
  br i1 %i.fd, label %middle.block77, label %vector.body74, !llvm.loop !124

middle.block77:                                   ; preds = %vector.body74
  %cmp.n78 = icmp eq i64 %n.vec73, %wide.trip.count64.i
  br i1 %cmp.n78, label %._crit_edge36.i, label %.lr.ph35.i.preheader

.lr.ph35.i.preheader:                             ; preds = %.lr.ph35.preheader.i, %middle.block77
  %indvars.iv61.i.ph = phi i64 [ 0, %.lr.ph35.preheader.i ], [ %n.vec73, %middle.block77 ]
  br label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %.lr.ph35.i.preheader, %.lr.ph35.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.lr.ph35.i ], [ %indvars.iv61.i.ph, %.lr.ph35.i.preheader ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0185.i, i64 %indvars.iv61.i
  store i32 %i.et, ptr %i.fe, align 4, !tbaa !29
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count64.i
  br i1 %exitcond65.not.i, label %._crit_edge36.i, label %.lr.ph35.i, !llvm.loop !125

._crit_edge36.i:                                  ; preds = %.lr.ph35.i, %middle.block77, %._crit_edge32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.not22141.i = icmp sgt i32 %..i, 0
  br i1 %.not22141.i, label %.lr.ph45.i, label %.thread7.i

.lr.ph45.i:                                       ; preds = %._crit_edge36.i
  %i.ff = add nsw i32 %i.cu, -1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.fj = zext i32 %i.ff to i64
  %wide.trip.count72.i = zext nneg i32 %..i to i64
  br label %bb.ah

.thread7.i:                                       ; preds = %._crit_edge40.i, %._crit_edge36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.bc

bb.ah:                                            ; preds = %._crit_edge40.i, %.lr.ph45.i
  %i.fk = phi i32 [ %i.ez, %.lr.ph45.i ], [ %i.hf, %._crit_edge40.i ] ; 2 uses
  %indvars.iv69.i = phi i64 [ 0, %.lr.ph45.i ], [ %indvars.iv.next70.i, %._crit_edge40.i ] ; 4 uses
  %.018343.i = phi i32 [ %.1188.i, %.lr.ph45.i ], [ %.1184.i, %._crit_edge40.i ]
  %i.fl = icmp eq i64 %indvars.iv69.i, %i.fj
  %i.fm = trunc i64 %indvars.iv69.i to i32        ; 3 uses
  %i.fn = mul i32 %.1188.i, %i.fm
  %i.fo = sub i32 %1, %i.fn
  %.1184.i = select i1 %i.fl, i32 %i.fo, i32 %.018343.i ; 2 uses
  %i.fp = icmp sgt i32 %i.fk, 0
  br i1 %i.fp, label %.lr.ph39.i, label %._crit_edge40.i

.lr.ph39.i:                                       ; preds = %bb.ah
  %i.fq = mul i64 %indvars.iv69.i, %i.cw
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 %i.fq ; 2 uses
  %i.fs = sext i32 %.1184.i to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aq, %.lr.ph39.i
  %indvars.iv66.i = phi i64 [ 0, %.lr.ph39.i ], [ %indvars.iv.next67.i, %bb.aq ] ; 3 uses
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24
  %i.fu = call fastcc ptr @opal_free_list_wait(ptr noundef %i.ft) ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 56 ; 2 uses
  store ptr %i.fr, ptr %i.fv, align 8, !tbaa !92
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  store i32 %i.fm, ptr %i.fw, align 8, !tbaa !93
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 68
  %i.fy = trunc nuw nsw i64 %indvars.iv66.i to i32
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !94
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv66.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !29
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 72 ; 2 uses
  store i32 %i.ga, ptr %i.gb, align 8, !tbaa !95
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  store ptr %i.dg, ptr %i.gc, align 8, !tbaa !96
  %i.gd = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.aj, label %bb.ak, !prof !28

bb.aj:                                            ; preds = %bb.ai
  %i.gf = atomicrmw volatile add ptr %i.fh, i32 1 monotonic, align 4 ; 0 uses
  %.pre76.i = load ptr, ptr %i.fv, align 8, !tbaa !92
  br label %opal_thread_add_fetch_32.exit248.i

bb.ak:                                            ; preds = %bb.ai
  %i.gg = load volatile i32, ptr %i.fh, align 8, !tbaa !29
  %i.gh = add nsw i32 %i.gg, 1
  store volatile i32 %i.gh, ptr %i.fh, align 8, !tbaa !29
  %i.gi = load volatile i32, ptr %i.fh, align 8, !tbaa !29 ; 0 uses
  br label %opal_thread_add_fetch_32.exit248.i

opal_thread_add_fetch_32.exit248.i:               ; preds = %bb.ak, %bb.aj
  %i.gj = phi ptr [ %.pre76.i, %bb.aj ], [ %i.fr, %bb.ak ]
  %i.gk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !98
  %i.gl = load i32, ptr %i.gb, align 8, !tbaa !95
  %i.gm = load i32, ptr %i.eo, align 8, !tbaa !89
  %i.gn = sub nsw i32 %i.gm, %i.fm
  %i.go = call i32 %i.gk(ptr noundef %i.gj, i64 noundef %i.fs, ptr noundef %2, i32 noundef %i.gl, i32 noundef %i.gn, i32 noundef %i.i, ptr noundef %4, ptr noundef nonnull %i.a) #9, !inline_history !126 ; 2 uses
  %.not220.i = icmp eq i32 %i.go, 0
  br i1 %.not220.i, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %opal_thread_add_fetch_32.exit248.i
  %i.gp = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.am, label %bb.an, !prof !28

bb.am:                                            ; preds = %bb.al
  %i.gr = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fi) #9 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !47  ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 144
  store ptr %i.fu, ptr %i.gt, align 8, !tbaa !99
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 136 ; 2 uses
  store ptr @send_cb, ptr %i.gu, align 8, !tbaa !100
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 88
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !101
  %i.gx = icmp eq ptr %i.gw, inttoptr (i64 1 to ptr)
  br i1 %i.gx, label %bb.ao, label %ompi_request_set_callback.exit.i

bb.ao:                                            ; preds = %bb.an
  store ptr null, ptr %i.gu, align 8, !tbaa !100
  %i.gy = call i32 @send_cb(ptr noundef nonnull %i.gs) #9, !callees !102, !inline_history !2 ; 0 uses
  br label %ompi_request_set_callback.exit.i

ompi_request_set_callback.exit.i:                 ; preds = %bb.ao, %bb.an
  %i.gz = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.ap, label %bb.aq, !prof !28

bb.ap:                                            ; preds = %ompi_request_set_callback.exit.i
  %i.hb = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.fi) #9 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %ompi_request_set_callback.exit.i
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %i.hc = load i32, ptr %i.da, align 4, !tbaa !29 ; 2 uses
  %i.hd = sext i32 %i.hc to i64
  %i.he = icmp slt i64 %indvars.iv.next67.i, %i.hd
  br i1 %i.he, label %bb.ai, label %._crit_edge40.i, !llvm.loop !127

._crit_edge40.i:                                  ; preds = %bb.aq, %bb.ah
  %i.hf = phi i32 [ %i.fk, %bb.ah ], [ %i.hc, %bb.aq ]
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next70.i, %wide.trip.count72.i
  br i1 %exitcond73.not.i, label %.thread7.i, label %bb.ah, !llvm.loop !128

bb.ar:                                            ; preds = %opal_thread_add_fetch_32.exit248.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %ompi_coll_adapt_ibcast_generic.exit

bb.as:                                            ; preds = %bb.af
  %i.hg = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 324), align 4, !tbaa !22
  %.222.i = tail call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.hg) ; 2 uses
  br i1 %i.es, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.as
  %i.hh = zext nneg i32 %i.cu to i64
  %i.hi = shl nuw nsw i64 %i.hh, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0186.i, i8 0, i64 %i.hi, i1 false), !tbaa !29
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %bb.as
  %i.hj = load i32, ptr %i.da, align 4, !tbaa !29 ; 2 uses
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph22.preheader.i, label %._crit_edge.i

.lr.ph22.preheader.i:                             ; preds = %.preheader.i
  %i.hl = zext nneg i32 %i.hj to i64
  %i.hm = shl nuw nsw i64 %i.hl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0185.i, i8 0, i64 %i.hm, i1 false), !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph22.preheader.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.not21823.i = icmp sgt i32 %.222.i, 0
  br i1 %.not21823.i, label %.lr.ph27.i, label %._crit_edge28.i

.lr.ph27.i:                                       ; preds = %._crit_edge.i
  %i.hn = add nsw i32 %i.cu, -1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.hp = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.hr = zext i32 %i.hn to i64
  %wide.trip.count.i = zext nneg i32 %.222.i to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.bb, %.lr.ph27.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph27.i ], [ %indvars.iv.next.i, %bb.bb ] ; 4 uses
  %.025.i = phi i32 [ %.1188.i, %.lr.ph27.i ], [ %.1.i, %bb.bb ]
  %i.hs = icmp eq i64 %indvars.iv.i, %i.hr
  %i.ht = trunc i64 %indvars.iv.i to i32          ; 3 uses
  %i.hu = mul i32 %.1188.i, %i.ht
  %i.hv = sub i32 %1, %i.hu
  %.1.i = select i1 %i.hs, i32 %i.hv, i32 %.025.i ; 2 uses
  %i.hw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24
  %i.hx = call fastcc ptr @opal_free_list_wait(ptr noundef %i.hw) ; 5 uses
  %i.hy = mul i64 %indvars.iv.i, %i.cw
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 %i.hy ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 56 ; 2 uses
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !92
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  store i32 %i.ht, ptr %i.ib, align 8, !tbaa !93
  %i.ic = load i32, ptr %i.ho, align 4, !tbaa !29
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 72 ; 2 uses
  store i32 %i.ic, ptr %i.id, align 8, !tbaa !95
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 80
  store ptr %i.dg, ptr %i.ie, align 8, !tbaa !96
  %i.if = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.au, label %bb.av, !prof !28

bb.au:                                            ; preds = %bb.at
  %i.ih = atomicrmw volatile add ptr %i.hp, i32 1 monotonic, align 4 ; 0 uses
  %.pre75.i = load ptr, ptr %i.ia, align 8, !tbaa !92
  br label %opal_thread_add_fetch_32.exit251.i

bb.av:                                            ; preds = %bb.at
  %i.ii = load volatile i32, ptr %i.hp, align 8, !tbaa !29
  %i.ij = add nsw i32 %i.ii, 1
  store volatile i32 %i.ij, ptr %i.hp, align 8, !tbaa !29
  %i.ik = load volatile i32, ptr %i.hp, align 8, !tbaa !29 ; 0 uses
  br label %opal_thread_add_fetch_32.exit251.i

opal_thread_add_fetch_32.exit251.i:               ; preds = %bb.av, %bb.au
  %i.il = phi ptr [ %.pre75.i, %bb.au ], [ %i.hz, %bb.av ]
  %i.im = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !103
  %i.in = sext i32 %.1.i to i64
  %i.io = load i32, ptr %i.id, align 8, !tbaa !95
  %i.ip = load i32, ptr %i.eo, align 8, !tbaa !89
  %i.iq = sub nsw i32 %i.ip, %i.ht
  %i.ir = call i32 %i.im(ptr noundef %i.il, i64 noundef %i.in, ptr noundef %2, i32 noundef %i.io, i32 noundef %i.iq, ptr noundef %4, ptr noundef nonnull %i.b) #9, !inline_history !126 ; 2 uses
  %i.is = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.aw, label %bb.ax, !prof !28

bb.aw:                                            ; preds = %opal_thread_add_fetch_32.exit251.i
  %i.iu = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.hq) #9 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %opal_thread_add_fetch_32.exit251.i
  %.not217.i = icmp eq i32 %i.ir, 0
  br i1 %.not217.i, label %bb.ay, label %.thread13.i

.thread13.i:                                      ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %ompi_coll_adapt_ibcast_generic.exit

bb.ay:                                            ; preds = %bb.ax
  %i.iv = load ptr, ptr %i.b, align 8, !tbaa !47  ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 144
  store ptr %i.hx, ptr %i.iw, align 8, !tbaa !99
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 136 ; 2 uses
  store ptr @recv_cb, ptr %i.ix, align 8, !tbaa !100
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 88
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !101
  %i.ja = icmp eq ptr %i.iz, inttoptr (i64 1 to ptr)
  br i1 %i.ja, label %bb.az, label %ompi_request_set_callback.exit253.i

bb.az:                                            ; preds = %bb.ay
  store ptr null, ptr %i.ix, align 8, !tbaa !100
  %i.jb = call i32 @recv_cb(ptr noundef nonnull %i.iv) #9, !callees !102, !inline_history !2 ; 0 uses
  br label %ompi_request_set_callback.exit253.i

ompi_request_set_callback.exit253.i:              ; preds = %bb.az, %bb.ay
  %i.jc = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %bb.ba, label %bb.bb, !prof !28

bb.ba:                                            ; preds = %ompi_request_set_callback.exit253.i
  %i.je = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.hq) #9 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %ompi_request_set_callback.exit253.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge28.i, label %bb.at, !llvm.loop !129

._crit_edge28.i:                                  ; preds = %bb.bb, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge28.i, %.thread7.i
  %i.jf = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %bb.bd, label %ompi_coll_adapt_ibcast_generic.exit, !prof !28

bb.bd:                                            ; preds = %bb.bc
  %i.jh = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ji = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.jh) #9 ; 0 uses
  br label %ompi_coll_adapt_ibcast_generic.exit

ompi_coll_adapt_ibcast_generic.exit:              ; preds = %bb.bd, %bb.bc, %.thread13.i, %bb.ar, %bb.a
  %.0 = phi i32 [ -7, %bb.a ], [ %i.ir, %.thread13.i ], [ %i.go, %bb.ar ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  ret i32 %.0
}

declare ptr @ompi_coll_adapt_module_cached_topology(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @opal_free_list_init(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ompi_coll_adapt_request_free(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @opal_free_list_wait(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.sroa.4.i.i.i7.i = alloca i64, align 8         ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.sroa.6.i.i8.i = alloca i64, align 8           ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %.sroa.4.i.i23.i = alloca i64, align 8          ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %.sroa.6.i24.i = alloca i64, align 8            ; 7 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %.sroa.4.i.i.i = alloca i64, align 8            ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %.sroa.6.i.i = alloca i64, align 8              ; 7 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store volatile ptr %i.k, ptr %i.g, align 8, !tbaa !163
  %.0..0..0..0..0..0..0..0.2.i.i.i = load volatile ptr, ptr %i.g, align 8, !tbaa !163
  %i.l = load volatile i64, ptr %.0..0..0..0..0..0..0..0.2.i.i.i, align 16, !tbaa !104
  fence acquire
  %.0..0..0..0..0..0..0..0.3.i.i.i = load volatile ptr, ptr %i.g, align 8, !tbaa !163
  %i.m = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0..0..0..0.3.i.i.i, i64 8
  %i.n = load volatile i64, ptr %i.m, align 8, !tbaa !104
  store volatile i64 %i.n, ptr %.sroa.6.i.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i = load volatile i64, ptr %.sroa.6.i.i, align 8, !tbaa !104 ; 2 uses
  %i.o = inttoptr i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i to ptr ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = icmp eq ptr %i.p, %i.o
  br i1 %i.q, label %.lr.ph.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %opal_update_counted_pointer.exit.i.i
  %i.r = phi ptr [ %i.z, %opal_update_counted_pointer.exit.i.i ], [ %i.o, %bb.b ] ; 3 uses
  %.sroa.6.0..sroa.6.8.15.i.i = phi i64 [ %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i, %opal_update_counted_pointer.exit.i.i ], [ %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i, %bb.b ]
  %.sroa.0.014.i.i = phi i64 [ %.sroa.0.0.extract.trunc.i.i, %opal_update_counted_pointer.exit.i.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load volatile ptr, ptr %i.s, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store volatile ptr %i.k, ptr %i.f, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  store volatile i64 %i.u, ptr %.sroa.4.i.i.i, align 8, !tbaa !104
  %i.v = add i64 %.sroa.0.014.i.i, 1
  %.0..0..0..0..0..0..0..0..0..0.3.i.i.i = load volatile ptr, ptr %i.f, align 8, !tbaa !163
  %.sroa.4.0.insert.ext.i.i.i = zext i64 %i.u to i128
  %.sroa.4.0.insert.shift.i.i.i = shl nuw i128 %.sroa.4.0.insert.ext.i.i.i, 64
  %.sroa.0.0.insert.ext.i.i.i = zext i64 %i.v to i128
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i128 %.sroa.4.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.6.0.insert.ext.i.i = zext i64 %.sroa.6.0..sroa.6.8.15.i.i to i128
  %.sroa.6.0.insert.shift.i.i = shl nuw i128 %.sroa.6.0.insert.ext.i.i, 64
  %.sroa.0.0.insert.ext.i.i = zext i64 %.sroa.0.014.i.i to i128
  %.sroa.0.0.insert.insert.i.i = or disjoint i128 %.sroa.6.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.w = cmpxchg volatile ptr %.0..0..0..0..0..0..0..0..0..0.3.i.i.i, i128 %.sroa.0.0.insert.insert.i.i, i128 %.sroa.0.0.insert.insert.i.i.i acquire monotonic, align 16 ; 2 uses
  %i.x = extractvalue { i128, i1 } %i.w, 1
  br i1 %i.x, label %opal_lifo_pop_atomic.exit.i, label %opal_update_counted_pointer.exit.i.i

opal_update_counted_pointer.exit.i.i:             ; preds = %.lr.ph.i.i
  %i.y = extractvalue { i128, i1 } %i.w, 0        ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i128 %i.y to i64
  %.sroa.6.0.extract.shift.i.i = lshr i128 %i.y, 64
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i128 %.sroa.6.0.extract.shift.i.i to i64
  store i64 %.sroa.6.0.extract.trunc.i.i, ptr %.sroa.6.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i = load volatile i64, ptr %.sroa.6.i.i, align 8, !tbaa !104 ; 2 uses
  %i.z = inttoptr i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i to ptr ; 2 uses
  %i.aa = icmp eq ptr %i.p, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %.lr.ph.i.i

opal_lifo_pop_atomic.exit.i:                      ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  fence release
  store volatile ptr null, ptr %i.ab, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %opal_free_list_wait_mt.exit

.lr.ph.i:                                         ; preds = %opal_update_counted_pointer.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr null, ptr %i.h, align 8, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 9 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.aj = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.ac) #9
  %.not48.i = icmp eq i32 %i.aj, 0
  br i1 %.not48.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.ad, align 16, !tbaa !166
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !167
  %.not18.i = icmp ugt i64 %i.ak, %i.al
  br i1 %.not18.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = load i64, ptr %i.af, align 16, !tbaa !168
  %i.an = call i32 @opal_free_list_grow_st(ptr noundef nonnull %0, i64 noundef %i.am, ptr noundef nonnull %i.h) #9
  %.not19.i = icmp eq i32 %i.an, 0
  br i1 %.not19.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !112
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.ag, align 8, !tbaa !112
  %i.aq = load volatile i32, ptr %i.ah, align 8, !tbaa !113
  %i.ar = add nsw i32 %i.aq, 1
  store volatile i32 %i.ar, ptr %i.ah, align 8, !tbaa !113
  %i.as = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = load volatile i32, ptr %i.ai, align 4, !tbaa !114
  %.not.i.i = icmp eq i32 %i.au, 0                ; 2 uses
  br i1 %i.at, label %bb.g, label %.preheader13.i.i

.preheader13.i.i:                                 ; preds = %bb.f
  br i1 %.not.i.i, label %.lr.ph.i21.i, label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.av = load volatile i32, ptr %i.ai, align 4, !tbaa !114
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph15.i.i, label %.loopexit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load volatile i32, ptr %i.ah, align 8, !tbaa !113
  %i.ay = add nsw i32 %i.ax, -1
  store volatile i32 %i.ay, ptr %i.ah, align 8, !tbaa !113
  %i.az = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ac) #9 ; 0 uses
  %i.ba = call i32 @opal_progress() #9            ; 0 uses
  %i.bb = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ac) #9 ; 0 uses
  br label %opal_condition_wait.exit.i

.lr.ph15.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph15.i.i
  %i.bc = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ac) #9 ; 0 uses
  %i.bd = call i32 @opal_progress() #9            ; 0 uses
  %i.be = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ac) #9 ; 0 uses
  %i.bf = load volatile i32, ptr %i.ai, align 4, !tbaa !114
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph15.i.i, label %.loopexit.i.i, !llvm.loop !158

.lr.ph.i21.i:                                     ; preds = %.preheader13.i.i, %.lr.ph.i21.i
  %i.bh = call i32 @opal_progress() #9            ; 0 uses
  %i.bi = load volatile i32, ptr %i.ai, align 4, !tbaa !114
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i21.i, label %.loopexit.i.i, !llvm.loop !159

.loopexit.i.i:                                    ; preds = %.lr.ph.i21.i, %.lr.ph15.i.i, %.preheader.i.i, %.preheader13.i.i
  %i.bk = load volatile i32, ptr %i.ai, align 4, !tbaa !114
  %i.bl = add nsw i32 %i.bk, -1
  store volatile i32 %i.bl, ptr %i.ai, align 4, !tbaa !114
  %i.bm = load volatile i32, ptr %i.ah, align 8, !tbaa !113
  %i.bn = add nsw i32 %i.bm, -1
  store volatile i32 %i.bn, ptr %i.ah, align 8, !tbaa !113
  br label %opal_condition_wait.exit.i

opal_condition_wait.exit.i:                       ; preds = %.loopexit.i.i, %bb.h
  %i.bo = load i64, ptr %i.ag, align 8, !tbaa !112
  %i.bp = add i64 %i.bo, -1
  store i64 %i.bp, ptr %i.ag, align 8, !tbaa !112
  br label %opal_condition_signal.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bq = load i64, ptr %i.ag, align 8, !tbaa !112
  switch i64 %i.bq, label %bb.l [
    i64 0, label %opal_condition_signal.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.br = load volatile i32, ptr %i.ah, align 8, !tbaa !113
  %.not.i22.i = icmp eq i32 %i.br, 0
  br i1 %.not.i22.i, label %opal_condition_signal.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load volatile i32, ptr %i.ai, align 4, !tbaa !114
  %i.bt = add nsw i32 %i.bs, 1
  store volatile i32 %i.bt, ptr %i.ai, align 4, !tbaa !114
  br label %opal_condition_signal.exit.i

bb.l:                                             ; preds = %bb.i
  %i.bu = load volatile i32, ptr %i.ah, align 8, !tbaa !113
  store volatile i32 %i.bu, ptr %i.ai, align 4, !tbaa !114
  br label %opal_condition_signal.exit.i

bb.m:                                             ; preds = %bb.c
  %i.bv = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ac) #9 ; 0 uses
  br label %opal_condition_signal.exit.i

opal_condition_signal.exit.i:                     ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %opal_condition_wait.exit.i
  %i.bw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ac) #9 ; 0 uses
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !165 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.n, label %opal_free_list_wait_mt.exit

bb.n:                                             ; preds = %opal_condition_signal.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i24.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile ptr %i.k, ptr %i.e, align 8, !tbaa !163
  %.0..0..0..0..0..0..0..0.2.i.i25.i = load volatile ptr, ptr %i.e, align 8, !tbaa !163
  %i.bz = load volatile i64, ptr %.0..0..0..0..0..0..0..0.2.i.i25.i, align 16, !tbaa !104
  fence acquire
  %.0..0..0..0..0..0..0..0.3.i.i26.i = load volatile ptr, ptr %i.e, align 8, !tbaa !163
  %i.ca = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0..0..0..0.3.i.i26.i, i64 8
  %i.cb = load volatile i64, ptr %i.ca, align 8, !tbaa !104
  store volatile i64 %i.cb, ptr %.sroa.6.i24.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i27.i = load volatile i64, ptr %.sroa.6.i24.i, align 8, !tbaa !104 ; 2 uses
  %i.cc = inttoptr i64 %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i27.i to ptr ; 2 uses
  %i.cd = icmp eq ptr %i.p, %i.cc
  br i1 %i.cd, label %.loopexit.i, label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %bb.n, %opal_update_counted_pointer.exit.i40.i
  %i.ce = phi ptr [ %i.cm, %opal_update_counted_pointer.exit.i40.i ], [ %i.cc, %bb.n ] ; 3 uses
  %.sroa.6.0..sroa.6.8.15.i29.i = phi i64 [ %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8..i44.i, %opal_update_counted_pointer.exit.i40.i ], [ %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i27.i, %bb.n ]
  %.sroa.0.014.i30.i = phi i64 [ %.sroa.0.0.extract.trunc.i41.i, %opal_update_counted_pointer.exit.i40.i ], [ %i.bz, %bb.n ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load volatile ptr, ptr %i.cf, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile ptr %i.k, ptr %i.d, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i23.i)
  %i.ch = ptrtoint ptr %i.cg to i64               ; 2 uses
  store volatile i64 %i.ch, ptr %.sroa.4.i.i23.i, align 8, !tbaa !104
  %i.ci = add i64 %.sroa.0.014.i30.i, 1
  %.0..0..0..0..0..0..0..0..0..0.3.i.i31.i = load volatile ptr, ptr %i.d, align 8, !tbaa !163
  %.sroa.4.0.insert.ext.i.i32.i = zext i64 %i.ch to i128
  %.sroa.4.0.insert.shift.i.i33.i = shl nuw i128 %.sroa.4.0.insert.ext.i.i32.i, 64
  %.sroa.0.0.insert.ext.i.i34.i = zext i64 %i.ci to i128
  %.sroa.0.0.insert.insert.i.i35.i = or disjoint i128 %.sroa.4.0.insert.shift.i.i33.i, %.sroa.0.0.insert.ext.i.i34.i
  %.sroa.6.0.insert.ext.i36.i = zext i64 %.sroa.6.0..sroa.6.8.15.i29.i to i128
  %.sroa.6.0.insert.shift.i37.i = shl nuw i128 %.sroa.6.0.insert.ext.i36.i, 64
  %.sroa.0.0.insert.ext.i38.i = zext i64 %.sroa.0.014.i30.i to i128
  %.sroa.0.0.insert.insert.i39.i = or disjoint i128 %.sroa.6.0.insert.shift.i37.i, %.sroa.0.0.insert.ext.i38.i
  %i.cj = cmpxchg volatile ptr %.0..0..0..0..0..0..0..0..0..0.3.i.i31.i, i128 %.sroa.0.0.insert.insert.i39.i, i128 %.sroa.0.0.insert.insert.i.i35.i acquire monotonic, align 16 ; 2 uses
  %i.ck = extractvalue { i128, i1 } %i.cj, 1
  br i1 %i.ck, label %.thread73.i, label %opal_update_counted_pointer.exit.i40.i

opal_update_counted_pointer.exit.i40.i:           ; preds = %.lr.ph.i28.i
  %i.cl = extractvalue { i128, i1 } %i.cj, 0      ; 2 uses
  %.sroa.0.0.extract.trunc.i41.i = trunc i128 %i.cl to i64
  %.sroa.6.0.extract.shift.i42.i = lshr i128 %i.cl, 64
  %.sroa.6.0.extract.trunc.i43.i = trunc nuw i128 %.sroa.6.0.extract.shift.i42.i to i64
  store i64 %.sroa.6.0.extract.trunc.i43.i, ptr %.sroa.6.i24.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i23.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8..i44.i = load volatile i64, ptr %.sroa.6.i24.i, align 8, !tbaa !104 ; 2 uses
  %i.cm = inttoptr i64 %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8..i44.i to ptr ; 2 uses
  %i.cn = icmp eq ptr %i.p, %i.cm
  br i1 %i.cn, label %.loopexit.i, label %.lr.ph.i28.i

.thread73.i:                                      ; preds = %.lr.ph.i28.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i23.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  fence release
  store volatile ptr null, ptr %i.co, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i24.i)
  br label %opal_free_list_wait_mt.exit

.loopexit.i:                                      ; preds = %opal_update_counted_pointer.exit.i40.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i24.i)
  store ptr null, ptr %i.h, align 8, !tbaa !165
  br label %bb.c, !llvm.loop !160

opal_free_list_wait_mt.exit:                      ; preds = %opal_condition_signal.exit.i, %opal_lifo_pop_atomic.exit.i, %.thread73.i
  %.lcssa53.i = phi ptr [ %i.r, %opal_lifo_pop_atomic.exit.i ], [ %i.ce, %.thread73.i ], [ %i.bx, %opal_condition_signal.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  br label %bb.y

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.cq = load volatile i64, ptr %i.cp, align 8, !tbaa !104 ; 4 uses
  %i.cr = inttoptr i64 %i.cq to ptr               ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.ct = load volatile ptr, ptr %i.cs, align 8, !tbaa !105
  %i.cu = ptrtoint ptr %i.ct to i64
  store volatile i64 %i.cu, ptr %i.cp, align 8, !tbaa !104
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cw = icmp eq ptr %i.cv, %i.cr
  br i1 %i.cw, label %.lr.ph.i3, label %opal_lifo_pop.exit.thread56.i

opal_lifo_pop.exit.thread56.i:                    ; preds = %bb.o
  store volatile ptr null, ptr %i.cs, align 8, !tbaa !105
  br label %opal_free_list_wait_st.exit.sink.split

.lr.ph.i3:                                        ; preds = %bb.o
  store ptr null, ptr %i.c, align 8, !tbaa !165
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.x, %.lr.ph.i3
  %i.db = load i64, ptr %i.cx, align 16, !tbaa !166
  %i.dc = load i64, ptr %i.cy, align 8, !tbaa !167
  %.not.i = icmp ugt i64 %i.db, %i.dc
  br i1 %.not.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dd = load i64, ptr %i.cz, align 16, !tbaa !168
  %i.de = call i32 @opal_free_list_grow_st(ptr noundef nonnull %0, i64 noundef %i.dd, ptr noundef nonnull %i.c) #9
  %.not6.i = icmp eq i32 %i.de, 0
  br i1 %.not6.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.df = call i32 @opal_progress() #9            ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !165 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.t, label %opal_free_list_wait_st.exit

bb.t:                                             ; preds = %bb.s
  %i.di = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile ptr %i.da, ptr %i.b, align 8, !tbaa !163
  %.0..0..0..0..0..0..0..0..0..0.2.i.i.i10.i = load volatile ptr, ptr %i.b, align 8, !tbaa !163
  %i.dk = load volatile i64, ptr %.0..0..0..0..0..0..0..0..0..0.2.i.i.i10.i, align 16, !tbaa !104
  fence acquire
  %.0..0..0..0..0..0..0..0..0..0.3.i.i.i11.i = load volatile ptr, ptr %i.b, align 8, !tbaa !163
  %i.dl = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0..0..0..0..0..0.3.i.i.i11.i, i64 8
  %i.dm = load volatile i64, ptr %i.dl, align 8, !tbaa !104
  store volatile i64 %i.dm, ptr %.sroa.6.i.i8.i, align 8, !tbaa !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i12.i = load volatile i64, ptr %.sroa.6.i.i8.i, align 8, !tbaa !104 ; 2 uses
  %i.dn = icmp eq i64 %i.cq, %.sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i12.i
  br i1 %i.dn, label %opal_lifo_pop_atomic.exit.i30.i, label %.lr.ph.i.i13.i

.lr.ph.i.i13.i:                                   ; preds = %bb.u, %opal_update_counted_pointer.exit.i.i25.i
  %.sroa.6.0..sroa.6.8.15.i.i14.i = phi i64 [ %.sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i29.i, %opal_update_counted_pointer.exit.i.i25.i ], [ %.sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i12.i, %bb.u ] ; 2 uses
  %.sroa.0.014.i.i15.i = phi i64 [ %.sroa.0.0.extract.trunc.i.i26.i, %opal_update_counted_pointer.exit.i.i25.i ], [ %i.dk, %bb.u ] ; 2 uses
  %i.do = inttoptr i64 %.sroa.6.0..sroa.6.8.15.i.i14.i to ptr ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load volatile ptr, ptr %i.dp, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.da, ptr %i.a, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i7.i)
  %i.dr = ptrtoint ptr %i.dq to i64               ; 2 uses
  store volatile i64 %i.dr, ptr %.sroa.4.i.i.i7.i, align 8, !tbaa !104
  %i.ds = add i64 %.sroa.0.014.i.i15.i, 1
  %.0..0..0..0..0..0..0..0..0..0..0..0.3.i.i.i16.i = load volatile ptr, ptr %i.a, align 8, !tbaa !163
  %.sroa.4.0.insert.ext.i.i.i17.i = zext i64 %i.dr to i128
  %.sroa.4.0.insert.shift.i.i.i18.i = shl nuw i128 %.sroa.4.0.insert.ext.i.i.i17.i, 64
  %.sroa.0.0.insert.ext.i.i.i19.i = zext i64 %i.ds to i128
  %.sroa.0.0.insert.insert.i.i.i20.i = or disjoint i128 %.sroa.4.0.insert.shift.i.i.i18.i, %.sroa.0.0.insert.ext.i.i.i19.i
  %.sroa.6.0.insert.ext.i.i21.i = zext i64 %.sroa.6.0..sroa.6.8.15.i.i14.i to i128
  %.sroa.6.0.insert.shift.i.i22.i = shl nuw i128 %.sroa.6.0.insert.ext.i.i21.i, 64
  %.sroa.0.0.insert.ext.i.i23.i = zext i64 %.sroa.0.014.i.i15.i to i128
  %.sroa.0.0.insert.insert.i.i24.i = or disjoint i128 %.sroa.6.0.insert.shift.i.i22.i, %.sroa.0.0.insert.ext.i.i23.i
  %i.dt = cmpxchg volatile ptr %.0..0..0..0..0..0..0..0..0..0..0..0.3.i.i.i16.i, i128 %.sroa.0.0.insert.insert.i.i24.i, i128 %.sroa.0.0.insert.insert.i.i.i20.i acquire monotonic, align 16 ; 2 uses
  %i.du = extractvalue { i128, i1 } %i.dt, 1
  br i1 %i.du, label %bb.v, label %opal_update_counted_pointer.exit.i.i25.i

opal_update_counted_pointer.exit.i.i25.i:         ; preds = %.lr.ph.i.i13.i
  %i.dv = extractvalue { i128, i1 } %i.dt, 0      ; 2 uses
  %.sroa.0.0.extract.trunc.i.i26.i = trunc i128 %i.dv to i64
  %.sroa.6.0.extract.shift.i.i27.i = lshr i128 %i.dv, 64
  %.sroa.6.0.extract.trunc.i.i28.i = trunc nuw i128 %.sroa.6.0.extract.shift.i.i27.i to i64
  store i64 %.sroa.6.0.extract.trunc.i.i28.i, ptr %.sroa.6.i.i8.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i29.i = load volatile i64, ptr %.sroa.6.i.i8.i, align 8, !tbaa !104 ; 2 uses
  %i.dw = icmp eq i64 %i.cq, %.sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.i.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i29.i
  br i1 %i.dw, label %opal_lifo_pop_atomic.exit.i30.i, label %.lr.ph.i.i13.i

bb.v:                                             ; preds = %.lr.ph.i.i13.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  fence release
  store volatile ptr null, ptr %i.dx, align 8, !tbaa !105
  br label %opal_lifo_pop_atomic.exit.i30.i

opal_lifo_pop_atomic.exit.i30.i:                  ; preds = %opal_update_counted_pointer.exit.i.i25.i, %bb.v, %bb.u
  %.0.i.i31.i = phi ptr [ %i.do, %bb.v ], [ null, %bb.u ], [ null, %opal_update_counted_pointer.exit.i.i25.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i8.i)
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.dy = load volatile i64, ptr %i.cp, align 8, !tbaa !104 ; 2 uses
  %i.dz = inttoptr i64 %i.dy to ptr               ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load volatile ptr, ptr %i.ea, align 8, !tbaa !105
  %i.ec = ptrtoint ptr %i.eb to i64
  store volatile i64 %i.ec, ptr %i.cp, align 8, !tbaa !104
  %i.ed = icmp eq i64 %i.cq, %i.dy
  br i1 %i.ed, label %bb.x, label %.thread62.i

.thread62.i:                                      ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store volatile ptr null, ptr %i.ee, align 8, !tbaa !105
  br label %opal_free_list_wait_st.exit.sink.split

bb.x:                                             ; preds = %bb.w, %opal_lifo_pop_atomic.exit.i30.i
  %.0.i9.i = phi ptr [ %.0.i.i31.i, %opal_lifo_pop_atomic.exit.i30.i ], [ null, %bb.w ] ; 3 uses
  store ptr %.0.i9.i, ptr %i.c, align 8, !tbaa !165
  %i.ef = icmp eq ptr %.0.i9.i, null
  br i1 %i.ef, label %bb.p, label %opal_free_list_wait_st.exit, !llvm.loop !161

opal_free_list_wait_st.exit.sink.split:           ; preds = %.thread62.i, %opal_lifo_pop.exit.thread56.i
  %.sink66 = phi ptr [ %i.cr, %opal_lifo_pop.exit.thread56.i ], [ %i.dz, %.thread62.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sink66, i64 32
  store i32 1, ptr %i.eg, align 8, !tbaa !115
  br label %opal_free_list_wait_st.exit

opal_free_list_wait_st.exit:                      ; preds = %bb.s, %bb.x, %opal_free_list_wait_st.exit.sink.split
  %.lcssa36.i = phi ptr [ %.sink66, %opal_free_list_wait_st.exit.sink.split ], [ %i.dg, %bb.s ], [ %.0.i9.i, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.y

bb.y:                                             ; preds = %opal_free_list_wait_st.exit, %opal_free_list_wait_mt.exit
  %.0 = phi ptr [ %.lcssa53.i, %opal_free_list_wait_mt.exit ], [ %.lcssa36.i, %opal_free_list_wait_st.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 0) i32 @send_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99   ; 12 uses
  %i.e = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.k) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 10 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !94
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.s ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.w = load i32, ptr %i.v, align 8, !tbaa !82
  %i.x = icmp slt i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.aa = sext i32 %i.u to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.ad = load i32, ptr %i.t, align 4, !tbaa !29
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.t, align 4, !tbaa !29
  %i.af = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !86
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.aj) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24
  %i.am = tail call fastcc ptr @opal_free_list_wait(ptr noundef %i.al) ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !92
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !93
  %i.ar = sub nsw i32 %i.ac, %i.aq
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !96  ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load i32, ptr %i.at, align 8, !tbaa !79
  %i.av = mul nsw i32 %i.au, %i.ar
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.ao, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  store i32 %i.ac, ptr %i.az, align 8, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !95
  %i.bd = load <2 x i32>, ptr %i.q, align 4, !tbaa !29
  store <2 x i32> %i.bd, ptr %i.ba, align 4, !tbaa !29
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store ptr %i.as, ptr %i.be, align 8, !tbaa !96
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !76 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !80
  %i.bj = add nsw i32 %i.bi, -1
  %i.bk = icmp eq i32 %i.ac, %i.bj
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !75
  %i.bn = zext i32 %i.ac to i64
  %i.bo = mul i64 %i.bg, %i.bn
  %i.bp = sub i64 %i.bm, %i.bo
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.070.in = phi i64 [ %i.bp, %bb.g ], [ %i.bg, %bb.f ]
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !98
  %sext = shl i64 %.070.in, 32
  %i.br = ashr exact i64 %sext, 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !89
  %i.bw = sub nsw i32 %i.bv, %i.ac
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !78
  %i.bz = call i32 %i.bq(ptr noundef %i.ax, i64 noundef %i.br, ptr noundef %i.bt, i32 noundef %i.bc, i32 noundef %i.bw, i32 noundef 4, ptr noundef %i.by, ptr noundef nonnull %i.b) #9 ; 2 uses
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24 ; 8 uses
  %i.cb = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 4 uses
  %i.ce = load volatile i64, ptr %i.cd, align 8, !tbaa !104 ; 3 uses
  br i1 %i.cc, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.08.i.i.i = inttoptr i64 %i.ce to ptr          ; 2 uses
  store volatile ptr %.08.i.i.i, ptr %i.cf, align 8, !tbaa !105
  fence release
  %i.cg = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ch = cmpxchg volatile ptr %i.cd, i64 %i.ce, i64 %i.cg acquire monotonic, align 8 ; 2 uses
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  br i1 %i.ci, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_atomic_compare_exchange_strong_ptr.exit.i.i.i: ; preds = %bb.j, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i
  %i.cj = phi { i64, i1 } [ %i.cl, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ], [ %i.ch, %bb.j ]
  %i.ck = extractvalue { i64, i1 } %i.cj, 0       ; 2 uses
  %.0.i.i.i = inttoptr i64 %i.ck to ptr           ; 2 uses
  store volatile ptr %.0.i.i.i, ptr %i.cf, align 8, !tbaa !105
  fence release
  %i.cl = cmpxchg volatile ptr %i.cd, i64 %i.ck, i64 %i.cg acquire monotonic, align 8 ; 2 uses
  %i.cm = extractvalue { i64, i1 } %i.cl, 1
  br i1 %i.cm, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_lifo_push_atomic.exit.i.i:                   ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i, %bb.j
  %.0.lcssa.i.i.i = phi ptr [ %.08.i.i.i, %bb.j ], [ %.0.i.i.i, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.co = icmp eq ptr %i.cn, %.0.lcssa.i.i.i
  br i1 %i.co, label %bb.k, label %opal_free_list_return.exit

bb.k:                                             ; preds = %opal_lifo_push_atomic.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !112
  %.not.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i, label %opal_free_list_return.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 248
  %i.cs = load volatile i32, ptr %i.cr, align 8, !tbaa !113
  %.not.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

bb.m:                                             ; preds = %bb.i
  %i.ct = inttoptr i64 %i.ce to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store volatile ptr %i.ct, ptr %i.cu, align 8, !tbaa !105
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i32 0, ptr %i.cv, align 8, !tbaa !115
  %i.cw = ptrtoint ptr %i.am to i64
  store volatile i64 %i.cw, ptr %i.cd, align 8, !tbaa !104
  %i.cx = load volatile ptr, ptr %i.cu, align 8, !tbaa !105
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cz = icmp eq ptr %i.cy, %i.cx
  br i1 %i.cz, label %bb.n, label %opal_free_list_return.exit

bb.n:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  %i.db = load i64, ptr %i.da, align 8, !tbaa !112
  %.not.i4.i = icmp eq i64 %i.db, 0
  br i1 %.not.i4.i, label %opal_free_list_return.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 248
  %i.dd = load volatile i32, ptr %i.dc, align 8, !tbaa !113
  %.not.i.i5.i = icmp eq i32 %i.dd, 0
end_hunk_0
begin_hunk_1_@recv_cb:bb.a
  store volatile i32 %i.ez, ptr %i.eu, align 8, !tbaa !29
  %i.fa = load volatile i32, ptr %i.eu, align 8, !tbaa !29 ; 0 uses
  br label %opal_thread_add_fetch_32.exit113

opal_thread_add_fetch_32.exit113:                 ; preds = %bb.u, %bb.v
  %i.fb = phi ptr [ %.pre152, %bb.u ], [ %i.em, %bb.v ] ; 3 uses
  %i.fc = phi ptr [ %.pre151, %bb.u ], [ %i.eg, %bb.v ]
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !98
  %sext110 = shl i64 %.0102.in, 32
  %i.fe = ashr exact i64 %sext110, 32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !77
  %i.fh = load i32, ptr %i.es, align 8, !tbaa !95
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 120
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !89
  %i.fk = load i32, ptr %i.ej, align 8, !tbaa !93
  %i.fl = sub nsw i32 %i.fj, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !78
  %i.fo = call i32 %i.fd(ptr noundef %i.fc, i64 noundef %i.fe, ptr noundef %i.fg, i32 noundef %i.fh, i32 noundef %i.fl, i32 noundef 4, ptr noundef %i.fn, ptr noundef nonnull %i.c) #9 ; 2 uses
  %.not = icmp eq i32 %i.fo, 0
  br i1 %.not, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %opal_thread_add_fetch_32.exit113
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24 ; 8 uses
  %i.fq = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 24 ; 4 uses
  %i.ft = load volatile i64, ptr %i.fs, align 8, !tbaa !104 ; 3 uses
  br i1 %i.fr, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %.08.i.i.i = inttoptr i64 %i.ft to ptr          ; 2 uses
  store volatile ptr %.08.i.i.i, ptr %i.fu, align 8, !tbaa !105
  fence release
  %i.fv = ptrtoint ptr %i.ef to i64               ; 2 uses
  %i.fw = cmpxchg volatile ptr %i.fs, i64 %i.ft, i64 %i.fv acquire monotonic, align 8 ; 2 uses
  %i.fx = extractvalue { i64, i1 } %i.fw, 1
  br i1 %i.fx, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_atomic_compare_exchange_strong_ptr.exit.i.i.i: ; preds = %bb.x, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i
  %i.fy = phi { i64, i1 } [ %i.ga, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ], [ %i.fw, %bb.x ]
  %i.fz = extractvalue { i64, i1 } %i.fy, 0       ; 2 uses
  %.0.i.i.i = inttoptr i64 %i.fz to ptr           ; 2 uses
  store volatile ptr %.0.i.i.i, ptr %i.fu, align 8, !tbaa !105
  fence release
  %i.ga = cmpxchg volatile ptr %i.fs, i64 %i.fz, i64 %i.fv acquire monotonic, align 8 ; 2 uses
  %i.gb = extractvalue { i64, i1 } %i.ga, 1
  br i1 %i.gb, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_lifo_push_atomic.exit.i.i:                   ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i, %bb.x
  %.0.lcssa.i.i.i = phi ptr [ %.08.i.i.i, %bb.x ], [ %.0.i.i.i, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.gd = icmp eq ptr %i.gc, %.0.lcssa.i.i.i
  br i1 %i.gd, label %bb.y, label %opal_free_list_return.exit

bb.y:                                             ; preds = %opal_lifo_push_atomic.exit.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !112
  %.not.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i, label %opal_free_list_return.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fp, i64 248
  %i.gh = load volatile i32, ptr %i.gg, align 8, !tbaa !113
  %.not.i.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

bb.aa:                                            ; preds = %bb.w
  %i.gi = inttoptr i64 %i.ft to ptr
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  store volatile ptr %i.gi, ptr %i.gj, align 8, !tbaa !105
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  store i32 0, ptr %i.gk, align 8, !tbaa !115
  %i.gl = ptrtoint ptr %i.ef to i64
  store volatile i64 %i.gl, ptr %i.fs, align 8, !tbaa !104
  %i.gm = load volatile ptr, ptr %i.gj, align 8, !tbaa !105
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.go = icmp eq ptr %i.gn, %i.gm
  br i1 %i.go, label %bb.ab, label %opal_free_list_return.exit

bb.ab:                                            ; preds = %bb.aa
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !112
  %.not.i4.i = icmp eq i64 %i.gq, 0
  br i1 %.not.i4.i, label %opal_free_list_return.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fp, i64 248
  %i.gs = load volatile i32, ptr %i.gr, align 8, !tbaa !113
  %.not.i.i5.i = icmp eq i32 %i.gs, 0
  br i1 %.not.i.i5.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

opal_free_list_return_mt.exit.sink.split.i:       ; preds = %bb.ac, %bb.z
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fp, i64 252 ; 2 uses
  %i.gu = load volatile i32, ptr %i.gt, align 4, !tbaa !114
  %i.gv = add nsw i32 %i.gu, 1
  store volatile i32 %i.gv, ptr %i.gt, align 4, !tbaa !114
  br label %opal_free_list_return.exit

opal_free_list_return.exit:                       ; preds = %opal_lifo_push_atomic.exit.i.i, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %opal_free_list_return_mt.exit.sink.split.i
  %i.gw = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 4 uses
  %i.gy = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.ad, label %bb.ae, !prof !28

bb.ad:                                            ; preds = %opal_free_list_return.exit
  %i.ha = atomicrmw volatile add ptr %i.gx, i32 -1 monotonic, align 4
  %i.hb = add i32 %i.ha, -1
  br label %opal_thread_add_fetch_32.exit115

bb.ae:                                            ; preds = %opal_free_list_return.exit
  %i.hc = load volatile i32, ptr %i.gx, align 4, !tbaa !29
  %i.hd = add nsw i32 %i.hc, -1
  store volatile i32 %i.hd, ptr %i.gx, align 4, !tbaa !29
  %i.he = load volatile i32, ptr %i.gx, align 4, !tbaa !29
  br label %opal_thread_add_fetch_32.exit115

opal_thread_add_fetch_32.exit115:                 ; preds = %bb.ad, %bb.ae
  %.0.i114 = phi i32 [ %i.hb, %bb.ad ], [ %i.he, %bb.ae ]
  %i.hf = icmp eq i32 %.0.i114, 0
  br i1 %i.hf, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %opal_thread_add_fetch_32.exit115
  %i.hg = load ptr, ptr %i.p, align 8, !tbaa !96  ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !36 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !37 ; 2 uses
  %.not6.i = icmp eq ptr %i.hk, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af, %.lr.ph.i
  %i.hl = phi ptr [ %i.hn, %.lr.ph.i ], [ %i.hk, %bb.af ]
  %.07.i = phi ptr [ %i.hm, %.lr.ph.i ], [ %i.hj, %bb.af ]
  call void %i.hl(ptr noundef nonnull %i.hg) #9, !inline_history !0
  %i.hm = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %i.hn, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre153 = load ptr, ptr %i.p, align 8, !tbaa !96
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.af
  %i.ho = phi ptr [ %.pre153, %opal_obj_run_destructors.exit.loopexit ], [ %i.hg, %bb.af ]
  call void @free(ptr noundef %i.ho) #9
  store ptr null, ptr %i.p, align 8, !tbaa !96
  br label %bb.aj

bb.ag:                                            ; preds = %opal_thread_add_fetch_32.exit113
  %i.hp = load ptr, ptr %i.c, align 8, !tbaa !47  ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 144
  store ptr %i.ef, ptr %i.hq, align 8, !tbaa !99
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 136 ; 2 uses
  store ptr @send_cb, ptr %i.hr, align 8, !tbaa !100
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 88
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !101
  %i.hu = icmp eq ptr %i.ht, inttoptr (i64 1 to ptr)
  br i1 %i.hu, label %bb.ah, label %ompi_request_set_callback.exit117

bb.ah:                                            ; preds = %bb.ag
  store ptr null, ptr %i.hr, align 8, !tbaa !100
  %i.hv = call i32 @send_cb(ptr noundef nonnull %i.hp) #9, !callees !102, !inline_history !2 ; 0 uses
  br label %ompi_request_set_callback.exit117

ompi_request_set_callback.exit117:                ; preds = %bb.ag, %bb.ah
  %i.hw = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.ai, label %.thread, !prof !28

bb.ai:                                            ; preds = %ompi_request_set_callback.exit117
  %i.hy = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 72
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !86
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.ib) #9 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %ompi_request_set_callback.exit117, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.pre154 = load ptr, ptr %i.p, align 8, !tbaa !96
  br label %bb.ak

bb.aj:                                            ; preds = %opal_thread_add_fetch_32.exit115, %opal_obj_run_destructors.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.bb

bb.ak:                                            ; preds = %.thread, %bb.o
  %i.id = phi ptr [ %.pre154, %.thread ], [ %i.dd, %bb.o ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 112
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !88
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !29
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next, %i.ii
  br i1 %i.ij, label %bb.o, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %bb.ak, %bb.n
  %.lcssa = phi ptr [ %i.cw, %bb.n ], [ %i.id, %bb.ak ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 4 uses
  %i.il = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27 ; 2 uses
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.al, label %bb.am, !prof !28

bb.al:                                            ; preds = %._crit_edge
  %i.in = atomicrmw volatile add ptr %i.ik, i32 -1 monotonic, align 4
  %i.io = add i32 %i.in, -1
  %.pre156.pre = load ptr, ptr %i.p, align 8, !tbaa !96
  br label %opal_thread_add_fetch_32.exit119

bb.am:                                            ; preds = %._crit_edge
  %i.ip = load volatile i32, ptr %i.ik, align 4, !tbaa !29
  %i.iq = add nsw i32 %i.ip, -1
  store volatile i32 %i.iq, ptr %i.ik, align 4, !tbaa !29
  %i.ir = load volatile i32, ptr %i.ik, align 4, !tbaa !29
  br label %opal_thread_add_fetch_32.exit119

opal_thread_add_fetch_32.exit119:                 ; preds = %bb.al, %bb.am
  %.pre156 = phi ptr [ %.pre156.pre, %bb.al ], [ %.lcssa, %bb.am ] ; 6 uses
  %.0.i118 = phi i32 [ %i.io, %bb.al ], [ %i.ir, %bb.am ]
  %i.is = icmp eq i32 %.0.i118, 0
  br i1 %i.is, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %opal_thread_add_fetch_32.exit119
  %i.it = load ptr, ptr %.pre156, align 8, !tbaa !32
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !36
  br label %.lr.ph.i121

.lr.ph.i121:                                      ; preds = %.lr.ph.i121, %bb.an
  %.07.i122 = phi ptr [ %i.ix, %.lr.ph.i121 ], [ %i.iv, %bb.an ] ; 2 uses
  %i.iw = load ptr, ptr %.07.i122, align 8, !tbaa !37, !nonnull !27, !noundef !27
  call void %i.iw(ptr noundef nonnull %.pre156) #9, !inline_history !0
  %i.ix = getelementptr inbounds nuw i8, ptr %.07.i122, i64 8
  br label %.lr.ph.i121

bb.ao:                                            ; preds = %opal_thread_add_fetch_32.exit119
  %i.iy = getelementptr inbounds nuw i8, ptr %.pre156, i64 104
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !85
  %i.ja = getelementptr inbounds nuw i8, ptr %.pre156, i64 100 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !83
  %i.jc = add nsw i32 %i.jb, 1                    ; 3 uses
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !83
  %i.jd = trunc nuw i8 %i.il to i1
  br i1 %i.jd, label %bb.ap, label %bb.aq, !prof !28

bb.ap:                                            ; preds = %bb.ao
  %i.je = getelementptr inbounds nuw i8, ptr %.pre156, i64 72
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !86
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.jg) #9 ; 0 uses
  %.pre158 = load ptr, ptr %i.p, align 8, !tbaa !96
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ji = phi ptr [ %.pre158, %bb.ap ], [ %.pre156, %bb.ao ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 112
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !88
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !29 ; 3 uses
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 60
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !80 ; 2 uses
  %i.jq = mul nsw i32 %i.jp, %i.jm
  %i.jr = icmp eq i32 %i.iz, %i.jq
  %i.js = icmp eq i32 %i.jc, %i.jp
  %or.cond = select i1 %i.jr, i1 %i.js, i1 false
  br i1 %or.cond, label %bb.au, label %.thread137

bb.as:                                            ; preds = %bb.aq
  %i.jt = icmp eq i32 %i.jm, 0
  br i1 %i.jt, label %bb.at, label %.thread137

bb.at:                                            ; preds = %bb.as
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 60
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !80
  %i.jw = icmp eq i32 %i.jc, %i.jv
  br i1 %i.jw, label %bb.au, label %.thread137

bb.au:                                            ; preds = %bb.ar, %bb.at
  call fastcc void @ibcast_request_fini(ptr noundef nonnull %i.e)
  br label %.thread137

.thread137:                                       ; preds = %bb.ar, %bb.au, %bb.at, %bb.as
  %i.jx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 336), align 8, !tbaa !24 ; 8 uses
  %i.jy = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.jz = trunc nuw i8 %i.jy to i1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 24 ; 4 uses
  %i.kb = load volatile i64, ptr %i.ka, align 8, !tbaa !104 ; 3 uses
  br i1 %i.jz, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %.thread137
  %i.kc = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.08.i.i.i128 = inttoptr i64 %i.kb to ptr       ; 2 uses
  store volatile ptr %.08.i.i.i128, ptr %i.kc, align 8, !tbaa !105
  fence release
  %i.kd = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.ke = cmpxchg volatile ptr %i.ka, i64 %i.kb, i64 %i.kd acquire monotonic, align 8 ; 2 uses
  %i.kf = extractvalue { i64, i1 } %i.ke, 1
  br i1 %i.kf, label %opal_lifo_push_atomic.exit.i.i131, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i129

opal_atomic_compare_exchange_strong_ptr.exit.i.i.i129: ; preds = %bb.av, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i129
  %i.kg = phi { i64, i1 } [ %i.ki, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i129 ], [ %i.ke, %bb.av ]
  %i.kh = extractvalue { i64, i1 } %i.kg, 0       ; 2 uses
  %.0.i.i.i130 = inttoptr i64 %i.kh to ptr        ; 2 uses
  store volatile ptr %.0.i.i.i130, ptr %i.kc, align 8, !tbaa !105
  fence release
  %i.ki = cmpxchg volatile ptr %i.ka, i64 %i.kh, i64 %i.kd acquire monotonic, align 8 ; 2 uses
  %i.kj = extractvalue { i64, i1 } %i.ki, 1
  br i1 %i.kj, label %opal_lifo_push_atomic.exit.i.i131, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i129

opal_lifo_push_atomic.exit.i.i131:                ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i129, %bb.av
  %.0.lcssa.i.i.i132 = phi ptr [ %.08.i.i.i128, %bb.av ], [ %.0.i.i.i130, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i129 ]
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.kl = icmp eq ptr %i.kk, %.0.lcssa.i.i.i132
  br i1 %i.kl, label %bb.aw, label %opal_free_list_return.exit135

bb.aw:                                            ; preds = %opal_lifo_push_atomic.exit.i.i131
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 104
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !112
  %.not.i.i133 = icmp eq i64 %i.kn, 0
  br i1 %.not.i.i133, label %opal_free_list_return.exit135, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jx, i64 248
  %i.kp = load volatile i32, ptr %i.ko, align 8, !tbaa !113
  %.not.i.i.i134 = icmp eq i32 %i.kp, 0
  br i1 %.not.i.i.i134, label %opal_free_list_return.exit135, label %opal_free_list_return_mt.exit.sink.split.i127

bb.ay:                                            ; preds = %.thread137
  %i.kq = inttoptr i64 %i.kb to ptr
  %i.kr = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store volatile ptr %i.kq, ptr %i.kr, align 8, !tbaa !105
  %i.ks = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 0, ptr %i.ks, align 8, !tbaa !115
  %i.kt = ptrtoint ptr %i.e to i64
  store volatile i64 %i.kt, ptr %i.ka, align 8, !tbaa !104
  %i.ku = load volatile ptr, ptr %i.kr, align 8, !tbaa !105
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.kw = icmp eq ptr %i.kv, %i.ku
  br i1 %i.kw, label %bb.az, label %opal_free_list_return.exit135

bb.az:                                            ; preds = %bb.ay
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jx, i64 104
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !112
  %.not.i4.i125 = icmp eq i64 %i.ky, 0
  br i1 %.not.i4.i125, label %opal_free_list_return.exit135, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jx, i64 248
  %i.la = load volatile i32, ptr %i.kz, align 8, !tbaa !113
  %.not.i.i5.i126 = icmp eq i32 %i.la, 0
  br i1 %.not.i.i5.i126, label %opal_free_list_return.exit135, label %opal_free_list_return_mt.exit.sink.split.i127

opal_free_list_return_mt.exit.sink.split.i127:    ; preds = %bb.ba, %bb.ax
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jx, i64 252 ; 2 uses
  %i.lc = load volatile i32, ptr %i.lb, align 4, !tbaa !114
  %i.ld = add nsw i32 %i.lc, 1
  store volatile i32 %i.ld, ptr %i.lb, align 4, !tbaa !114
  br label %opal_free_list_return.exit135

opal_free_list_return.exit135:                    ; preds = %opal_lifo_push_atomic.exit.i.i131, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %opal_free_list_return_mt.exit.sink.split.i127
  %i.le = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 120
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !116
  %i.lh = call i32 %i.lg(ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.aj, %opal_free_list_return.exit135
  %.3 = phi i32 [ %i.fo, %bb.aj ], [ 1, %opal_free_list_return.exit135 ]
  ret i32 %.3
}

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

declare i32 @opal_free_list_grow_st(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #6

declare i32 @opal_progress() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @ibcast_request_fini(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84
  tail call void @free(ptr noundef %i.j) #9
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %i.m = load i32, ptr %i.l, align 4, !tbaa !80
  %.not14 = icmp eq i32 %i.m, 0
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81
  tail call void @free(ptr noundef %i.o) #9
  %.pre23 = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.k, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.g, !prof !28

bb.f:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.s, i32 -1 monotonic, align 4
  %i.w = add i32 %i.v, -1
  %.pre26.pre = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %opal_thread_add_fetch_32.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load volatile i32, ptr %i.s, align 4, !tbaa !29
  %i.y = add nsw i32 %i.x, -1
  store volatile i32 %i.y, ptr %i.s, align 4, !tbaa !29
  %i.z = load volatile i32, ptr %i.s, align 4, !tbaa !29
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.f, %bb.g
  %.pre26 = phi ptr [ %.pre26.pre, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %.0.i = phi i32 [ %i.w, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre26, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37 ; 2 uses
  %.not6.i = icmp eq ptr %i.ag, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ag, %bb.h ]
  %.07.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.af, %bb.h ]
  tail call void %i.ah(ptr noundef nonnull %i.ac) #9, !inline_history !0
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre24 = load ptr, ptr %i.a, align 8, !tbaa !96
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre24, i64 72
  %.pre25 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !86
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.h
  %i.ak = phi ptr [ %.pre25, %opal_obj_run_destructors.exit.loopexit ], [ %i.ac, %bb.h ]
  tail call void @free(ptr noundef %i.ak) #9
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store ptr null, ptr %i.am, align 8, !tbaa !86
  %.pre27 = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26
  br label %bb.i

bb.i:                                             ; preds = %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  %i.an = phi i8 [ %i.t, %opal_thread_add_fetch_32.exit ], [ %.pre27, %opal_obj_run_destructors.exit ]
  %i.ao = phi ptr [ %.pre26, %opal_thread_add_fetch_32.exit ], [ %i.al, %opal_obj_run_destructors.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = trunc nuw i8 %i.an to i1
  br i1 %i.aq, label %bb.j, label %bb.k, !prof !28

bb.j:                                             ; preds = %bb.i
  %i.ar = atomicrmw volatile add ptr %i.ap, i32 -1 monotonic, align 4
  %i.as = add i32 %i.ar, -1
  br label %opal_thread_add_fetch_32.exit16

bb.k:                                             ; preds = %bb.i
  %i.at = load volatile i32, ptr %i.ap, align 4, !tbaa !29
  %i.au = add nsw i32 %i.at, -1
  store volatile i32 %i.au, ptr %i.ap, align 4, !tbaa !29
  %i.av = load volatile i32, ptr %i.ap, align 4, !tbaa !29
  br label %opal_thread_add_fetch_32.exit16

opal_thread_add_fetch_32.exit16:                  ; preds = %bb.j, %bb.k
  %.0.i15 = phi i32 [ %i.as, %bb.j ], [ %i.av, %bb.k ]
  %i.aw = icmp eq i32 %.0.i15, 0
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %opal_thread_add_fetch_32.exit16
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !96  ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 2 uses
  %.not6.i17 = icmp eq ptr %i.bb, null
  br i1 %.not6.i17, label %opal_obj_run_destructors.exit21, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %bb.l, %.lr.ph.i18
  %i.bc = phi ptr [ %i.be, %.lr.ph.i18 ], [ %i.bb, %bb.l ]
  %.07.i19 = phi ptr [ %i.bd, %.lr.ph.i18 ], [ %i.ba, %bb.l ]
  tail call void %i.bc(ptr noundef nonnull %i.ax) #9, !inline_history !0
  %i.bd = getelementptr inbounds nuw i8, ptr %.07.i19, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !37 ; 2 uses
  %.not.i20 = icmp eq ptr %i.be, null
  br i1 %.not.i20, label %opal_obj_run_destructors.exit21.loopexit, label %.lr.ph.i18, !llvm.loop !1

opal_obj_run_destructors.exit21.loopexit:         ; preds = %.lr.ph.i18
  %.pre28 = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %opal_obj_run_destructors.exit21

opal_obj_run_destructors.exit21:                  ; preds = %opal_obj_run_destructors.exit21.loopexit, %bb.l
  %i.bf = phi ptr [ %.pre28, %opal_obj_run_destructors.exit21.loopexit ], [ %i.ax, %bb.l ]
  tail call void @free(ptr noundef %i.bf) #9
  store ptr null, ptr %i.a, align 8, !tbaa !96
  br label %bb.m

bb.m:                                             ; preds = %opal_obj_run_destructors.exit21, %opal_thread_add_fetch_32.exit16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !100 ; 2 uses
  %.not.i22 = icmp eq ptr %i.bh, null
  br i1 %.not.i22, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.bg, align 8, !tbaa !100
  %i.bi = tail call i32 %i.bh(ptr noundef nonnull %i.d) #9, !inline_history !170
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.critedge.i, label %ompi_request_complete.exit

.critedge.i:                                      ; preds = %bb.n, %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  %i.bl = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  br i1 %i.bm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge.i
  %i.bn = atomicrmw volatile xchg ptr %i.bk, i64 1 monotonic, align 8
  br label %opal_thread_swap_ptr.exit.i

bb.p:                                             ; preds = %.critedge.i
  %i.bo = load i64, ptr %i.bk, align 8, !tbaa !39
  store i64 1, ptr %i.bk, align 8, !tbaa !39
  br label %opal_thread_swap_ptr.exit.i

opal_thread_swap_ptr.exit.i:                      ; preds = %bb.p, %bb.o
  %.0.i.i = phi i64 [ %i.bn, %bb.o ], [ %i.bo, %bb.p ] ; 2 uses
  %.not13.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not13.i, label %ompi_request_complete.exit, label %bb.q

bb.q:                                             ; preds = %opal_thread_swap_ptr.exit.i
  %i.bp = inttoptr i64 %.0.i.i to ptr             ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !171 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.r, label %bb.u, !prof !172

bb.r:                                             ; preds = %bb.q
  br i1 %i.bm, label %bb.s, label %bb.t, !prof !28

bb.s:                                             ; preds = %bb.r
  %i.bt = atomicrmw volatile add ptr %i.bp, i32 -1 monotonic, align 4
  %i.bu = add i32 %i.bt, -1
  br label %opal_thread_add_fetch_32.exit.i.i

bb.t:                                             ; preds = %bb.r
  %i.bv = load volatile i32, ptr %i.bp, align 4, !tbaa !29
  %i.bw = add nsw i32 %i.bv, -1
  store volatile i32 %i.bw, ptr %i.bp, align 4, !tbaa !29
  %i.bx = load volatile i32, ptr %i.bp, align 4, !tbaa !29
  br label %opal_thread_add_fetch_32.exit.i.i

opal_thread_add_fetch_32.exit.i.i:                ; preds = %bb.t, %bb.s
  %.0.i.i.i = phi i32 [ %i.bu, %bb.s ], [ %i.bx, %bb.t ]
  %i.by = icmp eq i32 %.0.i.i.i, 0
  %i.bz = load i8, ptr @opal_uses_threads, align 1, !range !26
  %i.ca = trunc nuw i8 %i.bz to i1
  %or.cond.i.i = select i1 %i.by, i1 %i.ca, i1 false
  br i1 %or.cond.i.i, label %bb.v, label %ompi_request_complete.exit

bb.u:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.br, ptr %i.cb, align 4, !tbaa !175
  fence release
  %i.cc = atomicrmw volatile xchg ptr %i.bp, i32 0 monotonic, align 4 ; 0 uses
  %.old.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !25, !range !26, !noundef !27
  %.old1.i.i = trunc nuw i8 %.old.i.i to i1
  br i1 %.old1.i.i, label %bb.v, label %ompi_request_complete.exit

bb.v:                                             ; preds = %bb.u, %opal_thread_add_fetch_32.exit.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 56 ; 2 uses
  %i.ce = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cd) #9 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cg = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.cf) #9 ; 0 uses
  %i.ch = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.cd) #9 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  store volatile i8 0, ptr %i.ci, align 8, !tbaa !176
  br label %ompi_request_complete.exit

ompi_request_complete.exit:                       ; preds = %bb.n, %opal_thread_swap_ptr.exit.i, %opal_thread_add_fetch_32.exit.i.i, %bb.u, %bb.v
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !38}
!2 = distinct !{null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"mca_base_component_2_1_0_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !8, i64 28, !8, i64 32, !8, i64 36, !7, i64 40, !8, i64 72, !8, i64 76, !8, i64 80, !7, i64 84, !8, i64 148, !8, i64 152, !8, i64 156, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !8, i64 192, !7, i64 196}
!13 = !{!"mca_base_component_data_2_0_0_t", !8, i64 0, !7, i64 4}
!14 = !{!"mca_coll_base_component_2_4_0_t", !12, i64 0, !13, i64 224, !11, i64 264, !11, i64 272}
!15 = !{!"long", !7, i64 0}
!16 = !{!"_Bool", !7, i64 0}
!17 = !{!"p1 _ZTS16opal_free_list_t", !11, i64 0}
!18 = !{!"mca_coll_adapt_component_t", !14, i64 0, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !15, i64 312, !8, i64 320, !8, i64 324, !16, i64 328, !17, i64 336, !8, i64 344, !15, i64 352, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !8, i64 376, !16, i64 380, !17, i64 384}
!19 = !{!18, !8, i64 304}
!20 = !{!18, !15, i64 312}
!21 = !{!18, !8, i64 320}
!22 = !{!18, !8, i64 324}
!23 = !{!18, !16, i64 328}
!24 = !{!18, !17, i64 336}
!25 = !{!16, !16, i64 0}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!29 = !{!8, !8, i64 0}
!30 = !{!"p1 _ZTS12opal_class_t", !11, i64 0}
!31 = !{!"opal_object_t", !30, i64 0, !8, i64 8}
!32 = !{!31, !30, i64 0}
!33 = !{!"p1 omnipotent char", !11, i64 0}
!34 = !{!"any p2 pointer", !11, i64 0}
!35 = !{!"opal_class_t", !33, i64 0, !30, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !34, i64 40, !34, i64 48, !15, i64 56}
!36 = !{!35, !34, i64 48}
!37 = !{!11, !11, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!15, !15, i64 0}
!40 = !{!"p1 _ZTS16opal_list_item_t", !11, i64 0}
!41 = !{!"opal_list_item_t", !31, i64 0, !40, i64 16, !40, i64 24, !8, i64 32}
!42 = !{!"p1 _ZTS30mca_rcache_base_registration_t", !11, i64 0}
!43 = !{!"opal_free_list_item_t", !41, i64 0, !42, i64 40, !11, i64 48}
!44 = !{!"ompi_status_public_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !15, i64 16}
!45 = !{!"ompi_request_t", !43, i64 0, !8, i64 56, !44, i64 64, !11, i64 88, !8, i64 96, !16, i64 100, !8, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !7, i64 152}
!46 = !{!"p1 _ZTS14ompi_request_t", !11, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"p1 _ZTS19opal_hash_element_t", !11, i64 0}
!49 = !{!"p1 _ZTS24opal_hash_type_methods_t", !11, i64 0}
!50 = !{!"opal_hash_table_t", !31, i64 0, !48, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !49, i64 64}
!51 = !{!"p1 _ZTS11opal_info_t", !11, i64 0}
!52 = !{!"opal_infosubscriber_t", !31, i64 0, !50, i64 16, !51, i64 88}
!53 = !{!"opal_mutex_t", !31, i64 0, !7, i64 16, !8, i64 56}
!54 = !{!"ompi_comm_extended_cid_t", !15, i64 0, !7, i64 8}
!55 = !{!"ompi_comm_extended_cid_block_t", !54, i64 0, !15, i64 16, !7, i64 24, !7, i64 25}
!56 = !{!"p1 int", !11, i64 0}
!57 = !{!"p1 _ZTS12ompi_group_t", !11, i64 0}
!58 = !{!"p1 _ZTS19ompi_communicator_t", !11, i64 0}
!59 = !{!"p1 _ZTS17opal_hash_table_t", !11, i64 0}
!60 = !{!"p1 _ZTS22mca_topo_base_module_t", !11, i64 0}
!61 = !{!"p2 _ZTS20ompi_peruse_handle_t", !34, i64 0}
!62 = !{!"p1 _ZTS17ompi_errhandler_t", !11, i64 0}
!63 = !{!"p1 _ZTS14mca_pml_comm_t", !11, i64 0}
!64 = !{!"p1 _ZTS14mca_mtl_comm_t", !11, i64 0}
!65 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !11, i64 0}
!66 = !{!"p1 _ZTS15ompi_instance_t", !11, i64 0}
!67 = !{!"p1 _ZTS13opal_object_t", !11, i64 0}
!68 = !{!"ompi_communicator_t", !52, i64 0, !53, i64 96, !33, i64 160, !54, i64 168, !55, i64 184, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !56, i64 240, !8, i64 248, !8, i64 252, !8, i64 256, !57, i64 264, !57, i64 272, !58, i64 280, !59, i64 288, !60, i64 296, !61, i64 304, !62, i64 312, !8, i64 320, !63, i64 328, !64, i64 336, !65, i64 344, !66, i64 352, !67, i64 360, !8, i64 368, !8, i64 372, !16, i64 376, !16, i64 377, !16, i64 378}
!69 = !{!68, !8, i64 220}
!70 = !{!"p1 _ZTS15ompi_datatype_t", !11, i64 0}
!71 = !{!"p1 _ZTS12opal_mutex_t", !11, i64 0}
!72 = !{!"p1 _ZTS16ompi_coll_tree_t", !11, i64 0}
!73 = !{!"ompi_coll_adapt_constant_bcast_context_s", !31, i64 0, !8, i64 16, !15, i64 24, !15, i64 32, !70, i64 40, !58, i64 48, !8, i64 56, !8, i64 60, !46, i64 64, !71, i64 72, !56, i64 80, !56, i64 88, !8, i64 96, !8, i64 100, !8, i64 104, !72, i64 112, !8, i64 120}
!74 = !{!73, !8, i64 16}
!75 = !{!73, !15, i64 24}
!76 = !{!73, !15, i64 32}
!77 = !{!73, !70, i64 40}
!78 = !{!73, !58, i64 48}
!79 = !{!73, !8, i64 56}
!80 = !{!73, !8, i64 60}
!81 = !{!73, !56, i64 80}
!82 = !{!73, !8, i64 96}
!83 = !{!73, !8, i64 100}
!84 = !{!73, !56, i64 88}
!85 = !{!73, !8, i64 104}
!86 = !{!73, !71, i64 72}
!87 = !{!73, !46, i64 64}
!88 = !{!73, !72, i64 112}
!89 = !{!73, !8, i64 120}
!90 = !{!"p1 _ZTS40ompi_coll_adapt_constant_bcast_context_s", !11, i64 0}
!91 = !{!"ompi_coll_adapt_bcast_context_s", !43, i64 0, !33, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !90, i64 80}
!92 = !{!91, !33, i64 56}
!93 = !{!91, !8, i64 64}
!94 = !{!91, !8, i64 68}
!95 = !{!91, !8, i64 72}
!96 = !{!91, !90, i64 80}
!97 = !{!"mca_pml_base_module_2_1_0_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !11, i64 184}
!98 = !{!97, !11, i64 88}
!99 = !{!45, !11, i64 144}
!100 = !{!45, !11, i64 136}
!101 = !{!45, !11, i64 88}
!102 = !{ptr @recv_cb, ptr @send_cb}
!103 = !{!97, !11, i64 64}
!104 = !{!7, !7, i64 0}
!105 = !{!41, !40, i64 16}
!106 = !{!"opal_lifo_t", !31, i64 0, !7, i64 16, !41, i64 32}
!107 = !{!"p1 _ZTS23mca_mpool_base_module_t", !11, i64 0}
!108 = !{!"p1 _ZTS24mca_rcache_base_module_t", !11, i64 0}
!109 = !{!"opal_condition_t", !31, i64 0, !8, i64 16, !8, i64 20}
!110 = !{!"opal_list_t", !31, i64 0, !41, i64 16, !15, i64 56}
!111 = !{!"opal_free_list_t", !106, i64 0, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !30, i64 144, !107, i64 152, !108, i64 160, !53, i64 168, !109, i64 232, !110, i64 256, !8, i64 320, !11, i64 328, !11, i64 336}
!112 = !{!111, !15, i64 104}
!113 = !{!109, !8, i64 16}
!114 = !{!109, !8, i64 20}
!115 = !{!41, !8, i64 32}
!116 = !{!45, !11, i64 120}
!117 = distinct !{null, null, null}
!118 = distinct !{!118, !38}
!119 = distinct !{null, null}
!120 = distinct !{!120, !154, !155}
!121 = distinct !{!121, !154}
!122 = distinct !{!122, !38, !156, !157}
!123 = distinct !{!123, !38, !157, !156}
!124 = distinct !{!124, !38, !156, !157}
!125 = distinct !{!125, !38, !157, !156}
!126 = distinct !{null}
!127 = distinct !{!127, !38}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38}
!130 = !{!35, !15, i64 56}
!131 = !{!35, !8, i64 32}
!132 = !{!31, !8, i64 8}
!133 = !{!35, !34, i64 40}
!134 = !{!18, !8, i64 296}
!135 = !{!18, !8, i64 292}
!136 = !{!18, !8, i64 300}
!137 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!138 = !{!"", !7, i64 0, !7, i64 24}
!139 = !{!"ompi_coll_base_nbc_request_t", !45, i64 0, !7, i64 160, !11, i64 168, !138, i64 176}
!140 = !{!139, !11, i64 88}
!141 = !{!139, !8, i64 96}
!142 = !{!139, !16, i64 100}
!143 = !{!139, !8, i64 56}
!144 = !{!139, !11, i64 120}
!145 = !{!"short", !7, i64 0}
!146 = !{!"p1 _ZTS12dt_elem_desc", !11, i64 0}
!147 = !{!"dt_type_desc_t", !15, i64 0, !15, i64 8, !146, i64 16}
!148 = !{!"p1 long", !11, i64 0}
!149 = !{!"opal_datatype_t", !31, i64 0, !145, i64 16, !145, i64 18, !8, i64 20, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !8, i64 72, !8, i64 76, !7, i64 80, !147, i64 144, !147, i64 168, !148, i64 192}
!150 = !{!149, !15, i64 24}
!151 = !{!149, !15, i64 48}
!152 = !{!149, !15, i64 56}
!153 = !{!68, !8, i64 248}
!154 = !{!"llvm.loop.unswitch.partial.disable"}
!155 = !{!"llvm.loop.peeled.count", i32 1}
!156 = !{!"llvm.loop.isvectorized", i32 1}
!157 = !{!"llvm.loop.unroll.runtime.disable"}
!158 = distinct !{!158, !38}
!159 = distinct !{!159, !38}
!160 = distinct !{!160, !38}
!161 = distinct !{!161, !38}
!162 = !{!"p1 _ZTS22opal_counted_pointer_t", !11, i64 0}
!163 = !{!162, !162, i64 0}
!164 = !{!"p1 _ZTS21opal_free_list_item_t", !11, i64 0}
!165 = !{!164, !164, i64 0}
!166 = !{!111, !15, i64 80}
!167 = !{!111, !15, i64 88}
!168 = !{!111, !15, i64 96}
!169 = distinct !{!169, !38}
!170 = distinct !{null}
!171 = !{!45, !8, i64 72}
!172 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!173 = !{!"p1 _ZTS16ompi_wait_sync_t", !11, i64 0}
!174 = !{!"ompi_wait_sync_t", !8, i64 0, !8, i64 4, !7, i64 8, !7, i64 56, !173, i64 96, !173, i64 104, !16, i64 112}
!175 = !{!174, !8, i64 4}
!176 = !{!174, !16, i64 112}
end_hunk_1
