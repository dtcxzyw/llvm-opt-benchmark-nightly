Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/alloc?download=true
inline.NumInlined: 300
inline.NumDeleted: 73
begin_hunk_0_@mi_heap_mallocn:bb.a
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %.0.i2.i, i64 noundef %storemerge.i.ph, i64 noundef 0, ptr noundef null) #24
  br label %mi_count_size_overflow.exit

bb.g:                                             ; preds = %bb.e
  %.val.i = load i64, ptr %i.p, align 8, !tbaa !31
  %i.u = inttoptr i64 %.val.i to ptr
  store i64 0, ptr %i.p, align 8, !tbaa !31
  store ptr %i.u, ptr %i.o, align 8, !tbaa !26
  %i.v = add i64 %i.r, 1
  store i64 %i.v, ptr %i.q, align 8, !tbaa !27
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
  br i1 %.not.i, label %_mi_page_usable_size.exit, label %mi_validate_ptr_page.exit, !prof !32

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
  br i1 %.not.i8, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.h, i64 40
  %.val.i = load i64, ptr %i.m, align 8, !tbaa !33
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
  br i1 %.not.i, label %mi_theap_realloc_zero_ex.exit, label %mi_validate_ptr_page.exit, !prof !32

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
  br i1 %.not.i3, label %bb.d, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.i, i64 40
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !33
  br label %_mi_page_usable_size.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.i, ptr noundef nonnull readonly %1) #25
  br label %_mi_page_usable_size.exit

_mi_page_usable_size.exit:                        ; preds = %bb.e, %bb.d
  %.0.i = phi i64 [ %i.o, %bb.e ], [ %.val.i, %bb.d ] ; 4 uses
  %i.p = lshr i64 %.0.i, 1
  %.not69.i = icmp uge i64 %2, %i.p
  %i.q = add i64 %2, -1
  %i.r = icmp ult i64 %i.q, %.0.i
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
  %.0.i31 = phi i64 [ %.0.i, %_mi_page_usable_size.exit ], [ %.0.i, %bb.f ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.x = icmp ult i64 %2, 1025
  br i1 %i.x, label %bb.g, label %_mi_theap_malloc_zero.exit, !prof !16

bb.g:                                             ; preds = %_mi_page_usable_size.exit.thread
  %i.y = add nuw nsw i64 %2, 7
  %i.z = lshr i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !27
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !29
  %i.ag = icmp eq ptr %i.ad, null
  br i1 %i.ag, label %_mi_theap_malloc_zero.exit, label %.thread

.thread:                                          ; preds = %bb.g
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !18
  %.val.i5 = load i64, ptr %i.ad, align 8, !tbaa !31
  %i.ah = inttoptr i64 %.val.i5 to ptr
  store i64 0, ptr %i.ad, align 8, !tbaa !31
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !26
  %i.ai = add i64 %i.af, 1
  store i64 %i.ai, ptr %i.ae, align 8, !tbaa !27
  %i.aj = tail call i64 @llvm.umin.i64(i64 %2, i64 %.0.i31) ; 2 uses
  %i.ak = tail call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 8)
  %i.al = and i64 %i.ak, 2040
  br label %bb.i

_mi_theap_malloc_zero.exit:                       ; preds = %_mi_page_usable_size.exit.thread, %bb.g
  %i.am = call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef %2, i64 noundef 0, ptr noundef nonnull %i.a) #24 ; 3 uses
  %.not70.i = icmp eq ptr %i.am, null
  br i1 %.not70.i, label %bb.s, label %bb.h, !prof !54

bb.h:                                             ; preds = %_mi_theap_malloc_zero.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.an = call i64 @llvm.umin.i64(i64 %2, i64 %.0.i31) ; 3 uses
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
  br i1 %.not.i7, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr i8, ptr %i.at, i64 40
  %.val.i9 = load i64, ptr %i.ax, align 8, !tbaa !33
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
  %4 = sub nuw i64 %.0.i8, %i.ar                  ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ba, i64 8) ]
  %i.bb = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !37
  %.not.i.i.i = icmp ugt i64 %4, %i.bb
  br i1 %.not.i.i.i, label %bb.n, label %bb.m, !prof !32

bb.m:                                             ; preds = %bb.l
  %i.bc = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.ba, i64 %4) #23, !srcloc !38 ; 0 uses
  br label %_mi_memzero_aligned.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ba, i8 0, i64 %4, i1 false)
  br label %_mi_memzero_aligned.exit

