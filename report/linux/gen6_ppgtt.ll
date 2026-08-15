inline.NumInlined: 98
inline.NumDeleted: 48
begin_hunk_0_@gen6_ppgtt_clear_range:bb.a
  %i.aj = getelementptr [8 x i8], ptr %.val, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = tail call i32 @llvm.umin.i32(i32 %.02831, i32 1024) ; 4 uses
  %i.am = sub i32 %.02831, %i.al                  ; 2 uses
  %i.an = getelementptr i8, ptr %i.ak, i64 8      ; 2 uses
  %i.ao = sub nsw i32 0, %i.al
  %i.ap = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.an, i32 range(i32 1, 0) %i.ao, ptr elementtype(i32) %i.an) #8, !srcloc !32
  %.not29 = icmp eq i32 %i.ap, %i.al
  br i1 %.not29, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.peel.next
  store i8 1, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.peel.next
  %i.aq = load ptr, ptr %i.ak, align 8
  %i.ar = tail call ptr @__px_vaddr(ptr noundef %i.aq) #7
  %i.as = zext nneg i32 %i.al to i64
  %i.at = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.e, ptr %i.ar, i64 range(i64 1, 4294967296) %i.as) #8, !srcloc !33 ; 0 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gen6_ppgtt_insert_entries(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 248
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 12
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = lshr i32 %i.f, 10
  %i.h = and i32 %i.f, 1023
  %i.i = getelementptr i8, ptr %0, i64 568
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i64 %i.j(i64 noundef 0, i32 noundef %2, i32 noundef %3) #7
  %i.l = getelementptr i8, ptr %1, i64 192
  %.val28 = load ptr, ptr %i.l, align 8
  %.val28.val = load ptr, ptr %.val28, align 8    ; 3 uses
  %i.m = getelementptr i8, ptr %.val28.val, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !36 ; 2 uses
  %i.o = getelementptr i8, ptr %.val28.val, i64 24
  %i.p = load i32, ptr %i.o, align 8, !noalias !36
  %i.q = zext i32 %i.p to i64
  %i.r = add i64 %i.n, %i.q
  %i.s = getelementptr i8, ptr %i.b, i64 32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.i
  %.sink39 = phi i32 [ %i.ax, %bb.i ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %bb.i ], [ %.val28.val, %bb.a ]
  %.sroa.7.0.ph = phi i64 [ %.sroa.7.1, %bb.i ], [ %i.n, %bb.a ]
  %.sroa.12.0.ph = phi i64 [ %.sroa.12.1, %bb.i ], [ %i.r, %bb.a ]
  %.021.ph = phi i32 [ 0, %bb.i ], [ %i.h, %bb.a ]
  %.val = load ptr, ptr %i.s, align 8
  %i.t = and i32 %.sink39, 65535
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr [8 x i8], ptr %.val, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call ptr @__px_vaddr(ptr noundef %i.x) #7
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.h
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.h ], [ %.sroa.0.0.ph, %.sink.split ] ; 3 uses
  %.sroa.7.0 = phi i64 [ %.sroa.7.1, %bb.h ], [ %.sroa.7.0.ph, %.sink.split ] ; 3 uses
  %.sroa.12.0 = phi i64 [ %.sroa.12.1, %bb.h ], [ %.sroa.12.0.ph, %.sink.split ] ; 2 uses
  %.021 = phi i32 [ %i.av, %bb.h ], [ %.021.ph, %.sink.split ] ; 2 uses
  %i.z = lshr i64 %.sroa.7.0, 28
  %i.aa = and i64 %i.z, 4080
  %i.ab = or i64 %i.k, %i.aa
  %i.ac = or i64 %i.ab, %.sroa.7.0
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = zext nneg i32 %.021 to i64
  %i.af = getelementptr [4 x i8], ptr %i.y, i64 %i.ae
  store i32 %i.ad, ptr %i.af, align 4
  %i.ag = add i64 %.sroa.7.0, 4096                ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %.sroa.12.0
  br i1 %i.ah, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %.sroa.0.0, align 8
  %i.ai = and i64 %.val.i, 2
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %bb.d, label %__sg_next.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr i8, ptr %.sroa.0.0, i64 32 ; 2 uses
  %.val.i.i = load i64, ptr %i.aj, align 8        ; 2 uses
  %i.ak = trunc i64 %.val.i.i to i1
  br i1 %i.ak, label %bb.e, label %__sg_next.exit, !prof !24

bb.e:                                             ; preds = %bb.d
  %i.al = and i64 %.val.i.i, -4
  %i.am = inttoptr i64 %i.al to ptr
  br label %__sg_next.exit

__sg_next.exit:                                   ; preds = %bb.d, %bb.e
  %i.an = phi ptr [ %i.aj, %bb.d ], [ %i.am, %bb.e ] ; 4 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %__sg_next.exit.thread, label %bb.f

bb.f:                                             ; preds = %__sg_next.exit
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %__sg_next.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr i8, ptr %i.an, i64 16
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = zext i32 %i.ap to i64
  %i.au = add i64 %i.as, %i.at
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.sroa.0.1 = phi ptr [ %i.an, %bb.g ], [ %.sroa.0.0, %bb.b ] ; 2 uses
  %.sroa.7.1 = phi i64 [ %i.as, %bb.g ], [ %i.ag, %bb.b ] ; 2 uses
  %.sroa.12.1 = phi i64 [ %i.au, %bb.g ], [ %.sroa.12.0, %bb.b ] ; 2 uses
  %i.av = add nuw nsw i32 %.021, 1                ; 2 uses
  %i.aw = icmp eq i32 %i.av, 1024
  br i1 %i.aw, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  %i.ax = add i32 %.sink39, 1
  br label %.sink.split

