Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/list?download=true
inline.NumInlined: 93
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @list_make1_impl(i32 noundef %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 64) #10 ; 6 uses
  store i32 %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  store ptr %1, ptr %i.d, align 8
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @list_make2_impl(i32 noundef %0, ptr %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 64) #10 ; 7 uses
  store i32 %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  store ptr %1, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.f, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @list_make3_impl(i32 noundef %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 64) #10 ; 8 uses
  store i32 %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 3, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  store ptr %1, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %3, ptr %i.g, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @list_make4_impl(i32 noundef %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 64) #10 ; 9 uses
  store i32 %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 4, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  store ptr %1, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %4, ptr %i.h, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @list_make5_impl(i32 noundef %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @palloc(i64 noundef 64) #10 ; 10 uses
  store i32 %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 5, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  store ptr %1, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %4, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %5, ptr %i.i, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lappend(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @palloc(i64 noundef 64) #10 ; 6 uses
  store i32 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i, label %new_tail_cell.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.h, 1
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 16) ; 3 uses
  %i.m = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.n = icmp samesign ult i32 %i.m, 2
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.l, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = shl nuw i32 2, %i.p
  %.0.i.i.i = select i1 %i.n, i32 %i.l, i32 %i.q  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr @GetMemoryChunkContext(ptr noundef nonnull %0) #10
  %i.w = sext i32 %.0.i.i.i to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = tail call ptr @MemoryContextAlloc(ptr noundef %i.v, i64 noundef %i.x) #10 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8
  %i.z = load i32, ptr %i.g, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.t, i64 %i.ab, i1 false)
  br label %enlarge_list.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %.0.i.i.i to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call ptr @repalloc(ptr noundef %i.s, i64 noundef %i.ad) #10
  store ptr %i.ae, ptr %i.r, align 8
  br label %enlarge_list.exit.i

enlarge_list.exit.i:                              ; preds = %bb.f, %bb.e
  store i32 %.0.i.i.i, ptr %i.i, align 8
  %.pre.i = load i32, ptr %i.g, align 4
  br label %new_tail_cell.exit