_mi_page_usable_size.exit10.thread:               ; preds = %bb.h, %_mi_page_usable_size.exit10
  %i.bd = phi i64 [ %i.an, %bb.h ], [ %i.as, %_mi_page_usable_size.exit10 ] ; 2 uses
  %.0.i.i1335 = phi ptr [ %i.am, %bb.h ], [ %.0.i.i1334, %_mi_page_usable_size.exit10 ] ; 3 uses
  %i.be = icmp eq i64 %2, 0
  br i1 %i.be, label %bb.o, label %_mi_memzero_aligned.exit

bb.o:                                             ; preds = %_mi_page_usable_size.exit10.thread
  store i8 0, ptr %.0.i.i1335, align 1, !tbaa !43
  br label %_mi_memzero_aligned.exit

_mi_memzero_aligned.exit:                         ; preds = %bb.n, %bb.m, %bb.o, %_mi_page_usable_size.exit10.thread
  %i.bf = phi i64 [ %i.as, %bb.n ], [ %i.as, %bb.m ], [ %i.bd, %bb.o ], [ %i.bd, %_mi_page_usable_size.exit10.thread ] ; 3 uses
  %.0.i.i1333 = phi ptr [ %.0.i.i1334, %bb.n ], [ %.0.i.i1334, %bb.m ], [ %.0.i.i1335, %bb.o ], [ %.0.i.i1335, %_mi_page_usable_size.exit10.thread ] ; 5 uses
  br i1 %i.b, label %bb.s, label %bb.p, !prof !32

bb.p:                                             ; preds = %_mi_memzero_aligned.exit
  call void @llvm.assume(i1 true) [ "align"(ptr %.0.i.i1333, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  %i.bg = load i64, ptr @_mi_cpu_movsb_max, align 8, !tbaa !37
  %.not.i.i = icmp ugt i64 %i.bf, %i.bg
  br i1 %.not.i.i, label %bb.r, label %bb.q, !prof !32

bb.q:                                             ; preds = %bb.p
  %i.bh = call { ptr, i64, ptr } asm sideeffect "rep movsb", "={di},={cx},={si},0,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i1333, i64 %i.bf, ptr nonnull %1) #23, !srcloc !42 ; 0 uses
  br label %_mi_memcpy_aligned.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.0.i.i1333, ptr nonnull align 8 %1, i64 %i.bf, i1 false)
  br label %_mi_memcpy_aligned.exit

_mi_memcpy_aligned.exit:                          ; preds = %bb.q, %bb.r
  call void @mi_free(ptr noundef nonnull %1) #25
  br label %bb.s

bb.s:                                             ; preds = %_mi_memcpy_aligned.exit, %_mi_memzero_aligned.exit, %_mi_theap_malloc_zero.exit
  %.0.i.i14 = phi ptr [ %.0.i.i1333, %_mi_memcpy_aligned.exit ], [ %.0.i.i1333, %_mi_memzero_aligned.exit ], [ null, %_mi_theap_malloc_zero.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %mi_theap_realloc_zero_ex.exit

mi_theap_realloc_zero_ex.exit:                    ; preds = %bb.b, %bb.f, %mi_validate_ptr_page.exit, %bb.s
  %.053.i = phi ptr [ null, %mi_validate_ptr_page.exit ], [ %.0.i.i14, %bb.s ], [ %1, %bb.f ], [ null, %bb.b ]
  ret ptr %.053.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_theap_realloc(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 1025
  br i1 %i.b, label %bb.c, label %bb.f, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i64 %2, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !inline_history !28, !srcloc !29
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %2, i64 noundef 0, ptr noundef null) #24, !inline_history !28
  br label %mi_theap_malloc.exit

bb.e:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.m = inttoptr i64 %.val.i to ptr
  store i64 0, ptr %i.h, align 8, !tbaa !31
  store ptr %i.m, ptr %i.g, align 8, !tbaa !26
  %i.n = add i64 %i.j, 1
  store i64 %i.n, ptr %i.i, align 8, !tbaa !27
  br label %mi_theap_malloc.exit

bb.f:                                             ; preds = %bb.b
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef range(i64 1025, 0) %2, i64 noundef 0, ptr noundef null) #24, !inline_history !28
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

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 1025
  br i1 %i.b, label %bb.c, label %bb.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw nsw i64 %2, 7
  %i.d = lshr i64 %i.c, 3
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !29
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %2, i64 noundef 1, ptr noundef null) #24
  br label %mi_theap_zalloc.exit

