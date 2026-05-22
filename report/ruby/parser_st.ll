inline.NumInlined: 123
inline.NumDeleted: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.parser_st_hash_type = type { ptr, ptr }
%struct.functor = type { ptr, i64 }

@st_hashtype_num = internal constant %struct.parser_st_hash_type { ptr @rb_parser_st_numcmp, ptr @rb_parser_st_numhash }, align 8
@type_strhash = internal constant %struct.parser_st_hash_type { ptr @st_strcmp, ptr @strhash }, align 8
@type_strcasehash = internal constant %struct.parser_st_hash_type { ptr @st_locale_insensitive_strcasecmp_i, ptr @strcasehash }, align 8
@features = internal unnamed_addr constant [63 x { i8, i8, i8, [5 x i8], i64 }] [{ i8, i8, i8, [5 x i8], i64 } { i8 0, i8 1, i8 0, [5 x i8] zeroinitializer, i64 0 }, { i8, i8, i8, [5 x i8], i64 } { i8 1, i8 2, i8 0, [5 x i8] zeroinitializer, i64 1 }, { i8, i8, i8, [5 x i8], i64 } { i8 2, i8 3, i8 0, [5 x i8] zeroinitializer, i64 1 }, { i8, i8, i8, [5 x i8], i64 } { i8 3, i8 4, i8 0, [5 x i8] zeroinitializer, i64 2 }, { i8, i8, i8, [5 x i8], i64 } { i8 4, i8 5, i8 0, [5 x i8] zeroinitializer, i64 4 }, { i8, i8, i8, [5 x i8], i64 } { i8 5, i8 6, i8 0, [5 x i8] zeroinitializer, i64 8 }, { i8, i8, i8, [5 x i8], i64 } { i8 6, i8 7, i8 0, [5 x i8] zeroinitializer, i64 16 }, { i8, i8, i8, [5 x i8], i64 } { i8 7, i8 8, i8 0, [5 x i8] zeroinitializer, i64 32 }, { i8, i8, i8, [5 x i8], i64 } { i8 8, i8 9, i8 1, [5 x i8] zeroinitializer, i64 128 }, { i8, i8, i8, [5 x i8], i64 } { i8 9, i8 10, i8 1, [5 x i8] zeroinitializer, i64 256 }, { i8, i8, i8, [5 x i8], i64 } { i8 10, i8 11, i8 1, [5 x i8] zeroinitializer, i64 512 }, { i8, i8, i8, [5 x i8], i64 } { i8 11, i8 12, i8 1, [5 x i8] zeroinitializer, i64 1024 }, { i8, i8, i8, [5 x i8], i64 } { i8 12, i8 13, i8 1, [5 x i8] zeroinitializer, i64 2048 }, { i8, i8, i8, [5 x i8], i64 } { i8 13, i8 14, i8 1, [5 x i8] zeroinitializer, i64 4096 }, { i8, i8, i8, [5 x i8], i64 } { i8 14, i8 15, i8 1, [5 x i8] zeroinitializer, i64 8192 }, { i8, i8, i8, [5 x i8], i64 } { i8 15, i8 16, i8 1, [5 x i8] zeroinitializer, i64 16384 }, { i8, i8, i8, [5 x i8], i64 } { i8 16, i8 17, i8 2, [5 x i8] zeroinitializer, i64 65536 }, { i8, i8, i8, [5 x i8], i64 } { i8 17, i8 18, i8 2, [5 x i8] zeroinitializer, i64 131072 }, { i8, i8, i8, [5 x i8], i64 } { i8 18, i8 19, i8 2, [5 x i8] zeroinitializer, i64 262144 }, { i8, i8, i8, [5 x i8], i64 } { i8 19, i8 20, i8 2, [5 x i8] zeroinitializer, i64 524288 }, { i8, i8, i8, [5 x i8], i64 } { i8 20, i8 21, i8 2, [5 x i8] zeroinitializer, i64 1048576 }, { i8, i8, i8, [5 x i8], i64 } { i8 21, i8 22, i8 2, [5 x i8] zeroinitializer, i64 2097152 }, { i8, i8, i8, [5 x i8], i64 } { i8 22, i8 23, i8 2, [5 x i8] zeroinitializer, i64 4194304 }, { i8, i8, i8, [5 x i8], i64 } { i8 23, i8 24, i8 2, [5 x i8] zeroinitializer, i64 8388608 }, { i8, i8, i8, [5 x i8], i64 } { i8 24, i8 25, i8 2, [5 x i8] zeroinitializer, i64 16777216 }, { i8, i8, i8, [5 x i8], i64 } { i8 25, i8 26, i8 2, [5 x i8] zeroinitializer, i64 33554432 }, { i8, i8, i8, [5 x i8], i64 } { i8 26, i8 27, i8 2, [5 x i8] zeroinitializer, i64 67108864 }, { i8, i8, i8, [5 x i8], i64 } { i8 27, i8 28, i8 2, [5 x i8] zeroinitializer, i64 134217728 }, { i8, i8, i8, [5 x i8], i64 } { i8 28, i8 29, i8 2, [5 x i8] zeroinitializer, i64 268435456 }, { i8, i8, i8, [5 x i8], i64 } { i8 29, i8 30, i8 2, [5 x i8] zeroinitializer, i64 536870912 }, { i8, i8, i8, [5 x i8], i64 } { i8 30, i8 31, i8 2, [5 x i8] zeroinitializer, i64 1073741824 }, { i8, i8, i8, [5 x i8], i64 } { i8 31, i8 32, i8 2, [5 x i8] zeroinitializer, i64 2147483648 }, { i8, i8, i8, [5 x i8], i64 } { i8 32, i8 33, i8 3, [5 x i8] zeroinitializer, i64 8589934592 }, { i8, i8, i8, [5 x i8], i64 } { i8 33, i8 34, i8 3, [5 x i8] zeroinitializer, i64 17179869184 }, { i8, i8, i8, [5 x i8], i64 } { i8 34, i8 35, i8 3, [5 x i8] zeroinitializer, i64 34359738368 }, { i8, i8, i8, [5 x i8], i64 } { i8 35, i8 36, i8 3, [5 x i8] zeroinitializer, i64 68719476736 }, { i8, i8, i8, [5 x i8], i64 } { i8 36, i8 37, i8 3, [5 x i8] zeroinitializer, i64 137438953472 }, { i8, i8, i8, [5 x i8], i64 } { i8 37, i8 38, i8 3, [5 x i8] zeroinitializer, i64 274877906944 }, { i8, i8, i8, [5 x i8], i64 } { i8 38, i8 39, i8 3, [5 x i8] zeroinitializer, i64 549755813888 }, { i8, i8, i8, [5 x i8], i64 } { i8 39, i8 40, i8 3, [5 x i8] zeroinitializer, i64 1099511627776 }, { i8, i8, i8, [5 x i8], i64 } { i8 40, i8 41, i8 3, [5 x i8] zeroinitializer, i64 2199023255552 }, { i8, i8, i8, [5 x i8], i64 } { i8 41, i8 42, i8 3, [5 x i8] zeroinitializer, i64 4398046511104 }, { i8, i8, i8, [5 x i8], i64 } { i8 42, i8 43, i8 3, [5 x i8] zeroinitializer, i64 8796093022208 }, { i8, i8, i8, [5 x i8], i64 } { i8 43, i8 44, i8 3, [5 x i8] zeroinitializer, i64 17592186044416 }, { i8, i8, i8, [5 x i8], i64 } { i8 44, i8 45, i8 3, [5 x i8] zeroinitializer, i64 35184372088832 }, { i8, i8, i8, [5 x i8], i64 } { i8 45, i8 46, i8 3, [5 x i8] zeroinitializer, i64 70368744177664 }, { i8, i8, i8, [5 x i8], i64 } { i8 46, i8 47, i8 3, [5 x i8] zeroinitializer, i64 140737488355328 }, { i8, i8, i8, [5 x i8], i64 } { i8 47, i8 48, i8 3, [5 x i8] zeroinitializer, i64 281474976710656 }, { i8, i8, i8, [5 x i8], i64 } { i8 48, i8 49, i8 3, [5 x i8] zeroinitializer, i64 562949953421312 }, { i8, i8, i8, [5 x i8], i64 } { i8 49, i8 50, i8 3, [5 x i8] zeroinitializer, i64 1125899906842624 }, { i8, i8, i8, [5 x i8], i64 } { i8 50, i8 51, i8 3, [5 x i8] zeroinitializer, i64 2251799813685248 }, { i8, i8, i8, [5 x i8], i64 } { i8 51, i8 52, i8 3, [5 x i8] zeroinitializer, i64 4503599627370496 }, { i8, i8, i8, [5 x i8], i64 } { i8 52, i8 53, i8 3, [5 x i8] zeroinitializer, i64 9007199254740992 }, { i8, i8, i8, [5 x i8], i64 } { i8 53, i8 54, i8 3, [5 x i8] zeroinitializer, i64 18014398509481984 }, { i8, i8, i8, [5 x i8], i64 } { i8 54, i8 55, i8 3, [5 x i8] zeroinitializer, i64 36028797018963968 }, { i8, i8, i8, [5 x i8], i64 } { i8 55, i8 56, i8 3, [5 x i8] zeroinitializer, i64 72057594037927936 }, { i8, i8, i8, [5 x i8], i64 } { i8 56, i8 57, i8 3, [5 x i8] zeroinitializer, i64 144115188075855872 }, { i8, i8, i8, [5 x i8], i64 } { i8 57, i8 58, i8 3, [5 x i8] zeroinitializer, i64 288230376151711744 }, { i8, i8, i8, [5 x i8], i64 } { i8 58, i8 59, i8 3, [5 x i8] zeroinitializer, i64 576460752303423488 }, { i8, i8, i8, [5 x i8], i64 } { i8 59, i8 60, i8 3, [5 x i8] zeroinitializer, i64 1152921504606846976 }, { i8, i8, i8, [5 x i8], i64 } { i8 60, i8 61, i8 3, [5 x i8] zeroinitializer, i64 2305843009213693952 }, { i8, i8, i8, [5 x i8], i64 } { i8 61, i8 62, i8 3, [5 x i8] zeroinitializer, i64 4611686018427387904 }, { i8, i8, i8, [5 x i8], i64 } { i8 62, i8 63, i8 3, [5 x i8] zeroinitializer, i64 -9223372036854775808 }], align 16

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @rb_parser_st_init_existing_table_with_size(ptr noundef captures(ret: address, provenance) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 false)
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = sub nuw nsw i32 64, %i.c
  %i.e = tail call i32 @llvm.umax.i32(i32 %i.d, i32 2) ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !11
  %i.g = trunc nuw nsw i32 %i.e to i8
  store i8 %i.g, ptr %0, align 8, !tbaa !18
  %i.h = zext nneg i32 %i.e to i64                ; 2 uses
  %i.i = getelementptr [16 x i8], ptr @features, i64 %i.h ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !19
  %i.l = getelementptr i8, ptr %0, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !21
  %i.m = getelementptr i8, ptr %i.i, i64 2
  %i.n = load i8, ptr %i.m, align 2, !tbaa !22
  %i.o = getelementptr i8, ptr %0, i64 2
  store i8 %i.n, ptr %i.o, align 2, !tbaa !23
  %i.p = icmp samesign ult i64 %2, 16
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !25
  %i.t = shl i64 %i.s, 3
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #25 ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.v, align 8, !tbaa !24
  %i.w = icmp eq ptr %i.u, null
  br i1 %i.w, label %3, label %bb.e

