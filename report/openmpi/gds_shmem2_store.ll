Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/gds_shmem2_store?download=true
inline.NumInlined: 384
inline.NumDeleted: 88
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pmix_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct.pmix_preg_module_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmix_bfrops_globals_t = type { %struct.pmix_list_t, i8, i8, i64, i64, i8 }
%struct.pmix_list_t = type { %struct.pmix_object_t, %struct.pmix_list_item_t, i64 }
%struct.pmix_object_t = type { %union.pthread_mutex_t, ptr, i32, %struct.pmix_tma }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.pmix_tma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmix_list_item_t = type { %struct.pmix_object_t, ptr, ptr, i32 }

@.str = private unnamed_addr constant [37 x i8] c"PMIX ERROR: %s in file %s at line %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"gds_shmem2_store.c\00", align 1
@pmix_kval_t_class = external global %struct.pmix_class_t, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"pmix.app.arr\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"pmix.node.arr\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"pmix.pdata\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"pmix.ssn.arr\00", align 1
@pmix_class_init_epoch = external local_unnamed_addr global i32, align 4
@pmix_preg = external local_unnamed_addr global %struct.pmix_preg_module_t, align 8
@pmix_list_t_class = external global %struct.pmix_class_t, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"pmix.appnum\00", align 1
@pmix_gds_shmem2_app_t_class = external global %struct.pmix_class_t, align 8
@pmix_gds_shmem2_nodeinfo_t_class = external global %struct.pmix_class_t, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"pmix.nodeid\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"pmix.hname\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"pmix.alias\00", align 1
@pmix_gds_shmem2_host_alias_t_class = external global %struct.pmix_class_t, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"pmix.rank\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"pmix.session.id\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"PMIX-XFER-VALUE: UNSUPPORTED TYPE %d\00", align 1
@pmix_buffer_t_class = external global %struct.pmix_class_t, align 8
@.str.13 = private unnamed_addr constant [85 x i8] c"/opt-bench/work/openmpi/ompi/3rd-party/openpmix/src/mca/bfrops/base/bfrop_base_tma.h\00", align 1
@pmix_bfrops_globals = external local_unnamed_addr global %struct.pmix_bfrops_globals_t, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"pthread_mutex_lock()\00", align 1

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_gds_shmem2_store_qualified(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null                ; 5 uses
  %..i = select i1 %.not.i, ptr null, ptr %i.a    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  %.fr71 = freeze ptr %i.f                        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 4 uses
  %i.i = add i64 %i.h, -1                         ; 6 uses
  %i.j = icmp eq i64 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = mul i64 %i.i, 552                        ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr %i.b(ptr noundef nonnull %i.a, i64 noundef %i.k) #15, !inline_history !20
  br label %pmix_tma_malloc.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.k) #16
  br label %pmix_tma_malloc.exit.i

pmix_tma_malloc.exit.i:                           ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.l, %bb.c ], [ %i.m, %bb.d ] ; 12 uses
  %i.n = icmp eq ptr %.0.i.i, null
  br i1 %i.n, label %pmix_bfrops_base_tma_info_create.exit, label %.preheader.i.preheader, !prof !21

.preheader.i.preheader:                           ; preds = %pmix_tma_malloc.exit.i
  %i.o = add i64 %i.h, -2
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.i, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.014.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.ab, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.3, %.preheader.i ]
  %i.q = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i, i64 %.014.i ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.q, i8 0, i64 516, i1 false)
  %i.s = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i, i64 %.014.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 552
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.t, i8 0, i64 516, i1 false)
  %i.v = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i, i64 %.014.i ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1104
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.w, i8 0, i64 516, i1 false)
  %i.y = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i, i64 %.014.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1656
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.z, i8 0, i64 516, i1 false)
  %i.ab = add nuw i64 %.014.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pmix_bfrops_base_tma_info_create.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !22

pmix_bfrops_base_tma_info_create.exit.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pmix_bfrops_base_tma_info_create.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %pmix_bfrops_base_tma_info_create.exit.loopexit.unr-lcssa, %.preheader.i.preheader
  %.014.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.ab, %pmix_bfrops_base_tma_info_create.exit.loopexit.unr-lcssa ]
  %lcmp.mod85 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.014.i.epil = phi i64 [ %i.ae, %.preheader.i.epil ], [ %.014.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.ac = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i, i64 %.014.i.epil ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.ac, i8 0, i64 516, i1 false)
  %i.ae = add nuw i64 %.014.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %pmix_bfrops_base_tma_info_create.exit, label %.preheader.i.epil, !llvm.loop !24

pmix_bfrops_base_tma_info_create.exit:            ; preds = %pmix_bfrops_base_tma_info_create.exit.loopexit.unr-lcssa, %.preheader.i.epil, %pmix_tma_malloc.exit.i
  %i.af = icmp ugt i64 %i.h, 1
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %pmix_bfrops_base_tma_info_create.exit
  %i.ag = icmp eq ptr %.fr71, null
  br i1 %i.ag, label %.lr.ph.split.us, label %.lr.ph.split, !prof !21

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ah = getelementptr i8, ptr %.0.i.i, i64 512  ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !26
  %i.aj = or i32 %i.ai, 8
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !26
  br label %pmix_bfrops_base_tma_info_xfer.exit.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.04270 = phi i64 [ %i.br, %bb.h ], [ 1, %.lr.ph ] ; 3 uses
  %i.ak = getelementptr [552 x i8], ptr %.0.i.i, i64 %.04270 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -552   ; 3 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 -40    ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26
  %i.ao = or i32 %i.an, 8
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw [552 x i8], ptr %.fr71, i64 %.04270 ; 3 uses
  %i.aq = icmp eq ptr %i.al, null
  br i1 %i.aq, label %pmix_bfrops_base_tma_info_xfer.exit.thread, label %bb.e, !prof !21

bb.e:                                             ; preds = %.lr.ph.split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.al, i8 0, i64 512, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.e
  %.012.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bf, %bb.g ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.al, %bb.e ], [ %i.bh, %bb.g ] ; 8 uses
  %.0910.i.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.bg, %bb.g ] ; 5 uses
  %i.ar = load i8, ptr %.0910.i.i.i, align 1, !tbaa !14 ; 2 uses
  store i8 %i.ar, ptr %.0811.i.i.i, align 1, !tbaa !14
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %pmix_bfrops_base_tma_load_key.exit.i, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %.preheader.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 1
  %i.av = load i8, ptr %i.at, align 1, !tbaa !14  ; 2 uses
  store i8 %i.av, ptr %i.au, align 1, !tbaa !14
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit91, label %.preheader.i.i.2

.preheader.i.i.2:                                 ; preds = %.preheader.i.i.1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 2
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !14  ; 2 uses
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !14
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit89, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.2
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 3 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i64 %.012.i.i.i, 508
  br i1 %exitcond.not.i.i.i.2, label %pmix_bfrops_base_tma_load_key.exit.i, label %.preheader.i.i.3

.preheader.i.i.3:                                 ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !14  ; 2 uses
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !14
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %pmix_bfrops_base_tma_load_key.exit.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i.3
  %i.bf = add nuw nsw i64 %.012.i.i.i, 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  br label %.preheader.i.i

pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit89: ; preds = %.preheader.i.i.2
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit.i

pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit91: ; preds = %.preheader.i.i.1
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit.i

pmix_bfrops_base_tma_load_key.exit.i:             ; preds = %.preheader.i.i, %bb.f, %.preheader.i.i.3, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit91, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit89
  %.08.lcssa.i.i.i = phi ptr [ %i.bj, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit91 ], [ %i.bb, %bb.f ], [ %i.bi, %pmix_bfrops_base_tma_load_key.exit.i.split.loop.exit89 ], [ %i.bb, %.preheader.i.i.3 ], [ %.0811.i.i.i, %.preheader.i.i ]
  store i8 0, ptr %.08.lcssa.i.i.i, align 1, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !26 ; 2 uses
  store i32 %i.bl, ptr %i.am, align 8, !tbaa !26
  %i.bm = and i32 %i.bl, 16
  %.not.i52 = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr i8, ptr %i.ak, i64 -32    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 520 ; 2 uses
  br i1 %.not.i52, label %pmix_bfrops_base_tma_info_xfer.exit, label %pmix_bfrops_base_tma_info_xfer.exit.thread61

pmix_bfrops_base_tma_info_xfer.exit.thread61:     ; preds = %pmix_bfrops_base_tma_load_key.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 32, i1 false)
  br label %bb.h

pmix_bfrops_base_tma_info_xfer.exit:              ; preds = %pmix_bfrops_base_tma_load_key.exit.i
  %i.bp = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bo, ptr noundef %..i), !inline_history !29 ; 3 uses
  switch i32 %i.bp, label %pmix_bfrops_base_tma_info_xfer.exit.thread [
    i32 0, label %bb.h
    i32 -2, label %.preheader.i57
  ], !prof !30

pmix_bfrops_base_tma_info_xfer.exit.thread:       ; preds = %pmix_bfrops_base_tma_info_xfer.exit, %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i32 [ -27, %.lr.ph.split.us ], [ %i.bp, %pmix_bfrops_base_tma_info_xfer.exit ], [ -27, %.lr.ph.split ] ; 2 uses
  %i.bq = tail call ptr @PMIx_Error_string(i32 noundef %.us-phi) #15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.bq, ptr noundef nonnull @.str.1, i32 noundef 534) #15
  br label %.preheader.i57

bb.h:                                             ; preds = %pmix_bfrops_base_tma_info_xfer.exit.thread61, %pmix_bfrops_base_tma_info_xfer.exit
  %i.br = add nuw i64 %.04270, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.h, %bb.a, %pmix_bfrops_base_tma_info_create.exit
  %.1.i80 = phi ptr [ null, %bb.a ], [ %.0.i.i, %pmix_bfrops_base_tma_info_create.exit ], [ %.0.i.i, %bb.h ] ; 3 uses
  %i.bs = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_kval_t_class, i64 56), align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.bu = tail call ptr %i.bt(ptr noundef nonnull %i.a, i64 noundef %i.bs) #15, !inline_history !36
  br label %pmix_tma_malloc.exit.i53

bb.j:                                             ; preds = %._crit_edge
  %i.bv = tail call noalias ptr @malloc(i64 noundef %i.bs) #16
  br label %pmix_tma_malloc.exit.i53

pmix_tma_malloc.exit.i53:                         ; preds = %bb.j, %bb.i
  %.0.i.i54 = phi ptr [ %i.bu, %bb.i ], [ %i.bv, %bb.j ] ; 10 uses
  %i.bw = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !37
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_kval_t_class, i64 32), align 8, !tbaa !38
  %.not.i55 = icmp eq i32 %i.bw, %i.bx
  br i1 %.not.i55, label %bb.l, label %bb.k

bb.k:                                             ; preds = %pmix_tma_malloc.exit.i53
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_kval_t_class) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %pmix_tma_malloc.exit.i53
  %.not22.i = icmp eq ptr %.0.i.i54, null
  br i1 %.not22.i, label %.fold.split.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = tail call i32 @pthread_mutex_init(ptr noundef nonnull %.0.i.i54, ptr noundef null) #15 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 40
  store ptr @pmix_kval_t_class, ptr %i.bz, align 8, !tbaa !39
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 48
  store i32 1, ptr %i.ca, align 8, !tbaa !40
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 56 ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i8 0, i64 24, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !tbaa.struct !41
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_kval_t_class, i64 40), align 8, !tbaa !44 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ce, null
  br i1 %.not6.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %i.cf = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %i.ce, %bb.p ]
  %.07.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.cd, %bb.p ]
  tail call void %i.cf(ptr noundef nonnull %.0.i.i54) #15, !inline_history !45
  %i.cg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !42 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ch, null
  br i1 %.not.i23.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 144
  store ptr %.fr71, ptr %i.ci, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %.fr71, i64 520
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 152
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !52
  %i.cl = tail call i32 @pmix_hash_store(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %.0.i.i54, ptr noundef %.1.i80, i64 noundef %i.i, ptr noundef null) #15 ; 4 uses
  switch i32 %i.cl, label %.fold.split.sink.split [
    i32 0, label %.fold.split
    i32 -2, label %.fold.split
  ], !prof !53

