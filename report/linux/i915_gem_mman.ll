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
define dso_local i32 @i915_gem_mmap_ioctl(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
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
  %i.g = load i8, ptr %i.f, align 8
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 8
  %i.j = getelementptr i8, ptr %0, i64 1657
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
  %i.n = icmp samesign ugt i32 %i.m, 3072
  br i1 %i.n, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.not52 = icmp ult i64 %i.p, 2
  br i1 %.not52, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %.not53 = icmp eq i64 %i.p, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call zeroext i1 @pat_enabled() #10
  br i1 %i.q, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = load i32, ptr %1, align 8
  tail call void @__rcu_read_lock() #10
  %i.s = getelementptr i8, ptr %2, i64 80
  %i.t = zext i32 %i.r to i64
  %i.u = tail call ptr @idr_find(ptr noundef %i.s, i64 noundef %i.t) #10 ; 12 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %i915_gem_object_lookup.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load volatile i32, ptr %i.u, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.old1.not.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.g, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ], [ %i.v, %bb.g ] ; 3 uses
  %i.w = add i32 %.0.i.i.i.i.i.i, 1
  %i.x = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.u, i32 %i.w, ptr nonnull elementtype(i32) %i.u, i32 %.0.i.i.i.i.i.i) #11, !srcloc !13 ; 2 uses
  %i.y = extractvalue { i8, i32 } %i.x, 0         ; 2 uses
  %i.z = icmp ult i8 %i.y, 2
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = trunc nuw i8 %i.y to i1
  br i1 %i.aa, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, !prof !14

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i
  %i.ab = extractvalue { i8, i32 } %i.x, 1        ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !0

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i:  ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.g
  %.2.i.i.i.i.i.i = phi i32 [ 0, %bb.g ], [ %.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ad = add i32 %.2.i.i.i.i.i.i, 1
  %i.ae = or i32 %i.ad, %.2.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i.i.i.i.i.i, label %kref_get_unless_zero.exit.i.i, label %bb.h, !prof !14

bb.h:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.u, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %bb.h, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  %.not5.i.i = icmp eq i32 %.2.i.i.i.i.i.i, 0
  br i1 %.not5.i.i, label %i915_gem_object_lookup.exit.thread, label %i915_gem_object_lookup.exit

i915_gem_object_lookup.exit.thread:               ; preds = %bb.f, %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  br label %bb.v

i915_gem_object_lookup.exit:                      ; preds = %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  %i.af = getelementptr i8, ptr %i.u, i64 16      ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not55 = icmp eq ptr %i.ag, null
  br i1 %.not55, label %.critedge, label %bb.i

bb.i:                                             ; preds = %i915_gem_object_lookup.exit
  %i.ah = getelementptr i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ak = getelementptr i8, ptr %i.u, i64 216
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %.not56 = icmp ult i64 %i.ai, %i.al
  br i1 %.not56, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.am = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.an = sub nuw i64 %i.al, %i.ai
  %i.ao = icmp ugt i64 %i.am, %i.an
  br i1 %i.ao, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call i64 @vm_mmap(ptr noundef nonnull %i.ag, i64 noundef 0, i64 noundef %i.am, i64 noundef 3, i64 noundef 1, i64 noundef %i.ai) #10 ; 6 uses
  %i.aq = icmp ugt i64 %i.ap, -4096
  br i1 %i.aq, label %.critedge, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.ar = load i64, ptr %i.o, align 8
  %i.as = and i64 %i.ar, 1
  %.not57 = icmp eq i64 %i.as, 0
  br i1 %.not57, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #12, !srcloc !31
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr i8, ptr %i.au, i64 1400
  %i.aw = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.ax = tail call fastcc i32 @mmap_write_lock_killable(ptr noundef %i.aw) #13, !srcloc !32
  %.not58 = icmp eq i32 %i.ax, 0
  br i1 %.not58, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ay = tail call ptr @find_vma(ptr noundef %i.aw, i64 noundef %i.ap) #10 ; 6 uses
  %.not59 = icmp eq ptr %i.ay, null
  br i1 %.not59, label %__vma_matches.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.af, align 8
  %i.ba = load i64, ptr %i.aj, align 8
  %i.bb = getelementptr i8, ptr %i.ay, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8
  %.not.i = icmp eq ptr %i.bc, %i.az
  br i1 %.not.i, label %bb.p, label %__vma_matches.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bd = load i64, ptr %i.ay, align 64
  %i.be = icmp eq i64 %i.bd, %i.ap
  br i1 %i.be, label %__vma_matches.exit, label %__vma_matches.exit.thread

__vma_matches.exit:                               ; preds = %bb.p
  %i.bf = getelementptr i8, ptr %i.ay, i64 8
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = sub i64 %i.bg, %i.ap
  %i.bi = add i64 %i.ba, 4095
  %i.bj = and i64 %i.bi, -4096
  %i.bk = icmp eq i64 %i.bh, %i.bj
  br i1 %i.bk, label %bb.q, label %__vma_matches.exit.thread

__vma_matches.exit.thread:                        ; preds = %bb.p, %bb.o, %__vma_matches.exit, %bb.n
  tail call fastcc void @mmap_write_unlock(ptr noundef %i.aw) #13, !srcloc !33
  br label %.critedge

bb.q:                                             ; preds = %__vma_matches.exit
  %i.bl = getelementptr i8, ptr %i.ay, i64 24
  %i.bm = getelementptr i8, ptr %i.ay, i64 32
  %i.bn = load i64, ptr %i.bm, align 32
  %i.bo = tail call i64 @vm_get_page_prot(i64 noundef %i.bn) #10
  %i.bp = tail call i64 @pgprot_writecombine(i64 %i.bo) #10
  store i64 %i.bp, ptr %i.bl, align 8
  tail call fastcc void @mmap_write_unlock(ptr noundef %i.aw) #13, !srcloc !33
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  tail call fastcc void @i915_gem_object_put(ptr noundef nonnull %i.u) #13, !srcloc !34
  %i.bq = getelementptr i8, ptr %1, i64 24
  store i64 %i.ap, ptr %i.bq, align 8
  br label %bb.v

.critedge:                                        ; preds = %__vma_matches.exit.thread, %bb.m, %bb.i, %bb.j, %i915_gem_object_lookup.exit, %bb.k
  %.3 = phi i64 [ 4294967290, %i915_gem_object_lookup.exit ], [ %i.ap, %bb.k ], [ 4294967274, %bb.i ], [ 4294967274, %bb.j ], [ 4294967284, %__vma_matches.exit.thread ], [ 4294967292, %bb.m ]
  %i.br = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.u, i32 -1, ptr nonnull elementtype(i32) %i.u) #11, !srcloc !17 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.bt = icmp slt i32 %i.br, 1
  br i1 %i.bt, label %bb.t, label %i915_gem_object_put.exit, !prof !16

