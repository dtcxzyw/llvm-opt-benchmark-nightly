Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_adapt_ireduce?download=true
inline.NumInlined: 112
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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
@.str = private unnamed_addr constant [17 x i8] c"reduce_algorithm\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"Algorithm of reduce, 1: binomial, 2: in_order_binomial, 3: binary, 4: pipeline, 5: chain, 6: linear\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"reduce_segment_size\00", align 1
@.str.3 = private unnamed_addr constant [157 x i8] c"Segment size in bytes used by default for reduce algorithms. Only has meaning if algorithm is forced and supports segmenting. 0 bytes means no segmentation.\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"reduce_max_send_requests\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Maximum number of send requests\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"reduce_max_recv_requests\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Maximum number of receive requests per peer\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"inbuf_free_list_min\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Minimum number of segment in inbuf free list\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"inbuf_free_list_max\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Maximum number of segment in inbuf free list\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"inbuf_free_list_inc\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"Number of segments to allocate when growing the inbuf free list\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"reduce_synchronous_send\00", align 1
@.str.15 = private unnamed_addr constant [77 x i8] c"Whether to use synchronous send operations during setup of reduce operations\00", align 1
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@opal_free_list_t_class = external global %struct.opal_class_t, align 8
@opal_cache_line_size = external local_unnamed_addr global i32, align 4
@ompi_coll_adapt_reduce_context_t_class = external global %struct.opal_class_t, align 8
@ompi_coll_base_nbc_request_t_class = external global %struct.opal_class_t, align 8
@opal_class_init_epoch = external local_unnamed_addr global i32, align 4
@opal_mutex_t_class = external global %struct.opal_class_t, align 8
@ompi_coll_adapt_constant_reduce_context_t_class = external global %struct.opal_class_t, align 8
@ompi_coll_adapt_inbuf_t_class = external global %struct.opal_class_t, align 8
@mca_pml = external local_unnamed_addr global %struct.mca_pml_base_module_2_1_0_t, align 8
@ompi_coll_adapt_item_t_class = external global %struct.opal_class_t, align 8
@ompi_op_ddt_map = external local_unnamed_addr global [52 x i32], align 16

; Function Attrs: nounwind uwtable
define noundef i32 @ompi_coll_adapt_ireduce_register() local_unnamed_addr #0 {
bb.a:
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 344), align 8, !tbaa !21
  %i.a = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 344)) #10 ; 0 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 344), align 8, !tbaa !21
  %or.cond = icmp ugt i32 %i.b, 7
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 344), align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i64 163740, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 352), align 8, !tbaa !22
  %i.c = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 352)) #10 ; 0 uses
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 360), align 8, !tbaa !23
  %i.d = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 360)) #10 ; 0 uses
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 364), align 4, !tbaa !24
  %i.e = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 364)) #10 ; 0 uses
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 368), align 8, !tbaa !25
  %i.f = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 368)) #10 ; 0 uses
  store i32 10000, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 372), align 4, !tbaa !26
  %i.g = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 372)) #10 ; 0 uses
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 376), align 8, !tbaa !27
  %i.h = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 4, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 376)) #10 ; 0 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 380), align 4, !tbaa !28
  %i.i = tail call i32 @mca_base_component_var_register(ptr noundef nonnull @mca_coll_adapt_component, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 4, i32 noundef 8, i32 noundef 5, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 380)) #10 ; 0 uses
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @mca_base_component_var_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef i32 @ompi_coll_adapt_ireduce_fini() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw volatile add ptr %i.b, i32 -1 monotonic, align 4
  %i.f = add i32 %i.e, -1
  br label %opal_thread_add_fetch_32.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load volatile i32, ptr %i.b, align 4, !tbaa !34
  %i.h = add nsw i32 %i.g, -1
  store volatile i32 %i.h, ptr %i.b, align 4, !tbaa !34
  %i.i = load volatile i32, ptr %i.b, align 4, !tbaa !34
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.f, %bb.c ], [ %i.i, %bb.d ]
  %i.j = icmp eq i32 %.0.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 2 uses
  %.not6.i = icmp eq ptr %i.o, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.p = phi ptr [ %i.r, %.lr.ph.i ], [ %i.o, %bb.e ]
  %.07.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.n, %bb.e ]
  tail call void %i.p(ptr noundef nonnull %i.k) #10, !inline_history !0
  %i.q = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.e
  %i.s = phi ptr [ %.pre, %opal_obj_run_destructors.exit.loopexit ], [ %i.k, %bb.e ]
  tail call void @free(ptr noundef %i.s) #10
  br label %bb.f

bb.f:                                             ; preds = %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @ompi_coll_adapt_ireduce(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %4, i64 84
  %.val = load i32, ptr %i.c, align 4, !tbaa !46
  %i.d = and i32 %.val, 64
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 616
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 608
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !158
  %i.i = tail call i32 %i.f(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %i.h) #10
  br label %ompi_coll_adapt_ireduce_generic.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 344), align 8, !tbaa !21 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %ompi_coll_adapt_ireduce_generic.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @ompi_coll_adapt_module_cached_topology(ptr noundef %8, ptr noundef %6, i32 noundef %5, i32 noundef %i.j) #10 ; 4 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 352), align 8, !tbaa !22 ; 4 uses
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 380), align 4, !tbaa !28, !range !31, !noundef !32
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i32 0, i32 4
  %i.q = getelementptr i8, ptr %6, i64 220
  %.val.i = load i32, ptr %i.q, align 4, !tbaa !176
  %.val.fr.i = freeze i32 %.val.i                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !57   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !58
  %i.v = sub nsw i64 %i.u, %i.s                   ; 2 uses
  %i.w = getelementptr i8, ptr %3, i64 24
  %.val278.i = load i64, ptr %i.w, align 8, !tbaa !177 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %.val278.i
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = sext i32 %2 to i64
  %i.y = mul i64 %.val278.i, %i.x
  %i.z = icmp ult i64 %i.m, %i.y
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = udiv i64 %i.m, %.val278.i               ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  %sext.i = shl i64 %i.aa, 32
  %i.ac = ashr exact i64 %sext.i, 32
  %i.ad = mul i64 %i.ac, %.val278.i
  %i.ae = sub i64 %i.m, %i.ad
  %i.af = lshr i64 %.val278.i, 1
  %i.ag = icmp ugt i64 %i.ae, %i.af
  %i.ah = zext i1 %i.ag to i32
  %spec.select.i = add nsw i32 %i.ah, %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1257.i = phi i32 [ %spec.select.i, %bb.f ], [ %2, %bb.e ], [ %2, %bb.d ] ; 8 uses
  %i.ai = add i32 %2, -1
  %i.aj = add i32 %i.ai, %.1257.i
  %i.ak = sdiv i32 %i.aj, %.1257.i                ; 16 uses
  %i.al = sext i32 %.1257.i to i64                ; 2 uses
  %i.am = mul nsw i64 %i.v, %i.al                 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !178
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !179
  %i.ar = sub nsw i64 %i.aq, %i.ao
  %i.as = add nsw i32 %.1257.i, -1
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.v, %i.at
  %i.av = add nsw i64 %i.ar, %i.au                ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.h, label %opal_thread_compare_exchange_strong_ptr.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @opal_free_list_t_class, i64 56), align 8, !tbaa !59
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ay) #11 ; 11 uses
  %i.ba = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !34
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_free_list_t_class, i64 32), align 8, !tbaa !60
  %.not.i.i = icmp eq i32 %i.ba, %i.bb
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_free_list_t_class) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not9.i.i = icmp eq ptr %i.az, null
  br i1 %.not9.i.i, label %opal_obj_new.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr @opal_free_list_t_class, ptr %i.az, align 8, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store volatile i32 1, ptr %i.bc, align 8, !tbaa !61
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_free_list_t_class, i64 40), align 8, !tbaa !62 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not6.i.i.i, label %opal_obj_new.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k, %.lr.ph.i.i.i
  %i.bf = phi ptr [ %i.bh, %.lr.ph.i.i.i ], [ %i.be, %bb.k ]
  %.07.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %i.bd, %bb.k ]
  tail call void %i.bf(ptr noundef nonnull %i.az) #10, !inline_history !143
  %i.bg = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %opal_obj_new.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

opal_obj_new.exit.i:                              ; preds = %.lr.ph.i.i.i, %bb.k, %bb.j
  %i.bi = load i32, ptr @opal_cache_line_size, align 4, !tbaa !34
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 296), align 8, !tbaa !180
  %i.bl = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 292), align 4, !tbaa !181
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 300), align 4, !tbaa !182
  %i.bn = tail call i32 @opal_free_list_init(ptr noundef %i.az, i64 noundef 96, i64 noundef %i.bj, ptr noundef nonnull @ompi_coll_adapt_reduce_context_t_class, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.bm, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null) #10 ; 0 uses
  %i.bo = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bp = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.l, label %bb.m, !prof !33

bb.l:                                             ; preds = %opal_obj_new.exit.i
  %i.br = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), i64 0, i64 %i.bo acquire monotonic, align 8
  %i.bs = extractvalue { i64, i1 } %i.br, 1
  br i1 %i.bs, label %opal_thread_compare_exchange_strong_ptr.exit.thread.i, label %opal_thread_compare_exchange_strong_ptr.exit.i

bb.m:                                             ; preds = %opal_obj_new.exit.i
  %i.bt = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !63
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.n, label %opal_thread_compare_exchange_strong_ptr.exit.thread126.i

opal_thread_compare_exchange_strong_ptr.exit.thread126.i: ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  store i64 %i.bo, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !63
  br label %opal_thread_compare_exchange_strong_ptr.exit.thread.i

opal_thread_compare_exchange_strong_ptr.exit.i:   ; preds = %bb.l
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31
  %i.bw = trunc nuw i8 %.pre.i to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  br i1 %i.bw, label %bb.o, label %bb.p, !prof !183

bb.o:                                             ; preds = %opal_thread_compare_exchange_strong_ptr.exit.i
  %i.by = atomicrmw volatile add ptr %i.bx, i32 -1 monotonic, align 4
  %i.bz = add i32 %i.by, -1
  br label %opal_thread_add_fetch_32.exit.i

bb.p:                                             ; preds = %opal_thread_compare_exchange_strong_ptr.exit.i, %opal_thread_compare_exchange_strong_ptr.exit.thread126.i
  %i.ca = phi ptr [ %i.bv, %opal_thread_compare_exchange_strong_ptr.exit.thread126.i ], [ %i.bx, %opal_thread_compare_exchange_strong_ptr.exit.i ] ; 3 uses
  %i.cb = load volatile i32, ptr %i.ca, align 4, !tbaa !34
  %i.cc = add nsw i32 %i.cb, -1
  store volatile i32 %i.cc, ptr %i.ca, align 4, !tbaa !34
  %i.cd = load volatile i32, ptr %i.ca, align 4, !tbaa !34
  br label %opal_thread_add_fetch_32.exit.i

opal_thread_add_fetch_32.exit.i:                  ; preds = %bb.p, %bb.o
  %.0.i279.i = phi i32 [ %i.bz, %bb.o ], [ %i.cd, %bb.p ]
  %i.ce = icmp eq i32 %.0.i279.i, 0
  br i1 %i.ce, label %bb.q, label %opal_thread_compare_exchange_strong_ptr.exit.thread.i

bb.q:                                             ; preds = %opal_thread_add_fetch_32.exit.i
  %i.cf = load ptr, ptr %i.az, align 8, !tbaa !37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !41 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ci, null
  br i1 %.not6.i.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.i
  %i.cj = phi ptr [ %i.cl, %.lr.ph.i.i ], [ %i.ci, %bb.q ]
  %.07.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %i.ch, %bb.q ]
  tail call void %i.cj(ptr noundef nonnull %i.az) #10, !inline_history !144
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !42 ; 2 uses
  %.not.i280.i = icmp eq ptr %i.cl, null
  br i1 %.not.i280.i, label %opal_obj_run_destructors.exit.i, label %.lr.ph.i.i, !llvm.loop !1

opal_obj_run_destructors.exit.i:                  ; preds = %.lr.ph.i.i, %bb.q
  tail call void @free(ptr noundef nonnull %i.az) #10
  br label %opal_thread_compare_exchange_strong_ptr.exit.thread.i

opal_thread_compare_exchange_strong_ptr.exit.thread.i: ; preds = %opal_obj_run_destructors.exit.i, %opal_thread_add_fetch_32.exit.i, %bb.n, %bb.l, %bb.g
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_nbc_request_t_class, i64 56), align 8, !tbaa !59
  %i.cn = tail call noalias ptr @malloc(i64 noundef %i.cm) #11 ; 13 uses
  %i.co = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !34
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_nbc_request_t_class, i64 32), align 8, !tbaa !60
  %.not.i281.i = icmp eq i32 %i.co, %i.cp
  br i1 %.not.i281.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %opal_thread_compare_exchange_strong_ptr.exit.thread.i
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_coll_base_nbc_request_t_class) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %opal_thread_compare_exchange_strong_ptr.exit.thread.i
  %.not9.i282.i = icmp eq ptr %i.cn, null
  br i1 %.not9.i282.i, label %opal_obj_new.exit287.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr @ompi_coll_base_nbc_request_t_class, ptr %i.cn, align 8, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store volatile i32 1, ptr %i.cq, align 8, !tbaa !61
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_base_nbc_request_t_class, i64 40), align 8, !tbaa !62 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i283.i = icmp eq ptr %i.cs, null
  br i1 %.not6.i.i283.i, label %opal_obj_new.exit287.i, label %.lr.ph.i.i284.i

.lr.ph.i.i284.i:                                  ; preds = %bb.t, %.lr.ph.i.i284.i
  %i.ct = phi ptr [ %i.cv, %.lr.ph.i.i284.i ], [ %i.cs, %bb.t ]
  %.07.i.i285.i = phi ptr [ %i.cu, %.lr.ph.i.i284.i ], [ %i.cr, %bb.t ]
  tail call void %i.ct(ptr noundef nonnull %i.cn) #10, !inline_history !143
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i.i285.i, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !42 ; 2 uses
  %.not.i.i286.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i286.i, label %opal_obj_new.exit287.i, label %.lr.ph.i.i284.i, !llvm.loop !2

opal_obj_new.exit287.i:                           ; preds = %.lr.ph.i.i284.i, %bb.t, %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  store ptr null, ptr %i.cw, align 8, !tbaa !186
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 96 ; 2 uses
  store volatile i32 1, ptr %i.cx, align 8, !tbaa !187
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 100
  store i8 0, ptr %i.cy, align 4, !tbaa !188
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  store volatile i32 2, ptr %i.cx, align 8, !tbaa !187
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  store i32 4, ptr %i.da, align 8, !tbaa !189
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 120
  store ptr @ompi_coll_adapt_request_free, ptr %i.db, align 8, !tbaa !190
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false)
  store ptr %i.cn, ptr %7, align 8, !tbaa !71
  %i.dd = sext i32 %i.ak to i64                   ; 3 uses
  %i.de = shl nsw i64 %i.dd, 6
  %i.df = tail call noalias ptr @malloc(i64 noundef %i.de) #11 ; 2 uses
  %i.dg = icmp sgt i32 %i.ak, 0                   ; 3 uses
  br i1 %i.dg, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %opal_obj_new.exit287.i
  %wide.trip.count.i = zext nneg i32 %i.ak to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %opal_obj_run_constructors.exit.i, %opal_obj_new.exit287.i
  %i.dh = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_constant_reduce_context_t_class, i64 56), align 8, !tbaa !59
  %i.di = tail call noalias ptr @malloc(i64 noundef %i.dh) #11 ; 42 uses
  %i.dj = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !34
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_constant_reduce_context_t_class, i64 32), align 8, !tbaa !60
  %.not.i288.i = icmp eq i32 %i.dj, %i.dk
  br i1 %.not.i288.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_coll_adapt_constant_reduce_context_t_class) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %.not9.i289.i = icmp eq ptr %i.di, null
  br i1 %.not9.i289.i, label %opal_obj_new.exit294.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr @ompi_coll_adapt_constant_reduce_context_t_class, ptr %i.di, align 8, !tbaa !37
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store volatile i32 1, ptr %i.dl, align 8, !tbaa !61
  %i.dm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_constant_reduce_context_t_class, i64 40), align 8, !tbaa !62 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i290.i = icmp eq ptr %i.dn, null
  br i1 %.not6.i.i290.i, label %opal_obj_new.exit294.i, label %.lr.ph.i.i291.i

.lr.ph.i.i291.i:                                  ; preds = %bb.w, %.lr.ph.i.i291.i
  %i.do = phi ptr [ %i.dq, %.lr.ph.i.i291.i ], [ %i.dn, %bb.w ]
  %.07.i.i292.i = phi ptr [ %i.dp, %.lr.ph.i.i291.i ], [ %i.dm, %bb.w ]
  tail call void %i.do(ptr noundef nonnull %i.di) #10, !inline_history !143
  %i.dp = getelementptr inbounds nuw i8, ptr %.07.i.i292.i, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !42 ; 2 uses
  %.not.i.i293.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i293.i, label %opal_obj_new.exit294.i, label %.lr.ph.i.i291.i, !llvm.loop !2