bb.e:                                             ; preds = %bb.c
  %.val.i.i = load i64, ptr %i.h, align 8, !tbaa !31
  %i.m = inttoptr i64 %.val.i.i to ptr
  store i64 0, ptr %i.h, align 8, !tbaa !31
  store ptr %i.m, ptr %i.g, align 8, !tbaa !26
  %i.n = add i64 %i.j, 1
  store i64 %i.n, ptr %i.i, align 8, !tbaa !27
  %i.o = getelementptr i8, ptr %i.f, i64 40
  %.val3.i.i = load i64, ptr %i.o, align 8, !tbaa !33 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 63
  %i.q = load i8, ptr %i.p, align 1, !tbaa !34, !range !35, !noundef !36
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %mi_theap_zalloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 8) ]
  %i.s = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !37
  %.not.i.i.i4.i.i = icmp ugt i64 %.val3.i.i, %i.s
  br i1 %.not.i.i.i4.i.i, label %bb.h, label %bb.g, !prof !32

bb.g:                                             ; preds = %bb.f
  %i.t = tail call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.h, i64 %.val3.i.i) #23, !srcloc !38 ; 0 uses
  br label %mi_theap_zalloc.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %.val3.i.i, i1 false)
  br label %mi_theap_zalloc.exit

bb.i:                                             ; preds = %bb.b
  %i.u = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef range(i64 1025, 0) %2, i64 noundef 1, ptr noundef null) #24
  br label %mi_theap_zalloc.exit

bb.j:                                             ; preds = %bb.a
  %i.v = tail call ptr @_mi_theap_realloc_zero(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext true) #25
  br label %mi_theap_zalloc.exit

mi_theap_zalloc.exit:                             ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.j
  %.0 = phi ptr [ %i.v, %bb.j ], [ %i.u, %bb.i ], [ %i.l, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.h ], [ %i.h, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_reallocn(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_theap_reallocn.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ] ; 5 uses
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %storemerge.i.ph.i, 1025
  br i1 %i.g, label %bb.e, label %bb.h, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.h = add nuw nsw i64 %storemerge.i.ph.i, 7
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !inline_history !28, !srcloc !29
  %i.p = icmp eq ptr %i.m, null
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %storemerge.i.ph.i, i64 noundef 0, ptr noundef null) #24, !inline_history !28
  br label %mi_theap_reallocn.exit

bb.g:                                             ; preds = %bb.e
  %.val.i.i.i = load i64, ptr %i.m, align 8, !tbaa !31
  %i.r = inttoptr i64 %.val.i.i.i to ptr
  store i64 0, ptr %i.m, align 8, !tbaa !31
  store ptr %i.r, ptr %i.l, align 8, !tbaa !26
  %i.s = add i64 %i.o, 1
  store i64 %i.s, ptr %i.n, align 8, !tbaa !27
  br label %mi_theap_reallocn.exit

bb.h:                                             ; preds = %bb.d
  %i.t = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef range(i64 1025, 0) %storemerge.i.ph.i, i64 noundef 0, ptr noundef null) #24, !inline_history !28
  br label %mi_theap_reallocn.exit

bb.i:                                             ; preds = %bb.c
  %i.u = tail call ptr @_mi_theap_realloc_zero(ptr noundef %i.b, ptr noundef nonnull %0, i64 noundef %storemerge.i.ph.i, i1 noundef zeroext false) #25
  br label %mi_theap_reallocn.exit