bb.t:                                             ; preds = %bb.s
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.u, i32 noundef 3) #10
  br label %i915_gem_object_put.exit

bb.u:                                             ; preds = %.critedge
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %i.u) #10
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.s, %bb.t, %bb.u
  %i.bu = trunc i64 %.3 to i32
  br label %bb.v

bb.v:                                             ; preds = %i915_gem_object_lookup.exit.thread, %bb.e, %bb.c, %bb.a, %bb.b, %i915_gem_object_put.exit, %bb.r
  %.0 = phi i32 [ -22, %bb.c ], [ -95, %bb.a ], [ %i.bu, %i915_gem_object_put.exit ], [ -2, %i915_gem_object_lookup.exit.thread ], [ 0, %bb.r ], [ -19, %bb.e ], [ -95, %bb.b ]
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
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext true) #10
  br label %__mmap_lock_trace_start_locking.exit

__mmap_lock_trace_start_locking.exit:             ; preds = %bb.a, %bb.b
  %i.a = getelementptr i8, ptr %0, i64 464
  %i.b = tail call i32 @down_write_killable(ptr noundef %i.a) #10 ; 2 uses
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %__mmap_lock_trace_start_locking.exit
  %i.c = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %__mmap_lock_trace_start_locking.exit
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #11
          to label %__mmap_lock_trace_acquire_returned.exit [label %bb.e], !srcloc !19

bb.e:                                             ; preds = %bb.d
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext %.not) #10
  br label %__mmap_lock_trace_acquire_returned.exit

__mmap_lock_trace_acquire_returned.exit:          ; preds = %bb.d, %bb.e
  ret i32 %i.b
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @pgprot_writecombine(i64) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @vm_get_page_prot(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @mmap_write_unlock(ptr noundef %0) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #11
          to label %__mmap_lock_trace_released.exit [label %bb.b], !srcloc !19

bb.b:                                             ; preds = %bb.a
  tail call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext true) #10
  br label %__mmap_lock_trace_released.exit

