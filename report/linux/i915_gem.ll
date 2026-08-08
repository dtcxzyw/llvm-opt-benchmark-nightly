inline.NumInlined: 272
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@__i915_vma_unbind

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_vma_unbind(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_pread_ioctl(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1656
  %i.b = load i8, ptr %i.a, align 8
  %i.c = icmp ugt i8 %i.b, 11
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1668
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 128
  %.not56 = icmp eq i32 %i.f, 0
  br i1 %.not56, label %i915_gem_object_put.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %i915_gem_object_put.exit, label %__access_ok.exit

__access_ok.exit:                                 ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.k, %i.h                       ; 2 uses
  %i.m = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #12, !srcloc !22
  %i.n = icmp ule i64 %i.l, %i.m
  %i.o = icmp uge i64 %i.l, %i.k
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.d, label %i915_gem_object_put.exit, !prof !14

bb.d:                                             ; preds = %__access_ok.exit
  %i.q = load i32, ptr %1, align 8
  tail call void @__rcu_read_lock() #10
  %i.r = getelementptr i8, ptr %2, i64 80
  %i.s = zext i32 %i.q to i64
  %i.t = tail call ptr @idr_find(ptr noundef %i.r, i64 noundef %i.s) #10 ; 16 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %i915_gem_object_lookup.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load volatile i32, ptr %i.t, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.old1.not.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.e, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.aa, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ], [ %i.u, %bb.e ] ; 3 uses
  %i.v = add i32 %.0.i.i.i.i.i.i, 1
  %i.w = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.t, i32 %i.v, ptr nonnull elementtype(i32) %i.t, i32 %.0.i.i.i.i.i.i) #11, !srcloc !13 ; 2 uses
  %i.x = extractvalue { i8, i32 } %i.w, 0         ; 2 uses
  %i.y = icmp ult i8 %i.x, 2
  tail call void @llvm.assume(i1 %i.y)
  %i.z = trunc nuw i8 %i.x to i1
  br i1 %i.z, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, !prof !14

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i
  %i.aa = extractvalue { i8, i32 } %i.w, 1        ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !15

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i:  ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.e
  %.2.i.i.i.i.i.i = phi i32 [ 0, %bb.e ], [ %.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ] ; 3 uses
  %i.ac = add i32 %.2.i.i.i.i.i.i, 1
  %i.ad = or i32 %i.ac, %.2.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i.i.i.i.i.i, label %kref_get_unless_zero.exit.i.i, label %bb.f, !prof !14

bb.f:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.t, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %bb.f, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  %.not5.i.i = icmp eq i32 %.2.i.i.i.i.i.i, 0
  br i1 %.not5.i.i, label %i915_gem_object_lookup.exit.thread, label %i915_gem_object_lookup.exit

i915_gem_object_lookup.exit.thread:               ; preds = %bb.d, %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  br label %i915_gem_object_put.exit

i915_gem_object_lookup.exit:                      ; preds = %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  %i.ae = getelementptr i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr i8, ptr %i.t, i64 216
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %.not47 = icmp ult i64 %i.af, %i.ah
  br i1 %.not47, label %bb.g, label %.critedge

bb.g:                                             ; preds = %i915_gem_object_lookup.exit
  %i.ai = load i64, ptr %i.g, align 8             ; 2 uses
  %i.aj = sub nuw i64 %i.ah, %i.af
  %i.ak = icmp ugt i64 %i.ai, %i.aj
  br i1 %i.ak, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_gem_object_pread, i64 8), i1 false) #11
          to label %trace_i915_gem_object_pread.exit [label %arch_test_bit.exit.i.i], !srcloc !23

arch_test_bit.exit.i.i:                           ; preds = %bb.h
  %i.al = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !24
  %i.am = zext i32 %i.al to i64
  %i.an = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.am) #11, !srcloc !25 ; 2 uses
  %i.ao = icmp ult i8 %i.an, 2
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = trunc nuw i8 %i.an to i1
  br i1 %i.ap, label %bb.i, label %trace_i915_gem_object_pread.exit

bb.i:                                             ; preds = %arch_test_bit.exit.i.i
  %i.aq = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.aq, ptr elementtype(i64) %i.aq) #11, !srcloc !26
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !27
  %i.ar = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_gem_object_pread, i64 56), align 8 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i51, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i32 @__SCT__tp_func_i915_gem_object_pread(ptr noundef %i.at, ptr noundef nonnull %i.t, i64 noundef %i.af, i64 noundef %i.ai) #10 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !28
  %i.av = getelementptr i8, ptr %i.aq, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.av, ptr elementtype(i64) %i.av) #11, !srcloc !29
  br label %trace_i915_gem_object_pread.exit

trace_i915_gem_object_pread.exit:                 ; preds = %bb.h, %arch_test_bit.exit.i.i, %bb.k
  %i.aw = getelementptr i8, ptr %i.t, i64 480
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not48 = icmp eq ptr %i.az, null
  br i1 %.not48, label %.thread, label %bb.l

bb.l:                                             ; preds = %trace_i915_gem_object_pread.exit
  %i.ba = tail call i32 %i.az(ptr noundef nonnull %i.t, ptr noundef %1) #10 ; 2 uses
  %.not49 = icmp eq i32 %i.ba, -19
  br i1 %.not49, label %.thread, label %.critedge

.thread:                                          ; preds = %trace_i915_gem_object_pread.exit, %bb.l
  %i.bb = tail call i32 @i915_gem_object_wait(ptr noundef nonnull %i.t, i32 noundef 1, i64 noundef 9223372036854775807) #10 ; 2 uses
  %.not50 = icmp eq i32 %i.bb, 0
  br i1 %.not50, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.thread
  %i.bc = tail call fastcc i32 @i915_gem_shmem_pread(ptr noundef %i.t, ptr noundef %1) #13, !srcloc !30 ; 2 uses
  switch i32 %i.bc, label %.critedge [
    i32 -14, label %bb.n
    i32 -19, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.bd = tail call fastcc i32 @i915_gem_gtt_pread(ptr noundef %i.t, ptr noundef %1) #13, !srcloc !31
  br label %.critedge

.critedge:                                        ; preds = %i915_gem_object_lookup.exit, %bb.m, %bb.g, %bb.n, %.thread, %bb.l
  %.1 = phi i32 [ %i.bc, %bb.m ], [ %i.ba, %bb.l ], [ %i.bb, %.thread ], [ %i.bd, %bb.n ], [ -22, %bb.g ], [ -22, %i915_gem_object_lookup.exit ] ; 3 uses
  %i.be = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.t, i32 -1, ptr nonnull elementtype(i32) %i.t) #11, !srcloc !16 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.bg = icmp slt i32 %i.be, 1
  br i1 %i.bg, label %bb.p, label %i915_gem_object_put.exit, !prof !17

bb.p:                                             ; preds = %bb.o
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.t, i32 noundef 3) #10
  br label %i915_gem_object_put.exit

bb.q:                                             ; preds = %.critedge
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %i.t) #10, !callees !19, !inline_history !20
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.q, %bb.p, %bb.o, %i915_gem_object_lookup.exit.thread, %__access_ok.exit, %bb.c, %bb.b
  %.0 = phi i32 [ -95, %bb.b ], [ -2, %i915_gem_object_lookup.exit.thread ], [ -14, %__access_ok.exit ], [ 0, %bb.c ], [ %.1, %bb.q ], [ %.1, %bb.p ], [ %.1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_wait(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @i915_gem_shmem_pread(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %0, i64 248        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.c, ptr noundef null) #10 ; 3 uses
  %i.e = icmp eq i32 %i.d, -114
  %spec.store.select.i.i = select i1 %i.e, i32 0, i32 %i.d
  switch i32 %i.d, label %bb.m [
    i32 -35, label %bb.b
    i32 0, label %bb.d
    i32 -114, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %0, i32 1, ptr nonnull elementtype(i32) %0) #11, !srcloc !16 ; 3 uses
  %.not.i.i.i.i.i.i19.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i19.i.i, label %.sink.split.i.i.i.i.i.i21.i.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.f, 1
  %i.h = or i32 %i.g, %i.f
  %.not10.i.i.i.i.i.i20.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not10.i.i.i.i.i.i20.i.i, label %i915_gem_object_lock_interruptible.exit.thread, label %.sink.split.i.i.i.i.i.i21.i.i, !prof !14

.sink.split.i.i.i.i.i.i21.i.i:                    ; preds = %bb.c, %bb.b
  %.sink.i.i.i.i.i.i22.i.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %.sink.i.i.i.i.i.i22.i.i) #10
  br label %i915_gem_object_lock_interruptible.exit.thread

i915_gem_object_lock_interruptible.exit.thread:   ; preds = %bb.c, %.sink.split.i.i.i.i.i.i21.i.i
  store ptr %0, ptr inttoptr (i64 40 to ptr), align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.a, %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !32
  %i.i = getelementptr i8, ptr %0, i64 688        ; 7 uses
  %i.j = load volatile i32, ptr %i.i, align 8     ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !33

.lr.ph.i:                                         ; preds = %bb.d, %raw_atomic_try_cmpxchg.exit.i
  %.047.i = phi i32 [ %i.q, %raw_atomic_try_cmpxchg.exit.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.l = add i32 %.047.i, 1
  %i.m = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 range(i32 2, 1) %i.l, ptr elementtype(i32) %i.i, i32 %.047.i) #11, !srcloc !13 ; 2 uses
  %i.n = extractvalue { i8, i32 } %i.m, 0         ; 2 uses
  %i.o = icmp ult i8 %i.n, 2
  tail call void @llvm.assume(i1 %i.o)
  %i.p = trunc nuw i8 %i.n to i1
  br i1 %i.p, label %i915_gem_object_pin_pages.exit.thread, label %raw_atomic_try_cmpxchg.exit.i, !prof !14

raw_atomic_try_cmpxchg.exit.i:                    ; preds = %.lr.ph.i
  %i.q = extractvalue { i8, i32 } %i.m, 1         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !34

i915_gem_object_pin_pages.exit:                   ; preds = %raw_atomic_try_cmpxchg.exit.i, %bb.d
  %i.s = tail call i32 @__i915_gem_object_get_pages(ptr noundef nonnull %0) #10 ; 2 uses
  %.not54 = icmp eq i32 %i.s, 0
  br i1 %.not54, label %i915_gem_object_pin_pages.exit.thread, label %bb.k

i915_gem_object_pin_pages.exit.thread:            ; preds = %.lr.ph.i, %i915_gem_object_pin_pages.exit
  %i.t = call i32 @i915_gem_object_prepare_read(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not55 = icmp eq i32 %i.t, 0
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, ptr elementtype(i32) %i.i) #11
  br i1 %.not55, label %bb.e, label %bb.k

bb.e:                                             ; preds = %i915_gem_object_pin_pages.exit.thread
  %i.u = getelementptr i8, ptr %0, i64 480
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %i915_gem_object_unlock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.x(ptr noundef nonnull %0) #10, !inline_history !35
  br label %i915_gem_object_unlock.exit

i915_gem_object_unlock.exit:                      ; preds = %bb.e, %bb.f
  %i.y = load ptr, ptr %i.b, align 8
  call void @ww_mutex_unlock(ptr noundef %i.y) #10
  %i.z = getelementptr i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr i8, ptr %1, i64 24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = and i64 %i.af, 4095                     ; 3 uses
  %i.ah = lshr i64 %i.af, 12                      ; 2 uses
  %.not5671 = icmp eq i64 %i.aa, 0
  br i1 %.not5671, label %shmem_pread.exit._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %i915_gem_object_unlock.exit
  %i.ai = call ptr @__i915_gem_object_get_page(ptr noundef nonnull %0, i64 noundef %i.ah) #10
  %i.aj = sub nuw nsw i64 4096, %i.ag
  %i.ak = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.aj) ; 4 uses
  %i.al = load i32, ptr %i.a, align 4
  %.not.peel = icmp eq i32 %i.al, 0
  %i.am = call i32 @__SCT__might_resched() #10    ; 0 uses
  %i.an = load i64, ptr @vmemmap_base, align 8
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = shl i64 %i.ap, 6
  %i.ar = load i64, ptr @page_offset_base, align 8
  %i.as = add i64 %i.aq, %i.ar
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  br i1 %.not.peel, label %shmem_pread.exit.peel, label %bb.g