.fold.split.sink.split:                           ; preds = %.loopexit, %bb.l
  %.sink84 = phi i32 [ -32, %bb.l ], [ %i.cl, %.loopexit ] ; 2 uses
  %.sink83 = phi i32 [ 542, %bb.l ], [ 550, %.loopexit ]
  %i.cm = tail call ptr @PMIx_Error_string(i32 noundef %.sink84) #15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.cm, ptr noundef nonnull @.str.1, i32 noundef %.sink83) #15
  br label %.fold.split

.fold.split:                                      ; preds = %.fold.split.sink.split, %.loopexit, %.loopexit
  %.2 = phi i32 [ %i.cl, %.loopexit ], [ %i.cl, %.loopexit ], [ %.sink84, %.fold.split.sink.split ] ; 2 uses
  %.not.i56 = icmp eq ptr %.1.i80, null
  br i1 %.not.i56, label %pmix_bfrops_base_tma_info_free.exit, label %.preheader.i57

.preheader.i57:                                   ; preds = %pmix_bfrops_base_tma_info_xfer.exit, %pmix_bfrops_base_tma_info_xfer.exit.thread, %.fold.split
  %.1.i81 = phi ptr [ %.1.i80, %.fold.split ], [ %.0.i.i, %pmix_bfrops_base_tma_info_xfer.exit.thread ], [ %.0.i.i, %pmix_bfrops_base_tma_info_xfer.exit ] ; 3 uses
  %.268 = phi i32 [ %.2, %.fold.split ], [ %.us-phi, %pmix_bfrops_base_tma_info_xfer.exit.thread ], [ %i.bp, %pmix_bfrops_base_tma_info_xfer.exit ] ; 2 uses
  br i1 %i.j, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %pmix_bfrops_base_tma_info_destruct.exit.i, %.preheader.i57
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !54
  tail call void %i.co(ptr noundef nonnull %i.a, ptr noundef nonnull %.1.i81) #15, !inline_history !55
  br label %pmix_bfrops_base_tma_info_free.exit

bb.r:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %.1.i81) #15, !inline_history !56
  br label %pmix_bfrops_base_tma_info_free.exit

.lr.ph.i:                                         ; preds = %.preheader.i57, %pmix_bfrops_base_tma_info_destruct.exit.i
  %.010.i = phi i64 [ %i.ct, %pmix_bfrops_base_tma_info_destruct.exit.i ], [ 0, %.preheader.i57 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [552 x i8], ptr %.1.i81, i64 %.010.i ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 512
  %.val.i.i = load i32, ptr %i.cq, align 8, !tbaa !26
  %i.cr = and i32 %.val.i.i, 16
  %.not.i9.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i9.i, label %bb.s, label %pmix_bfrops_base_tma_info_destruct.exit.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 520
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef %i.cs, ptr noundef %..i), !inline_history !57
  br label %pmix_bfrops_base_tma_info_destruct.exit.i

pmix_bfrops_base_tma_info_destruct.exit.i:        ; preds = %bb.s, %.lr.ph.i
  %i.ct = add nuw i64 %.010.i, 1                  ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %i.ct, %i.i
  br i1 %exitcond.not.i58, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !58

pmix_bfrops_base_tma_info_free.exit:              ; preds = %.fold.split, %bb.q, %bb.r
  %.269 = phi i32 [ %.2, %.fold.split ], [ %.268, %bb.q ], [ %.268, %bb.r ]
  ret i32 %.269
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @pmix_bfrops_base_tma_info_create(i64 noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = mul i64 %0, 552                          ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !35
  %i.d = tail call ptr %i.c(ptr noundef nonnull %1, i64 noundef %i.b) #15, !inline_history !59
  br label %pmix_tma_malloc.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.b) #16
  br label %pmix_tma_malloc.exit

pmix_tma_malloc.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 8 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %.loopexit, label %.preheader.preheader, !prof !21

.preheader.preheader:                             ; preds = %pmix_tma_malloc.exit
  %xtraiter = and i64 %0, 3                       ; 3 uses
  %i.g = icmp ult i64 %0, 4
  br i1 %i.g, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %0, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.014 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.s, %.preheader ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
  %i.h = getelementptr inbounds nuw [552 x i8], ptr %.0.i, i64 %.014 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.h, i8 0, i64 516, i1 false)
  %i.j = getelementptr inbounds nuw [552 x i8], ptr %.0.i, i64 %.014 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 552
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.k, i8 0, i64 516, i1 false)
  %i.m = getelementptr inbounds nuw [552 x i8], ptr %.0.i, i64 %.014 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1104
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.n, i8 0, i64 516, i1 false)
  %i.p = getelementptr inbounds nuw [552 x i8], ptr %.0.i, i64 %.014 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1656
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.q, i8 0, i64 516, i1 false)
  %i.s = add nuw i64 %.014, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !22

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.014.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.s, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.014.epil = phi i64 [ %i.v, %.preheader.epil ], [ %.014.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.t = getelementptr inbounds nuw [552 x i8], ptr %.0.i, i64 %.014.epil ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.t, i8 0, i64 516, i1 false)
  %i.v = add nuw i64 %.014.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.preheader.epil, !llvm.loop !60

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.epil, %pmix_tma_malloc.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %pmix_tma_malloc.exit ], [ %.0.i, %.preheader.epil ], [ %.0.i, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.1
}

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @PMIx_Error_string(i32 noundef) local_unnamed_addr #2

declare i32 @pmix_hash_store(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @pmix_gds_shmem2_store_local_job_data_in_shmem2(ptr noundef %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %.not.i = icmp eq ptr %i.f, null
  %..i = select i1 %.not.i, ptr null, ptr %i.e    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.064187 = load ptr, ptr %i.h, align 8, !tbaa !69 ; 2 uses
  %.not188 = icmp eq ptr %.064187, %i.g
  br i1 %.not188, label %.thread151, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 176
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %store_proc_data.exit.thread
  %.064189 = phi ptr [ %.064187, %.lr.ph ], [ %.064, %store_proc_data.exit.thread ] ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.064189, i64 144 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = tail call zeroext i1 @PMIx_Check_key(ptr noundef %i.k, ptr noundef nonnull @.str.2) #15
  br i1 %i.l, label %bb.c, label %bb.cv

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.064189, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !70
  %.not210.i = icmp eq i16 %i.o, 39
  br i1 %.not210.i, label %bb.d, label %pmix_obj_run_destructors.exit314.sink.split.i, !prof !71

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !61 ; 15 uses
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 56), align 8, !tbaa !32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null         ; 8 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %.val.i, align 8, !tbaa !35
  %i.r = tail call ptr %i.q(ptr noundef nonnull %.val.i, i64 noundef %i.p) #15, !inline_history !72
  br label %pmix_tma_malloc.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.p) #16
  br label %pmix_tma_malloc.exit.i.i

pmix_tma_malloc.exit.i.i:                         ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.s, %bb.f ] ; 18 uses
  %i.t = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !37
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8, !tbaa !38
  %.not.i.i = icmp eq i32 %i.t, %i.u
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %pmix_tma_malloc.exit.i.i
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_list_t_class) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %pmix_tma_malloc.exit.i.i
  %.not22.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not22.i.i, label %pmix_obj_run_destructors.exit314.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 @pthread_mutex_init(ptr noundef nonnull %.0.i.i.i, ptr noundef null) #15 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 40 ; 3 uses
  store ptr @pmix_list_t_class, ptr %i.w, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  store i32 1, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56 ; 2 uses
  br i1 %.not.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %.val.i, i64 64, i1 false), !tbaa.struct !41
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !44 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i.i.i, label %.loopexit350.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.i.i.i
  %i.ac = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.ab, %bb.l ]
  %.07.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.aa, %bb.l ]
  tail call void %i.ac(ptr noundef nonnull %.0.i.i.i) #15, !inline_history !73
  %i.ad = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i23.i.i, label %.loopexit350.i, label %.lr.ph.i.i.i, !llvm.loop !46

.loopexit350.i:                                   ; preds = %.lr.ph.i.i.i, %bb.l
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 56), align 8, !tbaa !32 ; 2 uses
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit350.i
  %i.ag = load ptr, ptr %.val.i, align 8, !tbaa !35
  %i.ah = tail call ptr %i.ag(ptr noundef nonnull %.val.i, i64 noundef %i.af) #15, !inline_history !72
  br label %pmix_tma_malloc.exit.i237.i

bb.n:                                             ; preds = %.loopexit350.i
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.af) #16
  br label %pmix_tma_malloc.exit.i237.i

pmix_tma_malloc.exit.i237.i:                      ; preds = %bb.n, %bb.m
  %.0.i.i238.i = phi ptr [ %i.ah, %bb.m ], [ %i.ai, %bb.n ] ; 13 uses
  %i.aj = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !37
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8, !tbaa !38
  %.not.i239.i = icmp eq i32 %i.aj, %i.ak
  br i1 %.not.i239.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %pmix_tma_malloc.exit.i237.i
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_list_t_class) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %pmix_tma_malloc.exit.i237.i
  %.not22.i240.i = icmp eq ptr %.0.i.i238.i, null
  br i1 %.not22.i240.i, label %pmix_obj_new_tma.exit245.preheader.i, label %bb.q

pmix_obj_new_tma.exit245.preheader.i:             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 264 ; 4 uses
  %i.am = load volatile i64, ptr %i.al, align 8, !tbaa !74
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %pmix_obj_new_tma.exit245._crit_edge.i, label %.lr.ph374.i

.lr.ph374.i:                                      ; preds = %pmix_obj_new_tma.exit245.preheader.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 240 ; 2 uses
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ap = tail call i32 @pthread_mutex_init(ptr noundef nonnull %.0.i.i238.i, ptr noundef null) #15 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i238.i, i64 40 ; 2 uses
  store ptr @pmix_list_t_class, ptr %i.aq, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i238.i, i64 48
  store i32 1, ptr %i.ar, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i238.i, i64 56 ; 2 uses
  br i1 %.not.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i238.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %.val.i, i64 64, i1 false), !tbaa.struct !41
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 40), align 8, !tbaa !44 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %.not6.i.i241.i = icmp eq ptr %i.av, null
  br i1 %.not6.i.i241.i, label %.loopexit349.i, label %.lr.ph.i.i242.i

.lr.ph.i.i242.i:                                  ; preds = %bb.t, %.lr.ph.i.i242.i
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i.i242.i ], [ %i.av, %bb.t ]
  %.07.i.i243.i = phi ptr [ %i.ax, %.lr.ph.i.i242.i ], [ %i.au, %bb.t ]
  tail call void %i.aw(ptr noundef nonnull %.0.i.i238.i) #15, !inline_history !73
  %i.ax = getelementptr inbounds nuw i8, ptr %.07.i.i243.i, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !42 ; 2 uses
  %.not.i23.i244.i = icmp eq ptr %i.ay, null
  br i1 %.not.i23.i244.i, label %.loopexit349.i, label %.lr.ph.i.i242.i, !llvm.loop !46