__sg_next.exit.thread:                            ; preds = %bb.c, %__sg_next.exit, %bb.f
  %i.ay = getelementptr i8, ptr %1, i64 276
  store i32 4096, ptr %i.ay, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gen6_ppgtt_cleanup(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 680        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = getelementptr [8 x i8], ptr %.val.i, i64 %indvars.iv.i
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free_px(ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef 0) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 512
  br i1 %exitcond.not.i, label %gen6_ppgtt_free_pd.exit, label %bb.b, !llvm.loop !39

gen6_ppgtt_free_pd.exit:                          ; preds = %bb.d
  tail call void @free_scratch(ptr noundef %0) #7
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %gen6_ppgtt_free_pd.exit
  tail call void @free_px(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 1) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %gen6_ppgtt_free_pd.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_pt_dma(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @fill_page_dma(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_runtime_pm_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @gen6_flush_pd(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 680
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = and i64 %1, -65536                       ; 2 uses
  %i.d = add i64 %2, 65535
  %3 = and i64 %i.d, -65536
  %reass.sub = sub i64 %3, %i.c                   ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 688        ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.e) #7
  %i.f = trunc i64 %1 to i32
  %i.g = lshr i32 %i.f, 22                        ; 2 uses
  %i.h = and i32 %i.g, 511
  %.not = icmp eq i64 %reass.sub, 0
  br i1 %.not, label %._crit_edge, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 32
  %i.j = getelementptr i8, ptr %0, i64 464
  %i.k = getelementptr i8, ptr %0, i64 720
  %i.l = and i32 %i.g, 511
  %i.m = zext nneg i32 %i.l to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.m, %.critedge.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %.035 = phi i64 [ %i.c, %.critedge.lr.ph ], [ %i.ac, %.critedge ] ; 3 uses
  %.03134 = phi i64 [ %reass.sub, %.critedge.lr.ph ], [ %i.ad, %.critedge ] ; 2 uses
  %.val = load ptr, ptr %i.i, align 8
  %i.n = getelementptr [8 x i8], ptr %.val, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  %spec.select = select i1 %.not.i, ptr %i.j, ptr %i.o
  %.sink.i = load ptr, ptr %spec.select, align 8
  %i.p = tail call i64 @__px_dma(ptr noundef %.sink.i) #7 ; 2 uses
  %i.q = lshr i64 %i.p, 28
  %i.r = and i64 %i.q, 4080
  %i.s = or i64 %i.r, %i.p
  %i.t = trunc i64 %i.s to i32
  %i.u = or i32 %i.t, 1
  %i.v = load ptr, ptr %i.k, align 8
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %indvars.iv
  tail call void @iowrite32(i32 noundef %i.u, ptr noundef %i.w) #7
  %i.x = add i64 %.035, 4194304
  %i.y = and i64 %i.x, 4290772992
  %i.z = sub i64 %i.y, %.035
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %.03134)
  %i.ab = and i64 %i.aa, 4294967295               ; 2 uses
  %i.ac = add i64 %i.ab, %.035
  %i.ad = sub i64 %.03134, %i.ab                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = icmp samesign ult i64 %indvars.iv, 511
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %.critedge, label %._crit_edge.loopexit, !llvm.loop !40

._crit_edge.loopexit:                             ; preds = %.critedge
  %i.ag = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.032.lcssa = phi i32 [ %i.h, %bb.a ], [ %i.ag, %._crit_edge.loopexit ]
  tail call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !41
  %i.ah = getelementptr i8, ptr %0, i64 720
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = zext nneg i32 %.032.lcssa to i64
  %i.ak = getelementptr [4 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = tail call i32 @ioread32(ptr noundef %i.al) #7 ; 0 uses
  %i.an = getelementptr i8, ptr %0, i64 296
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void @gen6_ggtt_invalidate(ptr noundef %i.aq) #7
  tail call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !42
  tail call void @mutex_unlock(ptr noundef %i.e) #7
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ioread32(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @gen6_ggtt_invalidate(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__px_dma(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iowrite32(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_runtime_pm_put_unchecked(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__px_vaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_scratch(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_px(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @setup_scratch_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_get_pat_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @map_pt_dma(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__alloc_pd(i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__i915_gem_object_create_internal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_vma_instance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write)
define internal noundef i32 @pd_dummy_obj_get_pages(ptr nofree noundef writeonly captures(none) initializes((760, 768)) %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 760
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @pd_dummy_obj_put_pages(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #5 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pd_vma_bind(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 %3, i32 %4) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 240
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 248
  %i.d = load i64, ptr %i.c, align 8
  %i.e = lshr i64 %i.d, 12                        ; 2 uses
  %i.f = and i64 %i.e, 4294967295
  %.tr = trunc i64 %i.e to i32
  %i.g = shl i32 %.tr, 12
  %i.h = getelementptr i8, ptr %i.b, i64 728
  store i32 %i.g, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 784
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %i.f
  %i.l = getelementptr i8, ptr %i.b, i64 720
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.b, i64 328
  %i.n = load i64, ptr %i.m, align 8
  tail call fastcc void @gen6_flush_pd(ptr noundef %i.b, i64 noundef 0, i64 noundef %i.n) #10, !srcloc !43
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pd_vma_unbind(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 240
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 680      ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 736      ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !44, !noundef !45
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val = load ptr, ptr %i.j, align 8
  %i.k = getelementptr [8 x i8], ptr %.val, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load volatile i32, ptr %i.m, align 4
  %.not14 = icmp eq i32 %i.n, 0
  br i1 %.not14, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free_px(ptr noundef %i.b, ptr noundef nonnull %i.l, i32 noundef 0) #7
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv
  store ptr null, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !46

.critedge:                                        ; preds = %bb.e
  store i8 0, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.critedge
  ret void
}
end_hunk_0
