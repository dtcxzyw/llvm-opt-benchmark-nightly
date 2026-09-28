Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/gc?download=true
inline.NumInlined: 2138
inline.NumDeleted: 500
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 49
begin_hunk_0_@heap_pages_free_unused_pages:bb.a
  %i.h = getelementptr i8, ptr %0, i64 888        ; 2 uses
  %i.i = load i64, ptr %i.g, align 8, !tbaa !113
  %.not66 = icmp eq i64 %i.i, 0
  br i1 %.not66, label %rb_darray_size.exit45.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %rb_darray_size.exit.lr.ph, %rb_darray_size.exit
  %.0395063 = phi i64 [ %.1, %rb_darray_size.exit ], [ 0, %rb_darray_size.exit.lr.ph ] ; 4 uses
  %.05162 = phi i64 [ %i.af, %rb_darray_size.exit ], [ 0, %rb_darray_size.exit.lr.ph ] ; 3 uses
  %i.j = phi i64 [ %i.ae, %rb_darray_size.exit ], [ %i.e, %rb_darray_size.exit.lr.ph ] ; 2 uses
  %i.k = phi ptr [ %i.ad, %rb_darray_size.exit ], [ %i.g, %rb_darray_size.exit.lr.ph ] ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %i.l, i64 %.05162
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115  ; 6 uses
  %i.o = getelementptr i8, ptr %i.n, i64 2
  %.val43 = load i16, ptr %i.o, align 2, !tbaa !124
  %i.p = icmp eq i16 %.val43, 0
  br i1 %i.p, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %.not41 = icmp eq i64 %i.j, 0
  br i1 %.not41, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.h, align 8, !tbaa !187
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.h, align 8, !tbaa !187
  %i.s = getelementptr i8, ptr %i.n, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !188  ; 2 uses
  %.b.i.i = load i1, ptr @heap_page_alloc_use_mmap, align 1
  br i1 %.b.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @munmap(ptr noundef %i.t, i64 noundef 65536) #46
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %heap_page_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.104) #61
  unreachable

bb.g:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.t) #46
  br label %heap_page_free.exit

heap_page_free.exit:                              ; preds = %bb.e, %bb.g
  tail call void @free(ptr noundef nonnull %i.n) #46
  %i.v = load i64, ptr %i.d, align 8, !tbaa !295
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.d, align 8, !tbaa !295
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !111
  br label %rb_darray_size.exit

bb.h:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !368
  %i.y = getelementptr i8, ptr %i.n, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !384
  store ptr %i.n, ptr %i.a, align 8, !tbaa !368
  %i.z = load i64, ptr %i.f, align 8, !tbaa !294
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !294
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.not42 = icmp eq i64 %.05162, %.0395063
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %.0395063
  store ptr %i.n, ptr %i.ab, align 8, !tbaa !115
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = add i64 %.0395063, 1
  br label %rb_darray_size.exit

rb_darray_size.exit:                              ; preds = %bb.k, %heap_page_free.exit
  %i.ad = phi ptr [ %.pre, %heap_page_free.exit ], [ %i.k, %bb.k ] ; 4 uses
  %i.ae = phi i64 [ %i.w, %heap_page_free.exit ], [ %i.j, %bb.k ]
  %.1 = phi i64 [ %.0395063, %heap_page_free.exit ], [ %i.ac, %bb.k ] ; 2 uses
  %i.af = add nuw i64 %.05162, 1                  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !113
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph, label %rb_darray_size.exit.rb_darray_size.exit45.loopexit_crit_edge

rb_darray_size.exit.rb_darray_size.exit45.loopexit_crit_edge: ; preds = %rb_darray_size.exit
  %i.ai = sub i64 %.1, %i.af
  br label %rb_darray_size.exit45.loopexit

rb_darray_size.exit45.loopexit:                   ; preds = %rb_darray_size.exit.rb_darray_size.exit45.loopexit_crit_edge, %rb_darray_size.exit.lr.ph
  %.lcssa = phi ptr [ %i.ad, %rb_darray_size.exit.rb_darray_size.exit45.loopexit_crit_edge ], [ %i.g, %rb_darray_size.exit.lr.ph ] ; 4 uses
  %i.aj = phi i64 [ %i.ai, %rb_darray_size.exit.rb_darray_size.exit45.loopexit_crit_edge ], [ 0, %rb_darray_size.exit.lr.ph ]
  %i.ak = load i64, ptr %.lcssa, align 8, !tbaa !113
  %i.al = add i64 %i.ak, %i.aj                    ; 2 uses
  store i64 %i.al, ptr %.lcssa, align 8, !tbaa !113
  %i.am = getelementptr i8, ptr %.lcssa, i64 8
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !115
  %i.ap = getelementptr i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !188
  %i.ar = getelementptr i8, ptr %0, i64 896
  %i.as = getelementptr i8, ptr %.lcssa, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !115
  %i.au = getelementptr i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !188
  %i.aw = insertelement <2 x ptr> poison, ptr %i.av, i64 0
  %i.ax = insertelement <2 x ptr> %i.aw, ptr %i.aq, i64 1
  %i.ay = ptrtoint <2 x ptr> %i.ax to <2 x i64>
  %i.az = add <2 x i64> %i.ay, <i64 8, i64 65536>
  store <2 x i64> %i.az, ptr %i.ar, align 8, !tbaa !75
  br label %bb.l

bb.l:                                             ; preds = %rb_darray_size.exit45.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @heap_page_allocate_and_initialize(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 808        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !368  ; 4 uses
  %i.d = icmp eq ptr %i.c, null                   ; 2 uses
  br i1 %i.d, label %bb.b, label %heap_page_resurrect.exit

heap_page_resurrect.exit:                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 800        ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !294
  %i.g = add i64 %i.f, -1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !294
  %i.h = getelementptr i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !384
  store ptr %i.i, ptr %i.b, align 8, !tbaa !368
  %.phi.trans.insert = getelementptr i8, ptr %i.c, i64 32
  %.pre32 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !188
  %.pre33 = ptrtoint ptr %.pre32 to i64           ; 2 uses
  %.pre34 = add i64 %.pre33, 8
  br label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 920
  %i.k = load i64, ptr %i.j, align 8, !tbaa !292
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.b.i.i = load i1, ptr @heap_page_alloc_use_mmap, align 1
  br i1 %.b.i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @mmap(ptr noundef null, i64 noundef 131072, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #46 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.l, inttoptr (i64 -1 to ptr)
  br i1 %.not27.i.i, label %heap_page_body_allocate.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, ptr noundef %i.l, i64 noundef 131072, ptr noundef nonnull @.str.148) #46 ; 0 uses
  %i.n = tail call ptr @rb_errno_ptr() #46
  store i32 0, ptr %i.n, align 4, !tbaa !26
  %i.o = getelementptr i8, ptr %i.l, i64 65536    ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = and i64 %i.p, 65535                      ; 4 uses
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.o, i64 %i.r     ; 3 uses
  %i.t = sub nuw nsw i64 65536, %i.q
  %i.u = tail call i32 @munmap(ptr noundef %i.l, i64 noundef %i.t) #46
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.149) #61
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not25.i.i = icmp eq i64 %i.q, 0
  br i1 %.not25.i.i, label %heap_page_body_allocate.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.s, i64 65536
  %i.w = tail call i32 @munmap(ptr noundef %i.v, i64 noundef %i.q) #46
  %.not26.i.i = icmp eq i32 %i.w, 0
  br i1 %.not26.i.i, label %heap_page_body_allocate.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.150) #61
  unreachable

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.x = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 65536, i64 noundef 65536) #46
  %.not.i.i.i = icmp eq i32 %i.x, 0
  %i.y = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br i1 %.not.i.i.i, label %heap_page_body_allocate.exit.i, label %heap_page_body_allocate.exit.thread.i