bb.u:                                             ; preds = %pmix_obj_new_tma.exit245.i, %.lr.ph374.i
  %i.az = load volatile i64, ptr %i.al, align 8, !tbaa !74
  %i.ba = add i64 %i.az, -1
  store volatile i64 %i.ba, ptr %i.al, align 8, !tbaa !74
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !76 ; 11 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bd = load volatile ptr, ptr %i.bc, align 8, !tbaa !77
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 120 ; 2 uses
  %i.bf = load volatile ptr, ptr %i.be, align 8, !tbaa !69
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  store volatile ptr %i.bd, ptr %i.bg, align 8, !tbaa !77
  %i.bh = load volatile ptr, ptr %i.be, align 8, !tbaa !69
  store ptr %i.bh, ptr %i.ao, align 8, !tbaa !76
end_hunk_0
begin_hunk_1_@pmix_bfrops_base_tma_copy_darray:bb.a
  %i.ew = icmp ult i64 %i.eu, %i.ev
  br i1 %i.ew, label %.lr.ph1243, label %.sink.split, !llvm.loop !288

.lr.ph1243:                                       ; preds = %bb.bq, %bb.br
  %.07971241 = phi i64 [ %i.eu, %bb.br ], [ 0, %bb.bq ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %.07971241
  %i.ey = getelementptr inbounds nuw [32 x i8], ptr %i.es, i64 %.07971241
  %i.ez = tail call i32 @pmix_bfrops_base_value_xfer(ptr noundef nonnull %i.ex, ptr noundef %i.ey) #15 ; 2 uses
  %.not907 = icmp eq i32 %i.ez, 0
  br i1 %.not907, label %bb.br, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1243
  %i.fa = load i64, ptr %i.g, align 8, !tbaa !19
  tail call fastcc void @pmix_bfrops_base_tma_value_free(ptr noundef nonnull %i.ep, i64 noundef %i.fa, ptr noundef %2)
  br label %pmix_tma_free.exit

bb.bt:                                            ; preds = %bb.f
  %i.fb = tail call fastcc ptr @pmix_bfrops_base_tma_proc_create(i64 noundef %i.h, ptr noundef %2) ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !15
  %i.fd = icmp eq ptr %i.fb, null
  br i1 %i.fd, label %pmix_tma_free.exit.thread, label %bb.bu, !prof !21

bb.bu:                                            ; preds = %bb.bt
  %i.fe = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.ff = load i64, ptr %i.g, align 8, !tbaa !19
  %i.fg = mul i64 %i.ff, 260
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fb, ptr align 1 %i.fe, i64 %i.fg, i1 false)
  br label %.sink.split

bb.bv:                                            ; preds = %bb.f
  %i.fh = shl i64 %i.h, 2                         ; 2 uses
  br i1 %.not.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fi = load ptr, ptr %2, align 8, !tbaa !35
  %i.fj = tail call ptr %i.fi(ptr noundef nonnull %2, i64 noundef %i.fh) #15, !inline_history !59
  br label %pmix_tma_malloc.exit956

bb.bx:                                            ; preds = %bb.bv
  %i.fk = tail call noalias ptr @malloc(i64 noundef %i.fh) #16
  br label %pmix_tma_malloc.exit956

pmix_tma_malloc.exit956:                          ; preds = %bb.bw, %bb.bx
  %.0.i955 = phi ptr [ %i.fj, %bb.bw ], [ %i.fk, %bb.bx ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %.0.i955, ptr %i.fl, align 8, !tbaa !15
  %i.fm = icmp eq ptr %.0.i955, null
  br i1 %i.fm, label %pmix_tma_free.exit.thread, label %bb.by, !prof !21

bb.by:                                            ; preds = %pmix_tma_malloc.exit956
  %i.fn = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.fo = load i64, ptr %i.g, align 8, !tbaa !19
  %i.fp = shl i64 %i.fo, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i955, ptr align 1 %i.fn, i64 %i.fp, i1 false)
  br label %.sink.split

bb.bz:                                            ; preds = %bb.f
  %i.fq = tail call fastcc ptr @pmix_bfrops_base_tma_app_create(i64 noundef %i.h, ptr noundef %2) ; 8 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !15
  %i.fs = icmp eq ptr %i.fq, null
  br i1 %i.fs, label %pmix_tma_free.exit.thread, label %bb.ca, !prof !21

bb.ca:                                            ; preds = %bb.bz
  %i.ft = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.fu = load i64, ptr %i.g, align 8, !tbaa !19
  %.not1268 = icmp eq i64 %i.fu, 0
  br i1 %.not1268, label %.sink.split, label %.lr.ph1240

.lr.ph1240:                                       ; preds = %bb.ca
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph1240, %.loopexit
  %.07961238 = phi i64 [ 0, %.lr.ph1240 ], [ %i.jl, %.loopexit ] ; 7 uses
  %i.fw = getelementptr inbounds nuw [56 x i8], ptr %i.ft, i64 %.07961238 ; 7 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !271 ; 3 uses
  %.not901 = icmp eq ptr %i.fx, null
  br i1 %.not901, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %.not.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.fy = load ptr, ptr %i.fv, align 8, !tbaa !121
  %i.fz = tail call ptr %i.fy(ptr noundef nonnull %2, ptr noundef nonnull %i.fx) #15, !inline_history !142
  br label %pmix_tma_strdup.exit959

bb.ce:                                            ; preds = %bb.cc
  %i.ga = tail call noalias ptr @strdup(ptr noundef nonnull %i.fx) #15
  br label %pmix_tma_strdup.exit959

pmix_tma_strdup.exit959:                          ; preds = %bb.cd, %bb.ce
  %.0.i958 = phi ptr [ %i.fz, %bb.cd ], [ %i.ga, %bb.ce ]
  %i.gb = getelementptr inbounds nuw [56 x i8], ptr %i.fq, i64 %.07961238
  store ptr %.0.i958, ptr %i.gb, align 8, !tbaa !271
  br label %bb.cf

bb.cf:                                            ; preds = %pmix_tma_strdup.exit959, %bb.cb
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !273 ; 2 uses
  %.not902 = icmp eq ptr %i.gd, null
  br i1 %.not902, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ge = tail call fastcc ptr @pmix_bfrops_base_tma_argv_copy(ptr noundef nonnull %i.gd, ptr noundef %2)
  %i.gf = getelementptr inbounds nuw [56 x i8], ptr %i.fq, i64 %.07961238
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.ge, ptr %i.gg, align 8, !tbaa !273
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !275 ; 2 uses
  %.not903 = icmp eq ptr %i.gi, null
  br i1 %.not903, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gj = tail call fastcc ptr @pmix_bfrops_base_tma_argv_copy(ptr noundef nonnull %i.gi, ptr noundef %2)
  %i.gk = getelementptr inbounds nuw [56 x i8], ptr %i.fq, i64 %.07961238
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store ptr %i.gj, ptr %i.gl, align 8, !tbaa !275
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !276 ; 3 uses
  %.not904 = icmp eq ptr %i.gn, null
  br i1 %.not904, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  br i1 %.not.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.go = load ptr, ptr %i.fv, align 8, !tbaa !121
  %i.gp = tail call ptr %i.go(ptr noundef nonnull %2, ptr noundef nonnull %i.gn) #15, !inline_history !142
  br label %pmix_tma_strdup.exit962

bb.cm:                                            ; preds = %bb.ck
  %i.gq = tail call noalias ptr @strdup(ptr noundef nonnull %i.gn) #15
  br label %pmix_tma_strdup.exit962

pmix_tma_strdup.exit962:                          ; preds = %bb.cl, %bb.cm
  %.0.i961 = phi ptr [ %i.gp, %bb.cl ], [ %i.gq, %bb.cm ]
  %i.gr = getelementptr inbounds nuw [56 x i8], ptr %i.fq, i64 %.07961238
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  store ptr %.0.i961, ptr %i.gs, align 8, !tbaa !276
  br label %bb.cn

bb.cn:                                            ; preds = %pmix_tma_strdup.exit962, %bb.cj
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !289
  %i.gv = getelementptr inbounds nuw [56 x i8], ptr %i.fq, i64 %.07961238 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  store i32 %i.gu, ptr %i.gw, align 8, !tbaa !289
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !278 ; 5 uses
  %.not905 = icmp eq i64 %i.gy, 0
  br i1 %.not905, label %.loopexit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fw, i64 40 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !277
  %.not906 = icmp eq ptr %i.ha, null
  br i1 %.not906, label %.loopexit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hb = mul i64 %i.gy, 552                      ; 2 uses
  br i1 %.not.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hc = load ptr, ptr %2, align 8, !tbaa !35
  %i.hd = tail call ptr %i.hc(ptr noundef nonnull %2, i64 noundef %i.hb) #15, !inline_history !20
  br label %pmix_tma_malloc.exit.i

bb.cr:                                            ; preds = %bb.cp
  %i.he = tail call noalias ptr @malloc(i64 noundef %i.hb) #16
  br label %pmix_tma_malloc.exit.i

pmix_tma_malloc.exit.i:                           ; preds = %bb.cr, %bb.cq
  %.0.i.i = phi ptr [ %i.hd, %bb.cq ], [ %i.he, %bb.cr ] ; 7 uses
  %i.hf = icmp eq ptr %.0.i.i, null
  br i1 %i.hf, label %bb.cs, label %.preheader.i.preheader, !prof !21

.preheader.i.preheader:                           ; preds = %pmix_tma_malloc.exit.i
  %xtraiter77 = and i64 %i.gy, 3                  ; 3 uses
  %i.hg = icmp ult i64 %i.gy, 4
  br i1 %i.hg, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter81 = and i64 %i.gy, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.014.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.hs, %.preheader.i ] ; 5 uses
  %niter82 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter82.next.3, %.preheader.i ]
  %i.hh = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i, i64 %.014.i ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hi, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.hh, i8 0, i64 516, i1 false)
  %i.hj = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i, i64 %.014.i ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 552
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hl, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.hk, i8 0, i64 516, i1 false)
  %i.hm = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i, i64 %.014.i ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1104
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ho, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.hn, i8 0, i64 516, i1 false)
  %i.hp = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i, i64 %.014.i ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 1656
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hr, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.hq, i8 0, i64 516, i1 false)
  %i.hs = add nuw i64 %.014.i, 4                  ; 2 uses
  %niter82.next.3 = add i64 %niter82, 4           ; 2 uses
  %niter82.ncmp.3 = icmp eq i64 %niter82.next.3, %unroll_iter81
  br i1 %niter82.ncmp.3, label %.unr-lcssa, label %.preheader.i, !llvm.loop !22

bb.cs:                                            ; preds = %pmix_tma_malloc.exit.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gv, i64 40
  store ptr null, ptr %i.ht, align 8, !tbaa !277
  %i.hu = load i64, ptr %i.i, align 8, !tbaa !19
  tail call fastcc void @pmix_bfrops_base_tma_app_free(ptr noundef nonnull %i.fq, i64 noundef %i.hu, ptr noundef %2)
  br label %pmix_tma_free.exit.thread

.unr-lcssa:                                       ; preds = %.preheader.i
  %lcmp.mod79.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod79.not, label %.epilog-lcssa, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %.unr-lcssa, %.preheader.i.preheader
  %.014.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.hs, %.unr-lcssa ]
  %lcmp.mod80 = icmp ne i64 %xtraiter77, 0
  tail call void @llvm.assume(i1 %lcmp.mod80)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.014.i.epil = phi i64 [ %i.hx, %.preheader.i.epil ], [ %.014.i.epil.init, %.preheader.i.epil.preheader ] ; 2 uses
  %epil.iter78 = phi i64 [ %epil.iter78.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.hv = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i, i64 %.014.i.epil ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hw, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.hv, i8 0, i64 516, i1 false)
  %i.hx = add nuw i64 %.014.i.epil, 1
  %epil.iter78.next = add i64 %epil.iter78, 1     ; 2 uses
  %epil.iter78.cmp.not = icmp eq i64 %epil.iter78.next, %xtraiter77
  br i1 %epil.iter78.cmp.not, label %.epilog-lcssa, label %.preheader.i.epil, !llvm.loop !290

