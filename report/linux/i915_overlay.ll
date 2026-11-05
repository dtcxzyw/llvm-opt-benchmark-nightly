Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i915_overlay?download=true
inline.NumInlined: 138
inline.NumDeleted: 56
begin_hunk_0_@i915_overlay_pin_fb:bb.a
  %i.ad = getelementptr i8, ptr %.11627, i64 248
  %.116.val22 = load i32, ptr %i.ad, align 8
  %i.ae = trunc i64 %.116.val to i32
  %i.af = add i32 %.116.val22, %i.ae
  store i32 %i.af, ptr %2, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.017 = phi ptr [ %i.ab, %bb.l ], [ %.11627, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret ptr %.017
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_overlay_unpin_fb(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 268        ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.a, ptr elementtype(i32) %i.a) #9, !srcloc !16
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @i915_overlay_obj_lookup(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #8
  %i.a = getelementptr i8, ptr %1, i64 80
  %i.b = zext i32 %2 to i64
  %i.c = tail call ptr @idr_find(ptr noundef %i.a, i64 noundef %i.b) #8 ; 11 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %i915_gem_object_lookup.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load volatile i32, ptr %i.c, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.old1.not.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = add i32 %.0.i.i.i.i.i.i, 1
  %i.f = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.c, i32 %i.e, ptr nonnull elementtype(i32) %i.c, i32 %.0.i.i.i.i.i.i) #9, !srcloc !31 ; 2 uses
  %i.g = extractvalue { i8, i32 } %i.f, 0         ; 2 uses
  %i.h = icmp ult i8 %i.g, 2
  tail call void @llvm.assume(i1 %i.h)
  %i.i = trunc nuw i8 %i.g to i1
  br i1 %i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, !prof !11

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i
  %i.j = extractvalue { i8, i32 } %i.f, 1         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !30

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i:  ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.b
  %.2.i.i.i.i.i.i = phi i32 [ 0, %bb.b ], [ %.0.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i ] ; 3 uses
  %i.l = add i32 %.2.i.i.i.i.i.i, 1
  %i.m = or i32 %i.l, %.2.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp sgt i32 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %kref_get_unless_zero.exit.i.i, label %bb.c, !prof !11

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.c, i32 noundef 0) #8
  br label %kref_get_unless_zero.exit.i.i

kref_get_unless_zero.exit.i.i:                    ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i
  %.not5.i.i = icmp eq i32 %.2.i.i.i.i.i.i, 0
  br i1 %.not5.i.i, label %i915_gem_object_lookup.exit.thread, label %i915_gem_object_lookup.exit

i915_gem_object_lookup.exit.thread:               ; preds = %bb.a, %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #8
  br label %i915_gem_object_put.exit

i915_gem_object_lookup.exit:                      ; preds = %kref_get_unless_zero.exit.i.i
  tail call void @__rcu_read_unlock() #8
  %i.n = getelementptr i8, ptr %i.c, i64 680
  %.val = load i32, ptr %i.n, align 8
  %i.o = and i32 %.val, 127
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %i915_gem_object_put.exit, label %bb.d

bb.d:                                             ; preds = %i915_gem_object_lookup.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ null, %bb.d ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.r, i32 noundef 1, ptr noundef @.str.6) #8
  %i.s = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.c, i32 -1, ptr nonnull elementtype(i32) %i.c) #9, !srcloc !15 ; 2 uses
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.u = icmp slt i32 %i.s, 1
  br i1 %i.u, label %bb.g, label %i915_gem_object_put.exit, !prof !13

bb.g:                                             ; preds = %bb.f
  tail call void @refcount_warn_saturate(ptr noundef nonnull %i.c, i32 noundef 3) #8
  br label %i915_gem_object_put.exit