3:                                                ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %0) #26
  br label %bb.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %i.u, %bb.d ], [ null, %bb.c ] ; 3 uses
  %i.y = shl i64 24, %i.h
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.y) #25 ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 48
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !26
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef %i.x) #26
  tail call void @free(ptr noundef nonnull %0) #26
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %0, i64 16
  store i64 0, ptr %i.ac, align 8, !tbaa !27
  %i.ad = getelementptr i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %make_tab_empty.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.x, i8 noundef 0, i64 noundef %i.ag, i1 noundef false) #26
  br label %make_tab_empty.exit

make_tab_empty.exit:                              ; preds = %bb.g, %bb.h
  %i.ah = getelementptr i8, ptr %0, i64 4
  store i32 0, ptr %i.ah, align 4, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %make_tab_empty.exit, %bb.f, %3
  %.0 = phi ptr [ null, %3 ], [ null, %bb.f ], [ %0, %make_tab_empty.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @rb_parser_st_free_table(ptr noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.b) #26
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.d) #26
  tail call void @free(ptr noundef %0) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @rb_parser_st_init_table_with_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #25 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_parser_st_init_existing_table_with_size(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef %1)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i64 @rb_parser_st_table_size(ptr noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local noalias noundef ptr @rb_parser_st_init_table(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #25 ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %rb_parser_st_init_table_with_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !11
  store i8 2, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr i8, ptr %i.a, i64 1
  store i8 3, ptr %i.d, align 1, !tbaa !21
  %i.e = getelementptr i8, ptr %i.a, i64 2
  store i8 0, ptr %i.e, align 2, !tbaa !23
  %i.f = getelementptr i8, ptr %i.a, i64 24
  store ptr null, ptr %i.f, align 8, !tbaa !24
  %i.g = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #25 ; 2 uses
  %i.h = getelementptr i8, ptr %i.a, i64 48
  store ptr %i.g, ptr %i.h, align 8, !tbaa !26
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.c, label %rb_parser_st_init_existing_table_with_size.exit

