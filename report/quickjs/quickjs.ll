Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@js_malloc_usable_size_rt:bb.a
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !221
  %i.o = zext i16 %i.n to i64
  %i.p = add nsw i64 %i.o, -8
  br label %js_arena_usable_size.exit

js_arena_usable_size.exit:                        ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.011.i = phi i64 [ 0, %bb.a ], [ %spec.select.i, %bb.d ], [ %i.p, %bb.e ], [ 0, %bb.c ]
  ret i64 %.011.i
}

; Function Attrs: nounwind uwtable
define ptr @js_mallocz_rt(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !196
  %i.d = add i64 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !197
  %i.g = add i64 %i.f, -1
  %i.h = icmp ugt i64 %i.d, %i.g
  br i1 %i.h, label %js_calloc_rt.exit, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 7
  %i.j = and i64 %i.i, -8
  %i.k = add i64 %i.j, 8
  %i.l = icmp ult i64 %i.k, 513
  br i1 %i.l, label %bb.c, label %js_arena_calloc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %0, i64 noundef %1) ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %js_calloc_rt.exit, label %js_arena_calloc.exit.thread26.i, !prof !192

js_arena_calloc.exit.thread26.i:                  ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %1, i1 false)
  br label %bb.d

js_arena_calloc.exit.i:                           ; preds = %bb.b
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !215
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val11.i.i = load ptr, ptr %i.n, align 8, !tbaa !216
  %i.o = tail call fastcc ptr @arena_calloc_large(ptr %.val.i.i, ptr %.val11.i.i, i64 noundef %1) ; 2 uses
  %.not22.i = icmp eq ptr %i.o, null
  br i1 %.not22.i, label %js_calloc_rt.exit, label %bb.d

bb.d:                                             ; preds = %js_arena_calloc.exit.i, %js_arena_calloc.exit.thread26.i
  %.1.i29.i = phi ptr [ %i.m, %js_arena_calloc.exit.thread26.i ], [ %i.o, %js_arena_calloc.exit.i ] ; 3 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !217
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.a, align 8, !tbaa !217
  %i.r = getelementptr inbounds i8, ptr %.1.i29.i, i64 -8 ; 3 uses
  %i.s = load i16, ptr %i.r, align 8, !tbaa !218
  %i.t = icmp eq i16 %i.s, -1
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.v = icmp eq ptr %i.r, %i.u
  br i1 %i.v, label %js_arena_usable_size.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !219
  %i.y = tail call i64 %i.x(ptr noundef nonnull %i.r) #49, !inline_history !2 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.y, 0
  %i.z = select i1 %.not15.i.i, i64 8, i64 %i.y
  br label %js_arena_usable_size.exit.i

bb.g:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds i8, ptr %.1.i29.i, i64 -6
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !218
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !221
  %i.af = zext i16 %i.ae to i64
  br label %js_arena_usable_size.exit.i

js_arena_usable_size.exit.i:                      ; preds = %bb.g, %bb.f, %bb.e
  %.011.i.i = phi i64 [ 8, %bb.e ], [ %i.z, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !196
  %i.ah = add i64 %i.ag, %.011.i.i
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !196
  br label %js_calloc_rt.exit

js_calloc_rt.exit:                                ; preds = %bb.a, %bb.c, %js_arena_calloc.exit.i, %js_arena_usable_size.exit.i
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %.1.i29.i, %js_arena_usable_size.exit.i ], [ null, %js_arena_calloc.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define ptr @js_calloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 8 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.i = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1)
  %mul.ov.i = extractvalue { i64, i1 } %mul.i, 1
  br i1 %mul.ov.i, label %bb.j, label %bb.c, !prof !192

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !196
  %i.f = mul i64 %2, %1                           ; 5 uses
  %i.g = add i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !197
  %i.j = add i64 %i.i, -1
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %bb.j, label %bb.d, !prof !192

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.f, 7
  %i.m = and i64 %i.l, -8
  %i.n = add i64 %i.m, 8
  %i.o = icmp ult i64 %i.n, 513
  br i1 %i.o, label %bb.e, label %js_arena_calloc.exit.i

bb.e:                                             ; preds = %bb.d
  %i.p = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.b, i64 noundef %i.f) ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.j, label %js_arena_calloc.exit.thread26.i, !prof !192

js_arena_calloc.exit.thread26.i:                  ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.f, i1 false)
  br label %bb.f

js_arena_calloc.exit.i:                           ; preds = %bb.d
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !215
  %i.q = getelementptr i8, ptr %i.b, i64 64
  %.val11.i.i = load ptr, ptr %i.q, align 8, !tbaa !216
  %i.r = tail call fastcc ptr @arena_calloc_large(ptr %.val.i.i, ptr %.val11.i.i, i64 noundef %i.f) ; 2 uses
  %.not22.i = icmp eq ptr %i.r, null
  br i1 %.not22.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %js_arena_calloc.exit.i, %js_arena_calloc.exit.thread26.i
  %.1.i29.i = phi ptr [ %i.p, %js_arena_calloc.exit.thread26.i ], [ %i.r, %js_arena_calloc.exit.i ] ; 3 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !217
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.c, align 8, !tbaa !217
  %i.u = getelementptr inbounds i8, ptr %.1.i29.i, i64 -8 ; 3 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !218
  %i.w = icmp eq i16 %i.v, -1
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.y = icmp eq ptr %i.u, %i.x
  br i1 %i.y, label %js_calloc_rt.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !219
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull %i.u) #49, !inline_history !2 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.ab, 0
  %i.ac = select i1 %.not15.i.i, i64 8, i64 %i.ab
  br label %js_calloc_rt.exit

bb.i:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %.1.i29.i, i64 -6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !218
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !221
  %i.ai = zext i16 %i.ah to i64
  br label %js_calloc_rt.exit

js_calloc_rt.exit:                                ; preds = %bb.g, %bb.h, %bb.i
  %.011.i.i = phi i64 [ 8, %bb.g ], [ %i.ac, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !196
  %i.ak = add i64 %i.aj, %.011.i.i
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !196
  br label %JS_ThrowOutOfMemory.exit

bb.j:                                             ; preds = %bb.c, %bb.b, %js_arena_calloc.exit.i, %bb.e
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !232
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1256 ; 3 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !233, !range !234, !noundef !235
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %JS_ThrowOutOfMemory.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.am, align 8, !tbaa !233
  %i.ap = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !236 ; 0 uses
  store i8 0, ptr %i.am, align 8, !tbaa !233
  br label %JS_ThrowOutOfMemory.exit

JS_ThrowOutOfMemory.exit:                         ; preds = %bb.k, %bb.j, %js_calloc_rt.exit
  %.0 = phi ptr [ %.1.i29.i, %js_calloc_rt.exit ], [ null, %bb.j ], [ null, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef { i64, i64 } @JS_ThrowOutOfMemory(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1256 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !233, !range !234, !noundef !235
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !tbaa !233
  %i.f = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) ; 0 uses
  store i8 0, ptr %i.c, align 8, !tbaa !233
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nounwind uwtable
define ptr @js_malloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 8 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.h, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !196
  %i.g = add i64 %i.f, %1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !197
  %i.j = add i64 %i.i, -1
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %bb.h, label %bb.c, !prof !192

bb.c:                                             ; preds = %bb.b
  %i.l = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.b, i64 noundef %1) ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !232
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.d, align 8, !tbaa !217
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.d, align 8, !tbaa !217
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 3 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !218
  %i.q = icmp eq i16 %i.p, -1
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.s = icmp eq ptr %i.o, %i.r
  br i1 %i.s, label %js_malloc_rt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !219
  %i.v = tail call i64 %i.u(ptr noundef nonnull %i.o) #49, !inline_history !1 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.v, 0
  %i.w = select i1 %.not15.i.i, i64 8, i64 %i.v
  br label %js_malloc_rt.exit

bb.g:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.l, i64 -6
  %i.y = load i8, ptr %i.x, align 2, !tbaa !218
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !221
  %i.ac = zext i16 %i.ab to i64
  br label %js_malloc_rt.exit

js_malloc_rt.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %.011.i.i = phi i64 [ 8, %bb.e ], [ %i.w, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !196
  %i.ae = add i64 %i.ad, %.011.i.i
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !196
  br label %JS_ThrowOutOfMemory.exit

bb.h:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.af = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1256 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !233, !range !234, !noundef !235
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %JS_ThrowOutOfMemory.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ag, align 8, !tbaa !233
  %i.aj = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !236 ; 0 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !233
  br label %JS_ThrowOutOfMemory.exit

JS_ThrowOutOfMemory.exit:                         ; preds = %bb.i, %bb.h, %js_malloc_rt.exit
  %.0 = phi ptr [ %i.l, %js_malloc_rt.exit ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @js_mallocz(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !196
  %i.f = add i64 %i.e, %1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !197
  %i.i = add i64 %i.h, -1
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.h, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %1, 7
  %i.l = and i64 %i.k, -8
  %i.m = add i64 %i.l, 8
  %i.n = icmp ult i64 %i.m, 513
  br i1 %i.n, label %bb.c, label %js_arena_calloc.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.b, i64 noundef %1) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.h, label %js_arena_calloc.exit.thread26.i.i, !prof !192

js_arena_calloc.exit.thread26.i.i:                ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 0, i64 %1, i1 false)
  br label %bb.d

js_arena_calloc.exit.i.i:                         ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !215
  %i.p = getelementptr i8, ptr %i.b, i64 64
  %.val11.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !216
  %i.q = tail call fastcc ptr @arena_calloc_large(ptr %.val.i.i.i, ptr %.val11.i.i.i, i64 noundef %1) ; 2 uses
  %.not22.i.i = icmp eq ptr %i.q, null
  br i1 %.not22.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %js_arena_calloc.exit.i.i, %js_arena_calloc.exit.thread26.i.i
  %.1.i29.i.i = phi ptr [ %i.o, %js_arena_calloc.exit.thread26.i.i ], [ %i.q, %js_arena_calloc.exit.i.i ] ; 3 uses
  %i.r = load i64, ptr %i.c, align 8, !tbaa !217
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.c, align 8, !tbaa !217
  %i.t = getelementptr inbounds i8, ptr %.1.i29.i.i, i64 -8 ; 3 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !218
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.x = icmp eq ptr %i.t, %i.w
  br i1 %i.x, label %js_mallocz_rt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !219
  %i.aa = tail call i64 %i.z(ptr noundef nonnull %i.t) #49, !inline_history !3 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = select i1 %.not15.i.i.i, i64 8, i64 %i.aa
  br label %js_mallocz_rt.exit

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %.1.i29.i.i, i64 -6
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !218
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !221
  %i.ah = zext i16 %i.ag to i64
  br label %js_mallocz_rt.exit

js_mallocz_rt.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %.011.i.i.i = phi i64 [ 8, %bb.e ], [ %i.ab, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !196
  %i.aj = add i64 %i.ai, %.011.i.i.i
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !196
  br label %JS_ThrowOutOfMemory.exit

bb.h:                                             ; preds = %bb.a, %bb.c, %js_arena_calloc.exit.i.i
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !232
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1256 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !233, !range !234, !noundef !235
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %JS_ThrowOutOfMemory.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.al, align 8, !tbaa !233
  %i.ao = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !236 ; 0 uses
  store i8 0, ptr %i.al, align 8, !tbaa !233
  br label %JS_ThrowOutOfMemory.exit

JS_ThrowOutOfMemory.exit:                         ; preds = %bb.i, %bb.h, %js_mallocz_rt.exit
  %.0 = phi ptr [ %.1.i29.i.i, %js_mallocz_rt.exit ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @js_free(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
end_hunk_0
begin_hunk_1_@JS_NewClass:bb.a
  store i64 %i.al, ptr %i.q, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !249
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr readonly align 1 %i.f, i64 %i.c, i1 false)
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.c
  store i8 0, ptr %i.ao, align 1, !tbaa !218
  %i.ap = tail call fastcc i32 @__JS_NewAtom(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i32 noundef 1) ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %__JS_NewAtomInit.exit.thread, label %bb.i

bb.i:                                             ; preds = %__JS_NewAtomInit.exit, %bb.a
  %.0 = phi i32 [ %i.ap, %__JS_NewAtomInit.exit ], [ %i.d, %bb.a ] ; 2 uses
  %i.ar = tail call fastcc i32 @JS_NewClass1(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %.0)
  tail call void @JS_FreeAtomRT(ptr noundef %0, i32 noundef %.0)
  br label %__JS_NewAtomInit.exit.thread

__JS_NewAtomInit.exit.thread:                     ; preds = %bb.d, %bb.b, %bb.c, %__JS_NewAtomInit.exit, %bb.i
  %.016 = phi i32 [ %i.ar, %bb.i ], [ -1, %__JS_NewAtomInit.exit ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.d ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @JS_NewClass1(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %1, 65535
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !294  ; 3 uses
  %i.d = icmp ult i32 %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !251  ; 2 uses
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 8, !tbaa !295
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.thread, label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw nsw i32 %1, 1
  %i.k = lshr i32 %i.c, 1
  %i.l = add i32 %i.k, %i.c
  %i.m = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %i.l)
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.m, i32 67) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %.05667 = load ptr, ptr %i.p, align 8, !tbaa !222 ; 2 uses
  %.not6268 = icmp eq ptr %.05667, %i.o
  %.pre74 = zext i32 %i.n to i64                  ; 5 uses
  br i1 %.not6268, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.d
  %i.q = shl nuw nsw i64 %.pre74, 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph71, %._crit_edge
  %.05669 = phi ptr [ %.05667, %.lr.ph71 ], [ %.056, %._crit_edge ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05669, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !350
  %i.t = tail call ptr @js_realloc_rt(ptr noundef nonnull %0, ptr noundef %i.s, i64 noundef %i.q) ; 7 uses
  %.not64.not = icmp eq ptr %i.t, null
  br i1 %.not64.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.b, align 8, !tbaa !294  ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.n
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.w = sext i32 %i.u to i64                     ; 4 uses
  %i.x = sub nsw i64 %.pre74, %i.w
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = getelementptr inbounds [16 x i8], ptr %i.t, i64 %indvars.iv.prol ; 3 uses
  store i32 0, ptr %i.y, align 8
  %.sroa.2.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.prol, align 4, !tbaa !218
  %.sroa.3.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 2, ptr %.sroa.3.0..sroa_idx.prol, align 8, !tbaa !240
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1050

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.z = sub nsw i64 %i.w, %.pre74
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  store i32 0, ptr %i.ab, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !240
  %i.ac = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  store i32 0, ptr %i.ad, align 8
  %.sroa.2.0..sroa_idx.1 = getelementptr i8, ptr %i.ac, i64 20
  store i32 0, ptr %.sroa.2.0..sroa_idx.1, align 4, !tbaa !218
  %.sroa.3.0..sroa_idx.1 = getelementptr i8, ptr %i.ac, i64 24
  store i64 2, ptr %.sroa.3.0..sroa_idx.1, align 8, !tbaa !240
  %i.ae = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 32
  store i32 0, ptr %i.af, align 8
  %.sroa.2.0..sroa_idx.2 = getelementptr i8, ptr %i.ae, i64 36
  store i32 0, ptr %.sroa.2.0..sroa_idx.2, align 4, !tbaa !218
  %.sroa.3.0..sroa_idx.2 = getelementptr i8, ptr %i.ae, i64 40
  store i64 2, ptr %.sroa.3.0..sroa_idx.2, align 8, !tbaa !240
  %i.ag = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  store i32 0, ptr %i.ah, align 8
  %.sroa.2.0..sroa_idx.3 = getelementptr i8, ptr %i.ag, i64 52
  store i32 0, ptr %.sroa.2.0..sroa_idx.3, align 4, !tbaa !218
  %.sroa.3.0..sroa_idx.3 = getelementptr i8, ptr %i.ag, i64 56
  store i64 2, ptr %.sroa.3.0..sroa_idx.3, align 8, !tbaa !240
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.pre74
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1051

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  store ptr %i.t, ptr %i.r, align 8, !tbaa !350
  %i.ai = getelementptr inbounds nuw i8, ptr %.05669, i64 8
  %.056 = load ptr, ptr %i.ai, align 8, !tbaa !222 ; 2 uses
  %.not62 = icmp eq ptr %.056, %i.o
  br i1 %.not62, label %._crit_edge72, label %bb.e, !llvm.loop !1052

._crit_edge72:                                    ; preds = %._crit_edge, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !251
  %i.al = mul nuw nsw i64 %.pre74, 40
  %i.am = tail call ptr @js_realloc_rt(ptr noundef nonnull %0, ptr noundef %i.ak, i64 noundef %i.al) ; 4 uses
  %.not63 = icmp eq ptr %i.am, null
  br i1 %.not63, label %.critedge, label %bb.g

bb.g:                                             ; preds = %._crit_edge72
  %i.an = load i32, ptr %i.b, align 8, !tbaa !294 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [40 x i8], ptr %i.am, i64 %i.ao
  %i.aq = sub nsw i32 %i.n, %i.an
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, 40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ap, i8 0, i64 %i.as, i1 false)
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !251
  store i32 %i.n, ptr %i.b, align 8, !tbaa !294
  %.pre = zext nneg i32 %1 to i64
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.g
  %.pre-phi = phi i64 [ %i.g, %bb.c ], [ %.pre, %bb.g ]
  %i.at = phi ptr [ %i.f, %bb.c ], [ %i.am, %bb.g ]
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %.pre-phi ; 4 uses
  store i32 %1, ptr %i.au, align 8, !tbaa !295
  %i.av = icmp slt i32 %3, 242
  br i1 %i.av, label %JS_DupAtomRT.exit, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !297
  %i.ay = zext nneg i32 %3 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !299
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !191
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !191
  br label %JS_DupAtomRT.exit

JS_DupAtomRT.exit:                                ; preds = %.thread, %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %3, ptr %i.be, align 4, !tbaa !296
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !239
  store <2 x ptr> %i.bh, ptr %i.bg, align 8, !tbaa !239
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bk = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !239
  store <2 x ptr> %i.bk, ptr %i.bj, align 8, !tbaa !239
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %._crit_edge72, %bb.c, %bb.a, %JS_DupAtomRT.exit
  %.2 = phi i32 [ -1, %._crit_edge72 ], [ -1, %bb.a ], [ -1, %bb.c ], [ 0, %JS_DupAtomRT.exit ], [ -1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define noundef { i64, i64 } @JS_ThrowRangeError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1256
  %i.g = load i8, ptr %i.f, align 8, !tbaa !233, !range !234, !noundef !235
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %JS_GetFunctionBytecode.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %JS_GetFunctionBytecode.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 4294967295
  %.not.i.i = icmp eq i64 %i.k, 4294967295
  br i1 %.not.i.i, label %bb.d, label %JS_GetFunctionBytecode.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  %i.p = load i16, ptr %i.o, align 2, !tbaa !276
  %i.q = zext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, -13                    ; 2 uses
  %i.s = call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 31)
  switch i32 %i.s, label %JS_GetFunctionBytecode.exit.i [
    i32 21, label %bb.e
    i32 2, label %bb.e
    i32 0, label %bb.e
    i32 23, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.v = icmp eq ptr %i.u, null
  br label %JS_GetFunctionBytecode.exit.i

JS_GetFunctionBytecode.exit.i:                    ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %i.w = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ %i.v, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.x = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %1, ptr noundef nonnull %2) #49, !inline_history !31 ; 0 uses
  %i.y = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef nonnull %0, i32 noundef 1, i1 noundef zeroext %i.w, ptr noundef nonnull %i.a), !inline_history !31 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = icmp eq i64 %i.ab, 6
  br i1 %i.ac, label %bb.f, label %JS_ThrowError.exit, !prof !192

bb.f:                                             ; preds = %JS_GetFunctionBytecode.exit.i
  br label %JS_ThrowError.exit

JS_ThrowError.exit:                               ; preds = %JS_GetFunctionBytecode.exit.i, %bb.f
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.f ], [ %i.z, %JS_GetFunctionBytecode.exit.i ]
  %.sroa.7.0.i.i = phi i64 [ 2, %bb.f ], [ %i.aa, %JS_GetFunctionBytecode.exit.i ]
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !232 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1240 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1248 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp ugt i32 %i.ai, -10
  br i1 %i.aj, label %bb.g, label %JS_Throw.exit

bb.g:                                             ; preds = %JS_ThrowError.exit
  %i.ak = inttoptr i64 %i.af to ptr
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !191 ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !191
  %i.ao = icmp slt i32 %i.am, 2
  br i1 %i.ao, label %bb.h, label %JS_Throw.exit

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef nonnull %i.ad, i64 %i.af, i64 %i.ah), !inline_history !32
  br label %JS_Throw.exit

JS_Throw.exit:                                    ; preds = %JS_ThrowError.exit, %bb.g, %bb.h
  store i64 %.sroa.02.0.i.i, ptr %i.ae, align 8, !tbaa !218
  store i64 %.sroa.7.0.i.i, ptr %i.ag, align 8, !tbaa !240
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_alloc_string(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 8 uses
  %i.c = shl i32 %1, %2
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i64 %i.d, 25                     ; 2 uses
  %i.f = zext nneg i32 %2 to i64                  ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = icmp eq i64 %i.e, %i.f
  br i1 %i.h, label %bb.h, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !196
  %i.l = add i64 %i.k, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !197
  %i.o = add i64 %i.n, -1
  %i.p = icmp ugt i64 %i.l, %i.o
  br i1 %i.p, label %bb.h, label %bb.c, !prof !192

bb.c:                                             ; preds = %bb.b
  %i.q = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.b, i64 noundef %i.g) ; 7 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !232
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %i.i, align 8, !tbaa !217
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.i, align 8, !tbaa !217
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 3 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !218
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.x = icmp eq ptr %i.t, %i.w
  br i1 %i.x, label %js_alloc_string_rt.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !219
  %i.aa = tail call i64 %i.z(ptr noundef nonnull %i.t) #49, !inline_history !1053 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = select i1 %.not15.i.i.i, i64 8, i64 %i.aa
  br label %js_alloc_string_rt.exit

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.q, i64 -6
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !218
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !221
  %i.ah = zext i16 %i.ag to i64
  br label %js_alloc_string_rt.exit

js_alloc_string_rt.exit:                          ; preds = %bb.e, %bb.f, %bb.g
  %.011.i.i.i = phi i64 [ 8, %bb.e ], [ %i.ab, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = load i64, ptr %i.j, align 8, !tbaa !196
  %i.aj = add i64 %i.ai, %.011.i.i.i
  store i64 %i.aj, ptr %i.j, align 8, !tbaa !196
  %i.ak = getelementptr inbounds i8, ptr %i.q, i64 -4
  store i32 1, ptr %i.ak, align 4, !tbaa !191
  %i.al = shl i32 %2, 31
  %i.am = and i32 %1, 2147483647
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = zext i32 %i.an to i64
  store i64 %i.ao, ptr %i.q, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !249
  br label %JS_ThrowOutOfMemory.exit

bb.h:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.aq = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1256 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !233, !range !234, !noundef !235
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %JS_ThrowOutOfMemory.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ar, align 8, !tbaa !233
  %i.au = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !236 ; 0 uses
  store i8 0, ptr %i.ar, align 8, !tbaa !233
  br label %JS_ThrowOutOfMemory.exit

JS_ThrowOutOfMemory.exit:                         ; preds = %bb.i, %bb.h, %js_alloc_string_rt.exit
  %.0 = phi ptr [ %i.q, %js_alloc_string_rt.exit ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.0
}

; Function Attrs: inlinehint nofree nounwind uwtable
define internal fastcc ptr @str8(ptr nofree noundef readonly captures(ret: address, provenance) %0) unnamed_addr #15 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = lshr i64 %i.a, 60
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = and i32 %i.c, 3
end_hunk_1
begin_hunk_2_@JS_AtomGetStrRT:bb.a

bb.w:                                             ; preds = %bb.v
  %i.bf = lshr i32 %.0.i, 6
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, -64
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !218
  br label %utf8_encode.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  br i1 %i.bb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bj = lshr i32 %.0.i, 12
  %i.bk = trunc nuw nsw i32 %i.bj to i8
  %i.bl = or disjoint i8 %i.bk, -32
  store i8 %i.bl, ptr %i.be, align 1, !tbaa !218
  %i.bm = lshr i32 %.0.i, 6
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = and i8 %i.bn, 63
  %i.bp = or disjoint i8 %i.bo, -128
  store i8 %i.bp, ptr %i.bi, align 1, !tbaa !218
  br label %utf8_encode.exit.i

bb.z:                                             ; preds = %bb.x
  %i.bq = lshr i32 %.0.i, 18
  %i.br = trunc nuw nsw i32 %i.bq to i8
  %i.bs = or disjoint i8 %i.br, -16
  store i8 %i.bs, ptr %i.be, align 1, !tbaa !218
  %i.bt = lshr i32 %.0.i, 12
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = and i8 %i.bu, 63
  %i.bw = or disjoint i8 %i.bv, -128
  store i8 %i.bw, ptr %i.bi, align 1, !tbaa !218
  %i.bx = lshr i32 %.0.i, 6
  %i.by = trunc i32 %i.bx to i8
  %i.bz = and i8 %i.by, 63
  %i.ca = or disjoint i8 %i.bz, -128
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !218
  br label %utf8_encode.exit.i

utf8_encode.exit.i:                               ; preds = %bb.z, %bb.y, %bb.w
  %.sink30.i.i = phi i64 [ 1, %bb.w ], [ 3, %bb.z ], [ 2, %bb.y ]
  %.0.i72.i = phi i64 [ 2, %bb.w ], [ 4, %bb.z ], [ 3, %bb.y ]
  %.sink.i.in.in.i = trunc i32 %.0.i to i8
  %.sink.i.in.i = and i8 %.sink.i.in.in.i, 63
  %.sink.i.i = or disjoint i8 %.sink.i.in.i, -128
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sink30.i.i
  store i8 %.sink.i.i, ptr %i.cc, align 1, !tbaa !218
  %i.cd = add i64 %.0.i72.i, %.05379.i
  br label %bb.aa

bb.aa:                                            ; preds = %utf8_encode.exit.i, %bb.q
  %.258.i = phi i64 [ %i.af, %bb.q ], [ %.157.i, %utf8_encode.exit.i ] ; 2 uses
  %.154.i = phi i64 [ %i.ak, %bb.q ], [ %i.cd, %utf8_encode.exit.i ] ; 3 uses
  %i.ce = icmp ult i64 %.258.i, %i.ae
  br i1 %i.ce, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1102

._crit_edge.i:                                    ; preds = %bb.aa
  %i.cf = icmp ult i64 %.154.i, 64
  br i1 %i.cf, label %._crit_edge.thread.i, label %utf8_encode_buf16.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %str16.exit
  %.053.lcssa93.i = phi i64 [ %.154.i, %._crit_edge.i ], [ 0, %str16.exit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %.053.lcssa93.i
  store i8 0, ptr %i.cg, align 1, !tbaa !218
  br label %utf8_encode_buf16.exit

bb.ab:                                            ; preds = %bb.u, %bb.p
  %i.ch = icmp ult i64 %.05379.i, 64
  br i1 %i.ch, label %bb.ac, label %utf8_encode_buf16.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %.05379.i
  store i8 0, ptr %i.ci, align 1, !tbaa !218
  br label %utf8_encode_buf16.exit

bb.ad:                                            ; preds = %bb.j
  switch i32 %i.t, label %default.unreachable [
    i32 0, label %bb.ae
    i32 1, label %bb.af
    i32 2, label %bb.ag
    i32 3, label %bb.ah
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  br label %str8.exit

bb.af:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !389
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !390
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp
  br label %str8.exit

bb.ag:                                            ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !239
  br label %str8.exit

bb.ah:                                            ; preds = %bb.ad
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %bb.ae, %bb.af, %bb.ag
  %.0.i.i34 = phi ptr [ %i.cj, %bb.ae ], [ %i.cq, %bb.af ], [ %i.cs, %bb.ag ]
  %i.ct = and i64 %i.p, 2147483647                ; 2 uses
  %.not.i36 = icmp eq i64 %i.ct, 0
  br i1 %.not.i36, label %._crit_edge.i39, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %str8.exit, %bb.am
  %.043.i = phi i64 [ %.1.i38, %bb.am ], [ 0, %str8.exit ] ; 7 uses
  %.03442.i = phi i64 [ %i.di, %bb.am ], [ 0, %str8.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i34, i64 %.03442.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !218 ; 4 uses
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph.i37
  %i.cx = add i64 %.043.i, 1                      ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, 63
  br i1 %i.cy, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 %.043.i
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !218
  br label %bb.am

bb.ak:                                            ; preds = %.lr.ph.i37
  %i.da = add i64 %.043.i, -62
  %i.db = icmp ult i64 %i.da, -64
  br i1 %i.db, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dc = lshr i8 %i.cv, 6
  %i.dd = or disjoint i8 %i.dc, -64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %.043.i ; 2 uses
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !218
  %i.df = and i8 %i.cv, -65
  %i.dg = add nsw i64 %.043.i, 2
  %i.dh = getelementptr i8, ptr %i.de, i64 1
  store i8 %i.df, ptr %i.dh, align 1, !tbaa !218
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.1.i38 = phi i64 [ %i.cx, %bb.aj ], [ %i.dg, %bb.al ] ; 2 uses
  %i.di = add nuw nsw i64 %.03442.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.di, %i.ct
  br i1 %exitcond.not.i, label %._crit_edge.i39, label %.lr.ph.i37, !llvm.loop !1103

._crit_edge.i39:                                  ; preds = %bb.am, %str8.exit
  %.0.lcssa.i = phi i64 [ 0, %str8.exit ], [ %.1.i38, %bb.am ]
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa.i
  store i8 0, ptr %i.dj, align 1, !tbaa !218
  br label %utf8_encode_buf16.exit

bb.an:                                            ; preds = %bb.ak, %bb.ai
  %i.dk = icmp ult i64 %.043.i, 64
  br i1 %i.dk, label %bb.ao, label %utf8_encode_buf16.exit

bb.ao:                                            ; preds = %bb.an
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 %.043.i
  store i8 0, ptr %i.dl, align 1, !tbaa !218
  br label %utf8_encode_buf16.exit

utf8_encode_buf16.exit:                           ; preds = %bb.ab, %bb.ac, %bb.ao, %bb.an, %._crit_edge.i39, %._crit_edge.thread.i, %._crit_edge.i, %bb.h, %bb.i, %bb.d, %bb.f, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @JS_GetGlobalObject(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = icmp ugt i32 %i.e, -10
  br i1 %i.f, label %bb.b, label %js_dup.exit

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !191
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.a, %bb.b
  %.fca.0.insert.i.i = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %.fca.1.insert.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 %i.d, 1
  ret { i64, i64 } %.fca.1.insert.i.i
}

; Function Attrs: nounwind uwtable
define noundef { i64, i64 } @JS_Throw(ptr nofree noundef readonly captures(none) %0, i64 %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1240 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ugt i32 %i.g, -10
  br i1 %i.h, label %bb.b, label %JS_FreeValueRT.exit

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.d to ptr
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !191  ; 2 uses
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !191
  %i.m = icmp slt i32 %i.k, 2
  br i1 %i.m, label %bb.c, label %JS_FreeValueRT.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @js_free_value_rt(ptr noundef nonnull %i.b, i64 %i.d, i64 %i.f), !inline_history !370
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  store i64 %1, ptr %i.c, align 8, !tbaa !218
  store i64 %2, ptr %i.e, align 8, !tbaa !240
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @JS_GetException(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1240 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.c, align 8, !tbaa !218
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !240
  store i32 0, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1244
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !240
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.03.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.24.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @JS_HasException(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 4294967295
  %i.f = icmp ne i64 %i.e, 4
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewError(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i64 } @JS_NewObjectClass(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 6
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  tail call fastcc void @build_backtrace(ptr noundef %0, i64 %i.e, i64 %i.b, i64 0, i64 3, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i64 [ %i.b, %bb.b ], [ 6, %bb.a ]
  %.sroa.05.0.insert.insert = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.05.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_backtrace(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef range(i32 0, 6) %8) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %9 = alloca %struct.JSValue, align 8            ; 6 uses
  %10 = alloca %struct.JSValue, align 8           ; 6 uses
  %11 = alloca %struct.JSValue, align 8           ; 6 uses
  %12 = alloca %struct.JSValue, align 8           ; 6 uses
  %13 = alloca %struct.JSValue, align 8           ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %14 = alloca %struct.DynBuf, align 8            ; 29 uses
  %15 = alloca [64 x %struct.JSCallSiteData], align 16 ; 19 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %16 = alloca [2 x %struct.JSValue], align 16    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 28 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1257 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1126, !range !234, !noundef !235
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.dy, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.f, align 1, !tbaa !1126
  %i.i = trunc i64 %2 to i32
  %i.j = icmp ugt i32 %i.i, -10                   ; 2 uses
  br i1 %i.j, label %bb.c, label %js_dup.exit

bb.c:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %1 to ptr
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !191
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1240 ; 2 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1248
  %i.p = load <2 x i64>, ptr %i.o, align 8, !tbaa !218
  store i32 0, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1244
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !240
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = icmp ugt i32 %i.u, -10
  br i1 %i.v, label %.thread, label %js_dup.exit344

.thread:                                          ; preds = %js_dup.exit
  %i.w = inttoptr i64 %i.r to ptr
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !191
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !191
  br label %bb.g

js_dup.exit344:                                   ; preds = %js_dup.exit
  %i.aa = icmp ult i32 %i.u, 3
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %js_dup.exit344
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.r to i32
  %i.ab = sitofp i32 %.sroa.0.0.extract.trunc.i to double
  br label %JS_ToFloat64Free.exit

bb.e:                                             ; preds = %js_dup.exit344
  %i.ac = icmp eq i32 %i.u, 8
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = bitcast i64 %i.r to double
  br label %JS_ToFloat64Free.exit

bb.g:                                             ; preds = %.thread, %bb.e
  %i.ae = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef nonnull %0, i64 %i.r, i64 %i.t, i32 noundef 0), !inline_history !1104 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.ae, 1      ; 2 uses
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = icmp eq i64 %i.ah, 6
  br i1 %i.ai, label %JS_ToFloat64Free.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = bitcast i64 %i.af to double
  %i.ak = trunc i64 %i.ag to i32
  switch i32 %i.ak, label %bb.j [
    i32 0, label %bb.i
    i32 8, label %JS_ToFloat64Free.exit
  ]

bb.i:                                             ; preds = %bb.h
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %i.af to i32
  %i.al = sitofp i32 %.sroa.04.0.extract.trunc.i.i to double
  br label %JS_ToFloat64Free.exit

bb.j:                                             ; preds = %bb.h
  tail call void @abort() #50, !inline_history !1105
  unreachable

JS_ToFloat64Free.exit:                            ; preds = %bb.h, %bb.i, %bb.d, %bb.f
  %.0425 = phi double [ %i.ab, %bb.d ], [ %i.ad, %bb.f ], [ %i.aj, %bb.h ], [ %i.al, %bb.i ] ; 3 uses
  %or.cond = fcmp ult double %.0425, 0.000000e+00
  br i1 %or.cond, label %JS_ToFloat64Free.exit.thread, label %bb.k

bb.k:                                             ; preds = %JS_ToFloat64Free.exit
  %i.am = fcmp ogt double %.0425, f0x41DFFFFFFFC00000
  br i1 %i.am, label %JS_ToFloat64Free.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = tail call double @llvm.fabs.f64(double %.0425)
  %i.ao = fptosi double %i.an to i32
  %.fr = freeze i32 %i.ao
  %i.ap = tail call i32 @llvm.smin.i32(i32 %.fr, i32 64)
  br label %JS_ToFloat64Free.exit.thread
end_hunk_2
begin_hunk_3_@build_backtrace:bb.a
  %i.vp = icmp eq i64 %i.vo, 3
  br i1 %i.vp, label %bb.do, label %can_add_backtrace.exit.thread

bb.do:                                            ; preds = %bb.dn
  %i.vq = getelementptr i8, ptr %i.vj, i64 24
  %.val.i = load ptr, ptr %i.vq, align 8, !tbaa !316 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !191 ; 2 uses
  %i.vt = and i32 %i.vs, 57
  %i.vu = zext i32 %i.vs to i64
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 60 ; 2 uses
  %i.vx = xor i32 %i.vt, -1
  %i.vy = sext i32 %i.vx to i64
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %i.vy
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !191 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.wa, 0
  br i1 %.not1.i.i, label %JS_FreeValueRT.exit405, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.do, %bb.dp
  %.0.in2.i.i = phi i32 [ %i.wh, %bb.dp ], [ %i.wa, %bb.do ]
  %.0.i.i = zext i32 %.0.in2.i.i to i64
  %i.wb = getelementptr [8 x i8], ptr %i.vw, i64 %.0.i.i ; 2 uses
  %i.wc = getelementptr i8, ptr %i.wb, i64 -8     ; 2 uses
  %i.wd = getelementptr i8, ptr %i.wb, i64 -4
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !319
  %i.wf = icmp eq i32 %i.we, 57
  br i1 %i.wf, label %can_store_error_stack.exit, label %bb.dp, !prof !324

bb.dp:                                            ; preds = %.lr.ph.i.i
  %i.wg = load i32, ptr %i.wc, align 4
  %i.wh = and i32 %i.wg, 67108863                 ; 2 uses
  %.not.i.i = icmp eq i32 %i.wh, 0
  br i1 %.not.i.i, label %JS_FreeValueRT.exit405, label %.lr.ph.i.i, !llvm.loop !39

can_store_error_stack.exit:                       ; preds = %.lr.ph.i.i
  %i.wi = icmp eq ptr %i.wc, null
  br i1 %i.wi, label %JS_FreeValueRT.exit405, label %can_store_error_stack.exit.thread.thread

JS_FreeValueRT.exit405:                           ; preds = %bb.dp, %can_store_error_stack.exit, %bb.do
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vj, i64 48
  %.sroa.0105.sroa.17.0.insert.ext181 = zext i32 %.sroa.0105.sroa.17.3 to i64
  %.sroa.0105.sroa.17.0.insert.shift182 = shl nuw i64 %.sroa.0105.sroa.17.0.insert.ext181, 32
  %.sroa.0105.sroa.0.0.insert.ext146 = zext i32 %.sroa.0105.sroa.0.3 to i64
  %.sroa.0105.sroa.0.0.insert.insert148 = or disjoint i64 %.sroa.0105.sroa.17.0.insert.shift182, %.sroa.0105.sroa.0.0.insert.ext146
  store i64 %.sroa.0105.sroa.0.0.insert.insert148, ptr %i.wj, align 8, !tbaa !218
  store i64 %.sroa.20.3, ptr %i.vm, align 8, !tbaa !240
  br label %JS_FreeValueRT.exit404

can_store_error_stack.exit.thread.thread:         ; preds = %can_store_error_stack.exit
  %.not3.i = icmp eq i16 %i.vl, 64
  br i1 %.not3.i, label %bb.dq, label %can_add_backtrace.exit.thread

bb.dq:                                            ; preds = %bb.dm, %can_store_error_stack.exit.thread.thread
  %i.wk = getelementptr i8, ptr %i.vj, i64 24
  %.val.i332 = load ptr, ptr %i.wk, align 8, !tbaa !316 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.val.i332, i64 24
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !191 ; 2 uses
  %i.wn = and i32 %i.wm, 57
  %i.wo = zext i32 %i.wm to i64
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %.val.i332, i64 %i.wo
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 60 ; 2 uses
  %i.wr = xor i32 %i.wn, -1
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.wq, i64 %i.ws
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !191 ; 2 uses
  %.not1.i.i333 = icmp eq i32 %i.wu, 0
  br i1 %.not1.i.i333, label %can_add_backtrace.exit.thread522, label %.lr.ph.i.i334

.lr.ph.i.i334:                                    ; preds = %bb.dq, %bb.dr
  %.0.in2.i.i335 = phi i32 [ %i.xb, %bb.dr ], [ %i.wu, %bb.dq ]
  %.0.i.i336 = zext i32 %.0.in2.i.i335 to i64
  %i.wv = getelementptr [8 x i8], ptr %i.wq, i64 %.0.i.i336 ; 2 uses
  %i.ww = getelementptr i8, ptr %i.wv, i64 -8     ; 2 uses
  %i.wx = getelementptr i8, ptr %i.wv, i64 -4
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !319
  %i.wz = icmp eq i32 %i.wy, 57
  br i1 %i.wz, label %can_add_backtrace.exit, label %bb.dr, !prof !324

bb.dr:                                            ; preds = %.lr.ph.i.i334
  %i.xa = load i32, ptr %i.ww, align 4
  %i.xb = and i32 %i.xa, 67108863                 ; 2 uses
  %.not.i.i337 = icmp eq i32 %i.xb, 0
  br i1 %.not.i.i337, label %can_add_backtrace.exit.thread522, label %.lr.ph.i.i334, !llvm.loop !39

can_add_backtrace.exit:                           ; preds = %.lr.ph.i.i334
  %i.xc = icmp eq ptr %i.ww, null
  br i1 %i.xc, label %can_add_backtrace.exit.thread522, label %can_add_backtrace.exit.thread

can_add_backtrace.exit.thread522:                 ; preds = %bb.dr, %bb.dq, %can_add_backtrace.exit
  %.sroa.0105.sroa.17.0.insert.ext165 = zext i32 %.sroa.0105.sroa.17.3 to i64
  %.sroa.0105.sroa.17.0.insert.shift166 = shl nuw i64 %.sroa.0105.sroa.17.0.insert.ext165, 32
  %.sroa.0105.sroa.0.0.insert.ext135 = zext i32 %.sroa.0105.sroa.0.3 to i64
  %.sroa.0105.sroa.0.0.insert.insert137 = or disjoint i64 %.sroa.0105.sroa.17.0.insert.shift166, %.sroa.0105.sroa.0.0.insert.ext135 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i32 0, ptr %9, align 8, !tbaa !218
  %i.xd = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.xd, align 4
  %i.xe = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 3, ptr %i.xe, align 8, !tbaa !365
  store i32 0, ptr %10, align 8, !tbaa !218
  %i.xf = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.xf, align 4
  %i.xg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 3, ptr %i.xg, align 8, !tbaa !365
  %i.xh = call i32 @JS_DefineProperty(ptr noundef %0, i64 %1, i64 %2, i32 noundef 57, i64 %.sroa.0105.sroa.0.0.insert.insert137, i64 %.sroa.20.3, ptr noundef nonnull byval(%struct.JSValue) align 8 %9, ptr noundef nonnull byval(%struct.JSValue) align 8 %10, i32 noundef 9987), !inline_history !366 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.xi = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.xj = trunc i64 %.sroa.20.3 to i32
  %i.xk = icmp ugt i32 %i.xj, -10
  br i1 %i.xk, label %bb.ds, label %JS_FreeValueRT.exit404

bb.ds:                                            ; preds = %can_add_backtrace.exit.thread522
  %i.xl = inttoptr i64 %.sroa.0105.sroa.0.0.insert.insert137 to ptr
  %i.xm = getelementptr inbounds i8, ptr %i.xl, i64 -4 ; 2 uses
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !191 ; 2 uses
  %i.xo = add nsw i32 %i.xn, -1
  store i32 %i.xo, ptr %i.xm, align 4, !tbaa !191
  %i.xp = icmp slt i32 %i.xn, 2
  br i1 %i.xp, label %bb.dt, label %JS_FreeValueRT.exit404

bb.dt:                                            ; preds = %bb.ds
  call fastcc void @js_free_value_rt(ptr noundef %i.xi, i64 %.sroa.0105.sroa.0.0.insert.insert137, i64 %.sroa.20.3), !inline_history !471
  br label %JS_FreeValueRT.exit404

can_add_backtrace.exit.thread:                    ; preds = %bb.dm, %bb.dn, %bb.dl, %can_store_error_stack.exit.thread.thread, %can_add_backtrace.exit
  %.sroa.0105.sroa.17.0.insert.ext169 = zext i32 %.sroa.0105.sroa.17.3 to i64
  %.sroa.0105.sroa.17.0.insert.shift170 = shl nuw i64 %.sroa.0105.sroa.17.0.insert.ext169, 32
  %.sroa.0105.sroa.0.0.insert.ext138 = zext i32 %.sroa.0105.sroa.0.3 to i64
  %.sroa.0105.sroa.0.0.insert.insert140 = or disjoint i64 %.sroa.0105.sroa.17.0.insert.shift170, %.sroa.0105.sroa.0.0.insert.ext138 ; 2 uses
  %i.xq = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.xr = trunc i64 %.sroa.20.3 to i32
  %i.xs = icmp ugt i32 %i.xr, -10
  br i1 %i.xs, label %bb.du, label %JS_FreeValueRT.exit404

bb.du:                                            ; preds = %can_add_backtrace.exit.thread
  %i.xt = inttoptr i64 %.sroa.0105.sroa.0.0.insert.insert140 to ptr
  %i.xu = getelementptr inbounds i8, ptr %i.xt, i64 -4 ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !191 ; 2 uses
  %i.xw = add nsw i32 %i.xv, -1
  store i32 %i.xw, ptr %i.xu, align 4, !tbaa !191
  %i.xx = icmp slt i32 %i.xv, 2
  br i1 %i.xx, label %bb.dv, label %JS_FreeValueRT.exit404

bb.dv:                                            ; preds = %bb.du
  call fastcc void @js_free_value_rt(ptr noundef %i.xq, i64 %.sroa.0105.sroa.0.0.insert.insert140, i64 %.sroa.20.3), !inline_history !370
  br label %JS_FreeValueRT.exit404

JS_FreeValueRT.exit404:                           ; preds = %bb.dv, %bb.du, %can_add_backtrace.exit.thread, %bb.dt, %bb.ds, %can_add_backtrace.exit.thread522, %bb.dk, %bb.dj, %bb.di, %JS_FreeValueRT.exit405
  %i.xy = load ptr, ptr %i.d, align 8, !tbaa !232
  br i1 %i.j, label %bb.dw, label %JS_FreeValueRT.exit408

bb.dw:                                            ; preds = %JS_FreeValueRT.exit404
  %i.xz = inttoptr i64 %1 to ptr
  %i.ya = getelementptr inbounds i8, ptr %i.xz, i64 -4 ; 2 uses
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !191 ; 2 uses
  %i.yc = add nsw i32 %i.yb, -1
  store i32 %i.yc, ptr %i.ya, align 4, !tbaa !191
  %i.yd = icmp slt i32 %i.yb, 2
  br i1 %i.yd, label %bb.dx, label %JS_FreeValueRT.exit408

bb.dx:                                            ; preds = %bb.dw
  call fastcc void @js_free_value_rt(ptr noundef %i.xy, i64 %1, i64 %2), !inline_history !370
  br label %JS_FreeValueRT.exit408

JS_FreeValueRT.exit408:                           ; preds = %JS_FreeValueRT.exit404, %bb.dw, %bb.dx
  store i8 0, ptr %i.f, align 1, !tbaa !1126
  br label %bb.dy

bb.dy:                                            ; preds = %bb.a, %JS_FreeValueRT.exit408
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #49
  ret void
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewInternalError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef readonly %1, ptr noundef nonnull %2) #49, !inline_history !40 ; 0 uses
  %i.c = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef %0, i32 noundef 6, i1 noundef zeroext true, ptr noundef nonnull %i.a), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: nounwind uwtable
define noundef { i64, i64 } @JS_ThrowInternalError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1256
  %i.g = load i8, ptr %i.f, align 8, !tbaa !233, !range !234, !noundef !235
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %JS_ThrowError.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %JS_ThrowError.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 4294967295
  %.not.i3 = icmp eq i64 %i.k, 4294967295
  br i1 %.not.i3, label %bb.d, label %JS_ThrowError.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  %i.p = load i16, ptr %i.o, align 2, !tbaa !276
  %i.q = zext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, -13                    ; 2 uses
  %i.s = call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 31)
  switch i32 %i.s, label %JS_ThrowError.exit [
    i32 21, label %bb.e
    i32 2, label %bb.e
    i32 0, label %bb.e
    i32 23, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.v = icmp eq ptr %i.u, null
  br label %JS_ThrowError.exit

JS_ThrowError.exit:                               ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %i.w = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ %i.v, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.x = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %1, ptr noundef nonnull %2) #49, !inline_history !1130 ; 0 uses
  %i.y = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef nonnull %0, i32 noundef range(i32 1, 10) 6, i1 noundef zeroext %i.w, ptr noundef nonnull %i.a), !inline_history !1130 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = icmp eq i64 %i.ab, 6
  br i1 %i.ac, label %bb.f, label %JS_ThrowError2.exit, !prof !192

bb.f:                                             ; preds = %JS_ThrowError.exit
  br label %JS_ThrowError2.exit

JS_ThrowError2.exit:                              ; preds = %JS_ThrowError.exit, %bb.f
  %.sroa.02.0.i = phi i64 [ 0, %bb.f ], [ %i.z, %JS_ThrowError.exit ]
  %.sroa.7.0.i = phi i64 [ 2, %bb.f ], [ %i.aa, %JS_ThrowError.exit ]
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !232 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1240 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1248 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp ugt i32 %i.ai, -10
  br i1 %i.aj, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %JS_ThrowError2.exit
  %i.ak = inttoptr i64 %i.af to ptr
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !191 ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !191
  %i.ao = icmp slt i32 %i.am, 2
  br i1 %i.ao, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef nonnull %i.ad, i64 %i.af, i64 %i.ah), !inline_history !1131
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_ThrowError2.exit, %bb.g, %bb.h
  store i64 %.sroa.02.0.i, ptr %i.ae, align 8, !tbaa !218
  store i64 %.sroa.7.0.i, ptr %i.ag, align 8, !tbaa !240
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nounwind uwtable
define internal fastcc void @JS_ThrowError(ptr noundef %0, i32 noundef range(i32 1, 10) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1256
  %i.g = load i8, ptr %i.f, align 8, !tbaa !233, !range !234, !noundef !235
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %JS_GetFunctionBytecode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %JS_GetFunctionBytecode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 4294967295
  %.not.i = icmp eq i64 %i.k, 4294967295
  br i1 %.not.i, label %bb.d, label %JS_GetFunctionBytecode.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  %i.p = load i16, ptr %i.o, align 2, !tbaa !276
  %i.q = zext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, -13                    ; 2 uses
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 31)
  switch i32 %i.s, label %JS_GetFunctionBytecode.exit [
    i32 21, label %bb.e
    i32 2, label %bb.e
    i32 0, label %bb.e
    i32 23, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.v = icmp eq ptr %i.u, null
  br label %JS_GetFunctionBytecode.exit

JS_GetFunctionBytecode.exit:                      ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.w = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ %i.v, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.x = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef readonly %2, ptr noundef nonnull %3) #49, !inline_history !1132 ; 0 uses
  %i.y = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef nonnull %0, i32 noundef range(i32 1, 10) %1, i1 noundef zeroext %i.w, ptr noundef nonnull %i.a), !inline_history !1132 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = icmp eq i64 %i.ab, 6
  br i1 %i.ac, label %bb.f, label %JS_ThrowError2.exit, !prof !192

bb.f:                                             ; preds = %JS_GetFunctionBytecode.exit
  br label %JS_ThrowError2.exit

JS_ThrowError2.exit:                              ; preds = %JS_GetFunctionBytecode.exit, %bb.f
  %.sroa.02.0.i = phi i64 [ 0, %bb.f ], [ %i.z, %JS_GetFunctionBytecode.exit ]
  %.sroa.7.0.i = phi i64 [ 2, %bb.f ], [ %i.aa, %JS_GetFunctionBytecode.exit ]
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !232 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1240 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1248 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp ugt i32 %i.ai, -10
  br i1 %i.aj, label %bb.g, label %JS_Throw.exit

bb.g:                                             ; preds = %JS_ThrowError2.exit
  %i.ak = inttoptr i64 %i.af to ptr
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !191 ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !191
  %i.ao = icmp slt i32 %i.am, 2
  br i1 %i.ao, label %bb.h, label %JS_Throw.exit

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef nonnull %i.ad, i64 %i.af, i64 %i.ah), !inline_history !1133
  br label %JS_Throw.exit

JS_Throw.exit:                                    ; preds = %JS_ThrowError2.exit, %bb.g, %bb.h
  store i64 %.sroa.02.0.i, ptr %i.ae, align 8, !tbaa !218
  store i64 %.sroa.7.0.i, ptr %i.ag, align 8, !tbaa !240
  ret void
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewPlainError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef readonly %1, ptr noundef nonnull %2) #49, !inline_history !40 ; 0 uses
  %i.c = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef %0, i32 noundef 9, i1 noundef zeroext true, ptr noundef nonnull %i.a), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } %i.c
}

