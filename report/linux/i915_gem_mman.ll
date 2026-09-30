Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i915_gem_mman?download=true
inline.NumInlined: 215
inline.NumDeleted: 124
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.84 }
%struct.atomic_t = type { i32 }
%union.anon.84 = type { i64 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.85, i8, %union.anon.87, i32, [5 x i32], i8, i8, i32, i32, %union.anon.88, [16 x i8], [64 x i8], %struct.cpuinfo_topology, %struct.cpuid_table, i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.85 = type { i32 }
%union.anon.87 = type { i8 }
%union.anon.88 = type { i64, [88 x i8] }
%struct.cpuinfo_topology = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.89 }
%union.anon.89 = type { i32 }
%struct.cpuid_table = type { %struct.cpuid_leaves }
%struct.cpuid_leaves = type <{ [1 x %struct.leaf_0x0_0], %struct.leaf_parse_info, [1 x %struct.leaf_0x1_0], %struct.leaf_parse_info }>
%struct.leaf_0x0_0 = type { i64, i64 }
%struct.leaf_0x1_0 = type { i64, i64 }
%struct.leaf_parse_info = type { i32 }
%struct.static_call_key = type { ptr, %union.anon.95 }
%union.anon.95 = type { i64 }
%struct.srcu_struct = type { ptr, ptr, i8, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.i915_gem_ww_ctx = type { %struct.ww_acquire_ctx, %struct.list_head, ptr, i8 }
%struct.ww_acquire_ctx = type { ptr, i64, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.i915_gtt_view = type { i32, %union.anon.42 }
%union.anon.42 = type { %struct.intel_remapped_info }
%struct.intel_remapped_info = type { [4 x %struct.intel_remapped_plane_info], i32 }
%struct.intel_remapped_plane_info = type { i32, %union.anon.43 }
%union.anon.43 = type { i32, [4 x i8] }

@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"include/linux/rwsem.h\00", align 1
@vm_ops_cpu = internal constant %struct.vm_operations_struct { ptr @vm_open, ptr @vm_close, ptr null, ptr null, ptr null, ptr null, ptr @vm_fault_cpu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vm_access, ptr null, ptr null, ptr null }, align 8
@boot_cpu_data = external dso_local local_unnamed_addr global %struct.cpuinfo_x86, align 8
@vm_ops_gtt = internal constant %struct.vm_operations_struct { ptr @vm_open, ptr @vm_close, ptr null, ptr null, ptr null, ptr null, ptr @vm_fault_gtt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vm_access, ptr null, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"i915.gem\00", align 1
@singleton_fops = internal constant { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { ptr null, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @singleton_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"unhandled error in %s: %i\0A\00", align 1
@__func__.i915_error_to_vmf_fault = private unnamed_addr constant [24 x i8] c"i915_error_to_vmf_fault\00", align 1
@i915_error_to_vmf_fault.__UNIQUE_ID_addressable___SCK__WARN_trap_939 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/i915/gem/i915_gem_mman.c\00", align 1
@__tracepoint_i915_gem_object_fault = external dso_local global %struct.tracepoint, align 8
@__do_trace_i915_gem_object_fault.__trace_check_i915_gem_object_fault = internal constant [22 x i8] c"i915_gem_object_fault\00", section "__tracepoint_check", align 16
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 8
@__do_trace_i915_gem_object_fault.__UNIQUE_ID_addressable___SCK__tp_func_i915_gem_object_fault_837 = internal global ptr @__SCK__tp_func_i915_gem_object_fault, section ".discard.addressable", align 8
@__SCK__tp_func_i915_gem_object_fault = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.7 = private unnamed_addr constant [44 x i8] c"RPM wakelock ref not held during HW access\0A\00", align 1
@__assert_rpm_wakelock_held.__UNIQUE_ID_addressable___SCK__WARN_trap_718 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.8 = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/i915/intel_runtime_pm.h\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"RPM raw-wakeref not held\0A\00", align 1
@__assert_rpm_raw_wakeref_held.__UNIQUE_ID_addressable___SCK__WARN_trap_717 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"Device suspended during HW access\0A\00", align 1
@assert_rpm_device_not_suspended.__UNIQUE_ID_addressable___SCK__WARN_trap_716 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@llvm.compiler.used = appending global [6 x ptr] [ptr @__assert_rpm_raw_wakeref_held.__UNIQUE_ID_addressable___SCK__WARN_trap_717, ptr @__assert_rpm_wakelock_held.__UNIQUE_ID_addressable___SCK__WARN_trap_718, ptr @__do_trace_i915_gem_object_fault.__UNIQUE_ID_addressable___SCK__tp_func_i915_gem_object_fault_837, ptr @__do_trace_i915_gem_object_fault.__trace_check_i915_gem_object_fault, ptr @assert_rpm_device_not_suspended.__UNIQUE_ID_addressable___SCK__WARN_trap_716, ptr @i915_error_to_vmf_fault.__UNIQUE_ID_addressable___SCK__WARN_trap_939], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -4095, 1) i32 @i915_gem_mmap_ioctl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1648
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 28
  %i.d = load i64, ptr %i.c, align 4
  %i.e = and i64 %i.d, 4
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 1656
  %3 = load i8, ptr %i.f, align 8
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 8
  %6 = getelementptr i8, ptr %0, i64 1657
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = or disjoint i32 %5, %8
  %i.g = icmp samesign ugt i32 %9, 3072
  br i1 %i.g, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.not52 = icmp ult i64 %i.i, 2
  br i1 %.not52, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %.not53 = icmp eq i64 %i.i, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call zeroext i1 @pat_enabled() #10
  br i1 %i.j, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = load i32, ptr %1, align 8
  tail call void @__rcu_read_lock() #10
  %i.l = getelementptr i8, ptr %2, i64 80
  %i.m = zext i32 %i.k to i64
  %i.n = tail call ptr @idr_find(ptr noundef %i.l, i64 noundef %i.m) #10 ; 12 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %i915_gem_object_lookup.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load volatile i32, ptr %i.n, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.old1.not.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.g, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ], [ %i.o, %bb.g ] ; 3 uses
  %i.p = add i32 %.0.i.i.i.i.i.i, 1
  %i.q = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.n, i32 %i.p, ptr nonnull elementtype(i32) %i.n, i32 %.0.i.i.i.i.i.i) #11, !srcloc !13 ; 2 uses
  %i.r = extractvalue { i8, i32 } %i.q, 0         ; 2 uses
  %i.s = icmp ult i8 %i.r, 2
  tail call void @llvm.assume(i1 %i.s)
  %i.t = trunc nuw i8 %i.r to i1
  br i1 %i.t, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, !prof !14

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i
  %i.u = extractvalue { i8, i32 } %i.q, 1         ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !0

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i:  ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.g
  %.2.i.i.i.i.i.i = phi i32 [ 0, %bb.g ], [ %.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ] ; 3 uses
  %i.w = add i32 %.2.i.i.i.i.i.i, 1
  %i.x = or i32 %i.w, %.2.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i.i.i.i.i, label %kref_get_unless_zero.exit.i.i, label %bb.h, !prof !14

bb.h:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.n, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %bb.h, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  %.not5.i.i = icmp eq i32 %.2.i.i.i.i.i.i, 0
  br i1 %.not5.i.i, label %i915_gem_object_lookup.exit.thread, label %i915_gem_object_lookup.exit

i915_gem_object_lookup.exit.thread:               ; preds = %bb.f, %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  br label %bb.v

i915_gem_object_lookup.exit:                      ; preds = %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  %i.y = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not55 = icmp eq ptr %i.z, null
  br i1 %.not55, label %.critedge, label %bb.i

bb.i:                                             ; preds = %i915_gem_object_lookup.exit
  %i.aa = getelementptr i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ad = getelementptr i8, ptr %i.n, i64 216
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %.not56 = icmp ult i64 %i.ab, %i.ae
  br i1 %.not56, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ag = sub nuw i64 %i.ae, %i.ab
  %i.ah = icmp ugt i64 %i.af, %i.ag
  br i1 %i.ah, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call i64 @vm_mmap(ptr noundef nonnull %i.z, i64 noundef 0, i64 noundef %i.af, i64 noundef 3, i64 noundef 1, i64 noundef %i.ab) #10 ; 6 uses
  %i.aj = icmp ugt i64 %i.ai, -4096
  br i1 %i.aj, label %.critedge, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.ak = load i64, ptr %i.h, align 8
  %i.al = and i64 %i.ak, 1
  %.not57 = icmp eq i64 %i.al, 0
  br i1 %.not57, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !31
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr i8, ptr %i.an, i64 1400
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = tail call fastcc i32 @mmap_write_lock_killable(ptr noundef %i.ap) #13, !srcloc !32
  %.not58 = icmp eq i32 %i.aq, 0
  br i1 %.not58, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call ptr @find_vma(ptr noundef %i.ap, i64 noundef %i.ai) #10 ; 6 uses
  %.not59 = icmp eq ptr %i.ar, null
  br i1 %.not59, label %__vma_matches.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.y, align 8
  %i.at = load i64, ptr %i.ac, align 8
  %i.au = getelementptr i8, ptr %i.ar, i64 88
  %i.av = load ptr, ptr %i.au, align 8
  %.not.i = icmp eq ptr %i.av, %i.as
  br i1 %.not.i, label %bb.p, label %__vma_matches.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %i.ar, align 64
  %i.ax = icmp eq i64 %i.aw, %i.ai
  br i1 %i.ax, label %__vma_matches.exit, label %__vma_matches.exit.thread

__vma_matches.exit:                               ; preds = %bb.p
  %i.ay = getelementptr i8, ptr %i.ar, i64 8
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = sub i64 %i.az, %i.ai
  %i.bb = add i64 %i.at, 4095
  %i.bc = and i64 %i.bb, -4096
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.q, label %__vma_matches.exit.thread

__vma_matches.exit.thread:                        ; preds = %bb.p, %bb.o, %__vma_matches.exit, %bb.n
  tail call fastcc void @mmap_write_unlock(ptr noundef %i.ap) #13, !srcloc !33
  br label %.critedge

bb.q:                                             ; preds = %__vma_matches.exit
  %i.be = getelementptr i8, ptr %i.ar, i64 24
  %i.bf = getelementptr i8, ptr %i.ar, i64 32
  %i.bg = load i64, ptr %i.bf, align 32
  %i.bh = tail call i64 @vm_get_page_prot(i64 noundef %i.bg) #10
  %i.bi = tail call i64 @pgprot_writecombine(i64 %i.bh) #10
  store i64 %i.bi, ptr %i.be, align 8
  tail call fastcc void @mmap_write_unlock(ptr noundef %i.ap) #13, !srcloc !33
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  tail call fastcc void @i915_gem_object_put(ptr noundef nonnull %i.n) #13, !srcloc !34
  %i.bj = getelementptr i8, ptr %1, i64 24
  store i64 %i.ai, ptr %i.bj, align 8
  br label %bb.v

.critedge:                                        ; preds = %__vma_matches.exit.thread, %bb.m, %bb.i, %bb.j, %i915_gem_object_lookup.exit, %bb.k
  %.3 = phi i64 [ -6, %i915_gem_object_lookup.exit ], [ %i.ai, %bb.k ], [ -22, %bb.i ], [ -22, %bb.j ], [ -12, %__vma_matches.exit.thread ], [ -4, %bb.m ]
  %i.bk = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.n, i32 -1, ptr nonnull elementtype(i32) %i.n) #11, !srcloc !17 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.bm = icmp slt i32 %i.bk, 1
  br i1 %i.bm, label %bb.t, label %i915_gem_object_put.exit, !prof !16

bb.t:                                             ; preds = %bb.s
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.n, i32 noundef 3) #10
  br label %i915_gem_object_put.exit

bb.u:                                             ; preds = %.critedge
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %i.n) #10
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.s, %bb.t, %bb.u
  %i.bn = trunc nsw i64 %.3 to i32
  br label %bb.v

