inline.NumInlined: 77
inline.NumDeleted: 51
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_display_dpt_interface = type { ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.52 }
%union.anon.52 = type { i64 }
%struct.i915_gem_ww_ctx = type { %struct.ww_acquire_ctx, %struct.list_head, ptr, i8 }
%struct.ww_acquire_ctx = type { ptr, i64, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }

@i915_display_dpt_interface = dso_local local_unnamed_addr constant %struct.intel_display_dpt_interface { ptr @i915_dpt_create, ptr @i915_dpt_destroy, ptr @i915_dpt_suspend, ptr @i915_dpt_resume }, align 8
@.str = private unnamed_addr constant [26 x i8] c"Allocating dpt from smem\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [16 x i8] c"%s %s: [drm] %s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"drm_WARN_ON(!((vm)->is_dpt))\00", align 1
@i915_vm_to_dpt.__UNIQUE_ID_addressable___SCK__WARN_trap_790 = internal global ptr @__SCK__WARN_trap, section ".discard.addressable", align 8
@__SCK__WARN_trap = external dso_local global %struct.static_call_key, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/i915/i915_dpt.c\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @i915_vm_to_dpt.__UNIQUE_ID_addressable___SCK__WARN_trap_790], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define dso_local noundef ptr @i915_dpt_to_vm(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  ret ptr %0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @i915_dpt_pin_to_ggtt(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.i915_gem_ww_ctx, align 8    ; 13 uses
  %i.a = getelementptr i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false), !annotation !10
  %i.c = getelementptr i8, ptr %0, i64 680        ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @i915_gem_object_is_stolen(ptr noundef %i.d) #8
  %spec.select = select i1 %i.e, i64 8, i64 0
  %i.f = getelementptr i8, ptr %i.b, i64 3176     ; 2 uses
  %i.g = tail call ptr @intel_runtime_pm_get(ptr noundef %i.f) #8 ; 0 uses
  %i.h = getelementptr i8, ptr %i.b, i64 5920     ; 4 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.h, ptr elementtype(i32) %i.h) #7, !srcloc !11
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %2, i1 noundef zeroext true) #8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.l = zext i32 %1 to i64
  %i.m = getelementptr i8, ptr %0, i64 688
  %i.n = getelementptr i8, ptr %0, i64 696
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %__i915_gem_ww_fini.exit
  %.03045 = phi ptr [ null, %bb.a ], [ %.13139, %__i915_gem_ww_fini.exit ] ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8              ; 10 uses
  %i.q = load i8, ptr %i.i, align 8, !range !12, !noundef !13
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr i8, ptr %i.p, i64 248
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.t, ptr noundef nonnull %2) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.v = call i32 @ww_mutex_lock(ptr noundef %i.t, ptr noundef nonnull %2) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.u, %bb.c ], [ %i.v, %bb.d ] ; 4 uses
  %i.w = icmp eq i32 %.0.i.i, 0
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p, i32 1, ptr elementtype(i32) %i.p) #7, !srcloc !14 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.g, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.y = add i32 %i.x, 1
  %i.z = or i32 %i.y, %i.x
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !16

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  call void @refcount_warn_saturate(ptr noundef %i.p, i32 noundef %.sink.i.i.i.i.i.i.i.i) #8
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %bb.g, %.sink.split.i.i.i.i.i.i.i.i
  %i.aa = getelementptr i8, ptr %i.p, i64 544     ; 3 uses
  %i.ab = load ptr, ptr %i.k, align 8             ; 2 uses
  store ptr %i.aa, ptr %i.k, align 8
  store ptr %i.j, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.p, i64 552
  store ptr %i.ab, ptr %i.ac, align 8
  store volatile ptr %i.aa, ptr %i.ab, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %i.ad, i32 0, i32 %.0.i.i
  switch i32 %.0.i.i, label %.thread10.i [
    i32 -35, label %bb.i
    i32 -114, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ae = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.p, i32 1, ptr elementtype(i32) %i.p) #7, !srcloc !14 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.j, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.af = add i32 %i.ae, 1
  %i.ag = or i32 %i.af, %i.ae
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.ag, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %i915_vma_get.exit.thread41, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !16

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.i ], [ 1, %bb.j ]
  call void @refcount_warn_saturate(ptr noundef %i.p, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #8
  br label %i915_vma_get.exit.thread41

i915_vma_get.exit.thread41:                       ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.j
  store ptr %i.p, ptr %i.o, align 8
  br label %bb.o

bb.k:                                             ; preds = %bb.h, %i915_gem_object_get.exit.i.i
  %i.ah = load ptr, ptr %i.c, align 8
  %i.ai = call ptr @i915_gem_object_ggtt_pin_ww(ptr noundef %i.ah, ptr noundef nonnull %2, ptr noundef null, i64 noundef 0, i64 noundef %i.l, i64 noundef %spec.select) #8 ; 10 uses
  %i.aj = icmp ugt ptr %i.ai, inttoptr (i64 -4096 to ptr)
  br i1 %i.aj, label %i915_vma_get.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = call ptr @i915_vma_pin_iomap(ptr noundef %i.ai) #8 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 268    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.al, ptr elementtype(i32) %i.al) #7, !srcloc !17
  %i.am = icmp ugt ptr %i.ak, inttoptr (i64 -4096 to ptr)
  br i1 %i.am, label %i915_vma_get.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ai, ptr %i.m, align 8
  store ptr %i.ak, ptr %i.n, align 8
  %i.an = getelementptr i8, ptr %i.ai, i64 184
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao, i32 1, ptr elementtype(i32) %i.ao) #7, !srcloc !14 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %bb.n, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.aq = add i32 %i.ap, 1
  %i.ar = or i32 %i.aq, %i.ap
  %.not10.i.i.i.i.i.i.i = icmp sgt i32 %i.ar, -1
  br i1 %.not10.i.i.i.i.i.i.i, label %.thread10.i, label %.sink.split.i.i.i.i.i.i.i, !prof !16

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.n, %bb.m
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %bb.m ], [ 1, %bb.n ]
  call void @refcount_warn_saturate(ptr noundef %i.ao, i32 noundef %.sink.i.i.i.i.i.i.i) #8
  br label %.thread10.i

