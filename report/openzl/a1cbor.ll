Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/a1cbor?download=true
inline.NumInlined: 252
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@A1C_Item_tag:bb.a
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define ptr @A1C_Item_bytes(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %A1C_Arena_calloc.exit.thread, label %A1C_Arena_calloc.exit

A1C_Arena_calloc.exit:                            ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = tail call ptr %i.b(ptr noundef %i.d, i64 noundef %1) #16, !inline_history !1 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %A1C_Arena_calloc.exit.thread

A1C_Arena_calloc.exit.thread:                     ; preds = %bb.a, %A1C_Arena_calloc.exit
  %.0.i9 = phi ptr [ %i.e, %A1C_Arena_calloc.exit ], [ @.str.17, %bb.a ] ; 2 uses
  store i32 2, ptr %0, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i9, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.h, align 8, !tbaa !31
  br label %bb.b

bb.b:                                             ; preds = %A1C_Arena_calloc.exit, %A1C_Arena_calloc.exit.thread
  %.0 = phi ptr [ %.0.i9, %A1C_Arena_calloc.exit.thread ], [ null, %A1C_Arena_calloc.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @A1C_Item_bytes_ref(ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 24)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  store i32 2, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @A1C_Item_bytes_copy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %A1C_Item_bytes.exit.thread14, label %A1C_Arena_calloc.exit.i

A1C_Item_bytes.exit.thread14:                     ; preds = %bb.a
  store i32 2, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.17, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !31
  br label %A1C_Item_bytes.exit.thread

A1C_Arena_calloc.exit.i:                          ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call ptr %i.d(ptr noundef %i.f, i64 noundef %2) #16, !inline_history !102 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %A1C_Item_bytes.exit.thread, label %A1C_Item_bytes.exit

A1C_Item_bytes.exit:                              ; preds = %A1C_Arena_calloc.exit.i
  store i32 2, ptr %0, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.j, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  br label %A1C_Item_bytes.exit.thread

A1C_Item_bytes.exit.thread:                       ; preds = %A1C_Arena_calloc.exit.i, %A1C_Item_bytes.exit.thread14, %A1C_Item_bytes.exit
  %i.k = phi i1 [ true, %A1C_Item_bytes.exit.thread14 ], [ true, %A1C_Item_bytes.exit ], [ false, %A1C_Arena_calloc.exit.i ]
  ret i1 %i.k
}

; Function Attrs: nounwind uwtable
define ptr @A1C_Item_string(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %A1C_Arena_calloc.exit.thread, label %A1C_Arena_calloc.exit

A1C_Arena_calloc.exit:                            ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = tail call ptr %i.b(ptr noundef %i.d, i64 noundef %1) #16, !inline_history !1 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %A1C_Arena_calloc.exit.thread

A1C_Arena_calloc.exit.thread:                     ; preds = %bb.a, %A1C_Arena_calloc.exit
  %.0.i9 = phi ptr [ %i.e, %A1C_Arena_calloc.exit ], [ @.str.17, %bb.a ] ; 2 uses
  store i32 3, ptr %0, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i9, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.h, align 8, !tbaa !31
  br label %bb.b

bb.b:                                             ; preds = %A1C_Arena_calloc.exit, %A1C_Arena_calloc.exit.thread
  %.0 = phi ptr [ %.0.i9, %A1C_Arena_calloc.exit.thread ], [ null, %A1C_Arena_calloc.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @A1C_Item_string_copy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %A1C_Item_string.exit.thread14, label %A1C_Arena_calloc.exit.i

A1C_Item_string.exit.thread14:                    ; preds = %bb.a
  store i32 3, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.17, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !31
  br label %A1C_Item_string.exit.thread

A1C_Arena_calloc.exit.i:                          ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call ptr %i.d(ptr noundef %i.f, i64 noundef %2) #16, !inline_history !103 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %A1C_Item_string.exit.thread, label %A1C_Item_string.exit

A1C_Item_string.exit:                             ; preds = %A1C_Arena_calloc.exit.i
  store i32 3, ptr %0, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.j, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %1, i64 %2, i1 false)
  br label %A1C_Item_string.exit.thread

A1C_Item_string.exit.thread:                      ; preds = %A1C_Arena_calloc.exit.i, %A1C_Item_string.exit.thread14, %A1C_Item_string.exit
  %i.k = phi i1 [ true, %A1C_Item_string.exit.thread14 ], [ true, %A1C_Item_string.exit ], [ false, %A1C_Arena_calloc.exit.i ]
  ret i1 %i.k
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @A1C_Item_string_cstr(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 4 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %A1C_Item_string.exit.thread14.i, label %A1C_Arena_calloc.exit.i.i

A1C_Item_string.exit.thread14.i:                  ; preds = %bb.a
  store i32 3, ptr %0, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.17, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !31
  br label %A1C_Item_string_copy.exit

A1C_Arena_calloc.exit.i.i:                        ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = tail call ptr %i.e(ptr noundef %i.g, i64 noundef %i.a) #16, !inline_history !2 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %A1C_Item_string_copy.exit, label %A1C_Item_string.exit.i

A1C_Item_string.exit.i:                           ; preds = %A1C_Arena_calloc.exit.i.i
  store i32 3, ptr %0, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.k, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 %i.a, i1 false)
  br label %A1C_Item_string_copy.exit

A1C_Item_string_copy.exit:                        ; preds = %A1C_Item_string.exit.thread14.i, %A1C_Arena_calloc.exit.i.i, %A1C_Item_string.exit.i
  %i.l = phi i1 [ true, %A1C_Item_string.exit.thread14.i ], [ true, %A1C_Item_string.exit.i ], [ false, %A1C_Arena_calloc.exit.i.i ]
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @A1C_Item_string_refCStr(ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 24)) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  store i32 3, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.c, align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @A1C_Item_map(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %1, 288230376151711743
  %i.b = shl nuw i64 %1, 6
  br i1 %i.a, label %A1C_Arena_calloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %A1C_Arena_calloc.exit.thread21, label %A1C_Arena_calloc.exit

A1C_Arena_calloc.exit:                            ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call ptr %i.d(ptr noundef %i.f, i64 noundef %i.b) #16, !inline_history !1 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %A1C_Arena_calloc.exit.thread, label %A1C_Arena_calloc.exit.thread21

A1C_Arena_calloc.exit.thread21:                   ; preds = %bb.b, %A1C_Arena_calloc.exit
  %.0.i23 = phi ptr [ %i.g, %A1C_Arena_calloc.exit ], [ @.str.17, %bb.b ] ; 9 uses
  store i32 5, ptr %0, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i23, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.j, align 8, !tbaa !31
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %A1C_Arena_calloc.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %A1C_Arena_calloc.exit.thread21
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %3 = icmp ult i64 %1, 4
  br i1 %3, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, 288230376151711740
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.024 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %.0.i23, i64 %.024 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %0, ptr %i.l, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %0, ptr %i.m, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %.0.i23, i64 %.024 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store ptr %0, ptr %i.o, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store ptr %0, ptr %i.p, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %.0.i23, i64 %.024 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  store ptr %0, ptr %i.r, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  store ptr %0, ptr %i.s, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %.0.i23, i64 %.024 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  store ptr %0, ptr %i.u, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  store ptr %0, ptr %i.v, align 8, !tbaa !44
  %i.w = add nuw nsw i64 %.024, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3

A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa:  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %A1C_Arena_calloc.exit.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa, %.lr.ph.preheader
  %.024.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.024.epil = phi i64 [ %i.aa, %.lr.ph.epil ], [ %.024.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %.0.i23, i64 %.024.epil ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %0, ptr %i.y, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr %0, ptr %i.z, align 8, !tbaa !44
  %i.aa = add nuw nsw i64 %.024.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %A1C_Arena_calloc.exit.thread, label %.lr.ph.epil, !llvm.loop !104

A1C_Arena_calloc.exit.thread:                     ; preds = %A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa, %.lr.ph.epil, %A1C_Arena_calloc.exit.thread21, %bb.a, %A1C_Arena_calloc.exit
  %.018 = phi ptr [ null, %A1C_Arena_calloc.exit ], [ null, %bb.a ], [ %.0.i23, %A1C_Arena_calloc.exit.thread21 ], [ %.0.i23, %.lr.ph.epil ], [ %.0.i23, %A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa ]
  ret ptr %.018
}

; Function Attrs: nounwind uwtable
define void @A1C_Item_map_builder(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.A1C_MapBuilder) align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 288230376151711743
  %i.b = shl nuw i64 %2, 6
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %A1C_Arena_calloc.exit.thread21.i.thread, label %A1C_Arena_calloc.exit.i

A1C_Arena_calloc.exit.thread21.i.thread:          ; preds = %bb.b
  store i32 5, ptr %1, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.17, ptr %i.d, align 8, !tbaa !31
  br label %A1C_Item_map.exit

A1C_Arena_calloc.exit.i:                          ; preds = %bb.b
  %i.e = load ptr, ptr %3, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = tail call ptr %i.e(ptr noundef %i.g, i64 noundef %i.b) #16, !inline_history !4 ; 9 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %A1C_Arena_calloc.exit.thread21.i

A1C_Arena_calloc.exit.thread21.i:                 ; preds = %A1C_Arena_calloc.exit.i
  store i32 5, ptr %1, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !31
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.k = icmp ult i64 %2, 4
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %A1C_Arena_calloc.exit.thread21.i.new

A1C_Arena_calloc.exit.thread21.i.new:             ; preds = %A1C_Arena_calloc.exit.thread21.i
  %unroll_iter = and i64 %2, 288230376151711740
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %A1C_Arena_calloc.exit.thread21.i.new
  %.024.i = phi i64 [ 0, %A1C_Arena_calloc.exit.thread21.i.new ], [ %i.x, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %A1C_Arena_calloc.exit.thread21.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.024.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %1, ptr %i.m, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %1, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.024.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store ptr %1, ptr %i.p, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store ptr %1, ptr %i.q, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.024.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store ptr %1, ptr %i.s, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  store ptr %1, ptr %i.t, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.024.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  store ptr %1, ptr %i.v, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  store ptr %1, ptr %i.w, align 8, !tbaa !44
  %i.x = add nuw nsw i64 %.024.i, 4               ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %A1C_Item_map.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !3

bb.c:                                             ; preds = %A1C_Arena_calloc.exit.i, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

A1C_Item_map.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %A1C_Item_map.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %A1C_Item_map.exit.loopexit.unr-lcssa, %A1C_Arena_calloc.exit.thread21.i
  %.024.i.epil.init = phi i64 [ 0, %A1C_Arena_calloc.exit.thread21.i ], [ %i.x, %A1C_Item_map.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.024.i.epil = phi i64 [ %i.ab, %.lr.ph.i.epil ], [ %.024.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.024.i.epil ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %1, ptr %i.z, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store ptr %1, ptr %i.aa, align 8, !tbaa !44
  %i.ab = add nuw nsw i64 %.024.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %A1C_Item_map.exit, label %.lr.ph.i.epil, !llvm.loop !105

A1C_Item_map.exit:                                ; preds = %A1C_Item_map.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %A1C_Arena_calloc.exit.thread21.i.thread
  %.018.i = phi ptr [ @.str.17, %A1C_Arena_calloc.exit.thread21.i.thread ], [ %i.h, %.lr.ph.i.epil ], [ %i.h, %A1C_Item_map.exit.loopexit.unr-lcssa ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ad, align 8, !tbaa !31
  store ptr %i.ac, ptr %0, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.018.i, ptr %i.ae, align 8, !tbaa !48
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.af, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %A1C_Item_map.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @A1C_MapBuilder_add(ptr nofree noundef readonly byval(%struct.A1C_MapBuilder) align 8 captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !35   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.d
  %i.j = add nuw i64 %i.d, 1
  store i64 %i.j, ptr %i.c, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @A1C_Item_array(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %1, 576460752303423487
  %i.b = shl nuw i64 %1, 5
  br i1 %i.a, label %A1C_Arena_calloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %A1C_Arena_calloc.exit.thread18, label %A1C_Arena_calloc.exit

A1C_Arena_calloc.exit:                            ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call ptr %i.d(ptr noundef %i.f, i64 noundef %i.b) #16, !inline_history !1 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %A1C_Arena_calloc.exit.thread, label %A1C_Arena_calloc.exit.thread18

A1C_Arena_calloc.exit.thread18:                   ; preds = %bb.b, %A1C_Arena_calloc.exit
  %.0.i20 = phi ptr [ %i.g, %A1C_Arena_calloc.exit ], [ @.str.17, %bb.b ] ; 13 uses
  store i32 4, ptr %0, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i20, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.j, align 8, !tbaa !31
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %A1C_Arena_calloc.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %A1C_Arena_calloc.exit.thread18
  %xtraiter = and i64 %1, 7                       ; 3 uses
  %3 = icmp ult i64 %1, 8
  br i1 %3, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %1, 576460752303423480
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.021 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.aa, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.0.i20, i64 %.021
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %0, ptr %i.l, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.0.i20, i64 %.021
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %0, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.0.i20, i64 %.021
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store ptr %0, ptr %i.p, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %.0.i20, i64 %.021
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  store ptr %0, ptr %i.r, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.0.i20, i64 %.021
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  store ptr %0, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.0.i20, i64 %.021
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  store ptr %0, ptr %i.v, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %.0.i20, i64 %.021
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  store ptr %0, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %.0.i20, i64 %.021
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 248
  store ptr %0, ptr %i.z, align 8, !tbaa !41
  %i.aa = add nuw nsw i64 %.021, 8                ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !5

A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa:  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %A1C_Arena_calloc.exit.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa, %.lr.ph.preheader
  %.021.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aa, %A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.021.epil = phi i64 [ %i.ad, %.lr.ph.epil ], [ %.021.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.0.i20, i64 %.021.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %0, ptr %i.ac, align 8, !tbaa !41
  %i.ad = add nuw nsw i64 %.021.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %A1C_Arena_calloc.exit.thread, label %.lr.ph.epil, !llvm.loop !106

A1C_Arena_calloc.exit.thread:                     ; preds = %A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa, %.lr.ph.epil, %A1C_Arena_calloc.exit.thread18, %bb.a, %A1C_Arena_calloc.exit
  %.015 = phi ptr [ null, %A1C_Arena_calloc.exit ], [ null, %bb.a ], [ %.0.i20, %A1C_Arena_calloc.exit.thread18 ], [ %.0.i20, %.lr.ph.epil ], [ %.0.i20, %A1C_Arena_calloc.exit.thread.loopexit.unr-lcssa ]
  ret ptr %.015
}

; Function Attrs: nounwind uwtable
define void @A1C_Item_array_builder(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.A1C_ArrayBuilder) align 8 captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %2, 576460752303423487
  %i.b = shl nuw i64 %2, 5
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %A1C_Arena_calloc.exit.thread18.i.thread, label %A1C_Arena_calloc.exit.i

A1C_Arena_calloc.exit.thread18.i.thread:          ; preds = %bb.b
  store i32 4, ptr %1, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.17, ptr %i.d, align 8, !tbaa !31
  br label %A1C_Item_array.exit

A1C_Arena_calloc.exit.i:                          ; preds = %bb.b
  %i.e = load ptr, ptr %3, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = tail call ptr %i.e(ptr noundef %i.g, i64 noundef %i.b) #16, !inline_history !6 ; 13 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %A1C_Arena_calloc.exit.thread18.i

A1C_Arena_calloc.exit.thread18.i:                 ; preds = %A1C_Arena_calloc.exit.i
  store i32 4, ptr %1, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !31
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.k = icmp ult i64 %2, 8
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %A1C_Arena_calloc.exit.thread18.i.new

A1C_Arena_calloc.exit.thread18.i.new:             ; preds = %A1C_Arena_calloc.exit.thread18.i
  %unroll_iter = and i64 %2, 576460752303423480
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %A1C_Arena_calloc.exit.thread18.i.new
  %.021.i = phi i64 [ 0, %A1C_Arena_calloc.exit.thread18.i.new ], [ %i.ab, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %A1C_Arena_calloc.exit.thread18.i.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.021.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %1, ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.021.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %1, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.021.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr %1, ptr %i.q, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.021.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store ptr %1, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.021.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  store ptr %1, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.021.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  store ptr %1, ptr %i.w, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.021.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store ptr %1, ptr %i.y, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.021.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 248
  store ptr %1, ptr %i.aa, align 8, !tbaa !41
  %i.ab = add nuw nsw i64 %.021.i, 8              ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %A1C_Item_array.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !5

bb.c:                                             ; preds = %A1C_Arena_calloc.exit.i, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

A1C_Item_array.exit.loopexit.unr-lcssa:           ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %A1C_Item_array.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %A1C_Item_array.exit.loopexit.unr-lcssa, %A1C_Arena_calloc.exit.thread18.i
  %.021.i.epil.init = phi i64 [ 0, %A1C_Arena_calloc.exit.thread18.i ], [ %i.ab, %A1C_Item_array.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.021.i.epil = phi i64 [ %i.ae, %.lr.ph.i.epil ], [ %.021.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.021.i.epil
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %1, ptr %i.ad, align 8, !tbaa !41
  %i.ae = add nuw nsw i64 %.021.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %A1C_Item_array.exit, label %.lr.ph.i.epil, !llvm.loop !107

A1C_Item_array.exit:                              ; preds = %A1C_Item_array.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %A1C_Arena_calloc.exit.thread18.i.thread
  %.015.i = phi ptr [ @.str.17, %A1C_Arena_calloc.exit.thread18.i.thread ], [ %i.h, %.lr.ph.i.epil ], [ %i.h, %A1C_Item_array.exit.loopexit.unr-lcssa ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ag, align 8, !tbaa !31
  store ptr %i.af, ptr %0, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.015.i, ptr %i.ah, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.ai, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %A1C_Item_array.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @A1C_ArrayBuilder_add(ptr nofree noundef readonly byval(%struct.A1C_ArrayBuilder) align 8 captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !38   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.d
  %i.j = add nuw i64 %i.d, 1
  store i64 %i.j, ptr %i.c, align 8, !tbaa !38
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.i, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @A1C_Item_deepcopy(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %common.ret122, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = tail call ptr %i.b(ptr noundef %i.d, i64 noundef 32) #16, !inline_history !108 ; 79 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %common.ret122, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 8, !tbaa !30
  switch i32 %i.g, label %common.ret122 [
    i32 1, label %bb.d
    i32 8, label %bb.e
    i32 9, label %bb.f
    i32 10, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 0, label %bb.j
    i32 11, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.n
    i32 5, label %bb.p
    i32 12, label %bb.r
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31
  store i32 1, ptr %i.e, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !31
  br label %common.ret122

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !31
  store i32 8, ptr %i.e, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %i.l, ptr %i.m, align 8, !tbaa !31
  br label %common.ret122

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load float, ptr %i.n, align 8, !tbaa !31
  store i32 9, ptr %i.e, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store float %i.o, ptr %i.p, align 8, !tbaa !31
  br label %common.ret122

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load double, ptr %i.q, align 8, !tbaa !31
end_hunk_0