bb.v:                                             ; preds = %i915_gem_object_lookup.exit.thread, %bb.e, %bb.c, %bb.a, %bb.b, %i915_gem_object_put.exit, %bb.r
  %.0 = phi i32 [ -22, %bb.c ], [ -95, %bb.a ], [ %i.bn, %i915_gem_object_put.exit ], [ -2, %i915_gem_object_lookup.exit.thread ], [ 0, %bb.r ], [ -19, %bb.e ], [ -95, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @pat_enabled() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @vm_mmap(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @mmap_write_lock_killable(ptr noundef %0) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #11
          to label %__mmap_lock_trace_start_locking.exit [label %bb.b], !srcloc !19

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@vm_fault_gtt:bb.a
bb.aj:                                            ; preds = %bb.ai
  %i.ft = getelementptr i8, ptr %.389, i64 270    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ft, i32 1, ptr elementtype(i8) %i.ft) #11, !srcloc !59
  %i.fu = load i8, ptr %i.bi, align 8
  %i.fv = or i8 %i.fu, 4
  store i8 %i.fv, ptr %i.bi, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ae
  %i.fw = getelementptr i8, ptr %.389, i64 216
  %.389.val = load ptr, ptr %i.fw, align 8        ; 2 uses
  %.not.i118 = icmp eq ptr %.389.val, null
  br i1 %.not.i118, label %i915_vma_unpin_fence.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fx = getelementptr i8, ptr %.389.val, i64 32 ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fx, ptr elementtype(i32) %i.fx) #11, !srcloc !26
  br label %i915_vma_unpin_fence.exit

