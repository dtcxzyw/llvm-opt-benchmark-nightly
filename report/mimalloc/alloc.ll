Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/alloc?download=true
begin_hunk_0_@mi_mallocn:bb.a
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_theap_mallocn.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = icmp ult i64 %storemerge.i.ph.i, 1025
  br i1 %i.f, label %bb.d, label %bb.g, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !inline_history !23, !srcloc !24
  %i.o = icmp eq ptr %i.l, null
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i, i64 noundef 0, ptr noundef null) #24, !inline_history !23
  br label %mi_theap_mallocn.exit

bb.f:                                             ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.l, align 8, !tbaa !25
  %i.q = inttoptr i64 %.val.i.i to ptr
  store i64 0, ptr %i.l, align 8, !tbaa !25
  store ptr %i.q, ptr %i.k, align 8, !tbaa !14
  %i.r = add i64 %i.n, 1
  store i64 %i.r, ptr %i.m, align 8, !tbaa !22
  br label %mi_theap_mallocn.exit

bb.g:                                             ; preds = %bb.c
  %i.s = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef range(i64 1025, 0) %storemerge.i.ph.i, i64 noundef 0, ptr noundef null) #24, !inline_history !23
  br label %mi_theap_mallocn.exit

mi_theap_mallocn.exit:                            ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %.0.i = phi ptr [ null, %bb.b ], [ %i.s, %bb.g ], [ %i.p, %bb.e ], [ %i.l, %bb.f ]
  ret ptr %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden noalias ptr @mi_heap_mallocn(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %2, %bb.a ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1040
  %i.g = load atomic ptr, ptr %i.f monotonic, align 8
  %i.h = icmp eq ptr %i.g, %0
  br i1 %i.h, label %_mi_heap_theap.exit.i, label %bb.d, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef %0) #26
  br label %_mi_heap_theap.exit.i

_mi_heap_theap.exit.i:                            ; preds = %bb.d, %bb.c
  %.0.i2.i = phi ptr [ %i.i, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.j = icmp ult i64 %storemerge.i.ph, 1025
  br i1 %i.j, label %bb.e, label %bb.h, !prof !11

bb.e:                                             ; preds = %_mi_heap_theap.exit.i
  %i.k = add nuw nsw i64 %storemerge.i.ph, 7
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i2.i, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !22
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !24
  %i.s = icmp eq ptr %i.p, null
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %.0.i2.i, i64 noundef %storemerge.i.ph, i64 noundef 0, ptr noundef null) #24
  br label %mi_count_size_overflow.exit

bb.g:                                             ; preds = %bb.e
  %.val.i = load i64, ptr %i.p, align 8, !tbaa !25
  %i.u = inttoptr i64 %.val.i to ptr
  store i64 0, ptr %i.p, align 8, !tbaa !25
  store ptr %i.u, ptr %i.o, align 8, !tbaa !14
  %i.v = add i64 %i.r, 1
  store i64 %i.v, ptr %i.q, align 8, !tbaa !22
  br label %mi_count_size_overflow.exit