; Function Attrs: nounwind uwtable
define noundef { i64, i64 } @JS_ThrowPlainError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @JS_ThrowError(ptr noundef %0, i32 noundef 9, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewRangeError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef readonly %1, ptr noundef nonnull %2) #49, !inline_history !40 ; 0 uses
  %i.c = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef %0, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull %i.a), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } %i.c
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewReferenceError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef readonly %1, ptr noundef nonnull %2) #49, !inline_history !40 ; 0 uses
  %i.c = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef %0, i32 noundef 2, i1 noundef zeroext true, ptr noundef nonnull %i.a), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } %i.c
}

; Function Attrs: nounwind uwtable
define noundef { i64, i64 } @JS_ThrowReferenceError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1256
  %i.g = load i8, ptr %i.f, align 8, !tbaa !233, !range !234, !noundef !235
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %JS_GetFunctionBytecode.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %JS_GetFunctionBytecode.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 4294967295
  %.not.i.i = icmp eq i64 %i.k, 4294967295
  br i1 %.not.i.i, label %bb.d, label %JS_GetFunctionBytecode.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  %i.p = load i16, ptr %i.o, align 2, !tbaa !276
  %i.q = zext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, -13                    ; 2 uses
  %i.s = call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 31)
  switch i32 %i.s, label %JS_GetFunctionBytecode.exit.i [
    i32 21, label %bb.e
    i32 2, label %bb.e
    i32 0, label %bb.e
    i32 23, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.v = icmp eq ptr %i.u, null
  br label %JS_GetFunctionBytecode.exit.i

JS_GetFunctionBytecode.exit.i:                    ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %i.w = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ %i.v, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.x = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %1, ptr noundef nonnull %2) #49, !inline_history !31 ; 0 uses
  %i.y = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef nonnull %0, i32 noundef 2, i1 noundef zeroext %i.w, ptr noundef nonnull %i.a), !inline_history !31 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = icmp eq i64 %i.ab, 6
  br i1 %i.ac, label %bb.f, label %JS_ThrowError.exit, !prof !192

bb.f:                                             ; preds = %JS_GetFunctionBytecode.exit.i
  br label %JS_ThrowError.exit

JS_ThrowError.exit:                               ; preds = %JS_GetFunctionBytecode.exit.i, %bb.f
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.f ], [ %i.z, %JS_GetFunctionBytecode.exit.i ]
  %.sroa.7.0.i.i = phi i64 [ 2, %bb.f ], [ %i.aa, %JS_GetFunctionBytecode.exit.i ]
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !232 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1240 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1248 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp ugt i32 %i.ai, -10
  br i1 %i.aj, label %bb.g, label %JS_FreeValueRT.exit

bb.g:                                             ; preds = %JS_ThrowError.exit
  %i.ak = inttoptr i64 %i.af to ptr
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !191 ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !191
  %i.ao = icmp slt i32 %i.am, 2
  br i1 %i.ao, label %bb.h, label %JS_FreeValueRT.exit

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef nonnull %i.ad, i64 %i.af, i64 %i.ah), !inline_history !41
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %JS_ThrowError.exit, %bb.g, %bb.h
  store i64 %.sroa.02.0.i.i, ptr %i.ae, align 8, !tbaa !218
  store i64 %.sroa.7.0.i.i, ptr %i.ag, align 8, !tbaa !240
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewSyntaxError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef readonly %1, ptr noundef nonnull %2) #49, !inline_history !40 ; 0 uses
  %i.c = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef %0, i32 noundef 3, i1 noundef zeroext true, ptr noundef nonnull %i.a), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } %i.c
}

; Function Attrs: nounwind uwtable
define noundef { i64, i64 } @JS_ThrowSyntaxError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1256
  %i.g = load i8, ptr %i.f, align 8, !tbaa !233, !range !234, !noundef !235
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %JS_GetFunctionBytecode.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %JS_GetFunctionBytecode.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 4294967295
  %.not.i.i = icmp eq i64 %i.k, 4294967295
  br i1 %.not.i.i, label %bb.d, label %JS_GetFunctionBytecode.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  %i.p = load i16, ptr %i.o, align 2, !tbaa !276
  %i.q = zext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, -13                    ; 2 uses
  %i.s = call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 31)
  switch i32 %i.s, label %JS_GetFunctionBytecode.exit.i [
    i32 21, label %bb.e
    i32 2, label %bb.e
    i32 0, label %bb.e
    i32 23, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.v = icmp eq ptr %i.u, null
  br label %JS_GetFunctionBytecode.exit.i

JS_GetFunctionBytecode.exit.i:                    ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %i.w = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ %i.v, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.x = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %1, ptr noundef nonnull %2) #49, !inline_history !31 ; 0 uses
  %i.y = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef nonnull %0, i32 noundef 3, i1 noundef zeroext %i.w, ptr noundef nonnull %i.a), !inline_history !31 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = icmp eq i64 %i.ab, 6
  br i1 %i.ac, label %bb.f, label %JS_ThrowError.exit, !prof !192

bb.f:                                             ; preds = %JS_GetFunctionBytecode.exit.i
  br label %JS_ThrowError.exit

JS_ThrowError.exit:                               ; preds = %JS_GetFunctionBytecode.exit.i, %bb.f
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.f ], [ %i.z, %JS_GetFunctionBytecode.exit.i ]
  %.sroa.7.0.i.i = phi i64 [ 2, %bb.f ], [ %i.aa, %JS_GetFunctionBytecode.exit.i ]
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !232 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1240 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1248 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp ugt i32 %i.ai, -10
  br i1 %i.aj, label %bb.g, label %JS_FreeValueRT.exit

bb.g:                                             ; preds = %JS_ThrowError.exit
  %i.ak = inttoptr i64 %i.af to ptr
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !191 ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !191
  %i.ao = icmp slt i32 %i.am, 2
  br i1 %i.ao, label %bb.h, label %JS_FreeValueRT.exit

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef nonnull %i.ad, i64 %i.af, i64 %i.ah), !inline_history !41
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %JS_ThrowError.exit, %bb.g, %bb.h
  store i64 %.sroa.02.0.i.i, ptr %i.ae, align 8, !tbaa !218
  store i64 %.sroa.7.0.i.i, ptr %i.ag, align 8, !tbaa !240
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewTypeError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef readonly %1, ptr noundef nonnull %2) #49, !inline_history !40 ; 0 uses
  %i.c = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef %0, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull %i.a), !inline_history !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } %i.c
}