opal_obj_new.exit294.i:                           ; preds = %.lr.ph.i.i291.i, %bb.w, %bb.v
  %i.dr = sext i32 %2 to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 %i.dr, ptr %i.ds, align 16, !tbaa !84
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i64 %i.al, ptr %i.dt, align 8, !tbaa !85
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store ptr %3, ptr %i.du, align 16, !tbaa !86
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store ptr %6, ptr %i.dv, align 8, !tbaa !87
  %i.dw = trunc i64 %i.am to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !88
  %i.dy = getelementptr inbounds nuw i8, ptr %i.di, i64 60
  store i32 %i.ak, ptr %i.dy, align 4, !tbaa !89
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 640
  store ptr %i.cn, ptr %i.dz, align 16, !tbaa !90
  %i.ea = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  store i32 %.val.fr.i, ptr %i.ea, align 16, !tbaa !91
  %i.eb = getelementptr inbounds nuw i8, ptr %i.di, i64 84
  store i32 0, ptr %i.eb, align 4, !tbaa !92
  %i.ec = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  store i32 0, ptr %i.ec, align 8, !tbaa !93
  %i.ed = getelementptr inbounds nuw i8, ptr %i.di, i64 80 ; 2 uses
  store i32 0, ptr %i.ed, align 16, !tbaa !94
  %i.ee = getelementptr inbounds nuw i8, ptr %i.di, i64 104
  store ptr %i.df, ptr %i.ee, align 8, !tbaa !95
  %i.ef = getelementptr inbounds nuw i8, ptr %i.di, i64 112
  store ptr %4, ptr %i.ef, align 16, !tbaa !96
  %i.eg = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  store ptr %i.l, ptr %i.eg, align 8, !tbaa !97
  %i.eh = getelementptr inbounds nuw i8, ptr %i.di, i64 136
  store i64 %i.s, ptr %i.eh, align 8, !tbaa !98
  %i.ei = getelementptr inbounds nuw i8, ptr %i.di, i64 144
  store ptr %0, ptr %i.ei, align 16, !tbaa !99
  %i.ej = getelementptr inbounds nuw i8, ptr %i.di, i64 152
  store ptr %1, ptr %i.ej, align 8, !tbaa !100
  %i.ek = getelementptr inbounds nuw i8, ptr %i.di, i64 68
  store i32 %5, ptr %i.ek, align 4, !tbaa !101
  %i.el = getelementptr inbounds nuw i8, ptr %i.di, i64 72 ; 2 uses
  store i32 0, ptr %i.el, align 8, !tbaa !102
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 248 ; 4 uses
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i.backedge, %opal_obj_new.exit294.i
  %i.en = load volatile i32, ptr %i.em, align 8, !tbaa !191 ; 4 uses
  %i.eo = sub nsw i32 %i.en, %i.ak
  %i.ep = icmp slt i32 %i.eo, -1073741822
  %spec.store.select.i.i = select i1 %i.ep, i32 -33, i32 %i.en ; 2 uses
  %i.eq = sub nsw i32 %spec.store.select.i.i, %i.ak ; 2 uses
  %9 = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.er = trunc nuw i8 %9 to i1
  br i1 %i.er, label %bb.x, label %bb.y, !prof !33

bb.x:                                             ; preds = %.split.i.i
  %i.es = cmpxchg volatile ptr %i.em, i32 %i.en, i32 %i.eq acquire monotonic, align 4
  %i.et = extractvalue { i32, i1 } %i.es, 1
  br i1 %i.et, label %ompi_coll_base_nbc_reserve_tags.exit.i, label %.split.i.i.backedge

bb.y:                                             ; preds = %.split.i.i
  %i.eu = load volatile i32, ptr %i.em, align 8, !tbaa !34
  %i.ev = icmp eq i32 %i.eu, %i.en
  br i1 %i.ev, label %.split14.i.i, label %.split.i.i.backedge

.split.i.i.backedge:                              ; preds = %bb.y, %bb.x
  br label %.split.i.i

.split14.i.i:                                     ; preds = %bb.y
  store i32 %i.eq, ptr %i.em, align 8, !tbaa !34
  br label %ompi_coll_base_nbc_reserve_tags.exit.i

ompi_coll_base_nbc_reserve_tags.exit.i:           ; preds = %bb.x, %.split14.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.di, i64 76 ; 5 uses
  store i32 %spec.store.select.i.i, ptr %i.ew, align 4, !tbaa !103
  %i.ex = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  store i64 %i.av, ptr %i.ex, align 16, !tbaa !192
  %i.ey = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 9 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !34 ; 3 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %bb.ab, label %opal_free_list_return_st.exit.thread.i

.lr.ph.i:                                         ; preds = %opal_obj_run_constructors.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %opal_obj_run_constructors.exit.i ] ; 2 uses
  %i.fb = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !34
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 32), align 8, !tbaa !60
  %.not273.i = icmp eq i32 %i.fb, %i.fc
  br i1 %.not273.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph.i
  %i.fd = getelementptr inbounds nuw [64 x i8], ptr %i.df, i64 %indvars.iv.i ; 3 uses
  store ptr @opal_mutex_t_class, ptr %i.fd, align 8, !tbaa !37
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store volatile i32 1, ptr %i.fe, align 8, !tbaa !61
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !62 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !42 ; 2 uses
  %.not6.i295.i = icmp eq ptr %i.fg, null
  br i1 %.not6.i295.i, label %opal_obj_run_constructors.exit.i, label %.lr.ph.i296.i

.lr.ph.i296.i:                                    ; preds = %bb.aa, %.lr.ph.i296.i
  %i.fh = phi ptr [ %i.fj, %.lr.ph.i296.i ], [ %i.fg, %bb.aa ]
  %.07.i297.i = phi ptr [ %i.fi, %.lr.ph.i296.i ], [ %i.ff, %bb.aa ]
  tail call void %i.fh(ptr noundef nonnull %i.fd) #10, !inline_history !145
  %i.fi = getelementptr inbounds nuw i8, ptr %.07.i297.i, i64 8 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !42 ; 2 uses
  %.not.i298.i = icmp eq ptr %i.fj, null
  br i1 %.not.i298.i, label %opal_obj_run_constructors.exit.i, label %.lr.ph.i296.i, !llvm.loop !2

opal_obj_run_constructors.exit.i:                 ; preds = %.lr.ph.i296.i, %bb.aa
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !146

bb.ab:                                            ; preds = %ompi_coll_base_nbc_reserve_tags.exit.i
  %i.fk = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 368), align 8, !tbaa !25 ; 2 uses
  %i.fl = sext i32 %i.fk to i64
  %i.fm = zext nneg i32 %i.ez to i64
  %i.fn = mul nsw i64 %i.fm, %i.dd
  %i.fo = icmp ult i64 %i.fn, %i.fl
  %i.fp = mul nsw i32 %i.ez, %i.ak
  %spec.select274.i = select i1 %i.fo, i32 %i.fp, i32 %i.fk
  %i.fq = getelementptr inbounds nuw i8, ptr %i.di, i64 160 ; 4 uses
  %i.fr = add i64 %i.av, 56
  %i.fs = load i32, ptr @opal_cache_line_size, align 4, !tbaa !34
  %i.ft = sext i32 %i.fs to i64                   ; 2 uses
  %i.fu = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 372), align 4, !tbaa !26
  %i.fv = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 376), align 8, !tbaa !27
  %i.fw = tail call i32 @opal_free_list_init(ptr noundef nonnull %i.fq, i64 noundef %i.fr, i64 noundef %i.ft, ptr noundef nonnull @ompi_coll_adapt_inbuf_t_class, i64 noundef 0, i64 noundef %i.ft, i32 noundef %spec.select274.i, i32 noundef %i.fu, i32 noundef %i.fv, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null) #10 ; 0 uses
  %i.fx = load i32, ptr %i.ey, align 4, !tbaa !34
  %i.fy = sext i32 %i.fx to i64
  %i.fz = shl nsw i64 %i.fy, 2
  %i.ga = tail call noalias ptr @malloc(i64 noundef %i.fz) #11
  %i.gb = getelementptr inbounds nuw i8, ptr %i.di, i64 96 ; 2 uses
  store ptr %i.ga, ptr %i.gb, align 16, !tbaa !104
  %i.gc = tail call fastcc ptr @opal_free_list_wait_st(ptr noundef nonnull %i.fq) ; 3 uses
  %i.gd = trunc i64 %i.s to i32
  %i.ge = sub i32 56, %i.gd
  store i32 %i.ge, ptr %i.el, align 8, !tbaa !102
  %i.gf = getelementptr inbounds nuw i8, ptr %i.di, i64 184 ; 2 uses
  %i.gg = load volatile i64, ptr %i.gf, align 8, !tbaa !47
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  store volatile ptr %i.gh, ptr %i.gi, align 8, !tbaa !105
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  store i32 0, ptr %i.gj, align 8, !tbaa !106
  %i.gk = ptrtoint ptr %i.gc to i64
  store volatile i64 %i.gk, ptr %i.gf, align 8, !tbaa !47
  %i.gl = load volatile ptr, ptr %i.gi, align 8, !tbaa !105
  %i.gm = getelementptr inbounds nuw i8, ptr %i.di, i64 192
  %i.gn = icmp eq ptr %i.gm, %i.gl
  br i1 %i.gn, label %bb.ac, label %opal_free_list_return_st.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.go = getelementptr inbounds nuw i8, ptr %i.di, i64 264
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !107
  %.not.i299.i = icmp eq i64 %i.gp, 0
  br i1 %.not.i299.i, label %opal_free_list_return_st.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gq = getelementptr inbounds nuw i8, ptr %i.di, i64 408
  %i.gr = load volatile i32, ptr %i.gq, align 8, !tbaa !108
  %.not.i.i300.i = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i300.i, label %opal_free_list_return_st.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gs = getelementptr inbounds nuw i8, ptr %i.di, i64 412 ; 2 uses
  %i.gt = load volatile i32, ptr %i.gs, align 4, !tbaa !109
  %i.gu = add nsw i32 %i.gt, 1
  store volatile i32 %i.gu, ptr %i.gs, align 4, !tbaa !109
  br label %opal_free_list_return_st.exit.i

opal_free_list_return_st.exit.thread.i:           ; preds = %ompi_coll_base_nbc_reserve_tags.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  store ptr null, ptr %i.gv, align 16, !tbaa !104
  br label %bb.aq

opal_free_list_return_st.exit.i:                  ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.pr.i = load i32, ptr %i.ey, align 4, !tbaa !34
  %i.gw = icmp sgt i32 %.pr.i, 0
  br i1 %i.gw, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %opal_free_list_return_st.exit.i
  %i.gx = shl nsw i64 %i.dd, 3
  %i.gy = tail call noalias ptr @malloc(i64 noundef %i.gx) #11 ; 7 uses
  %i.gz = icmp eq i32 %5, %.val.fr.i              ; 2 uses
  %i.ha = icmp eq ptr %0, inttoptr (i64 1 to ptr)
  %or.cond.i = and i1 %i.ha, %i.gz
  br i1 %or.cond.i, label %.preheader26.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.af
  br i1 %i.dg, label %.lr.ph45.preheader.i, label %.loopexit.i

.lr.ph45.preheader.i:                             ; preds = %.preheader27.i
  %i.hb = zext nneg i32 %i.ak to i64
  %i.hc = shl nuw nsw i64 %i.hb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.gy, i8 0, i64 %i.hc, i1 false), !tbaa !110
  br label %.loopexit.i

.preheader26.i:                                   ; preds = %bb.af
  br i1 %i.dg, label %.lr.ph47.preheader.i, label %.loopexit.i

.lr.ph47.preheader.i:                             ; preds = %.preheader26.i
  %wide.trip.count85.i = zext nneg i32 %i.ak to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count85.i, 3     ; 3 uses
  %i.hd = icmp ult i32 %i.ak, 4
  br i1 %i.hd, label %.lr.ph47.i.epil.preheader, label %.lr.ph47.preheader.i.new

.lr.ph47.preheader.i.new:                         ; preds = %.lr.ph47.preheader.i
  %unroll_iter = and i64 %wide.trip.count85.i, 2147483644
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph47.i, %.lr.ph47.preheader.i.new
  %indvars.iv82.i = phi i64 [ 0, %.lr.ph47.preheader.i.new ], [ %indvars.iv.next83.i.3, %.lr.ph47.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph47.preheader.i.new ], [ %niter.next.3, %.lr.ph47.i ]
  %i.he = mul nsw i64 %indvars.iv82.i, %i.am
  %i.hf = getelementptr inbounds i8, ptr %1, i64 %i.he
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv82.i
  store ptr %i.hf, ptr %i.hg, align 8, !tbaa !110
  %indvars.iv.next83.i = or disjoint i64 %indvars.iv82.i, 1 ; 2 uses
  %i.hh = mul nsw i64 %indvars.iv.next83.i, %i.am
  %i.hi = getelementptr inbounds i8, ptr %1, i64 %i.hh
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next83.i
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !110
  %indvars.iv.next83.i.1 = or disjoint i64 %indvars.iv82.i, 2 ; 2 uses
  %i.hk = mul nsw i64 %indvars.iv.next83.i.1, %i.am
  %i.hl = getelementptr inbounds i8, ptr %1, i64 %i.hk
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next83.i.1
  store ptr %i.hl, ptr %i.hm, align 8, !tbaa !110
  %indvars.iv.next83.i.2 = or disjoint i64 %indvars.iv82.i, 3 ; 2 uses
  %i.hn = mul nsw i64 %indvars.iv.next83.i.2, %i.am
  %i.ho = getelementptr inbounds i8, ptr %1, i64 %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next83.i.2
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !110
  %indvars.iv.next83.i.3 = add nuw nsw i64 %indvars.iv82.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph47.i, !llvm.loop !147

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph47.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph47.i.epil.preheader

.lr.ph47.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph47.preheader.i
  %indvars.iv82.i.epil.init = phi i64 [ 0, %.lr.ph47.preheader.i ], [ %indvars.iv.next83.i.3, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph47.i.epil

.lr.ph47.i.epil:                                  ; preds = %.lr.ph47.i.epil, %.lr.ph47.i.epil.preheader
  %indvars.iv82.i.epil = phi i64 [ %indvars.iv82.i.epil.init, %.lr.ph47.i.epil.preheader ], [ %indvars.iv.next83.i.epil, %.lr.ph47.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph47.i.epil.preheader ], [ %epil.iter.next, %.lr.ph47.i.epil ]
  %i.hq = mul nsw i64 %indvars.iv82.i.epil, %i.am
  %i.hr = getelementptr inbounds i8, ptr %1, i64 %i.hq
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv82.i.epil
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !110
  %indvars.iv.next83.i.epil = add nuw nsw i64 %indvars.iv82.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i, label %.lr.ph47.i.epil, !llvm.loop !148

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph47.i.epil, %.preheader26.i, %.lr.ph45.preheader.i, %.preheader27.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.di, i64 128
  store ptr %i.gy, ptr %i.ht, align 16, !tbaa !111
  %i.hu = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 364), align 4, !tbaa !24
  %spec.select275.i = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.hu) ; 3 uses
  %i.hv = load i32, ptr %i.ey, align 4, !tbaa !34 ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, 0
  br i1 %i.hw, label %.lr.ph50.i, label %.preheader25.i

.lr.ph50.i:                                       ; preds = %.loopexit.i
  %i.hx = add nsw i32 %spec.select275.i, -1
  %i.hy = load ptr, ptr %i.gb, align 16, !tbaa !104
  br label %bb.ag

.preheader25.i:                                   ; preds = %bb.ag, %.loopexit.i
  %i.hz = phi i32 [ %i.hv, %.loopexit.i ], [ %i.ih, %bb.ag ] ; 2 uses
  %.not27255.i = icmp sgt i32 %spec.select275.i, 0
  br i1 %.not27255.i, label %.preheader.lr.ph.i, label %ompi_coll_adapt_ireduce_generic.exit

.preheader.lr.ph.i:                               ; preds = %.preheader25.i
  %i.ia = icmp ne ptr %0, inttoptr (i64 1 to ptr)
  %invariant.op.i = and i1 %i.ia, %i.gz
  %i.ib = sub i64 0, %i.s                         ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 3 uses
  %i.id = icmp sgt i32 %i.hz, 0
  br i1 %i.id, label %.preheader.preheader.i, label %ompi_coll_adapt_ireduce_generic.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.ie = add nsw i32 %i.ak, -1
  %i.if = zext i32 %i.ie to i64
  %wide.trip.count102.i = zext nneg i32 %spec.select275.i to i64
  br label %.preheader.i

bb.ag:                                            ; preds = %bb.ag, %.lr.ph50.i
  %indvars.iv87.i = phi i64 [ 0, %.lr.ph50.i ], [ %indvars.iv.next88.i, %bb.ag ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv87.i
  store i32 %i.hx, ptr %i.ig, align 4, !tbaa !34
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %i.ih = load i32, ptr %i.ey, align 4, !tbaa !34 ; 2 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next88.i, %i.ii
  br i1 %i.ij, label %bb.ag, label %.preheader25.i, !llvm.loop !149

.preheader.i:                                     ; preds = %._crit_edge54.i, %.preheader.preheader.i
  %i.ik = phi i32 [ %i.hz, %.preheader.preheader.i ], [ %i.lo, %._crit_edge54.i ] ; 2 uses
  %indvars.iv99.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next100.i, %._crit_edge54.i ] ; 4 uses
  %.not27151.i = icmp sgt i32 %i.ik, 0
  br i1 %.not27151.i, label %.lr.ph53.i, label %._crit_edge54.i

.lr.ph53.i:                                       ; preds = %.preheader.i
  %i.il = icmp eq i64 %indvars.iv99.i, %i.if
  %i.im = trunc nuw nsw i64 %indvars.iv99.i to i32 ; 7 uses
  %i.in = mul i32 %.1257.i, %i.im
  %i.io = sub i32 %2, %i.in
  %.0255.i = select i1 %i.il, i32 %i.io, i32 %.1257.i
  %i.ip = sext i32 %.0255.i to i64                ; 3 uses
  br i1 %invariant.op.i, label %.lr.ph53.split.preheader._crit_edge.i, label %.lr.ph53.split.us.i

