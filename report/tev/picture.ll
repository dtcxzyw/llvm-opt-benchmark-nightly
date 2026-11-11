Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/picture?download=true
inline.NumInlined: 17
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Picture already allocated!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -12, 1) i32 @dav1d_default_picture_alloc(ptr nofree noundef captures(none) initializes((40, 56)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22
  %i.d = icmp sgt i32 %i.c, 8
  %i.e = zext i1 %i.d to i32
  %i.f = load i32, ptr %i.a, align 8, !tbaa !23
  %i.g = add nsw i32 %i.f, 127
  %i.h = and i32 %i.g, -128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24
  %i.k = add nsw i32 %i.j, 127
  %i.l = and i32 %i.k, -128                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  %.not48 = icmp eq i32 %i.n, 0                   ; 4 uses
  %i.o = icmp eq i32 %i.n, 1
  %i.p = zext i1 %i.o to i32
  %i.q = icmp ne i32 %i.n, 3
  %i.r = shl i32 %i.h, %i.e                       ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = zext i1 %i.q to i64
  %i.u = ashr exact i64 %i.s, %i.t                ; 2 uses
  %2 = select i1 %.not48, i64 0, i64 %i.u         ; 2 uses
  %i.v = and i32 %i.r, 896
  %.not = icmp eq i32 %i.v, 0
  %i.w = or disjoint i64 %i.s, 64
  %spec.select = select i1 %.not, i64 %i.w, i64 %i.s ; 2 uses
  %i.x = and i64 %2, 960
  %i.y = icmp eq i64 %i.x, 0
  %i.z = or disjoint i64 %2, 64
  %i.aa = select i1 %i.y, i64 %i.z, i64 %i.u
  %.0 = select i1 %.not48, i64 0, i64 %i.aa       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %spec.select, ptr %i.ab, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.0, ptr %i.ac, align 8, !tbaa !26
  %i.ad = sext i32 %i.l to i64
  %i.ae = mul nsw i64 %spec.select, %i.ad         ; 2 uses
  %i.af = ashr exact i32 %i.l, %i.p
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %.0, %i.ag                  ; 2 uses
  %i.ai = shl i64 %i.ah, 1
  %i.aj = add i64 %i.ai, %i.ae
  %i.ak = or disjoint i64 %i.aj, 64
  %i.al = tail call ptr @dav1d_mem_pool_pop(ptr noundef %1, i64 noundef %i.ak) #10 ; 4 uses
  %.not47 = icmp eq ptr %i.al, null
  br i1 %.not47, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.al, ptr %i.am, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.al, ptr %i.an, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ae ; 2 uses
  %i.ap = select i1 %.not48, ptr null, ptr %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ah
  %i.as = select i1 %.not48, ptr null, ptr %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %i.at, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.045 = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.045
}

declare ptr @dav1d_mem_pool_pop(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dav1d_default_picture_release(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  tail call void @dav1d_mem_pool_push(ptr noundef %1, ptr noundef %i.b) #10
  ret void
}

declare void @dav1d_mem_pool_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @dav1d_picture_free_itut_t35(ptr nofree noundef readnone captures(none) %0, ptr noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !76
  tail call void @free(ptr noundef %i.c) #10
  tail call void @free(ptr noundef nonnull %1) #10
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.07
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.g) #10
  %i.h = add nuw i64 %.07, 1                      ; 2 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !75
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @dav1d_picture_copy_props(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @dav1d_data_props_copy(ptr noundef nonnull %i.a, ptr noundef %8) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.b) #10
  store ptr %2, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.c, align 8, !tbaa !31
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = atomicrmw add ptr %i.d, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.f) #10
  store ptr %4, ptr %i.f, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %3, ptr %i.g, align 8, !tbaa !33
  %.not26 = icmp eq ptr %4, null
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = atomicrmw add ptr %i.h, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  tail call void @dav1d_ref_dec(ptr noundef nonnull %i.j) #10
  store ptr %6, ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %5, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %7, ptr %i.l, align 8, !tbaa !36
  %.not27 = icmp eq ptr %6, null
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = atomicrmw add ptr %i.m, i32 1 monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @dav1d_data_props_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dav1d_ref_dec(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @dav1d_thread_picture_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2376
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.e = load i32, ptr %i.d, align 4, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  %i.g = load i32, ptr %i.f, align 4, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.j = load ptr, ptr %1, align 16, !tbaa !123
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !124
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2944 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 62832
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2664 ; 3 uses
  %i.p = tail call fastcc i32 @picture_alloc(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.e, i32 noundef %i.g, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.c, ptr noundef %i.l, i32 noundef %2, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o) ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !105  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load i8, ptr %i.r, align 8, !tbaa !125   ; 2 uses
  %.not46 = icmp eq i8 %i.s, 0                    ; 2 uses
  br i1 %.not46, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 62884
  %i.u = load i32, ptr %i.t, align 4, !tbaa !126
  %.not47 = icmp eq i32 %i.u, 0
  br i1 %.not47, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 62872
  %i.w = load i32, ptr %i.v, align 8, !tbaa !127
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 250
  %i.y = load i8, ptr %i.x, align 2, !tbaa !128
  %i.z = zext i8 %i.y to i32
  %i.aa = icmp eq i32 %i.w, %i.z
  %i.ab = select i1 %i.aa, i32 0, i32 3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi i32 [ 3, %bb.c ], [ %i.ab, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 62900 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !129 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 2656
  store i32 %i.ae, ptr %i.af, align 16, !tbaa !54
  %i.ag = and i32 %i.ae, %i.ac
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !129
  %i.ah = zext i8 %i.s to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2648
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !130
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 265
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !131
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2652
  store i32 %i.al, ptr %i.am, align 4, !tbaa !132
  br i1 %.not46, label %bb.l, label %bb.f

end_hunk_0