mi_theap_reallocn.exit:                           ; preds = %bb.b, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi ptr [ null, %bb.b ], [ %i.u, %bb.i ], [ %i.t, %bb.h ], [ %i.q, %bb.f ], [ %i.m, %bb.g ]
  ret ptr %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_urealloc(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not67.i = icmp eq ptr %2, null
  br i1 %.not67.i, label %.thread30, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %2, align 8, !tbaa !37
  br label %.thread30

bb.d:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = and i64 %i.e, -268435456                 ; 2 uses
  %.not.i5 = icmp eq i64 %i.f, 0
  br i1 %.not.i5, label %mi_validate_ptr_page.exit.thread, label %mi_validate_ptr_page.exit, !prof !32

mi_validate_ptr_page.exit:                        ; preds = %bb.d
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = lshr i64 %i.e, 16
  %i.i = and i64 %i.h, 4095
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.g, i64 %i.i
  %i.k = load atomic ptr, ptr %i.j acquire, align 128 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %mi_validate_ptr_page.exit.thread, label %bb.h, !prof !50

mi_validate_ptr_page.exit.thread:                 ; preds = %bb.d, %mi_validate_ptr_page.exit
  %.not65.i = icmp eq ptr %2, null
  br i1 %.not65.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %mi_validate_ptr_page.exit.thread
  store i64 0, ptr %2, align 8, !tbaa !37
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mi_validate_ptr_page.exit.thread
  %.not66.i = icmp eq ptr %3, null
  br i1 %.not66.i, label %mi_theap_realloc_zero_ex.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 0, ptr %3, align 8, !tbaa !37
  br label %mi_theap_realloc_zero_ex.exit

bb.h:                                             ; preds = %mi_validate_ptr_page.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %i.o = and i64 %i.n, 2
  %.not.i6 = icmp eq i64 %i.o, 0
  br i1 %.not.i6, label %bb.i, label %bb.j, !prof !16

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %i.k, i64 40
  %.val.i = load i64, ptr %i.p, align 8, !tbaa !33
  br label %_mi_page_usable_size.exit

bb.j:                                             ; preds = %bb.h
  %i.q = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.k, ptr noundef nonnull readonly %0) #25
  br label %_mi_page_usable_size.exit

_mi_page_usable_size.exit:                        ; preds = %bb.i, %bb.j
  %.0.i7 = phi i64 [ %i.q, %bb.j ], [ %.val.i, %bb.i ] ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_mi_page_usable_size.exit
  %i.r = getelementptr i8, ptr %i.k, i64 40
  %.val3 = load i64, ptr %i.r, align 8, !tbaa !33
  store i64 %.val3, ptr %2, align 8, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_mi_page_usable_size.exit
  %i.s = lshr i64 %.0.i7, 1
  %.not69.i = icmp uge i64 %1, %i.s
  %i.t = add i64 %1, -1
  %i.u = icmp ult i64 %i.t, %.0.i7
  %i.v = and i1 %i.u, %.not69.i
  br i1 %i.v, label %bb.m, label %.thread30, !prof !52

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr i8, ptr %i.k, i64 80
  %.052.i.val4 = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1040
  %i.y = load atomic ptr, ptr %i.x monotonic, align 8
  %i.z = icmp eq ptr %.052.i.val4, %i.y
  br i1 %i.z, label %bb.n, label %.thread30

bb.n:                                             ; preds = %bb.m
  %.not73.i = icmp eq ptr %3, null
  br i1 %.not73.i, label %mi_theap_realloc_zero_ex.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr i8, ptr %i.k, i64 40
  %.052.i.val = load i64, ptr %i.aa, align 8, !tbaa !33
  store i64 %.052.i.val, ptr %3, align 8, !tbaa !37
  br label %mi_theap_realloc_zero_ex.exit