.epilog-lcssa:                                    ; preds = %.preheader.i.epil, %.unr-lcssa
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gv, i64 40 ; 2 uses
  store ptr %.0.i.i, ptr %i.hy, align 8, !tbaa !277
  %i.hz = load i64, ptr %i.gx, align 8, !tbaa !278 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gv, i64 48 ; 2 uses
  store i64 %i.hz, ptr %i.ia, align 8, !tbaa !278
  %.not1269 = icmp eq i64 %i.hz, 0
  br i1 %.not1269, label %.loopexit, label %.lr.ph1237

.lr.ph1237:                                       ; preds = %.epilog-lcssa, %pmix_bfrops_base_tma_info_xfer.exit
  %.07951235 = phi i64 [ %i.ji, %pmix_bfrops_base_tma_info_xfer.exit ], [ 0, %.epilog-lcssa ] ; 3 uses
  %i.ib = load ptr, ptr %i.hy, align 8, !tbaa !277 ; 2 uses
  %i.ic = getelementptr inbounds nuw [552 x i8], ptr %i.ib, i64 %.07951235 ; 4 uses
  %i.id = load ptr, ptr %i.gz, align 8, !tbaa !277 ; 2 uses
  %i.ie = getelementptr inbounds nuw [552 x i8], ptr %i.id, i64 %.07951235 ; 3 uses
  %i.if = icmp eq ptr %i.ib, null
  %i.ig = icmp eq ptr %i.id, null
  %i.ih = or i1 %i.if, %i.ig
  br i1 %i.ih, label %pmix_bfrops_base_tma_info_xfer.exit, label %bb.ct, !prof !21

bb.ct:                                            ; preds = %.lr.ph1237
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.ic, i8 0, i64 512, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.cv, %bb.ct
  %.012.i.i.i = phi i64 [ 0, %bb.ct ], [ %i.iw, %bb.cv ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.ic, %bb.ct ], [ %i.iy, %bb.cv ] ; 8 uses
  %.0910.i.i.i = phi ptr [ %i.ie, %bb.ct ], [ %i.ix, %bb.cv ] ; 5 uses
  %i.ii = load i8, ptr %.0910.i.i.i, align 1, !tbaa !14 ; 2 uses
  store i8 %i.ii, ptr %.0811.i.i.i, align 1, !tbaa !14
  %i.ij = icmp eq i8 %i.ii, 0
  br i1 %i.ij, label %pmix_strncpy.exit.i.i, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %.preheader.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 1
  %i.il = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 1
  %i.im = load i8, ptr %i.ik, align 1, !tbaa !14  ; 2 uses
  store i8 %i.im, ptr %i.il, align 1, !tbaa !14
  %i.in = icmp eq i8 %i.im, 0
  br i1 %i.in, label %pmix_strncpy.exit.i.i.split.loop.exit162, label %.preheader.i.i.2

.preheader.i.i.2:                                 ; preds = %.preheader.i.i.1
  %i.io = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 2
  %i.ip = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 2
  %i.iq = load i8, ptr %i.io, align 1, !tbaa !14  ; 2 uses
  store i8 %i.iq, ptr %i.ip, align 1, !tbaa !14
  %i.ir = icmp eq i8 %i.iq, 0
  br i1 %i.ir, label %pmix_strncpy.exit.i.i.split.loop.exit160, label %bb.cu

bb.cu:                                            ; preds = %.preheader.i.i.2
  %i.is = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 3 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i64 %.012.i.i.i, 508
  br i1 %exitcond.not.i.i.i.2, label %pmix_strncpy.exit.i.i, label %.preheader.i.i.3

.preheader.i.i.3:                                 ; preds = %bb.cu
  %i.it = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 3
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !14  ; 2 uses
  store i8 %i.iu, ptr %i.is, align 1, !tbaa !14
  %i.iv = icmp eq i8 %i.iu, 0
  br i1 %i.iv, label %pmix_strncpy.exit.i.i, label %bb.cv

bb.cv:                                            ; preds = %.preheader.i.i.3
  %i.iw = add nuw nsw i64 %.012.i.i.i, 4
  %i.ix = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 4
  %i.iy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 4
  br label %.preheader.i.i

pmix_strncpy.exit.i.i.split.loop.exit160:         ; preds = %.preheader.i.i.2
  %i.iz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 2
  br label %pmix_strncpy.exit.i.i

pmix_strncpy.exit.i.i.split.loop.exit162:         ; preds = %.preheader.i.i.1
  %i.ja = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 1
  br label %pmix_strncpy.exit.i.i

pmix_strncpy.exit.i.i:                            ; preds = %.preheader.i.i, %bb.cu, %.preheader.i.i.3, %pmix_strncpy.exit.i.i.split.loop.exit162, %pmix_strncpy.exit.i.i.split.loop.exit160
  %.08.lcssa.i.i.i = phi ptr [ %i.ja, %pmix_strncpy.exit.i.i.split.loop.exit162 ], [ %i.is, %bb.cu ], [ %i.iz, %pmix_strncpy.exit.i.i.split.loop.exit160 ], [ %i.is, %.preheader.i.i.3 ], [ %.0811.i.i.i, %.preheader.i.i ]
  store i8 0, ptr %.08.lcssa.i.i.i, align 1, !tbaa !14
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ie, i64 512
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !26 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ic, i64 512
  store i32 %i.jc, ptr %i.jd, align 8, !tbaa !26
  %i.je = and i32 %i.jc, 16
  %.not1151 = icmp eq i32 %i.je, 0
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ic, i64 520 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ie, i64 520 ; 2 uses
  br i1 %.not1151, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %pmix_strncpy.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jf, ptr noundef nonnull align 8 dereferenceable(32) %i.jg, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit

bb.cx:                                            ; preds = %pmix_strncpy.exit.i.i
  %i.jh = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.jf, ptr noundef nonnull %i.jg, ptr noundef %2), !inline_history !29 ; 0 uses
  br label %pmix_bfrops_base_tma_info_xfer.exit

pmix_bfrops_base_tma_info_xfer.exit:              ; preds = %.lr.ph1237, %bb.cw, %bb.cx
  %i.ji = add nuw i64 %.07951235, 1               ; 2 uses
  %i.jj = load i64, ptr %i.ia, align 8, !tbaa !278
  %i.jk = icmp ult i64 %i.ji, %i.jj
  br i1 %i.jk, label %.lr.ph1237, label %.loopexit, !llvm.loop !291

.loopexit:                                        ; preds = %pmix_bfrops_base_tma_info_xfer.exit, %.epilog-lcssa, %bb.cn, %bb.co
  %i.jl = add nuw i64 %.07961238, 1               ; 2 uses
  %i.jm = load i64, ptr %i.g, align 8, !tbaa !19
  %i.jn = icmp ult i64 %i.jl, %i.jm
  br i1 %i.jn, label %bb.cb, label %.sink.split, !llvm.loop !292

bb.cy:                                            ; preds = %bb.f
  %i.jo = tail call fastcc ptr @pmix_bfrops_base_tma_info_create(i64 noundef %i.h, ptr noundef %2) ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !15
  %i.jq = icmp eq ptr %i.jo, null
  br i1 %i.jq, label %pmix_tma_free.exit.thread, label %bb.cz, !prof !21

bb.cz:                                            ; preds = %bb.cy
  %i.jr = load ptr, ptr %i.k, align 8, !tbaa !15  ; 2 uses
  %i.js = load i64, ptr %i.g, align 8, !tbaa !19
  %i.jt = icmp eq i64 %i.js, 0
  %i.ju = icmp eq ptr %i.jr, null
  %or.cond = select i1 %i.jt, i1 true, i1 %i.ju, !prof !293
  br i1 %or.cond, label %.sink.split, label %.lr.ph1234.split, !prof !293

.lr.ph1234.split:                                 ; preds = %bb.cz, %pmix_bfrops_base_tma_info_xfer.exit974
  %.07941232 = phi i64 [ %i.kx, %pmix_bfrops_base_tma_info_xfer.exit974 ], [ 0, %bb.cz ] ; 3 uses
  %i.jv = getelementptr inbounds nuw [552 x i8], ptr %i.jo, i64 %.07941232 ; 4 uses
  %i.jw = getelementptr inbounds nuw [552 x i8], ptr %i.jr, i64 %.07941232 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.jv, i8 0, i64 512, i1 false)
  br label %.preheader.i.i965

.preheader.i.i965:                                ; preds = %bb.db, %.lr.ph1234.split
  %.012.i.i.i966 = phi i64 [ 0, %.lr.ph1234.split ], [ %i.kl, %bb.db ] ; 2 uses
  %.0811.i.i.i967 = phi ptr [ %i.jv, %.lr.ph1234.split ], [ %i.kn, %bb.db ] ; 8 uses
  %.0910.i.i.i968 = phi ptr [ %i.jw, %.lr.ph1234.split ], [ %i.km, %bb.db ] ; 5 uses
  %i.jx = load i8, ptr %.0910.i.i.i968, align 1, !tbaa !14 ; 2 uses
  store i8 %i.jx, ptr %.0811.i.i.i967, align 1, !tbaa !14
  %i.jy = icmp eq i8 %i.jx, 0
  br i1 %i.jy, label %pmix_strncpy.exit.i.i970, label %.preheader.i.i965.1

.preheader.i.i965.1:                              ; preds = %.preheader.i.i965
  %i.jz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i968, i64 1
  %i.ka = getelementptr inbounds nuw i8, ptr %.0811.i.i.i967, i64 1
  %i.kb = load i8, ptr %i.jz, align 1, !tbaa !14  ; 2 uses
  store i8 %i.kb, ptr %i.ka, align 1, !tbaa !14
  %i.kc = icmp eq i8 %i.kb, 0
  br i1 %i.kc, label %pmix_strncpy.exit.i.i970.split.loop.exit153, label %.preheader.i.i965.2

.preheader.i.i965.2:                              ; preds = %.preheader.i.i965.1
  %i.kd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i968, i64 2
  %i.ke = getelementptr inbounds nuw i8, ptr %.0811.i.i.i967, i64 2
  %i.kf = load i8, ptr %i.kd, align 1, !tbaa !14  ; 2 uses
  store i8 %i.kf, ptr %i.ke, align 1, !tbaa !14
  %i.kg = icmp eq i8 %i.kf, 0
  br i1 %i.kg, label %pmix_strncpy.exit.i.i970.split.loop.exit151, label %bb.da

bb.da:                                            ; preds = %.preheader.i.i965.2
  %i.kh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i967, i64 3 ; 3 uses
  %exitcond.not.i.i.i969.2 = icmp eq i64 %.012.i.i.i966, 508
  br i1 %exitcond.not.i.i.i969.2, label %pmix_strncpy.exit.i.i970, label %.preheader.i.i965.3

.preheader.i.i965.3:                              ; preds = %bb.da
  %i.ki = getelementptr inbounds nuw i8, ptr %.0910.i.i.i968, i64 3
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !14  ; 2 uses
  store i8 %i.kj, ptr %i.kh, align 1, !tbaa !14
  %i.kk = icmp eq i8 %i.kj, 0
  br i1 %i.kk, label %pmix_strncpy.exit.i.i970, label %bb.db

bb.db:                                            ; preds = %.preheader.i.i965.3
  %i.kl = add nuw nsw i64 %.012.i.i.i966, 4
  %i.km = getelementptr inbounds nuw i8, ptr %.0910.i.i.i968, i64 4
  %i.kn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i967, i64 4
  br label %.preheader.i.i965

pmix_strncpy.exit.i.i970.split.loop.exit151:      ; preds = %.preheader.i.i965.2
  %i.ko = getelementptr inbounds nuw i8, ptr %.0811.i.i.i967, i64 2
  br label %pmix_strncpy.exit.i.i970

