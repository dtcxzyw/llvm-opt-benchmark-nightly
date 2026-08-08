inline.NumInlined: 77
inline.NumDeleted: 54
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key_false, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.97 }
%struct.atomic_t = type { i32 }
%union.anon.97 = type { i64 }
%struct.mmu_interval_notifier_ops = type { ptr, ptr, ptr }
%struct.vma_iterator = type { %struct.ma_state }
%struct.ma_state = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, i64, i32, i8, i8, i8, i8, i32 }

@i915_gem_userptr_ioctl.lock_class = internal global %struct.lock_class_key zeroinitializer, align 1
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@vmemmap_base = external dso_local local_unnamed_addr global i64, align 8
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 8
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"i915_gem_object_userptr\00", align 1
@i915_gem_userptr_ops = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 26, [4 x i8] zeroinitializer, ptr @i915_gem_userptr_get_pages, ptr @i915_gem_userptr_put_pages, ptr null, ptr null, ptr @i915_gem_userptr_pread, ptr @i915_gem_userptr_pwrite, ptr null, ptr null, ptr @i915_gem_userptr_dmabuf_export, ptr null, ptr null, ptr null, ptr @i915_gem_userptr_release, ptr null, ptr @.str.2 }, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/i915/gem/i915_gem_userptr.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [38 x i8] c"pread from userptr no longer allowed\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"pwrite to userptr no longer allowed\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Exporting userptr no longer allowed\0A\00", align 1
@i915_gem_userptr_notifier_ops = internal constant %struct.mmu_interval_notifier_ops { ptr @i915_gem_userptr_invalidate, ptr null, ptr null }, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_object_userptr_submit_init(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 216
  %i.b = load i64, ptr %i.a, align 8
  %i.c = lshr i64 %i.b, 12                        ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 1024
  %i.e = getelementptr i8, ptr %0, i64 1096
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #11, !srcloc !10
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 1400
  %i.j = load ptr, ptr %i.i, align 8
  %.not = icmp eq ptr %i.f, %i.j
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 1040
  %i.l = tail call i64 @mmu_interval_read_begin(ptr noundef %i.k) #12 ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 248        ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.n, ptr noundef null) #12 ; 3 uses
  %i.p = icmp eq i32 %i.o, -114
  %spec.store.select.i.i = select i1 %i.p, i32 0, i32 %i.o
  switch i32 %spec.store.select.i.i, label %bb.x [
    i32 -35, label %bb.c
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #13, !srcloc !11 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.r = add i32 %i.q, 1
  %i.s = or i32 %i.r, %i.q
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.s, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_lock_interruptible.exit.thread, label %.sink.split.i.i.i.i.i.i.i.i, !prof !13

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.c ], [ 1, %bb.d ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i.i.i) #12
  br label %i915_gem_object_lock_interruptible.exit.thread

i915_gem_object_lock_interruptible.exit.thread:   ; preds = %bb.d, %.sink.split.i.i.i.i.i.i.i.i
  store ptr %0, ptr inttoptr (i64 40 to ptr), align 8
  br label %bb.x

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %0, i64 1032       ; 3 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.l, %i.u
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %0, i64 1128
  %i.x = load ptr, ptr %i.w, align 8
  %.not71 = icmp eq ptr %i.x, null
  br i1 %.not71, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %0, i64 480
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %i915_gem_object_unlock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.ab(ptr noundef %0) #12, !inline_history !14
  br label %i915_gem_object_unlock.exit

i915_gem_object_unlock.exit:                      ; preds = %bb.g, %bb.h
  %i.ac = load ptr, ptr %i.m, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.ac) #12
  br label %bb.x

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.ad = tail call i32 @i915_gem_object_unbind(ptr noundef %0, i64 noundef 1) #12 ; 2 uses
  %.not.i79 = icmp eq i32 %i.ad, 0
  br i1 %.not.i79, label %bb.j, label %i915_gem_object_userptr_unbind.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %0, i64 688
  %i.af = load volatile i32, ptr %i.ae, align 8
  %.not11.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i, label %bb.k, label %i915_gem_object_userptr_unbind.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = tail call ptr @__i915_gem_object_unset_pages(ptr noundef %0) #12 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  %i.ah = icmp ugt ptr %i.ag, inttoptr (i64 -4096 to ptr)
  %spec.select.i.i = or i1 %.not.i.i, %i.ah
  br i1 %spec.select.i.i, label %i915_gem_object_userptr_unbind.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @i915_gem_userptr_put_pages(ptr noundef %0, ptr noundef nonnull %i.ag) #14, !srcloc !15
  br label %i915_gem_object_userptr_unbind.exit

