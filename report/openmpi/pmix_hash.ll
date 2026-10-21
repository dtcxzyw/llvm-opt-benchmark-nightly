Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/pmix_hash?download=true
inline.NumInlined: 370
inline.NumDeleted: 82
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pmix_mca_base_framework_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.pmix_list_t, %struct.pmix_list_t }
%struct.pmix_list_t = type { %struct.pmix_object_t, %struct.pmix_list_item_t, i64 }
%struct.pmix_object_t = type { %union.pthread_mutex_t, ptr, i32, %struct.pmix_tma }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.pmix_tma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmix_list_item_t = type { %struct.pmix_object_t, ptr, ptr, i32 }
%struct.pmix_output_desc_t = type { i8, i8, i32, i8, i32, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, ptr, i32, i32 }
%struct.pmix_globals_t = type { i32, %struct.pmix_proc, %struct.pmix_value, %struct.pmix_value, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.pmix_events_t, i8, i8, %struct.timeval, %struct.pmix_list_t, %struct.pmix_pointer_array_t, i32, i32, %struct.pmix_hotel_t, i8, %struct.pmix_list_t, i8, i8, i8, i64, %struct.pmix_list_t, %struct.pmix_topology_t, %struct.pmix_cpuset_t, i8, i8, %struct.pmix_iof_flags_t, %struct.pmix_keyindex_t }
%struct.pmix_proc = type { [256 x i8], i32 }
%struct.pmix_value = type { i16, %union.anon }
%union.anon = type { %struct.pmix_envar_t }
%struct.pmix_envar_t = type { ptr, ptr, i8 }
%struct.pmix_events_t = type { %struct.pmix_object_t, i64, ptr, ptr, %struct.pmix_list_t, %struct.pmix_list_t, %struct.pmix_list_t, %struct.pmix_list_t }
%struct.timeval = type { i64, i64 }
%struct.pmix_pointer_array_t = type { %struct.pmix_object_t, i32, i32, i32, i32, i32, ptr, ptr }
%struct.pmix_hotel_t = type { %struct.pmix_object_t, i32, ptr, %struct.timeval, ptr, ptr, ptr, ptr, i32 }
%struct.pmix_topology_t = type { ptr, ptr }
%struct.pmix_cpuset_t = type { ptr, ptr }
%struct.pmix_iof_flags_t = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i8, i8, i8, i8, i8, i8 }
%struct.pmix_keyindex_t = type { %struct.pmix_object_t, ptr, i32 }
%struct.pmix_preg_module_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmix_class_t = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }
%struct.pmix_bfrops_globals_t = type { %struct.pmix_list_t, i8, i8, i64, i64, i8 }

@pmix_gds_base_framework = external local_unnamed_addr global %struct.pmix_mca_base_framework_t, align 8
@pmix_output_info = external local_unnamed_addr global [0 x %struct.pmix_output_desc_t], align 8
@.str = private unnamed_addr constant [43 x i8] c"%s HASH:STORE:QUAL table %s rank %s key %s\00", align 1
@pmix_globals = external global %struct.pmix_globals_t, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"NULL KVAL\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s UNKNOWN KEY: %s\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"%s PREEXISTING ENTRY FOR PROC %s KEY %s: %s\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"EQUAL VALUE - IGNORING\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s KEY %s VALUE UPDATING TO: %s\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"PMIX ERROR: %s in file %s at line %d\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"pmix_hash.c\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"%s ADDING KEY %s VALUE %s FOR RANK %s WITH %u QUALS TO TABLE %s\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"%s HASH:FETCH table %s id %s key %s\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"HASH:FETCH[%s:%d] proc data for rank %s not found\00", align 1
@__func__.pmix_hash_fetch = private unnamed_addr constant [16 x i8] c"pmix_hash_fetch\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"HASH:FETCH[%s:%d] proc data for rank %s not found - key %s\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"%s FETCH NULL LOOKING AT %s\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"%s INCLUDE %s VALUE %s FROM TABLE %s FOR RANK %s\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"pmix.qual.val\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"HASH:FETCH data for key %s not found\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"%s:%d HASH:FETCH data for key %s not found\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"USER DEFINED\00", align 1
@pmix_preg = external local_unnamed_addr global %struct.pmix_preg_module_t, align 8
@.str.20 = private unnamed_addr constant [37 x i8] c"PMIX-XFER-VALUE: UNSUPPORTED TYPE %d\00", align 1
@pmix_class_init_epoch = external local_unnamed_addr global i32, align 4
@pmix_buffer_t_class = external global %struct.pmix_class_t, align 8
@.str.21 = private unnamed_addr constant [85 x i8] c"/opt-bench/work/openmpi/ompi/3rd-party/openpmix/src/mca/bfrops/base/bfrop_base_tma.h\00", align 1
@pmix_bfrops_globals = external local_unnamed_addr global %struct.pmix_bfrops_globals_t, align 8
@pmix_kval_t_class = external global %struct.pmix_class_t, align 8
@.str.22 = private unnamed_addr constant [21 x i8] c"pthread_mutex_lock()\00", align 1
@pmix_proc_data_t_class = internal global %struct.pmix_class_t { ptr @.str.23, ptr @pmix_object_t_class, ptr @pdcon, ptr @pddes, i32 0, i32 0, ptr null, ptr null, i64 136 }, align 8
@.str.23 = private unnamed_addr constant [17 x i8] c"pmix_proc_data_t\00", align 1
@pmix_object_t_class = external global %struct.pmix_class_t, align 8
@pmix_pointer_array_t_class = external global %struct.pmix_class_t, align 8

; Function Attrs: nounwind uwtable
define noundef i32 @pmix_hash_store(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %.not.i = icmp eq ptr %i.b, null                ; 6 uses
  %..i = select i1 %.not.i, ptr null, ptr %i.a    ; 9 uses
  %.not.i158 = icmp eq ptr %5, null
  %i.c = select i1 %.not.i158, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 2944), ptr %5 ; 4 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_base_framework, i64 76), align 4, !tbaa !61 ; 3 uses
  %or.cond = icmp ult i32 %i.d, 64
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64
  %i.i = icmp sgt i32 %i.h, 9
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %spec.select = select i1 %i.m, ptr @.str.1, ptr %i.l
  %i.n = tail call ptr @pmix_util_print_rank(i32 noundef %1) #16
  %i.o = icmp eq ptr %2, null
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ @.str.2, %bb.c ]
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.d, ptr noundef nonnull @.str, ptr noundef %i.j, ptr noundef nonnull %spec.select, ptr noundef %i.n, ptr noundef %i.r) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.s = icmp eq ptr %2, null
  br i1 %i.s, label %bb.ax, label %bb.g, !prof !72

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 6 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.v = tail call ptr @pmix_hash_lookup_key(i32 noundef -1, ptr noundef %i.u, ptr noundef nonnull %i.c) ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.k, !prof !72

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_base_framework, i64 76), align 4, !tbaa !61 ; 3 uses
  %or.cond3 = icmp ult i32 %i.x, 64
  br i1 %or.cond3, label %bb.i, label %bb.ax

bb.i:                                             ; preds = %bb.h
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !64
  %i.ac = icmp sgt i32 %i.ab, 9
  br i1 %i.ac, label %bb.j, label %bb.ax

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #16
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !71
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.x, ptr noundef nonnull @.str.3, ptr noundef %i.ad, ptr noundef %i.ae) #16
  br label %bb.ax

bb.k:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.v, align 8, !tbaa !76  ; 2 uses
  %i.ag = tail call fastcc ptr @lookup_proc(ptr noundef nonnull %0, i32 noundef %1, i1 noundef zeroext true) ; 7 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.ax, label %bb.l, !prof !72

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call fastcc ptr @lookup_keyval(ptr noundef %i.ag, i32 noundef %i.af, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.c) ; 3 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_base_framework, i64 76), align 4, !tbaa !61
  %i.ak = tail call i32 @pmix_output_get_verbosity(i32 noundef %i.aj) #16
  %i.al = icmp sgt i32 %i.ak, 9
  br i1 %i.al, label %bb.n, label %bb.o, !prof !72

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !78
  %i.ao = tail call ptr @PMIx_Value_string(ptr noundef %i.an) #16 ; 2 uses
  %i.ap = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #16
  %i.aq = tail call ptr @pmix_util_print_rank(i32 noundef %1) #16
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !71
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.ao) #16
  tail call void @free(ptr noundef %i.ao) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !78 ; 2 uses
  %.not153 = icmp eq ptr %i.at, null
  br i1 %.not153, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.aw = tail call i32 @PMIx_Value_compare(ptr noundef nonnull %i.at, ptr noundef %i.av) #16
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_base_framework, i64 76), align 4, !tbaa !61 ; 4 uses
  br i1 %i.ax, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %or.cond5 = icmp ult i32 %i.ay, 64
  br i1 %or.cond5, label %bb.r, label %bb.ax

