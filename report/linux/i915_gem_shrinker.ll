Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i915_gem_shrinker?download=true
inline.NumInlined: 140
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.23 }
%union.anon.23 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.24 }
%struct.atomic_t = type { i32 }
%union.anon.24 = type { i64 }
%struct.srcu_struct = type { ptr, ptr, i8, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.atomic64_t = type { i64 }
%struct.anon = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [13 x i8] c"drm-i915_gem\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: [drm] %s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"drm_WARN_ON(1)\00", align 1
@i915_gem_driver_register__shrinker.__UNIQUE_ID_addressable___SCK__WARN_trap_970 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"drivers/gpu/drm/i915/gem/i915_gem_shrinker.c\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"drm_WARN_ON(register_oom_notifier(&i915->mm.oom_notifier))\00", align 1
@i915_gem_driver_register__shrinker.__UNIQUE_ID_addressable___SCK__WARN_trap_971 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.5 = private unnamed_addr constant [67 x i8] c"drm_WARN_ON(register_vmap_purge_notifier(&i915->mm.vmap_notifier))\00", align 1
@i915_gem_driver_register__shrinker.__UNIQUE_ID_addressable___SCK__WARN_trap_972 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.6 = private unnamed_addr constant [69 x i8] c"drm_WARN_ON(unregister_vmap_purge_notifier(&i915->mm.vmap_notifier))\00", align 1
@i915_gem_driver_unregister__shrinker.__UNIQUE_ID_addressable___SCK__WARN_trap_973 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@.str.7 = private unnamed_addr constant [61 x i8] c"drm_WARN_ON(unregister_oom_notifier(&i915->mm.oom_notifier))\00", align 1
@i915_gem_driver_unregister__shrinker.__UNIQUE_ID_addressable___SCK__WARN_trap_974 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__tracepoint_i915_gem_shrink = external dso_local global %struct.tracepoint, align 8
@__do_trace_i915_gem_shrink.__trace_check_i915_gem_shrink = internal constant [16 x i8] c"i915_gem_shrink\00", section "__tracepoint_check", align 16
@cpu_number = external dso_local global i32, section ".data..percpu..hot..cpu_number", align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 8
@__do_trace_i915_gem_shrink.__UNIQUE_ID_addressable___SCK__tp_func_i915_gem_shrink_829 = internal global ptr @__SCK__tp_func_i915_gem_shrink, section ".discard.addressable", align 8
@__SCK__tp_func_i915_gem_shrink = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_swap_pages = external dso_local global %struct.atomic64_t, align 8
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@.str.8 = private unnamed_addr constant [90 x i8] c"\016Purging GPU memory, %lu pages freed, %lu pages still pinned, %lu pages left available.\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__do_trace_i915_gem_shrink.__UNIQUE_ID_addressable___SCK__tp_func_i915_gem_shrink_829, ptr @__do_trace_i915_gem_shrink.__trace_check_i915_gem_shrink, ptr @i915_gem_driver_register__shrinker.__UNIQUE_ID_addressable___SCK__WARN_trap_970, ptr @i915_gem_driver_register__shrinker.__UNIQUE_ID_addressable___SCK__WARN_trap_971, ptr @i915_gem_driver_register__shrinker.__UNIQUE_ID_addressable___SCK__WARN_trap_972, ptr @i915_gem_driver_unregister__shrinker.__UNIQUE_ID_addressable___SCK__WARN_trap_973, ptr @i915_gem_driver_unregister__shrinker.__UNIQUE_ID_addressable___SCK__WARN_trap_974], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @i915_gem_shrink(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca [3 x %struct.anon], align 16        ; 9 uses
  %6 = alloca %struct.list_head, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.a = getelementptr i8, ptr %1, i64 2848       ; 2 uses
  store ptr %i.a, ptr %5, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 -1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = getelementptr i8, ptr %1, i64 2864
  store ptr %i.e, ptr %i.d, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 3, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 28
  %.not = icmp eq ptr %0, null                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.g, i8 0, i64 20, i1 false)
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call zeroext i1 @intel_vm_no_concurrent_access_wa(ptr noundef %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %7 = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ]
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_gem_shrink, i64 8), i1 false) #9
          to label %trace_i915_gem_shrink.exit [label %arch_test_bit.exit.i.i], !srcloc !22