i915_gem_object_userptr_unbind.exit:              ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i80 = phi i32 [ -16, %bb.j ], [ %i.ad, %bb.i ], [ 0, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 480       ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 80
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i81 = icmp eq ptr %i.al, null
  br i1 %.not.i81, label %i915_gem_object_unlock.exit82, label %bb.m

bb.m:                                             ; preds = %i915_gem_object_userptr_unbind.exit
  tail call void %i.al(ptr noundef %0) #12, !inline_history !14
  br label %i915_gem_object_unlock.exit82

i915_gem_object_unlock.exit82:                    ; preds = %i915_gem_object_userptr_unbind.exit, %bb.m
  %i.am = load ptr, ptr %i.m, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.am) #12
  %.not72 = icmp eq i32 %.0.i80, 0
  br i1 %.not72, label %bb.n, label %bb.x

bb.n:                                             ; preds = %i915_gem_object_unlock.exit82
  %i.an = shl nuw nsw i64 %i.c, 3
  %i.ao = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %i.an, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #15 ; 8 uses
  %.not73 = icmp eq ptr %i.ao, null
  br i1 %.not73, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %0, i64 648
  %.val = load i64, ptr %i.ap, align 8
  %i.aq = and i64 %.val, 1024
  %.not88 = icmp eq i64 %i.aq, 0
  %spec.select = zext i1 %.not88 to i32
  %.not94 = icmp eq i64 %i.c, 0
  br i1 %.not94, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.ar = trunc i64 %i.c to i32
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.q
  %i.as = phi i64 [ 0, %.lr.ph ], [ %i.bb, %bb.q ] ; 3 uses
  %.05893 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %bb.q ] ; 2 uses
  %i.at = load i64, ptr %i.d, align 8
  %i.au = shl nuw nsw i64 %i.as, 12
  %i.av = add i64 %i.at, %i.au
  %i.aw = sub i32 %i.ar, %.05893
  %i.ax = getelementptr [8 x i8], ptr %i.ao, i64 %i.as
  %i.ay = tail call i32 @pin_user_pages_fast(i64 noundef %i.av, i32 noundef %i.aw, i32 noundef %spec.select, ptr noundef %i.ax) #12 ; 3 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = add i32 %i.ay, %.05893                  ; 2 uses
  %i.bb = sext i32 %i.ba to i64                   ; 3 uses
  %i.bc = icmp ugt i64 %i.c, %i.bb
  br i1 %i.bc, label %bb.p, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.q, %bb.o
  %.lcssa = phi i64 [ 0, %bb.o ], [ %i.bb, %bb.q ] ; 2 uses
  %i.bd = tail call fastcc i32 @i915_gem_object_lock_interruptible(ptr noundef %0) #14 ; 2 uses
  %.not74 = icmp eq i32 %i.bd, 0
  br i1 %.not74, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %._crit_edge
  %i.be = getelementptr i8, ptr %0, i64 1136      ; 4 uses
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %.not75 = icmp eq i32 %i.bf, 0
  br i1 %.not75, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr i8, ptr %0, i64 1120
  %.val78 = load i64, ptr %i.bg, align 8
  %.not90 = icmp eq i64 %.val78, %i.l
  br i1 %.not90, label %bb.t, label %bb.u