i915_vma_get.exit:                                ; preds = %bb.l, %bb.k
  %.1.in.in = phi ptr [ %i.ai, %bb.k ], [ %i.ak, %bb.l ]
  %.1.in = ptrtoint ptr %.1.in.in to i64
  %.1 = trunc i64 %.1.in to i32                   ; 2 uses
  %i.as = icmp eq i32 %.1, -35
  br i1 %i.as, label %bb.o, label %.thread10.i

bb.o:                                             ; preds = %i915_vma_get.exit.thread41, %i915_vma_get.exit
  %.13144 = phi ptr [ %.03045, %i915_vma_get.exit.thread41 ], [ %i.ai, %i915_vma_get.exit ] ; 3 uses
  %i.at = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %2) #8 ; 2 uses
  switch i32 %i.at, label %.thread10.i [
    i32 0, label %__i915_gem_ww_fini.exit
    i32 -35, label %__i915_gem_ww_fini.exit
  ]

.thread10.i:                                      ; preds = %bb.h, %.sink.split.i.i.i.i.i.i.i, %bb.n, %bb.o, %i915_vma_get.exit
  %.13140 = phi ptr [ %.13144, %bb.o ], [ %i.ai, %i915_vma_get.exit ], [ %i.ai, %.sink.split.i.i.i.i.i.i.i ], [ %i.ai, %bb.n ], [ %.03045, %bb.h ]
  %.013.i = phi i32 [ %i.at, %bb.o ], [ %.1, %i915_vma_get.exit ], [ 0, %.sink.split.i.i.i.i.i.i.i ], [ 0, %bb.n ], [ %spec.store.select.i6.i, %bb.h ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %2) #8
  br label %__i915_gem_ww_fini.exit