bb.g:                                             ; preds = %.lr.ph.preheader
  %i.au = getelementptr i8, ptr %i.at, i64 %i.ag
  call void @drm_clflush_virt_range(ptr noundef %i.au, i64 noundef %i.ak) #10
  br label %shmem_pread.exit.peel

shmem_pread.exit.peel:                            ; preds = %bb.g, %.lr.ph.preheader
  %i.av = getelementptr i8, ptr %i.at, i64 %i.ag
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !36
  %i.aw = call i64 @llvm.read_register.i64(metadata !0)
  %i.ax = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldinstr\0A771:\0A\09rep movsb\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call rep_movs_alternative\0A775:\0A.popsection\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -2147483648, 2147483648) %i.ak, ptr %i.ad, ptr %i.av, i64 %i.aw) #11, !srcloc !37 ; 2 uses
  %i.ay = extractvalue { i64, ptr, ptr, i64 } %i.ax, 0
  %i.az = extractvalue { i64, ptr, ptr, i64 } %i.ax, 3
  call void @llvm.write_register.i64(metadata !0, i64 %i.az)
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !38
  %i.ba = and i64 %i.ay, 4294967295
  %.not.i58.peel = icmp eq i64 %i.ba, 0
  br i1 %.not.i58.peel, label %bb.h, label %shmem_pread.exit._crit_edge

bb.h:                                             ; preds = %shmem_pread.exit.peel
  %i.bb = sub i64 %i.aa, %i.ak                    ; 2 uses
  %.not56.peel = icmp eq i64 %i.bb, 0
  br i1 %.not56.peel, label %shmem_pread.exit._crit_edge, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.h
  %i.bc = getelementptr i8, ptr %i.ad, i64 %i.ak
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.peel.next, %bb.j
  %.04175 = phi ptr [ %i.bu, %bb.j ], [ %i.bc, %.lr.ph.peel.next ] ; 2 uses
  %.04473.in = phi i64 [ %.04473, %bb.j ], [ %i.ah, %.lr.ph.peel.next ]
  %.04572 = phi i64 [ %i.bt, %bb.j ], [ %i.bb, %.lr.ph.peel.next ] ; 2 uses
  %.04473 = add i64 %.04473.in, 1                 ; 2 uses
  %i.bd = call ptr @__i915_gem_object_get_page(ptr noundef nonnull %0, i64 noundef %.04473) #10
  %i.be = call i64 @llvm.umin.i64(i64 %.04572, i64 4096) ; 4 uses
  %i.bf = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.bf, 0
  %i.bg = call i32 @__SCT__might_resched() #10    ; 0 uses
  %i.bh = load i64, ptr @vmemmap_base, align 8
  %i.bi = ptrtoint ptr %i.bd to i64
  %i.bj = sub i64 %i.bi, %i.bh
  %i.bk = shl i64 %i.bj, 6
  %i.bl = load i64, ptr @page_offset_base, align 8
  %i.bm = add i64 %i.bk, %i.bl
  %i.bn = inttoptr i64 %i.bm to ptr               ; 2 uses
  br i1 %.not, label %shmem_pread.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  call void @drm_clflush_virt_range(ptr noundef %i.bn, i64 noundef %i.be) #10
  br label %shmem_pread.exit

shmem_pread.exit:                                 ; preds = %.lr.ph, %bb.i
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !36
  %i.bo = call i64 @llvm.read_register.i64(metadata !0)
  %i.bp = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldinstr\0A771:\0A\09rep movsb\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call rep_movs_alternative\0A775:\0A.popsection\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -2147483648, 2147483648) %i.be, ptr %.04175, ptr %i.bn, i64 %i.bo) #11, !srcloc !37 ; 2 uses
  %i.bq = extractvalue { i64, ptr, ptr, i64 } %i.bp, 0
  %i.br = extractvalue { i64, ptr, ptr, i64 } %i.bp, 3
  call void @llvm.write_register.i64(metadata !0, i64 %i.br)
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !38
  %i.bs = and i64 %i.bq, 4294967295
  %.not.i58 = icmp eq i64 %i.bs, 0
  br i1 %.not.i58, label %bb.j, label %shmem_pread.exit._crit_edge

bb.j:                                             ; preds = %shmem_pread.exit
  %i.bt = sub i64 %.04572, %i.be                  ; 2 uses
  %i.bu = getelementptr i8, ptr %.04175, i64 %i.be
  %.not56 = icmp eq i64 %i.bt, 0
  br i1 %.not56, label %shmem_pread.exit._crit_edge, label %.lr.ph, !llvm.loop !39

shmem_pread.exit._crit_edge:                      ; preds = %bb.j, %shmem_pread.exit, %shmem_pread.exit.peel, %bb.h, %i915_gem_object_unlock.exit
  %.148 = phi i32 [ 0, %i915_gem_object_unlock.exit ], [ -14, %shmem_pread.exit.peel ], [ 0, %bb.h ], [ 0, %bb.j ], [ -14, %shmem_pread.exit ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, ptr elementtype(i32) %i.i) #11, !srcloc !41
  br label %bb.m

bb.k:                                             ; preds = %i915_gem_object_pin_pages.exit.thread, %i915_gem_object_pin_pages.exit
  %.2 = phi i32 [ %i.s, %i915_gem_object_pin_pages.exit ], [ %i.t, %i915_gem_object_pin_pages.exit.thread ]
  %i.bv = getelementptr i8, ptr %0, i64 480
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr i8, ptr %i.bw, i64 80
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not.i59 = icmp eq ptr %i.by, null
  br i1 %.not.i59, label %i915_gem_object_unlock.exit60, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void %i.by(ptr noundef nonnull %0) #10, !inline_history !35
  br label %i915_gem_object_unlock.exit60

i915_gem_object_unlock.exit60:                    ; preds = %bb.k, %bb.l
  %i.bz = load ptr, ptr %i.b, align 8
  call void @ww_mutex_unlock(ptr noundef %i.bz) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %i915_gem_object_lock_interruptible.exit.thread, %i915_gem_object_unlock.exit60, %shmem_pread.exit._crit_edge
  %.0 = phi i32 [ %.148, %shmem_pread.exit._crit_edge ], [ %.2, %i915_gem_object_unlock.exit60 ], [ %spec.store.select.i.i, %bb.a ], [ -35, %i915_gem_object_lock_interruptible.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @i915_gem_gtt_pread(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.drm_mm_node, align 8        ; 10 uses
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 3528
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %2, i8 0, i64 168, i1 false), !annotation !32
  %i.f = getelementptr i8, ptr %i.b, i64 3176     ; 2 uses
  %i.g = tail call ptr @intel_runtime_pm_get(ptr noundef %i.f) #10 ; 0 uses
  %i.h = call fastcc ptr @i915_gem_gtt_prepare(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false) #13, !srcloc !42 ; 3 uses
  %i.i = icmp ugt ptr %i.h, inttoptr (i64 -4096 to ptr)
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = trunc i64 %i.j to i32
  br label %i915_gem_gtt_cleanup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.not68 = icmp eq i64 %i.m, 0
  br i1 %.not68, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.u = getelementptr i8, ptr %i.e, i64 608
  %i.v = getelementptr i8, ptr %i.e, i64 704      ; 2 uses
  br label %drm_mm_node_allocated.exit

drm_mm_node_allocated.exit:                       ; preds = %.lr.ph, %gtt_user_read.exit.thread59
  %.04871 = phi i64 [ %i.m, %.lr.ph ], [ %i.be, %gtt_user_read.exit.thread59 ] ; 2 uses
  %.05070 = phi i64 [ %i.o, %.lr.ph ], [ %i.bg, %gtt_user_read.exit.thread59 ] ; 4 uses
  %.05269 = phi ptr [ %i.r, %.lr.ph ], [ %i.bf, %gtt_user_read.exit.thread59 ] ; 3 uses
  %i.w = load i64, ptr %i.s, align 8              ; 2 uses
  %i.x = and i64 %.05070, 4095                    ; 3 uses
  %i.y = sub nuw nsw i64 4096, %i.x
  %i.z = call i64 @llvm.umin.i64(i64 %.04871, i64 %i.y) ; 5 uses
  %i.aa = load volatile i64, ptr %i.t, align 8
  %.in.i = trunc i64 %i.aa to i1
  br i1 %.in.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %drm_mm_node_allocated.exit
  %i.ab = load ptr, ptr %i.u, align 8
  %i.ac = lshr i64 %.05070, 12
  %i.ad = call i64 @__i915_gem_object_get_dma_address(ptr noundef nonnull %0, i64 noundef %i.ac) #10
  %i.ae = load i64, ptr %i.s, align 8
  %i.af = call i32 @i915_gem_get_pat_index(ptr noundef %i.b, i32 noundef 0) #10
  call void %i.ab(ptr noundef %i.e, i64 noundef %i.ad, i64 noundef %i.ae, i32 noundef %i.af, i32 noundef 0) #10
  br label %bb.f

bb.e:                                             ; preds = %drm_mm_node_allocated.exit
  %i.ag = and i64 %.05070, 4294963200
  %i.ah = add i64 %i.w, %i.ag
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.049.in = phi i64 [ %i.w, %bb.d ], [ %i.ah, %bb.e ]
  %i.ai = and i64 %.049.in, 4294967295            ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #11, !srcloc !43
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !44
  %i.aj = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !45
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr i8, ptr %i.ak, i64 2900   ; 4 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !46
  %.val.i.i = load ptr, ptr %i.v, align 8
  %i.ao = getelementptr i8, ptr %.val.i.i, i64 %i.ai
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.x
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !36
  %i.aq = call i64 @llvm.read_register.i64(metadata !0)
  %i.ar = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldinstr\0A771:\0A\09rep movsb\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call rep_movs_alternative\0A775:\0A.popsection\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -2147483648, 2147483648) %i.z, ptr %.05269, ptr %i.ap, i64 %i.aq) #11, !srcloc !37 ; 2 uses
  %i.as = extractvalue { i64, ptr, ptr, i64 } %i.ar, 0
  %i.at = extractvalue { i64, ptr, ptr, i64 } %i.ar, 3
  call void @llvm.write_register.i64(metadata !0, i64 %i.at)
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !38
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !47
  %i.au = load i32, ptr %i.al, align 4
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr %i.al, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !48
  %i.aw = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #11, !srcloc !49 ; 2 uses
  %i.ax = icmp ult i8 %i.aw, 2
  call void @llvm.assume(i1 %i.ax)
  %i.ay = trunc nuw i8 %i.aw to i1
  br i1 %i.ay, label %bb.g, label %io_mapping_unmap_atomic.exit.i, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.az = call i64 @llvm.read_register.i64(metadata !0)
  %i.ba = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.az) #11, !srcloc !50
  call void @llvm.write_register.i64(metadata !0, i64 %i.ba)
  br label %io_mapping_unmap_atomic.exit.i

io_mapping_unmap_atomic.exit.i:                   ; preds = %bb.g, %bb.f
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %gtt_user_read.exit.thread59, label %gtt_user_read.exit

gtt_user_read.exit:                               ; preds = %io_mapping_unmap_atomic.exit.i
  %.val.i = load ptr, ptr %i.v, align 8
  %i.bb = getelementptr i8, ptr %.val.i, i64 %i.ai
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.x
  %i.bd = call i64 @_copy_to_user(ptr noundef %.05269, ptr noundef %i.bc, i64 noundef range(i64 -2147483648, 2147483648) %i.z) #10
  %.not66 = icmp eq i64 %i.bd, 0
  br i1 %.not66, label %gtt_user_read.exit.thread59, label %.thread