.thread:                                          ; preds = %bb.r
  %i.bh = load i64, ptr %i.t, align 8
  %i.bi = getelementptr i8, ptr %0, i64 1120
  %.val7886 = load i64, ptr %i.bi, align 8
  %.not89 = icmp eq i64 %.val7886, %i.bh
  br i1 %.not89, label %.thread87, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.be, align 8
  %i.bj = getelementptr i8, ptr %0, i64 1128
  store ptr %i.ao, ptr %i.bj, align 8
  store i64 %i.l, ptr %i.t, align 8
  %i.bk = tail call i32 @____i915_gem_object_get_pages(ptr noundef %0) #12
  %.pre = load i32, ptr %i.be, align 8
  %i.bl = add i32 %.pre, -1
  br label %.thread87

.thread87:                                        ; preds = %.thread, %bb.t
  %i.bm = phi i32 [ %i.bl, %bb.t ], [ %i.bf, %.thread ]
  %.059 = phi i32 [ %i.bk, %bb.t ], [ 0, %.thread ]
  %.055 = phi ptr [ null, %bb.t ], [ %i.ao, %.thread ]
  store i32 %i.bm, ptr %i.be, align 8
  br label %bb.u

bb.u:                                             ; preds = %.thread, %bb.s, %.thread87
  %.160 = phi i32 [ %.059, %.thread87 ], [ -11, %bb.s ], [ -11, %.thread ]
  %.1 = phi ptr [ %.055, %.thread87 ], [ %i.ao, %bb.s ], [ %i.ao, %.thread ]
  %i.bn = load ptr, ptr %i.ai, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not.i83 = icmp eq ptr %i.bp, null
  br i1 %.not.i83, label %i915_gem_object_unlock.exit84, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void %i.bp(ptr noundef %0) #12, !inline_history !14
  br label %i915_gem_object_unlock.exit84

i915_gem_object_unlock.exit84:                    ; preds = %bb.u, %bb.v
  %i.bq = load ptr, ptr %i.m, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.bq) #12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %._crit_edge, %i915_gem_object_unlock.exit84
  %i.br = phi i64 [ %.lcssa, %i915_gem_object_unlock.exit84 ], [ %.lcssa, %._crit_edge ], [ %i.as, %bb.p ]
  %.261 = phi i32 [ %.160, %i915_gem_object_unlock.exit84 ], [ %i.bd, %._crit_edge ], [ %i.ay, %bb.p ] ; 2 uses
  %.2 = phi ptr [ %.1, %i915_gem_object_unlock.exit84 ], [ %i.ao, %._crit_edge ], [ %i.ao, %bb.p ] ; 3 uses
  %.not77 = icmp eq ptr %.2, null
  br i1 %.not77, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit
  tail call void @unpin_user_pages(ptr noundef nonnull %.2, i64 noundef %i.br) #12
  tail call void @kvfree(ptr noundef nonnull %.2) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %i915_gem_object_lock_interruptible.exit.thread, %.loopexit, %bb.w, %bb.n, %i915_gem_object_unlock.exit82, %bb.a, %i915_gem_object_unlock.exit
  %.0 = phi i32 [ %.0.i80, %i915_gem_object_unlock.exit82 ], [ -14, %bb.a ], [ 0, %i915_gem_object_unlock.exit ], [ %i.o, %bb.b ], [ -12, %bb.n ], [ %.261, %bb.w ], [ %.261, %.loopexit ], [ -35, %i915_gem_object_lock_interruptible.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @mmu_interval_read_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @i915_gem_object_lock_interruptible(ptr noundef %0) unnamed_addr #3 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.b, ptr noundef null) #12 ; 2 uses
  %i.d = icmp eq i32 %i.c, -114
  %spec.store.select.i = select i1 %i.d, i32 0, i32 %i.c ; 2 uses
  %i.e = icmp eq i32 %spec.store.select.i, -35
  br i1 %i.e, label %bb.b, label %__i915_gem_object_lock.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #13, !srcloc !11 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.f, 1
  %i.h = or i32 %i.g, %i.f
  %.not10.i.i.i.i.i.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not10.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i, label %.sink.split.i.i.i.i.i.i.i, !prof !13

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.c, %bb.b
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i.i) #12
  br label %i915_gem_object_get.exit.i