; Function Attrs: nounwind uwtable
define noundef { i64, i64 } @JS_ThrowTypeError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !264  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1256
  %i.g = load i8, ptr %i.f, align 8, !tbaa !233, !range !234, !noundef !235
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %JS_GetFunctionBytecode.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %JS_GetFunctionBytecode.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 4294967295
  %.not.i.i = icmp eq i64 %i.k, 4294967295
  br i1 %.not.i.i, label %bb.d, label %JS_GetFunctionBytecode.exit.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  %i.p = load i16, ptr %i.o, align 2, !tbaa !276
  %i.q = zext i16 %i.p to i32
  %i.r = add nsw i32 %i.q, -13                    ; 2 uses
  %i.s = call i32 @llvm.fshl.i32(i32 %i.r, i32 %i.r, i32 31)
  switch i32 %i.s, label %JS_GetFunctionBytecode.exit.i [
    i32 21, label %bb.e
    i32 2, label %bb.e
    i32 0, label %bb.e
    i32 23, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.v = icmp eq ptr %i.u, null
  br label %JS_GetFunctionBytecode.exit.i

JS_GetFunctionBytecode.exit.i:                    ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %i.w = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.c ], [ %i.v, %bb.e ], [ true, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.x = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %1, ptr noundef nonnull %2) #49, !inline_history !31 ; 0 uses
  %i.y = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef nonnull %0, i32 noundef 4, i1 noundef zeroext %i.w, ptr noundef nonnull %i.a), !inline_history !31 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = icmp eq i64 %i.ab, 6
  br i1 %i.ac, label %bb.f, label %JS_ThrowError.exit, !prof !192

bb.f:                                             ; preds = %JS_GetFunctionBytecode.exit.i
  br label %JS_ThrowError.exit

JS_ThrowError.exit:                               ; preds = %JS_GetFunctionBytecode.exit.i, %bb.f
  %.sroa.02.0.i.i = phi i64 [ 0, %bb.f ], [ %i.z, %JS_GetFunctionBytecode.exit.i ]
  %.sroa.7.0.i.i = phi i64 [ 2, %bb.f ], [ %i.aa, %JS_GetFunctionBytecode.exit.i ]
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !232 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1240 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1248 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp ugt i32 %i.ai, -10
  br i1 %i.aj, label %bb.g, label %JS_Throw.exit

bb.g:                                             ; preds = %JS_ThrowError.exit
  %i.ak = inttoptr i64 %i.af to ptr
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !191 ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !191
  %i.ao = icmp slt i32 %i.am, 2
  br i1 %i.ao, label %bb.h, label %JS_Throw.exit

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef nonnull %i.ad, i64 %i.af, i64 %i.ah), !inline_history !32
  br label %JS_Throw.exit

JS_Throw.exit:                                    ; preds = %JS_ThrowError.exit, %bb.g, %bb.h
  store i64 %.sroa.02.0.i.i, ptr %i.ae, align 8, !tbaa !218
  store i64 %.sroa.7.0.i.i, ptr %i.ag, align 8, !tbaa !240
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @JS_SetPrototype(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @JS_SetPrototypeInternal(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i1 noundef zeroext true)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @JS_SetPrototypeInternal(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i1 noundef zeroext %5) unnamed_addr #2 {
bb.a:
  br i1 %5, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = and i64 %2, 4294967294
  %or.cond = icmp eq i64 %i.a, 2
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = and i64 %2, 4294967295
  %.not = icmp eq i64 %i.b, 4294967295
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = inttoptr i64 %1 to ptr                   ; 6 uses
  %i.d = trunc i64 %4 to i32                      ; 2 uses
  switch i32 %i.d, label %bb.e [
    i32 -1, label %bb.f
    i32 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.e = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.118), !inline_history !42 ; 0 uses
  br label %js_shape_prepare_update.exit

bb.f:                                             ; preds = %bb.d
  %i.f = inttoptr i64 %3 to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.064 = phi ptr [ %i.f, %bb.f ], [ null, %bb.d ] ; 5 uses
  %i.g = and i64 %2, 4294967295
  %i.h = icmp ne i64 %i.g, 4294967295
  %or.cond7 = select i1 %5, i1 %i.h, i1 false
  br i1 %or.cond7, label %js_shape_prepare_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.j = load i16, ptr %i.i, align 2, !tbaa !276
  %i.k = icmp eq i16 %i.j, 51
  br i1 %i.k, label %bb.i, label %bb.j, !prof !192

bb.i:                                             ; preds = %bb.h
  %i.l = tail call fastcc i32 @js_proxy_setPrototypeOf(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i1 noundef zeroext %5)
  br label %js_shape_prepare_update.exit

bb.j:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !316  ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !336
  %i.q = icmp eq ptr %i.p, %.064
  br i1 %i.q, label %js_shape_prepare_update.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !350
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !218
  %i.v = icmp eq ptr %i.u, %i.c
  br i1 %i.v, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %5, label %bb.m, label %js_shape_prepare_update.exit

bb.m:                                             ; preds = %bb.l
  %i.w = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.105) ; 0 uses
  br label %js_shape_prepare_update.exit

bb.n:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8
  %i.z = and i16 %i.y, 2
  %.not72 = icmp eq i16 %i.z, 0
  br i1 %.not72, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  br i1 %5, label %bb.p, label %js_shape_prepare_update.exit

bb.p:                                             ; preds = %bb.o
  %i.aa = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.106) ; 0 uses
  br label %js_shape_prepare_update.exit

bb.q:                                             ; preds = %bb.n
  %.not73 = icmp eq ptr %.064, null               ; 2 uses
  br i1 %.not73, label %js_dup.exit, label %.preheader

.preheader:                                       ; preds = %bb.q, %bb.t
  %.065 = phi ptr [ %i.ag, %bb.t ], [ %.064, %bb.q ] ; 2 uses
  %i.ab = icmp eq ptr %.065, %i.c
  br i1 %i.ab, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.preheader
  br i1 %5, label %bb.s, label %js_shape_prepare_update.exit

bb.s:                                             ; preds = %bb.r
end_hunk_3
begin_hunk_4_@perform_promise_then:bb.a
  %i.fh = icmp ugt i32 %i.fg, -10
  br i1 %i.fh, label %bb.y, label %js_dup.exit.1122

bb.y:                                             ; preds = %js_mallocz.exit.1
  %i.fi = inttoptr i64 %i.fe to ptr
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !191
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !191
  br label %js_dup.exit.1122

js_dup.exit.1122:                                 ; preds = %bb.y, %js_mallocz.exit.1
  store i64 %i.fe, ptr %i.fd, align 8, !tbaa !218
  %.sroa.45.0..sroa_idx.1121 = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store i64 %i.ff, ptr %.sroa.45.0..sroa_idx.1121, align 8, !tbaa !240
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.fn = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.fo = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = icmp ugt i32 %i.fp, -10
  br i1 %i.fq, label %bb.z, label %js_dup.exit.1.1

bb.z:                                             ; preds = %js_dup.exit.1122
  %i.fr = inttoptr i64 %i.fn to ptr
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -4 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !191
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !191
  br label %js_dup.exit.1.1

js_dup.exit.1.1:                                  ; preds = %bb.z, %js_dup.exit.1122
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !218
  %.sroa.45.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  store i64 %i.fo, ptr %.sroa.45.0..sroa_idx.1.1, align 8, !tbaa !240
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.06.0.copyload.1 = load i64, ptr %i.fv, align 8, !tbaa !218 ; 3 uses
  %.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7.0.copyload.1 = load i64, ptr %.sroa.7.0..sroa_idx.1, align 8, !tbaa !240 ; 2 uses
  %i.fw = and i64 %.sroa.7.0.copyload.1, 4294967295
  %.not.i65.1 = icmp eq i64 %i.fw, 4294967295
  br i1 %.not.i65.1, label %bb.aa, label %.thread101.1

bb.aa:                                            ; preds = %js_dup.exit.1.1
  %i.fx = inttoptr i64 %.sroa.06.0.copyload.1 to ptr ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 18
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !276 ; 2 uses
  switch i16 %i.fz, label %JS_IsFunction.exit.1 [
    i16 13, label %bb.ab
    i16 51, label %.split.1
  ]

.split.1:                                         ; preds = %bb.aa
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !218
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !458
  %.fr.1 = freeze i8 %i.gd
  %.not.1 = icmp eq i8 %.fr.1, 0
  br i1 %.not.1, label %.thread101.1, label %bb.ab

JS_IsFunction.exit.1:                             ; preds = %bb.aa
  %i.ge = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1128
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !251
  %i.gh = zext i16 %i.fz to i64
  %i.gi = getelementptr inbounds nuw [40 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !255
  %.fr111.1 = freeze ptr %i.gk
  %.not112.1 = icmp eq ptr %.fr111.1, null
  br i1 %.not112.1, label %.thread101.1, label %bb.ab

bb.ab:                                            ; preds = %JS_IsFunction.exit.1, %.split.1, %bb.aa
  %i.gl = inttoptr i64 %.sroa.06.0.copyload.1 to ptr
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -4 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !191
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !191
  br label %.thread101.1

.thread101.1:                                     ; preds = %.split.1, %JS_IsFunction.exit.1, %bb.ab, %js_dup.exit.1.1
  %.sroa.06.sroa.0.0.insert.insert11104.1 = phi i64 [ %.sroa.06.0.copyload.1, %bb.ab ], [ 0, %.split.1 ], [ 0, %js_dup.exit.1.1 ], [ 0, %JS_IsFunction.exit.1 ]
  %i.gp = phi i64 [ %.sroa.7.0.copyload.1, %bb.ab ], [ 3, %.split.1 ], [ 3, %js_dup.exit.1.1 ], [ 3, %JS_IsFunction.exit.1 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  store i64 %.sroa.06.sroa.0.0.insert.insert11104.1, ptr %i.gq, align 8, !tbaa !218
  %.sroa.42.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  store i64 %i.gp, ptr %.sroa.42.0..sroa_idx.1, align 8, !tbaa !240
  store ptr %i.ek, ptr %i.h, align 8, !tbaa !1496
  %i.gr = load i32, ptr %.0.i, align 8, !tbaa !677 ; 7 uses
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %.preheader, label %bb.ac

.preheader:                                       ; preds = %.thread101.1
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !223 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.ao, ptr %i.gv, align 8, !tbaa !222
  store ptr %i.gu, ptr %i.ao, align 8, !tbaa !223
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.gt, ptr %i.gw, align 8, !tbaa !222
  store ptr %i.ao, ptr %i.gt, align 8, !tbaa !223
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !223 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %i.ek, ptr %i.gz, align 8, !tbaa !222
  store ptr %i.gy, ptr %i.ek, align 8, !tbaa !223
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %i.gx, ptr %i.ha, align 8, !tbaa !222
  store ptr %i.ek, ptr %i.gx, align 8, !tbaa !223
  br label %.loopexit

bb.ac:                                            ; preds = %.thread101.1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  br i1 %.not.i, label %bb.ad, label %call_promise_rejection_tracker.exit

bb.ad:                                            ; preds = %bb.ac
  %i.hb = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 18
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !276
  %.not3.i.i = icmp eq i16 %i.hd, 52
  br i1 %.not3.i.i, label %JS_GetOpaque.exit.i, label %call_promise_rejection_tracker.exit

JS_GetOpaque.exit.i:                              ; preds = %bb.ad
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !218 ; 5 uses
  %i.hg = load ptr, ptr %i.i, align 8, !tbaa !232 ; 2 uses
  %.not.i70 = icmp eq ptr %i.hf, null
  br i1 %.not.i70, label %call_promise_rejection_tracker.exit, label %bb.ae

bb.ae:                                            ; preds = %JS_GetOpaque.exit.i
  %i.hh = load i32, ptr %i.hf, align 8, !tbaa !677
  %i.hi = icmp eq i32 %i.hh, 2
  br i1 %i.hi, label %bb.af, label %call_promise_rejection_tracker.exit

bb.af:                                            ; preds = %bb.ae
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !678, !range !234, !noundef !235
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %call_promise_rejection_tracker.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 1312
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !679 ; 2 uses
  %.not12.i = icmp eq ptr %i.hn, null
  br i1 %.not12.i, label %call_promise_rejection_tracker.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 1320
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !680
  %i.hr = load i64, ptr %i.ho, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  %i.ht = load i64, ptr %i.hs, align 8
  tail call void %i.hn(ptr noundef nonnull %0, i64 %1, i64 %2, i64 %i.hr, i64 %i.ht, i1 noundef zeroext true, ptr noundef %i.hq) #49, !inline_history !116
  %.pre = load i32, ptr %.0.i, align 8, !tbaa !677
  br label %call_promise_rejection_tracker.exit

call_promise_rejection_tracker.exit:              ; preds = %bb.ac, %bb.ad, %JS_GetOpaque.exit.i, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %i.hu = phi i32 [ %i.gr, %bb.ac ], [ %i.gr, %bb.ad ], [ %i.gr, %JS_GetOpaque.exit.i ], [ %i.gr, %bb.ae ], [ %i.gr, %bb.af ], [ %i.gr, %bb.ag ], [ %.pre, %bb.ah ]
  %i.hv = add nsw i32 %i.hu, -1                   ; 2 uses
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !1496 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i64 16, i1 false), !tbaa.struct !282
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ia, ptr noundef nonnull align 8 dereferenceable(16) %i.ib, i64 16, i1 false), !tbaa.struct !282
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ic, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false), !tbaa.struct !282
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.if = icmp ne i32 %i.hv, 0
  %.sroa.0.0.insert.ext.i = zext i1 %i.if to i64
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.ie, align 16, !tbaa !218
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ig, ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i64 16, i1 false), !tbaa.struct !282
  %i.ii = call i32 @JS_EnqueueJob(ptr noundef nonnull %0, ptr noundef nonnull @promise_reaction_job, i32 noundef 5, ptr noundef nonnull %5) ; 0 uses
  %i.ij = load ptr, ptr %i.i, align 8, !tbaa !232
  tail call fastcc void @promise_reaction_data_free(ptr noundef %i.ij, ptr noundef nonnull %i.ao)
  %i.ik = load ptr, ptr %i.i, align 8, !tbaa !232
  tail call fastcc void @promise_reaction_data_free(ptr noundef %i.ik, ptr noundef nonnull %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %call_promise_rejection_tracker.exit
  %i.il = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i8 1, ptr %i.il, align 8, !tbaa !678
  br label %.thread105

.thread105:                                       ; preds = %bb.m, %bb.l, %.loopexit
  %.2 = phi i32 [ 0, %.loopexit ], [ -1, %bb.l ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal noundef { i64, i64 } @js_promise_resolve_function_call(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 %7) #2 {
bb.a:
  %8 = alloca [3 x %struct.JSValue], align 16     ; 8 uses
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218  ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !691
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !693, !range !234, !noundef !235
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %JS_FreeValue.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.f, align 4, !tbaa !693
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.j = load i16, ptr %i.i, align 2, !tbaa !276
  %i.k = icmp ne i16 %i.j, 53                     ; 2 uses
  %i.l = icmp sgt i32 %5, 0
  br i1 %i.l, label %bb.d, label %JS_FreeValue.exit82

bb.d:                                             ; preds = %bb.c
  %.sroa.017.0.copyload = load i64, ptr %6, align 8, !tbaa !218 ; 8 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !240 ; 9 uses
  %i.m = and i64 %.sroa.10.0.copyload, 4294967295
  %i.n = icmp ne i64 %i.m, 4294967295
  %or.cond.not = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond.not, label %JS_FreeValue.exit82, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = tail call fastcc zeroext i1 @js_strict_eq2(i64 %.sroa.017.0.copyload, i64 %.sroa.10.0.copyload, i64 %i.o, i64 %i.q, i32 noundef 1)
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.382) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %.sroa.017.0.copyload, i64 %.sroa.10.0.copyload, i32 noundef 137, i64 %.sroa.017.0.copyload, i64 %.sroa.10.0.copyload, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 5 uses
  %i.v = extractvalue { i64, i64 } %i.t, 1        ; 4 uses
  %trunc = trunc i64 %i.v to i32                  ; 2 uses
  switch i32 %trunc, label %JS_IsFunction.exit.thread85 [
    i32 6, label %bb.h
    i32 -1, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !232  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1240 ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !218 ; 3 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1248 ; 2 uses
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !240 ; 3 uses
  store i32 0, ptr %i.y, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1244
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !240
  %i.z = load i64, ptr %i.c, align 8
  %i.aa = load i64, ptr %i.p, align 8
  tail call fastcc void @fulfill_or_reject_promise(ptr noundef %0, i64 %i.z, i64 %i.aa, i64 %.sroa.03.0.copyload.i, i64 %.sroa.24.0.copyload.i, i1 noundef zeroext true)
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !232
  %i.ac = trunc i64 %.sroa.24.0.copyload.i to i32
  %i.ad = icmp ugt i32 %i.ac, -10
  br i1 %i.ad, label %bb.i, label %JS_FreeValue.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = inttoptr i64 %.sroa.03.0.copyload.i to ptr
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !191 ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !191
  %i.ai = icmp slt i32 %i.ag, 2
  br i1 %i.ai, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ab, i64 %.sroa.03.0.copyload.i, i64 %.sroa.24.0.copyload.i), !inline_history !291
  br label %JS_FreeValue.exit

bb.k:                                             ; preds = %bb.g
  %i.aj = inttoptr i64 %i.u to ptr                ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !276 ; 2 uses
  switch i16 %i.al, label %JS_IsFunction.exit [
    i16 13, label %bb.m
    i16 51, label %.split
  ]

.split:                                           ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !218
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !458
  %.not90 = icmp eq i8 %i.ap, 0
  br i1 %.not90, label %JS_IsFunction.exit.thread85.thread, label %bb.m

JS_IsFunction.exit:                               ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !232
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1128
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !251
  %i.au = zext i16 %i.al to i64
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !255
  %.not91 = icmp eq ptr %i.ax, null
  br i1 %.not91, label %JS_IsFunction.exit.thread85.thread, label %bb.m

JS_IsFunction.exit.thread85:                      ; preds = %bb.g
  %i.ay = icmp ugt i32 %trunc, -10
  br i1 %i.ay, label %JS_IsFunction.exit.thread85.thread, label %JS_FreeValue.exit82

JS_IsFunction.exit.thread85.thread:               ; preds = %JS_IsFunction.exit, %.split, %JS_IsFunction.exit.thread85
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %.in, align 8, !tbaa !232
  %i.ba = inttoptr i64 %i.u to ptr
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !191 ; 2 uses
  %i.bd = add nsw i32 %i.bc, -1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !191
  %i.be = icmp slt i32 %i.bc, 2
  br i1 %i.be, label %bb.l, label %JS_FreeValue.exit82

bb.l:                                             ; preds = %JS_IsFunction.exit.thread85.thread
  tail call fastcc void @js_free_value_rt(ptr noundef %i.az, i64 %i.u, i64 %i.v), !inline_history !291
  br label %JS_FreeValue.exit82

JS_FreeValue.exit82:                              ; preds = %bb.c, %bb.l, %JS_IsFunction.exit.thread85.thread, %JS_IsFunction.exit.thread85, %bb.d
  %.sroa.017.sroa.9.096 = phi i64 [ %.sroa.017.0.copyload, %bb.d ], [ %.sroa.017.0.copyload, %bb.l ], [ %.sroa.017.0.copyload, %JS_IsFunction.exit.thread85.thread ], [ %.sroa.017.0.copyload, %JS_IsFunction.exit.thread85 ], [ 0, %bb.c ]
  %.sroa.10.095 = phi i64 [ %.sroa.10.0.copyload, %bb.d ], [ %.sroa.10.0.copyload, %bb.l ], [ %.sroa.10.0.copyload, %JS_IsFunction.exit.thread85.thread ], [ %.sroa.10.0.copyload, %JS_IsFunction.exit.thread85 ], [ 3, %bb.c ]
  %i.bf = load i64, ptr %i.c, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  tail call fastcc void @fulfill_or_reject_promise(ptr noundef %0, i64 %i.bf, i64 %i.bh, i64 %.sroa.017.sroa.9.096, i64 %.sroa.10.095, i1 noundef zeroext %i.k)
  br label %JS_FreeValue.exit

bb.m:                                             ; preds = %JS_IsFunction.exit, %.split, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !282
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.sroa.017.0.copyload, ptr %i.bi, align 16, !tbaa !218
  %.sroa.10.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx22, align 8, !tbaa !240
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.u, ptr %i.bj, align 16, !tbaa !218
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %i.v, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !240
  %i.bk = call i32 @JS_EnqueueJob(ptr noundef %0, ptr noundef nonnull @js_promise_resolve_thenable_job, i32 noundef 3, ptr noundef nonnull %8) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !232
  %i.bn = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !191 ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !191
  %i.bq = icmp slt i32 %i.bo, 2
  br i1 %i.bq, label %bb.n, label %JS_FreeValue.exit

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bm, i64 %i.u, i64 %i.v), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %JS_FreeValue.exit82, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  ret { i64, i64 } { i64 0, i64 3 }
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_async_function_call(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 %7) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !196
  %i.f = add i64 %i.e, 160
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !197
  %i.i = add i64 %i.h, -1
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %js_arena_malloc.exit.thread, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 840
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !222  ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %bb.c, label %bb.d, !prof !192

bb.c:                                             ; preds = %bb.b
  %i.o = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.b, i32 noundef 17) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.d

end_hunk_4
begin_hunk_5_@JS_GetUint8Array:bb.a
typed_array_is_oob.exit:                          ; preds = %bb.e
  %i.ac = zext nneg i16 %i.d to i64
  %i.ad = getelementptr i8, ptr @typed_array_size_log2, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -22
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !218
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !218
  %i.ak = zext i32 %i.aj to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.al, %i.ak
  %i.an = add nsw i64 %i.am, %i.w
  %i.ao = icmp sgt i64 %i.an, %i.v
  br i1 %i.ao, label %get_typed_array.exit.thread, label %typed_array_is_oob.exit.thread27

typed_array_is_oob.exit.thread27:                 ; preds = %bb.d, %typed_array_is_oob.exit
  switch i16 %i.d, label %get_typed_array.exit.thread [
    i16 24, label %bb.f
    i16 22, label %bb.f
  ]

bb.f:                                             ; preds = %typed_array_is_oob.exit.thread27, %typed_array_is_oob.exit.thread27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !514
  %i.ar = zext i32 %i.aq to i64
  store i64 %i.ar, ptr %1, align 8, !tbaa !240
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !447
  %i.au = zext i32 %i.q to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  br label %bb.g

get_typed_array.exit.thread:                      ; preds = %typed_array_is_oob.exit.thread27, %typed_array_is_oob.exit, %get_typed_array.exit, %bb.c, %bb.e, %bb.b, %bb.a
  %.str.966.sink = phi ptr [ @.str.966, %bb.b ], [ @.str.967, %typed_array_is_oob.exit ], [ @.str.966, %bb.a ], [ @.str.967, %bb.e ], [ @.str.967, %bb.c ], [ @.str.967, %get_typed_array.exit ], [ @.str.80, %typed_array_is_oob.exit.thread27 ]
  %i.aw = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull %.str.966.sink) ; 0 uses
  store i64 0, ptr %1, align 8, !tbaa !240
  br label %bb.g