heap_page_body_allocate.exit.i:                   ; preds = %bb.j, %bb.h, %bb.g
  %.121.i.i = phi ptr [ %i.s, %bb.h ], [ %i.s, %bb.g ], [ %i.y, %bb.j ] ; 6 uses
  %i.z = icmp eq ptr %.121.i.i, null
  br i1 %i.z, label %heap_page_body_allocate.exit.thread.i, label %bb.k

heap_page_body_allocate.exit.thread.i:            ; preds = %heap_page_body_allocate.exit.i, %bb.j, %bb.d
  tail call void @rb_memerror() #62
  unreachable

bb.k:                                             ; preds = %heap_page_body_allocate.exit.i
  %2 = tail call noalias noundef dereferenceable_or_null(1736) ptr @calloc(i64 noundef 1, i64 noundef 1736) #64 ; 5 uses
  %i.aa = icmp eq ptr %2, null
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @heap_page_body_free(ptr noundef nonnull %.121.i.i)
  tail call void @rb_memerror() #62
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ab = ptrtoint ptr %.121.i.i to i64           ; 3 uses
  %i.ac = add i64 %i.ab, 8                        ; 5 uses
  %i.ad = add i64 %i.ab, 65536                    ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 872       ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111 ; 6 uses
  %.not.i53.i = icmp eq ptr %i.af, null           ; 2 uses
  br i1 %.not.i53.i, label %rbimpl_size_mul_or_raise.exit.i.i.i.i, label %rb_darray_size.exit.i

rb_darray_size.exit.i:                            ; preds = %bb.m
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !113 ; 4 uses
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %rb_darray_size.exit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %rb_darray_size.exit.i
  %i.ah = getelementptr i8, ptr %i.af, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i
  %.060.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %.1.i, %bb.r ] ; 2 uses
  %.04559.i = phi i64 [ 0, %.lr.ph.i ], [ %.146.i, %bb.r ] ; 2 uses
  %i.ai = add i64 %.04559.i, %.060.i
  %i.aj = lshr i64 %i.ai, 1                       ; 4 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !115
  %i.am = getelementptr i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !123 ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ac
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = add nuw i64 %i.aj, 1
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.aq = icmp ugt i64 %i.an, %i.ac
  br i1 %i.aq, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.147, ptr noundef nonnull %.121.i.i, i64 noundef %i.aj) #61
  unreachable

bb.r:                                             ; preds = %bb.p, %bb.o
  %.146.i = phi i64 [ %i.ap, %bb.o ], [ %.04559.i, %bb.p ] ; 2 uses
  %.1.i = phi i64 [ %.060.i, %bb.o ], [ %i.aj, %bb.p ] ; 3 uses
  %i.ar = icmp ult i64 %.146.i, %.1.i
  br i1 %i.ar, label %bb.n, label %rb_darray_size.exit.i.i, !llvm.loop !598

rb_darray_size.exit.i.i:                          ; preds = %bb.r, %rb_darray_size.exit.i
  %.0.lcssa.ph.i = phi i64 [ 0, %rb_darray_size.exit.i ], [ %.1.i, %bb.r ] ; 4 uses
  %i.as = getelementptr i8, ptr %i.af, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !276
  %.fr.i.i = freeze i64 %i.at                     ; 3 uses
  %i.au = icmp ult i64 %i.ag, %.fr.i.i
  br i1 %i.au, label %rb_darray_ensure_space.exit.thread.i, label %bb.s

rb_darray_ensure_space.exit.thread.i:             ; preds = %rb_darray_size.exit.i.i
  %i.av = getelementptr i8, ptr %i.af, i64 16
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %.0.lcssa.ph.i
  br label %rb_darray_size.exit56.i

bb.s:                                             ; preds = %rb_darray_size.exit.i.i
  %i.ax = icmp eq i64 %.fr.i.i, 0
  %i.ay = shl i64 %.fr.i.i, 1                     ; 3 uses
  br i1 %i.ax, label %rbimpl_size_mul_or_raise.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = icmp ugt i64 %i.ay, 2305843009213693951
  br i1 %i.az, label %bb.u, label %rbimpl_size_mul_or_raise.exit.i.i.i.i, !prof !277

bb.u:                                             ; preds = %bb.t
  tail call void @ruby_malloc_size_overflow(i64 noundef %i.ay, i64 noundef 8) #63
  unreachable

rbimpl_size_mul_or_raise.exit.i.i.i.i:            ; preds = %bb.m, %bb.s, %bb.t
  %.0.lcssa79.i = phi i64 [ %.0.lcssa.ph.i, %bb.t ], [ %.0.lcssa.ph.i, %bb.s ], [ 0, %bb.m ] ; 2 uses
  %i.ba = phi i64 [ %i.ay, %bb.t ], [ 1, %bb.s ], [ 1, %bb.m ] ; 2 uses
  %i.bb = shl nuw i64 %i.ba, 3                    ; 2 uses
  %3 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bb, i64 16) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %3, 1
  br i1 %i.bc, label %bb.v, label %rbimpl_size_add_or_raise.exit.i.i.i.i, !prof !76

bb.v:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i.i
  tail call void @ruby_malloc_add_size_overflow(i64 noundef %i.bb, i64 noundef 16) #63
  unreachable

rbimpl_size_add_or_raise.exit.i.i.i.i:            ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i.i
  %i.bd = extractvalue { i64, i1 } %3, 0
  %4 = tail call ptr @realloc(ptr noundef %i.af, i64 noundef %i.bd) #69 ; 6 uses
  %i.be = icmp eq ptr %4, null
  br i1 %i.be, label %bb.w, label %rb_darray_realloc_mul_add_without_gc.exit.i.i.i

