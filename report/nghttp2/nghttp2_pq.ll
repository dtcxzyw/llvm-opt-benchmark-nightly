Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_pq?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"pq->q[item->index] == item\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"/opt-bench/work/nghttp2/nghttp2/lib/nghttp2_pq.c\00", align 1
@__PRETTY_FUNCTION__.nghttp2_pq_remove = private unnamed_addr constant [57 x i8] c"void nghttp2_pq_remove(nghttp2_pq *, nghttp2_pq_entry *)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @nghttp2_pq_init(ptr nofree noundef writeonly captures(none) initializes((0, 40)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !11
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_pq_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @nghttp2_mem_free(ptr noundef %i.b, ptr noundef %i.c) #8
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

declare void @nghttp2_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -901, 1) i32 @nghttp2_pq_push(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %i.b, 1
  %i.f = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 %i.e, i64 4) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = shl i64 %i.f, 3
  %i.j = tail call ptr @nghttp2_mem_realloc(ptr noundef %i.h, ptr noundef %.pre, i64 noundef %i.i) #8 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bubble_up.exit, label %.thread

.thread:                                          ; preds = %bb.b
  store i64 %i.f, ptr %i.a, align 8, !tbaa !16
  store ptr %i.j, ptr %0, align 8, !tbaa !15
  %.pr = load i64, ptr %i.c, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.a
  %i.l = phi ptr [ %i.j, %.thread ], [ %.pre, %bb.a ]
  %i.m = phi i64 [ %.pr, %.thread ], [ %i.d, %bb.a ] ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  store ptr %1, ptr %i.n, align 8, !tbaa !11
  store i64 %i.m, ptr %1, align 8, !tbaa !18
  %i.o = add i64 %i.m, 1
  store i64 %i.o, ptr %i.c, align 8, !tbaa !17
  %.not11.i = icmp eq i64 %i.m, 0
  br i1 %.not11.i, label %bubble_up.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.012.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.r, %bb.e ] ; 5 uses
  %i.q = add i64 %.012.i, -1
  %i.r = lshr i64 %i.q, 1                         ; 5 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.t = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.012.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11
  %i.y = tail call i32 %i.s(ptr noundef %i.v, ptr noundef %i.x) #8, !inline_history !21
  %.not10.i = icmp eq i32 %i.y, 0
  br i1 %.not10.i, label %bubble_up.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.r ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.012.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !11 ; 2 uses
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !11
  store i64 %i.r, ptr %i.ad, align 8, !tbaa !18
  %i.ae = load ptr, ptr %0, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.012.i
  store ptr %i.ab, ptr %i.af, align 8, !tbaa !11
  store i64 %.012.i, ptr %i.ab, align 8, !tbaa !18
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %bubble_up.exit, label %bb.d, !llvm.loop !22

bubble_up.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ -901, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.1
}

declare ptr @nghttp2_mem_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @nghttp2_pq_top(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_pq_pop(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bubble_down.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  store ptr %i.f, ptr %i.c, align 8, !tbaa !11
  %i.g = load ptr, ptr %0, align 8, !tbaa !15
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  store i64 0, ptr %i.h, align 8, !tbaa !18
  %i.i = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not.i7 = icmp ugt i64 %i.i, 1
  br i1 %.not.i7, label %.lr.ph, label %bubble_down.exit

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %i.k = phi i64 [ %i.al, %bb.e ], [ 1, %bb.b ]   ; 2 uses
  %i.l = phi i64 [ %i.ak, %bb.e ], [ 0, %bb.b ]
  %.020.i8 = phi i64 [ %.0.lcssa.i, %bb.e ], [ 0, %bb.b ] ; 5 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.n = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.020.i8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = tail call i32 %i.m(ptr noundef %i.p, ptr noundef %i.r) #8, !inline_history !24
  %.not21.i = icmp eq i32 %i.s, 0
  %spec.select.i = select i1 %.not21.i, i64 %.020.i8, i64 %i.k ; 3 uses
  %i.t = add nuw i64 %i.l, 2                      ; 3 uses
  %i.u = load i64, ptr %i.a, align 8, !tbaa !17
  %.not.1.i = icmp ult i64 %i.t, %i.u
  br i1 %.not.1.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.w = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %spec.select.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !11
  %i.ab = tail call i32 %i.v(ptr noundef %i.y, ptr noundef %i.aa) #8, !inline_history !24
  %.not21.1.i = icmp eq i32 %i.ab, 0
  %spec.select.1.i = select i1 %.not21.1.i, i64 %spec.select.i, i64 %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.0.lcssa.i = phi i64 [ %spec.select.i, %.lr.ph ], [ %spec.select.1.i, %bb.c ] ; 6 uses
  %i.ac = icmp eq i64 %.0.lcssa.i, %.020.i8
  br i1 %i.ac, label %bubble_down.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.020.i8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0.lcssa.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !11
  store i64 %.020.i8, ptr %i.ah, align 8, !tbaa !18
  %i.ai = load ptr, ptr %0, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0.lcssa.i
  store ptr %i.af, ptr %i.aj, align 8, !tbaa !11
  store i64 %.0.lcssa.i, ptr %i.af, align 8, !tbaa !18
  %i.ak = shl i64 %.0.lcssa.i, 1                  ; 2 uses
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = load i64, ptr %i.a, align 8, !tbaa !17
  %.not.i = icmp ult i64 %i.al, %i.am
  br i1 %.not.i, label %.lr.ph, label %bubble_down.exit

bubble_down.exit:                                 ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @nghttp2_pq_remove(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !18     ; 6 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = icmp eq ptr %i.d, %1
end_hunk_0
