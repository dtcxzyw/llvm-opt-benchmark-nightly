inline.NumInlined: 94
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@shmem_pread:bb.a
; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shmem_pwrite(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.kiocb, align 8              ; 11 uses
  %3 = alloca %struct.iov_iter, align 8           ; 10 uses
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = tail call zeroext i1 @i915_gem_object_has_struct_page(ptr noundef %0) #9
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @i915_gem_object_pwrite_phys(ptr noundef %0, ptr noundef %1) #9
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 760
  %i.k = load volatile ptr, ptr %i.j, align 8     ; 2 uses
  %.not.i.i = icmp ne ptr %i.k, null
  %i.l = icmp ule ptr %i.k, inttoptr (i64 -4096 to ptr)
  %spec.select.i.not.i = and i1 %.not.i.i, %i.l
  br i1 %spec.select.i.not.i, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 912
  %i.n = load i8, ptr %i.m, align 8
  %i.o = and i8 %i.n, 3
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.p = icmp ugt i64 %i.g, 2147479552
  br i1 %i.p, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.e, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.t, null
  br i1 %.not23, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.e, i64 44
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #13, !srcloc !25
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 2376
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %i.x, i64 1092
  %.val14.i.i.i = load i32, ptr %i.aa, align 4    ; 3 uses
  %i.ab = icmp eq i32 %.val14.i.i.i, 5
  br i1 %i.ab, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = add i32 %.val14.i.i.i, -1
  %or.cond.i.i.i.i.i = icmp ult i32 %i.ac, 2
  %i.ad = icmp eq i32 %.val14.i.i.i, 6
  %.0.i.i.i.i.i = or i1 %i.ad, %or.cond.i.i.i.i.i
  %..i.i.i.i = select i1 %.0.i.i.i.i.i, i32 8192, i32 16384
  br label %.sink.split.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.z, i64 12
  %i.af = load i16, ptr %i.ae, align 4            ; 2 uses
  %i.ag = icmp ult i16 %i.af, 8192
  br i1 %i.ag, label %bb.k, label %init_sync_kiocb.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %i.x, i64 1092
  %.val.i.i.i = load i32, ptr %i.ah, align 4      ; 3 uses
  %i.ai = icmp eq i32 %.val.i.i.i, 5
  br i1 %i.ai, label %.sink.split.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = add i32 %.val.i.i.i, -1
  %or.cond.i.i18.i.i.i = icmp ult i32 %i.aj, 2
  %i.ak = icmp eq i32 %.val.i.i.i, 6
  %.0.i.i19.i.i.i = or i1 %i.ak, %or.cond.i.i18.i.i.i
  %..i20.i.i.i = select i1 %.0.i.i19.i.i.i, i32 8192, i32 16384
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %.0.i21.sink.i.i.i = phi i32 [ %..i.i.i.i, %bb.i ], [ 24576, %bb.h ], [ 24576, %bb.k ], [ %..i20.i.i.i, %bb.l ]
  %i.al = getelementptr i8, ptr %i.x, i64 108
  %.val15.i.i.i = load i32, ptr %i.al, align 4
  %i.am = add i32 %.val15.i.i.i, -100
  %i.an = sdiv i32 %i.am, 5                       ; 2 uses
  %or.cond5.i.i.i.i = icmp ugt i32 %i.an, 7
  %i.ao = or disjoint i32 %i.an, %.0.i21.sink.i.i.i
  %i.ap = trunc nuw i32 %i.ao to i16
  %.0.i.i.i.i = select i1 %or.cond5.i.i.i.i, i16 -8192, i16 %i.ap
  br label %init_sync_kiocb.exit

init_sync_kiocb.exit:                             ; preds = %bb.j, %.sink.split.i.i.i
  %.010.in.i.i.i = phi i16 [ %i.af, %bb.j ], [ %.0.i.i.i.i, %.sink.split.i.i.i ]
  store ptr %i.e, ptr %2, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  store i32 %i.v, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i16 %.010.in.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 38
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 2
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 39
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.ar = getelementptr i8, ptr %1, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  store i64 %i.as, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i8 0, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %.sroa.2.0..sroa_idx.i25, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 1, ptr %.sroa.3.0..sroa_idx.i, align 2
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.sroa.6.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.4.0..sroa_idx.i, i8 0, i64 13, i1 false)
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx.i26, align 8
  %.sroa.7.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.g, ptr %.sroa.7.0..sroa_idx.i27, align 8
  %.sroa.8.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 1, ptr %.sroa.8.0..sroa_idx.i28, align 8
  %i.at = call i64 %i.t(ptr noundef nonnull %2, ptr noundef nonnull %3) #9 ; 4 uses
  %i.au = icmp eq i64 %i.at, -529
  br i1 %i.au, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %init_sync_kiocb.exit
  call void asm sideeffect "969: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 969b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 969) #8, !srcloc !26
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str, i32 450, i32 0, i64 16) #8, !srcloc !27
  unreachable