bb.w:                                             ; preds = %rbimpl_size_add_or_raise.exit.i.i.i.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.119) #61
  unreachable

rb_darray_realloc_mul_add_without_gc.exit.i.i.i:  ; preds = %rbimpl_size_add_or_raise.exit.i.i.i.i
  br i1 %.not.i53.i, label %bb.x, label %rb_darray_ensure_space.exit.i

bb.x:                                             ; preds = %rb_darray_realloc_mul_add_without_gc.exit.i.i.i
  store i64 0, ptr %4, align 8, !tbaa !113
  br label %rb_darray_ensure_space.exit.i

rb_darray_ensure_space.exit.i:                    ; preds = %bb.x, %rb_darray_realloc_mul_add_without_gc.exit.i.i.i
  %i.bf = getelementptr i8, ptr %4, i64 8
  store i64 %i.ba, ptr %i.bf, align 8, !tbaa !276
  %i.bg = ptrtoint ptr %4 to i64
  store i64 %i.bg, ptr %i.ae, align 8
  %i.bh = getelementptr i8, ptr %4, i64 16
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %.0.lcssa79.i
  %.pre = load i64, ptr %4, align 8, !tbaa !113
  br label %rb_darray_size.exit56.i

rb_darray_size.exit56.i:                          ; preds = %rb_darray_ensure_space.exit.thread.i, %rb_darray_ensure_space.exit.i
  %i.bj = phi ptr [ %i.bi, %rb_darray_ensure_space.exit.i ], [ %i.aw, %rb_darray_ensure_space.exit.thread.i ] ; 2 uses
  %.0.lcssa8086.i = phi i64 [ %.0.lcssa79.i, %rb_darray_ensure_space.exit.i ], [ %.0.lcssa.ph.i, %rb_darray_ensure_space.exit.thread.i ] ; 2 uses
  %i.bk = phi i64 [ %.pre, %rb_darray_ensure_space.exit.i ], [ %i.ag, %rb_darray_ensure_space.exit.thread.i ]
  %i.bl = sub i64 %i.bk, %.0.lcssa8086.i          ; 3 uses
  %i.bm = icmp ugt i64 %i.bl, 2305843009213693951
  br i1 %i.bm, label %bb.y, label %rbimpl_size_mul_or_raise.exit.i, !prof !76

bb.y:                                             ; preds = %rb_darray_size.exit56.i
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.bl) #63
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %rb_darray_size.exit56.i
  %i.bn = getelementptr i8, ptr %i.bj, i64 8
  %i.bo = shl nuw i64 %i.bl, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bn, ptr noundef nonnull align 1 %i.bj, i64 noundef %i.bo, i1 noundef false) #46
  %i.bp = load ptr, ptr %i.ae, align 8, !tbaa !111 ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = getelementptr [8 x i8], ptr %i.bq, i64 %.0.lcssa8086.i
  store ptr %2, ptr %i.br, align 8, !tbaa !115
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !113
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !113
  %i.bu = getelementptr i8, ptr %0, i64 896       ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !75
  %i.bw = add i64 %i.bv, -1
  %or.cond.not.i = icmp ult i64 %i.bw, %i.ac
  br i1 %or.cond.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i
  store i64 %i.ac, ptr %i.bu, align 8, !tbaa !75
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %rbimpl_size_mul_or_raise.exit.i
  %i.bx = getelementptr i8, ptr %0, i64 904       ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !75
  %i.bz = icmp ult i64 %i.by, %i.ad
  br i1 %i.bz, label %bb.ab, label %heap_page_allocate.exit

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.ad, ptr %i.bx, align 8, !tbaa !75
  br label %heap_page_allocate.exit

heap_page_allocate.exit:                          ; preds = %bb.aa, %bb.ab
  %i.ca = getelementptr i8, ptr %2, i64 32
  store ptr %.121.i.i, ptr %i.ca, align 8, !tbaa !188
  store ptr %2, ptr %.121.i.i, align 8, !tbaa !131
  %i.cb = getelementptr i8, ptr %0, i64 880       ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !301
  %i.cd = add i64 %i.cc, 1
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !301
  br label %bb.ac

bb.ac:                                            ; preds = %heap_page_allocate.exit, %heap_page_resurrect.exit
  %.pre-phi35 = phi i64 [ %i.ac, %heap_page_allocate.exit ], [ %.pre34, %heap_page_resurrect.exit ] ; 2 uses
  %.pre-phi = phi i64 [ %i.ab, %heap_page_allocate.exit ], [ %.pre33, %heap_page_resurrect.exit ] ; 2 uses
  %.0.ph = phi ptr [ %2, %heap_page_allocate.exit ], [ %i.c, %heap_page_resurrect.exit ] ; 10 uses
  %i.ce = urem i64 %.pre-phi35, 40                ; 2 uses
  %.not.i20 = icmp eq i64 %i.ce, 0
  br i1 %.not.i20, label %._crit_edge2.i, label %bb.ad

._crit_edge2.i:                                   ; preds = %bb.ac
  %.pre.i23 = load i16, ptr %1, align 8, !tbaa !166
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cf = sub i64 %.pre-phi, %i.ce                ; 2 uses
  %i.cg = add i64 %i.cf, 48                       ; 2 uses
  %i.ch = and i64 %i.cg, 65528
  %.off.i = add nsw i64 %i.ch, -40
  %i.ci = icmp ult i64 %.off.i, 40
  %.pre3.i = load i16, ptr %1, align 8, !tbaa !166 ; 3 uses
  br i1 %i.ci, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cj = sext i16 %.pre3.i to i64
  %i.ck = add i64 %i.cf, 8
  %i.cl = add i64 %i.ck, %i.cj
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge2.i
  %i.cm = phi i16 [ %.pre.i23, %._crit_edge2.i ], [ %.pre3.i, %bb.ae ], [ %.pre3.i, %bb.ad ] ; 2 uses
  %.1.i21 = phi i64 [ %.pre-phi35, %._crit_edge2.i ], [ %i.cl, %bb.ae ], [ %i.cg, %bb.ad ] ; 5 uses
  %.neg.i = add i64 %.pre-phi, 65536
  %i.cn = sub i64 %.neg.i, %.1.i21
  %i.co = sext i16 %i.cm to i64                   ; 3 uses
  %i.cp = udiv i64 %i.cn, %i.co                   ; 3 uses
  %i.cq = getelementptr i8, ptr %.0.ph, i64 40
  store i64 %.1.i21, ptr %i.cq, align 8, !tbaa !123
  %i.cr = trunc i64 %i.cp to i16                  ; 2 uses
  %i.cs = getelementptr i8, ptr %.0.ph, i64 2
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !124
  store i16 %i.cm, ptr %.0.ph, align 8, !tbaa !122
  %i.ct = getelementptr i8, ptr %.0.ph, i64 16
  store ptr %1, ptr %i.ct, align 8, !tbaa !373
  %i.cu = getelementptr i8, ptr %.0.ph, i64 48    ; 2 uses
  store ptr null, ptr %i.cu, align 8, !tbaa !375
  %i.cv = shl nsw i64 %i.co, 32
  %sext.i = mul i64 %i.cv, %i.cp
  %i.cw = ashr exact i64 %sext.i, 32
  %i.cx = add i64 %i.cw, %.1.i21                  ; 2 uses
  %i.cy = icmp ult i64 %.1.i21, %i.cx
  br i1 %i.cy, label %.lr.ph.i22, label %heap_add_page.exit