.thread30:                                        ; preds = %bb.b, %bb.c, %bb.m, %bb.l
  %.0.i34 = phi i64 [ %.0.i7, %bb.l ], [ %.0.i7, %bb.m ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ab = icmp ult i64 %1, 1025
  br i1 %i.ab, label %bb.p, label %_mi_theap_malloc_zero.exit, !prof !16

bb.p:                                             ; preds = %.thread30
  %i.ac = add nuw nsw i64 %1, 7
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !26 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !27
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !29
  %i.ak = icmp eq ptr %i.ah, null
  br i1 %i.ak, label %_mi_theap_malloc_zero.exit, label %_mi_theap_malloc_zero.exit.thread

_mi_theap_malloc_zero.exit.thread:                ; preds = %bb.p
  store ptr %i.af, ptr %i.a, align 8, !tbaa !18
  %.val.i8 = load i64, ptr %i.ah, align 8, !tbaa !31
  %i.al = inttoptr i64 %.val.i8 to ptr
  store i64 0, ptr %i.ah, align 8, !tbaa !31
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !26
  %i.am = add i64 %i.aj, 1
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !27
  br label %bb.q

_mi_theap_malloc_zero.exit:                       ; preds = %.thread30, %bb.p
  %i.an = call noalias ptr @_mi_malloc_generic(ptr noundef %i.c, i64 noundef %1, i64 noundef 0, ptr noundef nonnull %i.a) #24 ; 2 uses
  %.not70.i = icmp eq ptr %i.an, null
  br i1 %.not70.i, label %bb.y, label %bb.q, !prof !54

bb.q:                                             ; preds = %_mi_theap_malloc_zero.exit.thread, %_mi_theap_malloc_zero.exit
  %.0.i.i16 = phi ptr [ %i.ah, %_mi_theap_malloc_zero.exit.thread ], [ %i.an, %_mi_theap_malloc_zero.exit ] ; 6 uses
  %.not71.i = icmp eq ptr %3, null
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  br i1 %.not71.i, label %bb.r, label %.thread

.thread:                                          ; preds = %bb.q
  %i.ao = getelementptr i8, ptr %.pr, i64 40
  %.val = load i64, ptr %i.ao, align 8, !tbaa !33
  store i64 %.val, ptr %3, align 8, !tbaa !37
  %i.ap = call i64 @llvm.umin.i64(i64 %1, i64 %.0.i34)
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = call i64 @llvm.umin.i64(i64 %1, i64 %.0.i34) ; 2 uses
  %i.ar = icmp eq ptr %.pr, null
  br i1 %i.ar, label %_mi_page_usable_size.exit13, label %bb.s, !prof !55

bb.s:                                             ; preds = %.thread, %bb.r
  %i.as = phi i64 [ %i.ap, %.thread ], [ %i.aq, %bb.r ]
  %i.at = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.au = load atomic i64, ptr %i.at monotonic, align 8 ; 0 uses
  br label %_mi_page_usable_size.exit13

_mi_page_usable_size.exit13:                      ; preds = %bb.s, %bb.r
  %i.av = phi i64 [ %i.aq, %bb.r ], [ %i.as, %bb.s ] ; 3 uses
  %i.aw = icmp eq i64 %1, 0
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_mi_page_usable_size.exit13
  store i8 0, ptr %.0.i.i16, align 1, !tbaa !43
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_mi_page_usable_size.exit13
  br i1 %i.d, label %bb.y, label %bb.v, !prof !32

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "align"(ptr %.0.i.i16, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %0, i64 8) ]
  %i.ax = load i64, ptr @_mi_cpu_movsb_max, align 8, !tbaa !37
  %.not.i.i = icmp ugt i64 %i.av, %i.ax
  br i1 %.not.i.i, label %bb.x, label %bb.w, !prof !32

bb.w:                                             ; preds = %bb.v
  %i.ay = call { ptr, i64, ptr } asm sideeffect "rep movsb", "={di},={cx},={si},0,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.0.i.i16, i64 %i.av, ptr nonnull %0) #23, !srcloc !42 ; 0 uses
  br label %_mi_memcpy_aligned.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.0.i.i16, ptr nonnull align 8 %0, i64 %i.av, i1 false)
  br label %_mi_memcpy_aligned.exit

_mi_memcpy_aligned.exit:                          ; preds = %bb.w, %bb.x
  call void @mi_free(ptr noundef nonnull %0) #25
  br label %bb.y

bb.y:                                             ; preds = %_mi_memcpy_aligned.exit, %bb.u, %_mi_theap_malloc_zero.exit
  %.0.i.i17 = phi ptr [ %.0.i.i16, %_mi_memcpy_aligned.exit ], [ %.0.i.i16, %bb.u ], [ null, %_mi_theap_malloc_zero.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %mi_theap_realloc_zero_ex.exit

mi_theap_realloc_zero_ex.exit:                    ; preds = %bb.f, %bb.g, %bb.n, %bb.o, %bb.y
  %.053.i = phi ptr [ null, %bb.f ], [ %.0.i.i17, %bb.y ], [ null, %bb.g ], [ %0, %bb.o ], [ %0, %bb.n ]
  ret ptr %.053.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_rezalloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 1025
  br i1 %i.d, label %bb.c, label %bb.i, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw nsw i64 %1, 7
  %i.f = lshr i64 %i.e, 3
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26   ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !29
  %i.m = icmp eq ptr %i.j, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 1, ptr noundef null) #24
  br label %mi_theap_rezalloc.exit

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i = load i64, ptr %i.j, align 8, !tbaa !31
  %i.o = inttoptr i64 %.val.i.i.i to ptr
  store i64 0, ptr %i.j, align 8, !tbaa !31
  store ptr %i.o, ptr %i.i, align 8, !tbaa !26
  %i.p = add i64 %i.l, 1
  store i64 %i.p, ptr %i.k, align 8, !tbaa !27
  %i.q = getelementptr i8, ptr %i.h, i64 40
  %.val3.i.i.i = load i64, ptr %i.q, align 8, !tbaa !33 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 63
  %i.s = load i8, ptr %i.r, align 1, !tbaa !34, !range !35, !noundef !36
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %mi_theap_rezalloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "align"(ptr %i.j, i64 8) ]
  %i.u = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !37
  %.not.i.i.i4.i.i.i = icmp ugt i64 %.val3.i.i.i, %i.u
  br i1 %.not.i.i.i4.i.i.i, label %bb.h, label %bb.g, !prof !32