i915_vma_unpin_fence.exit:                        ; preds = %bb.al, %bb.ak, %bb.ac, %bb.ad
  %.3 = phi i32 [ %i.dv, %bb.ad ], [ -14, %bb.ac ], [ %i.fa, %bb.ak ], [ %i.fa, %bb.al ]
  %i.fy = getelementptr i8, ptr %.389, i64 268    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fy, ptr elementtype(i32) %i.fy) #11, !srcloc !26
  br label %bb.am

bb.am:                                            ; preds = %.thread129, %i915_vma_unpin_fence.exit, %.thread136
  %.4 = phi i32 [ %i.dp, %.thread136 ], [ %.3, %i915_vma_unpin_fence.exit ], [ %.2, %.thread129 ]
  %i.fz = load ptr, ptr %i.au, align 8
  %i.ga = load i32, ptr %i.a, align 4
  call void @intel_gt_reset_unlock(ptr noundef %i.fz, i32 noundef %i.ga) #10
  br label %bb.an

bb.an:                                            ; preds = %i915_gem_object_pin_pages.exit.thread, %bb.am
  %.5 = phi i32 [ %i.ck, %i915_gem_object_pin_pages.exit.thread ], [ %.4, %bb.am ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.at, ptr elementtype(i32) %i.at) #11, !srcloc !26
  br label %bb.ao