._crit_edge.i:                                    ; preds = %.lr.ph.i22
  store ptr %i.da, ptr %i.cu, align 8, !tbaa !375
  br label %heap_add_page.exit

.lr.ph.i22:                                       ; preds = %bb.af, %.lr.ph.i22
  %i.cz = phi ptr [ %i.da, %.lr.ph.i22 ], [ null, %bb.af ]
  %.01.i = phi i64 [ %i.dc, %.lr.ph.i22 ], [ %.1.i21, %bb.af ] ; 2 uses
  %i.da = inttoptr i64 %.01.i to ptr              ; 4 uses
  store i64 0, ptr %i.da, align 8, !tbaa !374
  %i.db = getelementptr i8, ptr %i.da, i64 8
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !198
  %i.dc = add i64 %.01.i, %i.co                   ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %i.cx
  br i1 %i.dd, label %.lr.ph.i22, label %._crit_edge.i, !llvm.loop !10

heap_add_page.exit:                               ; preds = %bb.af, %._crit_edge.i
  %i.de = getelementptr i8, ptr %.0.ph, i64 4
  store i16 %i.cr, ptr %i.de, align 4, !tbaa !386
  %i.df = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !418
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !418
  %i.di = getelementptr i8, ptr %1, i64 88
  %i.dj = getelementptr i8, ptr %.0.ph, i64 56    ; 3 uses
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !151
  %i.dk = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !391 ; 2 uses
  %i.dm = getelementptr i8, ptr %.0.ph, i64 64
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !391
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !151
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !391
  %i.dn = getelementptr i8, ptr %1, i64 136       ; 2 uses
  %i.do = and i64 %i.cp, 65535                    ; 2 uses
  %i.dp = load <2 x i64>, ptr %i.dn, align 8, !tbaa !75
  %i.dq = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.do, i64 1
  %i.dr = add <2 x i64> %i.dp, %i.dq
  store <2 x i64> %i.dr, ptr %i.dn, align 8, !tbaa !75
  %i.ds = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !377
  %i.du = getelementptr i8, ptr %.0.ph, i64 24
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !384
  store ptr %.0.ph, ptr %i.ds, align 8, !tbaa !377
  br i1 %i.d, label %.sink.split, label %bb.ag

.sink.split:                                      ; preds = %heap_add_page.exit
  %i.dv = getelementptr i8, ptr %0, i64 920       ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !292
  %.sink = tail call i64 @llvm.usub.sat.i64(i64 %i.dw, i64 %i.do)
  store i64 %.sink, ptr %i.dv, align 8, !tbaa !292
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.b, %heap_add_page.exit
  %i.dx = phi i32 [ 1, %heap_add_page.exit ], [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %i.dx
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #52

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @gc_start(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 10 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.rusage, align 8             ; 6 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.rusage, align 8             ; 6 uses
  %6 = alloca %struct.timespec, align 8           ; 6 uses
  %i.c = alloca [26 x i64], align 16              ; 16 uses
  %7 = alloca %struct.rusage, align 8             ; 6 uses
  %8 = alloca %struct.rusage, align 8             ; 6 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.rb_trace_arg_struct, align 8 ; 10 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %11 = alloca %struct.rb_trace_arg_struct, align 8 ; 10 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = lshr i32 %1, 16
  %.lobit = and i32 %i.g, 1                       ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 872        ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %rb_darray_size.exit.thread, label %rb_darray_size.exit

rb_darray_size.exit:                              ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !tbaa !113
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %rb_darray_size.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_darray_size.exit
  %i.k = and i32 %1, 1024
  %.not60 = icmp eq i32 %i.k, 0
  br i1 %.not60, label %bb.c, label %ready_to_gc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 28
  %i.m = load i16, ptr %i.l, align 4
  %i.n = and i16 %i.m, 40
  %or.cond.i = icmp eq i16 %i.n, 0
  br i1 %or.cond.i, label %ready_to_gc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 920        ; 5 uses
  %i.q = getelementptr i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !377
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.d, label %heap_ready_to_gc.exit.i

bb.d:                                             ; preds = %.preheader.i
  %i.s = tail call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %0, ptr noundef nonnull %i.o)
  %.not6.i.i = icmp eq i32 %i.s, 0
  br i1 %.not6.i.i, label %bb.e, label %heap_ready_to_gc.exit.i

bb.e:                                             ; preds = %bb.d
  store i64 1, ptr %i.p, align 8, !tbaa !292
  %i.t = tail call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %0, ptr noundef nonnull %i.o) ; 0 uses
  br label %heap_ready_to_gc.exit.i

heap_ready_to_gc.exit.i:                          ; preds = %bb.e, %bb.d, %.preheader.i
  %i.u = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 272
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !377
  %.not.i.1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.1.i, label %bb.f, label %heap_ready_to_gc.exit.1.i

bb.f:                                             ; preds = %heap_ready_to_gc.exit.i
  %i.x = tail call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %0, ptr noundef nonnull %i.u)
  %.not6.i.1.i = icmp eq i32 %i.x, 0
  br i1 %.not6.i.1.i, label %bb.g, label %heap_ready_to_gc.exit.1.i

bb.g:                                             ; preds = %bb.f
  store i64 1, ptr %i.p, align 8, !tbaa !292
  %i.y = tail call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %0, ptr noundef nonnull %i.u) ; 0 uses
  br label %heap_ready_to_gc.exit.1.i

heap_ready_to_gc.exit.1.i:                        ; preds = %bb.g, %bb.f, %heap_ready_to_gc.exit.i
  %i.z = getelementptr i8, ptr %0, i64 344        ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 424
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !377
  %.not.i.2.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.2.i, label %bb.h, label %heap_ready_to_gc.exit.2.i

