inline.NumInlined: 40
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, ptr }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.maple_tree = type { %union.anon.1, i32, ptr }
%union.anon.1 = type { %struct.spinlock }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.execmem_info = type { [5 x %struct.execmem_range] }
%struct.execmem_range = type { i64, i64, i64, i64, %struct.pgprot, i32, i32 }
%struct.pgprot = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon.4, i8, %union.anon.6, i32, [5 x i32], i8, i8, i32, i32, %union.anon.7, [16 x i8], [64 x i8], %struct.cpuinfo_topology, %struct.cpuid_table, i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.4 = type { i32 }
%union.anon.6 = type { i8 }
%union.anon.7 = type { i64, [88 x i8] }
%struct.cpuinfo_topology = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.cpuid_table = type { %struct.cpuid_leaves }
%struct.cpuid_leaves = type <{ [1 x %struct.leaf_0x0_0], %struct.leaf_parse_info, [1 x %struct.leaf_0x1_0], %struct.leaf_parse_info }>
%struct.leaf_0x0_0 = type { i64, i64 }
%struct.leaf_0x1_0 = type { i64, i64 }
%struct.leaf_parse_info = type { i32 }
%struct.ma_state = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, i64, i32, i8, i8, i8, i8, i32 }

@execmem_info = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mm/execmem.c\00", align 1
@execmem_cache = internal global { %struct.mutex, %struct.maple_tree, %struct.maple_tree, i32, [4 x i8] } { %struct.mutex zeroinitializer, %struct.maple_tree { %union.anon.1 zeroinitializer, i32 768, ptr null }, %struct.maple_tree { %union.anon.1 zeroinitializer, i32 768, ptr null }, i32 0, [4 x i8] zeroinitializer }, align 8
@__default_kernel_pte_mask = external dso_local local_unnamed_addr global i64, align 8
@execmem_vmalloc._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, i32 0, i64 0 }, align 8
@__func__.execmem_vmalloc = private unnamed_addr constant [16 x i8] c"execmem_vmalloc\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\014execmem: unable to allocate memory\0A\00", align 1
@__preempt_count = external dso_local global i32, section ".data..percpu..hot..__preempt_count", align 4
@execmem_cache_clean_work = internal global %struct.work_struct { %struct.atomic64_t { i64 4503599625273344 }, %struct.list_head { ptr getelementptr (i8, ptr @execmem_cache_clean_work, i64 8), ptr getelementptr (i8, ptr @execmem_cache_clean_work, i64 8) }, ptr @execmem_cache_clean }, align 8
@system_percpu_wq = external dso_local local_unnamed_addr global ptr, align 8
@execmem_cache_free_work = internal global { %struct.work_struct, { %struct.hlist_node, i64, ptr, i32, [4 x i8] }, ptr, i32, [4 x i8] } { %struct.work_struct { %struct.atomic64_t { i64 4503599625273344 }, %struct.list_head { ptr getelementptr (i8, ptr @execmem_cache_free_work, i64 8), ptr getelementptr (i8, ptr @execmem_cache_free_work, i64 8) }, ptr @execmem_cache_free_slow }, { %struct.hlist_node, i64, ptr, i32, [4 x i8] } { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @delayed_work_timer_fn, i32 2097152, [4 x i8] zeroinitializer }, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@default_execmem_info = internal global %struct.execmem_info zeroinitializer, section ".data..ro_after_init", align 8
@vmalloc_base = external dso_local local_unnamed_addr global i64, align 8
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.6 = private unnamed_addr constant [78 x i8] c"\012execmem: Invalid parameters for execmem allocator, module loading will fail\00", align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @execmem_vmap(i64 noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @execmem_info, align 8     ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 192
  %i.c = getelementptr i8, ptr %i.a, i64 232      ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %i.a, i64 200
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call ptr @llvm.returnaddress.p0(i32 0) ; 2 uses
  %i.j = tail call ptr @__get_vm_area_node(i64 noundef %0, i64 noundef %i.e, i64 noundef 12, i64 noundef 2, i64 noundef %i.f, i64 noundef %i.h, i32 noundef -1, i32 noundef 3264, ptr noundef %i.i) #9 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.a, i64 208
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %.not12 = icmp eq i64 %i.l, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.c, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr i8, ptr %i.a, i64 216
  %i.p = load i64, ptr %i.o, align 8
  %i.q = tail call ptr @__get_vm_area_node(i64 noundef %0, i64 noundef %i.n, i64 noundef 12, i64 noundef 2, i64 noundef %i.l, i64 noundef %i.p, i32 noundef -1, i32 noundef 3264, ptr noundef %i.i) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %i.j, %bb.a ], [ %i.q, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__get_vm_area_node(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress.p0(i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @execmem_restore_rox(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = add i64 %1, 4095
  %i.b = lshr i64 %i.a, 12
  %i.c = trunc i64 %i.b to i32
  %i.d = ptrtoint ptr %0 to i64
  %i.e = tail call i32 @set_memory_rox(i64 noundef %i.d, i32 noundef %i.c) #9
  ret i32 %i.e
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @set_memory_rox(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @execmem_alloc(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.ma_state, align 8           ; 13 uses
  %i.a = load ptr, ptr @execmem_info, align 8
  %i.b = zext i32 %0 to i64
  %i.c = getelementptr [48 x i8], ptr %i.a, i64 %i.b ; 16 uses
  %i.d = getelementptr i8, ptr %i.c, i64 44
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 2
  %.not = icmp eq i32 %i.f, 0
  %i.g = add i64 %1, 4095
  %i.h = and i64 %i.g, -4096                      ; 8 uses
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mutex_lock(ptr noundef nonnull @execmem_cache) #9
  %i.i = tail call fastcc ptr @execmem_cache_alloc_locked(ptr noundef readonly %i.c, i64 noundef range(i64 0, -4095) %i.h) #10, !srcloc !10 ; 2 uses
  tail call void @mutex_unlock(ptr noundef nonnull @execmem_cache) #9
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %execmem_cache_alloc.exit

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %1, 2097151
  %3 = and i64 %i.j, -2097152                     ; 4 uses
  %i.k = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.l = and i64 %i.k, -9223372036854775453       ; 2 uses
  %i.m = getelementptr i8, ptr %i.c, i64 40       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = load i64, ptr %i.c, align 8
  %i.p = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = zext i32 %i.n to i64                     ; 2 uses
  %i.s = tail call ptr @llvm.returnaddress.p0(i32 0) ; 4 uses
  %i.t = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %3, i64 noundef %i.r, i64 noundef %i.o, i64 noundef %i.q, i32 noundef 11456, i64 %i.l, i64 noundef 1024, i32 noundef -1, ptr noundef %i.s) #11 ; 2 uses
  %.not54.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not54.i.i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not55.i.i.i, label %.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.c, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %3, i64 noundef %i.r, i64 noundef %i.v, i64 noundef %i.x, i32 noundef 11456, i64 %i.l, i64 noundef 1024, i32 noundef -1, ptr noundef %i.s) #11 ; 2 uses
  %.not56.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not56.i.i.i, label %.thread.i.i.i, label %bb.k

.thread.i.i.i:                                    ; preds = %bb.e, %bb.d
  %i.z = tail call i32 @___ratelimit(ptr noundef nonnull @execmem_vmalloc._rs, ptr noundef nonnull @__func__.execmem_vmalloc) #9
  %.not57.i.i.i = icmp eq i32 %i.z, 0
  br i1 %.not57.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i
  %i.aa = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i.i.i
  %i.ab = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.ac = and i64 %i.ab, -9223372036854775453     ; 2 uses
  %i.ad = load i32, ptr %i.m, align 8
  %i.ae = load i64, ptr %i.c, align 8
  %i.af = load i64, ptr %i.p, align 8
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef range(i64 0, -4095) %i.h, i64 noundef %i.ag, i64 noundef %i.ae, i64 noundef %i.af, i32 noundef 11456, i64 %i.ac, i64 noundef 1024, i32 noundef -1, ptr noundef %i.s) #11 ; 2 uses
  %.not54.i37.i.i = icmp eq ptr %i.ah, null
  br i1 %.not54.i37.i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.u, align 8             ; 2 uses
  %.not55.i39.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not55.i39.i.i, label %.thread.i41.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr i8, ptr %i.c, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef range(i64 0, -4095) %i.h, i64 noundef %i.ag, i64 noundef %i.ai, i64 noundef %i.ak, i32 noundef 11456, i64 %i.ac, i64 noundef 1024, i32 noundef -1, ptr noundef %i.s) #11 ; 2 uses
  %.not56.i40.i.i = icmp eq ptr %i.al, null
  br i1 %.not56.i40.i.i, label %.thread.i41.i.i, label %bb.k

.thread.i41.i.i:                                  ; preds = %bb.i, %bb.h
  %i.am = tail call i32 @___ratelimit(ptr noundef nonnull @execmem_vmalloc._rs, ptr noundef nonnull @__func__.execmem_vmalloc) #9
  %.not57.i42.i.i = icmp eq i32 %i.am, 0
  br i1 %.not57.i42.i.i, label %execmem_cache_alloc.exit, label %bb.j

bb.j:                                             ; preds = %.thread.i41.i.i
  %i.an = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12 ; 0 uses
  br label %execmem_cache_alloc.exit

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.e, %bb.c
  %.030.ph.i.i = phi i64 [ %i.h, %bb.i ], [ %i.h, %bb.g ], [ %3, %bb.c ], [ %3, %bb.e ] ; 2 uses
  %.029.ph.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ah, %bb.g ], [ %i.t, %bb.c ], [ %i.y, %bb.e ] ; 4 uses
  %i.ao = tail call ptr @find_vm_area(ptr noundef nonnull %.029.ph.i.i) #9 ; 4 uses
  %.not34.i.i = icmp eq ptr %i.ao, null
  br i1 %.not34.i.i, label %execmem_set_direct_map_valid.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @execmem_fill_trapping_insns(ptr noundef nonnull %.029.ph.i.i, i64 noundef %.030.ph.i.i) #9
  %i.ap = ptrtoint ptr %.029.ph.i.i to i64        ; 5 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 44     ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = tail call i32 @set_memory_rox(i64 noundef %i.ap, i32 noundef %i.ar) #9
  %.not35.i.i = icmp eq i32 %i.as, 0
  br i1 %.not35.i.i, label %bb.m, label %execmem_set_direct_map_valid.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @mutex_lock(ptr noundef nonnull @execmem_cache) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr getelementptr inbounds nuw (i8, ptr @execmem_cache, i64 40), ptr %2, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.au = add i64 %i.ap, -1                       ; 2 uses
  store i64 %i.au, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aw = add i64 %i.ap, 1
  store i64 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.bc = add i64 %.030.ph.i.i, %i.ap             ; 2 uses
  %i.bd = add i64 %i.bc, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bb, i8 0, i64 12, i1 false)
  %i.be = call ptr @mas_walk(ptr noundef nonnull %2) #9
  %.not.i.i.i = icmp ne ptr %i.be, null
  %i.bf = load i64, ptr %i.av, align 8
  %i.bg = icmp eq i64 %i.bf, %i.au
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.bg, i1 false
  %i.bh = load i64, ptr %i.at, align 8
  %.015.i.i.i = select i1 %or.cond.i.i.i, i64 %i.bh, i64 %i.ap ; 2 uses
  %i.bi = call ptr @mas_next(ptr noundef nonnull %2, i64 noundef -1) #9
  %.not16.i.i.i = icmp ne ptr %i.bi, null
  %i.bj = load i64, ptr %i.at, align 8
  %i.bk = icmp eq i64 %i.bj, %i.bc
  %or.cond19.i.i.i = select i1 %.not16.i.i.i, i1 %i.bk, i1 false
  %i.bl = load i64, ptr %i.av, align 8
  %.0.i44.i.i = select i1 %or.cond19.i.i.i, i64 %i.bl, i64 %i.bd
  store i32 1, ptr %i.ba, align 8
  store ptr null, ptr %i.ax, align 8
  store i64 %.015.i.i.i, ptr %i.at, align 8
  store i64 %.0.i44.i.i, ptr %i.av, align 8
  %i.bm = inttoptr i64 %.015.i.i.i to ptr
  %i.bn = call i32 @mas_store_gfp(ptr noundef nonnull %2, ptr noundef %i.bm, i32 noundef 3264) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.not36.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not36.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = call fastcc ptr @execmem_cache_alloc_locked(ptr noundef readonly %i.c, i64 noundef range(i64 0, -4095) %i.h) #10, !srcloc !11
  call void @mutex_unlock(ptr noundef nonnull @execmem_cache) #9
  br label %execmem_cache_alloc.exit

bb.o:                                             ; preds = %bb.m
  call void @mutex_unlock(ptr noundef nonnull @execmem_cache) #9
  %i.bp = call i32 @get_vm_area_page_order(ptr noundef nonnull %i.ao) #9
  %i.bq = shl nuw i32 1, %i.bp                    ; 4 uses
  %i.br = load i32, ptr %i.aq, align 4
  %.not37.i.i.i = icmp eq i32 %i.br, 0
  br i1 %.not37.i.i.i, label %execmem_set_direct_map_valid.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o
  %i.bs = getelementptr i8, ptr %i.ao, i64 32     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i.i
  %.02334.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.by, %bb.q ] ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = sext i32 %.02334.i.i.i to i64
  %i.bv = getelementptr [8 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call i32 @set_direct_map_valid_noflush(ptr noundef %i.bw, i32 noundef %i.bq, i1 noundef zeroext true) #9
  %.not.i45.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i45.i.i, label %bb.q, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.p
  %.not38.i.i.i = icmp eq i32 %.02334.i.i.i, 0
  br i1 %.not38.i.i.i, label %execmem_set_direct_map_valid.exit.i.i, label %.lr.ph36.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.by = add i32 %.02334.i.i.i, %i.bq            ; 2 uses
  %i.bz = load i32, ptr %i.aq, align 4
  %i.ca = icmp ult i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.p, label %execmem_set_direct_map_valid.exit.i.i, !llvm.loop !12

.lr.ph36.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph36.i.i.i
  %.035.i.i.i = phi i32 [ %i.cg, %.lr.ph36.i.i.i ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.cb = load ptr, ptr %i.bs, align 8
  %i.cc = sext i32 %.035.i.i.i to i64
  %i.cd = getelementptr [8 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call i32 @set_direct_map_valid_noflush(ptr noundef %i.ce, i32 noundef %i.bq, i1 noundef zeroext false) #9 ; 0 uses
  %i.cg = add i32 %.035.i.i.i, %i.bq              ; 2 uses
  %i.ch = icmp ult i32 %i.cg, %.02334.i.i.i
  br i1 %i.ch, label %.lr.ph36.i.i.i, label %execmem_set_direct_map_valid.exit.i.i, !llvm.loop !14

execmem_set_direct_map_valid.exit.i.i:            ; preds = %bb.q, %.lr.ph36.i.i.i, %.preheader.i.i.i, %bb.o, %bb.l, %bb.k
  call void @vfree(ptr noundef nonnull %.029.ph.i.i) #9
  br label %execmem_cache_alloc.exit

bb.r:                                             ; preds = %bb.a
  %i.ci = getelementptr i8, ptr %i.c, i64 32
  %.sroa.0.0.copyload = load i64, ptr %i.ci, align 8 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.c, i64 40
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = load i64, ptr %i.c, align 8
  %i.cm = getelementptr i8, ptr %i.c, i64 8
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = zext i32 %i.ck to i64                   ; 2 uses
  %i.cp = tail call ptr @llvm.returnaddress.p0(i32 0) ; 2 uses
  %i.cq = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %i.h, i64 noundef %i.co, i64 noundef %i.cl, i64 noundef %i.cn, i32 noundef 11456, i64 %.sroa.0.0.copyload, i64 noundef 256, i32 noundef -1, ptr noundef %i.cp) #11 ; 2 uses
  %.not54.i = icmp eq ptr %i.cq, null
  br i1 %.not54.i, label %bb.s, label %execmem_cache_alloc.exit

bb.s:                                             ; preds = %bb.r
  %i.cr = getelementptr i8, ptr %i.c, i64 16
  %i.cs = load i64, ptr %i.cr, align 8            ; 2 uses
  %.not55.i = icmp eq i64 %i.cs, 0
  br i1 %.not55.i, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr i8, ptr %i.c, i64 24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %i.h, i64 noundef %i.co, i64 noundef %i.cs, i64 noundef %i.cu, i32 noundef 11456, i64 %.sroa.0.0.copyload, i64 noundef 256, i32 noundef -1, ptr noundef %i.cp) #11 ; 2 uses
  %.not56.i = icmp eq ptr %i.cv, null
  br i1 %.not56.i, label %.thread.i, label %execmem_cache_alloc.exit

.thread.i:                                        ; preds = %bb.t, %bb.s
  %i.cw = tail call i32 @___ratelimit(ptr noundef nonnull @execmem_vmalloc._rs, ptr noundef nonnull @__func__.execmem_vmalloc) #9
  %.not57.i = icmp eq i32 %i.cw, 0
  br i1 %.not57.i, label %execmem_cache_alloc.exit, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.cx = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12 ; 0 uses
  br label %execmem_cache_alloc.exit

execmem_cache_alloc.exit:                         ; preds = %bb.u, %.thread.i, %bb.t, %bb.r, %execmem_set_direct_map_valid.exit.i.i, %bb.n, %bb.j, %.thread.i41.i.i, %bb.b
  %.0 = phi ptr [ null, %.thread.i41.i.i ], [ %i.i, %bb.b ], [ null, %execmem_set_direct_map_valid.exit.i.i ], [ %i.bo, %bb.n ], [ null, %bb.j ], [ null, %.thread.i ], [ null, %bb.u ], [ %i.cv, %bb.t ], [ %i.cq, %bb.r ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @execmem_alloc_rw(i32 noundef %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @execmem_alloc(i32 noundef %0, i64 noundef %1) #10 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %__free_execmem.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, 4095
  %i.c = lshr i64 %i.b, 12
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = tail call i32 @set_memory_nx(i64 noundef %i.e, i32 noundef %i.d) #9
  %.not.i10 = icmp eq i32 %i.f, 0
  br i1 %.not.i10, label %execmem_force_rw.exit, label %execmem_force_rw.exit.thread

execmem_force_rw.exit:                            ; preds = %bb.b
  %i.g = tail call i32 @set_memory_rw(i64 noundef %i.e, i32 noundef %i.d) #9
  %.not9 = icmp eq i32 %i.g, 0
  br i1 %.not9, label %__free_execmem.exit, label %execmem_force_rw.exit.thread

execmem_force_rw.exit.thread:                     ; preds = %bb.b, %execmem_force_rw.exit
  tail call void @execmem_free(ptr noundef nonnull %i.a) #10
  br label %__free_execmem.exit

__free_execmem.exit:                              ; preds = %execmem_force_rw.exit, %bb.a, %execmem_force_rw.exit.thread
  %.018 = phi ptr [ null, %execmem_force_rw.exit.thread ], [ null, %bb.a ], [ %i.a, %execmem_force_rw.exit ]
  ret ptr %.018
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @execmem_free(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.ma_state, align 8           ; 14 uses
  %i.a = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count) #14, !srcloc !15
  %i.b = and i32 %i.a, 16776960
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "644: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 644b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 644) #13, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 503, i32 2305, i64 16) #13, !srcloc !18
  tail call void asm sideeffect "645: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 645b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 645) #13, !srcloc !19
  br label %bb.c
end_hunk_0
