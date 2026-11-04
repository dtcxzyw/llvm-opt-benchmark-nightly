Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/socket2-ce96d3b4595668c3.socket2.9d591ca161194eef-cgu.2?download=true
inline.NumInlined: 28
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [91 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/std/src/io/error/repr_bitpacked.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"Z\00\00\00\00\00\00\00\11\01\00\00\1A\00\00\00" }>, align 8
@2 = private unnamed_addr constant [8 x i8] c"fd != -1", align 1
@3 = private unnamed_addr constant [77 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/std/src/os/fd/net.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"L\00\00\00\00\00\00\00!\00\00\00\01\00\00\00" }>, align 8
@5 = private unnamed_addr constant [28 x i8] c"assertion failed: min <= max", align 1
@6 = private unnamed_addr constant [72 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/core/src/cmp.rs\00", align 1
@7 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @6, [16 x i8] c"G\00\00\00\00\00\00\00D\04\00\00\09\00\00\00" }>, align 8
@8 = private unnamed_addr constant [84 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/core/src/str/validations.rs\00", align 1
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"S\00\00\00\00\00\00\000\00\00\00$\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"S\00\00\00\00\00\00\007\00\00\00(\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @8, [16 x i8] c"S\00\00\00\00\00\00\00?\00\00\00,\00\00\00" }>, align 8
@12 = private unnamed_addr constant [199 x i8] c"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@13 = private unnamed_addr constant [25 x i8] c"overflow in Duration::new", align 1
@14 = private unnamed_addr constant [73 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/core/src/time.rs\00", align 1
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"H\00\00\00\00\00\00\00\C9\00\00\00\12\00\00\00" }>, align 8
@16 = private unnamed_addr constant [35 x i8] c"overflow when subtracting durations", align 1
@17 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"H\00\00\00\00\00\00\00\8D\04\00\00\1F\00\00\00" }>, align 8
@18 = private unnamed_addr constant [7 x i8] c"SockRef", align 1
@19 = private unnamed_addr constant [3 x i8] c"raw", align 1
@20 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h04579640a6d12344E" }>, align 8
@21 = private unnamed_addr constant [10 x i8] c"local_addr", align 1
@22 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\90\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h747890f6cd353507E" }>, align 8
@23 = private unnamed_addr constant [9 x i8] c"peer_addr", align 1
@24 = private unnamed_addr constant [4 x i8] c"None", align 1
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h09866a54e23a2266E" }>, align 8
@26 = private unnamed_addr constant [4 x i8] c"Some", align 1
@27 = private unnamed_addr constant [86 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/std/src/os/unix/net/stream.rs\00", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @27, [16 x i8] c"U\00\00\00\00\00\00\00\BD\02\00\00=\00\00\00" }>, align 8
@29 = private unnamed_addr constant [75 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/alloc/src/slice.rs\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"J\00\00\00\00\00\00\00\BD\01\00\00\1D\00\00\00" }>, align 8
@31 = private unnamed_addr constant [88 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/std/src/os/unix/net/datagram.rs\00", align 1
@32 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @31, [16 x i8] c"W\00\00\00\00\00\00\00\D1\03\00\00?\00\00\00" }>, align 8
@33 = private unnamed_addr constant [88 x i8] c"/rustc/ed61e7d7e242494fb7057f2657300d9e77bb4fcb/library/std/src/os/unix/net/listener.rs\00", align 1
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @33, [16 x i8] c"W\00\00\00\00\00\00\00C\01\00\00?\00\00\00" }>, align 8

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN100_$LT$core..net..ip_addr..Ipv6Addr$u20$as$u20$core..convert..From$LT$$u5b$u8$u3b$$u20$16$u5d$$GT$$GT$4from17h52ea82e657aa20e4E"(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN145_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..option..Option$LT$core..convert..Infallible$GT$$GT$$GT$13from_residual17hcb5f53fdb612f332E"(ptr nofree writeonly sret([120 x i8]) align 4 captures(none) initializes((0, 4)) %0) unnamed_addr #1 {
bb.a:
  store i32 0, ptr %0, align 4
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_ZN3std2io5error14repr_bitpacked11decode_repr17h05600539e446acf4E(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) %0, ptr %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable8 [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

default.unreachable8:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not = icmp ugt ptr %1, inttoptr (i64 180388626431 to ptr)
  br i1 %.not, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.i = lshr i64 %i.a, 32
  %spec.select.i = trunc i64 %i.i to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select.i, ptr %i.j, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call fastcc void @_ZN4core4hint21unreachable_unchecked18precondition_check17h523c0ab19bddac2fE(ptr nonnull align 8 @1) #17
  unreachable

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.e
  %.sink = phi i8 [ 0, %bb.b ], [ 2, %bb.d ], [ 1, %bb.f ], [ 3, %bb.e ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define void @_ZN3std2io5error14repr_bitpacked11decode_repr17hd7d8d711b037539dE(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) %0, ptr %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable8 [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

default.unreachable8:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.a, 32
  %i.d = trunc nuw i64 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.d, ptr %i.e, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not = icmp ugt ptr %1, inttoptr (i64 180388626431 to ptr)
  br i1 %.not, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.f, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.h, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.i = lshr i64 %i.a, 32
  %spec.select.i = trunc i64 %i.i to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select.i, ptr %i.j, align 1
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call fastcc void @_ZN4core4hint21unreachable_unchecked18precondition_check17h523c0ab19bddac2fE(ptr nonnull align 8 @1) #17
  unreachable

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.e
  %.sink = phi i8 [ 0, %bb.b ], [ 2, %bb.d ], [ 1, %bb.f ], [ 3, %bb.e ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @"_ZN3std2io5error14repr_bitpacked4Repr4data28_$u7b$$u7b$closure$u7d$$u7d$17h796a30c59fe8dc17E"(ptr nofree readnone returned captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden { i32, i32 } @_ZN3std2io5error5Error12raw_os_error17h2ba1b28a00d868ceE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %bb.b
    i64 0, label %_ZN3std2io5error14repr_bitpacked11decode_repr17hd7d8d711b037539dE.exit.thread
    i64 1, label %_ZN3std2io5error14repr_bitpacked11decode_repr17hd7d8d711b037539dE.exit.thread
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ugt ptr %i.a, inttoptr (i64 180388626431 to ptr)
  br i1 %.not.i, label %bb.c, label %_ZN3std2io5error14repr_bitpacked11decode_repr17hd7d8d711b037539dE.exit.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN4core4hint21unreachable_unchecked18precondition_check17h523c0ab19bddac2fE(ptr nonnull align 8 @1) #17
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 32
  %i.e = trunc nuw i64 %i.d to i32
  br label %_ZN3std2io5error14repr_bitpacked11decode_repr17hd7d8d711b037539dE.exit.thread

_ZN3std2io5error14repr_bitpacked11decode_repr17hd7d8d711b037539dE.exit.thread: ; preds = %bb.b, %bb.a, %bb.a, %bb.d
  %.sroa.0.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.b ]
  %i.f = phi i32 [ %i.e, %bb.d ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.b ]
  %i.g = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.h = insertvalue { i32, i32 } %i.g, i32 %i.f, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden nonnull ptr @_ZN3std2io5error5Error13last_os_error17hfb456353084bdedeE() unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @__errno_location() #17
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 32
  %i.e = or disjoint i64 %i.d, 2
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN3std2io5error5Error17from_raw_os_error17h0bb83ccdae1b136eE(i32 %0) unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = shl nsw i64 %i.a, 32
  %i.c = or disjoint i64 %i.b, 2
  %i.d = inttoptr i64 %i.c to ptr
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i8 @_ZN3std2io5error5Error4kind17hbfdcafd51671ea57E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %bb.b
    i64 0, label %bb.f
    i64 1, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ugt ptr %i.a, inttoptr (i64 180388626431 to ptr)
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN4core4hint21unreachable_unchecked18precondition_check17h523c0ab19bddac2fE(ptr nonnull align 8 @1) #17
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = tail call i8 @_ZN3std3sys3pal4unix17decode_error_kind17hb1f31c9827fa3096E(i32 %i.e)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.b, 32
  %spec.select.i.i = trunc i64 %i.g to i8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i8, ptr %i.h, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.a, i64 15
  %i.k = load i8, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ %i.f, %bb.d ], [ %spec.select.i.i, %bb.e ], [ %i.i, %bb.f ], [ %i.k, %bb.g ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN3std2os2fd3net82_$LT$impl$u20$std..os..fd..raw..IntoRawFd$u20$for$u20$std..net..udp..UdpSocket$GT$11into_raw_fd17ha77bba827c5e97a9E"(i32 returned %0) unnamed_addr #3 {
bb.a:
  ret i32 %0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN3std2os4unix3net4addr10SocketAddr13from_pathname17hbdbd07ac583ea36dE(ptr nofree writeonly sret([120 x i8]) align 8 captures(none) initializes((0, 4), (8, 16)) %0, ptr align 1 %1, i64 %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = call { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h0652f2423a0fdb7cE"(ptr nonnull align 8 %i.b) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  call void @_ZN3std2os4unix3net4addr11sockaddr_un17h228ff38a23af502bE(ptr nonnull sret([120 x i8]) align 8 %i.a, ptr align 1 %i.e, i64 %i.f)
  %i.g = load i32, ptr %i.a, align 8
  %i.h = trunc i32 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(110) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(110) %i.l, i64 110, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.n, ptr %i.o, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_ZN3std3sys2fs4unix23debug_assert_fd_is_open17h0a475e148756e58dE(i32 %0) unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN41_$LT$bool$u20$as$u20$core..fmt..Debug$GT$3fmt17hb6c6cdc7c6769ba3E"(ptr align 1 %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call zeroext i1 @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17ha9a489cf5bee443fE"(ptr align 1 %0, ptr align 8 %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN4core10intrinsics23is_val_statically_known17h967c867c1be34ad1E(i1 zeroext %0) unnamed_addr #7 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @_ZN4core3cmp10PartialOrd2ge17he2840c1c4c933ac6E(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = load i64, ptr %1, align 8                ; 2 uses
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp uge i32 %i.e, %i.g
  br label %"_ZN62_$LT$core..time..Duration$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfd2a8700e4d08f6E.exit"

bb.c:                                             ; preds = %bb.a
  %i.i = icmp uge i64 %i.a, %i.b
  br label %"_ZN62_$LT$core..time..Duration$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfd2a8700e4d08f6E.exit"

"_ZN62_$LT$core..time..Duration$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hbfd2a8700e4d08f6E.exit": ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_ZN4core3cmp3Ord3max17hc00b886cd1a34a21E(i64 %0, i64 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_ZN4core3cmp3Ord3min17h8befc36ab037aafaE(i64 %0, i64 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i128 @_ZN4core3cmp3Ord3min17hdbc738a092d52484E(i128 %0, i128 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i128 @llvm.umin.i128(i128 %1, i128 %0)
  ret i128 %.sroa.0.0.sroa.speculated
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_ZN4core3cmp3Ord3min17he3c2fba5ad8f4756E(i64 %0, i64 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: inlinehint nonlazybind uwtable
define i128 @_ZN4core3cmp3Ord5clamp17h45c3447d2d95d554E(i128 %0, i128 %1, i128 %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp ugt i128 %1, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr nonnull align 1 @5, i64 28, ptr nonnull align 8 @7) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = icmp ult i128 %0, %1
  %.sroa.0.0.in.sroa.speculate.load.6.sroa.speculated = tail call i128 @llvm.umin.i128(i128 %0, i128 %2)
  %.sroa.0.0.in.sroa.speculated = select i1 %i.a, i128 %1, i128 %.sroa.0.0.in.sroa.speculate.load.6.sroa.speculated
  ret i128 %.sroa.0.0.in.sroa.speculated
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_ZN4core3cmp3min17h45d1f18c856e997fE(i64 %0, i64 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_ZN4core3cmp3min17h7ea8717f67e79f62E(i64 %0, i64 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i128 @_ZN4core3cmp3min17hb2d7f1b899b54eacE(i128 %0, i128 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated.i = tail call i128 @llvm.umin.i128(i128 %1, i128 %0)
  ret i128 %.sroa.0.0.sroa.speculated.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h516a2e6ce30523c7E"(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u5d$$GT$$u20$for$u20$$u5b$T$u5d$$GT$2eq17h14738e349c2595a4E"(ptr align 1 %i.a, i64 %i.c, ptr align 1 %i.d, i64 %i.f)
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h6201d5bdb75e94b1E"(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h28570bb30db51d2cE(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.e = call zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr align 1 %i.d, ptr align 8 %i.c, ptr nonnull align 8 %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 1 ptr @_ZN4core3net11socket_addr12SocketAddrV42ip17hba40fcbf8ea9ff14E(ptr nofree readnone returned align 2 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i48 @_ZN4core3net11socket_addr12SocketAddrV43new17he06cf2e0d2f4770cE(i32 %0, i16 %1) unnamed_addr #3 {
bb.a:
  %.sroa.2.0.insert.ext = zext i16 %1 to i48
  %.sroa.2.0.insert.shift = shl nuw i48 %.sroa.2.0.insert.ext, 32
  %.sroa.03.0.insert.ext = zext i32 %0 to i48
  %.sroa.03.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.shift, %.sroa.03.0.insert.ext
  ret i48 %.sroa.03.0.insert.insert
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i16 @_ZN4core3net11socket_addr12SocketAddrV44port17h4fc15a1f77444172E(ptr nofree readonly align 2 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i16, ptr %i.a, align 2
  ret i16 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden align 1 ptr @_ZN4core3net11socket_addr12SocketAddrV62ip17h8a79c49d21b40cc7E(ptr nofree readnone returned align 4 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4core3net11socket_addr12SocketAddrV63new17h446beb7dd9cc3614E(ptr nofree writeonly sret([28 x i8]) align 4 captures(none) initializes((0, 26)) %0, ptr nofree readonly align 1 captures(none) %1, i16 %2, i32 %3, i32 %4) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %3, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %4, ptr %i.c, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i16 @_ZN4core3net11socket_addr12SocketAddrV64port17h7fa6c7dee0c0a7ccE(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 4
  ret i16 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @_ZN4core3net11socket_addr12SocketAddrV68flowinfo17h384a8cc1a040fee8E(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @_ZN4core3net11socket_addr12SocketAddrV68scope_id17hcc7e58ce57800db4E(ptr nofree readonly align 4 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i32 @_ZN4core3net7ip_addr8Ipv4Addr6octets17h4e30df8bc066ccc7E(ptr nofree readonly align 1 captures(none) %0) unnamed_addr #8 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %0, align 1
  ret i32 %.sroa.0.0.copyload
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4core3net7ip_addr8Ipv6Addr6octets17h4fc294c95e66b9aeE(ptr nofree writeonly sret([16 x i8]) align 1 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$11to_ne_bytes17hdf377f93c8542ab6E"(i32 returned %0) unnamed_addr #3 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN4core3num21_$LT$impl$u20$u32$GT$13from_ne_bytes17h463f0e3c9bf83eddE"(i32 returned %0) unnamed_addr #3 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define { i32, i32 } @_ZN4core3str11validations15next_code_point17ha1e55450b5bb6769E(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit.thread", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit": ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %i.e, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit.thread", label %bb.b

bb.b:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit"
  %i.f = load i8, ptr %i.a, align 1               ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.c

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit.thread": ; preds = %bb.a, %bb.e, %bb.i, %bb.g, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit", %bb.d
  %.sroa.4.0 = phi i32 [ %i.m, %bb.d ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit" ], [ %i.an, %bb.i ], [ %i.ac, %bb.g ], [ %i.s, %bb.e ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ 1, %bb.d ], [ 0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit" ], [ 1, %bb.i ], [ 1, %bb.g ], [ 1, %bb.e ], [ 0, %bb.a ]
  %i.h = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.i = insertvalue { i32, i32 } %i.h, i32 %.sroa.4.0, 1
  ret { i32, i32 } %i.i

bb.c:                                             ; preds = %bb.b
  %i.j = and i8 %i.f, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp eq ptr %i.e, %i.c
  br i1 %i.l, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit15.thread", label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.f to i32
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit.thread"

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  store ptr %i.n, ptr %0, align 8
  %i.o = load i8, ptr %i.e, align 1
  %i.p = shl nuw nsw i32 %i.k, 6
  %i.q = and i8 %i.o, 63
  %i.r = zext nneg i8 %i.q to i32                 ; 2 uses
  %i.s = or disjoint i32 %i.p, %i.r
  %i.t = icmp samesign ugt i8 %i.f, -33
  br i1 %i.t, label %bb.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit.thread"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit15.thread": ; preds = %bb.c
  tail call fastcc void @_ZN4core4hint21unreachable_unchecked18precondition_check17h523c0ab19bddac2fE(ptr nonnull align 8 @9) #17
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.n, %i.c
  br i1 %i.u, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit17.thread", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 3 uses
  store ptr %i.v, ptr %0, align 8
  %i.w = load i8, ptr %i.n, align 1
  %i.x = shl nuw nsw i32 %i.r, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ad, label %bb.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit.thread"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit17.thread": ; preds = %bb.f
  tail call fastcc void @_ZN4core4hint21unreachable_unchecked18precondition_check17h523c0ab19bddac2fE(ptr nonnull align 8 @10) #17
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq ptr %i.v, %i.c
  br i1 %i.ae, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit19.thread", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.af, ptr %0, align 8
  %i.ag = load i8, ptr %i.v, align 1
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit.thread"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E.exit19.thread": ; preds = %bb.h
  tail call fastcc void @_ZN4core4hint21unreachable_unchecked18precondition_check17h523c0ab19bddac2fE(ptr nonnull align 8 @11) #17
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h5354088b4b2b891fE"(i64 %0, ptr align 1 %1, i64 %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ult i64 %0, %2
  br i1 %.not, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.b = icmp eq i64 %0, %2
  br i1 %i.b, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %0
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp sgt i8 %i.d, -65
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split, %bb.c, %bb.e
  %.sroa.3.0 = phi i64 [ %i.h, %bb.e ], [ undef, %bb.c ], [ undef, %.split ]
  %.sroa.0.0 = phi ptr [ %i.i, %bb.e ], [ null, %bb.c ], [ null, %.split ]
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.g

bb.e:                                             ; preds = %.split, %bb.c, %bb.a
  %i.h = sub nuw i64 %2, %0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %0
  br label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN4core4bool22_$LT$impl$u20$bool$GT$4then17h0a43b19bca4a6e9aE"(i1 zeroext %0, ptr align 8 %1, ptr align 2 %2) unnamed_addr #5 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { ptr, i64 } @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$11as_pathname28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h72d2e167ad10b410E"(ptr align 8 %1, ptr align 2 %2) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define align 2 ptr @"_ZN4core4bool22_$LT$impl$u20$bool$GT$4then17h7be0b8deb0cc0302E"(i1 zeroext %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 2 ptr @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$14as_sockaddr_un28_$u7b$$u7b$closure$u7d$$u7d$17h3a48a04ff3e3e32dE"(ptr align 8 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN4core4bool22_$LT$impl$u20$bool$GT$4then17hcc6a473165370e55E"(i1 zeroext %0, ptr align 8 %1, ptr align 2 %2) unnamed_addr #5 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { ptr, i64 } @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$21as_abstract_namespace28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hef73632f4ecc7bb4E"(ptr align 8 %1, ptr align 2 %2) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: cold inlinehint noreturn nounwind nonlazybind uwtable
define internal fastcc void @_ZN4core4hint21unreachable_unchecked18precondition_check17h523c0ab19bddac2fE(ptr align 8 %0) unnamed_addr #9 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  store ptr @12, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 199, ptr %i.c, align 8
  store ptr %i.a, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.g, align 8
  call void @_ZN4core9panicking18panic_nounwind_fmt17h622822847ebd61beE(ptr nonnull align 8 %i.b, i1 zeroext false, ptr align 8 %0) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i32 } @_ZN4core4time8Duration11from_millis17h9cbbaf85adef1a88E(i64 %0) unnamed_addr #3 {
bb.a:
  %i.a = udiv i64 %0, 1000
  %i.b = urem i64 %0, 1000
  %i.c = trunc nuw nsw i64 %i.b to i32
  %i.d = mul nuw nsw i32 %i.c, 1000000
  %i.e = insertvalue { i64, i32 } poison, i64 %i.a, 0
  %i.f = insertvalue { i64, i32 } %i.e, i32 %i.d, 1
  ret { i64, i32 } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 4294968) i32 @_ZN4core4time8Duration13subsec_micros17hec24aa7538e699faE(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = udiv i32 %i.b, 1000
  ret i32 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i32 } @_ZN4core4time8Duration3new17hf79334f7c042251cE(i64 %0, i32 %1) unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i32 %1, 1000000000
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = udiv i32 %1, 1000000000
  %i.c = urem i32 %1, 1000000000
  %i.d = zext nneg i32 %i.b to i64
  %i.e = add i64 %0, %i.d                         ; 2 uses
  %i.f = icmp ult i64 %i.e, %0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr nonnull align 1 @13, i64 25, ptr nonnull align 8 @15) #18
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0 = phi i32 [ %1, %bb.a ], [ %i.c, %bb.b ]
  %.sroa.0.0 = phi i64 [ %0, %bb.a ], [ %i.e, %bb.b ]
  %i.g = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i64, i32 } %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZN4core4time8Duration7as_secs17hdd4d56d886b136d5E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  ret i64 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden range(i128 0, 18446744073709551619295) i128 @_ZN4core4time8Duration9as_millis17he38d2b054d1fef54E(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = zext i64 %i.a to i128
  %i.c = mul nuw nsw i128 %i.b, 1000
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = udiv i32 %i.e, 1000000
  %i.g = zext nneg i32 %i.f to i128
  %i.h = add nuw nsw i128 %i.c, %i.g
  ret i128 %i.h
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i32 } @_ZN4core4time8Duration9from_secs17h5c9ce1e4e4f6a9bbE(i64 %0) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { i64, i32 } poison, i64 %0, 0
  %i.b = insertvalue { i64, i32 } %i.a, i32 0, 1
  ret { i64, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 1 ptr @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$5first17h4a0a0bd4afbff8c3E"(ptr nofree readnone align 1 captures(ret: address, provenance) %0, i64 %1) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i64 %1, 0
  %. = select i1 %.not, ptr null, ptr %0
  ret ptr %.
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17h53f1b78c11557109E(ptr %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_ZN4core5slice3raw14from_raw_parts17h6624d0f0de25e6dcE(ptr %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @_ZN4core5slice3raw18from_raw_parts_mut17hf692ae50a317ed74E(ptr %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @"_ZN4core6option15Option$LT$T$GT$17unwrap_or_default17h7889b8032fc3ba35E"(i8 %0) unnamed_addr #3 {
bb.a:
  %spec.select = trunc i8 %0 to i1
  ret i1 %spec.select
}

; Function Attrs: inlinehint nonlazybind uwtable
define range(i8 0, 3) i8 @"_ZN4core6option15Option$LT$T$GT$3map17ha5c505ce29ff2a80E"(ptr align 2 %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$10is_unnamed28_$u7b$$u7b$closure$u7d$$u7d$17hb2689dec0096c500E"(ptr align 8 %1, ptr nonnull align 2 %0)
  %i.b = zext i1 %i.a to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i8 [ %i.b, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @"_ZN4core6option15Option$LT$T$GT$6map_or17h0a995ba75bd49314E"(i32 %0, i32 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_ZN4core3ops8function6FnOnce9call_once17h0f1695321cdf89cfE(i32 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i32 [ %i.a, %bb.b ], [ %1, %bb.a ]
  ret i32 %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @"_ZN4core6option15Option$LT$T$GT$6map_or17h2d877ea8b601012aE"(i32 %0, i32 %1, i32 %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i32 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @"_ZN7socket26socket6Socket7new_raw28_$u7b$$u7b$closure$u7d$$u7d$17h45a803ca18bab0c1E"(i32 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i32 [ %i.b, %bb.b ], [ %2, %bb.a ]
  ret i32 %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @"_ZN4core6option15Option$LT$T$GT$6map_or17hd510b640bd12027aE"(i32 %0, i32 %1, i32 %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = trunc i32 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @"_ZN7socket26socket6Socket8pair_raw28_$u7b$$u7b$closure$u7d$$u7d$17h469aa2c535bc971fE"(i32 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i32 [ %i.b, %bb.b ], [ %2, %bb.a ]
  ret i32 %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @"_ZN4core6option15Option$LT$T$GT$6map_or17he7d4dd26887a61e4E"(i64 %0, i32 %1, i32 %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i32 %1, 1000000000
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @"_ZN7socket23sys41_$LT$impl$u20$socket2..socket..Socket$GT$20set_tcp_user_timeout28_$u7b$$u7b$closure$u7d$$u7d$17h722e74882b3591e5E"(i64 %0, i32 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi i32 [ %i.a, %bb.b ], [ %2, %bb.a ]
  ret i32 %.sroa.03.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$8and_then17h8be9c47550f87ea8E"(ptr align 2 %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { ptr, i64 } @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$11as_pathname28_$u7b$$u7b$closure$u7d$$u7d$17hbf42949f5e58a8b5E"(ptr align 8 %1, ptr nonnull align 2 %0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$8and_then17had9960789a0dd40aE"(ptr align 2 %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { ptr, i64 } @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$21as_abstract_namespace28_$u7b$$u7b$closure$u7d$$u7d$17h9f478f97484a177aE"(ptr align 8 %1, ptr nonnull align 2 %0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ]
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.02.0, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define nonnull ptr @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h4359dffc19a55cccE"(i8 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = shl nuw nsw i64 %i.a, 32
  %i.c = or disjoint i64 %i.b, 3
  %i.d = inttoptr i64 %i.c to ptr
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h94cad9ffa75a543dE"(ptr sret([136 x i8]) align 8 %0, i48 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  tail call void @"_ZN111_$LT$socket2..sockaddr..SockAddr$u20$as$u20$core..convert..From$LT$core..net..socket_addr..SocketAddrV4$GT$$GT$4from17hd04c18b72f254cb3E"(ptr sret([136 x i8]) align 8 %0, i48 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hc7450498f9d22d33E"(ptr sret([136 x i8]) align 8 %0, ptr align 4 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  tail call void @"_ZN111_$LT$socket2..sockaddr..SockAddr$u20$as$u20$core..convert..From$LT$core..net..socket_addr..SocketAddrV6$GT$$GT$4from17h94166250cea86e64E"(ptr sret([136 x i8]) align 8 %0, ptr align 4 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hef997416cab53326E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 1 captures(none) %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hbd471b5e2d55a4f0E"(i64 %2, i64 1, i64 1, ptr nonnull align 8 @30) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr readonly align 1 %1, i64 %2, i1 false)
  store i64 %i.b, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17hd9fd864a1f242099E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 1 captures(none) %1, i64 %2) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hbd471b5e2d55a4f0E"(i64 %2, i64 1, i64 1, ptr nonnull align 8 @30) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr readonly align 1 %1, i64 %2, i1 false)
  store i64 %i.b, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i64, i32 } @"_ZN62_$LT$core..time..Duration$u20$as$u20$core..ops..arith..Sub$GT$3sub17ha172909ea40dc8bcE"(i64 %0, i32 %1, i64 %2, i32 %3) unnamed_addr #5 {
bb.a:
  %i.a = icmp ult i64 %0, %2
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i64 %0, %2                       ; 3 uses
  %.not.i = icmp ult i32 %1, %3
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add i64 %i.b, -1
  %i.e = add i32 %1, 1000000000
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.02.0.i = phi i64 [ %i.d, %bb.d ], [ %i.b, %bb.b ] ; 3 uses
  %.pn.i = phi i32 [ %i.e, %bb.d ], [ %1, %bb.b ]
  %.sroa.04.0.i = sub i32 %.pn.i, %3              ; 4 uses
  %i.f = icmp ult i32 %.sroa.04.0.i, 1000000000
  br i1 %i.f, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = udiv i32 %.sroa.04.0.i, 1000000000
  %i.h = urem i32 %.sroa.04.0.i, 1000000000
  %i.i = zext nneg i32 %i.g to i64
  %i.j = add i64 %.sroa.02.0.i, %i.i              ; 2 uses
  %i.k = icmp ult i64 %i.j, %.sroa.02.0.i
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr nonnull align 1 @13, i64 25, ptr nonnull align 8 @15) #18
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i = phi i32 [ %.sroa.04.0.i, %bb.e ], [ %i.h, %bb.f ]
  %.sroa.0.0.i = phi i64 [ %.sroa.02.0.i, %bb.e ], [ %i.j, %bb.f ]
  %i.l = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i, 0
  %i.m = insertvalue { i64, i32 } %i.l, i32 %.sroa.4.0.i, 1
  ret { i64, i32 } %i.m

bb.i:                                             ; preds = %bb.a, %bb.c
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr nonnull align 1 @16, i64 35, ptr nonnull align 8 @17) #18
  unreachable
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @"_ZN62_$LT$socket2..sockref..SockRef$u20$as$u20$core..fmt..Debug$GT$3fmt17hc05b07c5da158da1E"(ptr align 4 %0, ptr align 8 %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 2 uses
  %i.b = alloca [144 x i8], align 8               ; 2 uses
  %i.c = alloca [144 x i8], align 8               ; 2 uses
  %i.d = alloca [144 x i8], align 8               ; 2 uses
  %i.e = alloca [4 x i8], align 4                 ; 2 uses
  %i.f = alloca [16 x i8], align 8                ; 2 uses
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr nonnull sret([16 x i8]) align 8 %i.f, ptr align 8 %1, ptr nonnull align 1 @18, i64 7)
  %i.g = call i32 @_ZN7socket26socket6Socket6as_raw17h01582ef1176eb7a4E(ptr align 4 %0)
  store i32 %i.g, ptr %i.e, align 4
  %i.h = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr nonnull align 8 %i.f, ptr nonnull align 1 @19, i64 3, ptr nonnull align 1 %i.e, ptr nonnull align 8 @20)
  call void @_ZN7socket26socket6Socket10local_addr17h63f3a50fd4f398deE(ptr nonnull sret([144 x i8]) align 8 %i.c, ptr align 4 %0)
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$2ok17h04b1b300c8a94952E"(ptr nonnull sret([144 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
  %i.i = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr align 8 %i.h, ptr nonnull align 1 @21, i64 10, ptr nonnull align 1 %i.d, ptr nonnull align 8 @22)
  call void @_ZN7socket26socket6Socket9peer_addr17h8a78431009077a6dE(ptr nonnull sret([144 x i8]) align 8 %i.a, ptr align 4 %0)
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$2ok17h04b1b300c8a94952E"(ptr nonnull sret([144 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.j = call align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr align 8 %i.i, ptr nonnull align 1 @23, i64 9, ptr nonnull align 1 %i.b, ptr nonnull align 8 @22)
  %i.k = call zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr align 8 %i.j)
  ret i1 %i.k
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hb1cb8ab69835f053E"(ptr %0, ptr %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h7cec83b004107b2fE"(ptr nofree readnone align 1 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr %1, i64 %3, i64 %2) #17
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h747890f6cd353507E"(ptr align 8 %0, ptr align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr align 8 %1, ptr nonnull align 1 @26, i64 4, ptr nonnull align 1 %i.a, ptr nonnull align 8 @25)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8 %1, ptr nonnull align 1 @24, i64 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN66_$LT$std..io..error..ErrorKind$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdc120447143bcfa4E"(ptr nofree readonly align 1 captures(none) %0, ptr nofree readonly align 1 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.a, %i.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 4 ptr @"_ZN69_$LT$socket2..sockref..SockRef$u20$as$u20$core..ops..deref..Deref$GT$5deref17hef5990a41ad71aa2E"(ptr nofree readnone returned align 4 captures(ret: address, provenance) %0) unnamed_addr #7 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hfc25f749a7d470e1E"(ptr nofree readonly align 4 captures(none) %0, ptr nofree readonly align 4 captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = trunc i32 %i.a to i1
  %i.d = load i32, ptr %1, align 4                ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.d, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.e, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.h, %bb.e ], [ %i.f, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0.shrunk

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val = load i32, ptr %i.b, align 4
  %.val1 = load i32, ptr %i.g, align 4
  %i.h = icmp eq i32 %.val, %.val1
  br label %bb.d
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, i64 } @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hbaa9f7514bcdf4e8E"(ptr align 1 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.5 = select i1 %.not, i64 undef, i64 %1
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %.5, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0845cb8d4c079cdcE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8                ; 4 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %bb.d
    i64 1, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 32
  %i.f = trunc nuw i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %i.g, align 4
  br label %_ZN3std2io5error14repr_bitpacked11decode_repr17h05600539e446acf4E.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp ugt ptr %i.b, inttoptr (i64 180388626431 to ptr)
  br i1 %.not.i, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.h, align 8
  br label %_ZN3std2io5error14repr_bitpacked11decode_repr17h05600539e446acf4E.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.b, i64 -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8
  br label %_ZN3std2io5error14repr_bitpacked11decode_repr17h05600539e446acf4E.exit

bb.f:                                             ; preds = %bb.c
  %i.k = lshr i64 %i.c, 32
  %spec.select.i.i = trunc i64 %i.k to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %spec.select.i.i, ptr %i.l, align 1
  br label %_ZN3std2io5error14repr_bitpacked11decode_repr17h05600539e446acf4E.exit

bb.g:                                             ; preds = %bb.c
  tail call fastcc void @_ZN4core4hint21unreachable_unchecked18precondition_check17h523c0ab19bddac2fE(ptr nonnull align 8 @1) #17
  unreachable

_ZN3std2io5error14repr_bitpacked11decode_repr17h05600539e446acf4E.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.sink.i = phi i8 [ 0, %bb.b ], [ 2, %bb.d ], [ 1, %bb.f ], [ 3, %bb.e ]
  store i8 %.sink.i, ptr %i.a, align 8
  call void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h1e0684aec15054abE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define align 8 ptr @"_ZN78_$LT$std..io..error..repr_bitpacked..Repr$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$17h927c471c54052ca4E"(ptr nofree readnone returned captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define range(i32 0, -1) i32 @"_ZN7socket23sys119_$LT$impl$u20$core..convert..From$LT$socket2..socket..Socket$GT$$u20$for$u20$std..os..unix..net..stream..UnixStream$GT$4from17hdcf1c0a82cc5f766E"(i32 %0) unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @"_ZN7socket23sys81_$LT$impl$u20$std..os..fd..raw..IntoRawFd$u20$for$u20$socket2..socket..Socket$GT$11into_raw_fd17h754048157205fca3E"(i32 %0) ; 2 uses
  %.not.i = icmp eq i32 %i.a, -1
  br i1 %.not.i, label %bb.b, label %"_ZN86_$LT$std..os..unix..net..stream..UnixStream$u20$as$u20$std..os..fd..raw..FromRawFd$GT$11from_raw_fd17h1b9eb3534e50084bE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr nonnull align 1 @2, i64 8, ptr nonnull align 8 @28) #18
  unreachable

"_ZN86_$LT$std..os..unix..net..stream..UnixStream$u20$as$u20$std..os..fd..raw..FromRawFd$GT$11from_raw_fd17h1b9eb3534e50084bE.exit": ; preds = %bb.a
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define range(i32 0, -1) i32 @"_ZN7socket23sys123_$LT$impl$u20$core..convert..From$LT$socket2..socket..Socket$GT$$u20$for$u20$std..os..unix..net..datagram..UnixDatagram$GT$4from17h8b30d289a645e4a6E"(i32 %0) unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @"_ZN7socket23sys81_$LT$impl$u20$std..os..fd..raw..IntoRawFd$u20$for$u20$socket2..socket..Socket$GT$11into_raw_fd17h754048157205fca3E"(i32 %0) ; 2 uses
  %.not.i = icmp eq i32 %i.a, -1
  br i1 %.not.i, label %bb.b, label %"_ZN90_$LT$std..os..unix..net..datagram..UnixDatagram$u20$as$u20$std..os..fd..raw..FromRawFd$GT$11from_raw_fd17h6f0b2054211065ddE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr nonnull align 1 @2, i64 8, ptr nonnull align 8 @32) #18
  unreachable

"_ZN90_$LT$std..os..unix..net..datagram..UnixDatagram$u20$as$u20$std..os..fd..raw..FromRawFd$GT$11from_raw_fd17h6f0b2054211065ddE.exit": ; preds = %bb.a
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define range(i32 0, -1) i32 @"_ZN7socket23sys123_$LT$impl$u20$core..convert..From$LT$socket2..socket..Socket$GT$$u20$for$u20$std..os..unix..net..listener..UnixListener$GT$4from17h29b832a09eb7a65eE"(i32 %0) unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @"_ZN7socket23sys81_$LT$impl$u20$std..os..fd..raw..IntoRawFd$u20$for$u20$socket2..socket..Socket$GT$11into_raw_fd17h754048157205fca3E"(i32 %0) ; 2 uses
  %.not.i = icmp eq i32 %i.a, -1
  br i1 %.not.i, label %bb.b, label %"_ZN90_$LT$std..os..unix..net..listener..UnixListener$u20$as$u20$std..os..fd..raw..FromRawFd$GT$11from_raw_fd17hd9e29fc0c76a676aE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr nonnull align 1 @2, i64 8, ptr nonnull align 8 @34) #18
  unreachable

"_ZN90_$LT$std..os..unix..net..listener..UnixListener$u20$as$u20$std..os..fd..raw..FromRawFd$GT$11from_raw_fd17hd9e29fc0c76a676aE.exit": ; preds = %bb.a
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define range(i32 0, -1) i32 @"_ZN7socket26socket105_$LT$impl$u20$core..convert..From$LT$socket2..socket..Socket$GT$$u20$for$u20$std..net..udp..UdpSocket$GT$4from17h1630f88dabc2d3c8E"(i32 %0) unnamed_addr #6 {
bb.a:
  %i.a = tail call i32 @"_ZN7socket23sys81_$LT$impl$u20$std..os..fd..raw..IntoRawFd$u20$for$u20$socket2..socket..Socket$GT$11into_raw_fd17h754048157205fca3E"(i32 %0) ; 2 uses
  %.not.i = icmp eq i32 %i.a, -1
  br i1 %.not.i, label %bb.b, label %"_ZN3std2os2fd3net82_$LT$impl$u20$std..os..fd..raw..FromRawFd$u20$for$u20$std..net..udp..UdpSocket$GT$11from_raw_fd17h275637f8b9017c4fE.exit"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr nonnull align 1 @2, i64 8, ptr nonnull align 8 @4) #18
  unreachable

"_ZN3std2os2fd3net82_$LT$impl$u20$std..os..fd..raw..FromRawFd$u20$for$u20$std..net..udp..UdpSocket$GT$11from_raw_fd17h275637f8b9017c4fE.exit": ; preds = %bb.a
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @"_ZN80_$LT$std..ffi..os_str..OsStr$u20$as$u20$std..os..unix..ffi..os_str..OsStrExt$GT$10from_bytes17h2d277a53ee266deeE"(ptr align 1 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @"_ZN80_$LT$std..ffi..os_str..OsStr$u20$as$u20$std..os..unix..ffi..os_str..OsStrExt$GT$8as_bytes17h5a6e7bd0adee93c1E"(ptr align 1 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN86_$LT$std..os..unix..net..stream..UnixStream$u20$as$u20$std..os..fd..raw..IntoRawFd$GT$11into_raw_fd17h97cdc54987013f5eE"(i32 returned %0) unnamed_addr #3 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h8da8769108bfbdd2E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 1 captures(none) %1, i64 %2) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hbd471b5e2d55a4f0E"(i64 %2, i64 1, i64 1, ptr nonnull align 8 @30) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  store i64 %i.b, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN87_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$T$u5d$$GT$$GT$4from17h89494b5f4f7295b2E"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 1 captures(none) %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #6 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hbd471b5e2d55a4f0E"(i64 %2, i64 1, i64 1, ptr nonnull align 8 @30) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr readonly align 1 %1, i64 %2, i1 false)
  store i64 %i.b, ptr %0, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN90_$LT$std..os..unix..net..datagram..UnixDatagram$u20$as$u20$std..os..fd..raw..IntoRawFd$GT$11into_raw_fd17he879d1b0a082af38E"(i32 returned %0) unnamed_addr #3 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN90_$LT$std..os..unix..net..listener..UnixListener$u20$as$u20$std..os..fd..raw..IntoRawFd$GT$11into_raw_fd17h3156575d582a954bE"(i32 returned %0) unnamed_addr #3 {
bb.a:
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h41cf811a70e8abd1E"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h60fb30d6b656666dE"(ptr nofree align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, i64 } @"_ZN95_$LT$std..ffi..os_str..OsStr$u20$as$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$GT$6as_ref17hd1d2ebe475c21eefE"(ptr align 1 %0, i64 %1) unnamed_addr #3 {
bb.a:
  %i.a = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.b = insertvalue { ptr, i64 } %i.a, i64 %1, 1
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden i32 @"_ZN99_$LT$core..net..ip_addr..Ipv4Addr$u20$as$u20$core..convert..From$LT$$u5b$u8$u3b$$u20$4$u5d$$GT$$GT$4from17hf6272efbe32a1f0dE"(i32 returned %0) unnamed_addr #3 {
bb.a:
  ret i32 %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr align 1, i64, ptr align 8) unnamed_addr #12

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
declare ptr @__errno_location() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden i8 @_ZN3std3sys3pal4unix17decode_error_kind17hb1f31c9827fa3096E(i32) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr align 1, i64, ptr align 8) unnamed_addr #12

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h0652f2423a0fdb7cE"(ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2os4unix3net4addr11sockaddr_un17h228ff38a23af502bE(ptr sret([120 x i8]) align 8, ptr align 1, i64) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17ha9a489cf5bee443fE"(ptr align 1, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u5d$$GT$$u20$for$u20$$u5b$T$u5d$$GT$2eq17h14738e349c2595a4E"(ptr align 1, i64, ptr align 1, i64) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr align 1, ptr align 8, ptr align 8) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$11as_pathname28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h72d2e167ad10b410E"(ptr align 8, ptr align 2) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden align 2 ptr @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$14as_sockaddr_un28_$u7b$$u7b$closure$u7d$$u7d$17h3a48a04ff3e3e32dE"(ptr align 8) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$21as_abstract_namespace28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hef73632f4ecc7bb4E"(ptr align 8, ptr align 2) unnamed_addr #5

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking18panic_nounwind_fmt17h622822847ebd61beE(ptr align 8, i1 zeroext, ptr align 8) unnamed_addr #14

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$10is_unnamed28_$u7b$$u7b$closure$u7d$$u7d$17hb2689dec0096c500E"(ptr align 8, ptr align 2) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare i32 @_ZN4core3ops8function6FnOnce9call_once17h0f1695321cdf89cfE(i32) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @"_ZN7socket26socket6Socket7new_raw28_$u7b$$u7b$closure$u7d$$u7d$17h45a803ca18bab0c1E"(i32) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @"_ZN7socket26socket6Socket8pair_raw28_$u7b$$u7b$closure$u7d$$u7d$17h469aa2c535bc971fE"(i32) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @"_ZN7socket23sys41_$LT$impl$u20$socket2..socket..Socket$GT$20set_tcp_user_timeout28_$u7b$$u7b$closure$u7d$$u7d$17h722e74882b3591e5E"(i64, i32) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$11as_pathname28_$u7b$$u7b$closure$u7d$$u7d$17hbf42949f5e58a8b5E"(ptr align 8, ptr align 2) unnamed_addr #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @"_ZN7socket23sys45_$LT$impl$u20$socket2..sockaddr..SockAddr$GT$21as_abstract_namespace28_$u7b$$u7b$closure$u7d$$u7d$17h9f478f97484a177aE"(ptr align 8, ptr align 2) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @"_ZN111_$LT$socket2..sockaddr..SockAddr$u20$as$u20$core..convert..From$LT$core..net..socket_addr..SocketAddrV4$GT$$GT$4from17hd04c18b72f254cb3E"(ptr sret([136 x i8]) align 8, i48) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @"_ZN111_$LT$socket2..sockaddr..SockAddr$u20$as$u20$core..convert..From$LT$core..net..socket_addr..SocketAddrV6$GT$$GT$4from17h94166250cea86e64E"(ptr sret([136 x i8]) align 8, ptr align 4) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr sret([16 x i8]) align 8, ptr align 8, ptr align 1, i64) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare i32 @_ZN7socket26socket6Socket6as_raw17h01582ef1176eb7a4E(ptr align 4) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i32$GT$3fmt17h04579640a6d12344E"(ptr align 4, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_ZN7socket26socket6Socket10local_addr17h63f3a50fd4f398deE(ptr sret([144 x i8]) align 8, ptr align 4) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare void @"_ZN4core6result19Result$LT$T$C$E$GT$2ok17h04b1b300c8a94952E"(ptr sret([144 x i8]) align 8, ptr align 8) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_ZN7socket26socket6Socket9peer_addr17h8a78431009077a6dE(ptr sret([144 x i8]) align 8, ptr align 4) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt8builders11DebugStruct6finish17hab28a677da18dd84E(ptr align 8) unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr, i64, i64) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr align 8, ptr align 1, i64) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h09866a54e23a2266E"(ptr align 8, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr align 8, ptr align 1, i64, ptr align 1, ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @"_ZN4core3ptr101drop_in_place$LT$std..io..error..ErrorData$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$$GT$17h1e0684aec15054abE"(ptr align 8) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare i32 @"_ZN7socket23sys81_$LT$impl$u20$std..os..fd..raw..IntoRawFd$u20$for$u20$socket2..socket..Socket$GT$11into_raw_fd17h754048157205fca3E"(i32) unnamed_addr #6

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hbd471b5e2d55a4f0E"(i64, i64, i64, ptr align 8) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.umin.i128(i128, i128) #16

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
end_hunk_0