bb.g:                                             ; preds = %bb.f
  %i.v = tail call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.j, i64 %.val3.i.i.i) #23, !srcloc !38 ; 0 uses
  br label %mi_theap_rezalloc.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.j, i8 0, i64 %.val3.i.i.i, i1 false)
  br label %mi_theap_rezalloc.exit

bb.i:                                             ; preds = %bb.b
  %i.w = tail call noalias ptr @_mi_malloc_generic(ptr noundef %i.b, i64 noundef range(i64 1025, 0) %1, i64 noundef 1, ptr noundef null) #24
  br label %mi_theap_rezalloc.exit

bb.j:                                             ; preds = %bb.a
  %i.x = tail call ptr @_mi_theap_realloc_zero(ptr noundef %i.b, ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext true) #25
  br label %mi_theap_rezalloc.exit

mi_theap_rezalloc.exit:                           ; preds = %bb.d, %bb.e, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi ptr [ %i.x, %bb.j ], [ %i.w, %bb.i ], [ %i.n, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %bb.h ], [ %i.j, %bb.g ]
  ret ptr %.0.i
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_recalloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = tail call fastcc ptr @mi_theap_recalloc(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2) #25
  ret ptr %i.c
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc ptr @mi_theap_recalloc(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult i64 %storemerge.i.ph, 1025
  br i1 %i.e, label %bb.e, label %bb.k, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw nsw i64 %storemerge.i.ph, 7
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !29
  %i.n = icmp eq ptr %i.k, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noalias ptr @_mi_malloc_generic(ptr noundef nonnull %0, i64 noundef %storemerge.i.ph, i64 noundef 1, ptr noundef null) #24
  br label %mi_count_size_overflow.exit

bb.g:                                             ; preds = %bb.e
  %.val.i.i.i = load i64, ptr %i.k, align 8, !tbaa !31
  %i.p = inttoptr i64 %.val.i.i.i to ptr
  store i64 0, ptr %i.k, align 8, !tbaa !31
  store ptr %i.p, ptr %i.j, align 8, !tbaa !26
  %i.q = add i64 %i.m, 1
  store i64 %i.q, ptr %i.l, align 8, !tbaa !27
  %i.r = getelementptr i8, ptr %i.i, i64 40
  %.val3.i.i.i = load i64, ptr %i.r, align 8, !tbaa !33 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 63
  %i.t = load i8, ptr %i.s, align 1, !tbaa !34, !range !35, !noundef !36
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %mi_count_size_overflow.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 8) ]
  %i.v = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !37
  %.not.i.i.i4.i.i.i = icmp ugt i64 %.val3.i.i.i, %i.v
  br i1 %.not.i.i.i4.i.i.i, label %bb.j, label %bb.i, !prof !32

bb.i:                                             ; preds = %bb.h
  %i.w = tail call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.k, i64 %.val3.i.i.i) #23, !srcloc !38 ; 0 uses
  br label %mi_count_size_overflow.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %.val3.i.i.i, i1 false)
  br label %mi_count_size_overflow.exit

bb.k:                                             ; preds = %bb.d
  %i.x = tail call noalias ptr @_mi_malloc_generic(ptr noundef %0, i64 noundef range(i64 1025, 0) %storemerge.i.ph, i64 noundef 1, ptr noundef null) #24
  br label %mi_count_size_overflow.exit

bb.l:                                             ; preds = %bb.c
  %i.y = tail call ptr @_mi_theap_realloc_zero(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %storemerge.i.ph, i1 noundef zeroext true) #25
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.y, %bb.l ], [ %i.x, %bb.k ], [ %i.o, %bb.f ], [ %i.k, %bb.g ], [ %i.k, %bb.j ], [ %i.k, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nooutline nounwind uwtable
define hidden ptr @mi_heap_realloc(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @__mi_theap_cached)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %_mi_heap_theap.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @_mi_heap_theap_get_or_init(ptr noundef %0) #26
  br label %_mi_heap_theap.exit

_mi_heap_theap.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
end_hunk_0