.lr.ph53.split.preheader._crit_edge.i:            ; preds = %.lr.ph53.i
  %i.iq = mul nsw i64 %indvars.iv99.i, %i.am
  %i.ir = getelementptr inbounds i8, ptr %1, i64 %i.iq ; 2 uses
  %.pre104.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29
  %i.is = call fastcc ptr @opal_free_list_wait(ptr noundef %.pre104.i) ; 7 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 56
  store ptr %i.ir, ptr %i.it, align 8, !tbaa !115
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  store i32 %i.im, ptr %i.iu, align 8, !tbaa !116
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 68
  store i32 0, ptr %i.iv, align 4, !tbaa !117
  %i.iw = load i32, ptr %i.ic, align 4, !tbaa !34 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 72
  store i32 %i.iw, ptr %i.ix, align 8, !tbaa !118
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 80
  store ptr %i.di, ptr %i.iy, align 8, !tbaa !119
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 88
  store ptr null, ptr %i.iz, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ja = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !122
  %i.jb = load i32, ptr %i.ew, align 4, !tbaa !103
  %i.jc = sub nsw i32 %i.jb, %i.im
  %i.jd = call i32 %i.ja(ptr noundef %i.ir, i64 noundef %i.ip, ptr noundef %3, i32 noundef %i.iw, i32 noundef %i.jc, ptr noundef %6, ptr noundef nonnull %i.a) #10, !inline_history !150 ; 2 uses
  %.not270.peel.i = icmp eq i32 %i.jd, 0
  br i1 %.not270.peel.i, label %bb.ah, label %.split.us.i

bb.ah:                                            ; preds = %.lr.ph53.split.preheader._crit_edge.i
  %i.je = load ptr, ptr %i.a, align 8, !tbaa !71  ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 144
  store ptr %i.is, ptr %i.jf, align 8, !tbaa !123
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 136 ; 2 uses
  store ptr @recv_cb, ptr %i.jg, align 8, !tbaa !124
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 88
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !125
  %i.jj = icmp eq ptr %i.ji, inttoptr (i64 1 to ptr)
  br i1 %i.jj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store ptr null, ptr %i.jg, align 8, !tbaa !124
  %i.jk = call i32 @recv_cb(ptr noundef nonnull %i.je) #10, !callees !126, !inline_history !3 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.jl = load i32, ptr %i.ey, align 4, !tbaa !34 ; 2 uses
  %.not271.peel.i = icmp sgt i32 %i.jl, 1
  br i1 %.not271.peel.i, label %.lr.ph53.split.peel.next.i, label %._crit_edge54.i

.lr.ph53.split.us.i:                              ; preds = %.lr.ph53.i, %bb.am
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %bb.am ], [ 0, %.lr.ph53.i ] ; 3 uses
  %i.jm = call fastcc ptr @opal_free_list_wait(ptr noundef nonnull %i.fq) ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 56
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 %i.ib ; 2 uses
  %i.jp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29
  %i.jq = call fastcc ptr @opal_free_list_wait(ptr noundef %i.jp) ; 7 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 56
  store ptr %i.jo, ptr %i.jr, align 8, !tbaa !115
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 64
  store i32 %i.im, ptr %i.js, align 8, !tbaa !116
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 68
  %i.ju = trunc nuw nsw i64 %indvars.iv90.i to i32
  store i32 %i.ju, ptr %i.jt, align 4, !tbaa !117
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv90.i
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !34 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 72
  store i32 %i.jw, ptr %i.jx, align 8, !tbaa !118
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jq, i64 80
  store ptr %i.di, ptr %i.jy, align 8, !tbaa !119
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 88
  store ptr %i.jm, ptr %i.jz, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ka = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !122
  %i.kb = load i32, ptr %i.ew, align 4, !tbaa !103
  %i.kc = sub nsw i32 %i.kb, %i.im
  %i.kd = call i32 %i.ka(ptr noundef nonnull %i.jo, i64 noundef %i.ip, ptr noundef %3, i32 noundef %i.jw, i32 noundef %i.kc, ptr noundef %6, ptr noundef nonnull %i.a) #10, !inline_history !150 ; 2 uses
  %.not270.us.i = icmp eq i32 %i.kd, 0
  br i1 %.not270.us.i, label %bb.ak, label %.split.us.i

bb.ak:                                            ; preds = %.lr.ph53.split.us.i
  %i.ke = load ptr, ptr %i.a, align 8, !tbaa !71  ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 144
  store ptr %i.jq, ptr %i.kf, align 8, !tbaa !123
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 136 ; 2 uses
  store ptr @recv_cb, ptr %i.kg, align 8, !tbaa !124
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 88
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !125
  %i.kj = icmp eq ptr %i.ki, inttoptr (i64 1 to ptr)
  br i1 %i.kj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.kg, align 8, !tbaa !124
  %i.kk = call i32 @recv_cb(ptr noundef nonnull %i.ke) #10, !callees !126, !inline_history !3 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %i.kl = load i32, ptr %i.ey, align 4, !tbaa !34 ; 2 uses
  %i.km = sext i32 %i.kl to i64
  %.not271.us.i = icmp slt i64 %indvars.iv.next91.i, %i.km
  br i1 %.not271.us.i, label %.lr.ph53.split.us.i, label %._crit_edge54.i, !llvm.loop !151

.lr.ph53.split.peel.next.i:                       ; preds = %bb.aj, %bb.ap
  %indvars.iv93.i = phi i64 [ %indvars.iv.next94.i, %bb.ap ], [ 1, %bb.aj ] ; 3 uses
  %i.kn = call fastcc ptr @opal_free_list_wait(ptr noundef nonnull %i.fq) ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 56
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 %i.ib ; 2 uses
  %i.kq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29
  %i.kr = call fastcc ptr @opal_free_list_wait(ptr noundef %i.kq) ; 7 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 56
  store ptr %i.kp, ptr %i.ks, align 8, !tbaa !115
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 64
  store i32 %i.im, ptr %i.kt, align 8, !tbaa !116
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 68
  %i.kv = trunc nuw nsw i64 %indvars.iv93.i to i32
  store i32 %i.kv, ptr %i.ku, align 4, !tbaa !117
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %indvars.iv93.i
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !34 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 72
  store i32 %i.kx, ptr %i.ky, align 8, !tbaa !118
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 80
  store ptr %i.di, ptr %i.kz, align 8, !tbaa !119
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 88
  store ptr %i.kn, ptr %i.la, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.lb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !122
  %i.lc = load i32, ptr %i.ew, align 4, !tbaa !103
  %i.ld = sub nsw i32 %i.lc, %i.im
  %i.le = call i32 %i.lb(ptr noundef nonnull %i.kp, i64 noundef %i.ip, ptr noundef %3, i32 noundef %i.kx, i32 noundef %i.ld, ptr noundef %6, ptr noundef nonnull %i.a) #10, !inline_history !150 ; 2 uses
  %.not270.i = icmp eq i32 %i.le, 0
  br i1 %.not270.i, label %bb.an, label %.split.us.i

bb.an:                                            ; preds = %.lr.ph53.split.peel.next.i
  %i.lf = load ptr, ptr %i.a, align 8, !tbaa !71  ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 144
  store ptr %i.kr, ptr %i.lg, align 8, !tbaa !123
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 136 ; 2 uses
  store ptr @recv_cb, ptr %i.lh, align 8, !tbaa !124
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 88
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !125
  %i.lk = icmp eq ptr %i.lj, inttoptr (i64 1 to ptr)
  br i1 %i.lk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store ptr null, ptr %i.lh, align 8, !tbaa !124
  %i.ll = call i32 @recv_cb(ptr noundef nonnull %i.lf) #10, !callees !126, !inline_history !3 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.lm = load i32, ptr %i.ey, align 4, !tbaa !34 ; 2 uses
  %i.ln = sext i32 %i.lm to i64
  %.not271.i = icmp slt i64 %indvars.iv.next94.i, %i.ln
  br i1 %.not271.i, label %.lr.ph53.split.peel.next.i, label %._crit_edge54.i, !llvm.loop !152

._crit_edge54.i:                                  ; preds = %bb.am, %bb.ap, %bb.aj, %.preheader.i
  %i.lo = phi i32 [ %i.lm, %bb.ap ], [ %i.ik, %.preheader.i ], [ %i.jl, %bb.aj ], [ %i.kl, %bb.am ]
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %exitcond103.not.i = icmp eq i64 %indvars.iv.next100.i, %wide.trip.count102.i
  br i1 %exitcond103.not.i, label %ompi_coll_adapt_ireduce_generic.exit, label %.preheader.i, !llvm.loop !153

.split.us.i:                                      ; preds = %.lr.ph53.split.preheader._crit_edge.i, %.lr.ph53.split.us.i, %.lr.ph53.split.peel.next.i
  %.us-phi.i = phi i32 [ %i.le, %.lr.ph53.split.peel.next.i ], [ %i.kd, %.lr.ph53.split.us.i ], [ %i.jd, %.lr.ph53.split.preheader._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %ompi_coll_adapt_ireduce_generic.exit

bb.aq:                                            ; preds = %opal_free_list_return_st.exit.i, %opal_free_list_return_st.exit.thread.i
  %i.lp = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 360), align 8, !tbaa !23 ; 2 uses
  %spec.select277.i = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.lp) ; 4 uses
  %i.lq = icmp slt i32 %i.lp, %i.ak
  br i1 %i.lq, label %.lr.ph38.i, label %._crit_edge39.i

.lr.ph38.i:                                       ; preds = %bb.aq
  %i.lr = getelementptr inbounds nuw i8, ptr %i.di, i64 592
  %i.ls = getelementptr inbounds nuw i8, ptr %i.di, i64 616 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.di, i64 632 ; 2 uses
  br label %bb.ar

._crit_edge39.i:                                  ; preds = %opal_obj_new.exit308.i, %bb.aq
  %i.lu = getelementptr inbounds nuw i8, ptr %i.di, i64 128
  store ptr null, ptr %i.lu, align 16, !tbaa !111
  store i32 %spec.select277.i, ptr %i.ed, align 16, !tbaa !94
  %.not26940.i = icmp sgt i32 %spec.select277.i, 0
  br i1 %.not26940.i, label %.lr.ph43.i, label %ompi_coll_adapt_ireduce_generic.exit

.lr.ph43.i:                                       ; preds = %._crit_edge39.i
  %i.lv = add nsw i32 %i.ak, -1
  %i.lw = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.lx = zext i32 %i.lv to i64
  %wide.trip.count77.i = zext nneg i32 %spec.select277.i to i64
  br label %bb.av

bb.ar:                                            ; preds = %opal_obj_new.exit308.i, %.lr.ph38.i
  %.023736.i = phi i32 [ %spec.select277.i, %.lr.ph38.i ], [ %i.ms, %opal_obj_new.exit308.i ] ; 2 uses
  %i.ly = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_item_t_class, i64 56), align 8, !tbaa !59
  %i.lz = tail call noalias ptr @malloc(i64 noundef %i.ly) #11 ; 10 uses
  %i.ma = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !34
  %i.mb = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_item_t_class, i64 32), align 8, !tbaa !60
  %.not.i302.i = icmp eq i32 %i.ma, %i.mb
  br i1 %.not.i302.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_coll_adapt_item_t_class) #10
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.not9.i303.i = icmp eq ptr %i.lz, null
  br i1 %.not9.i303.i, label %opal_obj_new.exit308.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr @ompi_coll_adapt_item_t_class, ptr %i.lz, align 8, !tbaa !37
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store volatile i32 1, ptr %i.mc, align 8, !tbaa !61
  %i.md = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_item_t_class, i64 40), align 8, !tbaa !62 ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i304.i = icmp eq ptr %i.me, null
  br i1 %.not6.i.i304.i, label %opal_obj_new.exit308.i, label %.lr.ph.i.i305.i

.lr.ph.i.i305.i:                                  ; preds = %bb.au, %.lr.ph.i.i305.i
  %i.mf = phi ptr [ %i.mh, %.lr.ph.i.i305.i ], [ %i.me, %bb.au ]
  %.07.i.i306.i = phi ptr [ %i.mg, %.lr.ph.i.i305.i ], [ %i.md, %bb.au ]
  tail call void %i.mf(ptr noundef nonnull %i.lz) #10, !inline_history !143
  %i.mg = getelementptr inbounds nuw i8, ptr %.07.i.i306.i, i64 8 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !42 ; 2 uses
  %.not.i.i307.i = icmp eq ptr %i.mh, null
  br i1 %.not.i.i307.i, label %opal_obj_new.exit308.i, label %.lr.ph.i.i305.i, !llvm.loop !2

opal_obj_new.exit308.i:                           ; preds = %.lr.ph.i.i305.i, %bb.au, %bb.at
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lz, i64 40
  store i32 %.023736.i, ptr %i.mi, align 8, !tbaa !128
  %i.mj = load i32, ptr %i.ey, align 4, !tbaa !34
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lz, i64 44
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !129
  %i.ml = load volatile ptr, ptr %i.ls, align 8, !tbaa !130
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  store volatile ptr %i.ml, ptr %i.mm, align 8, !tbaa !130
  %i.mn = load volatile ptr, ptr %i.ls, align 8, !tbaa !130
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store volatile ptr %i.lz, ptr %i.mo, align 8, !tbaa !105
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  store volatile ptr %i.lr, ptr %i.mp, align 8, !tbaa !105
  store volatile ptr %i.lz, ptr %i.ls, align 8, !tbaa !130
  %i.mq = load volatile i64, ptr %i.lt, align 8, !tbaa !131
  %i.mr = add i64 %i.mq, 1
  store volatile i64 %i.mr, ptr %i.lt, align 8, !tbaa !131
  %i.ms = add i32 %.023736.i, 1                   ; 2 uses
  %exitcond73.not.i = icmp eq i32 %i.ms, %i.ak
  br i1 %exitcond73.not.i, label %._crit_edge39.i, label %bb.ar, !llvm.loop !154

bb.av:                                            ; preds = %bb.ay, %.lr.ph43.i
  %indvars.iv74.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next75.i, %bb.ay ] ; 4 uses
  %i.mt = icmp eq i64 %indvars.iv74.i, %i.lx
  %i.mu = trunc nuw nsw i64 %indvars.iv74.i to i32 ; 3 uses
  %i.mv = mul i32 %.1257.i, %i.mu
  %i.mw = sub i32 %2, %i.mv
  %.0254.i = select i1 %i.mt, i32 %i.mw, i32 %.1257.i
  %i.mx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29
  %i.my = call fastcc ptr @opal_free_list_wait(ptr noundef %i.mx) ; 6 uses
  %i.mz = mul nsw i64 %indvars.iv74.i, %i.am
  %i.na = getelementptr inbounds i8, ptr %0, i64 %i.mz ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 56
  store ptr %i.na, ptr %i.nb, align 8, !tbaa !115
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  store i32 %i.mu, ptr %i.nc, align 8, !tbaa !116
  %i.nd = load i32, ptr %i.lw, align 4, !tbaa !34 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.my, i64 72
  store i32 %i.nd, ptr %i.ne, align 8, !tbaa !118
  %i.nf = getelementptr inbounds nuw i8, ptr %i.my, i64 80
  store ptr %i.di, ptr %i.nf, align 8, !tbaa !119
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 88
  store ptr null, ptr %i.ng, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.nh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !132
  %i.ni = sext i32 %.0254.i to i64
  %i.nj = load i32, ptr %i.ew, align 4, !tbaa !103
  %i.nk = sub nsw i32 %i.nj, %i.mu
  %i.nl = call i32 %i.nh(ptr noundef %i.na, i64 noundef %i.ni, ptr noundef %3, i32 noundef %i.nd, i32 noundef %i.nk, i32 noundef %i.p, ptr noundef %6, ptr noundef nonnull %i.b) #10, !inline_history !150 ; 2 uses
  %.not268.i = icmp eq i32 %i.nl, 0
  br i1 %.not268.i, label %bb.aw, label %.thread17.i

bb.aw:                                            ; preds = %bb.av
  %i.nm = load ptr, ptr %i.b, align 8, !tbaa !71  ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 144
  store ptr %i.my, ptr %i.nn, align 8, !tbaa !123
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 136 ; 2 uses
  store ptr @send_cb, ptr %i.no, align 8, !tbaa !124
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 88
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !125
  %i.nr = icmp eq ptr %i.nq, inttoptr (i64 1 to ptr)
  br i1 %i.nr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store ptr null, ptr %i.no, align 8, !tbaa !124
  %i.ns = call i32 @send_cb(ptr noundef nonnull %i.nm) #10, !callees !126, !inline_history !3 ; 0 uses
  br label %bb.ay

.thread17.i:                                      ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %ompi_coll_adapt_ireduce_generic.exit

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, %wide.trip.count77.i
  br i1 %exitcond78.not.i, label %ompi_coll_adapt_ireduce_generic.exit, label %bb.av, !llvm.loop !155

ompi_coll_adapt_ireduce_generic.exit:             ; preds = %bb.ay, %._crit_edge54.i, %.thread17.i, %._crit_edge39.i, %.split.us.i, %.preheader.lr.ph.i, %.preheader25.i, %bb.c, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ -7, %bb.c ], [ %i.nl, %.thread17.i ], [ %.us-phi.i, %.split.us.i ], [ 0, %.preheader25.i ], [ 0, %.preheader.lr.ph.i ], [ 0, %._crit_edge39.i ], [ 0, %._crit_edge54.i ], [ 0, %bb.ay ]
  ret i32 %.0
}

