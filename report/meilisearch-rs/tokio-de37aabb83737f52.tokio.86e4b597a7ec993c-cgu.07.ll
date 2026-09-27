Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/tokio-de37aabb83737f52.tokio.86e4b597a7ec993c-cgu.07?download=true
inline.NumInlined: 68
inline.NumDeleted: 8
begin_hunk_0
@60 = private unnamed_addr constant [55 x i8] c"failed to generate unique thread ID: bitspace exhausted", align 1
@61 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @60, [8 x i8] c"7\00\00\00\00\00\00\00" }>, align 8
@62 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @58, [16 x i8] c"j\00\00\00\00\00\00\00$\00\00\00\05\00\00\00" }>, align 8
@63 = private unnamed_addr constant [5 x i8] c"Inner", align 1
@64 = private unnamed_addr constant [14 x i8] c"channel closed", align 1
@65 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @64, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@66 = private unnamed_addr constant [18 x i8] c"channel lagged by ", align 1
@67 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @66, [8 x i8] c"\12\00\00\00\00\00\00\00" }>, align 8
@68 = private unnamed_addr constant [104 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/tokio-1.52.3/src/io/async_write.rs\00", align 1
@69 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @68, [16 x i8] c"g\00\00\00\00\00\00\00\03\01\00\00\18\00\00\00" }>, align 8
@70 = private unnamed_addr constant [13 x i8] c"channel empty", align 1
@71 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @70, [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@72 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"q\00\00\00\00\00\00\00S\06\00\00\12\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN107_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$14write_vectored17heeb2c50cf643a541E"(ptr nofree align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = tail call { i64, ptr } @_ZN3std2io6cursor22vec_write_all_vectored17hc281610fe7b8b28fE(ptr nonnull align 8 %i.a, ptr align 8 %i.b, ptr align 8 %1, i64 %2)
  ret { i64, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef ptr @"_ZN107_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5flush17h095e6a26d29667adE"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN107_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h2e7c20dd4b70714dE"(ptr nofree align 8 captures(none) %0, ptr nofree readonly align 1 captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8                ; 6 uses
  %i.c = load i64, ptr %i.a, align 8              ; 6 uses
  %i.d = tail call i64 @llvm.uadd.sat.i64(i64 %i.c, i64 %2) ; 2 uses
  %i.e = load i64, ptr %i.b, align 8
  %i.f = icmp ugt i64 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = sub i64 %i.d, %i.h
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h61de6076a7a02d5fE"(ptr nonnull align 8 %i.b, i64 %i.i, ptr nonnull align 8 @7)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp ugt i64 %i.c, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = sub nuw i64 %i.c, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k
  tail call void @"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17hee34c76e4ec9bd02E"(ptr align 1 %i.p, i64 %i.m, i8 0)
  store i64 %i.c, ptr %i.j, align 8
  br label %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i

_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i: ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.s, ptr readonly align 1 %1, i64 %2, i1 false)
  %i.t = add i64 %i.c, %2                         ; 2 uses
  %i.u = load i64, ptr %i.j, align 8
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3std2io6cursor13vec_write_all17ha4031819df4031c1E.exit

bb.e:                                             ; preds = %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i
  store i64 %i.t, ptr %i.j, align 8
  br label %_ZN3std2io6cursor13vec_write_all17ha4031819df4031c1E.exit

_ZN3std2io6cursor13vec_write_all17ha4031819df4031c1E.exit: ; preds = %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i, %bb.e
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, %2
  store i64 %i.x, ptr %i.a, align 8
  %i.y = inttoptr i64 %2 to ptr
  %i.z = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.y, 1
  ret { i64, ptr } %i.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @"_ZN107_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$14write_vectored17h8a957f048e45e175E"(ptr nofree align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.01.0.i = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.e ] ; 2 uses
  %i.j = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd450dc1590f26f7aE"(ptr nonnull align 8 %i.b) ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = load i64, ptr %i.c, align 8
  %i.o = call i64 @_ZN4core3cmp3Ord3min17he3c2fba5ad8f4756E(i64 %i.n, i64 %i.f)
  %i.p = call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hadea29a68ed30e35E"(i64 %i.o, ptr align 1 %i.d, i64 %i.f, ptr nonnull align 8 @6) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  store ptr %i.q, ptr %i.a, align 8
  store i64 %i.r, ptr %i.i, align 8
  %i.s = call { i64, ptr } @"_ZN3std2io5impls69_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$$u5b$u8$u5d$$GT$5write17hf949520b31c438d6E"(ptr nonnull align 8 %i.a, ptr align 1 %i.k, i64 %i.m) ; 2 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 2 uses
  %i.v = trunc nuw i64 %i.t to i1
  br i1 %i.v, label %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i, label %bb.e

_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN3std2io6cursor20slice_write_vectored17h48036acad220f669E.exit

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.1.i = phi i64 [ %i.aa, %bb.e ], [ %.sroa.01.0.i, %bb.b ]
  %i.w = inttoptr i64 %.sroa.01.1.i to ptr
  br label %_ZN3std2io6cursor20slice_write_vectored17h48036acad220f669E.exit

bb.e:                                             ; preds = %bb.c
  %i.x = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.y = load i64, ptr %i.c, align 8
  %i.z = add i64 %i.y, %i.x
  store i64 %i.z, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = add i64 %.sroa.01.0.i, %i.x             ; 2 uses
  %i.ab = load i64, ptr %i.l, align 8
  %i.ac = icmp ugt i64 %i.ab, %i.x
  br i1 %i.ac, label %bb.d, label %bb.b

_ZN3std2io6cursor20slice_write_vectored17h48036acad220f669E.exit: ; preds = %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i, %bb.d
  %.sroa.3.0.i = phi ptr [ %i.w, %bb.d ], [ %i.u, %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.d ], [ 1, %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i ]
  %i.ad = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.ae = insertvalue { i64, ptr } %i.ad, ptr %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.ae
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef ptr @"_ZN107_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5flush17ha8ec69728a6a29d6E"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @"_ZN107_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h1bb8b969441fad45E"(ptr nofree align 8 captures(none) %0, ptr align 1 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = load i64, ptr %i.b, align 8
  %i.g = tail call i64 @_ZN4core3cmp3Ord3min17he3c2fba5ad8f4756E(i64 %i.f, i64 %i.e)
  %i.h = tail call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hadea29a68ed30e35E"(i64 %i.g, ptr align 1 %i.c, i64 %i.e, ptr nonnull align 8 @6) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  store ptr %i.i, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = call { i64, ptr } @"_ZN3std2io5impls69_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$$u5b$u8$u5d$$GT$5write17hf949520b31c438d6E"(ptr nonnull align 8 %i.a, ptr align 1 %1, i64 %2) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = trunc nuw i64 %i.m to i1
  br i1 %i.o, label %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = load i64, ptr %i.b, align 8
  %i.r = add i64 %i.q, %i.p
  store i64 %i.r, ptr %i.b, align 8
  br label %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit

_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.s = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.t = insertvalue { i64, ptr } %i.s, ptr %i.n, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.t
}

; Function Attrs: nonlazybind uwtable
define noundef { i64, ptr } @"_ZN110_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_flush17h7bde8a63a4cbed8dE"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hcebfb708a6cf61fcE"(ptr nonnull align 8 %i.a) ; 0 uses
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN110_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_write17h729834915f6dbe92E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1, ptr align 1 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hcebfb708a6cf61fcE"(ptr nonnull align 8 %i.b) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = load i64, ptr %i.d, align 8
  %i.i = call i64 @_ZN4core3cmp3Ord3min17he3c2fba5ad8f4756E(i64 %i.h, i64 %i.g)
  %i.j = call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hadea29a68ed30e35E"(i64 %i.i, ptr align 1 %i.e, i64 %i.g, ptr nonnull align 8 @6) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  store ptr %i.k, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = call { i64, ptr } @"_ZN3std2io5impls69_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$$u5b$u8$u5d$$GT$5write17hf949520b31c438d6E"(ptr nonnull align 8 %i.a, ptr align 1 %2, i64 %3) ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %"_ZN90_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$u20$as$u20$std..io..Write$GT$5write17hdfdeba2b8a14c205E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = load i64, ptr %i.d, align 8
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr %i.d, align 8
  br label %"_ZN90_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$u20$as$u20$std..io..Write$GT$5write17hdfdeba2b8a14c205E.exit"

"_ZN90_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$u20$as$u20$std..io..Write$GT$5write17hdfdeba2b8a14c205E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.u = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i, 0
  %i.v = insertvalue { i64, ptr } %i.u, ptr %i.p, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.v
}

; Function Attrs: nonlazybind uwtable
define noundef { i64, ptr } @"_ZN110_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$13poll_shutdown17h314dbaceb2dbcfb2E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hcebfb708a6cf61fcE"(ptr nonnull align 8 %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @"_ZN110_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$17is_write_vectored17hcd8a216757d6771fE"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN110_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h0c19ca968fb6dbcbE"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1, ptr align 8 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hcebfb708a6cf61fcE"(ptr nonnull align 8 %i.c) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3
  store ptr %2, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ac, %bb.e ] ; 2 uses
  %i.l = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd450dc1590f26f7aE"(ptr nonnull align 8 %i.b) ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = load i64, ptr %i.e, align 8
  %i.q = call i64 @_ZN4core3cmp3Ord3min17he3c2fba5ad8f4756E(i64 %i.p, i64 %i.h)
  %i.r = call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hadea29a68ed30e35E"(i64 %i.q, ptr align 1 %i.f, i64 %i.h, ptr nonnull align 8 @6) ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  store ptr %i.s, ptr %i.a, align 8
  store i64 %i.t, ptr %i.k, align 8
  %i.u = call { i64, ptr } @"_ZN3std2io5impls69_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$$u5b$u8$u5d$$GT$5write17hf949520b31c438d6E"(ptr nonnull align 8 %i.a, ptr align 1 %i.m, i64 %i.o) ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i.i, label %bb.e

_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN90_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$u20$as$u20$std..io..Write$GT$14write_vectored17h87eecf8c9ccc6664E.exit"

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.1.i.i = phi i64 [ %i.ac, %bb.e ], [ %.sroa.01.0.i.i, %bb.b ]
  %i.y = inttoptr i64 %.sroa.01.1.i.i to ptr
  br label %"_ZN90_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$u20$as$u20$std..io..Write$GT$14write_vectored17h87eecf8c9ccc6664E.exit"

bb.e:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.aa = load i64, ptr %i.e, align 8
  %i.ab = add i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = add i64 %.sroa.01.0.i.i, %i.z           ; 2 uses
  %i.ad = load i64, ptr %i.n, align 8
  %i.ae = icmp ugt i64 %i.ad, %i.z
  br i1 %i.ae, label %bb.d, label %bb.b

"_ZN90_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$$u5b$u8$u5d$$GT$$u20$as$u20$std..io..Write$GT$14write_vectored17h87eecf8c9ccc6664E.exit": ; preds = %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i.i, %bb.d
  %.sroa.3.0.i.i = phi ptr [ %i.y, %bb.d ], [ %i.w, %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i.i ]
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ 1, %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i.i ]
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %.sroa.3.0.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.ag
}