gtt_user_read.exit.thread59:                      ; preds = %io_mapping_unmap_atomic.exit.i, %gtt_user_read.exit
  %i.be = sub i64 %.04871, %i.z                   ; 2 uses
  %i.bf = getelementptr i8, ptr %.05269, i64 %i.z
  %i.bg = add i64 %i.z, %.05070
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %.thread, label %drm_mm_node_allocated.exit

.thread:                                          ; preds = %gtt_user_read.exit.thread59, %gtt_user_read.exit, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ 0, %gtt_user_read.exit.thread59 ], [ -14, %gtt_user_read.exit ] ; 2 uses
  %i.bh = load ptr, ptr %i.a, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 3528
  %.val.i57 = load ptr, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %.val.i57, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bl = getelementptr i8, ptr %0, i64 688       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bl, ptr elementtype(i32) %i.bl) #11, !srcloc !41
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bn = load volatile i64, ptr %i.bm, align 8
  %.in.i.i = trunc i64 %i.bn to i1
  br i1 %.in.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  %i.bo = getelementptr i8, ptr %i.bk, i64 592
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load i64, ptr %i.bs, align 8
  call void %i.bp(ptr noundef %i.bk, i64 noundef %i.br, i64 noundef %i.bt) #10, !inline_history !51
  %i.bu = getelementptr i8, ptr %i.bk, i64 384    ; 2 uses
  call void @mutex_lock(ptr noundef %i.bu) #10
  call void @drm_mm_remove_node(ptr noundef nonnull %2) #10
  call void @mutex_unlock(ptr noundef %i.bu) #10
  br label %i915_gem_gtt_cleanup.exit

bb.i:                                             ; preds = %.thread
  %i.bv = getelementptr i8, ptr %i.h, i64 268     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bv, ptr elementtype(i32) %i.bv) #11, !srcloc !41
  br label %i915_gem_gtt_cleanup.exit

i915_gem_gtt_cleanup.exit:                        ; preds = %bb.i, %bb.h, %bb.b
  %.3 = phi i32 [ %i.k, %bb.b ], [ %.2, %bb.h ], [ %.2, %bb.i ]
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.3
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_pwrite_ioctl(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1656
  %i.b = load i8, ptr %i.a, align 8
  %i.c = icmp ugt i8 %i.b, 11
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1668
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 128
  %.not62 = icmp eq i32 %i.f, 0
  br i1 %.not62, label %i915_gem_object_put.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %i915_gem_object_put.exit, label %__access_ok.exit

__access_ok.exit:                                 ; preds = %bb.c
  %i.j = getelementptr i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.k, %i.h                       ; 2 uses
  %i.m = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #12, !srcloc !22
  %i.n = icmp ule i64 %i.l, %i.m
  %i.o = icmp uge i64 %i.l, %i.k
  %i.p = and i1 %i.o, %i.n
  br i1 %i.p, label %bb.d, label %i915_gem_object_put.exit, !prof !14

end_hunk_0
begin_hunk_1_@i915_gem_gtt_pwrite_fast:bb.a

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @intel_runtime_pm_get_if_in_use(ptr noundef %i.f) #10
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.o, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr @intel_runtime_pm_get(ptr noundef %i.f) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %2, i8 0, i64 168, i1 false), !annotation !32
  %i.l = call fastcc ptr @i915_gem_gtt_prepare(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext true) #13, !srcloc !55 ; 3 uses
  %i.m = icmp ugt ptr %i.l, inttoptr (i64 -4096 to ptr)
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = trunc i64 %i.n to i32
  br label %i915_gem_gtt_cleanup.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 672        ; 2 uses
  %i.q = load volatile ptr, ptr %i.p, align 8
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %i915_gem_object_frontbuffer_invalidate.exit, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  call void @__i915_gem_object_frontbuffer_invalidate(ptr noundef nonnull %0, i32 noundef 0) #10
  br label %i915_gem_object_frontbuffer_invalidate.exit

i915_gem_object_frontbuffer_invalidate.exit:      ; preds = %bb.f, %bb.g
  %i.r = load i64, ptr %i.g, align 8              ; 2 uses
  %.not6781 = icmp eq i64 %i.r, 0
  br i1 %.not6781, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %i915_gem_object_frontbuffer_invalidate.exit
  %i.s = load i64, ptr %i.h, align 8
  %i.t = getelementptr i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.y = getelementptr i8, ptr %i.e, i64 296
  %i.z = getelementptr i8, ptr %i.e, i64 608
  %i.aa = getelementptr i8, ptr %i.e, i64 704     ; 2 uses
  br label %drm_mm_node_allocated.exit

drm_mm_node_allocated.exit:                       ; preds = %.lr.ph, %ggtt_write.exit.thread72
  %.05684 = phi i64 [ %i.r, %.lr.ph ], [ %i.bk, %ggtt_write.exit.thread72 ] ; 2 uses
  %.05883 = phi i64 [ %i.s, %.lr.ph ], [ %i.bm, %ggtt_write.exit.thread72 ] ; 4 uses
  %.06182 = phi ptr [ %i.v, %.lr.ph ], [ %i.bl, %ggtt_write.exit.thread72 ] ; 3 uses
  %i.ab = load i64, ptr %i.w, align 8             ; 2 uses
  %i.ac = and i64 %.05883, 4095                   ; 3 uses
  %i.ad = sub nuw nsw i64 4096, %i.ac
  %i.ae = call i64 @llvm.umin.i64(i64 %.05684, i64 %i.ad) ; 5 uses
  %i.af = load volatile i64, ptr %i.x, align 8
  %.in.i = trunc i64 %i.af to i1
  br i1 %.in.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %drm_mm_node_allocated.exit
  %i.ag = load ptr, ptr %i.y, align 8
  call void @intel_gt_flush_ggtt_writes(ptr noundef %i.ag) #10
  %i.ah = load ptr, ptr %i.z, align 8
  %i.ai = lshr i64 %.05883, 12
  %i.aj = call i64 @__i915_gem_object_get_dma_address(ptr noundef nonnull %0, i64 noundef %i.ai) #10
  %i.ak = load i64, ptr %i.w, align 8
  %i.al = call i32 @i915_gem_get_pat_index(ptr noundef %i.b, i32 noundef 0) #10
  call void %i.ah(ptr noundef %i.e, i64 noundef %i.aj, i64 noundef %i.ak, i32 noundef %i.al, i32 noundef 0) #10
  call void asm sideeffect "sfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !56
  br label %bb.j

bb.i:                                             ; preds = %drm_mm_node_allocated.exit
  %i.am = and i64 %.05883, 4294963200
  %i.an = add i64 %i.ab, %i.am
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.057.in = phi i64 [ %i.ab, %bb.h ], [ %i.an, %bb.i ]
  %i.ao = and i64 %.057.in, 4294967295            ; 2 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #11, !srcloc !43
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !44
  %i.ap = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #12, !srcloc !45
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr i8, ptr %i.aq, i64 2900   ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !46
  %.val.i.i = load ptr, ptr %i.aa, align 8
  %i.au = getelementptr i8, ptr %.val.i.i, i64 %i.ao
  %i.av = getelementptr i8, ptr %i.au, i64 %i.ac
  %i.aw = call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #12, !srcloc !57
  %i.ax = call ptr asm "cmp $1,$0\0A\09cmova $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.aw, ptr readnone %.06182) #12, !srcloc !58
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !36
  %i.ay = call i64 @copy_to_nontemporal(ptr noundef %i.av, ptr noundef %i.ax, i64 noundef %i.ae) #10
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !38
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !47
  %i.az = load i32, ptr %i.ar, align 4
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr %i.ar, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !48
  %i.bb = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #11, !srcloc !49 ; 2 uses
  %i.bc = icmp ult i8 %i.bb, 2
  call void @llvm.assume(i1 %i.bc)
  %i.bd = trunc nuw i8 %i.bb to i1
  br i1 %i.bd, label %bb.k, label %io_mapping_unmap_atomic.exit.i, !prof !17

bb.k:                                             ; preds = %bb.j
  %i.be = call i64 @llvm.read_register.i64(metadata !0)
  %i.bf = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.be) #11, !srcloc !50
  call void @llvm.write_register.i64(metadata !0, i64 %i.bf)
  br label %io_mapping_unmap_atomic.exit.i

io_mapping_unmap_atomic.exit.i:                   ; preds = %bb.k, %bb.j
  %i.bg = and i64 %i.ay, 4294967295
  %.not.i68 = icmp eq i64 %i.bg, 0
  br i1 %.not.i68, label %ggtt_write.exit.thread72, label %ggtt_write.exit

ggtt_write.exit:                                  ; preds = %io_mapping_unmap_atomic.exit.i
  %.val.i = load ptr, ptr %i.aa, align 8
  %i.bh = getelementptr i8, ptr %.val.i, i64 %i.ao
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.ac
  %i.bj = call i64 @_copy_from_user(ptr noundef %i.bi, ptr noundef %.06182, i64 noundef range(i64 -2147483648, 2147483648) %i.ae) #10
  %.not79 = icmp eq i64 %i.bj, 0
  br i1 %.not79, label %ggtt_write.exit.thread72, label %.thread

ggtt_write.exit.thread72:                         ; preds = %io_mapping_unmap_atomic.exit.i, %ggtt_write.exit
  %i.bk = sub i64 %.05684, %i.ae                  ; 2 uses
  %i.bl = getelementptr i8, ptr %.06182, i64 %i.ae
  %i.bm = add i64 %i.ae, %.05883
  %.not67 = icmp eq i64 %i.bk, 0
  br i1 %.not67, label %.thread, label %drm_mm_node_allocated.exit

.thread:                                          ; preds = %ggtt_write.exit.thread72, %ggtt_write.exit, %i915_gem_object_frontbuffer_invalidate.exit
  %.2 = phi i32 [ 0, %i915_gem_object_frontbuffer_invalidate.exit ], [ 0, %ggtt_write.exit.thread72 ], [ -14, %ggtt_write.exit ] ; 2 uses
  %i.bn = getelementptr i8, ptr %i.e, i64 296
  %i.bo = load ptr, ptr %i.bn, align 8
  call void @intel_gt_flush_ggtt_writes(ptr noundef %i.bo) #10
  %i.bp = load volatile ptr, ptr %i.p, align 8
  %.not.i69 = icmp eq ptr %i.bp, null
  br i1 %.not.i69, label %i915_gem_object_frontbuffer_flush.exit, label %bb.l, !prof !14

bb.l:                                             ; preds = %.thread
  call void @__i915_gem_object_frontbuffer_flush(ptr noundef nonnull %0, i32 noundef 0) #10
  br label %i915_gem_object_frontbuffer_flush.exit

i915_gem_object_frontbuffer_flush.exit:           ; preds = %.thread, %bb.l
  %i.bq = load ptr, ptr %i.a, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 3528
  %.val.i70 = load ptr, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %.val.i70, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = getelementptr i8, ptr %0, i64 688       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bu, ptr elementtype(i32) %i.bu) #11, !srcloc !41
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bw = load volatile i64, ptr %i.bv, align 8
  %.in.i.i = trunc i64 %i.bw to i1
  br i1 %.in.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %i915_gem_object_frontbuffer_flush.exit
  %i.bx = getelementptr i8, ptr %i.bt, i64 592
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cc = load i64, ptr %i.cb, align 8
  call void %i.by(ptr noundef %i.bt, i64 noundef %i.ca, i64 noundef %i.cc) #10, !inline_history !51
  %i.cd = getelementptr i8, ptr %i.bt, i64 384    ; 2 uses
  call void @mutex_lock(ptr noundef %i.cd) #10
  call void @drm_mm_remove_node(ptr noundef nonnull %2) #10
  call void @mutex_unlock(ptr noundef %i.cd) #10
  br label %i915_gem_gtt_cleanup.exit

bb.n:                                             ; preds = %i915_gem_object_frontbuffer_flush.exit
  %i.ce = getelementptr i8, ptr %i.l, i64 268     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ce, ptr elementtype(i32) %i.ce) #11, !srcloc !41
  br label %i915_gem_gtt_cleanup.exit