bb.ao:                                            ; preds = %i915_gem_object_pin_pages.exit, %bb.an
  %.6 = phi i32 [ %i.ci, %i915_gem_object_pin_pages.exit ], [ %.5, %bb.an ] ; 2 uses
  %i.gb = icmp eq i32 %.6, -35
  br i1 %i.gb, label %bb.ap, label %.thread140

bb.ap:                                            ; preds = %.thread142, %bb.ao
  %i.gc = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %1) #10 ; 2 uses
  %.not110 = icmp eq i32 %i.gc, 0
  br i1 %.not110, label %bb.e, label %.thread140

.thread140:                                       ; preds = %bb.h, %i915_gem_object_get.exit.i.i, %bb.ap, %bb.ao
  %.7 = phi i32 [ %i.gc, %bb.ap ], [ %.6, %bb.ao ], [ %.0.i.i, %i915_gem_object_get.exit.i.i ], [ %.0.i.i, %bb.h ] ; 2 uses
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %1) #10
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.i) #10
  switch i32 %.7, label %bb.aq [
    i32 -5, label %i915_error_to_vmf_fault.exit
    i32 -14, label %i915_error_to_vmf_fault.exit
    i32 -19, label %i915_error_to_vmf_fault.exit
    i32 -6, label %i915_error_to_vmf_fault.exit
    i32 -12, label %bb.ar
    i32 0, label %bb.as
    i32 -11, label %bb.as
    i32 -28, label %bb.as
    i32 -105, label %bb.as
    i32 -512, label %bb.as
    i32 -4, label %bb.as
    i32 -16, label %bb.as
  ]

