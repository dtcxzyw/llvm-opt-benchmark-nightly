Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/mem?download=true
inline.NumInlined: 13
inline.NumDeleted: 3
begin_hunk_0_@CRYPTO_get_mem_functions
define void @CRYPTO_get_mem_functions(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @malloc_impl, align 8, !tbaa !9
  store ptr %i.a, ptr %0, align 8, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8 = icmp eq ptr %1, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load ptr, ptr @realloc_impl, align 8, !tbaa !9
  store ptr %i.b, ptr %1, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not9 = icmp eq ptr %2, null
  br i1 %.not9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr @free_impl, align 8, !tbaa !9
  store ptr %i.c, ptr %2, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define noalias ptr @CRYPTO_malloc(i64 noundef %0, ptr noundef %1, i32 noundef %2) #2 {
bb.a:
  %i.a = load ptr, ptr @malloc_impl, align 8, !tbaa !9 ; 2 uses
  %.not = icmp eq ptr %i.a, @CRYPTO_malloc
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(i64 noundef %0, ptr noundef %1, i32 noundef %2) #11 ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp eq i64 %0, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %ossl_report_alloc_err.exit, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %0, 0
  br i1 %i.e, label %ossl_report_alloc_err.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %.b = load i1, ptr @allow_customize, align 4
  br i1 %.b, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i1 true, ptr @allow_customize, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = tail call noalias ptr @malloc(i64 noundef %0) #12 ; 2 uses
  %.not16 = icmp eq ptr %i.f, null
  br i1 %.not16, label %bb.g, label %ossl_report_alloc_err.exit, !prof !10

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.g = icmp ne ptr %1, null
  %i.h = icmp ne i32 %2, 0
  %or.cond.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i, label %bb.h, label %ossl_report_alloc_err.exit

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef %1, i32 noundef %2, ptr noundef null) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, ptr noundef null) #11
  br label %ossl_report_alloc_err.exit

ossl_report_alloc_err.exit:                       ; preds = %bb.h, %bb.g, %bb.f, %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ %i.f, %bb.f ], [ %i.b, %bb.b ], [ null, %bb.g ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define noalias ptr @CRYPTO_zalloc(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @malloc_impl, align 8, !tbaa !9 ; 2 uses
  %.not.i = icmp eq ptr %i.a, @CRYPTO_malloc
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(i64 noundef %0, ptr noundef %1, i32 noundef %2) #11, !inline_history !11 ; 3 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp eq i64 %0, 0
  %or.cond.i = or i1 %i.d, %i.c
  br i1 %or.cond.i, label %CRYPTO_malloc.exit, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %0, 0
  br i1 %i.e, label %CRYPTO_malloc.exit.thread, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %.b.i = load i1, ptr @allow_customize, align 4
  br i1 %.b.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i1 true, ptr @allow_customize, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = tail call noalias ptr @malloc(i64 noundef %0) #12, !inline_history !11 ; 2 uses
  %.not16.i = icmp eq ptr %i.f, null
  br i1 %.not16.i, label %bb.g, label %CRYPTO_malloc.exit.thread9, !prof !10

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.g = icmp ne ptr %1, null
  %i.h = icmp ne i32 %2, 0
  %or.cond.i.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i.i, label %bb.h, label %CRYPTO_malloc.exit.thread

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_new() #11, !inline_history !11
  tail call void @ERR_set_debug(ptr noundef %1, i32 noundef %2, ptr noundef null) #11, !inline_history !11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, ptr noundef null) #11, !inline_history !11
  br label %CRYPTO_malloc.exit.thread

CRYPTO_malloc.exit:                               ; preds = %bb.b
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %CRYPTO_malloc.exit.thread, label %CRYPTO_malloc.exit.thread9

CRYPTO_malloc.exit.thread9:                       ; preds = %bb.f, %CRYPTO_malloc.exit
  %.0.i12 = phi ptr [ %i.b, %CRYPTO_malloc.exit ], [ %i.f, %bb.f ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i12, i8 0, i64 %0, i1 false)
  br label %CRYPTO_malloc.exit.thread

CRYPTO_malloc.exit.thread:                        ; preds = %bb.h, %bb.g, %bb.c, %CRYPTO_malloc.exit.thread9, %CRYPTO_malloc.exit
  %.0.i8 = phi ptr [ null, %CRYPTO_malloc.exit ], [ %.0.i12, %CRYPTO_malloc.exit.thread9 ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.h ]
  ret ptr %.0.i8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define noalias ptr @CRYPTO_aligned_alloc(i64 noundef %0, i64 noundef %1, ptr noundef initializes((0, 8)) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  store ptr null, ptr %2, align 8, !tbaa !9
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.d = icmp samesign ugt i64 %i.c, 1
  %i.e = icmp ugt i64 %1, 65536
  %or.cond = or i1 %i.e, %i.d
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp ne ptr %3, null
  %i.g = icmp ne i32 %4, 0
  %or.cond.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i, label %bb.d, label %ossl_report_alloc_err_inv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef %3, i32 noundef %4, ptr noundef null) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 524550, ptr noundef null) #11
  br label %ossl_report_alloc_err_inv.exit

bb.e:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @malloc_impl, align 8, !tbaa !9
  %i.i = icmp eq ptr %i.h, @CRYPTO_malloc
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %1, i64 8) ; 2 uses
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef %spec.store.select, i64 noundef %0) #11
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %ossl_report_alloc_err_inv.exit