pmix_strncpy.exit.i.i970.split.loop.exit153:      ; preds = %.preheader.i.i965.1
  %i.kp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i967, i64 1
  br label %pmix_strncpy.exit.i.i970

pmix_strncpy.exit.i.i970:                         ; preds = %.preheader.i.i965, %bb.da, %.preheader.i.i965.3, %pmix_strncpy.exit.i.i970.split.loop.exit153, %pmix_strncpy.exit.i.i970.split.loop.exit151
  %.08.lcssa.i.i.i971 = phi ptr [ %i.kp, %pmix_strncpy.exit.i.i970.split.loop.exit153 ], [ %i.kh, %bb.da ], [ %i.ko, %pmix_strncpy.exit.i.i970.split.loop.exit151 ], [ %i.kh, %.preheader.i.i965.3 ], [ %.0811.i.i.i967, %.preheader.i.i965 ]
  store i8 0, ptr %.08.lcssa.i.i.i971, align 1, !tbaa !14
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jw, i64 512
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !26 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jv, i64 512
  store i32 %i.kr, ptr %i.ks, align 8, !tbaa !26
  %i.kt = and i32 %i.kr, 16
  %.not1150 = icmp eq i32 %i.kt, 0
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jv, i64 520 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jw, i64 520 ; 2 uses
  br i1 %.not1150, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %pmix_strncpy.exit.i.i970
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ku, ptr noundef nonnull align 8 dereferenceable(32) %i.kv, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit974

bb.dd:                                            ; preds = %pmix_strncpy.exit.i.i970
  %i.kw = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.ku, ptr noundef nonnull %i.kv, ptr noundef %2), !inline_history !29 ; 0 uses
  br label %pmix_bfrops_base_tma_info_xfer.exit974

pmix_bfrops_base_tma_info_xfer.exit974:           ; preds = %bb.dc, %bb.dd
  %i.kx = add nuw i64 %.07941232, 1               ; 2 uses
  %i.ky = load i64, ptr %i.g, align 8, !tbaa !19
  %i.kz = icmp ult i64 %i.kx, %i.ky
  br i1 %i.kz, label %.lr.ph1234.split, label %.sink.split, !llvm.loop !294

bb.de:                                            ; preds = %bb.f
  %i.la = tail call fastcc ptr @pmix_bfrops_base_tma_pdata_create(i64 noundef %i.h, ptr noundef %2) ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.la, ptr %i.lb, align 8, !tbaa !15
  %i.lc = icmp eq ptr %i.la, null
  br i1 %i.lc, label %pmix_tma_free.exit.thread, label %bb.df, !prof !21

bb.df:                                            ; preds = %bb.de
  %i.ld = load ptr, ptr %i.k, align 8, !tbaa !15  ; 2 uses
  %i.le = load i64, ptr %i.g, align 8, !tbaa !19
  %.not1267 = icmp eq i64 %i.le, 0
  br i1 %.not1267, label %.sink.split, label %.lr.ph1231

.lr.ph1231:                                       ; preds = %bb.df
  %.not.i1124 = icmp eq ptr %i.ld, null
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph1231, %pmix_bfrops_base_tma_load_key.exit1123
  %.07931229 = phi i64 [ 0, %.lr.ph1231 ], [ %i.nh, %pmix_bfrops_base_tma_load_key.exit1123 ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [808 x i8], ptr %i.la, i64 %.07931229 ; 5 uses
  %i.lg = getelementptr inbounds nuw [808 x i8], ptr %i.ld, i64 %.07931229 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(808) %i.lf, i8 0, i64 808, i1 false)
  br i1 %.not.i1124, label %pmix_bfrops_base_tma_load_nspace.exit1132, label %.preheader.i1125

.preheader.i1125:                                 ; preds = %bb.dg, %bb.dh
  %.012.i.i1126 = phi i64 [ %i.lz, %bb.dh ], [ 0, %bb.dg ]
  %.0811.i.i1127 = phi ptr [ %i.mb, %bb.dh ], [ %i.lf, %bb.dg ] ; 11 uses
  %.0910.i.i1128 = phi ptr [ %i.ma, %bb.dh ], [ %i.lg, %bb.dg ] ; 6 uses
  %i.lh = load i8, ptr %.0910.i.i1128, align 1, !tbaa !14 ; 2 uses
  store i8 %i.lh, ptr %.0811.i.i1127, align 1, !tbaa !14
  %i.li = icmp eq i8 %i.lh, 0
  br i1 %i.li, label %pmix_strncpy.exit.i1130, label %.preheader.i1125.1

.preheader.i1125.1:                               ; preds = %.preheader.i1125
  %i.lj = getelementptr inbounds nuw i8, ptr %.0910.i.i1128, i64 1
  %i.lk = getelementptr inbounds nuw i8, ptr %.0811.i.i1127, i64 1
  %i.ll = load i8, ptr %i.lj, align 1, !tbaa !14  ; 2 uses
  store i8 %i.ll, ptr %i.lk, align 1, !tbaa !14
  %i.lm = icmp eq i8 %i.ll, 0
  br i1 %i.lm, label %pmix_strncpy.exit.i1130.split.loop.exit133, label %.preheader.i1125.2

.preheader.i1125.2:                               ; preds = %.preheader.i1125.1
  %i.ln = getelementptr inbounds nuw i8, ptr %.0910.i.i1128, i64 2
  %i.lo = getelementptr inbounds nuw i8, ptr %.0811.i.i1127, i64 2
  %i.lp = load i8, ptr %i.ln, align 1, !tbaa !14  ; 2 uses
  store i8 %i.lp, ptr %i.lo, align 1, !tbaa !14
  %i.lq = icmp eq i8 %i.lp, 0
  br i1 %i.lq, label %pmix_strncpy.exit.i1130.split.loop.exit131, label %.preheader.i1125.3

.preheader.i1125.3:                               ; preds = %.preheader.i1125.2
  %i.lr = getelementptr inbounds nuw i8, ptr %.0910.i.i1128, i64 3
  %i.ls = getelementptr inbounds nuw i8, ptr %.0811.i.i1127, i64 3
  %i.lt = load i8, ptr %i.lr, align 1, !tbaa !14  ; 2 uses
  store i8 %i.lt, ptr %i.ls, align 1, !tbaa !14
  %i.lu = icmp eq i8 %i.lt, 0
  br i1 %i.lu, label %pmix_strncpy.exit.i1130.split.loop.exit129, label %.preheader.i1125.4

.preheader.i1125.4:                               ; preds = %.preheader.i1125.3
  %i.lv = getelementptr inbounds nuw i8, ptr %.0910.i.i1128, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %.0811.i.i1127, i64 4
  %i.lx = load i8, ptr %i.lv, align 1, !tbaa !14  ; 2 uses
  store i8 %i.lx, ptr %i.lw, align 1, !tbaa !14
  %i.ly = icmp eq i8 %i.lx, 0
  br i1 %i.ly, label %pmix_strncpy.exit.i1130.split.loop.exit127, label %bb.dh

bb.dh:                                            ; preds = %.preheader.i1125.4
  %i.lz = add nuw nsw i64 %.012.i.i1126, 5        ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.0910.i.i1128, i64 5
  %i.mb = getelementptr inbounds nuw i8, ptr %.0811.i.i1127, i64 5 ; 2 uses
  %exitcond.not.i.i1129.4 = icmp eq i64 %i.lz, 255
  br i1 %exitcond.not.i.i1129.4, label %pmix_strncpy.exit.i1130, label %.preheader.i1125, !llvm.loop !279

pmix_strncpy.exit.i1130.split.loop.exit127:       ; preds = %.preheader.i1125.4
  %i.mc = getelementptr inbounds nuw i8, ptr %.0811.i.i1127, i64 4
  br label %pmix_strncpy.exit.i1130

pmix_strncpy.exit.i1130.split.loop.exit129:       ; preds = %.preheader.i1125.3
  %i.md = getelementptr inbounds nuw i8, ptr %.0811.i.i1127, i64 3
  br label %pmix_strncpy.exit.i1130

pmix_strncpy.exit.i1130.split.loop.exit131:       ; preds = %.preheader.i1125.2
  %i.me = getelementptr inbounds nuw i8, ptr %.0811.i.i1127, i64 2
  br label %pmix_strncpy.exit.i1130

pmix_strncpy.exit.i1130.split.loop.exit133:       ; preds = %.preheader.i1125.1
  %i.mf = getelementptr inbounds nuw i8, ptr %.0811.i.i1127, i64 1
  br label %pmix_strncpy.exit.i1130

pmix_strncpy.exit.i1130:                          ; preds = %.preheader.i1125, %bb.dh, %pmix_strncpy.exit.i1130.split.loop.exit133, %pmix_strncpy.exit.i1130.split.loop.exit131, %pmix_strncpy.exit.i1130.split.loop.exit129, %pmix_strncpy.exit.i1130.split.loop.exit127
  %.08.lcssa.i.i1131 = phi ptr [ %i.mf, %pmix_strncpy.exit.i1130.split.loop.exit133 ], [ %i.mc, %pmix_strncpy.exit.i1130.split.loop.exit127 ], [ %i.me, %pmix_strncpy.exit.i1130.split.loop.exit131 ], [ %i.mb, %bb.dh ], [ %i.md, %pmix_strncpy.exit.i1130.split.loop.exit129 ], [ %.0811.i.i1127, %.preheader.i1125 ]
  store i8 0, ptr %.08.lcssa.i.i1131, align 1, !tbaa !14
  br label %pmix_bfrops_base_tma_load_nspace.exit1132

pmix_bfrops_base_tma_load_nspace.exit1132:        ; preds = %bb.dg, %pmix_strncpy.exit.i1130
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lg, i64 256
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !295
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lf, i64 256
  store i32 %i.mh, ptr %i.mi, align 8, !tbaa !295
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lf, i64 260 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lg, i64 260
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.mj, i8 0, i64 512, i1 false)
  br label %.preheader.i1116

.preheader.i1116:                                 ; preds = %bb.dj, %pmix_bfrops_base_tma_load_nspace.exit1132
  %.012.i.i1117 = phi i64 [ 0, %pmix_bfrops_base_tma_load_nspace.exit1132 ], [ %i.mz, %bb.dj ] ; 2 uses
  %.0811.i.i1118 = phi ptr [ %i.mj, %pmix_bfrops_base_tma_load_nspace.exit1132 ], [ %i.nb, %bb.dj ] ; 8 uses
  %.0910.i.i1119 = phi ptr [ %i.mk, %pmix_bfrops_base_tma_load_nspace.exit1132 ], [ %i.na, %bb.dj ] ; 5 uses
  %i.ml = load i8, ptr %.0910.i.i1119, align 1, !tbaa !14 ; 2 uses
  store i8 %i.ml, ptr %.0811.i.i1118, align 1, !tbaa !14
  %i.mm = icmp eq i8 %i.ml, 0
  br i1 %i.mm, label %pmix_bfrops_base_tma_load_key.exit1123, label %.preheader.i1116.1

.preheader.i1116.1:                               ; preds = %.preheader.i1116
  %i.mn = getelementptr inbounds nuw i8, ptr %.0910.i.i1119, i64 1
  %i.mo = getelementptr inbounds nuw i8, ptr %.0811.i.i1118, i64 1
  %i.mp = load i8, ptr %i.mn, align 1, !tbaa !14  ; 2 uses
  store i8 %i.mp, ptr %i.mo, align 1, !tbaa !14
  %i.mq = icmp eq i8 %i.mp, 0
  br i1 %i.mq, label %pmix_bfrops_base_tma_load_key.exit1123.split.loop.exit144, label %.preheader.i1116.2