__mmap_lock_trace_released.exit:                  ; preds = %bb.a, %bb.b
  %i.a = getelementptr i8, ptr %0, i64 464        ; 2 uses
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 1
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %vma_end_write_all.exit, !prof !16

bb.c:                                             ; preds = %__mmap_lock_trace_released.exit
  tail call void asm sideeffect "151: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 151b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 151) #11, !srcloc !20
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 87, i32 2305, i64 16) #11, !srcloc !21
  tail call void asm sideeffect "152: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 152b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 152) #11, !srcloc !22
  br label %vma_end_write_all.exit

vma_end_write_all.exit:                           ; preds = %__mmap_lock_trace_released.exit, %bb.c
  %i.d = getelementptr i8, ptr %0, i64 520        ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !36
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  tail call void @up_write(ptr noundef %i.a) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @i915_gem_object_put(ptr noundef %0) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 -1, ptr elementtype(i32) %0) #11, !srcloc !17 ; 2 uses
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.a, 1
  br i1 %i.c, label %bb.c, label %__drm_gem_object_put.exit, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #10
  br label %__drm_gem_object_put.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef %0) #10
  br label %__drm_gem_object_put.exit

__drm_gem_object_put.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef i32 @i915_gem_mmap_gtt_version() local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  ret i32 5
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__i915_gem_object_release_mmap_gtt(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 496        ; 3 uses
  %.pn10 = load ptr, ptr %i.a, align 8            ; 2 uses
  %.not12 = icmp eq ptr %.pn10, %i.a
  br i1 %.not12, label %i915_vma_is_ggtt.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.pn13 = phi ptr [ %.pn, %bb.b ], [ %.pn10, %bb.a ] ; 3 uses
  %i.b = getelementptr i8, ptr %.pn13, i64 -236
  %i.c = load volatile i64, ptr %i.b, align 8
  %.in.in.i = and i64 %i.c, 8192
  %.in.i.not = icmp eq i64 %.in.in.i, 0
  br i1 %.in.i.not, label %i915_vma_is_ggtt.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.014 = getelementptr i8, ptr %.pn13, i64 -504
  tail call void @i915_vma_revoke_mmap(ptr noundef %.014) #10
  %.pn = load ptr, ptr %.pn13, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, %i.a
  br i1 %.not, label %i915_vma_is_ggtt.exit._crit_edge, label %.lr.ph, !llvm.loop !1

i915_vma_is_ggtt.exit._crit_edge:                 ; preds = %bb.b, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vma_revoke_mmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i915_gem_object_release_mmap_gtt(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 3176     ; 2 uses
  %i.d = tail call ptr @intel_runtime_pm_get(ptr noundef %i.c) #10 ; 0 uses
  %i.e = getelementptr i8, ptr %i.b, i64 3528     ; 2 uses
  %.val8 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val8, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 384
  tail call void @mutex_lock(ptr noundef %i.h) #10
  %i.i = getelementptr i8, ptr %0, i64 608
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 496        ; 3 uses
  %.pn10.i = load ptr, ptr %i.k, align 8          ; 2 uses
  %.not12.i = icmp eq ptr %.pn10.i, %i.k
  br i1 %.not12.i, label %__i915_gem_object_release_mmap_gtt.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.pn13.i = phi ptr [ %.pn.i, %bb.c ], [ %.pn10.i, %bb.b ] ; 3 uses
  %i.l = getelementptr i8, ptr %.pn13.i, i64 -236
  %i.m = load volatile i64, ptr %i.l, align 8
  %.in.in.i.i = and i64 %i.m, 8192
  %.in.i.not.i = icmp eq i64 %.in.in.i.i, 0
  br i1 %.in.i.not.i, label %__i915_gem_object_release_mmap_gtt.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.014.i = getelementptr i8, ptr %.pn13.i, i64 -504
  tail call void @i915_vma_revoke_mmap(ptr noundef %.014.i) #10
  %.pn.i = load ptr, ptr %.pn13.i, align 8        ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.k
  br i1 %.not.i, label %__i915_gem_object_release_mmap_gtt.exit, label %.lr.ph.i, !llvm.loop !1

__i915_gem_object_release_mmap_gtt.exit:          ; preds = %.lr.ph.i, %bb.c, %bb.b
end_hunk_0