declare ptr @ompi_coll_adapt_module_cached_topology(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @opal_free_list_init(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ompi_coll_adapt_request_free(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @opal_free_list_wait_st(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.sroa.4.i.i.i7 = alloca i64, align 8           ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.sroa.6.i.i8 = alloca i64, align 8             ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %.sroa.4.i.i.i = alloca i64, align 8            ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %.sroa.6.i.i = alloca i64, align 8              ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.f = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile ptr %i.h, ptr %i.d, align 8, !tbaa !134
  %.0..0..0..0..0..0..0..0.2.i.i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !134
  %i.i = load volatile i64, ptr %.0..0..0..0..0..0..0..0.2.i.i.i, align 16, !tbaa !47
  fence acquire
  %.0..0..0..0..0..0..0..0.3.i.i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0..0..0..0.3.i.i.i, i64 8
  %i.k = load volatile i64, ptr %i.j, align 8, !tbaa !47
  store volatile i64 %i.k, ptr %.sroa.6.i.i, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i = load volatile i64, ptr %.sroa.6.i.i, align 8, !tbaa !47 ; 2 uses
  %i.l = inttoptr i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i to ptr ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %opal_lifo_pop.exit.thread58, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %opal_update_counted_pointer.exit.i.i
  %i.o = phi ptr [ %i.w, %opal_update_counted_pointer.exit.i.i ], [ %i.l, %bb.b ] ; 3 uses
  %.sroa.6.0..sroa.6.8.15.i.i = phi i64 [ %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i, %opal_update_counted_pointer.exit.i.i ], [ %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i, %bb.b ]
  %.sroa.0.014.i.i = phi i64 [ %.sroa.0.0.extract.trunc.i.i, %opal_update_counted_pointer.exit.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load volatile ptr, ptr %i.p, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile ptr %i.h, ptr %i.c, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  store volatile i64 %i.r, ptr %.sroa.4.i.i.i, align 8, !tbaa !47
  %i.s = add i64 %.sroa.0.014.i.i, 1
  %.0..0..0..0..0..0..0..0..0..0.3.i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !134
  %.sroa.4.0.insert.ext.i.i.i = zext i64 %i.r to i128
  %.sroa.4.0.insert.shift.i.i.i = shl nuw i128 %.sroa.4.0.insert.ext.i.i.i, 64
  %.sroa.0.0.insert.ext.i.i.i = zext i64 %i.s to i128
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i128 %.sroa.4.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.6.0.insert.ext.i.i = zext i64 %.sroa.6.0..sroa.6.8.15.i.i to i128
  %.sroa.6.0.insert.shift.i.i = shl nuw i128 %.sroa.6.0.insert.ext.i.i, 64
  %.sroa.0.0.insert.ext.i.i = zext i64 %.sroa.0.014.i.i to i128
  %.sroa.0.0.insert.insert.i.i = or disjoint i128 %.sroa.6.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.t = cmpxchg volatile ptr %.0..0..0..0..0..0..0..0..0..0.3.i.i.i, i128 %.sroa.0.0.insert.insert.i.i, i128 %.sroa.0.0.insert.insert.i.i.i acquire monotonic, align 16 ; 2 uses
  %i.u = extractvalue { i128, i1 } %i.t, 1
  br i1 %i.u, label %opal_lifo_pop.exit, label %opal_update_counted_pointer.exit.i.i

opal_update_counted_pointer.exit.i.i:             ; preds = %.lr.ph.i.i
  %i.v = extractvalue { i128, i1 } %i.t, 0        ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i128 %i.v to i64
  %.sroa.6.0.extract.shift.i.i = lshr i128 %i.v, 64
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i128 %.sroa.6.0.extract.shift.i.i to i64
  store i64 %.sroa.6.0.extract.trunc.i.i, ptr %.sroa.6.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i = load volatile i64, ptr %.sroa.6.i.i, align 8, !tbaa !47 ; 2 uses
  %i.w = inttoptr i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i to ptr ; 2 uses
  %i.x = icmp eq ptr %i.m, %i.w
  br i1 %i.x, label %opal_lifo_pop.exit.thread58, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load volatile i64, ptr %i.y, align 8, !tbaa !47
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load volatile ptr, ptr %i.ab, align 8, !tbaa !105
  %i.ad = ptrtoint ptr %i.ac to i64
  store volatile i64 %i.ad, ptr %i.y, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ae, %i.aa
  br i1 %i.af, label %.lr.ph, label %opal_lifo_pop.exit.thread56

opal_lifo_pop.exit.thread56:                      ; preds = %bb.c
  store volatile ptr null, ptr %i.ab, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 1, ptr %i.ag, align 8, !tbaa !106
  br label %._crit_edge

opal_lifo_pop.exit.thread58:                      ; preds = %opal_update_counted_pointer.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %.lr.ph

opal_lifo_pop.exit:                               ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  fence release
  store volatile ptr null, ptr %i.ah, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %opal_lifo_pop.exit.thread58
  store ptr null, ptr %i.e, align 8, !tbaa !136
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %i.ao = load i64, ptr %i.ai, align 16, !tbaa !137
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !138
  %.not = icmp ugt i64 %i.ao, %i.ap
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = load i64, ptr %i.ak, align 16, !tbaa !139
  %i.ar = call i32 @opal_free_list_grow_st(ptr noundef nonnull %0, i64 noundef %i.aq, ptr noundef nonnull %i.e) #10
  %.not6 = icmp eq i32 %i.ar, 0
  br i1 %.not6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = call i32 @opal_progress() #10           ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !136 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.av = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile ptr %i.an, ptr %i.b, align 8, !tbaa !134
  %.0..0..0..0..0..0..0..0.2.i.i.i10 = load volatile ptr, ptr %i.b, align 8, !tbaa !134
  %i.ax = load volatile i64, ptr %.0..0..0..0..0..0..0..0.2.i.i.i10, align 16, !tbaa !47
  fence acquire
  %.0..0..0..0..0..0..0..0.3.i.i.i11 = load volatile ptr, ptr %i.b, align 8, !tbaa !134
  %i.ay = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0..0..0..0.3.i.i.i11, i64 8
  %i.az = load volatile i64, ptr %i.ay, align 8, !tbaa !47
  store volatile i64 %i.az, ptr %.sroa.6.i.i8, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i12 = load volatile i64, ptr %.sroa.6.i.i8, align 8, !tbaa !47 ; 2 uses
  %i.ba = inttoptr i64 %.sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i12 to ptr ; 2 uses
  %i.bb = icmp eq ptr %i.am, %i.ba
  br i1 %i.bb, label %opal_lifo_pop_atomic.exit.i30, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.i, %opal_update_counted_pointer.exit.i.i25
  %i.bc = phi ptr [ %i.bk, %opal_update_counted_pointer.exit.i.i25 ], [ %i.ba, %bb.i ] ; 3 uses
  %.sroa.6.0..sroa.6.8.15.i.i14 = phi i64 [ %.sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i29, %opal_update_counted_pointer.exit.i.i25 ], [ %.sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i12, %bb.i ]
  %.sroa.0.014.i.i15 = phi i64 [ %.sroa.0.0.extract.trunc.i.i26, %opal_update_counted_pointer.exit.i.i25 ], [ %i.ax, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load volatile ptr, ptr %i.bd, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.an, ptr %i.a, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i7)
  %i.bf = ptrtoint ptr %i.be to i64               ; 2 uses
  store volatile i64 %i.bf, ptr %.sroa.4.i.i.i7, align 8, !tbaa !47
  %i.bg = add i64 %.sroa.0.014.i.i15, 1
  %.0..0..0..0..0..0..0..0..0..0.3.i.i.i16 = load volatile ptr, ptr %i.a, align 8, !tbaa !134
  %.sroa.4.0.insert.ext.i.i.i17 = zext i64 %i.bf to i128
  %.sroa.4.0.insert.shift.i.i.i18 = shl nuw i128 %.sroa.4.0.insert.ext.i.i.i17, 64
  %.sroa.0.0.insert.ext.i.i.i19 = zext i64 %i.bg to i128
  %.sroa.0.0.insert.insert.i.i.i20 = or disjoint i128 %.sroa.4.0.insert.shift.i.i.i18, %.sroa.0.0.insert.ext.i.i.i19
  %.sroa.6.0.insert.ext.i.i21 = zext i64 %.sroa.6.0..sroa.6.8.15.i.i14 to i128
  %.sroa.6.0.insert.shift.i.i22 = shl nuw i128 %.sroa.6.0.insert.ext.i.i21, 64
  %.sroa.0.0.insert.ext.i.i23 = zext i64 %.sroa.0.014.i.i15 to i128
  %.sroa.0.0.insert.insert.i.i24 = or disjoint i128 %.sroa.6.0.insert.shift.i.i22, %.sroa.0.0.insert.ext.i.i23
  %i.bh = cmpxchg volatile ptr %.0..0..0..0..0..0..0..0..0..0.3.i.i.i16, i128 %.sroa.0.0.insert.insert.i.i24, i128 %.sroa.0.0.insert.insert.i.i.i20 acquire monotonic, align 16 ; 2 uses
  %i.bi = extractvalue { i128, i1 } %i.bh, 1
  br i1 %i.bi, label %bb.j, label %opal_update_counted_pointer.exit.i.i25

opal_update_counted_pointer.exit.i.i25:           ; preds = %.lr.ph.i.i13
  %i.bj = extractvalue { i128, i1 } %i.bh, 0      ; 2 uses
  %.sroa.0.0.extract.trunc.i.i26 = trunc i128 %i.bj to i64
  %.sroa.6.0.extract.shift.i.i27 = lshr i128 %i.bj, 64
  %.sroa.6.0.extract.trunc.i.i28 = trunc nuw i128 %.sroa.6.0.extract.shift.i.i27 to i64
  store i64 %.sroa.6.0.extract.trunc.i.i28, ptr %.sroa.6.i.i8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i29 = load volatile i64, ptr %.sroa.6.i.i8, align 8, !tbaa !47 ; 2 uses
  %i.bk = inttoptr i64 %.sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.i8.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i29 to ptr ; 2 uses
  %i.bl = icmp eq ptr %i.am, %i.bk
  br i1 %i.bl, label %opal_lifo_pop_atomic.exit.i30, label %.lr.ph.i.i13

bb.j:                                             ; preds = %.lr.ph.i.i13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  fence release
  store volatile ptr null, ptr %i.bm, align 8, !tbaa !105
  br label %opal_lifo_pop_atomic.exit.i30

opal_lifo_pop_atomic.exit.i30:                    ; preds = %opal_update_counted_pointer.exit.i.i25, %bb.j, %bb.i
  %.0.i.i31 = phi ptr [ %i.bc, %bb.j ], [ null, %bb.i ], [ null, %opal_update_counted_pointer.exit.i.i25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i8)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.bn = load volatile i64, ptr %i.al, align 8, !tbaa !47
  %i.bo = inttoptr i64 %i.bn to ptr               ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load volatile ptr, ptr %i.bp, align 8, !tbaa !105
  %i.br = ptrtoint ptr %i.bq to i64
  store volatile i64 %i.br, ptr %i.al, align 8, !tbaa !47
  %i.bs = icmp eq ptr %i.am, %i.bo
  br i1 %i.bs, label %bb.l, label %.thread62

.thread62:                                        ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store volatile ptr null, ptr %i.bt, align 8, !tbaa !105
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i32 1, ptr %i.bu, align 8, !tbaa !106
  br label %._crit_edge

bb.l:                                             ; preds = %bb.k, %opal_lifo_pop_atomic.exit.i30
  %.0.i9 = phi ptr [ %.0.i.i31, %opal_lifo_pop_atomic.exit.i30 ], [ null, %bb.k ] ; 3 uses
  store ptr %.0.i9, ptr %i.e, align 8, !tbaa !136
  %i.bv = icmp eq ptr %.0.i9, null
  br i1 %i.bv, label %bb.d, label %._crit_edge, !llvm.loop !196

._crit_edge:                                      ; preds = %bb.g, %bb.l, %.thread62, %opal_lifo_pop.exit, %opal_lifo_pop.exit.thread56
  %.lcssa36 = phi ptr [ %i.o, %opal_lifo_pop.exit ], [ %i.aa, %opal_lifo_pop.exit.thread56 ], [ %i.bo, %.thread62 ], [ %i.at, %bb.g ], [ %.0.i9, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  ret ptr %.lcssa36
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @opal_free_list_wait(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %.sroa.4.i.i23.i = alloca i64, align 8          ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.sroa.6.i24.i = alloca i64, align 8            ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %.sroa.4.i.i.i = alloca i64, align 8            ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %.sroa.6.i.i = alloca i64, align 8              ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile ptr %i.h, ptr %i.d, align 8, !tbaa !134
  %.0..0..0..0..0..0..0..0.2.i.i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !134
  %i.i = load volatile i64, ptr %.0..0..0..0..0..0..0..0.2.i.i.i, align 16, !tbaa !47
  fence acquire
  %.0..0..0..0..0..0..0..0.3.i.i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0..0..0..0.3.i.i.i, i64 8
  %i.k = load volatile i64, ptr %i.j, align 8, !tbaa !47
  store volatile i64 %i.k, ptr %.sroa.6.i.i, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i = load volatile i64, ptr %.sroa.6.i.i, align 8, !tbaa !47 ; 2 uses
  %i.l = inttoptr i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i to ptr ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %.lr.ph.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %opal_update_counted_pointer.exit.i.i
  %i.o = phi ptr [ %i.w, %opal_update_counted_pointer.exit.i.i ], [ %i.l, %bb.b ] ; 3 uses
  %.sroa.6.0..sroa.6.8.15.i.i = phi i64 [ %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i, %opal_update_counted_pointer.exit.i.i ], [ %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i.i, %bb.b ]
  %.sroa.0.014.i.i = phi i64 [ %.sroa.0.0.extract.trunc.i.i, %opal_update_counted_pointer.exit.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load volatile ptr, ptr %i.p, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile ptr %i.h, ptr %i.c, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  store volatile i64 %i.r, ptr %.sroa.4.i.i.i, align 8, !tbaa !47
  %i.s = add i64 %.sroa.0.014.i.i, 1
  %.0..0..0..0..0..0..0..0..0..0.3.i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !134
  %.sroa.4.0.insert.ext.i.i.i = zext i64 %i.r to i128
  %.sroa.4.0.insert.shift.i.i.i = shl nuw i128 %.sroa.4.0.insert.ext.i.i.i, 64
  %.sroa.0.0.insert.ext.i.i.i = zext i64 %i.s to i128
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i128 %.sroa.4.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %.sroa.6.0.insert.ext.i.i = zext i64 %.sroa.6.0..sroa.6.8.15.i.i to i128
  %.sroa.6.0.insert.shift.i.i = shl nuw i128 %.sroa.6.0.insert.ext.i.i, 64
  %.sroa.0.0.insert.ext.i.i = zext i64 %.sroa.0.014.i.i to i128
  %.sroa.0.0.insert.insert.i.i = or disjoint i128 %.sroa.6.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.t = cmpxchg volatile ptr %.0..0..0..0..0..0..0..0..0..0.3.i.i.i, i128 %.sroa.0.0.insert.insert.i.i, i128 %.sroa.0.0.insert.insert.i.i.i acquire monotonic, align 16 ; 2 uses
  %i.u = extractvalue { i128, i1 } %i.t, 1
  br i1 %i.u, label %opal_lifo_pop_atomic.exit.i, label %opal_update_counted_pointer.exit.i.i

opal_update_counted_pointer.exit.i.i:             ; preds = %.lr.ph.i.i
  %i.v = extractvalue { i128, i1 } %i.t, 0        ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i128 %i.v to i64
  %.sroa.6.0.extract.shift.i.i = lshr i128 %i.v, 64
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i128 %.sroa.6.0.extract.shift.i.i to i64
  store i64 %.sroa.6.0.extract.trunc.i.i, ptr %.sroa.6.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i = load volatile i64, ptr %.sroa.6.i.i, align 8, !tbaa !47 ; 2 uses
  %i.w = inttoptr i64 %.sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.8..i.i to ptr ; 2 uses
  %i.x = icmp eq ptr %i.m, %i.w
  br i1 %i.x, label %.lr.ph.i, label %.lr.ph.i.i

opal_lifo_pop_atomic.exit.i:                      ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  fence release
  store volatile ptr null, ptr %i.y, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %opal_free_list_wait_mt.exit

.lr.ph.i:                                         ; preds = %opal_update_counted_pointer.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr null, ptr %i.e, align 8, !tbaa !136
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 9 uses
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %i.ag = call i32 @pthread_mutex_trylock(ptr noundef nonnull %i.z) #10
  %.not48.i = icmp eq i32 %i.ag, 0
  br i1 %.not48.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.aa, align 16, !tbaa !137
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !138
  %.not18.i = icmp ugt i64 %i.ah, %i.ai
  br i1 %.not18.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %i.ac, align 16, !tbaa !139
  %i.ak = call i32 @opal_free_list_grow_st(ptr noundef nonnull %0, i64 noundef %i.aj, ptr noundef nonnull %i.e) #10
  %.not19.i = icmp eq i32 %i.ak, 0
  br i1 %.not19.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !107
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ad, align 8, !tbaa !107
  %i.an = load volatile i32, ptr %i.ae, align 8, !tbaa !108
  %i.ao = add nsw i32 %i.an, 1
  store volatile i32 %i.ao, ptr %i.ae, align 8, !tbaa !108
  %i.ap = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = load volatile i32, ptr %i.af, align 4, !tbaa !109
  %.not.i.i = icmp eq i32 %i.ar, 0                ; 2 uses
  br i1 %i.aq, label %bb.g, label %.preheader13.i.i

.preheader13.i.i:                                 ; preds = %bb.f
  br i1 %.not.i.i, label %.lr.ph.i21.i, label %.loopexit.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.as = load volatile i32, ptr %i.af, align 4, !tbaa !109
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.lr.ph15.i.i, label %.loopexit.i.i

bb.h:                                             ; preds = %bb.g
  %i.au = load volatile i32, ptr %i.ae, align 8, !tbaa !108
  %i.av = add nsw i32 %i.au, -1
  store volatile i32 %i.av, ptr %i.ae, align 8, !tbaa !108
  %i.aw = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.z) #10 ; 0 uses
  %i.ax = call i32 @opal_progress() #10           ; 0 uses
  %i.ay = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.z) #10 ; 0 uses
  br label %opal_condition_wait.exit.i

.lr.ph15.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph15.i.i
  %i.az = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.z) #10 ; 0 uses
  %i.ba = call i32 @opal_progress() #10           ; 0 uses
  %i.bb = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.z) #10 ; 0 uses
  %i.bc = load volatile i32, ptr %i.af, align 4, !tbaa !109
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph15.i.i, label %.loopexit.i.i, !llvm.loop !197

.lr.ph.i21.i:                                     ; preds = %.preheader13.i.i, %.lr.ph.i21.i
  %i.be = call i32 @opal_progress() #10           ; 0 uses
  %i.bf = load volatile i32, ptr %i.af, align 4, !tbaa !109
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i21.i, label %.loopexit.i.i, !llvm.loop !198

.loopexit.i.i:                                    ; preds = %.lr.ph.i21.i, %.lr.ph15.i.i, %.preheader.i.i, %.preheader13.i.i
  %i.bh = load volatile i32, ptr %i.af, align 4, !tbaa !109
  %i.bi = add nsw i32 %i.bh, -1
  store volatile i32 %i.bi, ptr %i.af, align 4, !tbaa !109
  %i.bj = load volatile i32, ptr %i.ae, align 8, !tbaa !108
  %i.bk = add nsw i32 %i.bj, -1
  store volatile i32 %i.bk, ptr %i.ae, align 8, !tbaa !108
  br label %opal_condition_wait.exit.i

opal_condition_wait.exit.i:                       ; preds = %.loopexit.i.i, %bb.h
  %i.bl = load i64, ptr %i.ad, align 8, !tbaa !107
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %i.ad, align 8, !tbaa !107
  br label %opal_condition_signal.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bn = load i64, ptr %i.ad, align 8, !tbaa !107
  switch i64 %i.bn, label %bb.l [
    i64 0, label %opal_condition_signal.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.bo = load volatile i32, ptr %i.ae, align 8, !tbaa !108
  %.not.i22.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i22.i, label %opal_condition_signal.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = load volatile i32, ptr %i.af, align 4, !tbaa !109
  %i.bq = add nsw i32 %i.bp, 1
  store volatile i32 %i.bq, ptr %i.af, align 4, !tbaa !109
  br label %opal_condition_signal.exit.i

bb.l:                                             ; preds = %bb.i
  %i.br = load volatile i32, ptr %i.ae, align 8, !tbaa !108
  store volatile i32 %i.br, ptr %i.af, align 4, !tbaa !109
  br label %opal_condition_signal.exit.i

bb.m:                                             ; preds = %bb.c
  %i.bs = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.z) #10 ; 0 uses
  br label %opal_condition_signal.exit.i

opal_condition_signal.exit.i:                     ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %opal_condition_wait.exit.i
  %i.bt = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.z) #10 ; 0 uses
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !136 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.n, label %opal_free_list_wait_mt.exit

bb.n:                                             ; preds = %opal_condition_signal.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i24.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile ptr %i.h, ptr %i.b, align 8, !tbaa !134
  %.0..0..0..0..0..0..0..0.2.i.i25.i = load volatile ptr, ptr %i.b, align 8, !tbaa !134
  %i.bw = load volatile i64, ptr %.0..0..0..0..0..0..0..0.2.i.i25.i, align 16, !tbaa !47
  fence acquire
  %.0..0..0..0..0..0..0..0.3.i.i26.i = load volatile ptr, ptr %i.b, align 8, !tbaa !134
  %i.bx = getelementptr inbounds nuw i8, ptr %.0..0..0..0..0..0..0..0.3.i.i26.i, i64 8
  %i.by = load volatile i64, ptr %i.bx, align 8, !tbaa !47
  store volatile i64 %i.by, ptr %.sroa.6.i24.i, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i27.i = load volatile i64, ptr %.sroa.6.i24.i, align 8, !tbaa !47 ; 2 uses
  %i.bz = inttoptr i64 %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i27.i to ptr ; 2 uses
  %i.ca = icmp eq ptr %i.m, %i.bz
  br i1 %i.ca, label %.loopexit.i, label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %bb.n, %opal_update_counted_pointer.exit.i40.i
  %i.cb = phi ptr [ %i.cj, %opal_update_counted_pointer.exit.i40.i ], [ %i.bz, %bb.n ] ; 3 uses
  %.sroa.6.0..sroa.6.8.15.i29.i = phi i64 [ %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8..i44.i, %opal_update_counted_pointer.exit.i40.i ], [ %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8.13.i27.i, %bb.n ]
  %.sroa.0.014.i30.i = phi i64 [ %.sroa.0.0.extract.trunc.i41.i, %opal_update_counted_pointer.exit.i40.i ], [ %i.bw, %bb.n ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load volatile ptr, ptr %i.cc, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.h, ptr %i.a, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i23.i)
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  store volatile i64 %i.ce, ptr %.sroa.4.i.i23.i, align 8, !tbaa !47
  %i.cf = add i64 %.sroa.0.014.i30.i, 1
  %.0..0..0..0..0..0..0..0..0..0.3.i.i31.i = load volatile ptr, ptr %i.a, align 8, !tbaa !134
  %.sroa.4.0.insert.ext.i.i32.i = zext i64 %i.ce to i128
  %.sroa.4.0.insert.shift.i.i33.i = shl nuw i128 %.sroa.4.0.insert.ext.i.i32.i, 64
  %.sroa.0.0.insert.ext.i.i34.i = zext i64 %i.cf to i128
  %.sroa.0.0.insert.insert.i.i35.i = or disjoint i128 %.sroa.4.0.insert.shift.i.i33.i, %.sroa.0.0.insert.ext.i.i34.i
  %.sroa.6.0.insert.ext.i36.i = zext i64 %.sroa.6.0..sroa.6.8.15.i29.i to i128
  %.sroa.6.0.insert.shift.i37.i = shl nuw i128 %.sroa.6.0.insert.ext.i36.i, 64
  %.sroa.0.0.insert.ext.i38.i = zext i64 %.sroa.0.014.i30.i to i128
  %.sroa.0.0.insert.insert.i39.i = or disjoint i128 %.sroa.6.0.insert.shift.i37.i, %.sroa.0.0.insert.ext.i38.i
  %i.cg = cmpxchg volatile ptr %.0..0..0..0..0..0..0..0..0..0.3.i.i31.i, i128 %.sroa.0.0.insert.insert.i39.i, i128 %.sroa.0.0.insert.insert.i.i35.i acquire monotonic, align 16 ; 2 uses
  %i.ch = extractvalue { i128, i1 } %i.cg, 1
  br i1 %i.ch, label %.thread73.i, label %opal_update_counted_pointer.exit.i40.i

opal_update_counted_pointer.exit.i40.i:           ; preds = %.lr.ph.i28.i
  %i.ci = extractvalue { i128, i1 } %i.cg, 0      ; 2 uses
  %.sroa.0.0.extract.trunc.i41.i = trunc i128 %i.ci to i64
  %.sroa.6.0.extract.shift.i42.i = lshr i128 %i.ci, 64
  %.sroa.6.0.extract.trunc.i43.i = trunc nuw i128 %.sroa.6.0.extract.shift.i42.i to i64
  store i64 %.sroa.6.0.extract.trunc.i43.i, ptr %.sroa.6.i24.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i23.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8..i44.i = load volatile i64, ptr %.sroa.6.i24.i, align 8, !tbaa !47 ; 2 uses
  %i.cj = inttoptr i64 %.sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.i.0..sroa.6.i24.0..sroa.6.i24.0..sroa.6.0..sroa.6.0..sroa.6.8..i44.i to ptr ; 2 uses
  %i.ck = icmp eq ptr %i.m, %i.cj
  br i1 %i.ck, label %.loopexit.i, label %.lr.ph.i28.i

.thread73.i:                                      ; preds = %.lr.ph.i28.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i23.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  fence release
  store volatile ptr null, ptr %i.cl, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i24.i)
  br label %opal_free_list_wait_mt.exit

.loopexit.i:                                      ; preds = %opal_update_counted_pointer.exit.i40.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i24.i)
  store ptr null, ptr %i.e, align 8, !tbaa !136
  br label %bb.c, !llvm.loop !199

opal_free_list_wait_mt.exit:                      ; preds = %opal_condition_signal.exit.i, %opal_lifo_pop_atomic.exit.i, %.thread73.i
  %.lcssa53.i = phi ptr [ %i.o, %opal_lifo_pop_atomic.exit.i ], [ %i.cb, %.thread73.i ], [ %i.bu, %opal_condition_signal.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.cm = tail call fastcc ptr @opal_free_list_wait_st(ptr noundef %0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %opal_free_list_wait_mt.exit
  %.0 = phi ptr [ %.lcssa53.i, %opal_free_list_wait_mt.exit ], [ %i.cm, %bb.o ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 1, 0) i32 @recv_cb(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 15 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !104
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 68 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.l
  %i.n = atomicrmw volatile add ptr %i.m, i32 1 monotonic, align 4 ; 2 uses
  %i.o = add i32 %i.n, 1                          ; 5 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !119  ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 60
  %i.r = load i32, ptr %i.q, align 4, !tbaa !89   ; 2 uses
  %i.s = icmp slt i32 %i.o, %i.r
  br i1 %i.s, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.j, align 4, !tbaa !117
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !99
  %.not = icmp eq ptr %i.w, inttoptr (i64 1 to ptr)
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !101
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.aa = load i32, ptr %i.z, align 16, !tbaa !91
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !100
  %i.ae = sext i32 %i.o to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !88
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, %i.ae
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %i.ai
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.al = tail call fastcc ptr @opal_free_list_wait(ptr noundef nonnull %i.ak) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 136
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !98
  %i.aq = sub i64 0, %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0155 = phi ptr [ %i.aj, %bb.e ], [ %i.ar, %bb.f ] ; 2 uses
  %.0154 = phi ptr [ null, %bb.e ], [ %i.al, %bb.f ]
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29
  %i.at = tail call fastcc ptr @opal_free_list_wait(ptr noundef %i.as) ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  store ptr %.0155, ptr %i.au, align 8, !tbaa !115
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store i32 %i.o, ptr %i.av, align 8, !tbaa !116
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !118
  %i.az = load <2 x i32>, ptr %i.j, align 4, !tbaa !34
  store <2 x i32> %i.az, ptr %i.aw, align 4, !tbaa !34
  %i.ba = load ptr, ptr %i.f, align 8, !tbaa !119 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  store ptr %.0154, ptr %i.bc, align 8, !tbaa !120
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !85 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 60
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !89
  %i.bh = add i32 %i.bg, -2
  %i.bi = icmp eq i32 %i.n, %i.bh
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bk = load i64, ptr %i.bj, align 16, !tbaa !84
  %i.bl = zext i32 %i.o to i64
  %i.bm = mul i64 %i.be, %i.bl
  %i.bn = sub i64 %i.bk, %i.bm
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0153.in = phi i64 [ %i.bn, %bb.h ], [ %i.be, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !122
  %sext = shl i64 %.0153.in, 32
  %i.bp = ashr exact i64 %sext, 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.br = load ptr, ptr %i.bq, align 16, !tbaa !86
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 76
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !103
  %i.bu = sub nsw i32 %i.bt, %i.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !87
  %i.bx = call i32 %i.bo(ptr noundef %.0155, i64 noundef %i.bp, ptr noundef %i.br, i32 noundef %i.ay, i32 noundef %i.bu, ptr noundef %i.bw, ptr noundef nonnull %i.b) #10 ; 2 uses
  %.not168 = icmp eq i32 %i.bx, 0
  br i1 %.not168, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !71  ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 144
  store ptr %i.at, ptr %i.bz, align 8, !tbaa !123
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 136 ; 2 uses
  store ptr @recv_cb, ptr %i.ca, align 8, !tbaa !124
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !125
  %i.cd = icmp eq ptr %i.cc, inttoptr (i64 1 to ptr)
  br i1 %i.cd, label %bb.k, label %ompi_request_set_callback.exit

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.ca, align 8, !tbaa !124
  %i.ce = call i32 @recv_cb(ptr noundef nonnull %i.by) #10, !callees !126, !inline_history !3 ; 0 uses
  br label %ompi_request_set_callback.exit

ompi_request_set_callback.exit:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !119 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 60
  %.pre222 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !89
  br label %bb.l

bb.l:                                             ; preds = %ompi_request_set_callback.exit, %bb.a
  %i.cf = phi i32 [ %.pre222, %ompi_request_set_callback.exit ], [ %i.r, %bb.a ]
  %i.cg = phi ptr [ %.pre, %ompi_request_set_callback.exit ], [ %i.p, %bb.a ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !85 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 7 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !116 ; 4 uses
  %i.cl = add nsw i32 %i.cf, -1
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.co = load i64, ptr %i.cn, align 16, !tbaa !84
  %i.cp = zext i32 %i.ck to i64
  %i.cq = mul i64 %i.ci, %i.cp
  %i.cr = sub i64 %i.co, %i.cq
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0150.in = phi i64 [ %i.cr, %bb.m ], [ %i.ci, %bb.l ] ; 3 uses
  %i.cs = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.o, label %bb.p, !prof !33

bb.o:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !95
  %i.cw = sext i32 %i.ck to i64
  %i.cx = getelementptr inbounds [64 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.cy) #10 ; 0 uses
  %.pre223 = load ptr, ptr %i.f, align 8, !tbaa !119
  %.pre224 = load i32, ptr %i.cj, align 8, !tbaa !116
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.da = phi i32 [ %.pre224, %bb.o ], [ %i.ck, %bb.n ]
  %i.db = phi ptr [ %.pre223, %bb.o ], [ %i.cg, %bb.n ] ; 10 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 128
  %i.dd = load ptr, ptr %i.dc, align 16, !tbaa !111
  %i.de = sext i32 %i.da to i64                   ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !110 ; 3 uses
end_hunk_0
begin_hunk_1_@recv_cb:bb.a
  %i.dz = mul nsw i64 %i.dy, %i.de
  %i.ea = getelementptr inbounds i8, ptr %i.dv, i64 %i.dz
  %sext171 = shl i64 %.0150.in, 32
  %i.eb = ashr exact i64 %sext171, 32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.ed = load ptr, ptr %i.ec, align 16, !tbaa !86
  call fastcc void @ompi_op_reduce(ptr noundef %i.dt, ptr noundef %i.ea, ptr noundef %storemerge, i64 noundef %i.eb, ptr noundef %i.ed)
  br label %bb.ad

bb.u:                                             ; preds = %bb.p
  %i.ee = getelementptr inbounds nuw i8, ptr %i.db, i64 112
  %i.ef = load ptr, ptr %i.ee, align 16, !tbaa !96 ; 2 uses
  br i1 %i.dk, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !115
  %sext170 = shl i64 %.0150.in, 32
  %i.ei = ashr exact i64 %sext170, 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.ek = load ptr, ptr %i.ej, align 16, !tbaa !86
  call fastcc void @ompi_op_reduce(ptr noundef %i.ef, ptr noundef nonnull %i.dg, ptr noundef %i.eh, i64 noundef %i.ei, ptr noundef %i.ek)
  %i.el = load ptr, ptr %i.f, align 8, !tbaa !119 ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 128
  %i.en = load ptr, ptr %i.em, align 16, !tbaa !111
  %i.eo = load i32, ptr %i.cj, align 8, !tbaa !116
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !110
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 72
  %i.et = load i32, ptr %i.es, align 8, !tbaa !102
  %i.eu = sext i32 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %i.er, i64 %i.ev ; 5 uses
  %i.ex = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 184 ; 4 uses
  %i.fa = load volatile i64, ptr %i.ez, align 8, !tbaa !47 ; 3 uses
  br i1 %i.ey, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %.08.i.i.i = inttoptr i64 %i.fa to ptr          ; 2 uses
  store volatile ptr %.08.i.i.i, ptr %i.fb, align 8, !tbaa !105
  fence release
  %i.fc = ptrtoint ptr %i.ew to i64               ; 2 uses
  %i.fd = cmpxchg volatile ptr %i.ez, i64 %i.fa, i64 %i.fc acquire monotonic, align 8 ; 2 uses
  %i.fe = extractvalue { i64, i1 } %i.fd, 1
  br i1 %i.fe, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_atomic_compare_exchange_strong_ptr.exit.i.i.i: ; preds = %bb.w, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i
  %i.ff = phi { i64, i1 } [ %i.fh, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ], [ %i.fd, %bb.w ]
  %i.fg = extractvalue { i64, i1 } %i.ff, 0       ; 2 uses
  %.0.i.i.i = inttoptr i64 %i.fg to ptr           ; 2 uses
  store volatile ptr %.0.i.i.i, ptr %i.fb, align 8, !tbaa !105
  fence release
  %i.fh = cmpxchg volatile ptr %i.ez, i64 %i.fg, i64 %i.fc acquire monotonic, align 8 ; 2 uses
  %i.fi = extractvalue { i64, i1 } %i.fh, 1
  br i1 %i.fi, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_lifo_push_atomic.exit.i.i:                   ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i, %bb.w
  %.0.lcssa.i.i.i = phi ptr [ %.08.i.i.i, %bb.w ], [ %.0.i.i.i, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.el, i64 192
  %i.fk = icmp eq ptr %i.fj, %.0.lcssa.i.i.i
  br i1 %i.fk, label %bb.x, label %opal_free_list_return.exit

bb.x:                                             ; preds = %opal_lifo_push_atomic.exit.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.el, i64 264
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !107
  %.not.i.i = icmp eq i64 %i.fm, 0
  br i1 %.not.i.i, label %opal_free_list_return.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %i.el, i64 408
  %i.fo = load volatile i32, ptr %i.fn, align 8, !tbaa !108
  %.not.i.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

bb.z:                                             ; preds = %bb.v
  %i.fp = inttoptr i64 %i.fa to ptr
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  store volatile ptr %i.fp, ptr %i.fq, align 8, !tbaa !105
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store i32 0, ptr %i.fr, align 8, !tbaa !106
  %i.fs = ptrtoint ptr %i.ew to i64
  store volatile i64 %i.fs, ptr %i.ez, align 8, !tbaa !47
  %i.ft = load volatile ptr, ptr %i.fq, align 8, !tbaa !105
  %i.fu = getelementptr inbounds nuw i8, ptr %i.el, i64 192
  %i.fv = icmp eq ptr %i.fu, %i.ft
  br i1 %i.fv, label %bb.aa, label %opal_free_list_return.exit

bb.aa:                                            ; preds = %bb.z
  %i.fw = getelementptr inbounds nuw i8, ptr %i.el, i64 264
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !107
  %.not.i4.i = icmp eq i64 %i.fx, 0
  br i1 %.not.i4.i, label %opal_free_list_return.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fy = getelementptr inbounds nuw i8, ptr %i.el, i64 408
  %i.fz = load volatile i32, ptr %i.fy, align 8, !tbaa !108
  %.not.i.i5.i = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i5.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

opal_free_list_return_mt.exit.sink.split.i:       ; preds = %bb.ab, %bb.y
  %i.ga = getelementptr inbounds nuw i8, ptr %i.el, i64 412 ; 2 uses
  %i.gb = load volatile i32, ptr %i.ga, align 4, !tbaa !109
  %i.gc = add nsw i32 %i.gb, 1
  store volatile i32 %i.gc, ptr %i.ga, align 4, !tbaa !109
  br label %opal_free_list_return.exit

opal_free_list_return.exit:                       ; preds = %opal_lifo_push_atomic.exit.i.i, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %opal_free_list_return_mt.exit.sink.split.i
  %i.gd = load ptr, ptr %i.eg, align 8, !tbaa !115
  %i.ge = load ptr, ptr %i.f, align 8, !tbaa !119
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 128
  %i.gg = load ptr, ptr %i.gf, align 16, !tbaa !111
  %i.gh = load i32, ptr %i.cj, align 8, !tbaa !116
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gi
  store ptr %i.gd, ptr %i.gj, align 8, !tbaa !110
  br label %bb.ad

bb.ac:                                            ; preds = %bb.u
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.gl = getelementptr inbounds nuw i8, ptr %i.db, i64 136
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !98
  %i.gn = sub i64 0, %i.gm
  %i.go = getelementptr inbounds i8, ptr %i.gk, i64 %i.gn
  %sext169 = shl i64 %.0150.in, 32
  %i.gp = ashr exact i64 %sext169, 32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.gr = load ptr, ptr %i.gq, align 16, !tbaa !86
  call fastcc void @ompi_op_reduce(ptr noundef %i.ef, ptr noundef nonnull %i.go, ptr noundef nonnull %i.dg, i64 noundef %i.gp, ptr noundef %i.gr)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.t, %bb.ac, %opal_free_list_return.exit
  %.1 = phi i1 [ %i.dk, %bb.t ], [ true, %opal_free_list_return.exit ], [ true, %bb.ac ]
  %i.gs = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.gt = trunc nuw i8 %i.gs to i1
  %.pre226 = load ptr, ptr %i.f, align 8, !tbaa !119 ; 2 uses
  br i1 %i.gt, label %bb.ae, label %bb.af, !prof !33

bb.ae:                                            ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %.pre226, i64 104
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !95
  %i.gw = load i32, ptr %i.cj, align 8, !tbaa !116
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [64 x i8], ptr %i.gv, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.gz) #10 ; 0 uses
  %.pre225 = load ptr, ptr %i.f, align 8, !tbaa !119
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hb = phi ptr [ %.pre225, %bb.ae ], [ %.pre226, %bb.ad ] ; 8 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 64
  %i.hd = load i32, ptr %i.hc, align 16, !tbaa !91
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 120
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !97
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !34
  %.not172 = icmp eq i32 %i.hd, %i.hg
  br i1 %.not172, label %add_to_recv_list.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hh = load i32, ptr %i.cj, align 8, !tbaa !116 ; 2 uses
  %i.hi = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %bb.ah, label %bb.ai, !prof !33

bb.ah:                                            ; preds = %bb.ag
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 528
  %i.hl = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.hk) #10 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hb, i64 592 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hb, i64 608
  %i.ho = load volatile ptr, ptr %i.hn, align 16, !tbaa !140 ; 2 uses
  %.not17.i = icmp eq ptr %i.ho, %i.hm
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ai, %bb.ak
  %.018.i = phi ptr [ %i.hy, %bb.ak ], [ %i.ho, %bb.ai ] ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.018.i, i64 40
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !128
  %i.hr = icmp eq i32 %i.hq, %i.hh
  br i1 %i.hr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.018.i, i64 44 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !129
  %i.hu = add nsw i32 %i.ht, 1
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !129
  %i.hv = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %.sink.split.i, label %add_to_recv_list.exit, !prof !33

bb.ak:                                            ; preds = %.lr.ph.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  %i.hy = load volatile ptr, ptr %i.hx, align 8, !tbaa !105 ; 2 uses
  %.not.i = icmp eq ptr %i.hy, %i.hm
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !200

._crit_edge.i:                                    ; preds = %bb.ak, %bb.ai
  %i.hz = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_item_t_class, i64 56), align 8, !tbaa !59
  %i.ia = call noalias ptr @malloc(i64 noundef %i.hz) #11 ; 10 uses
  %i.ib = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !34
  %i.ic = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_item_t_class, i64 32), align 8, !tbaa !60
  %.not.i.i179 = icmp eq i32 %i.ib, %i.ic
  br i1 %.not.i.i179, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i
  call void @opal_class_initialize(ptr noundef nonnull @ompi_coll_adapt_item_t_class) #10
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i
  %.not9.i.i = icmp eq ptr %i.ia, null
  br i1 %.not9.i.i, label %opal_obj_new.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr @ompi_coll_adapt_item_t_class, ptr %i.ia, align 8, !tbaa !37
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store volatile i32 1, ptr %i.id, align 8, !tbaa !61
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_coll_adapt_item_t_class, i64 40), align 8, !tbaa !62 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not6.i.i.i, label %opal_obj_new.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.an, %.lr.ph.i.i.i
  %i.ig = phi ptr [ %i.ii, %.lr.ph.i.i.i ], [ %i.if, %bb.an ]
  %.07.i.i.i = phi ptr [ %i.ih, %.lr.ph.i.i.i ], [ %i.ie, %bb.an ]
  call void %i.ig(ptr noundef nonnull %i.ia) #10, !inline_history !201
  %i.ih = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i180, label %opal_obj_new.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

opal_obj_new.exit.i:                              ; preds = %.lr.ph.i.i.i, %bb.an, %bb.am
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  store i32 %i.hh, ptr %i.ij, align 8, !tbaa !128
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 44
  store i32 1, ptr %i.ik, align 4, !tbaa !129
  %i.il = getelementptr inbounds nuw i8, ptr %i.hb, i64 616 ; 3 uses
  %i.im = load volatile ptr, ptr %i.il, align 8, !tbaa !130
  %i.in = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  store volatile ptr %i.im, ptr %i.in, align 8, !tbaa !130
  %i.io = load volatile ptr, ptr %i.il, align 8, !tbaa !130
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store volatile ptr %i.ia, ptr %i.ip, align 8, !tbaa !105
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store volatile ptr %i.hm, ptr %i.iq, align 8, !tbaa !105
  store volatile ptr %i.ia, ptr %i.il, align 8, !tbaa !130
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hb, i64 632 ; 2 uses
  %i.is = load volatile i64, ptr %i.ir, align 8, !tbaa !131
  %i.it = add i64 %i.is, 1
  store volatile i64 %i.it, ptr %i.ir, align 8, !tbaa !131
  %i.iu = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %.sink.split.i, label %add_to_recv_list.exit, !prof !33

.sink.split.i:                                    ; preds = %opal_obj_new.exit.i, %bb.aj
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hb, i64 528
  %i.ix = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.iw) #10 ; 0 uses
  br label %add_to_recv_list.exit

add_to_recv_list.exit:                            ; preds = %.sink.split.i, %opal_obj_new.exit.i, %bb.aj, %bb.af
  %i.iy = load ptr, ptr %i.f, align 8, !tbaa !119 ; 8 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  %i.ja = load i32, ptr %i.iz, align 16, !tbaa !91
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 120
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !97 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !34
  %.not173 = icmp eq i32 %i.ja, %i.jd
  br i1 %.not173, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %add_to_recv_list.exit
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 80
  %i.jf = load i32, ptr %i.je, align 16, !tbaa !94
  %i.jg = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 360), align 8, !tbaa !23
  %i.jh = icmp slt i32 %i.jf, %i.jg
  br i1 %i.jh, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !34
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iy, i64 592 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iy, i64 608 ; 2 uses
  %i.jm = load volatile ptr, ptr %i.jl, align 16, !tbaa !141
  %i.jn = icmp eq ptr %i.jm, %i.jk
  br i1 %i.jn, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jo = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.ar, label %bb.as, !prof !33