.preheader.i1116.2:                               ; preds = %.preheader.i1116.1
  %i.mr = getelementptr inbounds nuw i8, ptr %.0910.i.i1119, i64 2
  %i.ms = getelementptr inbounds nuw i8, ptr %.0811.i.i1118, i64 2
  %i.mt = load i8, ptr %i.mr, align 1, !tbaa !14  ; 2 uses
  store i8 %i.mt, ptr %i.ms, align 1, !tbaa !14
  %i.mu = icmp eq i8 %i.mt, 0
  br i1 %i.mu, label %pmix_bfrops_base_tma_load_key.exit1123.split.loop.exit142, label %bb.di

bb.di:                                            ; preds = %.preheader.i1116.2
  %i.mv = getelementptr inbounds nuw i8, ptr %.0811.i.i1118, i64 3 ; 3 uses
  %exitcond.not.i.i1120.2 = icmp eq i64 %.012.i.i1117, 508
  br i1 %exitcond.not.i.i1120.2, label %pmix_bfrops_base_tma_load_key.exit1123, label %.preheader.i1116.3

.preheader.i1116.3:                               ; preds = %bb.di
  %i.mw = getelementptr inbounds nuw i8, ptr %.0910.i.i1119, i64 3
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !14  ; 2 uses
  store i8 %i.mx, ptr %i.mv, align 1, !tbaa !14
  %i.my = icmp eq i8 %i.mx, 0
  br i1 %i.my, label %pmix_bfrops_base_tma_load_key.exit1123, label %bb.dj

bb.dj:                                            ; preds = %.preheader.i1116.3
  %i.mz = add nuw nsw i64 %.012.i.i1117, 4
  %i.na = getelementptr inbounds nuw i8, ptr %.0910.i.i1119, i64 4
  %i.nb = getelementptr inbounds nuw i8, ptr %.0811.i.i1118, i64 4
  br label %.preheader.i1116

pmix_bfrops_base_tma_load_key.exit1123.split.loop.exit142: ; preds = %.preheader.i1116.2
  %i.nc = getelementptr inbounds nuw i8, ptr %.0811.i.i1118, i64 2
  br label %pmix_bfrops_base_tma_load_key.exit1123

pmix_bfrops_base_tma_load_key.exit1123.split.loop.exit144: ; preds = %.preheader.i1116.1
  %i.nd = getelementptr inbounds nuw i8, ptr %.0811.i.i1118, i64 1
  br label %pmix_bfrops_base_tma_load_key.exit1123

pmix_bfrops_base_tma_load_key.exit1123:           ; preds = %.preheader.i1116, %bb.di, %.preheader.i1116.3, %pmix_bfrops_base_tma_load_key.exit1123.split.loop.exit144, %pmix_bfrops_base_tma_load_key.exit1123.split.loop.exit142
  %.08.lcssa.i.i1122 = phi ptr [ %i.nd, %pmix_bfrops_base_tma_load_key.exit1123.split.loop.exit144 ], [ %i.mv, %bb.di ], [ %i.nc, %pmix_bfrops_base_tma_load_key.exit1123.split.loop.exit142 ], [ %i.mv, %.preheader.i1116.3 ], [ %.0811.i.i1118, %.preheader.i1116 ]
  store i8 0, ptr %.08.lcssa.i.i1122, align 1, !tbaa !14
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lf, i64 776
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lg, i64 776
  %i.ng = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.ne, ptr noundef nonnull %i.nf, ptr noundef %2), !inline_history !297 ; 0 uses
  %i.nh = add nuw i64 %.07931229, 1               ; 2 uses
  %i.ni = load i64, ptr %i.g, align 8, !tbaa !19
  %i.nj = icmp ult i64 %i.nh, %i.ni
  br i1 %i.nj, label %bb.dg, label %.sink.split, !llvm.loop !298

bb.dk:                                            ; preds = %bb.f
  %i.nk = mul i64 %i.h, 168                       ; 2 uses
  br i1 %.not.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nl = load ptr, ptr %2, align 8, !tbaa !35
  %i.nm = tail call ptr %i.nl(ptr noundef nonnull %2, i64 noundef %i.nk) #15, !inline_history !59
  br label %pmix_tma_malloc.exit977

bb.dm:                                            ; preds = %bb.dk
  %i.nn = tail call noalias ptr @malloc(i64 noundef %i.nk) #16
  br label %pmix_tma_malloc.exit977

pmix_tma_malloc.exit977:                          ; preds = %bb.dl, %bb.dm
  %.0.i976 = phi ptr [ %i.nm, %bb.dl ], [ %i.nn, %bb.dm ] ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %.0.i976, ptr %i.no, align 8, !tbaa !15
  %i.np = icmp eq ptr %.0.i976, null
  br i1 %i.np, label %pmix_tma_free.exit.thread, label %bb.dn, !prof !21

bb.dn:                                            ; preds = %pmix_tma_malloc.exit977
  %i.nq = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.nr = load i64, ptr %i.g, align 8, !tbaa !19
  %.not1266 = icmp eq i64 %i.nr, 0
  br i1 %.not1266, label %.sink.split, label %.lr.ph1228

.lr.ph1228:                                       ; preds = %bb.dn
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph1228, %pmix_bfrops_base_tma_copy_payload.exit
  %.07921226 = phi i64 [ 0, %.lr.ph1228 ], [ %i.qy, %pmix_bfrops_base_tma_copy_payload.exit ] ; 3 uses
  %i.nt = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !37
  %i.nu = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 32), align 8, !tbaa !38
  %.not900 = icmp eq i32 %i.nt, %i.nu
  br i1 %.not900, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_buffer_t_class) #15
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.nv = getelementptr inbounds nuw [168 x i8], ptr %.0.i976, i64 %.07921226 ; 15 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 40
  store ptr @pmix_buffer_t_class, ptr %i.nw, align 8, !tbaa !39
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 48
  store i32 1, ptr %i.nx, align 8, !tbaa !40
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 56 ; 2 uses
  br i1 %.not.i, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ny, i8 0, i64 64, i1 false)
  br label %pmix_obj_construct_tma.exit

bb.ds:                                            ; preds = %bb.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ny, ptr noundef nonnull readonly align 8 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !41
  br label %pmix_obj_construct_tma.exit

pmix_obj_construct_tma.exit:                      ; preds = %bb.dr, %bb.ds
  %i.nz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_buffer_t_class, i64 40), align 8, !tbaa !44 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !42 ; 2 uses
  %.not6.i = icmp eq ptr %i.oa, null
  br i1 %.not6.i, label %pmix_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %pmix_obj_construct_tma.exit, %.lr.ph.i
  %i.ob = phi ptr [ %i.od, %.lr.ph.i ], [ %i.oa, %pmix_obj_construct_tma.exit ]
  %.07.i = phi ptr [ %i.oc, %.lr.ph.i ], [ %i.nz, %pmix_obj_construct_tma.exit ]
  tail call void %i.ob(ptr noundef nonnull %i.nv) #15, !inline_history !299
  %i.oc = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !42 ; 2 uses
  %.not.i978 = icmp eq ptr %i.od, null
  br i1 %.not.i978, label %pmix_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !46

pmix_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %pmix_obj_construct_tma.exit
  %i.oe = getelementptr inbounds nuw [168 x i8], ptr %i.nq, i64 %.07921226 ; 5 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nv, i64 128 ; 4 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !300 ; 4 uses
  %i.oh = icmp eq ptr %i.og, null                 ; 2 uses
  br i1 %i.oh, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %pmix_obj_run_constructors.exit
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 120
  %i.oj = load i8, ptr %i.oi, align 8, !tbaa !302
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nv, i64 120
  store i8 %i.oj, ptr %i.ok, align 8, !tbaa !302
  br label %bb.dw

bb.du:                                            ; preds = %pmix_obj_run_constructors.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nv, i64 120
  %i.om = load i8, ptr %i.ol, align 8, !tbaa !302
  %i.on = getelementptr inbounds nuw i8, ptr %i.oe, i64 120
  %i.oo = load i8, ptr %i.on, align 8, !tbaa !302
  %.not.i979 = icmp eq i8 %i.om, %i.oo
  br i1 %.not.i979, label %bb.dw, label %bb.dv, !prof !71

bb.dv:                                            ; preds = %bb.du
  %i.op = tail call ptr @PMIx_Error_string(i32 noundef -27) #15
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %i.op, ptr noundef nonnull @.str.13, i32 noundef 124) #15
  br label %pmix_bfrops_base_tma_copy_payload.exit

bb.dw:                                            ; preds = %bb.du, %bb.dt
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oe, i64 160
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !303
  %i.os = icmp eq i64 %i.or, 0
  br i1 %i.os, label %pmix_bfrops_base_tma_copy_payload.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oe, i64 136
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !304 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oe, i64 144 ; 2 uses
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !305 ; 2 uses
  %i.ox = icmp eq ptr %i.ou, %i.ow
  br i1 %i.ox, label %pmix_bfrops_base_tma_copy_payload.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.oy = ptrtoint ptr %i.ou to i64
  %i.oz = ptrtoint ptr %i.ow to i64
  %i.pa = sub i64 %i.oy, %i.oz                    ; 5 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.nv, i64 152 ; 3 uses
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !306 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nv, i64 160 ; 4 uses
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !303 ; 2 uses
  %i.pf = sub i64 %i.pc, %i.pe
  %.not.i.i981 = icmp ult i64 %i.pf, %i.pa
  br i1 %.not.i.i981, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nv, i64 136
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !304
  br label %pmix_bfrops_base_tma_buffer_extend.exit.i

bb.ea:                                            ; preds = %bb.dy
  %i.pi = add i64 %i.pe, %i.pa                    ; 3 uses
  %i.pj = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_bfrops_globals, i64 288), align 8, !tbaa !307 ; 3 uses
  %.not54.i.i = icmp ult i64 %i.pi, %i.pj
  br i1 %.not54.i.i, label %bb.ec, label %bb.eb
end_hunk_1
begin_hunk_2_@pmix_bfrops_base_tma_copy_darray:bb.a
  br label %pmix_tma_malloc.exit1013

bb.gb:                                            ; preds = %bb.fz
  %i.vo = tail call noalias ptr @malloc(i64 noundef %i.h) #16
  br label %pmix_tma_malloc.exit1013

pmix_tma_malloc.exit1013:                         ; preds = %bb.ga, %bb.gb
  %.0.i1012 = phi ptr [ %i.vn, %bb.ga ], [ %i.vo, %bb.gb ] ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %.0.i1012, ptr %i.vp, align 8, !tbaa !15
  %i.vq = icmp eq ptr %.0.i1012, null
  br i1 %i.vq, label %pmix_tma_free.exit.thread, label %bb.gc, !prof !21

bb.gc:                                            ; preds = %pmix_tma_malloc.exit1013
  %i.vr = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.vs = load i64, ptr %i.g, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i1012, ptr align 1 %i.vr, i64 %i.vs, i1 false)
  br label %.sink.split

bb.gd:                                            ; preds = %bb.f
  %i.vt = shl i64 %i.h, 2                         ; 2 uses
  br i1 %.not.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.vu = load ptr, ptr %2, align 8, !tbaa !35
  %i.vv = tail call ptr %i.vu(ptr noundef nonnull %2, i64 noundef %i.vt) #15, !inline_history !59
  br label %pmix_tma_malloc.exit1016

bb.gf:                                            ; preds = %bb.gd
  %i.vw = tail call noalias ptr @malloc(i64 noundef %i.vt) #16
  br label %pmix_tma_malloc.exit1016

pmix_tma_malloc.exit1016:                         ; preds = %bb.ge, %bb.gf
  %.0.i1015 = phi ptr [ %i.vv, %bb.ge ], [ %i.vw, %bb.gf ] ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %.0.i1015, ptr %i.vx, align 8, !tbaa !15
  %i.vy = icmp eq ptr %.0.i1015, null
  br i1 %i.vy, label %pmix_tma_free.exit.thread, label %bb.gg, !prof !21