bb.n:                                             ; preds = %init_sync_kiocb.exit
  %i.av = icmp slt i64 %i.at, 0
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = trunc i64 %i.at to i32
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.not24 = icmp eq i64 %i.at, %i.g
  %. = select i1 %.not24, i32 0, i32 -5
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.f, %bb.e, %bb.d, %bb.c, %bb.o, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ -19, %bb.c ], [ -14, %bb.d ], [ %i.aw, %bb.o ], [ %., %bb.p ], [ -22, %bb.f ], [ -27, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @shmem_release(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call zeroext i1 @i915_gem_object_has_struct_page(ptr noundef %0) #9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @i915_gem_object_release_memory_region(ptr noundef %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @fput(ptr noundef %i.c) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @i915_gem_object_create_shmem(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2928
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @i915_gem_object_create_region(ptr noundef %i.b, i64 noundef %1, i64 noundef 0, i32 noundef 0) #9
  ret ptr %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_create_region(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @i915_gem_object_create_shmem_from_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 0, ptr %i.a, align 8
  %i.b = add i64 %2, 4095
  %3 = and i64 %i.b, -4096
  %i.c = getelementptr i8, ptr %0, i64 2928
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @i915_gem_object_create_region(ptr noundef %i.d, i64 noundef %3, i64 noundef 0, i32 noundef 0) #9 ; 8 uses
  %i.f = icmp ugt ptr %i.e, inttoptr (i64 -4096 to ptr)
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call i64 @kernel_write(ptr noundef %i.h, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a) #9 ; 3 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.i, %2
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015 = phi i64 [ %i.i, %bb.b ], [ -5, %bb.c ]
  %i.k = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, i32 -1, ptr elementtype(i32) %i.e) #8, !srcloc !28 ; 2 uses
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp slt i32 %i.k, 1
  br i1 %i.m, label %bb.f, label %i915_gem_object_put.exit, !prof !15

bb.f:                                             ; preds = %bb.e
  call void @refcount_warn_saturate(ptr noundef %i.e, i32 noundef 3) #9
  br label %i915_gem_object_put.exit

bb.g:                                             ; preds = %bb.d
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !29
  call void @drm_gem_object_free(ptr noundef %i.e) #9
  br label %i915_gem_object_put.exit

i915_gem_object_put.exit:                         ; preds = %bb.e, %bb.f, %bb.g
  %i.n = inttoptr i64 %.015 to ptr
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.a, %i915_gem_object_put.exit
  %.0 = phi ptr [ %i.e, %bb.a ], [ %i.n, %i915_gem_object_put.exit ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @kernel_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @i915_gem_shmem_setup(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i64, ptr @_totalram_pages, align 8
  %i.b = shl i64 %i.a, 12
  %i.c = tail call ptr @intel_memory_region_create(ptr noundef %0, i64 noundef 0, i64 noundef %i.b, i64 noundef 4096, i64 noundef 0, i64 noundef 0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr noundef nonnull @shmem_region_ops) #9
  ret ptr %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_memory_region_create(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local zeroext i1 @i915_gem_object_is_shmem(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 480
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, @i915_gem_shmem_ops
  ret i1 %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @check_move_unevictable_folios(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__folio_batch_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_cpu_write_needs_clflush(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_gtt_prepare_pages(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_object_do_bit_17_swizzle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_can_bypass_llc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__i915_gem_object_set_pages(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_gem_object_has_struct_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_object_put_pages_phys(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @shmem_truncate_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_truncate(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_pread_phys(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_pwrite_phys(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_object_release_memory_region(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @init_shmem(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 1656     ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp ult i8 %i.c, 11
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @i915_vtd_active(ptr noundef %i.a) #9
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.g, %bb.d ], [ null, %bb.c ]
  %i.i = load i8, ptr %i.b, align 8
  %i.j = icmp ugt i8 %i.i, 10
  %i.k = select i1 %i.j, ptr @.str.10, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %i.h, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.k) #12
  br label %bb.e

bb.e:                                             ; preds = %__drm_to_dev.exit, %bb.b
  tail call void (ptr, ptr, ...) @intel_memory_region_set_name(ptr noundef %0, ptr noundef nonnull @.str.12) #9
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @shmem_object_init(ptr noundef %0, ptr noundef %1, i64 %2, i64 noundef %3, i64 %4, i32 noundef %5) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  tail call void @drm_gem_private_object_init(ptr noundef %i.a, ptr noundef %1, i64 noundef %3) #9
  %i.b = icmp slt i64 %3, 0
  br i1 %i.b, label %__create_shmem.exit.thread32, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @shmem_file_setup(ptr noundef nonnull @.str.13, i64 noundef %3, i64 2097152) #9 ; 5 uses
  %i.d = icmp ugt ptr %i.c, inttoptr (i64 -4096 to ptr)
  br i1 %i.d, label %__create_shmem.exit, label %__create_shmem.exit.thread

__create_shmem.exit.thread:                       ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.c, i64 40       ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = or i32 %i.f, 32768
  store i32 %i.g, ptr %i.e, align 8
  %i.h = getelementptr i8, ptr %1, i64 16
  store ptr %i.c, ptr %i.h, align 8
  br label %bb.c

__create_shmem.exit:                              ; preds = %bb.b
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %__create_shmem.exit._crit_edge, label %__create_shmem.exit.thread32

__create_shmem.exit._crit_edge:                   ; preds = %__create_shmem.exit
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.c

bb.c:                                             ; preds = %__create_shmem.exit._crit_edge, %__create_shmem.exit.thread
  %i.k = phi ptr [ %.pre, %__create_shmem.exit._crit_edge ], [ %i.c, %__create_shmem.exit.thread ]
end_hunk_0