bb.h:                                             ; preds = %.thread, %bb.e
  %.019 = phi i64 [ %spec.store.select, %.thread ], [ %1, %bb.e ]
  %5 = tail call ptr @ossl_malloc_align(i64 noundef %0, i64 noundef %.019, ptr noundef nonnull %2, ptr noundef %3, i32 noundef %4) #11
  br label %ossl_report_alloc_err_inv.exit

ossl_report_alloc_err_inv.exit:                   ; preds = %bb.g, %bb.d, %bb.c, %bb.h
  %.1 = phi ptr [ %i.l, %bb.g ], [ %5, %bb.h ], [ null, %bb.c ], [ null, %bb.d ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @ossl_malloc_align(i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define ptr @CRYPTO_realloc(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = load ptr, ptr @realloc_impl, align 8, !tbaa !9 ; 2 uses
  %.not = icmp eq ptr %i.a, @CRYPTO_realloc
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) #11 ; 2 uses
  %i.c = icmp eq i64 %1, 0
  %i.d = icmp ne ptr %i.b, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %CRYPTO_malloc.exit, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @malloc_impl, align 8, !tbaa !9 ; 2 uses
  %.not.i = icmp eq ptr %i.f, @CRYPTO_malloc
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr %i.f(i64 noundef %1, ptr noundef %2, i32 noundef %3) #11, !inline_history !11 ; 2 uses
  %i.h = icmp ne ptr %i.g, null
  %i.i = icmp eq i64 %1, 0
  %or.cond.i = or i1 %i.i, %i.h
  br i1 %or.cond.i, label %CRYPTO_malloc.exit, label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %CRYPTO_malloc.exit, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %.b.i = load i1, ptr @allow_customize, align 4
  br i1 %.b.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i1 true, ptr @allow_customize, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = tail call noalias ptr @malloc(i64 noundef %1) #12, !inline_history !11 ; 2 uses
  %.not16.i = icmp eq ptr %i.k, null
  br i1 %.not16.i, label %bb.j, label %CRYPTO_malloc.exit, !prof !10

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.l = icmp ne ptr %2, null
  %i.m = icmp ne i32 %3, 0
  %or.cond.i.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i.i, label %bb.k, label %CRYPTO_malloc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_new() #11, !inline_history !11
  tail call void @ERR_set_debug(ptr noundef %2, i32 noundef %3, ptr noundef null) #11, !inline_history !11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, ptr noundef null) #11, !inline_history !11
  br label %CRYPTO_malloc.exit

bb.l:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %1, 0
  br i1 %i.n, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.o = load ptr, ptr @free_impl, align 8, !tbaa !9 ; 2 uses
  %.not.i30 = icmp eq ptr %i.o, @CRYPTO_free
  br i1 %.not.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void %i.o(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #11, !inline_history !12
  br label %CRYPTO_malloc.exit

bb.o:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %0) #11, !inline_history !12
  br label %CRYPTO_malloc.exit

bb.p:                                             ; preds = %bb.l
  %i.p = tail call ptr @realloc(ptr noundef nonnull %0, i64 noundef %1) #13 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread, label %CRYPTO_malloc.exit

.thread:                                          ; preds = %bb.b, %bb.p
  %i.r = icmp ne ptr %2, null
  %i.s = icmp ne i32 %3, 0
  %or.cond.i.i = or i1 %i.r, %i.s
  br i1 %or.cond.i.i, label %bb.q, label %CRYPTO_malloc.exit

bb.q:                                             ; preds = %.thread
  tail call void @ERR_new() #11
  tail call void @ERR_set_debug(ptr noundef %2, i32 noundef %3, ptr noundef null) #11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, ptr noundef null) #11
  br label %CRYPTO_malloc.exit

CRYPTO_malloc.exit:                               ; preds = %bb.q, %.thread, %bb.o, %bb.n, %bb.k, %bb.j, %bb.i, %bb.f, %bb.e, %bb.p, %bb.b
  %.025 = phi ptr [ null, %bb.k ], [ %i.b, %bb.b ], [ %i.p, %bb.p ], [ null, %bb.o ], [ null, %bb.f ], [ %i.k, %bb.i ], [ %i.g, %bb.e ], [ null, %bb.j ], [ null, %bb.n ], [ null, %.thread ], [ null, %bb.q ]
  ret ptr %.025
}

; Function Attrs: nounwind uwtable
define void @CRYPTO_free(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
bb.a:
  %i.a = load ptr, ptr @free_impl, align 8, !tbaa !9 ; 2 uses
  %.not = icmp eq ptr %i.a, @CRYPTO_free
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.a(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define ptr @CRYPTO_clear_realloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @malloc_impl, align 8, !tbaa !9 ; 2 uses
  %.not.i = icmp eq ptr %i.b, @CRYPTO_malloc
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr %i.b(i64 noundef %2, ptr noundef %3, i32 noundef %4) #11, !inline_history !11 ; 2 uses
  %i.d = icmp ne ptr %i.c, null
  %i.e = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.e, %i.d
  br i1 %or.cond.i, label %CRYPTO_malloc.exit, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %CRYPTO_malloc.exit, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %.b.i = load i1, ptr @allow_customize, align 4
  br i1 %.b.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i1 true, ptr @allow_customize, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = tail call noalias ptr @malloc(i64 noundef %2) #12, !inline_history !11 ; 2 uses
  %.not16.i = icmp eq ptr %i.g, null
  br i1 %.not16.i, label %bb.h, label %CRYPTO_malloc.exit, !prof !10

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.h = icmp ne ptr %3, null
  %i.i = icmp ne i32 %4, 0
  %or.cond.i.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i.i, label %bb.i, label %CRYPTO_malloc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_new() #11, !inline_history !11
  tail call void @ERR_set_debug(ptr noundef %3, i32 noundef %4, ptr noundef null) #11, !inline_history !11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, ptr noundef null) #11, !inline_history !11
  br label %CRYPTO_malloc.exit

bb.j:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %.not.i32 = icmp eq i64 %1, 0
  br i1 %.not.i32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef %1) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.k = load ptr, ptr @free_impl, align 8, !tbaa !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, @CRYPTO_free
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void %i.k(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %4) #11, !inline_history !13
  br label %CRYPTO_malloc.exit

bb.o:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %0) #11, !inline_history !12
  br label %CRYPTO_malloc.exit

bb.p:                                             ; preds = %bb.j
  %i.l = icmp ult i64 %2, %1
  br i1 %i.l, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.n = sub nuw i64 %1, %2
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.m, i64 noundef %i.n) #11
  br label %CRYPTO_malloc.exit