arch_test_bit.exit.i.i:                           ; preds = %bb.c
  %i.i = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #9, !srcloc !23
  %i.j = zext i32 %i.i to i64
  %i.k = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.j) #9, !srcloc !24 ; 2 uses
  %i.l = icmp ult i8 %i.k, 2
  tail call void @llvm.assume(i1 %i.l)
  %i.m = trunc nuw i8 %i.k to i1
  br i1 %i.m, label %bb.d, label %trace_i915_gem_shrink.exit

bb.d:                                             ; preds = %arch_test_bit.exit.i.i
  %i.n = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.n, ptr elementtype(i64) %i.n) #9, !srcloc !25
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !26
  %i.o = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_gem_shrink, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 @__SCT__tp_func_i915_gem_shrink(ptr noundef %i.q, ptr noundef %1, i64 noundef %2, i32 noundef %4) #10 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !27
  %i.s = getelementptr i8, ptr %i.n, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.s, ptr elementtype(i64) %i.s) #9, !srcloc !28
  br label %trace_i915_gem_shrink.exit

trace_i915_gem_shrink.exit:                       ; preds = %bb.c, %arch_test_bit.exit.i.i, %bb.f
  %i.t = and i32 %4, 2
  %.not106 = icmp eq i32 %i.t, 0
  br i1 %.not106, label %bb.h, label %bb.g

bb.g:                                             ; preds = %trace_i915_gem_shrink.exit
  %i.u = getelementptr i8, ptr %1, i64 3176
  %i.v = tail call ptr @intel_runtime_pm_get_if_in_use(ptr noundef %i.u) #10
  %.not107 = icmp eq ptr %i.v, null
  %i.w = and i32 %4, -3
  %spec.select123 = select i1 %.not107, i32 %i.w, i32 %4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %trace_i915_gem_shrink.exit
  %.076 = phi i32 [ %spec.select123, %bb.g ], [ %4, %trace_i915_gem_shrink.exit ] ; 4 uses
  %i.x = zext i32 %.076 to i64                    ; 5 uses
  %i.y = and i64 %i.x, 4
  %.not108 = icmp eq i64 %i.y, 0                  ; 2 uses
  br i1 %.not108, label %.loopexit147, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.z = getelementptr i8, ptr %1, i64 3528
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not122 = icmp eq ptr %i.aa, null
  br i1 %.not122, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.ab = tail call i64 @intel_gt_retire_requests_timeout(ptr noundef nonnull %i.aa, i64 noundef 0, ptr noundef null) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.preheader
  %i.ac = getelementptr i8, ptr %1, i64 3536
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not122.1 = icmp eq ptr %i.ad, null
  br i1 %.not122.1, label %.loopexit147, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call i64 @intel_gt_retire_requests_timeout(ptr noundef nonnull %i.ad, i64 noundef 0, ptr noundef null) #10 ; 0 uses
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.j, %bb.k, %bb.h
  %.not109166 = icmp eq ptr %i.a, null
  br i1 %.not109166, label %.loopexit, label %.lr.ph170

.lr.ph170:                                        ; preds = %.loopexit147
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ag = getelementptr i8, ptr %1, i64 2840      ; 4 uses
  %i.ah = and i64 %i.x, 8
  %.not112 = icmp eq i64 %i.ah, 0
  %i.ai = getelementptr i8, ptr %0, i64 48
  %i.aj = getelementptr i8, ptr %0, i64 24
  %i.ak = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 40
  %i.am = lshr i64 %i.x, 2
  %.lobit.i = and i64 %i.am, 1
  %i.an = shl nuw nsw i64 %i.x, 1
  %i.ao = and i64 %i.an, 4
  %i.ap = or disjoint i64 %i.ao, %.lobit.i
  %.1.i.a = xor i64 %i.ap, 4                      ; 2 uses
  %8 = or disjoint i64 %.1.i.a, 8
  %.2.i = select i1 %7, i64 %8, i64 %.1.i.a
  %i.aq = lshr i32 %.076, 1
  %i.ar = and i32 %i.aq, 2
  %i.as = lshr i32 %.076, 4
  %i.at = and i32 %i.as, 1
  %i.au = or disjoint i32 %i.ar, %i.at
  %.1.i127 = xor i32 %i.au, 2
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph170, %select.unfold
  %.077169 = phi ptr [ %5, %.lr.ph170 ], [ %i.ej, %select.unfold ] ; 5 uses
  %.079168 = phi i64 [ 0, %.lr.ph170 ], [ %.5.ph, %select.unfold ] ; 2 uses
  %.080167 = phi i64 [ 0, %.lr.ph170 ], [ %.484.ph, %select.unfold ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.av = getelementptr i8, ptr %.077169, i64 8
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = and i32 %i.aw, %.076
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %select.unfold, label %bb.m

bb.m:                                             ; preds = %bb.l
  store volatile ptr %6, ptr %6, align 8
  store volatile ptr %6, ptr %i.af, align 8
  %i.az = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ag) #10
  br label %i915_gem_object_is_framebuffer.exit.outer