bb.aq:                                            ; preds = %.thread140
  %i.gd = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.5, ptr nonnull @.str.6, i32 226, i32 2323, i64 16) #11, !srcloc !27
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.gd, ptr noundef nonnull @__func__.i915_error_to_vmf_fault, i32 noundef %.7) #10
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !28
  br label %i915_error_to_vmf_fault.exit

bb.ar:                                            ; preds = %.thread140
  br label %i915_error_to_vmf_fault.exit

bb.as:                                            ; preds = %.thread140, %.thread140, %.thread140, %.thread140, %.thread140, %.thread140, %.thread140
  br label %i915_error_to_vmf_fault.exit

i915_error_to_vmf_fault.exit:                     ; preds = %.thread140.thread, %.thread140, %.thread140, %.thread140, %.thread140, %bb.aq, %bb.ar, %bb.as
  %.0.i119 = phi i32 [ 256, %bb.as ], [ 1, %bb.ar ], [ 2, %bb.aq ], [ 2, %.thread140 ], [ 2, %.thread140 ], [ 2, %.thread140 ], [ 2, %.thread140 ], [ 2, %.thread140.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i32 %.0.i119
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_gt_reset_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_ggtt_pin_ww(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_evict_vm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_has_cache_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_vma_pin_fence(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @remap_io_mapping(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @assert_rpm_wakelock_held(ptr nofree noundef captures(address) %0) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i32, ptr %0, align 4       ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 476
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %intel_runtime_pm_suspended.exit.i.i.i, label %assert_rpm_device_not_suspended.exit.i.i

intel_runtime_pm_suspended.exit.i.i.i:            ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.val, i64 464
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 7
  %.not.i.i.i.i.i = icmp eq i16 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.b, label %assert_rpm_device_not_suspended.exit.i.i, !prof !60

bb.b:                                             ; preds = %intel_runtime_pm_suspended.exit.i.i.i
  %i.i = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.8, i32 110, i32 2323, i64 16) #11, !srcloc !61
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.i) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !62
  br label %assert_rpm_device_not_suspended.exit.i.i

assert_rpm_device_not_suspended.exit.i.i:         ; preds = %bb.b, %intel_runtime_pm_suspended.exit.i.i.i, %bb.a
  %i.j = and i32 %i.a, 65535
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %__assert_rpm_raw_wakeref_held.exit.i, !prof !16

bb.c:                                             ; preds = %assert_rpm_device_not_suspended.exit.i.i
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.9, ptr nonnull @.str.8, i32 118, i32 2323, i64 16) #11, !srcloc !63
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.k) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !64
  br label %__assert_rpm_raw_wakeref_held.exit.i

__assert_rpm_raw_wakeref_held.exit.i:             ; preds = %bb.c, %assert_rpm_device_not_suspended.exit.i.i
  %.not.i = icmp ult i32 %i.a, 65536
  br i1 %.not.i, label %bb.d, label %__assert_rpm_wakelock_held.exit, !prof !16

bb.d:                                             ; preds = %__assert_rpm_raw_wakeref_held.exit.i
  %i.l = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.8, i32 126, i32 2323, i64 16) #11, !srcloc !65
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.l) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !66
  br label %__assert_rpm_wakelock_held.exit