; Function Attrs: nonlazybind uwtable
define noundef { i64, ptr } @"_ZN111_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_flush17hf5c5a6fb702fc246E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h25e49a472788484bE"(ptr nonnull align 8 %i.a) ; 0 uses
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN111_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_write17hd80eadc2c253d2fcE"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readonly align 1 captures(none) %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h25e49a472788484bE"(ptr nonnull align 8 %i.a) ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 6 uses
  %i.e = call i64 @llvm.uadd.sat.i64(i64 %i.d, i64 %3) ; 2 uses
  %i.f = load i64, ptr %i.b, align 8
  %i.g = icmp ugt i64 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = sub i64 %i.e, %i.i
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h61de6076a7a02d5fE"(ptr nonnull align 8 %i.b, i64 %i.j, ptr nonnull align 8 @7)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ugt i64 %i.d, %i.l
  br i1 %i.m, label %bb.d, label %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = sub nuw i64 %i.d, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  call void @"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17hee34c76e4ec9bd02E"(ptr align 1 %i.q, i64 %i.n, i8 0)
  store i64 %i.d, ptr %i.k, align 8
  br label %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i.i

_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i.i: ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.d
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.u = add i64 %i.d, %3                         ; 2 uses
  %i.v = load i64, ptr %i.k, align 8
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h967445751cd6d81fE.exit"