i915_gem_object_is_framebuffer.exit.outer:        ; preds = %i915_gem_object_put.exit, %bb.m
  %.095.ph = phi i64 [ %i.ed, %i915_gem_object_put.exit ], [ %i.az, %bb.m ] ; 4 uses
  %.181.ph = phi i64 [ %.282, %i915_gem_object_put.exit ], [ %.080167, %bb.m ] ; 8 uses
  %.1.ph = phi i64 [ %.3, %i915_gem_object_put.exit ], [ %.079168, %bb.m ] ; 12 uses
  %i.ba = icmp ult i64 %.1.ph, %2
  br i1 %i.ba, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %i915_gem_object_is_framebuffer.exit.outer
  %i.bb = load ptr, ptr %.077169, align 8         ; 2 uses
  %i.bc = load volatile ptr, ptr %i.bb, align 8   ; 3 uses
  %.not110212 = icmp eq ptr %i.bc, %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -896   ; 2 uses
  %.not111142213 = icmp eq ptr %i.bd, null
  %.not111214 = or i1 %.not110212, %.not111142213
  br i1 %.not111214, label %.critedge, label %.lr.ph215

.lr.ph215:                                        ; preds = %.lr.ph.preheader, %i915_gem_object_is_framebuffer.exit.backedge
  %i.be = phi ptr [ %i.bq, %i915_gem_object_is_framebuffer.exit.backedge ], [ %i.bd, %.lr.ph.preheader ] ; 19 uses
  %i.bf = phi ptr [ %i.bp, %i915_gem_object_is_framebuffer.exit.backedge ], [ %i.bc, %.lr.ph.preheader ] ; 18 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 8      ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  store ptr %i.bh, ptr %i.bj, align 8
  store volatile ptr %i.bi, ptr %i.bh, align 8
  %i.bk = load ptr, ptr %i.af, align 8            ; 2 uses
  store ptr %i.bf, ptr %i.af, align 8
  store ptr %6, ptr %i.bf, align 8
  store ptr %i.bk, ptr %i.bg, align 8
  store volatile ptr %i.bf, ptr %i.bk, align 8
  br i1 %.not112, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph215
  %i.bl = getelementptr i8, ptr %i.bf, i64 -128
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call zeroext i1 @is_vmalloc_addr(ptr noundef %i.bm) #10
  br i1 %i.bn, label %bb.o, label %i915_gem_object_is_framebuffer.exit.backedge

i915_gem_object_is_framebuffer.exit.backedge:     ; preds = %bb.n, %kref_get_unless_zero.exit, %.split, %.split131, %bb.p, %bb.q
  %i.bo = load ptr, ptr %.077169, align 8         ; 2 uses
  %i.bp = load volatile ptr, ptr %i.bo, align 8   ; 3 uses
  %.not110 = icmp eq ptr %i.bp, %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -896   ; 2 uses
  %.not111142 = icmp eq ptr %i.bq, null
  %.not111 = or i1 %.not110, %.not111142
  br i1 %.not111, label %.critedge, label %.lr.ph215

bb.o:                                             ; preds = %bb.n, %.lr.ph215
  br i1 %.not108, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr i8, ptr %i.bf, i64 -224
  %i.bs = load volatile ptr, ptr %i.br, align 8
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %.split, label %i915_gem_object_is_framebuffer.exit.backedge