bb.r:                                             ; preds = %bb.q
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !64
  %i.bd = icmp sgt i32 %i.bc, 9
  br i1 %i.bd, label %bb.s, label %bb.ax

bb.s:                                             ; preds = %bb.r
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ay, ptr noundef nonnull @.str.5) #16
  br label %bb.ax

bb.t:                                             ; preds = %bb.p
  %i.be = tail call i32 @pmix_output_get_verbosity(i32 noundef %i.ay) #16
  %i.bf = icmp sgt i32 %i.be, 9
  br i1 %i.bf, label %bb.u, label %bb.v, !prof !72

bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !79
  %i.bh = tail call ptr @PMIx_Value_string(ptr noundef %i.bg) #16 ; 2 uses
  %i.bi = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #16
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !71
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef %i.bi, ptr noundef %i.bj, ptr noundef %i.bh) #16
  tail call void @free(ptr noundef %i.bh) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bk = load ptr, ptr %i.as, align 8, !tbaa !80
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef %i.bk, ptr noundef %..i)
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !80 ; 2 uses
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !81
  tail call void %i.bn(ptr noundef nonnull %i.a, ptr noundef %i.bl) #16, !inline_history !0
  br label %pmix_bfrops_base_tma_value_release.exit

bb.x:                                             ; preds = %bb.v
  tail call void @free(ptr noundef %i.bl) #16
  br label %pmix_bfrops_base_tma_value_release.exit

pmix_bfrops_base_tma_value_release.exit:          ; preds = %bb.w, %bb.x
  store ptr null, ptr %i.as, align 8, !tbaa !80
  br label %bb.y

bb.y:                                             ; preds = %pmix_bfrops_base_tma_value_release.exit, %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !79 ; 2 uses
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.br = tail call ptr %i.bq(ptr noundef nonnull %i.a, i64 noundef 32) #16, !inline_history !207
  br label %pmix_tma_malloc.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.bs = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #17
  br label %pmix_tma_malloc.exit.i

pmix_tma_malloc.exit.i:                           ; preds = %bb.aa, %bb.z
  %.0.i.i = phi ptr [ %i.br, %bb.z ], [ %i.bs, %bb.aa ] ; 4 uses
  store ptr %.0.i.i, ptr %i.as, align 8, !tbaa !80
  %i.bt = icmp eq ptr %.0.i.i, null
  br i1 %i.bt, label %pmix_bfrops_base_tma_copy_value.exit.thread, label %pmix_bfrops_base_tma_copy_value.exit, !prof !72

pmix_bfrops_base_tma_copy_value.exit:             ; preds = %pmix_tma_malloc.exit.i
  %i.bu = load i16, ptr %i.bp, align 8, !tbaa !84
  store i16 %i.bu, ptr %.0.i.i, align 8, !tbaa !84
  %i.bv = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef %.0.i.i, ptr noundef nonnull readonly %i.bp, ptr noundef %..i) ; 4 uses
  switch i32 %i.bv, label %pmix_bfrops_base_tma_copy_value.exit.thread [
    i32 0, label %bb.ax
    i32 -2, label %bb.ax
  ], !prof !210

pmix_bfrops_base_tma_copy_value.exit.thread:      ; preds = %pmix_tma_malloc.exit.i, %pmix_bfrops_base_tma_copy_value.exit
  %.0.i173 = phi i32 [ %i.bv, %pmix_bfrops_base_tma_copy_value.exit ], [ -29, %pmix_tma_malloc.exit.i ] ; 2 uses
  %i.bw = tail call ptr @PMIx_Error_string(i32 noundef %.0.i173) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %i.bw, ptr noundef nonnull @.str.8, i32 noundef 205) #16
  br label %bb.ax

bb.ab:                                            ; preds = %bb.l
  %i.bx = tail call ptr @pmix_dstor_new_tma(i32 noundef %i.af, ptr noundef %..i) #16 ; 8 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ax, label %bb.ac, !prof !72

bb.ac:                                            ; preds = %bb.ab
  %.not146 = icmp eq ptr %3, null
  %.not194 = icmp eq i64 %4, 0
  %or.cond230 = or i1 %.not146, %.not194
  br i1 %or.cond230, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac, %.lr.ph
  %.0123188 = phi i64 [ %spec.select156, %.lr.ph ], [ 0, %bb.ac ]
  %.0124187 = phi i64 [ %i.cc, %.lr.ph ], [ 0, %bb.ac ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [552 x i8], ptr %3, i64 %.0124187
  %i.ca = tail call zeroext i1 @PMIx_Info_is_qualifier(ptr noundef nonnull %i.bz) #16
  %i.cb = zext i1 %i.ca to i64
  %spec.select156 = add i64 %.0123188, %i.cb      ; 5 uses
  %i.cc = add nuw i64 %.0124187, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !208

._crit_edge:                                      ; preds = %.lr.ph
  %.not147 = icmp eq i64 %spec.select156, 0
  br i1 %.not147, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.ce = tail call ptr %i.cd(ptr noundef nonnull %i.a, i64 noundef 24) #16, !inline_history !1
  %i.cf = shl i64 %spec.select156, 4
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.ch = tail call ptr %i.cg(ptr noundef nonnull %i.a, i64 noundef %i.cf) #16, !inline_history !1
  br label %.lr.ph191

bb.af:                                            ; preds = %bb.ad
  %i.ci = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #17
  %i.cj = shl i64 %spec.select156, 4
  %i.ck = tail call noalias ptr @malloc(i64 noundef %i.cj) #17
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.af, %bb.ae
  %.0.i160175 = phi ptr [ %i.ce, %bb.ae ], [ %i.ci, %bb.af ] ; 3 uses
  %.0.i162 = phi ptr [ %i.ch, %bb.ae ], [ %i.ck, %bb.af ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i160175, i64 16 ; 2 uses
  store ptr %.0.i162, ptr %i.cl, align 8, !tbaa !87
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i160175, i64 8
  store i64 %spec.select156, ptr %i.cm, align 8, !tbaa !88
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !91
  %i.cp = tail call i32 @pmix_pointer_array_add(ptr noundef %i.co, ptr noundef %.0.i160175) #16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 3 uses
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !92
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !87 ; 4 uses
  br i1 %.not.i, label %.lr.ph191.split.us, label %.lr.ph191.split

.lr.ph191.split.us:                               ; preds = %.lr.ph191, %bb.ai
  %.2190.us = phi i64 [ %.3.us, %bb.ai ], [ 0, %.lr.ph191 ] ; 3 uses
  %.1125189.us = phi i64 [ %i.dg, %bb.ai ], [ 0, %.lr.ph191 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [552 x i8], ptr %3, i64 %.1125189.us ; 3 uses
  %i.ct = tail call zeroext i1 @PMIx_Info_is_qualifier(ptr noundef nonnull %i.cs) #16
  br i1 %i.ct, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph191.split.us
  %i.cu = tail call ptr @pmix_hash_lookup_key(i32 noundef -1, ptr noundef nonnull %i.cs, ptr noundef nonnull %i.c) ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.split.us, label %pmix_tma_malloc.exit.i164.us, !prof !72

pmix_tma_malloc.exit.i164.us:                     ; preds = %bb.ag
  %i.cw = load i32, ptr %i.cu, align 8, !tbaa !76
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.1125189.us
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !94
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.2190.us
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #17 ; 4 uses
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !80
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %pmix_bfrops_base_tma_copy_value.exit167.thread, label %pmix_bfrops_base_tma_copy_value.exit167.us, !prof !72

pmix_bfrops_base_tma_copy_value.exit167.us:       ; preds = %pmix_tma_malloc.exit.i164.us
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 520 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 8, !tbaa !84
  store i16 %i.dd, ptr %i.da, align 8, !tbaa !84
  %i.de = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef %i.da, ptr noundef nonnull readonly %i.dc, ptr noundef %..i) ; 3 uses
  switch i32 %i.de, label %pmix_bfrops_base_tma_copy_value.exit167.thread [
    i32 0, label %bb.ah
    i32 -2, label %.loopexit183
  ], !prof !210

bb.ah:                                            ; preds = %pmix_bfrops_base_tma_copy_value.exit167.us
  %i.df = add i64 %.2190.us, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph191.split.us
  %.3.us = phi i64 [ %i.df, %bb.ah ], [ %.2190.us, %.lr.ph191.split.us ] ; 2 uses
  %i.dg = add nuw i64 %.1125189.us, 1             ; 2 uses
  %exitcond202.not = icmp eq i64 %i.dg, %4
  br i1 %exitcond202.not, label %.loopexit, label %.lr.ph191.split.us, !llvm.loop !209

.lr.ph191.split:                                  ; preds = %.lr.ph191, %bb.ao
  %.2190 = phi i64 [ %.3, %bb.ao ], [ 0, %.lr.ph191 ] ; 3 uses
  %.1125189 = phi i64 [ %i.eh, %bb.ao ], [ 0, %.lr.ph191 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [552 x i8], ptr %3, i64 %.1125189 ; 3 uses
  %i.di = tail call zeroext i1 @PMIx_Info_is_qualifier(ptr noundef nonnull %i.dh) #16
  br i1 %i.di, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %.lr.ph191.split
  %i.dj = tail call ptr @pmix_hash_lookup_key(i32 noundef -1, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.c) ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.split.us, label %pmix_tma_malloc.exit.i164, !prof !72

.split.us:                                        ; preds = %bb.aj, %bb.ag
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_base_framework, i64 76), align 4, !tbaa !61 ; 3 uses
  %or.cond7 = icmp ult i32 %i.dl, 64
  br i1 %or.cond7, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.split.us
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !64
  %i.dq = icmp sgt i32 %i.dp, 9
  br i1 %i.dq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dr = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #16
  %i.ds = load ptr, ptr %i.t, align 8, !tbaa !71
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.dl, ptr noundef nonnull @.str.3, ptr noundef %i.dr, ptr noundef %i.ds) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.split.us
  %i.dt = load i32, ptr %i.cq, align 4, !tbaa !92
  tail call fastcc void @erase_qualifiers(ptr noundef nonnull %i.ag, i32 noundef %i.dt)
  tail call void @pmix_dstor_release_tma(ptr noundef nonnull %i.bx, ptr noundef %..i) #16
  br label %bb.ax

pmix_tma_malloc.exit.i164:                        ; preds = %bb.aj
  %i.du = load i32, ptr %i.dj, align 8, !tbaa !76
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.1125189
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !94
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %.2190
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.dz = tail call ptr %i.dy(ptr noundef nonnull %i.a, i64 noundef 32) #16, !inline_history !207 ; 4 uses
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !80
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %pmix_bfrops_base_tma_copy_value.exit167.thread, label %pmix_bfrops_base_tma_copy_value.exit167, !prof !72

pmix_bfrops_base_tma_copy_value.exit167:          ; preds = %pmix_tma_malloc.exit.i164
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dh, i64 520 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 8, !tbaa !84
  store i16 %i.ec, ptr %i.dz, align 8, !tbaa !84
  %i.ed = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef %i.dz, ptr noundef nonnull readonly %i.eb, ptr noundef %..i) ; 3 uses
  switch i32 %i.ed, label %pmix_bfrops_base_tma_copy_value.exit167.thread [
    i32 0, label %bb.an
    i32 -2, label %.loopexit183
  ], !prof !210