bb.e:                                             ; preds = %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i.i
  store i64 %i.u, ptr %i.k, align 8
  br label %"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h967445751cd6d81fE.exit"

"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h967445751cd6d81fE.exit": ; preds = %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i.i, %bb.e
  %i.x = load i64, ptr %i.c, align 8
  %i.y = add i64 %i.x, %3
  store i64 %i.y, ptr %i.c, align 8
  %i.z = inttoptr i64 %3 to ptr
  %i.aa = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.z, 1
  ret { i64, ptr } %i.aa
}

; Function Attrs: nonlazybind uwtable
define noundef { i64, ptr } @"_ZN111_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$13poll_shutdown17h44d3920d045081b1E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h25e49a472788484bE"(ptr nonnull align 8 %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @"_ZN111_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$17is_write_vectored17hbab4a9d171725fe8E"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN111_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h9b2b5537699d6671E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1, ptr align 8 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h25e49a472788484bE"(ptr nonnull align 8 %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = call { i64, ptr } @_ZN3std2io6cursor22vec_write_all_vectored17hc281610fe7b8b28fE(ptr nonnull align 8 %i.c, ptr align 8 %i.b, ptr align 8 %2, i64 %3)
  ret { i64, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef { i64, ptr } @"_ZN123_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_flush17hef8e346a834c4412E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h50fc32754dcc6d89E"(ptr nonnull align 8 %i.a) ; 0 uses
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN123_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_write17h90c7d48bedbdbbf8E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1, ptr nofree readonly align 1 captures(none) %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h50fc32754dcc6d89E"(ptr nonnull align 8 %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.e = load i64, ptr %i.c, align 8              ; 6 uses
  %i.f = call i64 @llvm.uadd.sat.i64(i64 %i.e, i64 %3) ; 2 uses
  %i.g = load i64, ptr %i.d, align 8
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = sub i64 %i.f, %i.j
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h61de6076a7a02d5fE"(ptr nonnull align 8 %i.d, i64 %i.k, ptr nonnull align 8 @7)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp ugt i64 %i.e, %i.m
  br i1 %i.n, label %bb.d, label %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = sub nuw i64 %i.e, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  call void @"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17hee34c76e4ec9bd02E"(ptr align 1 %i.r, i64 %i.o, i8 0)
  store i64 %i.e, ptr %i.l, align 8
  br label %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i.i

_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i.i: ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.e
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.u, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.v = add i64 %i.e, %3                         ; 2 uses
  %i.w = load i64, ptr %i.l, align 8
  %i.x = icmp ugt i64 %i.v, %i.w
  br i1 %i.x, label %bb.e, label %"_ZN107_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h2e7c20dd4b70714dE.exit"

bb.e:                                             ; preds = %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i.i
  store i64 %i.v, ptr %i.l, align 8
  br label %"_ZN107_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h2e7c20dd4b70714dE.exit"

"_ZN107_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h2e7c20dd4b70714dE.exit": ; preds = %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit.i.i, %bb.e
  %i.y = load i64, ptr %i.c, align 8
  %i.z = add i64 %i.y, %3
  store i64 %i.z, ptr %i.c, align 8
  %i.aa = inttoptr i64 %3 to ptr
  %i.ab = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.aa, 1
  ret { i64, ptr } %i.ab
}

; Function Attrs: nonlazybind uwtable
define noundef { i64, ptr } @"_ZN123_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$13poll_shutdown17h7a9e67d67adcdc05E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h50fc32754dcc6d89E"(ptr nonnull align 8 %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @"_ZN123_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$17is_write_vectored17h42a5637df159bb6fE"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN123_$LT$std..io..cursor..Cursor$LT$$RF$mut$u20$alloc..vec..Vec$LT$u8$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h915409d34b95ddf1E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1, ptr align 8 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h50fc32754dcc6d89E"(ptr nonnull align 8 %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = call { i64, ptr } @_ZN3std2io6cursor22vec_write_all_vectored17hc281610fe7b8b28fE(ptr nonnull align 8 %i.c, ptr align 8 %i.d, ptr align 8 %2, i64 %3)
  ret { i64, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef { i64, ptr } @"_ZN123_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_flush17hf46e72f460667ca5E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h6295f2b7399d1d42E"(ptr nonnull align 8 %i.a) ; 0 uses
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN123_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_write17h3be5b2a311343e9cE"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1, ptr align 1 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h6295f2b7399d1d42E"(ptr nonnull align 8 %i.b) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = load i64, ptr %i.d, align 8
  %i.i = call i64 @_ZN4core3cmp3Ord3min17he3c2fba5ad8f4756E(i64 %i.h, i64 %i.g)
  %i.j = call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hadea29a68ed30e35E"(i64 %i.i, ptr align 1 %i.e, i64 %i.g, ptr nonnull align 8 @6) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  store ptr %i.k, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = call { i64, ptr } @"_ZN3std2io5impls69_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$$u5b$u8$u5d$$GT$5write17hf949520b31c438d6E"(ptr nonnull align 8 %i.a, ptr align 1 %2, i64 %3) ; 2 uses
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 2 uses
  %i.q = trunc nuw i64 %i.o to i1
  br i1 %i.q, label %"_ZN107_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h1bb8b969441fad45E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = load i64, ptr %i.d, align 8
  %i.t = add i64 %i.s, %i.r
  store i64 %i.t, ptr %i.d, align 8
  br label %"_ZN107_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h1bb8b969441fad45E.exit"

"_ZN107_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h1bb8b969441fad45E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ 1, %bb.a ]
  %i.u = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i, 0
  %i.v = insertvalue { i64, ptr } %i.u, ptr %i.p, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.v
}

; Function Attrs: nonlazybind uwtable
define noundef { i64, ptr } @"_ZN123_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$13poll_shutdown17h6858274518176934E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h6295f2b7399d1d42E"(ptr nonnull align 8 %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @"_ZN123_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$17is_write_vectored17hb97d44d26c381fc1E"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN123_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17hd966f5fc5b275620E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1, ptr align 8 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h6295f2b7399d1d42E"(ptr nonnull align 8 %i.c) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3
  store ptr %2, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.a ], [ %i.ac, %bb.e ] ; 2 uses
  %i.l = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd450dc1590f26f7aE"(ptr nonnull align 8 %i.b) ; 3 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = load i64, ptr %i.e, align 8
  %i.q = call i64 @_ZN4core3cmp3Ord3min17he3c2fba5ad8f4756E(i64 %i.p, i64 %i.h)
  %i.r = call { ptr, i64 } @"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hadea29a68ed30e35E"(i64 %i.q, ptr align 1 %i.f, i64 %i.h, ptr nonnull align 8 @6) ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  store ptr %i.s, ptr %i.a, align 8
  store i64 %i.t, ptr %i.k, align 8
  %i.u = call { i64, ptr } @"_ZN3std2io5impls69_$LT$impl$u20$std..io..Write$u20$for$u20$$RF$mut$u20$$u5b$u8$u5d$$GT$5write17hf949520b31c438d6E"(ptr nonnull align 8 %i.a, ptr align 1 %i.m, i64 %i.o) ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.x = trunc nuw i64 %i.v to i1
  br i1 %i.x, label %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i.i, label %bb.e

_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN107_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$14write_vectored17h8a957f048e45e175E.exit"

bb.d:                                             ; preds = %bb.e, %bb.b
  %.sroa.01.1.i.i = phi i64 [ %i.ac, %bb.e ], [ %.sroa.01.0.i.i, %bb.b ]
  %i.y = inttoptr i64 %.sroa.01.1.i.i to ptr
  br label %"_ZN107_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$14write_vectored17h8a957f048e45e175E.exit"

bb.e:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.aa = load i64, ptr %i.e, align 8
  %i.ab = add i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = add i64 %.sroa.01.0.i.i, %i.z           ; 2 uses
  %i.ad = load i64, ptr %i.n, align 8
  %i.ae = icmp ugt i64 %i.ad, %i.z
  br i1 %i.ae, label %bb.d, label %bb.b

"_ZN107_$LT$std..io..cursor..Cursor$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$14write_vectored17h8a957f048e45e175E.exit": ; preds = %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i.i, %bb.d
  %.sroa.3.0.i.i = phi ptr [ %i.y, %bb.d ], [ %i.w, %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i.i ]
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.d ], [ 1, %_ZN3std2io6cursor11slice_write17hd4e386f21041e25bE.exit.thread.i.i ]
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %.sroa.3.0.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.ag
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN141_$LT$tokio..net..unix..datagram..socket..UnixDatagram$u20$as$u20$core..convert..TryFrom$LT$std..os..unix..net..datagram..UnixDatagram$GT$$GT$8try_from17hf283594b6fadc675E"(ptr sret([24 x i8]) align 8 %0, i32 %1) unnamed_addr #0 {
bb.a:
  tail call void @_ZN5tokio3net4unix8datagram6socket12UnixDatagram8from_std17hd9584b41231d9964E(ptr sret([24 x i8]) align 8 %0, i32 %1, ptr nonnull align 8 @1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, ptr } @"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h74b0f6e0e42af7dcE"(ptr align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2 ; 2 uses
  %i.c = tail call i64 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5eab958c36a80097E"(ptr %1, ptr %i.b, i64 0) ; 2 uses
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h61de6076a7a02d5fE"(ptr align 8 %0, i64 %i.c, ptr nonnull align 8 @3)
  store ptr %1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.d, align 8
  %i.e = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd450dc1590f26f7aE"(ptr nonnull align 8 %i.a) ; 2 uses
  %.not2 = icmp eq ptr %i.e, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.f = phi ptr [ %i.k, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hf4fb6bd6ba18bf21E"(ptr align 8 %0, ptr %i.g, ptr %i.j, ptr nonnull align 8 @4)
  %i.k = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd450dc1590f26f7aE"(ptr nonnull align 8 %i.a) ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.l = inttoptr i64 %i.c to ptr
  %i.m = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.l, 1
  ret { i64, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3std2io6cursor13vec_write_all17ha4031819df4031c1E(ptr nofree align 8 captures(none) %0, ptr align 8 %1, ptr nofree readonly align 1 captures(none) %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 6 uses
  %i.b = tail call i64 @llvm.uadd.sat.i64(i64 %i.a, i64 %3) ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp ugt i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = sub i64 %i.b, %i.f
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h61de6076a7a02d5fE"(ptr nonnull align 8 %1, i64 %i.g, ptr nonnull align 8 @7)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ugt i64 %i.a, %i.i
  br i1 %i.j, label %bb.d, label %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit

bb.d:                                             ; preds = %bb.c
  %i.k = sub nuw i64 %i.a, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  tail call void @"_ZN74_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..specialize..SpecFill$LT$T$GT$$GT$9spec_fill17hee34c76e4ec9bd02E"(ptr align 1 %i.n, i64 %i.k, i8 0)
  store i64 %i.a, ptr %i.h, align 8
  br label %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit

_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit: ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.q, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.r = add i64 %i.a, %3                         ; 2 uses
  %i.s = load i64, ptr %i.h, align 8
  %i.t = icmp ugt i64 %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit
  store i64 %i.r, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E.exit, %bb.e
  %i.u = load i64, ptr %0, align 8
  %i.v = add i64 %i.u, %3
  store i64 %i.v, ptr %0, align 8
  %i.w = inttoptr i64 %3 to ptr
  %i.x = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.w, 1
  ret { i64, ptr } %i.x
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN3std2io6cursor15reserve_and_pad17h8261be0c74672ca8E(ptr nofree readonly align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 5 uses
  %i.b = tail call i64 @llvm.uadd.sat.i64(i64 %i.a, i64 %2) ; 2 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = icmp ugt i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %i.g = sub i64 %i.b, %i.f
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h61de6076a7a02d5fE"(ptr nonnull align 8 %1, i64 %i.g, ptr nonnull align 8 @7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ugt i64 %i.a, %i.i
end_hunk_0
begin_hunk_1_@"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6a2d51ec5cf0a4c2E":bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h6154fba5550b2266E"(ptr align 1 %i.b, i64 %i.d, ptr align 8 %1)
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17haed5c0a415163a6cE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #14 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN67_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17haf890ea926b25feaE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #14 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @"_ZN69_$LT$std..net..tcp..TcpStream$u20$as$u20$std..os..fd..owned..AsFd$GT$5as_fd17h09c6184f0dbf1b55E"(ptr align 4 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @"_ZN92_$LT$std..sys..net..connection..socket..unix..Socket$u20$as$u20$std..os..fd..owned..AsFd$GT$5as_fd17h3f1d2012851dfcc1E"(ptr align 4 %0)
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0a8c21124d4127c0E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @"_ZN4core3ptr100drop_in_place$LT$$u5b$alloc..sync..Arc$LT$tokio..runtime..io..scheduled_io..ScheduledIo$GT$$u5d$$GT$17h5496a20924494462E"(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1c79acb8ed0af9b4E"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3788d46855dde61fE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @"_ZN4core3ptr54drop_in_place$LT$$u5b$core..task..wake..Waker$u5d$$GT$17h5db2fbe886672aceE"(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5036096b0d667633E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  tail call void @"_ZN4core3ptr164drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnOnce$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$u2b$core..marker..Send$GT$$u5d$$GT$17hd739e1d06e1432f8E"(ptr align 8 %i.b, i64 %i.d)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6a09733211d1c89bE"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9ef7e55fa3e57604E"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @"_ZN71_$LT$std..net..tcp..TcpListener$u20$as$u20$std..os..fd..owned..AsFd$GT$5as_fd17h01d1e37ea4df88dbE"(ptr align 4 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @"_ZN92_$LT$std..sys..net..connection..socket..unix..Socket$u20$as$u20$std..os..fd..owned..AsFd$GT$5as_fd17h3f1d2012851dfcc1E"(ptr align 4 %0)
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h68ed830ecbb87217E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @"_ZN72_$LT$core..sync..atomic..AtomicU64$u20$as$u20$core..default..Default$GT$7default17h44db2341e00dcad6E"() unnamed_addr #1 {
bb.a:
  ret i64 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @"_ZN74_$LT$core..sync..atomic..AtomicUsize$u20$as$u20$core..default..Default$GT$7default17h55a688b9966c4c58E"() unnamed_addr #1 {
bb.a:
  ret i64 0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN76_$LT$tokio..runtime..thread_id..ThreadId$u20$as$u20$core..cmp..PartialEq$GT$2eq17h8980464118b839b1E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @"_ZN77_$LT$core..num..nonzero..NonZero$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h379ca4eb08fafe0eE"(ptr align 8 %0, ptr align 8 %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$tokio..sync..watch..Sender$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd82e899709b30fcfE"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd35bfff8102fb1ddE"(ptr align 8 %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.c = tail call align 8 ptr @"_ZN87_$LT$tokio..loom..std..atomic_usize..AtomicUsize$u20$as$u20$core..ops..deref..Deref$GT$5deref17h64b30457ef2ed91bE"(ptr nonnull align 8 %i.b)
  %i.d = atomicrmw sub ptr %i.c, i64 1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd35bfff8102fb1ddE"(ptr align 8 %0)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  tail call void @_ZN5tokio4sync5watch5state11AtomicState10set_closed17h4f6d56b9e29059f7E(ptr nonnull align 8 %i.g)
  %i.h = tail call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd35bfff8102fb1ddE"(ptr align 8 %0)
  tail call void @_ZN5tokio4sync5watch10big_notify9BigNotify14notify_waiters17h022fdba6a4a024acE(ptr align 8 %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN79_$LT$tokio..sync..broadcast..error..RecvError$u20$as$u20$core..fmt..Display$GT$3fmt17ha2a3e91ec56320f8E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 2 uses
  %i.f = load i64, ptr %0, align 8
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.d, align 8
  call void @_ZN4core3fmt2rt8Argument11new_display17hd69d1c0937e18597E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hbef88af14ff79fc4E"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 @67, ptr nonnull align 8 %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h25f6a2091b391ad5E"(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr nonnull align 8 @65)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  %i.i = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h4063db46df39710cE(ptr align 8 %1, ptr nonnull align 8 %.sink)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$tokio..sync..watch..Receiver$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h73ec4faff36191bdE"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd35bfff8102fb1ddE"(ptr align 8 %0)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.c = tail call align 8 ptr @"_ZN87_$LT$tokio..loom..std..atomic_usize..AtomicUsize$u20$as$u20$core..ops..deref..Deref$GT$5deref17h64b30457ef2ed91bE"(ptr nonnull align 8 %i.b)
  %i.d = atomicrmw sub ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17hd35bfff8102fb1ddE"(ptr align 8 %0)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  tail call void @_ZN5tokio4sync6notify6Notify14notify_waiters17h57f0bc46f0f15bd7E(ptr nonnull align 8 %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef { i64, ptr } @"_ZN80_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_flush17ha4451af774c90a2aE"(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN80_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_write17h3f202ea399f37c38E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1, ptr align 1 %2, i64 %3) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h6de5e0c3583d8f25E"(ptr align 8 %0, ptr align 1 %2, i64 %3, ptr nonnull align 8 @69)
  %i.a = inttoptr i64 %3 to ptr
  %i.b = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.a, 1
  ret { i64, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef { i64, ptr } @"_ZN80_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$13poll_shutdown17h9a03d3911331d017E"(ptr nofree readnone align 8 captures(none) %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  ret { i64, ptr } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @"_ZN80_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$17is_write_vectored17h9d8402ebbb04dab5E"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #3 {
bb.a:
  ret i1 true
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN80_$LT$alloc..vec..Vec$LT$u8$GT$$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17he7fb69db7b0df6e2E"(ptr align 8 %0, ptr nofree readnone align 8 captures(none) %1, ptr align 8 %2, i64 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = call align 8 ptr @"_ZN72_$LT$core..pin..Pin$LT$Ptr$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h710be565c987ceccE"(ptr nonnull align 8 %i.b) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3 ; 2 uses
  %i.e = call i64 @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5eab958c36a80097E"(ptr align 8 %2, ptr %i.d, i64 0) ; 2 uses
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h61de6076a7a02d5fE"(ptr align 8 %i.c, i64 %i.e, ptr nonnull align 8 @3)
  store ptr %2, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.f, align 8
  %i.g = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd450dc1590f26f7aE"(ptr nonnull align 8 %i.a) ; 2 uses
  %.not2.i = icmp eq ptr %i.g, null
  br i1 %.not2.i, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h74b0f6e0e42af7dcE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.h = phi ptr [ %i.m, %.lr.ph.i ], [ %i.g, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hf4fb6bd6ba18bf21E"(ptr align 8 %i.c, ptr %i.i, ptr %i.l, ptr nonnull align 8 @4)
  %i.m = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd450dc1590f26f7aE"(ptr nonnull align 8 %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h74b0f6e0e42af7dcE.exit", label %.lr.ph.i

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$14write_vectored17h74b0f6e0e42af7dcE.exit": ; preds = %.lr.ph.i, %bb.a
  %i.n = inttoptr i64 %i.e to ptr
  %i.o = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.n, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN82_$LT$tokio..sync..broadcast..error..TryRecvError$u20$as$u20$core..fmt..Display$GT$3fmt17h9c4a835ae0439cc4E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  %i.e = alloca [48 x i8], align 8                ; 2 uses
  %i.f = alloca [48 x i8], align 8                ; 2 uses
  %i.g = load i64, ptr %0, align 8
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h25f6a2091b391ad5E"(ptr nonnull sret([48 x i8]) align 8 %i.f, ptr nonnull align 8 @71)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$9new_const17h25f6a2091b391ad5E"(ptr nonnull sret([48 x i8]) align 8 %i.e, ptr nonnull align 8 @65)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.d, align 8
  call void @_ZN4core3fmt2rt8Argument11new_display17hd69d1c0937e18597E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117hbef88af14ff79fc4E"(ptr nonnull sret([48 x i8]) align 8 %i.c, ptr nonnull align 8 @67, ptr nonnull align 8 %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi ptr [ %i.c, %bb.e ], [ %i.e, %bb.d ], [ %i.f, %bb.c ]
  %i.i = call zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h4063db46df39710cE(ptr align 8 %1, ptr nonnull align 8 %.sink)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN85_$LT$tokio..net..unix..datagram..socket..UnixDatagram$u20$as$u20$core..fmt..Debug$GT$3fmt17h5c18493f1534b526E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 4 ptr @"_ZN89_$LT$tokio..io..poll_evented..PollEvented$LT$E$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6b12a1688d4124b4E"(ptr align 8 %0)
  %i.b = tail call zeroext i1 @"_ZN74_$LT$mio..net..uds..datagram..UnixDatagram$u20$as$u20$core..fmt..Debug$GT$3fmt17h8ff156eab992f5d8E"(ptr align 4 %i.a, ptr align 8 %1)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h757b5b83b1adbd64E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #17 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload
  store ptr %.sroa.2.0.copyload, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #17 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.3.0.copyload
  store ptr %.sroa.2.0.copyload, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define i32 @"_ZN93_$LT$tokio..net..unix..datagram..socket..UnixDatagram$u20$as$u20$std..os..fd..owned..AsFd$GT$5as_fd17h128064a3fa68b27cE"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 4 ptr @"_ZN89_$LT$tokio..io..poll_evented..PollEvented$LT$E$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6b12a1688d4124b4E"(ptr align 8 %0)
  %i.b = tail call i32 @"_ZN83_$LT$mio..net..uds..datagram..UnixDatagram$u20$as$u20$std..os..fd..raw..AsRawFd$GT$9as_raw_fd17hfcb404a35f6111acE"(ptr align 4 %i.a)
  %i.c = tail call i32 @_ZN3std2os2fd5owned10BorrowedFd10borrow_raw17h1aad4815610ce79fE(i32 %i.b, ptr nonnull align 8 @72)
  ret i32 %i.c
}

; Function Attrs: nonlazybind uwtable
define i32 @"_ZN94_$LT$tokio..net..unix..datagram..socket..UnixDatagram$u20$as$u20$std..os..fd..raw..AsRawFd$GT$9as_raw_fd17h9627fb6e84c9cb56E"(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call align 4 ptr @"_ZN89_$LT$tokio..io..poll_evented..PollEvented$LT$E$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h6b12a1688d4124b4E"(ptr align 8 %0)
  %i.b = tail call i32 @"_ZN83_$LT$mio..net..uds..datagram..UnixDatagram$u20$as$u20$std..os..fd..raw..AsRawFd$GT$9as_raw_fd17hfcb404a35f6111acE"(ptr align 4 %i.a)
  ret i32 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN94_$LT$tokio..runtime..local_runtime..runtime..LocalRuntime$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd68f49cd0cb90a36E"(ptr align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN5tokio7runtime7context7current15try_set_current17h65db65d9bc862663E(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %0)
  invoke void @_ZN5tokio7runtime9scheduler14current_thread13CurrentThread8shutdown17h4b8958c82ea084d6E(ptr nonnull align 8 %i.b, ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$tokio..runtime..context..current..SetCurrentGuard$GT$$GT$17h5ce893d35dc2404fE"(ptr nonnull align 8 %i.a) #27
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$tokio..runtime..context..current..SetCurrentGuard$GT$$GT$17h5ce893d35dc2404fE"(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #26
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$14write_vectored17h690d387c927d14c0E"(ptr align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call { i64, ptr } @_ZN3std2io6cursor22vec_write_all_vectored17hc281610fe7b8b28fE(ptr nonnull align 8 %i.a, ptr align 8 %0, ptr align 8 %1, i64 %2)
  ret { i64, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noalias noundef ptr @"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5flush17hb8e08c2bc87b8bb6E"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @"_ZN95_$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$C$A$GT$$GT$$u20$as$u20$std..io..Write$GT$5write17h967445751cd6d81fE"(ptr align 8 %0, ptr nofree readonly align 1 captures(none) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %i.c = tail call i64 @llvm.uadd.sat.i64(i64 %i.b, i64 %2) ; 2 uses
  %i.d = load i64, ptr %0, align 8
end_hunk_1