bb.gg:                                            ; preds = %pmix_tma_malloc.exit1016
  %i.vz = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.wa = load i64, ptr %i.g, align 8, !tbaa !19
  %i.wb = shl i64 %i.wa, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i1015, ptr align 1 %i.vz, i64 %i.wb, i1 false)
  br label %.sink.split

bb.gh:                                            ; preds = %bb.f
  %i.wc = tail call fastcc ptr @pmix_bfrops_base_tma_proc_info_create(i64 noundef %i.h, ptr noundef %2) ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.wc, ptr %i.wd, align 8, !tbaa !15
  %i.we = icmp eq ptr %i.wc, null
  br i1 %i.we, label %pmix_tma_free.exit.thread, label %bb.gi, !prof !21

bb.gi:                                            ; preds = %bb.gh
  %i.wf = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.wg = load i64, ptr %i.g, align 8, !tbaa !19
  %.not1262 = icmp eq i64 %i.wg, 0
  br i1 %.not1262, label %.sink.split, label %.lr.ph1215

.lr.ph1215:                                       ; preds = %bb.gi
  %i.wh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.gj

bb.gj:                                            ; preds = %.lr.ph1215, %pmix_tma_strdup.exit1022
  %.07881213 = phi i64 [ 0, %.lr.ph1215 ], [ %i.xc, %pmix_tma_strdup.exit1022 ] ; 3 uses
  %i.wi = getelementptr inbounds nuw [296 x i8], ptr %i.wc, i64 %.07881213 ; 5 uses
  %i.wj = getelementptr inbounds nuw [296 x i8], ptr %i.wf, i64 %.07881213 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(260) %i.wi, ptr noundef nonnull align 8 dereferenceable(260) %i.wj, i64 260, i1 false)
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 264
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !150 ; 3 uses
  %.not893 = icmp eq ptr %i.wl, null
  br i1 %.not893, label %pmix_tma_strdup.exit1019, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  br i1 %.not.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.wm = load ptr, ptr %i.wh, align 8, !tbaa !121
  %i.wn = tail call ptr %i.wm(ptr noundef nonnull %2, ptr noundef nonnull %i.wl) #15, !inline_history !142
  br label %pmix_tma_strdup.exit1019

bb.gm:                                            ; preds = %bb.gk
  %i.wo = tail call noalias ptr @strdup(ptr noundef nonnull %i.wl) #15
  br label %pmix_tma_strdup.exit1019

pmix_tma_strdup.exit1019:                         ; preds = %bb.gj, %bb.gm, %bb.gl
  %.sink = phi ptr [ %i.wo, %bb.gm ], [ %i.wn, %bb.gl ], [ null, %bb.gj ]
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wi, i64 264
  store ptr %.sink, ptr %i.wp, align 8, !tbaa !150
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wj, i64 272
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !152 ; 3 uses
  %.not894 = icmp eq ptr %i.wr, null
  br i1 %.not894, label %pmix_tma_strdup.exit1022, label %bb.gn

bb.gn:                                            ; preds = %pmix_tma_strdup.exit1019
  br i1 %.not.i, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ws = load ptr, ptr %i.wh, align 8, !tbaa !121
  %i.wt = tail call ptr %i.ws(ptr noundef nonnull %2, ptr noundef nonnull %i.wr) #15, !inline_history !142
  br label %pmix_tma_strdup.exit1022

bb.gp:                                            ; preds = %bb.gn
  %i.wu = tail call noalias ptr @strdup(ptr noundef nonnull %i.wr) #15
  br label %pmix_tma_strdup.exit1022

pmix_tma_strdup.exit1022:                         ; preds = %pmix_tma_strdup.exit1019, %bb.gp, %bb.go
  %.sink1471 = phi ptr [ %i.wu, %bb.gp ], [ %i.wt, %bb.go ], [ null, %pmix_tma_strdup.exit1019 ]
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wi, i64 272
  store ptr %.sink1471, ptr %i.wv, align 8, !tbaa !152
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wj, i64 280
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wi, i64 280
  %i.wy = load <2 x i32>, ptr %i.ww, align 8, !tbaa !37
  store <2 x i32> %i.wy, ptr %i.wx, align 8, !tbaa !37
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wj, i64 288
  %i.xa = load i8, ptr %i.wz, align 8, !tbaa !323
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wi, i64 288
  store i8 %i.xa, ptr %i.xb, align 8, !tbaa !323
  %i.xc = add nuw i64 %.07881213, 1               ; 2 uses
  %i.xd = load i64, ptr %i.g, align 8, !tbaa !19
  %i.xe = icmp ult i64 %i.xc, %i.xd
  br i1 %i.xe, label %bb.gj, label %.sink.split, !llvm.loop !324

bb.gq:                                            ; preds = %bb.f
  %i.xf = tail call fastcc ptr @pmix_bfrops_base_tma_query_create(i64 noundef %i.h, ptr noundef %2) ; 6 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.xf, ptr %i.xg, align 8, !tbaa !15
  %i.xh = icmp eq ptr %i.xf, null
  br i1 %i.xh, label %pmix_tma_free.exit.thread, label %bb.gr, !prof !21

bb.gr:                                            ; preds = %bb.gq
  %i.xi = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.xj = load i64, ptr %i.g, align 8, !tbaa !19
  %.not1260 = icmp eq i64 %i.xj, 0
  br i1 %.not1260, label %.sink.split, label %.lr.ph1212

.lr.ph1212:                                       ; preds = %bb.gr, %bb.he
  %.07871209 = phi i64 [ %i.aaf, %bb.he ], [ 0, %bb.gr ] ; 6 uses
  %i.xk = getelementptr inbounds nuw [24 x i8], ptr %i.xi, i64 %.07871209 ; 3 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !250 ; 2 uses
  %.not890 = icmp eq ptr %i.xl, null
  br i1 %.not890, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph1212
  %i.xm = tail call fastcc ptr @pmix_bfrops_base_tma_argv_copy(ptr noundef nonnull %i.xl, ptr noundef %2)
  %i.xn = getelementptr inbounds nuw [24 x i8], ptr %i.xf, i64 %.07871209
  store ptr %i.xm, ptr %i.xn, align 8, !tbaa !250
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %.lr.ph1212
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xk, i64 8 ; 2 uses
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !255
  %.not891 = icmp eq ptr %i.xp, null
  br i1 %.not891, label %bb.hd, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xk, i64 16 ; 3 uses
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !256 ; 5 uses
  %.not892 = icmp eq i64 %i.xr, 0
  br i1 %.not892, label %bb.hd, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.xs = mul i64 %i.xr, 552                      ; 2 uses
  br i1 %.not.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.xt = load ptr, ptr %2, align 8, !tbaa !35
  %i.xu = tail call ptr %i.xt(ptr noundef nonnull %2, i64 noundef %i.xs) #15, !inline_history !20
  br label %pmix_tma_malloc.exit.i1024

bb.gx:                                            ; preds = %bb.gv
  %i.xv = tail call noalias ptr @malloc(i64 noundef %i.xs) #16
  br label %pmix_tma_malloc.exit.i1024

pmix_tma_malloc.exit.i1024:                       ; preds = %bb.gx, %bb.gw
  %.0.i.i1025 = phi ptr [ %i.xu, %bb.gw ], [ %i.xv, %bb.gx ] ; 7 uses
  %i.xw = icmp eq ptr %.0.i.i1025, null
  br i1 %i.xw, label %pmix_bfrops_base_tma_info_create.exit1030.thread, label %.preheader.i1026.preheader, !prof !21

.preheader.i1026.preheader:                       ; preds = %pmix_tma_malloc.exit.i1024
  %xtraiter = and i64 %i.xr, 3                    ; 3 uses
  %i.xx = icmp ult i64 %i.xr, 4
  br i1 %i.xx, label %.preheader.i1026.epil.preheader, label %.preheader.i1026.preheader.new

.preheader.i1026.preheader.new:                   ; preds = %.preheader.i1026.preheader
  %unroll_iter = and i64 %i.xr, -4
  br label %.preheader.i1026

pmix_bfrops_base_tma_info_create.exit1030.thread: ; preds = %pmix_tma_malloc.exit.i1024
  %i.xy = getelementptr inbounds nuw [24 x i8], ptr %i.xf, i64 %.07871209
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 8
  store ptr null, ptr %i.xz, align 8, !tbaa !255
  br label %pmix_tma_free.exit.thread

.preheader.i1026:                                 ; preds = %.preheader.i1026, %.preheader.i1026.preheader.new
  %.014.i1027 = phi i64 [ 0, %.preheader.i1026.preheader.new ], [ %i.yl, %.preheader.i1026 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i1026.preheader.new ], [ %niter.next.3, %.preheader.i1026 ]
  %i.ya = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i1025, i64 %.014.i1027 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yb, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.ya, i8 0, i64 516, i1 false)
  %i.yc = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i1025, i64 %.014.i1027 ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 552
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 1072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ye, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.yd, i8 0, i64 516, i1 false)
  %i.yf = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i1025, i64 %.014.i1027 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 1104
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yf, i64 1624
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yh, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.yg, i8 0, i64 516, i1 false)
  %i.yi = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i1025, i64 %.014.i1027 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 1656
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 2176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yk, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.yj, i8 0, i64 516, i1 false)
  %i.yl = add nuw i64 %.014.i1027, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %pmix_bfrops_base_tma_info_create.exit1030.unr-lcssa, label %.preheader.i1026, !llvm.loop !22

pmix_bfrops_base_tma_info_create.exit1030.unr-lcssa: ; preds = %.preheader.i1026
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pmix_bfrops_base_tma_info_create.exit1030, label %.preheader.i1026.epil.preheader

.preheader.i1026.epil.preheader:                  ; preds = %pmix_bfrops_base_tma_info_create.exit1030.unr-lcssa, %.preheader.i1026.preheader
  %.014.i1027.epil.init = phi i64 [ 0, %.preheader.i1026.preheader ], [ %i.yl, %pmix_bfrops_base_tma_info_create.exit1030.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %.preheader.i1026.epil

.preheader.i1026.epil:                            ; preds = %.preheader.i1026.epil, %.preheader.i1026.epil.preheader
  %.014.i1027.epil = phi i64 [ %i.yo, %.preheader.i1026.epil ], [ %.014.i1027.epil.init, %.preheader.i1026.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i1026.epil ], [ 0, %.preheader.i1026.epil.preheader ]
  %i.ym = getelementptr inbounds nuw [552 x i8], ptr %.0.i.i1025, i64 %.014.i1027.epil ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yn, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(516) %i.ym, i8 0, i64 516, i1 false)
  %i.yo = add nuw i64 %.014.i1027.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %pmix_bfrops_base_tma_info_create.exit1030, label %.preheader.i1026.epil, !llvm.loop !325

pmix_bfrops_base_tma_info_create.exit1030:        ; preds = %.preheader.i1026.epil, %pmix_bfrops_base_tma_info_create.exit1030.unr-lcssa
  %i.yp = getelementptr inbounds nuw [24 x i8], ptr %i.xf, i64 %.07871209 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8 ; 2 uses
  store ptr %.0.i.i1025, ptr %i.yq, align 8, !tbaa !255
  %i.yr = load i64, ptr %i.xq, align 8, !tbaa !256
  %.not1261 = icmp eq i64 %i.yr, 0
  br i1 %.not1261, label %._crit_edge, label %.lr.ph1208

._crit_edge:                                      ; preds = %pmix_bfrops_base_tma_info_xfer.exit1041, %pmix_bfrops_base_tma_info_create.exit1030
  %.lcssa1179 = phi i64 [ 0, %pmix_bfrops_base_tma_info_create.exit1030 ], [ %i.aab, %pmix_bfrops_base_tma_info_xfer.exit1041 ]
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  store i64 %.lcssa1179, ptr %i.ys, align 8, !tbaa !256
  br label %bb.he