bb.h:                                             ; preds = %__drm_to_dev.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !17
  tail call void @drm_gem_object_free(ptr noundef nonnull %i.c) #8
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.h, %bb.g, %bb.f, %i915_gem_object_lookup.exit.thread, %i915_gem_object_lookup.exit
  %.0 = phi ptr [ inttoptr (i64 -22 to ptr), %bb.h ], [ %i.c, %i915_gem_object_lookup.exit ], [ inttoptr (i64 -2 to ptr), %i915_gem_object_lookup.exit.thread ], [ inttoptr (i64 -22 to ptr), %bb.f ], [ inttoptr (i64 -22 to ptr), %bb.g ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @i915_overlay_setup(ptr noundef %0, i1 noundef zeroext %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3528
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 4024
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 176      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not27 = icmp eq ptr %i.e, null
  br i1 %.not27, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 64), align 16
  %i.g = tail call noalias noundef align 8 dereferenceable_or_null(224) ptr @__kmalloc_cache_noprof(ptr noundef %i.f, i32 noundef 3520, i64 noundef 224) #11 ; 11 uses
  %.not28 = icmp eq ptr %i.g, null
  br i1 %.not28, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.g, align 8
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = getelementptr i8, ptr %i.g, i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.g, i64 64
  tail call void @__i915_active_init(ptr noundef %i.j, ptr noundef null, ptr noundef @i915_overlay_last_flip_retire, i64 noundef 0, ptr noundef @i915_overlay_setup.__mkey, ptr noundef @i915_overlay_setup.__wkey) #8
  %i.k = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.l = tail call ptr @i915_gem_object_create_stolen(ptr noundef %i.k, i64 noundef 4096) #8 ; 2 uses
  %i.m = icmp ugt ptr %i.l, inttoptr (i64 -4096 to ptr)
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @i915_gem_object_create_internal(ptr noundef %i.k, i64 noundef 4096) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.023.i = phi ptr [ %i.n, %bb.e ], [ %i.l, %bb.d ] ; 9 uses
  %i.o = icmp ugt ptr %.023.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.o, label %get_registers.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @i915_gem_object_ggtt_pin(ptr noundef %.023.i, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 8) #8 ; 6 uses
  %i.q = icmp ugt ptr %i.p, inttoptr (i64 -4096 to ptr)
  br i1 %i.q, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %.023.i, i64 760
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %i.p, i64 8
  %.val.i = load i64, ptr %i.x, align 8
  %i.y = getelementptr i8, ptr %i.p, i64 248
  %.val25.i = load i32, ptr %i.y, align 8
  %i.z = trunc i64 %.val.i to i32
  %i.aa = add i32 %.val25.i, %i.z
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i = phi i32 [ %i.w, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = getelementptr i8, ptr %i.g, i64 56
  store i32 %.sink.i, ptr %i.ab, align 8
  %i.ac = tail call ptr @i915_vma_pin_iomap(ptr noundef %i.p) #8
  %i.ad = getelementptr i8, ptr %i.g, i64 48      ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr i8, ptr %i.p, i64 268     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ae, ptr elementtype(i32) %i.ae) #9, !srcloc !16
  %i.af = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.ag = icmp ugt ptr %i.af, inttoptr (i64 -4096 to ptr)
  br i1 %i.ag, label %bb.l, label %get_registers.exit.thread.a

get_registers.exit.thread.a:                      ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %i.g, i64 40
  store ptr %.023.i, ptr %i.ah, align 8
  br label %bb.q

bb.l:                                             ; preds = %bb.k, %bb.g
  %.0.in.in.i = phi ptr [ %i.p, %bb.g ], [ %i.af, %bb.k ] ; 3 uses
  %i.ai = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.023.i, i32 -1, ptr elementtype(i32) %.023.i) #9, !srcloc !15 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1
  br i1 %i.aj, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = icmp slt i32 %i.ai, 1
  br i1 %i.ak, label %bb.n, label %get_registers.exit, !prof !13

bb.n:                                             ; preds = %bb.m
  tail call void @refcount_warn_saturate(ptr noundef %.023.i, i32 noundef 3) #8
  br label %get_registers.exit