bb.r:                                             ; preds = %bb.p
  %i.o = load ptr, ptr @malloc_impl, align 8, !tbaa !9 ; 2 uses
  %.not.i33 = icmp eq ptr %i.o, @CRYPTO_malloc
  br i1 %.not.i33, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.p = tail call ptr %i.o(i64 noundef %2, ptr noundef %3, i32 noundef %4) #11, !inline_history !11 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.w, label %bb.y

bb.t:                                             ; preds = %bb.r
  %.b.i37 = load i1, ptr @allow_customize, align 4
  br i1 %.b.i37, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i1 true, ptr @allow_customize, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.q = tail call noalias ptr @malloc(i64 noundef %2) #12, !inline_history !11 ; 2 uses
  %.not16.i38 = icmp eq ptr %i.q, null
  br i1 %.not16.i38, label %bb.w, label %bb.y, !prof !10

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.r = icmp ne ptr %3, null
  %i.s = icmp ne i32 %4, 0
  %or.cond.i.i.i35 = or i1 %i.r, %i.s
  br i1 %or.cond.i.i.i35, label %bb.x, label %CRYPTO_malloc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @ERR_new() #11, !inline_history !11
  tail call void @ERR_set_debug(ptr noundef %3, i32 noundef %4, ptr noundef null) #11, !inline_history !11
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786688, ptr noundef null) #11, !inline_history !11
  br label %CRYPTO_malloc.exit