pmix_bfrops_base_tma_copy_value.exit167.thread:   ; preds = %pmix_bfrops_base_tma_copy_value.exit167, %pmix_tma_malloc.exit.i164, %pmix_tma_malloc.exit.i164.us, %pmix_bfrops_base_tma_copy_value.exit167.us
  %.us-phi = phi i32 [ -29, %pmix_tma_malloc.exit.i164.us ], [ %i.de, %pmix_bfrops_base_tma_copy_value.exit167.us ], [ %i.ed, %pmix_bfrops_base_tma_copy_value.exit167 ], [ -29, %pmix_tma_malloc.exit.i164 ] ; 2 uses
  %i.ee = tail call ptr @PMIx_Error_string(i32 noundef %.us-phi) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %i.ee, ptr noundef nonnull @.str.8, i32 noundef 245) #16
  br label %.loopexit183

.loopexit183:                                     ; preds = %pmix_bfrops_base_tma_copy_value.exit167, %pmix_bfrops_base_tma_copy_value.exit167.us, %pmix_bfrops_base_tma_copy_value.exit167.thread
  %.0.i166178 = phi i32 [ %.us-phi, %pmix_bfrops_base_tma_copy_value.exit167.thread ], [ %i.de, %pmix_bfrops_base_tma_copy_value.exit167.us ], [ %i.ed, %pmix_bfrops_base_tma_copy_value.exit167 ]
  %i.ef = load i32, ptr %i.cq, align 4, !tbaa !92
  tail call fastcc void @erase_qualifiers(ptr noundef nonnull %i.ag, i32 noundef %i.ef)
  tail call void @pmix_dstor_release_tma(ptr noundef nonnull %i.bx, ptr noundef %..i) #16
  br label %bb.ax

bb.an:                                            ; preds = %pmix_bfrops_base_tma_copy_value.exit167
  %i.eg = add i64 %.2190, 1
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph191.split, %bb.an
  %.3 = phi i64 [ %i.eg, %bb.an ], [ %.2190, %.lr.ph191.split ] ; 2 uses
  %i.eh = add nuw i64 %.1125189, 1                ; 2 uses
  %exitcond201.not = icmp eq i64 %i.eh, %4
  br i1 %exitcond201.not, label %.loopexit, label %.lr.ph191.split, !llvm.loop !209

.loopexit:                                        ; preds = %bb.ao, %bb.ai, %._crit_edge, %bb.ac
  %.4 = phi i64 [ 0, %bb.ac ], [ 0, %._crit_edge ], [ %.3.us, %bb.ai ], [ %.3, %bb.ao ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !79 ; 2 uses
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.loopexit
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.em = tail call ptr %i.el(ptr noundef nonnull %i.a, i64 noundef 32) #16, !inline_history !207
  br label %pmix_tma_malloc.exit.i168

bb.aq:                                            ; preds = %.loopexit
  %i.en = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #17
  br label %pmix_tma_malloc.exit.i168

pmix_tma_malloc.exit.i168:                        ; preds = %bb.aq, %bb.ap
  %.0.i.i169 = phi ptr [ %i.em, %bb.ap ], [ %i.en, %bb.aq ] ; 4 uses
  store ptr %.0.i.i169, ptr %i.ei, align 8, !tbaa !80
  %i.eo = icmp eq ptr %.0.i.i169, null
  br i1 %i.eo, label %pmix_bfrops_base_tma_copy_value.exit171.thread, label %pmix_bfrops_base_tma_copy_value.exit171, !prof !72

pmix_bfrops_base_tma_copy_value.exit171:          ; preds = %pmix_tma_malloc.exit.i168
  %i.ep = load i16, ptr %i.ek, align 8, !tbaa !84
  store i16 %i.ep, ptr %.0.i.i169, align 8, !tbaa !84
  %i.eq = tail call fastcc i32 @pmix_bfrops_base_tma_value_xfer(ptr noundef %.0.i.i169, ptr noundef nonnull readonly %i.ek, ptr noundef %..i) ; 3 uses
  switch i32 %i.eq, label %pmix_bfrops_base_tma_copy_value.exit171.thread [
    i32 0, label %bb.au
    i32 -2, label %bb.ar
  ], !prof !210

pmix_bfrops_base_tma_copy_value.exit171.thread:   ; preds = %pmix_tma_malloc.exit.i168, %pmix_bfrops_base_tma_copy_value.exit171
  %.0.i170182 = phi i32 [ %i.eq, %pmix_bfrops_base_tma_copy_value.exit171 ], [ -29, %pmix_tma_malloc.exit.i168 ] ; 2 uses
  %i.er = tail call ptr @PMIx_Error_string(i32 noundef %.0.i170182) #16
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %i.er, ptr noundef nonnull @.str.8, i32 noundef 259) #16
  br label %bb.ar

bb.ar:                                            ; preds = %pmix_bfrops_base_tma_copy_value.exit171, %pmix_bfrops_base_tma_copy_value.exit171.thread
  %.0.i170181 = phi i32 [ %i.eq, %pmix_bfrops_base_tma_copy_value.exit171 ], [ %.0.i170182, %pmix_bfrops_base_tma_copy_value.exit171.thread ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !92 ; 2 uses
  %.not150 = icmp eq i32 %i.et, -1
  br i1 %.not150, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @erase_qualifiers(ptr noundef nonnull %i.ag, i32 noundef %i.et)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  tail call void @pmix_dstor_release_tma(ptr noundef nonnull %i.bx, ptr noundef %..i) #16
  br label %bb.ax

bb.au:                                            ; preds = %pmix_bfrops_base_tma_copy_value.exit171
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_base_framework, i64 76), align 4, !tbaa !61
  %i.ev = tail call i32 @pmix_output_get_verbosity(i32 noundef %i.eu) #16
  %i.ew = icmp sgt i32 %i.ev, 9
  br i1 %i.ew, label %bb.av, label %bb.aw, !prof !72