i915_gem_gtt_cleanup.exit:                        ; preds = %bb.n, %bb.m, %bb.e
  %.3 = phi i32 [ %i.o, %bb.e ], [ %.2, %bb.m ], [ %.2, %bb.n ]
  call void @intel_runtime_pm_put_unchecked(ptr noundef %i.f) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %i915_gem_gtt_cleanup.exit
  %.0 = phi i32 [ %.3, %i915_gem_gtt_cleanup.exit ], [ -14, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @i915_gem_shmem_pwrite(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %0, i64 248        ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.c, ptr noundef null) #10 ; 3 uses
  %i.e = icmp eq i32 %i.d, -114
  %spec.store.select.i.i = select i1 %i.e, i32 0, i32 %i.d
  switch i32 %i.d, label %bb.n [
    i32 -35, label %bb.b
    i32 0, label %bb.d
    i32 -114, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %0, i32 1, ptr nonnull elementtype(i32) %0) #11, !srcloc !16 ; 3 uses
  %.not.i.i.i.i.i.i19.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i.i19.i.i, label %.sink.split.i.i.i.i.i.i21.i.i, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.f, 1
  %i.h = or i32 %i.g, %i.f
  %.not10.i.i.i.i.i.i20.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not10.i.i.i.i.i.i20.i.i, label %i915_gem_object_lock_interruptible.exit.thread, label %.sink.split.i.i.i.i.i.i21.i.i, !prof !14

.sink.split.i.i.i.i.i.i21.i.i:                    ; preds = %bb.c, %bb.b
  %.sink.i.i.i.i.i.i22.i.i = phi i32 [ 2, %bb.b ], [ 1, %bb.c ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %.sink.i.i.i.i.i.i22.i.i) #10
  br label %i915_gem_object_lock_interruptible.exit.thread

i915_gem_object_lock_interruptible.exit.thread:   ; preds = %bb.c, %.sink.split.i.i.i.i.i.i21.i.i
  store ptr %0, ptr inttoptr (i64 40 to ptr), align 8
  br label %bb.n

bb.d:                                             ; preds = %bb.a, %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !32
  %i.i = getelementptr i8, ptr %0, i64 688        ; 7 uses
  %i.j = load volatile i32, ptr %i.i, align 8     ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !33

.lr.ph.i:                                         ; preds = %bb.d, %raw_atomic_try_cmpxchg.exit.i
  %.047.i = phi i32 [ %i.q, %raw_atomic_try_cmpxchg.exit.i ], [ %i.j, %bb.d ] ; 2 uses
  %i.l = add i32 %.047.i, 1
  %i.m = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, i32 range(i32 2, 1) %i.l, ptr elementtype(i32) %i.i, i32 %.047.i) #11, !srcloc !13 ; 2 uses
  %i.n = extractvalue { i8, i32 } %i.m, 0         ; 2 uses
  %i.o = icmp ult i8 %i.n, 2
  tail call void @llvm.assume(i1 %i.o)
  %i.p = trunc nuw i8 %i.n to i1
  br i1 %i.p, label %i915_gem_object_pin_pages.exit.thread, label %raw_atomic_try_cmpxchg.exit.i, !prof !14

raw_atomic_try_cmpxchg.exit.i:                    ; preds = %.lr.ph.i
  %i.q = extractvalue { i8, i32 } %i.m, 1         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !34

i915_gem_object_pin_pages.exit:                   ; preds = %raw_atomic_try_cmpxchg.exit.i, %bb.d
  %i.s = tail call i32 @__i915_gem_object_get_pages(ptr noundef nonnull %0) #10 ; 2 uses
  %.not59 = icmp eq i32 %i.s, 0
  br i1 %.not59, label %i915_gem_object_pin_pages.exit.thread, label %bb.l

i915_gem_object_pin_pages.exit.thread:            ; preds = %.lr.ph.i, %i915_gem_object_pin_pages.exit
  %i.t = call i32 @i915_gem_object_prepare_write(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not60 = icmp eq i32 %i.t, 0
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, ptr elementtype(i32) %i.i) #11
  br i1 %.not60, label %bb.e, label %bb.l

bb.e:                                             ; preds = %i915_gem_object_pin_pages.exit.thread
  %i.u = getelementptr i8, ptr %0, i64 480
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %i915_gem_object_unlock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.x(ptr noundef nonnull %0) #10, !inline_history !35
  br label %i915_gem_object_unlock.exit

i915_gem_object_unlock.exit:                      ; preds = %bb.e, %bb.f
  %i.y = load ptr, ptr %i.b, align 8
  call void @ww_mutex_unlock(ptr noundef %i.y) #10
  %i.z = load i32, ptr %i.a, align 4
  %i.aa = and i32 %i.z, 1
  %.not61 = icmp eq i32 %i.aa, 0
  %i.ab = load i16, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 360), align 8
  %i.ac = zext i16 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, 4294967295
  %i.ae = and i64 %i.ad, 4294967295
  %.045 = select i1 %.not61, i64 0, i64 %i.ae     ; 2 uses
  %i.af = getelementptr i8, ptr %1, i64 24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = getelementptr i8, ptr %1, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = and i64 %i.al, 4095                     ; 4 uses
  %i.an = lshr i64 %i.al, 12                      ; 2 uses
  %.not6277 = icmp eq i64 %i.aj, 0
  br i1 %.not6277, label %shmem_pwrite.exit._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %i915_gem_object_unlock.exit
  %i.ao = call ptr @__i915_gem_object_get_page(ptr noundef nonnull %0, i64 noundef %i.an) #10
  %i.ap = sub nuw nsw i64 4096, %i.am
  %i.aq = call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ap) ; 6 uses
  %i.ar = or i64 %i.aq, %i.am
  %i.as = and i64 %i.ar, %.045
  %.not.peel = icmp eq i64 %i.as, 0
  %i.at = load i32, ptr %i.a, align 4
  %i.au = and i32 %i.at, 2
  %i.av = icmp ne i32 %i.au, 0
  %i.aw = call i32 @__SCT__might_resched() #10    ; 0 uses
  %i.ax = load i64, ptr @vmemmap_base, align 8
  %i.ay = ptrtoint ptr %i.ao to i64
  %i.az = sub i64 %i.ay, %i.ax
  %i.ba = shl i64 %i.az, 6
  %i.bb = load i64, ptr @page_offset_base, align 8
  %i.bc = add i64 %i.ba, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  br i1 %.not.peel, label %._crit_edge.i.peel, label %bb.g

bb.g:                                             ; preds = %.lr.ph.preheader
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.am
  call void @drm_clflush_virt_range(ptr noundef %i.be, i64 noundef %i.aq) #10
  br label %._crit_edge.i.peel

._crit_edge.i.peel:                               ; preds = %bb.g, %.lr.ph.preheader
  %i.bf = getelementptr i8, ptr %i.bd, i64 %i.am  ; 2 uses
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !36
  %i.bg = call i64 @llvm.read_register.i64(metadata !0)
  %i.bh = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldinstr\0A771:\0A\09rep movsb\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call rep_movs_alternative\0A775:\0A.popsection\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -2147483648, 2147483648) %i.aq, ptr %i.bf, ptr %i.ah, i64 %i.bg) #11, !srcloc !37 ; 2 uses
  %i.bi = extractvalue { i64, ptr, ptr, i64 } %i.bh, 0
  %i.bj = extractvalue { i64, ptr, ptr, i64 } %i.bh, 3
  call void @llvm.write_register.i64(metadata !0, i64 %i.bj)
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !38
  %i.bk = and i64 %i.bi, 4294967295
  %i.bl = icmp eq i64 %i.bk, 0                    ; 2 uses
  %or.cond.i.peel = and i1 %i.av, %i.bl
  br i1 %or.cond.i.peel, label %shmem_pwrite.exit.thread.peel, label %shmem_pwrite.exit.peel

shmem_pwrite.exit.peel:                           ; preds = %._crit_edge.i.peel
  br i1 %i.bl, label %bb.h, label %shmem_pwrite.exit._crit_edge

shmem_pwrite.exit.thread.peel:                    ; preds = %._crit_edge.i.peel
  call void @drm_clflush_virt_range(ptr noundef %i.bf, i64 noundef %i.aq) #10
  br label %bb.h

bb.h:                                             ; preds = %shmem_pwrite.exit.thread.peel, %shmem_pwrite.exit.peel
  %i.bm = sub i64 %i.aj, %i.aq                    ; 2 uses
  %.not62.peel = icmp eq i64 %i.bm, 0
  br i1 %.not62.peel, label %shmem_pwrite.exit._crit_edge, label %.lr.ph.peel.next

.lr.ph.peel.next:                                 ; preds = %bb.h
  %i.bn = getelementptr i8, ptr %i.ah, i64 %i.aq
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.peel.next, %bb.j
  %.04681 = phi ptr [ %i.cj, %bb.j ], [ %i.bn, %.lr.ph.peel.next ] ; 2 uses
  %.04979.in = phi i64 [ %.04979, %bb.j ], [ %i.an, %.lr.ph.peel.next ]
  %.05078 = phi i64 [ %i.ci, %bb.j ], [ %i.bm, %.lr.ph.peel.next ] ; 2 uses
  %.04979 = add i64 %.04979.in, 1                 ; 2 uses
  %i.bo = call ptr @__i915_gem_object_get_page(ptr noundef nonnull %0, i64 noundef %.04979) #10
  %i.bp = call i64 @llvm.umin.i64(i64 %.05078, i64 4096) ; 6 uses
  %i.bq = and i64 %i.bp, %.045
  %.not = icmp eq i64 %i.bq, 0
  %i.br = load i32, ptr %i.a, align 4
  %i.bs = and i32 %i.br, 2
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = call i32 @__SCT__might_resched() #10    ; 0 uses
  %i.bv = load i64, ptr @vmemmap_base, align 8
  %i.bw = ptrtoint ptr %i.bo to i64
  %i.bx = sub i64 %i.bw, %i.bv
  %i.by = shl i64 %i.bx, 6
  %i.bz = load i64, ptr @page_offset_base, align 8
  %i.ca = add i64 %i.by, %i.bz
  %i.cb = inttoptr i64 %i.ca to ptr               ; 3 uses
  br i1 %.not, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  call void @drm_clflush_virt_range(ptr noundef %i.cb, i64 noundef %i.bp) #10
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph, %bb.i
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !36
  %i.cc = call i64 @llvm.read_register.i64(metadata !0)
  %i.cd = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldinstr\0A771:\0A\09rep movsb\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call rep_movs_alternative\0A775:\0A.popsection\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -2147483648, 2147483648) %i.bp, ptr %i.cb, ptr %.04681, i64 %i.cc) #11, !srcloc !37 ; 2 uses
  %i.ce = extractvalue { i64, ptr, ptr, i64 } %i.cd, 0
  %i.cf = extractvalue { i64, ptr, ptr, i64 } %i.cd, 3
  call void @llvm.write_register.i64(metadata !0, i64 %i.cf)
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !38
  %i.cg = and i64 %i.ce, 4294967295
  %i.ch = icmp eq i64 %i.cg, 0                    ; 2 uses
  %or.cond.i = and i1 %i.bt, %i.ch
  br i1 %or.cond.i, label %shmem_pwrite.exit.thread, label %shmem_pwrite.exit

shmem_pwrite.exit.thread:                         ; preds = %._crit_edge.i
  call void @drm_clflush_virt_range(ptr noundef %i.cb, i64 noundef %i.bp) #10
  br label %bb.j

shmem_pwrite.exit:                                ; preds = %._crit_edge.i
  br i1 %i.ch, label %bb.j, label %shmem_pwrite.exit._crit_edge

bb.j:                                             ; preds = %shmem_pwrite.exit, %shmem_pwrite.exit.thread
  %i.ci = sub i64 %.05078, %i.bp                  ; 2 uses
  %i.cj = getelementptr i8, ptr %.04681, i64 %i.bp
  %.not62 = icmp eq i64 %i.ci, 0
  br i1 %.not62, label %shmem_pwrite.exit._crit_edge, label %.lr.ph, !llvm.loop !59