bb.o:                                             ; preds = %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !17
  tail call void @drm_gem_object_free(ptr noundef %.023.i) #8
  br label %get_registers.exit

get_registers.exit:                               ; preds = %bb.f, %bb.m, %bb.n, %bb.o
  %.024.i.in.in = phi ptr [ %.0.in.in.i, %bb.n ], [ %.0.in.in.i, %bb.o ], [ %.0.in.in.i, %bb.m ], [ %.023.i, %bb.f ]
  %.024.i.in = ptrtoint ptr %.024.i.in.in to i64  ; 2 uses
  %i.al = and i64 %.024.i.in, 4294967295
  %.not29 = icmp eq i64 %i.al, 0
  br i1 %.not29, label %get_registers.exit._crit_edge, label %bb.p

get_registers.exit._crit_edge:                    ; preds = %get_registers.exit
  %.phi.trans.insert = getelementptr i8, ptr %i.g, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.q

bb.p:                                             ; preds = %get_registers.exit
  tail call void @kfree(ptr noundef nonnull %i.g) #8
  %sext = shl i64 %.024.i.in, 32
  %i.am = ashr exact i64 %sext, 32
  %i.an = inttoptr i64 %i.am to ptr
  br label %bb.r

bb.q:                                             ; preds = %get_registers.exit._crit_edge, %get_registers.exit.thread.a
  %i.ao = phi ptr [ %.pre, %get_registers.exit._crit_edge ], [ %i.af, %get_registers.exit.thread.a ]
  %i.ap = getelementptr i8, ptr %0, i64 3608
  store ptr %i.g, ptr %i.ap, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.q, %bb.p
  %.0 = phi ptr [ %i.an, %bb.p ], [ %i.ao, %bb.q ], [ inttoptr (i64 -2 to ptr), %bb.a ], [ inttoptr (i64 -2 to ptr), %bb.b ], [ inttoptr (i64 -12 to ptr), %bb.c ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_overlay_cleanup(ptr nofree noundef captures(address_is_null) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3608       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 60
  %i.d = load i32, ptr %i.c, align 4
  %.not28 = icmp eq i32 %i.d, 0
  br i1 %.not28, label %bb.f, label %bb.c, !prof !11

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %__drm_to_dev.exit21.thread, label %bb.d

__drm_to_dev.exit21.thread:                       ; preds = %bb.c
  %i.e = tail call ptr @dev_driver_string(ptr noundef null) #8 ; 0 uses
  %i.f = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 501, i32 2321, i64 16) #9, !srcloc !33
  %i.g = tail call ptr @dev_driver_string(ptr noundef null) #8
  br label %__drm_to_dev.exit23

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @dev_driver_string(ptr noundef %i.i) #8 ; 0 uses
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 501, i32 2321, i64 16) #9, !srcloc !33
  %i.l = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call ptr @dev_driver_string(ptr noundef %i.m) #8
  %i.o = load ptr, ptr %i.l, align 8
  br label %__drm_to_dev.exit23

__drm_to_dev.exit23:                              ; preds = %__drm_to_dev.exit21.thread, %bb.d
  %i.p = phi ptr [ %i.k, %bb.d ], [ %i.f, %__drm_to_dev.exit21.thread ]
  %i.q = phi ptr [ %i.n, %bb.d ], [ %i.g, %__drm_to_dev.exit21.thread ]
  %i.r = phi ptr [ %i.o, %bb.d ], [ null, %__drm_to_dev.exit21.thread ] ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i24 = icmp eq ptr %i.t, null
  br i1 %.not.i24, label %bb.e, label %dev_name.exit27

bb.e:                                             ; preds = %__drm_to_dev.exit23
  %.val.i26 = load ptr, ptr %i.r, align 8
  br label %dev_name.exit27