.split:                                           ; preds = %bb.p
  %i.bt = getelementptr i8, ptr %i.bf, i64 -236
  %i.bu = load i16, ptr %i.bt, align 4
  %i.bv = and i16 %i.bu, 1024
  %.not143.a = icmp eq i16 %i.bv, 0
  br i1 %.not143.a, label %bb.q, label %i915_gem_object_is_framebuffer.exit.backedge

bb.q:                                             ; preds = %.split, %bb.o
  %i.bw = getelementptr i8, ptr %i.bf, i64 -416
  %.val.i = load ptr, ptr %i.bw, align 8
  %.val.val.i = load i32, ptr %.val.i, align 8
  %i.bx = and i32 %.val.val.i, 2
  %.not.i125 = icmp eq i32 %i.bx, 0
  br i1 %.not.i125, label %i915_gem_object_is_framebuffer.exit.backedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = load volatile i64, ptr @nr_swap_pages, align 8
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %can_release_pages.exit.thread, label %.split131

.split131:                                        ; preds = %bb.r
  %i.ca = getelementptr i8, ptr %i.bf, i64 16
  %i.cb = load i8, ptr %i.ca, align 8
  %i.cc = and i8 %i.cb, 3
  %i.cd = icmp eq i8 %i.cc, 1
  br i1 %i.cd, label %can_release_pages.exit.thread, label %i915_gem_object_is_framebuffer.exit.backedge

can_release_pages.exit.thread:                    ; preds = %bb.r, %.split131
  %i.ce = load volatile i32, ptr %i.be, align 4   ; 2 uses
  %.old1.not.i.i.i.i = icmp eq i32 %i.ce, 0
  br i1 %.old1.not.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %can_release_pages.exit.thread, %arch_atomic_try_cmpxchg.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ck, %arch_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.ce, %can_release_pages.exit.thread ] ; 3 uses
  %i.cf = add i32 %.0.i.i.i.i, 1
  %i.cg = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.be, i32 %i.cf, ptr nonnull elementtype(i32) %i.be, i32 %.0.i.i.i.i) #9, !srcloc !11 ; 2 uses
  %i.ch = extractvalue { i8, i32 } %i.cg, 0       ; 2 uses
  %i.ci = icmp ult i8 %i.ch, 2
  call void @llvm.assume(i1 %i.ci)
  %i.cj = trunc nuw i8 %i.ch to i1
  br i1 %i.cj, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i, !prof !12

arch_atomic_try_cmpxchg.exit.i.i.i.i:             ; preds = %.preheader.i.i.i.i
  %i.ck = extractvalue { i8, i32 } %i.cg, 1       ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !18

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i:      ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i, %.preheader.i.i.i.i, %can_release_pages.exit.thread
  %.2.i.i.i.i = phi i32 [ 0, %can_release_pages.exit.thread ], [ %.0.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i ] ; 3 uses
  %i.cm = add i32 %.2.i.i.i.i, 1
  %i.cn = or i32 %i.cm, %.2.i.i.i.i
  %.not.i.i.i.i = icmp sgt i32 %i.cn, -1
  br i1 %.not.i.i.i.i, label %kref_get_unless_zero.exit, label %bb.s, !prof !12

bb.s:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef nonnull %i.be, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i, %bb.s
  %.not144.a = icmp eq i32 %.2.i.i.i.i, 0
  br i1 %.not144.a, label %i915_gem_object_is_framebuffer.exit.backedge, label %bb.t

bb.t:                                             ; preds = %kref_get_unless_zero.exit
  %i.co = getelementptr i8, ptr %i.bf, i64 -416   ; 2 uses
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ag, i64 noundef %.095.ph) #10
  br i1 %.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr i8, ptr %i.bf, i64 -648
  %spec.select124.val = load ptr, ptr %i.cp, align 8
  %i.cq = call i32 @ww_mutex_trylock(ptr noundef %spec.select124.val, ptr noundef null) #10
  %.not145 = icmp eq i32 %i.cq, 0
  br i1 %.not145, label %bb.ak, label %bb.ad