shmem_pwrite.exit._crit_edge:                     ; preds = %bb.j, %shmem_pwrite.exit, %shmem_pwrite.exit.peel, %bb.h, %i915_gem_object_unlock.exit
  %.153 = phi i32 [ 0, %i915_gem_object_unlock.exit ], [ -14, %shmem_pwrite.exit.peel ], [ 0, %bb.h ], [ 0, %bb.j ], [ -14, %shmem_pwrite.exit ]
  %i.ck = getelementptr i8, ptr %0, i64 672
  %i.cl = load volatile ptr, ptr %i.ck, align 8
  %.not.i64 = icmp eq ptr %i.cl, null
  br i1 %.not.i64, label %i915_gem_object_frontbuffer_flush.exit, label %bb.k, !prof !14

bb.k:                                             ; preds = %shmem_pwrite.exit._crit_edge
  call void @__i915_gem_object_frontbuffer_flush(ptr noundef nonnull %0, i32 noundef 0) #10
  br label %i915_gem_object_frontbuffer_flush.exit

i915_gem_object_frontbuffer_flush.exit:           ; preds = %shmem_pwrite.exit._crit_edge, %bb.k
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.i, ptr elementtype(i32) %i.i) #11, !srcloc !41
  br label %bb.n

bb.l:                                             ; preds = %i915_gem_object_pin_pages.exit.thread, %i915_gem_object_pin_pages.exit
  %.2 = phi i32 [ %i.s, %i915_gem_object_pin_pages.exit ], [ %i.t, %i915_gem_object_pin_pages.exit.thread ]
  %i.cm = getelementptr i8, ptr %0, i64 480
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 80
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not.i65 = icmp eq ptr %i.cp, null
  br i1 %.not.i65, label %i915_gem_object_unlock.exit66, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void %i.cp(ptr noundef nonnull %0) #10, !inline_history !35
  br label %i915_gem_object_unlock.exit66

i915_gem_object_unlock.exit66:                    ; preds = %bb.l, %bb.m
  %i.cq = load ptr, ptr %i.b, align 8
  call void @ww_mutex_unlock(ptr noundef %i.cq) #10
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %i915_gem_object_lock_interruptible.exit.thread, %i915_gem_object_unlock.exit66, %i915_gem_object_frontbuffer_flush.exit
  %.0 = phi i32 [ %.153, %i915_gem_object_frontbuffer_flush.exit ], [ %.2, %i915_gem_object_unlock.exit66 ], [ %spec.store.select.i.i, %bb.a ], [ -35, %i915_gem_object_lock_interruptible.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2, 1) i32 @i915_gem_sw_finish_ioctl(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 4
  tail call void @__rcu_read_lock() #10
  %i.b = getelementptr i8, ptr %2, i64 80
  %i.c = zext i32 %i.a to i64
  %i.d = tail call ptr @idr_find(ptr noundef %i.b, i64 noundef %i.c) #10 ; 10 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %i915_gem_object_lookup.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load volatile i32, ptr %i.d, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.old1.not.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.f = add i32 %.0.i.i.i.i.i.i, 1
  %i.g = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.d, i32 %i.f, ptr nonnull elementtype(i32) %i.d, i32 %.0.i.i.i.i.i.i) #11, !srcloc !13 ; 2 uses
  %i.h = extractvalue { i8, i32 } %i.g, 0         ; 2 uses
  %i.i = icmp ult i8 %i.h, 2
  tail call void @llvm.assume(i1 %i.i)
  %i.j = trunc nuw i8 %i.h to i1
  br i1 %i.j, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, !prof !14

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i
  %i.k = extractvalue { i8, i32 } %i.g, 1         ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !15

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i:  ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.b
  %.2.i.i.i.i.i.i = phi i32 [ 0, %bb.b ], [ %.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ] ; 3 uses
  %i.m = add i32 %.2.i.i.i.i.i.i, 1
  %i.n = or i32 %i.m, %.2.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.n, -1
  br i1 %.not.i.i.i.i.i.i, label %kref_get_unless_zero.exit.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.d, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  %.not5.i.i = icmp eq i32 %.2.i.i.i.i.i.i, 0
  br i1 %.not5.i.i, label %i915_gem_object_lookup.exit.thread, label %i915_gem_object_lookup.exit

i915_gem_object_lookup.exit.thread:               ; preds = %bb.a, %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  br label %i915_gem_object_put.exit

i915_gem_object_lookup.exit:                      ; preds = %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  tail call void @i915_gem_object_flush_if_display(ptr noundef nonnull %i.d) #10
  %i.o = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.d, i32 -1, ptr nonnull elementtype(i32) %i.d) #11, !srcloc !16 ; 2 uses
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %i915_gem_object_lookup.exit
  %i.q = icmp slt i32 %i.o, 1
  br i1 %i.q, label %bb.e, label %i915_gem_object_put.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.d, i32 noundef 3) #10
  br label %i915_gem_object_put.exit