bb.h:                                             ; preds = %_mi_heap_theap.exit.i
  %i.w = tail call noalias ptr @_mi_malloc_generic(ptr noundef %.0.i2.i, i64 noundef range(i64 1025, 0) %storemerge.i.ph, i64 noundef 0, ptr noundef null) #24
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.w, %bb.h ], [ %i.t, %bb.f ], [ %i.p, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nooutline norecurse nounwind willreturn uwtable
define hidden ptr @mi_expand(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = and i64 %i.b, -268435456                 ; 2 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_mi_page_usable_size.exit, label %mi_validate_ptr_page.exit, !prof !27

mi_validate_ptr_page.exit:                        ; preds = %bb.b
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = lshr i64 %i.b, 16
  %i.f = and i64 %i.e, 4095
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.d, i64 %i.f
  %i.h = load atomic ptr, ptr %i.g acquire, align 128 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_mi_page_usable_size.exit, label %bb.c, !prof !50

bb.c:                                             ; preds = %mi_validate_ptr_page.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load atomic i64, ptr %i.j monotonic, align 8
  %i.l = and i64 %i.k, 2
  %.not.i8 = icmp eq i64 %i.l, 0
  br i1 %.not.i8, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.h, i64 40
  %.val.i = load i64, ptr %i.m, align 8, !tbaa !28
  br label %_mi_page_usable_size.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef %i.h, ptr noundef nonnull readonly %0) #25
  br label %_mi_page_usable_size.exit

_mi_page_usable_size.exit:                        ; preds = %bb.b, %mi_validate_ptr_page.exit, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.n, %bb.e ], [ %.val.i, %bb.d ], [ 0, %mi_validate_ptr_page.exit ], [ 0, %bb.b ]
  %i.o = icmp ugt i64 %1, %.0.i
  %. = select i1 %i.o, ptr null, ptr %0
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_mi_page_usable_size.exit
  %.1 = phi ptr [ %., %_mi_page_usable_size.exit ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @_mi_theap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.b, label %_mi_page_usable_size.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, -268435456                 ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %mi_theap_realloc_zero_ex.exit, label %mi_validate_ptr_page.exit, !prof !27

mi_validate_ptr_page.exit:                        ; preds = %bb.b
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = lshr i64 %i.c, 16
  %i.g = and i64 %i.f, 4095
  %i.h = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %i.g
  %i.i = load atomic ptr, ptr %i.h acquire, align 128 ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %mi_theap_realloc_zero_ex.exit, label %bb.c, !prof !50

bb.c:                                             ; preds = %mi_validate_ptr_page.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %i.m = and i64 %i.l, 2
  %.not.i3 = icmp eq i64 %i.m, 0
  br i1 %.not.i3, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.i, i64 40
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !28
  br label %_mi_page_usable_size.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.i, ptr noundef nonnull readonly %1) #25
  br label %_mi_page_usable_size.exit

_mi_page_usable_size.exit:                        ; preds = %bb.e, %bb.d
  %.053.i.a = phi i64 [ %.val.i, %bb.d ], [ %i.o, %bb.e ] ; 4 uses
  %i.p = lshr i64 %.053.i.a, 1
  %.not69.i = icmp uge i64 %2, %i.p
  %i.q = add i64 %2, -1
  %i.r = icmp ult i64 %i.q, %.053.i.a
  %i.s = and i1 %i.r, %.not69.i
  br i1 %i.s, label %bb.f, label %_mi_page_usable_size.exit.thread, !prof !52

bb.f:                                             ; preds = %_mi_page_usable_size.exit
  %i.t = getelementptr i8, ptr %i.i, i64 80
  %.052.i.val = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.v = load atomic ptr, ptr %i.u monotonic, align 8
  %i.w = icmp eq ptr %.052.i.val, %i.v
  br i1 %i.w, label %mi_theap_realloc_zero_ex.exit, label %_mi_page_usable_size.exit.thread

_mi_page_usable_size.exit.thread:                 ; preds = %bb.a, %bb.f, %_mi_page_usable_size.exit
  %.053.i31 = phi i64 [ %.053.i.a, %_mi_page_usable_size.exit ], [ %.053.i.a, %bb.f ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.x = icmp ult i64 %2, 1025
  br i1 %i.x, label %bb.g, label %_mi_theap_malloc_zero.exit, !prof !11

bb.g:                                             ; preds = %_mi_page_usable_size.exit.thread
  %i.y = add nuw nsw i64 %2, 7
  %i.z = lshr i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !24
  %i.ag = icmp eq ptr %i.ad, null
  br i1 %i.ag, label %_mi_theap_malloc_zero.exit, label %.thread

.thread:                                          ; preds = %bb.g
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !12
  %.val.i5 = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.ah = inttoptr i64 %.val.i5 to ptr
  store i64 0, ptr %i.ad, align 8, !tbaa !25
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !14
  %i.ai = add i64 %i.af, 1
  store i64 %i.ai, ptr %i.ae, align 8, !tbaa !22
  %i.aj = tail call i64 @llvm.umin.i64(i64 %2, i64 %.053.i31) ; 2 uses
  %i.ak = tail call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 8)
  %i.al = and i64 %i.ak, 2040
  br label %bb.i