new_tail_cell.exit:                               ; preds = %bb.c, %enlarge_list.exit.i
  %i.af = phi i32 [ %.pre.i, %enlarge_list.exit.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.g, align 4
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.0.val6.pre = load ptr, ptr %.phi.trans.insert, align 8
  %2 = sext i32 %i.af to i64
  br label %bb.g

bb.g:                                             ; preds = %new_tail_cell.exit, %bb.b
  %.0.val6.a = phi ptr [ %i.e, %bb.b ], [ %.0.val6.pre, %new_tail_cell.exit ]
  %.0.val = phi i64 [ 0, %bb.b ], [ %2, %new_tail_cell.exit ]
  %.0 = phi ptr [ %i.b, %bb.b ], [ %0, %new_tail_cell.exit ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %.0.val6.a, i64 %.0.val
  store ptr %1, ptr %i.ah, align 8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lappend_int(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @palloc(i64 noundef 64) #10 ; 6 uses
  store i32 494, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i, label %new_tail_cell.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.h, 1
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 16) ; 3 uses
  %i.m = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.n = icmp samesign ult i32 %i.m, 2
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.l, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = shl nuw i32 2, %i.p
  %.0.i.i.i = select i1 %i.n, i32 %i.l, i32 %i.q  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr @GetMemoryChunkContext(ptr noundef nonnull %0) #10
  %i.w = sext i32 %.0.i.i.i to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = tail call ptr @MemoryContextAlloc(ptr noundef %i.v, i64 noundef %i.x) #10 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8
  %i.z = load i32, ptr %i.g, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.t, i64 %i.ab, i1 false)
  br label %enlarge_list.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %.0.i.i.i to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call ptr @repalloc(ptr noundef %i.s, i64 noundef %i.ad) #10
  store ptr %i.ae, ptr %i.r, align 8
  br label %enlarge_list.exit.i

enlarge_list.exit.i:                              ; preds = %bb.f, %bb.e
  store i32 %.0.i.i.i, ptr %i.i, align 8
  %.pre.i = load i32, ptr %i.g, align 4
  br label %new_tail_cell.exit

new_tail_cell.exit:                               ; preds = %bb.c, %enlarge_list.exit.i
  %i.af = phi i32 [ %.pre.i, %enlarge_list.exit.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.g, align 4
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.0.val5.pre = load ptr, ptr %.phi.trans.insert, align 8
  %2 = sext i32 %i.af to i64
  br label %bb.g

bb.g:                                             ; preds = %new_tail_cell.exit, %bb.b
  %.0.val5.a = phi ptr [ %i.e, %bb.b ], [ %.0.val5.pre, %new_tail_cell.exit ]
  %.0.val = phi i64 [ 0, %bb.b ], [ %2, %new_tail_cell.exit ]
  %.0 = phi ptr [ %i.b, %bb.b ], [ %0, %new_tail_cell.exit ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %.0.val5.a, i64 %.0.val
  store i32 %1, ptr %i.ah, align 8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lappend_oid(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @palloc(i64 noundef 64) #10 ; 6 uses
  store i32 495, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i, label %new_tail_cell.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.h, 1
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 16) ; 3 uses
  %i.m = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.n = icmp samesign ult i32 %i.m, 2
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.l, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = shl nuw i32 2, %i.p
  %.0.i.i.i = select i1 %i.n, i32 %i.l, i32 %i.q  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr @GetMemoryChunkContext(ptr noundef nonnull %0) #10
  %i.w = sext i32 %.0.i.i.i to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = tail call ptr @MemoryContextAlloc(ptr noundef %i.v, i64 noundef %i.x) #10 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8
  %i.z = load i32, ptr %i.g, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.t, i64 %i.ab, i1 false)
  br label %enlarge_list.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %.0.i.i.i to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call ptr @repalloc(ptr noundef %i.s, i64 noundef %i.ad) #10
  store ptr %i.ae, ptr %i.r, align 8
  br label %enlarge_list.exit.i

enlarge_list.exit.i:                              ; preds = %bb.f, %bb.e
  store i32 %.0.i.i.i, ptr %i.i, align 8
  %.pre.i = load i32, ptr %i.g, align 4
  br label %new_tail_cell.exit

new_tail_cell.exit:                               ; preds = %bb.c, %enlarge_list.exit.i
  %i.af = phi i32 [ %.pre.i, %enlarge_list.exit.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.g, align 4
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.0.val5.pre = load ptr, ptr %.phi.trans.insert, align 8
  %2 = sext i32 %i.af to i64
  br label %bb.g

bb.g:                                             ; preds = %new_tail_cell.exit, %bb.b
  %.0.val5.a = phi ptr [ %i.e, %bb.b ], [ %.0.val5.pre, %new_tail_cell.exit ]
  %.0.val = phi i64 [ 0, %bb.b ], [ %2, %new_tail_cell.exit ]
  %.0 = phi ptr [ %i.b, %bb.b ], [ %0, %new_tail_cell.exit ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %.0.val5.a, i64 %.0.val
  store i32 %1, ptr %i.ah, align 8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lappend_xid(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @palloc(i64 noundef 64) #10 ; 6 uses
  store i32 496, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i, label %new_tail_cell.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.h, 1
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 16) ; 3 uses
  %i.m = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.n = icmp samesign ult i32 %i.m, 2
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.l, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = shl nuw i32 2, %i.p
  %.0.i.i.i = select i1 %i.n, i32 %i.l, i32 %i.q  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr @GetMemoryChunkContext(ptr noundef nonnull %0) #10
  %i.w = sext i32 %.0.i.i.i to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = tail call ptr @MemoryContextAlloc(ptr noundef %i.v, i64 noundef %i.x) #10 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8
  %i.z = load i32, ptr %i.g, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.t, i64 %i.ab, i1 false)
  br label %enlarge_list.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %.0.i.i.i to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call ptr @repalloc(ptr noundef %i.s, i64 noundef %i.ad) #10
  store ptr %i.ae, ptr %i.r, align 8
  br label %enlarge_list.exit.i

enlarge_list.exit.i:                              ; preds = %bb.f, %bb.e
  store i32 %.0.i.i.i, ptr %i.i, align 8
  %.pre.i = load i32, ptr %i.g, align 4
  br label %new_tail_cell.exit

new_tail_cell.exit:                               ; preds = %bb.c, %enlarge_list.exit.i
  %i.af = phi i32 [ %.pre.i, %enlarge_list.exit.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.g, align 4
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 16
  %.0.val5.pre = load ptr, ptr %.phi.trans.insert, align 8
  %2 = sext i32 %i.af to i64
  br label %bb.g

bb.g:                                             ; preds = %new_tail_cell.exit, %bb.b
  %.0.val5.a = phi ptr [ %i.e, %bb.b ], [ %.0.val5.pre, %new_tail_cell.exit ]
  %.0.val = phi i64 [ 0, %bb.b ], [ %2, %new_tail_cell.exit ]
  %.0 = phi ptr [ %i.b, %bb.b ], [ %0, %new_tail_cell.exit ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %.0.val5.a, i64 %.0.val
  store i32 %1, ptr %i.ah, align 8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @list_insert_nth(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @palloc(i64 noundef 64) #10 ; 6 uses
  store i32 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  store ptr %2, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @insert_new_cell(ptr noundef %0, i32 noundef %1)
  store ptr %2, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @insert_new_cell(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.b, 1
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.e, i32 16) ; 3 uses
  %i.g = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.f)
  %i.h = icmp samesign ult i32 %i.g, 2
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 true)
  %i.j = xor i32 %i.i, 31
  %i.k = shl nuw i32 2, %i.j
  %.0.i.i = select i1 %i.h, i32 %i.f, i32 %i.k    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @GetMemoryChunkContext(ptr noundef nonnull %0) #10
  %i.q = sext i32 %.0.i.i to i64
  %i.r = shl nsw i64 %i.q, 3
  %i.s = tail call ptr @MemoryContextAlloc(ptr noundef %i.p, i64 noundef %i.r) #10 ; 2 uses
  store ptr %i.s, ptr %i.l, align 8
  %i.t = load i32, ptr %i.a, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.s, ptr nonnull align 8 %i.n, i64 %i.v, i1 false)
  br label %enlarge_list.exit

bb.d:                                             ; preds = %bb.b
  %i.w = sext i32 %.0.i.i to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = tail call ptr @repalloc(ptr noundef %i.m, i64 noundef %i.x) #10
  store ptr %i.y, ptr %i.l, align 8
  br label %enlarge_list.exit

enlarge_list.exit:                                ; preds = %bb.c, %bb.d
  store i32 %.0.i.i, ptr %i.c, align 8
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %enlarge_list.exit, %bb.a
  %i.z = phi i32 [ %.pre, %enlarge_list.exit ], [ %i.b, %bb.a ] ; 3 uses
  %i.aa = icmp slt i32 %1, %i.z
  br i1 %i.aa, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre17 = sext i32 %1 to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = sext i32 %1 to i64                      ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = sub i32 %i.z, %1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.af, ptr align 8 %i.ae, i64 %i.ai, i1 false)
  %.pre16 = load i32, ptr %i.a, align 4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi = phi i64 [ %.pre17, %._crit_edge ], [ %i.ad, %bb.f ]
  %i.aj = phi i32 [ %i.z, %._crit_edge ], [ %.pre16, %bb.f ]
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.a, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %.pre-phi
  ret ptr %i.an
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @list_insert_nth_int(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext.i = zext i32 %2 to i64
  %i.b = inttoptr i64 %.sroa.0.0.insert.ext.i to ptr
  %i.c = tail call ptr @palloc(i64 noundef 64) #10 ; 6 uses
  store i32 494, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.g, align 8
  store ptr %i.b, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call fastcc ptr @insert_new_cell(ptr noundef %0, i32 noundef %1)
  store i32 %2, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @list_insert_nth_oid(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext.i = zext i32 %2 to i64
  %i.b = inttoptr i64 %.sroa.0.0.insert.ext.i to ptr
  %i.c = tail call ptr @palloc(i64 noundef 64) #10 ; 6 uses
  store i32 495, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.g, align 8
  store ptr %i.b, ptr %i.f, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call fastcc ptr @insert_new_cell(ptr noundef %0, i32 noundef %1)
  store i32 %2, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lcons(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @palloc(i64 noundef 64) #10 ; 6 uses
  store i32 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i, label %new_head_cell.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.h, 1
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 16) ; 3 uses
  %i.m = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.n = icmp samesign ult i32 %i.m, 2
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.l, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = shl nuw i32 2, %i.p
  %.0.i.i.i = select i1 %i.n, i32 %i.l, i32 %i.q  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr @GetMemoryChunkContext(ptr noundef nonnull %1) #10
  %i.w = sext i32 %.0.i.i.i to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = tail call ptr @MemoryContextAlloc(ptr noundef %i.v, i64 noundef %i.x) #10 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8
  %i.z = load i32, ptr %i.g, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.t, i64 %i.ab, i1 false)
  br label %enlarge_list.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %.0.i.i.i to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call ptr @repalloc(ptr noundef %i.s, i64 noundef %i.ad) #10
  store ptr %i.ae, ptr %i.r, align 8
  br label %enlarge_list.exit.i

enlarge_list.exit.i:                              ; preds = %bb.f, %bb.e
  store i32 %.0.i.i.i, ptr %i.i, align 8
  %.pre.i = load i32, ptr %i.g, align 4
  br label %new_head_cell.exit

new_head_cell.exit:                               ; preds = %bb.c, %enlarge_list.exit.i
  %i.af = phi i32 [ %.pre.i, %enlarge_list.exit.i ], [ %i.h, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = sext i32 %i.af to i64
  %i.ak = shl nsw i64 %i.aj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.ah, i64 %i.ak, i1 false)
  %i.al = load i32, ptr %i.g, align 4
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.g, align 4
  %.0.val.pre = load ptr, ptr %i.ag, align 8
  br label %bb.g

bb.g:                                             ; preds = %new_head_cell.exit, %bb.b
  %.0.val.a = phi ptr [ %i.e, %bb.b ], [ %.0.val.pre, %new_head_cell.exit ]
  %.0 = phi ptr [ %i.b, %bb.b ], [ %1, %new_head_cell.exit ]
  store ptr %0, ptr %.0.val.a, align 8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lcons_int(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @palloc(i64 noundef 64) #10 ; 6 uses
  store i32 494, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i, label %new_head_cell.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.h, 1
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 16) ; 3 uses
  %i.m = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.n = icmp samesign ult i32 %i.m, 2
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.l, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = shl nuw i32 2, %i.p
  %.0.i.i.i = select i1 %i.n, i32 %i.l, i32 %i.q  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr @GetMemoryChunkContext(ptr noundef nonnull %1) #10
  %i.w = sext i32 %.0.i.i.i to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = tail call ptr @MemoryContextAlloc(ptr noundef %i.v, i64 noundef %i.x) #10 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8
  %i.z = load i32, ptr %i.g, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.t, i64 %i.ab, i1 false)
  br label %enlarge_list.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %.0.i.i.i to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call ptr @repalloc(ptr noundef %i.s, i64 noundef %i.ad) #10
  store ptr %i.ae, ptr %i.r, align 8
  br label %enlarge_list.exit.i

enlarge_list.exit.i:                              ; preds = %bb.f, %bb.e
  store i32 %.0.i.i.i, ptr %i.i, align 8
  %.pre.i = load i32, ptr %i.g, align 4
  br label %new_head_cell.exit

new_head_cell.exit:                               ; preds = %bb.c, %enlarge_list.exit.i
  %i.af = phi i32 [ %.pre.i, %enlarge_list.exit.i ], [ %i.h, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = sext i32 %i.af to i64
  %i.ak = shl nsw i64 %i.aj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.ah, i64 %i.ak, i1 false)
  %i.al = load i32, ptr %i.g, align 4
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.g, align 4
  %.0.val.pre = load ptr, ptr %i.ag, align 8
  br label %bb.g

bb.g:                                             ; preds = %new_head_cell.exit, %bb.b
  %.0.val.a = phi ptr [ %i.e, %bb.b ], [ %.0.val.pre, %new_head_cell.exit ]
  %.0 = phi ptr [ %i.b, %bb.b ], [ %1, %new_head_cell.exit ]
  store i32 %0, ptr %.0.val.a, align 8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lcons_oid(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @palloc(i64 noundef 64) #10 ; 6 uses
  store i32 495, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 5, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.f, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp slt i32 %i.h, %i.j
  br i1 %.not.i, label %new_head_cell.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.h, 1
  %i.l = tail call i32 @llvm.smax.i32(i32 %i.k, i32 16) ; 3 uses
  %i.m = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.n = icmp samesign ult i32 %i.m, 2
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.l, i1 true)
  %i.p = xor i32 %i.o, 31
  %i.q = shl nuw i32 2, %i.p
  %.0.i.i.i = select i1 %i.n, i32 %i.l, i32 %i.q  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr @GetMemoryChunkContext(ptr noundef nonnull %1) #10
  %i.w = sext i32 %.0.i.i.i to i64
  %i.x = shl nsw i64 %i.w, 3
  %i.y = tail call ptr @MemoryContextAlloc(ptr noundef %i.v, i64 noundef %i.x) #10 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8
  %i.z = load i32, ptr %i.g, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.y, ptr nonnull align 8 %i.t, i64 %i.ab, i1 false)
  br label %enlarge_list.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = sext i32 %.0.i.i.i to i64
  %i.ad = shl nsw i64 %i.ac, 3
  %i.ae = tail call ptr @repalloc(ptr noundef %i.s, i64 noundef %i.ad) #10
  store ptr %i.ae, ptr %i.r, align 8
  br label %enlarge_list.exit.i

enlarge_list.exit.i:                              ; preds = %bb.f, %bb.e
  store i32 %.0.i.i.i, ptr %i.i, align 8
  %.pre.i = load i32, ptr %i.g, align 4
  br label %new_head_cell.exit

new_head_cell.exit:                               ; preds = %bb.c, %enlarge_list.exit.i
  %i.af = phi i32 [ %.pre.i, %enlarge_list.exit.i ], [ %i.h, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = sext i32 %i.af to i64
  %i.ak = shl nsw i64 %i.aj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.ah, i64 %i.ak, i1 false)
  %i.al = load i32, ptr %i.g, align 4
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.g, align 4
  %.0.val.pre = load ptr, ptr %i.ag, align 8
  br label %bb.g

bb.g:                                             ; preds = %new_head_cell.exit, %bb.b
  %.0.val.a = phi ptr [ %i.e, %bb.b ], [ %.0.val.pre, %new_head_cell.exit ]
  %.0 = phi ptr [ %i.b, %bb.b ], [ %1, %new_head_cell.exit ]
  store i32 %0, ptr %.0.val.a, align 8
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @list_concat(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %list_copy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = load <2 x i32>, ptr %1, align 8
  %i.f = add i32 %i.d, 3
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.f, i32 8) ; 3 uses
  %i.h = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.g)
  %i.i = icmp samesign ult i32 %i.h, 2
  %i.j = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.k = xor i32 %i.j, 31
  %i.l = shl nuw i32 2, %i.k
  %.0.i.i.i = select i1 %i.i, i32 %i.g, i32 %i.l
  %i.m = add i32 %.0.i.i.i, -3                    ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 24
  %i.q = tail call ptr @palloc(i64 noundef %i.p) #10 ; 5 uses
  store <2 x i32> %i.e, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.m, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = sext i32 %i.d to i64
  %i.x = shl nsw i64 %i.w, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.v, i64 %i.x, i1 false)
  br label %list_copy.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.b, label %list_copy.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = add i32 %i.ab, %i.z                     ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp sgt i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 16) ; 3 uses
  %i.ah = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.ag)
  %i.ai = icmp samesign ult i32 %i.ah, 2
  %i.aj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ag, i1 true)
  %i.ak = xor i32 %i.aj, 31
  %i.al = shl nuw i32 2, %i.ak
  %.0.i.i = select i1 %i.ai, i32 %i.ag, i32 %i.al ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = tail call ptr @GetMemoryChunkContext(ptr noundef nonnull %0) #10
  %i.ar = sext i32 %.0.i.i to i64
  %i.as = shl nsw i64 %i.ar, 3
  %i.at = tail call ptr @MemoryContextAlloc(ptr noundef %i.aq, i64 noundef %i.as) #10 ; 2 uses
  store ptr %i.at, ptr %i.am, align 8
  %i.au = load i32, ptr %i.y, align 4
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.at, ptr nonnull align 8 %i.ao, i64 %i.aw, i1 false)
  br label %enlarge_list.exit