bb.av:                                            ; preds = %bb.au
  %i.ex = load ptr, ptr %i.ej, align 8, !tbaa !79
  %i.ey = tail call ptr @PMIx_Value_string(ptr noundef %i.ex) #16 ; 2 uses
  %i.ez = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #16
  %i.fa = load ptr, ptr %i.t, align 8, !tbaa !71
  %i.fb = tail call ptr @pmix_util_print_rank(i32 noundef %1) #16
  %i.fc = trunc i64 %.4 to i32
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !68 ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  %spec.select157 = select i1 %i.ff, ptr @.str.1, ptr %i.fe
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef %i.ez, ptr noundef %i.fa, ptr noundef %i.ey, ptr noundef %i.fb, i32 noundef %i.fc, ptr noundef nonnull %spec.select157) #16
  tail call void @free(ptr noundef %i.ey) #16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !95
  %i.fi = tail call i32 @pmix_pointer_array_add(ptr noundef %i.fh, ptr noundef nonnull %i.bx) #16 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %pmix_bfrops_base_tma_copy_value.exit, %bb.ab, %pmix_bfrops_base_tma_copy_value.exit.thread, %pmix_bfrops_base_tma_copy_value.exit, %bb.q, %bb.r, %bb.s, %bb.k, %bb.h, %bb.i, %bb.j, %bb.f, %bb.aw, %bb.at, %.loopexit183, %bb.am
  %.0 = phi i32 [ 0, %bb.aw ], [ -27, %bb.f ], [ -27, %bb.h ], [ -32, %bb.k ], [ 0, %bb.q ], [ -32, %bb.ab ], [ %.0.i173, %pmix_bfrops_base_tma_copy_value.exit.thread ], [ -27, %bb.am ], [ %.0.i166178, %.loopexit183 ], [ %.0.i170181, %bb.at ], [ -27, %bb.j ], [ -27, %bb.i ], [ 0, %bb.s ], [ 0, %bb.r ], [ %i.bv, %pmix_bfrops_base_tma_copy_value.exit ], [ %i.bv, %pmix_bfrops_base_tma_copy_value.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @pmix_util_print_name_args(ptr noundef) local_unnamed_addr #2

declare ptr @pmix_util_print_rank(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @pmix_hash_lookup_key(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  %i.a = select i1 %.not.i, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 2944), ptr %2 ; 3 uses
  %i.b = icmp eq i32 %0, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %pmix_pointer_array_get_item.exit33, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load i32, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %pmix_pointer_array_get_item.exit.lr.ph, label %._crit_edge

pmix_pointer_array_get_item.exit.lr.ph:           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %pmix_pointer_array_get_item.exit

pmix_pointer_array_get_item.exit:                 ; preds = %pmix_pointer_array_get_item.exit.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %pmix_pointer_array_get_item.exit.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pmix_pointer_array_get_item.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !103
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.n) #18
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %pmix_pointer_array_get_item.exit33, label %bb.d

bb.d:                                             ; preds = %pmix_pointer_array_get_item.exit, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %pmix_pointer_array_get_item.exit, !llvm.loop !211

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.q = tail call noalias noundef dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #17 ; 7 uses
  %i.r = tail call noalias ptr @strdup(ptr noundef nonnull %1) #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !104
  %i.t = tail call noalias ptr @strdup(ptr noundef nonnull %1) #16
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !103
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i16 0, ptr %i.v, align 8, !tbaa !212
  %i.w = tail call noalias noundef dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.w, ptr %i.x, align 8, !tbaa !213
  %i.y = tail call noalias dereferenceable_or_null(13) ptr @strdup(ptr noundef nonnull @.str.19) #16
  store ptr %i.y, ptr %i.w, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !105
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !106
  %i.ac = tail call i32 @pmix_pointer_array_set_item(ptr noundef nonnull %i.e, i32 noundef %i.ab, ptr noundef %i.q) #16 ; 0 uses
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !106 ; 2 uses
  store i32 %i.ad, ptr %i.q, align 8, !tbaa !76
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.aa, align 8, !tbaa !106
  br label %pmix_pointer_array_get_item.exit33

bb.e:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !97 ; 2 uses
  %i.ah = icmp slt i32 %0, 0
  br i1 %i.ah, label %pmix_pointer_array_get_item.exit33, label %bb.f, !prof !72

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
end_hunk_0
begin_hunk_1_@lookup_keyval:pmix_hash_lookup_key.exit
  %i.f = add nuw i64 %.05269, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %3
  br i1 %exitcond.not, label %.loopexit67, label %.lr.ph, !llvm.loop !214

.loopexit67:                                      ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = load i32, ptr %i.i, align 8, !tbaa !100  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %pmix_pointer_array_get_item.exit.lr.ph, label %.loopexit64

.loopexit67.thread:                               ; preds = %pmix_hash_lookup_key.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.o = load i32, ptr %i.n, align 8, !tbaa !100  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %pmix_pointer_array_get_item.exit.us.preheader, label %.loopexit64

pmix_pointer_array_get_item.exit.lr.ph:           ; preds = %.loopexit67
  %.not59 = icmp eq i64 %spec.select, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  br i1 %.not59, label %pmix_pointer_array_get_item.exit.us.preheader, label %pmix_pointer_array_get_item.exit.us84

pmix_pointer_array_get_item.exit.us.preheader:    ; preds = %.loopexit67.thread, %pmix_pointer_array_get_item.exit.lr.ph
  %i.r = phi ptr [ %i.h, %pmix_pointer_array_get_item.exit.lr.ph ], [ %i.m, %.loopexit67.thread ]
  %i.s = phi i32 [ %i.j, %pmix_pointer_array_get_item.exit.lr.ph ], [ %i.o, %.loopexit67.thread ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %.pre116 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !101
  %i.t = zext nneg i32 %i.s to i64
  br label %pmix_pointer_array_get_item.exit.us

pmix_pointer_array_get_item.exit.us:              ; preds = %pmix_pointer_array_get_item.exit.us.preheader, %bb.c
  %indvars.iv111 = phi i64 [ 0, %pmix_pointer_array_get_item.exit.us.preheader ], [ %indvars.iv.next112, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre116, i64 %indvars.iv111
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !102  ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.c, label %bb.a

bb.a:                                             ; preds = %pmix_pointer_array_get_item.exit.us
  %i.x = load i32, ptr %i.v, align 8, !tbaa !117
  %i.y = icmp eq i32 %1, %i.x
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !92
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.loopexit64, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %pmix_pointer_array_get_item.exit.us
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.ac = icmp samesign ult i64 %indvars.iv.next112, %i.t
  br i1 %i.ac, label %pmix_pointer_array_get_item.exit.us, label %.loopexit64, !llvm.loop !215

pmix_pointer_array_get_item.exit.us84:            ; preds = %pmix_pointer_array_get_item.exit.lr.ph, %bb.l
  %i.ad = phi ptr [ %i.bv, %bb.l ], [ %i.h, %pmix_pointer_array_get_item.exit.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %pmix_pointer_array_get_item.exit.lr.ph ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !101
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !102 ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.d

bb.d:                                             ; preds = %pmix_pointer_array_get_item.exit.us84
  %i.aj = load i32, ptr %i.ah, align 8, !tbaa !117
  %i.ak = icmp eq i32 %1, %i.aj
  br i1 %i.ak, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !92 ; 4 uses
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.l, label %pmix_pointer_array_get_item.exit63.us

pmix_pointer_array_get_item.exit63.us:            ; preds = %bb.e
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !91  ; 2 uses
  %i.ap = icmp sgt i32 %i.am, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !100
  %.not.i61.us = icmp sgt i32 %i.ar, %i.am
  tail call void @llvm.assume(i1 %.not.i61.us)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !101
  %i.au = zext nneg i32 %i.am to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !102 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !87
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.us, %pmix_pointer_array_get_item.exit63.us
  %.04874.us = phi i64 [ 0, %pmix_pointer_array_get_item.exit63.us ], [ %.1.us, %.loopexit.us ] ; 4 uses
  %.15373.us = phi i64 [ 0, %pmix_pointer_array_get_item.exit63.us ], [ %i.bt, %.loopexit.us ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [552 x i8], ptr %2, i64 %.15373.us ; 3 uses
  %i.bb = tail call zeroext i1 @PMIx_Info_is_qualifier(ptr noundef nonnull %i.ba) #16
  br i1 %i.bb, label %bb.g, label %.loopexit.us

bb.g:                                             ; preds = %bb.f
  %i.bc = tail call ptr @pmix_hash_lookup_key(i32 noundef -1, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.a) ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.loopexit64, label %.preheader.us

.preheader.us:                                    ; preds = %bb.g
  %i.be = load i64, ptr %i.az, align 8, !tbaa !88 ; 2 uses
  %.not99 = icmp eq i64 %i.be, 0
  br i1 %.not99, label %.loopexit.us, label %.lr.ph72.us

.lr.ph72.us:                                      ; preds = %.preheader.us
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 520
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph72.us
  %i.bg = phi i64 [ %i.be, %.lr.ph72.us ], [ %i.bp, %bb.j ]
  %.04971.us = phi i64 [ 0, %.lr.ph72.us ], [ %i.bq, %bb.j ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.04971.us ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !94
  %i.bj = load i32, ptr %i.bc, align 8, !tbaa !76
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !118
  %i.bn = tail call i32 @PMIx_Value_compare(ptr noundef nonnull %i.bf, ptr noundef %i.bm) #16
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.pre = load i64, ptr %i.az, align 8, !tbaa !88
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.h
  %i.bp = phi i64 [ %.pre, %._crit_edge ], [ %i.bg, %bb.h ] ; 2 uses
  %i.bq = add nuw i64 %.04971.us, 1               ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  br i1 %i.br, label %bb.h, label %.loopexit.us, !llvm.loop !216

bb.k:                                             ; preds = %bb.i
  %i.bs = add i64 %.04874.us, 1
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.j, %.preheader.us, %bb.k, %bb.f
  %.1.us = phi i64 [ %i.bs, %bb.k ], [ %.04874.us, %bb.f ], [ %.04874.us, %.preheader.us ], [ %.04874.us, %bb.j ] ; 2 uses
  %i.bt = add nuw i64 %.15373.us, 1               ; 2 uses
  %exitcond105.not = icmp eq i64 %i.bt, %3
  br i1 %exitcond105.not, label %._crit_edge.us, label %bb.f, !llvm.loop !217

._crit_edge.us:                                   ; preds = %.loopexit.us
  %i.bu = icmp eq i64 %.1.us, %spec.select
  br i1 %i.bu, label %.loopexit64, label %._crit_edge.us._crit_edge

._crit_edge.us._crit_edge:                        ; preds = %._crit_edge.us
  %.pre115 = load ptr, ptr %i.g, align 8, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.us._crit_edge, %bb.e, %bb.d, %pmix_pointer_array_get_item.exit.us84
  %i.bv = phi ptr [ %.pre115, %._crit_edge.us._crit_edge ], [ %i.ad, %bb.e ], [ %i.ad, %bb.d ], [ %i.ad, %pmix_pointer_array_get_item.exit.us84 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !100
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %pmix_pointer_array_get_item.exit.us84, label %.loopexit64, !llvm.loop !215

.loopexit64:                                      ; preds = %._crit_edge.us, %bb.l, %bb.g, %bb.b, %bb.c, %.loopexit67.thread, %.loopexit67
  %.054 = phi ptr [ null, %.loopexit67.thread ], [ null, %.loopexit67 ], [ null, %bb.g ], [ %i.v, %bb.b ], [ null, %bb.c ], [ %i.ah, %._crit_edge.us ], [ null, %bb.l ]
  ret ptr %.054
}

declare i32 @pmix_output_get_verbosity(i32 noundef) local_unnamed_addr #2

declare ptr @PMIx_Value_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @PMIx_Value_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PMIx_Error_string(i32 noundef) local_unnamed_addr #2

declare ptr @pmix_dstor_new_tma(i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @PMIx_Info_is_qualifier(ptr noundef) local_unnamed_addr #2

declare i32 @pmix_pointer_array_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @erase_qualifiers(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %.fr = freeze ptr %i.b
  %.not.i = icmp eq ptr %.fr, null                ; 3 uses
  %..i = select i1 %.not.i, ptr null, ptr %i.a    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %i.e = icmp slt i32 %1, 0
  br i1 %i.e, label %pmix_pointer_array_get_item.exit.thread, label %bb.b, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.g = load i32, ptr %i.f, align 8, !tbaa !100
  %.not.i21 = icmp sgt i32 %i.g, %1
  br i1 %.not.i21, label %pmix_pointer_array_get_item.exit, label %pmix_pointer_array_get_item.exit.thread, !prof !107

pmix_pointer_array_get_item.exit:                 ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !101
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %pmix_pointer_array_get_item.exit.thread, label %bb.c

bb.c:                                             ; preds = %pmix_pointer_array_get_item.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !87   ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %pmix_pointer_array_get_item.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !88   ; 3 uses
  %.not27 = icmp eq i64 %i.r, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %i.t = phi i64 [ %i.y, %bb.d ], [ %i.r, %.lr.ph ]
  %.026.us = phi i64 [ %i.z, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.026.us
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118  ; 2 uses
  %.not.us = icmp eq ptr %i.w, null
  br i1 %.not.us, label %bb.d, label %pmix_bfrops_base_tma_value_release.exit.us

pmix_bfrops_base_tma_value_release.exit.us:       ; preds = %.lr.ph.split.us
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef nonnull %i.w, ptr noundef %..i)
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.x) #16
  store ptr null, ptr %i.v, align 8, !tbaa !80
  %.pre29 = load i64, ptr %i.q, align 8, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %pmix_bfrops_base_tma_value_release.exit.us, %.lr.ph.split.us
  %i.y = phi i64 [ %.pre29, %pmix_bfrops_base_tma_value_release.exit.us ], [ %i.t, %.lr.ph.split.us ] ; 2 uses
  %i.z = add nuw i64 %.026.us, 1                  ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  br i1 %i.aa, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !218

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %i.ab = phi i64 [ %i.ah, %bb.e ], [ %i.r, %.lr.ph ]
  %.026 = phi i64 [ %i.ai, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.026
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !118 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.e, label %pmix_bfrops_base_tma_value_release.exit

pmix_bfrops_base_tma_value_release.exit:          ; preds = %.lr.ph.split
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef nonnull %i.ae, ptr noundef %..i)
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !80
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !81
  tail call void %i.ag(ptr noundef nonnull %i.a, ptr noundef %i.af) #16, !inline_history !0
  store ptr null, ptr %i.ad, align 8, !tbaa !80
  %.pre = load i64, ptr %i.q, align 8, !tbaa !88
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %pmix_bfrops_base_tma_value_release.exit
  %i.ah = phi i64 [ %i.ab, %.lr.ph.split ], [ %.pre, %pmix_bfrops_base_tma_value_release.exit ] ; 2 uses
  %i.ai = add nuw i64 %.026, 1                    ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  br i1 %i.aj, label %.lr.ph.split, label %._crit_edge, !llvm.loop !218

._crit_edge:                                      ; preds = %bb.e, %bb.d, %.preheader
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !81
  tail call void %i.al(ptr noundef nonnull %i.a, ptr noundef nonnull %i.o) #16, !inline_history !5
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !81
  tail call void %i.am(ptr noundef nonnull %i.a, ptr noundef nonnull %i.l) #16, !inline_history !5
  br label %pmix_tma_free.exit24

bb.g:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.o) #16
  tail call void @free(ptr noundef nonnull %i.l) #16
  br label %pmix_tma_free.exit24

pmix_tma_free.exit24:                             ; preds = %bb.f, %bb.g
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.ao = tail call i32 @pmix_pointer_array_set_item(ptr noundef %i.an, i32 noundef %1, ptr noundef null) #16 ; 0 uses
  br label %pmix_pointer_array_get_item.exit.thread

pmix_pointer_array_get_item.exit.thread:          ; preds = %bb.a, %bb.b, %pmix_pointer_array_get_item.exit, %bb.c, %pmix_tma_free.exit24
  ret void
}

declare void @pmix_dstor_release_tma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -46, 1) i32 @pmix_hash_fetch(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 15 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %.not.i = icmp eq ptr %6, null
  %i.e = select i1 %.not.i, ptr getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 2944), ptr %6 ; 4 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_base_framework, i64 76), align 4, !tbaa !61 ; 3 uses
  %or.cond = icmp ult i32 %i.f, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !64
  %i.k = icmp sgt i32 %i.j, 9
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @pmix_util_print_name_args(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pmix_globals, i64 4)) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %spec.select = select i1 %i.o, ptr @.str.1, ptr %i.n
  %i.p = tail call ptr @pmix_util_print_rank(i32 noundef %1) #16
  %i.q = icmp eq ptr %2, null
  %i.r = select i1 %i.q, ptr @.str.11, ptr %2
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.f, ptr noundef nonnull @.str.10, ptr noundef %i.l, ptr noundef nonnull %spec.select, ptr noundef %i.p, ptr noundef nonnull %i.r) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.s = icmp eq i32 %1, -1                       ; 3 uses
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = call i32 @pmix_hash_table_get_first_key_uint32(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #16
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_base_framework, i64 76), align 4, !tbaa !61 ; 3 uses
  %or.cond3 = icmp ult i32 %i.u, 64
  br i1 %or.cond3, label %bb.g, label %pmix_hash_lookup_key.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !64
  %i.z = icmp sgt i32 %i.y, 9
  br i1 %i.z, label %bb.h, label %pmix_hash_lookup_key.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.aa = call ptr @pmix_util_print_rank(i32 noundef -1) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.u, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.pmix_hash_fetch, i32 noundef 324, ptr noundef %i.aa) #16
  br label %pmix_hash_lookup_key.exit.thread