_mi_theap_malloc_zero.exit:                       ; preds = %_mi_page_usable_size.exit.thread, %bb.g
  %i.am = call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %2, i64 noundef 0, ptr noundef nonnull %i.a) #24 ; 3 uses
  %.not70.i = icmp eq ptr %i.am, null
  br i1 %.not70.i, label %bb.s, label %bb.h, !prof !54

bb.h:                                             ; preds = %_mi_theap_malloc_zero.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %i.an = call i64 @llvm.umin.i64(i64 %2, i64 %.053.i31) ; 3 uses
  %i.ao = call i64 @llvm.usub.sat.i64(i64 %i.an, i64 8)
  %i.ap = and i64 %i.ao, -8
  %i.aq = icmp eq ptr %.pre, null
  br i1 %i.aq, label %_mi_page_usable_size.exit10.thread, label %bb.i, !prof !55

bb.i:                                             ; preds = %.thread, %bb.h
  %i.ar = phi i64 [ %i.al, %.thread ], [ %i.ap, %bb.h ] ; 3 uses
  %i.as = phi i64 [ %i.aj, %.thread ], [ %i.an, %bb.h ] ; 3 uses
  %.0.i.i1334 = phi ptr [ %i.ad, %.thread ], [ %i.am, %bb.h ] ; 5 uses
  %i.at = phi ptr [ %i.ab, %.thread ], [ %.pre, %bb.h ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load atomic i64, ptr %i.au monotonic, align 8
  %i.aw = and i64 %i.av, 2
  %.not.i7 = icmp eq i64 %i.aw, 0
  br i1 %.not.i7, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr i8, ptr %i.at, i64 40
  %.val.i9 = load i64, ptr %i.ax, align 8, !tbaa !28
  br label %_mi_page_usable_size.exit10

bb.k:                                             ; preds = %bb.i
  %i.ay = call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef %i.at, ptr noundef nonnull readonly %.0.i.i1334) #25
  br label %_mi_page_usable_size.exit10

_mi_page_usable_size.exit10:                      ; preds = %bb.j, %bb.k
  %.0.i8 = phi i64 [ %i.ay, %bb.k ], [ %.val.i9, %bb.j ] ; 2 uses
  %i.az = icmp ugt i64 %.0.i8, %i.ar
  %or.cond74.i = select i1 %3, i1 %i.az, i1 false
  br i1 %or.cond74.i, label %bb.l, label %_mi_page_usable_size.exit10.thread

bb.l:                                             ; preds = %_mi_page_usable_size.exit10
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i1334, i64 %i.ar ; 3 uses
  %i.bb = sub nuw i64 %.0.i8, %i.ar               ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ba, i64 8) ]
  %i.bc = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !32
  %.not.i.i.i = icmp ugt i64 %i.bb, %i.bc
  br i1 %.not.i.i.i, label %bb.n, label %bb.m, !prof !27

bb.m:                                             ; preds = %bb.l
  %i.bd = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.ba, i64 %i.bb) #23, !srcloc !33 ; 0 uses
  br label %_mi_memzero_aligned.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ba, i8 0, i64 %i.bb, i1 false)
  br label %_mi_memzero_aligned.exit

_mi_page_usable_size.exit10.thread:               ; preds = %bb.h, %_mi_page_usable_size.exit10
  %i.be = phi i64 [ %i.an, %bb.h ], [ %i.as, %_mi_page_usable_size.exit10 ] ; 2 uses
  %.0.i.i1335 = phi ptr [ %i.am, %bb.h ], [ %.0.i.i1334, %_mi_page_usable_size.exit10 ] ; 3 uses
  %i.bf = icmp eq i64 %2, 0
  br i1 %i.bf, label %bb.o, label %_mi_memzero_aligned.exit