bb.f:                                             ; preds = %i915_gem_object_lookup.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %i.d) #10, !callees !19, !inline_history !20
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.f, %bb.e, %bb.d, %i915_gem_object_lookup.exit.thread
  %.0 = phi i32 [ -2, %i915_gem_object_lookup.exit.thread ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_object_flush_if_display(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i915_gem_runtime_suspend(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3528       ; 4 uses
  %.val42 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr i8, ptr %.val42, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 856      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not45 = icmp eq ptr %i.e, %i.d
  br i1 %.not45, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.pn.in46 = phi ptr [ %.pn, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %.pn = load ptr, ptr %.pn.in46, align 8         ; 2 uses
  %.0 = getelementptr i8, ptr %.pn.in46, i64 -616
  tail call void @__i915_gem_object_release_mmap_gtt(ptr noundef %.0) #10
  %.val41 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.f = getelementptr i8, ptr %.val41, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 856
  %.not = icmp eq ptr %.pn, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.val405157 = phi ptr [ %.val42, %bb.a ], [ %.val41, %.lr.ph ]
  %i.i = getelementptr i8, ptr %0, i64 3200       ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not4347 = icmp eq ptr %i.j, %i.i
  br i1 %.not4347, label %.preheader, label %.lr.ph50

.preheader.loopexit:                              ; preds = %.lr.ph50
  %.val4051.pre = load ptr, ptr %i.a, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge
  %.val4051 = phi ptr [ %.val4051.pre, %.preheader.loopexit ], [ %.val405157, %._crit_edge ] ; 2 uses
  %i.k = getelementptr i8, ptr %.val4051, i64 32
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 828
  %i.n = load i32, ptr %i.m, align 4
  %.not55 = icmp eq i32 %i.n, 0
  br i1 %.not55, label %._crit_edge54, label %.lr.ph53

.lr.ph50:                                         ; preds = %._crit_edge, %.lr.ph50
  %.pn35.in48 = phi ptr [ %.pn35, %.lr.ph50 ], [ %i.j, %._crit_edge ] ; 2 uses
  %.pn35 = load ptr, ptr %.pn35.in48, align 8     ; 2 uses
  %.1 = getelementptr i8, ptr %.pn35.in48, i64 -616
  tail call void @i915_gem_object_runtime_pm_release_mmap_offset(ptr noundef %.1) #10
  %.not43 = icmp eq ptr %.pn35, %i.i
  br i1 %.not43, label %.preheader.loopexit, label %.lr.ph50, !llvm.loop !61

.lr.ph53:                                         ; preds = %.preheader, %bb.c
  %.val4058 = phi ptr [ %.val40, %bb.c ], [ %.val4051, %.preheader ]
  %i.o = phi ptr [ %i.y, %bb.c ], [ %i.l, %.preheader ]
  %.03452 = phi i32 [ %i.w, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 832
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = sext i32 %.03452 to i64
  %i.s = getelementptr [216 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %.not37 = icmp eq ptr %i.u, null
  br i1 %.not37, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph53
  %i.v = getelementptr i8, ptr %i.s, i64 196
  store i8 1, ptr %i.v, align 4
  %.val40.pre = load ptr, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph53, %bb.b
  %.val40 = phi ptr [ %.val4058, %.lr.ph53 ], [ %.val40.pre, %bb.b ] ; 2 uses
  %i.w = add nuw i32 %.03452, 1                   ; 2 uses
  %i.x = getelementptr i8, ptr %.val40, i64 32
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 828
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp ult i32 %i.w, %i.aa
  br i1 %i.ab, label %.lr.ph53, label %._crit_edge54, !llvm.loop !62

._crit_edge54:                                    ; preds = %bb.c, %.preheader
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_gem_object_release_mmap_gtt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_object_runtime_pm_release_mmap_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @i915_gem_object_ggtt_pin_ww(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 3528
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = and i64 %5, 8
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not56 = icmp eq ptr %2, null
  br i1 %.not56, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %2, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 216
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr i8, ptr %i.e, i64 776
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
end_hunk_1
begin_hunk_2_@i915_gem_object_ggtt_pin_ww:bb.a
  %i.x = load volatile i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 1023
  %.not66 = icmp eq i32 %i.y, 0
  br i1 %.not66, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.u, i64 272
  %i.aa = load volatile i32, ptr %i.z, align 4
  %.not.i.i.not = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.not, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr i8, ptr %i.u, i64 252
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load i64, ptr %i.t, align 8
  %i.af = lshr i64 %i.ae, 1
  %i.ag = icmp samesign ult i64 %i.af, %i.ad
  br i1 %i.ag, label %.loopexit, label %i915_vma_is_map_and_fenceable.exit

i915_vma_is_map_and_fenceable.exit:               ; preds = %bb.l
  %i.ah = load volatile i64, ptr %i.w, align 8
  %.in.in.i = and i64 %i.ah, 16384
  %.in.i.not = icmp eq i64 %.in.in.i, 0
  br i1 %.in.i.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.k, %i915_vma_is_map_and_fenceable.exit, %bb.h
  %i.ai = getelementptr i8, ptr %i.u, i64 268
  %i.aj = load volatile i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 1023
  %.not67 = icmp eq i32 %i.ak, 0
  br i1 %.not67, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr i8, ptr %i.u, i64 272
  %i.am = load volatile i32, ptr %i.al, align 4
  %.not.i.i65.not = icmp eq i32 %i.am, 0
  br i1 %.not.i.i65.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = getelementptr i8, ptr %i.u, i64 184
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 488    ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.ap) #10
  %i.aq = getelementptr i8, ptr %i.u, i64 520     ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.at = icmp eq i64 %i.ar, %i.as
  br i1 %i.at, label %discard_ggtt_vma.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr i8, ptr %i.ao, i64 512
  tail call void @rb_erase(ptr noundef %i.aq, ptr noundef %i.au) #10
  store i64 %i.as, ptr %i.aq, align 8
  br label %discard_ggtt_vma.exit

discard_ggtt_vma.exit:                            ; preds = %bb.o, %bb.p
  tail call void @_raw_spin_unlock(ptr noundef %i.ap) #10
  %i.av = tail call ptr @i915_vma_instance(ptr noundef %0, ptr noundef %i.e, ptr noundef %2) #10 ; 3 uses
  %i.aw = icmp ugt ptr %i.av, inttoptr (i64 -4096 to ptr)
  br i1 %i.aw, label %.loopexit, label %bb.g

bb.q:                                             ; preds = %bb.n
  %i.ax = tail call i32 @i915_vma_unbind(ptr noundef %i.u) #10 ; 2 uses
  %.not59 = icmp eq i32 %i.ax, 0
  br i1 %.not59, label %.loopexit69, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = sext i32 %i.ax to i64
  %i.az = inttoptr i64 %i.ay to ptr
  br label %.loopexit

.loopexit69:                                      ; preds = %bb.g, %bb.q
  %i.ba = or i64 %5, 1024
  %i.bb = tail call i32 @i915_vma_pin_ww(ptr noundef %i.u, ptr noundef %1, i64 noundef %3, i64 noundef %4, i64 noundef %i.ba) #10 ; 2 uses
  %.not60 = icmp eq i32 %i.bb, 0
  br i1 %.not60, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit69
  %i.bc = sext i32 %i.bb to i64
  %i.bd = inttoptr i64 %i.bc to ptr
  br label %.loopexit

bb.t:                                             ; preds = %.loopexit69
  %i.be = getelementptr i8, ptr %i.u, i64 216
  %i.bf = load ptr, ptr %i.be, align 8
  %.not61 = icmp eq ptr %i.bf, null
  br i1 %.not61, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr i8, ptr %0, i64 680
  %.val64 = load i32, ptr %i.bg, align 8
  %i.bh = and i32 %.val64, 127
  %.not68 = icmp eq i32 %i.bh, 0
  br i1 %.not68, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr i8, ptr %i.e, i64 384     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.bi) #10
  tail call void @i915_vma_revoke_fence(ptr noundef %i.u) #10
  tail call void @mutex_unlock(ptr noundef %i.bi) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.bj = tail call i32 @i915_vma_wait_for_bind(ptr noundef %i.u) #10 ; 2 uses
  %.not62 = icmp eq i32 %i.bj, 0
  br i1 %.not62, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr i8, ptr %i.u, i64 268     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bk, ptr elementtype(i32) %i.bk) #11, !srcloc !41
  %i.bl = sext i32 %i.bj to i64
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %.loopexit

.loopexit:                                        ; preds = %discard_ggtt_vma.exit, %bb.j, %bb.i, %i915_vma_is_map_and_fenceable.exit, %bb.l, %bb.f, %bb.e, %bb.d, %bb.w, %bb.x, %bb.s, %bb.r
  %.0 = phi ptr [ %i.u, %bb.w ], [ inttoptr (i64 -7 to ptr), %bb.d ], [ %i.bd, %bb.s ], [ inttoptr (i64 -28 to ptr), %bb.e ], [ %i.bm, %bb.x ], [ %i.az, %bb.r ], [ %i.q, %bb.f ], [ inttoptr (i64 -28 to ptr), %i915_vma_is_map_and_fenceable.exit ], [ inttoptr (i64 -28 to ptr), %bb.i ], [ %i.av, %discard_ggtt_vma.exit ], [ inttoptr (i64 -28 to ptr), %bb.j ], [ inttoptr (i64 -28 to ptr), %bb.l ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_vma_instance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_vma_misplaced(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_vma_pin_ww(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vma_revoke_fence(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_vma_wait_for_bind(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @i915_gem_object_ggtt_pin(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.i915_gem_ww_ctx, align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !annotation !32
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %5, i1 noundef zeroext true) #10
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.b = getelementptr i8, ptr %0, i64 248
  %i.c = getelementptr i8, ptr %0, i64 544        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 552
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %__i915_gem_ww_fini.exit

__i915_gem_ww_fini.exit:                          ; preds = %__i915_gem_ww_fini.exit.backedge, %bb.a
  %.013 = phi ptr [ null, %bb.a ], [ %.013.be, %__i915_gem_ww_fini.exit.backedge ] ; 3 uses
  %.0 = phi i32 [ -35, %bb.a ], [ %.0.be, %__i915_gem_ww_fini.exit.backedge ] ; 2 uses
  switch i32 %.0, label %bb.n [
    i32 -35, label %bb.b
    i32 0, label %.loopexit
  ]

bb.b:                                             ; preds = %__i915_gem_ww_fini.exit
  %i.h = load i8, ptr %i.a, align 8, !range !63, !noundef !64
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.j, ptr noundef nonnull %5) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = call i32 @ww_mutex_lock(ptr noundef %i.j, ptr noundef nonnull %5) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.k, %bb.c ], [ %i.l, %bb.d ] ; 4 uses
  %i.m = icmp eq i32 %.0.i.i, 0
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #11, !srcloc !16 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.o = add i32 %i.n, 1
  %i.p = or i32 %i.o, %i.n
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !14

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i.i.i) #10
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %bb.g, %.sink.split.i.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %i.e, align 8              ; 2 uses
  store ptr %i.c, ptr %i.e, align 8
  store ptr %i.d, ptr %i.c, align 8
  store ptr %i.q, ptr %i.f, align 8
  store volatile ptr %i.c, ptr %i.q, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.r = icmp eq i32 %.0.i.i, -114
  %spec.store.select.i6.i = select i1 %i.r, i32 0, i32 %.0.i.i
  switch i32 %.0.i.i, label %.thread10.i [
    i32 -35, label %bb.i
    i32 -114, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.s = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 1, ptr elementtype(i32) %0) #11, !srcloc !16 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.j, !prof !17

bb.j:                                             ; preds = %bb.i
  %i.t = add i32 %i.s, 1
  %i.u = or i32 %i.t, %i.s
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.u, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread24, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !14

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.i ], [ 1, %bb.j ]
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #10
  br label %.thread24

.thread24:                                        ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.j
  store ptr %0, ptr %i.g, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.h, %i915_gem_object_get.exit.i.i
  %i.v = call ptr @i915_gem_object_ggtt_pin_ww(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #13 ; 5 uses
  %i.w = icmp ugt ptr %i.v, inttoptr (i64 -4096 to ptr)
  br i1 %i.w, label %bb.l, label %.thread10.i

bb.l:                                             ; preds = %bb.k
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  %i.z = icmp eq i32 %i.y, -35
  br i1 %i.z, label %bb.m, label %.thread10.i

bb.m:                                             ; preds = %.thread24, %bb.l
  %.11427 = phi ptr [ %.013, %.thread24 ], [ %i.v, %bb.l ] ; 3 uses
  %i.aa = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %5) #10 ; 2 uses
  switch i32 %i.aa, label %.thread10.i [
    i32 0, label %__i915_gem_ww_fini.exit.backedge
    i32 -35, label %__i915_gem_ww_fini.exit.backedge
  ]

__i915_gem_ww_fini.exit.backedge:                 ; preds = %bb.m, %bb.m, %.thread10.i
  %.013.be = phi ptr [ %.11427, %bb.m ], [ %.11423, %.thread10.i ], [ %.11427, %bb.m ]
  %.0.be = phi i32 [ -35, %bb.m ], [ %.013.i, %.thread10.i ], [ -35, %bb.m ]
  br label %__i915_gem_ww_fini.exit, !llvm.loop !65

.thread10.i:                                      ; preds = %bb.h, %bb.k, %bb.m, %bb.l
  %.11423 = phi ptr [ %.11427, %bb.m ], [ %i.v, %bb.l ], [ %i.v, %bb.k ], [ %.013, %bb.h ]
  %.013.i = phi i32 [ %i.aa, %bb.m ], [ %i.y, %bb.l ], [ 0, %bb.k ], [ %spec.store.select.i6.i, %bb.h ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %5) #10
  br label %__i915_gem_ww_fini.exit.backedge

bb.n:                                             ; preds = %__i915_gem_ww_fini.exit
  %i.ab = sext i32 %.0 to i64
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %.loopexit

.loopexit:                                        ; preds = %__i915_gem_ww_fini.exit, %bb.n
  %i.ad = phi ptr [ %i.ac, %bb.n ], [ %.013, %__i915_gem_ww_fini.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret ptr %i.ad
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -113, -114) i32 @i915_gem_madvise_ioctl(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %switch = icmp ult i32 %i.b, 2
  br i1 %switch, label %bb.b, label %i915_gem_object_put.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4
  tail call void @__rcu_read_lock() #10
  %i.d = getelementptr i8, ptr %2, i64 80
  %i.e = zext i32 %i.c to i64
  %i.f = tail call ptr @idr_find(ptr noundef %i.d, i64 noundef %i.e) #10 ; 30 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %i915_gem_object_lookup.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load volatile i32, ptr %i.f, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.old1.not.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.m, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %i.h = add i32 %.0.i.i.i.i.i.i, 1
  %i.i = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.f, i32 %i.h, ptr nonnull elementtype(i32) %i.f, i32 %.0.i.i.i.i.i.i) #11, !srcloc !13 ; 2 uses
  %i.j = extractvalue { i8, i32 } %i.i, 0         ; 2 uses
  %i.k = icmp ult i8 %i.j, 2
  tail call void @llvm.assume(i1 %i.k)
  %i.l = trunc nuw i8 %i.j to i1
  br i1 %i.l, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, !prof !14

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i
  %i.m = extractvalue { i8, i32 } %i.i, 1         ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !15

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i:  ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.c
  %.2.i.i.i.i.i.i = phi i32 [ 0, %bb.c ], [ %.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ] ; 3 uses
  %i.o = add i32 %.2.i.i.i.i.i.i, 1
  %i.p = or i32 %i.o, %.2.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i.i.i.i.i.i, label %kref_get_unless_zero.exit.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.f, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %bb.d, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  %.not5.i.i = icmp eq i32 %.2.i.i.i.i.i.i, 0
  br i1 %.not5.i.i, label %i915_gem_object_lookup.exit.thread, label %i915_gem_object_lookup.exit

i915_gem_object_lookup.exit.thread:               ; preds = %bb.b, %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  br label %i915_gem_object_put.exit

i915_gem_object_lookup.exit:                      ; preds = %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #10
  %i.q = getelementptr i8, ptr %i.f, i64 248      ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %i.r, ptr noundef null) #10 ; 3 uses
  %i.t = icmp eq i32 %i.s, -114
  %spec.store.select.i.i = select i1 %i.t, i32 0, i32 %i.s ; 3 uses
  switch i32 %i.s, label %bb.aa [
    i32 -35, label %bb.e
    i32 0, label %bb.g
    i32 -114, label %bb.g
  ]

bb.e:                                             ; preds = %i915_gem_object_lookup.exit
  %i.u = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.f, i32 1, ptr nonnull elementtype(i32) %i.f) #11, !srcloc !16 ; 3 uses
  %.not.i.i.i.i.i.i19.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i19.i.i, label %.sink.split.i.i.i.i.i.i21.i.i, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  %i.v = add i32 %i.u, 1
  %i.w = or i32 %i.v, %i.u
  %.not10.i.i.i.i.i.i20.i.i = icmp sgt i32 %i.w, -1
  br i1 %.not10.i.i.i.i.i.i20.i.i, label %i915_gem_object_lock_interruptible.exit.thread, label %.sink.split.i.i.i.i.i.i21.i.i, !prof !14

.sink.split.i.i.i.i.i.i21.i.i:                    ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i.i22.i.i = phi i32 [ 2, %bb.e ], [ 1, %bb.f ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.f, i32 noundef %.sink.i.i.i.i.i.i22.i.i) #10
  br label %i915_gem_object_lock_interruptible.exit.thread

i915_gem_object_lock_interruptible.exit.thread:   ; preds = %bb.f, %.sink.split.i.i.i.i.i.i21.i.i
  store ptr %i.f, ptr inttoptr (i64 40 to ptr), align 8
  br label %bb.aa

bb.g:                                             ; preds = %i915_gem_object_lookup.exit, %i915_gem_object_lookup.exit
  %i.x = getelementptr i8, ptr %i.f, i64 760      ; 3 uses
  %i.y = load volatile ptr, ptr %i.x, align 8     ; 2 uses
  %.not.i.i52 = icmp ne ptr %i.y, null
  %i.z = icmp ule ptr %i.y, inttoptr (i64 -4096 to ptr)
  %spec.select.i.not.i = and i1 %.not.i.i52, %i.z
  br i1 %spec.select.i.not.i, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %i.f, i64 680
  %.val = load i32, ptr %i.aa, align 8
  %i.ab = and i32 %.val, 127
  %.not61 = icmp eq i32 %i.ab, 0
  br i1 %.not61, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %0, i64 2560
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 1
  %.not46 = icmp eq i64 %i.ae, 0
  br i1 %.not46, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.f, i64 912
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = and i8 %i.ag, 3
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %i.f, i64 649     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.aj, i32 -9, ptr elementtype(i8) %i.aj) #11, !srcloc !66
  tail call void @i915_gem_object_make_shrinkable(ptr noundef nonnull %i.f) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @i915_gem_object_make_unshrinkable(ptr noundef nonnull %i.f) #10
  %i.am = getelementptr i8, ptr %i.f, i64 649     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.am, i32 8, ptr elementtype(i8) %i.am) #11, !srcloc !67
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.i, %bb.h, %bb.g
  %i.an = getelementptr i8, ptr %i.f, i64 912     ; 5 uses
  %i.ao = load i8, ptr %i.an, align 8             ; 2 uses
  %i.ap = and i8 %i.ao, 3
  %.not47 = icmp eq i8 %i.ap, 2
  br i1 %.not47, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = trunc i32 %i.aq to i8
  %i.as = and i8 %i.ar, 3
  %i.at = and i8 %i.ao, -4
  %i.au = or disjoint i8 %i.as, %i.at
  store i8 %i.au, ptr %i.an, align 8
  %i.av = getelementptr i8, ptr %i.f, i64 480
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not48 = icmp eq ptr %i.ay, null
  br i1 %.not48, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void %i.ay(ptr noundef nonnull %i.f) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.az = load volatile ptr, ptr %i.x, align 8    ; 2 uses
  %.not.i.i53 = icmp ne ptr %i.az, null
  %i.ba = icmp ule ptr %i.az, inttoptr (i64 -4096 to ptr)
  %spec.select.i.not.i54 = and i1 %.not.i.i53, %i.ba
  br i1 %spec.select.i.not.i54, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr i8, ptr %i.f, i64 480
  %.val51 = load ptr, ptr %i.bb, align 8
  %.val51.val = load i32, ptr %.val51, align 8
  %i.bc = and i32 %.val51.val, 4
  %.not62 = icmp eq i32 %i.bc, 0
  br i1 %.not62, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bd = getelementptr i8, ptr %0, i64 2840      ; 2 uses
  %i.be = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.bd) #10
  %i.bf = getelementptr i8, ptr %i.f, i64 896     ; 5 uses
  %i.bg = load volatile ptr, ptr %i.bf, align 8   ; 3 uses
  %.not63 = icmp eq ptr %i.bg, %i.bf
  br i1 %.not63, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = load i8, ptr %i.an, align 8
  %i.bi = and i8 %i.bh, 3
  %.not50 = icmp eq i8 %i.bi, 0
  %.0.v = select i1 %.not50, i64 2864, i64 2848
  %.0 = getelementptr i8, ptr %0, i64 %.0.v       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.f, i64 904     ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bg, i64 8
  store ptr %i.bk, ptr %i.bl, align 8
  store volatile ptr %i.bg, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %.0, i64 8        ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  store ptr %i.bf, ptr %i.bm, align 8
  store ptr %.0, ptr %i.bf, align 8
  store ptr %i.bn, ptr %i.bj, align 8
  store volatile ptr %i.bf, ptr %i.bn, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.bd, i64 noundef %i.be) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.bo = load i8, ptr %i.an, align 8
  %i.bp = and i8 %i.bo, 3                         ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 1
  br i1 %i.bq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.br = load volatile ptr, ptr %i.x, align 8    ; 2 uses
  %.not.i.i55 = icmp ne ptr %i.br, null
  %i.bs = icmp ule ptr %i.br, inttoptr (i64 -4096 to ptr)
  %spec.select.i.not.i56 = and i1 %.not.i.i55, %i.bs
  br i1 %spec.select.i.not.i56, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = tail call i32 @i915_gem_object_truncate(ptr noundef nonnull %i.f) #10 ; 0 uses
  %.pre = load i8, ptr %i.an, align 8
  %.pre64 = and i8 %.pre, 3
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.pre-phi = phi i8 [ %.pre64, %bb.x ], [ 1, %bb.w ], [ %i.bp, %bb.v ]
  %i.bu = icmp ne i8 %.pre-phi, 2
  %i.bv = zext i1 %i.bu to i32
  %i.bw = getelementptr i8, ptr %1, i64 8
  store i32 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr i8, ptr %i.f, i64 480
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 80
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %i915_gem_object_unlock.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void %i.ca(ptr noundef nonnull %i.f) #10, !inline_history !35
  br label %i915_gem_object_unlock.exit

