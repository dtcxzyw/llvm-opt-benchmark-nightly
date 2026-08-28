Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ustdio?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UTransPosition = type { i32, i32, i32, i32 }

@_ZL10DELIMITERS = internal constant [2 x i16] [i16 10, i16 0], align 2

; Function Attrs: mustprogress uwtable
define ptr @u_fsettransliterator_78(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !8
  %4 = icmp slt i32 %i.a, 1
  br i1 %4, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq ptr %0, null
  br i1 %.not35, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !8
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %5 = and i32 %1, 1
  %.not36 = icmp eq i32 %5, 0
  br i1 %.not36, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 16, ptr %3, align 4, !tbaa !8
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.b = icmp eq ptr %2, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %.not38 = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not38, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !22
  tail call void @uprv_free_78(ptr noundef %i.f)
  %i.g = load ptr, ptr %0, align 8, !tbaa !10     ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !22
  tail call void @uprv_free_78(ptr noundef nonnull %i.g)
  store ptr null, ptr %0, align 8, !tbaa !10
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  br i1 %.not38, label %bb.j, label %_Z23ufile_flush_translit_78P5UFILE.exit

bb.j:                                             ; preds = %bb.i
  %i.h = tail call noalias dereferenceable_or_null(32) ptr @uprv_malloc_78(i64 noundef 32) #10 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !10
  %.not37 = icmp eq ptr %i.h, null
  br i1 %.not37, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 7, ptr %3, align 4, !tbaa !8
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  br label %bb.m

_Z23ufile_flush_translit_78P5UFILE.exit:          ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = tail call i32 @u_file_write_flush_78(ptr noundef null, i32 noundef 0, ptr noundef nonnull %0, i8 noundef signext 0, i8 noundef signext 1) ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %_Z23ufile_flush_translit_78P5UFILE.exit, %bb.l
  %i.l = phi ptr [ %i.h, %bb.l ], [ %.pre, %_Z23ufile_flush_translit_78P5UFILE.exit ]
  %.0 = phi ptr [ null, %bb.l ], [ %i.j, %_Z23ufile_flush_translit_78P5UFILE.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %2, ptr %i.m, align 8, !tbaa !19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h, %bb.g, %bb.a, %bb.k, %bb.e, %bb.c
  %.029 = phi ptr [ %2, %bb.c ], [ %2, %bb.e ], [ %2, %bb.a ], [ %2, %bb.k ], [ %i.e, %bb.h ], [ null, %bb.g ], [ %.0, %bb.m ]
  ret ptr %.029
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z23ufile_flush_translit_78P5UFILE(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %.not3 = icmp eq ptr %i.a, null
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @u_file_write_flush_78(ptr noundef null, i32 noundef 0, ptr noundef nonnull %0, i8 noundef signext 0, i8 noundef signext 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define i32 @u_file_write_flush_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i8 noundef signext %3, i8 noundef signext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.UTransPosition, align 4     ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca [1024 x i8], align 16             ; 7 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr %0, ptr %i.e, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store ptr %i.f, ptr %i.g, align 8, !tbaa !24
  %i.h = icmp slt i32 %1, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @u_strlen_78(ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.051 = phi i32 [ %i.i, %bb.b ], [ %1, %bb.a ]  ; 6 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !10     ; 6 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %.not41 = icmp eq ptr %i.l, null
  br i1 %.not41, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !25   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26   ; 4 uses
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.s
  %i.u = sub nsw i32 %i.n, %i.p
  %i.v = shl nuw i32 %i.u, 1
  %i.w = zext i32 %i.v to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.r, ptr align 2 %i.t, i64 %i.w, i1 false)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !10  ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 12
  %.pre60.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !26
  %.phi.trans.insert61.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %.pre62.i = load i32, ptr %.phi.trans.insert61.i, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i32 [ %.pre62.i, %bb.f ], [ %i.n, %bb.e ]
  %i.y = phi i32 [ %.pre60.i, %bb.f ], [ %i.p, %bb.e ]
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.j, %bb.e ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = sub nsw i32 %i.x, %i.y                  ; 3 uses
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !25
  store i32 0, ptr %i.aa, align 4, !tbaa !26
  %i.ad = add nsw i32 %i.ac, %.051
  %i.ae = shl nsw i32 %i.ad, 2                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !27
  %i.ah = icmp sgt i32 %i.ae, %i.ag
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !22  ; 3 uses
  br i1 %i.ah, label %bb.h, label %._crit_edge.i

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = sext i32 %i.ae to i64
  %i.al = shl nsw i64 %i.ak, 1                    ; 2 uses
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = call noalias ptr @uprv_malloc_78(i64 noundef %i.al) #10
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.an = call ptr @uprv_realloc_78(ptr noundef nonnull %i.ai, i64 noundef %i.al) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i = phi ptr [ %i.an, %bb.j ], [ %i.am, %bb.i ] ; 3 uses
  %i.ao = load ptr, ptr %2, align 8, !tbaa !10    ; 3 uses
  store ptr %.sink.i, ptr %i.ao, align 8, !tbaa !22
  %i.ap = icmp eq ptr %.sink.i, null
  br i1 %i.ap, label %_ZL15u_file_translitP5UFILEPKDsPia.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.ae, ptr %i.aq, align 8, !tbaa !27
  %.phi.trans.insert64.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.pre65.i = load i32, ptr %.phi.trans.insert64.i, align 8, !tbaa !25
  br label %._crit_edge.i
end_hunk_0