__i915_gem_ww_fini.exit:                          ; preds = %bb.o, %bb.o, %.thread10.i
  %.13139 = phi ptr [ %.13144, %bb.o ], [ %.13140, %.thread10.i ], [ %.13144, %bb.o ] ; 2 uses
  %.09.i = phi i32 [ -35, %bb.o ], [ %.013.i, %.thread10.i ], [ -35, %bb.o ] ; 3 uses
  %i.au = icmp eq i32 %.09.i, -35
  br i1 %i.au, label %bb.b, label %bb.p, !llvm.loop !18

bb.p:                                             ; preds = %__i915_gem_ww_fini.exit
  %i.av = load ptr, ptr %i.c, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 912    ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = or i8 %i.ax, 4
  store i8 %i.ay, ptr %i.aw, align 8
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.h, ptr elementtype(i32) %i.h) #7, !srcloc !17
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.f) #8
  %.not = icmp eq i32 %.09.i, 0
  %i.az = sext i32 %.09.i to i64
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = select i1 %.not, ptr %.13139, ptr %i.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret ptr %i.bb
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_is_stolen(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_runtime_pm_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_ggtt_pin_ww(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_vma_pin_iomap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i915_dpt_unpin_from_ggtt(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 688        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @i915_vma_unpin_iomap(ptr noundef %i.b) #8
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 184
  %.val = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.e = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val, i32 -1, ptr elementtype(i32) %.val) #7, !srcloc !14 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %i.e, 1
  br i1 %i.g, label %bb.c, label %i915_vma_put.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %.val, i32 noundef 3) #8
  br label %i915_vma_put.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  tail call void @drm_gem_object_free(ptr noundef %.val) #8, !callees !21, !inline_history !22
  br label %i915_vma_put.exit

i915_vma_put.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vma_unpin_iomap(ptr noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local i64 @i915_dpt_offset(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 248
  %.val1 = load i32, ptr %i.b, align 8
  %i.c = zext i32 %.val1 to i64
  %i.d = add i64 %.val, %i.c
  ret i64 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @i915_dpt_create(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 10 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 216
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, 4095
  %i.f = lshr i64 %i.e, 12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.062 = phi i64 [ %1, %bb.a ], [ %i.f, %bb.b ]
  %i.g = shl i64 %.062, 3
  %i.h = add i64 %i.g, -8
  %i.i = or i64 %i.h, 4095
  %i.j = add i64 %i.i, 1                          ; 4 uses
  %i.k = tail call ptr @i915_gem_object_create_lmem(ptr noundef %i.b, i64 noundef %i.j, i32 noundef 1) #8 ; 3 uses
  %i.l = icmp ugt ptr %i.k, inttoptr (i64 -4096 to ptr)
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.b, i64 3528
  %.val72 = load ptr, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %.val72, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 776
  %.val73 = load i64, ptr %i.p, align 8
  %.not80 = icmp eq i64 %.val73, 0
  br i1 %.not80, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @i915_gem_object_create_stolen(ptr noundef %i.b, i64 noundef %i.j) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.064 = phi ptr [ %i.q, %bb.e ], [ %i.k, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.r = icmp ugt ptr %.064, inttoptr (i64 -4096 to ptr)
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.b, i64 1648
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 2
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.h, %bb.i
  %i.z = phi ptr [ %i.y, %bb.i ], [ null, %bb.h ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.z, i32 noundef 2, ptr noundef nonnull @.str) #8
  %i.aa = tail call ptr @i915_gem_object_create_shmem(ptr noundef %i.b, i64 noundef %i.j) #8
  br label %bb.j

bb.j:                                             ; preds = %__drm_to_dev.exit, %bb.g, %bb.f
  %.1 = phi ptr [ %.064, %bb.g ], [ %i.aa, %__drm_to_dev.exit ], [ %.064, %bb.f ] ; 20 uses
  %i.ab = icmp ugt ptr %.1, inttoptr (i64 -4096 to ptr)
  br i1 %i.ab, label %i915_gem_object_put.exit75, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %.1, i64 248      ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.ad, ptr noundef null) #8 ; 3 uses
  %i.af = icmp eq i32 %i.ae, -114
  %spec.store.select.i.i = select i1 %i.af, i32 0, i32 %i.ae
  switch i32 %i.ae, label %bb.p [
    i32 -35, label %bb.l
    i32 0, label %bb.n
    i32 -114, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.ag = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.1, i32 1, ptr elementtype(i32) %.1) #7, !srcloc !14 ; 3 uses
  %.not.i.i.i.i.i.i19.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i19.i.i, label %.sink.split.i.i.i.i.i.i21.i.i, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.ah = add i32 %i.ag, 1
  %i.ai = or i32 %i.ah, %i.ag
  %.not10.i.i.i.i.i.i20.i.i = icmp sgt i32 %i.ai, -1
  br i1 %.not10.i.i.i.i.i.i20.i.i, label %.thread, label %.sink.split.i.i.i.i.i.i21.i.i, !prof !16

.sink.split.i.i.i.i.i.i21.i.i:                    ; preds = %bb.m, %bb.l
  %.sink.i.i.i.i.i.i22.i.i = phi i32 [ 2, %bb.l ], [ 1, %bb.m ]
  tail call void @refcount_warn_saturate(ptr noundef %.1, i32 noundef %.sink.i.i.i.i.i.i22.i.i) #8
  br label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i.i21.i.i, %bb.m
  store ptr %.1, ptr inttoptr (i64 40 to ptr), align 8
  br label %.thread90

bb.n:                                             ; preds = %bb.k, %bb.k
  %i.aj = tail call i32 @i915_gem_object_set_cache_level(ptr noundef %.1, i32 noundef 0) #8
  %i.ak = getelementptr i8, ptr %.1, i64 480
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 80
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i74 = icmp eq ptr %i.an, null
  br i1 %.not.i74, label %bb.o, label %2

2:                                                ; preds = %bb.n
  tail call void %i.an(ptr noundef %.1) #8, !inline_history !23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %2
  %3 = load ptr, ptr %i.ac, align 8
  tail call void @ww_mutex_unlock(ptr noundef %3) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.o
  %.065 = phi i32 [ %spec.store.select.i.i, %bb.k ], [ %i.aj, %bb.o ] ; 2 uses
  %.not70 = icmp eq i32 %.065, 0
  br i1 %.not70, label %bb.t, label %.thread90

.thread90:                                        ; preds = %.thread, %bb.p
  %.06579 = phi i32 [ -35, %.thread ], [ %.065, %bb.p ]
  %i.ao = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.1, i32 -1, ptr elementtype(i32) %.1) #7, !srcloc !14 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.thread90
  %i.aq = icmp slt i32 %i.ao, 1
  br i1 %i.aq, label %bb.r, label %i915_gem_object_put.exit, !prof !15

bb.r:                                             ; preds = %bb.q
  tail call void @refcount_warn_saturate(ptr noundef %.1, i32 noundef 3) #8
  br label %i915_gem_object_put.exit

bb.s:                                             ; preds = %.thread90
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  tail call void @drm_gem_object_free(ptr noundef %.1) #8, !callees !21, !inline_history !22
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.q, %bb.r, %bb.s
  %i.ar = sext i32 %.06579 to i64
  %i.as = inttoptr i64 %i.ar to ptr
  br label %i915_gem_object_put.exit75

bb.t:                                             ; preds = %bb.p
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.au = tail call noalias noundef align 8 dereferenceable_or_null(704) ptr @__kmalloc_cache_noprof(ptr noundef %i.at, i32 noundef 3520, i64 noundef 704) #9 ; 16 uses
  %.not71 = icmp eq ptr %i.au, null
  br i1 %.not71, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.av = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.1, i32 -1, ptr elementtype(i32) %.1) #7, !srcloc !14 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = icmp slt i32 %i.av, 1
  br i1 %i.ax, label %bb.w, label %i915_gem_object_put.exit75, !prof !15

bb.w:                                             ; preds = %bb.v
  tail call void @refcount_warn_saturate(ptr noundef %.1, i32 noundef 3) #8
  br label %i915_gem_object_put.exit75

bb.x:                                             ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  tail call void @drm_gem_object_free(ptr noundef %.1) #8, !callees !21, !inline_history !22
  br label %i915_gem_object_put.exit75

bb.y:                                             ; preds = %bb.t
  %i.ay = getelementptr i8, ptr %i.b, i64 3528
  %.val = load ptr, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %i.au, i64 296    ; 2 uses
  store ptr %.val, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.au, i64 304
  store ptr %i.b, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.b, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %i.au, i64 320
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = shl i64 %i.j, 9
  %i.bf = getelementptr i8, ptr %i.au, i64 328
  store i64 %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr i8, ptr %i.au, i64 520    ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 8
  %i.bi = or i8 %i.bh, 2
  store i8 %i.bi, ptr %i.bg, align 8
  tail call void @i915_address_space_init(ptr noundef nonnull %i.au, i32 noundef 2) #8
  %i.bj = getelementptr i8, ptr %i.au, i64 608
  store ptr @dpt_insert_page, ptr %i.bj, align 8
  %i.bk = getelementptr i8, ptr %i.au, i64 592
  store ptr @dpt_clear_range, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %i.au, i64 616
  store ptr @dpt_insert_entries, ptr %i.bl, align 8
  %i.bm = getelementptr i8, ptr %i.au, i64 648
  store ptr @dpt_cleanup, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.au, i64 664
  store ptr @dpt_bind_vma, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %i.au, i64 672
  store ptr @dpt_unbind_vma, ptr %i.bo, align 8
  %i.bp = load ptr, ptr %i.az, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 32
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 568
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr i8, ptr %i.au, i64 568
  store ptr %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %i.au, i64 680
  store ptr %.1, ptr %i.bv, align 8
  %i.bw = getelementptr i8, ptr %.1, i64 660      ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 4
  %i.by = or i16 %i.bx, 1024
  store i16 %i.by, ptr %i.bw, align 4
  br label %i915_gem_object_put.exit75

i915_gem_object_put.exit75:                       ; preds = %bb.x, %bb.w, %bb.v, %bb.j, %bb.y, %i915_gem_object_put.exit
  %.0 = phi ptr [ %.1, %bb.j ], [ %i.as, %i915_gem_object_put.exit ], [ %i.au, %bb.y ], [ inttoptr (i64 -12 to ptr), %bb.v ], [ inttoptr (i64 -12 to ptr), %bb.w ], [ inttoptr (i64 -12 to ptr), %bb.x ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_dpt_destroy(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 660      ; 2 uses
  %i.d = load i16, ptr %i.c, align 4
  %i.e = and i16 %i.d, -1025
  store i16 %i.e, ptr %i.c, align 4
  %i.f = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 -1, ptr elementtype(i32) %0) #7, !srcloc !14 ; 2 uses
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.f, 1
  br i1 %i.h, label %bb.c, label %i915_vm_put.exit, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #8
  br label %i915_vm_put.exit

bb.d:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !20
  tail call void @i915_vm_release(ptr noundef %0) #8, !callees !21, !inline_history !22
  br label %i915_vm_put.exit

i915_vm_put.exit:                                 ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_dpt_suspend(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  tail call void @i915_ggtt_suspend_vm(ptr noundef %0, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_dpt_resume(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i1 @i915_ggtt_resume_vm(ptr noundef %0, i1 noundef zeroext true) #8 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_ww_ctx_backoff(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_runtime_pm_put_unchecked(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_create_lmem(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_create_stolen(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_create_shmem(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_set_cache_level(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_address_space_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dpt_insert_page(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 520
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 2
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %i915_vm_to_dpt.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 304        ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit.i

end_hunk_0
