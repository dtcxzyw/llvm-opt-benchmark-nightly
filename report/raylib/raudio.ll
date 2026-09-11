Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@ma_wcscpy_s:bb.a
  store i32 0, ptr %0, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %.critedge23, %.critedge, %bb.d
  %.018 = phi i32 [ 34, %.critedge23 ], [ 22, %bb.a ], [ 22, %bb.d ], [ 0, %.critedge ], [ 34, %bb.b ]
  ret i32 %.018
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 35) i32 @ma_strncpy_s(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq i64 %3, -1
  %.not = icmp ult i64 %3, %1
  %i.e = add i64 %1, -1
  %.027 = select i1 %.not, i64 %3, i64 %i.e       ; 3 uses
  %.not40 = icmp eq i64 %.027, 0
  br i1 %.not40, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.037 = phi i64 [ %i.i, %bb.f ], [ 0, %bb.e ]   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %.037
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %.not33 = icmp eq i8 %i.g, 0
  br i1 %.not33, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.037
  store i8 %i.g, ptr %i.h, align 1
  %i.i = add nuw i64 %.037, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %.027
  br i1 %exitcond.not, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph, %bb.f, %bb.e
  %.0.lcssa = phi i64 [ 0, %bb.e ], [ %.027, %bb.f ], [ %.037, %.lr.ph ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.0.lcssa
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  %i.m = icmp eq i64 %.0.lcssa, %3
  %or.cond = or i1 %i.d, %i.m
  %or.cond36 = or i1 %or.cond, %i.l
  br i1 %or.cond36, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  store i8 0, ptr %i.n, align 1
  br label %bb.i

bb.h:                                             ; preds = %.critedge
  store i8 0, ptr %0, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h, %bb.g, %bb.d
  %.028 = phi i32 [ 34, %bb.h ], [ 22, %bb.a ], [ 22, %bb.d ], [ 0, %bb.g ], [ 34, %bb.b ]
  ret i32 %.028
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 35) i32 @ma_strcat_s(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.d
  %.02035 = phi i64 [ %i.f, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.02134 = phi ptr [ %i.e, %bb.d ], [ %0, %bb.c ] ; 3 uses
  %i.d = load i8, ptr %.02134, align 1
  %.not27 = icmp eq i8 %i.d, 0
  br i1 %.not27, label %.critedge.preheader, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %.02134, i64 1
  %i.f = add i64 %.02035, -1                      ; 2 uses
  %cond = icmp eq i64 %i.f, 0
  br i1 %cond, label %.loopexit, label %.preheader

.critedge.preheader:                              ; preds = %.preheader, %.critedge
  %.038 = phi ptr [ %i.h, %.critedge ], [ %2, %.preheader ] ; 2 uses
  %.137 = phi i64 [ %i.j, %.critedge ], [ %.02035, %.preheader ]
  %.12236 = phi ptr [ %i.i, %.critedge ], [ %.02134, %.preheader ] ; 3 uses
  %i.g = load i8, ptr %.038, align 1              ; 2 uses
  %.not29 = icmp eq i8 %i.g, 0
  br i1 %.not29, label %.loopexit.sink.split, label %.critedge

.critedge:                                        ; preds = %.critedge.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.038, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %.12236, i64 1
  store i8 %i.g, ptr %.12236, align 1
  %i.j = add i64 %.137, -1                        ; 2 uses
  %.not28 = icmp eq i64 %i.j, 0
  br i1 %.not28, label %.loopexit.sink.split, label %.critedge.preheader

.loopexit.sink.split:                             ; preds = %.critedge, %.critedge.preheader, %bb.c
  %.12236.lcssa.sink = phi ptr [ %0, %bb.c ], [ %.12236, %.critedge.preheader ], [ %0, %.critedge ]
  %.023.ph = phi i32 [ 22, %bb.c ], [ 0, %.critedge.preheader ], [ 34, %.critedge ]
  store i8 0, ptr %.12236.lcssa.sink, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.sink.split, %bb.b, %bb.a
  %.023 = phi i32 [ 34, %bb.b ], [ 22, %bb.a ], [ %.023.ph, %.loopexit.sink.split ], [ 22, %bb.d ]
  ret i32 %.023
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 35) i32 @ma_strncat_s(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.d
  %.02541 = phi i64 [ %i.e, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %.02740 = phi ptr [ %i.f, %bb.d ], [ %0, %bb.c ] ; 3 uses
  %i.d = load i8, ptr %.02740, align 1
  %.not34 = icmp eq i8 %i.d, 0
  %i.e = add i64 %.02541, -1                      ; 3 uses
  br i1 %.not34, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %.02740, i64 1
  %cond = icmp eq i64 %i.e, 0
  br i1 %cond, label %.loopexit, label %.preheader

.critedge:                                        ; preds = %.preheader
  %i.g = icmp eq i64 %3, -1
  %spec.select = select i1 %i.g, i64 %i.e, i64 %3
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.f
  %.145 = phi i64 [ %spec.select, %.critedge ], [ %i.n, %bb.f ] ; 2 uses
  %.02444 = phi ptr [ %2, %.critedge ], [ %i.k, %bb.f ] ; 2 uses
  %.12643 = phi i64 [ %.02541, %.critedge ], [ %i.m, %bb.f ]
  %.12842 = phi ptr [ %.02740, %.critedge ], [ %i.l, %bb.f ] ; 3 uses
  %i.h = load i8, ptr %.02444, align 1            ; 2 uses
  %i.i = icmp ne i8 %i.h, 0
  %i.j = icmp ne i64 %.145, 0
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.02444, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %.12842, i64 1
  store i8 %i.h, ptr %.12842, align 1
  %i.m = add i64 %.12643, -1                      ; 2 uses
  %i.n = add i64 %.145, -1
  %.not35 = icmp eq i64 %i.m, 0
  br i1 %.not35, label %.loopexit.sink.split, label %bb.e

.loopexit.sink.split:                             ; preds = %bb.f, %bb.e
  %.12842.lcssa.sink = phi ptr [ %.12842, %bb.e ], [ %0, %bb.f ]
  %.029.ph = phi i32 [ 0, %bb.e ], [ 34, %bb.f ]
  store i8 0, ptr %.12842.lcssa.sink, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.sink.split, %bb.c, %bb.b, %bb.a
  %.029 = phi i32 [ %.029.ph, %.loopexit.sink.split ], [ 22, %bb.a ], [ 34, %bb.b ], [ 22, %bb.c ], [ 22, %bb.d ]
  ret i32 %.029
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 23) i32 @ma_itoa_s(i32 noundef %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %3, -37
  %or.cond3 = icmp ult i32 %i.c, -35
  br i1 %or.cond3, label %.loopexit.sink.split, label %4

4:                                                ; preds = %bb.b
  %.046 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %4
  %.049 = phi i64 [ %2, %4 ], [ %5, %bb.c ]       ; 2 uses
  %.147 = phi i32 [ %.046, %4 ], [ %6, %bb.c ]    ; 3 uses
  %.045 = phi ptr [ %1, %4 ], [ %i.g, %bb.c ]     ; 3 uses
  %i.d = urem i32 %.147, %3                       ; 2 uses
  %i.e = icmp samesign ugt i32 %i.d, 9
  %i.f = trunc nuw nsw i32 %i.d to i8
  %storemerge.v = select i1 %i.e, i8 87, i8 48
  %storemerge = add nuw nsw i8 %storemerge.v, %i.f
  store i8 %storemerge, ptr %.045, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %.045, i64 1 ; 3 uses
  %5 = add i64 %.049, -1                          ; 3 uses
  %6 = udiv i32 %.147, %3
  %7 = icmp ne i64 %5, 0
  %8 = icmp samesign ule i32 %3, %.147
  %9 = and i1 %7, %8
  br i1 %9, label %bb.c, label %10

10:                                               ; preds = %bb.c
  %11 = icmp eq i64 %5, 0
  br i1 %11, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %10
  %i.h = icmp slt i32 %0, 0
  %i.i = icmp eq i32 %3, 10
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.045, i64 2
  store i8 45, ptr %i.g, align 1
  %i.l = icmp eq i64 %.049, 2
  br i1 %i.l, label %.loopexit.sink.split, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %.163 = phi ptr [ %i.k, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  store i8 0, ptr %.163, align 1
  %.265 = getelementptr inbounds i8, ptr %.163, i64 -1 ; 2 uses
  %i.m = icmp ult ptr %1, %.265
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.thread, %.lr.ph
  %.267 = phi ptr [ %.2, %.lr.ph ], [ %.265, %.thread ] ; 3 uses
  %.04866 = phi ptr [ %i.p, %.lr.ph ], [ %1, %.thread ] ; 3 uses
  %i.n = load i8, ptr %.04866, align 1
  %i.o = load i8, ptr %.267, align 1
  store i8 %i.o, ptr %.04866, align 1
  store i8 %i.n, ptr %.267, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.04866, i64 1 ; 2 uses
  %.2 = getelementptr inbounds i8, ptr %.267, i64 -1 ; 2 uses
  %i.q = icmp ult ptr %i.p, %.2
  br i1 %i.q, label %.lr.ph, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.e, %10, %bb.b
  store i8 0, ptr %1, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %.thread, %bb.a
  %.0 = phi i32 [ 22, %bb.a ], [ 22, %.loopexit.sink.split ], [ 0, %.thread ], [ 0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 -255, 256) i32 @ma_strcmp(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = load i8, ptr %0, align 1                 ; 2 uses
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.f = phi i8 [ %i.j, %bb.d ], [ %i.d, %.preheader ] ; 2 uses
  %.017 = phi ptr [ %i.i, %bb.d ], [ %1, %.preheader ] ; 3 uses
  %.01116 = phi ptr [ %i.h, %bb.d ], [ %0, %.preheader ]
  %i.g = load i8, ptr %.017, align 1
  %.not = icmp eq i8 %i.f, %i.g
  br i1 %.not, label %bb.d, label %._crit_edge.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.01116, i64 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.017, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.h, align 1               ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.d
  %.0.lcssa.ph = phi ptr [ %i.i, %bb.d ], [ %.017, %.lr.ph ]
  %.lcssa.ph = phi i8 [ 0, %bb.d ], [ %i.f, %.lr.ph ]
  %i.l = zext i8 %.lcssa.ph to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0.lcssa = phi ptr [ %1, %.preheader ], [ %.0.lcssa.ph, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ 0, %.preheader ], [ %i.l, %._crit_edge.loopexit ]
  %i.m = load i8, ptr %.0.lcssa, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = sub nsw i32 %.lcssa, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge
  %.012 = phi i32 [ %i.o, %._crit_edge ], [ 0, %bb.a ], [ -1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.012
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 -65535, 65536) i32 @ma_wcscmp(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = load i32, ptr %0, align 4                ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.f = phi i32 [ %i.j, %bb.d ], [ %i.d, %.preheader ] ; 2 uses
  %.017 = phi ptr [ %i.i, %bb.d ], [ %1, %.preheader ] ; 3 uses
  %.01116 = phi ptr [ %i.h, %bb.d ], [ %0, %.preheader ]
  %i.g = load i32, ptr %.017, align 4
  %.not = icmp eq i32 %i.f, %i.g
  br i1 %.not, label %bb.d, label %._crit_edge.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.01116, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.017, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.h, align 4              ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.d
  %.ph = phi i32 [ 0, %bb.d ], [ %i.f, %.lr.ph ]
  %.0.lcssa.ph = phi ptr [ %i.i, %bb.d ], [ %.017, %.lr.ph ]
  %i.l = and i32 %.ph, 65535
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.m = phi i32 [ 0, %.preheader ], [ %i.l, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %1, %.preheader ], [ %.0.lcssa.ph, %._crit_edge.loopexit ]
  %i.n = load i16, ptr %.0.lcssa, align 2
  %i.o = zext i16 %i.n to i32
  %i.p = sub nsw i32 %i.m, %i.o
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge
  %.012 = phi i32 [ %i.p, %._crit_edge ], [ 0, %bb.a ], [ -1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.012
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 35) i32 @ma_strappend(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @ma_strncpy_s(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef -1) ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ma_strncat_s(ptr noundef %0, i64 noundef %1, ptr noundef %3, i64 noundef -1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i64 -2305843009213693952, 2305843009213693952) i64 @ma_wcslen(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %wcslen = tail call i64 @wcslen(ptr nonnull %0)
  %i.b = shl i64 %wcslen, 2
  %i.c = ashr exact i64 %i.b, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.preheader.preheader
  %.06 = phi i64 [ %i.c, %.preheader.preheader ], [ 0, %bb.a ]
  ret i64 %.06
}

; Function Attrs: noinline nounwind uwtable
define hidden ptr @ma_copy_string(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ma_malloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #73
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.e, null
  br i1 %.not8.i, label %ma_malloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %1, align 8
  %i.g = tail call ptr %i.e(i64 noundef %i.c, ptr noundef %i.f) #61, !inline_history !29
  br label %ma_malloc.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #74
  br label %ma_malloc.exit

ma_malloc.exit:                                   ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ] ; 3 uses
  %i.i = icmp eq ptr %.0.i, null
  br i1 %i.i, label %ma_malloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %ma_malloc.exit
  %i.j = tail call i32 @ma_strcpy_s(ptr noundef nonnull %.0.i, i64 noundef %i.c, ptr noundef nonnull %0) ; 0 uses
  br label %ma_malloc.exit.thread

ma_malloc.exit.thread:                            ; preds = %bb.c, %ma_malloc.exit, %bb.a, %bb.f
  %.0 = phi ptr [ %.0.i, %bb.f ], [ null, %bb.a ], [ null, %ma_malloc.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden ptr @ma_malloc(i64 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
end_hunk_0