rb_parser_st_init_existing_table_with_size.exit:  ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.a, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr i8, ptr %i.a, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !28
  br label %rb_parser_st_init_table_with_size.exit

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #26
  tail call void @free(ptr noundef nonnull %i.a) #26
  br label %rb_parser_st_init_table_with_size.exit

rb_parser_st_init_table_with_size.exit:           ; preds = %rb_parser_st_init_existing_table_with_size.exit, %bb.a, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %rb_parser_st_init_existing_table_with_size.exit ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local noalias noundef ptr @rb_parser_st_init_numtable() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #25 ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %rb_parser_st_init_table.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  store ptr @st_hashtype_num, ptr %i.c, align 8, !tbaa !11
  store i8 2, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr i8, ptr %i.a, i64 1
  store i8 3, ptr %i.d, align 1, !tbaa !21
  %i.e = getelementptr i8, ptr %i.a, i64 2
  store i8 0, ptr %i.e, align 2, !tbaa !23
  %i.f = getelementptr i8, ptr %i.a, i64 24
  store ptr null, ptr %i.f, align 8, !tbaa !24
  %i.g = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #25 ; 2 uses
  %i.h = getelementptr i8, ptr %i.a, i64 48
  store ptr %i.g, ptr %i.h, align 8, !tbaa !26
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.c, label %rb_parser_st_init_existing_table_with_size.exit.i