i915_gem_object_unlock.exit:                      ; preds = %bb.y, %bb.z
  %i.cb = load ptr, ptr %i.q, align 8
  tail call void @ww_mutex_unlock(ptr noundef %i.cb) #10
  br label %bb.aa

bb.aa:                                            ; preds = %i915_gem_object_lookup.exit, %i915_gem_object_lock_interruptible.exit.thread, %i915_gem_object_unlock.exit
  %i.cc = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.f, i32 -1, ptr nonnull elementtype(i32) %i.f) #11, !srcloc !16 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = icmp slt i32 %i.cc, 1
  br i1 %i.ce, label %bb.ac, label %i915_gem_object_put.exit, !prof !17

bb.ac:                                            ; preds = %bb.ab
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.f, i32 noundef 3) #10
  br label %i915_gem_object_put.exit

bb.ad:                                            ; preds = %bb.aa
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  tail call void @drm_gem_object_free(ptr noundef nonnull %i.f) #10, !callees !19, !inline_history !20
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.ad, %bb.ac, %bb.ab, %i915_gem_object_lookup.exit.thread, %bb.a
  %.042 = phi i32 [ -22, %bb.a ], [ -2, %i915_gem_object_lookup.exit.thread ], [ %spec.store.select.i.i, %bb.ad ], [ %spec.store.select.i.i, %bb.ab ], [ %spec.store.select.i.i, %bb.ac ]
  ret i32 %.042
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_object_make_shrinkable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_object_make_unshrinkable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_truncate(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @i915_gem_drain_freed_objects(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2920       ; 2 uses
  %i.b = load volatile i32, ptr %i.a, align 4
  %.not3 = icmp eq i32 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

end_hunk_2
begin_hunk_3_@i915_gem_cleanup_early:bb.a
  %i.n = phi ptr [ %i.i, %bb.c ], [ %i.d, %__drm_to_dev.exit15.thread ]
  %i.o = phi ptr [ %i.l, %bb.c ], [ %i.e, %__drm_to_dev.exit15.thread ]
  %i.p = phi ptr [ %i.m, %bb.c ], [ null, %__drm_to_dev.exit15.thread ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i18 = icmp eq ptr %i.r, null
  br i1 %.not.i18, label %bb.d, label %dev_name.exit21

bb.d:                                             ; preds = %__drm_to_dev.exit17
  %.val.i20 = load ptr, ptr %i.p, align 8
  br label %dev_name.exit21

dev_name.exit21:                                  ; preds = %__drm_to_dev.exit17, %bb.d
  %.0.i19 = phi ptr [ %.val.i20, %bb.d ], [ %i.r, %__drm_to_dev.exit17 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %.0.i19, ptr noundef nonnull @.str.4) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !74
  br label %bb.e

bb.e:                                             ; preds = %dev_name.exit21, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @i915_gem_open(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.5) #10
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.e = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef 3520, i64 noundef 120) #15 ; 8 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %__drm_to_dev.exit
  %i.f = tail call ptr @i915_drm_client_alloc() #10 ; 6 uses
  %.not29 = icmp eq ptr %i.f, null
  br i1 %.not29, label %i915_drm_client_put.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %1, i64 136
  store ptr %i.e, ptr %i.g, align 8
  store ptr %0, ptr %i.e, align 8
  %i.h = getelementptr i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 112
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.e, i64 96
  store i32 -1, ptr %i.j, align 8
  %i.k = load volatile i64, ptr @jiffies, align 64
  %i.l = getelementptr i8, ptr %i.e, i64 104
  store i64 %i.k, ptr %i.l, align 8
  %i.m = tail call i32 @i915_gem_context_open(ptr noundef %0, ptr noundef %1) #10 ; 4 uses
  %.not30 = icmp eq i32 %i.m, 0
  br i1 %.not30, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.f, i32 -1, ptr nonnull elementtype(i32) %i.f) #11, !srcloc !16 ; 2 uses
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp slt i32 %i.n, 1
  br i1 %i.p, label %bb.g, label %i915_drm_client_put.exit, !prof !17

bb.g:                                             ; preds = %bb.f
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.f, i32 noundef 3) #10
  br label %i915_drm_client_put.exit

bb.h:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  tail call void @__i915_drm_client_free(ptr noundef nonnull %i.f) #10, !callees !19, !inline_history !20
  br label %i915_drm_client_put.exit

i915_drm_client_put.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %bb.c
  %.026 = phi i32 [ -12, %bb.c ], [ %i.m, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %bb.h ]
  tail call void @kfree(ptr noundef nonnull %i.e) #10
  br label %bb.i

bb.i:                                             ; preds = %i915_drm_client_put.exit, %__drm_to_dev.exit, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ %.026, %i915_drm_client_put.exit ], [ -12, %__drm_to_dev.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_drm_client_alloc() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_context_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vm_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_runtime_pm_put_unchecked(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_i915_gem_object_pread(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_prepare_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__i915_gem_object_get_page(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__i915_gem_object_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_clflush_virt_range(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @i915_gem_gtt_prepare(ptr noundef nonnull %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.i915_gem_ww_ctx, align 8    ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 3528
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !annotation !32
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %3, i1 noundef zeroext true) #10
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = getelementptr i8, ptr %0, i64 248
  %i.h = getelementptr i8, ptr %0, i64 544        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 552
  %i.l = getelementptr i8, ptr %0, i64 680
  %i.m = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 160        ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 384      ; 4 uses
  %i.p = getelementptr i8, ptr %i.e, i64 40
  %i.q = getelementptr i8, ptr %i.e, i64 776
  %i.r = getelementptr i8, ptr %0, i64 688        ; 3 uses
  %i.s = getelementptr i8, ptr %i.e, i64 592
  %i.t = getelementptr i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.thread64, %bb.a
  %i.v = load i8, ptr %i.f, align 8, !range !63, !noundef !64
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = load ptr, ptr %i.g, align 8              ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.x, ptr noundef nonnull %3) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = call i32 @ww_mutex_lock(ptr noundef %i.x, ptr noundef nonnull %3) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.y, %bb.c ], [ %i.z, %bb.d ] ; 2 uses
  switch i32 %.0.i.i, label %.thread69 [
    i32 0, label %bb.f
    i32 -35, label %bb.h
    i32 -114, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %0, i32 1, ptr nonnull elementtype(i32) %0) #11, !srcloc !16 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.ab = add i32 %i.aa, 1
  %i.ac = or i32 %i.ab, %i.aa
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i, !prof !14

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.f
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.f ], [ 1, %bb.g ]
  call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %.sink.i.i.i.i.i.i.i.i) #10
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.g
  %i.ad = load ptr, ptr %i.j, align 8             ; 2 uses
  store ptr %i.h, ptr %i.j, align 8
  store ptr %i.i, ptr %i.h, align 8
  store ptr %i.ad, ptr %i.k, align 8
  store volatile ptr %i.h, ptr %i.ad, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ae = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %0, i32 1, ptr nonnull elementtype(i32) %0) #11, !srcloc !16 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.af = add i32 %i.ae, 1
  %i.ag = or i32 %i.af, %i.ae
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.ag, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %i915_gem_object_lock.exit.thread, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !14

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.i, %bb.h
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.h ], [ 1, %bb.i ]
  call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #10
  br label %i915_gem_object_lock.exit.thread

i915_gem_object_lock.exit.thread:                 ; preds = %bb.i, %.sink.split.i.i.i.i.i.i21.i9.i
  store ptr %0, ptr %i.u, align 8
  br label %.thread64

bb.j:                                             ; preds = %i915_gem_object_get.exit.i.i, %bb.e
  %i.ah = call i32 @i915_gem_object_set_to_gtt_domain(ptr noundef nonnull %0, i1 noundef zeroext %2) #10 ; 2 uses
  %.not39 = icmp eq i32 %i.ah, 0
  br i1 %.not39, label %bb.k, label %insert_mappable_node.exit.thread