bb.ar:                                            ; preds = %bb.aq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iy, i64 528
  %i.jr = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.jq) #10 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.js = load volatile ptr, ptr %i.jl, align 16, !tbaa !140 ; 2 uses
  %.not16.i = icmp eq ptr %i.js, %i.jk
  br i1 %.not16.i, label %.loopexit.i, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %bb.as, %bb.au
  %.017.i = phi ptr [ %i.jx, %bb.au ], [ %i.js, %bb.as ] ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.017.i, i64 44
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !129
  %i.jv = icmp eq i32 %i.ju, %i.jj
  %i.jw = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %i.jx = load volatile ptr, ptr %i.jw, align 8, !tbaa !105 ; 3 uses
  br i1 %i.jv, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i181
  %i.jy = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %.017.i, i64 24 ; 3 uses
  %i.ka = load volatile ptr, ptr %i.jz, align 8, !tbaa !130
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  store volatile ptr %i.jx, ptr %i.kb, align 8, !tbaa !105
  %i.kc = load volatile ptr, ptr %i.jz, align 8, !tbaa !130
  %i.kd = load volatile ptr, ptr %i.jy, align 8, !tbaa !105
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  store volatile ptr %i.kc, ptr %i.ke, align 8, !tbaa !130
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iy, i64 632 ; 2 uses
  %i.kg = load volatile i64, ptr %i.kf, align 8, !tbaa !131
  %i.kh = add i64 %i.kg, -1
  store volatile i64 %i.kh, ptr %i.kf, align 8, !tbaa !131
  %i.ki = load volatile ptr, ptr %i.jz, align 8, !tbaa !130 ; 0 uses
  br label %.loopexit.i