bb.h:                                             ; preds = %heap_ready_to_gc.exit.1.i
  %i.ac = tail call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %0, ptr noundef nonnull %i.z)
  %.not6.i.2.i = icmp eq i32 %i.ac, 0
  br i1 %.not6.i.2.i, label %bb.i, label %heap_ready_to_gc.exit.2.i

bb.i:                                             ; preds = %bb.h
  store i64 1, ptr %i.p, align 8, !tbaa !292
  %i.ad = tail call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %0, ptr noundef nonnull %i.z) ; 0 uses
  br label %heap_ready_to_gc.exit.2.i

heap_ready_to_gc.exit.2.i:                        ; preds = %bb.i, %bb.h, %heap_ready_to_gc.exit.1.i
  %i.ae = getelementptr i8, ptr %0, i64 496       ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 576
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !377
  %.not.i.3.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.3.i, label %bb.j, label %heap_ready_to_gc.exit.3.i

bb.j:                                             ; preds = %heap_ready_to_gc.exit.2.i
  %i.ah = tail call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %0, ptr noundef nonnull %i.ae)
  %.not6.i.3.i = icmp eq i32 %i.ah, 0
  br i1 %.not6.i.3.i, label %bb.k, label %heap_ready_to_gc.exit.3.i

bb.k:                                             ; preds = %bb.j
  store i64 1, ptr %i.p, align 8, !tbaa !292
  %i.ai = tail call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) ; 0 uses
  br label %heap_ready_to_gc.exit.3.i

heap_ready_to_gc.exit.3.i:                        ; preds = %bb.k, %bb.j, %heap_ready_to_gc.exit.2.i
  %i.aj = getelementptr i8, ptr %0, i64 648       ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 728
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !377
  %.not.i.4.i = icmp eq ptr %i.al, null
  br i1 %.not.i.4.i, label %bb.l, label %rb_darray_size.exit.thread

bb.l:                                             ; preds = %heap_ready_to_gc.exit.3.i
  %i.am = tail call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %0, ptr noundef nonnull %i.aj)
  %.not6.i.4.i = icmp eq i32 %i.am, 0
  br i1 %.not6.i.4.i, label %bb.m, label %rb_darray_size.exit.thread

bb.m:                                             ; preds = %bb.l
  store i64 1, ptr %i.p, align 8, !tbaa !292
  %i.an = tail call fastcc i32 @heap_page_allocate_and_initialize(ptr noundef nonnull %0, ptr noundef nonnull %i.aj) ; 0 uses
  br label %rb_darray_size.exit.thread

ready_to_gc.exit:                                 ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  store i32 0, ptr %i.f, align 4, !tbaa !26
  %i.ao = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !29
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %bb.n, label %rb_gc_vm_lock.exit.i

bb.n:                                             ; preds = %ready_to_gc.exit
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.f) #46
  %.pre.i.i = load i32, ptr %i.f, align 4, !tbaa !26
  br label %rb_gc_vm_lock.exit.i

rb_gc_vm_lock.exit.i:                             ; preds = %bb.n, %ready_to_gc.exit
  %i.ap = phi i32 [ 0, %ready_to_gc.exit ], [ %.pre.i.i, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  call void @rb_vm_barrier() #46
  %i.aq = getelementptr i8, ptr %0, i64 28        ; 21 uses
  %i.ar = load i16, ptr %i.aq, align 4            ; 2 uses
  %i.as = and i16 %i.ar, 32
  %.not.i81 = icmp eq i16 %i.as, 0
  br i1 %.not.i81, label %bb.p, label %bb.o, !prof !190

bb.o:                                             ; preds = %rb_gc_vm_lock.exit.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.106) #61
  unreachable

bb.p:                                             ; preds = %rb_gc_vm_lock.exit.i
  %i.at = or disjoint i16 %i.ar, 32               ; 4 uses
  store i16 %i.at, ptr %i.aq, align 4
  %i.au = load i32, ptr @ruby_vm_event_flags, align 4, !tbaa !26
  %i.av = and i32 %i.au, 33554432
  %.not12.i.i = icmp eq i32 %i.av, 0
  br i1 %.not12.i.i, label %gc_enter.exit, label %bb.q, !prof !190

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aw = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  store volatile ptr %i.ax, ptr %i.e, align 8, !tbaa !31
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.e, align 8, !tbaa !31 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ay = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !219 ; 3 uses
  %.not.i.i82 = icmp eq ptr %i.az, null
  br i1 %.not.i.i82, label %gc_enter.exit, label %rb_ec_hooks.exit.i.i

rb_ec_hooks.exit.i.i:                             ; preds = %bb.q
  %i.ba = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.ba, align 8, !tbaa !44, !nonnull !45, !noundef !45
  %i.bb = getelementptr i8, ptr %.val.i.i, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !220 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 1120
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !221
  %i.bf = and i32 %i.be, 33554432
  %.not11.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i, label %gc_enter.exit, label %bb.r, !prof !190

bb.r:                                             ; preds = %rb_ec_hooks.exit.i.i
  %i.bg = getelementptr i8, ptr %i.bc, i64 1112
  %i.bh = getelementptr i8, ptr %i.az, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #46
  store i32 33554432, ptr %11, align 8, !tbaa !226
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, ptr %i.bj, align 8, !tbaa !227
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.az, ptr %i.bk, align 8, !tbaa !228
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.bi, ptr %i.bl, align 8, !tbaa !229
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 32
end_hunk_0
begin_hunk_1_@heap_check_moved_i:bb.a

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !128
  %.not.2.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.2.not.i.i, label %bb.j, label %has_sweeping_pages.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !128
  %.not.3.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.3.not.i.i, label %has_sweeping_pages.exit.i, label %has_sweeping_pages.exit.thread.i

has_sweeping_pages.exit.i:                        ; preds = %bb.j
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !128
  %.not.4.not.i.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.4.not.i.not.i, label %rb_gc_impl_garbage_object_p.exit.thread, label %has_sweeping_pages.exit.thread.i

has_sweeping_pages.exit.thread.i:                 ; preds = %has_sweeping_pages.exit.i, %bb.j, %bb.i, %bb.h, %.split.i
  %i.az = load ptr, ptr %i.o, align 65536, !tbaa !131 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 12
  %i.bb = load i8, ptr %i.ba, align 4
  %i.bc = and i8 %i.bb, 1
  %.not.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i, label %rb_gc_impl_garbage_object_p.exit.thread, label %rb_gc_impl_garbage_object_p.exit

rb_gc_impl_garbage_object_p.exit:                 ; preds = %has_sweeping_pages.exit.thread.i
  %i.bd = getelementptr i8, ptr %i.az, i64 280
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %.zext2.i.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !75
  %i.bg = and i64 %i.bf, %i.t
  %.not12.i = icmp eq i64 %i.bg, 0
  br i1 %.not12.i, label %.loopexit, label %rb_gc_impl_garbage_object_p.exit.thread