bb.y:                                             ; preds = %bb.s, %bb.v
  %.0.i36 = phi ptr [ %i.p, %bb.s ], [ %i.q, %bb.v ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i36, ptr nonnull align 1 %0, i64 %1, i1 false)
  %.not.i40 = icmp eq i64 %1, 0
  br i1 %.not.i40, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef %1) #11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.t = load ptr, ptr @free_impl, align 8, !tbaa !9 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.t, @CRYPTO_free
  br i1 %.not.i.i41, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void %i.t(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %4) #11, !inline_history !13
  br label %CRYPTO_malloc.exit

bb.ac:                                            ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %0) #11, !inline_history !12
  br label %CRYPTO_malloc.exit

CRYPTO_malloc.exit:                               ; preds = %bb.w, %bb.x, %bb.ac, %bb.ab, %bb.o, %bb.n, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %bb.q
  %.0 = phi ptr [ %.0.i36, %bb.ac ], [ null, %bb.i ], [ %0, %bb.q ], [ null, %bb.o ], [ null, %bb.d ], [ %i.g, %bb.g ], [ %i.c, %bb.c ], [ null, %bb.h ], [ null, %bb.n ], [ %.0.i36, %bb.ab ], [ null, %bb.x ], [ null, %bb.w ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @CRYPTO_clear_free(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %CRYPTO_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %0, i64 noundef %1) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = load ptr, ptr @free_impl, align 8, !tbaa !9 ; 2 uses
  %.not.i = icmp eq ptr %i.b, @CRYPTO_free
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.b(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %3) #11, !inline_history !12
  br label %CRYPTO_free.exit

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %0) #11, !inline_history !12
  br label %CRYPTO_free.exit

CRYPTO_free.exit:                                 ; preds = %bb.f, %bb.e, %bb.a
  ret void
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @ERR_new() local_unnamed_addr #7

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{ptr @CRYPTO_malloc}
!12 = !{ptr @CRYPTO_free}
!13 = !{ptr @CRYPTO_clear_free, ptr @CRYPTO_free}
end_hunk_0