__assert_rpm_wakelock_held.exit:                  ; preds = %__assert_rpm_raw_wakeref_held.exit.i, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_wakeref_auto(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_gt_reset_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_i915_gem_object_fault(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_vma_offset_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @intel_gt_retire_requests_timeout(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_drain_freed_objects(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_vma_node_allow_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_vma_offset_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { nounwind }
attributes #12 = { nounwind memory(none) }
attributes #13 = { noredzone "no-builtin-wcslen" }
attributes #14 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{null}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 8, !"cf-protection-branch", i32 1}
!5 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!7 = !{i32 1, !"Code Model", i32 2}
!8 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!9 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!10 = !{i32 1, !"override-stack-alignment", i32 8}
!11 = !{i32 4, !"SkipRaxSetup", i32 1}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{i64 2148988594, i64 2148988633, i64 2148988654, i64 2148988691, i64 2148988714, i64 2148988723}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!17 = !{i64 2148982845, i64 2148982884, i64 2148982905, i64 2148982942, i64 2148982965, i64 2148982974}
!18 = !{i64 2150821420}
!19 = !{i64 2148793961, i64 2148794001, i64 2148794118, i64 2148794139, i64 2148794182, i64 2148794197, i64 2148794230, i64 2148794264, i64 2148794288}
!20 = !{i64 2151511304, i64 2151511179}
!21 = !{i64 2151511827, i64 2151512919, i64 2151512952, i64 2151512987, i64 2151513003, i64 2151513930, i64 2151513988, i64 2151514037, i64 2151513847, i64 2151513062, i64 2151513094, i64 2151513177}
!22 = !{i64 2151514337, i64 2151514213}
!23 = !{!"auto-init"}
!24 = !{!"branch_weights", i32 1, i32 127}
!25 = !{!"branch_weights", i32 127, i32 255873}
!26 = !{i64 2148973014, i64 2148973053, i64 2148973074, i64 2148973111, i64 2148973134, i64 2148973005}
!27 = !{i64 2161688764, i64 2161688791, i64 2161689181, i64 2161689214, i64 2161689249, i64 2161689265, i64 2161690106, i64 2161690164, i64 2161690213, i64 2161690023, i64 2161689324, i64 2161689356}
!28 = !{i64 2161687119}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{i64 2148354829}
!32 = !{i64 2817}
!33 = !{i64 3088}
!34 = !{i64 3154}
!35 = !{i64 2151218522}
!36 = !{i64 2151218795}
!37 = !{i64 2161698381}
!38 = distinct !{!38, !15}
!39 = !{i64 22920}
!40 = distinct !{null}
!41 = !{i64 21844}
!42 = !{i64 24753}
!43 = !{i64 29807}
!44 = !{i64 2161713192}
!45 = !{i64 30572}
!46 = !{i64 30996}
!47 = !{i64 2161711551, i64 2161711590, i64 2161711611, i64 2161711648, i64 2161711671, i64 2161711680}
!48 = distinct !{!48, !"compute_partial_view"}
!49 = distinct !{!49, !48, !"compute_partial_view: argument 0"}
!50 = !{i64 2161163518}
!51 = !{i64 2148586505}
!52 = !{i64 2151776021}
!53 = !{i64 2151779323}
!54 = !{i64 2151779745}
!55 = !{i64 2151791527}
!56 = !{!49}
!57 = !{i64 13743}
!58 = !{i64 2148579726, i64 2148579765, i64 2148579786, i64 2148579823, i64 2148579846, i64 2148579855}
!59 = !{i64 2148573261, i64 2148573300, i64 2148573321, i64 2148573358, i64 2148573381, i64 2148573252}
!60 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!61 = !{i64 2160172482, i64 2160172509, i64 2160172907, i64 2160172940, i64 2160172975, i64 2160172991, i64 2160173832, i64 2160173890, i64 2160173939, i64 2160173749, i64 2160173050, i64 2160173082}
!62 = !{i64 2160170849}
!63 = !{i64 2160176354, i64 2160176381, i64 2160176770, i64 2160176803, i64 2160176838, i64 2160176854, i64 2160177695, i64 2160177753, i64 2160177802, i64 2160177612, i64 2160176913, i64 2160176945}
!64 = !{i64 2160174739}
!65 = !{i64 2160180268, i64 2160180295, i64 2160180702, i64 2160180735, i64 2160180770, i64 2160180786, i64 2160181627, i64 2160181685, i64 2160181734, i64 2160181544, i64 2160180845, i64 2160180877}
!66 = !{i64 2160178617}
end_hunk_1