bb.au:                                            ; preds = %.lr.ph.i181
  %.not.i182 = icmp eq ptr %i.jx, %i.jk
  br i1 %.not.i182, label %.loopexit.i, label %.lr.ph.i181, !llvm.loop !4

.loopexit.i:                                      ; preds = %bb.au, %bb.at, %bb.as
  %.013.i = phi ptr [ %.017.i, %bb.at ], [ null, %bb.as ], [ null, %bb.au ] ; 6 uses
  %i.kj = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.av, label %get_next_ready_item.exit, !prof !33

bb.av:                                            ; preds = %.loopexit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.iy, i64 528
  %i.km = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.kl) #10 ; 0 uses
  br label %get_next_ready_item.exit

get_next_ready_item.exit:                         ; preds = %.loopexit.i, %bb.av
  %.not174 = icmp eq ptr %.013.i, null
  br i1 %.not174, label %.thread, label %bb.aw

bb.aw:                                            ; preds = %get_next_ready_item.exit
  %i.kn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29
  %i.ko = call fastcc ptr @opal_free_list_wait(ptr noundef %i.kn) ; 5 uses
  %i.kp = load ptr, ptr %i.f, align 8, !tbaa !119 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 128
  %i.kr = load ptr, ptr %i.kq, align 16, !tbaa !111
  %i.ks = load i32, ptr %i.cj, align 8, !tbaa !116
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.kt
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !110
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 56 ; 2 uses
  store ptr %i.kv, ptr %i.kw, align 8, !tbaa !115
  %i.kx = getelementptr inbounds nuw i8, ptr %.013.i, i64 40 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !128
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ko, i64 64 ; 2 uses
  store i32 %i.ky, ptr %i.kz, align 8, !tbaa !116
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 120
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !97
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !34
  %i.le = getelementptr inbounds nuw i8, ptr %i.ko, i64 72 ; 2 uses
  store i32 %i.ld, ptr %i.le, align 8, !tbaa !118
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ko, i64 80 ; 2 uses
  store ptr %i.kp, ptr %i.lf, align 8, !tbaa !119
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kp, i64 80
  %i.lh = atomicrmw volatile add ptr %i.lg, i32 1 monotonic, align 4 ; 0 uses
  %i.li = load ptr, ptr %i.lf, align 8, !tbaa !119 ; 6 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !85 ; 2 uses
  %i.ll = load i32, ptr %i.kx, align 8, !tbaa !128 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 60
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !89
  %i.lo = add nsw i32 %i.ln, -1
  %i.lp = icmp eq i32 %i.ll, %i.lo
  br i1 %i.lp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.lq = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lr = load i64, ptr %i.lq, align 16, !tbaa !84
  %i.ls = zext i32 %i.ll to i64
  %i.lt = mul i64 %i.lk, %i.ls
  %i.lu = sub i64 %i.lr, %i.lt
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.in = phi i64 [ %i.lu, %bb.ax ], [ %i.lk, %bb.aw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.lv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !132
  %i.lw = load ptr, ptr %i.kw, align 8, !tbaa !115
  %sext175 = shl i64 %.0.in, 32
  %i.lx = ashr exact i64 %sext175, 32
  %i.ly = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lz = load ptr, ptr %i.ly, align 16, !tbaa !86
  %i.ma = load i32, ptr %i.le, align 8, !tbaa !118
  %i.mb = getelementptr inbounds nuw i8, ptr %i.li, i64 76
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !103
  %i.md = load i32, ptr %i.kz, align 8, !tbaa !116
  %i.me = sub nsw i32 %i.mc, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !87
  %i.mh = call i32 %i.lv(ptr noundef %i.lw, i64 noundef %i.lx, ptr noundef %i.lz, i32 noundef %i.ma, i32 noundef %i.me, i32 noundef 4, ptr noundef %i.mg, ptr noundef nonnull %i.c) #10 ; 2 uses
  %.not176 = icmp eq i32 %i.mh, 0
  br i1 %.not176, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.mi = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 4 uses
  %i.mj = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.ba, label %bb.bb, !prof !33

bb.ba:                                            ; preds = %bb.az
  %i.ml = atomicrmw volatile add ptr %i.mi, i32 -1 monotonic, align 4
  %i.mm = add i32 %i.ml, -1
  br label %opal_thread_add_fetch_32.exit

bb.bb:                                            ; preds = %bb.az
  %i.mn = load volatile i32, ptr %i.mi, align 8, !tbaa !34
  %i.mo = add nsw i32 %i.mn, -1
  store volatile i32 %i.mo, ptr %i.mi, align 8, !tbaa !34
  %i.mp = load volatile i32, ptr %i.mi, align 8, !tbaa !34
  br label %opal_thread_add_fetch_32.exit
end_hunk_1
begin_hunk_2_@send_cb:bb.a
  br i1 %i.dc, label %bb.o, label %bb.p, !prof !33

bb.o:                                             ; preds = %bb.n
  %i.dd = atomicrmw volatile add ptr %i.da, i32 -1 monotonic, align 4
  %i.de = add i32 %i.dd, -1
  br label %opal_thread_add_fetch_32.exit

bb.p:                                             ; preds = %bb.n
  %i.df = load volatile i32, ptr %i.da, align 8, !tbaa !34
  %i.dg = add nsw i32 %i.df, -1
  store volatile i32 %i.dg, ptr %i.da, align 8, !tbaa !34
  %i.dh = load volatile i32, ptr %i.da, align 8, !tbaa !34
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.o, %bb.p
  %.0.i = phi i32 [ %i.de, %bb.o ], [ %i.dh, %bb.p ]
  %i.di = icmp eq i32 %.0.i, 0
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.dj = load ptr, ptr %.013.i, align 8, !tbaa !37
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !41 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !42 ; 2 uses
  %.not6.i = icmp eq ptr %i.dm, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.q, %.lr.ph.i54
  %i.dn = phi ptr [ %i.dp, %.lr.ph.i54 ], [ %i.dm, %bb.q ]
  %.07.i = phi ptr [ %i.do, %.lr.ph.i54 ], [ %i.dl, %bb.q ]
  call void %i.dn(ptr noundef nonnull %.013.i) #10, !inline_history !0
  %i.do = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !42 ; 2 uses
  %.not.i55 = icmp eq ptr %i.dp, null
  br i1 %.not.i55, label %opal_obj_run_destructors.exit, label %.lr.ph.i54, !llvm.loop !1

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i54, %bb.q
  call void @free(ptr noundef nonnull %.013.i) #10
  br label %bb.r

bb.r:                                             ; preds = %opal_obj_run_destructors.exit, %opal_thread_add_fetch_32.exit
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !71  ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 144
  store ptr %i.ar, ptr %i.dr, align 8, !tbaa !123
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 136 ; 2 uses
  store ptr @send_cb, ptr %i.ds, align 8, !tbaa !124
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !125
  %i.dv = icmp eq ptr %i.du, inttoptr (i64 1 to ptr)
  br i1 %i.dv, label %bb.s, label %ompi_request_set_callback.exit

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %i.ds, align 8, !tbaa !124
  %i.dw = call i32 @send_cb(ptr noundef nonnull %i.dq) #10, !callees !126, !inline_history !3 ; 0 uses
  br label %ompi_request_set_callback.exit

ompi_request_set_callback.exit:                   ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %get_next_ready_item.exit.thread

get_next_ready_item.exit.thread:                  ; preds = %bb.a, %ompi_request_set_callback.exit, %get_next_ready_item.exit
  %i.dx = load ptr, ptr %i.e, align 8, !tbaa !119
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 88
  %i.dz = atomicrmw volatile add ptr %i.dy, i32 1 monotonic, align 4
  %i.ea = add i32 %i.dz, 1                        ; 2 uses
  %i.eb = load ptr, ptr %i.e, align 8, !tbaa !119 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 60
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !89
  %i.ee = icmp eq i32 %i.ea, %i.ed
  br i1 %i.ee, label %bb.t, label %bb.v

bb.t:                                             ; preds = %get_next_ready_item.exit.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 84
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !92
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 120
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !97
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !34
  %i.el = mul nsw i32 %i.ek, %i.ea
  %i.em = icmp eq i32 %i.eg, %i.el
  br i1 %i.em, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call fastcc void @ireduce_request_fini(ptr noundef nonnull %i.d)
  br label %opal_free_list_return.exit

bb.v:                                             ; preds = %bb.t, %get_next_ready_item.exit.thread
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29 ; 8 uses
  %i.eo = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.ep = trunc nuw i8 %i.eo to i1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 4 uses
  %i.er = load volatile i64, ptr %i.eq, align 8, !tbaa !47 ; 3 uses
  br i1 %i.ep, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.08.i.i.i = inttoptr i64 %i.er to ptr          ; 2 uses
  store volatile ptr %.08.i.i.i, ptr %i.es, align 8, !tbaa !105
  fence release
  %i.et = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.eu = cmpxchg volatile ptr %i.eq, i64 %i.er, i64 %i.et acquire monotonic, align 8 ; 2 uses
  %i.ev = extractvalue { i64, i1 } %i.eu, 1
  br i1 %i.ev, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_atomic_compare_exchange_strong_ptr.exit.i.i.i: ; preds = %bb.w, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i
  %i.ew = phi { i64, i1 } [ %i.ey, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ], [ %i.eu, %bb.w ]
  %i.ex = extractvalue { i64, i1 } %i.ew, 0       ; 2 uses
  %.0.i.i.i = inttoptr i64 %i.ex to ptr           ; 2 uses
  store volatile ptr %.0.i.i.i, ptr %i.es, align 8, !tbaa !105
  fence release
  %i.ey = cmpxchg volatile ptr %i.eq, i64 %i.ex, i64 %i.et acquire monotonic, align 8 ; 2 uses
  %i.ez = extractvalue { i64, i1 } %i.ey, 1
  br i1 %i.ez, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_lifo_push_atomic.exit.i.i:                   ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i, %bb.w
  %.0.lcssa.i.i.i = phi ptr [ %.08.i.i.i, %bb.w ], [ %.0.i.i.i, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.fb = icmp eq ptr %i.fa, %.0.lcssa.i.i.i
  br i1 %i.fb, label %bb.x, label %opal_free_list_return.exit

bb.x:                                             ; preds = %opal_lifo_push_atomic.exit.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 104
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !107
  %.not.i.i = icmp eq i64 %i.fd, 0
  br i1 %.not.i.i, label %opal_free_list_return.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fe = getelementptr inbounds nuw i8, ptr %i.en, i64 248
  %i.ff = load volatile i32, ptr %i.fe, align 8, !tbaa !108
  %.not.i.i.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i.i.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

bb.z:                                             ; preds = %bb.v
  %i.fg = inttoptr i64 %i.er to ptr
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store volatile ptr %i.fg, ptr %i.fh, align 8, !tbaa !105
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 0, ptr %i.fi, align 8, !tbaa !106
  %i.fj = ptrtoint ptr %i.d to i64
  store volatile i64 %i.fj, ptr %i.eq, align 8, !tbaa !47
  %i.fk = load volatile ptr, ptr %i.fh, align 8, !tbaa !105
  %i.fl = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.fm = icmp eq ptr %i.fl, %i.fk
  br i1 %i.fm, label %bb.aa, label %opal_free_list_return.exit

bb.aa:                                            ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw i8, ptr %i.en, i64 104
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !107
  %.not.i4.i = icmp eq i64 %i.fo, 0
  br i1 %.not.i4.i, label %opal_free_list_return.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fp = getelementptr inbounds nuw i8, ptr %i.en, i64 248
  %i.fq = load volatile i32, ptr %i.fp, align 8, !tbaa !108
  %.not.i.i5.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i5.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

opal_free_list_return_mt.exit.sink.split.i:       ; preds = %bb.ab, %bb.y
  %i.fr = getelementptr inbounds nuw i8, ptr %i.en, i64 252 ; 2 uses
  %i.fs = load volatile i32, ptr %i.fr, align 4, !tbaa !109
  %i.ft = add nsw i32 %i.fs, 1
  store volatile i32 %i.ft, ptr %i.fr, align 4, !tbaa !109
  br label %opal_free_list_return.exit

opal_free_list_return.exit:                       ; preds = %opal_free_list_return_mt.exit.sink.split.i, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %opal_lifo_push_atomic.exit.i.i, %bb.u
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 120
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !142
  %i.fx = call i32 %i.fw(ptr noundef nonnull %i.a) #10 ; 0 uses
  br label %bb.ac

.critedge:                                        ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge, %opal_free_list_return.exit
  %.1 = phi i32 [ 1, %opal_free_list_return.exit ], [ %i.cz, %.critedge ]
  ret i32 %.1
}

declare i32 @opal_free_list_grow_st(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opal_progress() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ompi_op_reduce(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  store ptr %4, ptr %i.a, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.e = trunc nsw i64 %3 to i32                  ; 2 uses
  store i32 %i.e, ptr %i.d, align 4, !tbaa !34
  %i.f = icmp ugt i64 %3, 2147483647
  br i1 %i.f, label %bb.b, label %bb.d, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !58
  %i.k = sub nsw i64 %i.j, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.045 = phi i64 [ 0, %bb.b ], [ %i.s, %bb.c ]   ; 4 uses
  %i.l = add i64 %.045, 2147483647
  %i.m = icmp ugt i64 %i.l, %3
  %i.n = sub nuw i64 %3, %.045
  %sext = shl i64 %i.n, 32
  %i.o = ashr exact i64 %sext, 32
  %.039 = select i1 %i.m, i64 %i.o, i64 2147483647 ; 2 uses
  %i.p = mul i64 %.045, %i.k                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %i.p
  tail call fastcc void @ompi_op_reduce(ptr noundef %0, ptr noundef %i.q, ptr noundef %i.r, i64 noundef %.039, ptr noundef nonnull %4)
  %i.s = add i64 %.039, %.045                     ; 2 uses
  %i.t = icmp ult i64 %i.s, %3
  br i1 %i.t, label %bb.c, label %.loopexit, !llvm.loop !202

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.v = load i32, ptr %i.u, align 4, !tbaa !46   ; 3 uses
  %i.w = and i32 %i.v, 1
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %4, i64 16
  %.val = load i16, ptr %i.x, align 8, !tbaa !205
  %i.y = and i16 %.val, 512
  %.not43 = icmp eq i16 %i.y, 0
  br i1 %.not43, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call ptr @ompi_datatype_get_single_predefined_type_from_args(ptr noundef nonnull %4) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.pn44 = phi ptr [ %i.z, %bb.f ], [ %4, %bb.e ]
  %.pn.in.in = getelementptr inbounds nuw i8, ptr %.pn44, i64 200
  %.pn.in = load i32, ptr %.pn.in.in, align 8, !tbaa !206
  %.pn = sext i32 %.pn.in to i64
  %.038.in = getelementptr inbounds [4 x i8], ptr @ompi_op_ddt_map, i64 %.pn
  %.038 = load i32, ptr %.038.in, align 4, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ab = sext i32 %.038 to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  call void %i.ad(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef %i.ag) #10
  br label %.loopexit

bb.h:                                             ; preds = %bb.d
  %i.ah = and i32 %i.v, 2
  %.not41 = icmp eq i32 %i.ah, 0
  br i1 %.not41, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 204
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !207
  store i32 %i.aj, ptr %i.b, align 4, !tbaa !34
  store i32 %i.e, ptr %i.c, align 4, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  call void %i.al(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #10
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.am = and i32 %i.v, 8
  %.not42 = icmp eq i32 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47 ; 2 uses
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47
  call void %i.ao(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef %i.aq, ptr noundef %i.as, ptr noundef %i.au) #10
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  call void %i.ao(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #10
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.l, %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ireduce_request_fini(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !90  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !111 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.h = load i32, ptr %i.g, align 16, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !101
  %.not26 = icmp eq i32 %i.h, %i.j
  br i1 %.not26, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.l = load i32, ptr %i.k, align 4, !tbaa !89
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %opal_free_list_return_st.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %opal_free_list_return_st.exit ], [ 0, %.preheader ] ; 2 uses
  %i.n = phi ptr [ %i.an, %opal_free_list_return_st.exit ], [ %i.b, %.preheader ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load ptr, ptr %i.o, align 16, !tbaa !111
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !110
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !102
  %i.u = sext i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 184 ; 2 uses
  %i.y = load volatile i64, ptr %i.x, align 8, !tbaa !47
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store volatile ptr %i.z, ptr %i.aa, align 8, !tbaa !105
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 0, ptr %i.ab, align 8, !tbaa !106
  %i.ac = ptrtoint ptr %i.w to i64
  store volatile i64 %i.ac, ptr %i.x, align 8, !tbaa !47
  %i.ad = load volatile ptr, ptr %i.aa, align 8, !tbaa !105
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  %i.af = icmp eq ptr %i.ae, %i.ad
  br i1 %i.af, label %bb.c, label %opal_free_list_return_st.exit

bb.c:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !107
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %opal_free_list_return_st.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 408
  %i.aj = load volatile i32, ptr %i.ai, align 8, !tbaa !108
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %opal_free_list_return_st.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 412 ; 2 uses
  %i.al = load volatile i32, ptr %i.ak, align 4, !tbaa !109
  %i.am = add nsw i32 %i.al, 1
  store volatile i32 %i.am, ptr %i.ak, align 4, !tbaa !109
  br label %opal_free_list_return_st.exit

opal_free_list_return_st.exit:                    ; preds = %.lr.ph, %bb.c, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !119 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 60
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !89
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !208

.loopexit.loopexit:                               ; preds = %opal_free_list_return_st.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %.pre = load ptr, ptr %.phi.trans.insert, align 16, !tbaa !111
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.b
  %i.as = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.f, %.preheader ], [ %i.f, %bb.b ]
  tail call void @free(ptr noundef %i.as) #10
  %.pre44 = load ptr, ptr %i.a, align 8, !tbaa !119
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.a
  %i.at = phi ptr [ %.pre44, %.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 60
  %i.av = load i32, ptr %i.au, align 4, !tbaa !89
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph38, label %._crit_edge

._crit_edge:                                      ; preds = %opal_obj_run_destructors.exit, %bb.f
  %.lcssa = phi ptr [ %i.at, %bb.f ], [ %i.bq, %opal_obj_run_destructors.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa, i64 104
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !95
  tail call void @free(ptr noundef %i.ay) #10
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !119 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !34
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h

.lr.ph38:                                         ; preds = %bb.f, %opal_obj_run_destructors.exit
  %i.bf = phi ptr [ %i.bq, %opal_obj_run_destructors.exit ], [ %i.at, %bb.f ] ; 2 uses
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %opal_obj_run_destructors.exit ], [ 0, %bb.f ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.bh, i64 %indvars.iv41 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !41 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !42 ; 2 uses
  %.not6.i = icmp eq ptr %i.bm, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph38, %.lr.ph.i
  %i.bn = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.bm, %.lr.ph38 ]
  %.07.i = phi ptr [ %i.bo, %.lr.ph.i ], [ %i.bl, %.lr.ph38 ]
  tail call void %i.bn(ptr noundef nonnull %i.bi) #10, !inline_history !0
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !42 ; 2 uses
  %.not.i27 = icmp eq ptr %i.bp, null
  br i1 %.not.i27, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre45 = load ptr, ptr %i.a, align 8, !tbaa !119
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %.lr.ph38
  %i.bq = phi ptr [ %.pre45, %opal_obj_run_destructors.exit.loopexit ], [ %i.bf, %.lr.ph38 ] ; 3 uses
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 60
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !89
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next42, %i.bt
  br i1 %i.bu, label %.lr.ph38, label %._crit_edge, !llvm.loop !209

bb.g:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !104
  tail call void @free(ptr noundef %i.bw) #10
  %.pre46 = load ptr, ptr %i.a, align 8, !tbaa !119
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.bx = phi ptr [ %i.az, %._crit_edge ], [ %.pre46, %bb.g ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32 ; 2 uses
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.i, label %bb.j, !prof !33

bb.i:                                             ; preds = %bb.h
  %i.cb = atomicrmw volatile add ptr %i.by, i32 -1 monotonic, align 4
  %i.cc = add i32 %i.cb, -1
  br label %opal_thread_add_fetch_32.exit

bb.j:                                             ; preds = %bb.h
  %i.cd = load volatile i32, ptr %i.by, align 4, !tbaa !34
  %i.ce = add nsw i32 %i.cd, -1
  store volatile i32 %i.ce, ptr %i.by, align 4, !tbaa !34
  %i.cf = load volatile i32, ptr %i.by, align 4, !tbaa !34
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.cc, %bb.i ], [ %i.cf, %bb.j ]
  %i.cg = icmp eq i32 %.0.i, 0
  br i1 %i.cg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !119 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !37
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !41 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !42 ; 2 uses
  %.not6.i28 = icmp eq ptr %i.cl, null
  br i1 %.not6.i28, label %opal_obj_run_destructors.exit32, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.k, %.lr.ph.i29
  %i.cm = phi ptr [ %i.co, %.lr.ph.i29 ], [ %i.cl, %bb.k ]
  %.07.i30 = phi ptr [ %i.cn, %.lr.ph.i29 ], [ %i.ck, %bb.k ]
  tail call void %i.cm(ptr noundef nonnull %i.ch) #10, !inline_history !0
  %i.cn = getelementptr inbounds nuw i8, ptr %.07.i30, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !42 ; 2 uses
  %.not.i31 = icmp eq ptr %i.co, null
  br i1 %.not.i31, label %opal_obj_run_destructors.exit32.loopexit, label %.lr.ph.i29, !llvm.loop !1

opal_obj_run_destructors.exit32.loopexit:         ; preds = %.lr.ph.i29
  %.pre47 = load ptr, ptr %i.a, align 8, !tbaa !119
  br label %opal_obj_run_destructors.exit32

opal_obj_run_destructors.exit32:                  ; preds = %opal_obj_run_destructors.exit32.loopexit, %bb.k
  %i.cp = phi ptr [ %.pre47, %opal_obj_run_destructors.exit32.loopexit ], [ %i.ch, %bb.k ]
  tail call void @free(ptr noundef %i.cp) #10
  store ptr null, ptr %i.a, align 8, !tbaa !119
  %.pre48 = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31
  br label %bb.l

bb.l:                                             ; preds = %opal_obj_run_destructors.exit32, %opal_thread_add_fetch_32.exit
  %i.cq = phi i8 [ %.pre48, %opal_obj_run_destructors.exit32 ], [ %i.bz, %opal_thread_add_fetch_32.exit ]
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_adapt_component, i64 384), align 8, !tbaa !29 ; 8 uses
  %i.cs = trunc nuw i8 %i.cq to i1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 4 uses
  %i.cu = load volatile i64, ptr %i.ct, align 8, !tbaa !47 ; 3 uses
  br i1 %i.cs, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.08.i.i.i = inttoptr i64 %i.cu to ptr          ; 2 uses
  store volatile ptr %.08.i.i.i, ptr %i.cv, align 8, !tbaa !105
  fence release
  %i.cw = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.cx = cmpxchg volatile ptr %i.ct, i64 %i.cu, i64 %i.cw acquire monotonic, align 8 ; 2 uses
  %i.cy = extractvalue { i64, i1 } %i.cx, 1
  br i1 %i.cy, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_atomic_compare_exchange_strong_ptr.exit.i.i.i: ; preds = %bb.m, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i
  %i.cz = phi { i64, i1 } [ %i.db, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ], [ %i.cx, %bb.m ]
  %i.da = extractvalue { i64, i1 } %i.cz, 0       ; 2 uses
  %.0.i.i.i = inttoptr i64 %i.da to ptr           ; 2 uses
  store volatile ptr %.0.i.i.i, ptr %i.cv, align 8, !tbaa !105
  fence release
  %i.db = cmpxchg volatile ptr %i.ct, i64 %i.da, i64 %i.cw acquire monotonic, align 8 ; 2 uses
  %i.dc = extractvalue { i64, i1 } %i.db, 1
  br i1 %i.dc, label %opal_lifo_push_atomic.exit.i.i, label %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i

opal_lifo_push_atomic.exit.i.i:                   ; preds = %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i, %bb.m
  %.0.lcssa.i.i.i = phi ptr [ %.08.i.i.i, %bb.m ], [ %.0.i.i.i, %opal_atomic_compare_exchange_strong_ptr.exit.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.de = icmp eq ptr %i.dd, %.0.lcssa.i.i.i
  br i1 %i.de, label %bb.n, label %opal_free_list_return.exit

bb.n:                                             ; preds = %opal_lifo_push_atomic.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !107
  %.not.i.i33 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i33, label %opal_free_list_return.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 248
  %i.di = load volatile i32, ptr %i.dh, align 8, !tbaa !108
  %.not.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.i.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

bb.p:                                             ; preds = %bb.l
  %i.dj = inttoptr i64 %i.cu to ptr
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store volatile ptr %i.dj, ptr %i.dk, align 8, !tbaa !105
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.dl, align 8, !tbaa !106
  %i.dm = ptrtoint ptr %0 to i64
  store volatile i64 %i.dm, ptr %i.ct, align 8, !tbaa !47
  %i.dn = load volatile ptr, ptr %i.dk, align 8, !tbaa !105
  %i.do = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.dp = icmp eq ptr %i.do, %i.dn
  br i1 %i.dp, label %bb.q, label %opal_free_list_return.exit

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !107
  %.not.i4.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i4.i, label %opal_free_list_return.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 248
  %i.dt = load volatile i32, ptr %i.ds, align 8, !tbaa !108
  %.not.i.i5.i = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i5.i, label %opal_free_list_return.exit, label %opal_free_list_return_mt.exit.sink.split.i

opal_free_list_return_mt.exit.sink.split.i:       ; preds = %bb.r, %bb.o
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 252 ; 2 uses
  %i.dv = load volatile i32, ptr %i.du, align 4, !tbaa !109
  %i.dw = add nsw i32 %i.dv, 1
  store volatile i32 %i.dw, ptr %i.du, align 4, !tbaa !109
  br label %opal_free_list_return.exit

opal_free_list_return.exit:                       ; preds = %opal_lifo_push_atomic.exit.i.i, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %opal_free_list_return_mt.exit.sink.split.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !124 ; 2 uses
  %.not.i34 = icmp eq ptr %i.dy, null
  br i1 %.not.i34, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %opal_free_list_return.exit
  store ptr null, ptr %i.dx, align 8, !tbaa !124
  %i.dz = tail call i32 %i.dy(ptr noundef nonnull %i.d) #10, !inline_history !210
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.critedge.i, label %ompi_request_complete.exit

.critedge.i:                                      ; preds = %bb.s, %opal_free_list_return.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  %i.ec = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %i.ed = trunc nuw i8 %i.ec to i1                ; 2 uses
  br i1 %i.ed, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge.i
  %i.ee = atomicrmw volatile xchg ptr %i.eb, i64 1 monotonic, align 8
  br label %opal_thread_swap_ptr.exit.i

bb.u:                                             ; preds = %.critedge.i
  %i.ef = load i64, ptr %i.eb, align 8, !tbaa !63
  store i64 1, ptr %i.eb, align 8, !tbaa !63
  br label %opal_thread_swap_ptr.exit.i

opal_thread_swap_ptr.exit.i:                      ; preds = %bb.u, %bb.t
  %.0.i.i = phi i64 [ %i.ee, %bb.t ], [ %i.ef, %bb.u ] ; 2 uses
  %.not13.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not13.i, label %ompi_request_complete.exit, label %bb.v

bb.v:                                             ; preds = %opal_thread_swap_ptr.exit.i
  %i.eg = inttoptr i64 %.0.i.i to ptr             ; 9 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !211 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.w, label %bb.z, !prof !212

bb.w:                                             ; preds = %bb.v
  br i1 %i.ed, label %bb.x, label %bb.y, !prof !33

bb.x:                                             ; preds = %bb.w
  %i.ek = atomicrmw volatile add ptr %i.eg, i32 -1 monotonic, align 4
  %i.el = add i32 %i.ek, -1
  br label %opal_thread_add_fetch_32.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.em = load volatile i32, ptr %i.eg, align 4, !tbaa !34
  %i.en = add nsw i32 %i.em, -1
  store volatile i32 %i.en, ptr %i.eg, align 4, !tbaa !34
  %i.eo = load volatile i32, ptr %i.eg, align 4, !tbaa !34
  br label %opal_thread_add_fetch_32.exit.i.i

opal_thread_add_fetch_32.exit.i.i:                ; preds = %bb.y, %bb.x
  %.0.i.i.i35 = phi i32 [ %i.el, %bb.x ], [ %i.eo, %bb.y ]
  %i.ep = icmp eq i32 %.0.i.i.i35, 0
  %i.eq = load i8, ptr @opal_uses_threads, align 1, !range !31
  %i.er = trunc nuw i8 %i.eq to i1
  %or.cond.i.i = select i1 %i.ep, i1 %i.er, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %ompi_request_complete.exit

bb.z:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i32 %i.ei, ptr %i.es, align 4, !tbaa !215
  fence release
  %i.et = atomicrmw volatile xchg ptr %i.eg, i32 0 monotonic, align 4 ; 0 uses
  %.old.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !30, !range !31, !noundef !32
  %.old1.i.i = trunc nuw i8 %.old.i.i to i1
  br i1 %.old1.i.i, label %bb.aa, label %ompi_request_complete.exit

bb.aa:                                            ; preds = %bb.z, %opal_thread_add_fetch_32.exit.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 56 ; 2 uses
  %i.ev = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.eu) #10 ; 0 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ex = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.ew) #10 ; 0 uses
  %i.ey = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.eu) #10 ; 0 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eg, i64 112
  store volatile i8 0, ptr %i.ez, align 8, !tbaa !216
  br label %ompi_request_complete.exit

ompi_request_complete.exit:                       ; preds = %bb.s, %opal_thread_swap_ptr.exit.i, %opal_thread_add_fetch_32.exit.i.i, %bb.z, %bb.aa
  ret void
}

declare ptr @ompi_datatype_get_single_predefined_type_from_args(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{!1, !43}
!2 = distinct !{!2, !43}
!3 = distinct !{null}
!4 = distinct !{!4, !43}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"mca_base_component_2_1_0_t", !10, i64 0, !10, i64 4, !10, i64 8, !9, i64 12, !10, i64 28, !10, i64 32, !10, i64 36, !9, i64 40, !10, i64 72, !10, i64 76, !10, i64 80, !9, i64 84, !10, i64 148, !10, i64 152, !10, i64 156, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !10, i64 192, !9, i64 196}
!15 = !{!"mca_base_component_data_2_0_0_t", !10, i64 0, !9, i64 4}
!16 = !{!"mca_coll_base_component_2_4_0_t", !14, i64 0, !15, i64 224, !13, i64 264, !13, i64 272}
!17 = !{!"long", !9, i64 0}
!18 = !{!"_Bool", !9, i64 0}
!19 = !{!"p1 _ZTS16opal_free_list_t", !13, i64 0}
!20 = !{!"mca_coll_adapt_component_t", !16, i64 0, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !17, i64 312, !10, i64 320, !10, i64 324, !18, i64 328, !19, i64 336, !10, i64 344, !17, i64 352, !10, i64 360, !10, i64 364, !10, i64 368, !10, i64 372, !10, i64 376, !18, i64 380, !19, i64 384}
!21 = !{!20, !10, i64 344}
!22 = !{!20, !17, i64 352}
!23 = !{!20, !10, i64 360}
!24 = !{!20, !10, i64 364}
!25 = !{!20, !10, i64 368}
!26 = !{!20, !10, i64 372}
!27 = !{!20, !10, i64 376}
!28 = !{!20, !18, i64 380}
!29 = !{!20, !19, i64 384}
!30 = !{!18, !18, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = !{!10, !10, i64 0}
!35 = !{!"p1 _ZTS12opal_class_t", !13, i64 0}
!36 = !{!"opal_object_t", !35, i64 0, !10, i64 8}
!37 = !{!36, !35, i64 0}
!38 = !{!"p1 omnipotent char", !13, i64 0}
!39 = !{!"any p2 pointer", !13, i64 0}
!40 = !{!"opal_class_t", !38, i64 0, !35, i64 8, !13, i64 16, !13, i64 24, !10, i64 32, !10, i64 36, !39, i64 40, !39, i64 48, !17, i64 56}
!41 = !{!40, !39, i64 48}
!42 = !{!13, !13, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"ompi_op_base_op_3buff_fns_1_0_0_t", !9, i64 0, !9, i64 344}
!45 = !{!"ompi_op_t", !36, i64 0, !9, i64 16, !10, i64 80, !10, i64 84, !10, i64 88, !9, i64 96, !44, i64 784}
!46 = !{!45, !10, i64 84}
!47 = !{!9, !9, i64 0}
!48 = !{!"opal_mutex_t", !36, i64 0, !9, i64 16, !10, i64 56}
!49 = !{!"p1 int", !13, i64 0}
!50 = !{!"p1 _ZTS19ompi_communicator_t", !13, i64 0}
!51 = !{!"p1 _ZTS17opal_hash_table_t", !13, i64 0}
!52 = !{!"short", !9, i64 0}
!53 = !{!"p1 _ZTS12dt_elem_desc", !13, i64 0}
!54 = !{!"dt_type_desc_t", !17, i64 0, !17, i64 8, !53, i64 16}
!55 = !{!"p1 long", !13, i64 0}
!56 = !{!"opal_datatype_t", !36, i64 0, !52, i64 16, !52, i64 18, !10, i64 20, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !10, i64 72, !10, i64 76, !9, i64 80, !54, i64 144, !54, i64 168, !55, i64 192}
!57 = !{!56, !17, i64 48}
!58 = !{!56, !17, i64 56}
!59 = !{!40, !17, i64 56}
!60 = !{!40, !10, i64 32}
!61 = !{!36, !10, i64 8}
!62 = !{!40, !39, i64 40}
!63 = !{!17, !17, i64 0}
!64 = !{!"p1 _ZTS16opal_list_item_t", !13, i64 0}
!65 = !{!"opal_list_item_t", !36, i64 0, !64, i64 16, !64, i64 24, !10, i64 32}
!66 = !{!"p1 _ZTS30mca_rcache_base_registration_t", !13, i64 0}
!67 = !{!"opal_free_list_item_t", !65, i64 0, !66, i64 40, !13, i64 48}
!68 = !{!"ompi_status_public_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !17, i64 16}
!69 = !{!"ompi_request_t", !67, i64 0, !10, i64 56, !68, i64 64, !13, i64 88, !10, i64 96, !18, i64 100, !10, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !9, i64 152}
!70 = !{!"p1 _ZTS14ompi_request_t", !13, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"p1 _ZTS15ompi_datatype_t", !13, i64 0}
!73 = !{!"p1 _ZTS12opal_mutex_t", !13, i64 0}
!74 = !{!"p1 _ZTS9ompi_op_t", !13, i64 0}
!75 = !{!"p1 _ZTS16ompi_coll_tree_t", !13, i64 0}
!76 = !{!"p2 omnipotent char", !39, i64 0}
!77 = !{!"opal_lifo_t", !36, i64 0, !9, i64 16, !65, i64 32}
!78 = !{!"p1 _ZTS23mca_mpool_base_module_t", !13, i64 0}
!79 = !{!"p1 _ZTS24mca_rcache_base_module_t", !13, i64 0}
!80 = !{!"opal_condition_t", !36, i64 0, !10, i64 16, !10, i64 20}
!81 = !{!"opal_list_t", !36, i64 0, !65, i64 16, !17, i64 56}
!82 = !{!"opal_free_list_t", !77, i64 0, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !35, i64 144, !78, i64 152, !79, i64 160, !48, i64 168, !80, i64 232, !81, i64 256, !10, i64 320, !13, i64 328, !13, i64 336}
!83 = !{!"ompi_coll_adapt_constant_reduce_context_s", !36, i64 0, !17, i64 16, !17, i64 24, !72, i64 32, !50, i64 40, !17, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !49, i64 96, !73, i64 104, !74, i64 112, !75, i64 120, !76, i64 128, !17, i64 136, !38, i64 144, !38, i64 152, !82, i64 160, !48, i64 512, !81, i64 576, !70, i64 640}
!84 = !{!83, !17, i64 16}
!85 = !{!83, !17, i64 24}
!86 = !{!83, !72, i64 32}
!87 = !{!83, !50, i64 40}
!88 = !{!83, !10, i64 56}
!89 = !{!83, !10, i64 60}
!90 = !{!83, !70, i64 640}
!91 = !{!83, !10, i64 64}
!92 = !{!83, !10, i64 84}
!93 = !{!83, !10, i64 88}
!94 = !{!83, !10, i64 80}
!95 = !{!83, !73, i64 104}
!96 = !{!83, !74, i64 112}
!97 = !{!83, !75, i64 120}
!98 = !{!83, !17, i64 136}
!99 = !{!83, !38, i64 144}
!100 = !{!83, !38, i64 152}
!101 = !{!83, !10, i64 68}
!102 = !{!83, !10, i64 72}
!103 = !{!83, !10, i64 76}
!104 = !{!83, !49, i64 96}
!105 = !{!65, !64, i64 16}
!106 = !{!65, !10, i64 32}
!107 = !{!82, !17, i64 104}
!108 = !{!80, !10, i64 16}
!109 = !{!80, !10, i64 20}
!110 = !{!38, !38, i64 0}
!111 = !{!83, !76, i64 128}
!112 = !{!"p1 _ZTS41ompi_coll_adapt_constant_reduce_context_s", !13, i64 0}
!113 = !{!"p1 _ZTS23ompi_coll_adapt_inbuf_s", !13, i64 0}
!114 = !{!"ompi_coll_adapt_reduce_context_s", !67, i64 0, !38, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !112, i64 80, !113, i64 88}
!115 = !{!114, !38, i64 56}
!116 = !{!114, !10, i64 64}
!117 = !{!114, !10, i64 68}
!118 = !{!114, !10, i64 72}
!119 = !{!114, !112, i64 80}
!120 = !{!114, !113, i64 88}
!121 = !{!"mca_pml_base_module_2_1_0_t", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !10, i64 168, !10, i64 172, !10, i64 176, !13, i64 184}
!122 = !{!121, !13, i64 64}
!123 = !{!69, !13, i64 144}
!124 = !{!69, !13, i64 136}
!125 = !{!69, !13, i64 88}
!126 = !{ptr @recv_cb, ptr @send_cb}
!127 = !{!"ompi_coll_adapt_item_s", !65, i64 0, !10, i64 40, !10, i64 44}
!128 = !{!127, !10, i64 40}
!129 = !{!127, !10, i64 44}
!130 = !{!65, !64, i64 24}
!131 = !{!81, !17, i64 56}
!132 = !{!121, !13, i64 88}
!133 = !{!"p1 _ZTS22opal_counted_pointer_t", !13, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!"p1 _ZTS21opal_free_list_item_t", !13, i64 0}
!136 = !{!135, !135, i64 0}
!137 = !{!82, !17, i64 80}
!138 = !{!82, !17, i64 88}
!139 = !{!82, !17, i64 96}
!140 = !{!83, !64, i64 608}
!141 = !{!81, !64, i64 32}
!142 = !{!69, !13, i64 120}
!143 = distinct !{null, null, null}
!144 = distinct !{null, null}
!145 = distinct !{null, null}
!146 = distinct !{!146, !43}
!147 = distinct !{!147, !43}
!148 = distinct !{!148, !193}
!149 = distinct !{!149, !43}
!150 = distinct !{null}
!151 = distinct !{!151, !43}
!152 = distinct !{!152, !43, !194}
!153 = distinct !{!153, !43, !195}
!154 = distinct !{!154, !43}
!155 = distinct !{!155, !43}
!156 = !{!"p1 _ZTS28mca_coll_base_module_2_4_0_t", !13, i64 0}
!157 = !{!"mca_coll_adapt_collective_fallback_s", !9, i64 0, !156, i64 8}
!158 = !{!157, !156, i64 8}
!159 = !{!"p1 _ZTS19opal_hash_element_t", !13, i64 0}
!160 = !{!"p1 _ZTS24opal_hash_type_methods_t", !13, i64 0}
!161 = !{!"opal_hash_table_t", !36, i64 0, !159, i64 16, !17, i64 24, !17, i64 32, !17, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !160, i64 64}
!162 = !{!"p1 _ZTS11opal_info_t", !13, i64 0}
!163 = !{!"opal_infosubscriber_t", !36, i64 0, !161, i64 16, !162, i64 88}
!164 = !{!"ompi_comm_extended_cid_t", !17, i64 0, !9, i64 8}
!165 = !{!"ompi_comm_extended_cid_block_t", !164, i64 0, !17, i64 16, !9, i64 24, !9, i64 25}
!166 = !{!"p1 _ZTS12ompi_group_t", !13, i64 0}
!167 = !{!"p1 _ZTS22mca_topo_base_module_t", !13, i64 0}
!168 = !{!"p2 _ZTS20ompi_peruse_handle_t", !39, i64 0}
!169 = !{!"p1 _ZTS17ompi_errhandler_t", !13, i64 0}
!170 = !{!"p1 _ZTS14mca_pml_comm_t", !13, i64 0}
!171 = !{!"p1 _ZTS14mca_mtl_comm_t", !13, i64 0}
!172 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !13, i64 0}
!173 = !{!"p1 _ZTS15ompi_instance_t", !13, i64 0}
!174 = !{!"p1 _ZTS13opal_object_t", !13, i64 0}
!175 = !{!"ompi_communicator_t", !163, i64 0, !48, i64 96, !38, i64 160, !164, i64 168, !165, i64 184, !10, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !10, i64 232, !49, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !166, i64 264, !166, i64 272, !50, i64 280, !51, i64 288, !167, i64 296, !168, i64 304, !169, i64 312, !10, i64 320, !170, i64 328, !171, i64 336, !172, i64 344, !173, i64 352, !174, i64 360, !10, i64 368, !10, i64 372, !18, i64 376, !18, i64 377, !18, i64 378}
!176 = !{!175, !10, i64 220}
!177 = !{!56, !17, i64 24}
!178 = !{!56, !17, i64 32}
!179 = !{!56, !17, i64 40}
!180 = !{!20, !10, i64 296}
!181 = !{!20, !10, i64 292}
!182 = !{!20, !10, i64 300}
!183 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!184 = !{!"", !9, i64 0, !9, i64 24}
!185 = !{!"ompi_coll_base_nbc_request_t", !69, i64 0, !9, i64 160, !13, i64 168, !184, i64 176}
!186 = !{!185, !13, i64 88}
!187 = !{!185, !10, i64 96}
!188 = !{!185, !18, i64 100}
!189 = !{!185, !10, i64 56}
!190 = !{!185, !13, i64 120}
!191 = !{!175, !10, i64 248}
!192 = !{!83, !17, i64 48}
!193 = !{!"llvm.loop.unroll.disable"}
!194 = !{!"llvm.loop.peeled.count", i32 1}
!195 = !{!"llvm.loop.unswitch.partial.disable"}
!196 = distinct !{!196, !43}
!197 = distinct !{!197, !43}
!198 = distinct !{!198, !43}
!199 = distinct !{!199, !43}
!200 = distinct !{!200, !43}
!201 = distinct !{null, null, null}
!202 = distinct !{!202, !43}
!203 = !{!72, !72, i64 0}
!204 = !{!"ompi_datatype_t", !56, i64 0, !10, i64 200, !10, i64 204, !51, i64 208, !13, i64 216, !17, i64 224, !17, i64 232, !9, i64 240}
!205 = !{!204, !52, i64 16}
!206 = !{!204, !10, i64 200}
!207 = !{!204, !10, i64 204}
!208 = distinct !{!208, !43}
!209 = distinct !{!209, !43}
!210 = distinct !{null}
!211 = !{!69, !10, i64 72}
!212 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!213 = !{!"p1 _ZTS16ompi_wait_sync_t", !13, i64 0}
!214 = !{!"ompi_wait_sync_t", !10, i64 0, !10, i64 4, !9, i64 8, !9, i64 56, !213, i64 96, !213, i64 104, !18, i64 112}
!215 = !{!214, !10, i64 4}
!216 = !{!214, !18, i64 112}
end_hunk_2