bb.v:                                             ; preds = %bb.t
  %i.cr = load i8, ptr %i.ai, align 8, !range !29, !noundef !30
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = getelementptr i8, ptr %i.bf, i64 -648
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  br i1 %i.cs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cv = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.cu, ptr noundef nonnull %0) #10
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cw = call i32 @ww_mutex_lock(ptr noundef %i.cu, ptr noundef nonnull %0) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i.i = phi i32 [ %i.cv, %bb.w ], [ %i.cw, %bb.x ] ; 4 uses
  switch i32 %.0.i.i, label %bb.ak [
    i32 0, label %bb.z
    i32 -35, label %bb.ab
    i32 -114, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  %i.cx = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.be, i32 1, ptr nonnull elementtype(i32) %i.be) #9, !srcloc !14 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.aa, !prof !31

bb.aa:                                            ; preds = %bb.z
  %i.cy = add i32 %i.cx, 1
  %i.cz = or i32 %i.cy, %i.cx
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.cz, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !12

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.aa, %bb.z
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.z ], [ 1, %bb.aa ]
  call void @refcount_warn_saturate(ptr noundef nonnull %i.be, i32 noundef %.sink.i.i.i.i.i.i.i.i) #10
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.aa
  %i.da = getelementptr i8, ptr %i.bf, i64 -352   ; 3 uses
  %i.db = load ptr, ptr %i.ak, align 8            ; 2 uses
  store ptr %i.da, ptr %i.ak, align 8
  store ptr %i.aj, ptr %i.da, align 8
  %i.dc = getelementptr i8, ptr %i.bf, i64 -344
  store ptr %i.db, ptr %i.dc, align 8
  store volatile ptr %i.da, ptr %i.db, align 8
  switch i32 %.0.i.i, label %bb.ak [
    i32 -35, label %bb.ab
    i32 0, label %bb.ad
    i32 -114, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.y, %i915_gem_object_get.exit.i.i
  %i.dd = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.be, i32 1, ptr nonnull elementtype(i32) %i.be) #9, !srcloc !14 ; 3 uses
  %.not.i.i.i.i.i.i19.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i19.i.i, label %.sink.split.i.i.i.i.i.i21.i.i, label %bb.ac, !prof !31

bb.ac:                                            ; preds = %bb.ab
  %i.de = add i32 %i.dd, 1
  %i.df = or i32 %i.de, %i.dd
  %.not10.i.i.i.i.i.i20.i.i = icmp sgt i32 %i.df, -1
  br i1 %.not10.i.i.i.i.i.i20.i.i, label %i915_gem_object_lock.exit.thread, label %.sink.split.i.i.i.i.i.i21.i.i, !prof !12

.sink.split.i.i.i.i.i.i21.i.i:                    ; preds = %bb.ac, %bb.ab
  %.sink.i.i.i.i.i.i22.i.i = phi i32 [ 2, %bb.ab ], [ 1, %bb.ac ]
  call void @refcount_warn_saturate(ptr noundef nonnull %i.be, i32 noundef %.sink.i.i.i.i.i.i22.i.i) #10
  br label %i915_gem_object_lock.exit.thread

i915_gem_object_lock.exit.thread:                 ; preds = %bb.ac, %.sink.split.i.i.i.i.i.i21.i.i
  store ptr %i.be, ptr %i.al, align 8
  br label %bb.ak

bb.ad:                                            ; preds = %bb.y, %i915_gem_object_get.exit.i.i, %i915_gem_object_get.exit.i.i, %bb.u
  %i.dg = call i32 @i915_gem_object_unbind(ptr noundef nonnull %i.be, i64 noundef %.2.i) #10
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.di = call i32 @__i915_gem_object_put_pages(ptr noundef nonnull %i.be) #10
  %.not115 = icmp eq i32 %i.di, 0
  br i1 %.not115, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dj = load ptr, ptr %i.co, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not.i126 = icmp eq ptr %i.dl, null
  br i1 %.not.i126, label %try_to_writeback.exit.thread, label %try_to_writeback.exit

try_to_writeback.exit:                            ; preds = %bb.af
  %i.dm = call i32 %i.dl(ptr noundef nonnull %i.be, i32 noundef %.1.i127) #10, !inline_history !19
  %.not116 = icmp eq i32 %i.dm, 0
  br i1 %.not116, label %try_to_writeback.exit.thread, label %bb.ag