bb.i:                                             ; preds = %bb.d
  store i32 %1, ptr %i.c, align 4, !tbaa !110
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i
  %.not133 = icmp eq ptr %2, null
  br i1 %.not133, label %.split.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = call ptr @pmix_hash_lookup_key(i32 noundef -1, ptr noundef nonnull %2, ptr noundef nonnull %i.e) ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %pmix_hash_lookup_key.exit.thread, label %.split

.split.us:                                        ; preds = %bb.j
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !102
  %i.ae = call i32 @pmix_hash_table_get_value_uint32(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !102 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store ptr %i.af, ptr %i.b, align 8, !tbaa !102
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.split158.us, label %.preheader

.split:                                           ; preds = %bb.k
  %i.ah = load i32, ptr %i.ab, align 8, !tbaa !76 ; 2 uses
  br i1 %i.s, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split, %bb.m
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !102
  %i.aj = call i32 @pmix_hash_table_get_value_uint32(ptr noundef %0, i32 noundef %i.ai, ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !102 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !102
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.split158.us, label %bb.l

bb.l:                                             ; preds = %.split.split.us
  %i.am = call fastcc ptr @lookup_keyval(ptr noundef %i.ak, i32 noundef %i.ah, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.e) ; 2 uses
  %.not134.us = icmp eq ptr %i.am, null
  br i1 %.not134.us, label %bb.m, label %.split160.us

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.ao = call i32 @pmix_hash_table_get_next_key_uint32(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %i.an, ptr noundef nonnull %i.d) #16
  %.not135.us = icmp eq i32 %i.ao, 0
  br i1 %.not135.us, label %.split.split.us, label %.split162.us, !llvm.loop !219

.split.split:                                     ; preds = %.split
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !102
  %i.aq = call i32 @pmix_hash_table_get_value_uint32(ptr noundef %0, i32 noundef %i.ap, ptr noundef nonnull %i.a) #16 ; 0 uses
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !102 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !102
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.split158.us, label %bb.p

.split158.us:                                     ; preds = %.split.split.us, %.split.split, %.split.us
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_gds_base_framework, i64 76), align 4, !tbaa !61 ; 3 uses
  %or.cond5 = icmp ult i32 %i.at, 64
  br i1 %or.cond5, label %bb.n, label %pmix_hash_lookup_key.exit.thread

bb.n:                                             ; preds = %.split158.us
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !64
  %i.ay = icmp sgt i32 %i.ax, 9
  br i1 %i.ay, label %bb.o, label %pmix_hash_lookup_key.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.az = call ptr @pmix_util_print_rank(i32 noundef %1) #16
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.at, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.pmix_hash_fetch, i32 noundef 351, ptr noundef %i.az, ptr noundef %2) #16
  br label %pmix_hash_lookup_key.exit.thread