.lr.ph1208:                                       ; preds = %pmix_bfrops_base_tma_info_create.exit1030, %pmix_bfrops_base_tma_info_xfer.exit1041
  %.07861207 = phi i64 [ %i.aaa, %pmix_bfrops_base_tma_info_xfer.exit1041 ], [ 0, %pmix_bfrops_base_tma_info_create.exit1030 ] ; 3 uses
  %i.yt = load ptr, ptr %i.yq, align 8, !tbaa !255 ; 2 uses
  %i.yu = getelementptr inbounds nuw [552 x i8], ptr %i.yt, i64 %.07861207 ; 4 uses
  %i.yv = load ptr, ptr %i.xo, align 8, !tbaa !255 ; 2 uses
  %i.yw = getelementptr inbounds nuw [552 x i8], ptr %i.yv, i64 %.07861207 ; 3 uses
  %i.yx = icmp eq ptr %i.yt, null
  %i.yy = icmp eq ptr %i.yv, null
  %i.yz = or i1 %i.yx, %i.yy
  br i1 %i.yz, label %pmix_bfrops_base_tma_info_xfer.exit1041, label %bb.gy, !prof !21

bb.gy:                                            ; preds = %.lr.ph1208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %i.yu, i8 0, i64 512, i1 false)
  br label %.preheader.i.i1032

.preheader.i.i1032:                               ; preds = %bb.ha, %bb.gy
  %.012.i.i.i1033 = phi i64 [ 0, %bb.gy ], [ %i.zo, %bb.ha ] ; 2 uses
  %.0811.i.i.i1034 = phi ptr [ %i.yu, %bb.gy ], [ %i.zq, %bb.ha ] ; 8 uses
  %.0910.i.i.i1035 = phi ptr [ %i.yw, %bb.gy ], [ %i.zp, %bb.ha ] ; 5 uses
  %i.za = load i8, ptr %.0910.i.i.i1035, align 1, !tbaa !14 ; 2 uses
  store i8 %i.za, ptr %.0811.i.i.i1034, align 1, !tbaa !14
  %i.zb = icmp eq i8 %i.za, 0
  br i1 %i.zb, label %pmix_strncpy.exit.i.i1037, label %.preheader.i.i1032.1

.preheader.i.i1032.1:                             ; preds = %.preheader.i.i1032
  %i.zc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i1035, i64 1
  %i.zd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i1034, i64 1
  %i.ze = load i8, ptr %i.zc, align 1, !tbaa !14  ; 2 uses
  store i8 %i.ze, ptr %i.zd, align 1, !tbaa !14
  %i.zf = icmp eq i8 %i.ze, 0
  br i1 %i.zf, label %pmix_strncpy.exit.i.i1037.split.loop.exit122, label %.preheader.i.i1032.2

.preheader.i.i1032.2:                             ; preds = %.preheader.i.i1032.1
  %i.zg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i1035, i64 2
  %i.zh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i1034, i64 2
  %i.zi = load i8, ptr %i.zg, align 1, !tbaa !14  ; 2 uses
  store i8 %i.zi, ptr %i.zh, align 1, !tbaa !14
  %i.zj = icmp eq i8 %i.zi, 0
  br i1 %i.zj, label %pmix_strncpy.exit.i.i1037.split.loop.exit120, label %bb.gz

bb.gz:                                            ; preds = %.preheader.i.i1032.2
  %i.zk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i1034, i64 3 ; 3 uses
  %exitcond.not.i.i.i1036.2 = icmp eq i64 %.012.i.i.i1033, 508
  br i1 %exitcond.not.i.i.i1036.2, label %pmix_strncpy.exit.i.i1037, label %.preheader.i.i1032.3

.preheader.i.i1032.3:                             ; preds = %bb.gz
  %i.zl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i1035, i64 3
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !14  ; 2 uses
  store i8 %i.zm, ptr %i.zk, align 1, !tbaa !14
  %i.zn = icmp eq i8 %i.zm, 0
  br i1 %i.zn, label %pmix_strncpy.exit.i.i1037, label %bb.ha

bb.ha:                                            ; preds = %.preheader.i.i1032.3
  %i.zo = add nuw nsw i64 %.012.i.i.i1033, 4
  %i.zp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i1035, i64 4
  %i.zq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i1034, i64 4
  br label %.preheader.i.i1032

pmix_strncpy.exit.i.i1037.split.loop.exit120:     ; preds = %.preheader.i.i1032.2
  %i.zr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i1034, i64 2
  br label %pmix_strncpy.exit.i.i1037

pmix_strncpy.exit.i.i1037.split.loop.exit122:     ; preds = %.preheader.i.i1032.1
  %i.zs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i1034, i64 1
  br label %pmix_strncpy.exit.i.i1037

pmix_strncpy.exit.i.i1037:                        ; preds = %.preheader.i.i1032, %bb.gz, %.preheader.i.i1032.3, %pmix_strncpy.exit.i.i1037.split.loop.exit122, %pmix_strncpy.exit.i.i1037.split.loop.exit120
  %.08.lcssa.i.i.i1038 = phi ptr [ %i.zs, %pmix_strncpy.exit.i.i1037.split.loop.exit122 ], [ %i.zk, %bb.gz ], [ %i.zr, %pmix_strncpy.exit.i.i1037.split.loop.exit120 ], [ %i.zk, %.preheader.i.i1032.3 ], [ %.0811.i.i.i1034, %.preheader.i.i1032 ]
  store i8 0, ptr %.08.lcssa.i.i.i1038, align 1, !tbaa !14
  %i.zt = getelementptr inbounds nuw i8, ptr %i.yw, i64 512
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !26 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yu, i64 512
  store i32 %i.zu, ptr %i.zv, align 8, !tbaa !26
  %i.zw = and i32 %i.zu, 16
  %.not1149 = icmp eq i32 %i.zw, 0
  %i.zx = getelementptr inbounds nuw i8, ptr %i.yu, i64 520 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.yw, i64 520 ; 2 uses
  br i1 %.not1149, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %pmix_strncpy.exit.i.i1037
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zx, ptr noundef nonnull align 8 dereferenceable(32) %i.zy, i64 32, i1 false)
  br label %pmix_bfrops_base_tma_info_xfer.exit1041

bb.hc:                                            ; preds = %pmix_strncpy.exit.i.i1037
  %i.zz = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef nonnull %i.zx, ptr noundef nonnull %i.zy, ptr noundef %2), !inline_history !29 ; 0 uses
  br label %pmix_bfrops_base_tma_info_xfer.exit1041

pmix_bfrops_base_tma_info_xfer.exit1041:          ; preds = %.lr.ph1208, %bb.hb, %bb.hc
  %i.aaa = add nuw i64 %.07861207, 1              ; 2 uses
  %i.aab = load i64, ptr %i.xq, align 8, !tbaa !256 ; 2 uses
  %i.aac = icmp ult i64 %i.aaa, %i.aab
  br i1 %i.aac, label %.lr.ph1208, label %._crit_edge, !llvm.loop !326

bb.hd:                                            ; preds = %bb.gu, %bb.gt
  %i.aad = getelementptr inbounds nuw [24 x i8], ptr %i.xf, i64 %.07871209
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aae, i8 0, i64 16, i1 false)
  br label %bb.he

bb.he:                                            ; preds = %._crit_edge, %bb.hd
  %i.aaf = add nuw i64 %.07871209, 1              ; 2 uses
  %i.aag = load i64, ptr %i.g, align 8, !tbaa !19
  %i.aah = icmp ult i64 %i.aaf, %i.aag
  br i1 %i.aah, label %.lr.ph1212, label %.sink.split, !llvm.loop !327

bb.hf:                                            ; preds = %bb.f
  %i.aai = tail call fastcc ptr @pmix_bfrops_base_tma_envar_create(i64 noundef %i.h, ptr noundef %2) ; 5 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.aai, ptr %i.aaj, align 8, !tbaa !15
  %i.aak = icmp eq ptr %i.aai, null
  br i1 %i.aak, label %pmix_tma_free.exit.thread, label %bb.hg, !prof !21

bb.hg:                                            ; preds = %bb.hf
  %i.aal = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.aam = load i64, ptr %i.g, align 8, !tbaa !19
  %.not1259 = icmp eq i64 %i.aam, 0
  br i1 %.not1259, label %.sink.split, label %.lr.ph1206

.lr.ph1206:                                       ; preds = %bb.hg
  %i.aan = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  br label %bb.hh

bb.hh:                                            ; preds = %.lr.ph1206, %bb.hp
  %.07851205 = phi i64 [ 0, %.lr.ph1206 ], [ %i.abf, %bb.hp ] ; 5 uses
  %i.aao = getelementptr inbounds nuw [24 x i8], ptr %i.aal, i64 %.07851205 ; 3 uses
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !260 ; 3 uses
  %.not888 = icmp eq ptr %i.aap, null
  br i1 %.not888, label %bb.hl, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  br i1 %.not.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aaq = load ptr, ptr %i.aan, align 8, !tbaa !121
  %i.aar = tail call ptr %i.aaq(ptr noundef nonnull %2, ptr noundef nonnull %i.aap) #15, !inline_history !142
  br label %pmix_tma_strdup.exit1044

bb.hk:                                            ; preds = %bb.hi
  %i.aas = tail call noalias ptr @strdup(ptr noundef nonnull %i.aap) #15
  br label %pmix_tma_strdup.exit1044

pmix_tma_strdup.exit1044:                         ; preds = %bb.hj, %bb.hk
  %.0.i1043 = phi ptr [ %i.aar, %bb.hj ], [ %i.aas, %bb.hk ]
  %i.aat = getelementptr inbounds nuw [24 x i8], ptr %i.aai, i64 %.07851205
  store ptr %.0.i1043, ptr %i.aat, align 8, !tbaa !260
  br label %bb.hl

bb.hl:                                            ; preds = %pmix_tma_strdup.exit1044, %bb.hh
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !262 ; 3 uses
  %.not889 = icmp eq ptr %i.aav, null
  br i1 %.not889, label %bb.hp, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  br i1 %.not.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aaw = load ptr, ptr %i.aan, align 8, !tbaa !121
  %i.aax = tail call ptr %i.aaw(ptr noundef nonnull %2, ptr noundef nonnull %i.aav) #15, !inline_history !142
  br label %pmix_tma_strdup.exit1047

bb.ho:                                            ; preds = %bb.hm
  %i.aay = tail call noalias ptr @strdup(ptr noundef nonnull %i.aav) #15
  br label %pmix_tma_strdup.exit1047

pmix_tma_strdup.exit1047:                         ; preds = %bb.hn, %bb.ho
  %.0.i1046 = phi ptr [ %i.aax, %bb.hn ], [ %i.aay, %bb.ho ]
  %i.aaz = getelementptr inbounds nuw [24 x i8], ptr %i.aai, i64 %.07851205
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  store ptr %.0.i1046, ptr %i.aba, align 8, !tbaa !262
  br label %bb.hp

bb.hp:                                            ; preds = %pmix_tma_strdup.exit1047, %bb.hl
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.abc = load i8, ptr %i.abb, align 8, !tbaa !328
  %i.abd = getelementptr inbounds nuw [24 x i8], ptr %i.aai, i64 %.07851205
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  store i8 %i.abc, ptr %i.abe, align 8, !tbaa !328
  %i.abf = add nuw i64 %.07851205, 1              ; 2 uses
  %i.abg = load i64, ptr %i.g, align 8, !tbaa !19
  %i.abh = icmp ult i64 %i.abf, %i.abg
end_hunk_2