bb.g:                                             ; preds = %get_typed_array.exit.thread, %bb.f
  %.0 = phi ptr [ null, %get_typed_array.exit.thread ], [ %i.av, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewUint8Array(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #2 {
bb.a:
  %i.a = select i1 %5, i32 21, i32 20
  %i.b = tail call fastcc { i64, i64 } @js_array_buffer_constructor3(ptr noundef %0, i64 0, i64 3, i64 noundef %2, ptr noundef null, i32 noundef %i.a, ptr noundef %1, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call fastcc { i64, i64 } @js_new_uint8array(ptr noundef %0, i64 %i.c, i64 %i.d)
  ret { i64, i64 } %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_new_uint8array(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 3 uses
  %i.b = and i64 %2, 4294967295                   ; 2 uses
  %i.c = icmp eq i64 %i.b, 6
  br i1 %i.c, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef %0, i64 0, i64 3, i32 noundef 24) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 4 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 4 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.k = trunc i64 %2 to i32
  %i.l = icmp ugt i32 %i.k, -10
  br i1 %i.l, label %bb.d, label %JS_FreeValue.exit

bb.d:                                             ; preds = %bb.c
  %i.m = inttoptr i64 %1 to ptr
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !191  ; 2 uses
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !191
  %i.q = icmp slt i32 %i.o, 2
  br i1 %i.q, label %bb.e, label %JS_FreeValue.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @js_free_value_rt(ptr noundef %i.j, i64 %1, i64 %2), !inline_history !291
  br label %JS_FreeValue.exit

bb.f:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.b, 4294967295
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %i.t = load i16, ptr %i.s, align 2, !tbaa !276
  %i.u = and i16 %i.t, -2
  %switch.i = icmp eq i16 %i.u, 20
  br i1 %switch.i, label %js_get_array_buffer.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !232  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !251
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 804
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.ab = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %i.w, ptr noundef nonnull %i.a, i32 noundef %i.aa) ; 0 uses
  %i.ac = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.a) #51, !inline_history !124 ; 0 uses
  unreachable

js_get_array_buffer.exit:                         ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !218
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !448
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call fastcc i32 @typed_array_init(ptr noundef %0, i64 %i.e, i64 %1, i64 %2, i64 noundef 0, i64 noundef %i.ag, i1 noundef zeroext false)
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %JS_FreeValue.exit, label %bb.i

bb.i:                                             ; preds = %js_get_array_buffer.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !232
  %i.ak = trunc i64 %i.f to i32
  %i.al = icmp ugt i32 %i.ak, -10
  br i1 %i.al, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %bb.i
  %i.am = inttoptr i64 %i.e to ptr
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !191 ; 2 uses
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !191
  %i.aq = icmp slt i32 %i.ao, 2
  br i1 %i.aq, label %bb.k, label %JS_FreeValue.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @js_free_value_rt(ptr noundef %i.aj, i64 %i.e, i64 %i.f), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c, %js_get_array_buffer.exit, %bb.a
  %.sroa.8.2 = phi i64 [ 6, %bb.a ], [ %i.f, %js_get_array_buffer.exit ], [ 6, %bb.e ], [ 6, %bb.c ], [ 6, %bb.d ], [ 6, %bb.i ], [ 6, %bb.j ], [ 6, %bb.k ]
  %.sroa.018.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.e, %js_get_array_buffer.exit ], [ 0, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.018.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.2, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewUint8ArrayCopy(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @js_array_buffer_constructor3(ptr noundef %0, i64 0, i64 3, i64 noundef %2, ptr noundef null, i32 noundef 20, ptr noundef %1, ptr noundef nonnull @js_array_buffer_realloc, ptr noundef null, i1 noundef zeroext true) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1
  %i.d = tail call fastcc { i64, i64 } @js_new_uint8array(ptr noundef %0, i64 %i.b, i64 %i.c)
  ret { i64, i64 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -22, 65514) i32 @JS_GetTypedArrayType(i64 %0, i64 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = and i64 %1, 4294967295
  %.not.i = icmp eq i64 %i.a, 4294967295
  br i1 %.not.i, label %JS_GetClassID.exit, label %JS_GetClassID.exit.thread

JS_GetClassID.exit:                               ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i16, ptr %i.c, align 2, !tbaa !276
  %.fr = freeze i16 %i.d
  %i.e = zext i16 %.fr to i32
  %i.f = add nsw i32 %i.e, -22                    ; 2 uses
  %i.g = icmp ult i32 %i.f, 12
  %spec.select = select i1 %i.g, i32 %i.f, i32 -1
  br label %JS_GetClassID.exit.thread

JS_GetClassID.exit.thread:                        ; preds = %JS_GetClassID.exit, %bb.a
  %i.h = phi i32 [ -1, %bb.a ], [ %spec.select, %JS_GetClassID.exit ]
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_array_buffer_constructor(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @js_array_buffer_constructor0(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr noundef %4, i32 noundef 20)
  ret { i64, i64 } %i.a
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_shared_array_buffer_constructor(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @js_array_buffer_constructor0(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr noundef %4, i32 noundef 21)
  ret { i64, i64 } %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef { i64, i64 } @js_typed_array_base_constructor(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %i.a = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.994) ; 0 uses
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_uint8array_funcs_init(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %i.b, i64 %i.d, i32 noundef 177, i64 %i.b, i64 %i.d, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 6 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 7 uses
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 6
  br i1 %i.i, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %i.f, i64 %i.g, i32 noundef 63, i64 %i.f, i64 %i.g, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 3 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 4 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 6
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = trunc i64 %i.g to i32
  %i.p = icmp ugt i32 %i.o, -10
  br i1 %i.p, label %bb.d, label %JS_FreeValue.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !232
  %i.s = inttoptr i64 %i.f to ptr
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !191  ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !191
  %i.w = icmp slt i32 %i.u, 2
  br i1 %i.w, label %JS_FreeValue.exit.sink.split, label %JS_FreeValue.exit

bb.e:                                             ; preds = %bb.b
  %i.x = tail call i32 @JS_SetPropertyFunctionList(ptr noundef nonnull %0, i64 %i.k, i64 %i.l, ptr noundef nonnull @js_uint8array_proto_funcs, i32 noundef 4) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !232
  %i.aa = trunc i64 %i.l to i32
  %i.ab = icmp ugt i32 %i.aa, -10
  br i1 %i.ab, label %bb.f, label %JS_FreeValue.exit24

bb.f:                                             ; preds = %bb.e
  %i.ac = inttoptr i64 %i.k to ptr
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !191 ; 2 uses
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !191
  %i.ag = icmp slt i32 %i.ae, 2
  br i1 %i.ag, label %bb.g, label %JS_FreeValue.exit24

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @js_free_value_rt(ptr noundef %i.z, i64 %i.k, i64 %i.l), !inline_history !291
  br label %JS_FreeValue.exit24

JS_FreeValue.exit24:                              ; preds = %bb.e, %bb.f, %bb.g
  %i.ah = tail call i32 @JS_SetPropertyFunctionList(ptr noundef nonnull %0, i64 %i.f, i64 %i.g, ptr noundef nonnull @js_uint8array_funcs, i32 noundef 2) ; 0 uses
  %i.ai = trunc i64 %i.g to i32
  %i.aj = icmp ugt i32 %i.ai, -10
  br i1 %i.aj, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %JS_FreeValue.exit24
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !232
  %i.al = inttoptr i64 %i.f to ptr
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !191 ; 2 uses
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !191
  %i.ap = icmp slt i32 %i.an, 2
  br i1 %i.ap, label %JS_FreeValue.exit.sink.split, label %JS_FreeValue.exit

JS_FreeValue.exit.sink.split:                     ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.r, %bb.d ], [ %i.ak, %bb.h ]
  %.0.ph = phi i32 [ -1, %bb.d ], [ 0, %bb.h ]
  tail call fastcc void @js_free_value_rt(ptr noundef %.sink, i64 %i.f, i64 %i.g)
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_FreeValue.exit.sink.split, %bb.h, %JS_FreeValue.exit24, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.h ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.d ], [ 0, %JS_FreeValue.exit24 ], [ %.0.ph, %JS_FreeValue.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_dataview_constructor(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !240
  %i.b = and i64 %.sroa.5.0.copyload, 4294967295
  %.not.i = icmp eq i64 %i.b, 4294967295
  br i1 %.not.i, label %bb.b, label %js_get_array_buffer.exit.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.019.0.copyload = load i64, ptr %4, align 8, !tbaa !218
  %i.c = inttoptr i64 %.sroa.019.0.copyload to ptr ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !276
  %i.f = and i16 %i.e, -2
  %switch.i = icmp eq i16 %i.f, 20
  br i1 %switch.i, label %js_get_array_buffer.exit, label %js_get_array_buffer.exit.thread

js_get_array_buffer.exit.thread:                  ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !232  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !251
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 804
  %i.l = load i32, ptr %i.k, align 4, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.m = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %i.h, ptr noundef nonnull %i.a, i32 noundef %i.l) ; 0 uses
  %i.n = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.a) #51, !inline_history !124 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %JS_FreeValue.exit

js_get_array_buffer.exit:                         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !218  ; 6 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %JS_FreeValue.exit, label %bb.c

bb.c:                                             ; preds = %js_get_array_buffer.exit
  %i.q = icmp sgt i32 %3, 1
  br i1 %i.q, label %bb.d, label %JS_ToIndex.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp ugt i32 %i.v, -10
  br i1 %i.w, label %bb.e, label %js_dup.exit.i.i.preheader

bb.e:                                             ; preds = %bb.d
  %i.x = inttoptr i64 %i.s to ptr
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !191
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.e, %bb.d
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.i
  %.sroa.012.0.in.i.i.i = phi i64 [ %i.ai, %bb.i ], [ %i.s, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.aj, %bb.i ], [ %i.u, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.ab = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.ab, label %bb.i [
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 6, label %JS_FreeValue.exit
    i32 8, label %bb.g
  ]

bb.f:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %sext.i.i.i = shl i64 %.sroa.012.0.in.i.i.i, 32
  %i.ac = ashr exact i64 %sext.i.i.i, 32
  br label %select.unfold.i

bb.g:                                             ; preds = %js_dup.exit.i.i
  %.sroa.012.0.le.i.i.i = bitcast i64 %.sroa.012.0.in.i.i.i to double ; 4 uses
  %i.ad = fcmp uno double %.sroa.012.0.le.i.i.i, 0.000000e+00
  br i1 %i.ad, label %JS_ToIndex.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = fcmp uge double %.sroa.012.0.le.i.i.i, f0xC3E0000000000000
  %i.af = fcmp ult double %.sroa.012.0.le.i.i.i, f0x43E0000000000000
  %i.ag = fptosi double %.sroa.012.0.le.i.i.i to i64
  %or.cond18.i = and i1 %i.ae, %i.af
  br i1 %or.cond18.i, label %select.unfold.i, label %.thread.i

bb.i:                                             ; preds = %js_dup.exit.i.i
  %i.ah = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !127 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1      ; 2 uses
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = icmp eq i64 %i.ak, 6
  br i1 %i.al, label %JS_FreeValue.exit, label %js_dup.exit.i.i

select.unfold.i:                                  ; preds = %bb.h, %bb.f
  %.sink.i.i.ph.i = phi i64 [ %i.ac, %bb.f ], [ %i.ag, %bb.h ] ; 2 uses
  %or.cond.i = icmp ugt i64 %.sink.i.i.ph.i, 9007199254740991
  br i1 %or.cond.i, label %.thread.i, label %JS_ToIndex.exit

.thread.i:                                        ; preds = %select.unfold.i, %bb.h
  %i.am = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.54), !inline_history !745 ; 0 uses
  br label %JS_FreeValue.exit

end_hunk_5
begin_hunk_6_@js_finrec_constructor:bb.a
  %i.d = and i64 %.sroa.5.0.copyload, 4294967295
  %.not.i.i = icmp eq i64 %i.d, 4294967295
  br i1 %.not.i.i, label %bb.d, label %check_function.exit, !prof !684

bb.d:                                             ; preds = %bb.c
  %i.e = inttoptr i64 %.sroa.010.0.copyload to ptr ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.g = load i16, ptr %i.f, align 2, !tbaa !276  ; 2 uses
  switch i16 %i.g, label %JS_IsFunction.exit.i [
    i16 13, label %bb.e
    i16 51, label %.split.i
  ]

.split.i:                                         ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !458
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %check_function.exit, label %bb.e, !prof !404

JS_IsFunction.exit.i:                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !251
  %i.p = zext i16 %i.g to i64
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !255
  %.not6.i = icmp eq ptr %i.s, null
  br i1 %.not6.i, label %check_function.exit, label %bb.e, !prof !404

check_function.exit:                              ; preds = %bb.c, %.split.i, %JS_IsFunction.exit.i
  %i.t = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.165), !inline_history !117 ; 0 uses
  br label %JS_FreeValue.exit

bb.e:                                             ; preds = %JS_IsFunction.exit.i, %.split.i, %bb.d
  %i.u = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef %0, i64 %1, i64 %2, i32 noundef 63) ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 4 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 4 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 6
  br i1 %i.y, label %JS_FreeValue.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !232 ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !196
  %i.ae = add i64 %i.ad, 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !197
  %i.ah = add i64 %i.ag, -1
  %i.ai = icmp ugt i64 %i.ae, %i.ah
  br i1 %i.ai, label %bb.o, label %bb.g, !prof !192

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 632
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 640
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !222 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.aj
  br i1 %i.am, label %bb.h, label %bb.i, !prof !192

bb.h:                                             ; preds = %bb.g
  %i.an = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.aa, i32 noundef 4) ; 2 uses
  %.not.i31 = icmp eq ptr %i.an, null
  br i1 %.not.i31, label %._crit_edge.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i30 = phi ptr [ %i.an, %bb.h ], [ %i.al, %bb.g ] ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i30, i64 38 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !221 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i30, i64 40
  %i.ar = zext i16 %i.ap to i64
  %i.as = mul nuw nsw i64 %i.ar, 48
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as ; 11 uses
  %i.au = load i16, ptr %i.at, align 8, !tbaa !218
  store i16 %i.au, ptr %i.ao, align 2, !tbaa !221
  store i16 %i.ap, ptr %i.at, align 8, !tbaa !218
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i30, i64 34 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !221
  %i.ax = add i16 %i.aw, 1                        ; 2 uses
  store i16 %i.ax, ptr %i.av, align 2, !tbaa !221
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i30, i64 36
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !221
  %i.ba = icmp eq i16 %i.ax, %i.az
  br i1 %i.ba, label %bb.j, label %bb.k, !prof !192

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %.0.i30, align 8, !tbaa !223 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i30, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !222 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !222
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i30, i8 0, i64 16, i1 false)
  br label %bb.k

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.z, align 8, !tbaa !232
  br label %bb.o

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.bg = load i64, ptr %i.ab, align 8, !tbaa !217
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.ab, align 8, !tbaa !217
  %i.bi = load i16, ptr %i.at, align 8, !tbaa !218
  %i.bj = icmp eq i16 %i.bi, -1
  br i1 %i.bj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 1064
  %i.bl = icmp eq ptr %i.at, %i.bk
  br i1 %i.bl, label %js_dup.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !219
  %i.bo = tail call i64 %i.bn(ptr noundef nonnull %i.at) #49, !inline_history !5 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.bo, 0
  %i.bp = select i1 %.not15.i.i.i, i64 8, i64 %i.bo
  br label %js_dup.exit

bb.n:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !218
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !221
  %i.bv = zext i16 %i.bu to i64
  br label %js_dup.exit

bb.o:                                             ; preds = %._crit_edge.i, %bb.f
  %i.bw = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1256 ; 3 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !233, !range !234, !noundef !235
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.bx, align 8, !tbaa !233
  %i.ca = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.bx, align 8, !tbaa !233
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !232
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.cb = phi ptr [ %i.bw, %bb.o ], [ %.pre, %bb.p ]
  %i.cc = trunc i64 %i.w to i32
  %i.cd = icmp ugt i32 %i.cc, -10
  br i1 %i.cd, label %bb.r, label %JS_FreeValue.exit

bb.r:                                             ; preds = %bb.q
  %i.ce = inttoptr i64 %i.v to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !191 ; 2 uses
  %i.ch = add nsw i32 %i.cg, -1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !191
  %i.ci = icmp slt i32 %i.cg, 2
  br i1 %i.ci, label %bb.s, label %JS_FreeValue.exit

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cb, i64 %i.v, i64 %i.w), !inline_history !291
  br label %JS_FreeValue.exit

js_dup.exit:                                      ; preds = %bb.n, %bb.m, %bb.l
  %.011.i.i.i = phi i64 [ 8, %bb.l ], [ %i.bp, %bb.m ], [ %i.bv, %bb.n ]
  %i.cj = load i64, ptr %i.ac, align 8, !tbaa !196
  %i.ck = add i64 %i.cj, %.011.i.i.i
  store i64 %i.ck, ptr %i.ac, align 8, !tbaa !196
  store ptr %i.bf, ptr %i.bf, align 8, !tbaa !223
  %i.cl = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.bf, ptr %i.cl, align 8, !tbaa !222
  %i.cm = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %0, ptr %i.cm, align 8, !tbaa !748
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.co = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !191
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !191
  store i64 %.sroa.010.0.copyload, ptr %i.cn, align 8, !tbaa !218
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  %i.cr = inttoptr i64 %i.v to ptr
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  store ptr %i.bf, ptr %i.cs, align 8, !tbaa !218
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.s, %bb.r, %bb.q, %check_function.exit, %js_dup.exit, %bb.e, %bb.b
  %.sroa.9.3 = phi i64 [ 6, %bb.b ], [ 6, %check_function.exit ], [ 6, %bb.e ], [ %i.w, %js_dup.exit ], [ 6, %bb.q ], [ 6, %bb.r ], [ 6, %bb.s ]
  %.sroa.023.0.insert.insert = phi i64 [ 0, %bb.b ], [ 0, %check_function.exit ], [ 0, %bb.e ], [ %i.v, %js_dup.exit ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.023.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.9.3, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define noundef { i64, i64 } @JS_ThrowDOMException(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ...) local_unnamed_addr #2 {
bb.a:
  %3 = alloca [2 x %struct.JSValue], align 16     ; 7 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.va_start.p0(ptr nonnull %4)
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef %2, ptr noundef nonnull %4) #49 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #52, !inline_history !98
  %i.d = call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.c), !inline_history !98 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 5 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 6 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #52, !inline_history !98
  %i.j = call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.i), !inline_history !98 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 3 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 4 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 6
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !232
  %i.q = trunc i64 %i.f to i32
  %i.r = icmp ugt i32 %i.q, -10
  br i1 %i.r, label %bb.d, label %JS_FreeValue.exit

bb.d:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.e to ptr
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !191  ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !191
  %i.w = icmp slt i32 %i.u, 2
  br i1 %i.w, label %bb.e, label %JS_FreeValue.exit

bb.e:                                             ; preds = %bb.d
  call fastcc void @js_free_value_rt(ptr noundef %i.p, i64 %i.e, i64 %i.f), !inline_history !291
  br label %JS_FreeValue.exit

bb.f:                                             ; preds = %bb.b
  store i64 %i.k, ptr %3, align 16, !tbaa !218
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.l, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.e, ptr %i.x, align 16, !tbaa !218
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.f, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !240
  %i.y = call fastcc { i64, i64 } @js_domexception_constructor0(ptr noundef %0, i64 0, i64 3, ptr noundef nonnull %3, i32 noundef 0) ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !232 ; 3 uses
  %i.ad = trunc i64 %i.l to i32
  %i.ae = icmp ugt i32 %i.ad, -10
  br i1 %i.ae, label %bb.g, label %JS_FreeValue.exit27

bb.g:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.k to ptr
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !191 ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !191
  %i.aj = icmp slt i32 %i.ah, 2
  br i1 %i.aj, label %bb.h, label %JS_FreeValue.exit27

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef %i.ac, i64 %i.k, i64 %i.l), !inline_history !291
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !232
  br label %JS_FreeValue.exit27

JS_FreeValue.exit27:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.ak = phi ptr [ %i.ac, %bb.f ], [ %i.ac, %bb.g ], [ %.pre, %bb.h ]
  %i.al = trunc i64 %i.f to i32
  %i.am = icmp ugt i32 %i.al, -10
  br i1 %i.am, label %bb.i, label %JS_FreeValue.exit28

bb.i:                                             ; preds = %JS_FreeValue.exit27
  %i.an = inttoptr i64 %i.e to ptr
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !191 ; 2 uses
  %i.aq = add nsw i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !191
  %i.ar = icmp slt i32 %i.ap, 2
  br i1 %i.ar, label %bb.j, label %JS_FreeValue.exit28

bb.j:                                             ; preds = %bb.i
  call fastcc void @js_free_value_rt(ptr noundef %i.ak, i64 %i.e, i64 %i.f), !inline_history !291
  br label %JS_FreeValue.exit28

JS_FreeValue.exit28:                              ; preds = %JS_FreeValue.exit27, %bb.i, %bb.j
  %i.as = and i64 %i.aa, 4294967295
  %i.at = icmp eq i64 %i.as, 6
  br i1 %i.at, label %JS_FreeValue.exit, label %bb.k

bb.k:                                             ; preds = %JS_FreeValue.exit28
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !232 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1240 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 1248 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp ugt i32 %i.az, -10
  br i1 %i.ba, label %bb.l, label %JS_Throw.exit

bb.l:                                             ; preds = %bb.k
  %i.bb = inttoptr i64 %i.aw to ptr
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !191 ; 2 uses
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !191
  %i.bf = icmp slt i32 %i.bd, 2
  br i1 %i.bf, label %bb.m, label %JS_Throw.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @js_free_value_rt(ptr noundef nonnull %i.au, i64 %i.aw, i64 %i.ay), !inline_history !694
  br label %JS_Throw.exit

JS_Throw.exit:                                    ; preds = %bb.k, %bb.l, %bb.m
  store i64 %i.z, ptr %i.av, align 8, !tbaa !218
  store i64 %i.aa, ptr %i.ax, align 8, !tbaa !240
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.e, %bb.d, %bb.c, %JS_FreeValue.exit28, %bb.a, %JS_Throw.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_domexception_constructor0(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef %0, i64 %1, i64 %2, i32 noundef 64) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 5 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 5 uses
  %i.d = and i64 %i.c, 4294967295
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %JS_FreeValue.exit52, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 3
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %3, align 8
  %i.k = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.j, i64 %i.g, i32 noundef 0), !inline_history !400
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.n = getelementptr i8, ptr %i.m, i64 1104
  %.val = load ptr, ptr %i.n, align 8, !tbaa !297
  %i.o = getelementptr i8, ptr %.val, i64 384
  %.val.val = load ptr, ptr %i.o, align 8, !tbaa !299 ; 2 uses
  %i.p = ptrtoint ptr %.val.val to i64
  %i.q = getelementptr inbounds i8, ptr %.val.val, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !191
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !191
  %.fca.0.insert.i.i.i = insertvalue { i64, i64 } poison, i64 %i.p, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i, i64 -7, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %.fca.1.insert.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.715.0 = extractvalue { i64, i64 } %.pn, 1 ; 4 uses
  %.sroa.013.0 = extractvalue { i64, i64 } %.pn, 0 ; 3 uses
  %i.t = and i64 %.sroa.715.0, 4294967295
  %i.u = icmp eq i64 %i.t, 6
  br i1 %i.u, label %JS_FreeValue.exit51, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 3
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.aa, i64 %i.w, i32 noundef 0), !inline_history !400
  br label %bb.j

bb.h:                                             ; preds = %bb.f
end_hunk_6
begin_hunk_7_@js_closure2:bb.a
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !218
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !221
  %i.ak = zext i16 %i.aj to i64
  br label %bb.k

bb.i:                                             ; preds = %bb.b, %bb.d, %js_arena_calloc.exit.i.i
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1256 ; 3 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !233, !range !234, !noundef !235
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %js_mallocz.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.am, align 8, !tbaa !233
  %i.ap = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !801 ; 0 uses
  store i8 0, ptr %i.am, align 8, !tbaa !233
  br label %js_mallocz.exit.thread

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.011.i.i.i = phi i64 [ 8, %bb.f ], [ %i.ae, %bb.g ], [ %i.ak, %bb.h ]
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !196
  %i.ar = add i64 %i.aq, %.011.i.i.i
  store i64 %i.ar, ptr %i.j, align 8, !tbaa !196
  store ptr %.1.i29.i.i, ptr %i.b, align 8, !tbaa !218
  %i.as = load i16, ptr %i.c, align 2, !tbaa !431 ; 2 uses
  %.not52 = icmp eq i16 %i.as, 0
  br i1 %.not52, label %JS_FreeValueRT.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.p
  %i.au = phi i16 [ %i.as, %.lr.ph ], [ %i.bl, %bb.p ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !430
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv ; 3 uses
  %i.ax = load i16, ptr %i.aw, align 4
  %i.ay = and i16 %i.ax, 7
  switch i16 %i.ay, label %bb.n [
    i16 0, label %bb.o
    i16 1, label %bb.m
    i16 2, label %.thread
    i16 3, label %.thread
  ]

bb.m:                                             ; preds = %bb.l
  br label %bb.o

.thread:                                          ; preds = %bb.l, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !712
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !445 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !191
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !191
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  tail call void @abort() #50
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.m
  %.sink58 = phi i1 [ true, %bb.m ], [ false, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !712
  %i.bj = zext i16 %i.bi to i32
  %i.bk = tail call fastcc ptr @get_var_ref(ptr noundef %0, ptr noundef %5, i32 noundef %i.bj, i1 noundef zeroext %.sink58) ; 2 uses
  %.not38 = icmp eq ptr %i.bk, null
  br i1 %.not38, label %js_mallocz.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o
  %.pre = load i16, ptr %i.c, align 2, !tbaa !431
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %.thread
  %i.bl = phi i16 [ %i.au, %.thread ], [ %.pre, %._crit_edge ] ; 2 uses
  %.03348 = phi ptr [ %i.bd, %.thread ], [ %i.bk, %._crit_edge ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.1.i29.i.i, i64 %indvars.iv
  store ptr %.03348, ptr %i.bm, align 8, !tbaa !445
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = zext i16 %i.bl to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %bb.l, label %JS_FreeValueRT.exit, !llvm.loop !1744

js_mallocz.exit.thread:                           ; preds = %bb.o, %bb.j, %bb.i
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.bq = icmp ugt i64 %2, -10
  br i1 %i.bq, label %bb.q, label %JS_FreeValueRT.exit

bb.q:                                             ; preds = %js_mallocz.exit.thread
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.0..sroa.0.0..cast, i64 -4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !191 ; 2 uses
  %i.bt = add nsw i32 %i.bs, -1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !191
  %i.bu = icmp slt i32 %i.bs, 2
  br i1 %i.bu, label %bb.r, label %JS_FreeValueRT.exit

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bp, i64 %1, i64 %2), !inline_history !370
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.p, %bb.k, %bb.r, %bb.q, %js_mallocz.exit.thread, %bb.a
  %i.bv = phi i64 [ %1, %bb.a ], [ 0, %bb.r ], [ 0, %js_mallocz.exit.thread ], [ 0, %bb.q ], [ %1, %bb.k ], [ %1, %bb.p ]
  %.sroa.432.0 = phi i64 [ %2, %bb.a ], [ 6, %bb.r ], [ 6, %js_mallocz.exit.thread ], [ 6, %bb.q ], [ %2, %bb.k ], [ %2, %bb.p ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.bv, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.432.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc void @JS_ThrowSyntaxErrorAtom(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.c = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val, ptr noundef nonnull %i.a, i32 noundef %2) ; 0 uses
  %i.d = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_get_length32(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %2, i64 %3, i32 noundef 51, i64 %2, i64 %3, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 1        ; 2 uses
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 6
  br i1 %i.d, label %JS_ToInt32Free.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.g
  %.pn = phi { i64, i64 } [ %i.v, %bb.g ], [ %i.a, %bb.a ]
  %.sroa.6.0.i = phi i64 [ %i.w, %bb.g ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.017.0.in.i = extractvalue { i64, i64 } %.pn, 0 ; 6 uses
  %i.e = trunc i64 %.sroa.6.0.i to i32
  switch i32 %i.e, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 8, label %bb.c
  ]

bb.b:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader
  %.sroa.017.0.extract.trunc.i = trunc i64 %.sroa.017.0.in.i to i32
  br label %JS_ToInt32Free.exit

bb.c:                                             ; preds = %.preheader
  %i.f = lshr i64 %.sroa.017.0.in.i, 52
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 2047                       ; 3 uses
  %i.i = icmp samesign ult i32 %i.h, 1054
  br i1 %i.i, label %bb.d, label %bb.e, !prof !324

bb.d:                                             ; preds = %bb.c
  %.sroa.017.0.i.le = bitcast i64 %.sroa.017.0.in.i to double
  %i.j = fptosi double %.sroa.017.0.i.le to i32
  br label %JS_ToInt32Free.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp samesign ult i32 %i.h, 1107
  br i1 %i.k, label %bb.f, label %JS_ToInt32Free.exit

bb.f:                                             ; preds = %bb.e
  %i.l = and i64 %.sroa.017.0.in.i, 4503599627370495
  %i.m = or disjoint i64 %i.l, 4503599627370496
  %i.n = add nsw i32 %i.h, -1043
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl i64 %i.m, %i.o
  %i.q = lshr i64 %i.p, 32                        ; 2 uses
  %i.r = trunc nuw i64 %i.q to i32                ; 2 uses
  %i.s = icmp slt i64 %.sroa.017.0.in.i, 0
  %i.t = icmp ne i64 %i.q, 2147483648
  %or.cond.i = select i1 %i.s, i1 %i.t, i1 false
  %i.u = sub nsw i32 0, %i.r
  %spec.select.i = select i1 %or.cond.i, i32 %i.u, i32 %i.r
  br label %JS_ToInt32Free.exit

bb.g:                                             ; preds = %.preheader
  %i.v = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i, i64 %.sroa.6.0.i, i32 noundef 0), !inline_history !150 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 1        ; 2 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 6
  br i1 %i.y, label %JS_ToInt32Free.exit, label %.preheader

JS_ToInt32Free.exit:                              ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %storemerge = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %.sroa.017.0.extract.trunc.i, %bb.b ], [ %i.j, %bb.d ], [ %spec.select.i, %bb.f ], [ 0, %bb.g ]
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ -1, %bb.g ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !191
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef { i64, i64 } @js_dynamic_import_job(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %3 = alloca %struct.JSValue, align 16           ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.017.0.copyload = load i64, ptr %i.a, align 8, !tbaa !218
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.015.0.copyload = load i64, ptr %i.b, align 8, !tbaa !218
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.416.0.copyload = load i64, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !240
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.013.0.copyload = load i64, ptr %i.c, align 8, !tbaa !218
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.414.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.d = trunc i64 %.sroa.5.0.copyload to i32
  %i.e = add i32 %i.d, 7
  %i.f = icmp ult i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.177) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %.sroa.017.0.copyload, i64 %.sroa.5.0.copyload, i1 noundef zeroext false), !inline_history !131 ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %.sroa.015.0.copyload, i64 %.sroa.416.0.copyload, i1 noundef zeroext false), !inline_history !131 ; 4 uses
  %.not42 = icmp eq ptr %i.i, null
  br i1 %.not42, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @JS_LoadModuleInternal(ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %2, i64 %.sroa.013.0.copyload, i64 %.sroa.414.0.copyload)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !232  ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -28 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !191  ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !191
  %i.o = icmp slt i32 %i.m, 2
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 -24
  %i.q = ptrtoint ptr %i.p to i64
  tail call fastcc void @js_free_value_rt(ptr noundef %i.k, i64 %i.q, i64 -7), !inline_history !104
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !232
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = phi ptr [ %.pre, %bb.f ], [ %i.k, %bb.e ]
  %i.s = getelementptr inbounds i8, ptr %i.h, i64 -28 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !191  ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !191
  %i.v = icmp slt i32 %i.t, 2
  br i1 %i.v, label %bb.h, label %JS_FreeCString.exit44

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds i8, ptr %i.h, i64 -24
  %i.x = ptrtoint ptr %i.w to i64
  tail call fastcc void @js_free_value_rt(ptr noundef %i.r, i64 %i.x, i64 -7), !inline_history !104
  br label %JS_FreeCString.exit44

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !232  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1240 ; 2 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1248
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 1244
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !tbaa !218
  store i32 0, ptr %i.aa, align 8
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !240
  store <2 x i64> %i.ab, ptr %3, align 16, !tbaa !218
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %i.ad, i64 %i.af, i64 0, i64 3, i64 0, i64 3, i32 noundef 1, ptr noundef nonnull %3, i32 noundef 2), !inline_history !284 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ag, 1      ; 2 uses
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !232 ; 3 uses
  %i.ak = trunc i64 %i.ai to i32
  %i.al = icmp ugt i32 %i.ak, -10
  br i1 %i.al, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %bb.i
  %i.am = inttoptr i64 %i.ah to ptr
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !191 ; 2 uses
  %i.ap = add nsw i32 %i.ao, -1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !191
  %i.aq = icmp slt i32 %i.ao, 2
  br i1 %i.aq, label %bb.k, label %JS_FreeValue.exit

bb.k:                                             ; preds = %bb.j
  call fastcc void @js_free_value_rt(ptr noundef %i.aj, i64 %i.ah, i64 %i.ai), !inline_history !291
  %.pre48 = load ptr, ptr %i.y, align 8, !tbaa !232
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.i, %bb.j, %bb.k
  %i.ar = phi ptr [ %i.aj, %bb.i ], [ %i.aj, %bb.j ], [ %.pre48, %bb.k ] ; 3 uses
  %i.as = load i64, ptr %3, align 16              ; 2 uses
  %i.at = load i64, ptr %.sroa.43.0..sroa_idx, align 8 ; 2 uses
  %i.au = trunc i64 %i.at to i32
  %i.av = icmp ugt i32 %i.au, -10
  br i1 %i.av, label %bb.l, label %JS_FreeValue.exit45

bb.l:                                             ; preds = %JS_FreeValue.exit
  %i.aw = inttoptr i64 %i.as to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !191 ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !191
  %i.ba = icmp slt i32 %i.ay, 2
  br i1 %i.ba, label %bb.m, label %JS_FreeValue.exit45

bb.m:                                             ; preds = %bb.l
  call fastcc void @js_free_value_rt(ptr noundef %i.ar, i64 %i.as, i64 %i.at), !inline_history !291
  %.pre49 = load ptr, ptr %i.y, align 8, !tbaa !232
  br label %JS_FreeValue.exit45

JS_FreeValue.exit45:                              ; preds = %JS_FreeValue.exit, %bb.l, %bb.m
  %i.bb = phi ptr [ %i.ar, %JS_FreeValue.exit ], [ %i.ar, %bb.l ], [ %.pre49, %bb.m ]
  %.not.i.i46 = icmp eq ptr %.0, null
  br i1 %.not.i.i46, label %JS_FreeCString.exit44, label %bb.n

bb.n:                                             ; preds = %JS_FreeValue.exit45
  %i.bc = getelementptr inbounds i8, ptr %.0, i64 -28 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !191 ; 2 uses
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !191
  %i.bf = icmp slt i32 %i.bd, 2
  br i1 %i.bf, label %bb.o, label %JS_FreeCString.exit44

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds i8, ptr %.0, i64 -24
  %i.bh = ptrtoint ptr %i.bg to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.bb, i64 %i.bh, i64 -7), !inline_history !104
  br label %JS_FreeCString.exit44