bb.p:                                             ; preds = %.split.split
  %i.ba = call fastcc ptr @lookup_keyval(ptr noundef %i.ar, i32 noundef %i.ah, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.e) ; 2 uses
  %.not134 = icmp eq ptr %i.ba, null
  br i1 %.not134, label %bb.am, label %.split160.us

.preheader:                                       ; preds = %.split.us
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !95 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !100
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %pmix_pointer_array_get_item.exit.lr.ph, label %pmix_hash_lookup_key.exit.thread

pmix_pointer_array_get_item.exit.lr.ph:           ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 248 ; 2 uses
end_hunk_1
begin_hunk_2_@pmix_bfrops_base_tma_populate_ndstats:bb.a
pmix_bfrops_base_tma_populate_netstats.exit:      ; preds = %.lr.ph80.split, %pmix_tma_strdup.exit.i75
  %i.dq = phi i64 [ %i.di, %.lr.ph80.split ], [ %.pre87, %pmix_tma_strdup.exit.i75 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dt = load <2 x i64>, ptr %i.dr, align 8, !tbaa !198
  store <2 x i64> %i.dt, ptr %i.ds, align 8, !tbaa !198
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dw = load <2 x i64>, ptr %i.du, align 8, !tbaa !198
  store <2 x i64> %i.dw, ptr %i.dv, align 8, !tbaa !198
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dz = load <2 x i64>, ptr %i.dx, align 8, !tbaa !198
  store <2 x i64> %i.dz, ptr %i.dy, align 8, !tbaa !198
  %i.ea = add nuw i64 %.079, 1                    ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dq
  br i1 %i.eb, label %.lr.ph80.split, label %.loopexit, !llvm.loop !378

.loopexit:                                        ; preds = %pmix_bfrops_base_tma_populate_netstats.exit, %pmix_bfrops_base_tma_populate_netstats.exit.us, %pmix_bfrops_base_tma_net_stats_create.exit, %.loopexit77
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare i32 @pmix_hwloc_copy_topology(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @PMIx_Geometry_free(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @PMIx_Data_copy_payload(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

declare i32 @pmix_hash_table_get_value_uint32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pmix_hash_table_set_value_uint32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @pdcon(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null                ; 4 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_pointer_array_t_class, i64 56), align 8, !tbaa !109 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr %i.b(ptr noundef nonnull %i.a, i64 noundef %i.c) #16, !inline_history !2
  br label %pmix_tma_malloc.exit.i

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.c) #17
  br label %pmix_tma_malloc.exit.i

pmix_tma_malloc.exit.i:                           ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 9 uses
  %i.f = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !110
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_pointer_array_t_class, i64 32), align 8, !tbaa !111
  %.not.i7 = icmp eq i32 %i.f, %i.g
  br i1 %.not.i7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %pmix_tma_malloc.exit.i
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_pointer_array_t_class) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %pmix_tma_malloc.exit.i
  %.not22.i = icmp eq ptr %.0.i.i, null
  br i1 %.not22.i, label %pmix_obj_new_tma.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @pthread_mutex_init(ptr noundef nonnull %.0.i.i, ptr noundef null) #16 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  store ptr @pmix_pointer_array_t_class, ptr %i.i, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store i32 1, ptr %i.j, align 8, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56 ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !tbaa.struct !115
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_pointer_array_t_class, i64 40), align 8, !tbaa !116 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102  ; 2 uses
  %.not6.i.i = icmp eq ptr %i.n, null
  br i1 %.not6.i.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %i.o = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.n, %bb.i ]
  %.07.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.i ]
  tail call void %i.o(ptr noundef nonnull %.0.i.i) #16, !inline_history !3
  %i.p = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !102  ; 2 uses
  %.not.i23.i = icmp eq ptr %i.q, null
  br i1 %.not.i23.i, label %pmix_obj_new_tma.exit, label %.lr.ph.i.i, !llvm.loop !4

pmix_obj_new_tma.exit:                            ; preds = %.lr.ph.i.i, %bb.e, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.0.i.i, ptr %i.r, align 8, !tbaa !95
  %i.s = tail call i32 @pmix_pointer_array_init(ptr noundef %.0.i.i, i32 noundef 128, i32 noundef 2147483647, i32 noundef 128) #16 ; 0 uses
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @pmix_pointer_array_t_class, i64 56), align 8, !tbaa !109 ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %pmix_obj_new_tma.exit
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.v = tail call ptr %i.u(ptr noundef nonnull %i.a, i64 noundef %i.t) #16, !inline_history !2
  br label %pmix_tma_malloc.exit.i8