try_to_writeback.exit.thread:                     ; preds = %bb.af, %try_to_writeback.exit
  %i.dn = getelementptr i8, ptr %i.bf, i64 -680
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = lshr i64 %i.do, 12
  %i.dq = add i64 %i.dp, %.1.ph
  br label %bb.ag

bb.ag:                                            ; preds = %try_to_writeback.exit.thread, %try_to_writeback.exit, %bb.ae, %bb.ad
  %.2 = phi i64 [ %.1.ph, %bb.ae ], [ %.1.ph, %try_to_writeback.exit ], [ %i.dq, %try_to_writeback.exit.thread ], [ %.1.ph, %bb.ad ]
  br i1 %.not, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.dr = load ptr, ptr %i.co, align 8
  %i.ds = getelementptr i8, ptr %i.dr, i64 80
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %.not.i128.a = icmp eq ptr %i.dt, null
  br i1 %.not.i128.a, label %i915_gem_object_unlock.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void %i.dt(ptr noundef nonnull %i.be) #10, !inline_history !0
  br label %i915_gem_object_unlock.exit

i915_gem_object_unlock.exit:                      ; preds = %bb.ah, %bb.ai
  %i.du = getelementptr i8, ptr %i.bf, i64 -648
  %i.dv = load ptr, ptr %i.du, align 8
  call void @ww_mutex_unlock(ptr noundef %i.dv) #10
  br label %bb.aj

bb.aj:                                            ; preds = %i915_gem_object_unlock.exit, %bb.ag
  %i.dw = getelementptr i8, ptr %i.bf, i64 -680
  %i.dx = load i64, ptr %i.dw, align 8
  %i.dy = lshr i64 %i.dx, 12
  %i.dz = add i64 %i.dy, %.181.ph
  br label %bb.ak

bb.ak:                                            ; preds = %bb.y, %i915_gem_object_get.exit.i.i, %i915_gem_object_lock.exit.thread, %bb.u, %bb.aj
  %.389 = phi i32 [ %.0.i.i, %i915_gem_object_get.exit.i.i ], [ 0, %bb.aj ], [ 0, %bb.u ], [ -35, %i915_gem_object_lock.exit.thread ], [ %.0.i.i, %bb.y ] ; 2 uses
  %.282 = phi i64 [ %.181.ph, %i915_gem_object_get.exit.i.i ], [ %i.dz, %bb.aj ], [ %.181.ph, %bb.u ], [ %.181.ph, %i915_gem_object_lock.exit.thread ], [ %.181.ph, %bb.y ] ; 2 uses
  %.3 = phi i64 [ %.1.ph, %i915_gem_object_get.exit.i.i ], [ %.2, %bb.aj ], [ %.1.ph, %bb.u ], [ %.1.ph, %i915_gem_object_lock.exit.thread ], [ %.1.ph, %bb.y ] ; 2 uses
  %i.ea = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.be, i32 -1, ptr nonnull elementtype(i32) %i.be) #9, !srcloc !14 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ec = icmp slt i32 %i.ea, 1
  br i1 %i.ec, label %bb.am, label %i915_gem_object_put.exit, !prof !31

bb.am:                                            ; preds = %bb.al
  call void @refcount_warn_saturate(ptr noundef nonnull %i.be, i32 noundef 3) #10
  br label %i915_gem_object_put.exit

bb.an:                                            ; preds = %bb.ak
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !32
  call void @drm_gem_object_free(ptr noundef nonnull %i.be) #10
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.al, %bb.am, %bb.an
  %i.ed = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ag) #10 ; 2 uses
  %.not117 = icmp eq i32 %.389, 0
  br i1 %.not117, label %i915_gem_object_is_framebuffer.exit.outer, label %.critedge, !llvm.loop !20