rb_gc_impl_garbage_object_p.exit.thread:          ; preds = %has_sweeping_pages.exit.i, %has_sweeping_pages.exit.thread.i, %rb_gc_impl_garbage_object_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.bh = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !29
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %bb.k, label %rb_vm_lock_enter.exit.i

bb.k:                                             ; preds = %rb_gc_impl_garbage_object_p.exit.thread
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #46
  br label %rb_vm_lock_enter.exit.i

rb_vm_lock_enter.exit.i:                          ; preds = %bb.k, %rb_gc_impl_garbage_object_p.exit.thread
  %i.bi = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !77 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 1248
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !93 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 28
  %.val.us.i = load i16, ptr %i.bl, align 4
  %i.bm = and i16 %.val.us.i, 32
  %.not9.us.i = icmp eq i16 %i.bm, 0
  br i1 %.not9.us.i, label %bb.l, label %.split.us.i

.split.us.i:                                      ; preds = %rb_vm_lock_enter.exit.i, %rb_vm_lock_enter.exit.i.us
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.10) #61
  unreachable

bb.l:                                             ; preds = %rb_vm_lock_enter.exit.i
  %i.bn = getelementptr i8, ptr %i.bi, i64 1256   ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  store ptr %i.j, ptr %4, align 8, !tbaa !135
  store ptr @reachable_object_check_moved_i, ptr %i.i, align 8, !tbaa !136
  store ptr %4, ptr %i.bn, align 8, !tbaa !133
  call fastcc void @rb_gc_mark_children(ptr noundef nonnull %i.bk, i64 noundef %.01522)
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !133
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  %i.bp = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !29
  %.not.i.i8.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i8.i, label %.loopexit.sink.split.sink.split, label %.loopexit.sink.split

.loopexit.sink.split.sink.split:                  ; preds = %bb.l, %bb.g
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #46
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.loopexit.sink.split.sink.split, %bb.l, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader.split.us, %.preheader.split.us, %.preheader.split.us, %rb_gc_impl_garbage_object_p.exit.us, %rb_gc_impl_garbage_object_p.exit, %.preheader.split, %.preheader.split, %.preheader.split, %bb.b
  %i.bq = add i64 %.01522, %2                     ; 2 uses
  %.not = icmp eq i64 %i.bq, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !677

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @reachable_object_check_moved_i(i64 noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !126
  %i.c = and i64 %i.b, 31
  %i.d = icmp eq i64 %i.c, 30
  br i1 %i.d, label %rb_gc_impl_location.exit, label %bb.b

rb_gc_impl_location.exit:                         ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = tail call ptr @rb_obj_info(i64 noundef %i.e)
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !271
  %i.i = tail call ptr @rb_obj_info(i64 noundef %i.h)
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.463, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #61
  unreachable

bb.b:                                             ; preds = %bb.a
  ret void
}