bb.k:                                             ; preds = %pmix_obj_new_tma.exit
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.t) #17
  br label %pmix_tma_malloc.exit.i8

pmix_tma_malloc.exit.i8:                          ; preds = %bb.k, %bb.j
  %.0.i.i9 = phi ptr [ %i.v, %bb.j ], [ %i.w, %bb.k ] ; 9 uses
  %i.x = load i32, ptr @pmix_class_init_epoch, align 4, !tbaa !110
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_pointer_array_t_class, i64 32), align 8, !tbaa !111
  %.not.i10 = icmp eq i32 %i.x, %i.y
  br i1 %.not.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %pmix_tma_malloc.exit.i8
  tail call void @pmix_class_initialize(ptr noundef nonnull @pmix_pointer_array_t_class) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %pmix_tma_malloc.exit.i8
  %.not22.i11 = icmp eq ptr %.0.i.i9, null
  br i1 %.not22.i11, label %pmix_obj_new_tma.exit16, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i32 @pthread_mutex_init(ptr noundef nonnull %.0.i.i9, ptr noundef null) #16 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i9, i64 40
  store ptr @pmix_pointer_array_t_class, ptr %i.aa, align 8, !tbaa !112
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i9, i64 48
  store i32 1, ptr %i.ab, align 8, !tbaa !113
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i9, i64 56 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i9, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !tbaa.struct !115
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pmix_pointer_array_t_class, i64 40), align 8, !tbaa !116 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102 ; 2 uses
  %.not6.i.i12 = icmp eq ptr %i.af, null
  br i1 %.not6.i.i12, label %pmix_obj_new_tma.exit16, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %bb.q, %.lr.ph.i.i13
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i13 ], [ %i.af, %bb.q ]
  %.07.i.i14 = phi ptr [ %i.ah, %.lr.ph.i.i13 ], [ %i.ae, %bb.q ]
  tail call void %i.ag(ptr noundef nonnull %.0.i.i9) #16, !inline_history !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i14, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !102 ; 2 uses
  %.not.i23.i15 = icmp eq ptr %i.ai, null
  br i1 %.not.i23.i15, label %pmix_obj_new_tma.exit16, label %.lr.ph.i.i13, !llvm.loop !4

pmix_obj_new_tma.exit16:                          ; preds = %.lr.ph.i.i13, %bb.m, %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.0.i.i9, ptr %i.aj, align 8, !tbaa !91
  %i.ak = tail call i32 @pmix_pointer_array_init(ptr noundef %.0.i.i9, i32 noundef 1, i32 noundef 2147483647, i32 noundef 1) #16 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pddes(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %.fr = freeze ptr %i.b
  %.not.i = icmp eq ptr %.fr, null                ; 3 uses
  %..i = select i1 %.not.i, ptr null, ptr %i.a    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !100
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %pmix_pointer_array_get_item.exit, label %._crit_edge

pmix_pointer_array_get_item.exit:                 ; preds = %bb.a, %bb.c
  %i.h = phi ptr [ %i.p, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102  ; 2 uses
  %.not53 = icmp eq ptr %i.l, null
  br i1 %.not53, label %bb.c, label %bb.b

bb.b:                                             ; preds = %pmix_pointer_array_get_item.exit
  tail call void @pmix_dstor_release_tma(ptr noundef nonnull %i.l, ptr noundef %..i) #16
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %i.o = tail call i32 @pmix_pointer_array_set_item(ptr noundef %i.m, i32 noundef %i.n, ptr noundef null) #16 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %pmix_pointer_array_get_item.exit, %bb.b
  %i.p = phi ptr [ %i.h, %pmix_pointer_array_get_item.exit ], [ %.pre, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.r = load i32, ptr %i.q, align 8, !tbaa !100
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %pmix_pointer_array_get_item.exit, label %._crit_edge, !llvm.loop !380

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.lcssa71 = phi ptr [ %i.d, %bb.a ], [ %i.p, %bb.c ] ; 7 uses
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %.lcssa71) #16
  %i.v = icmp eq i32 %i.u, 35
  br i1 %i.v, label %bb.d, label %pmix_obj_update.exit54

bb.d:                                             ; preds = %._crit_edge
  %i.w = tail call ptr @__errno_location() #19
  store i32 35, ptr %i.w, align 4, !tbaa !110
  tail call void @perror(ptr noundef nonnull @.str.22) #20
  tail call void @abort() #21
  unreachable

pmix_obj_update.exit54:                           ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %.lcssa71, i64 48 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !113
  %i.z = add nsw i32 %i.y, -1                     ; 2 uses
  store i32 %i.z, ptr %i.x, align 8, !tbaa !113
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.lcssa71) #16 ; 0 uses
  %i.ab = icmp eq i32 %i.z, 0
  br i1 %i.ab, label %bb.e, label %bb.i

bb.e:                                             ; preds = %pmix_obj_update.exit54
  %i.ac = getelementptr inbounds nuw i8, ptr %.lcssa71, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !119 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !102 ; 2 uses
  %.not6.i = icmp eq ptr %i.ag, null
  br i1 %.not6.i, label %pmix_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.ah = phi ptr [ %i.aj, %.lr.ph.i ], [ %i.ag, %bb.e ]
  %.07.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %i.af, %bb.e ]
  tail call void %i.ah(ptr noundef nonnull %.lcssa71) #16, !inline_history !6
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !102 ; 2 uses
  %.not.i56 = icmp eq ptr %i.aj, null
  br i1 %.not.i56, label %pmix_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !7

pmix_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa71, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !120 ; 2 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa71, i64 56
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !95
  tail call void %i.al(ptr noundef nonnull %i.am, ptr noundef %i.an) #16, !inline_history !5
  br label %bb.h

bb.g:                                             ; preds = %pmix_obj_run_destructors.exit
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !95
  tail call void @free(ptr noundef %i.ao) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.c, align 8, !tbaa !95
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %pmix_obj_update.exit54
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !91 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !100
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %pmix_pointer_array_get_item.exit60.lr.ph, label %._crit_edge79

pmix_pointer_array_get_item.exit60.lr.ph:         ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %pmix_pointer_array_get_item.exit60

pmix_pointer_array_get_item.exit60:               ; preds = %pmix_pointer_array_get_item.exit60.lr.ph, %pmix_tma_free.exit63
  %indvars.iv87 = phi i64 [ 0, %pmix_pointer_array_get_item.exit60.lr.ph ], [ %indvars.iv.next88, %pmix_tma_free.exit63 ] ; 3 uses
  %i.av = phi ptr [ %i.aq, %pmix_pointer_array_get_item.exit60.lr.ph ], [ %i.cb, %pmix_tma_free.exit63 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !101
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv87
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !102 ; 5 uses
  %.not51 = icmp eq ptr %i.az, null
  br i1 %.not51, label %pmix_tma_free.exit63, label %bb.j

bb.j:                                             ; preds = %pmix_pointer_array_get_item.exit60
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !87 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !88 ; 3 uses
  %.not82 = icmp eq i64 %i.bd, 0
  br i1 %.not82, label %._crit_edge77, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %i.be = phi i64 [ %i.bj, %bb.k ], [ %i.bd, %.lr.ph ]
  %.075.us = phi i64 [ %i.bk, %bb.k ], [ 0, %.lr.ph ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.075.us
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !118 ; 2 uses
  %.not52.us = icmp eq ptr %i.bh, null
  br i1 %.not52.us, label %bb.k, label %pmix_bfrops_base_tma_value_release.exit.us

pmix_bfrops_base_tma_value_release.exit.us:       ; preds = %.lr.ph.split.us
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef nonnull %i.bh, ptr noundef %..i)
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.bi) #16
  store ptr null, ptr %i.bg, align 8, !tbaa !80
  %.pre91 = load i64, ptr %i.bc, align 8, !tbaa !88
  br label %bb.k