JS_FreeCString.exit44:                            ; preds = %bb.o, %bb.n, %JS_FreeValue.exit45, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  ret { i64, i64 } { i64 0, i64 3 }
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @JS_GetIterator(ptr noundef %0, i64 %1, i64 %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  br i1 %3, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 239, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %trunc = trunc i64 %i.c to i32
  switch i32 %trunc, label %bb.ab [
    i32 6, label %JS_FreeValueRT.exit80
    i32 3, label %bb.c
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.d = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 228, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 4 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 5 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %JS_FreeValueRT.exit80, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %i.e, i64 %i.f, i64 %1, i64 %2, i64 0, i64 3, i32 noundef 0, ptr noundef null, i32 noundef 2) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0        ; 4 uses
  %i.k = extractvalue { i64, i64 } %i.i, 1        ; 4 uses
  %trunc103 = trunc i64 %i.k to i32               ; 2 uses
  switch i32 %trunc103, label %bb.e [
    i32 6, label %JS_GetIterator2.exit
    i32 -1, label %JS_GetIterator2.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.n = icmp ugt i32 %trunc103, -10
  br i1 %i.n, label %bb.f, label %JS_FreeValue.exit

bb.f:                                             ; preds = %bb.e
  %i.o = inttoptr i64 %i.j to ptr
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !191  ; 2 uses
  %i.r = add nsw i32 %i.q, -1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !191
  %i.s = icmp slt i32 %i.q, 2
  br i1 %i.s, label %bb.g, label %JS_FreeValue.exit
end_hunk_7
begin_hunk_8_@js_host_resolve_imported_module:bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 47, ptr %i.bz, align 1, !tbaa !218
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.preheader.i, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi ptr [ %i.bz, %.preheader.i.i.i ], [ %i.ca, %.lr.ph.i.i.preheader.i ]
  store i8 0, ptr %.0.lcssa.i.i.i, align 1, !tbaa !218
  br label %js__pstrcat.exit.i

js__pstrcat.exit.i:                               ; preds = %bb.o, %._crit_edge.i.i.i, %bb.q, %._crit_edge.i
  %.04379.i = phi ptr [ %.043.lcssa.i, %._crit_edge.i ], [ %.043.lcssa.i, %._crit_edge.i.i.i ], [ %.043.lcssa.i, %bb.q ], [ %.04380.i, %bb.o ] ; 2 uses
  %i.cb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #52, !inline_history !1804 ; 2 uses
  %i.cc = trunc i64 %i.cb to i32                  ; 2 uses
  %i.cd = icmp sgt i32 %i.o, %i.cc
  br i1 %i.cd, label %.preheader.i.i57.i, label %js_default_module_normalize_name.exit.thread83

.preheader.i.i57.i:                               ; preds = %js__pstrcat.exit.i
  %i.ce = sub nsw i32 %i.o, %i.cc                 ; 2 uses
  %sext.i58.i = shl i64 %i.cb, 32
  %i.cf = ashr exact i64 %sext.i58.i, 32
  %i.cg = getelementptr inbounds i8, ptr %i.z, i64 %i.cf ; 3 uses
  %i.ch = zext nneg i32 %i.ce to i64
  %i.ci = getelementptr i8, ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1
  %i.ck = load i8, ptr %.04379.i, align 1, !tbaa !218 ; 2 uses
  %i.cl = icmp ne i8 %i.ck, 0
  %.not12.i.i59.i = icmp ne i32 %i.ce, 1
  %or.cond13.i.i.i = and i1 %.not12.i.i59.i, %i.cl
  br i1 %or.cond13.i.i.i, label %.lr.ph.i.i62.i, label %._crit_edge.i.i60.i

.lr.ph.i.i62.i:                                   ; preds = %.preheader.i.i57.i, %.lr.ph.i.i62.i
  %i.cm = phi i8 [ %i.cp, %.lr.ph.i.i62.i ], [ %i.ck, %.preheader.i.i57.i ]
  %.015.i.i63.i = phi ptr [ %i.co, %.lr.ph.i.i62.i ], [ %i.cg, %.preheader.i.i57.i ] ; 2 uses
  %.0914.i.i64.i = phi ptr [ %i.cn, %.lr.ph.i.i62.i ], [ %.04379.i, %.preheader.i.i57.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0914.i.i64.i, i64 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.015.i.i63.i, i64 1 ; 3 uses
  store i8 %i.cm, ptr %.015.i.i63.i, align 1, !tbaa !218
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !218 ; 2 uses
  %i.cq = icmp ne i8 %i.cp, 0
  %.not.i.i65.i = icmp ult ptr %i.co, %i.cj
  %or.cond.i.i66.i = select i1 %i.cq, i1 %.not.i.i65.i, i1 false
  br i1 %or.cond.i.i66.i, label %.lr.ph.i.i62.i, label %._crit_edge.i.i60.i

._crit_edge.i.i60.i:                              ; preds = %.lr.ph.i.i62.i, %.preheader.i.i57.i
  %.0.lcssa.i.i61.i = phi ptr [ %i.cg, %.preheader.i.i57.i ], [ %i.co, %.lr.ph.i.i62.i ]
  store i8 0, ptr %.0.lcssa.i.i61.i, align 1, !tbaa !218
  br label %js_default_module_normalize_name.exit.thread83

bb.r:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !562, !range !234, !noundef !235
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 1384
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !541 ; 2 uses
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cw = tail call ptr %i.d(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 %3, i64 %4, ptr noundef %i.cv) #49
  br label %js_default_module_normalize_name.exit

bb.t:                                             ; preds = %bb.r
  %i.cx = tail call ptr %i.d(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.cv) #49
  br label %js_default_module_normalize_name.exit

js_default_module_normalize_name.exit:            ; preds = %bb.c, %bb.s, %bb.t
  %.069 = phi ptr [ %i.cw, %bb.s ], [ %i.cx, %bb.t ], [ %i.f, %bb.c ] ; 2 uses
  %.not73 = icmp eq ptr %.069, null
  br i1 %.not73, label %js_default_module_normalize_name.exit.thread, label %js_default_module_normalize_name.exit.thread83

js_default_module_normalize_name.exit.thread83:   ; preds = %js__pstrcat.exit.i, %._crit_edge.i.i60.i, %js_default_module_normalize_name.exit
  %.06986 = phi ptr [ %.069, %js_default_module_normalize_name.exit ], [ %i.z, %._crit_edge.i.i60.i ], [ %i.z, %js__pstrcat.exit.i ] ; 10 uses
  %i.cy = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.06986) #52, !inline_history !385
  %i.cz = tail call i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef nonnull %.06986, i64 noundef %i.cy), !inline_history !385 ; 5 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %js_default_module_normalize_name.exit.thread83
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.db, ptr noundef nonnull %.06986)
  br label %js_default_module_normalize_name.exit.thread

bb.v:                                             ; preds = %js_default_module_normalize_name.exit.thread83
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.019.i = load ptr, ptr %i.dd, align 8, !tbaa !222 ; 2 uses
  %.not20.i = icmp eq ptr %.019.i, %i.dc
  br i1 %.not20.i, label %.loopexit, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.v, %bb.y
  %.021.i = phi ptr [ %.0.i78, %bb.y ], [ %.019.i, %bb.v ] ; 5 uses
  %i.de = getelementptr inbounds i8, ptr %.021.i, i64 -8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !538
  %i.dg = icmp eq i32 %i.df, %i.cz
  br i1 %i.dg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.i77
  %i.dh = getelementptr inbounds nuw i8, ptr %.021.i, i64 80
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.021.i, i64 88
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = tail call fastcc i32 @js_module_attributes_equal(ptr noundef %0, i64 %i.di, i64 %i.dk, i64 %3, i64 %4), !inline_history !1808 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not14.i = icmp eq i32 %i.dl, 0
  br i1 %.not14.i, label %bb.y, label %js_find_loaded_module.exit

bb.y:                                             ; preds = %bb.x, %.lr.ph.i77
  %i.dn = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %.0.i78 = load ptr, ptr %i.dn, align 8, !tbaa !222 ; 2 uses
  %.not.i79 = icmp eq ptr %.0.i78, %i.dc
  br i1 %.not.i79, label %.loopexit, label %.lr.ph.i77, !llvm.loop !1809

js_find_loaded_module.exit:                       ; preds = %bb.x
  %i.do = getelementptr inbounds i8, ptr %.021.i, i64 -8
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.dp, ptr noundef nonnull %.06986)
  tail call void @JS_FreeAtom(ptr noundef %0, i32 noundef %i.cz)
  br label %js_default_module_normalize_name.exit.thread

.loopexit:                                        ; preds = %bb.y, %bb.w, %bb.v
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !232 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1248
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = and i64 %i.ds, 4294967295
  %.not90 = icmp eq i64 %i.dt, 4
  br i1 %.not90, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit
  tail call void @js_free_rt(ptr noundef nonnull %i.dq, ptr noundef nonnull %.06986)
  tail call void @JS_FreeAtom(ptr noundef nonnull %0, i32 noundef %i.cz)
  br label %js_default_module_normalize_name.exit.thread

bb.aa:                                            ; preds = %.loopexit
  tail call void @JS_FreeAtom(ptr noundef nonnull %0, i32 noundef %i.cz)
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 1368
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !218 ; 3 uses
  %.not75 = icmp eq ptr %i.dv, null
  br i1 %.not75, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dw = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowReferenceError(ptr noundef nonnull %0, ptr noundef nonnull @.str.208, ptr noundef nonnull %.06986) ; 0 uses
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.dx, ptr noundef nonnull %.06986)
  br label %js_default_module_normalize_name.exit.thread

bb.ac:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 1360
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !563, !range !234, !noundef !235
  %i.ea = trunc nuw i8 %i.dz to i1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 1384
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !541 ; 2 uses
  br i1 %i.ea, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = tail call ptr %i.dv(ptr noundef nonnull %0, ptr noundef nonnull %.06986, ptr noundef %i.ec, i64 %3, i64 %4) #49
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ee = tail call ptr %i.dv(ptr noundef nonnull %0, ptr noundef nonnull %.06986, ptr noundef %i.ec) #49
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.068 = phi ptr [ %i.ed, %bb.ad ], [ %i.ee, %bb.ae ] ; 4 uses
  %.not76 = icmp ne ptr %.068, null
  %i.ef = and i64 %4, 4294967295
  %i.eg = icmp eq i64 %i.ef, 4294967295
  %or.cond = select i1 %.not76, i1 %i.eg, i1 false
  br i1 %or.cond, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %.068, i64 96 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = and i64 %i.ei, 4294967295
  %i.ek = icmp eq i64 %i.ej, 3
  br i1 %i.ek, label %js_dup.exit, label %bb.ah

js_dup.exit:                                      ; preds = %bb.ag
  %i.el = getelementptr inbounds nuw i8, ptr %.068, i64 88
  %i.em = inttoptr i64 %3 to ptr
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -4 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !191
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !191
  store i64 %3, ptr %i.el, align 8, !tbaa !218
  store i64 %4, ptr %i.eh, align 8, !tbaa !240
  br label %bb.ah

bb.ah:                                            ; preds = %js_dup.exit, %bb.ag, %bb.af
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !232
  tail call void @js_free_rt(ptr noundef %i.eq, ptr noundef nonnull %.06986)
  br label %js_default_module_normalize_name.exit.thread

js_default_module_normalize_name.exit.thread:     ; preds = %bb.l, %bb.k, %js_default_module_normalize_name.exit, %bb.ah, %bb.ab, %bb.z, %js_find_loaded_module.exit, %bb.u
  %.0 = phi ptr [ null, %bb.u ], [ %i.do, %js_find_loaded_module.exit ], [ null, %bb.z ], [ %.068, %bb.ah ], [ null, %bb.ab ], [ null, %js_default_module_normalize_name.exit ], [ null, %bb.k ], [ null, %bb.l ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noundef { i64, i64 } @js_load_module_fulfilled(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, ptr nofree noundef readonly captures(none) %6) #2 {
bb.a:
  %7 = alloca %struct.JSValue, align 16           ; 4 uses
  %8 = alloca %struct.JSValue, align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.c = tail call { i64, i64 } @JS_GetModuleNamespace(ptr noundef %0, ptr noundef %i.b) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 2 uses
  store i64 %i.d, ptr %8, align 8, !tbaa !218
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !240
  %i.f = and i64 %i.e, 4294967295
  %i.g = icmp eq i64 %i.f, 6
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1240 ; 2 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1248
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1244
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !218
  store i32 0, ptr %i.j, align 8
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !240
  store <2 x i64> %i.k, ptr %7, align 16, !tbaa !218
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %i.m, i64 %i.o, i64 0, i64 3, i64 0, i64 3, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 2), !inline_history !1810 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.t = trunc i64 %i.r to i32
  %i.u = icmp ugt i32 %i.t, -10
  br i1 %i.u, label %bb.c, label %js_load_module_rejected.exit

bb.c:                                             ; preds = %bb.b
  %i.v = inttoptr i64 %i.q to ptr
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !191  ; 2 uses
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !191
  %i.z = icmp slt i32 %i.x, 2
  br i1 %i.z, label %bb.d, label %js_load_module_rejected.exit

bb.d:                                             ; preds = %bb.c
  call fastcc void @js_free_value_rt(ptr noundef %i.s, i64 %i.q, i64 %i.r), !inline_history !1811
  br label %js_load_module_rejected.exit

js_load_module_rejected.exit:                     ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %JS_FreeValue.exit24

bb.e:                                             ; preds = %bb.a
  %i.aa = load i64, ptr %6, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %i.aa, i64 %i.ac, i64 0, i64 3, i64 0, i64 3, i32 noundef 1, ptr noundef nonnull %8, i32 noundef 2), !inline_history !284 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ad, 1      ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !232 ; 3 uses
  %i.ai = trunc i64 %i.af to i32
  %i.aj = icmp ugt i32 %i.ai, -10
  br i1 %i.aj, label %bb.f, label %JS_FreeValue.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = inttoptr i64 %i.ae to ptr
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !191 ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !191
  %i.ao = icmp slt i32 %i.am, 2
  br i1 %i.ao, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %bb.f
  call fastcc void @js_free_value_rt(ptr noundef %i.ah, i64 %i.ae, i64 %i.af), !inline_history !291
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !232
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.ap = phi ptr [ %i.ah, %bb.e ], [ %i.ah, %bb.f ], [ %.pre, %bb.g ]
  %i.aq = load i64, ptr %8, align 8               ; 2 uses
  %i.ar = load i64, ptr %.sroa.47.0..sroa_idx, align 8 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = icmp ugt i32 %i.as, -10
  br i1 %i.at, label %bb.h, label %JS_FreeValue.exit24

bb.h:                                             ; preds = %JS_FreeValue.exit
  %i.au = inttoptr i64 %i.aq to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !191 ; 2 uses
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !191
  %i.ay = icmp slt i32 %i.aw, 2
  br i1 %i.ay, label %bb.i, label %JS_FreeValue.exit24

bb.i:                                             ; preds = %bb.h
  call fastcc void @js_free_value_rt(ptr noundef %i.ap, i64 %i.aq, i64 %i.ar), !inline_history !291
  br label %JS_FreeValue.exit24

JS_FreeValue.exit24:                              ; preds = %bb.i, %bb.h, %JS_FreeValue.exit, %js_load_module_rejected.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  ret { i64, i64 } { i64 0, i64 3 }
}

; Function Attrs: nounwind uwtable
define internal noundef { i64, i64 } @js_load_module_rejected(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 %5, ptr nofree noundef readonly captures(none) %6) #2 {
bb.a:
  %7 = alloca %struct.JSValue, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !282
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %7, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !218
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %.sroa.34.0..sroa_idx, align 8, !tbaa !240
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %i.c, i64 %i.e, i64 0, i64 3, i64 0, i64 3, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 2), !inline_history !284 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.k = trunc i64 %i.h to i32
  %i.l = icmp ugt i32 %i.k, -10
  br i1 %i.l, label %bb.e, label %JS_FreeValue.exit

bb.e:                                             ; preds = %bb.d
  %i.m = inttoptr i64 %i.g to ptr
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !191  ; 2 uses
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !191
  %i.q = icmp slt i32 %i.o, 2
  br i1 %i.q, label %bb.f, label %JS_FreeValue.exit

bb.f:                                             ; preds = %bb.e
  call fastcc void @js_free_value_rt(ptr noundef %i.j, i64 %i.g, i64 %i.h), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  ret { i64, i64 } { i64 0, i64 3 }
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_promise_then(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %5 = alloca [2 x %struct.JSValue], align 16     ; 9 uses
  %6 = alloca %struct.JSValueLink, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.b = and i64 %2, 4294967295
  %.not.i.i = icmp eq i64 %i.b, 4294967295
  br i1 %.not.i.i, label %bb.b, label %JS_GetOpaque2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !276
  %.not3.i.i = icmp eq i16 %i.e, 52
  br i1 %.not3.i.i, label %JS_GetOpaque.exit.i, label %JS_GetOpaque2.exit.thread

JS_GetOpaque.exit.i:                              ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !218
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %JS_GetOpaque2.exit.thread, label %JS_GetOpaque2.exit, !prof !404

JS_GetOpaque2.exit.thread:                        ; preds = %bb.a, %bb.b, %JS_GetOpaque.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !251
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2084
  %i.m = load i32, ptr %i.l, align 4, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.n = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %i.i, ptr noundef nonnull %i.a, i32 noundef %i.m) ; 0 uses
  %i.o = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.a) #51, !inline_history !115 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %JS_FreeValue.exit51

JS_GetOpaque2.exit:                               ; preds = %JS_GetOpaque.exit.i
  %i.p = tail call fastcc { i64, i64 } @JS_SpeciesConstructor(ptr noundef %0, i64 %1, i64 %2, i64 0, i64 3) ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 6 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 6 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 6
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %JS_GetOpaque2.exit
  %.sroa.6.0.extract.shift46 = and i64 %i.q, -4294967296
  br label %JS_FreeValue.exit51

bb.d:                                             ; preds = %JS_GetOpaque2.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !232  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !681
  %.not48 = icmp eq ptr %i.x, null
  br i1 %.not48, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.y = call fastcc { i64, i64 } @js_new_promise_capability(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 %i.q, i64 %i.r)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 1304 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !685
  store ptr %i.aa, ptr %6, align 8, !tbaa !686
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !218
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %2, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !tbaa !240
  store ptr %6, ptr %i.z, align 8, !tbaa !685
  %i.ab = call fastcc { i64, i64 } @js_new_promise_capability(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 %i.q, i64 %i.r)
  %i.ac = load ptr, ptr %6, align 8, !tbaa !688
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !685
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %.pn = phi { i64, i64 } [ %i.y, %.thread ], [ %i.ab, %bb.e ] ; 2 uses
  %i.ad = extractvalue { i64, i64 } %.pn, 0       ; 6 uses
  %i.ae = extractvalue { i64, i64 } %.pn, 1       ; 5 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !232
  %i.ag = trunc i64 %i.r to i32
  %i.ah = icmp ugt i32 %i.ag, -10
  br i1 %i.ah, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = inttoptr i64 %i.q to ptr
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !191 ; 2 uses
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !191
  %i.am = icmp slt i32 %i.ak, 2
  br i1 %i.am, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef %i.af, i64 %i.q, i64 %i.r), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  %i.an = and i64 %i.ae, 4294967295
  %i.ao = icmp eq i64 %i.an, 6
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %JS_FreeValue.exit
  %.sroa.6.0.extract.shift = and i64 %i.ad, -4294967296
  br label %JS_FreeValue.exit51

bb.j:                                             ; preds = %JS_FreeValue.exit
  %i.ap = call fastcc i32 @perform_promise_then(ptr noundef nonnull %0, i64 %1, i64 %2, ptr noundef %4, ptr noundef nonnull %5)
  %i.aq = load i64, ptr %5, align 16              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !232 ; 3 uses
  %i.au = trunc i64 %i.as to i32
  %i.av = icmp ugt i32 %i.au, -10
  br i1 %i.av, label %bb.k, label %JS_FreeValue.exit50

bb.k:                                             ; preds = %bb.j
  %i.aw = inttoptr i64 %i.aq to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !191 ; 2 uses
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !191
  %i.ba = icmp slt i32 %i.ay, 2
  br i1 %i.ba, label %bb.l, label %JS_FreeValue.exit50

bb.l:                                             ; preds = %bb.k
  call fastcc void @js_free_value_rt(ptr noundef %i.at, i64 %i.aq, i64 %i.as), !inline_history !291
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !232
  br label %JS_FreeValue.exit50

JS_FreeValue.exit50:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.bb = phi ptr [ %i.at, %bb.j ], [ %i.at, %bb.k ], [ %.pre, %bb.l ]
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bd = load i64, ptr %i.bc, align 16           ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = icmp ugt i32 %i.bg, -10
  br i1 %i.bh, label %bb.m, label %JS_FreeValue.exit50.1

bb.m:                                             ; preds = %JS_FreeValue.exit50
  %i.bi = inttoptr i64 %i.bd to ptr
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !191 ; 2 uses
  %i.bl = add nsw i32 %i.bk, -1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !191
  %i.bm = icmp slt i32 %i.bk, 2
  br i1 %i.bm, label %bb.n, label %JS_FreeValue.exit50.1

end_hunk_8
begin_hunk_9_@js_proxy_set:bb.a

bb.ai:                                            ; preds = %bb.ah
  %i.dl = and i32 %7, 32768
  %.not51 = icmp eq i32 %i.dl, 0
  br i1 %.not51, label %is_strict_mode.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.dm = getelementptr i8, ptr %.val, i64 1264
  %.val.val = load ptr, ptr %i.dm, align 8, !tbaa !264 ; 2 uses
  %.not.i54 = icmp eq ptr %.val.val, null
  br i1 %.not.i54, label %is_strict_mode.exit.thread, label %is_strict_mode.exit

is_strict_mode.exit:                              ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.val, i64 60
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !269, !range !234, !noundef !235
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.ak, label %is_strict_mode.exit.thread

bb.ak:                                            ; preds = %is_strict_mode.exit, %bb.ah
  %i.dq = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.336) ; 0 uses
  br label %JS_FreeValue.exit

is_strict_mode.exit.thread:                       ; preds = %bb.aj, %bb.ag, %bb.ai, %is_strict_mode.exit
  %i.dr = zext i1 %i.cr to i32
  br label %JS_FreeValue.exit

.critedge:                                        ; preds = %bb.y, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.g, %bb.f, %bb.d, %bb.r, %bb.q, %bb.p, %.critedge, %JS_FreeValue.exit53, %is_strict_mode.exit.thread, %bb.ak, %js_dup.exit
  %.1 = phi i32 [ %i.am, %js_dup.exit ], [ -1, %JS_FreeValue.exit53 ], [ -1, %bb.r ], [ %i.dr, %is_strict_mode.exit.thread ], [ -1, %.critedge ], [ -1, %bb.ak ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_proxy_revocable(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.JSValue, align 8            ; 6 uses
  %6 = alloca %struct.JSValue, align 8            ; 6 uses
  %7 = alloca %struct.JSValue, align 8            ; 6 uses
  %8 = alloca %struct.JSValue, align 8            ; 6 uses
  %9 = alloca %struct.JSValue, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load i64, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load i64, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call { i64, i64 } @JS_NewProxy(ptr noundef %0, i64 %i.b, i64 %i.d, i64 %i.e, i64 %i.g) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 6 uses
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 7 uses
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 6
  br i1 %i.l, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %i.i, ptr %9, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.j, ptr %i.m, align 8
  %i.n = call { i64, i64 } @JS_NewCFunctionData2(ptr noundef %0, ptr noundef nonnull @js_proxy_revoke, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull readonly %9), !inline_history !372 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.o = extractvalue { i64, i64 } %i.n, 0        ; 5 uses
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 6 uses
  %i.q = and i64 %i.p, 4294967295
  %i.r = icmp eq i64 %i.q, 6
  br i1 %i.r, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call { i64, i64 } @JS_NewObject(ptr noundef %0) ; 2 uses
  %i.t = extractvalue { i64, i64 } %i.s, 0        ; 5 uses
  %i.u = extractvalue { i64, i64 } %i.s, 1        ; 6 uses
  %i.v = and i64 %i.u, 4294967295
  %i.w = icmp eq i64 %i.v, 6
  br i1 %i.w, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 0, ptr %7, align 8, !tbaa !218
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %i.y, align 8, !tbaa !365
  store i32 0, ptr %8, align 8, !tbaa !218
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 3, ptr %i.aa, align 8, !tbaa !365
  %i.ab = tail call i32 @JS_DefineProperty(ptr noundef %0, i64 %i.t, i64 %i.u, i32 noundef 141, i64 %i.i, i64 %i.j, ptr noundef nonnull byval(%struct.JSValue) align 8 %7, ptr noundef nonnull byval(%struct.JSValue) align 8 %8, i32 noundef 9991) #51, !inline_history !366 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !232
  %i.ae = trunc i64 %i.j to i32
  %i.af = icmp ugt i32 %i.ae, -10
  br i1 %i.af, label %bb.e, label %JS_DefinePropertyValue.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = inttoptr i64 %i.i to ptr
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !191 ; 2 uses
  %i.aj = add nsw i32 %i.ai, -1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !191
  %i.ak = icmp slt i32 %i.ai, 2
  br i1 %i.ak, label %bb.f, label %JS_DefinePropertyValue.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ad, i64 %i.i, i64 %i.j) #51, !inline_history !367
  br label %JS_DefinePropertyValue.exit

JS_DefinePropertyValue.exit:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i32 0, ptr %5, align 8, !tbaa !218
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 3, ptr %i.am, align 8, !tbaa !365
  store i32 0, ptr %6, align 8, !tbaa !218
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %i.ao, align 8, !tbaa !365
  %i.ap = tail call i32 @JS_DefineProperty(ptr noundef nonnull %0, i64 %i.t, i64 %i.u, i32 noundef 142, i64 %i.o, i64 %i.p, ptr noundef nonnull byval(%struct.JSValue) align 8 %5, ptr noundef nonnull byval(%struct.JSValue) align 8 %6, i32 noundef 9991) #51, !inline_history !366 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.aq = load ptr, ptr %i.ac, align 8, !tbaa !232
  %i.ar = trunc i64 %i.p to i32
  %i.as = icmp ugt i32 %i.ar, -10
  br i1 %i.as, label %bb.g, label %JS_DefinePropertyValue.exit36

bb.g:                                             ; preds = %JS_DefinePropertyValue.exit
  %i.at = inttoptr i64 %i.o to ptr
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !191 ; 2 uses
  %i.aw = add nsw i32 %i.av, -1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !191
  %i.ax = icmp slt i32 %i.av, 2
  br i1 %i.ax, label %bb.h, label %JS_DefinePropertyValue.exit36

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.aq, i64 %i.o, i64 %i.p) #51, !inline_history !367
  br label %JS_DefinePropertyValue.exit36

bb.i:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.011.0 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.714.0 = phi i64 [ 3, %bb.a ], [ %i.p, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !232 ; 3 uses
  %i.ba = trunc i64 %i.j to i32
  %i.bb = icmp ugt i32 %i.ba, -10
  br i1 %i.bb, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %bb.i
  %i.bc = inttoptr i64 %i.i to ptr
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !191 ; 2 uses
  %i.bf = add nsw i32 %i.be, -1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !191
  %i.bg = icmp slt i32 %i.be, 2
  br i1 %i.bg, label %bb.k, label %JS_FreeValue.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @js_free_value_rt(ptr noundef %i.az, i64 %i.i, i64 %i.j), !inline_history !291
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !232
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.i, %bb.j, %bb.k
  %i.bh = phi ptr [ %i.az, %bb.i ], [ %i.az, %bb.j ], [ %.pre, %bb.k ]
  %i.bi = trunc i64 %.sroa.714.0 to i32
  %i.bj = icmp ugt i32 %i.bi, -10
  br i1 %i.bj, label %bb.l, label %JS_DefinePropertyValue.exit36

bb.l:                                             ; preds = %JS_FreeValue.exit
  %i.bk = inttoptr i64 %.sroa.011.0 to ptr
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !191 ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !191
  %i.bo = icmp slt i32 %i.bm, 2
  br i1 %i.bo, label %bb.m, label %JS_DefinePropertyValue.exit36

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bh, i64 %.sroa.011.0, i64 %.sroa.714.0), !inline_history !291
  br label %JS_DefinePropertyValue.exit36