bb.o:                                             ; preds = %_mi_page_usable_size.exit10.thread
  store i8 0, ptr %.0.i.i1335, align 1, !tbaa !41
  br label %_mi_memzero_aligned.exit

_mi_memzero_aligned.exit:                         ; preds = %bb.n, %bb.m, %bb.o, %_mi_page_usable_size.exit10.thread
  %i.bg = phi i64 [ %i.as, %bb.n ], [ %i.as, %bb.m ], [ %i.be, %bb.o ], [ %i.be, %_mi_page_usable_size.exit10.thread ] ; 3 uses
  %.0.i.i1333 = phi ptr [ %.0.i.i1334, %bb.n ], [ %.0.i.i1334, %bb.m ], [ %.0.i.i1335, %bb.o ], [ %.0.i.i1335, %_mi_page_usable_size.exit10.thread ] ; 5 uses
  br i1 %i.b, label %bb.s, label %bb.p, !prof !27

bb.p:                                             ; preds = %_mi_memzero_aligned.exit
  call void @llvm.assume(i1 true) [ "align"(ptr %.0.i.i1333, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  %i.bh = load i64, ptr @_mi_cpu_movsb_max, align 8, !tbaa !32
  %.not.i.i = icmp ugt i64 %i.bg, %i.bh
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !27

bb.q:                                             ; preds = %bb.p
  %i.bi = call { ptr, i64, ptr } asm sideeffect "rep movsb", "={di},={cx},={si},0,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i1333, i64 %i.bg, ptr nonnull %1) #23, !srcloc !40 ; 0 uses
  br label %_mi_memcpy_aligned.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.0.i.i1333, ptr nonnull align 8 %1, i64 %i.bg, i1 false)
  br label %_mi_memcpy_aligned.exit

_mi_memcpy_aligned.exit:                          ; preds = %bb.q, %bb.r
  call void @mi_free(ptr noundef nonnull %1) #25
  br label %bb.s

bb.s:                                             ; preds = %_mi_memcpy_aligned.exit, %_mi_memzero_aligned.exit, %_mi_theap_malloc_zero.exit
  %.0.i.i14 = phi ptr [ %.0.i.i1333, %_mi_memcpy_aligned.exit ], [ %.0.i.i1333, %_mi_memzero_aligned.exit ], [ null, %_mi_theap_malloc_zero.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %mi_theap_realloc_zero_ex.exit

mi_theap_realloc_zero_ex.exit:                    ; preds = %bb.b, %bb.f, %mi_validate_ptr_page.exit, %bb.s
  %.0.i = phi ptr [ null, %mi_validate_ptr_page.exit ], [ %.0.i.i14, %bb.s ], [ %1, %bb.f ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_theap_realloc(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 1025
  br i1 %i.b, label %bb.c, label %bb.f, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i64 %2, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !inline_history !23, !srcloc !24
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %2, i64 noundef 0, ptr noundef null) #24, !inline_history !23
  br label %mi_theap_malloc.exit

bb.e:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.m = inttoptr i64 %.val.i to ptr
  store i64 0, ptr %i.h, align 8, !tbaa !25
  store ptr %i.m, ptr %i.g, align 8, !tbaa !14
  %i.n = add i64 %i.j, 1
  store i64 %i.n, ptr %i.i, align 8, !tbaa !22
  br label %mi_theap_malloc.exit

bb.f:                                             ; preds = %bb.b
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef range(i64 1025, 0) %2, i64 noundef 0, ptr noundef null) #24, !inline_history !23
  br label %mi_theap_malloc.exit

bb.g:                                             ; preds = %bb.a
  %i.p = tail call ptr @_mi_theap_realloc_zero(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext false) #25
  br label %mi_theap_malloc.exit

mi_theap_malloc.exit:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.g
  %.0 = phi ptr [ %i.p, %bb.g ], [ %i.o, %bb.f ], [ %i.l, %bb.d ], [ %i.h, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_theap_rezalloc(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.j
end_hunk_0