bb.k:                                             ; preds = %pmix_bfrops_base_tma_value_release.exit.us, %.lr.ph.split.us
  %i.bj = phi i64 [ %.pre91, %pmix_bfrops_base_tma_value_release.exit.us ], [ %i.be, %.lr.ph.split.us ] ; 2 uses
  %i.bk = add nuw i64 %.075.us, 1                 ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  br i1 %i.bl, label %.lr.ph.split.us, label %._crit_edge77, !llvm.loop !381

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.l
  %i.bm = phi i64 [ %i.bs, %bb.l ], [ %i.bd, %.lr.ph ]
  %.075 = phi i64 [ %i.bt, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %.075
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !118 ; 2 uses
  %.not52 = icmp eq ptr %i.bp, null
  br i1 %.not52, label %bb.l, label %pmix_bfrops_base_tma_value_release.exit

pmix_bfrops_base_tma_value_release.exit:          ; preds = %.lr.ph.split
  tail call fastcc void @pmix_bfrops_base_tma_value_destruct(ptr noundef nonnull %i.bp, ptr noundef %..i)
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !80
  %i.br = load ptr, ptr %i.au, align 8, !tbaa !81
  tail call void %i.br(ptr noundef nonnull %i.a, ptr noundef %i.bq) #16, !inline_history !0
  store ptr null, ptr %i.bo, align 8, !tbaa !80
  %.pre90 = load i64, ptr %i.bc, align 8, !tbaa !88
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.split, %pmix_bfrops_base_tma_value_release.exit
  %i.bs = phi i64 [ %i.bm, %.lr.ph.split ], [ %.pre90, %pmix_bfrops_base_tma_value_release.exit ] ; 2 uses
  %i.bt = add nuw i64 %.075, 1                    ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  br i1 %i.bu, label %.lr.ph.split, label %._crit_edge77, !llvm.loop !381

._crit_edge77:                                    ; preds = %bb.l, %bb.k, %bb.j
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !87 ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge77
  %i.bw = load ptr, ptr %i.au, align 8, !tbaa !81
  tail call void %i.bw(ptr noundef nonnull %i.a, ptr noundef %i.bv) #16, !inline_history !5
  %i.bx = load ptr, ptr %i.au, align 8, !tbaa !81
  tail call void %i.bx(ptr noundef nonnull %i.a, ptr noundef nonnull %i.az) #16, !inline_history !5
  br label %pmix_tma_free.exit63

bb.n:                                             ; preds = %._crit_edge77
  tail call void @free(ptr noundef %i.bv) #16
  tail call void @free(ptr noundef nonnull %i.az) #16
  br label %pmix_tma_free.exit63

pmix_tma_free.exit63:                             ; preds = %bb.n, %bb.m, %pmix_pointer_array_get_item.exit60
  %i.by = load ptr, ptr %i.ap, align 8, !tbaa !91
  %i.bz = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.ca = tail call i32 @pmix_pointer_array_set_item(ptr noundef %i.by, i32 noundef %i.bz, ptr noundef null) #16 ; 0 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.cb = load ptr, ptr %i.ap, align 8, !tbaa !91 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 128
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !100
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next88, %i.ce
  br i1 %i.cf, label %pmix_pointer_array_get_item.exit60, label %._crit_edge79, !llvm.loop !382

._crit_edge79:                                    ; preds = %pmix_tma_free.exit63, %bb.i
  %.lcssa = phi ptr [ %i.aq, %bb.i ], [ %i.cb, %pmix_tma_free.exit63 ] ; 7 uses
  %i.cg = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %.lcssa) #16
  %i.ch = icmp eq i32 %i.cg, 35
  br i1 %i.ch, label %bb.o, label %pmix_obj_update.exit

bb.o:                                             ; preds = %._crit_edge79
  %i.ci = tail call ptr @__errno_location() #19
  store i32 35, ptr %i.ci, align 4, !tbaa !110
  tail call void @perror(ptr noundef nonnull @.str.22) #20
  tail call void @abort() #21
  unreachable

pmix_obj_update.exit:                             ; preds = %._crit_edge79
  %i.cj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 48 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !113
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.cj, align 8, !tbaa !113
  %i.cm = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %.lcssa) #16 ; 0 uses
  %i.cn = icmp eq i32 %i.cl, 0
  br i1 %i.cn, label %bb.p, label %bb.t

bb.p:                                             ; preds = %pmix_obj_update.exit
  %i.co = getelementptr inbounds nuw i8, ptr %.lcssa, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !112
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !119 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !102 ; 2 uses
  %.not6.i64 = icmp eq ptr %i.cs, null
  br i1 %.not6.i64, label %pmix_obj_run_destructors.exit68, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %bb.p, %.lr.ph.i65
  %i.ct = phi ptr [ %i.cv, %.lr.ph.i65 ], [ %i.cs, %bb.p ]
  %.07.i66 = phi ptr [ %i.cu, %.lr.ph.i65 ], [ %i.cr, %bb.p ]
  tail call void %i.ct(ptr noundef nonnull %.lcssa) #16, !inline_history !6
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i66, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !102 ; 2 uses
  %.not.i67 = icmp eq ptr %i.cv, null
  br i1 %.not.i67, label %pmix_obj_run_destructors.exit68, label %.lr.ph.i65, !llvm.loop !7

pmix_obj_run_destructors.exit68:                  ; preds = %.lr.ph.i65, %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %.lcssa, i64 96
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !120 ; 2 uses
  %.not50 = icmp eq ptr %i.cx, null
  br i1 %.not50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %pmix_obj_run_destructors.exit68
  %i.cy = getelementptr inbounds nuw i8, ptr %.lcssa, i64 56
  %i.cz = load ptr, ptr %i.ap, align 8, !tbaa !91
  tail call void %i.cx(ptr noundef nonnull %i.cy, ptr noundef %i.cz) #16, !inline_history !5
  br label %bb.s

bb.r:                                             ; preds = %pmix_obj_run_destructors.exit68
  %i.da = load ptr, ptr %i.ap, align 8, !tbaa !91
  tail call void @free(ptr noundef %i.da) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr null, ptr %i.ap, align 8, !tbaa !91
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %pmix_obj_update.exit
  ret void
}

declare i32 @pmix_pointer_array_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind allocsize(1) }

!llvm.module.flags = !{!40, !41}
!llvm.ident = !{!42}
!llvm.errno.tbaa = !{!47}

!0 = distinct !{null, null}
!1 = distinct !{null}
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = distinct !{!4, !85}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{!7, !85}
!8 = distinct !{null, null}
!9 = distinct !{null, null, null}
!10 = distinct !{ptr @pmix_bfrops_base_tma_coord_free, null}
!11 = distinct !{ptr @pmix_bfrops_base_tma_coord_free, ptr @pmix_bfrops_base_tma_coord_destruct, null}
!12 = distinct !{null, null}
!13 = distinct !{null, null, null}
!14 = distinct !{null, null}
!15 = distinct !{null, null, null}
!16 = distinct !{null, null}
!17 = distinct !{null, null, null}
!18 = distinct !{null, null}
!19 = distinct !{null, null, null}
!20 = distinct !{!20, !85}
!21 = distinct !{!21, !85}
!22 = distinct !{!22, !85}
!23 = distinct !{!23, !85}
!24 = distinct !{!24, !85}
!25 = distinct !{!25, !85}
!26 = distinct !{null, null}
!27 = distinct !{null, null}
!28 = distinct !{!28, !85}
!29 = distinct !{null, null}
!30 = distinct !{null}
!31 = distinct !{!31, !85}
!32 = distinct !{null}
!33 = distinct !{!33, !85}
!34 = distinct !{null, null}
!35 = distinct !{null, null}
!36 = distinct !{null, null}
!37 = distinct !{null, null}
!38 = distinct !{ptr @pmix_bfrops_base_tma_disk_stats_create, null}
!39 = distinct !{ptr @pmix_bfrops_base_tma_net_stats_create, null}
!40 = !{i32 8, !"PIC Level", i32 2}
!41 = !{i32 7, !"uwtable", i32 2}
!42 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"omnipotent char", !43, i64 0}
!45 = !{!"int", !44, i64 0}
!46 = !{!"__libc_errno", !45, i64 0}
!47 = !{!46, !45, i64 0}
!48 = !{!"any pointer", !44, i64 0}
!49 = !{!"p1 _ZTS12pmix_class_t", !48, i64 0}
!50 = !{!"any p2 pointer", !48, i64 0}
!51 = !{!"pmix_tma", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !50, i64 56}
!52 = !{!"pmix_object_t", !44, i64 0, !49, i64 40, !45, i64 48, !51, i64 56}
!53 = !{!52, !48, i64 56}
!54 = !{!"p1 omnipotent char", !48, i64 0}
!55 = !{!"p2 _ZTS31pmix_mca_base_component_2_1_0_t", !50, i64 0}
!56 = !{!"p1 _ZTS16pmix_list_item_t", !48, i64 0}
!57 = !{!"pmix_list_item_t", !52, i64 0, !56, i64 120, !56, i64 128, !45, i64 136}
!58 = !{!"long", !44, i64 0}
!59 = !{!"pmix_list_t", !52, i64 0, !57, i64 120, !58, i64 264}
end_hunk_2