dev_name.exit27:                                  ; preds = %__drm_to_dev.exit23, %bb.e
  %.0.i25 = phi ptr [ %.val.i26, %bb.e ], [ %i.t, %__drm_to_dev.exit23 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %.0.i25, ptr noundef @.str.1) #8
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !34
  br label %bb.f

bb.f:                                             ; preds = %dev_name.exit27, %bb.b
  %i.u = getelementptr i8, ptr %i.b, i64 40
  %i.v = load ptr, ptr %i.u, align 8              ; 4 uses
  %i.w = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.v, i32 -1, ptr elementtype(i32) %i.v) #9, !srcloc !15 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp slt i32 %i.w, 1
  br i1 %i.y, label %bb.h, label %i915_gem_object_put.exit, !prof !13

bb.h:                                             ; preds = %bb.g
  tail call void @refcount_warn_saturate(ptr noundef %i.v, i32 noundef 3) #8
  br label %i915_gem_object_put.exit

bb.i:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !17
  tail call void @drm_gem_object_free(ptr noundef %i.v) #8
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.g, %bb.h, %bb.i
  %i.z = getelementptr i8, ptr %i.b, i64 64
  tail call void @i915_active_fini(ptr noundef %i.z) #8
  tail call void @kfree(ptr noundef nonnull %i.b) #8
  store ptr null, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %i915_gem_object_put.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_ring_begin(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_request_add(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_request_create(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_active_add_request(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_bus_read_config_byte(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @pci_bus_write_config_byte(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__i915_active_wait(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @i915_overlay_flip_prepare(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %__drm_to_dev.exit34.thread, label %bb.c

__drm_to_dev.exit34.thread:                       ; preds = %bb.b
  %i.d = tail call ptr @dev_driver_string(ptr noundef null) #8 ; 0 uses
  %i.e = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 143, i32 2321, i64 16) #9, !srcloc !35
  %i.f = tail call ptr @dev_driver_string(ptr noundef null) #8
  br label %__drm_to_dev.exit36

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @dev_driver_string(ptr noundef %i.h) #8 ; 0 uses
  %i.j = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 143, i32 2321, i64 16) #9, !srcloc !35
  %i.k = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @dev_driver_string(ptr noundef %i.l) #8
  %i.n = load ptr, ptr %i.k, align 8
  br label %__drm_to_dev.exit36

__drm_to_dev.exit36:                              ; preds = %__drm_to_dev.exit34.thread, %bb.c
  %i.o = phi ptr [ %i.j, %bb.c ], [ %i.e, %__drm_to_dev.exit34.thread ]
  %i.p = phi ptr [ %i.m, %bb.c ], [ %i.f, %__drm_to_dev.exit34.thread ]
  %i.q = phi ptr [ %i.n, %bb.c ], [ null, %__drm_to_dev.exit34.thread ] ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i37 = icmp eq ptr %i.s, null
  br i1 %.not.i37, label %bb.d, label %dev_name.exit40

bb.d:                                             ; preds = %__drm_to_dev.exit36
  %.val.i39 = load ptr, ptr %i.q, align 8
  br label %dev_name.exit40

dev_name.exit40:                                  ; preds = %__drm_to_dev.exit36, %bb.d
  %.0.i38 = phi ptr [ %.val.i39, %bb.d ], [ %i.s, %__drm_to_dev.exit36 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.o, ptr noundef %i.p, ptr noundef %.0.i38, ptr noundef @.str.4) #8
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !36
  br label %bb.e

bb.e:                                             ; preds = %dev_name.exit40, %bb.a
  %.not28 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %1, i64 184
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call ptr @i915_gem_object_frontbuffer_get(ptr noundef %i.u) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi ptr [ %i.v, %bb.f ], [ null, %bb.e ]  ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %0, i64 60
  %i.z = load i32, ptr %i.y, align 4
  tail call void @intel_frontbuffer_track(ptr noundef %i.x, ptr noundef %.0, i32 noundef %i.z) #8
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
end_hunk_0