i915_gem_object_get.exit.i:                       ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.c
  store ptr %0, ptr inttoptr (i64 40 to ptr), align 8
  br label %__i915_gem_object_lock.exit

__i915_gem_object_lock.exit:                      ; preds = %bb.a, %i915_gem_object_get.exit.i
  ret i32 %spec.store.select.i
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kvmalloc_node_noprof(i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @____i915_gem_object_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 -11, 1) i32 @i915_gem_object_userptr_submit_done(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1032
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 1120
  %.val = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %.val, %i.b
  %. = select i1 %.not, i32 0, i32 -11
  ret i32 %.
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_object_userptr_validate(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @i915_gem_object_userptr_submit_init(ptr noundef %0) #14 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.c, ptr noundef null) #12 ; 3 uses
  %i.e = icmp eq i32 %i.d, -114
  %spec.store.select.i.i = select i1 %i.e, i32 0, i32 %i.d
  switch i32 %spec.store.select.i.i, label %bb.h [
    i32 -35, label %bb.c
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #13, !srcloc !11 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %i.f, 1
  %i.h = or i32 %i.g, %i.f
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_lock_interruptible.exit.thread, label %.sink.split.i.i.i.i.i.i.i.i, !prof !13

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.c ], [ 1, %bb.d ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i.i.i) #12
  br label %i915_gem_object_lock_interruptible.exit.thread

i915_gem_object_lock_interruptible.exit.thread:   ; preds = %bb.d, %.sink.split.i.i.i.i.i.i.i.i
  store ptr %0, ptr inttoptr (i64 40 to ptr), align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 688        ; 5 uses
  %i.j = load volatile i32, ptr %i.i, align 8     ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !18

.lr.ph.i:                                         ; preds = %bb.e, %arch_atomic_try_cmpxchg.exit.i
  %.047.i = phi i32 [ %i.q, %arch_atomic_try_cmpxchg.exit.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.l = add i32 %.047.i, 1
  %i.m = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 range(i32 2, 1) %i.l, ptr elementtype(i32) %i.i, i32 %.047.i) #13, !srcloc !19 ; 2 uses
  %i.n = extractvalue { i8, i32 } %i.m, 0         ; 2 uses
  %i.o = icmp ult i8 %i.n, 2
  tail call void @llvm.assume(i1 %i.o)
  %i.p = trunc nuw i8 %i.n to i1
  br i1 %i.p, label %i915_gem_object_pin_pages.exit.thread, label %arch_atomic_try_cmpxchg.exit.i, !prof !13

arch_atomic_try_cmpxchg.exit.i:                   ; preds = %.lr.ph.i
  %i.q = extractvalue { i8, i32 } %i.m, 1         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !20

i915_gem_object_pin_pages.exit:                   ; preds = %arch_atomic_try_cmpxchg.exit.i, %bb.e
  %i.s = tail call i32 @__i915_gem_object_get_pages(ptr noundef %0) #12 ; 2 uses
  %.not14 = icmp eq i32 %i.s, 0
  br i1 %.not14, label %i915_gem_object_pin_pages.exit.thread, label %bb.f

i915_gem_object_pin_pages.exit.thread:            ; preds = %.lr.ph.i, %i915_gem_object_pin_pages.exit
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, ptr elementtype(i32) %i.i) #13, !srcloc !21
  br label %bb.f

bb.f:                                             ; preds = %i915_gem_object_pin_pages.exit.thread, %i915_gem_object_pin_pages.exit
  %.0.i18 = phi i32 [ 0, %i915_gem_object_pin_pages.exit.thread ], [ %i.s, %i915_gem_object_pin_pages.exit ]
  %i.t = getelementptr i8, ptr %0, i64 480
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %i915_gem_object_unlock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.w(ptr noundef %0) #12, !inline_history !14
  br label %i915_gem_object_unlock.exit

i915_gem_object_unlock.exit:                      ; preds = %bb.f, %bb.g
  %i.x = load ptr, ptr %i.b, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.x) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %i915_gem_object_lock_interruptible.exit.thread, %i915_gem_object_unlock.exit, %bb.a
  %.010 = phi i32 [ %i.a, %bb.a ], [ %i.d, %bb.b ], [ %.0.i18, %i915_gem_object_unlock.exit ], [ -35, %i915_gem_object_lock_interruptible.exit.thread ]
  ret i32 %.010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_userptr_ioctl(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr i8, ptr %0, i64 1648
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 28
  %i.e = load i64, ptr %i.d, align 4
  %i.f = and i64 %i.e, 4295229440
  %or.cond = icmp eq i64 %i.f, 0
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 4 uses
  %i.i = and i32 %i.h, 2147483644
  %.not47 = icmp eq i32 %i.i, 0
  br i1 %.not47, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %.not48 = icmp eq i64 %i.k, 0
  br i1 %.not48, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %1, align 8                ; 4 uses
  %i.m = or i64 %i.l, %i.k
  %i.n = and i64 %i.m, 4095
  %.not49 = icmp eq i64 %i.n, 0
  br i1 %.not49, label %__access_ok.exit, label %bb.p

__access_ok.exit:                                 ; preds = %bb.d
  %i.o = add i64 %i.l, %i.k                       ; 2 uses
  %i.p = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #11, !srcloc !22
  %i.q = icmp ule i64 %i.o, %i.p
  %i.r = icmp uge i64 %i.o, %i.l
  %i.s = and i1 %i.r, %i.q
  br i1 %i.s, label %bb.e, label %bb.p, !prof !13

bb.e:                                             ; preds = %__access_ok.exit
  %.not50 = icmp sgt i32 %i.h, -1
  br i1 %.not50, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.a, align 4, !annotation !23
  %i.t = and i32 %i.h, 1
  %.not51 = icmp eq i32 %i.t, 0
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %0, i64 3528
  %.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %.val, i64 4680
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 520
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, 4
  %.not52 = icmp eq i8 %i.z, 0
  br i1 %.not52, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not53 = icmp samesign ult i32 %i.h, 2
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #11, !srcloc !10
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr i8, ptr %i.ab, i64 1400
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call fastcc i32 @probe_range(ptr noundef %i.ad, i64 noundef %i.l, i64 noundef %i.k) #14, !srcloc !24 ; 2 uses
  %.not54 = icmp eq i32 %i.ae, 0
  br i1 %.not54, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = tail call ptr @i915_gem_object_alloc() #12 ; 14 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %i.j, align 8
  tail call void @drm_gem_private_object_init(ptr noundef %0, ptr noundef nonnull %i.af, i64 noundef %i.ah) #12
  tail call void @i915_gem_object_init(ptr noundef nonnull %i.af, ptr noundef nonnull @i915_gem_userptr_ops, ptr noundef nonnull @i915_gem_userptr_ioctl.lock_class, i32 noundef 8) #12
  %i.ai = getelementptr i8, ptr %i.af, i64 656
  store i32 1, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %i.af, i64 662
  store i16 1, ptr %i.aj, align 2
  %i.ak = getelementptr i8, ptr %i.af, i64 664
  store i16 1, ptr %i.ak, align 8
  tail call void @i915_gem_object_set_cache_coherency(ptr noundef nonnull %i.af, i32 noundef 1) #12
  %i.al = load i64, ptr %1, align 8
  %i.am = getelementptr i8, ptr %i.af, i64 1024
  store i64 %i.al, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %i.af, i64 1032
  store i64 -1, ptr %i.an, align 8
  %i.ao = load i32, ptr %i.g, align 8
  %i.ap = and i32 %i.ao, 1
  %.not55 = icmp eq i32 %i.ap, 0
  br i1 %.not55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr i8, ptr %i.af, i64 648    ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = or i64 %i.ar, 1024
  store i64 %i.as, ptr %i.aq, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.at = tail call fastcc i32 @i915_gem_userptr_init__mmu_notifier(ptr noundef %i.af) #14, !srcloc !25 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  tail call fastcc void @i915_gem_object_put(ptr noundef %i.af) #14, !srcloc !26
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.av = call i32 @drm_gem_handle_create(ptr noundef %2, ptr noundef nonnull %i.af, ptr noundef nonnull %i.a) #12 ; 2 uses
  call fastcc void @i915_gem_object_put(ptr noundef %i.af) #14, !srcloc !26
  %.not56 = icmp eq i32 %i.av, 0
  br i1 %.not56, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = load i32, ptr %i.a, align 4
  %i.ax = getelementptr i8, ptr %1, i64 20
  store i32 %i.aw, ptr %i.ax, align 4
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.n, %bb.j, %bb.i, %bb.g, %bb.e, %__access_ok.exit, %bb.d, %bb.c, %bb.b, %bb.a, %bb.o
  %.041 = phi i32 [ -19, %bb.a ], [ -22, %bb.b ], [ -22, %bb.c ], [ -14, %__access_ok.exit ], [ -19, %bb.g ], [ %i.ae, %bb.i ], [ -12, %bb.j ], [ 0, %bb.o ], [ -19, %bb.e ], [ -22, %bb.d ], [ %i.av, %bb.n ], [ %i.at, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.041
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -14, 1) i32 @probe_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.vma_iterator, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  store ptr %i.a, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 1, ptr %i.d, align 8
  %i.e = add i64 %2, %1                           ; 2 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_start_locking, i64 8), i1 false) #13
          to label %__mmap_lock_trace_start_locking.exit.i [label %bb.b], !srcloc !27