rb_parser_st_init_existing_table_with_size.exit.i: ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.a, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr i8, ptr %i.a, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !28
  br label %rb_parser_st_init_table.exit

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #26
  tail call void @free(ptr noundef nonnull %i.a) #26
  br label %rb_parser_st_init_table.exit

rb_parser_st_init_table.exit:                     ; preds = %bb.a, %rb_parser_st_init_existing_table_with_size.exit.i, %bb.c
  %.0.i.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %rb_parser_st_init_existing_table_with_size.exit.i ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @rb_parser_st_init_numtable_with_size(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #25 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %rb_parser_st_init_table_with_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_parser_st_init_existing_table_with_size(ptr noundef nonnull %i.a, ptr noundef nonnull @st_hashtype_num, i64 noundef %0)
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %rb_parser_st_init_table_with_size.exit

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #26
  br label %rb_parser_st_init_table_with_size.exit

rb_parser_st_init_table_with_size.exit:           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, argmem: none, target_mem: none) uwtable
define dso_local noalias noundef ptr @rb_parser_st_init_strtable() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #25 ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %rb_parser_st_init_table.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  store ptr @type_strhash, ptr %i.c, align 8, !tbaa !11
  store i8 2, ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr i8, ptr %i.a, i64 1
  store i8 3, ptr %i.d, align 1, !tbaa !21
  %i.e = getelementptr i8, ptr %i.a, i64 2
  store i8 0, ptr %i.e, align 2, !tbaa !23
  %i.f = getelementptr i8, ptr %i.a, i64 24
  store ptr null, ptr %i.f, align 8, !tbaa !24
  %i.g = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #25 ; 2 uses
  %i.h = getelementptr i8, ptr %i.a, i64 48
  store ptr %i.g, ptr %i.h, align 8, !tbaa !26
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.c, label %rb_parser_st_init_existing_table_with_size.exit.i

rb_parser_st_init_existing_table_with_size.exit.i: ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.a, i64 16
  store i64 0, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = getelementptr i8, ptr %i.a, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !28
  br label %rb_parser_st_init_table.exit

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.a) #26
  tail call void @free(ptr noundef nonnull %i.a) #26
  br label %rb_parser_st_init_table.exit

rb_parser_st_init_table.exit:                     ; preds = %bb.a, %rb_parser_st_init_existing_table_with_size.exit.i, %bb.c
end_hunk_0