bb.k:                                             ; preds = %bb.j
  %.val44 = load i32, ptr %i.l, align 8
  %i.ai = and i32 %.val44, 127
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.l, label %.thread51

bb.l:                                             ; preds = %bb.k
  %i.aj = call ptr @i915_gem_object_ggtt_pin_ww(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 13) #13 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, inttoptr (i64 -35 to ptr)
  br i1 %i.ak, label %.thread64, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = icmp ugt ptr %i.aj, inttoptr (i64 -4096 to ptr)
  br i1 %i.al, label %.thread51, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr i8, ptr %i.aj, i64 8
  %.031.val = load i64, ptr %i.am, align 8
  %i.an = getelementptr i8, ptr %i.aj, i64 248
  %.031.val45 = load i32, ptr %i.an, align 8
  %i.ao = trunc i64 %.031.val to i32
  %i.ap = add i32 %.031.val45, %i.ao
  %i.aq = zext i32 %i.ap to i64
  store i64 %i.aq, ptr %i.m, align 8
  store i64 0, ptr %i.n, align 8
  br label %bb.o

.thread51:                                        ; preds = %bb.k, %bb.m
  %i.ar = call i32 @mutex_lock_interruptible(ptr noundef %i.o) #10 ; 2 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %insert_mappable_node.exit, label %insert_mappable_node.exit.thread

insert_mappable_node.exit:                        ; preds = %.thread51
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(168) %1, i8 0, i64 168, i1 false)
  %i.as = load i64, ptr %i.q, align 8
  %i.at = call i32 @drm_mm_insert_node_in_range(ptr noundef %i.p, ptr noundef %1, i64 noundef 4096, i64 noundef 0, i64 noundef -1, i64 noundef 0, i64 noundef %i.as, i32 noundef 1) #10 ; 2 uses
  call void @mutex_unlock(ptr noundef %i.o) #10
  %.not40 = icmp eq i32 %i.at, 0
  br i1 %.not40, label %bb.o, label %insert_mappable_node.exit.thread

bb.o:                                             ; preds = %insert_mappable_node.exit, %bb.n
  %.132 = phi ptr [ %i.aj, %bb.n ], [ null, %insert_mappable_node.exit ] ; 2 uses
  %i.au = load volatile i32, ptr %i.r, align 8    ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !33

.lr.ph.i:                                         ; preds = %bb.o, %raw_atomic_try_cmpxchg.exit.i
  %.047.i = phi i32 [ %i.bb, %raw_atomic_try_cmpxchg.exit.i ], [ %i.au, %bb.o ] ; 2 uses
  %i.aw = add i32 %.047.i, 1
  %i.ax = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.r, i32 range(i32 2, 1) %i.aw, ptr elementtype(i32) %i.r, i32 %.047.i) #11, !srcloc !13 ; 2 uses
  %i.ay = extractvalue { i8, i32 } %i.ax, 0       ; 2 uses
  %i.az = icmp ult i8 %i.ay, 2
  call void @llvm.assume(i1 %i.az)
  %i.ba = trunc nuw i8 %i.ay to i1
  br i1 %i.ba, label %.thread75, label %raw_atomic_try_cmpxchg.exit.i, !prof !14

raw_atomic_try_cmpxchg.exit.i:                    ; preds = %.lr.ph.i
  %i.bb = extractvalue { i8, i32 } %i.ax, 1       ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %i915_gem_object_pin_pages.exit, label %.lr.ph.i, !prof !34

i915_gem_object_pin_pages.exit:                   ; preds = %raw_atomic_try_cmpxchg.exit.i, %bb.o
  %i.bd = call i32 @__i915_gem_object_get_pages(ptr noundef nonnull %0) #10 ; 3 uses
  %.not41 = icmp eq i32 %i.bd, 0
  br i1 %.not41, label %.thread75, label %drm_mm_node_allocated.exit

drm_mm_node_allocated.exit:                       ; preds = %i915_gem_object_pin_pages.exit
  %i.be = load volatile i64, ptr %i.n, align 8
  %.in.i = trunc i64 %i.be to i1
  br i1 %.in.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %drm_mm_node_allocated.exit
  %i.bf = load ptr, ptr %i.s, align 8
  %i.bg = load i64, ptr %i.m, align 8
  %i.bh = load i64, ptr %i.t, align 8
  call void %i.bf(ptr noundef %i.e, i64 noundef %i.bg, i64 noundef %i.bh) #10
  call void @mutex_lock(ptr noundef %i.o) #10
  call void @drm_mm_remove_node(ptr noundef %1) #10
  call void @mutex_unlock(ptr noundef %i.o) #10
  br label %insert_mappable_node.exit.thread

bb.q:                                             ; preds = %drm_mm_node_allocated.exit
  %i.bi = getelementptr i8, ptr %.132, i64 268    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bi, ptr elementtype(i32) %i.bi) #11, !srcloc !41
  br label %insert_mappable_node.exit.thread

insert_mappable_node.exit.thread:                 ; preds = %.thread51, %bb.q, %bb.p, %insert_mappable_node.exit, %bb.j
  %.0 = phi i32 [ %i.bd, %bb.q ], [ %i.ah, %bb.j ], [ %i.bd, %bb.p ], [ %i.at, %insert_mappable_node.exit ], [ %i.ar, %.thread51 ] ; 2 uses
  %i.bj = icmp eq i32 %.0, -35
  br i1 %i.bj, label %.thread64, label %.thread69

.thread64:                                        ; preds = %bb.l, %i915_gem_object_lock.exit.thread, %insert_mappable_node.exit.thread
  %i.bk = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %3) #10 ; 2 uses
  %.not42 = icmp eq i32 %i.bk, 0
  br i1 %.not42, label %bb.b, label %.thread69

.thread75:                                        ; preds = %i915_gem_object_pin_pages.exit, %.lr.ph.i
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %3) #10
  br label %bb.r

.thread69:                                        ; preds = %bb.e, %insert_mappable_node.exit.thread, %.thread64
  %.173 = phi i32 [ %i.bk, %.thread64 ], [ %.0, %insert_mappable_node.exit.thread ], [ %.0.i.i, %bb.e ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %3) #10
  %i.bl = sext i32 %.173 to i64
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %bb.r

bb.r:                                             ; preds = %.thread75, %.thread69
  %i.bn = phi ptr [ %i.bm, %.thread69 ], [ %.132, %.thread75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret ptr %i.bn
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__i915_gem_object_get_dma_address(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_get_pat_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_set_to_gtt_domain(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_ww_ctx_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_ww_ctx_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_i915_gem_object_pwrite(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_runtime_pm_get_if_in_use(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_gt_flush_ggtt_writes(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_gem_object_frontbuffer_invalidate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @copy_to_nontemporal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_gem_object_frontbuffer_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_prepare_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_init__objects(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_drm_client_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nocallback nounwind }
attributes #8 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { nounwind }
attributes #12 = { nounwind memory(none) }
attributes #13 = { noredzone "no-builtin-wcslen" }
attributes #14 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #15 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{!"rsp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5 = !{i32 1, !"Code Model", i32 2}
!6 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!7 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!8 = !{i32 1, !"override-stack-alignment", i32 8}
!9 = !{i32 4, !"SkipRaxSetup", i32 1}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i64 2148695748, i64 2148695787, i64 2148695808, i64 2148695845, i64 2148695868, i64 2148695877}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = distinct !{!15, !12}
!16 = !{i64 2148689999, i64 2148690038, i64 2148690059, i64 2148690096, i64 2148690119, i64 2148690128}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{i64 2150401209}
!19 = !{ptr @__i915_drm_client_free, ptr @drm_gem_object_free, ptr @i915_vm_release}
!20 = distinct !{null}
!21 = distinct !{!21, !12}
!22 = !{i64 2153270100, i64 2153270112, i64 2153270126, i64 2153270177, i64 2153270216}
!23 = !{i64 2148397136, i64 2148397176, i64 2148397293, i64 2148397314, i64 2148397357, i64 2148397372, i64 2148397405, i64 2148397439, i64 2148397463}
!24 = !{i64 2161385187}
!25 = !{i64 2149278729}
!26 = !{i64 2151827713}
!27 = !{i64 2151831015}
!28 = !{i64 2151831437}
!29 = !{i64 2151847280}
!30 = !{i64 12567}
!31 = !{i64 12647}
!32 = !{!"auto-init"}
!33 = !{!"branch_weights", i32 1, i32 127}
!34 = !{!"branch_weights", i32 127, i32 255873}
!35 = distinct !{null}
!36 = !{i64 2152911431, i64 2152911460, i64 2152911466, i64 2152911482, i64 2152911498, i64 2152911525, i64 2152911625, i64 2152911685, i64 2152911799, i64 2152911847, i64 2152911895, i64 2152911959, i64 2152912016, i64 2152912068, i64 2152912194, i64 2152912413, i64 2152912280, i64 2152912311, i64 2152912317, i64 2152912333, i64 2152912349}
!37 = !{i64 5779732, i64 5779737, i64 2153270912, i64 2153270918, i64 2153270934, i64 2153270950, i64 2153270977, i64 2153271077, i64 2153271146, i64 2153271260, i64 2153271308, i64 2153271356, i64 2153271420, i64 2153271477, i64 2153271529, i64 2153271732, i64 2153271972, i64 2153271818, i64 2153271849, i64 2153271855, i64 2153271871, i64 2153271887, i64 5779834, i64 2153272441, i64 2153272536, i64 2153272559, i64 2153272592, i64 2153272623, i64 2153272662}
!38 = !{i64 2152909591, i64 2152909620, i64 2152909626, i64 2152909642, i64 2152909658, i64 2152909685, i64 2152909785, i64 2152909845, i64 2152909959, i64 2152910007, i64 2152910055, i64 2152910119, i64 2152910176, i64 2152910228, i64 2152910354, i64 2152910573, i64 2152910440, i64 2152910471, i64 2152910477, i64 2152910493, i64 2152910509}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.peeled.count", i32 1}
!41 = !{i64 2148680168, i64 2148680207, i64 2148680228, i64 2148680265, i64 2148680288, i64 2148680159}
!42 = !{i64 10093}
!43 = !{i64 2148295381}
!44 = !{i64 2160737929}
!45 = !{i64 2149729531}
!46 = !{i64 2153284997}
!47 = !{i64 2153285200}
!48 = !{i64 2160739081}
!49 = !{i64 2148301562}
!50 = !{i64 2160739263}
!51 = distinct !{null}
!52 = !{i64 2161352938}
!53 = !{i64 20861}
!54 = !{i64 20993}
!55 = !{i64 14732}
!56 = !{i64 2162091671}
!57 = !{i64 2153268237, i64 2153268249, i64 2153268263, i64 2153268304, i64 2153268343}
!58 = !{i64 5777975, i64 5777987}
!59 = distinct !{!59, !12, !40}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = distinct !{!65, !12}
!66 = !{i64 2149266797, i64 2149266836, i64 2149266857, i64 2149266894, i64 2149266917, i64 2149266788}
!67 = !{i64 2149265485, i64 2149265524, i64 2149265545, i64 2149265582, i64 2149265605, i64 2149265476}
!68 = distinct !{!68, !12}
!69 = distinct !{null}
!70 = distinct !{null}
!71 = !{i64 2162129107, i64 2162129134, i64 2162129515, i64 2162129548, i64 2162129583, i64 2162129599, i64 2162130440, i64 2162130498, i64 2162130547, i64 2162130357, i64 2162129658, i64 2162129690}
!72 = !{i64 2162127190}
!73 = !{i64 2162135204, i64 2162135231, i64 2162135612, i64 2162135645, i64 2162135680, i64 2162135696, i64 2162136537, i64 2162136595, i64 2162136644, i64 2162136454, i64 2162135755, i64 2162135787}
!74 = !{i64 2162133319}
end_hunk_3