bb.b:                                             ; preds = %bb.a
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #12
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 464        ; 3 uses
  tail call void @down_read(ptr noundef %i.f) #12
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_acquire_returned, i64 8), i1 false) #13
          to label %mmap_read_lock.exit [label %bb.c], !srcloc !27

bb.c:                                             ; preds = %__mmap_lock_trace_start_locking.exit.i
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #12
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %__mmap_lock_trace_start_locking.exit.i, %bb.c
  %i.g = add i64 %i.e, -1                         ; 2 uses
  %i.h = call ptr @mas_find(ptr noundef nonnull %3, i64 noundef %i.g) #12 ; 2 uses
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %mmap_read_lock.exit, %bb.e
  %i.i = phi ptr [ %i.q, %bb.e ], [ %i.h, %mmap_read_lock.exit ] ; 3 uses
  %.01420 = phi i64 [ %i.p, %bb.e ], [ %1, %mmap_read_lock.exit ]
  %i.j = load i64, ptr %i.i, align 64
  %i.k = icmp ugt i64 %i.j, %.01420
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %i.i, i64 32
  %i.m = load i64, ptr %i.l, align 32
  %i.n = and i64 %i.m, 268436480
  %.not16 = icmp eq i64 %i.n, 0
  br i1 %.not16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = call ptr @mas_find(ptr noundef nonnull %3, i64 noundef %i.g) #12 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !28

bb.f:                                             ; preds = %bb.d, %.lr.ph
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #13
          to label %mmap_read_unlock.exit [label %bb.g], !srcloc !27

end_hunk_0