declare i64 @rb_float_new_in_heap(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #37

declare i64 @rb_str_buf_new(i64 noundef) local_unnamed_addr #11

declare i64 @rb_str_buf_append(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #11

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #11

declare i64 @rb_io_write(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #37

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #38

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #37

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind sspstrong allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind sspstrong allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold noreturn nounwind optsize sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind sspstrong allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind sspstrong allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { cold nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #38 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #40 = { nocallback nofree nosync nounwind willreturn }
attributes #41 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { inlinehint nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #46 = { nounwind }
attributes #47 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #48 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #49 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { norecurse nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { inlinehint nounwind sspstrong memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #58 = { noreturn nounwind }
attributes #59 = { cold noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #60 = { mustprogress nofree nounwind sspstrong willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #61 = { cold noreturn nounwind }
attributes #62 = { cold noreturn }
attributes #63 = { noreturn }
attributes #64 = { nounwind allocsize(0,1) }
attributes #65 = { nounwind allocsize(0) }
attributes #66 = { cold nounwind }
attributes #67 = { allocsize(0,1) }
attributes #68 = { nounwind willreturn memory(read) }
attributes #69 = { nounwind allocsize(1) }
attributes #70 = { nounwind returns_twice }
attributes #71 = { allocsize(1,2) }
attributes #72 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #73 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{!0, !150}
!1 = distinct !{!1, !150}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !150}
!5 = distinct !{!5, !150}
!6 = distinct !{!6, !150}
!7 = distinct !{null}
!8 = distinct !{!8, !150}
!9 = distinct !{!9, !150}
!10 = distinct !{!10, !150}
!11 = distinct !{!11, !150}
!12 = distinct !{!12, !150}
!13 = distinct !{!13, !150}
!14 = distinct !{null}
!15 = distinct !{!15, !150}
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!22 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"any pointer", !24, i64 0}
!28 = !{!"p1 _ZTS16rb_ractor_struct", !27, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"p1 _ZTS27rb_execution_context_struct", !27, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"p1 long", !27, i64 0}
!33 = !{!"long", !24, i64 0}
!34 = !{!"p1 _ZTS23rb_control_frame_struct", !27, i64 0}
!35 = !{!"p1 _ZTS9rb_vm_tag", !27, i64 0}
!36 = !{!"p1 _ZTS15rb_fiber_struct", !27, i64 0}
!37 = !{!"p1 _ZTS16rb_thread_struct", !27, i64 0}
!38 = !{!"long long", !24, i64 0}
!39 = !{!"p1 _ZTS11rb_id_table", !27, i64 0}
!40 = !{!"p1 _ZTS19rb_trace_arg_struct", !27, i64 0}
!41 = !{!"", !33, i64 0, !33, i64 8}
!42 = !{!"", !32, i64 0, !32, i64 8, !33, i64 16, !24, i64 24}
!43 = !{!"rb_execution_context_struct", !32, i64 0, !33, i64 8, !34, i64 16, !35, i64 24, !25, i64 32, !25, i64 36, !36, i64 40, !37, i64 48, !38, i64 56, !38, i64 64, !39, i64 72, !33, i64 80, !33, i64 88, !33, i64 96, !32, i64 104, !33, i64 112, !40, i64 120, !33, i64 128, !33, i64 136, !24, i64 144, !25, i64 145, !33, i64 152, !41, i64 160, !42, i64 176}
!44 = !{!43, !37, i64 48}
!45 = !{}
!46 = !{!"p1 _ZTS14ccan_list_node", !27, i64 0}
!47 = !{!"ccan_list_node", !46, i64 0, !46, i64 8}
!48 = !{!"p1 _ZTS12rb_vm_struct", !27, i64 0}
!49 = !{!"p1 _ZTS16rb_native_thread", !27, i64 0}
!50 = !{!"", !47, i64 0, !47, i64 16, !47, i64 32, !47, i64 48, !47, i64 64}
!51 = !{!"", !33, i64 0, !25, i64 8, !25, i64 12, !25, i64 16}
!52 = !{!"rb_thread_sched_waiting", !25, i64 0, !51, i64 8, !47, i64 32}
!53 = !{!"_Bool", !24, i64 0}
!54 = !{!"p1 _ZTS17coroutine_context", !27, i64 0}
!55 = !{!"rb_thread_sched_item", !50, i64 0, !52, i64 80, !25, i64 128, !53, i64 132, !53, i64 133, !27, i64 136, !54, i64 144}
!56 = !{!"p1 _ZTS15rb_calling_info", !27, i64 0}
!57 = !{!"rb_unblock_callback", !27, i64 0, !27, i64 8}
!58 = !{!"p1 _ZTS15rb_mutex_struct", !27, i64 0}
!59 = !{!"ccan_list_head", !47, i64 0}
!60 = !{!"p1 _ZTS15rb_waiting_list", !27, i64 0}
!61 = !{!"any p2 pointer", !27, i64 0}
!62 = !{!"rb_ext_config", !53, i64 0}
!63 = !{!"rb_thread_struct", !47, i64 0, !33, i64 16, !28, i64 24, !48, i64 32, !49, i64 40, !30, i64 48, !55, i64 56, !53, i64 208, !25, i64 212, !33, i64 216, !56, i64 224, !33, i64 232, !33, i64 240, !25, i64 248, !25, i64 248, !25, i64 248, !25, i64 248, !25, i64 248, !25, i64 248, !24, i64 249, !25, i64 252, !27, i64 256, !33, i64 264, !33, i64 272, !33, i64 280, !33, i64 288, !24, i64 296, !57, i64 336, !33, i64 352, !58, i64 360, !59, i64 368, !60, i64 384, !24, i64 392, !25, i64 416, !36, i64 424, !33, i64 432, !25, i64 440, !33, i64 448, !61, i64 456, !62, i64 464}
!64 = !{!63, !28, i64 24}
!65 = !{!"p1 _ZTS20rb_event_hook_struct", !27, i64 0}
!66 = !{!"rb_hook_list_struct", !65, i64 0, !25, i64 8, !25, i64 12, !25, i64 16, !53, i64 20}
!67 = !{!"p1 _ZTS8st_table", !27, i64 0}
!68 = !{!"rb_ractor_pub", !33, i64 0, !25, i64 8, !66, i64 16, !67, i64 40, !25, i64 48}
!69 = !{!"p1 _ZTS12ractor_queue", !27, i64 0}
!70 = !{!"rb_ractor_sync", !24, i64 0, !69, i64 40, !59, i64 48, !33, i64 64, !67, i64 72, !33, i64 80, !59, i64 88, !28, i64 104, !33, i64 112, !53, i64 120}
!71 = !{!"rb_thread_sched", !24, i64 0, !37, i64 40, !53, i64 48, !53, i64 49, !53, i64 50, !59, i64 56, !25, i64 72, !47, i64 80}
!72 = !{!"", !59, i64 0, !25, i64 16, !25, i64 20, !25, i64 24, !71, i64 32, !30, i64 128, !37, i64 136}
!73 = !{!"rb_ractor_struct", !68, i64 0, !70, i64 56, !72, i64 184, !33, i64 328, !33, i64 336, !33, i64 344, !25, i64 352, !47, i64 360, !38, i64 376, !67, i64 384, !39, i64 392, !33, i64 400, !33, i64 408, !33, i64 416, !33, i64 424, !33, i64 432, !33, i64 440, !53, i64 448, !27, i64 456}
!74 = !{!73, !27, i64 456}
!75 = !{!33, !33, i64 0}
!76 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!77 = !{!48, !48, i64 0}
!78 = !{!"", !24, i64 0, !28, i64 40, !25, i64 48, !24, i64 56, !53, i64 104}
!79 = !{!"", !24, i64 0, !28, i64 40, !53, i64 48, !24, i64 56, !25, i64 104, !25, i64 108, !25, i64 112, !25, i64 116, !59, i64 120, !25, i64 136, !59, i64 144, !59, i64 160, !59, i64 176, !53, i64 192, !24, i64 200, !24, i64 248, !53, i64 296, !25, i64 300, !25, i64 304, !28, i64 312, !25, i64 320}
!80 = !{!"", !59, i64 0, !25, i64 16, !25, i64 20, !28, i64 24, !37, i64 32, !78, i64 40, !79, i64 152}
!81 = !{!"p1 _ZTS18global_object_list", !27, i64 0}
!82 = !{!"p1 _ZTS13rb_box_struct", !27, i64 0}
!83 = !{!"", !24, i64 0}
!84 = !{!"p1 _ZTS22rb_postponed_job_queue", !27, i64 0}
!85 = !{!"p1 _ZTS11rb_objspace", !27, i64 0}
!86 = !{!"p1 _ZTS24gc_mark_func_data_struct", !27, i64 0}
!87 = !{!"", !85, i64 0, !86, i64 8}
!88 = !{!"p1 _ZTS15rb_at_exit_list", !27, i64 0}
!89 = !{!"p1 _ZTS19rb_builtin_function", !27, i64 0}
!90 = !{!"p1 _ZTS9set_table", !27, i64 0}
!91 = !{!"", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24}
!92 = !{!"rb_vm_struct", !33, i64 0, !80, i64 8, !27, i64 488, !38, i64 496, !25, i64 504, !25, i64 508, !25, i64 508, !25, i64 508, !25, i64 508, !33, i64 512, !81, i64 520, !24, i64 528, !82, i64 568, !82, i64 576, !67, i64 584, !83, i64 592, !66, i64 1112, !84, i64 1136, !25, i64 1144, !59, i64 1152, !24, i64 1168, !33, i64 1208, !33, i64 1216, !33, i64 1224, !33, i64 1232, !25, i64 1240, !87, i64 1248, !88, i64 1264, !89, i64 1272, !67, i64 1280, !39, i64 1288, !67, i64 1296, !90, i64 1304, !90, i64 1312, !39, i64 1320, !33, i64 1328, !24, i64 1336, !91, i64 9520}
!93 = !{!92, !85, i64 1248}
!94 = !{!"verify_internal_consistency_struct", !85, i64 0, !25, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48}
!95 = !{!94, !85, i64 0}
!96 = !{!"", !33, i64 0}
!97 = !{!"rb_gc_config", !53, i64 0}
!98 = !{!"", !25, i64 0, !25, i64 0, !25, i64 0, !25, i64 0, !25, i64 0, !25, i64 0, !25, i64 0, !25, i64 1, !25, i64 1, !25, i64 1, !25, i64 1, !25, i64 1}
!99 = !{!"p1 _ZTS9heap_page", !27, i64 0}
!100 = !{!"", !25, i64 0}
!101 = !{!"p1 _ZTS11stack_chunk", !27, i64 0}
!102 = !{!"mark_stack", !101, i64 0, !101, i64 8, !25, i64 16, !25, i64 20, !33, i64 24, !33, i64 32}
!103 = !{!"", !27, i64 0, !33, i64 8, !33, i64 16, !24, i64 24, !33, i64 40, !33, i64 48, !33, i64 56}
!104 = !{!"p1 _ZTS17gc_profile_record", !27, i64 0}
!105 = !{!"double", !24, i64 0}
!106 = !{!"timespec", !33, i64 0, !33, i64 8}
!107 = !{!"", !25, i64 0, !25, i64 4, !104, i64 8, !104, i64 16, !33, i64 24, !33, i64 32, !105, i64 40, !33, i64 48, !33, i64 56, !33, i64 64, !33, i64 72, !105, i64 80, !33, i64 88, !33, i64 96, !33, i64 104, !38, i64 112, !106, i64 120, !38, i64 136, !106, i64 144, !33, i64 160, !33, i64 168}
!108 = !{!"", !53, i64 0, !33, i64 8, !25, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !33, i64 56, !33, i64 64}
!109 = !{!"", !24, i64 0, !24, i64 248, !24, i64 496, !24, i64 744, !33, i64 992, !27, i64 1000}
!110 = !{!"rb_objspace", !41, i64 0, !96, i64 16, !97, i64 24, !98, i64 28, !25, i64 32, !24, i64 40, !33, i64 800, !99, i64 808, !100, i64 816, !102, i64 824, !33, i64 864, !103, i64 872, !67, i64 936, !107, i64 944, !33, i64 1120, !108, i64 1128, !109, i64 1200, !41, i64 2208, !27, i64 2224, !25, i64 2232, !33, i64 2240, !25, i64 2248}
!111 = !{!110, !27, i64 872}
!112 = !{!"rb_darray_meta", !33, i64 0, !33, i64 8}
!113 = !{!112, !33, i64 0}
!114 = !{!94, !25, i64 8}
!115 = !{!99, !99, i64 0}
!116 = !{!"short", !24, i64 0}
!117 = !{!"", !25, i64 0, !25, i64 0, !25, i64 0}
!118 = !{!"p1 _ZTS14rb_heap_struct", !27, i64 0}
!119 = !{!"p1 _ZTS14heap_page_body", !27, i64 0}
!120 = !{!"p1 _ZTS9free_slot", !27, i64 0}
!121 = !{!"heap_page", !116, i64 0, !116, i64 2, !116, i64 4, !116, i64 6, !116, i64 8, !117, i64 12, !118, i64 16, !99, i64 24, !119, i64 32, !33, i64 40, !120, i64 48, !47, i64 56, !24, i64 72, !24, i64 280, !24, i64 488, !24, i64 696, !24, i64 904, !24, i64 1112, !24, i64 1320}
!122 = !{!121, !116, i64 0}
!123 = !{!121, !33, i64 40}
!124 = !{!121, !116, i64 2}
!125 = !{!"RBasic", !33, i64 0, !33, i64 8}
!126 = !{!125, !33, i64 0}
!127 = !{!"rb_heap_struct", !116, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !33, i64 56, !33, i64 64, !33, i64 72, !99, i64 80, !59, i64 88, !99, i64 104, !99, i64 112, !33, i64 120, !99, i64 128, !33, i64 136, !33, i64 144}
!128 = !{!127, !99, i64 104}
!129 = !{!"heap_page_header", !99, i64 0}
!130 = !{!"heap_page_body", !129, i64 0}
!131 = !{!130, !99, i64 0}
!132 = !{!94, !33, i64 32}
!133 = !{!92, !86, i64 1256}
!134 = !{!"gc_mark_func_data_struct", !27, i64 0, !27, i64 8}
!135 = !{!134, !27, i64 0}
!136 = !{!134, !27, i64 8}
!137 = !{!"check_shareable_data", !33, i64 0, !33, i64 8}
!138 = !{!137, !33, i64 0}
!139 = !{!137, !33, i64 8}
!140 = !{!"p1 _ZTS8_IO_FILE", !27, i64 0}
!141 = !{!140, !140, i64 0}
!142 = !{!110, !67, i64 936}
!143 = !{!"RTypedData", !125, i64 0, !33, i64 16, !33, i64 24, !27, i64 32}
!144 = !{!143, !33, i64 24}
!145 = !{!"p1 omnipotent char", !27, i64 0}
!146 = !{!"", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !24, i64 32}
!147 = !{!"p1 _ZTS19rb_data_type_struct", !27, i64 0}
!148 = !{!"rb_data_type_struct", !145, i64 0, !146, i64 8, !147, i64 48, !27, i64 56, !33, i64 64}
!149 = !{!148, !145, i64 0}
!150 = !{!"llvm.loop.mustprogress"}
!151 = !{!47, !46, i64 0}
!152 = !{!121, !116, i64 6}
!153 = !{!"ractor_newobj_heap_cache", !120, i64 0, !99, i64 8, !33, i64 16}
!154 = !{!153, !33, i64 16}
!155 = !{!110, !25, i64 816}
!156 = !{!127, !33, i64 40}
!157 = !{!127, !33, i64 48}
!158 = !{!127, !33, i64 56}
!159 = !{!110, !33, i64 1176}
!160 = !{!110, !33, i64 1160}
!161 = !{!110, !53, i64 24}
!162 = !{!"", !24, i64 0, !33, i64 40, !105, i64 48, !33, i64 56, !105, i64 64, !105, i64 72, !105, i64 80, !105, i64 88, !105, i64 96, !33, i64 104, !33, i64 112, !105, i64 120, !33, i64 128, !33, i64 136, !105, i64 144}
!163 = !{!162, !33, i64 104}
!164 = !{!110, !33, i64 16}
!165 = !{!110, !25, i64 2232}
!166 = !{!127, !116, i64 0}
!167 = !{!127, !33, i64 8}
!168 = !{!59, !46, i64 8}
!169 = !{!59, !46, i64 0}
!170 = !{!"p1 _ZTS14rb_darray_meta", !27, i64 0}
!171 = !{!170, !170, i64 0}
!172 = !{!162, !33, i64 128}
!173 = !{!110, !33, i64 1192}
end_hunk_1