.critedge:                                        ; preds = %i915_gem_object_put.exit, %i915_gem_object_is_framebuffer.exit.outer, %.lr.ph.preheader, %i915_gem_object_is_framebuffer.exit.backedge
  %.196 = phi i64 [ %.095.ph, %i915_gem_object_is_framebuffer.exit.backedge ], [ %.095.ph, %i915_gem_object_is_framebuffer.exit.outer ], [ %i.ed, %i915_gem_object_put.exit ], [ %.095.ph, %.lr.ph.preheader ]
  %.490 = phi i32 [ 0, %i915_gem_object_is_framebuffer.exit.backedge ], [ 0, %i915_gem_object_is_framebuffer.exit.outer ], [ %.389, %i915_gem_object_put.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.383 = phi i64 [ %.181.ph, %i915_gem_object_is_framebuffer.exit.backedge ], [ %.181.ph, %i915_gem_object_is_framebuffer.exit.outer ], [ %.282, %i915_gem_object_put.exit ], [ %.181.ph, %.lr.ph.preheader ] ; 2 uses
  %.4 = phi i64 [ %.1.ph, %i915_gem_object_is_framebuffer.exit.backedge ], [ %.1.ph, %i915_gem_object_is_framebuffer.exit.outer ], [ %.3, %i915_gem_object_put.exit ], [ %.1.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ee = load ptr, ptr %.077169, align 8         ; 2 uses
  %i.ef = load volatile ptr, ptr %6, align 8      ; 3 uses
  %.not.i129 = icmp eq ptr %i.ef, %6
  br i1 %.not.i129, label %list_splice_tail.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge
  %i.eg = getelementptr i8, ptr %i.ee, i64 8      ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %.val4.i = load ptr, ptr %i.af, align 8         ; 2 uses
  %i.ei = getelementptr i8, ptr %i.ef, i64 8
  store ptr %i.eh, ptr %i.ei, align 8
  store ptr %i.ef, ptr %i.eh, align 8
  store ptr %i.ee, ptr %.val4.i, align 8
  store ptr %.val4.i, ptr %i.eg, align 8
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %.critedge, %bb.ao
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ag, i64 noundef %.196) #10
  %.not118 = icmp eq i32 %.490, 0
  br i1 %.not118, label %select.unfold, label %bb.ap

bb.ap:                                            ; preds = %list_splice_tail.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.loopexit

select.unfold:                                    ; preds = %list_splice_tail.exit, %bb.l
  %.484.ph = phi i64 [ %.080167, %bb.l ], [ %.383, %list_splice_tail.exit ] ; 2 uses
  %.5.ph = phi i64 [ %.079168, %bb.l ], [ %.4, %list_splice_tail.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.ej = getelementptr i8, ptr %.077169, i64 16  ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  %.not109 = icmp eq ptr %i.ek, null
  br i1 %.not109, label %.loopexit, label %bb.l, !llvm.loop !21

.loopexit:                                        ; preds = %select.unfold, %.loopexit147, %bb.ap
  %.692 = phi i32 [ %.490, %bb.ap ], [ 0, %.loopexit147 ], [ 0, %select.unfold ] ; 2 uses
  %.585 = phi i64 [ %.383, %bb.ap ], [ 0, %.loopexit147 ], [ %.484.ph, %select.unfold ]
  %.6 = phi i64 [ %.4, %bb.ap ], [ 0, %.loopexit147 ], [ %.5.ph, %select.unfold ] ; 2 uses
  %i.el = and i64 %i.x, 2
  %.not119 = icmp eq i64 %i.el, 0
  br i1 %.not119, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.em = getelementptr i8, ptr %1, i64 3176
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.em) #10
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.loopexit
  %.not120 = icmp eq i32 %.692, 0
  br i1 %.not120, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.en = sext i32 %.692 to i64
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  %.not121 = icmp eq ptr %3, null
  br i1 %.not121, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = load i64, ptr %3, align 8
  %i.ep = add i64 %i.eo, %.585
  store i64 %i.ep, ptr %3, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.as
  %.0 = phi i64 [ %i.en, %bb.as ], [ %.6, %bb.au ], [ %.6, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_vm_no_concurrent_access_wa(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_runtime_pm_get_if_in_use(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__i915_gem_object_put_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @i915_gem_shrink_all(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3176       ; 2 uses
  %i.b = tail call ptr @intel_runtime_pm_get(ptr noundef %i.a) #10
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = tail call i64 @i915_gem_shrink(ptr noundef null, ptr noundef %0, i64 noundef -1, ptr noundef null, i32 noundef 3) #11
  tail call void @intel_runtime_pm_put_unchecked(ptr noundef %i.a) #10
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  ret i64 %.0.lcssa
}

; Function Attrs: noredzone null_pointer_is_valid
end_hunk_0