JS_DefinePropertyValue.exit36:                    ; preds = %bb.m, %bb.l, %JS_FreeValue.exit, %bb.h, %bb.g, %JS_DefinePropertyValue.exit
  %.sroa.435.0 = phi i64 [ %i.u, %bb.h ], [ %i.u, %JS_DefinePropertyValue.exit ], [ %i.u, %bb.g ], [ 6, %JS_FreeValue.exit ], [ 6, %bb.l ], [ 6, %bb.m ]
  %.sroa.033.0.insert.insert = phi i64 [ %i.t, %bb.h ], [ %i.t, %JS_DefinePropertyValue.exit ], [ %i.t, %bb.g ], [ 0, %JS_FreeValue.exit ], [ 0, %bb.l ], [ 0, %bb.m ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.033.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.435.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal noundef { i64, i64 } @js_proxy_revoke(ptr nofree noundef readonly captures(none) %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, ptr nofree noundef captures(none) %6) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %.not.i = icmp eq i64 %i.c, 4294967295
  br i1 %.not.i, label %bb.b, label %JS_GetOpaque.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %6, align 8
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.g = load i16, ptr %i.f, align 2, !tbaa !276
  %.not3.i = icmp eq i16 %i.g, 51
  br i1 %.not3.i, label %JS_GetOpaque.exit, label %JS_GetOpaque.exit.thread

JS_GetOpaque.exit:                                ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %JS_GetOpaque.exit.thread, label %bb.c

bb.c:                                             ; preds = %JS_GetOpaque.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  store i8 1, ptr %i.j, align 1, !tbaa !473
  %i.k = load i64, ptr %6, align 8                ; 2 uses
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !232
  %i.o = trunc i64 %i.l to i32
  %i.p = icmp ugt i32 %i.o, -10
  br i1 %i.p, label %bb.d, label %JS_FreeValue.exit

bb.d:                                             ; preds = %bb.c
  %i.q = inttoptr i64 %i.k to ptr
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !191  ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !191
  %i.u = icmp slt i32 %i.s, 2
  br i1 %i.u, label %bb.e, label %JS_FreeValue.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @js_free_value_rt(ptr noundef %i.n, i64 %i.k, i64 %i.l), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.c, %bb.d, %bb.e
  store i32 0, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  store i64 2, ptr %i.a, align 8, !tbaa !240
  br label %JS_GetOpaque.exit.thread

JS_GetOpaque.exit.thread:                         ; preds = %bb.b, %bb.a, %JS_FreeValue.exit, %JS_GetOpaque.exit
  ret { i64, i64 } { i64 0, i64 3 }
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_map_groupBy(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.JSValue, align 8            ; 10 uses
  %6 = alloca %struct.JSValue, align 8            ; 10 uses
  %7 = alloca [2 x %struct.JSValue], align 16     ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.042.0.copyload = load i64, ptr %i.b, align 8, !tbaa !218 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !240 ; 2 uses
  %i.c = and i64 %.sroa.5.0.copyload, 4294967295
  %.not.i.i = icmp eq i64 %i.c, 4294967295
  br i1 %.not.i.i, label %bb.b, label %check_function.exit, !prof !684

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %.sroa.042.0.copyload to ptr ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.f = load i16, ptr %i.e, align 2, !tbaa !276  ; 2 uses
  switch i16 %i.f, label %JS_IsFunction.exit.i [
    i16 13, label %bb.c
    i16 51, label %.split.i
  ]

.split.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i8, ptr %i.i, align 8, !tbaa !458
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %check_function.exit, label %bb.c, !prof !404

JS_IsFunction.exit.i:                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !232
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !251
  %i.o = zext i16 %i.f to i64
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !255
  %.not6.i = icmp eq ptr %i.r, null
  br i1 %.not6.i, label %check_function.exit, label %bb.c, !prof !404

check_function.exit:                              ; preds = %bb.a, %.split.i, %JS_IsFunction.exit.i
  %i.s = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.165), !inline_history !117 ; 0 uses
  br label %JS_FreeValue.exit192

bb.c:                                             ; preds = %JS_IsFunction.exit.i, %.split.i, %bb.b
  %i.t = load i64, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call fastcc { i64, i64 } @JS_GetIterator(ptr noundef %0, i64 %i.t, i64 %i.v, i1 noundef zeroext false) ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 8 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 9 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
  br i1 %i.aa, label %JS_FreeValue.exit192, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %5, align 8
  %.sroa.237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %.sroa.237.0..sroa_idx, align 4, !tbaa !218
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.338.0..sroa_idx, align 8, !tbaa !240
  store i32 0, ptr %6, align 8
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %.sroa.234.0..sroa_idx, align 4, !tbaa !218
  %.sroa.335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.335.0..sroa_idx, align 8, !tbaa !240
  %i.ab = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %i.x, i64 %i.y, i32 noundef 114, i64 %i.x, i64 %i.y, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0      ; 6 uses
  %i.ad = extractvalue { i64, i64 } %i.ab, 1      ; 7 uses
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = icmp eq i64 %i.ae, 6
  br i1 %i.af, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call { i64, i64 } @js_map_constructor(ptr noundef %0, i64 0, i64 3, i32 noundef 0, ptr noundef null, i32 noundef 0) ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0      ; 13 uses
  %i.ai = extractvalue { i64, i64 } %i.ag, 1      ; 13 uses
  %.sroa.0102.sroa.9.0.extract.shift = lshr i64 %i.ah, 32 ; 7 uses
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = icmp eq i64 %i.aj, 6
  br i1 %i.ak, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.al = call fastcc { i64, i64 } @JS_IteratorNext(ptr noundef %0, i64 %i.x, i64 %i.y, i64 %i.ac, i64 %i.ad, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0      ; 2 uses
  %i.an = extractvalue { i64, i64 } %i.al, 1      ; 4 uses
  store i64 %i.am, ptr %6, align 8, !tbaa !218
  store i64 %i.an, ptr %.sroa.335.0..sroa_idx, align 8, !tbaa !240
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = icmp eq i64 %i.ao, 6
  br i1 %i.ap, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %JS_FreeValue.exit190
  %i.av = phi i64 [ %i.an, %.lr.ph ], [ %i.dl, %JS_FreeValue.exit190 ] ; 6 uses
  %i.aw = phi i64 [ %i.am, %.lr.ph ], [ %i.dk, %JS_FreeValue.exit190 ] ; 2 uses
  %.0214 = phi i64 [ 0, %.lr.ph ], [ %i.di, %JS_FreeValue.exit190 ] ; 4 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !191
  %.not187 = icmp eq i32 %i.ax, 0
  br i1 %.not187, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !282
  %or.cond.i = icmp samesign ult i64 %.0214, 2147483648 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = and i64 %.0214, 4294967295
  %i.ay = uitofp nneg i64 %.0214 to double
  %i.az = bitcast double %i.ay to i64
  %.sroa.0.0.insert.ext.i.pn.i = select i1 %or.cond.i, i64 %.sroa.0.0.insert.ext.i.i, i64 %i.az
  %.sroa.3.0.i = select i1 %or.cond.i, i64 0, i64 8
  store i64 %.sroa.0.0.insert.ext.i.pn.i, ptr %i.aq, align 16, !tbaa !218
  store i64 %.sroa.3.0.i, ptr %.sroa.417.0..sroa_idx, align 8, !tbaa !240
  %i.ba = load i64, ptr %i.ar, align 8
  %i.bb = load i64, ptr %i.as, align 8
  %i.bc = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %.sroa.042.0.copyload, i64 %.sroa.5.0.copyload, i64 %i.ba, i64 %i.bb, i64 0, i64 3, i32 noundef 2, ptr noundef nonnull %7, i32 noundef 2), !inline_history !284 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0      ; 6 uses
  %i.be = extractvalue { i64, i64 } %i.bc, 1      ; 8 uses
  store i64 %i.bd, ptr %5, align 8, !tbaa !218
  store i64 %i.be, ptr %.sroa.338.0..sroa_idx, align 8, !tbaa !240
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = icmp eq i64 %i.bf, 6
  br i1 %i.bg, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = call { i64, i64 } @js_map_get(ptr noundef nonnull %0, i64 %i.ah, i64 %i.ai, i32 poison, ptr noundef nonnull %5, i32 noundef 0) ; 2 uses
  %i.bi = extractvalue { i64, i64 } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { i64, i64 } %i.bh, 1      ; 3 uses
  %.sroa.045.sroa.0.0.extract.trunc72 = trunc i64 %i.bi to i32 ; 2 uses
  %.sroa.045.sroa.13.0.extract.shift96 = lshr i64 %i.bi, 32
end_hunk_9
begin_hunk_10_@js_promise_finally:bb.a
  %i.cj = load i64, ptr %i.ci, align 8            ; 2 uses
  %i.ck = load ptr, ptr %i.bi, align 8, !tbaa !232 ; 3 uses
  %i.cl = trunc i64 %i.cj to i32
  %i.cm = icmp ugt i32 %i.cl, -10
  br i1 %i.cm, label %bb.q, label %JS_FreeValue.exit56

bb.q:                                             ; preds = %JS_Invoke.exit
  %i.cn = inttoptr i64 %i.ch to ptr
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !191 ; 2 uses
  %i.cq = add nsw i32 %i.cp, -1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !191
  %i.cr = icmp slt i32 %i.cp, 2
  br i1 %i.cr, label %bb.r, label %JS_FreeValue.exit56

bb.r:                                             ; preds = %bb.q
  call fastcc void @js_free_value_rt(ptr noundef %i.ck, i64 %i.ch, i64 %i.cj), !inline_history !291
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !232
  br label %JS_FreeValue.exit56

JS_FreeValue.exit56:                              ; preds = %JS_Invoke.exit, %bb.q, %bb.r
  %i.cs = phi ptr [ %i.ck, %JS_Invoke.exit ], [ %i.ck, %bb.q ], [ %.pre, %bb.r ]
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cu = load i64, ptr %i.ct, align 16           ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cw = load i64, ptr %i.cv, align 8            ; 2 uses
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = icmp ugt i32 %i.cx, -10
  br i1 %i.cy, label %bb.s, label %JS_FreeValue.exit57

bb.s:                                             ; preds = %JS_FreeValue.exit56
  %i.cz = inttoptr i64 %i.cu to ptr
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !191 ; 2 uses
  %i.dc = add nsw i32 %i.db, -1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !191
  %i.dd = icmp slt i32 %i.db, 2
  br i1 %i.dd, label %bb.t, label %JS_FreeValue.exit57

bb.t:                                             ; preds = %bb.s
  call fastcc void @js_free_value_rt(ptr noundef %i.cs, i64 %i.cu, i64 %i.cw), !inline_history !291
  br label %JS_FreeValue.exit57

JS_FreeValue.exit57:                              ; preds = %JS_FreeValue.exit56, %bb.s, %bb.t
  %.sroa.448.0.extract.shift = and i64 %i.cf, -4294967296
  br label %JS_FreeValue.exit54

JS_FreeValue.exit54:                              ; preds = %bb.j, %bb.i, %JS_FreeValue.exit, %JS_FreeValue.exit57, %bb.b
  %.sroa.046.0 = phi i64 [ %i.b, %bb.b ], [ %i.cf, %JS_FreeValue.exit57 ], [ 0, %JS_FreeValue.exit ], [ 0, %bb.i ], [ 0, %bb.j ]
  %.sroa.448.0 = phi i64 [ %.sroa.448.0.extract.shift49, %bb.b ], [ %.sroa.448.0.extract.shift, %JS_FreeValue.exit57 ], [ 0, %JS_FreeValue.exit ], [ 0, %bb.i ], [ 0, %bb.j ]
  %.sroa.5.0 = phi i64 [ %i.c, %bb.b ], [ %i.cg, %JS_FreeValue.exit57 ], [ 6, %JS_FreeValue.exit ], [ 6, %bb.i ], [ 6, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %.sroa.046.0.insert.ext = and i64 %.sroa.046.0, 4294967295
  %.sroa.046.0.insert.insert = or disjoint i64 %.sroa.448.0, %.sroa.046.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.046.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_promise_then_finally_func(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #2 {
bb.a:
  %7 = alloca %struct.JSValue, align 8            ; 6 uses
  %8 = alloca %struct.JSValue, align 8            ; 6 uses
  %.sroa.019.0.copyload = load i64, ptr %6, align 8, !tbaa !218
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.420.0.copyload = load i64, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !240
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.017.0.copyload = load i64, ptr %i.a, align 8, !tbaa !218
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.418.0.copyload = load i64, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.b = tail call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %.sroa.017.0.copyload, i64 %.sroa.418.0.copyload, i64 0, i64 3, i64 0, i64 3, i32 noundef 0, ptr noundef null, i32 noundef 2), !inline_history !284 ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 2 uses
  store i64 %i.c, ptr %7, align 8, !tbaa !218
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.d, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !240
  %i.e = and i64 %i.d, 4294967295
  %i.f = icmp eq i64 %i.e, 6
  br i1 %i.f, label %JS_FreeValue.exit38, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call { i64, i64 } @js_promise_resolve(ptr noundef %0, i64 %.sroa.019.0.copyload, i64 %.sroa.420.0.copyload, i32 poison, ptr noundef nonnull %7, i32 noundef 0) ; 3 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 4 uses
  %i.j = load i64, ptr %7, align 8                ; 2 uses
  %i.k = load i64, ptr %.sroa.49.0..sroa_idx, align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.n = trunc i64 %i.k to i32
  %i.o = icmp ugt i32 %i.n, -10
  br i1 %i.o, label %bb.c, label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.b
  %i.p = inttoptr i64 %i.j to ptr
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !191  ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !191
  %i.t = icmp slt i32 %i.r, 2
  br i1 %i.t, label %bb.d, label %JS_FreeValue.exit

bb.d:                                             ; preds = %bb.c
  call fastcc void @js_free_value_rt(ptr noundef %i.m, i64 %i.j, i64 %i.k), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %i.u = and i64 %i.i, 4294967295
  %i.v = icmp eq i64 %i.u, 6
  br i1 %i.v, label %JS_FreeValue.exit38, label %bb.e

bb.e:                                             ; preds = %JS_FreeValue.exit
  %i.w = icmp eq i32 %5, 0
  %js_promise_finally_value_thunk.js_promise_finally_thrower = select i1 %i.w, ptr @js_promise_finally_value_thunk, ptr @js_promise_finally_thrower
  %i.x = call { i64, i64 } @JS_NewCFunctionData2(ptr noundef nonnull %0, ptr noundef nonnull %js_promise_finally_value_thunk.js_promise_finally_thrower, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef readonly %4) ; 5 uses
  %.sroa.5.0.copyload36 = extractvalue { i64, i64 } %i.x, 1 ; 2 uses
  %.sroa.033.0.copyload34 = extractvalue { i64, i64 } %i.x, 0
  store i64 %.sroa.033.0.copyload34, ptr %8, align 8, !tbaa !218
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %.sroa.5.0.copyload36, ptr %i.y, align 8, !tbaa !240
  %i.z = and i64 %.sroa.5.0.copyload36, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
  br i1 %i.aa, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.ac = trunc i64 %i.i to i32
  %i.ad = icmp ugt i32 %i.ac, -10
  br i1 %i.ad, label %bb.g, label %JS_FreeValue.exit38

bb.g:                                             ; preds = %bb.f
  %i.ae = inttoptr i64 %i.h to ptr
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !191 ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !191
  %i.ai = icmp slt i32 %i.ag, 2
  br i1 %i.ai, label %bb.h, label %JS_FreeValue.exit38

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef %i.ab, i64 %i.h, i64 %i.i), !inline_history !291
  br label %JS_FreeValue.exit38

bb.i:                                             ; preds = %bb.e
  %i.aj = call fastcc { i64, i64 } @JS_InvokeFree(ptr noundef nonnull %0, i64 %i.h, i64 %i.i, i32 noundef 137, i32 noundef 1, ptr noundef nonnull %8) ; 3 uses
  %i.ak = load i64, ptr %8, align 8               ; 2 uses
  %i.al = load i64, ptr %i.y, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.an = trunc i64 %i.al to i32
  %i.ao = icmp ugt i32 %i.an, -10
  br i1 %i.ao, label %bb.j, label %JS_FreeValue.exit38

bb.j:                                             ; preds = %bb.i
  %i.ap = inttoptr i64 %i.ak to ptr
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !191 ; 2 uses
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !191
  %i.at = icmp slt i32 %i.ar, 2
  br i1 %i.at, label %bb.k, label %JS_FreeValue.exit38

bb.k:                                             ; preds = %bb.j
  call fastcc void @js_free_value_rt(ptr noundef %i.am, i64 %i.ak, i64 %i.al), !inline_history !291
  br label %JS_FreeValue.exit38

JS_FreeValue.exit38:                              ; preds = %bb.h, %bb.g, %bb.f, %bb.k, %bb.j, %bb.i, %bb.a, %JS_FreeValue.exit
  %.fca.1.insert.merged = phi { i64, i64 } [ %i.g, %JS_FreeValue.exit ], [ %i.b, %bb.a ], [ %i.aj, %bb.k ], [ %i.aj, %bb.i ], [ %i.aj, %bb.j ], [ %i.x, %bb.f ], [ %i.x, %bb.g ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  ret { i64, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @js_promise_finally_value_thunk(ptr nofree readnone captures(none) %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, ptr nofree noundef readonly captures(none) %6) #1 {
bb.a:
  %i.a = load i64, ptr %6, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp ugt i32 %i.d, -10
  br i1 %i.e, label %bb.b, label %js_dup.exit

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !191
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.a, %bb.b
  %.fca.0.insert.i.i = insertvalue { i64, i64 } poison, i64 %i.a, 0
  %.fca.1.insert.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 %i.c, 1
  ret { i64, i64 } %.fca.1.insert.i.i
}

; Function Attrs: nounwind uwtable
define internal noundef { i64, i64 } @js_promise_finally_thrower(ptr nofree noundef readonly captures(none) %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, ptr nofree noundef readonly captures(none) %6) #2 {
bb.a:
  %i.a = load i64, ptr %6, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp ugt i32 %i.d, -10
  br i1 %i.e, label %bb.b, label %js_dup.exit

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !191
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !232  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1240 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1248 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp ugt i32 %i.p, -10
  br i1 %i.q, label %bb.c, label %JS_Throw.exit

bb.c:                                             ; preds = %js_dup.exit
  %i.r = inttoptr i64 %i.m to ptr
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !191  ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !191
  %i.v = icmp slt i32 %i.t, 2
  br i1 %i.v, label %bb.d, label %JS_Throw.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @js_free_value_rt(ptr noundef nonnull %i.k, i64 %i.m, i64 %i.o), !inline_history !694
  br label %JS_Throw.exit

JS_Throw.exit:                                    ; preds = %js_dup.exit, %bb.c, %bb.d
  store i64 %i.a, ptr %i.l, align 8, !tbaa !218
  store i64 %i.c, ptr %i.n, align 8, !tbaa !240
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @JS_GetFunctionRealm(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %.not32 = icmp eq i64 %i.a, 4294967295
  br i1 %.not32, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %.tr2833 = phi i64 [ %.tr28.be, %tailrecurse.backedge ], [ %1, %bb.a ]
  %i.b = inttoptr i64 %.tr2833 to ptr             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i16, ptr %i.c, align 2, !tbaa !276
  switch i16 %i.d, label %.thread [
    i16 12, label %bb.b
    i16 13, label %bb.c
    i16 17, label %bb.c
    i16 55, label %bb.c
    i16 59, label %bb.c
    i16 51, label %bb.d
    i16 14, label %bb.g
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !218
  br label %.thread

bb.c:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !329
  br label %.thread

bb.d:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !218  ; 3 uses
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %i.n = load i8, ptr %i.m, align 1, !tbaa !473
  %.not24 = icmp eq i8 %i.n, 0
  br i1 %.not24, label %tailrecurse.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.110), !inline_history !112 ; 0 uses
  br label %.thread

tailrecurse.backedge:                             ; preds = %bb.e, %bb.g
  %.tr28.be.in = phi ptr [ %i.r, %bb.g ], [ %i.l, %bb.e ] ; 2 uses
  %.tr29.be.in = getelementptr inbounds nuw i8, ptr %.tr28.be.in, i64 8
  %.tr29.be = load i64, ptr %.tr29.be.in, align 8
  %.tr28.be = load i64, ptr %.tr28.be.in, align 8
  %i.p = and i64 %.tr29.be, 4294967295
  %.not = icmp eq i64 %i.p, 4294967295
  br i1 %.not, label %.lr.ph, label %.thread

bb.g:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !218
  br label %tailrecurse.backedge

.thread:                                          ; preds = %tailrecurse.backedge, %.lr.ph, %bb.d, %bb.a, %bb.f, %bb.b, %bb.c
  %.1 = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ null, %bb.f ], [ %0, %bb.a ], [ %0, %bb.d ], [ %0, %.lr.ph ], [ %0, %tailrecurse.backedge ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal { i64, i64 } @js_iterator_proto_iterator(ptr nofree readnone captures(none) %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #1 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = icmp ugt i32 %i.a, -10
  br i1 %i.b, label %bb.b, label %js_dup.exit

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !191
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.a, %bb.b
  %.fca.0.insert.i.i = insertvalue { i64, i64 } poison, i64 %1, 0
  %.fca.1.insert.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 %2, 1
  ret { i64, i64 } %.fca.1.insert.i.i
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_async_iterator_proto_dispose(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.JSValue, align 8            ; 6 uses
  %6 = alloca [1 x %struct.JSValue], align 16     ; 5 uses
  %7 = alloca %struct.JSValue, align 8            ; 4 uses
  %8 = alloca %struct.JSValue, align 16           ; 6 uses
  %9 = alloca %struct.JSValue, align 16           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) @__const.js_disposable_stack_dispose.undef, i64 16, i1 false)
  %i.a = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 6, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %trunc = trunc i64 %i.c to i32                  ; 2 uses
  switch i32 %trunc, label %bb.f [
    i32 6, label %bb.b
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1240 ; 2 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1248
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1244
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !218
  store i32 0, ptr %i.f, align 8
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !240
  store <2 x i64> %i.h, ptr %8, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.l = load i64, ptr %i.k, align 8
  %i.m = call { i64, i64 } @js_promise_resolve(ptr noundef %0, i64 %i.j, i64 %i.l, i32 poison, ptr noundef nonnull %8, i32 noundef 1) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 2 uses
  %.sroa.756.0.extract.shift = and i64 %i.n, -4294967296
  %i.o = extractvalue { i64, i64 } %i.m, 1
  %i.p = load i64, ptr %8, align 16               ; 2 uses
  %i.q = load i64, ptr %i.g, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.s = trunc i64 %i.q to i32
  %i.t = icmp ugt i32 %i.s, -10
  br i1 %i.t, label %bb.c, label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.b
  %i.u = inttoptr i64 %i.p to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !191  ; 2 uses
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !191
  %i.y = icmp slt i32 %i.w, 2
  br i1 %i.y, label %bb.d, label %JS_FreeValue.exit

bb.d:                                             ; preds = %bb.c
  call fastcc void @js_free_value_rt(ptr noundef %i.r, i64 %i.p, i64 %i.q), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
end_hunk_10
begin_hunk_11_@js_async_iterator_proto_dispose:bb.a
bb.i:                                             ; preds = %JS_FreeValue.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !232 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1240 ; 2 uses
  %.sroa.24.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.at, i64 1248
  %.sroa.2.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.at, i64 1244
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !tbaa !218
  store i32 0, ptr %i.au, align 8
  store i32 0, ptr %.sroa.2.0..sroa_idx.i70, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx.i68, align 8, !tbaa !240
  store <2 x i64> %i.aw, ptr %9, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = call { i64, i64 } @js_promise_resolve(ptr noundef nonnull %0, i64 %i.ay, i64 %i.ba, i32 poison, ptr noundef nonnull %9, i32 noundef 1) ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0      ; 2 uses
  %.sroa.756.0.extract.shift59 = and i64 %i.bc, -4294967296
  %i.bd = extractvalue { i64, i64 } %i.bb, 1
  %i.be = load i64, ptr %9, align 16              ; 2 uses
  %i.bf = load i64, ptr %i.av, align 8            ; 2 uses
  %i.bg = load ptr, ptr %i.aj, align 8, !tbaa !232
  %i.bh = trunc i64 %i.bf to i32
  %i.bi = icmp ugt i32 %i.bh, -10
  br i1 %i.bi, label %bb.j, label %JS_FreeValue.exit73

bb.j:                                             ; preds = %bb.i
  %i.bj = inttoptr i64 %i.be to ptr
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !191 ; 2 uses
  %i.bm = add nsw i32 %i.bl, -1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !191
  %i.bn = icmp slt i32 %i.bl, 2
  br i1 %i.bn, label %bb.k, label %JS_FreeValue.exit73

bb.k:                                             ; preds = %bb.j
  call fastcc void @js_free_value_rt(ptr noundef %i.bg, i64 %i.be, i64 %i.bf), !inline_history !291
  br label %JS_FreeValue.exit73

JS_FreeValue.exit73:                              ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br label %JS_FreeValue.exit75

bb.l:                                             ; preds = %JS_FreeValue.exit66
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = call { i64, i64 } @js_promise_resolve(ptr noundef nonnull %0, i64 %i.bp, i64 %i.br, i32 poison, ptr noundef nonnull %5, i32 noundef 0) ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.bs, 0      ; 9 uses
  %i.bu = extractvalue { i64, i64 } %i.bs, 1      ; 9 uses
  %i.bv = load i64, ptr %5, align 8               ; 2 uses
  %i.bw = load i64, ptr %.sroa.46.0..sroa_idx, align 8 ; 2 uses
  %i.bx = load ptr, ptr %i.aj, align 8, !tbaa !232
  %i.by = trunc i64 %i.bw to i32
  %i.bz = icmp ugt i32 %i.by, -10
  br i1 %i.bz, label %bb.m, label %JS_FreeValue.exit74

bb.m:                                             ; preds = %bb.l
  %i.ca = inttoptr i64 %i.bv to ptr
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !191 ; 2 uses
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !191
  %i.ce = icmp slt i32 %i.cc, 2
  br i1 %i.ce, label %bb.n, label %JS_FreeValue.exit74

bb.n:                                             ; preds = %bb.m
  call fastcc void @js_free_value_rt(ptr noundef %i.bx, i64 %i.bv, i64 %i.bw), !inline_history !291
  br label %JS_FreeValue.exit74

JS_FreeValue.exit74:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.cf = and i64 %i.bu, 4294967295
  %i.cg = icmp eq i64 %i.cf, 6
  br i1 %i.cg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %JS_FreeValue.exit74
  %.sroa.756.0.extract.shift63 = and i64 %i.bt, -4294967296
  br label %JS_FreeValue.exit75

bb.p:                                             ; preds = %JS_FreeValue.exit74
  %i.ch = call { i64, i64 } @JS_NewCFunctionData2(ptr noundef nonnull %0, ptr noundef nonnull @js_async_dispose_to_undef, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null), !inline_history !372 ; 2 uses
  %i.ci = extractvalue { i64, i64 } %i.ch, 0      ; 3 uses
  %i.cj = extractvalue { i64, i64 } %i.ch, 1      ; 4 uses
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = icmp eq i64 %i.ck, 6
  br i1 %i.cl, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cm = load ptr, ptr %i.aj, align 8, !tbaa !232
  %i.cn = trunc i64 %i.bu to i32
  %i.co = icmp ugt i32 %i.cn, -10
  br i1 %i.co, label %bb.r, label %JS_FreeValue.exit75

bb.r:                                             ; preds = %bb.q
  %i.cp = inttoptr i64 %i.bt to ptr
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !191 ; 2 uses
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !191
  %i.ct = icmp slt i32 %i.cr, 2
  br i1 %i.ct, label %bb.s, label %JS_FreeValue.exit75

bb.s:                                             ; preds = %bb.r
  call fastcc void @js_free_value_rt(ptr noundef %i.cm, i64 %i.bt, i64 %i.bu), !inline_history !291
  br label %JS_FreeValue.exit75

bb.t:                                             ; preds = %bb.p
  store i64 %i.ci, ptr %6, align 16, !tbaa !218
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cj, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240
  %i.cu = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %i.bt, i64 %i.bu, i32 noundef 137, i64 %i.bt, i64 %i.bu, i1 noundef zeroext false), !inline_history !373 ; 3 uses
  %i.cv = extractvalue { i64, i64 } %i.cu, 0      ; 3 uses
  %i.cw = extractvalue { i64, i64 } %i.cu, 1      ; 4 uses
  %i.cx = and i64 %i.cw, 4294967295
  %i.cy = icmp eq i64 %i.cx, 6
  br i1 %i.cy, label %JS_Invoke.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef nonnull %0, i64 %i.cv, i64 %i.cw, i64 %i.bt, i64 %i.bu, i64 0, i64 3, i32 noundef 1, ptr noundef nonnull %6, i32 noundef 2) #51, !inline_history !497 ; 3 uses
  %i.da = load ptr, ptr %i.aj, align 8, !tbaa !232
  %i.db = trunc i64 %i.cw to i32
  %i.dc = icmp ugt i32 %i.db, -10
  br i1 %i.dc, label %bb.v, label %JS_Invoke.exit

bb.v:                                             ; preds = %bb.u
  %i.dd = inttoptr i64 %i.cv to ptr
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !191 ; 2 uses
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !191
  %i.dh = icmp slt i32 %i.df, 2
  br i1 %i.dh, label %bb.w, label %JS_Invoke.exit

bb.w:                                             ; preds = %bb.v
  call fastcc void @js_free_value_rt(ptr noundef %i.da, i64 %i.cv, i64 %i.cw) #51, !inline_history !498
  br label %JS_Invoke.exit

JS_Invoke.exit:                                   ; preds = %bb.t, %bb.u, %bb.v, %bb.w
  %.fca.1.insert.merged.i = phi { i64, i64 } [ %i.cu, %bb.t ], [ %i.cz, %bb.u ], [ %i.cz, %bb.v ], [ %i.cz, %bb.w ] ; 2 uses
  %i.di = extractvalue { i64, i64 } %.fca.1.insert.merged.i, 0 ; 2 uses
  %i.dj = extractvalue { i64, i64 } %.fca.1.insert.merged.i, 1
  %i.dk = load ptr, ptr %i.aj, align 8, !tbaa !232 ; 3 uses
  %i.dl = trunc i64 %i.cj to i32
  %i.dm = icmp ugt i32 %i.dl, -10
  br i1 %i.dm, label %bb.x, label %JS_FreeValue.exit76

bb.x:                                             ; preds = %JS_Invoke.exit
  %i.dn = inttoptr i64 %i.ci to ptr
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -4 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !191 ; 2 uses
  %i.dq = add nsw i32 %i.dp, -1
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !191
  %i.dr = icmp slt i32 %i.dp, 2
  br i1 %i.dr, label %bb.y, label %JS_FreeValue.exit76

bb.y:                                             ; preds = %bb.x
  call fastcc void @js_free_value_rt(ptr noundef %i.dk, i64 %i.ci, i64 %i.cj), !inline_history !291
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !232
  br label %JS_FreeValue.exit76

JS_FreeValue.exit76:                              ; preds = %JS_Invoke.exit, %bb.x, %bb.y
  %i.ds = phi ptr [ %i.dk, %JS_Invoke.exit ], [ %i.dk, %bb.x ], [ %.pre, %bb.y ]
  %i.dt = trunc i64 %i.bu to i32
  %i.du = icmp ugt i32 %i.dt, -10
  br i1 %i.du, label %bb.z, label %JS_FreeValue.exit77

bb.z:                                             ; preds = %JS_FreeValue.exit76
  %i.dv = inttoptr i64 %i.bt to ptr
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -4 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !191 ; 2 uses
  %i.dy = add nsw i32 %i.dx, -1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !191
  %i.dz = icmp slt i32 %i.dx, 2
  br i1 %i.dz, label %bb.aa, label %JS_FreeValue.exit77

bb.aa:                                            ; preds = %bb.z
  call fastcc void @js_free_value_rt(ptr noundef %i.ds, i64 %i.bt, i64 %i.bu), !inline_history !291
  br label %JS_FreeValue.exit77

JS_FreeValue.exit77:                              ; preds = %JS_FreeValue.exit76, %bb.z, %bb.aa
  %.sroa.756.0.extract.shift61 = and i64 %i.di, -4294967296
  br label %JS_FreeValue.exit75

JS_FreeValue.exit75:                              ; preds = %bb.s, %bb.r, %bb.q, %JS_FreeValue.exit77, %bb.o, %JS_FreeValue.exit73, %bb.e, %JS_FreeValue.exit
  %.sroa.051.0 = phi i64 [ %i.n, %JS_FreeValue.exit ], [ %i.ae, %bb.e ], [ %i.bc, %JS_FreeValue.exit73 ], [ %i.bt, %bb.o ], [ %i.di, %JS_FreeValue.exit77 ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ]
  %.sroa.756.0 = phi i64 [ %.sroa.756.0.extract.shift, %JS_FreeValue.exit ], [ %.sroa.756.0.extract.shift57, %bb.e ], [ %.sroa.756.0.extract.shift59, %JS_FreeValue.exit73 ], [ %.sroa.756.0.extract.shift63, %bb.o ], [ %.sroa.756.0.extract.shift61, %JS_FreeValue.exit77 ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ]
  %.sroa.865.0 = phi i64 [ %i.o, %JS_FreeValue.exit ], [ %i.af, %bb.e ], [ %i.bd, %JS_FreeValue.exit73 ], [ %i.bu, %bb.o ], [ %i.dj, %JS_FreeValue.exit77 ], [ 6, %bb.q ], [ 6, %bb.r ], [ 6, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %.sroa.051.0.insert.ext = and i64 %.sroa.051.0, 4294967295
  %.sroa.051.0.insert.insert = or disjoint i64 %.sroa.756.0, %.sroa.051.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.051.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.865.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { i64, i64 } @js_async_dispose_to_undef(ptr nofree readnone captures(none) %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4, i32 %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  ret { i64, i64 } { i64 0, i64 3 }
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_async_from_sync_iterator_next(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #2 {
bb.a:
  %6 = alloca [2 x %struct.JSValue], align 16     ; 15 uses
  %7 = alloca %struct.JSValue, align 8            ; 10 uses
  %8 = alloca %struct.JSValue, align 8            ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %9 = alloca [2 x %struct.JSValue], align 16     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = call fastcc { i64, i64 } @js_promise_new(ptr noundef %0, i64 0, i64 3, ptr noundef nonnull %6), !inline_history !581 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 8 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 7 uses
  %i.e = and i64 %i.d, 4294967295
  %i.f = icmp eq i64 %i.e, 6
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  br i1 %i.f, label %JS_FreeValue.exit144, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %2, 4294967295
  %.not.i = icmp eq i64 %i.g, 4294967295
  br i1 %.not.i, label %bb.c, label %JS_GetOpaque.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.j = load i16, ptr %i.i, align 2, !tbaa !276
  %.not3.i = icmp eq i16 %i.j, 58
  br i1 %.not3.i, label %JS_GetOpaque.exit, label %JS_GetOpaque.exit.thread

JS_GetOpaque.exit:                                ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !218  ; 8 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %JS_GetOpaque.exit.thread, label %bb.d

JS_GetOpaque.exit.thread:                         ; preds = %bb.c, %bb.b, %JS_GetOpaque.exit
  %i.m = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.410) ; 0 uses
  br label %bb.v

bb.d:                                             ; preds = %JS_GetOpaque.exit
  %i.n = icmp eq i32 %5, 0
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 3 uses
  %i.t = icmp ugt i32 %i.s, -10
  br i1 %i.t, label %bb.f, label %js_dup.exit

bb.f:                                             ; preds = %bb.e
  %i.u = inttoptr i64 %i.p to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !191
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !191
  br label %js_dup.exit

bb.g:                                             ; preds = %bb.d
  %i.y = icmp eq i32 %5, 1                        ; 2 uses
  %i.z = select i1 %i.y, i32 6, i32 23
  %i.aa = load i64, ptr %i.l, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %i.aa, i64 %i.ac, i32 noundef %i.z, i64 %i.aa, i64 %i.ac, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = extractvalue { i64, i64 } %i.ad, 1      ; 2 uses
  %trunc = trunc i64 %i.af to i32                 ; 2 uses
  switch i32 %trunc, label %js_dup.exit [
    i32 6, label %bb.v
    i32 3, label %bb.h
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ag = load i64, ptr %4, align 8               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp ugt i32 %i.aj, -10
  br i1 %i.ak, label %bb.j, label %js_dup.exit119

bb.j:                                             ; preds = %bb.i
  %i.al = inttoptr i64 %i.ag to ptr
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !191
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !191
  br label %js_dup.exit119

js_dup.exit119:                                   ; preds = %bb.i, %bb.j
  %i.ap = tail call fastcc { i64, i64 } @js_create_iterator_result(ptr noundef %0, i64 %i.ag, i64 %i.ai, i1 noundef zeroext true) ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0
  %i.ar = extractvalue { i64, i64 } %i.ap, 1
  br label %bb.w

bb.k:                                             ; preds = %bb.h
  %i.as = load i64, ptr %i.l, align 8
  %i.at = load i64, ptr %i.ab, align 8
  %i.au = tail call fastcc i32 @JS_IteratorClose(ptr noundef %0, i64 %i.as, i64 %i.at, i1 noundef zeroext false)
  %.not115 = icmp eq i32 %i.au, 0
  br i1 %.not115, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !232 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1240 ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.ax, align 8, !tbaa !218
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 1248 ; 2 uses
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !240
  store i32 0, ptr %i.ax, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 1244
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !240
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.ay = tail call fastcc { i64, i64 } @JS_MakeError2(ptr noundef %0, i32 noundef 4, i1 noundef zeroext true, ptr noundef nonnull @.str.411) ; 2 uses
  %i.az = extractvalue { i64, i64 } %i.ay, 0
  %i.ba = extractvalue { i64, i64 } %i.ay, 1
  br label %bb.w

js_dup.exit:                                      ; preds = %bb.f, %bb.e, %bb.g
  %.pre-phi = phi i32 [ %i.s, %bb.f ], [ %i.s, %bb.e ], [ %trunc, %bb.g ]
  %.sroa.049.0 = phi i64 [ %i.p, %bb.f ], [ %i.p, %bb.e ], [ %i.ae, %bb.g ] ; 3 uses
  %.sroa.9.0 = phi i64 [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.af, %bb.g ] ; 2 uses
  %i.bb = icmp sgt i32 %3, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = load i64, ptr %i.l, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = call fastcc { i64, i64 } @JS_IteratorNext2(ptr noundef %0, i64 %i.bd, i64 %i.bf, i64 %.sroa.049.0, i64 %.sroa.9.0, i32 noundef %i.bc, ptr noundef %4, ptr noundef nonnull %i.a) ; 2 uses
  %i.bh = extractvalue { i64, i64 } %i.bg, 0
  %i.bi = extractvalue { i64, i64 } %i.bg, 1
  store i64 %i.bh, ptr %7, align 8, !tbaa !218
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store i64 %i.bi, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !240
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !232
  %i.bl = icmp ugt i32 %.pre-phi, -10
  br i1 %i.bl, label %bb.n, label %JS_FreeValue.exit

bb.n:                                             ; preds = %js_dup.exit
  %i.bm = inttoptr i64 %.sroa.049.0 to ptr
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !191 ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !191
  %i.bq = icmp slt i32 %i.bo, 2
  br i1 %i.bq, label %bb.o, label %JS_FreeValue.exit

bb.o:                                             ; preds = %bb.n
  call fastcc void @js_free_value_rt(ptr noundef %i.bk, i64 %.sroa.049.0, i64 %.sroa.9.0), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %js_dup.exit, %bb.n, %bb.o
  %i.br = load i64, ptr %.sroa.426.0..sroa_idx, align 8 ; 7 uses
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = icmp eq i64 %i.bs, 6
  br i1 %i.bt, label %bb.v, label %bb.p

bb.p:                                             ; preds = %JS_FreeValue.exit
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !191
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p
  %.sroa.022.0.copyload = load i64, ptr %7, align 8, !tbaa !218 ; 6 uses
  %i.bw = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %.sroa.022.0.copyload, i64 %i.br, i32 noundef 113, i64 %.sroa.022.0.copyload, i64 %i.br, i1 noundef zeroext false), !inline_history !1951 ; 2 uses
  %i.bx = extractvalue { i64, i64 } %i.bw, 1      ; 2 uses
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = icmp eq i64 %i.by, 6
  br i1 %i.bz, label %JS_IteratorGetCompleteValue.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = extractvalue { i64, i64 } %i.bw, 0
  %i.cb = call fastcc i32 @JS_ToBoolFree(ptr noundef nonnull %0, i64 %i.ca, i64 %i.bx), !inline_history !1952
  %i.cc = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %.sroa.022.0.copyload, i64 %i.br, i32 noundef 68, i64 %.sroa.022.0.copyload, i64 %i.br, i1 noundef zeroext false), !inline_history !1951 ; 2 uses
  %i.cd = extractvalue { i64, i64 } %i.cc, 1      ; 2 uses
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = icmp eq i64 %i.ce, 6
  br i1 %i.cf, label %JS_IteratorGetCompleteValue.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = extractvalue { i64, i64 } %i.cc, 0
  br label %JS_IteratorGetCompleteValue.exit

JS_IteratorGetCompleteValue.exit:                 ; preds = %bb.q, %bb.r, %bb.s
end_hunk_11
begin_hunk_12_@js_async_generator_completed_return:bb.a
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !191
  %i.bt = icmp slt i32 %i.br, 2
  br i1 %i.bt, label %bb.n, label %JS_FreeValue.exit35

bb.n:                                             ; preds = %bb.m
  call fastcc void @js_free_value_rt(ptr noundef %i.bm, i64 %i.at, i64 %i.ai), !inline_history !291
  %.pre = load ptr, ptr %i.bl, align 8, !tbaa !232
  br label %JS_FreeValue.exit35

JS_FreeValue.exit35:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.bu = phi ptr [ %i.bm, %bb.l ], [ %i.bm, %bb.m ], [ %.pre, %bb.n ] ; 3 uses
  %i.bv = trunc i64 %i.av to i32
  %i.bw = icmp ugt i32 %i.bv, -10
  br i1 %i.bw, label %bb.o, label %JS_FreeValue.exit36

bb.o:                                             ; preds = %JS_FreeValue.exit35
  %i.bx = inttoptr i64 %i.bh to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !191 ; 2 uses
  %i.ca = add nsw i32 %i.bz, -1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !191
  %i.cb = icmp slt i32 %i.bz, 2
  br i1 %i.cb, label %bb.p, label %JS_FreeValue.exit36

bb.p:                                             ; preds = %bb.o
  call fastcc void @js_free_value_rt(ptr noundef %i.bu, i64 %i.bh, i64 %i.av), !inline_history !291
  %.pre43 = load ptr, ptr %i.bl, align 8, !tbaa !232
  br label %JS_FreeValue.exit36

JS_FreeValue.exit36:                              ; preds = %JS_FreeValue.exit35, %bb.o, %bb.p
  %i.cc = phi ptr [ %i.bu, %JS_FreeValue.exit35 ], [ %i.bu, %bb.o ], [ %.pre43, %bb.p ]
  %i.cd = trunc i64 %.sroa.9.0 to i32
  %i.ce = icmp ugt i32 %i.cd, -10
  br i1 %i.ce, label %bb.q, label %JS_FreeValue.exit34

bb.q:                                             ; preds = %JS_FreeValue.exit36
  %i.cf = inttoptr i64 %.sroa.010.0 to ptr
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !191 ; 2 uses
  %i.ci = add nsw i32 %i.ch, -1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !191
  %i.cj = icmp slt i32 %i.ch, 2
  br i1 %i.cj, label %JS_FreeValue.exit34.sink.split, label %JS_FreeValue.exit34

JS_FreeValue.exit34.sink.split:                   ; preds = %bb.q, %bb.k
  %.sink = phi ptr [ %i.bb, %bb.k ], [ %i.cc, %bb.q ]
  call fastcc void @js_free_value_rt(ptr noundef %.sink, i64 %.sroa.010.0, i64 %.sroa.9.0)
  br label %JS_FreeValue.exit34

JS_FreeValue.exit34:                              ; preds = %JS_FreeValue.exit34.sink.split, %bb.q, %JS_FreeValue.exit36, %bb.k, %bb.j, %JS_FreeValue.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @js_async_generator_resolve_or_reject(ptr noundef %0, ptr %.128.val, i64 %1, i64 %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.JSValue, align 8            ; 3 uses
  store i64 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %.128.val, align 8, !tbaa !223 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.128.val, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !222  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !222
  store ptr %i.b, ptr %i.d, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.128.val, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.128.val, i64 56 ; 2 uses
  %i.g = zext nneg i32 %3 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %i.i, i64 %i.k, i64 0, i64 3, i64 0, i64 3, i32 noundef 1, ptr noundef nonnull %4, i32 noundef 2), !inline_history !284 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !232  ; 3 uses
  %i.q = trunc i64 %i.n to i32
  %i.r = icmp ugt i32 %i.q, -10
  br i1 %i.r, label %bb.b, label %JS_FreeValue.exit

bb.b:                                             ; preds = %bb.a
  %i.s = inttoptr i64 %i.m to ptr
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !191  ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !191
  %i.w = icmp slt i32 %i.u, 2
  br i1 %i.w, label %bb.c, label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.b
  call fastcc void @js_free_value_rt(ptr noundef %i.p, i64 %i.m, i64 %i.n), !inline_history !291
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !232
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  %i.x = phi ptr [ %i.p, %bb.a ], [ %i.p, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.128.val, i64 24
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.128.val, i64 32
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp ugt i32 %i.ac, -10
  br i1 %i.ad, label %bb.d, label %JS_FreeValue.exit18

bb.d:                                             ; preds = %JS_FreeValue.exit
  %i.ae = inttoptr i64 %i.z to ptr
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !191 ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !191
  %i.ai = icmp slt i32 %i.ag, 2
  br i1 %i.ai, label %bb.e, label %JS_FreeValue.exit18

bb.e:                                             ; preds = %bb.d
  call fastcc void @js_free_value_rt(ptr noundef %i.x, i64 %i.z, i64 %i.ab), !inline_history !291
  %.pre1 = load ptr, ptr %i.o, align 8, !tbaa !232
  br label %JS_FreeValue.exit18

JS_FreeValue.exit18:                              ; preds = %JS_FreeValue.exit, %bb.d, %bb.e
  %i.aj = phi ptr [ %i.x, %JS_FreeValue.exit ], [ %i.x, %bb.d ], [ %.pre1, %bb.e ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.128.val, i64 40
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.128.val, i64 48
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = icmp ugt i32 %i.ao, -10
  br i1 %i.ap, label %bb.f, label %JS_FreeValue.exit19

bb.f:                                             ; preds = %JS_FreeValue.exit18
  %i.aq = inttoptr i64 %i.al to ptr
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !191 ; 2 uses
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !191
  %i.au = icmp slt i32 %i.as, 2
  br i1 %i.au, label %bb.g, label %JS_FreeValue.exit19

bb.g:                                             ; preds = %bb.f
  call fastcc void @js_free_value_rt(ptr noundef %i.aj, i64 %i.al, i64 %i.an), !inline_history !291
  %.pre2 = load ptr, ptr %i.o, align 8, !tbaa !232
  br label %JS_FreeValue.exit19

JS_FreeValue.exit19:                              ; preds = %JS_FreeValue.exit18, %bb.f, %bb.g
  %i.av = phi ptr [ %i.aj, %JS_FreeValue.exit18 ], [ %i.aj, %bb.f ], [ %.pre2, %bb.g ] ; 3 uses
  %i.aw = load i64, ptr %i.f, align 8             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.128.val, i64 64
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = icmp ugt i32 %i.az, -10
  br i1 %i.ba, label %bb.h, label %JS_FreeValue.exit20

bb.h:                                             ; preds = %JS_FreeValue.exit19
  %i.bb = inttoptr i64 %i.aw to ptr
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !191 ; 2 uses
  %i.be = add nsw i32 %i.bd, -1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !191
  %i.bf = icmp slt i32 %i.bd, 2
  br i1 %i.bf, label %bb.i, label %JS_FreeValue.exit20

bb.i:                                             ; preds = %bb.h
  call fastcc void @js_free_value_rt(ptr noundef %i.av, i64 %i.aw, i64 %i.ay), !inline_history !291
  %.pre3 = load ptr, ptr %i.o, align 8, !tbaa !232
  br label %JS_FreeValue.exit20

JS_FreeValue.exit20:                              ; preds = %JS_FreeValue.exit19, %bb.h, %bb.i
  %i.bg = phi ptr [ %i.av, %JS_FreeValue.exit19 ], [ %i.av, %bb.h ], [ %.pre3, %bb.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.128.val, i64 72
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.128.val, i64 80
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp ugt i32 %i.bl, -10
  br i1 %i.bm, label %bb.j, label %JS_FreeValue.exit21

bb.j:                                             ; preds = %JS_FreeValue.exit20
  %i.bn = inttoptr i64 %i.bi to ptr
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !191 ; 2 uses
  %i.bq = add nsw i32 %i.bp, -1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !191
  %i.br = icmp slt i32 %i.bp, 2
  br i1 %i.br, label %bb.k, label %JS_FreeValue.exit21

bb.k:                                             ; preds = %bb.j
  call fastcc void @js_free_value_rt(ptr noundef %i.bg, i64 %i.bi, i64 %i.bk), !inline_history !291
  %.pre4 = load ptr, ptr %i.o, align 8, !tbaa !232
  br label %JS_FreeValue.exit21

JS_FreeValue.exit21:                              ; preds = %JS_FreeValue.exit20, %bb.j, %bb.k
  %i.bs = phi ptr [ %i.bg, %JS_FreeValue.exit20 ], [ %i.bg, %bb.j ], [ %.pre4, %bb.k ]
  call void @js_free_rt(ptr noundef %i.bs, ptr noundef nonnull %.128.val)
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef { i64, i64 } @js_async_generator_resolve_function(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #2 {
bb.a:
  %i.a = trunc i32 %5 to i1                       ; 2 uses
  %i.b = trunc i32 %5 to i8
  %i.c = and i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %.not.i = icmp eq i64 %i.f, 4294967295
  br i1 %.not.i, label %bb.b, label %JS_GetOpaque.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %6, align 8
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.j = load i16, ptr %i.i, align 2, !tbaa !276
  %.not3.i = icmp eq i16 %i.j, 60
  br i1 %.not3.i, label %bb.c, label %JS_GetOpaque.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !218
  br label %JS_GetOpaque.exit

JS_GetOpaque.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.l, %bb.c ], [ null, %bb.a ], [ null, %bb.b ] ; 6 uses
  %.sroa.03.0.copyload = load i64, ptr %4, align 8, !tbaa !218 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !240 ; 7 uses
  %i.m = icmp sgt i32 %5, 1
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.j

bb.d:                                             ; preds = %JS_GetOpaque.exit
  store i32 5, ptr %i.n, align 8, !tbaa !697
  br i1 %i.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.0.i, i64 128
  %.val = load ptr, ptr %i.o, align 8, !tbaa !845
  tail call fastcc void @js_async_generator_resolve_or_reject(ptr noundef %0, ptr %.val, i64 %.sroa.03.0.copyload, i64 %.sroa.7.0.copyload, i32 noundef 1)
  br label %js_async_generator_resolve.exit

bb.f:                                             ; preds = %bb.d
  %i.p = trunc i64 %.sroa.7.0.copyload to i32
  %i.q = icmp ugt i32 %i.p, -10
  br i1 %i.q, label %bb.g, label %js_dup.exit.i

bb.g:                                             ; preds = %bb.f
  %i.r = inttoptr i64 %.sroa.03.0.copyload to ptr
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !191
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !191
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %bb.g, %bb.f
  %i.v = tail call fastcc { i64, i64 } @js_create_iterator_result(ptr noundef %0, i64 %.sroa.03.0.copyload, i64 %.sroa.7.0.copyload, i1 noundef zeroext true) ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0        ; 3 uses
  %i.x = extractvalue { i64, i64 } %i.v, 1        ; 3 uses
  %i.y = getelementptr i8, ptr %.0.i, i64 128
  %.val.i = load ptr, ptr %i.y, align 8, !tbaa !845
  tail call fastcc void @js_async_generator_resolve_or_reject(ptr noundef %0, ptr %.val.i, i64 %i.w, i64 %i.x, i32 noundef 0)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !232
  %i.ab = trunc i64 %i.x to i32
  %i.ac = icmp ugt i32 %i.ab, -10
  br i1 %i.ac, label %bb.h, label %js_async_generator_resolve.exit

bb.h:                                             ; preds = %js_dup.exit.i
  %i.ad = inttoptr i64 %i.w to ptr
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !191 ; 2 uses
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !191
  %i.ah = icmp slt i32 %i.af, 2
  br i1 %i.ah, label %bb.i, label %js_async_generator_resolve.exit

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @js_free_value_rt(ptr noundef %i.aa, i64 %i.w, i64 %i.x), !inline_history !291
  br label %js_async_generator_resolve.exit

bb.j:                                             ; preds = %JS_GetOpaque.exit
  %i.ai = load i32, ptr %i.n, align 8, !tbaa !697
  %i.aj = icmp eq i32 %i.ai, 3
  br i1 %i.aj, label %bb.k, label %js_async_generator_resolve.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  store i8 %i.c, ptr %i.ak, align 4, !tbaa !852
  br i1 %i.a, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.al = trunc i64 %.sroa.7.0.copyload to i32
  %i.am = icmp ugt i32 %i.al, -10
  br i1 %i.am, label %bb.m, label %js_dup.exit

bb.m:                                             ; preds = %bb.l
  %i.an = inttoptr i64 %.sroa.03.0.copyload to ptr
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !191
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.l, %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !232 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1240 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1248 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = icmp ugt i32 %i.ax, -10
  br i1 %i.ay, label %bb.n, label %JS_Throw.exit

bb.n:                                             ; preds = %js_dup.exit
  %i.az = inttoptr i64 %i.au to ptr
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191 ; 2 uses
  %i.bc = add nsw i32 %i.bb, -1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !191
  %i.bd = icmp slt i32 %i.bb, 2
  br i1 %i.bd, label %bb.o, label %JS_Throw.exit

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @js_free_value_rt(ptr noundef nonnull %i.as, i64 %i.au, i64 %i.aw), !inline_history !694
  br label %JS_Throw.exit

JS_Throw.exit:                                    ; preds = %js_dup.exit, %bb.n, %bb.o
  store i64 %.sroa.03.0.copyload, ptr %i.at, align 8, !tbaa !218
  store i64 %.sroa.7.0.copyload, ptr %i.av, align 8, !tbaa !240
  br label %bb.r

bb.p:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !851 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16
  %i.bh = trunc i64 %.sroa.7.0.copyload to i32
  %i.bi = icmp ugt i32 %i.bh, -10
  br i1 %i.bi, label %bb.q, label %js_dup.exit32

bb.q:                                             ; preds = %bb.p
  %i.bj = inttoptr i64 %.sroa.03.0.copyload to ptr
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !191
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !191
  br label %js_dup.exit32

js_dup.exit32:                                    ; preds = %bb.p, %bb.q
  store i64 %.sroa.03.0.copyload, ptr %i.bg, align 8, !tbaa !218
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bf, i64 -8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  br label %bb.r

bb.r:                                             ; preds = %js_dup.exit32, %JS_Throw.exit
  tail call fastcc void @js_async_generator_resume_next(ptr noundef %0, ptr noundef nonnull %.0.i)
  br label %js_async_generator_resolve.exit

js_async_generator_resolve.exit:                  ; preds = %bb.i, %bb.h, %js_dup.exit.i, %bb.j, %bb.r, %bb.e
  ret { i64, i64 } { i64 0, i64 3 }
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_disposable_stack_adopt(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = and i64 %2, 4294967295
  %.not.i.i.i = icmp eq i64 %i.b, 4294967295
  br i1 %.not.i.i.i, label %bb.b, label %JS_GetOpaque2.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !276
  %i.f = zext i16 %i.e to i32
  %.not3.i.i.i = icmp eq i32 %5, %i.f
  br i1 %.not3.i.i.i, label %JS_GetOpaque.exit.i.i, label %JS_GetOpaque2.exit.thread.i

JS_GetOpaque.exit.i.i:                            ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218  ; 7 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %JS_GetOpaque2.exit.thread.i, label %JS_GetOpaque2.exit.i, !prof !404

JS_GetOpaque2.exit.thread.i:                      ; preds = %JS_GetOpaque.exit.i.i, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !232  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !251
  %i.m = sext i32 %5 to i64
  %i.n = getelementptr inbounds [40 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.q = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %i.j, ptr noundef nonnull %i.a, i32 noundef %i.p) ; 0 uses
  %i.r = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.a) #51, !inline_history !115 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %js_disposable_stack_get.exit.thread

end_hunk_12
begin_hunk_13_@js_async_dispose_step:bb.a
  %i.bs = load ptr, ptr %i.an, align 8, !tbaa !232 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1240 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 1248 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = icmp ugt i32 %i.bx, -10
  br i1 %i.by, label %bb.t, label %JS_Throw.exit90

bb.t:                                             ; preds = %bb.s
  %i.bz = inttoptr i64 %i.bu to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !191 ; 2 uses
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !191
  %i.cd = icmp slt i32 %i.cb, 2
  br i1 %i.cd, label %bb.u, label %JS_Throw.exit90

bb.u:                                             ; preds = %bb.t
  call fastcc void @js_free_value_rt(ptr noundef nonnull %i.bs, i64 %i.bu, i64 %i.bw), !inline_history !694
  br label %JS_Throw.exit90

JS_Throw.exit90:                                  ; preds = %bb.s, %bb.t, %bb.u
  store i64 %.sroa.03.0.copyload.i, ptr %i.bt, align 8, !tbaa !218
  store i64 %.sroa.24.0.copyload.i, ptr %i.bv, align 8, !tbaa !240
  br label %bb.al

bb.v:                                             ; preds = %bb.k
  br i1 %i.d, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.074.sroa.9.0.extract.shift87 = and i64 %i.ai, -4294967296
  br label %bb.al

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !282
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = call { i64, i64 } @js_promise_resolve(ptr noundef %0, i64 %i.cf, i64 %i.ch, i32 poison, ptr noundef nonnull %8, i32 noundef 0) ; 2 uses
  %i.cj = extractvalue { i64, i64 } %i.ci, 0      ; 5 uses
  %i.ck = extractvalue { i64, i64 } %i.ci, 1      ; 6 uses
  %i.cl = load i64, ptr %8, align 8               ; 2 uses
  %i.cm = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !232
  %i.cp = trunc i64 %i.cm to i32
  %i.cq = icmp ugt i32 %i.cp, -10
  br i1 %i.cq, label %bb.y, label %JS_FreeValue.exit91

bb.y:                                             ; preds = %bb.x
  %i.cr = inttoptr i64 %i.cl to ptr
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !191 ; 2 uses
  %i.cu = add nsw i32 %i.ct, -1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !191
  %i.cv = icmp slt i32 %i.ct, 2
  br i1 %i.cv, label %bb.z, label %JS_FreeValue.exit91

bb.z:                                             ; preds = %bb.y
  call fastcc void @js_free_value_rt(ptr noundef %i.co, i64 %i.cl, i64 %i.cm), !inline_history !291
  br label %JS_FreeValue.exit91

JS_FreeValue.exit91:                              ; preds = %bb.x, %bb.y, %bb.z
  %i.cw = and i64 %i.ck, 4294967295
  %i.cx = icmp eq i64 %i.cw, 6
  br i1 %i.cx, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %JS_FreeValue.exit91
  %i.cy = call { i64, i64 } @JS_NewCFunctionData2(ptr noundef nonnull %0, ptr noundef nonnull @js_async_dispose_rethrow, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull readonly %9), !inline_history !372 ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cy, 0      ; 3 uses
  %i.da = extractvalue { i64, i64 } %i.cy, 1      ; 3 uses
  %i.db = call { i64, i64 } @JS_NewCFunctionData2(ptr noundef nonnull %0, ptr noundef nonnull @js_async_dispose_rethrow, ptr noundef null, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull readonly %9), !inline_history !372 ; 2 uses
  %i.dc = extractvalue { i64, i64 } %i.db, 0      ; 3 uses
  %i.dd = extractvalue { i64, i64 } %i.db, 1      ; 3 uses
  store i64 %i.cz, ptr %10, align 16, !tbaa !218
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.da, ptr %.sroa.511.0..sroa_idx, align 8, !tbaa !240
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.dc, ptr %i.de, align 16, !tbaa !218
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.dd, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !240
  %i.df = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %i.cj, i64 %i.ck, i32 noundef 137, i64 %i.cj, i64 %i.ck, i1 noundef zeroext false), !inline_history !373 ; 3 uses
  %i.dg = extractvalue { i64, i64 } %i.df, 0      ; 3 uses
  %i.dh = extractvalue { i64, i64 } %i.df, 1      ; 4 uses
  %i.di = and i64 %i.dh, 4294967295
  %i.dj = icmp eq i64 %i.di, 6
  br i1 %i.dj, label %JS_Invoke.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dk = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef nonnull %0, i64 %i.dg, i64 %i.dh, i64 %i.cj, i64 %i.ck, i64 0, i64 3, i32 noundef 2, ptr noundef nonnull %10, i32 noundef 2) #51, !inline_history !497 ; 3 uses
  %i.dl = load ptr, ptr %i.cn, align 8, !tbaa !232
  %i.dm = trunc i64 %i.dh to i32
  %i.dn = icmp ugt i32 %i.dm, -10
  br i1 %i.dn, label %bb.ac, label %JS_Invoke.exit

bb.ac:                                            ; preds = %bb.ab
  %i.do = inttoptr i64 %i.dg to ptr
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -4 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !191 ; 2 uses
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !191
  %i.ds = icmp slt i32 %i.dq, 2
  br i1 %i.ds, label %bb.ad, label %JS_Invoke.exit

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @js_free_value_rt(ptr noundef %i.dl, i64 %i.dg, i64 %i.dh) #51, !inline_history !498
  br label %JS_Invoke.exit

JS_Invoke.exit:                                   ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.fca.1.insert.merged.i = phi { i64, i64 } [ %i.df, %bb.aa ], [ %i.dk, %bb.ab ], [ %i.dk, %bb.ac ], [ %i.dk, %bb.ad ] ; 2 uses
  %i.dt = extractvalue { i64, i64 } %.fca.1.insert.merged.i, 0 ; 2 uses
  %i.du = extractvalue { i64, i64 } %.fca.1.insert.merged.i, 1
  %i.dv = load ptr, ptr %i.cn, align 8, !tbaa !232 ; 3 uses
  %i.dw = trunc i64 %i.da to i32
  %i.dx = icmp ugt i32 %i.dw, -10
  br i1 %i.dx, label %bb.ae, label %JS_FreeValue.exit92

bb.ae:                                            ; preds = %JS_Invoke.exit
  %i.dy = inttoptr i64 %i.cz to ptr
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !191 ; 2 uses
  %i.eb = add nsw i32 %i.ea, -1
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !191
  %i.ec = icmp slt i32 %i.ea, 2
  br i1 %i.ec, label %bb.af, label %JS_FreeValue.exit92

bb.af:                                            ; preds = %bb.ae
  call fastcc void @js_free_value_rt(ptr noundef %i.dv, i64 %i.cz, i64 %i.da), !inline_history !291
  %.pre = load ptr, ptr %i.cn, align 8, !tbaa !232
  br label %JS_FreeValue.exit92

JS_FreeValue.exit92:                              ; preds = %JS_Invoke.exit, %bb.ae, %bb.af
  %i.ed = phi ptr [ %i.dv, %JS_Invoke.exit ], [ %i.dv, %bb.ae ], [ %.pre, %bb.af ] ; 3 uses
  %i.ee = trunc i64 %i.dd to i32
  %i.ef = icmp ugt i32 %i.ee, -10
  br i1 %i.ef, label %bb.ag, label %JS_FreeValue.exit93

bb.ag:                                            ; preds = %JS_FreeValue.exit92
  %i.eg = inttoptr i64 %i.dc to ptr
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !191 ; 2 uses
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !191
  %i.ek = icmp slt i32 %i.ei, 2
  br i1 %i.ek, label %bb.ah, label %JS_FreeValue.exit93

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @js_free_value_rt(ptr noundef %i.ed, i64 %i.dc, i64 %i.dd), !inline_history !291
  %.pre96 = load ptr, ptr %i.cn, align 8, !tbaa !232
  br label %JS_FreeValue.exit93

JS_FreeValue.exit93:                              ; preds = %JS_FreeValue.exit92, %bb.ag, %bb.ah
  %i.el = phi ptr [ %i.ed, %JS_FreeValue.exit92 ], [ %i.ed, %bb.ag ], [ %.pre96, %bb.ah ]
  %i.em = trunc i64 %i.ck to i32
  %i.en = icmp ugt i32 %i.em, -10
  br i1 %i.en, label %bb.ai, label %JS_FreeValue.exit94

bb.ai:                                            ; preds = %JS_FreeValue.exit93
  %i.eo = inttoptr i64 %i.cj to ptr
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -4 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !191 ; 2 uses
  %i.er = add nsw i32 %i.eq, -1
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !191
  %i.es = icmp slt i32 %i.eq, 2
  br i1 %i.es, label %bb.aj, label %JS_FreeValue.exit94

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @js_free_value_rt(ptr noundef %i.el, i64 %i.cj, i64 %i.ck), !inline_history !291
  br label %JS_FreeValue.exit94

JS_FreeValue.exit94:                              ; preds = %JS_FreeValue.exit93, %bb.ai, %bb.aj
  %.sroa.074.sroa.9.0.extract.shift85 = and i64 %i.dt, -4294967296
  br label %bb.ak

bb.ak:                                            ; preds = %JS_FreeValue.exit91, %JS_FreeValue.exit94
  %.sroa.12.2 = phi i64 [ %i.du, %JS_FreeValue.exit94 ], [ 6, %JS_FreeValue.exit91 ]
  %.sroa.074.sroa.0.2 = phi i64 [ %i.dt, %JS_FreeValue.exit94 ], [ 0, %JS_FreeValue.exit91 ]
  %.sroa.074.sroa.9.2 = phi i64 [ %.sroa.074.sroa.9.0.extract.shift85, %JS_FreeValue.exit94 ], [ 0, %JS_FreeValue.exit91 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #49
  br label %bb.al

bb.al:                                            ; preds = %JS_Throw.exit90, %JS_FreeValue.exit, %JS_Throw.exit89, %bb.b, %bb.ak, %bb.w, %JS_Throw.exit
  %.sroa.12.3 = phi i64 [ 6, %JS_Throw.exit ], [ %i.aj, %bb.w ], [ 3, %bb.b ], [ %.sroa.12.2, %bb.ak ], [ 6, %JS_Throw.exit89 ], [ 6, %JS_FreeValue.exit ], [ 6, %JS_Throw.exit90 ]
  %.sroa.074.sroa.0.3 = phi i64 [ 0, %JS_Throw.exit ], [ %i.ai, %bb.w ], [ 0, %bb.b ], [ %.sroa.074.sroa.0.2, %bb.ak ], [ 0, %JS_Throw.exit89 ], [ 0, %JS_FreeValue.exit ], [ 0, %JS_Throw.exit90 ]
  %.sroa.074.sroa.9.3 = phi i64 [ 0, %JS_Throw.exit ], [ %.sroa.074.sroa.9.0.extract.shift87, %bb.w ], [ 0, %bb.b ], [ %.sroa.074.sroa.9.2, %bb.ak ], [ 0, %JS_Throw.exit89 ], [ 0, %JS_FreeValue.exit ], [ 0, %JS_Throw.exit90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  %.sroa.074.sroa.0.0.insert.ext = and i64 %.sroa.074.sroa.0.3, 4294967295
  %.sroa.074.sroa.0.0.insert.insert = or i64 %.sroa.074.sroa.9.3, %.sroa.074.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.074.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.12.3, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal noundef { i64, i64 } @js_async_dispose_rethrow(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) #2 {
bb.a:
  %i.a = load i64, ptr %6, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp ugt i32 %i.d, -10                   ; 2 uses
  br i1 %i.e, label %bb.b, label %js_dup.exit

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !191
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.a, %bb.b
  %i.j = icmp eq i32 %5, 0
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %js_dup.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !232  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1240 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1248 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp ugt i32 %i.q, -10
  br i1 %i.r, label %bb.d, label %JS_Throw.exit

bb.d:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !191  ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !191
  %i.w = icmp slt i32 %i.u, 2
  br i1 %i.w, label %bb.e, label %JS_Throw.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @js_free_value_rt(ptr noundef nonnull %i.l, i64 %i.n, i64 %i.p), !inline_history !694
  br label %JS_Throw.exit

JS_Throw.exit:                                    ; preds = %bb.c, %bb.d, %bb.e
  store i64 %i.a, ptr %i.m, align 8, !tbaa !218
  store i64 %i.c, ptr %i.o, align 8, !tbaa !240
  br label %bb.l

bb.f:                                             ; preds = %js_dup.exit
  %i.x = load i64, ptr %4, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = tail call fastcc { i64, i64 } @js_new_suppressed_error(ptr noundef %0, i64 %i.x, i64 %i.z, i64 %i.a, i64 %i.c) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !232
  br i1 %i.e, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %bb.f
  %i.af = inttoptr i64 %i.a to ptr
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !191 ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !191
  %i.aj = icmp slt i32 %i.ah, 2
  br i1 %i.aj, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ae, i64 %i.a, i64 %i.c), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  %i.ak = and i64 %i.ac, 4294967295
  %i.al = icmp eq i64 %i.ak, 6
  br i1 %i.al, label %bb.l, label %bb.i

bb.i:                                             ; preds = %JS_FreeValue.exit
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !232 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1240 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 1248 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = icmp ugt i32 %i.ar, -10
  br i1 %i.as, label %bb.j, label %JS_Throw.exit19

bb.j:                                             ; preds = %bb.i
  %i.at = inttoptr i64 %i.ao to ptr
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !191 ; 2 uses
  %i.aw = add nsw i32 %i.av, -1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !191
  %i.ax = icmp slt i32 %i.av, 2
  br i1 %i.ax, label %bb.k, label %JS_Throw.exit19

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @js_free_value_rt(ptr noundef nonnull %i.am, i64 %i.ao, i64 %i.aq), !inline_history !694
  br label %JS_Throw.exit19

JS_Throw.exit19:                                  ; preds = %bb.i, %bb.j, %bb.k
  store i64 %i.ab, ptr %i.an, align 8, !tbaa !218
  store i64 %i.ac, ptr %i.ap, align 8, !tbaa !240
  br label %bb.l

bb.l:                                             ; preds = %JS_Throw.exit19, %JS_FreeValue.exit, %JS_Throw.exit
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #18

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_Date_parse(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 20 uses
  %i.b = alloca [3 x i32], align 4                ; 14 uses
  %i.c = alloca i32, align 4                      ; 14 uses
  %i.d = alloca [9 x i32], align 16               ; 19 uses
  %i.e = alloca [9 x double], align 16            ; 8 uses
  %i.f = alloca [128 x i8], align 16              ; 102 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #49
  %i.g = load i64, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.g, i64 %i.i, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 3 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 6
  br i1 %i.n, label %JS_FreeValue.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = inttoptr i64 %i.k to ptr                 ; 17 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 2147483647                 ; 8 uses
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %i.r, i32 127) ; 14 uses
  %.not135 = icmp eq i32 %i.r, 0
  br i1 %.not135, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.s = and i64 %i.p, 2147483648
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = lshr i64 %i.p, 60
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = and i32 %i.u, 3                          ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 24       ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  switch i32 %i.v, label %default.unreachable [
    i32 3, label %.split.us
    i32 0, label %._crit_edge.sink.split
    i32 1, label %.lr.ph.split.us.split.split.us111
    i32 2, label %.lr.ph.split.us.split.split
  ]

.lr.ph.split.us.split.split.us111:                ; preds = %.lr.ph.split.us
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !389
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !390
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  br label %._crit_edge.sink.split

default.unreachable:                              ; preds = %.lr.ph.split, %.lr.ph.split.us
  unreachable

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !239
  br label %._crit_edge.sink.split

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i32 %i.v, label %default.unreachable [
    i32 3, label %bb.c
    i32 0, label %iter.check409
    i32 1, label %iter.check383
    i32 2, label %iter.check
  ]

iter.check409:                                    ; preds = %.lr.ph.split
  %wide.trip.count208 = zext nneg i32 %invariant.umin to i64 ; 6 uses
  %min.iters.check396 = icmp samesign ult i32 %i.r, 4
  br i1 %min.iters.check396, label %str16.exit.i.us.preheader, label %vector.main.loop.iter.check397

vector.main.loop.iter.check397:                   ; preds = %iter.check409
  %min.iters.check398 = icmp samesign ult i32 %i.r, 16
  br i1 %min.iters.check398, label %vec.epilog.ph413, label %vector.ph399

vector.ph399:                                     ; preds = %vector.main.loop.iter.check397
  %i.ae = and i64 %wide.trip.count208, 12
  %n.vec400 = and i64 %wide.trip.count208, 112    ; 9 uses
  %i.af = getelementptr i8, ptr %i.o, i64 40
  %wide.load403 = load <8 x i16>, ptr %i.w, align 8, !tbaa !221 ; 3 uses
  %wide.load404 = load <8 x i16>, ptr %i.af, align 8, !tbaa !221 ; 3 uses
end_hunk_13
begin_hunk_14_@js_bigint_toString:bb.a
bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = and i64 %i.x, 4294967295
  %i.z = icmp eq i64 %i.y, 3
  br i1 %i.z, label %js_get_radix.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %4, align 8               ; 2 uses
  %i.ab = trunc i64 %i.x to i32
  %i.ac = icmp ugt i32 %i.ab, -10
  br i1 %i.ac, label %bb.k, label %js_dup.exit.i.i.preheader

bb.k:                                             ; preds = %bb.j
  %i.ad = inttoptr i64 %i.aa to ptr
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !191
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.k, %bb.j
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.o
  %.sroa.09.0.in.i.i.i = phi i64 [ %i.al, %bb.o ], [ %i.aa, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.am, %bb.o ], [ %i.x, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.ah = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.ah, label %bb.o [
    i32 0, label %bb.l
    i32 1, label %bb.l
    i32 2, label %bb.l
    i32 3, label %bb.l
    i32 6, label %.loopexit
    i32 8, label %bb.m
  ]

bb.l:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %.sroa.09.0.extract.trunc.i.i.i = trunc i64 %.sroa.09.0.in.i.i.i to i32
  br label %bb.p

bb.m:                                             ; preds = %js_dup.exit.i.i
  %.sroa.09.0.le.i.i.i = bitcast i64 %.sroa.09.0.in.i.i.i to double ; 4 uses
  %i.ai = fcmp uno double %.sroa.09.0.le.i.i.i, 0.000000e+00
  %i.aj = fcmp olt double %.sroa.09.0.le.i.i.i, f0xC1E0000000000000
  %or.cond11.i = or i1 %i.ai, %i.aj
  br i1 %or.cond11.i, label %.thread.i27, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.inv.i.i.i = fcmp oge double %.sroa.09.0.le.i.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i.i = select i1 %.inv.i.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i.i
  %spec.select.i.i.i = fptosi double %spec.select16.i.i.i to i32
  br label %bb.p

bb.o:                                             ; preds = %js_dup.exit.i.i
  %i.ak = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.al = extractvalue { i64, i64 } %i.ak, 0
  %i.am = extractvalue { i64, i64 } %i.ak, 1      ; 2 uses
  %i.an = and i64 %i.am, 4294967295
  %i.ao = icmp eq i64 %i.an, 6
  br i1 %i.ao, label %.loopexit, label %js_dup.exit.i.i

bb.p:                                             ; preds = %bb.n, %bb.l
  %.1.sink.i.i.ph.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ %.sroa.09.0.extract.trunc.i.i.i, %bb.l ] ; 2 uses
  %i.ap = add i32 %.1.sink.i.i.ph.i, -37
  %or.cond.i = icmp ult i32 %i.ap, -35
  br i1 %or.cond.i, label %.thread.i27, label %js_get_radix.exit

.thread.i27:                                      ; preds = %bb.p, %bb.m
  %i.aq = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.645) ; 0 uses
  br label %.loopexit

js_get_radix.exit:                                ; preds = %bb.p, %bb.h, %bb.i
  %.0 = phi i32 [ 10, %bb.h ], [ 10, %bb.i ], [ %.1.sink.i.i.ph.i, %bb.p ]
  %i.ar = tail call fastcc { i64, i64 } @js_bigint_to_string1(ptr noundef %0, i64 %.sroa.07.1.i, i64 %.sroa.48.1.i, i32 noundef %.0) ; 2 uses
  %i.as = extractvalue { i64, i64 } %i.ar, 0      ; 2 uses
  %i.at = extractvalue { i64, i64 } %i.ar, 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !232
  %i.aw = trunc i64 %.sroa.48.1.i to i32
  %i.ax = icmp ugt i32 %i.aw, -10
  br i1 %i.ax, label %bb.q, label %JS_FreeValue.exit

bb.q:                                             ; preds = %js_get_radix.exit
  %i.ay = inttoptr i64 %.sroa.07.1.i to ptr
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !191 ; 2 uses
  %i.bb = add nsw i32 %i.ba, -1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !191
  %i.bc = icmp slt i32 %i.ba, 2
  br i1 %i.bc, label %bb.r, label %JS_FreeValue.exit

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @js_free_value_rt(ptr noundef %i.av, i64 %.sroa.07.1.i, i64 %.sroa.48.1.i), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %js_get_radix.exit, %bb.q, %bb.r
  %.sroa.423.0.extract.shift = and i64 %i.as, -4294967296
  br label %JS_FreeValue.exit28

.loopexit:                                        ; preds = %js_dup.exit.i.i, %bb.o, %.thread.i27
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !232
  %i.bf = trunc i64 %.sroa.48.1.i to i32
  %i.bg = icmp ugt i32 %i.bf, -10
  br i1 %i.bg, label %bb.s, label %JS_FreeValue.exit28

bb.s:                                             ; preds = %.loopexit
  %i.bh = inttoptr i64 %.sroa.07.1.i to ptr
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !191 ; 2 uses
  %i.bk = add nsw i32 %i.bj, -1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !191
  %i.bl = icmp slt i32 %i.bj, 2
  br i1 %i.bl, label %bb.t, label %JS_FreeValue.exit28

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @js_free_value_rt(ptr noundef %i.be, i64 %.sroa.07.1.i, i64 %.sroa.48.1.i), !inline_history !291
  br label %JS_FreeValue.exit28

JS_FreeValue.exit28:                              ; preds = %bb.t, %bb.s, %.loopexit, %JS_FreeValue.exit, %bb.g
  %.sroa.021.0 = phi i64 [ %.sroa.07.1.i33, %bb.g ], [ %i.as, %JS_FreeValue.exit ], [ 0, %.loopexit ], [ 0, %bb.s ], [ 0, %bb.t ]
  %.sroa.423.0 = phi i64 [ %.sroa.423.0.extract.shift24, %bb.g ], [ %.sroa.423.0.extract.shift, %JS_FreeValue.exit ], [ 0, %.loopexit ], [ 0, %bb.s ], [ 0, %bb.t ]
  %.sroa.5.0 = phi i64 [ %.sroa.48.1.i34, %bb.g ], [ %i.at, %JS_FreeValue.exit ], [ 6, %.loopexit ], [ 6, %bb.s ], [ 6, %bb.t ]
  %.sroa.021.0.insert.ext = and i64 %.sroa.021.0, 4294967295
  %.sroa.021.0.insert.insert = or disjoint i64 %.sroa.423.0, %.sroa.021.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.021.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_bigint_valueOf(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 -9, label %bb.b
    i32 7, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = icmp ugt i32 %i.a, -10
  br i1 %i.b, label %bb.c, label %js_thisBigIntValue.exit

bb.c:                                             ; preds = %bb.b
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !191
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !191
  br label %js_thisBigIntValue.exit

bb.d:                                             ; preds = %bb.a
  %i.g = and i64 %2, 4294967295
  %i.h = icmp eq i64 %i.g, 4294967295
  br i1 %i.h, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.i = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %i.k = load i16, ptr %i.j, align 2, !tbaa !276
  %i.l = icmp eq i16 %i.k, 35
  br i1 %i.l, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  switch i32 %i.o, label %.thread.i [
    i32 -9, label %bb.g
    i32 7, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = icmp ugt i32 %i.o, -10
  br i1 %i.r, label %bb.h, label %js_thisBigIntValue.exit

bb.h:                                             ; preds = %bb.g
  %i.s = inttoptr i64 %i.q to ptr
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !191
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !191
  br label %js_thisBigIntValue.exit

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %i.w = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.644) ; 0 uses
  br label %js_thisBigIntValue.exit

js_thisBigIntValue.exit:                          ; preds = %bb.b, %bb.c, %bb.g, %bb.h, %.thread.i
  %.sroa.07.1.i = phi i64 [ %1, %bb.c ], [ 0, %.thread.i ], [ %1, %bb.b ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  %.sroa.48.1.i = phi i64 [ %2, %bb.c ], [ 6, %.thread.i ], [ %2, %bb.b ], [ %i.n, %bb.h ], [ %i.n, %bb.g ]
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.07.1.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.48.1.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { i64, i64 } @js_function_proto(ptr nofree readnone captures(none) %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  ret { i64, i64 } { i64 0, i64 3 }
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_error_toString(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.118), !inline_history !42 ; 0 uses
  br label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 58, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 3 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 3 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  %trunc = trunc i64 %i.f to i32                  ; 2 uses
  switch i32 %trunc, label %bb.f [
    i32 3, label %bb.d
    i32 -7, label %JS_ToStringFree.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !232
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !297  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1280
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !299  ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.mask.i.i = and i64 %i.m, -4611686018427387904
  %i.n = icmp ne i64 %.mask.i.i, 4611686018427387904
  %i.o = and i64 %i.m, 4294967295
  %or.cond.i.not.i = icmp eq i64 %i.o, 2147483648
  %or.cond.i = and i1 %i.n, %or.cond.i.not.i
  br i1 %or.cond.i, label %bb.e, label %JS_AtomToString.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !299
  br label %JS_AtomToString.exit

JS_AtomToString.exit:                             ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.l, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.r = ptrtoint ptr %.0.i.i to i64
  %i.s = getelementptr inbounds i8, ptr %.0.i.i, i64 -4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !191
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !191
  %.fca.0.insert.i.i.i = insertvalue { i64, i64 } poison, i64 %i.r, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i, i64 -7, 1
  br label %JS_ToStringFree.exit

bb.f:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.e, i64 %i.f, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !232
  %i.y = icmp ugt i32 %trunc, -10
  br i1 %i.y, label %bb.g, label %JS_ToStringFree.exit

bb.g:                                             ; preds = %bb.f
  %i.z = inttoptr i64 %i.e to ptr
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !191 ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !191
  %i.ad = icmp slt i32 %i.ab, 2
  br i1 %i.ad, label %bb.h, label %JS_ToStringFree.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.x, i64 %i.e, i64 %i.f) #51, !inline_history !666
  br label %JS_ToStringFree.exit

JS_ToStringFree.exit:                             ; preds = %bb.c, %bb.h, %bb.g, %bb.f, %JS_AtomToString.exit
  %.pn = phi { i64, i64 } [ %.fca.1.insert.i.i.i, %JS_AtomToString.exit ], [ %i.v, %bb.h ], [ %i.v, %bb.f ], [ %i.v, %bb.g ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.13.0 = extractvalue { i64, i64 } %.pn, 1 ; 6 uses
  %.sroa.022.0 = extractvalue { i64, i64 } %.pn, 0 ; 6 uses
  %i.ae = and i64 %.sroa.13.0, 4294967295         ; 2 uses
  %i.af = icmp eq i64 %i.ae, 6
  br i1 %i.af, label %JS_FreeValue.exit, label %bb.i

bb.i:                                             ; preds = %JS_ToStringFree.exit
  %i.ag = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 52, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 3 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0      ; 3 uses
  %i.ai = extractvalue { i64, i64 } %i.ag, 1      ; 3 uses
  %trunc62 = trunc i64 %i.ai to i32               ; 2 uses
  switch i32 %trunc62, label %bb.k [
    i32 3, label %bb.j
    i32 -7, label %JS_ToStringFree.exit60
  ]

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !232
  %i.al = getelementptr i8, ptr %i.ak, i64 1104
  %.val = load ptr, ptr %i.al, align 8, !tbaa !297
  %i.am = getelementptr i8, ptr %.val, i64 384
  %.val.val = load ptr, ptr %i.am, align 8, !tbaa !299 ; 2 uses
  %i.an = ptrtoint ptr %.val.val to i64
  %i.ao = getelementptr inbounds i8, ptr %.val.val, i64 -4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !191
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !191
  %.fca.0.insert.i.i.i57 = insertvalue { i64, i64 } poison, i64 %i.an, 0
  %.fca.1.insert.i.i.i58 = insertvalue { i64, i64 } %.fca.0.insert.i.i.i57, i64 -7, 1
  br label %JS_ToStringFree.exit60

bb.k:                                             ; preds = %bb.i
  %i.ar = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.ah, i64 %i.ai, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !232
  %i.au = icmp ugt i32 %trunc62, -10
  br i1 %i.au, label %bb.l, label %JS_ToStringFree.exit60

bb.l:                                             ; preds = %bb.k
  %i.av = inttoptr i64 %i.ah to ptr
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !191 ; 2 uses
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !191
  %i.az = icmp slt i32 %i.ax, 2
  br i1 %i.az, label %bb.m, label %JS_ToStringFree.exit60

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @js_free_value_rt(ptr noundef %i.at, i64 %i.ah, i64 %i.ai) #51, !inline_history !666
  br label %JS_ToStringFree.exit60

JS_ToStringFree.exit60:                           ; preds = %bb.i, %bb.m, %bb.l, %bb.k, %bb.j
  %.pn55 = phi { i64, i64 } [ %.fca.1.insert.i.i.i58, %bb.j ], [ %i.ar, %bb.m ], [ %i.ar, %bb.k ], [ %i.ar, %bb.l ], [ %i.ag, %bb.i ] ; 2 uses
  %.sroa.10.0 = extractvalue { i64, i64 } %.pn55, 1 ; 2 uses
  %.sroa.013.0 = extractvalue { i64, i64 } %.pn55, 0 ; 2 uses
  %i.ba = and i64 %.sroa.10.0, 4294967295         ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 6
  br i1 %i.bb, label %bb.n, label %bb.q

bb.n:                                             ; preds = %JS_ToStringFree.exit60
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !232
  %i.be = trunc i64 %.sroa.13.0 to i32
  %i.bf = icmp ugt i32 %i.be, -10
  br i1 %i.bf, label %bb.o, label %JS_FreeValue.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = inttoptr i64 %.sroa.022.0 to ptr
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !191 ; 2 uses
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !191
  %i.bk = icmp slt i32 %i.bi, 2
  br i1 %i.bk, label %bb.p, label %JS_FreeValue.exit

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bd, i64 %.sroa.022.0, i64 %.sroa.13.0), !inline_history !291
  br label %JS_FreeValue.exit

bb.q:                                             ; preds = %JS_ToStringFree.exit60
  %i.bl = icmp eq i64 %i.ae, 4294967289
  br i1 %i.bl, label %JS_IsEmptyString.exit, label %JS_IsEmptyString.exit.thread

JS_IsEmptyString.exit:                            ; preds = %bb.q
  %i.bm = inttoptr i64 %.sroa.022.0 to ptr
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 2147483647
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.r, label %JS_IsEmptyString.exit.thread

JS_IsEmptyString.exit.thread:                     ; preds = %bb.q, %JS_IsEmptyString.exit
  %i.bq = icmp eq i64 %i.ba, 4294967289
  br i1 %i.bq, label %JS_IsEmptyString.exit61, label %JS_IsEmptyString.exit61.thread

JS_IsEmptyString.exit61:                          ; preds = %JS_IsEmptyString.exit.thread
  %i.br = inttoptr i64 %.sroa.013.0 to ptr
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = and i64 %i.bs, 2147483647
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %JS_IsEmptyString.exit61.thread

JS_IsEmptyString.exit61.thread:                   ; preds = %JS_IsEmptyString.exit.thread, %JS_IsEmptyString.exit61
  %i.bv = tail call fastcc { i64, i64 } @JS_ConcatString3(ptr noundef %0, ptr noundef nonnull @.str.189, i64 %.sroa.022.0, i64 %.sroa.13.0, ptr noundef nonnull @.str.650) ; 2 uses
  %i.bw = extractvalue { i64, i64 } %i.bv, 0
  %i.bx = extractvalue { i64, i64 } %i.bv, 1
  br label %bb.r

bb.r:                                             ; preds = %JS_IsEmptyString.exit61.thread, %JS_IsEmptyString.exit61, %JS_IsEmptyString.exit
  %.sroa.022.1 = phi i64 [ %.sroa.022.0, %JS_IsEmptyString.exit ], [ %.sroa.022.0, %JS_IsEmptyString.exit61 ], [ %i.bw, %JS_IsEmptyString.exit61.thread ]
  %.sroa.13.1 = phi i64 [ %.sroa.13.0, %JS_IsEmptyString.exit ], [ %.sroa.13.0, %JS_IsEmptyString.exit61 ], [ %i.bx, %JS_IsEmptyString.exit61.thread ]
  %i.by = tail call fastcc { i64, i64 } @JS_ConcatString(ptr noundef %0, i64 %.sroa.022.1, i64 %.sroa.13.1, i64 %.sroa.013.0, i64 %.sroa.10.0) ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.by, 0
  %i.ca = extractvalue { i64, i64 } %i.by, 1
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.p, %bb.o, %bb.n, %JS_ToStringFree.exit, %bb.r, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ 0, %JS_ToStringFree.exit ], [ %i.bz, %bb.r ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ]
  %.sroa.7.0 = phi i64 [ 6, %bb.b ], [ 6, %JS_ToStringFree.exit ], [ %i.ca, %bb.r ], [ 6, %bb.n ], [ 6, %bb.o ], [ 6, %bb.p ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.5.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i64, i64 } %.fca.1.insert
end_hunk_14