bb.h:                                             ; preds = %bb.f
  %i.ax = sext i32 %.0.i.i to i64
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = tail call ptr @repalloc(ptr noundef %i.an, i64 noundef %i.ay) #10
  store ptr %i.az, ptr %i.am, align 8
  br label %enlarge_list.exit

enlarge_list.exit:                                ; preds = %bb.g, %bb.h
  store i32 %.0.i.i, ptr %i.ad, align 8
  %.pre = load i32, ptr %i.y, align 4
  %.pre20 = load i32, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %enlarge_list.exit, %bb.e
  %i.ba = phi i32 [ %.pre20, %enlarge_list.exit ], [ %i.ab, %bb.e ]
  %i.bb = phi i32 [ %.pre, %enlarge_list.exit ], [ %i.z, %bb.e ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = sext i32 %i.bb to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = sext i32 %i.ba to i64
  %i.bj = shl nsw i64 %i.bi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bf, ptr align 8 %i.bh, i64 %i.bj, i1 false)
  store i32 %i.ac, ptr %i.y, align 4
  br label %list_copy.exit

list_copy.exit:                                   ; preds = %bb.c, %bb.b, %bb.d, %bb.i
  %.0 = phi ptr [ %0, %bb.d ], [ %0, %bb.i ], [ %i.q, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @list_copy(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = load <2 x i32>, ptr %0, align 8
  %i.e = add i32 %i.c, 3
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.e, i32 8) ; 3 uses
  %i.g = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.f)
  %i.h = icmp samesign ult i32 %i.g, 2
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 true)
  %i.j = xor i32 %i.i, 31
  %i.k = shl nuw i32 2, %i.j
  %.0.i.i = select i1 %i.h, i32 %i.f, i32 %i.k
  %i.l = add i32 %.0.i.i, -3                      ; 2 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 24
  %i.p = tail call ptr @palloc(i64 noundef %i.o) #10 ; 5 uses
  store <2 x i32> %i.d, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %i.l, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = sext i32 %i.c to i64
  %i.w = shl nsw i64 %i.v, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @list_concat_copy(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %list_copy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = load <2 x i32>, ptr %1, align 8
  %i.f = add i32 %i.d, 3
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.f, i32 8) ; 3 uses
  %i.h = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.g)
  %i.i = icmp samesign ult i32 %i.h, 2
  %i.j = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.k = xor i32 %i.j, 31
  %i.l = shl nuw i32 2, %i.k
  %.0.i.i.i = select i1 %i.i, i32 %i.g, i32 %i.l
  %i.m = add i32 %.0.i.i.i, -3                    ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 24
  %i.q = tail call ptr @palloc(i64 noundef %i.p) #10 ; 5 uses
  store <2 x i32> %i.e, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.m, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = sext i32 %i.d to i64
  %i.x = shl nsw i64 %i.w, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.v, i64 %i.x, i1 false)
  br label %list_copy.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.b, label %list_copy.exit20, label %bb.e

list_copy.exit20:                                 ; preds = %bb.d
end_hunk_0
